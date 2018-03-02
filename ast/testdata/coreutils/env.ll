; ModuleID = 'coreutils-8.27/src/env.bc'
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
@.str.1 = private unnamed_addr constant [62 x i8] c"Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Set each NAME to VALUE in the environment and run COMMAND.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [187 x i8] c"  -i, --ignore-environment  start with an empty environment\0A  -0, --null           end each output line with NUL, not newline\0A  -u, --unset=NAME     remove variable from the environment\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"\0AA mere - implies -i.  If no COMMAND, print the resulting environment.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@main.dummy_environ = internal global [1 x i8*] zeroinitializer, align 8, !dbg !27
@environ = external local_unnamed_addr global i8**, align 8
@optarg = external local_unnamed_addr global i8*, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"cannot unset %s\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"cannot set %s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"cannot specify --null (-0) with command\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"ignore-environment\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !106
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !112
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !117
@.str.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !120
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !127
@.str.42 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.43 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.44 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.48, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.49, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.54, i32 0, i32 0), i8* null], align 16, !dbg !134
@.str.45 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.46 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.47 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.48 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.49 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.50 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.51 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.52 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.53 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.54 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !176
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !183
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !196
@.str.11.55 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.56 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.57 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.58 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.59 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.60 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.61 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !203
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !210
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !198
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !212
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !218
@.str.1.98 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !227
@.str.3.112 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.113 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.114 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.115 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.116 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !623 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !627, metadata !628), !dbg !629
  %2 = icmp eq i32 %0, 0, !dbg !630
  br i1 %2, label %8, label %3, !dbg !632

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !633, !tbaa !636
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !633
  %6 = load i8*, i8** @program_name, align 8, !dbg !633, !tbaa !636
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !640
  br label %45, !dbg !642

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !644
  %10 = load i8*, i8** @program_name, align 8, !dbg !644, !tbaa !636
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !646
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !648
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648, !tbaa !636
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !649
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #9, !dbg !650
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !650, !tbaa !636
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !655
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !657
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !636
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !658
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !659
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !636
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !660
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !661
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !636
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !662
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !663
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !636
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9, !dbg !664
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !72, metadata !628) #9, !dbg !665
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !72, metadata !628) #9, !dbg !665
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #9, !dbg !667
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !668
  %32 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !670
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !83, metadata !628) #9, !dbg !671
  %33 = icmp eq i8* %32, null, !dbg !672
  br i1 %33, label %40, label %34, !dbg !673

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #13, !dbg !674
  %36 = icmp eq i32 %35, 0, !dbg !674
  br i1 %36, label %40, label %37, !dbg !676

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #9, !dbg !678
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !680
  br label %40, !dbg !682

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #9, !dbg !683
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !684
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #9, !dbg !685
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #9, !dbg !686
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #14, !dbg !687
  unreachable, !dbg !687
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !29 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !35, metadata !628), !dbg !688
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !36, metadata !628), !dbg !689
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !38, metadata !628), !dbg !690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !40, metadata !628), !dbg !691
  %3 = load i8*, i8** %1, align 8, !dbg !692, !tbaa !636
  tail call void @set_program_name(i8* %3) #9, !dbg !693
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !694
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !695
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !696
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !697, metadata !628), !dbg !700
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !702, !tbaa !704
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !706
  br label %9, !dbg !707

; <label>:8:                                      ; preds = %15
  br label %9, !dbg !690

; <label>:9:                                      ; preds = %8, %2
  %10 = phi i8 [ 0, %2 ], [ 1, %8 ]
  %11 = phi i8 [ 0, %2 ], [ %14, %8 ]
  br label %13, !dbg !690

; <label>:12:                                     ; preds = %15
  br label %13, !dbg !690

; <label>:13:                                     ; preds = %12, %9
  %14 = phi i8 [ %11, %9 ], [ 1, %12 ]
  br label %15, !dbg !690

; <label>:15:                                     ; preds = %13, %15
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !38, metadata !628), !dbg !690
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !40, metadata !628), !dbg !691
  %16 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !708
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !37, metadata !628), !dbg !710
  switch i32 %16, label %21 [
    i32 -1, label %22
    i32 105, label %12
    i32 117, label %15
    i32 48, label %8
    i32 -130, label %17
    i32 -131, label %18
  ], !dbg !711, !llvm.loop !712

; <label>:17:                                     ; preds = %15
  tail call void @usage(i32 0) #15, !dbg !714
  unreachable, !dbg !714

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !636
  %20 = load i8*, i8** @Version, align 8, !dbg !717, !tbaa !636
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #9, !dbg !717
  tail call void @exit(i32 0) #14, !dbg !718
  unreachable, !dbg !717

; <label>:21:                                     ; preds = %15
  tail call void @usage(i32 125) #15, !dbg !720
  unreachable, !dbg !720

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* @optind, align 4, !dbg !721, !tbaa !704
  %24 = icmp slt i32 %23, %0, !dbg !722
  br i1 %24, label %25, label %42, !dbg !723

; <label>:25:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !44, metadata !628), !dbg !724
  %26 = sext i32 %23 to i64, !dbg !725
  %27 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !725
  %28 = load i8*, i8** %27, align 8, !dbg !725, !tbaa !636
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !45, metadata !628), !dbg !727
  %29 = load i8, i8* %28, align 1, !dbg !725, !tbaa !728
  %30 = zext i8 %29 to i32, !dbg !725
  %31 = sub nsw i32 45, %30, !dbg !725
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !47, metadata !628), !dbg !727
  %32 = icmp eq i32 %31, 0, !dbg !729
  br i1 %32, label %33, label %38, !dbg !732

; <label>:33:                                     ; preds = %25
  %34 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !734
  %35 = load i8, i8* %34, align 1, !dbg !734, !tbaa !728
  %36 = zext i8 %35 to i32, !dbg !734
  %37 = sub nsw i32 0, %36, !dbg !734
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !47, metadata !628), !dbg !727
  br label %38, !dbg !737

; <label>:38:                                     ; preds = %33, %25
  %39 = phi i32 [ %37, %33 ], [ %31, %25 ]
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !47, metadata !628), !dbg !727
  %40 = icmp eq i32 %39, 0, !dbg !740
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !38, metadata !628), !dbg !690
  %41 = select i1 %40, i8 1, i8 %14, !dbg !742
  br label %42, !dbg !742

; <label>:42:                                     ; preds = %38, %22
  %43 = phi i8 [ %14, %22 ], [ %41, %38 ]
  tail call void @llvm.dbg.value(metadata i8 %43, i64 0, metadata !38, metadata !628), !dbg !690
  %44 = and i8 %43, 1, !dbg !744
  %45 = icmp eq i8 %44, 0, !dbg !744
  br i1 %45, label %47, label %46, !dbg !746

; <label>:46:                                     ; preds = %42
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.dummy_environ, i64 0, i64 0), i8*** @environ, align 8, !dbg !747, !tbaa !636
  br label %47, !dbg !749

; <label>:47:                                     ; preds = %42, %46
  store i32 0, i32* @optind, align 4, !dbg !750, !tbaa !704
  br label %48, !dbg !751

; <label>:48:                                     ; preds = %54, %47
  %49 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !752
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !37, metadata !628), !dbg !710
  switch i32 %49, label %54 [
    i32 -1, label %61
    i32 117, label %50
  ], !dbg !753

; <label>:50:                                     ; preds = %48
  %51 = load i8*, i8** @optarg, align 8, !dbg !754, !tbaa !636
  %52 = tail call i32 @unsetenv(i8* %51) #9, !dbg !757
  %53 = icmp eq i32 %52, 0, !dbg !757
  br i1 %53, label %54, label %55, !dbg !758

; <label>:54:                                     ; preds = %50, %48
  br label %48, !dbg !752, !llvm.loop !759

; <label>:55:                                     ; preds = %50
  %56 = tail call i32* @__errno_location() #1, !dbg !761
  %57 = load i32, i32* %56, align 4, !dbg !761, !tbaa !704
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !762
  %59 = load i8*, i8** @optarg, align 8, !dbg !761, !tbaa !636
  %60 = tail call i8* @quote(i8* %59) #9, !dbg !763
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %57, i8* %58, i8* %60) #9, !dbg !765
  unreachable, !dbg !761

; <label>:61:                                     ; preds = %48
  %62 = load i32, i32* @optind, align 4, !dbg !767, !tbaa !704
  %63 = icmp slt i32 %62, %0, !dbg !768
  br i1 %63, label %64, label %76, !dbg !769

; <label>:64:                                     ; preds = %61
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !51, metadata !628), !dbg !770
  %65 = sext i32 %62 to i64, !dbg !771
  %66 = getelementptr inbounds i8*, i8** %1, i64 %65, !dbg !771
  %67 = load i8*, i8** %66, align 8, !dbg !771, !tbaa !636
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !52, metadata !628), !dbg !773
  %68 = load i8, i8* %67, align 1, !dbg !771, !tbaa !728
  %69 = icmp eq i8 %68, 45, !dbg !774
  br i1 %69, label %70, label %76, !dbg !777

; <label>:70:                                     ; preds = %64
  %71 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !779
  %72 = load i8, i8* %71, align 1, !dbg !779, !tbaa !728
  %73 = icmp eq i8 %72, 0, !dbg !782
  br i1 %73, label %74, label %76, !dbg !784

; <label>:74:                                     ; preds = %70
  %75 = add nsw i32 %62, 1, !dbg !785
  store i32 %75, i32* @optind, align 4, !dbg !785, !tbaa !704
  br label %76, !dbg !785

; <label>:76:                                     ; preds = %74, %70, %61, %64
  %77 = phi i32 [ %75, %74 ], [ %62, %70 ], [ %62, %61 ], [ %62, %64 ], !dbg !786
  %78 = icmp slt i32 %77, %0, !dbg !787
  br i1 %78, label %79, label %105, !dbg !788

; <label>:79:                                     ; preds = %76
  br label %80, !dbg !789

; <label>:80:                                     ; preds = %79, %99
  %81 = phi i32 [ %101, %99 ], [ %77, %79 ]
  %82 = sext i32 %81 to i64, !dbg !789
  %83 = getelementptr inbounds i8*, i8** %1, i64 %82, !dbg !789
  %84 = load i8*, i8** %83, align 8, !dbg !789, !tbaa !636
  %85 = tail call i8* @strchr(i8* %84, i32 61) #9, !dbg !789
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !55, metadata !628), !dbg !791
  %86 = icmp eq i8* %85, null, !dbg !792
  br i1 %86, label %103, label %87, !dbg !793

; <label>:87:                                     ; preds = %80
  %88 = tail call i32 @putenv(i8* %84) #9, !dbg !795
  %89 = icmp eq i32 %88, 0, !dbg !795
  br i1 %89, label %99, label %90, !dbg !798

; <label>:90:                                     ; preds = %87
  store i8 0, i8* %85, align 1, !dbg !799, !tbaa !728
  %91 = tail call i32* @__errno_location() #1, !dbg !801
  %92 = load i32, i32* %91, align 4, !dbg !801, !tbaa !704
  %93 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 5) #9, !dbg !802
  %94 = load i32, i32* @optind, align 4, !dbg !801, !tbaa !704
  %95 = sext i32 %94 to i64, !dbg !801
  %96 = getelementptr inbounds i8*, i8** %1, i64 %95, !dbg !801
  %97 = load i8*, i8** %96, align 8, !dbg !801, !tbaa !636
  %98 = tail call i8* @quote(i8* %97) #9, !dbg !804
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %92, i8* %93, i8* %98) #9, !dbg !806
  unreachable, !dbg !801

; <label>:99:                                     ; preds = %87
  %100 = load i32, i32* @optind, align 4, !dbg !808, !tbaa !704
  %101 = add nsw i32 %100, 1, !dbg !808
  store i32 %101, i32* @optind, align 4, !dbg !808, !tbaa !704
  %102 = icmp slt i32 %101, %0, !dbg !787
  br i1 %102, label %80, label %103, !dbg !788, !llvm.loop !809

; <label>:103:                                    ; preds = %80, %99
  %104 = phi i32 [ %101, %99 ], [ %81, %80 ]
  br label %105, !dbg !812

; <label>:105:                                    ; preds = %103, %76
  %106 = phi i32 [ %77, %76 ], [ %104, %103 ], !dbg !813
  %107 = icmp slt i32 %106, %0, !dbg !812
  br i1 %107, label %122, label %108, !dbg !814

; <label>:108:                                    ; preds = %105
  %109 = load i8**, i8*** @environ, align 8, !dbg !815, !tbaa !636
  tail call void @llvm.dbg.value(metadata i8** %109, i64 0, metadata !56, metadata !628), !dbg !816
  tail call void @llvm.dbg.value(metadata i8** %109, i64 0, metadata !56, metadata !628), !dbg !816
  %110 = load i8*, i8** %109, align 8, !dbg !817, !tbaa !636
  %111 = icmp eq i8* %110, null, !dbg !819
  br i1 %111, label %143, label %112, !dbg !819

; <label>:112:                                    ; preds = %108
  %113 = icmp ne i8 %10, 0
  %114 = select i1 %113, i32 0, i32 10
  br label %115, !dbg !819

; <label>:115:                                    ; preds = %112, %115
  %116 = phi i8* [ %110, %112 ], [ %120, %115 ]
  %117 = phi i8** [ %109, %112 ], [ %118, %115 ]
  %118 = getelementptr inbounds i8*, i8** %117, i64 1, !dbg !820
  tail call void @llvm.dbg.value(metadata i8** %118, i64 0, metadata !56, metadata !628), !dbg !816
  %119 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %116, i32 %114) #9, !dbg !820
  tail call void @llvm.dbg.value(metadata i8** %118, i64 0, metadata !56, metadata !628), !dbg !816
  %120 = load i8*, i8** %118, align 8, !dbg !817, !tbaa !636
  %121 = icmp eq i8* %120, null, !dbg !819
  br i1 %121, label %142, label %115, !dbg !819, !llvm.loop !821

; <label>:122:                                    ; preds = %105
  %123 = icmp eq i8 %10, 0, !dbg !823
  br i1 %123, label %128, label %124, !dbg !825

; <label>:124:                                    ; preds = %122
  %125 = tail call i32* @__errno_location() #1, !dbg !826
  %126 = load i32, i32* %125, align 4, !dbg !826, !tbaa !704
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !828
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %126, i8* %127) #9, !dbg !830
  tail call void @usage(i32 125) #15, !dbg !832
  unreachable, !dbg !832

; <label>:128:                                    ; preds = %122
  %129 = sext i32 %106 to i64, !dbg !833
  %130 = getelementptr inbounds i8*, i8** %1, i64 %129, !dbg !833
  %131 = load i8*, i8** %130, align 8, !dbg !833, !tbaa !636
  %132 = tail call i32 @execvp(i8* %131, i8** %130) #9, !dbg !834
  %133 = tail call i32* @__errno_location() #1, !dbg !835
  %134 = load i32, i32* %133, align 4, !dbg !835, !tbaa !704
  %135 = icmp eq i32 %134, 2, !dbg !836
  %136 = select i1 %135, i32 127, i32 126, !dbg !835
  tail call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !61, metadata !628), !dbg !837
  %137 = load i32, i32* @optind, align 4, !dbg !838, !tbaa !704
  %138 = sext i32 %137 to i64, !dbg !839
  %139 = getelementptr inbounds i8*, i8** %1, i64 %138, !dbg !839
  %140 = load i8*, i8** %139, align 8, !dbg !839, !tbaa !636
  %141 = tail call i8* @quote(i8* %140) #9, !dbg !840
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %141) #9, !dbg !841
  br label %143

; <label>:142:                                    ; preds = %115
  br label %143, !dbg !842

; <label>:143:                                    ; preds = %142, %108, %128
  %144 = phi i32 [ %136, %128 ], [ 0, %108 ], [ 0, %142 ]
  ret i32 %144, !dbg !842
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @unsetenv(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !843 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !845, metadata !628), !dbg !846
  store i8* %0, i8** @file_name, align 8, !dbg !847, !tbaa !636
  ret void, !dbg !848
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !849 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !853, metadata !854), !dbg !855
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !856, !tbaa !857
  ret void, !dbg !859
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !860 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !865, !tbaa !636
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !866
  %3 = icmp eq i32 %2, 0, !dbg !867
  br i1 %3, label %21, label %4, !dbg !868

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !869, !tbaa !857, !range !871
  %6 = icmp eq i8 %5, 0, !dbg !869
  %7 = tail call i32* @__errno_location() #1, !dbg !872
  br i1 %6, label %11, label %8, !dbg !874

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !875, !tbaa !704
  %10 = icmp eq i32 %9, 32, !dbg !877
  br i1 %10, label %21, label %11, !dbg !878

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !880
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !862, metadata !628), !dbg !881
  %13 = load i8*, i8** @file_name, align 8, !dbg !882, !tbaa !636
  %14 = icmp eq i8* %13, null, !dbg !882
  %15 = load i32, i32* %7, align 4, !tbaa !704
  br i1 %14, label %18, label %16, !dbg !883

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !884
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.23, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !886
  br label %19, !dbg !888

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.24, i64 0, i64 0), i8* %12) #9, !dbg !889
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !890, !tbaa !704
  tail call void @_exit(i32 %20) #14, !dbg !891
  unreachable, !dbg !891

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !892, !tbaa !636
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !894
  %24 = icmp eq i32 %23, 0, !dbg !895
  br i1 %24, label %27, label %25, !dbg !896

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !897, !tbaa !704
  tail call void @_exit(i32 %26) #14, !dbg !898
  unreachable, !dbg !898

; <label>:27:                                     ; preds = %21
  ret void, !dbg !899
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !900 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !902, metadata !628), !dbg !905
  %2 = icmp eq i8* %0, null, !dbg !906
  br i1 %2, label %3, label %6, !dbg !908

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !909, !tbaa !636
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.42, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !911
  tail call void @abort() #14, !dbg !912
  unreachable, !dbg !912

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !913
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !903, metadata !628), !dbg !914
  %8 = icmp ne i8* %7, null, !dbg !915
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !916
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !918
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !904, metadata !628), !dbg !919
  %11 = ptrtoint i8* %10 to i64, !dbg !920
  %12 = ptrtoint i8* %0 to i64, !dbg !920
  %13 = sub i64 %11, %12, !dbg !920
  %14 = icmp sgt i64 %13, 6, !dbg !922
  br i1 %14, label %15, label %24, !dbg !923

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !924
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.43, i64 0, i64 0), i64 7) #13, !dbg !924
  %18 = icmp eq i32 %17, 0, !dbg !926
  br i1 %18, label %19, label %24, !dbg !927

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !902, metadata !628), !dbg !905
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.44, i64 0, i64 0), i64 3) #13, !dbg !928
  %21 = icmp eq i32 %20, 0, !dbg !931
  br i1 %21, label %22, label %24, !dbg !932

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !933
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !902, metadata !628), !dbg !905
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !935, !tbaa !636
  br label %24, !dbg !936

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !902, metadata !628), !dbg !905
  store i8* %25, i8** @program_name, align 8, !dbg !937, !tbaa !636
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !938, !tbaa !636
  ret void, !dbg !939
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !940 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !945, metadata !628), !dbg !948
  %2 = tail call i32* @__errno_location() #1, !dbg !949
  %3 = load i32, i32* %2, align 4, !dbg !949, !tbaa !704
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !946, metadata !628), !dbg !950
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !951
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !952
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !952
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !954
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !954
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !947, metadata !628), !dbg !955
  store i32 %3, i32* %2, align 4, !dbg !956, !tbaa !704
  ret %struct.quoting_options* %8, !dbg !957
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !958 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !964, metadata !628), !dbg !965
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !966
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !966
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !967
  %5 = load i32, i32* %4, align 8, !dbg !967, !tbaa !969
  ret i32 %5, !dbg !971
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !972 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !976, metadata !628), !dbg !978
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !977, metadata !628), !dbg !979
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !980
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !980
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !981
  store i32 %1, i32* %5, align 8, !dbg !983, !tbaa !969
  ret void, !dbg !984
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !985 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !989, metadata !628), !dbg !997
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !990, metadata !628), !dbg !998
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !991, metadata !628), !dbg !999
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !992, metadata !628), !dbg !1000
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1001
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1001
  %6 = lshr i8 %1, 5, !dbg !1002
  %7 = zext i8 %6 to i64, !dbg !1002
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1004
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !993, metadata !628), !dbg !1005
  %9 = and i8 %1, 31, !dbg !1006
  %10 = zext i8 %9 to i32, !dbg !1007
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !995, metadata !628), !dbg !1008
  %11 = load i32, i32* %8, align 4, !dbg !1009, !tbaa !704
  %12 = lshr i32 %11, %10, !dbg !1010
  %13 = and i32 %12, 1, !dbg !1011
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !996, metadata !628), !dbg !1012
  %14 = and i32 %2, 1, !dbg !1013
  %15 = xor i32 %13, %14, !dbg !1014
  %16 = shl i32 %15, %10, !dbg !1015
  %17 = xor i32 %16, %11, !dbg !1016
  store i32 %17, i32* %8, align 4, !dbg !1016, !tbaa !704
  ret i32 %13, !dbg !1017
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1018 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1022, metadata !628), !dbg !1025
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1023, metadata !628), !dbg !1026
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1027
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1022, metadata !628), !dbg !1025
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1022, metadata !628), !dbg !1025
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1030
  %6 = load i32, i32* %5, align 4, !dbg !1030, !tbaa !1031
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1024, metadata !628), !dbg !1032
  store i32 %1, i32* %5, align 4, !dbg !1033, !tbaa !1031
  ret i32 %6, !dbg !1034
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1035 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1039, metadata !628), !dbg !1042
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1040, metadata !628), !dbg !1043
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1041, metadata !628), !dbg !1044
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1045
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1039, metadata !628), !dbg !1042
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1039, metadata !628), !dbg !1042
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1048
  store i32 10, i32* %6, align 8, !dbg !1049, !tbaa !969
  %7 = icmp ne i8* %1, null, !dbg !1050
  %8 = icmp ne i8* %2, null, !dbg !1052
  %9 = and i1 %7, %8, !dbg !1054
  br i1 %9, label %11, label %10, !dbg !1054

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1055
  unreachable, !dbg !1055

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1056
  store i8* %1, i8** %12, align 8, !dbg !1057, !tbaa !1058
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1059
  store i8* %2, i8** %13, align 8, !dbg !1060, !tbaa !1061
  ret void, !dbg !1062
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1063 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1067, metadata !628), !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1068, metadata !628), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1069, metadata !628), !dbg !1077
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1070, metadata !628), !dbg !1078
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1071, metadata !628), !dbg !1079
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1080
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1080
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1072, metadata !628), !dbg !1081
  %8 = tail call i32* @__errno_location() #1, !dbg !1082
  %9 = load i32, i32* %8, align 4, !dbg !1082, !tbaa !704
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1073, metadata !628), !dbg !1083
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1084
  %11 = load i32, i32* %10, align 8, !dbg !1084, !tbaa !969
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1085
  %13 = load i32, i32* %12, align 4, !dbg !1085, !tbaa !1031
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1086
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1087
  %16 = load i8*, i8** %15, align 8, !dbg !1087, !tbaa !1058
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1088
  %18 = load i8*, i8** %17, align 8, !dbg !1088, !tbaa !1061
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1089
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1074, metadata !628), !dbg !1090
  store i32 %9, i32* %8, align 4, !dbg !1091, !tbaa !704
  ret i64 %19, !dbg !1092
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1093 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1099, metadata !628), !dbg !1162
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1100, metadata !628), !dbg !1163
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1101, metadata !628), !dbg !1164
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1102, metadata !628), !dbg !1165
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1103, metadata !628), !dbg !1166
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1104, metadata !628), !dbg !1167
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1105, metadata !628), !dbg !1168
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1106, metadata !628), !dbg !1169
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1107, metadata !628), !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1109, metadata !628), !dbg !1171
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1110, metadata !628), !dbg !1172
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1111, metadata !628), !dbg !1173
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1112, metadata !628), !dbg !1174
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1113, metadata !628), !dbg !1175
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1176
  %14 = icmp eq i64 %13, 1, !dbg !1177
  %15 = lshr i32 %5, 1, !dbg !1178
  %16 = trunc i32 %15 to i8, !dbg !1178
  %17 = and i8 %16, 1, !dbg !1178
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1115, metadata !628), !dbg !1178
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1116, metadata !628), !dbg !1179
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1117, metadata !628), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1118, metadata !628), !dbg !1181
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1182

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1100, metadata !628), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1118, metadata !628), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1117, metadata !628), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1115, metadata !628), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1102, metadata !628), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1113, metadata !628), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1112, metadata !628), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1111, metadata !628), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1110, metadata !628), !dbg !1172
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1107, metadata !628), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1106, metadata !628), !dbg !1169
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1103, metadata !628), !dbg !1166
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
  ], !dbg !1183

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1103, metadata !628), !dbg !1166
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1115, metadata !628), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1115, metadata !628), !dbg !1178
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1103, metadata !628), !dbg !1166
  br label %95, !dbg !1184

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1115, metadata !628), !dbg !1178
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1103, metadata !628), !dbg !1166
  %43 = and i8 %36, 1, !dbg !1186
  %44 = icmp eq i8 %43, 0, !dbg !1186
  br i1 %44, label %45, label %95, !dbg !1184

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1188
  br i1 %46, label %95, label %47, !dbg !1192

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1194, !tbaa !728
  br label %95, !dbg !1194

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.55, i64 0, i64 0), i32 %28), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1106, metadata !628), !dbg !1169
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), i32 %28), !dbg !1200
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1107, metadata !628), !dbg !1170
  br label %51, !dbg !1201

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1107, metadata !628), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1106, metadata !628), !dbg !1169
  %54 = and i8 %36, 1, !dbg !1202
  %55 = icmp eq i8 %54, 0, !dbg !1202
  br i1 %55, label %56, label %73, !dbg !1204

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1111, metadata !628), !dbg !1173
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1109, metadata !628), !dbg !1171
  %57 = load i8, i8* %52, align 1, !dbg !1205, !tbaa !728
  %58 = icmp eq i8 %57, 0, !dbg !1209
  br i1 %58, label %73, label %59, !dbg !1209

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1211

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1211
  br i1 %64, label %65, label %67, !dbg !1215

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1217
  store i8 %61, i8* %66, align 1, !dbg !1217, !tbaa !728
  br label %67, !dbg !1217

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1109, metadata !628), !dbg !1171
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1221
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1111, metadata !628), !dbg !1173
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1111, metadata !628), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1109, metadata !628), !dbg !1171
  %70 = load i8, i8* %69, align 1, !dbg !1205, !tbaa !728
  %71 = icmp eq i8 %70, 0, !dbg !1209
  br i1 %71, label %72, label %60, !dbg !1209, !llvm.loop !1223

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1171

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1113, metadata !628), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1111, metadata !628), !dbg !1173
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1112, metadata !628), !dbg !1174
  br label %95, !dbg !1227

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1113, metadata !628), !dbg !1175
  br label %77, !dbg !1228

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1113, metadata !628), !dbg !1175
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1115, metadata !628), !dbg !1178
  br label %79, !dbg !1229

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1115, metadata !628), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1113, metadata !628), !dbg !1175
  %82 = and i8 %81, 1, !dbg !1230
  %83 = icmp eq i8 %82, 0, !dbg !1230
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1113, metadata !628), !dbg !1175
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1232
  br label %85, !dbg !1232

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1115, metadata !628), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1113, metadata !628), !dbg !1175
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1103, metadata !628), !dbg !1166
  %88 = and i8 %87, 1, !dbg !1233
  %89 = icmp eq i8 %88, 0, !dbg !1233
  br i1 %89, label %90, label %95, !dbg !1235

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1236
  br i1 %91, label %95, label %92, !dbg !1240

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1242, !tbaa !728
  br label %95, !dbg !1242

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1115, metadata !628), !dbg !1178
  br label %95, !dbg !1244

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1245
  unreachable, !dbg !1245

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1115, metadata !628), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1113, metadata !628), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1112, metadata !628), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1111, metadata !628), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1107, metadata !628), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1106, metadata !628), !dbg !1169
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1103, metadata !628), !dbg !1166
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1108, metadata !628), !dbg !1246
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
  br label %123, !dbg !1247

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1100, metadata !628), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1118, metadata !628), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1117, metadata !628), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1102, metadata !628), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1110, metadata !628), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1108, metadata !628), !dbg !1246
  %132 = icmp eq i64 %127, -1, !dbg !1248
  br i1 %132, label %135, label %133, !dbg !1250

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1251
  br i1 %134, label %597, label %139, !dbg !1253

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1255
  %137 = load i8, i8* %136, align 1, !dbg !1255, !tbaa !728
  %138 = icmp eq i8 %137, 0, !dbg !1257
  br i1 %138, label %597, label %139, !dbg !1253

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1124, metadata !628), !dbg !1258
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1125, metadata !628), !dbg !1259
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1126, metadata !628), !dbg !1260
  br i1 %109, label %140, label %155, !dbg !1261

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1263
  %142 = and i1 %110, %132, !dbg !1265
  br i1 %142, label %143, label %145, !dbg !1265

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1102, metadata !628), !dbg !1165
  br label %145, !dbg !1267

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1102, metadata !628), !dbg !1165
  %147 = icmp ugt i64 %141, %146, !dbg !1269
  br i1 %147, label %155, label %148, !dbg !1271

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1272
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1273
  %151 = icmp ne i32 %150, 0, !dbg !1274
  %152 = or i1 %151, %112, !dbg !1274
  %153 = xor i1 %151, true, !dbg !1274
  %154 = zext i1 %153 to i8, !dbg !1274
  br i1 %152, label %155, label %644, !dbg !1274

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1124, metadata !628), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1102, metadata !628), !dbg !1165
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1276
  %159 = load i8, i8* %158, align 1, !dbg !1276, !tbaa !728
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1119, metadata !628), !dbg !1277
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
  ], !dbg !1278

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1279

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1280

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1125, metadata !628), !dbg !1259
  %163 = and i8 %128, 1, !dbg !1285
  %164 = icmp eq i8 %163, 0, !dbg !1285
  %165 = and i1 %114, %164, !dbg !1288
  br i1 %165, label %166, label %182, !dbg !1288

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1290
  br i1 %167, label %168, label %170, !dbg !1295

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1297
  store i8 39, i8* %169, align 1, !dbg !1297, !tbaa !728
  br label %170, !dbg !1297

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1109, metadata !628), !dbg !1171
  %172 = icmp ult i64 %171, %131, !dbg !1301
  br i1 %172, label %173, label %175, !dbg !1305

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1307
  store i8 36, i8* %174, align 1, !dbg !1307, !tbaa !728
  br label %175, !dbg !1307

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1109, metadata !628), !dbg !1171
  %177 = icmp ult i64 %176, %131, !dbg !1311
  br i1 %177, label %178, label %180, !dbg !1315

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1317
  store i8 39, i8* %179, align 1, !dbg !1317, !tbaa !728
  br label %180, !dbg !1317

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1116, metadata !628), !dbg !1179
  br label %182, !dbg !1321

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1109, metadata !628), !dbg !1171
  %185 = icmp ult i64 %183, %131, !dbg !1323
  br i1 %185, label %186, label %188, !dbg !1327

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1329
  store i8 92, i8* %187, align 1, !dbg !1329, !tbaa !728
  br label %188, !dbg !1329

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1109, metadata !628), !dbg !1171
  br i1 %106, label %190, label %476, !dbg !1333

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1335
  %192 = icmp ult i64 %191, %156, !dbg !1337
  br i1 %192, label %193, label %476, !dbg !1338

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1339
  %195 = load i8, i8* %194, align 1, !dbg !1339, !tbaa !728
  %196 = add i8 %195, -48, !dbg !1341
  %197 = icmp ult i8 %196, 10, !dbg !1341
  br i1 %197, label %198, label %476, !dbg !1341

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1342
  br i1 %199, label %200, label %202, !dbg !1347

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1349
  store i8 48, i8* %201, align 1, !dbg !1349, !tbaa !728
  br label %202, !dbg !1349

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1109, metadata !628), !dbg !1171
  %204 = icmp ult i64 %203, %131, !dbg !1353
  br i1 %204, label %205, label %207, !dbg !1357

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1359
  store i8 48, i8* %206, align 1, !dbg !1359, !tbaa !728
  br label %207, !dbg !1359

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1109, metadata !628), !dbg !1171
  br label %476, !dbg !1363

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1364

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1365

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1366

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1368

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1370
  %215 = icmp ult i64 %214, %156, !dbg !1372
  br i1 %215, label %216, label %476, !dbg !1373

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1374
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1376
  %219 = load i8, i8* %218, align 1, !dbg !1376, !tbaa !728
  %220 = icmp eq i8 %219, 63, !dbg !1377
  br i1 %220, label %221, label %476, !dbg !1378

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1380
  %223 = load i8, i8* %222, align 1, !dbg !1380, !tbaa !728
  %224 = sext i8 %223 to i32, !dbg !1380
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
  ], !dbg !1381

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1382

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1119, metadata !628), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1108, metadata !628), !dbg !1246
  %227 = icmp ult i64 %125, %131, !dbg !1384
  br i1 %227, label %228, label %230, !dbg !1388

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1390
  store i8 63, i8* %229, align 1, !dbg !1390, !tbaa !728
  br label %230, !dbg !1390

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1109, metadata !628), !dbg !1171
  %232 = icmp ult i64 %231, %131, !dbg !1394
  br i1 %232, label %233, label %235, !dbg !1398

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1400
  store i8 34, i8* %234, align 1, !dbg !1400, !tbaa !728
  br label %235, !dbg !1400

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1109, metadata !628), !dbg !1171
  %237 = icmp ult i64 %236, %131, !dbg !1404
  br i1 %237, label %238, label %240, !dbg !1408

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1410
  store i8 34, i8* %239, align 1, !dbg !1410, !tbaa !728
  br label %240, !dbg !1410

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1109, metadata !628), !dbg !1171
  %242 = icmp ult i64 %241, %131, !dbg !1414
  br i1 %242, label %243, label %245, !dbg !1418

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1420
  store i8 63, i8* %244, align 1, !dbg !1420, !tbaa !728
  br label %245, !dbg !1420

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1109, metadata !628), !dbg !1171
  br label %476, !dbg !1424

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1123, metadata !628), !dbg !1425
  br label %257, !dbg !1426

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1123, metadata !628), !dbg !1425
  br label %257, !dbg !1427

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1123, metadata !628), !dbg !1425
  br label %255, !dbg !1428

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1123, metadata !628), !dbg !1425
  br label %255, !dbg !1429

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1123, metadata !628), !dbg !1425
  br label %257, !dbg !1430

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1123, metadata !628), !dbg !1425
  br i1 %114, label %253, label %254, !dbg !1431

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1432

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1435

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1123, metadata !628), !dbg !1425
  br i1 %118, label %257, label %644, !dbg !1437

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1123, metadata !628), !dbg !1425
  br i1 %105, label %503, label %476, !dbg !1439

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1440
  br i1 %260, label %261, label %266, !dbg !1442

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1443, !tbaa !728
  %263 = icmp ne i8 %262, 0, !dbg !1445
  %264 = icmp ne i64 %124, 0, !dbg !1446
  %265 = or i1 %264, %263, !dbg !1448
  br i1 %265, label %476, label %272, !dbg !1448

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1449
  %268 = icmp ne i64 %124, 0, !dbg !1446
  %269 = or i1 %268, %267, !dbg !1451
  br i1 %269, label %476, label %272, !dbg !1451

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1446
  br i1 %271, label %272, label %476, !dbg !1453

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1126, metadata !628), !dbg !1260
  br label %273, !dbg !1454

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1126, metadata !628), !dbg !1260
  br i1 %118, label %476, label %644, !dbg !1455

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1117, metadata !628), !dbg !1180
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1126, metadata !628), !dbg !1260
  br i1 %114, label %276, label %476, !dbg !1457

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1458

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1461
  %279 = icmp ne i64 %126, 0, !dbg !1463
  %280 = or i1 %279, %278, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1110, metadata !628), !dbg !1172
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1100, metadata !628), !dbg !1163
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1465
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1100, metadata !628), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1110, metadata !628), !dbg !1172
  %283 = icmp ult i64 %125, %282, !dbg !1466
  br i1 %283, label %284, label %286, !dbg !1470

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1472
  store i8 39, i8* %285, align 1, !dbg !1472, !tbaa !728
  br label %286, !dbg !1472

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1109, metadata !628), !dbg !1171
  %288 = icmp ult i64 %287, %282, !dbg !1476
  br i1 %288, label %289, label %291, !dbg !1480

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1482
  store i8 92, i8* %290, align 1, !dbg !1482, !tbaa !728
  br label %291, !dbg !1482

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1109, metadata !628), !dbg !1171
  %293 = icmp ult i64 %292, %282, !dbg !1486
  br i1 %293, label %294, label %296, !dbg !1490

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1492
  store i8 39, i8* %295, align 1, !dbg !1492, !tbaa !728
  br label %296, !dbg !1492

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1116, metadata !628), !dbg !1179
  br label %476, !dbg !1496

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1497

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1127, metadata !628), !dbg !1498
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1499
  %301 = load i16*, i16** %300, align 8, !dbg !1499, !tbaa !636
  %302 = zext i8 %159 to i64, !dbg !1499
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1499
  %304 = load i16, i16* %303, align 2, !dbg !1499, !tbaa !1501
  %305 = lshr i16 %304, 14, !dbg !1503
  %306 = trunc i16 %305 to i8, !dbg !1503
  %307 = and i8 %306, 1, !dbg !1503
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1130, metadata !628), !dbg !1504
  br label %368, !dbg !1505

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !1506
  store i64 0, i64* %10, align 8, !dbg !1507
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1127, metadata !628), !dbg !1498
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1130, metadata !628), !dbg !1504
  %309 = icmp eq i64 %156, -1, !dbg !1508
  br i1 %309, label %310, label %312, !dbg !1510, !llvm.loop !1511

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1102, metadata !628), !dbg !1165
  br label %312, !dbg !1515, !llvm.loop !1511

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1504

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1130, metadata !628), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1127, metadata !628), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1102, metadata !628), !dbg !1165
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !1516
  %317 = add i64 %315, %124, !dbg !1517
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1518
  %319 = sub i64 %313, %317, !dbg !1519
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1131, metadata !1520), !dbg !1521
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1148, metadata !1520), !dbg !1522
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1151, metadata !628), !dbg !1524
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1525

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1127, metadata !628), !dbg !1498
  %322 = icmp ugt i64 %313, %317, !dbg !1526
  br i1 %322, label %323, label %351, !dbg !1529

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1530

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1530
  %328 = load i8, i8* %327, align 1, !dbg !1530, !tbaa !728
  %329 = icmp eq i8 %328, 0, !dbg !1532
  br i1 %329, label %348, label %330, !dbg !1533

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1127, metadata !628), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1127, metadata !628), !dbg !1498
  %332 = add i64 %331, %124, !dbg !1536
  %333 = icmp ult i64 %332, %313, !dbg !1526
  br i1 %333, label %324, label %348, !dbg !1529, !llvm.loop !1537

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1539
  %336 = and i1 %116, %335, !dbg !1543
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1152, metadata !628), !dbg !1544
  br i1 %336, label %337, label %355, !dbg !1543

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1545

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1545
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1546
  %342 = load i8, i8* %341, align 1, !dbg !1546, !tbaa !728
  %343 = sext i8 %342 to i32, !dbg !1546
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1547

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1152, metadata !628), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1152, metadata !628), !dbg !1544
  %346 = icmp ult i64 %345, %320, !dbg !1539
  br i1 %346, label %338, label %354, !dbg !1550, !llvm.loop !1552

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1504

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1504

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1504

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1130, metadata !628), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1127, metadata !628), !dbg !1498
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1555
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1556

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1556, !tbaa !704
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1148, metadata !628), !dbg !1522
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !1558
  %358 = icmp eq i32 %357, 0, !dbg !1558
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1130, metadata !628), !dbg !1504
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1559
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1130, metadata !628), !dbg !1504
  %360 = add i64 %320, %315, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1127, metadata !628), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1130, metadata !628), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1127, metadata !628), !dbg !1498
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1555
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1131, metadata !1520), !dbg !1521
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1561
  %362 = icmp eq i32 %361, 0, !dbg !1562
  br i1 %362, label %314, label %363, !dbg !1563, !llvm.loop !1511

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1565

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1565
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1130, metadata !628), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1127, metadata !628), !dbg !1498
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1555
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1565
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1130, metadata !628), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1127, metadata !628), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1102, metadata !628), !dbg !1165
  %372 = and i8 %371, 1, !dbg !1566
  %373 = icmp ne i8 %372, 0, !dbg !1566
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1126, metadata !628), !dbg !1260
  %374 = icmp ult i64 %370, 2, !dbg !1567
  %375 = or i1 %373, %113, !dbg !1568
  %376 = and i1 %374, %375, !dbg !1570
  br i1 %376, label %476, label %377, !dbg !1570

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1159, metadata !628), !dbg !1572
  br label %379, !dbg !1573

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1125, metadata !628), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1124, metadata !628), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1119, metadata !628), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1108, metadata !628), !dbg !1246
  br i1 %375, label %432, label %386, !dbg !1574

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1579

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1125, metadata !628), !dbg !1259
  %388 = and i8 %382, 1, !dbg !1583
  %389 = icmp eq i8 %388, 0, !dbg !1583
  %390 = and i1 %114, %389, !dbg !1586
  br i1 %390, label %391, label %407, !dbg !1586

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1588
  br i1 %392, label %393, label %395, !dbg !1593

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1595
  store i8 39, i8* %394, align 1, !dbg !1595, !tbaa !728
  br label %395, !dbg !1595

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1109, metadata !628), !dbg !1171
  %397 = icmp ult i64 %396, %131, !dbg !1599
  br i1 %397, label %398, label %400, !dbg !1603

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1605
  store i8 36, i8* %399, align 1, !dbg !1605, !tbaa !728
  br label %400, !dbg !1605

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1109, metadata !628), !dbg !1171
  %402 = icmp ult i64 %401, %131, !dbg !1609
  br i1 %402, label %403, label %405, !dbg !1613

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1615
  store i8 39, i8* %404, align 1, !dbg !1615, !tbaa !728
  br label %405, !dbg !1615

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1116, metadata !628), !dbg !1179
  br label %407, !dbg !1619

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1109, metadata !628), !dbg !1171
  %410 = icmp ult i64 %408, %131, !dbg !1621
  br i1 %410, label %411, label %413, !dbg !1625

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1627
  store i8 92, i8* %412, align 1, !dbg !1627, !tbaa !728
  br label %413, !dbg !1627

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1109, metadata !628), !dbg !1171
  %415 = icmp ult i64 %414, %131, !dbg !1631
  br i1 %415, label %416, label %420, !dbg !1635

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1637
  %418 = or i8 %417, 48, !dbg !1637
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1637
  store i8 %418, i8* %419, align 1, !dbg !1637, !tbaa !728
  br label %420, !dbg !1637

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1109, metadata !628), !dbg !1171
  %422 = icmp ult i64 %421, %131, !dbg !1641
  br i1 %422, label %423, label %428, !dbg !1645

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1647
  %425 = and i8 %424, 7, !dbg !1647
  %426 = or i8 %425, 48, !dbg !1647
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1647
  store i8 %426, i8* %427, align 1, !dbg !1647, !tbaa !728
  br label %428, !dbg !1647

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1109, metadata !628), !dbg !1171
  %430 = and i8 %383, 7, !dbg !1651
  %431 = or i8 %430, 48, !dbg !1652
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1119, metadata !628), !dbg !1277
  br label %441, !dbg !1653

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1654
  %434 = icmp eq i8 %433, 0, !dbg !1654
  br i1 %434, label %441, label %435, !dbg !1656

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1657
  br i1 %436, label %437, label %439, !dbg !1662

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1664
  store i8 92, i8* %438, align 1, !dbg !1664, !tbaa !728
  br label %439, !dbg !1664

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1124, metadata !628), !dbg !1258
  br label %441, !dbg !1668

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1125, metadata !628), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1124, metadata !628), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1119, metadata !628), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1109, metadata !628), !dbg !1171
  %447 = add i64 %380, 1, !dbg !1669
  %448 = icmp ugt i64 %378, %447, !dbg !1671
  br i1 %448, label %449, label %541, !dbg !1672

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1673
  %451 = icmp ne i8 %450, 0, !dbg !1673
  %452 = and i8 %446, 1, !dbg !1677
  %453 = icmp eq i8 %452, 0, !dbg !1677
  %454 = and i1 %451, %453, !dbg !1673
  br i1 %454, label %455, label %466, !dbg !1673

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1679
  br i1 %456, label %457, label %459, !dbg !1684

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1686
  store i8 39, i8* %458, align 1, !dbg !1686, !tbaa !728
  br label %459, !dbg !1686

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1109, metadata !628), !dbg !1171
  %461 = icmp ult i64 %460, %131, !dbg !1690
  br i1 %461, label %462, label %464, !dbg !1694

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1696
  store i8 39, i8* %463, align 1, !dbg !1696, !tbaa !728
  br label %464, !dbg !1696

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1116, metadata !628), !dbg !1179
  br label %466, !dbg !1700

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1109, metadata !628), !dbg !1171
  %469 = icmp ult i64 %467, %131, !dbg !1702
  br i1 %469, label %470, label %472, !dbg !1706

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1708
  store i8 %444, i8* %471, align 1, !dbg !1708, !tbaa !728
  br label %472, !dbg !1708

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1108, metadata !628), !dbg !1246
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1712
  %475 = load i8, i8* %474, align 1, !dbg !1712, !tbaa !728
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1119, metadata !628), !dbg !1277
  br label %379, !dbg !1713, !llvm.loop !1715

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1100, metadata !628), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1126, metadata !628), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1125, metadata !628), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1124, metadata !628), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1119, metadata !628), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1117, metadata !628), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1102, metadata !628), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1110, metadata !628), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1108, metadata !628), !dbg !1246
  br i1 %107, label %488, label %487, !dbg !1718

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1720

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1721

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1722
  %491 = zext i8 %490 to i64, !dbg !1722
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1724
  %493 = load i32, i32* %492, align 4, !dbg !1724, !tbaa !704
  %494 = and i8 %483, 31, !dbg !1725
  %495 = zext i8 %494 to i32, !dbg !1726
  %496 = shl i32 1, %495, !dbg !1727
  %497 = and i32 %493, %496, !dbg !1727
  %498 = icmp eq i32 %497, 0, !dbg !1727
  %499 = icmp eq i8 %157, 0, !dbg !1728
  %500 = and i1 %499, %498, !dbg !1729
  br i1 %500, label %542, label %503, !dbg !1729

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1728
  br i1 %502, label %542, label %503, !dbg !1730

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1100, metadata !628), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1126, metadata !628), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1119, metadata !628), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1117, metadata !628), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1102, metadata !628), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1110, metadata !628), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1108, metadata !628), !dbg !1246
  br i1 %112, label %513, label %644, !dbg !1732

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1125, metadata !628), !dbg !1259
  %514 = and i8 %508, 1, !dbg !1735
  %515 = icmp eq i8 %514, 0, !dbg !1735
  %516 = and i1 %114, %515, !dbg !1738
  br i1 %516, label %517, label %533, !dbg !1738

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1740
  br i1 %518, label %519, label %521, !dbg !1745

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1747
  store i8 39, i8* %520, align 1, !dbg !1747, !tbaa !728
  br label %521, !dbg !1747

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1109, metadata !628), !dbg !1171
  %523 = icmp ult i64 %522, %512, !dbg !1751
  br i1 %523, label %524, label %526, !dbg !1755

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1757
  store i8 36, i8* %525, align 1, !dbg !1757, !tbaa !728
  br label %526, !dbg !1757

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1109, metadata !628), !dbg !1171
  %528 = icmp ult i64 %527, %512, !dbg !1761
  br i1 %528, label %529, label %531, !dbg !1765

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1767
  store i8 39, i8* %530, align 1, !dbg !1767, !tbaa !728
  br label %531, !dbg !1767

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1116, metadata !628), !dbg !1179
  br label %533, !dbg !1771

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1109, metadata !628), !dbg !1171
  %536 = icmp ult i64 %534, %512, !dbg !1773
  br i1 %536, label %537, label %539, !dbg !1777

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1779
  store i8 92, i8* %538, align 1, !dbg !1779, !tbaa !728
  br label %539, !dbg !1779

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1100, metadata !628), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1126, metadata !628), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1125, metadata !628), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1119, metadata !628), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1117, metadata !628), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1102, metadata !628), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1110, metadata !628), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1108, metadata !628), !dbg !1246
  br label %569, !dbg !1783

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1163

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1100, metadata !628), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1126, metadata !628), !dbg !1260
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1125, metadata !628), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1119, metadata !628), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1117, metadata !628), !dbg !1180
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1102, metadata !628), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1110, metadata !628), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1108, metadata !628), !dbg !1246
  %553 = and i8 %547, 1, !dbg !1783
  %554 = icmp ne i8 %553, 0, !dbg !1783
  %555 = and i8 %550, 1, !dbg !1787
  %556 = icmp eq i8 %555, 0, !dbg !1787
  %557 = and i1 %554, %556, !dbg !1783
  br i1 %557, label %558, label %569, !dbg !1783

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1789
  br i1 %559, label %560, label %562, !dbg !1794

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1796
  store i8 39, i8* %561, align 1, !dbg !1796, !tbaa !728
  br label %562, !dbg !1796

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1109, metadata !628), !dbg !1171
  %564 = icmp ult i64 %563, %552, !dbg !1800
  br i1 %564, label %565, label %567, !dbg !1804

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1806
  store i8 39, i8* %566, align 1, !dbg !1806, !tbaa !728
  br label %567, !dbg !1806

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1109, metadata !628), !dbg !1171
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1116, metadata !628), !dbg !1179
  br label %569, !dbg !1810

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1116, metadata !628), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1109, metadata !628), !dbg !1171
  %579 = icmp ult i64 %577, %570, !dbg !1812
  br i1 %579, label %580, label %582, !dbg !1816

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1818
  store i8 %572, i8* %581, align 1, !dbg !1818, !tbaa !728
  br label %582, !dbg !1818

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1109, metadata !628), !dbg !1171
  %584 = and i8 %571, 1, !dbg !1822
  %585 = icmp eq i8 %584, 0, !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1118, metadata !628), !dbg !1181
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1824
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1118, metadata !628), !dbg !1181
  br label %587, !dbg !1825

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1108, metadata !628), !dbg !1246
  br label %123, !dbg !1828, !llvm.loop !1829

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1832
  %600 = and i1 %114, %599, !dbg !1834
  %601 = xor i1 %600, true, !dbg !1834
  %602 = or i1 %112, %601, !dbg !1834
  br i1 %602, label %603, label %648, !dbg !1834

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1835
  %605 = xor i1 %604, true, !dbg !1835
  %606 = and i8 %129, 1, !dbg !1837
  %607 = icmp eq i8 %606, 0, !dbg !1837
  %608 = or i1 %607, %605, !dbg !1835
  br i1 %608, label %618, label %609, !dbg !1835

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1839
  %611 = icmp eq i8 %610, 0, !dbg !1839
  br i1 %611, label %614, label %612, !dbg !1842

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1843
  br label %659, !dbg !1844

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1845
  %616 = icmp ne i64 %126, 0, !dbg !1847
  %617 = and i1 %616, %615, !dbg !1849
  br i1 %617, label %27, label %618, !dbg !1849

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1850
  %620 = and i1 %619, %112, !dbg !1852
  br i1 %620, label %621, label %638, !dbg !1852

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1111, metadata !628), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1109, metadata !628), !dbg !1171
  %622 = load i8, i8* %100, align 1, !dbg !1853, !tbaa !728
  %623 = icmp eq i8 %622, 0, !dbg !1857
  br i1 %623, label %638, label %624, !dbg !1857

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1859

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1859
  br i1 %629, label %630, label %632, !dbg !1863

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1865
  store i8 %626, i8* %631, align 1, !dbg !1865, !tbaa !728
  br label %632, !dbg !1865

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1109, metadata !628), !dbg !1171
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1869
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1111, metadata !628), !dbg !1173
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1111, metadata !628), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1109, metadata !628), !dbg !1171
  %635 = load i8, i8* %634, align 1, !dbg !1853, !tbaa !728
  %636 = icmp eq i8 %635, 0, !dbg !1857
  br i1 %636, label %637, label %625, !dbg !1857, !llvm.loop !1871

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1171

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1109, metadata !628), !dbg !1171
  %640 = icmp ult i64 %639, %131, !dbg !1874
  br i1 %640, label %641, label %659, !dbg !1876

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1877
  store i8 0, i8* %642, align 1, !dbg !1878, !tbaa !728
  br label %659, !dbg !1877

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1163

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1163

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1163

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1100, metadata !628), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1102, metadata !628), !dbg !1165
  %653 = icmp ne i32 %650, 2, !dbg !1879
  %654 = icmp eq i8 %104, 0, !dbg !1881
  %655 = or i1 %653, %654, !dbg !1883
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1103, metadata !628), !dbg !1166
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1103, metadata !628), !dbg !1166
  %657 = and i32 %5, -3, !dbg !1884
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1885
  br label %659, !dbg !1886

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1887
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1888 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1892, metadata !628), !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1893, metadata !628), !dbg !1897
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1898
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1894, metadata !628), !dbg !1899
  %4 = icmp eq i8* %3, %0, !dbg !1900
  br i1 %4, label %5, label %75, !dbg !1902

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1903
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1895, metadata !628), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1905, metadata !628), !dbg !1921
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1919, metadata !628), !dbg !1924
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1920, metadata !628), !dbg !1925
  %7 = load i8, i8* %6, align 1, !tbaa !728
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1926
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1926

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1929, metadata !628), !dbg !1943
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1941, metadata !628), !dbg !1947
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1942, metadata !628), !dbg !1948
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !728
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1949
  %15 = icmp eq i32 %14, 84, !dbg !1949
  br i1 %15, label %16, label %72, !dbg !1949

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1952, metadata !628), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1963, metadata !628), !dbg !1969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1964, metadata !628), !dbg !1970
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !728
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1971
  %21 = icmp eq i32 %20, 70, !dbg !1971
  br i1 %21, label %22, label %72, !dbg !1971

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1974, metadata !628), !dbg !1986
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1984, metadata !628), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1985, metadata !628), !dbg !1991
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !728
  %25 = icmp eq i8 %24, 45, !dbg !1992
  br i1 %25, label %26, label %72, !dbg !1995

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1997, metadata !628), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2006, metadata !628), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2007, metadata !628), !dbg !2013
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !728
  %29 = icmp eq i8 %28, 56, !dbg !2014
  br i1 %29, label %30, label %72, !dbg !2017

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2019, metadata !628), !dbg !2029
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2027, metadata !628), !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2028, metadata !628), !dbg !2034
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !728
  %33 = icmp eq i8 %32, 0, !dbg !2035
  br i1 %33, label %34, label %72, !dbg !2038

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2040, !tbaa !728
  %36 = icmp eq i8 %35, 96, !dbg !2041
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.58, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.59, i64 0, i64 0), !dbg !2040
  br label %75, !dbg !2042

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1929, metadata !628), !dbg !2043
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1941, metadata !628), !dbg !2047
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1942, metadata !628), !dbg !2048
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !728
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2049
  %43 = icmp eq i32 %42, 66, !dbg !2049
  br i1 %43, label %44, label %72, !dbg !2049

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1952, metadata !628), !dbg !2050
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1963, metadata !628), !dbg !2052
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1964, metadata !628), !dbg !2053
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !728
  %47 = icmp eq i8 %46, 49, !dbg !2054
  br i1 %47, label %48, label %72, !dbg !2056

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1974, metadata !628), !dbg !2058
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1984, metadata !628), !dbg !2060
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1985, metadata !628), !dbg !2061
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !728
  %51 = icmp eq i8 %50, 56, !dbg !2062
  br i1 %51, label %52, label %72, !dbg !2063

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1997, metadata !628), !dbg !2064
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2006, metadata !628), !dbg !2066
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2007, metadata !628), !dbg !2067
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !728
  %55 = icmp eq i8 %54, 48, !dbg !2068
  br i1 %55, label %56, label %72, !dbg !2069

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2019, metadata !628), !dbg !2070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2027, metadata !628), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2028, metadata !628), !dbg !2073
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !728
  %59 = icmp eq i8 %58, 51, !dbg !2074
  br i1 %59, label %60, label %72, !dbg !2075

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2076, metadata !628), !dbg !2085
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2083, metadata !628), !dbg !2089
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2084, metadata !628), !dbg !2090
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !728
  %63 = icmp eq i8 %62, 48, !dbg !2091
  br i1 %63, label %64, label %72, !dbg !2094

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2096, metadata !628), !dbg !2104
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2102, metadata !628), !dbg !2108
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2103, metadata !628), !dbg !2109
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !728
  %67 = icmp eq i8 %66, 0, !dbg !2110
  br i1 %67, label %68, label %72, !dbg !2113

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2114, !tbaa !728
  %70 = icmp eq i8 %69, 96, !dbg !2115
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.60, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.61, i64 0, i64 0), !dbg !2114
  br label %75, !dbg !2116

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2117
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), !dbg !2118
  br label %75, !dbg !2119

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2120
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2121 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2125, metadata !628), !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2126, metadata !628), !dbg !2129
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2127, metadata !628), !dbg !2130
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2131, metadata !628) #9, !dbg !2144
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2136, metadata !628) #9, !dbg !2146
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2137, metadata !628) #9, !dbg !2147
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2138, metadata !628) #9, !dbg !2148
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2149
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2149
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2139, metadata !628) #9, !dbg !2150
  %6 = tail call i32* @__errno_location() #1, !dbg !2151
  %7 = load i32, i32* %6, align 4, !dbg !2151, !tbaa !704
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2140, metadata !628) #9, !dbg !2152
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2153
  %9 = load i32, i32* %8, align 4, !dbg !2153, !tbaa !1031
  %10 = or i32 %9, 1, !dbg !2154
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2141, metadata !628) #9, !dbg !2155
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2156
  %12 = load i32, i32* %11, align 8, !dbg !2156, !tbaa !969
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2157
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2158
  %15 = load i8*, i8** %14, align 8, !dbg !2158, !tbaa !1058
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2159
  %17 = load i8*, i8** %16, align 8, !dbg !2159, !tbaa !1061
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2160
  %19 = add i64 %18, 1, !dbg !2161
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2142, metadata !628) #9, !dbg !2162
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2163, metadata !628) #9, !dbg !2168
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2170
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2143, metadata !628) #9, !dbg !2171
  %21 = load i32, i32* %11, align 8, !dbg !2172, !tbaa !969
  %22 = load i8*, i8** %14, align 8, !dbg !2173, !tbaa !1058
  %23 = load i8*, i8** %16, align 8, !dbg !2174, !tbaa !1061
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2175
  store i32 %7, i32* %6, align 4, !dbg !2176, !tbaa !704
  ret i8* %20, !dbg !2177
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2132 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2131, metadata !628), !dbg !2178
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2136, metadata !628), !dbg !2179
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2137, metadata !628), !dbg !2180
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2138, metadata !628), !dbg !2181
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2182
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2182
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2139, metadata !628), !dbg !2183
  %7 = tail call i32* @__errno_location() #1, !dbg !2184
  %8 = load i32, i32* %7, align 4, !dbg !2184, !tbaa !704
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2140, metadata !628), !dbg !2185
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2186
  %10 = load i32, i32* %9, align 4, !dbg !2186, !tbaa !1031
  %11 = icmp ne i64* %2, null, !dbg !2187
  %12 = xor i1 %11, true, !dbg !2187
  %13 = zext i1 %12 to i32, !dbg !2187
  %14 = or i32 %10, %13, !dbg !2188
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2141, metadata !628), !dbg !2189
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2190
  %16 = load i32, i32* %15, align 8, !dbg !2190, !tbaa !969
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2191
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2192
  %19 = load i8*, i8** %18, align 8, !dbg !2192, !tbaa !1058
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2193
  %21 = load i8*, i8** %20, align 8, !dbg !2193, !tbaa !1061
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2194
  %23 = add i64 %22, 1, !dbg !2195
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2142, metadata !628), !dbg !2196
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2163, metadata !628) #9, !dbg !2197
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2199
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2143, metadata !628), !dbg !2200
  %25 = load i32, i32* %15, align 8, !dbg !2201, !tbaa !969
  %26 = load i8*, i8** %18, align 8, !dbg !2202, !tbaa !1058
  %27 = load i8*, i8** %20, align 8, !dbg !2203, !tbaa !1061
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2204
  store i32 %8, i32* %7, align 4, !dbg !2205, !tbaa !704
  br i1 %11, label %29, label %30, !dbg !2206

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2207, !tbaa !2209
  br label %30, !dbg !2211

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2212
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2213 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2217, !tbaa !636
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2215, metadata !628), !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2216, metadata !628), !dbg !2219
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2216, metadata !628), !dbg !2219
  %2 = load i32, i32* @nslots, align 4, !dbg !2220, !tbaa !704
  %3 = icmp sgt i32 %2, 1, !dbg !2224
  br i1 %3, label %4, label %14, !dbg !2225

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2227

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2227
  %8 = load i8*, i8** %7, align 8, !dbg !2227, !tbaa !2228
  tail call void @free(i8* %8) #9, !dbg !2230
  %9 = add nuw i64 %6, 1, !dbg !2231
  %10 = load i32, i32* @nslots, align 4, !dbg !2220, !tbaa !704
  %11 = sext i32 %10 to i64, !dbg !2224
  %12 = icmp slt i64 %9, %11, !dbg !2224
  br i1 %12, label %5, label %13, !dbg !2225, !llvm.loop !2233

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2236

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2236
  %16 = load i8*, i8** %15, align 8, !dbg !2236, !tbaa !2228
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2238
  br i1 %17, label %19, label %18, !dbg !2239

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !2240
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2242, !tbaa !2243
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2244, !tbaa !2228
  br label %19, !dbg !2245

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2246
  br i1 %20, label %23, label %21, !dbg !2248

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2249
  tail call void @free(i8* %22) #9, !dbg !2251
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2252, !tbaa !636
  br label %23, !dbg !2253

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2254, !tbaa !704
  ret void, !dbg !2255
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2256 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2260, metadata !628), !dbg !2262
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2261, metadata !628), !dbg !2263
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2264
  ret i8* %3, !dbg !2265
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2266 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2270, metadata !628), !dbg !2284
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2271, metadata !628), !dbg !2285
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2272, metadata !628), !dbg !2286
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2273, metadata !628), !dbg !2287
  %5 = tail call i32* @__errno_location() #1, !dbg !2288
  %6 = load i32, i32* %5, align 4, !dbg !2288, !tbaa !704
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2274, metadata !628), !dbg !2289
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2290, !tbaa !636
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2275, metadata !628), !dbg !2291
  %8 = icmp slt i32 %0, 0, !dbg !2292
  br i1 %8, label %9, label %10, !dbg !2294

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2295
  unreachable, !dbg !2295

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2296, !tbaa !704
  %12 = icmp sgt i32 %11, %0, !dbg !2297
  br i1 %12, label %34, label %13, !dbg !2298

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2299
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2300
  br i1 %15, label %16, label %17, !dbg !2302

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2303
  unreachable, !dbg !2303

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2304
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2304
  %20 = add nsw i32 %0, 1, !dbg !2306
  %21 = sext i32 %20 to i64, !dbg !2307
  %22 = shl nsw i64 %21, 4, !dbg !2308
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2309
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2309
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2275, metadata !628), !dbg !2291
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2310, !tbaa !636
  br i1 %14, label %25, label %26, !dbg !2311

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2312, !tbaa.struct !2314
  br label %26, !dbg !2315

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2316, !tbaa !704
  %28 = sext i32 %27 to i64, !dbg !2317
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2317
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2318
  %31 = sub nsw i32 %20, %27, !dbg !2319
  %32 = sext i32 %31 to i64, !dbg !2320
  %33 = shl nsw i64 %32, 4, !dbg !2321
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2318
  store i32 %20, i32* @nslots, align 4, !dbg !2322, !tbaa !704
  br label %34, !dbg !2323

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2275, metadata !628), !dbg !2291
  %36 = sext i32 %0 to i64, !dbg !2324
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2325
  %38 = load i64, i64* %37, align 8, !dbg !2325, !tbaa !2243
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2279, metadata !628), !dbg !2326
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2327
  %40 = load i8*, i8** %39, align 8, !dbg !2327, !tbaa !2228
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2281, metadata !628), !dbg !2328
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2329
  %42 = load i32, i32* %41, align 4, !dbg !2329, !tbaa !1031
  %43 = or i32 %42, 1, !dbg !2330
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2282, metadata !628), !dbg !2331
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2332
  %45 = load i32, i32* %44, align 8, !dbg !2332, !tbaa !969
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2333
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2334
  %48 = load i8*, i8** %47, align 8, !dbg !2334, !tbaa !1058
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2335
  %50 = load i8*, i8** %49, align 8, !dbg !2335, !tbaa !1061
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2283, metadata !628), !dbg !2337
  %52 = icmp ugt i64 %38, %51, !dbg !2338
  br i1 %52, label %63, label %53, !dbg !2340

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2279, metadata !628), !dbg !2326
  store i64 %54, i64* %37, align 8, !dbg !2343, !tbaa !2243
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2344
  br i1 %55, label %57, label %56, !dbg !2346

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2347
  br label %57, !dbg !2347

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2163, metadata !628) #9, !dbg !2348
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2350
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2281, metadata !628), !dbg !2328
  store i8* %58, i8** %39, align 8, !dbg !2351, !tbaa !2228
  %59 = load i32, i32* %44, align 8, !dbg !2352, !tbaa !969
  %60 = load i8*, i8** %47, align 8, !dbg !2353, !tbaa !1058
  %61 = load i8*, i8** %49, align 8, !dbg !2354, !tbaa !1061
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2355
  br label %63, !dbg !2356

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2281, metadata !628), !dbg !2328
  store i32 %6, i32* %5, align 4, !dbg !2357, !tbaa !704
  ret i8* %64, !dbg !2358
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2359 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2363, metadata !628), !dbg !2366
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2364, metadata !628), !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2365, metadata !628), !dbg !2368
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2369
  ret i8* %4, !dbg !2370
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2371 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2375, metadata !628), !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2260, metadata !628) #9, !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2261, metadata !628) #9, !dbg !2379
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2380
  ret i8* %2, !dbg !2381
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2382 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2386, metadata !628), !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2387, metadata !628), !dbg !2389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2363, metadata !628) #9, !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2364, metadata !628) #9, !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2365, metadata !628) #9, !dbg !2393
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2394
  ret i8* %3, !dbg !2395
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2396 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2404, metadata !2410), !dbg !2411
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2400, metadata !628), !dbg !2413
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2401, metadata !628), !dbg !2414
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2402, metadata !628), !dbg !2415
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2416
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2403, metadata !1520), !dbg !2417
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2409, metadata !628) #9, !dbg !2418
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2419
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2419
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !628) #9, !dbg !2411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #9, !dbg !2411
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2411
  %8 = icmp eq i32 %1, 10, !dbg !2421
  br i1 %8, label %9, label %10, !dbg !2423

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2424, !noalias !2425
  unreachable, !dbg !2424

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2404, metadata !2420) #9, !dbg !2411
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2428
  store i32 %1, i32* %11, align 8, !dbg !2428, !alias.scope !2425
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2428
  %13 = bitcast i32* %12 to i8*, !dbg !2428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2428
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2429
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2403, metadata !1520), !dbg !2417
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2430
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2431
  ret i8* %14, !dbg !2432
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2433 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2404, metadata !2410), !dbg !2442
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2437, metadata !628), !dbg !2444
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2438, metadata !628), !dbg !2445
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2439, metadata !628), !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2440, metadata !628), !dbg !2447
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2448
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2448
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2441, metadata !1520), !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2409, metadata !628) #9, !dbg !2450
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2451
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2451
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !628) #9, !dbg !2442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #9, !dbg !2442
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2442
  %9 = icmp eq i32 %1, 10, !dbg !2452
  br i1 %9, label %10, label %11, !dbg !2453

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2454, !noalias !2455
  unreachable, !dbg !2454

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2404, metadata !2420) #9, !dbg !2442
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2458
  store i32 %1, i32* %12, align 8, !dbg !2458, !alias.scope !2455
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2458
  %14 = bitcast i32* %13 to i8*, !dbg !2458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2458
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2441, metadata !1520), !dbg !2449
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2460
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2461
  ret i8* %15, !dbg !2462
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2463 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2404, metadata !2410), !dbg !2469
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2467, metadata !628), !dbg !2472
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2468, metadata !628), !dbg !2473
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2400, metadata !628) #9, !dbg !2474
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2401, metadata !628) #9, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2402, metadata !628) #9, !dbg !2476
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2477
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2477
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2403, metadata !1520) #9, !dbg !2478
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2409, metadata !628) #9, !dbg !2479
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2480
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2480
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !628) #9, !dbg !2469
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #9, !dbg !2469
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2469
  %7 = icmp eq i32 %0, 10, !dbg !2481
  br i1 %7, label %8, label %9, !dbg !2482

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2483, !noalias !2484
  unreachable, !dbg !2483

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2404, metadata !2420) #9, !dbg !2469
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2487
  store i32 %0, i32* %10, align 8, !dbg !2487, !alias.scope !2484
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2487
  %12 = bitcast i32* %11 to i8*, !dbg !2487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2487
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2403, metadata !1520) #9, !dbg !2478
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2489
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2490
  ret i8* %13, !dbg !2491
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2492 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2404, metadata !2410), !dbg !2499
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2496, metadata !628), !dbg !2502
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2497, metadata !628), !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2498, metadata !628), !dbg !2504
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2437, metadata !628) #9, !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2438, metadata !628) #9, !dbg !2506
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2439, metadata !628) #9, !dbg !2507
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2440, metadata !628) #9, !dbg !2508
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2509
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2509
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2441, metadata !1520) #9, !dbg !2510
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2409, metadata !628) #9, !dbg !2511
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2512
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2512
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !628) #9, !dbg !2499
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #9, !dbg !2499
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2499
  %8 = icmp eq i32 %0, 10, !dbg !2513
  br i1 %8, label %9, label %10, !dbg !2514

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2515, !noalias !2516
  unreachable, !dbg !2515

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2404, metadata !2420) #9, !dbg !2499
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2519
  store i32 %0, i32* %11, align 8, !dbg !2519, !alias.scope !2516
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2519
  %13 = bitcast i32* %12 to i8*, !dbg !2519
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2519
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2520
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2441, metadata !1520) #9, !dbg !2510
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2521
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2522
  ret i8* %14, !dbg !2523
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2524 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !628), !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2529, metadata !628), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2530, metadata !628), !dbg !2534
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2535
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2536, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2531, metadata !1520), !dbg !2538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !989, metadata !628), !dbg !2539
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !990, metadata !628), !dbg !2541
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !991, metadata !628), !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !992, metadata !628), !dbg !2543
  %6 = lshr i8 %2, 5, !dbg !2544
  %7 = zext i8 %6 to i64, !dbg !2544
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2545
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !993, metadata !628), !dbg !2546
  %9 = and i8 %2, 31, !dbg !2547
  %10 = zext i8 %9 to i32, !dbg !2548
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !995, metadata !628), !dbg !2549
  %11 = load i32, i32* %8, align 4, !dbg !2550, !tbaa !704
  %12 = lshr i32 %11, %10, !dbg !2551
  %13 = and i32 %12, 1, !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !996, metadata !628), !dbg !2553
  %14 = xor i32 %13, 1, !dbg !2554
  %15 = shl i32 %14, %10, !dbg !2555
  %16 = xor i32 %15, %11, !dbg !2556
  store i32 %16, i32* %8, align 4, !dbg !2556, !tbaa !704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2531, metadata !1520), !dbg !2538
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2557
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2558
  ret i8* %17, !dbg !2559
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2560 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2564, metadata !628), !dbg !2566
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2565, metadata !628), !dbg !2567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !628) #9, !dbg !2568
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2529, metadata !628) #9, !dbg !2570
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2530, metadata !628) #9, !dbg !2571
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2572
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2573, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2531, metadata !1520) #9, !dbg !2574
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !989, metadata !628) #9, !dbg !2575
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !990, metadata !628) #9, !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !991, metadata !628) #9, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !992, metadata !628) #9, !dbg !2579
  %5 = lshr i8 %1, 5, !dbg !2580
  %6 = zext i8 %5 to i64, !dbg !2580
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2581
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !993, metadata !628) #9, !dbg !2582
  %8 = and i8 %1, 31, !dbg !2583
  %9 = zext i8 %8 to i32, !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !995, metadata !628) #9, !dbg !2585
  %10 = load i32, i32* %7, align 4, !dbg !2586, !tbaa !704
  %11 = lshr i32 %10, %9, !dbg !2587
  %12 = and i32 %11, 1, !dbg !2588
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !996, metadata !628) #9, !dbg !2589
  %13 = xor i32 %12, 1, !dbg !2590
  %14 = shl i32 %13, %9, !dbg !2591
  %15 = xor i32 %14, %10, !dbg !2592
  store i32 %15, i32* %7, align 4, !dbg !2592, !tbaa !704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2531, metadata !1520) #9, !dbg !2574
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2593
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2594
  ret i8* %16, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2596 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2598, metadata !628), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2564, metadata !628) #9, !dbg !2600
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2565, metadata !628) #9, !dbg !2602
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !628) #9, !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2529, metadata !628) #9, !dbg !2605
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2530, metadata !628) #9, !dbg !2606
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2607
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !2607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2608, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2531, metadata !1520) #9, !dbg !2609
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !989, metadata !628) #9, !dbg !2610
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !990, metadata !628) #9, !dbg !2612
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !991, metadata !628) #9, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !992, metadata !628) #9, !dbg !2614
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2615
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !993, metadata !628) #9, !dbg !2616
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !995, metadata !628) #9, !dbg !2617
  %5 = load i32, i32* %4, align 4, !dbg !2618, !tbaa !704
  %6 = or i32 %5, 67108864, !dbg !2619
  store i32 %6, i32* %4, align 4, !dbg !2619, !tbaa !704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2531, metadata !1520) #9, !dbg !2609
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2620
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !2621
  ret i8* %7, !dbg !2622
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2623 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2625, metadata !628), !dbg !2627
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2626, metadata !628), !dbg !2628
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !628) #9, !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2529, metadata !628) #9, !dbg !2631
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2530, metadata !628) #9, !dbg !2632
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2633
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2634, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2531, metadata !1520) #9, !dbg !2635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !989, metadata !628) #9, !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !990, metadata !628) #9, !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !991, metadata !628) #9, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !992, metadata !628) #9, !dbg !2640
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2641
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !993, metadata !628) #9, !dbg !2642
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !995, metadata !628) #9, !dbg !2643
  %6 = load i32, i32* %5, align 4, !dbg !2644, !tbaa !704
  %7 = or i32 %6, 67108864, !dbg !2645
  store i32 %7, i32* %5, align 4, !dbg !2645, !tbaa !704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2531, metadata !1520) #9, !dbg !2635
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2646
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2647
  ret i8* %8, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2649 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2404, metadata !2410), !dbg !2655
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2651, metadata !628), !dbg !2657
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2652, metadata !628), !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2653, metadata !628), !dbg !2659
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2660
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2409, metadata !628) #9, !dbg !2661
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2662
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2662
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2404, metadata !628) #9, !dbg !2655
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2404, metadata !2420) #9, !dbg !2655
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2655
  %9 = icmp eq i32 %1, 10, !dbg !2663
  br i1 %9, label %10, label %11, !dbg !2664

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2665, !noalias !2666
  unreachable, !dbg !2665

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2404, metadata !2420) #9, !dbg !2655
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2669
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2670
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2671
  store i32 %1, i32* %13, align 8, !dbg !2671
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2671
  %15 = bitcast i32* %14 to i8*, !dbg !2671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2671
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2654, metadata !1520), !dbg !2672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !989, metadata !628), !dbg !2673
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !990, metadata !628), !dbg !2675
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !991, metadata !628), !dbg !2676
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !992, metadata !628), !dbg !2677
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2678
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !993, metadata !628), !dbg !2679
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !995, metadata !628), !dbg !2680
  %17 = load i32, i32* %16, align 4, !dbg !2681, !tbaa !704
  %18 = or i32 %17, 67108864, !dbg !2682
  store i32 %18, i32* %16, align 4, !dbg !2682, !tbaa !704
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2654, metadata !1520), !dbg !2672
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2683
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2684
  ret i8* %19, !dbg !2685
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2686 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2690, metadata !628), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2691, metadata !628), !dbg !2695
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2692, metadata !628), !dbg !2696
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2693, metadata !628), !dbg !2697
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2698, metadata !628) #9, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2703, metadata !628) #9, !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2704, metadata !628) #9, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2705, metadata !628) #9, !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2706, metadata !628) #9, !dbg !2713
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2714
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2715, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2707, metadata !1520) #9, !dbg !2716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1039, metadata !628) #9, !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1040, metadata !628) #9, !dbg !2719
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1041, metadata !628) #9, !dbg !2720
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1039, metadata !628) #9, !dbg !2717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1039, metadata !628) #9, !dbg !2717
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2721
  store i32 10, i32* %7, align 8, !dbg !2722, !tbaa !969
  %8 = icmp ne i8* %1, null, !dbg !2723
  %9 = icmp ne i8* %2, null, !dbg !2724
  %10 = and i1 %8, %9, !dbg !2725
  br i1 %10, label %12, label %11, !dbg !2725

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2726
  unreachable, !dbg !2726

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2727
  store i8* %1, i8** %13, align 8, !dbg !2728, !tbaa !1058
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2729
  store i8* %2, i8** %14, align 8, !dbg !2730, !tbaa !1061
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2707, metadata !1520) #9, !dbg !2716
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2731
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2732
  ret i8* %15, !dbg !2733
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2699 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2698, metadata !628), !dbg !2734
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2703, metadata !628), !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2704, metadata !628), !dbg !2736
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2705, metadata !628), !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2706, metadata !628), !dbg !2738
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2739
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2740, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2707, metadata !1520), !dbg !2741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1039, metadata !628) #9, !dbg !2742
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1040, metadata !628) #9, !dbg !2744
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1041, metadata !628) #9, !dbg !2745
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1039, metadata !628) #9, !dbg !2742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1039, metadata !628) #9, !dbg !2742
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2746
  store i32 10, i32* %8, align 8, !dbg !2747, !tbaa !969
  %9 = icmp ne i8* %1, null, !dbg !2748
  %10 = icmp ne i8* %2, null, !dbg !2749
  %11 = and i1 %9, %10, !dbg !2750
  br i1 %11, label %13, label %12, !dbg !2750

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2751
  unreachable, !dbg !2751

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2752
  store i8* %1, i8** %14, align 8, !dbg !2753, !tbaa !1058
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2754
  store i8* %2, i8** %15, align 8, !dbg !2755, !tbaa !1061
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2707, metadata !1520), !dbg !2741
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2756
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2757
  ret i8* %16, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2759 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2763, metadata !628), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2764, metadata !628), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2765, metadata !628), !dbg !2768
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2690, metadata !628) #9, !dbg !2769
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2691, metadata !628) #9, !dbg !2771
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2692, metadata !628) #9, !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2693, metadata !628) #9, !dbg !2773
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2698, metadata !628) #9, !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2703, metadata !628) #9, !dbg !2776
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2704, metadata !628) #9, !dbg !2777
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2705, metadata !628) #9, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2706, metadata !628) #9, !dbg !2779
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2780
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2781, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2707, metadata !1520) #9, !dbg !2782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1039, metadata !628) #9, !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1040, metadata !628) #9, !dbg !2785
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1041, metadata !628) #9, !dbg !2786
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1039, metadata !628) #9, !dbg !2783
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1039, metadata !628) #9, !dbg !2783
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2787
  store i32 10, i32* %6, align 8, !dbg !2788, !tbaa !969
  %7 = icmp ne i8* %0, null, !dbg !2789
  %8 = icmp ne i8* %1, null, !dbg !2790
  %9 = and i1 %7, %8, !dbg !2791
  br i1 %9, label %11, label %10, !dbg !2791

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2792
  unreachable, !dbg !2792

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2793
  store i8* %0, i8** %12, align 8, !dbg !2794, !tbaa !1058
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2795
  store i8* %1, i8** %13, align 8, !dbg !2796, !tbaa !1061
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2707, metadata !1520) #9, !dbg !2782
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2797
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2798
  ret i8* %14, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2800 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2804, metadata !628), !dbg !2808
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2805, metadata !628), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2806, metadata !628), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2807, metadata !628), !dbg !2811
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2698, metadata !628) #9, !dbg !2812
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2703, metadata !628) #9, !dbg !2814
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2704, metadata !628) #9, !dbg !2815
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2705, metadata !628) #9, !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2706, metadata !628) #9, !dbg !2817
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2818
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2819, !tbaa.struct !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2707, metadata !1520) #9, !dbg !2820
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1039, metadata !628) #9, !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1040, metadata !628) #9, !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1041, metadata !628) #9, !dbg !2824
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1039, metadata !628) #9, !dbg !2821
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1039, metadata !628) #9, !dbg !2821
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2825
  store i32 10, i32* %7, align 8, !dbg !2826, !tbaa !969
  %8 = icmp ne i8* %0, null, !dbg !2827
  %9 = icmp ne i8* %1, null, !dbg !2828
  %10 = and i1 %8, %9, !dbg !2829
  br i1 %10, label %12, label %11, !dbg !2829

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2830
  unreachable, !dbg !2830

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2831
  store i8* %0, i8** %13, align 8, !dbg !2832, !tbaa !1058
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2833
  store i8* %1, i8** %14, align 8, !dbg !2834, !tbaa !1061
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2707, metadata !1520) #9, !dbg !2820
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2835
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2836
  ret i8* %15, !dbg !2837
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2838 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2842, metadata !628), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2843, metadata !628), !dbg !2846
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2844, metadata !628), !dbg !2847
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2848
  ret i8* %4, !dbg !2849
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2850 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2854, metadata !628), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2855, metadata !628), !dbg !2857
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2842, metadata !628) #9, !dbg !2858
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2843, metadata !628) #9, !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2844, metadata !628) #9, !dbg !2861
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2862
  ret i8* %3, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2864 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2868, metadata !628), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2869, metadata !628), !dbg !2871
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2842, metadata !628) #9, !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2843, metadata !628) #9, !dbg !2874
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2844, metadata !628) #9, !dbg !2875
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2876
  ret i8* %3, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2878 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2882, metadata !628), !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2868, metadata !628) #9, !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !628) #9, !dbg !2886
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2842, metadata !628) #9, !dbg !2887
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2843, metadata !628) #9, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2844, metadata !628) #9, !dbg !2890
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2891
  ret i8* %2, !dbg !2892
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2893 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2951, metadata !628), !dbg !2957
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2952, metadata !628), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2953, metadata !628), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2954, metadata !628), !dbg !2960
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2955, metadata !628), !dbg !2961
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2956, metadata !628), !dbg !2962
  %7 = icmp eq i8* %1, null, !dbg !2963
  br i1 %7, label %10, label %8, !dbg !2965

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2966
  br label %12, !dbg !2966

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.67, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2967
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i32 5) #9, !dbg !2968
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2969
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.69, i64 0, i64 0), i32 5) #9, !dbg !2971
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2972
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
  ], !dbg !2973

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2974
  unreachable, !dbg !2974

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.70, i64 0, i64 0), i32 5) #9, !dbg !2976
  %20 = load i8*, i8** %4, align 8, !dbg !2976, !tbaa !636
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2977
  br label %146, !dbg !2979

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.71, i64 0, i64 0), i32 5) #9, !dbg !2980
  %24 = load i8*, i8** %4, align 8, !dbg !2980, !tbaa !636
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2980
  %26 = load i8*, i8** %25, align 8, !dbg !2980, !tbaa !636
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2981
  br label %146, !dbg !2982

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.72, i64 0, i64 0), i32 5) #9, !dbg !2983
  %30 = load i8*, i8** %4, align 8, !dbg !2983, !tbaa !636
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2983
  %32 = load i8*, i8** %31, align 8, !dbg !2983, !tbaa !636
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2983
  %34 = load i8*, i8** %33, align 8, !dbg !2983, !tbaa !636
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2984
  br label %146, !dbg !2985

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.73, i64 0, i64 0), i32 5) #9, !dbg !2986
  %38 = load i8*, i8** %4, align 8, !dbg !2986, !tbaa !636
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2986
  %40 = load i8*, i8** %39, align 8, !dbg !2986, !tbaa !636
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2986
  %42 = load i8*, i8** %41, align 8, !dbg !2986, !tbaa !636
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2986
  %44 = load i8*, i8** %43, align 8, !dbg !2986, !tbaa !636
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2987
  br label %146, !dbg !2988

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.74, i64 0, i64 0), i32 5) #9, !dbg !2989
  %48 = load i8*, i8** %4, align 8, !dbg !2989, !tbaa !636
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2989
  %50 = load i8*, i8** %49, align 8, !dbg !2989, !tbaa !636
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2989
  %52 = load i8*, i8** %51, align 8, !dbg !2989, !tbaa !636
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2989
  %54 = load i8*, i8** %53, align 8, !dbg !2989, !tbaa !636
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2989
  %56 = load i8*, i8** %55, align 8, !dbg !2989, !tbaa !636
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2990
  br label %146, !dbg !2991

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.75, i64 0, i64 0), i32 5) #9, !dbg !2992
  %60 = load i8*, i8** %4, align 8, !dbg !2992, !tbaa !636
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2992
  %62 = load i8*, i8** %61, align 8, !dbg !2992, !tbaa !636
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2992
  %64 = load i8*, i8** %63, align 8, !dbg !2992, !tbaa !636
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2992
  %66 = load i8*, i8** %65, align 8, !dbg !2992, !tbaa !636
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2992
  %68 = load i8*, i8** %67, align 8, !dbg !2992, !tbaa !636
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2992
  %70 = load i8*, i8** %69, align 8, !dbg !2992, !tbaa !636
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2993
  br label %146, !dbg !2994

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.76, i64 0, i64 0), i32 5) #9, !dbg !2995
  %74 = load i8*, i8** %4, align 8, !dbg !2995, !tbaa !636
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2995
  %76 = load i8*, i8** %75, align 8, !dbg !2995, !tbaa !636
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2995
  %78 = load i8*, i8** %77, align 8, !dbg !2995, !tbaa !636
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2995
  %80 = load i8*, i8** %79, align 8, !dbg !2995, !tbaa !636
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2995
  %82 = load i8*, i8** %81, align 8, !dbg !2995, !tbaa !636
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2995
  %84 = load i8*, i8** %83, align 8, !dbg !2995, !tbaa !636
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2995
  %86 = load i8*, i8** %85, align 8, !dbg !2995, !tbaa !636
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2996
  br label %146, !dbg !2997

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.77, i64 0, i64 0), i32 5) #9, !dbg !2998
  %90 = load i8*, i8** %4, align 8, !dbg !2998, !tbaa !636
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2998
  %92 = load i8*, i8** %91, align 8, !dbg !2998, !tbaa !636
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2998
  %94 = load i8*, i8** %93, align 8, !dbg !2998, !tbaa !636
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2998
  %96 = load i8*, i8** %95, align 8, !dbg !2998, !tbaa !636
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2998
  %98 = load i8*, i8** %97, align 8, !dbg !2998, !tbaa !636
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2998
  %100 = load i8*, i8** %99, align 8, !dbg !2998, !tbaa !636
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2998
  %102 = load i8*, i8** %101, align 8, !dbg !2998, !tbaa !636
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2998
  %104 = load i8*, i8** %103, align 8, !dbg !2998, !tbaa !636
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2999
  br label %146, !dbg !3000

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.78, i64 0, i64 0), i32 5) #9, !dbg !3001
  %108 = load i8*, i8** %4, align 8, !dbg !3001, !tbaa !636
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3001
  %110 = load i8*, i8** %109, align 8, !dbg !3001, !tbaa !636
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3001
  %112 = load i8*, i8** %111, align 8, !dbg !3001, !tbaa !636
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3001
  %114 = load i8*, i8** %113, align 8, !dbg !3001, !tbaa !636
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3001
  %116 = load i8*, i8** %115, align 8, !dbg !3001, !tbaa !636
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3001
  %118 = load i8*, i8** %117, align 8, !dbg !3001, !tbaa !636
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3001
  %120 = load i8*, i8** %119, align 8, !dbg !3001, !tbaa !636
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3001
  %122 = load i8*, i8** %121, align 8, !dbg !3001, !tbaa !636
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3001
  %124 = load i8*, i8** %123, align 8, !dbg !3001, !tbaa !636
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !3002
  br label %146, !dbg !3003

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.79, i64 0, i64 0), i32 5) #9, !dbg !3004
  %128 = load i8*, i8** %4, align 8, !dbg !3004, !tbaa !636
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3004
  %130 = load i8*, i8** %129, align 8, !dbg !3004, !tbaa !636
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3004
  %132 = load i8*, i8** %131, align 8, !dbg !3004, !tbaa !636
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3004
  %134 = load i8*, i8** %133, align 8, !dbg !3004, !tbaa !636
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3004
  %136 = load i8*, i8** %135, align 8, !dbg !3004, !tbaa !636
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3004
  %138 = load i8*, i8** %137, align 8, !dbg !3004, !tbaa !636
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3004
  %140 = load i8*, i8** %139, align 8, !dbg !3004, !tbaa !636
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3004
  %142 = load i8*, i8** %141, align 8, !dbg !3004, !tbaa !636
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3004
  %144 = load i8*, i8** %143, align 8, !dbg !3004, !tbaa !636
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !3005
  br label %146, !dbg !3006

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3007
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3008 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3012, metadata !628), !dbg !3018
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3013, metadata !628), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3014, metadata !628), !dbg !3020
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3015, metadata !628), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3016, metadata !628), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3017, metadata !628), !dbg !3023
  br label %6, !dbg !3024

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3017, metadata !628), !dbg !3023
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3026
  %9 = load i8*, i8** %8, align 8, !dbg !3026, !tbaa !636
  %10 = icmp eq i8* %9, null, !dbg !3029
  %11 = add i64 %7, 1, !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3017, metadata !628), !dbg !3023
  br i1 %10, label %12, label %6, !dbg !3029, !llvm.loop !3033

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3036
  ret void, !dbg !3037
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3038 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3049, metadata !628), !dbg !3057
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3050, metadata !628), !dbg !3058
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3051, metadata !628), !dbg !3059
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3052, metadata !628), !dbg !3060
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3053, metadata !628), !dbg !3061
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3062
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !3062
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3055, metadata !628), !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3054, metadata !628), !dbg !3064
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3065
  %12 = icmp ult i32 %11, 41, !dbg !3065
  br i1 %12, label %13, label %18, !dbg !3065

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3069
  %15 = sext i32 %11 to i64, !dbg !3069
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3069
  %17 = add i32 %11, 8, !dbg !3069
  store i32 %17, i32* %8, align 8, !dbg !3069
  br label %21, !dbg !3069

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3071
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3071
  store i8* %20, i8** %10, align 8, !dbg !3071
  br label %21, !dbg !3071

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3065
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3073
  %25 = load i8*, i8** %24, align 8, !dbg !3073
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3075
  store i8* %25, i8** %26, align 16, !dbg !3076, !tbaa !636
  %27 = icmp eq i8* %25, null, !dbg !3077
  br i1 %27, label %30, label %28, !dbg !3078

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %29 = icmp ult i32 %22, 41, !dbg !3065
  br i1 %29, label %35, label %32, !dbg !3065

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3080
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !3081
  ret void, !dbg !3081

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3071
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3071
  store i8* %34, i8** %10, align 8, !dbg !3071
  br label %40, !dbg !3071

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3069
  %37 = sext i32 %22 to i64, !dbg !3069
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3069
  %39 = add i32 %22, 8, !dbg !3069
  store i32 %39, i32* %8, align 8, !dbg !3069
  br label %40, !dbg !3069

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3065
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3073
  %44 = load i8*, i8** %43, align 8, !dbg !3073
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3075
  store i8* %44, i8** %45, align 8, !dbg !3076, !tbaa !636
  %46 = icmp eq i8* %44, null, !dbg !3077
  br i1 %46, label %30, label %47, !dbg !3078

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %48 = icmp ult i32 %41, 41, !dbg !3065
  br i1 %48, label %52, label %49, !dbg !3065

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3071
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3071
  store i8* %51, i8** %10, align 8, !dbg !3071
  br label %57, !dbg !3071

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3069
  %54 = sext i32 %41 to i64, !dbg !3069
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3069
  %56 = add i32 %41, 8, !dbg !3069
  store i32 %56, i32* %8, align 8, !dbg !3069
  br label %57, !dbg !3069

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3065
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3073
  %61 = load i8*, i8** %60, align 8, !dbg !3073
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3075
  store i8* %61, i8** %62, align 16, !dbg !3076, !tbaa !636
  %63 = icmp eq i8* %61, null, !dbg !3077
  br i1 %63, label %30, label %64, !dbg !3078

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %65 = icmp ult i32 %58, 41, !dbg !3065
  br i1 %65, label %69, label %66, !dbg !3065

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3071
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3071
  store i8* %68, i8** %10, align 8, !dbg !3071
  br label %74, !dbg !3071

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3069
  %71 = sext i32 %58 to i64, !dbg !3069
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3069
  %73 = add i32 %58, 8, !dbg !3069
  store i32 %73, i32* %8, align 8, !dbg !3069
  br label %74, !dbg !3069

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3065
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3073
  %78 = load i8*, i8** %77, align 8, !dbg !3073
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3075
  store i8* %78, i8** %79, align 8, !dbg !3076, !tbaa !636
  %80 = icmp eq i8* %78, null, !dbg !3077
  br i1 %80, label %30, label %81, !dbg !3078

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %82 = icmp ult i32 %75, 41, !dbg !3065
  br i1 %82, label %86, label %83, !dbg !3065

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3071
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3071
  store i8* %85, i8** %10, align 8, !dbg !3071
  br label %91, !dbg !3071

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3069
  %88 = sext i32 %75 to i64, !dbg !3069
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3069
  %90 = add i32 %75, 8, !dbg !3069
  store i32 %90, i32* %8, align 8, !dbg !3069
  br label %91, !dbg !3069

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3065
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3073
  %95 = load i8*, i8** %94, align 8, !dbg !3073
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3075
  store i8* %95, i8** %96, align 16, !dbg !3076, !tbaa !636
  %97 = icmp eq i8* %95, null, !dbg !3077
  br i1 %97, label %30, label %98, !dbg !3078

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %99 = icmp ult i32 %92, 41, !dbg !3065
  br i1 %99, label %103, label %100, !dbg !3065

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3071
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3071
  store i8* %102, i8** %10, align 8, !dbg !3071
  br label %108, !dbg !3071

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3069
  %105 = sext i32 %92 to i64, !dbg !3069
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3069
  %107 = add i32 %92, 8, !dbg !3069
  store i32 %107, i32* %8, align 8, !dbg !3069
  br label %108, !dbg !3069

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3073
  %111 = load i8*, i8** %110, align 8, !dbg !3073
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3075
  store i8* %111, i8** %112, align 8, !dbg !3076, !tbaa !636
  %113 = icmp eq i8* %111, null, !dbg !3077
  br i1 %113, label %30, label %114, !dbg !3078

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %115 = load i8*, i8** %10, align 8, !dbg !3071
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3071
  store i8* %116, i8** %10, align 8, !dbg !3071
  %117 = bitcast i8* %115 to i8**, !dbg !3073
  %118 = load i8*, i8** %117, align 8, !dbg !3073
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3075
  store i8* %118, i8** %119, align 16, !dbg !3076, !tbaa !636
  %120 = icmp eq i8* %118, null, !dbg !3077
  br i1 %120, label %30, label %121, !dbg !3078

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %122 = load i8*, i8** %10, align 8, !dbg !3071
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3071
  store i8* %123, i8** %10, align 8, !dbg !3071
  %124 = bitcast i8* %122 to i8**, !dbg !3073
  %125 = load i8*, i8** %124, align 8, !dbg !3073
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3075
  store i8* %125, i8** %126, align 8, !dbg !3076, !tbaa !636
  %127 = icmp eq i8* %125, null, !dbg !3077
  br i1 %127, label %30, label %128, !dbg !3078

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %129 = load i8*, i8** %10, align 8, !dbg !3071
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3071
  store i8* %130, i8** %10, align 8, !dbg !3071
  %131 = bitcast i8* %129 to i8**, !dbg !3073
  %132 = load i8*, i8** %131, align 8, !dbg !3073
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3075
  store i8* %132, i8** %133, align 16, !dbg !3076, !tbaa !636
  %134 = icmp eq i8* %132, null, !dbg !3077
  br i1 %134, label %30, label %135, !dbg !3078

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %136 = load i8*, i8** %10, align 8, !dbg !3071
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3071
  store i8* %137, i8** %10, align 8, !dbg !3071
  %138 = bitcast i8* %136 to i8**, !dbg !3073
  %139 = load i8*, i8** %138, align 8, !dbg !3073
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3075
  store i8* %139, i8** %140, align 8, !dbg !3076, !tbaa !636
  %141 = icmp eq i8* %139, null, !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3054, metadata !628), !dbg !3064
  %142 = select i1 %141, i64 9, i64 10, !dbg !3078
  br label %30, !dbg !3078
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3082 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3086, metadata !628), !dbg !3096
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3087, metadata !628), !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3088, metadata !628), !dbg !3098
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3089, metadata !628), !dbg !3099
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3100
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !3100
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3090, metadata !628), !dbg !3101
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3102
  call void @llvm.va_start(i8* nonnull %6), !dbg !3102
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3103
  call void @llvm.va_end(i8* nonnull %6), !dbg !3104
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !3105
  ret void, !dbg !3105
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3106 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.82, i64 0, i64 0), i32 5) #9, !dbg !3107
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.83, i64 0, i64 0)) #9, !dbg !3108
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.84, i64 0, i64 0), i32 5) #9, !dbg !3110
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.86, i64 0, i64 0)) #9, !dbg !3111
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.87, i64 0, i64 0), i32 5) #9, !dbg !3112
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3112, !tbaa !636
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !3113
  ret void, !dbg !3114
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3115 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3119, metadata !628), !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3120, metadata !628), !dbg !3122
  %3 = udiv i64 9223372036854775807, %1, !dbg !3123
  %4 = icmp ult i64 %3, %0, !dbg !3123
  br i1 %4, label %5, label %6, !dbg !3125

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3126
  unreachable, !dbg !3126

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3128, metadata !628) #9, !dbg !3135
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3134, metadata !628) #9, !dbg !3138
  %9 = icmp eq i8* %8, null, !dbg !3139
  %10 = icmp ne i64 %7, 0, !dbg !3141
  %11 = and i1 %10, %9, !dbg !3143
  br i1 %11, label %12, label %13, !dbg !3143

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3144
  unreachable, !dbg !3144

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3145
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3129 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3128, metadata !628), !dbg !3146
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3134, metadata !628), !dbg !3148
  %3 = icmp eq i8* %2, null, !dbg !3149
  %4 = icmp ne i64 %0, 0, !dbg !3150
  %5 = and i1 %4, %3, !dbg !3151
  br i1 %5, label %6, label %7, !dbg !3151

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3152
  unreachable, !dbg !3152

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3153
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3154 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3158, metadata !628), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3159, metadata !628), !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3160, metadata !628), !dbg !3163
  %4 = udiv i64 9223372036854775807, %2, !dbg !3164
  %5 = icmp ult i64 %4, %1, !dbg !3164
  br i1 %5, label %6, label %7, !dbg !3166

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3167
  unreachable, !dbg !3167

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3168
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !628) #9, !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3174, metadata !628) #9, !dbg !3177
  %9 = icmp eq i64 %8, 0, !dbg !3178
  %10 = icmp ne i8* %0, null, !dbg !3180
  %11 = and i1 %10, %9, !dbg !3182
  br i1 %11, label %12, label %13, !dbg !3182

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3183
  br label %19, !dbg !3185

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3186
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3169, metadata !628) #9, !dbg !3175
  %15 = icmp eq i8* %14, null, !dbg !3187
  %16 = icmp ne i64 %8, 0, !dbg !3189
  %17 = and i1 %16, %15, !dbg !3191
  br i1 %17, label %18, label %19, !dbg !3191

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3192
  unreachable, !dbg !3192

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3193
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3170 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !628), !dbg !3194
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3174, metadata !628), !dbg !3195
  %3 = icmp eq i64 %1, 0, !dbg !3196
  %4 = icmp ne i8* %0, null, !dbg !3197
  %5 = and i1 %4, %3, !dbg !3198
  br i1 %5, label %6, label %7, !dbg !3198

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3199
  br label %13, !dbg !3200

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3201
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3169, metadata !628), !dbg !3194
  %9 = icmp eq i8* %8, null, !dbg !3202
  %10 = icmp ne i64 %1, 0, !dbg !3203
  %11 = and i1 %10, %9, !dbg !3204
  br i1 %11, label %12, label %13, !dbg !3204

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3205
  unreachable, !dbg !3205

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3206
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !588 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !593, metadata !628), !dbg !3207
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !594, metadata !628), !dbg !3208
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !595, metadata !628), !dbg !3209
  %4 = load i64, i64* %1, align 8, !dbg !3210, !tbaa !2209
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !596, metadata !628), !dbg !3211
  %5 = icmp eq i8* %0, null, !dbg !3212
  br i1 %5, label %6, label %13, !dbg !3214

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3215
  br i1 %7, label %8, label %17, !dbg !3218

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !596, metadata !628), !dbg !3211
  %10 = icmp ugt i64 %2, 128, !dbg !3221
  %11 = zext i1 %10 to i64, !dbg !3221
  %12 = add nuw nsw i64 %9, %11, !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !596, metadata !628), !dbg !3211
  br label %17, !dbg !3223

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3224
  %15 = icmp ugt i64 %14, %4, !dbg !3227
  br i1 %15, label %20, label %16, !dbg !3228

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3229
  unreachable, !dbg !3229

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !596, metadata !628), !dbg !3211
  store i64 %18, i64* %1, align 8, !dbg !3230, !tbaa !2209
  %19 = mul i64 %18, %2, !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !628) #9, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3174, metadata !628) #9, !dbg !3234
  br label %27, !dbg !3235

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3236
  %22 = add i64 %4, 1, !dbg !3237
  %23 = add i64 %22, %21, !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !596, metadata !628), !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !596, metadata !628), !dbg !3211
  store i64 %23, i64* %1, align 8, !dbg !3230, !tbaa !2209
  %24 = mul i64 %23, %2, !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !628) #9, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3174, metadata !628) #9, !dbg !3234
  %25 = icmp eq i64 %24, 0, !dbg !3239
  br i1 %25, label %26, label %27, !dbg !3235

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3240
  br label %34, !dbg !3241

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3242
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3169, metadata !628) #9, !dbg !3232
  %30 = icmp eq i8* %29, null, !dbg !3243
  %31 = icmp ne i64 %28, 0, !dbg !3244
  %32 = and i1 %31, %30, !dbg !3245
  br i1 %32, label %33, label %34, !dbg !3245

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3246
  unreachable, !dbg !3246

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3247
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3248 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3250, metadata !628), !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3128, metadata !628) #9, !dbg !3252
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3134, metadata !628) #9, !dbg !3255
  %3 = icmp eq i8* %2, null, !dbg !3256
  %4 = icmp ne i64 %0, 0, !dbg !3257
  %5 = and i1 %4, %3, !dbg !3258
  br i1 %5, label %6, label %7, !dbg !3258

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3259
  unreachable, !dbg !3259

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3260
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3261 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3265, metadata !628), !dbg !3267
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3266, metadata !628), !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !593, metadata !628) #9, !dbg !3269
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !594, metadata !628) #9, !dbg !3271
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !595, metadata !628) #9, !dbg !3272
  %3 = load i64, i64* %1, align 8, !dbg !3273, !tbaa !2209
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !596, metadata !628) #9, !dbg !3274
  %4 = icmp eq i8* %0, null, !dbg !3275
  br i1 %4, label %5, label %8, !dbg !3276

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3277
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !596, metadata !628) #9, !dbg !3274
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !596, metadata !628) #9, !dbg !3274
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3278
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !596, metadata !628) #9, !dbg !3274
  store i64 %7, i64* %1, align 8, !dbg !3279, !tbaa !2209
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !628) #9, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3174, metadata !628) #9, !dbg !3282
  br label %17, !dbg !3283

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3284
  br i1 %9, label %11, label %10, !dbg !3285

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3286
  unreachable, !dbg !3286

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3287
  %13 = add i64 %3, 1, !dbg !3288
  %14 = add i64 %13, %12, !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !596, metadata !628) #9, !dbg !3274
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !596, metadata !628) #9, !dbg !3274
  store i64 %14, i64* %1, align 8, !dbg !3279, !tbaa !2209
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !628) #9, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3174, metadata !628) #9, !dbg !3282
  %15 = icmp eq i64 %14, 0, !dbg !3290
  br i1 %15, label %16, label %17, !dbg !3283

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3291
  br label %24, !dbg !3292

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3293
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3169, metadata !628) #9, !dbg !3280
  %20 = icmp eq i8* %19, null, !dbg !3294
  %21 = icmp ne i64 %18, 0, !dbg !3295
  %22 = and i1 %21, %20, !dbg !3296
  br i1 %22, label %23, label %24, !dbg !3296

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3297
  unreachable, !dbg !3297

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3298
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3299 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3301, metadata !628), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3128, metadata !628) #9, !dbg !3303
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3305
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3134, metadata !628) #9, !dbg !3306
  %3 = icmp eq i8* %2, null, !dbg !3307
  %4 = icmp ne i64 %0, 0, !dbg !3308
  %5 = and i1 %4, %3, !dbg !3309
  br i1 %5, label %6, label %7, !dbg !3309

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3310
  unreachable, !dbg !3310

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3311
  ret i8* %2, !dbg !3312
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3313 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3315, metadata !628), !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3316, metadata !628), !dbg !3319
  %3 = udiv i64 9223372036854775807, %1, !dbg !3320
  %4 = icmp ult i64 %3, %0, !dbg !3320
  br i1 %4, label %8, label %5, !dbg !3322

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3317, metadata !628), !dbg !3325
  %7 = icmp eq i8* %6, null, !dbg !3326
  br i1 %7, label %8, label %9, !dbg !3327

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3329
  unreachable, !dbg !3329

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3330
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3331 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3335, metadata !628), !dbg !3337
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3336, metadata !628), !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3128, metadata !628) #9, !dbg !3339
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3341
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3134, metadata !628) #9, !dbg !3342
  %4 = icmp eq i8* %3, null, !dbg !3343
  %5 = icmp ne i64 %1, 0, !dbg !3344
  %6 = and i1 %5, %4, !dbg !3345
  br i1 %6, label %7, label %8, !dbg !3345

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3346
  unreachable, !dbg !3346

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3347
  ret i8* %3, !dbg !3348
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3349 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3351, metadata !628), !dbg !3352
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3353
  %3 = add i64 %2, 1, !dbg !3354
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3335, metadata !628) #9, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3336, metadata !628) #9, !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3128, metadata !628) #9, !dbg !3359
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3361
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3134, metadata !628) #9, !dbg !3362
  %5 = icmp eq i8* %4, null, !dbg !3363
  %6 = icmp ne i64 %3, 0, !dbg !3364
  %7 = and i1 %6, %5, !dbg !3365
  br i1 %7, label %8, label %9, !dbg !3365

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3366
  unreachable, !dbg !3366

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3367
  ret i8* %4, !dbg !3368
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3369 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3371, !tbaa !704
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.98, i64 0, i64 0), i32 5) #9, !dbg !3372
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* %2) #9, !dbg !3373
  tail call void @abort() #14, !dbg !3375
  unreachable, !dbg !3375
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3376 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3379, metadata !628), !dbg !3385
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3380, metadata !628), !dbg !3386
  %3 = icmp eq i64 %0, 0, !dbg !3387
  %4 = icmp eq i64 %1, 0, !dbg !3388
  %5 = or i1 %3, %4, !dbg !3390
  br i1 %5, label %12, label %6, !dbg !3390

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3391
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3382, metadata !628), !dbg !3392
  %8 = udiv i64 %7, %1, !dbg !3393
  %9 = icmp eq i64 %8, %0, !dbg !3395
  br i1 %9, label %12, label %10, !dbg !3396

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3397
  store i32 12, i32* %11, align 4, !dbg !3399, !tbaa !704
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3379, metadata !628), !dbg !3385
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3380, metadata !628), !dbg !3386
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3400
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3381, metadata !628), !dbg !3401
  br label %16, !dbg !3402

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3403
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3404 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3421, metadata !628), !dbg !3430
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3422, metadata !628), !dbg !3431
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3423, metadata !628), !dbg !3432
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3424, metadata !628), !dbg !3433
  %6 = bitcast i32* %5 to i8*, !dbg !3434
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !3434
  %7 = icmp eq i32* %0, null, !dbg !3435
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3421, metadata !628), !dbg !3430
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3437
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3421, metadata !628), !dbg !3430
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3425, metadata !628), !dbg !3439
  %10 = icmp ugt i64 %9, -3, !dbg !3440
  %11 = icmp ne i64 %2, 0, !dbg !3441
  %12 = and i1 %11, %10, !dbg !3443
  br i1 %12, label %13, label %18, !dbg !3443

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3444
  br i1 %14, label %18, label %15, !dbg !3446

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3448, !tbaa !728
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3427, metadata !628), !dbg !3449
  %17 = zext i8 %16 to i32, !dbg !3450
  store i32 %17, i32* %8, align 4, !dbg !3451, !tbaa !704
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !3452
  ret i64 %19, !dbg !3452
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3453 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3498, metadata !628), !dbg !3503
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3504
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3505, metadata !628), !dbg !3509
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3511
  %4 = load i32, i32* %3, align 8, !dbg !3511, !tbaa !3512
  %5 = and i32 %4, 32, !dbg !3511
  %6 = icmp eq i32 %5, 0, !dbg !3514
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3515
  %8 = icmp ne i32 %7, 0, !dbg !3516
  br i1 %6, label %9, label %19, !dbg !3517

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3519
  %11 = icmp ne i64 %2, 0, !dbg !3519
  %12 = or i1 %11, %10, !dbg !3519
  %13 = sext i1 %8 to i32, !dbg !3519
  br i1 %12, label %22, label %14, !dbg !3519

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3521
  %16 = load i32, i32* %15, align 4, !dbg !3521, !tbaa !704
  %17 = icmp ne i32 %16, 9, !dbg !3523
  %18 = sext i1 %17 to i32, !dbg !3523
  br label %22, !dbg !3523

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3525

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3527
  store i32 0, i32* %21, align 4, !dbg !3529, !tbaa !704
  br label %22, !dbg !3527

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3530
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3531 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3536, metadata !628), !dbg !3556
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3537, metadata !628), !dbg !3557
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3558
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3538, metadata !628), !dbg !3559
  %3 = icmp eq i8* %2, null, !dbg !3560
  br i1 %3, label %15, label %4, !dbg !3561

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3546, metadata !628), !dbg !3562
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3547, metadata !628), !dbg !3563
  %5 = load i8, i8* %2, align 1, !dbg !3564, !tbaa !728
  %6 = icmp eq i8 %5, 67, !dbg !3566
  br i1 %6, label %7, label %11, !dbg !3569

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3571
  %9 = load i8, i8* %8, align 1, !dbg !3571, !tbaa !728
  %10 = icmp eq i8 %9, 0, !dbg !3574
  br i1 %10, label %14, label %11, !dbg !3576

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3552, metadata !628), !dbg !3578
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0)) #9, !dbg !3579
  %13 = icmp eq i32 %12, 0, !dbg !3581
  br i1 %13, label %14, label %15, !dbg !3583

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3537, metadata !628), !dbg !3557
  br label %15, !dbg !3585

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3586
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3587 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3599, metadata !628), !dbg !3673
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3666, metadata !628), !dbg !3675
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3676
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3591, metadata !628), !dbg !3677
  %4 = icmp eq i8* %3, null, !dbg !3678
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), i8* %3, !dbg !3680
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3591, metadata !628), !dbg !3677
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3681, !tbaa !636
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3613, metadata !628) #9, !dbg !3682
  %7 = icmp eq i8* %6, null, !dbg !3683
  br i1 %7, label %8, label %127, !dbg !3684

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.112, i64 0, i64 0)) #9, !dbg !3685
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3614, metadata !628) #9, !dbg !3686
  %10 = icmp eq i8* %9, null, !dbg !3687
  br i1 %10, label %14, label %11, !dbg !3689

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3690, !tbaa !728
  %13 = icmp eq i8 %12, 0, !dbg !3692
  br i1 %13, label %14, label %15, !dbg !3693

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3695

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.113, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3614, metadata !628) #9, !dbg !3686
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3696
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3617, metadata !628) #9, !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3619, metadata !628) #9, !dbg !3698
  %18 = icmp eq i64 %17, 0, !dbg !3699
  br i1 %18, label %24, label %19, !dbg !3700

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3701
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3701
  %22 = load i8, i8* %21, align 1, !dbg !3701, !tbaa !728
  %23 = icmp ne i8 %22, 47, !dbg !3703
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3704
  %27 = add i64 %17, 14, !dbg !3705
  %28 = add i64 %27, %26, !dbg !3706
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3707
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3616, metadata !628) #9, !dbg !3708
  %30 = icmp eq i8* %29, null, !dbg !3709
  br i1 %30, label %125, label %31, !dbg !3709

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3710
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3713

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3714, !tbaa !728
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3716
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3717
  br label %37, !dbg !3718

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3716
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.114, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3717
  br label %37, !dbg !3718

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3719
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3621, metadata !628) #9, !dbg !3720
  %39 = icmp slt i32 %38, 0, !dbg !3721
  br i1 %39, label %123, label %40, !dbg !3722

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.115, i64 0, i64 0)) #9, !dbg !3723
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3622, metadata !628) #9, !dbg !3724
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3725
  br i1 %42, label %48, label %43, !dbg !3726

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3727

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !3728
  br label %123, !dbg !3730

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3663, metadata !628) #9, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3664, metadata !628) #9, !dbg !3731
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !3732
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !3733
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3734, metadata !628) #9, !dbg !3739
  %53 = load i8*, i8** %46, align 8, !dbg !3741, !tbaa !3742
  %54 = load i8*, i8** %47, align 8, !dbg !3741, !tbaa !3743
  %55 = icmp ult i8* %53, %54, !dbg !3741
  br i1 %55, label %58, label %56, !dbg !3741, !prof !3744

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3745
  br label %62, !dbg !3745

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3747
  store i8* %59, i8** %46, align 8, !dbg !3747, !tbaa !3742
  %60 = load i8, i8* %53, align 1, !dbg !3747, !tbaa !728
  %61 = zext i8 %60 to i32, !dbg !3747
  br label %62, !dbg !3747

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3749
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3665, metadata !628) #9, !dbg !3751
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3752

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3753

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3734, metadata !628) #9, !dbg !3753
  %66 = load i8*, i8** %46, align 8, !dbg !3757, !tbaa !3742
  %67 = load i8*, i8** %47, align 8, !dbg !3757, !tbaa !3743
  %68 = icmp ult i8* %66, %67, !dbg !3757
  br i1 %68, label %71, label %69, !dbg !3757, !prof !3744

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3758
  br label %75, !dbg !3758

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3759
  store i8* %72, i8** %46, align 8, !dbg !3759, !tbaa !3742
  %73 = load i8, i8* %66, align 1, !dbg !3759, !tbaa !728
  %74 = zext i8 %73 to i32, !dbg !3759
  br label %75, !dbg !3759

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3760
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3665, metadata !628) #9, !dbg !3751
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3761, !llvm.loop !3763

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !3766
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.116, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !3767
  %80 = icmp slt i32 %79, 2, !dbg !3769
  br i1 %80, label %115, label %81, !dbg !3770

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3670, metadata !628) #9, !dbg !3772
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3773
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3671, metadata !628) #9, !dbg !3774
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3672, metadata !628) #9, !dbg !3775
  %84 = icmp eq i64 %51, 0, !dbg !3776
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3778

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3664, metadata !628) #9, !dbg !3731
  %89 = add i64 %86, 2, !dbg !3779
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !3781
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3663, metadata !628) #9, !dbg !3727
  br label %95, !dbg !3782

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3783
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3664, metadata !628) #9, !dbg !3731
  %93 = add i64 %92, 1, !dbg !3785
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3663, metadata !628) #9, !dbg !3727
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3663, metadata !628) #9, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3664, metadata !628) #9, !dbg !3731
  %98 = icmp eq i8* %97, null, !dbg !3787
  br i1 %98, label %99, label %100, !dbg !3789

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3664, metadata !628) #9, !dbg !3731
  call void @free(i8* %52) #9, !dbg !3790
  br label %116, !dbg !3792

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3793
  %102 = xor i64 %83, -1, !dbg !3794
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3794
  %104 = xor i64 %82, -1, !dbg !3795
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3795
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3796, metadata !628) #9, !dbg !3805
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3804, metadata !628) #9, !dbg !3805
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !3807
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !3808
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3796, metadata !628) #9, !dbg !3809
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3804, metadata !628) #9, !dbg !3809
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !3811
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !3812
  br label %111, !dbg !3813

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3727

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3663, metadata !628) #9, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3664, metadata !628) #9, !dbg !3731
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3813
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3813
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3727

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3727

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3663, metadata !628) #9, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3664, metadata !628) #9, !dbg !3731
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3813
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3813
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3814
  %120 = icmp eq i64 %117, 0, !dbg !3815
  br i1 %120, label %123, label %121, !dbg !3817

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3818
  store i8 0, i8* %122, align 1, !dbg !3820, !tbaa !728
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3613, metadata !628) #9, !dbg !3682
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3613, metadata !628) #9, !dbg !3682
  call void @free(i8* %29) #9, !dbg !3821
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.111, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3613, metadata !628) #9, !dbg !3682
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3822, !tbaa !636
  br label %127, !dbg !3823

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3592, metadata !628), !dbg !3824
  %129 = load i8, i8* %128, align 1, !dbg !3825, !tbaa !728
  %130 = icmp eq i8 %129, 0, !dbg !3826
  br i1 %130, label %157, label %131, !dbg !3827

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3829

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !3829
  %136 = icmp eq i32 %135, 0, !dbg !3830
  br i1 %136, label %143, label %137, !dbg !3831

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3832
  br i1 %138, label %139, label %147, !dbg !3834

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3835
  %141 = load i8, i8* %140, align 1, !dbg !3835, !tbaa !728
  %142 = icmp eq i8 %141, 0, !dbg !3837
  br i1 %142, label %143, label %147, !dbg !3838

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3840
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3842
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3843
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3591, metadata !628), !dbg !3677
  br label %157, !dbg !3844

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3845
  %149 = add i64 %148, 1, !dbg !3846
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3847
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3592, metadata !628), !dbg !3824
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3848
  %152 = add i64 %151, 1, !dbg !3849
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3850
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3592, metadata !628), !dbg !3824
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3592, metadata !628), !dbg !3824
  %154 = load i8, i8* %153, align 1, !dbg !3825, !tbaa !728
  %155 = icmp eq i8 %154, 0, !dbg !3826
  br i1 %155, label %156, label %132, !dbg !3827, !llvm.loop !3851

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3677

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3591, metadata !628), !dbg !3677
  %159 = load i8, i8* %158, align 1, !dbg !3854, !tbaa !728
  %160 = icmp eq i8 %159, 0, !dbg !3856
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i8* %158, !dbg !3857
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3591, metadata !628), !dbg !3677
  ret i8* %161, !dbg !3858
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3859 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3904, metadata !628), !dbg !3908
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3905, metadata !628), !dbg !3909
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3907, metadata !628), !dbg !3910
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3911
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3906, metadata !628), !dbg !3912
  %3 = icmp slt i32 %2, 0, !dbg !3913
  br i1 %3, label %4, label %6, !dbg !3915

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3916
  br label %24, !dbg !3917

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3918
  %8 = icmp eq i32 %7, 0, !dbg !3918
  br i1 %8, label %13, label %9, !dbg !3920

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3921
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3923
  %12 = icmp eq i64 %11, -1, !dbg !3925
  br i1 %12, label %16, label %13, !dbg !3926

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3927
  %15 = icmp eq i32 %14, 0, !dbg !3927
  br i1 %15, label %16, label %18, !dbg !3928

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3905, metadata !628), !dbg !3909
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3930
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3907, metadata !628), !dbg !3910
  br label %24, !dbg !3931

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3932
  %20 = load i32, i32* %19, align 4, !dbg !3932, !tbaa !704
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3905, metadata !628), !dbg !3909
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3905, metadata !628), !dbg !3909
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3930
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3907, metadata !628), !dbg !3910
  %22 = icmp eq i32 %20, 0, !dbg !3933
  br i1 %22, label %24, label %23, !dbg !3931

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3935, !tbaa !704
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3907, metadata !628), !dbg !3910
  br label %24, !dbg !3937

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3938
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3939 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3984, metadata !628), !dbg !3985
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3986
  br i1 %2, label %6, label %3, !dbg !3988

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3989
  %5 = icmp eq i32 %4, 0, !dbg !3989
  br i1 %5, label %6, label %8, !dbg !3991

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3993
  br label %17, !dbg !3994

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3995, metadata !628) #9, !dbg !4000
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4002
  %10 = load i32, i32* %9, align 8, !dbg !4002, !tbaa !3512
  %11 = and i32 %10, 256, !dbg !4004
  %12 = icmp eq i32 %11, 0, !dbg !4004
  br i1 %12, label %15, label %13, !dbg !4005

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !4006
  br label %15, !dbg !4006

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4007
  br label %17, !dbg !4008

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4009
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4010 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4056, metadata !628), !dbg !4062
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4057, metadata !628), !dbg !4063
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4058, metadata !628), !dbg !4064
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4065
  %5 = load i8*, i8** %4, align 8, !dbg !4065, !tbaa !3743
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4066
  %7 = load i8*, i8** %6, align 8, !dbg !4066, !tbaa !3742
  %8 = icmp eq i8* %5, %7, !dbg !4067
  br i1 %8, label %9, label %28, !dbg !4068

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4069
  %11 = load i8*, i8** %10, align 8, !dbg !4069, !tbaa !4071
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4072
  %13 = load i8*, i8** %12, align 8, !dbg !4072, !tbaa !4073
  %14 = icmp eq i8* %11, %13, !dbg !4074
  br i1 %14, label %15, label %28, !dbg !4075

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4076
  %17 = load i8*, i8** %16, align 8, !dbg !4076, !tbaa !4077
  %18 = icmp eq i8* %17, null, !dbg !4078
  br i1 %18, label %19, label %28, !dbg !4079

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4081
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !4082
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4059, metadata !628), !dbg !4084
  %22 = icmp eq i64 %21, -1, !dbg !4085
  br i1 %22, label %30, label %23, !dbg !4087

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4088
  %25 = load i32, i32* %24, align 8, !dbg !4089, !tbaa !3512
  %26 = and i32 %25, -17, !dbg !4089
  store i32 %26, i32* %24, align 8, !dbg !4089, !tbaa !3512
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4090
  store i64 %21, i64* %27, align 8, !dbg !4091, !tbaa !4092
  br label %30, !dbg !4093

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4094
  br label %30, !dbg !4095

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4096
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

!llvm.dbg.cu = !{!2, !108, !114, !122, !129, !136, !575, !220, !583, !600, !602, !604, !607, !609, !229, !612, !614, !616}
!llvm.ident = !{!618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618}
!llvm.module.flags = !{!619, !620, !621, !622}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 36, type: !94, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !26)
!3 = !DIFile(filename: "src/env.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, size: 32, elements: !7)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!9 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!10 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!11 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!12 = !{!13, !15, !16, !19, !21, !24}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 62, baseType: !18)
!17 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!26 = !{!27, !65, !0}
!27 = !DIGlobalVariableExpression(var: !28)
!28 = distinct !DIGlobalVariable(name: "dummy_environ", scope: !29, file: !3, line: 118, type: !62, isLocal: true, isDefinition: true)
!29 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 79, type: !30, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !34)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !32, !33}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !{!35, !36, !37, !38, !40, !41, !44, !45, !47, !48, !51, !52, !54, !55, !56, !61}
!35 = !DILocalVariable(name: "argc", arg: 1, scope: !29, file: !3, line: 79, type: !32)
!36 = !DILocalVariable(name: "argv", arg: 2, scope: !29, file: !3, line: 79, type: !33)
!37 = !DILocalVariable(name: "optc", scope: !29, file: !3, line: 81, type: !32)
!38 = !DILocalVariable(name: "ignore_environment", scope: !29, file: !3, line: 82, type: !39)
!39 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!40 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !29, file: !3, line: 83, type: !39)
!41 = !DILocalVariable(name: "__s1_len", scope: !42, file: !3, line: 113, type: !16)
!42 = distinct !DILexicalBlock(scope: !43, file: !3, line: 113, column: 24)
!43 = distinct !DILexicalBlock(scope: !29, file: !3, line: 113, column: 7)
!44 = !DILocalVariable(name: "__s2_len", scope: !42, file: !3, line: 113, type: !16)
!45 = !DILocalVariable(name: "__s2", scope: !46, file: !3, line: 113, type: !21)
!46 = distinct !DILexicalBlock(scope: !42, file: !3, line: 113, column: 24)
!47 = !DILocalVariable(name: "__result", scope: !46, file: !3, line: 113, type: !32)
!48 = !DILocalVariable(name: "__s1_len", scope: !49, file: !3, line: 127, type: !16)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 127, column: 24)
!50 = distinct !DILexicalBlock(scope: !29, file: !3, line: 127, column: 7)
!51 = !DILocalVariable(name: "__s2_len", scope: !49, file: !3, line: 127, type: !16)
!52 = !DILocalVariable(name: "__s2", scope: !53, file: !3, line: 127, type: !21)
!53 = distinct !DILexicalBlock(scope: !49, file: !3, line: 127, column: 24)
!54 = !DILocalVariable(name: "__result", scope: !53, file: !3, line: 127, type: !32)
!55 = !DILocalVariable(name: "eq", scope: !29, file: !3, line: 130, type: !13)
!56 = !DILocalVariable(name: "e", scope: !57, file: !3, line: 145, type: !59)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 144, column: 5)
!58 = distinct !DILexicalBlock(scope: !29, file: !3, line: 143, column: 7)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!61 = !DILocalVariable(name: "exit_status", scope: !29, file: !3, line: 159, type: !32)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 1)
!65 = !DIGlobalVariableExpression(var: !66)
!66 = distinct !DIGlobalVariable(name: "infomap", scope: !67, file: !6, line: 632, type: !91, isLocal: true, isDefinition: true)
!67 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !68, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !24}
!70 = !{!71, !72, !73, !80, !82, !83, !84, !87, !88, !90}
!71 = !DILocalVariable(name: "program", arg: 1, scope: !67, file: !6, line: 630, type: !24)
!72 = !DILocalVariable(name: "node", scope: !67, file: !6, line: 642, type: !24)
!73 = !DILocalVariable(name: "map_prog", scope: !67, file: !6, line: 643, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !67, file: !6, line: 632, size: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !76, file: !6, line: 632, baseType: !24, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !76, file: !6, line: 632, baseType: !24, size: 64, offset: 64)
!80 = !DILocalVariable(name: "__s1_len", scope: !81, file: !6, line: 645, type: !16)
!81 = distinct !DILexicalBlock(scope: !67, file: !6, line: 645, column: 33)
!82 = !DILocalVariable(name: "__s2_len", scope: !81, file: !6, line: 645, type: !16)
!83 = !DILocalVariable(name: "lc_messages", scope: !67, file: !6, line: 655, type: !24)
!84 = !DILocalVariable(name: "__s1_len", scope: !85, file: !6, line: 656, type: !16)
!85 = distinct !DILexicalBlock(scope: !86, file: !6, line: 656, column: 22)
!86 = distinct !DILexicalBlock(scope: !67, file: !6, line: 656, column: 7)
!87 = !DILocalVariable(name: "__s2_len", scope: !85, file: !6, line: 656, type: !16)
!88 = !DILocalVariable(name: "__s2", scope: !89, file: !6, line: 656, type: !21)
!89 = distinct !DILexicalBlock(scope: !85, file: !6, line: 656, column: 22)
!90 = !DILocalVariable(name: "__result", scope: !89, file: !6, line: 656, type: !32)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 896, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 7)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 1536, elements: !104)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !97, line: 104, size: 256, elements: !98)
!97 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{!99, !100, !101, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !97, line: 106, baseType: !24, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !96, file: !97, line: 109, baseType: !32, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !96, file: !97, line: 110, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !97, line: 111, baseType: !32, size: 32, offset: 192)
!104 = !{!105}
!105 = !DISubrange(count: 6)
!106 = !DIGlobalVariableExpression(var: !107)
!107 = distinct !DIGlobalVariable(name: "Version", scope: !108, file: !109, line: 2, type: !24, isLocal: false, isDefinition: true)
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !111)
!109 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = !{}
!111 = !{!106}
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "file_name", scope: !114, file: !119, line: 36, type: !24, isLocal: true, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !116)
!115 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !{!112, !117}
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !114, file: !119, line: 46, type: !39, isLocal: true, isDefinition: true)
!119 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "exit_failure", scope: !122, file: !125, line: 24, type: !126, isLocal: false, isDefinition: true)
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !124)
!123 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !{!120}
!125 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "program_name", scope: !129, file: !133, line: 33, type: !24, isLocal: false, isDefinition: true)
!129 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !131, globals: !132)
!130 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!15, !13}
!132 = !{!127}
!133 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !136, file: !178, line: 77, type: !214, isLocal: false, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !138, retainedTypes: !173, globals: !175)
!137 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!138 = !{!139, !153, !158}
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !140, line: 32, size: 32, elements: !141)
!140 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!142 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!143 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!144 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!145 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!146 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!147 = !DIEnumerator(name: "c_quoting_style", value: 5)
!148 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!149 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!150 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!151 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!152 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !140, line: 242, size: 32, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!156 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!157 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 46, size: 32, elements: !160)
!159 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!161 = !DIEnumerator(name: "_ISupper", value: 256)
!162 = !DIEnumerator(name: "_ISlower", value: 512)
!163 = !DIEnumerator(name: "_ISalpha", value: 1024)
!164 = !DIEnumerator(name: "_ISdigit", value: 2048)
!165 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!166 = !DIEnumerator(name: "_ISspace", value: 8192)
!167 = !DIEnumerator(name: "_ISprint", value: 16384)
!168 = !DIEnumerator(name: "_ISgraph", value: 32768)
!169 = !DIEnumerator(name: "_ISblank", value: 1)
!170 = !DIEnumerator(name: "_IScntrl", value: 2)
!171 = !DIEnumerator(name: "_ISpunct", value: 4)
!172 = !DIEnumerator(name: "_ISalnum", value: 8)
!173 = !{!32, !174, !16, !13}
!174 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!175 = !{!134, !176, !183, !196, !198, !203, !210, !212}
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !136, file: !178, line: 93, type: !179, isLocal: false, isDefinition: true)
!178 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 320, elements: !181)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!181 = !{!182}
!182 = !DISubrange(count: 10)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !136, file: !178, line: 1043, type: !185, isLocal: false, isDefinition: true)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !178, line: 57, size: 448, elements: !186)
!186 = !{!187, !188, !189, !194, !195}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !185, file: !178, line: 60, baseType: !139, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !178, line: 63, baseType: !32, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !185, file: !178, line: 67, baseType: !190, size: 256, offset: 64)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !192)
!191 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !185, file: !178, line: 70, baseType: !24, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !185, file: !178, line: 73, baseType: !24, size: 64, offset: 384)
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !136, file: !178, line: 108, type: !185, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "slot0", scope: !136, file: !178, line: 834, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 256)
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "slotvec", scope: !136, file: !178, line: 837, type: !205, isLocal: true, isDefinition: true)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !178, line: 826, size: 128, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !178, line: 828, baseType: !16, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !206, file: !178, line: 829, baseType: !13, size: 64, offset: 64)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "nslots", scope: !136, file: !178, line: 835, type: !32, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "slotvec0", scope: !136, file: !178, line: 836, type: !206, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 704, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!216 = !{!217}
!217 = !DISubrange(count: 11)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !220, file: !223, line: 26, type: !224, isLocal: false, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, globals: !222)
!221 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!222 = !{!218}
!223 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 376, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 47)
!227 = !DIGlobalVariableExpression(var: !228)
!228 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !229, file: !573, line: 120, type: !574, isLocal: true, isDefinition: true)
!229 = distinct !DICompileUnit(language: DW_LANG_C99, file: !230, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !231, retainedTypes: !570, globals: !572)
!230 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!231 = !{!232}
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 41, size: 32, elements: !234)
!233 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!235 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!236 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!237 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!238 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!239 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!240 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!241 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!242 = !DIEnumerator(name: "DAY_1", value: 131079)
!243 = !DIEnumerator(name: "DAY_2", value: 131080)
!244 = !DIEnumerator(name: "DAY_3", value: 131081)
!245 = !DIEnumerator(name: "DAY_4", value: 131082)
!246 = !DIEnumerator(name: "DAY_5", value: 131083)
!247 = !DIEnumerator(name: "DAY_6", value: 131084)
!248 = !DIEnumerator(name: "DAY_7", value: 131085)
!249 = !DIEnumerator(name: "ABMON_1", value: 131086)
!250 = !DIEnumerator(name: "ABMON_2", value: 131087)
!251 = !DIEnumerator(name: "ABMON_3", value: 131088)
!252 = !DIEnumerator(name: "ABMON_4", value: 131089)
!253 = !DIEnumerator(name: "ABMON_5", value: 131090)
!254 = !DIEnumerator(name: "ABMON_6", value: 131091)
!255 = !DIEnumerator(name: "ABMON_7", value: 131092)
!256 = !DIEnumerator(name: "ABMON_8", value: 131093)
!257 = !DIEnumerator(name: "ABMON_9", value: 131094)
!258 = !DIEnumerator(name: "ABMON_10", value: 131095)
!259 = !DIEnumerator(name: "ABMON_11", value: 131096)
!260 = !DIEnumerator(name: "ABMON_12", value: 131097)
!261 = !DIEnumerator(name: "MON_1", value: 131098)
!262 = !DIEnumerator(name: "MON_2", value: 131099)
!263 = !DIEnumerator(name: "MON_3", value: 131100)
!264 = !DIEnumerator(name: "MON_4", value: 131101)
!265 = !DIEnumerator(name: "MON_5", value: 131102)
!266 = !DIEnumerator(name: "MON_6", value: 131103)
!267 = !DIEnumerator(name: "MON_7", value: 131104)
!268 = !DIEnumerator(name: "MON_8", value: 131105)
!269 = !DIEnumerator(name: "MON_9", value: 131106)
!270 = !DIEnumerator(name: "MON_10", value: 131107)
!271 = !DIEnumerator(name: "MON_11", value: 131108)
!272 = !DIEnumerator(name: "MON_12", value: 131109)
!273 = !DIEnumerator(name: "AM_STR", value: 131110)
!274 = !DIEnumerator(name: "PM_STR", value: 131111)
!275 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!276 = !DIEnumerator(name: "D_FMT", value: 131113)
!277 = !DIEnumerator(name: "T_FMT", value: 131114)
!278 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!279 = !DIEnumerator(name: "ERA", value: 131116)
!280 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!281 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!282 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!283 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!284 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!285 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!286 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!287 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!288 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!289 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!290 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!291 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!292 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!293 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!294 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!295 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!296 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!297 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!298 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!299 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!300 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!301 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!302 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!303 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!304 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!305 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!306 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!307 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!308 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!309 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!310 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!311 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!312 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!313 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!314 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!315 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!316 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!317 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!318 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!319 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!320 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!321 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!322 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!323 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!324 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!325 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!326 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!327 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!328 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!329 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!330 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!331 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!332 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!333 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!334 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!335 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!336 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!337 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!338 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!339 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!340 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!341 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!342 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!343 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!344 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!345 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!346 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!347 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!348 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!349 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!350 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!351 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!352 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!353 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!354 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!355 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!356 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!357 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!358 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!359 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!360 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!361 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!362 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!363 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!364 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!365 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!366 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!367 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!368 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!369 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!370 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!371 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!372 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!373 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!374 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!375 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!377 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!378 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!379 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!380 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!381 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!382 = !DIEnumerator(name: "CODESET", value: 14)
!383 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!384 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!385 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!386 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!429 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!432 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!435 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!438 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!439 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!454 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!455 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!456 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!457 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!458 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!459 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!460 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!461 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!462 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!463 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!464 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!465 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!466 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!467 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!468 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!469 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!470 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!471 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!472 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!473 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!474 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!475 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!476 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!493 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!494 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!497 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!498 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!499 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!500 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!501 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!502 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!503 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!504 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!505 = !DIEnumerator(name: "THOUSEP", value: 65537)
!506 = !DIEnumerator(name: "__GROUPING", value: 65538)
!507 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!508 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!509 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!510 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!511 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!512 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!513 = !DIEnumerator(name: "__YESSTR", value: 327682)
!514 = !DIEnumerator(name: "__NOSTR", value: 327683)
!515 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!516 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!517 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!518 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!519 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!520 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!521 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!522 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!523 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!524 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!525 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!526 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!527 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!528 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!529 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!530 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!531 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!532 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!533 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!534 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!535 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!536 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!537 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!538 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!539 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!540 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!541 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!542 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!543 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!544 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!545 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!546 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!547 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!548 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!549 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!550 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!551 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!568 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!569 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!570 = !{!15, !13, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!572 = !{!227}
!573 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !577, retainedTypes: !582)
!576 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = !{!578}
!578 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !579, line: 41, size: 32, elements: !580)
!579 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = !{!581}
!581 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!582 = !{!15}
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !585, retainedTypes: !599)
!584 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = !{!586}
!586 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !588, file: !587, line: 192, size: 32, elements: !597)
!587 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DISubprogram(name: "x2nrealloc", scope: !587, file: !587, line: 180, type: !589, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !592)
!589 = !DISubroutineType(types: !590)
!590 = !{!15, !15, !591, !16}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!592 = !{!593, !594, !595, !596}
!593 = !DILocalVariable(name: "p", arg: 1, scope: !588, file: !587, line: 180, type: !15)
!594 = !DILocalVariable(name: "pn", arg: 2, scope: !588, file: !587, line: 180, type: !591)
!595 = !DILocalVariable(name: "s", arg: 3, scope: !588, file: !587, line: 180, type: !16)
!596 = !DILocalVariable(name: "n", scope: !588, file: !587, line: 182, type: !16)
!597 = !{!598}
!598 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!599 = !{!16, !13, !15}
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110)
!601 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !582)
!603 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !606)
!605 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = !{!16}
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110)
!608 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !611)
!610 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = !{!16, !19, !21, !24}
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110)
!613 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !582)
!615 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !582)
!617 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!619 = !{i32 2, !"Dwarf Version", i32 4}
!620 = !{i32 2, !"Debug Info Version", i32 3}
!621 = !{i32 1, !"PIC Level", i32 2}
!622 = !{i32 1, !"PIE Level", i32 2}
!623 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 47, type: !624, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !32}
!626 = !{!627}
!627 = !DILocalVariable(name: "status", arg: 1, scope: !623, file: !3, line: 47, type: !32)
!628 = !DIExpression()
!629 = !DILocation(line: 47, column: 12, scope: !623)
!630 = !DILocation(line: 49, column: 14, scope: !631)
!631 = distinct !DILexicalBlock(scope: !623, file: !3, line: 49, column: 7)
!632 = !DILocation(line: 49, column: 7, scope: !623)
!633 = !DILocation(line: 50, column: 5, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !3, discriminator: 1)
!635 = distinct !DILexicalBlock(scope: !631, file: !3, line: 50, column: 5)
!636 = !{!637, !637, i64 0}
!637 = !{!"any pointer", !638, i64 0}
!638 = !{!"omnipotent char", !639, i64 0}
!639 = !{!"Simple C/C++ TBAA"}
!640 = !DILocation(line: 50, column: 5, scope: !641)
!641 = !DILexicalBlockFile(scope: !635, file: !3, discriminator: 3)
!642 = !DILocation(line: 50, column: 5, scope: !643)
!643 = !DILexicalBlockFile(scope: !635, file: !3, discriminator: 2)
!644 = !DILocation(line: 53, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !631, file: !3, line: 52, column: 5)
!646 = !DILocation(line: 53, column: 7, scope: !647)
!647 = !DILexicalBlockFile(scope: !645, file: !3, discriminator: 1)
!648 = !DILocation(line: 56, column: 7, scope: !645)
!649 = !DILocation(line: 56, column: 7, scope: !647)
!650 = !DILocation(line: 587, column: 3, scope: !651, inlinedAt: !654)
!651 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !652, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !110)
!652 = !DISubroutineType(types: !653)
!653 = !{null}
!654 = distinct !DILocation(line: 60, column: 7, scope: !645)
!655 = !DILocation(line: 587, column: 3, scope: !656, inlinedAt: !654)
!656 = !DILexicalBlockFile(scope: !651, file: !6, discriminator: 1)
!657 = !DILocation(line: 62, column: 7, scope: !645)
!658 = !DILocation(line: 62, column: 7, scope: !647)
!659 = !DILocation(line: 67, column: 7, scope: !645)
!660 = !DILocation(line: 67, column: 7, scope: !647)
!661 = !DILocation(line: 68, column: 7, scope: !645)
!662 = !DILocation(line: 68, column: 7, scope: !647)
!663 = !DILocation(line: 69, column: 7, scope: !645)
!664 = !DILocation(line: 69, column: 7, scope: !647)
!665 = !DILocation(line: 642, column: 15, scope: !67, inlinedAt: !666)
!666 = distinct !DILocation(line: 73, column: 7, scope: !645)
!667 = !DILocation(line: 651, column: 3, scope: !67, inlinedAt: !666)
!668 = !DILocation(line: 651, column: 3, scope: !669, inlinedAt: !666)
!669 = !DILexicalBlockFile(scope: !67, file: !6, discriminator: 1)
!670 = !DILocation(line: 655, column: 29, scope: !67, inlinedAt: !666)
!671 = !DILocation(line: 655, column: 15, scope: !67, inlinedAt: !666)
!672 = !DILocation(line: 656, column: 7, scope: !86, inlinedAt: !666)
!673 = !DILocation(line: 656, column: 19, scope: !86, inlinedAt: !666)
!674 = !DILocation(line: 656, column: 22, scope: !675, inlinedAt: !666)
!675 = !DILexicalBlockFile(scope: !86, file: !6, discriminator: 16)
!676 = !DILocation(line: 656, column: 7, scope: !677, inlinedAt: !666)
!677 = !DILexicalBlockFile(scope: !67, file: !6, discriminator: 16)
!678 = !DILocation(line: 662, column: 7, scope: !679, inlinedAt: !666)
!679 = distinct !DILexicalBlock(scope: !86, file: !6, line: 657, column: 5)
!680 = !DILocation(line: 662, column: 7, scope: !681, inlinedAt: !666)
!681 = !DILexicalBlockFile(scope: !679, file: !6, discriminator: 1)
!682 = !DILocation(line: 664, column: 5, scope: !679, inlinedAt: !666)
!683 = !DILocation(line: 665, column: 3, scope: !67, inlinedAt: !666)
!684 = !DILocation(line: 665, column: 3, scope: !669, inlinedAt: !666)
!685 = !DILocation(line: 667, column: 3, scope: !67, inlinedAt: !666)
!686 = !DILocation(line: 667, column: 3, scope: !669, inlinedAt: !666)
!687 = !DILocation(line: 75, column: 3, scope: !623)
!688 = !DILocation(line: 79, column: 11, scope: !29)
!689 = !DILocation(line: 79, column: 24, scope: !29)
!690 = !DILocation(line: 82, column: 8, scope: !29)
!691 = !DILocation(line: 83, column: 8, scope: !29)
!692 = !DILocation(line: 86, column: 21, scope: !29)
!693 = !DILocation(line: 86, column: 3, scope: !29)
!694 = !DILocation(line: 87, column: 3, scope: !29)
!695 = !DILocation(line: 88, column: 3, scope: !29)
!696 = !DILocation(line: 89, column: 3, scope: !29)
!697 = !DILocalVariable(name: "status", arg: 1, scope: !698, file: !6, line: 99, type: !32)
!698 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !624, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !699)
!699 = !{!697}
!700 = !DILocation(line: 99, column: 30, scope: !698, inlinedAt: !701)
!701 = distinct !DILocation(line: 91, column: 3, scope: !29)
!702 = !DILocation(line: 102, column: 18, scope: !703, inlinedAt: !701)
!703 = distinct !DILexicalBlock(scope: !698, file: !6, line: 101, column: 7)
!704 = !{!705, !705, i64 0}
!705 = !{!"int", !638, i64 0}
!706 = !DILocation(line: 92, column: 3, scope: !29)
!707 = !DILocation(line: 94, column: 3, scope: !29)
!708 = !DILocation(line: 94, column: 18, scope: !709)
!709 = !DILexicalBlockFile(scope: !29, file: !3, discriminator: 1)
!710 = !DILocation(line: 81, column: 7, scope: !29)
!711 = !DILocation(line: 94, column: 3, scope: !709)
!712 = distinct !{!712, !707, !713}
!713 = !DILocation(line: 111, column: 5, scope: !29)
!714 = !DILocation(line: 106, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 97, column: 9)
!716 = distinct !DILexicalBlock(scope: !29, file: !3, line: 95, column: 5)
!717 = !DILocation(line: 107, column: 9, scope: !715)
!718 = !DILocation(line: 107, column: 9, scope: !719)
!719 = !DILexicalBlockFile(scope: !715, file: !3, discriminator: 1)
!720 = !DILocation(line: 109, column: 11, scope: !715)
!721 = !DILocation(line: 113, column: 7, scope: !43)
!722 = !DILocation(line: 113, column: 14, scope: !43)
!723 = !DILocation(line: 113, column: 21, scope: !43)
!724 = !DILocation(line: 113, column: 24, scope: !42)
!725 = !DILocation(line: 113, column: 24, scope: !726)
!726 = !DILexicalBlockFile(scope: !46, file: !3, discriminator: 3)
!727 = !DILocation(line: 113, column: 24, scope: !46)
!728 = !{!638, !638, i64 0}
!729 = !DILocation(line: 113, column: 24, scope: !730)
!730 = !DILexicalBlockFile(scope: !731, file: !3, discriminator: 4)
!731 = distinct !DILexicalBlock(scope: !46, file: !3, line: 113, column: 24)
!732 = !DILocation(line: 113, column: 24, scope: !733)
!733 = !DILexicalBlockFile(scope: !731, file: !3, discriminator: 3)
!734 = !DILocation(line: 113, column: 24, scope: !735)
!735 = !DILexicalBlockFile(scope: !736, file: !3, discriminator: 5)
!736 = distinct !DILexicalBlock(scope: !731, file: !3, line: 113, column: 24)
!737 = !DILocation(line: 113, column: 24, scope: !738)
!738 = !DILexicalBlockFile(scope: !739, file: !3, discriminator: 5)
!739 = distinct !DILexicalBlock(scope: !736, file: !3, line: 113, column: 24)
!740 = !DILocation(line: 113, column: 24, scope: !741)
!741 = !DILexicalBlockFile(scope: !43, file: !3, discriminator: 14)
!742 = !DILocation(line: 113, column: 7, scope: !743)
!743 = !DILexicalBlockFile(scope: !29, file: !3, discriminator: 14)
!744 = !DILocation(line: 116, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !29, file: !3, line: 116, column: 7)
!746 = !DILocation(line: 116, column: 7, scope: !29)
!747 = !DILocation(line: 119, column: 15, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !3, line: 117, column: 5)
!749 = !DILocation(line: 120, column: 5, scope: !748)
!750 = !DILocation(line: 122, column: 10, scope: !29)
!751 = !DILocation(line: 123, column: 3, scope: !29)
!752 = !DILocation(line: 123, column: 18, scope: !709)
!753 = !DILocation(line: 123, column: 3, scope: !709)
!754 = !DILocation(line: 124, column: 34, scope: !755)
!755 = !DILexicalBlockFile(scope: !756, file: !3, discriminator: 1)
!756 = distinct !DILexicalBlock(scope: !29, file: !3, line: 124, column: 9)
!757 = !DILocation(line: 124, column: 24, scope: !755)
!758 = !DILocation(line: 124, column: 9, scope: !709)
!759 = distinct !{!759, !751, !760}
!760 = !DILocation(line: 125, column: 7, scope: !29)
!761 = !DILocation(line: 125, column: 7, scope: !756)
!762 = !DILocation(line: 125, column: 7, scope: !755)
!763 = !DILocation(line: 125, column: 7, scope: !764)
!764 = !DILexicalBlockFile(scope: !756, file: !3, discriminator: 2)
!765 = !DILocation(line: 125, column: 7, scope: !766)
!766 = !DILexicalBlockFile(scope: !756, file: !3, discriminator: 3)
!767 = !DILocation(line: 127, column: 7, scope: !50)
!768 = !DILocation(line: 127, column: 14, scope: !50)
!769 = !DILocation(line: 127, column: 21, scope: !50)
!770 = !DILocation(line: 127, column: 24, scope: !49)
!771 = !DILocation(line: 127, column: 24, scope: !772)
!772 = !DILexicalBlockFile(scope: !53, file: !3, discriminator: 3)
!773 = !DILocation(line: 127, column: 24, scope: !53)
!774 = !DILocation(line: 127, column: 24, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !3, discriminator: 4)
!776 = distinct !DILexicalBlock(scope: !53, file: !3, line: 127, column: 24)
!777 = !DILocation(line: 127, column: 24, scope: !778)
!778 = !DILexicalBlockFile(scope: !776, file: !3, discriminator: 3)
!779 = !DILocation(line: 127, column: 24, scope: !780)
!780 = !DILexicalBlockFile(scope: !781, file: !3, discriminator: 5)
!781 = distinct !DILexicalBlock(scope: !776, file: !3, line: 127, column: 24)
!782 = !DILocation(line: 127, column: 24, scope: !783)
!783 = !DILexicalBlockFile(scope: !49, file: !3, discriminator: 12)
!784 = !DILocation(line: 127, column: 7, scope: !743)
!785 = !DILocation(line: 128, column: 5, scope: !50)
!786 = !DILocation(line: 131, column: 10, scope: !709)
!787 = !DILocation(line: 131, column: 17, scope: !709)
!788 = !DILocation(line: 131, column: 24, scope: !709)
!789 = !DILocation(line: 131, column: 33, scope: !790)
!790 = !DILexicalBlockFile(scope: !29, file: !3, discriminator: 2)
!791 = !DILocation(line: 130, column: 9, scope: !29)
!792 = !DILocation(line: 131, column: 24, scope: !790)
!793 = !DILocation(line: 131, column: 3, scope: !794)
!794 = !DILexicalBlockFile(scope: !29, file: !3, discriminator: 3)
!795 = !DILocation(line: 133, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 133, column: 11)
!797 = distinct !DILexicalBlock(scope: !29, file: !3, line: 132, column: 5)
!798 = !DILocation(line: 133, column: 11, scope: !797)
!799 = !DILocation(line: 135, column: 15, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !3, line: 134, column: 9)
!801 = !DILocation(line: 136, column: 11, scope: !800)
!802 = !DILocation(line: 136, column: 11, scope: !803)
!803 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 1)
!804 = !DILocation(line: 136, column: 11, scope: !805)
!805 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 2)
!806 = !DILocation(line: 136, column: 11, scope: !807)
!807 = !DILexicalBlockFile(scope: !800, file: !3, discriminator: 3)
!808 = !DILocation(line: 139, column: 13, scope: !797)
!809 = distinct !{!809, !810, !811}
!810 = !DILocation(line: 131, column: 3, scope: !29)
!811 = !DILocation(line: 140, column: 5, scope: !29)
!812 = !DILocation(line: 143, column: 12, scope: !58)
!813 = !DILocation(line: 143, column: 15, scope: !58)
!814 = !DILocation(line: 143, column: 7, scope: !29)
!815 = !DILocation(line: 145, column: 24, scope: !57)
!816 = !DILocation(line: 145, column: 20, scope: !57)
!817 = !DILocation(line: 146, column: 14, scope: !818)
!818 = !DILexicalBlockFile(scope: !57, file: !3, discriminator: 1)
!819 = !DILocation(line: 146, column: 7, scope: !818)
!820 = !DILocation(line: 147, column: 9, scope: !57)
!821 = distinct !{!821, !822, !820}
!822 = !DILocation(line: 146, column: 7, scope: !57)
!823 = !DILocation(line: 151, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !29, file: !3, line: 151, column: 7)
!825 = !DILocation(line: 151, column: 7, scope: !29)
!826 = !DILocation(line: 153, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !3, line: 152, column: 5)
!828 = !DILocation(line: 153, column: 24, scope: !829)
!829 = !DILexicalBlockFile(scope: !827, file: !3, discriminator: 1)
!830 = !DILocation(line: 153, column: 7, scope: !831)
!831 = !DILexicalBlockFile(scope: !827, file: !3, discriminator: 2)
!832 = !DILocation(line: 154, column: 7, scope: !827)
!833 = !DILocation(line: 157, column: 11, scope: !29)
!834 = !DILocation(line: 157, column: 3, scope: !29)
!835 = !DILocation(line: 159, column: 21, scope: !29)
!836 = !DILocation(line: 159, column: 27, scope: !29)
!837 = !DILocation(line: 159, column: 7, scope: !29)
!838 = !DILocation(line: 160, column: 38, scope: !29)
!839 = !DILocation(line: 160, column: 33, scope: !29)
!840 = !DILocation(line: 160, column: 26, scope: !709)
!841 = !DILocation(line: 160, column: 3, scope: !790)
!842 = !DILocation(line: 162, column: 1, scope: !709)
!843 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !119, file: !119, line: 41, type: !68, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !844)
!844 = !{!845}
!845 = !DILocalVariable(name: "file", arg: 1, scope: !843, file: !119, line: 41, type: !24)
!846 = !DILocation(line: 41, column: 41, scope: !843)
!847 = !DILocation(line: 43, column: 13, scope: !843)
!848 = !DILocation(line: 44, column: 1, scope: !843)
!849 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !119, file: !119, line: 78, type: !850, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !39}
!852 = !{!853}
!853 = !DILocalVariable(name: "ignore", arg: 1, scope: !849, file: !119, line: 78, type: !39)
!854 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!855 = !DILocation(line: 78, column: 37, scope: !849)
!856 = !DILocation(line: 80, column: 16, scope: !849)
!857 = !{!858, !858, i64 0}
!858 = !{!"_Bool", !638, i64 0}
!859 = !DILocation(line: 81, column: 1, scope: !849)
!860 = distinct !DISubprogram(name: "close_stdout", scope: !119, file: !119, line: 107, type: !652, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !114, variables: !861)
!861 = !{!862}
!862 = !DILocalVariable(name: "write_error", scope: !863, file: !119, line: 112, type: !24)
!863 = distinct !DILexicalBlock(scope: !864, file: !119, line: 111, column: 5)
!864 = distinct !DILexicalBlock(scope: !860, file: !119, line: 109, column: 7)
!865 = !DILocation(line: 109, column: 21, scope: !864)
!866 = !DILocation(line: 109, column: 7, scope: !864)
!867 = !DILocation(line: 109, column: 29, scope: !864)
!868 = !DILocation(line: 110, column: 7, scope: !864)
!869 = !DILocation(line: 110, column: 12, scope: !870)
!870 = !DILexicalBlockFile(scope: !864, file: !119, discriminator: 1)
!871 = !{i8 0, i8 2}
!872 = !DILocation(line: 114, column: 19, scope: !873)
!873 = distinct !DILexicalBlock(scope: !863, file: !119, line: 113, column: 11)
!874 = !DILocation(line: 110, column: 25, scope: !870)
!875 = !DILocation(line: 110, column: 28, scope: !876)
!876 = !DILexicalBlockFile(scope: !864, file: !119, discriminator: 2)
!877 = !DILocation(line: 110, column: 34, scope: !876)
!878 = !DILocation(line: 109, column: 7, scope: !879)
!879 = !DILexicalBlockFile(scope: !860, file: !119, discriminator: 1)
!880 = !DILocation(line: 112, column: 33, scope: !863)
!881 = !DILocation(line: 112, column: 19, scope: !863)
!882 = !DILocation(line: 113, column: 11, scope: !873)
!883 = !DILocation(line: 113, column: 11, scope: !863)
!884 = !DILocation(line: 114, column: 36, scope: !885)
!885 = !DILexicalBlockFile(scope: !873, file: !119, discriminator: 1)
!886 = !DILocation(line: 114, column: 9, scope: !887)
!887 = !DILexicalBlockFile(scope: !873, file: !119, discriminator: 2)
!888 = !DILocation(line: 114, column: 9, scope: !873)
!889 = !DILocation(line: 117, column: 9, scope: !885)
!890 = !DILocation(line: 119, column: 14, scope: !863)
!891 = !DILocation(line: 119, column: 7, scope: !863)
!892 = !DILocation(line: 122, column: 22, scope: !893)
!893 = distinct !DILexicalBlock(scope: !860, file: !119, line: 122, column: 8)
!894 = !DILocation(line: 122, column: 8, scope: !893)
!895 = !DILocation(line: 122, column: 30, scope: !893)
!896 = !DILocation(line: 122, column: 8, scope: !860)
!897 = !DILocation(line: 123, column: 13, scope: !893)
!898 = !DILocation(line: 123, column: 6, scope: !893)
!899 = !DILocation(line: 124, column: 1, scope: !860)
!900 = distinct !DISubprogram(name: "set_program_name", scope: !133, file: !133, line: 39, type: !68, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !129, variables: !901)
!901 = !{!902, !903, !904}
!902 = !DILocalVariable(name: "argv0", arg: 1, scope: !900, file: !133, line: 39, type: !24)
!903 = !DILocalVariable(name: "slash", scope: !900, file: !133, line: 46, type: !24)
!904 = !DILocalVariable(name: "base", scope: !900, file: !133, line: 47, type: !24)
!905 = !DILocation(line: 39, column: 31, scope: !900)
!906 = !DILocation(line: 51, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !900, file: !133, line: 51, column: 7)
!908 = !DILocation(line: 51, column: 7, scope: !900)
!909 = !DILocation(line: 55, column: 14, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !133, line: 52, column: 5)
!911 = !DILocation(line: 54, column: 7, scope: !910)
!912 = !DILocation(line: 56, column: 7, scope: !910)
!913 = !DILocation(line: 59, column: 11, scope: !900)
!914 = !DILocation(line: 46, column: 15, scope: !900)
!915 = !DILocation(line: 60, column: 17, scope: !900)
!916 = !DILocation(line: 60, column: 33, scope: !917)
!917 = !DILexicalBlockFile(scope: !900, file: !133, discriminator: 1)
!918 = !DILocation(line: 60, column: 11, scope: !900)
!919 = !DILocation(line: 47, column: 15, scope: !900)
!920 = !DILocation(line: 61, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !900, file: !133, line: 61, column: 7)
!922 = !DILocation(line: 61, column: 20, scope: !921)
!923 = !DILocation(line: 61, column: 25, scope: !921)
!924 = !DILocation(line: 61, column: 28, scope: !925)
!925 = !DILexicalBlockFile(scope: !921, file: !133, discriminator: 1)
!926 = !DILocation(line: 61, column: 61, scope: !925)
!927 = !DILocation(line: 61, column: 7, scope: !917)
!928 = !DILocation(line: 64, column: 11, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !133, line: 64, column: 11)
!930 = distinct !DILexicalBlock(scope: !921, file: !133, line: 62, column: 5)
!931 = !DILocation(line: 64, column: 36, scope: !929)
!932 = !DILocation(line: 64, column: 11, scope: !930)
!933 = !DILocation(line: 66, column: 24, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !133, line: 65, column: 9)
!935 = !DILocation(line: 70, column: 41, scope: !934)
!936 = !DILocation(line: 72, column: 9, scope: !934)
!937 = !DILocation(line: 84, column: 16, scope: !900)
!938 = !DILocation(line: 90, column: 27, scope: !900)
!939 = !DILocation(line: 92, column: 1, scope: !900)
!940 = distinct !DISubprogram(name: "clone_quoting_options", scope: !178, file: !178, line: 114, type: !941, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !944)
!941 = !DISubroutineType(types: !942)
!942 = !{!943, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!944 = !{!945, !946, !947}
!945 = !DILocalVariable(name: "o", arg: 1, scope: !940, file: !178, line: 114, type: !943)
!946 = !DILocalVariable(name: "e", scope: !940, file: !178, line: 116, type: !32)
!947 = !DILocalVariable(name: "p", scope: !940, file: !178, line: 117, type: !943)
!948 = !DILocation(line: 114, column: 48, scope: !940)
!949 = !DILocation(line: 116, column: 11, scope: !940)
!950 = !DILocation(line: 116, column: 7, scope: !940)
!951 = !DILocation(line: 117, column: 40, scope: !940)
!952 = !DILocation(line: 117, column: 40, scope: !953)
!953 = !DILexicalBlockFile(scope: !940, file: !178, discriminator: 3)
!954 = !DILocation(line: 117, column: 31, scope: !953)
!955 = !DILocation(line: 117, column: 27, scope: !940)
!956 = !DILocation(line: 119, column: 9, scope: !940)
!957 = !DILocation(line: 120, column: 3, scope: !940)
!958 = distinct !DISubprogram(name: "get_quoting_style", scope: !178, file: !178, line: 125, type: !959, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !963)
!959 = !DISubroutineType(types: !960)
!960 = !{!139, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!963 = !{!964}
!964 = !DILocalVariable(name: "o", arg: 1, scope: !958, file: !178, line: 125, type: !961)
!965 = !DILocation(line: 125, column: 50, scope: !958)
!966 = !DILocation(line: 127, column: 11, scope: !958)
!967 = !DILocation(line: 127, column: 46, scope: !968)
!968 = !DILexicalBlockFile(scope: !958, file: !178, discriminator: 3)
!969 = !{!970, !638, i64 0}
!970 = !{!"quoting_options", !638, i64 0, !705, i64 4, !638, i64 8, !637, i64 40, !637, i64 48}
!971 = !DILocation(line: 127, column: 3, scope: !968)
!972 = distinct !DISubprogram(name: "set_quoting_style", scope: !178, file: !178, line: 133, type: !973, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !943, !139}
!975 = !{!976, !977}
!976 = !DILocalVariable(name: "o", arg: 1, scope: !972, file: !178, line: 133, type: !943)
!977 = !DILocalVariable(name: "s", arg: 2, scope: !972, file: !178, line: 133, type: !139)
!978 = !DILocation(line: 133, column: 44, scope: !972)
!979 = !DILocation(line: 133, column: 66, scope: !972)
!980 = !DILocation(line: 135, column: 4, scope: !972)
!981 = !DILocation(line: 135, column: 39, scope: !982)
!982 = !DILexicalBlockFile(scope: !972, file: !178, discriminator: 3)
!983 = !DILocation(line: 135, column: 45, scope: !982)
!984 = !DILocation(line: 136, column: 1, scope: !972)
!985 = distinct !DISubprogram(name: "set_char_quoting", scope: !178, file: !178, line: 144, type: !986, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{!32, !943, !14, !32}
!988 = !{!989, !990, !991, !992, !993, !995, !996}
!989 = !DILocalVariable(name: "o", arg: 1, scope: !985, file: !178, line: 144, type: !943)
!990 = !DILocalVariable(name: "c", arg: 2, scope: !985, file: !178, line: 144, type: !14)
!991 = !DILocalVariable(name: "i", arg: 3, scope: !985, file: !178, line: 144, type: !32)
!992 = !DILocalVariable(name: "uc", scope: !985, file: !178, line: 146, type: !23)
!993 = !DILocalVariable(name: "p", scope: !985, file: !178, line: 147, type: !994)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!995 = !DILocalVariable(name: "shift", scope: !985, file: !178, line: 149, type: !32)
!996 = !DILocalVariable(name: "r", scope: !985, file: !178, line: 150, type: !32)
!997 = !DILocation(line: 144, column: 43, scope: !985)
!998 = !DILocation(line: 144, column: 51, scope: !985)
!999 = !DILocation(line: 144, column: 58, scope: !985)
!1000 = !DILocation(line: 146, column: 17, scope: !985)
!1001 = !DILocation(line: 148, column: 6, scope: !985)
!1002 = !DILocation(line: 148, column: 62, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !985, file: !178, discriminator: 3)
!1004 = !DILocation(line: 148, column: 57, scope: !1003)
!1005 = !DILocation(line: 147, column: 17, scope: !985)
!1006 = !DILocation(line: 149, column: 18, scope: !985)
!1007 = !DILocation(line: 149, column: 15, scope: !985)
!1008 = !DILocation(line: 149, column: 7, scope: !985)
!1009 = !DILocation(line: 150, column: 12, scope: !985)
!1010 = !DILocation(line: 150, column: 15, scope: !985)
!1011 = !DILocation(line: 150, column: 25, scope: !985)
!1012 = !DILocation(line: 150, column: 7, scope: !985)
!1013 = !DILocation(line: 151, column: 13, scope: !985)
!1014 = !DILocation(line: 151, column: 18, scope: !985)
!1015 = !DILocation(line: 151, column: 23, scope: !985)
!1016 = !DILocation(line: 151, column: 6, scope: !985)
!1017 = !DILocation(line: 152, column: 3, scope: !985)
!1018 = distinct !DISubprogram(name: "set_quoting_flags", scope: !178, file: !178, line: 160, type: !1019, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!32, !943, !32}
!1021 = !{!1022, !1023, !1024}
!1022 = !DILocalVariable(name: "o", arg: 1, scope: !1018, file: !178, line: 160, type: !943)
!1023 = !DILocalVariable(name: "i", arg: 2, scope: !1018, file: !178, line: 160, type: !32)
!1024 = !DILocalVariable(name: "r", scope: !1018, file: !178, line: 162, type: !32)
!1025 = !DILocation(line: 160, column: 44, scope: !1018)
!1026 = !DILocation(line: 160, column: 51, scope: !1018)
!1027 = !DILocation(line: 163, column: 8, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1018, file: !178, line: 163, column: 7)
!1029 = !DILocation(line: 163, column: 7, scope: !1018)
!1030 = !DILocation(line: 165, column: 10, scope: !1018)
!1031 = !{!970, !705, i64 4}
!1032 = !DILocation(line: 162, column: 7, scope: !1018)
!1033 = !DILocation(line: 166, column: 12, scope: !1018)
!1034 = !DILocation(line: 167, column: 3, scope: !1018)
!1035 = distinct !DISubprogram(name: "set_custom_quoting", scope: !178, file: !178, line: 171, type: !1036, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1038)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !943, !24, !24}
!1038 = !{!1039, !1040, !1041}
!1039 = !DILocalVariable(name: "o", arg: 1, scope: !1035, file: !178, line: 171, type: !943)
!1040 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1035, file: !178, line: 172, type: !24)
!1041 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1035, file: !178, line: 172, type: !24)
!1042 = !DILocation(line: 171, column: 45, scope: !1035)
!1043 = !DILocation(line: 172, column: 33, scope: !1035)
!1044 = !DILocation(line: 172, column: 57, scope: !1035)
!1045 = !DILocation(line: 174, column: 8, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1035, file: !178, line: 174, column: 7)
!1047 = !DILocation(line: 174, column: 7, scope: !1035)
!1048 = !DILocation(line: 176, column: 6, scope: !1035)
!1049 = !DILocation(line: 176, column: 12, scope: !1035)
!1050 = !DILocation(line: 177, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1035, file: !178, line: 177, column: 7)
!1052 = !DILocation(line: 177, column: 23, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1051, file: !178, discriminator: 1)
!1054 = !DILocation(line: 177, column: 19, scope: !1051)
!1055 = !DILocation(line: 178, column: 5, scope: !1051)
!1056 = !DILocation(line: 179, column: 6, scope: !1035)
!1057 = !DILocation(line: 179, column: 17, scope: !1035)
!1058 = !{!970, !637, i64 40}
!1059 = !DILocation(line: 180, column: 6, scope: !1035)
!1060 = !DILocation(line: 180, column: 18, scope: !1035)
!1061 = !{!970, !637, i64 48}
!1062 = !DILocation(line: 181, column: 1, scope: !1035)
!1063 = distinct !DISubprogram(name: "quotearg_buffer", scope: !178, file: !178, line: 776, type: !1064, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1066)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!16, !13, !16, !24, !16, !961}
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1067 = !DILocalVariable(name: "buffer", arg: 1, scope: !1063, file: !178, line: 776, type: !13)
!1068 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1063, file: !178, line: 776, type: !16)
!1069 = !DILocalVariable(name: "arg", arg: 3, scope: !1063, file: !178, line: 777, type: !24)
!1070 = !DILocalVariable(name: "argsize", arg: 4, scope: !1063, file: !178, line: 777, type: !16)
!1071 = !DILocalVariable(name: "o", arg: 5, scope: !1063, file: !178, line: 778, type: !961)
!1072 = !DILocalVariable(name: "p", scope: !1063, file: !178, line: 780, type: !961)
!1073 = !DILocalVariable(name: "e", scope: !1063, file: !178, line: 781, type: !32)
!1074 = !DILocalVariable(name: "r", scope: !1063, file: !178, line: 782, type: !16)
!1075 = !DILocation(line: 776, column: 24, scope: !1063)
!1076 = !DILocation(line: 776, column: 39, scope: !1063)
!1077 = !DILocation(line: 777, column: 30, scope: !1063)
!1078 = !DILocation(line: 777, column: 42, scope: !1063)
!1079 = !DILocation(line: 778, column: 48, scope: !1063)
!1080 = !DILocation(line: 780, column: 37, scope: !1063)
!1081 = !DILocation(line: 780, column: 33, scope: !1063)
!1082 = !DILocation(line: 781, column: 11, scope: !1063)
!1083 = !DILocation(line: 781, column: 7, scope: !1063)
!1084 = !DILocation(line: 783, column: 43, scope: !1063)
!1085 = !DILocation(line: 783, column: 53, scope: !1063)
!1086 = !DILocation(line: 783, column: 60, scope: !1063)
!1087 = !DILocation(line: 784, column: 43, scope: !1063)
!1088 = !DILocation(line: 784, column: 58, scope: !1063)
!1089 = !DILocation(line: 782, column: 14, scope: !1063)
!1090 = !DILocation(line: 782, column: 10, scope: !1063)
!1091 = !DILocation(line: 785, column: 9, scope: !1063)
!1092 = !DILocation(line: 786, column: 3, scope: !1063)
!1093 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !178, file: !178, line: 248, type: !1094, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1098)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!16, !13, !16, !24, !16, !139, !32, !1096, !24, !24}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1123, !1124, !1125, !1126, !1127, !1130, !1131, !1148, !1151, !1152, !1159}
!1099 = !DILocalVariable(name: "buffer", arg: 1, scope: !1093, file: !178, line: 248, type: !13)
!1100 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1093, file: !178, line: 248, type: !16)
!1101 = !DILocalVariable(name: "arg", arg: 3, scope: !1093, file: !178, line: 249, type: !24)
!1102 = !DILocalVariable(name: "argsize", arg: 4, scope: !1093, file: !178, line: 249, type: !16)
!1103 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1093, file: !178, line: 250, type: !139)
!1104 = !DILocalVariable(name: "flags", arg: 6, scope: !1093, file: !178, line: 250, type: !32)
!1105 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1093, file: !178, line: 251, type: !1096)
!1106 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1093, file: !178, line: 252, type: !24)
!1107 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1093, file: !178, line: 253, type: !24)
!1108 = !DILocalVariable(name: "i", scope: !1093, file: !178, line: 255, type: !16)
!1109 = !DILocalVariable(name: "len", scope: !1093, file: !178, line: 256, type: !16)
!1110 = !DILocalVariable(name: "orig_buffersize", scope: !1093, file: !178, line: 257, type: !16)
!1111 = !DILocalVariable(name: "quote_string", scope: !1093, file: !178, line: 258, type: !24)
!1112 = !DILocalVariable(name: "quote_string_len", scope: !1093, file: !178, line: 259, type: !16)
!1113 = !DILocalVariable(name: "backslash_escapes", scope: !1093, file: !178, line: 260, type: !39)
!1114 = !DILocalVariable(name: "unibyte_locale", scope: !1093, file: !178, line: 261, type: !39)
!1115 = !DILocalVariable(name: "elide_outer_quotes", scope: !1093, file: !178, line: 262, type: !39)
!1116 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1093, file: !178, line: 263, type: !39)
!1117 = !DILocalVariable(name: "encountered_single_quote", scope: !1093, file: !178, line: 264, type: !39)
!1118 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1093, file: !178, line: 265, type: !39)
!1119 = !DILocalVariable(name: "c", scope: !1120, file: !178, line: 394, type: !23)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !178, line: 393, column: 5)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !178, line: 392, column: 3)
!1122 = distinct !DILexicalBlock(scope: !1093, file: !178, line: 392, column: 3)
!1123 = !DILocalVariable(name: "esc", scope: !1120, file: !178, line: 395, type: !23)
!1124 = !DILocalVariable(name: "is_right_quote", scope: !1120, file: !178, line: 396, type: !39)
!1125 = !DILocalVariable(name: "escaping", scope: !1120, file: !178, line: 397, type: !39)
!1126 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1120, file: !178, line: 398, type: !39)
!1127 = !DILocalVariable(name: "m", scope: !1128, file: !178, line: 602, type: !16)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 600, column: 11)
!1129 = distinct !DILexicalBlock(scope: !1120, file: !178, line: 418, column: 9)
!1130 = !DILocalVariable(name: "printable", scope: !1128, file: !178, line: 604, type: !39)
!1131 = !DILocalVariable(name: "mbstate", scope: !1132, file: !178, line: 613, type: !1134)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !178, line: 612, column: 15)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !178, line: 606, column: 17)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1135, line: 107, baseType: !1136)
!1135 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1135, line: 95, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 83, size: 64, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1137, file: !1135, line: 85, baseType: !32, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1137, file: !1135, line: 94, baseType: !1141, size: 32, offset: 32)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !1135, line: 86, size: 32, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1141, file: !1135, line: 89, baseType: !191, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1141, file: !1135, line: 93, baseType: !1145, size: 32)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !1146)
!1146 = !{!1147}
!1147 = !DISubrange(count: 4)
!1148 = !DILocalVariable(name: "w", scope: !1149, file: !178, line: 623, type: !1150)
!1149 = distinct !DILexicalBlock(scope: !1132, file: !178, line: 622, column: 19)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !17, line: 90, baseType: !32)
!1151 = !DILocalVariable(name: "bytes", scope: !1149, file: !178, line: 624, type: !16)
!1152 = !DILocalVariable(name: "j", scope: !1153, file: !178, line: 649, type: !16)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !178, line: 648, column: 27)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !178, line: 646, column: 29)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !178, line: 641, column: 23)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !178, line: 633, column: 30)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !178, line: 628, column: 30)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !178, line: 626, column: 25)
!1159 = !DILocalVariable(name: "ilim", scope: !1160, file: !178, line: 676, type: !16)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !178, line: 673, column: 15)
!1161 = distinct !DILexicalBlock(scope: !1128, file: !178, line: 672, column: 17)
!1162 = !DILocation(line: 248, column: 33, scope: !1093)
!1163 = !DILocation(line: 248, column: 48, scope: !1093)
!1164 = !DILocation(line: 249, column: 39, scope: !1093)
!1165 = !DILocation(line: 249, column: 51, scope: !1093)
!1166 = !DILocation(line: 250, column: 46, scope: !1093)
!1167 = !DILocation(line: 250, column: 65, scope: !1093)
!1168 = !DILocation(line: 251, column: 47, scope: !1093)
!1169 = !DILocation(line: 252, column: 39, scope: !1093)
!1170 = !DILocation(line: 253, column: 39, scope: !1093)
!1171 = !DILocation(line: 256, column: 10, scope: !1093)
!1172 = !DILocation(line: 257, column: 10, scope: !1093)
!1173 = !DILocation(line: 258, column: 15, scope: !1093)
!1174 = !DILocation(line: 259, column: 10, scope: !1093)
!1175 = !DILocation(line: 260, column: 8, scope: !1093)
!1176 = !DILocation(line: 261, column: 25, scope: !1093)
!1177 = !DILocation(line: 261, column: 36, scope: !1093)
!1178 = !DILocation(line: 262, column: 8, scope: !1093)
!1179 = !DILocation(line: 263, column: 8, scope: !1093)
!1180 = !DILocation(line: 264, column: 8, scope: !1093)
!1181 = !DILocation(line: 265, column: 8, scope: !1093)
!1182 = !DILocation(line: 265, column: 3, scope: !1093)
!1183 = !DILocation(line: 308, column: 3, scope: !1093)
!1184 = !DILocation(line: 315, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1093, file: !178, line: 309, column: 5)
!1186 = !DILocation(line: 315, column: 12, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1185, file: !178, line: 315, column: 11)
!1188 = !DILocation(line: 316, column: 9, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1190, file: !178, discriminator: 1)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !178, line: 316, column: 9)
!1191 = distinct !DILexicalBlock(scope: !1187, file: !178, line: 316, column: 9)
!1192 = !DILocation(line: 316, column: 9, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1191, file: !178, discriminator: 1)
!1194 = !DILocation(line: 316, column: 9, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1190, file: !178, discriminator: 2)
!1196 = !DILocation(line: 354, column: 26, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !178, line: 332, column: 11)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !178, line: 331, column: 13)
!1199 = distinct !DILexicalBlock(scope: !1185, file: !178, line: 330, column: 7)
!1200 = !DILocation(line: 355, column: 27, scope: !1197)
!1201 = !DILocation(line: 356, column: 11, scope: !1197)
!1202 = !DILocation(line: 357, column: 14, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !178, line: 357, column: 13)
!1204 = !DILocation(line: 357, column: 13, scope: !1199)
!1205 = !DILocation(line: 358, column: 43, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1207, file: !178, discriminator: 1)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !178, line: 358, column: 11)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !178, line: 358, column: 11)
!1209 = !DILocation(line: 358, column: 11, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1208, file: !178, discriminator: 1)
!1211 = !DILocation(line: 359, column: 13, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1213, file: !178, discriminator: 1)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !178, line: 359, column: 13)
!1214 = distinct !DILexicalBlock(scope: !1207, file: !178, line: 359, column: 13)
!1215 = !DILocation(line: 359, column: 13, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1214, file: !178, discriminator: 1)
!1217 = !DILocation(line: 359, column: 13, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1213, file: !178, discriminator: 2)
!1219 = !DILocation(line: 359, column: 13, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1214, file: !178, discriminator: 3)
!1221 = !DILocation(line: 358, column: 70, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1207, file: !178, discriminator: 2)
!1223 = distinct !{!1223, !1224, !1225}
!1224 = !DILocation(line: 358, column: 11, scope: !1208)
!1225 = !DILocation(line: 359, column: 13, scope: !1208)
!1226 = !DILocation(line: 362, column: 28, scope: !1199)
!1227 = !DILocation(line: 364, column: 7, scope: !1185)
!1228 = !DILocation(line: 367, column: 7, scope: !1185)
!1229 = !DILocation(line: 370, column: 7, scope: !1185)
!1230 = !DILocation(line: 373, column: 12, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1185, file: !178, line: 373, column: 11)
!1232 = !DILocation(line: 373, column: 11, scope: !1185)
!1233 = !DILocation(line: 378, column: 12, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1185, file: !178, line: 378, column: 11)
!1235 = !DILocation(line: 378, column: 11, scope: !1185)
!1236 = !DILocation(line: 379, column: 9, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1238, file: !178, discriminator: 1)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !178, line: 379, column: 9)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !178, line: 379, column: 9)
!1240 = !DILocation(line: 379, column: 9, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1239, file: !178, discriminator: 1)
!1242 = !DILocation(line: 379, column: 9, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1238, file: !178, discriminator: 2)
!1244 = !DILocation(line: 386, column: 7, scope: !1185)
!1245 = !DILocation(line: 389, column: 7, scope: !1185)
!1246 = !DILocation(line: 255, column: 10, scope: !1093)
!1247 = !DILocation(line: 392, column: 8, scope: !1122)
!1248 = !DILocation(line: 392, column: 27, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1121, file: !178, discriminator: 1)
!1250 = !DILocation(line: 392, column: 19, scope: !1249)
!1251 = !DILocation(line: 392, column: 60, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1121, file: !178, discriminator: 3)
!1253 = !DILocation(line: 392, column: 3, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1122, file: !178, discriminator: 4)
!1255 = !DILocation(line: 392, column: 41, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1121, file: !178, discriminator: 2)
!1257 = !DILocation(line: 392, column: 48, scope: !1256)
!1258 = !DILocation(line: 396, column: 12, scope: !1120)
!1259 = !DILocation(line: 397, column: 12, scope: !1120)
!1260 = !DILocation(line: 398, column: 12, scope: !1120)
!1261 = !DILocation(line: 401, column: 11, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1120, file: !178, line: 400, column: 11)
!1263 = !DILocation(line: 403, column: 17, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1262, file: !178, discriminator: 1)
!1265 = !DILocation(line: 404, column: 39, scope: !1262)
!1266 = !DILocation(line: 408, column: 32, scope: !1262)
!1267 = !DILocation(line: 404, column: 19, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1262, file: !178, discriminator: 2)
!1269 = !DILocation(line: 404, column: 15, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1262, file: !178, discriminator: 4)
!1271 = !DILocation(line: 409, column: 11, scope: !1262)
!1272 = !DILocation(line: 409, column: 26, scope: !1264)
!1273 = !DILocation(line: 409, column: 14, scope: !1264)
!1274 = !DILocation(line: 400, column: 11, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1120, file: !178, discriminator: 1)
!1276 = !DILocation(line: 416, column: 11, scope: !1120)
!1277 = !DILocation(line: 394, column: 21, scope: !1120)
!1278 = !DILocation(line: 417, column: 7, scope: !1120)
!1279 = !DILocation(line: 420, column: 15, scope: !1129)
!1280 = !DILocation(line: 422, column: 15, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1282, file: !178, discriminator: 1)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !178, line: 422, column: 15)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !178, line: 421, column: 13)
!1284 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 420, column: 15)
!1285 = !DILocation(line: 422, column: 15, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1287, file: !178, discriminator: 4)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !178, line: 422, column: 15)
!1288 = !DILocation(line: 422, column: 15, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1287, file: !178, discriminator: 3)
!1290 = !DILocation(line: 422, column: 15, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1292, file: !178, discriminator: 6)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !178, line: 422, column: 15)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !178, line: 422, column: 15)
!1294 = distinct !DILexicalBlock(scope: !1287, file: !178, line: 422, column: 15)
!1295 = !DILocation(line: 422, column: 15, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1293, file: !178, discriminator: 6)
!1297 = !DILocation(line: 422, column: 15, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1292, file: !178, discriminator: 7)
!1299 = !DILocation(line: 422, column: 15, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1293, file: !178, discriminator: 8)
!1301 = !DILocation(line: 422, column: 15, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1303, file: !178, discriminator: 11)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !178, line: 422, column: 15)
!1304 = distinct !DILexicalBlock(scope: !1294, file: !178, line: 422, column: 15)
!1305 = !DILocation(line: 422, column: 15, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1304, file: !178, discriminator: 11)
!1307 = !DILocation(line: 422, column: 15, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1303, file: !178, discriminator: 12)
!1309 = !DILocation(line: 422, column: 15, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1304, file: !178, discriminator: 13)
!1311 = !DILocation(line: 422, column: 15, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1313, file: !178, discriminator: 16)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !178, line: 422, column: 15)
!1314 = distinct !DILexicalBlock(scope: !1294, file: !178, line: 422, column: 15)
!1315 = !DILocation(line: 422, column: 15, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1314, file: !178, discriminator: 16)
!1317 = !DILocation(line: 422, column: 15, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1313, file: !178, discriminator: 17)
!1319 = !DILocation(line: 422, column: 15, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1314, file: !178, discriminator: 18)
!1321 = !DILocation(line: 422, column: 15, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1294, file: !178, discriminator: 20)
!1323 = !DILocation(line: 422, column: 15, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1325, file: !178, discriminator: 22)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !178, line: 422, column: 15)
!1326 = distinct !DILexicalBlock(scope: !1282, file: !178, line: 422, column: 15)
!1327 = !DILocation(line: 422, column: 15, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1326, file: !178, discriminator: 22)
!1329 = !DILocation(line: 422, column: 15, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1325, file: !178, discriminator: 23)
!1331 = !DILocation(line: 422, column: 15, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1326, file: !178, discriminator: 24)
!1333 = !DILocation(line: 430, column: 19, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1283, file: !178, line: 429, column: 19)
!1335 = !DILocation(line: 430, column: 24, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1334, file: !178, discriminator: 1)
!1337 = !DILocation(line: 430, column: 28, scope: !1336)
!1338 = !DILocation(line: 430, column: 38, scope: !1336)
!1339 = !DILocation(line: 430, column: 48, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1334, file: !178, discriminator: 2)
!1341 = !DILocation(line: 430, column: 59, scope: !1340)
!1342 = !DILocation(line: 432, column: 19, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1344, file: !178, discriminator: 1)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !178, line: 432, column: 19)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !178, line: 432, column: 19)
!1346 = distinct !DILexicalBlock(scope: !1334, file: !178, line: 431, column: 17)
!1347 = !DILocation(line: 432, column: 19, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1345, file: !178, discriminator: 1)
!1349 = !DILocation(line: 432, column: 19, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1344, file: !178, discriminator: 2)
!1351 = !DILocation(line: 432, column: 19, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1345, file: !178, discriminator: 3)
!1353 = !DILocation(line: 433, column: 19, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1355, file: !178, discriminator: 1)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !178, line: 433, column: 19)
!1356 = distinct !DILexicalBlock(scope: !1346, file: !178, line: 433, column: 19)
!1357 = !DILocation(line: 433, column: 19, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1356, file: !178, discriminator: 1)
!1359 = !DILocation(line: 433, column: 19, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1355, file: !178, discriminator: 2)
!1361 = !DILocation(line: 433, column: 19, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1356, file: !178, discriminator: 3)
!1363 = !DILocation(line: 434, column: 17, scope: !1346)
!1364 = !DILocation(line: 441, column: 20, scope: !1284)
!1365 = !DILocation(line: 446, column: 11, scope: !1129)
!1366 = !DILocation(line: 449, column: 19, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 447, column: 13)
!1368 = !DILocation(line: 455, column: 19, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1367, file: !178, line: 454, column: 19)
!1370 = !DILocation(line: 455, column: 24, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1369, file: !178, discriminator: 1)
!1372 = !DILocation(line: 455, column: 28, scope: !1371)
!1373 = !DILocation(line: 455, column: 38, scope: !1371)
!1374 = !DILocation(line: 455, column: 47, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1369, file: !178, discriminator: 2)
!1376 = !DILocation(line: 455, column: 41, scope: !1375)
!1377 = !DILocation(line: 455, column: 52, scope: !1375)
!1378 = !DILocation(line: 454, column: 19, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1367, file: !178, discriminator: 1)
!1380 = !DILocation(line: 456, column: 25, scope: !1369)
!1381 = !DILocation(line: 456, column: 17, scope: !1369)
!1382 = !DILocation(line: 463, column: 25, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1369, file: !178, line: 457, column: 19)
!1384 = !DILocation(line: 467, column: 21, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1386, file: !178, discriminator: 1)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !178, line: 467, column: 21)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !178, line: 467, column: 21)
!1388 = !DILocation(line: 467, column: 21, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1387, file: !178, discriminator: 1)
!1390 = !DILocation(line: 467, column: 21, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1386, file: !178, discriminator: 2)
!1392 = !DILocation(line: 467, column: 21, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1387, file: !178, discriminator: 3)
!1394 = !DILocation(line: 468, column: 21, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1396, file: !178, discriminator: 1)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !178, line: 468, column: 21)
!1397 = distinct !DILexicalBlock(scope: !1383, file: !178, line: 468, column: 21)
!1398 = !DILocation(line: 468, column: 21, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1397, file: !178, discriminator: 1)
!1400 = !DILocation(line: 468, column: 21, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1396, file: !178, discriminator: 2)
!1402 = !DILocation(line: 468, column: 21, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1397, file: !178, discriminator: 3)
!1404 = !DILocation(line: 469, column: 21, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !178, discriminator: 1)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !178, line: 469, column: 21)
!1407 = distinct !DILexicalBlock(scope: !1383, file: !178, line: 469, column: 21)
!1408 = !DILocation(line: 469, column: 21, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1407, file: !178, discriminator: 1)
!1410 = !DILocation(line: 469, column: 21, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1406, file: !178, discriminator: 2)
!1412 = !DILocation(line: 469, column: 21, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1407, file: !178, discriminator: 3)
!1414 = !DILocation(line: 470, column: 21, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1416, file: !178, discriminator: 1)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !178, line: 470, column: 21)
!1417 = distinct !DILexicalBlock(scope: !1383, file: !178, line: 470, column: 21)
!1418 = !DILocation(line: 470, column: 21, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1417, file: !178, discriminator: 1)
!1420 = !DILocation(line: 470, column: 21, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1416, file: !178, discriminator: 2)
!1422 = !DILocation(line: 470, column: 21, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1417, file: !178, discriminator: 3)
!1424 = !DILocation(line: 471, column: 21, scope: !1383)
!1425 = !DILocation(line: 395, column: 21, scope: !1120)
!1426 = !DILocation(line: 484, column: 31, scope: !1129)
!1427 = !DILocation(line: 485, column: 31, scope: !1129)
!1428 = !DILocation(line: 487, column: 31, scope: !1129)
!1429 = !DILocation(line: 488, column: 31, scope: !1129)
!1430 = !DILocation(line: 489, column: 31, scope: !1129)
!1431 = !DILocation(line: 492, column: 15, scope: !1129)
!1432 = !DILocation(line: 494, column: 19, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !178, line: 493, column: 13)
!1434 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 492, column: 15)
!1435 = !DILocation(line: 501, column: 33, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 501, column: 15)
!1437 = !DILocation(line: 506, column: 15, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 505, column: 15)
!1439 = !DILocation(line: 510, column: 15, scope: !1129)
!1440 = !DILocation(line: 518, column: 26, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 518, column: 15)
!1442 = !DILocation(line: 518, column: 15, scope: !1129)
!1443 = !DILocation(line: 518, column: 40, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1441, file: !178, discriminator: 1)
!1445 = !DILocation(line: 518, column: 47, scope: !1444)
!1446 = !DILocation(line: 522, column: 17, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 522, column: 15)
!1448 = !DILocation(line: 518, column: 18, scope: !1444)
!1449 = !DILocation(line: 518, column: 65, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1441, file: !178, discriminator: 2)
!1451 = !DILocation(line: 518, column: 15, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1129, file: !178, discriminator: 2)
!1453 = !DILocation(line: 522, column: 15, scope: !1129)
!1454 = !DILocation(line: 526, column: 11, scope: !1129)
!1455 = !DILocation(line: 541, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 540, column: 15)
!1457 = !DILocation(line: 548, column: 15, scope: !1129)
!1458 = !DILocation(line: 550, column: 19, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !178, line: 549, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1129, file: !178, line: 548, column: 15)
!1461 = !DILocation(line: 553, column: 19, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !178, line: 553, column: 19)
!1463 = !DILocation(line: 553, column: 35, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1462, file: !178, discriminator: 1)
!1465 = !DILocation(line: 553, column: 30, scope: !1462)
!1466 = !DILocation(line: 562, column: 15, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1468, file: !178, discriminator: 1)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !178, line: 562, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1459, file: !178, line: 562, column: 15)
!1470 = !DILocation(line: 562, column: 15, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1469, file: !178, discriminator: 1)
!1472 = !DILocation(line: 562, column: 15, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1468, file: !178, discriminator: 2)
!1474 = !DILocation(line: 562, column: 15, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1469, file: !178, discriminator: 3)
!1476 = !DILocation(line: 563, column: 15, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1478, file: !178, discriminator: 1)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !178, line: 563, column: 15)
!1479 = distinct !DILexicalBlock(scope: !1459, file: !178, line: 563, column: 15)
!1480 = !DILocation(line: 563, column: 15, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1479, file: !178, discriminator: 1)
!1482 = !DILocation(line: 563, column: 15, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1478, file: !178, discriminator: 2)
!1484 = !DILocation(line: 563, column: 15, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1479, file: !178, discriminator: 3)
!1486 = !DILocation(line: 564, column: 15, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1488, file: !178, discriminator: 1)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !178, line: 564, column: 15)
!1489 = distinct !DILexicalBlock(scope: !1459, file: !178, line: 564, column: 15)
!1490 = !DILocation(line: 564, column: 15, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1489, file: !178, discriminator: 1)
!1492 = !DILocation(line: 564, column: 15, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1488, file: !178, discriminator: 2)
!1494 = !DILocation(line: 564, column: 15, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1489, file: !178, discriminator: 3)
!1496 = !DILocation(line: 566, column: 13, scope: !1459)
!1497 = !DILocation(line: 606, column: 17, scope: !1128)
!1498 = !DILocation(line: 602, column: 20, scope: !1128)
!1499 = !DILocation(line: 609, column: 29, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1133, file: !178, line: 607, column: 15)
!1501 = !{!1502, !1502, i64 0}
!1502 = !{!"short", !638, i64 0}
!1503 = !DILocation(line: 609, column: 27, scope: !1500)
!1504 = !DILocation(line: 604, column: 18, scope: !1128)
!1505 = !DILocation(line: 610, column: 15, scope: !1500)
!1506 = !DILocation(line: 613, column: 17, scope: !1132)
!1507 = !DILocation(line: 614, column: 17, scope: !1132)
!1508 = !DILocation(line: 618, column: 29, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1132, file: !178, line: 618, column: 21)
!1510 = !DILocation(line: 618, column: 21, scope: !1132)
!1511 = distinct !{!1511, !1512, !1513}
!1512 = !DILocation(line: 621, column: 17, scope: !1132)
!1513 = !DILocation(line: 667, column: 44, scope: !1132)
!1514 = !DILocation(line: 619, column: 29, scope: !1509)
!1515 = !DILocation(line: 619, column: 19, scope: !1509)
!1516 = !DILocation(line: 623, column: 21, scope: !1149)
!1517 = !DILocation(line: 624, column: 56, scope: !1149)
!1518 = !DILocation(line: 624, column: 50, scope: !1149)
!1519 = !DILocation(line: 625, column: 53, scope: !1149)
!1520 = !DIExpression(DW_OP_deref)
!1521 = !DILocation(line: 613, column: 27, scope: !1132)
!1522 = !DILocation(line: 623, column: 29, scope: !1149)
!1523 = !DILocation(line: 624, column: 36, scope: !1149)
!1524 = !DILocation(line: 624, column: 28, scope: !1149)
!1525 = !DILocation(line: 626, column: 25, scope: !1149)
!1526 = !DILocation(line: 636, column: 38, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1528, file: !178, discriminator: 1)
!1528 = distinct !DILexicalBlock(scope: !1156, file: !178, line: 634, column: 23)
!1529 = !DILocation(line: 636, column: 48, scope: !1527)
!1530 = !DILocation(line: 636, column: 51, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1528, file: !178, discriminator: 2)
!1532 = !DILocation(line: 636, column: 48, scope: !1531)
!1533 = !DILocation(line: 636, column: 25, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1528, file: !178, discriminator: 3)
!1535 = !DILocation(line: 637, column: 28, scope: !1528)
!1536 = !DILocation(line: 636, column: 34, scope: !1527)
!1537 = distinct !{!1537, !1538, !1535}
!1538 = !DILocation(line: 636, column: 25, scope: !1528)
!1539 = !DILocation(line: 650, column: 43, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1541, file: !178, discriminator: 1)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !178, line: 650, column: 29)
!1542 = distinct !DILexicalBlock(scope: !1153, file: !178, line: 650, column: 29)
!1543 = !DILocation(line: 647, column: 29, scope: !1154)
!1544 = !DILocation(line: 649, column: 36, scope: !1153)
!1545 = !DILocation(line: 651, column: 49, scope: !1541)
!1546 = !DILocation(line: 651, column: 39, scope: !1541)
!1547 = !DILocation(line: 651, column: 31, scope: !1541)
!1548 = !DILocation(line: 650, column: 53, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1541, file: !178, discriminator: 2)
!1550 = !DILocation(line: 650, column: 29, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1542, file: !178, discriminator: 1)
!1552 = distinct !{!1552, !1553, !1554}
!1553 = !DILocation(line: 650, column: 29, scope: !1542)
!1554 = !DILocation(line: 659, column: 33, scope: !1542)
!1555 = !DILocation(line: 666, column: 19, scope: !1132)
!1556 = !DILocation(line: 662, column: 41, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1155, file: !178, line: 662, column: 29)
!1558 = !DILocation(line: 662, column: 31, scope: !1557)
!1559 = !DILocation(line: 662, column: 29, scope: !1155)
!1560 = !DILocation(line: 664, column: 27, scope: !1155)
!1561 = !DILocation(line: 667, column: 26, scope: !1132)
!1562 = !DILocation(line: 667, column: 24, scope: !1132)
!1563 = !DILocation(line: 666, column: 19, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1149, file: !178, discriminator: 3)
!1565 = !DILocation(line: 668, column: 15, scope: !1133)
!1566 = !DILocation(line: 670, column: 40, scope: !1128)
!1567 = !DILocation(line: 672, column: 19, scope: !1161)
!1568 = !DILocation(line: 672, column: 45, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1161, file: !178, discriminator: 1)
!1570 = !DILocation(line: 672, column: 23, scope: !1161)
!1571 = !DILocation(line: 676, column: 33, scope: !1160)
!1572 = !DILocation(line: 676, column: 24, scope: !1160)
!1573 = !DILocation(line: 678, column: 17, scope: !1160)
!1574 = !DILocation(line: 680, column: 43, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !178, line: 680, column: 25)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !178, line: 679, column: 19)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !178, line: 678, column: 17)
!1578 = distinct !DILexicalBlock(scope: !1160, file: !178, line: 678, column: 17)
!1579 = !DILocation(line: 682, column: 25, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1581, file: !178, discriminator: 1)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !178, line: 682, column: 25)
!1582 = distinct !DILexicalBlock(scope: !1575, file: !178, line: 681, column: 23)
!1583 = !DILocation(line: 682, column: 25, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1585, file: !178, discriminator: 4)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !178, line: 682, column: 25)
!1586 = !DILocation(line: 682, column: 25, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1585, file: !178, discriminator: 3)
!1588 = !DILocation(line: 682, column: 25, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1590, file: !178, discriminator: 6)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !178, line: 682, column: 25)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !178, line: 682, column: 25)
!1592 = distinct !DILexicalBlock(scope: !1585, file: !178, line: 682, column: 25)
!1593 = !DILocation(line: 682, column: 25, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1591, file: !178, discriminator: 6)
!1595 = !DILocation(line: 682, column: 25, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1590, file: !178, discriminator: 7)
!1597 = !DILocation(line: 682, column: 25, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1591, file: !178, discriminator: 8)
!1599 = !DILocation(line: 682, column: 25, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1601, file: !178, discriminator: 11)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !178, line: 682, column: 25)
!1602 = distinct !DILexicalBlock(scope: !1592, file: !178, line: 682, column: 25)
!1603 = !DILocation(line: 682, column: 25, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1602, file: !178, discriminator: 11)
!1605 = !DILocation(line: 682, column: 25, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1601, file: !178, discriminator: 12)
!1607 = !DILocation(line: 682, column: 25, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1602, file: !178, discriminator: 13)
!1609 = !DILocation(line: 682, column: 25, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1611, file: !178, discriminator: 16)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !178, line: 682, column: 25)
!1612 = distinct !DILexicalBlock(scope: !1592, file: !178, line: 682, column: 25)
!1613 = !DILocation(line: 682, column: 25, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1612, file: !178, discriminator: 16)
!1615 = !DILocation(line: 682, column: 25, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1611, file: !178, discriminator: 17)
!1617 = !DILocation(line: 682, column: 25, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1612, file: !178, discriminator: 18)
!1619 = !DILocation(line: 682, column: 25, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1592, file: !178, discriminator: 20)
!1621 = !DILocation(line: 682, column: 25, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !178, discriminator: 22)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !178, line: 682, column: 25)
!1624 = distinct !DILexicalBlock(scope: !1581, file: !178, line: 682, column: 25)
!1625 = !DILocation(line: 682, column: 25, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1624, file: !178, discriminator: 22)
!1627 = !DILocation(line: 682, column: 25, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1623, file: !178, discriminator: 23)
!1629 = !DILocation(line: 682, column: 25, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1624, file: !178, discriminator: 24)
!1631 = !DILocation(line: 683, column: 25, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1633, file: !178, discriminator: 1)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !178, line: 683, column: 25)
!1634 = distinct !DILexicalBlock(scope: !1582, file: !178, line: 683, column: 25)
!1635 = !DILocation(line: 683, column: 25, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1634, file: !178, discriminator: 1)
!1637 = !DILocation(line: 683, column: 25, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1633, file: !178, discriminator: 2)
!1639 = !DILocation(line: 683, column: 25, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1634, file: !178, discriminator: 3)
!1641 = !DILocation(line: 684, column: 25, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1643, file: !178, discriminator: 1)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !178, line: 684, column: 25)
!1644 = distinct !DILexicalBlock(scope: !1582, file: !178, line: 684, column: 25)
!1645 = !DILocation(line: 684, column: 25, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1644, file: !178, discriminator: 1)
!1647 = !DILocation(line: 684, column: 25, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1643, file: !178, discriminator: 2)
!1649 = !DILocation(line: 684, column: 25, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1644, file: !178, discriminator: 3)
!1651 = !DILocation(line: 685, column: 38, scope: !1582)
!1652 = !DILocation(line: 685, column: 33, scope: !1582)
!1653 = !DILocation(line: 686, column: 23, scope: !1582)
!1654 = !DILocation(line: 687, column: 30, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1575, file: !178, line: 687, column: 30)
!1656 = !DILocation(line: 687, column: 30, scope: !1575)
!1657 = !DILocation(line: 689, column: 25, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1659, file: !178, discriminator: 1)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !178, line: 689, column: 25)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !178, line: 689, column: 25)
!1661 = distinct !DILexicalBlock(scope: !1655, file: !178, line: 688, column: 23)
!1662 = !DILocation(line: 689, column: 25, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1660, file: !178, discriminator: 1)
!1664 = !DILocation(line: 689, column: 25, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1659, file: !178, discriminator: 2)
!1666 = !DILocation(line: 689, column: 25, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1660, file: !178, discriminator: 3)
!1668 = !DILocation(line: 691, column: 23, scope: !1661)
!1669 = !DILocation(line: 692, column: 35, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1576, file: !178, line: 692, column: 25)
!1671 = !DILocation(line: 692, column: 30, scope: !1670)
!1672 = !DILocation(line: 692, column: 25, scope: !1576)
!1673 = !DILocation(line: 694, column: 21, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !178, discriminator: 1)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !178, line: 694, column: 21)
!1676 = distinct !DILexicalBlock(scope: !1576, file: !178, line: 694, column: 21)
!1677 = !DILocation(line: 694, column: 21, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1675, file: !178, discriminator: 2)
!1679 = !DILocation(line: 694, column: 21, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1681, file: !178, discriminator: 4)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !178, line: 694, column: 21)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !178, line: 694, column: 21)
!1683 = distinct !DILexicalBlock(scope: !1675, file: !178, line: 694, column: 21)
!1684 = !DILocation(line: 694, column: 21, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1682, file: !178, discriminator: 4)
!1686 = !DILocation(line: 694, column: 21, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1681, file: !178, discriminator: 5)
!1688 = !DILocation(line: 694, column: 21, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1682, file: !178, discriminator: 6)
!1690 = !DILocation(line: 694, column: 21, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1692, file: !178, discriminator: 9)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !178, line: 694, column: 21)
!1693 = distinct !DILexicalBlock(scope: !1683, file: !178, line: 694, column: 21)
!1694 = !DILocation(line: 694, column: 21, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1693, file: !178, discriminator: 9)
!1696 = !DILocation(line: 694, column: 21, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1692, file: !178, discriminator: 10)
!1698 = !DILocation(line: 694, column: 21, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1693, file: !178, discriminator: 11)
!1700 = !DILocation(line: 694, column: 21, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1683, file: !178, discriminator: 13)
!1702 = !DILocation(line: 695, column: 21, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1704, file: !178, discriminator: 1)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !178, line: 695, column: 21)
!1705 = distinct !DILexicalBlock(scope: !1576, file: !178, line: 695, column: 21)
!1706 = !DILocation(line: 695, column: 21, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1705, file: !178, discriminator: 1)
!1708 = !DILocation(line: 695, column: 21, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1704, file: !178, discriminator: 2)
!1710 = !DILocation(line: 695, column: 21, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1705, file: !178, discriminator: 3)
!1712 = !DILocation(line: 696, column: 25, scope: !1576)
!1713 = !DILocation(line: 678, column: 17, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1577, file: !178, discriminator: 1)
!1715 = distinct !{!1715, !1716, !1717}
!1716 = !DILocation(line: 678, column: 17, scope: !1578)
!1717 = !DILocation(line: 697, column: 19, scope: !1578)
!1718 = !DILocation(line: 704, column: 34, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1120, file: !178, line: 704, column: 11)
!1720 = !DILocation(line: 706, column: 14, scope: !1719)
!1721 = !DILocation(line: 707, column: 14, scope: !1719)
!1722 = !DILocation(line: 707, column: 35, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1719, file: !178, discriminator: 1)
!1724 = !DILocation(line: 707, column: 17, scope: !1723)
!1725 = !DILocation(line: 707, column: 53, scope: !1723)
!1726 = !DILocation(line: 707, column: 47, scope: !1723)
!1727 = !DILocation(line: 707, column: 65, scope: !1723)
!1728 = !DILocation(line: 708, column: 15, scope: !1723)
!1729 = !DILocation(line: 708, column: 11, scope: !1719)
!1730 = !DILocation(line: 704, column: 11, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1120, file: !178, discriminator: 2)
!1732 = !DILocation(line: 712, column: 7, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1734, file: !178, discriminator: 1)
!1734 = distinct !DILexicalBlock(scope: !1120, file: !178, line: 712, column: 7)
!1735 = !DILocation(line: 712, column: 7, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !178, discriminator: 4)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !178, line: 712, column: 7)
!1738 = !DILocation(line: 712, column: 7, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1737, file: !178, discriminator: 3)
!1740 = !DILocation(line: 712, column: 7, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1742, file: !178, discriminator: 6)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !178, line: 712, column: 7)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !178, line: 712, column: 7)
!1744 = distinct !DILexicalBlock(scope: !1737, file: !178, line: 712, column: 7)
!1745 = !DILocation(line: 712, column: 7, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1743, file: !178, discriminator: 6)
!1747 = !DILocation(line: 712, column: 7, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1742, file: !178, discriminator: 7)
!1749 = !DILocation(line: 712, column: 7, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1743, file: !178, discriminator: 8)
!1751 = !DILocation(line: 712, column: 7, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1753, file: !178, discriminator: 11)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !178, line: 712, column: 7)
!1754 = distinct !DILexicalBlock(scope: !1744, file: !178, line: 712, column: 7)
!1755 = !DILocation(line: 712, column: 7, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1754, file: !178, discriminator: 11)
!1757 = !DILocation(line: 712, column: 7, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1753, file: !178, discriminator: 12)
!1759 = !DILocation(line: 712, column: 7, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1754, file: !178, discriminator: 13)
!1761 = !DILocation(line: 712, column: 7, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !178, discriminator: 16)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !178, line: 712, column: 7)
!1764 = distinct !DILexicalBlock(scope: !1744, file: !178, line: 712, column: 7)
!1765 = !DILocation(line: 712, column: 7, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1764, file: !178, discriminator: 16)
!1767 = !DILocation(line: 712, column: 7, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1763, file: !178, discriminator: 17)
!1769 = !DILocation(line: 712, column: 7, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1764, file: !178, discriminator: 18)
!1771 = !DILocation(line: 712, column: 7, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1744, file: !178, discriminator: 20)
!1773 = !DILocation(line: 712, column: 7, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1775, file: !178, discriminator: 22)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !178, line: 712, column: 7)
!1776 = distinct !DILexicalBlock(scope: !1734, file: !178, line: 712, column: 7)
!1777 = !DILocation(line: 712, column: 7, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1776, file: !178, discriminator: 22)
!1779 = !DILocation(line: 712, column: 7, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1775, file: !178, discriminator: 23)
!1781 = !DILocation(line: 712, column: 7, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1776, file: !178, discriminator: 24)
!1783 = !DILocation(line: 715, column: 7, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !178, discriminator: 1)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !178, line: 715, column: 7)
!1786 = distinct !DILexicalBlock(scope: !1120, file: !178, line: 715, column: 7)
!1787 = !DILocation(line: 715, column: 7, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1785, file: !178, discriminator: 2)
!1789 = !DILocation(line: 715, column: 7, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1791, file: !178, discriminator: 4)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !178, line: 715, column: 7)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !178, line: 715, column: 7)
!1793 = distinct !DILexicalBlock(scope: !1785, file: !178, line: 715, column: 7)
!1794 = !DILocation(line: 715, column: 7, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1792, file: !178, discriminator: 4)
!1796 = !DILocation(line: 715, column: 7, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1791, file: !178, discriminator: 5)
!1798 = !DILocation(line: 715, column: 7, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1792, file: !178, discriminator: 6)
!1800 = !DILocation(line: 715, column: 7, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1802, file: !178, discriminator: 9)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !178, line: 715, column: 7)
!1803 = distinct !DILexicalBlock(scope: !1793, file: !178, line: 715, column: 7)
!1804 = !DILocation(line: 715, column: 7, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1803, file: !178, discriminator: 9)
!1806 = !DILocation(line: 715, column: 7, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1802, file: !178, discriminator: 10)
!1808 = !DILocation(line: 715, column: 7, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1803, file: !178, discriminator: 11)
!1810 = !DILocation(line: 715, column: 7, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1793, file: !178, discriminator: 13)
!1812 = !DILocation(line: 716, column: 7, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !178, discriminator: 1)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !178, line: 716, column: 7)
!1815 = distinct !DILexicalBlock(scope: !1120, file: !178, line: 716, column: 7)
!1816 = !DILocation(line: 716, column: 7, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1815, file: !178, discriminator: 1)
!1818 = !DILocation(line: 716, column: 7, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1814, file: !178, discriminator: 2)
!1820 = !DILocation(line: 716, column: 7, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1815, file: !178, discriminator: 3)
!1822 = !DILocation(line: 718, column: 13, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1120, file: !178, line: 718, column: 11)
!1824 = !DILocation(line: 718, column: 11, scope: !1120)
!1825 = !DILocation(line: 720, column: 5, scope: !1121)
!1826 = !DILocation(line: 392, column: 75, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1121, file: !178, discriminator: 5)
!1828 = !DILocation(line: 392, column: 3, scope: !1827)
!1829 = distinct !{!1829, !1830, !1831}
!1830 = !DILocation(line: 392, column: 3, scope: !1122)
!1831 = !DILocation(line: 720, column: 5, scope: !1122)
!1832 = !DILocation(line: 722, column: 11, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1093, file: !178, line: 722, column: 7)
!1834 = !DILocation(line: 722, column: 16, scope: !1833)
!1835 = !DILocation(line: 730, column: 51, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1093, file: !178, line: 730, column: 7)
!1837 = !DILocation(line: 731, column: 10, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1836, file: !178, discriminator: 1)
!1839 = !DILocation(line: 733, column: 11, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !178, line: 733, column: 11)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !178, line: 732, column: 5)
!1842 = !DILocation(line: 733, column: 11, scope: !1841)
!1843 = !DILocation(line: 734, column: 16, scope: !1840)
!1844 = !DILocation(line: 734, column: 9, scope: !1840)
!1845 = !DILocation(line: 738, column: 18, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1840, file: !178, line: 738, column: 16)
!1847 = !DILocation(line: 738, column: 32, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1846, file: !178, discriminator: 1)
!1849 = !DILocation(line: 738, column: 29, scope: !1846)
!1850 = !DILocation(line: 747, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1093, file: !178, line: 747, column: 7)
!1852 = !DILocation(line: 747, column: 20, scope: !1851)
!1853 = !DILocation(line: 748, column: 12, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1855, file: !178, discriminator: 1)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !178, line: 748, column: 5)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !178, line: 748, column: 5)
!1857 = !DILocation(line: 748, column: 5, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1856, file: !178, discriminator: 1)
!1859 = !DILocation(line: 749, column: 7, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1861, file: !178, discriminator: 1)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !178, line: 749, column: 7)
!1862 = distinct !DILexicalBlock(scope: !1855, file: !178, line: 749, column: 7)
!1863 = !DILocation(line: 749, column: 7, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1862, file: !178, discriminator: 1)
!1865 = !DILocation(line: 749, column: 7, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1861, file: !178, discriminator: 2)
!1867 = !DILocation(line: 749, column: 7, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1862, file: !178, discriminator: 3)
!1869 = !DILocation(line: 748, column: 39, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1855, file: !178, discriminator: 2)
!1871 = distinct !{!1871, !1872, !1873}
!1872 = !DILocation(line: 748, column: 5, scope: !1856)
!1873 = !DILocation(line: 749, column: 7, scope: !1856)
!1874 = !DILocation(line: 751, column: 11, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1093, file: !178, line: 751, column: 7)
!1876 = !DILocation(line: 751, column: 7, scope: !1093)
!1877 = !DILocation(line: 752, column: 5, scope: !1875)
!1878 = !DILocation(line: 752, column: 17, scope: !1875)
!1879 = !DILocation(line: 758, column: 21, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1093, file: !178, line: 758, column: 7)
!1881 = !DILocation(line: 758, column: 54, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1880, file: !178, discriminator: 1)
!1883 = !DILocation(line: 758, column: 51, scope: !1880)
!1884 = !DILocation(line: 762, column: 42, scope: !1093)
!1885 = !DILocation(line: 760, column: 10, scope: !1093)
!1886 = !DILocation(line: 760, column: 3, scope: !1093)
!1887 = !DILocation(line: 764, column: 1, scope: !1093)
!1888 = distinct !DISubprogram(name: "gettext_quote", scope: !178, file: !178, line: 199, type: !1889, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!24, !24, !139}
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DILocalVariable(name: "msgid", arg: 1, scope: !1888, file: !178, line: 199, type: !24)
!1893 = !DILocalVariable(name: "s", arg: 2, scope: !1888, file: !178, line: 199, type: !139)
!1894 = !DILocalVariable(name: "translation", scope: !1888, file: !178, line: 201, type: !24)
!1895 = !DILocalVariable(name: "locale_code", scope: !1888, file: !178, line: 202, type: !24)
!1896 = !DILocation(line: 199, column: 28, scope: !1888)
!1897 = !DILocation(line: 199, column: 54, scope: !1888)
!1898 = !DILocation(line: 201, column: 29, scope: !1888)
!1899 = !DILocation(line: 201, column: 15, scope: !1888)
!1900 = !DILocation(line: 204, column: 19, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1888, file: !178, line: 204, column: 7)
!1902 = !DILocation(line: 204, column: 7, scope: !1888)
!1903 = !DILocation(line: 225, column: 17, scope: !1888)
!1904 = !DILocation(line: 202, column: 15, scope: !1888)
!1905 = !DILocalVariable(name: "s2", arg: 2, scope: !1906, file: !1907, line: 160, type: !24)
!1906 = distinct !DISubprogram(name: "strcaseeq0", scope: !1907, file: !1907, line: 160, type: !1908, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1910)
!1907 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!32, !24, !24, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!1910 = !{!1911, !1905, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920}
!1911 = !DILocalVariable(name: "s1", arg: 1, scope: !1906, file: !1907, line: 160, type: !24)
!1912 = !DILocalVariable(name: "s20", arg: 3, scope: !1906, file: !1907, line: 160, type: !14)
!1913 = !DILocalVariable(name: "s21", arg: 4, scope: !1906, file: !1907, line: 160, type: !14)
!1914 = !DILocalVariable(name: "s22", arg: 5, scope: !1906, file: !1907, line: 160, type: !14)
!1915 = !DILocalVariable(name: "s23", arg: 6, scope: !1906, file: !1907, line: 160, type: !14)
!1916 = !DILocalVariable(name: "s24", arg: 7, scope: !1906, file: !1907, line: 160, type: !14)
!1917 = !DILocalVariable(name: "s25", arg: 8, scope: !1906, file: !1907, line: 160, type: !14)
!1918 = !DILocalVariable(name: "s26", arg: 9, scope: !1906, file: !1907, line: 160, type: !14)
!1919 = !DILocalVariable(name: "s27", arg: 10, scope: !1906, file: !1907, line: 160, type: !14)
!1920 = !DILocalVariable(name: "s28", arg: 11, scope: !1906, file: !1907, line: 160, type: !14)
!1921 = !DILocation(line: 160, column: 41, scope: !1906, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 226, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1888, file: !178, line: 226, column: 7)
!1924 = !DILocation(line: 160, column: 120, scope: !1906, inlinedAt: !1922)
!1925 = !DILocation(line: 160, column: 130, scope: !1906, inlinedAt: !1922)
!1926 = !DILocation(line: 162, column: 7, scope: !1927, inlinedAt: !1922)
!1927 = !DILexicalBlockFile(scope: !1928, file: !1907, discriminator: 1)
!1928 = distinct !DILexicalBlock(scope: !1906, file: !1907, line: 162, column: 7)
!1929 = !DILocalVariable(name: "s2", arg: 2, scope: !1930, file: !1907, line: 146, type: !24)
!1930 = distinct !DISubprogram(name: "strcaseeq1", scope: !1907, file: !1907, line: 146, type: !1931, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!32, !24, !24, !14, !14, !14, !14, !14, !14, !14, !14}
!1933 = !{!1934, !1929, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942}
!1934 = !DILocalVariable(name: "s1", arg: 1, scope: !1930, file: !1907, line: 146, type: !24)
!1935 = !DILocalVariable(name: "s21", arg: 3, scope: !1930, file: !1907, line: 146, type: !14)
!1936 = !DILocalVariable(name: "s22", arg: 4, scope: !1930, file: !1907, line: 146, type: !14)
!1937 = !DILocalVariable(name: "s23", arg: 5, scope: !1930, file: !1907, line: 146, type: !14)
!1938 = !DILocalVariable(name: "s24", arg: 6, scope: !1930, file: !1907, line: 146, type: !14)
!1939 = !DILocalVariable(name: "s25", arg: 7, scope: !1930, file: !1907, line: 146, type: !14)
!1940 = !DILocalVariable(name: "s26", arg: 8, scope: !1930, file: !1907, line: 146, type: !14)
!1941 = !DILocalVariable(name: "s27", arg: 9, scope: !1930, file: !1907, line: 146, type: !14)
!1942 = !DILocalVariable(name: "s28", arg: 10, scope: !1930, file: !1907, line: 146, type: !14)
!1943 = !DILocation(line: 146, column: 41, scope: !1930, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 167, column: 16, scope: !1945, inlinedAt: !1922)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !1907, line: 164, column: 11)
!1946 = distinct !DILexicalBlock(scope: !1928, file: !1907, line: 163, column: 5)
!1947 = !DILocation(line: 146, column: 110, scope: !1930, inlinedAt: !1944)
!1948 = !DILocation(line: 146, column: 120, scope: !1930, inlinedAt: !1944)
!1949 = !DILocation(line: 148, column: 7, scope: !1950, inlinedAt: !1944)
!1950 = !DILexicalBlockFile(scope: !1951, file: !1907, discriminator: 1)
!1951 = distinct !DILexicalBlock(scope: !1930, file: !1907, line: 148, column: 7)
!1952 = !DILocalVariable(name: "s2", arg: 2, scope: !1953, file: !1907, line: 132, type: !24)
!1953 = distinct !DISubprogram(name: "strcaseeq2", scope: !1907, file: !1907, line: 132, type: !1954, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!32, !24, !24, !14, !14, !14, !14, !14, !14, !14}
!1956 = !{!1957, !1952, !1958, !1959, !1960, !1961, !1962, !1963, !1964}
!1957 = !DILocalVariable(name: "s1", arg: 1, scope: !1953, file: !1907, line: 132, type: !24)
!1958 = !DILocalVariable(name: "s22", arg: 3, scope: !1953, file: !1907, line: 132, type: !14)
!1959 = !DILocalVariable(name: "s23", arg: 4, scope: !1953, file: !1907, line: 132, type: !14)
!1960 = !DILocalVariable(name: "s24", arg: 5, scope: !1953, file: !1907, line: 132, type: !14)
!1961 = !DILocalVariable(name: "s25", arg: 6, scope: !1953, file: !1907, line: 132, type: !14)
!1962 = !DILocalVariable(name: "s26", arg: 7, scope: !1953, file: !1907, line: 132, type: !14)
!1963 = !DILocalVariable(name: "s27", arg: 8, scope: !1953, file: !1907, line: 132, type: !14)
!1964 = !DILocalVariable(name: "s28", arg: 9, scope: !1953, file: !1907, line: 132, type: !14)
!1965 = !DILocation(line: 132, column: 41, scope: !1953, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 153, column: 16, scope: !1967, inlinedAt: !1944)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1907, line: 150, column: 11)
!1968 = distinct !DILexicalBlock(scope: !1951, file: !1907, line: 149, column: 5)
!1969 = !DILocation(line: 132, column: 100, scope: !1953, inlinedAt: !1966)
!1970 = !DILocation(line: 132, column: 110, scope: !1953, inlinedAt: !1966)
!1971 = !DILocation(line: 134, column: 7, scope: !1972, inlinedAt: !1966)
!1972 = !DILexicalBlockFile(scope: !1973, file: !1907, discriminator: 1)
!1973 = distinct !DILexicalBlock(scope: !1953, file: !1907, line: 134, column: 7)
!1974 = !DILocalVariable(name: "s2", arg: 2, scope: !1975, file: !1907, line: 118, type: !24)
!1975 = distinct !DISubprogram(name: "strcaseeq3", scope: !1907, file: !1907, line: 118, type: !1976, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!32, !24, !24, !14, !14, !14, !14, !14, !14}
!1978 = !{!1979, !1974, !1980, !1981, !1982, !1983, !1984, !1985}
!1979 = !DILocalVariable(name: "s1", arg: 1, scope: !1975, file: !1907, line: 118, type: !24)
!1980 = !DILocalVariable(name: "s23", arg: 3, scope: !1975, file: !1907, line: 118, type: !14)
!1981 = !DILocalVariable(name: "s24", arg: 4, scope: !1975, file: !1907, line: 118, type: !14)
!1982 = !DILocalVariable(name: "s25", arg: 5, scope: !1975, file: !1907, line: 118, type: !14)
!1983 = !DILocalVariable(name: "s26", arg: 6, scope: !1975, file: !1907, line: 118, type: !14)
!1984 = !DILocalVariable(name: "s27", arg: 7, scope: !1975, file: !1907, line: 118, type: !14)
!1985 = !DILocalVariable(name: "s28", arg: 8, scope: !1975, file: !1907, line: 118, type: !14)
!1986 = !DILocation(line: 118, column: 41, scope: !1975, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 139, column: 16, scope: !1988, inlinedAt: !1966)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !1907, line: 136, column: 11)
!1989 = distinct !DILexicalBlock(scope: !1973, file: !1907, line: 135, column: 5)
!1990 = !DILocation(line: 118, column: 90, scope: !1975, inlinedAt: !1987)
!1991 = !DILocation(line: 118, column: 100, scope: !1975, inlinedAt: !1987)
!1992 = !DILocation(line: 120, column: 7, scope: !1993, inlinedAt: !1987)
!1993 = !DILexicalBlockFile(scope: !1994, file: !1907, discriminator: 2)
!1994 = distinct !DILexicalBlock(scope: !1975, file: !1907, line: 120, column: 7)
!1995 = !DILocation(line: 120, column: 7, scope: !1996, inlinedAt: !1987)
!1996 = !DILexicalBlockFile(scope: !1975, file: !1907, discriminator: 2)
!1997 = !DILocalVariable(name: "s2", arg: 2, scope: !1998, file: !1907, line: 104, type: !24)
!1998 = distinct !DISubprogram(name: "strcaseeq4", scope: !1907, file: !1907, line: 104, type: !1999, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2001)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!32, !24, !24, !14, !14, !14, !14, !14}
!2001 = !{!2002, !1997, !2003, !2004, !2005, !2006, !2007}
!2002 = !DILocalVariable(name: "s1", arg: 1, scope: !1998, file: !1907, line: 104, type: !24)
!2003 = !DILocalVariable(name: "s24", arg: 3, scope: !1998, file: !1907, line: 104, type: !14)
!2004 = !DILocalVariable(name: "s25", arg: 4, scope: !1998, file: !1907, line: 104, type: !14)
!2005 = !DILocalVariable(name: "s26", arg: 5, scope: !1998, file: !1907, line: 104, type: !14)
!2006 = !DILocalVariable(name: "s27", arg: 6, scope: !1998, file: !1907, line: 104, type: !14)
!2007 = !DILocalVariable(name: "s28", arg: 7, scope: !1998, file: !1907, line: 104, type: !14)
!2008 = !DILocation(line: 104, column: 41, scope: !1998, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 125, column: 16, scope: !2010, inlinedAt: !1987)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !1907, line: 122, column: 11)
!2011 = distinct !DILexicalBlock(scope: !1994, file: !1907, line: 121, column: 5)
!2012 = !DILocation(line: 104, column: 80, scope: !1998, inlinedAt: !2009)
!2013 = !DILocation(line: 104, column: 90, scope: !1998, inlinedAt: !2009)
!2014 = !DILocation(line: 106, column: 7, scope: !2015, inlinedAt: !2009)
!2015 = !DILexicalBlockFile(scope: !2016, file: !1907, discriminator: 2)
!2016 = distinct !DILexicalBlock(scope: !1998, file: !1907, line: 106, column: 7)
!2017 = !DILocation(line: 106, column: 7, scope: !2018, inlinedAt: !2009)
!2018 = !DILexicalBlockFile(scope: !1998, file: !1907, discriminator: 2)
!2019 = !DILocalVariable(name: "s2", arg: 2, scope: !2020, file: !1907, line: 90, type: !24)
!2020 = distinct !DISubprogram(name: "strcaseeq5", scope: !1907, file: !1907, line: 90, type: !2021, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!32, !24, !24, !14, !14, !14, !14}
!2023 = !{!2024, !2019, !2025, !2026, !2027, !2028}
!2024 = !DILocalVariable(name: "s1", arg: 1, scope: !2020, file: !1907, line: 90, type: !24)
!2025 = !DILocalVariable(name: "s25", arg: 3, scope: !2020, file: !1907, line: 90, type: !14)
!2026 = !DILocalVariable(name: "s26", arg: 4, scope: !2020, file: !1907, line: 90, type: !14)
!2027 = !DILocalVariable(name: "s27", arg: 5, scope: !2020, file: !1907, line: 90, type: !14)
!2028 = !DILocalVariable(name: "s28", arg: 6, scope: !2020, file: !1907, line: 90, type: !14)
!2029 = !DILocation(line: 90, column: 41, scope: !2020, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 111, column: 16, scope: !2031, inlinedAt: !2009)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !1907, line: 108, column: 11)
!2032 = distinct !DILexicalBlock(scope: !2016, file: !1907, line: 107, column: 5)
!2033 = !DILocation(line: 90, column: 70, scope: !2020, inlinedAt: !2030)
!2034 = !DILocation(line: 90, column: 80, scope: !2020, inlinedAt: !2030)
!2035 = !DILocation(line: 92, column: 7, scope: !2036, inlinedAt: !2030)
!2036 = !DILexicalBlockFile(scope: !2037, file: !1907, discriminator: 2)
!2037 = distinct !DILexicalBlock(scope: !2020, file: !1907, line: 92, column: 7)
!2038 = !DILocation(line: 92, column: 7, scope: !2039, inlinedAt: !2030)
!2039 = !DILexicalBlockFile(scope: !2020, file: !1907, discriminator: 2)
!2040 = !DILocation(line: 227, column: 12, scope: !1923)
!2041 = !DILocation(line: 227, column: 21, scope: !1923)
!2042 = !DILocation(line: 227, column: 5, scope: !1923)
!2043 = !DILocation(line: 146, column: 41, scope: !1930, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 167, column: 16, scope: !1945, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 228, column: 7, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1888, file: !178, line: 228, column: 7)
!2047 = !DILocation(line: 146, column: 110, scope: !1930, inlinedAt: !2044)
!2048 = !DILocation(line: 146, column: 120, scope: !1930, inlinedAt: !2044)
!2049 = !DILocation(line: 148, column: 7, scope: !1950, inlinedAt: !2044)
!2050 = !DILocation(line: 132, column: 41, scope: !1953, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 153, column: 16, scope: !1967, inlinedAt: !2044)
!2052 = !DILocation(line: 132, column: 100, scope: !1953, inlinedAt: !2051)
!2053 = !DILocation(line: 132, column: 110, scope: !1953, inlinedAt: !2051)
!2054 = !DILocation(line: 134, column: 7, scope: !2055, inlinedAt: !2051)
!2055 = !DILexicalBlockFile(scope: !1973, file: !1907, discriminator: 2)
!2056 = !DILocation(line: 134, column: 7, scope: !2057, inlinedAt: !2051)
!2057 = !DILexicalBlockFile(scope: !1953, file: !1907, discriminator: 2)
!2058 = !DILocation(line: 118, column: 41, scope: !1975, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 139, column: 16, scope: !1988, inlinedAt: !2051)
!2060 = !DILocation(line: 118, column: 90, scope: !1975, inlinedAt: !2059)
!2061 = !DILocation(line: 118, column: 100, scope: !1975, inlinedAt: !2059)
!2062 = !DILocation(line: 120, column: 7, scope: !1993, inlinedAt: !2059)
!2063 = !DILocation(line: 120, column: 7, scope: !1996, inlinedAt: !2059)
!2064 = !DILocation(line: 104, column: 41, scope: !1998, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 125, column: 16, scope: !2010, inlinedAt: !2059)
!2066 = !DILocation(line: 104, column: 80, scope: !1998, inlinedAt: !2065)
!2067 = !DILocation(line: 104, column: 90, scope: !1998, inlinedAt: !2065)
!2068 = !DILocation(line: 106, column: 7, scope: !2015, inlinedAt: !2065)
!2069 = !DILocation(line: 106, column: 7, scope: !2018, inlinedAt: !2065)
!2070 = !DILocation(line: 90, column: 41, scope: !2020, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 111, column: 16, scope: !2031, inlinedAt: !2065)
!2072 = !DILocation(line: 90, column: 70, scope: !2020, inlinedAt: !2071)
!2073 = !DILocation(line: 90, column: 80, scope: !2020, inlinedAt: !2071)
!2074 = !DILocation(line: 92, column: 7, scope: !2036, inlinedAt: !2071)
!2075 = !DILocation(line: 92, column: 7, scope: !2039, inlinedAt: !2071)
!2076 = !DILocalVariable(name: "s2", arg: 2, scope: !2077, file: !1907, line: 76, type: !24)
!2077 = distinct !DISubprogram(name: "strcaseeq6", scope: !1907, file: !1907, line: 76, type: !2078, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!32, !24, !24, !14, !14, !14}
!2080 = !{!2081, !2076, !2082, !2083, !2084}
!2081 = !DILocalVariable(name: "s1", arg: 1, scope: !2077, file: !1907, line: 76, type: !24)
!2082 = !DILocalVariable(name: "s26", arg: 3, scope: !2077, file: !1907, line: 76, type: !14)
!2083 = !DILocalVariable(name: "s27", arg: 4, scope: !2077, file: !1907, line: 76, type: !14)
!2084 = !DILocalVariable(name: "s28", arg: 5, scope: !2077, file: !1907, line: 76, type: !14)
!2085 = !DILocation(line: 76, column: 41, scope: !2077, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 97, column: 16, scope: !2087, inlinedAt: !2071)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !1907, line: 94, column: 11)
!2088 = distinct !DILexicalBlock(scope: !2037, file: !1907, line: 93, column: 5)
!2089 = !DILocation(line: 76, column: 60, scope: !2077, inlinedAt: !2086)
!2090 = !DILocation(line: 76, column: 70, scope: !2077, inlinedAt: !2086)
!2091 = !DILocation(line: 78, column: 7, scope: !2092, inlinedAt: !2086)
!2092 = !DILexicalBlockFile(scope: !2093, file: !1907, discriminator: 2)
!2093 = distinct !DILexicalBlock(scope: !2077, file: !1907, line: 78, column: 7)
!2094 = !DILocation(line: 78, column: 7, scope: !2095, inlinedAt: !2086)
!2095 = !DILexicalBlockFile(scope: !2077, file: !1907, discriminator: 2)
!2096 = !DILocalVariable(name: "s2", arg: 2, scope: !2097, file: !1907, line: 62, type: !24)
!2097 = distinct !DISubprogram(name: "strcaseeq7", scope: !1907, file: !1907, line: 62, type: !2098, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!32, !24, !24, !14, !14}
!2100 = !{!2101, !2096, !2102, !2103}
!2101 = !DILocalVariable(name: "s1", arg: 1, scope: !2097, file: !1907, line: 62, type: !24)
!2102 = !DILocalVariable(name: "s27", arg: 3, scope: !2097, file: !1907, line: 62, type: !14)
!2103 = !DILocalVariable(name: "s28", arg: 4, scope: !2097, file: !1907, line: 62, type: !14)
!2104 = !DILocation(line: 62, column: 41, scope: !2097, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 83, column: 16, scope: !2106, inlinedAt: !2086)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !1907, line: 80, column: 11)
!2107 = distinct !DILexicalBlock(scope: !2093, file: !1907, line: 79, column: 5)
!2108 = !DILocation(line: 62, column: 50, scope: !2097, inlinedAt: !2105)
!2109 = !DILocation(line: 62, column: 60, scope: !2097, inlinedAt: !2105)
!2110 = !DILocation(line: 64, column: 7, scope: !2111, inlinedAt: !2105)
!2111 = !DILexicalBlockFile(scope: !2112, file: !1907, discriminator: 2)
!2112 = distinct !DILexicalBlock(scope: !2097, file: !1907, line: 64, column: 7)
!2113 = !DILocation(line: 228, column: 7, scope: !1888)
!2114 = !DILocation(line: 229, column: 12, scope: !2046)
!2115 = !DILocation(line: 229, column: 21, scope: !2046)
!2116 = !DILocation(line: 229, column: 5, scope: !2046)
!2117 = !DILocation(line: 231, column: 13, scope: !1888)
!2118 = !DILocation(line: 231, column: 11, scope: !1888)
!2119 = !DILocation(line: 231, column: 3, scope: !1888)
!2120 = !DILocation(line: 232, column: 1, scope: !1888)
!2121 = distinct !DISubprogram(name: "quotearg_alloc", scope: !178, file: !178, line: 791, type: !2122, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!13, !24, !16, !961}
!2124 = !{!2125, !2126, !2127}
!2125 = !DILocalVariable(name: "arg", arg: 1, scope: !2121, file: !178, line: 791, type: !24)
!2126 = !DILocalVariable(name: "argsize", arg: 2, scope: !2121, file: !178, line: 791, type: !16)
!2127 = !DILocalVariable(name: "o", arg: 3, scope: !2121, file: !178, line: 792, type: !961)
!2128 = !DILocation(line: 791, column: 29, scope: !2121)
!2129 = !DILocation(line: 791, column: 41, scope: !2121)
!2130 = !DILocation(line: 792, column: 47, scope: !2121)
!2131 = !DILocalVariable(name: "arg", arg: 1, scope: !2132, file: !178, line: 804, type: !24)
!2132 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !178, file: !178, line: 804, type: !2133, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!13, !24, !16, !591, !961}
!2135 = !{!2131, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143}
!2136 = !DILocalVariable(name: "argsize", arg: 2, scope: !2132, file: !178, line: 804, type: !16)
!2137 = !DILocalVariable(name: "size", arg: 3, scope: !2132, file: !178, line: 804, type: !591)
!2138 = !DILocalVariable(name: "o", arg: 4, scope: !2132, file: !178, line: 805, type: !961)
!2139 = !DILocalVariable(name: "p", scope: !2132, file: !178, line: 807, type: !961)
!2140 = !DILocalVariable(name: "e", scope: !2132, file: !178, line: 808, type: !32)
!2141 = !DILocalVariable(name: "flags", scope: !2132, file: !178, line: 810, type: !32)
!2142 = !DILocalVariable(name: "bufsize", scope: !2132, file: !178, line: 811, type: !16)
!2143 = !DILocalVariable(name: "buf", scope: !2132, file: !178, line: 815, type: !13)
!2144 = !DILocation(line: 804, column: 33, scope: !2132, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 794, column: 10, scope: !2121)
!2146 = !DILocation(line: 804, column: 45, scope: !2132, inlinedAt: !2145)
!2147 = !DILocation(line: 804, column: 62, scope: !2132, inlinedAt: !2145)
!2148 = !DILocation(line: 805, column: 51, scope: !2132, inlinedAt: !2145)
!2149 = !DILocation(line: 807, column: 37, scope: !2132, inlinedAt: !2145)
!2150 = !DILocation(line: 807, column: 33, scope: !2132, inlinedAt: !2145)
!2151 = !DILocation(line: 808, column: 11, scope: !2132, inlinedAt: !2145)
!2152 = !DILocation(line: 808, column: 7, scope: !2132, inlinedAt: !2145)
!2153 = !DILocation(line: 810, column: 18, scope: !2132, inlinedAt: !2145)
!2154 = !DILocation(line: 810, column: 24, scope: !2132, inlinedAt: !2145)
!2155 = !DILocation(line: 810, column: 7, scope: !2132, inlinedAt: !2145)
!2156 = !DILocation(line: 811, column: 69, scope: !2132, inlinedAt: !2145)
!2157 = !DILocation(line: 812, column: 53, scope: !2132, inlinedAt: !2145)
!2158 = !DILocation(line: 813, column: 49, scope: !2132, inlinedAt: !2145)
!2159 = !DILocation(line: 814, column: 49, scope: !2132, inlinedAt: !2145)
!2160 = !DILocation(line: 811, column: 20, scope: !2132, inlinedAt: !2145)
!2161 = !DILocation(line: 814, column: 62, scope: !2132, inlinedAt: !2145)
!2162 = !DILocation(line: 811, column: 10, scope: !2132, inlinedAt: !2145)
!2163 = !DILocalVariable(name: "n", arg: 1, scope: !2164, file: !587, line: 220, type: !16)
!2164 = distinct !DISubprogram(name: "xcharalloc", scope: !587, file: !587, line: 220, type: !2165, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!13, !16}
!2167 = !{!2163}
!2168 = !DILocation(line: 220, column: 20, scope: !2164, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 815, column: 15, scope: !2132, inlinedAt: !2145)
!2170 = !DILocation(line: 222, column: 10, scope: !2164, inlinedAt: !2169)
!2171 = !DILocation(line: 815, column: 9, scope: !2132, inlinedAt: !2145)
!2172 = !DILocation(line: 816, column: 60, scope: !2132, inlinedAt: !2145)
!2173 = !DILocation(line: 818, column: 32, scope: !2132, inlinedAt: !2145)
!2174 = !DILocation(line: 818, column: 47, scope: !2132, inlinedAt: !2145)
!2175 = !DILocation(line: 816, column: 3, scope: !2132, inlinedAt: !2145)
!2176 = !DILocation(line: 819, column: 9, scope: !2132, inlinedAt: !2145)
!2177 = !DILocation(line: 794, column: 3, scope: !2121)
!2178 = !DILocation(line: 804, column: 33, scope: !2132)
!2179 = !DILocation(line: 804, column: 45, scope: !2132)
!2180 = !DILocation(line: 804, column: 62, scope: !2132)
!2181 = !DILocation(line: 805, column: 51, scope: !2132)
!2182 = !DILocation(line: 807, column: 37, scope: !2132)
!2183 = !DILocation(line: 807, column: 33, scope: !2132)
!2184 = !DILocation(line: 808, column: 11, scope: !2132)
!2185 = !DILocation(line: 808, column: 7, scope: !2132)
!2186 = !DILocation(line: 810, column: 18, scope: !2132)
!2187 = !DILocation(line: 810, column: 27, scope: !2132)
!2188 = !DILocation(line: 810, column: 24, scope: !2132)
!2189 = !DILocation(line: 810, column: 7, scope: !2132)
!2190 = !DILocation(line: 811, column: 69, scope: !2132)
!2191 = !DILocation(line: 812, column: 53, scope: !2132)
!2192 = !DILocation(line: 813, column: 49, scope: !2132)
!2193 = !DILocation(line: 814, column: 49, scope: !2132)
!2194 = !DILocation(line: 811, column: 20, scope: !2132)
!2195 = !DILocation(line: 814, column: 62, scope: !2132)
!2196 = !DILocation(line: 811, column: 10, scope: !2132)
!2197 = !DILocation(line: 220, column: 20, scope: !2164, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 815, column: 15, scope: !2132)
!2199 = !DILocation(line: 222, column: 10, scope: !2164, inlinedAt: !2198)
!2200 = !DILocation(line: 815, column: 9, scope: !2132)
!2201 = !DILocation(line: 816, column: 60, scope: !2132)
!2202 = !DILocation(line: 818, column: 32, scope: !2132)
!2203 = !DILocation(line: 818, column: 47, scope: !2132)
!2204 = !DILocation(line: 816, column: 3, scope: !2132)
!2205 = !DILocation(line: 819, column: 9, scope: !2132)
!2206 = !DILocation(line: 820, column: 7, scope: !2132)
!2207 = !DILocation(line: 821, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2132, file: !178, line: 820, column: 7)
!2209 = !{!2210, !2210, i64 0}
!2210 = !{!"long", !638, i64 0}
!2211 = !DILocation(line: 821, column: 5, scope: !2208)
!2212 = !DILocation(line: 822, column: 3, scope: !2132)
!2213 = distinct !DISubprogram(name: "quotearg_free", scope: !178, file: !178, line: 840, type: !652, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2214)
!2214 = !{!2215, !2216}
!2215 = !DILocalVariable(name: "sv", scope: !2213, file: !178, line: 842, type: !205)
!2216 = !DILocalVariable(name: "i", scope: !2213, file: !178, line: 843, type: !32)
!2217 = !DILocation(line: 842, column: 24, scope: !2213)
!2218 = !DILocation(line: 842, column: 19, scope: !2213)
!2219 = !DILocation(line: 843, column: 7, scope: !2213)
!2220 = !DILocation(line: 844, column: 19, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2222, file: !178, discriminator: 1)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !178, line: 844, column: 3)
!2223 = distinct !DILexicalBlock(scope: !2213, file: !178, line: 844, column: 3)
!2224 = !DILocation(line: 844, column: 17, scope: !2221)
!2225 = !DILocation(line: 844, column: 3, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2223, file: !178, discriminator: 1)
!2227 = !DILocation(line: 845, column: 17, scope: !2222)
!2228 = !{!2229, !637, i64 8}
!2229 = !{!"slotvec", !2210, i64 0, !637, i64 8}
!2230 = !DILocation(line: 845, column: 5, scope: !2222)
!2231 = !DILocation(line: 844, column: 28, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2222, file: !178, discriminator: 2)
!2233 = distinct !{!2233, !2234, !2235}
!2234 = !DILocation(line: 844, column: 3, scope: !2223)
!2235 = !DILocation(line: 845, column: 20, scope: !2223)
!2236 = !DILocation(line: 846, column: 13, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2213, file: !178, line: 846, column: 7)
!2238 = !DILocation(line: 846, column: 17, scope: !2237)
!2239 = !DILocation(line: 846, column: 7, scope: !2213)
!2240 = !DILocation(line: 848, column: 7, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !178, line: 847, column: 5)
!2242 = !DILocation(line: 849, column: 21, scope: !2241)
!2243 = !{!2229, !2210, i64 0}
!2244 = !DILocation(line: 850, column: 20, scope: !2241)
!2245 = !DILocation(line: 851, column: 5, scope: !2241)
!2246 = !DILocation(line: 852, column: 10, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2213, file: !178, line: 852, column: 7)
!2248 = !DILocation(line: 852, column: 7, scope: !2213)
!2249 = !DILocation(line: 854, column: 13, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !178, line: 853, column: 5)
!2251 = !DILocation(line: 854, column: 7, scope: !2250)
!2252 = !DILocation(line: 855, column: 15, scope: !2250)
!2253 = !DILocation(line: 856, column: 5, scope: !2250)
!2254 = !DILocation(line: 857, column: 10, scope: !2213)
!2255 = !DILocation(line: 858, column: 1, scope: !2213)
!2256 = distinct !DISubprogram(name: "quotearg_n", scope: !178, file: !178, line: 922, type: !2257, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!13, !32, !24}
!2259 = !{!2260, !2261}
!2260 = !DILocalVariable(name: "n", arg: 1, scope: !2256, file: !178, line: 922, type: !32)
!2261 = !DILocalVariable(name: "arg", arg: 2, scope: !2256, file: !178, line: 922, type: !24)
!2262 = !DILocation(line: 922, column: 17, scope: !2256)
!2263 = !DILocation(line: 922, column: 32, scope: !2256)
!2264 = !DILocation(line: 924, column: 10, scope: !2256)
!2265 = !DILocation(line: 924, column: 3, scope: !2256)
!2266 = distinct !DISubprogram(name: "quotearg_n_options", scope: !178, file: !178, line: 869, type: !2267, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!13, !32, !24, !16, !961}
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2279, !2281, !2282, !2283}
!2270 = !DILocalVariable(name: "n", arg: 1, scope: !2266, file: !178, line: 869, type: !32)
!2271 = !DILocalVariable(name: "arg", arg: 2, scope: !2266, file: !178, line: 869, type: !24)
!2272 = !DILocalVariable(name: "argsize", arg: 3, scope: !2266, file: !178, line: 869, type: !16)
!2273 = !DILocalVariable(name: "options", arg: 4, scope: !2266, file: !178, line: 870, type: !961)
!2274 = !DILocalVariable(name: "e", scope: !2266, file: !178, line: 872, type: !32)
!2275 = !DILocalVariable(name: "sv", scope: !2266, file: !178, line: 874, type: !205)
!2276 = !DILocalVariable(name: "preallocated", scope: !2277, file: !178, line: 881, type: !39)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !178, line: 880, column: 5)
!2278 = distinct !DILexicalBlock(scope: !2266, file: !178, line: 879, column: 7)
!2279 = !DILocalVariable(name: "size", scope: !2280, file: !178, line: 894, type: !16)
!2280 = distinct !DILexicalBlock(scope: !2266, file: !178, line: 893, column: 3)
!2281 = !DILocalVariable(name: "val", scope: !2280, file: !178, line: 895, type: !13)
!2282 = !DILocalVariable(name: "flags", scope: !2280, file: !178, line: 897, type: !32)
!2283 = !DILocalVariable(name: "qsize", scope: !2280, file: !178, line: 898, type: !16)
!2284 = !DILocation(line: 869, column: 25, scope: !2266)
!2285 = !DILocation(line: 869, column: 40, scope: !2266)
!2286 = !DILocation(line: 869, column: 52, scope: !2266)
!2287 = !DILocation(line: 870, column: 51, scope: !2266)
!2288 = !DILocation(line: 872, column: 11, scope: !2266)
!2289 = !DILocation(line: 872, column: 7, scope: !2266)
!2290 = !DILocation(line: 874, column: 24, scope: !2266)
!2291 = !DILocation(line: 874, column: 19, scope: !2266)
!2292 = !DILocation(line: 876, column: 9, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2266, file: !178, line: 876, column: 7)
!2294 = !DILocation(line: 876, column: 7, scope: !2266)
!2295 = !DILocation(line: 877, column: 5, scope: !2293)
!2296 = !DILocation(line: 879, column: 7, scope: !2278)
!2297 = !DILocation(line: 879, column: 14, scope: !2278)
!2298 = !DILocation(line: 879, column: 7, scope: !2266)
!2299 = !DILocation(line: 881, column: 31, scope: !2277)
!2300 = !DILocation(line: 883, column: 67, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2277, file: !178, line: 883, column: 11)
!2302 = !DILocation(line: 883, column: 11, scope: !2277)
!2303 = !DILocation(line: 884, column: 9, scope: !2301)
!2304 = !DILocation(line: 886, column: 32, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2277, file: !178, discriminator: 3)
!2306 = !DILocation(line: 886, column: 61, scope: !2305)
!2307 = !DILocation(line: 886, column: 58, scope: !2305)
!2308 = !DILocation(line: 886, column: 66, scope: !2305)
!2309 = !DILocation(line: 886, column: 22, scope: !2305)
!2310 = !DILocation(line: 886, column: 15, scope: !2305)
!2311 = !DILocation(line: 887, column: 11, scope: !2277)
!2312 = !DILocation(line: 888, column: 15, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2277, file: !178, line: 887, column: 11)
!2314 = !{i64 0, i64 8, !2209, i64 8, i64 8, !636}
!2315 = !DILocation(line: 888, column: 9, scope: !2313)
!2316 = !DILocation(line: 889, column: 20, scope: !2277)
!2317 = !DILocation(line: 889, column: 18, scope: !2277)
!2318 = !DILocation(line: 889, column: 7, scope: !2277)
!2319 = !DILocation(line: 889, column: 38, scope: !2277)
!2320 = !DILocation(line: 889, column: 31, scope: !2277)
!2321 = !DILocation(line: 889, column: 48, scope: !2277)
!2322 = !DILocation(line: 890, column: 14, scope: !2277)
!2323 = !DILocation(line: 891, column: 5, scope: !2277)
!2324 = !DILocation(line: 894, column: 19, scope: !2280)
!2325 = !DILocation(line: 894, column: 25, scope: !2280)
!2326 = !DILocation(line: 894, column: 12, scope: !2280)
!2327 = !DILocation(line: 895, column: 23, scope: !2280)
!2328 = !DILocation(line: 895, column: 11, scope: !2280)
!2329 = !DILocation(line: 897, column: 26, scope: !2280)
!2330 = !DILocation(line: 897, column: 32, scope: !2280)
!2331 = !DILocation(line: 897, column: 9, scope: !2280)
!2332 = !DILocation(line: 899, column: 55, scope: !2280)
!2333 = !DILocation(line: 900, column: 46, scope: !2280)
!2334 = !DILocation(line: 901, column: 55, scope: !2280)
!2335 = !DILocation(line: 902, column: 55, scope: !2280)
!2336 = !DILocation(line: 898, column: 20, scope: !2280)
!2337 = !DILocation(line: 898, column: 12, scope: !2280)
!2338 = !DILocation(line: 904, column: 14, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2280, file: !178, line: 904, column: 9)
!2340 = !DILocation(line: 904, column: 9, scope: !2280)
!2341 = !DILocation(line: 906, column: 35, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !178, line: 905, column: 7)
!2343 = !DILocation(line: 906, column: 20, scope: !2342)
!2344 = !DILocation(line: 907, column: 17, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !178, line: 907, column: 13)
!2346 = !DILocation(line: 907, column: 13, scope: !2342)
!2347 = !DILocation(line: 908, column: 11, scope: !2345)
!2348 = !DILocation(line: 220, column: 20, scope: !2164, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 909, column: 27, scope: !2342)
!2350 = !DILocation(line: 222, column: 10, scope: !2164, inlinedAt: !2349)
!2351 = !DILocation(line: 909, column: 19, scope: !2342)
!2352 = !DILocation(line: 910, column: 69, scope: !2342)
!2353 = !DILocation(line: 912, column: 44, scope: !2342)
!2354 = !DILocation(line: 913, column: 44, scope: !2342)
!2355 = !DILocation(line: 910, column: 9, scope: !2342)
!2356 = !DILocation(line: 914, column: 7, scope: !2342)
!2357 = !DILocation(line: 916, column: 11, scope: !2280)
!2358 = !DILocation(line: 917, column: 5, scope: !2280)
!2359 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !178, file: !178, line: 928, type: !2360, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!13, !32, !24, !16}
!2362 = !{!2363, !2364, !2365}
!2363 = !DILocalVariable(name: "n", arg: 1, scope: !2359, file: !178, line: 928, type: !32)
!2364 = !DILocalVariable(name: "arg", arg: 2, scope: !2359, file: !178, line: 928, type: !24)
!2365 = !DILocalVariable(name: "argsize", arg: 3, scope: !2359, file: !178, line: 928, type: !16)
!2366 = !DILocation(line: 928, column: 21, scope: !2359)
!2367 = !DILocation(line: 928, column: 36, scope: !2359)
!2368 = !DILocation(line: 928, column: 48, scope: !2359)
!2369 = !DILocation(line: 930, column: 10, scope: !2359)
!2370 = !DILocation(line: 930, column: 3, scope: !2359)
!2371 = distinct !DISubprogram(name: "quotearg", scope: !178, file: !178, line: 934, type: !2372, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!13, !24}
!2374 = !{!2375}
!2375 = !DILocalVariable(name: "arg", arg: 1, scope: !2371, file: !178, line: 934, type: !24)
!2376 = !DILocation(line: 934, column: 23, scope: !2371)
!2377 = !DILocation(line: 922, column: 17, scope: !2256, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 936, column: 10, scope: !2371)
!2379 = !DILocation(line: 922, column: 32, scope: !2256, inlinedAt: !2378)
!2380 = !DILocation(line: 924, column: 10, scope: !2256, inlinedAt: !2378)
!2381 = !DILocation(line: 936, column: 3, scope: !2371)
!2382 = distinct !DISubprogram(name: "quotearg_mem", scope: !178, file: !178, line: 940, type: !2383, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!13, !24, !16}
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "arg", arg: 1, scope: !2382, file: !178, line: 940, type: !24)
!2387 = !DILocalVariable(name: "argsize", arg: 2, scope: !2382, file: !178, line: 940, type: !16)
!2388 = !DILocation(line: 940, column: 27, scope: !2382)
!2389 = !DILocation(line: 940, column: 39, scope: !2382)
!2390 = !DILocation(line: 928, column: 21, scope: !2359, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 942, column: 10, scope: !2382)
!2392 = !DILocation(line: 928, column: 36, scope: !2359, inlinedAt: !2391)
!2393 = !DILocation(line: 928, column: 48, scope: !2359, inlinedAt: !2391)
!2394 = !DILocation(line: 930, column: 10, scope: !2359, inlinedAt: !2391)
!2395 = !DILocation(line: 942, column: 3, scope: !2382)
!2396 = distinct !DISubprogram(name: "quotearg_n_style", scope: !178, file: !178, line: 946, type: !2397, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!13, !32, !139, !24}
!2399 = !{!2400, !2401, !2402, !2403}
!2400 = !DILocalVariable(name: "n", arg: 1, scope: !2396, file: !178, line: 946, type: !32)
!2401 = !DILocalVariable(name: "s", arg: 2, scope: !2396, file: !178, line: 946, type: !139)
!2402 = !DILocalVariable(name: "arg", arg: 3, scope: !2396, file: !178, line: 946, type: !24)
!2403 = !DILocalVariable(name: "o", scope: !2396, file: !178, line: 948, type: !962)
!2404 = !DILocalVariable(name: "o", scope: !2405, file: !178, line: 187, type: !185)
!2405 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !178, file: !178, line: 185, type: !2406, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!185, !139}
!2408 = !{!2409, !2404}
!2409 = !DILocalVariable(name: "style", arg: 1, scope: !2405, file: !178, line: 185, type: !139)
!2410 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2411 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 948, column: 36, scope: !2396)
!2413 = !DILocation(line: 946, column: 23, scope: !2396)
!2414 = !DILocation(line: 946, column: 45, scope: !2396)
!2415 = !DILocation(line: 946, column: 60, scope: !2396)
!2416 = !DILocation(line: 948, column: 3, scope: !2396)
!2417 = !DILocation(line: 948, column: 32, scope: !2396)
!2418 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2412)
!2419 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2412)
!2420 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2421 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2412)
!2422 = distinct !DILexicalBlock(scope: !2405, file: !178, line: 188, column: 7)
!2423 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2412)
!2424 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2412)
!2425 = !{!2426}
!2426 = distinct !{!2426, !2427, !"quoting_options_from_style: argument 0"}
!2427 = distinct !{!2427, !"quoting_options_from_style"}
!2428 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2412)
!2429 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2412)
!2430 = !DILocation(line: 949, column: 10, scope: !2396)
!2431 = !DILocation(line: 950, column: 1, scope: !2396)
!2432 = !DILocation(line: 949, column: 3, scope: !2396)
!2433 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !178, file: !178, line: 953, type: !2434, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!13, !32, !139, !24, !16}
!2436 = !{!2437, !2438, !2439, !2440, !2441}
!2437 = !DILocalVariable(name: "n", arg: 1, scope: !2433, file: !178, line: 953, type: !32)
!2438 = !DILocalVariable(name: "s", arg: 2, scope: !2433, file: !178, line: 953, type: !139)
!2439 = !DILocalVariable(name: "arg", arg: 3, scope: !2433, file: !178, line: 954, type: !24)
!2440 = !DILocalVariable(name: "argsize", arg: 4, scope: !2433, file: !178, line: 954, type: !16)
!2441 = !DILocalVariable(name: "o", scope: !2433, file: !178, line: 956, type: !962)
!2442 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 956, column: 36, scope: !2433)
!2444 = !DILocation(line: 953, column: 27, scope: !2433)
!2445 = !DILocation(line: 953, column: 49, scope: !2433)
!2446 = !DILocation(line: 954, column: 35, scope: !2433)
!2447 = !DILocation(line: 954, column: 47, scope: !2433)
!2448 = !DILocation(line: 956, column: 3, scope: !2433)
!2449 = !DILocation(line: 956, column: 32, scope: !2433)
!2450 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2443)
!2451 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2443)
!2452 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2443)
!2453 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2443)
!2454 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2443)
!2455 = !{!2456}
!2456 = distinct !{!2456, !2457, !"quoting_options_from_style: argument 0"}
!2457 = distinct !{!2457, !"quoting_options_from_style"}
!2458 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2443)
!2459 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2443)
!2460 = !DILocation(line: 957, column: 10, scope: !2433)
!2461 = !DILocation(line: 958, column: 1, scope: !2433)
!2462 = !DILocation(line: 957, column: 3, scope: !2433)
!2463 = distinct !DISubprogram(name: "quotearg_style", scope: !178, file: !178, line: 961, type: !2464, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!13, !139, !24}
!2466 = !{!2467, !2468}
!2467 = !DILocalVariable(name: "s", arg: 1, scope: !2463, file: !178, line: 961, type: !139)
!2468 = !DILocalVariable(name: "arg", arg: 2, scope: !2463, file: !178, line: 961, type: !24)
!2469 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 948, column: 36, scope: !2396, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 963, column: 10, scope: !2463)
!2472 = !DILocation(line: 961, column: 36, scope: !2463)
!2473 = !DILocation(line: 961, column: 51, scope: !2463)
!2474 = !DILocation(line: 946, column: 23, scope: !2396, inlinedAt: !2471)
!2475 = !DILocation(line: 946, column: 45, scope: !2396, inlinedAt: !2471)
!2476 = !DILocation(line: 946, column: 60, scope: !2396, inlinedAt: !2471)
!2477 = !DILocation(line: 948, column: 3, scope: !2396, inlinedAt: !2471)
!2478 = !DILocation(line: 948, column: 32, scope: !2396, inlinedAt: !2471)
!2479 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2470)
!2480 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2470)
!2481 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2470)
!2482 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2470)
!2483 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2470)
!2484 = !{!2485}
!2485 = distinct !{!2485, !2486, !"quoting_options_from_style: argument 0"}
!2486 = distinct !{!2486, !"quoting_options_from_style"}
!2487 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2470)
!2488 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2470)
!2489 = !DILocation(line: 949, column: 10, scope: !2396, inlinedAt: !2471)
!2490 = !DILocation(line: 950, column: 1, scope: !2396, inlinedAt: !2471)
!2491 = !DILocation(line: 963, column: 3, scope: !2463)
!2492 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !178, file: !178, line: 967, type: !2493, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!13, !139, !24, !16}
!2495 = !{!2496, !2497, !2498}
!2496 = !DILocalVariable(name: "s", arg: 1, scope: !2492, file: !178, line: 967, type: !139)
!2497 = !DILocalVariable(name: "arg", arg: 2, scope: !2492, file: !178, line: 967, type: !24)
!2498 = !DILocalVariable(name: "argsize", arg: 3, scope: !2492, file: !178, line: 967, type: !16)
!2499 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 956, column: 36, scope: !2433, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 969, column: 10, scope: !2492)
!2502 = !DILocation(line: 967, column: 40, scope: !2492)
!2503 = !DILocation(line: 967, column: 55, scope: !2492)
!2504 = !DILocation(line: 967, column: 67, scope: !2492)
!2505 = !DILocation(line: 953, column: 27, scope: !2433, inlinedAt: !2501)
!2506 = !DILocation(line: 953, column: 49, scope: !2433, inlinedAt: !2501)
!2507 = !DILocation(line: 954, column: 35, scope: !2433, inlinedAt: !2501)
!2508 = !DILocation(line: 954, column: 47, scope: !2433, inlinedAt: !2501)
!2509 = !DILocation(line: 956, column: 3, scope: !2433, inlinedAt: !2501)
!2510 = !DILocation(line: 956, column: 32, scope: !2433, inlinedAt: !2501)
!2511 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2500)
!2512 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2500)
!2513 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2500)
!2514 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2500)
!2515 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2500)
!2516 = !{!2517}
!2517 = distinct !{!2517, !2518, !"quoting_options_from_style: argument 0"}
!2518 = distinct !{!2518, !"quoting_options_from_style"}
!2519 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2500)
!2520 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2500)
!2521 = !DILocation(line: 957, column: 10, scope: !2433, inlinedAt: !2501)
!2522 = !DILocation(line: 958, column: 1, scope: !2433, inlinedAt: !2501)
!2523 = !DILocation(line: 969, column: 3, scope: !2492)
!2524 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !178, file: !178, line: 973, type: !2525, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!13, !24, !16, !14}
!2527 = !{!2528, !2529, !2530, !2531}
!2528 = !DILocalVariable(name: "arg", arg: 1, scope: !2524, file: !178, line: 973, type: !24)
!2529 = !DILocalVariable(name: "argsize", arg: 2, scope: !2524, file: !178, line: 973, type: !16)
!2530 = !DILocalVariable(name: "ch", arg: 3, scope: !2524, file: !178, line: 973, type: !14)
!2531 = !DILocalVariable(name: "options", scope: !2524, file: !178, line: 975, type: !185)
!2532 = !DILocation(line: 973, column: 32, scope: !2524)
!2533 = !DILocation(line: 973, column: 44, scope: !2524)
!2534 = !DILocation(line: 973, column: 58, scope: !2524)
!2535 = !DILocation(line: 975, column: 3, scope: !2524)
!2536 = !DILocation(line: 976, column: 13, scope: !2524)
!2537 = !{i64 0, i64 4, !728, i64 4, i64 4, !704, i64 8, i64 32, !728, i64 40, i64 8, !636, i64 48, i64 8, !636}
!2538 = !DILocation(line: 975, column: 26, scope: !2524)
!2539 = !DILocation(line: 144, column: 43, scope: !985, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 977, column: 3, scope: !2524)
!2541 = !DILocation(line: 144, column: 51, scope: !985, inlinedAt: !2540)
!2542 = !DILocation(line: 144, column: 58, scope: !985, inlinedAt: !2540)
!2543 = !DILocation(line: 146, column: 17, scope: !985, inlinedAt: !2540)
!2544 = !DILocation(line: 148, column: 62, scope: !1003, inlinedAt: !2540)
!2545 = !DILocation(line: 148, column: 57, scope: !1003, inlinedAt: !2540)
!2546 = !DILocation(line: 147, column: 17, scope: !985, inlinedAt: !2540)
!2547 = !DILocation(line: 149, column: 18, scope: !985, inlinedAt: !2540)
!2548 = !DILocation(line: 149, column: 15, scope: !985, inlinedAt: !2540)
!2549 = !DILocation(line: 149, column: 7, scope: !985, inlinedAt: !2540)
!2550 = !DILocation(line: 150, column: 12, scope: !985, inlinedAt: !2540)
!2551 = !DILocation(line: 150, column: 15, scope: !985, inlinedAt: !2540)
!2552 = !DILocation(line: 150, column: 25, scope: !985, inlinedAt: !2540)
!2553 = !DILocation(line: 150, column: 7, scope: !985, inlinedAt: !2540)
!2554 = !DILocation(line: 151, column: 18, scope: !985, inlinedAt: !2540)
!2555 = !DILocation(line: 151, column: 23, scope: !985, inlinedAt: !2540)
!2556 = !DILocation(line: 151, column: 6, scope: !985, inlinedAt: !2540)
!2557 = !DILocation(line: 978, column: 10, scope: !2524)
!2558 = !DILocation(line: 979, column: 1, scope: !2524)
!2559 = !DILocation(line: 978, column: 3, scope: !2524)
!2560 = distinct !DISubprogram(name: "quotearg_char", scope: !178, file: !178, line: 982, type: !2561, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!13, !24, !14}
!2563 = !{!2564, !2565}
!2564 = !DILocalVariable(name: "arg", arg: 1, scope: !2560, file: !178, line: 982, type: !24)
!2565 = !DILocalVariable(name: "ch", arg: 2, scope: !2560, file: !178, line: 982, type: !14)
!2566 = !DILocation(line: 982, column: 28, scope: !2560)
!2567 = !DILocation(line: 982, column: 38, scope: !2560)
!2568 = !DILocation(line: 973, column: 32, scope: !2524, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 984, column: 10, scope: !2560)
!2570 = !DILocation(line: 973, column: 44, scope: !2524, inlinedAt: !2569)
!2571 = !DILocation(line: 973, column: 58, scope: !2524, inlinedAt: !2569)
!2572 = !DILocation(line: 975, column: 3, scope: !2524, inlinedAt: !2569)
!2573 = !DILocation(line: 976, column: 13, scope: !2524, inlinedAt: !2569)
!2574 = !DILocation(line: 975, column: 26, scope: !2524, inlinedAt: !2569)
!2575 = !DILocation(line: 144, column: 43, scope: !985, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 977, column: 3, scope: !2524, inlinedAt: !2569)
!2577 = !DILocation(line: 144, column: 51, scope: !985, inlinedAt: !2576)
!2578 = !DILocation(line: 144, column: 58, scope: !985, inlinedAt: !2576)
!2579 = !DILocation(line: 146, column: 17, scope: !985, inlinedAt: !2576)
!2580 = !DILocation(line: 148, column: 62, scope: !1003, inlinedAt: !2576)
!2581 = !DILocation(line: 148, column: 57, scope: !1003, inlinedAt: !2576)
!2582 = !DILocation(line: 147, column: 17, scope: !985, inlinedAt: !2576)
!2583 = !DILocation(line: 149, column: 18, scope: !985, inlinedAt: !2576)
!2584 = !DILocation(line: 149, column: 15, scope: !985, inlinedAt: !2576)
!2585 = !DILocation(line: 149, column: 7, scope: !985, inlinedAt: !2576)
!2586 = !DILocation(line: 150, column: 12, scope: !985, inlinedAt: !2576)
!2587 = !DILocation(line: 150, column: 15, scope: !985, inlinedAt: !2576)
!2588 = !DILocation(line: 150, column: 25, scope: !985, inlinedAt: !2576)
!2589 = !DILocation(line: 150, column: 7, scope: !985, inlinedAt: !2576)
!2590 = !DILocation(line: 151, column: 18, scope: !985, inlinedAt: !2576)
!2591 = !DILocation(line: 151, column: 23, scope: !985, inlinedAt: !2576)
!2592 = !DILocation(line: 151, column: 6, scope: !985, inlinedAt: !2576)
!2593 = !DILocation(line: 978, column: 10, scope: !2524, inlinedAt: !2569)
!2594 = !DILocation(line: 979, column: 1, scope: !2524, inlinedAt: !2569)
!2595 = !DILocation(line: 984, column: 3, scope: !2560)
!2596 = distinct !DISubprogram(name: "quotearg_colon", scope: !178, file: !178, line: 988, type: !2372, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2597)
!2597 = !{!2598}
!2598 = !DILocalVariable(name: "arg", arg: 1, scope: !2596, file: !178, line: 988, type: !24)
!2599 = !DILocation(line: 988, column: 29, scope: !2596)
!2600 = !DILocation(line: 982, column: 28, scope: !2560, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 990, column: 10, scope: !2596)
!2602 = !DILocation(line: 982, column: 38, scope: !2560, inlinedAt: !2601)
!2603 = !DILocation(line: 973, column: 32, scope: !2524, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 984, column: 10, scope: !2560, inlinedAt: !2601)
!2605 = !DILocation(line: 973, column: 44, scope: !2524, inlinedAt: !2604)
!2606 = !DILocation(line: 973, column: 58, scope: !2524, inlinedAt: !2604)
!2607 = !DILocation(line: 975, column: 3, scope: !2524, inlinedAt: !2604)
!2608 = !DILocation(line: 976, column: 13, scope: !2524, inlinedAt: !2604)
!2609 = !DILocation(line: 975, column: 26, scope: !2524, inlinedAt: !2604)
!2610 = !DILocation(line: 144, column: 43, scope: !985, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 977, column: 3, scope: !2524, inlinedAt: !2604)
!2612 = !DILocation(line: 144, column: 51, scope: !985, inlinedAt: !2611)
!2613 = !DILocation(line: 144, column: 58, scope: !985, inlinedAt: !2611)
!2614 = !DILocation(line: 146, column: 17, scope: !985, inlinedAt: !2611)
!2615 = !DILocation(line: 148, column: 57, scope: !1003, inlinedAt: !2611)
!2616 = !DILocation(line: 147, column: 17, scope: !985, inlinedAt: !2611)
!2617 = !DILocation(line: 149, column: 7, scope: !985, inlinedAt: !2611)
!2618 = !DILocation(line: 150, column: 12, scope: !985, inlinedAt: !2611)
!2619 = !DILocation(line: 151, column: 6, scope: !985, inlinedAt: !2611)
!2620 = !DILocation(line: 978, column: 10, scope: !2524, inlinedAt: !2604)
!2621 = !DILocation(line: 979, column: 1, scope: !2524, inlinedAt: !2604)
!2622 = !DILocation(line: 990, column: 3, scope: !2596)
!2623 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !178, file: !178, line: 994, type: !2383, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2624)
!2624 = !{!2625, !2626}
!2625 = !DILocalVariable(name: "arg", arg: 1, scope: !2623, file: !178, line: 994, type: !24)
!2626 = !DILocalVariable(name: "argsize", arg: 2, scope: !2623, file: !178, line: 994, type: !16)
!2627 = !DILocation(line: 994, column: 33, scope: !2623)
!2628 = !DILocation(line: 994, column: 45, scope: !2623)
!2629 = !DILocation(line: 973, column: 32, scope: !2524, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 996, column: 10, scope: !2623)
!2631 = !DILocation(line: 973, column: 44, scope: !2524, inlinedAt: !2630)
!2632 = !DILocation(line: 973, column: 58, scope: !2524, inlinedAt: !2630)
!2633 = !DILocation(line: 975, column: 3, scope: !2524, inlinedAt: !2630)
!2634 = !DILocation(line: 976, column: 13, scope: !2524, inlinedAt: !2630)
!2635 = !DILocation(line: 975, column: 26, scope: !2524, inlinedAt: !2630)
!2636 = !DILocation(line: 144, column: 43, scope: !985, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 977, column: 3, scope: !2524, inlinedAt: !2630)
!2638 = !DILocation(line: 144, column: 51, scope: !985, inlinedAt: !2637)
!2639 = !DILocation(line: 144, column: 58, scope: !985, inlinedAt: !2637)
!2640 = !DILocation(line: 146, column: 17, scope: !985, inlinedAt: !2637)
!2641 = !DILocation(line: 148, column: 57, scope: !1003, inlinedAt: !2637)
!2642 = !DILocation(line: 147, column: 17, scope: !985, inlinedAt: !2637)
!2643 = !DILocation(line: 149, column: 7, scope: !985, inlinedAt: !2637)
!2644 = !DILocation(line: 150, column: 12, scope: !985, inlinedAt: !2637)
!2645 = !DILocation(line: 151, column: 6, scope: !985, inlinedAt: !2637)
!2646 = !DILocation(line: 978, column: 10, scope: !2524, inlinedAt: !2630)
!2647 = !DILocation(line: 979, column: 1, scope: !2524, inlinedAt: !2630)
!2648 = !DILocation(line: 996, column: 3, scope: !2623)
!2649 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !178, file: !178, line: 1000, type: !2397, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2650)
!2650 = !{!2651, !2652, !2653, !2654}
!2651 = !DILocalVariable(name: "n", arg: 1, scope: !2649, file: !178, line: 1000, type: !32)
!2652 = !DILocalVariable(name: "s", arg: 2, scope: !2649, file: !178, line: 1000, type: !139)
!2653 = !DILocalVariable(name: "arg", arg: 3, scope: !2649, file: !178, line: 1000, type: !24)
!2654 = !DILocalVariable(name: "options", scope: !2649, file: !178, line: 1002, type: !185)
!2655 = !DILocation(line: 187, column: 26, scope: !2405, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1003, column: 13, scope: !2649)
!2657 = !DILocation(line: 1000, column: 29, scope: !2649)
!2658 = !DILocation(line: 1000, column: 51, scope: !2649)
!2659 = !DILocation(line: 1000, column: 66, scope: !2649)
!2660 = !DILocation(line: 1002, column: 3, scope: !2649)
!2661 = !DILocation(line: 185, column: 48, scope: !2405, inlinedAt: !2656)
!2662 = !DILocation(line: 187, column: 3, scope: !2405, inlinedAt: !2656)
!2663 = !DILocation(line: 188, column: 13, scope: !2422, inlinedAt: !2656)
!2664 = !DILocation(line: 188, column: 7, scope: !2405, inlinedAt: !2656)
!2665 = !DILocation(line: 189, column: 5, scope: !2422, inlinedAt: !2656)
!2666 = !{!2667}
!2667 = distinct !{!2667, !2668, !"quoting_options_from_style: argument 0"}
!2668 = distinct !{!2668, !"quoting_options_from_style"}
!2669 = !DILocation(line: 191, column: 10, scope: !2405, inlinedAt: !2656)
!2670 = !DILocation(line: 192, column: 1, scope: !2405, inlinedAt: !2656)
!2671 = !DILocation(line: 1003, column: 13, scope: !2649)
!2672 = !DILocation(line: 1002, column: 26, scope: !2649)
!2673 = !DILocation(line: 144, column: 43, scope: !985, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 1004, column: 3, scope: !2649)
!2675 = !DILocation(line: 144, column: 51, scope: !985, inlinedAt: !2674)
!2676 = !DILocation(line: 144, column: 58, scope: !985, inlinedAt: !2674)
!2677 = !DILocation(line: 146, column: 17, scope: !985, inlinedAt: !2674)
!2678 = !DILocation(line: 148, column: 57, scope: !1003, inlinedAt: !2674)
!2679 = !DILocation(line: 147, column: 17, scope: !985, inlinedAt: !2674)
!2680 = !DILocation(line: 149, column: 7, scope: !985, inlinedAt: !2674)
!2681 = !DILocation(line: 150, column: 12, scope: !985, inlinedAt: !2674)
!2682 = !DILocation(line: 151, column: 6, scope: !985, inlinedAt: !2674)
!2683 = !DILocation(line: 1005, column: 10, scope: !2649)
!2684 = !DILocation(line: 1006, column: 1, scope: !2649)
!2685 = !DILocation(line: 1005, column: 3, scope: !2649)
!2686 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !178, file: !178, line: 1009, type: !2687, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!13, !32, !24, !24, !24}
!2689 = !{!2690, !2691, !2692, !2693}
!2690 = !DILocalVariable(name: "n", arg: 1, scope: !2686, file: !178, line: 1009, type: !32)
!2691 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2686, file: !178, line: 1009, type: !24)
!2692 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2686, file: !178, line: 1010, type: !24)
!2693 = !DILocalVariable(name: "arg", arg: 4, scope: !2686, file: !178, line: 1010, type: !24)
!2694 = !DILocation(line: 1009, column: 24, scope: !2686)
!2695 = !DILocation(line: 1009, column: 39, scope: !2686)
!2696 = !DILocation(line: 1010, column: 32, scope: !2686)
!2697 = !DILocation(line: 1010, column: 57, scope: !2686)
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2699, file: !178, line: 1017, type: !32)
!2699 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !178, file: !178, line: 1017, type: !2700, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!13, !32, !24, !24, !24, !16}
!2702 = !{!2698, !2703, !2704, !2705, !2706, !2707}
!2703 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2699, file: !178, line: 1017, type: !24)
!2704 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2699, file: !178, line: 1018, type: !24)
!2705 = !DILocalVariable(name: "arg", arg: 4, scope: !2699, file: !178, line: 1019, type: !24)
!2706 = !DILocalVariable(name: "argsize", arg: 5, scope: !2699, file: !178, line: 1019, type: !16)
!2707 = !DILocalVariable(name: "o", scope: !2699, file: !178, line: 1021, type: !185)
!2708 = !DILocation(line: 1017, column: 28, scope: !2699, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1012, column: 10, scope: !2686)
!2710 = !DILocation(line: 1017, column: 43, scope: !2699, inlinedAt: !2709)
!2711 = !DILocation(line: 1018, column: 36, scope: !2699, inlinedAt: !2709)
!2712 = !DILocation(line: 1019, column: 36, scope: !2699, inlinedAt: !2709)
!2713 = !DILocation(line: 1019, column: 48, scope: !2699, inlinedAt: !2709)
!2714 = !DILocation(line: 1021, column: 3, scope: !2699, inlinedAt: !2709)
!2715 = !DILocation(line: 1021, column: 30, scope: !2699, inlinedAt: !2709)
!2716 = !DILocation(line: 1021, column: 26, scope: !2699, inlinedAt: !2709)
!2717 = !DILocation(line: 171, column: 45, scope: !1035, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1022, column: 3, scope: !2699, inlinedAt: !2709)
!2719 = !DILocation(line: 172, column: 33, scope: !1035, inlinedAt: !2718)
!2720 = !DILocation(line: 172, column: 57, scope: !1035, inlinedAt: !2718)
!2721 = !DILocation(line: 176, column: 6, scope: !1035, inlinedAt: !2718)
!2722 = !DILocation(line: 176, column: 12, scope: !1035, inlinedAt: !2718)
!2723 = !DILocation(line: 177, column: 8, scope: !1051, inlinedAt: !2718)
!2724 = !DILocation(line: 177, column: 23, scope: !1053, inlinedAt: !2718)
!2725 = !DILocation(line: 177, column: 19, scope: !1051, inlinedAt: !2718)
!2726 = !DILocation(line: 178, column: 5, scope: !1051, inlinedAt: !2718)
!2727 = !DILocation(line: 179, column: 6, scope: !1035, inlinedAt: !2718)
!2728 = !DILocation(line: 179, column: 17, scope: !1035, inlinedAt: !2718)
!2729 = !DILocation(line: 180, column: 6, scope: !1035, inlinedAt: !2718)
!2730 = !DILocation(line: 180, column: 18, scope: !1035, inlinedAt: !2718)
!2731 = !DILocation(line: 1023, column: 10, scope: !2699, inlinedAt: !2709)
!2732 = !DILocation(line: 1024, column: 1, scope: !2699, inlinedAt: !2709)
!2733 = !DILocation(line: 1012, column: 3, scope: !2686)
!2734 = !DILocation(line: 1017, column: 28, scope: !2699)
!2735 = !DILocation(line: 1017, column: 43, scope: !2699)
!2736 = !DILocation(line: 1018, column: 36, scope: !2699)
!2737 = !DILocation(line: 1019, column: 36, scope: !2699)
!2738 = !DILocation(line: 1019, column: 48, scope: !2699)
!2739 = !DILocation(line: 1021, column: 3, scope: !2699)
!2740 = !DILocation(line: 1021, column: 30, scope: !2699)
!2741 = !DILocation(line: 1021, column: 26, scope: !2699)
!2742 = !DILocation(line: 171, column: 45, scope: !1035, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 1022, column: 3, scope: !2699)
!2744 = !DILocation(line: 172, column: 33, scope: !1035, inlinedAt: !2743)
!2745 = !DILocation(line: 172, column: 57, scope: !1035, inlinedAt: !2743)
!2746 = !DILocation(line: 176, column: 6, scope: !1035, inlinedAt: !2743)
!2747 = !DILocation(line: 176, column: 12, scope: !1035, inlinedAt: !2743)
!2748 = !DILocation(line: 177, column: 8, scope: !1051, inlinedAt: !2743)
!2749 = !DILocation(line: 177, column: 23, scope: !1053, inlinedAt: !2743)
!2750 = !DILocation(line: 177, column: 19, scope: !1051, inlinedAt: !2743)
!2751 = !DILocation(line: 178, column: 5, scope: !1051, inlinedAt: !2743)
!2752 = !DILocation(line: 179, column: 6, scope: !1035, inlinedAt: !2743)
!2753 = !DILocation(line: 179, column: 17, scope: !1035, inlinedAt: !2743)
!2754 = !DILocation(line: 180, column: 6, scope: !1035, inlinedAt: !2743)
!2755 = !DILocation(line: 180, column: 18, scope: !1035, inlinedAt: !2743)
!2756 = !DILocation(line: 1023, column: 10, scope: !2699)
!2757 = !DILocation(line: 1024, column: 1, scope: !2699)
!2758 = !DILocation(line: 1023, column: 3, scope: !2699)
!2759 = distinct !DISubprogram(name: "quotearg_custom", scope: !178, file: !178, line: 1027, type: !2760, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!13, !24, !24, !24}
!2762 = !{!2763, !2764, !2765}
!2763 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2759, file: !178, line: 1027, type: !24)
!2764 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2759, file: !178, line: 1027, type: !24)
!2765 = !DILocalVariable(name: "arg", arg: 3, scope: !2759, file: !178, line: 1028, type: !24)
!2766 = !DILocation(line: 1027, column: 30, scope: !2759)
!2767 = !DILocation(line: 1027, column: 54, scope: !2759)
!2768 = !DILocation(line: 1028, column: 30, scope: !2759)
!2769 = !DILocation(line: 1009, column: 24, scope: !2686, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1030, column: 10, scope: !2759)
!2771 = !DILocation(line: 1009, column: 39, scope: !2686, inlinedAt: !2770)
!2772 = !DILocation(line: 1010, column: 32, scope: !2686, inlinedAt: !2770)
!2773 = !DILocation(line: 1010, column: 57, scope: !2686, inlinedAt: !2770)
!2774 = !DILocation(line: 1017, column: 28, scope: !2699, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1012, column: 10, scope: !2686, inlinedAt: !2770)
!2776 = !DILocation(line: 1017, column: 43, scope: !2699, inlinedAt: !2775)
!2777 = !DILocation(line: 1018, column: 36, scope: !2699, inlinedAt: !2775)
!2778 = !DILocation(line: 1019, column: 36, scope: !2699, inlinedAt: !2775)
!2779 = !DILocation(line: 1019, column: 48, scope: !2699, inlinedAt: !2775)
!2780 = !DILocation(line: 1021, column: 3, scope: !2699, inlinedAt: !2775)
!2781 = !DILocation(line: 1021, column: 30, scope: !2699, inlinedAt: !2775)
!2782 = !DILocation(line: 1021, column: 26, scope: !2699, inlinedAt: !2775)
!2783 = !DILocation(line: 171, column: 45, scope: !1035, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 1022, column: 3, scope: !2699, inlinedAt: !2775)
!2785 = !DILocation(line: 172, column: 33, scope: !1035, inlinedAt: !2784)
!2786 = !DILocation(line: 172, column: 57, scope: !1035, inlinedAt: !2784)
!2787 = !DILocation(line: 176, column: 6, scope: !1035, inlinedAt: !2784)
!2788 = !DILocation(line: 176, column: 12, scope: !1035, inlinedAt: !2784)
!2789 = !DILocation(line: 177, column: 8, scope: !1051, inlinedAt: !2784)
!2790 = !DILocation(line: 177, column: 23, scope: !1053, inlinedAt: !2784)
!2791 = !DILocation(line: 177, column: 19, scope: !1051, inlinedAt: !2784)
!2792 = !DILocation(line: 178, column: 5, scope: !1051, inlinedAt: !2784)
!2793 = !DILocation(line: 179, column: 6, scope: !1035, inlinedAt: !2784)
!2794 = !DILocation(line: 179, column: 17, scope: !1035, inlinedAt: !2784)
!2795 = !DILocation(line: 180, column: 6, scope: !1035, inlinedAt: !2784)
!2796 = !DILocation(line: 180, column: 18, scope: !1035, inlinedAt: !2784)
!2797 = !DILocation(line: 1023, column: 10, scope: !2699, inlinedAt: !2775)
!2798 = !DILocation(line: 1024, column: 1, scope: !2699, inlinedAt: !2775)
!2799 = !DILocation(line: 1030, column: 3, scope: !2759)
!2800 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !178, file: !178, line: 1034, type: !2801, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!13, !24, !24, !24, !16}
!2803 = !{!2804, !2805, !2806, !2807}
!2804 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2800, file: !178, line: 1034, type: !24)
!2805 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2800, file: !178, line: 1034, type: !24)
!2806 = !DILocalVariable(name: "arg", arg: 3, scope: !2800, file: !178, line: 1035, type: !24)
!2807 = !DILocalVariable(name: "argsize", arg: 4, scope: !2800, file: !178, line: 1035, type: !16)
!2808 = !DILocation(line: 1034, column: 34, scope: !2800)
!2809 = !DILocation(line: 1034, column: 58, scope: !2800)
!2810 = !DILocation(line: 1035, column: 34, scope: !2800)
!2811 = !DILocation(line: 1035, column: 46, scope: !2800)
!2812 = !DILocation(line: 1017, column: 28, scope: !2699, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1037, column: 10, scope: !2800)
!2814 = !DILocation(line: 1017, column: 43, scope: !2699, inlinedAt: !2813)
!2815 = !DILocation(line: 1018, column: 36, scope: !2699, inlinedAt: !2813)
!2816 = !DILocation(line: 1019, column: 36, scope: !2699, inlinedAt: !2813)
!2817 = !DILocation(line: 1019, column: 48, scope: !2699, inlinedAt: !2813)
!2818 = !DILocation(line: 1021, column: 3, scope: !2699, inlinedAt: !2813)
!2819 = !DILocation(line: 1021, column: 30, scope: !2699, inlinedAt: !2813)
!2820 = !DILocation(line: 1021, column: 26, scope: !2699, inlinedAt: !2813)
!2821 = !DILocation(line: 171, column: 45, scope: !1035, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1022, column: 3, scope: !2699, inlinedAt: !2813)
!2823 = !DILocation(line: 172, column: 33, scope: !1035, inlinedAt: !2822)
!2824 = !DILocation(line: 172, column: 57, scope: !1035, inlinedAt: !2822)
!2825 = !DILocation(line: 176, column: 6, scope: !1035, inlinedAt: !2822)
!2826 = !DILocation(line: 176, column: 12, scope: !1035, inlinedAt: !2822)
!2827 = !DILocation(line: 177, column: 8, scope: !1051, inlinedAt: !2822)
!2828 = !DILocation(line: 177, column: 23, scope: !1053, inlinedAt: !2822)
!2829 = !DILocation(line: 177, column: 19, scope: !1051, inlinedAt: !2822)
!2830 = !DILocation(line: 178, column: 5, scope: !1051, inlinedAt: !2822)
!2831 = !DILocation(line: 179, column: 6, scope: !1035, inlinedAt: !2822)
!2832 = !DILocation(line: 179, column: 17, scope: !1035, inlinedAt: !2822)
!2833 = !DILocation(line: 180, column: 6, scope: !1035, inlinedAt: !2822)
!2834 = !DILocation(line: 180, column: 18, scope: !1035, inlinedAt: !2822)
!2835 = !DILocation(line: 1023, column: 10, scope: !2699, inlinedAt: !2813)
!2836 = !DILocation(line: 1024, column: 1, scope: !2699, inlinedAt: !2813)
!2837 = !DILocation(line: 1037, column: 3, scope: !2800)
!2838 = distinct !DISubprogram(name: "quote_n_mem", scope: !178, file: !178, line: 1052, type: !2839, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!24, !32, !24, !16}
!2841 = !{!2842, !2843, !2844}
!2842 = !DILocalVariable(name: "n", arg: 1, scope: !2838, file: !178, line: 1052, type: !32)
!2843 = !DILocalVariable(name: "arg", arg: 2, scope: !2838, file: !178, line: 1052, type: !24)
!2844 = !DILocalVariable(name: "argsize", arg: 3, scope: !2838, file: !178, line: 1052, type: !16)
!2845 = !DILocation(line: 1052, column: 18, scope: !2838)
!2846 = !DILocation(line: 1052, column: 33, scope: !2838)
!2847 = !DILocation(line: 1052, column: 45, scope: !2838)
!2848 = !DILocation(line: 1054, column: 10, scope: !2838)
!2849 = !DILocation(line: 1054, column: 3, scope: !2838)
!2850 = distinct !DISubprogram(name: "quote_mem", scope: !178, file: !178, line: 1058, type: !2851, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!24, !24, !16}
!2853 = !{!2854, !2855}
!2854 = !DILocalVariable(name: "arg", arg: 1, scope: !2850, file: !178, line: 1058, type: !24)
!2855 = !DILocalVariable(name: "argsize", arg: 2, scope: !2850, file: !178, line: 1058, type: !16)
!2856 = !DILocation(line: 1058, column: 24, scope: !2850)
!2857 = !DILocation(line: 1058, column: 36, scope: !2850)
!2858 = !DILocation(line: 1052, column: 18, scope: !2838, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 1060, column: 10, scope: !2850)
!2860 = !DILocation(line: 1052, column: 33, scope: !2838, inlinedAt: !2859)
!2861 = !DILocation(line: 1052, column: 45, scope: !2838, inlinedAt: !2859)
!2862 = !DILocation(line: 1054, column: 10, scope: !2838, inlinedAt: !2859)
!2863 = !DILocation(line: 1060, column: 3, scope: !2850)
!2864 = distinct !DISubprogram(name: "quote_n", scope: !178, file: !178, line: 1064, type: !2865, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!24, !32, !24}
!2867 = !{!2868, !2869}
!2868 = !DILocalVariable(name: "n", arg: 1, scope: !2864, file: !178, line: 1064, type: !32)
!2869 = !DILocalVariable(name: "arg", arg: 2, scope: !2864, file: !178, line: 1064, type: !24)
!2870 = !DILocation(line: 1064, column: 14, scope: !2864)
!2871 = !DILocation(line: 1064, column: 29, scope: !2864)
!2872 = !DILocation(line: 1052, column: 18, scope: !2838, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1066, column: 10, scope: !2864)
!2874 = !DILocation(line: 1052, column: 33, scope: !2838, inlinedAt: !2873)
!2875 = !DILocation(line: 1052, column: 45, scope: !2838, inlinedAt: !2873)
!2876 = !DILocation(line: 1054, column: 10, scope: !2838, inlinedAt: !2873)
!2877 = !DILocation(line: 1066, column: 3, scope: !2864)
!2878 = distinct !DISubprogram(name: "quote", scope: !178, file: !178, line: 1070, type: !2879, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !136, variables: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!24, !24}
!2881 = !{!2882}
!2882 = !DILocalVariable(name: "arg", arg: 1, scope: !2878, file: !178, line: 1070, type: !24)
!2883 = !DILocation(line: 1070, column: 20, scope: !2878)
!2884 = !DILocation(line: 1064, column: 14, scope: !2864, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1072, column: 10, scope: !2878)
!2886 = !DILocation(line: 1064, column: 29, scope: !2864, inlinedAt: !2885)
!2887 = !DILocation(line: 1052, column: 18, scope: !2838, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 1066, column: 10, scope: !2864, inlinedAt: !2885)
!2889 = !DILocation(line: 1052, column: 33, scope: !2838, inlinedAt: !2888)
!2890 = !DILocation(line: 1052, column: 45, scope: !2838, inlinedAt: !2888)
!2891 = !DILocation(line: 1054, column: 10, scope: !2838, inlinedAt: !2888)
!2892 = !DILocation(line: 1072, column: 3, scope: !2878)
!2893 = distinct !DISubprogram(name: "version_etc_arn", scope: !579, file: !579, line: 62, type: !2894, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !2950)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2896, !24, !24, !24, !2949, !16}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 49, baseType: !2899)
!2898 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !2901)
!2900 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2922, !2923, !2924, !2925, !2929, !2930, !2932, !2934, !2937, !2939, !2940, !2941, !2942, !2943, !2944, !2945}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2899, file: !2900, line: 242, baseType: !32, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2899, file: !2900, line: 247, baseType: !13, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2899, file: !2900, line: 248, baseType: !13, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2899, file: !2900, line: 249, baseType: !13, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2899, file: !2900, line: 250, baseType: !13, size: 64, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2899, file: !2900, line: 251, baseType: !13, size: 64, offset: 320)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2899, file: !2900, line: 252, baseType: !13, size: 64, offset: 384)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2899, file: !2900, line: 253, baseType: !13, size: 64, offset: 448)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2899, file: !2900, line: 254, baseType: !13, size: 64, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2899, file: !2900, line: 256, baseType: !13, size: 64, offset: 576)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2899, file: !2900, line: 257, baseType: !13, size: 64, offset: 640)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2899, file: !2900, line: 258, baseType: !13, size: 64, offset: 704)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2899, file: !2900, line: 260, baseType: !2915, size: 64, offset: 768)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !2917)
!2917 = !{!2918, !2919, !2921}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2916, file: !2900, line: 157, baseType: !2915, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2916, file: !2900, line: 158, baseType: !2920, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2916, file: !2900, line: 162, baseType: !32, size: 32, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2899, file: !2900, line: 262, baseType: !2920, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2899, file: !2900, line: 264, baseType: !32, size: 32, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2899, file: !2900, line: 268, baseType: !32, size: 32, offset: 928)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2899, file: !2900, line: 270, baseType: !2926, size: 64, offset: 960)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2927, line: 140, baseType: !2928)
!2927 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2928 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2899, file: !2900, line: 274, baseType: !174, size: 16, offset: 1024)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2899, file: !2900, line: 275, baseType: !2931, size: 8, offset: 1040)
!2931 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2899, file: !2900, line: 276, baseType: !2933, size: 8, offset: 1048)
!2933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !63)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2899, file: !2900, line: 280, baseType: !2935, size: 64, offset: 1088)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2900, line: 150, baseType: null)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2899, file: !2900, line: 289, baseType: !2938, size: 64, offset: 1152)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2927, line: 141, baseType: !2928)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2899, file: !2900, line: 297, baseType: !15, size: 64, offset: 1216)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2899, file: !2900, line: 298, baseType: !15, size: 64, offset: 1280)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2899, file: !2900, line: 299, baseType: !15, size: 64, offset: 1344)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2899, file: !2900, line: 300, baseType: !15, size: 64, offset: 1408)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2899, file: !2900, line: 302, baseType: !16, size: 64, offset: 1472)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2899, file: !2900, line: 303, baseType: !32, size: 32, offset: 1536)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2899, file: !2900, line: 305, baseType: !2946, size: 160, offset: 1568)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !2947)
!2947 = !{!2948}
!2948 = !DISubrange(count: 20)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956}
!2951 = !DILocalVariable(name: "stream", arg: 1, scope: !2893, file: !579, line: 62, type: !2896)
!2952 = !DILocalVariable(name: "command_name", arg: 2, scope: !2893, file: !579, line: 63, type: !24)
!2953 = !DILocalVariable(name: "package", arg: 3, scope: !2893, file: !579, line: 63, type: !24)
!2954 = !DILocalVariable(name: "version", arg: 4, scope: !2893, file: !579, line: 64, type: !24)
!2955 = !DILocalVariable(name: "authors", arg: 5, scope: !2893, file: !579, line: 65, type: !2949)
!2956 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2893, file: !579, line: 65, type: !16)
!2957 = !DILocation(line: 62, column: 24, scope: !2893)
!2958 = !DILocation(line: 63, column: 30, scope: !2893)
!2959 = !DILocation(line: 63, column: 56, scope: !2893)
!2960 = !DILocation(line: 64, column: 30, scope: !2893)
!2961 = !DILocation(line: 65, column: 39, scope: !2893)
!2962 = !DILocation(line: 65, column: 55, scope: !2893)
!2963 = !DILocation(line: 67, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2893, file: !579, line: 67, column: 7)
!2965 = !DILocation(line: 67, column: 7, scope: !2893)
!2966 = !DILocation(line: 68, column: 5, scope: !2964)
!2967 = !DILocation(line: 70, column: 5, scope: !2964)
!2968 = !DILocation(line: 84, column: 3, scope: !2893)
!2969 = !DILocation(line: 84, column: 3, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2893, file: !579, discriminator: 1)
!2971 = !DILocation(line: 86, column: 3, scope: !2893)
!2972 = !DILocation(line: 86, column: 3, scope: !2970)
!2973 = !DILocation(line: 95, column: 3, scope: !2893)
!2974 = !DILocation(line: 99, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2893, file: !579, line: 96, column: 5)
!2976 = !DILocation(line: 102, column: 7, scope: !2975)
!2977 = !DILocation(line: 102, column: 7, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2975, file: !579, discriminator: 1)
!2979 = !DILocation(line: 103, column: 7, scope: !2975)
!2980 = !DILocation(line: 106, column: 7, scope: !2975)
!2981 = !DILocation(line: 106, column: 7, scope: !2978)
!2982 = !DILocation(line: 107, column: 7, scope: !2975)
!2983 = !DILocation(line: 110, column: 7, scope: !2975)
!2984 = !DILocation(line: 110, column: 7, scope: !2978)
!2985 = !DILocation(line: 112, column: 7, scope: !2975)
!2986 = !DILocation(line: 117, column: 7, scope: !2975)
!2987 = !DILocation(line: 117, column: 7, scope: !2978)
!2988 = !DILocation(line: 119, column: 7, scope: !2975)
!2989 = !DILocation(line: 124, column: 7, scope: !2975)
!2990 = !DILocation(line: 124, column: 7, scope: !2978)
!2991 = !DILocation(line: 126, column: 7, scope: !2975)
!2992 = !DILocation(line: 131, column: 7, scope: !2975)
!2993 = !DILocation(line: 131, column: 7, scope: !2978)
!2994 = !DILocation(line: 134, column: 7, scope: !2975)
!2995 = !DILocation(line: 139, column: 7, scope: !2975)
!2996 = !DILocation(line: 139, column: 7, scope: !2978)
!2997 = !DILocation(line: 142, column: 7, scope: !2975)
!2998 = !DILocation(line: 147, column: 7, scope: !2975)
!2999 = !DILocation(line: 147, column: 7, scope: !2978)
!3000 = !DILocation(line: 151, column: 7, scope: !2975)
!3001 = !DILocation(line: 156, column: 7, scope: !2975)
!3002 = !DILocation(line: 156, column: 7, scope: !2978)
!3003 = !DILocation(line: 160, column: 7, scope: !2975)
!3004 = !DILocation(line: 167, column: 7, scope: !2975)
!3005 = !DILocation(line: 167, column: 7, scope: !2978)
!3006 = !DILocation(line: 171, column: 7, scope: !2975)
!3007 = !DILocation(line: 173, column: 1, scope: !2893)
!3008 = distinct !DISubprogram(name: "version_etc_ar", scope: !579, file: !579, line: 180, type: !3009, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !2896, !24, !24, !24, !2949}
!3011 = !{!3012, !3013, !3014, !3015, !3016, !3017}
!3012 = !DILocalVariable(name: "stream", arg: 1, scope: !3008, file: !579, line: 180, type: !2896)
!3013 = !DILocalVariable(name: "command_name", arg: 2, scope: !3008, file: !579, line: 181, type: !24)
!3014 = !DILocalVariable(name: "package", arg: 3, scope: !3008, file: !579, line: 181, type: !24)
!3015 = !DILocalVariable(name: "version", arg: 4, scope: !3008, file: !579, line: 182, type: !24)
!3016 = !DILocalVariable(name: "authors", arg: 5, scope: !3008, file: !579, line: 182, type: !2949)
!3017 = !DILocalVariable(name: "n_authors", scope: !3008, file: !579, line: 184, type: !16)
!3018 = !DILocation(line: 180, column: 23, scope: !3008)
!3019 = !DILocation(line: 181, column: 29, scope: !3008)
!3020 = !DILocation(line: 181, column: 55, scope: !3008)
!3021 = !DILocation(line: 182, column: 29, scope: !3008)
!3022 = !DILocation(line: 182, column: 59, scope: !3008)
!3023 = !DILocation(line: 184, column: 10, scope: !3008)
!3024 = !DILocation(line: 186, column: 8, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3008, file: !579, line: 186, column: 3)
!3026 = !DILocation(line: 186, column: 23, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !3028, file: !579, discriminator: 1)
!3028 = distinct !DILexicalBlock(scope: !3025, file: !579, line: 186, column: 3)
!3029 = !DILocation(line: 186, column: 3, scope: !3030)
!3030 = !DILexicalBlockFile(scope: !3025, file: !579, discriminator: 1)
!3031 = !DILocation(line: 186, column: 52, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !3028, file: !579, discriminator: 3)
!3033 = distinct !{!3033, !3034, !3035}
!3034 = !DILocation(line: 186, column: 3, scope: !3025)
!3035 = !DILocation(line: 187, column: 5, scope: !3025)
!3036 = !DILocation(line: 188, column: 3, scope: !3008)
!3037 = !DILocation(line: 189, column: 1, scope: !3008)
!3038 = distinct !DISubprogram(name: "version_etc_va", scope: !579, file: !579, line: 196, type: !3039, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3048)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2896, !24, !24, !24, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !576, line: 189, size: 192, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3047}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3042, file: !576, line: 189, baseType: !191, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3042, file: !576, line: 189, baseType: !191, size: 32, offset: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3042, file: !576, line: 189, baseType: !15, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3042, file: !576, line: 189, baseType: !15, size: 64, offset: 128)
!3048 = !{!3049, !3050, !3051, !3052, !3053, !3054, !3055}
!3049 = !DILocalVariable(name: "stream", arg: 1, scope: !3038, file: !579, line: 196, type: !2896)
!3050 = !DILocalVariable(name: "command_name", arg: 2, scope: !3038, file: !579, line: 197, type: !24)
!3051 = !DILocalVariable(name: "package", arg: 3, scope: !3038, file: !579, line: 197, type: !24)
!3052 = !DILocalVariable(name: "version", arg: 4, scope: !3038, file: !579, line: 198, type: !24)
!3053 = !DILocalVariable(name: "authors", arg: 5, scope: !3038, file: !579, line: 198, type: !3041)
!3054 = !DILocalVariable(name: "n_authors", scope: !3038, file: !579, line: 200, type: !16)
!3055 = !DILocalVariable(name: "authtab", scope: !3038, file: !579, line: 201, type: !3056)
!3056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 640, elements: !181)
!3057 = !DILocation(line: 196, column: 23, scope: !3038)
!3058 = !DILocation(line: 197, column: 29, scope: !3038)
!3059 = !DILocation(line: 197, column: 55, scope: !3038)
!3060 = !DILocation(line: 198, column: 29, scope: !3038)
!3061 = !DILocation(line: 198, column: 46, scope: !3038)
!3062 = !DILocation(line: 201, column: 3, scope: !3038)
!3063 = !DILocation(line: 201, column: 15, scope: !3038)
!3064 = !DILocation(line: 200, column: 10, scope: !3038)
!3065 = !DILocation(line: 205, column: 35, scope: !3066)
!3066 = !DILexicalBlockFile(scope: !3067, file: !579, discriminator: 1)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !579, line: 203, column: 3)
!3068 = distinct !DILexicalBlock(scope: !3038, file: !579, line: 203, column: 3)
!3069 = !DILocation(line: 205, column: 35, scope: !3070)
!3070 = !DILexicalBlockFile(scope: !3067, file: !579, discriminator: 2)
!3071 = !DILocation(line: 205, column: 35, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !3067, file: !579, discriminator: 3)
!3073 = !DILocation(line: 205, column: 35, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3067, file: !579, discriminator: 4)
!3075 = !DILocation(line: 205, column: 14, scope: !3074)
!3076 = !DILocation(line: 205, column: 33, scope: !3074)
!3077 = !DILocation(line: 205, column: 67, scope: !3074)
!3078 = !DILocation(line: 203, column: 3, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !3068, file: !579, discriminator: 1)
!3080 = !DILocation(line: 208, column: 3, scope: !3038)
!3081 = !DILocation(line: 210, column: 1, scope: !3038)
!3082 = distinct !DISubprogram(name: "version_etc", scope: !579, file: !579, line: 227, type: !3083, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !2896, !24, !24, !24, null}
!3085 = !{!3086, !3087, !3088, !3089, !3090}
!3086 = !DILocalVariable(name: "stream", arg: 1, scope: !3082, file: !579, line: 227, type: !2896)
!3087 = !DILocalVariable(name: "command_name", arg: 2, scope: !3082, file: !579, line: 228, type: !24)
!3088 = !DILocalVariable(name: "package", arg: 3, scope: !3082, file: !579, line: 228, type: !24)
!3089 = !DILocalVariable(name: "version", arg: 4, scope: !3082, file: !579, line: 229, type: !24)
!3090 = !DILocalVariable(name: "authors", scope: !3082, file: !579, line: 231, type: !3091)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2898, line: 80, baseType: !3092)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3093, line: 50, baseType: !3094)
!3093 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !576, line: 231, baseType: !3095)
!3095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3042, size: 192, elements: !63)
!3096 = !DILocation(line: 227, column: 20, scope: !3082)
!3097 = !DILocation(line: 228, column: 26, scope: !3082)
!3098 = !DILocation(line: 228, column: 52, scope: !3082)
!3099 = !DILocation(line: 229, column: 26, scope: !3082)
!3100 = !DILocation(line: 231, column: 3, scope: !3082)
!3101 = !DILocation(line: 231, column: 11, scope: !3082)
!3102 = !DILocation(line: 233, column: 3, scope: !3082)
!3103 = !DILocation(line: 234, column: 3, scope: !3082)
!3104 = !DILocation(line: 235, column: 3, scope: !3082)
!3105 = !DILocation(line: 236, column: 1, scope: !3082)
!3106 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !579, file: !579, line: 239, type: !652, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !110)
!3107 = !DILocation(line: 245, column: 3, scope: !3106)
!3108 = !DILocation(line: 245, column: 3, scope: !3109)
!3109 = !DILexicalBlockFile(scope: !3106, file: !579, discriminator: 1)
!3110 = !DILocation(line: 251, column: 3, scope: !3106)
!3111 = !DILocation(line: 251, column: 3, scope: !3109)
!3112 = !DILocation(line: 256, column: 3, scope: !3106)
!3113 = !DILocation(line: 256, column: 3, scope: !3109)
!3114 = !DILocation(line: 258, column: 1, scope: !3106)
!3115 = distinct !DISubprogram(name: "xnmalloc", scope: !587, file: !587, line: 105, type: !3116, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!15, !16, !16}
!3118 = !{!3119, !3120}
!3119 = !DILocalVariable(name: "n", arg: 1, scope: !3115, file: !587, line: 105, type: !16)
!3120 = !DILocalVariable(name: "s", arg: 2, scope: !3115, file: !587, line: 105, type: !16)
!3121 = !DILocation(line: 105, column: 18, scope: !3115)
!3122 = !DILocation(line: 105, column: 28, scope: !3115)
!3123 = !DILocation(line: 107, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3115, file: !587, line: 107, column: 7)
!3125 = !DILocation(line: 107, column: 7, scope: !3115)
!3126 = !DILocation(line: 108, column: 5, scope: !3124)
!3127 = !DILocation(line: 109, column: 21, scope: !3115)
!3128 = !DILocalVariable(name: "n", arg: 1, scope: !3129, file: !3130, line: 39, type: !16)
!3129 = distinct !DISubprogram(name: "xmalloc", scope: !3130, file: !3130, line: 39, type: !3131, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3133)
!3130 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!15, !16}
!3133 = !{!3128, !3134}
!3134 = !DILocalVariable(name: "p", scope: !3129, file: !3130, line: 41, type: !15)
!3135 = !DILocation(line: 39, column: 17, scope: !3129, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 109, column: 10, scope: !3115)
!3137 = !DILocation(line: 41, column: 13, scope: !3129, inlinedAt: !3136)
!3138 = !DILocation(line: 41, column: 9, scope: !3129, inlinedAt: !3136)
!3139 = !DILocation(line: 42, column: 8, scope: !3140, inlinedAt: !3136)
!3140 = distinct !DILexicalBlock(scope: !3129, file: !3130, line: 42, column: 7)
!3141 = !DILocation(line: 42, column: 15, scope: !3142, inlinedAt: !3136)
!3142 = !DILexicalBlockFile(scope: !3140, file: !3130, discriminator: 1)
!3143 = !DILocation(line: 42, column: 10, scope: !3140, inlinedAt: !3136)
!3144 = !DILocation(line: 43, column: 5, scope: !3140, inlinedAt: !3136)
!3145 = !DILocation(line: 109, column: 3, scope: !3115)
!3146 = !DILocation(line: 39, column: 17, scope: !3129)
!3147 = !DILocation(line: 41, column: 13, scope: !3129)
!3148 = !DILocation(line: 41, column: 9, scope: !3129)
!3149 = !DILocation(line: 42, column: 8, scope: !3140)
!3150 = !DILocation(line: 42, column: 15, scope: !3142)
!3151 = !DILocation(line: 42, column: 10, scope: !3140)
!3152 = !DILocation(line: 43, column: 5, scope: !3140)
!3153 = !DILocation(line: 44, column: 3, scope: !3129)
!3154 = distinct !DISubprogram(name: "xnrealloc", scope: !587, file: !587, line: 118, type: !3155, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!15, !15, !16, !16}
!3157 = !{!3158, !3159, !3160}
!3158 = !DILocalVariable(name: "p", arg: 1, scope: !3154, file: !587, line: 118, type: !15)
!3159 = !DILocalVariable(name: "n", arg: 2, scope: !3154, file: !587, line: 118, type: !16)
!3160 = !DILocalVariable(name: "s", arg: 3, scope: !3154, file: !587, line: 118, type: !16)
!3161 = !DILocation(line: 118, column: 18, scope: !3154)
!3162 = !DILocation(line: 118, column: 28, scope: !3154)
!3163 = !DILocation(line: 118, column: 38, scope: !3154)
!3164 = !DILocation(line: 120, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3154, file: !587, line: 120, column: 7)
!3166 = !DILocation(line: 120, column: 7, scope: !3154)
!3167 = !DILocation(line: 121, column: 5, scope: !3165)
!3168 = !DILocation(line: 122, column: 25, scope: !3154)
!3169 = !DILocalVariable(name: "p", arg: 1, scope: !3170, file: !3130, line: 51, type: !15)
!3170 = distinct !DISubprogram(name: "xrealloc", scope: !3130, file: !3130, line: 51, type: !3171, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!15, !15, !16}
!3173 = !{!3169, !3174}
!3174 = !DILocalVariable(name: "n", arg: 2, scope: !3170, file: !3130, line: 51, type: !16)
!3175 = !DILocation(line: 51, column: 17, scope: !3170, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 122, column: 10, scope: !3154)
!3177 = !DILocation(line: 51, column: 27, scope: !3170, inlinedAt: !3176)
!3178 = !DILocation(line: 53, column: 8, scope: !3179, inlinedAt: !3176)
!3179 = distinct !DILexicalBlock(scope: !3170, file: !3130, line: 53, column: 7)
!3180 = !DILocation(line: 53, column: 13, scope: !3181, inlinedAt: !3176)
!3181 = !DILexicalBlockFile(scope: !3179, file: !3130, discriminator: 1)
!3182 = !DILocation(line: 53, column: 10, scope: !3179, inlinedAt: !3176)
!3183 = !DILocation(line: 57, column: 7, scope: !3184, inlinedAt: !3176)
!3184 = distinct !DILexicalBlock(scope: !3179, file: !3130, line: 54, column: 5)
!3185 = !DILocation(line: 58, column: 7, scope: !3184, inlinedAt: !3176)
!3186 = !DILocation(line: 61, column: 7, scope: !3170, inlinedAt: !3176)
!3187 = !DILocation(line: 62, column: 8, scope: !3188, inlinedAt: !3176)
!3188 = distinct !DILexicalBlock(scope: !3170, file: !3130, line: 62, column: 7)
!3189 = !DILocation(line: 62, column: 13, scope: !3190, inlinedAt: !3176)
!3190 = !DILexicalBlockFile(scope: !3188, file: !3130, discriminator: 1)
!3191 = !DILocation(line: 62, column: 10, scope: !3188, inlinedAt: !3176)
!3192 = !DILocation(line: 63, column: 5, scope: !3188, inlinedAt: !3176)
!3193 = !DILocation(line: 122, column: 3, scope: !3154)
!3194 = !DILocation(line: 51, column: 17, scope: !3170)
!3195 = !DILocation(line: 51, column: 27, scope: !3170)
!3196 = !DILocation(line: 53, column: 8, scope: !3179)
!3197 = !DILocation(line: 53, column: 13, scope: !3181)
!3198 = !DILocation(line: 53, column: 10, scope: !3179)
!3199 = !DILocation(line: 57, column: 7, scope: !3184)
!3200 = !DILocation(line: 58, column: 7, scope: !3184)
!3201 = !DILocation(line: 61, column: 7, scope: !3170)
!3202 = !DILocation(line: 62, column: 8, scope: !3188)
!3203 = !DILocation(line: 62, column: 13, scope: !3190)
!3204 = !DILocation(line: 62, column: 10, scope: !3188)
!3205 = !DILocation(line: 63, column: 5, scope: !3188)
!3206 = !DILocation(line: 65, column: 1, scope: !3170)
!3207 = !DILocation(line: 180, column: 19, scope: !588)
!3208 = !DILocation(line: 180, column: 30, scope: !588)
!3209 = !DILocation(line: 180, column: 41, scope: !588)
!3210 = !DILocation(line: 182, column: 14, scope: !588)
!3211 = !DILocation(line: 182, column: 10, scope: !588)
!3212 = !DILocation(line: 184, column: 9, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !588, file: !587, line: 184, column: 7)
!3214 = !DILocation(line: 184, column: 7, scope: !588)
!3215 = !DILocation(line: 186, column: 13, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !587, line: 186, column: 11)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !587, line: 185, column: 5)
!3218 = !DILocation(line: 186, column: 11, scope: !3217)
!3219 = !DILocation(line: 194, column: 30, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3216, file: !587, line: 187, column: 9)
!3221 = !DILocation(line: 195, column: 16, scope: !3220)
!3222 = !DILocation(line: 195, column: 13, scope: !3220)
!3223 = !DILocation(line: 196, column: 9, scope: !3220)
!3224 = !DILocation(line: 204, column: 69, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !587, line: 204, column: 11)
!3226 = distinct !DILexicalBlock(scope: !3213, file: !587, line: 199, column: 5)
!3227 = !DILocation(line: 205, column: 11, scope: !3225)
!3228 = !DILocation(line: 204, column: 11, scope: !3226)
!3229 = !DILocation(line: 206, column: 9, scope: !3225)
!3230 = !DILocation(line: 210, column: 7, scope: !588)
!3231 = !DILocation(line: 211, column: 25, scope: !588)
!3232 = !DILocation(line: 51, column: 17, scope: !3170, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 211, column: 10, scope: !588)
!3234 = !DILocation(line: 51, column: 27, scope: !3170, inlinedAt: !3233)
!3235 = !DILocation(line: 53, column: 10, scope: !3179, inlinedAt: !3233)
!3236 = !DILocation(line: 207, column: 14, scope: !3226)
!3237 = !DILocation(line: 207, column: 18, scope: !3226)
!3238 = !DILocation(line: 207, column: 9, scope: !3226)
!3239 = !DILocation(line: 53, column: 8, scope: !3179, inlinedAt: !3233)
!3240 = !DILocation(line: 57, column: 7, scope: !3184, inlinedAt: !3233)
!3241 = !DILocation(line: 58, column: 7, scope: !3184, inlinedAt: !3233)
!3242 = !DILocation(line: 61, column: 7, scope: !3170, inlinedAt: !3233)
!3243 = !DILocation(line: 62, column: 8, scope: !3188, inlinedAt: !3233)
!3244 = !DILocation(line: 62, column: 13, scope: !3190, inlinedAt: !3233)
!3245 = !DILocation(line: 62, column: 10, scope: !3188, inlinedAt: !3233)
!3246 = !DILocation(line: 63, column: 5, scope: !3188, inlinedAt: !3233)
!3247 = !DILocation(line: 211, column: 3, scope: !588)
!3248 = distinct !DISubprogram(name: "xcharalloc", scope: !587, file: !587, line: 220, type: !2165, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3249)
!3249 = !{!3250}
!3250 = !DILocalVariable(name: "n", arg: 1, scope: !3248, file: !587, line: 220, type: !16)
!3251 = !DILocation(line: 220, column: 20, scope: !3248)
!3252 = !DILocation(line: 39, column: 17, scope: !3129, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 222, column: 10, scope: !3248)
!3254 = !DILocation(line: 41, column: 13, scope: !3129, inlinedAt: !3253)
!3255 = !DILocation(line: 41, column: 9, scope: !3129, inlinedAt: !3253)
!3256 = !DILocation(line: 42, column: 8, scope: !3140, inlinedAt: !3253)
!3257 = !DILocation(line: 42, column: 15, scope: !3142, inlinedAt: !3253)
!3258 = !DILocation(line: 42, column: 10, scope: !3140, inlinedAt: !3253)
!3259 = !DILocation(line: 43, column: 5, scope: !3140, inlinedAt: !3253)
!3260 = !DILocation(line: 222, column: 3, scope: !3248)
!3261 = distinct !DISubprogram(name: "x2realloc", scope: !3130, file: !3130, line: 74, type: !3262, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!15, !15, !591}
!3264 = !{!3265, !3266}
!3265 = !DILocalVariable(name: "p", arg: 1, scope: !3261, file: !3130, line: 74, type: !15)
!3266 = !DILocalVariable(name: "pn", arg: 2, scope: !3261, file: !3130, line: 74, type: !591)
!3267 = !DILocation(line: 74, column: 18, scope: !3261)
!3268 = !DILocation(line: 74, column: 29, scope: !3261)
!3269 = !DILocation(line: 180, column: 19, scope: !588, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 76, column: 10, scope: !3261)
!3271 = !DILocation(line: 180, column: 30, scope: !588, inlinedAt: !3270)
!3272 = !DILocation(line: 180, column: 41, scope: !588, inlinedAt: !3270)
!3273 = !DILocation(line: 182, column: 14, scope: !588, inlinedAt: !3270)
!3274 = !DILocation(line: 182, column: 10, scope: !588, inlinedAt: !3270)
!3275 = !DILocation(line: 184, column: 9, scope: !3213, inlinedAt: !3270)
!3276 = !DILocation(line: 184, column: 7, scope: !588, inlinedAt: !3270)
!3277 = !DILocation(line: 186, column: 13, scope: !3216, inlinedAt: !3270)
!3278 = !DILocation(line: 186, column: 11, scope: !3217, inlinedAt: !3270)
!3279 = !DILocation(line: 210, column: 7, scope: !588, inlinedAt: !3270)
!3280 = !DILocation(line: 51, column: 17, scope: !3170, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 211, column: 10, scope: !588, inlinedAt: !3270)
!3282 = !DILocation(line: 51, column: 27, scope: !3170, inlinedAt: !3281)
!3283 = !DILocation(line: 53, column: 10, scope: !3179, inlinedAt: !3281)
!3284 = !DILocation(line: 205, column: 11, scope: !3225, inlinedAt: !3270)
!3285 = !DILocation(line: 204, column: 11, scope: !3226, inlinedAt: !3270)
!3286 = !DILocation(line: 206, column: 9, scope: !3225, inlinedAt: !3270)
!3287 = !DILocation(line: 207, column: 14, scope: !3226, inlinedAt: !3270)
!3288 = !DILocation(line: 207, column: 18, scope: !3226, inlinedAt: !3270)
!3289 = !DILocation(line: 207, column: 9, scope: !3226, inlinedAt: !3270)
!3290 = !DILocation(line: 53, column: 8, scope: !3179, inlinedAt: !3281)
!3291 = !DILocation(line: 57, column: 7, scope: !3184, inlinedAt: !3281)
!3292 = !DILocation(line: 58, column: 7, scope: !3184, inlinedAt: !3281)
!3293 = !DILocation(line: 61, column: 7, scope: !3170, inlinedAt: !3281)
!3294 = !DILocation(line: 62, column: 8, scope: !3188, inlinedAt: !3281)
!3295 = !DILocation(line: 62, column: 13, scope: !3190, inlinedAt: !3281)
!3296 = !DILocation(line: 62, column: 10, scope: !3188, inlinedAt: !3281)
!3297 = !DILocation(line: 63, column: 5, scope: !3188, inlinedAt: !3281)
!3298 = !DILocation(line: 76, column: 3, scope: !3261)
!3299 = distinct !DISubprogram(name: "xzalloc", scope: !3130, file: !3130, line: 84, type: !3131, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3300)
!3300 = !{!3301}
!3301 = !DILocalVariable(name: "s", arg: 1, scope: !3299, file: !3130, line: 84, type: !16)
!3302 = !DILocation(line: 84, column: 17, scope: !3299)
!3303 = !DILocation(line: 39, column: 17, scope: !3129, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 86, column: 18, scope: !3299)
!3305 = !DILocation(line: 41, column: 13, scope: !3129, inlinedAt: !3304)
!3306 = !DILocation(line: 41, column: 9, scope: !3129, inlinedAt: !3304)
!3307 = !DILocation(line: 42, column: 8, scope: !3140, inlinedAt: !3304)
!3308 = !DILocation(line: 42, column: 15, scope: !3142, inlinedAt: !3304)
!3309 = !DILocation(line: 42, column: 10, scope: !3140, inlinedAt: !3304)
!3310 = !DILocation(line: 43, column: 5, scope: !3140, inlinedAt: !3304)
!3311 = !DILocation(line: 86, column: 10, scope: !3299)
!3312 = !DILocation(line: 86, column: 3, scope: !3299)
!3313 = distinct !DISubprogram(name: "xcalloc", scope: !3130, file: !3130, line: 93, type: !3116, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3314)
!3314 = !{!3315, !3316, !3317}
!3315 = !DILocalVariable(name: "n", arg: 1, scope: !3313, file: !3130, line: 93, type: !16)
!3316 = !DILocalVariable(name: "s", arg: 2, scope: !3313, file: !3130, line: 93, type: !16)
!3317 = !DILocalVariable(name: "p", scope: !3313, file: !3130, line: 95, type: !15)
!3318 = !DILocation(line: 93, column: 17, scope: !3313)
!3319 = !DILocation(line: 93, column: 27, scope: !3313)
!3320 = !DILocation(line: 100, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3313, file: !3130, line: 100, column: 7)
!3322 = !DILocation(line: 101, column: 7, scope: !3321)
!3323 = !DILocation(line: 101, column: 18, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3321, file: !3130, discriminator: 1)
!3325 = !DILocation(line: 95, column: 9, scope: !3313)
!3326 = !DILocation(line: 101, column: 16, scope: !3324)
!3327 = !DILocation(line: 100, column: 7, scope: !3328)
!3328 = !DILexicalBlockFile(scope: !3313, file: !3130, discriminator: 1)
!3329 = !DILocation(line: 102, column: 5, scope: !3321)
!3330 = !DILocation(line: 103, column: 3, scope: !3313)
!3331 = distinct !DISubprogram(name: "xmemdup", scope: !3130, file: !3130, line: 111, type: !3332, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!15, !19, !16}
!3334 = !{!3335, !3336}
!3335 = !DILocalVariable(name: "p", arg: 1, scope: !3331, file: !3130, line: 111, type: !19)
!3336 = !DILocalVariable(name: "s", arg: 2, scope: !3331, file: !3130, line: 111, type: !16)
!3337 = !DILocation(line: 111, column: 22, scope: !3331)
!3338 = !DILocation(line: 111, column: 32, scope: !3331)
!3339 = !DILocation(line: 39, column: 17, scope: !3129, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 113, column: 18, scope: !3331)
!3341 = !DILocation(line: 41, column: 13, scope: !3129, inlinedAt: !3340)
!3342 = !DILocation(line: 41, column: 9, scope: !3129, inlinedAt: !3340)
!3343 = !DILocation(line: 42, column: 8, scope: !3140, inlinedAt: !3340)
!3344 = !DILocation(line: 42, column: 15, scope: !3142, inlinedAt: !3340)
!3345 = !DILocation(line: 42, column: 10, scope: !3140, inlinedAt: !3340)
!3346 = !DILocation(line: 43, column: 5, scope: !3140, inlinedAt: !3340)
!3347 = !DILocation(line: 113, column: 10, scope: !3331)
!3348 = !DILocation(line: 113, column: 3, scope: !3331)
!3349 = distinct !DISubprogram(name: "xstrdup", scope: !3130, file: !3130, line: 119, type: !2372, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3350)
!3350 = !{!3351}
!3351 = !DILocalVariable(name: "string", arg: 1, scope: !3349, file: !3130, line: 119, type: !24)
!3352 = !DILocation(line: 119, column: 22, scope: !3349)
!3353 = !DILocation(line: 121, column: 27, scope: !3349)
!3354 = !DILocation(line: 121, column: 43, scope: !3349)
!3355 = !DILocation(line: 111, column: 22, scope: !3331, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 121, column: 10, scope: !3357)
!3357 = !DILexicalBlockFile(scope: !3349, file: !3130, discriminator: 1)
!3358 = !DILocation(line: 111, column: 32, scope: !3331, inlinedAt: !3356)
!3359 = !DILocation(line: 39, column: 17, scope: !3129, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 113, column: 18, scope: !3331, inlinedAt: !3356)
!3361 = !DILocation(line: 41, column: 13, scope: !3129, inlinedAt: !3360)
!3362 = !DILocation(line: 41, column: 9, scope: !3129, inlinedAt: !3360)
!3363 = !DILocation(line: 42, column: 8, scope: !3140, inlinedAt: !3360)
!3364 = !DILocation(line: 42, column: 15, scope: !3142, inlinedAt: !3360)
!3365 = !DILocation(line: 42, column: 10, scope: !3140, inlinedAt: !3360)
!3366 = !DILocation(line: 43, column: 5, scope: !3140, inlinedAt: !3360)
!3367 = !DILocation(line: 113, column: 10, scope: !3331, inlinedAt: !3356)
!3368 = !DILocation(line: 121, column: 3, scope: !3349)
!3369 = distinct !DISubprogram(name: "xalloc_die", scope: !3370, file: !3370, line: 32, type: !652, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !600, variables: !110)
!3370 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3371 = !DILocation(line: 34, column: 10, scope: !3369)
!3372 = !DILocation(line: 34, column: 33, scope: !3369)
!3373 = !DILocation(line: 34, column: 3, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !3369, file: !3370, discriminator: 1)
!3375 = !DILocation(line: 40, column: 3, scope: !3369)
!3376 = distinct !DISubprogram(name: "rpl_calloc", scope: !3377, file: !3377, line: 42, type: !3116, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !3378)
!3377 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3378 = !{!3379, !3380, !3381, !3382}
!3379 = !DILocalVariable(name: "n", arg: 1, scope: !3376, file: !3377, line: 42, type: !16)
!3380 = !DILocalVariable(name: "s", arg: 2, scope: !3376, file: !3377, line: 42, type: !16)
!3381 = !DILocalVariable(name: "result", scope: !3376, file: !3377, line: 44, type: !15)
!3382 = !DILocalVariable(name: "bytes", scope: !3383, file: !3377, line: 56, type: !16)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !3377, line: 53, column: 5)
!3384 = distinct !DILexicalBlock(scope: !3376, file: !3377, line: 47, column: 7)
!3385 = !DILocation(line: 42, column: 20, scope: !3376)
!3386 = !DILocation(line: 42, column: 30, scope: !3376)
!3387 = !DILocation(line: 47, column: 9, scope: !3384)
!3388 = !DILocation(line: 47, column: 19, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !3384, file: !3377, discriminator: 1)
!3390 = !DILocation(line: 47, column: 14, scope: !3384)
!3391 = !DILocation(line: 56, column: 24, scope: !3383)
!3392 = !DILocation(line: 56, column: 14, scope: !3383)
!3393 = !DILocation(line: 57, column: 17, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3383, file: !3377, line: 57, column: 11)
!3395 = !DILocation(line: 57, column: 21, scope: !3394)
!3396 = !DILocation(line: 57, column: 11, scope: !3383)
!3397 = !DILocation(line: 59, column: 11, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3394, file: !3377, line: 58, column: 9)
!3399 = !DILocation(line: 59, column: 17, scope: !3398)
!3400 = !DILocation(line: 65, column: 12, scope: !3376)
!3401 = !DILocation(line: 44, column: 9, scope: !3376)
!3402 = !DILocation(line: 72, column: 3, scope: !3376)
!3403 = !DILocation(line: 73, column: 1, scope: !3376)
!3404 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3405, file: !3405, line: 334, type: !3406, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !604, variables: !3420)
!3405 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!16, !3408, !24, !16, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1135, line: 107, baseType: !3411)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1135, line: 95, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 83, size: 64, elements: !3413)
!3413 = !{!3414, !3415}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3412, file: !1135, line: 85, baseType: !32, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3412, file: !1135, line: 94, baseType: !3416, size: 32, offset: 32)
!3416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3412, file: !1135, line: 86, size: 32, elements: !3417)
!3417 = !{!3418, !3419}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3416, file: !1135, line: 89, baseType: !191, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3416, file: !1135, line: 93, baseType: !1145, size: 32)
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3421 = !DILocalVariable(name: "pwc", arg: 1, scope: !3404, file: !3405, line: 334, type: !3408)
!3422 = !DILocalVariable(name: "s", arg: 2, scope: !3404, file: !3405, line: 334, type: !24)
!3423 = !DILocalVariable(name: "n", arg: 3, scope: !3404, file: !3405, line: 334, type: !16)
!3424 = !DILocalVariable(name: "ps", arg: 4, scope: !3404, file: !3405, line: 334, type: !3409)
!3425 = !DILocalVariable(name: "ret", scope: !3404, file: !3405, line: 336, type: !16)
!3426 = !DILocalVariable(name: "wc", scope: !3404, file: !3405, line: 337, type: !1150)
!3427 = !DILocalVariable(name: "uc", scope: !3428, file: !3405, line: 398, type: !23)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !3405, line: 397, column: 5)
!3429 = distinct !DILexicalBlock(scope: !3404, file: !3405, line: 396, column: 7)
!3430 = !DILocation(line: 334, column: 23, scope: !3404)
!3431 = !DILocation(line: 334, column: 40, scope: !3404)
!3432 = !DILocation(line: 334, column: 50, scope: !3404)
!3433 = !DILocation(line: 334, column: 64, scope: !3404)
!3434 = !DILocation(line: 337, column: 3, scope: !3404)
!3435 = !DILocation(line: 353, column: 9, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3404, file: !3405, line: 353, column: 7)
!3437 = !DILocation(line: 353, column: 7, scope: !3404)
!3438 = !DILocation(line: 388, column: 9, scope: !3404)
!3439 = !DILocation(line: 336, column: 10, scope: !3404)
!3440 = !DILocation(line: 396, column: 19, scope: !3429)
!3441 = !DILocation(line: 396, column: 31, scope: !3442)
!3442 = !DILexicalBlockFile(scope: !3429, file: !3405, discriminator: 1)
!3443 = !DILocation(line: 396, column: 26, scope: !3429)
!3444 = !DILocation(line: 396, column: 41, scope: !3445)
!3445 = !DILexicalBlockFile(scope: !3429, file: !3405, discriminator: 2)
!3446 = !DILocation(line: 396, column: 7, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3404, file: !3405, discriminator: 2)
!3448 = !DILocation(line: 398, column: 26, scope: !3428)
!3449 = !DILocation(line: 398, column: 21, scope: !3428)
!3450 = !DILocation(line: 399, column: 14, scope: !3428)
!3451 = !DILocation(line: 399, column: 12, scope: !3428)
!3452 = !DILocation(line: 405, column: 1, scope: !3404)
!3453 = distinct !DISubprogram(name: "close_stream", scope: !3454, file: !3454, line: 56, type: !3455, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !3497)
!3454 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!32, !3457}
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 49, baseType: !3459)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3459, file: !2900, line: 242, baseType: !32, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3459, file: !2900, line: 247, baseType: !13, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3459, file: !2900, line: 248, baseType: !13, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3459, file: !2900, line: 249, baseType: !13, size: 64, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3459, file: !2900, line: 250, baseType: !13, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3459, file: !2900, line: 251, baseType: !13, size: 64, offset: 320)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3459, file: !2900, line: 252, baseType: !13, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3459, file: !2900, line: 253, baseType: !13, size: 64, offset: 448)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3459, file: !2900, line: 254, baseType: !13, size: 64, offset: 512)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3459, file: !2900, line: 256, baseType: !13, size: 64, offset: 576)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3459, file: !2900, line: 257, baseType: !13, size: 64, offset: 640)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3459, file: !2900, line: 258, baseType: !13, size: 64, offset: 704)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3459, file: !2900, line: 260, baseType: !3474, size: 64, offset: 768)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !3476)
!3476 = !{!3477, !3478, !3480}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3475, file: !2900, line: 157, baseType: !3474, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3475, file: !2900, line: 158, baseType: !3479, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3475, file: !2900, line: 162, baseType: !32, size: 32, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3459, file: !2900, line: 262, baseType: !3479, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3459, file: !2900, line: 264, baseType: !32, size: 32, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3459, file: !2900, line: 268, baseType: !32, size: 32, offset: 928)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3459, file: !2900, line: 270, baseType: !2926, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3459, file: !2900, line: 274, baseType: !174, size: 16, offset: 1024)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3459, file: !2900, line: 275, baseType: !2931, size: 8, offset: 1040)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3459, file: !2900, line: 276, baseType: !2933, size: 8, offset: 1048)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3459, file: !2900, line: 280, baseType: !2935, size: 64, offset: 1088)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3459, file: !2900, line: 289, baseType: !2938, size: 64, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3459, file: !2900, line: 297, baseType: !15, size: 64, offset: 1216)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3459, file: !2900, line: 298, baseType: !15, size: 64, offset: 1280)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3459, file: !2900, line: 299, baseType: !15, size: 64, offset: 1344)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3459, file: !2900, line: 300, baseType: !15, size: 64, offset: 1408)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3459, file: !2900, line: 302, baseType: !16, size: 64, offset: 1472)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3459, file: !2900, line: 303, baseType: !32, size: 32, offset: 1536)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3459, file: !2900, line: 305, baseType: !2946, size: 160, offset: 1568)
!3497 = !{!3498, !3499, !3501, !3502}
!3498 = !DILocalVariable(name: "stream", arg: 1, scope: !3453, file: !3454, line: 56, type: !3457)
!3499 = !DILocalVariable(name: "some_pending", scope: !3453, file: !3454, line: 58, type: !3500)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!3501 = !DILocalVariable(name: "prev_fail", scope: !3453, file: !3454, line: 59, type: !3500)
!3502 = !DILocalVariable(name: "fclose_fail", scope: !3453, file: !3454, line: 60, type: !3500)
!3503 = !DILocation(line: 56, column: 21, scope: !3453)
!3504 = !DILocation(line: 58, column: 30, scope: !3453)
!3505 = !DILocalVariable(name: "__stream", arg: 1, scope: !3506, file: !3507, line: 132, type: !3457)
!3506 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3507, file: !3507, line: 132, type: !3455, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !3508)
!3507 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3508 = !{!3505}
!3509 = !DILocation(line: 132, column: 1, scope: !3506, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 59, column: 27, scope: !3453)
!3511 = !DILocation(line: 134, column: 10, scope: !3506, inlinedAt: !3510)
!3512 = !{!3513, !705, i64 0}
!3513 = !{!"_IO_FILE", !705, i64 0, !637, i64 8, !637, i64 16, !637, i64 24, !637, i64 32, !637, i64 40, !637, i64 48, !637, i64 56, !637, i64 64, !637, i64 72, !637, i64 80, !637, i64 88, !637, i64 96, !637, i64 104, !705, i64 112, !705, i64 116, !2210, i64 120, !1502, i64 128, !638, i64 130, !638, i64 131, !637, i64 136, !2210, i64 144, !637, i64 152, !637, i64 160, !637, i64 168, !637, i64 176, !2210, i64 184, !705, i64 192, !638, i64 196}
!3514 = !DILocation(line: 59, column: 43, scope: !3453)
!3515 = !DILocation(line: 60, column: 29, scope: !3453)
!3516 = !DILocation(line: 60, column: 45, scope: !3453)
!3517 = !DILocation(line: 70, column: 17, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3453, file: !3454, line: 70, column: 7)
!3519 = !DILocation(line: 70, column: 33, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3518, file: !3454, discriminator: 1)
!3521 = !DILocation(line: 70, column: 53, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3518, file: !3454, discriminator: 3)
!3523 = !DILocation(line: 70, column: 7, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3453, file: !3454, discriminator: 3)
!3525 = !DILocation(line: 72, column: 11, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3518, file: !3454, line: 71, column: 5)
!3527 = !DILocation(line: 73, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3526, file: !3454, line: 72, column: 11)
!3529 = !DILocation(line: 73, column: 15, scope: !3528)
!3530 = !DILocation(line: 78, column: 1, scope: !3453)
!3531 = distinct !DISubprogram(name: "hard_locale", scope: !3532, file: !3532, line: 38, type: !3533, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !3535)
!3532 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!39, !32}
!3535 = !{!3536, !3537, !3538, !3539, !3546, !3547, !3549, !3550, !3552, !3553, !3555}
!3536 = !DILocalVariable(name: "category", arg: 1, scope: !3531, file: !3532, line: 38, type: !32)
!3537 = !DILocalVariable(name: "hard", scope: !3531, file: !3532, line: 40, type: !39)
!3538 = !DILocalVariable(name: "p", scope: !3531, file: !3532, line: 41, type: !24)
!3539 = !DILocalVariable(name: "__s1_len", scope: !3540, file: !3532, line: 47, type: !16)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3532, line: 47, column: 15)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !3532, line: 47, column: 15)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !3532, line: 46, column: 9)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !3532, line: 45, column: 11)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !3532, line: 44, column: 5)
!3545 = distinct !DILexicalBlock(scope: !3531, file: !3532, line: 43, column: 7)
!3546 = !DILocalVariable(name: "__s2_len", scope: !3540, file: !3532, line: 47, type: !16)
!3547 = !DILocalVariable(name: "__s2", scope: !3548, file: !3532, line: 47, type: !21)
!3548 = distinct !DILexicalBlock(scope: !3540, file: !3532, line: 47, column: 15)
!3549 = !DILocalVariable(name: "__result", scope: !3548, file: !3532, line: 47, type: !32)
!3550 = !DILocalVariable(name: "__s1_len", scope: !3551, file: !3532, line: 47, type: !16)
!3551 = distinct !DILexicalBlock(scope: !3541, file: !3532, line: 47, column: 39)
!3552 = !DILocalVariable(name: "__s2_len", scope: !3551, file: !3532, line: 47, type: !16)
!3553 = !DILocalVariable(name: "__s2", scope: !3554, file: !3532, line: 47, type: !21)
!3554 = distinct !DILexicalBlock(scope: !3551, file: !3532, line: 47, column: 39)
!3555 = !DILocalVariable(name: "__result", scope: !3554, file: !3532, line: 47, type: !32)
!3556 = !DILocation(line: 38, column: 18, scope: !3531)
!3557 = !DILocation(line: 40, column: 8, scope: !3531)
!3558 = !DILocation(line: 41, column: 19, scope: !3531)
!3559 = !DILocation(line: 41, column: 15, scope: !3531)
!3560 = !DILocation(line: 43, column: 7, scope: !3545)
!3561 = !DILocation(line: 43, column: 7, scope: !3531)
!3562 = !DILocation(line: 47, column: 15, scope: !3540)
!3563 = !DILocation(line: 47, column: 15, scope: !3548)
!3564 = !DILocation(line: 47, column: 15, scope: !3565)
!3565 = !DILexicalBlockFile(scope: !3548, file: !3532, discriminator: 2)
!3566 = !DILocation(line: 47, column: 15, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3568, file: !3532, discriminator: 3)
!3568 = distinct !DILexicalBlock(scope: !3548, file: !3532, line: 47, column: 15)
!3569 = !DILocation(line: 47, column: 15, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !3568, file: !3532, discriminator: 2)
!3571 = !DILocation(line: 47, column: 15, scope: !3572)
!3572 = !DILexicalBlockFile(scope: !3573, file: !3532, discriminator: 4)
!3573 = distinct !DILexicalBlock(scope: !3568, file: !3532, line: 47, column: 15)
!3574 = !DILocation(line: 47, column: 15, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !3540, file: !3532, discriminator: 11)
!3576 = !DILocation(line: 47, column: 36, scope: !3577)
!3577 = !DILexicalBlockFile(scope: !3541, file: !3532, discriminator: 13)
!3578 = !DILocation(line: 47, column: 39, scope: !3551)
!3579 = !DILocation(line: 47, column: 39, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3551, file: !3532, discriminator: 26)
!3581 = !DILocation(line: 47, column: 59, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3541, file: !3532, discriminator: 27)
!3583 = !DILocation(line: 47, column: 15, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3542, file: !3532, discriminator: 27)
!3585 = !DILocation(line: 48, column: 13, scope: !3541)
!3586 = !DILocation(line: 71, column: 3, scope: !3531)
!3587 = distinct !DISubprogram(name: "locale_charset", scope: !573, file: !573, line: 393, type: !3588, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !229, variables: !3590)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!24}
!3590 = !{!3591, !3592, !3593, !3598}
!3591 = !DILocalVariable(name: "codeset", scope: !3587, file: !573, line: 395, type: !24)
!3592 = !DILocalVariable(name: "aliases", scope: !3587, file: !573, line: 396, type: !24)
!3593 = !DILocalVariable(name: "__s1_len", scope: !3594, file: !573, line: 592, type: !16)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !573, line: 592, column: 9)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !573, line: 592, column: 9)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !573, line: 589, column: 3)
!3597 = distinct !DILexicalBlock(scope: !3587, file: !573, line: 589, column: 3)
!3598 = !DILocalVariable(name: "__s2_len", scope: !3594, file: !573, line: 592, type: !16)
!3599 = !DILocalVariable(name: "buf1", scope: !3600, file: !573, line: 196, type: !3667)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !573, line: 194, column: 21)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !573, line: 193, column: 19)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !573, line: 193, column: 19)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !573, line: 188, column: 17)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !573, line: 181, column: 19)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !573, line: 177, column: 13)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !573, line: 173, column: 15)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !573, line: 161, column: 9)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !573, line: 157, column: 11)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !573, line: 130, column: 5)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !573, line: 129, column: 7)
!3611 = distinct !DISubprogram(name: "get_charset_aliases", scope: !573, file: !573, line: 124, type: !3588, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !229, variables: !3612)
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3619, !3620, !3621, !3622, !3663, !3664, !3665, !3599, !3666, !3670, !3671, !3672}
!3613 = !DILocalVariable(name: "cp", scope: !3611, file: !573, line: 126, type: !24)
!3614 = !DILocalVariable(name: "dir", scope: !3609, file: !573, line: 132, type: !24)
!3615 = !DILocalVariable(name: "base", scope: !3609, file: !573, line: 133, type: !24)
!3616 = !DILocalVariable(name: "file_name", scope: !3609, file: !573, line: 134, type: !13)
!3617 = !DILocalVariable(name: "dir_len", scope: !3618, file: !573, line: 144, type: !16)
!3618 = distinct !DILexicalBlock(scope: !3609, file: !573, line: 143, column: 7)
!3619 = !DILocalVariable(name: "base_len", scope: !3618, file: !573, line: 145, type: !16)
!3620 = !DILocalVariable(name: "add_slash", scope: !3618, file: !573, line: 146, type: !32)
!3621 = !DILocalVariable(name: "fd", scope: !3607, file: !573, line: 162, type: !32)
!3622 = !DILocalVariable(name: "fp", scope: !3605, file: !573, line: 178, type: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 49, baseType: !3625)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3625, file: !2900, line: 242, baseType: !32, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3625, file: !2900, line: 247, baseType: !13, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3625, file: !2900, line: 248, baseType: !13, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3625, file: !2900, line: 249, baseType: !13, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3625, file: !2900, line: 250, baseType: !13, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3625, file: !2900, line: 251, baseType: !13, size: 64, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3625, file: !2900, line: 252, baseType: !13, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3625, file: !2900, line: 253, baseType: !13, size: 64, offset: 448)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3625, file: !2900, line: 254, baseType: !13, size: 64, offset: 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3625, file: !2900, line: 256, baseType: !13, size: 64, offset: 576)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3625, file: !2900, line: 257, baseType: !13, size: 64, offset: 640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3625, file: !2900, line: 258, baseType: !13, size: 64, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3625, file: !2900, line: 260, baseType: !3640, size: 64, offset: 768)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !3642)
!3642 = !{!3643, !3644, !3646}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3641, file: !2900, line: 157, baseType: !3640, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3641, file: !2900, line: 158, baseType: !3645, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3641, file: !2900, line: 162, baseType: !32, size: 32, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3625, file: !2900, line: 262, baseType: !3645, size: 64, offset: 832)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3625, file: !2900, line: 264, baseType: !32, size: 32, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3625, file: !2900, line: 268, baseType: !32, size: 32, offset: 928)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3625, file: !2900, line: 270, baseType: !2926, size: 64, offset: 960)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3625, file: !2900, line: 274, baseType: !174, size: 16, offset: 1024)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3625, file: !2900, line: 275, baseType: !2931, size: 8, offset: 1040)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3625, file: !2900, line: 276, baseType: !2933, size: 8, offset: 1048)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3625, file: !2900, line: 280, baseType: !2935, size: 64, offset: 1088)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3625, file: !2900, line: 289, baseType: !2938, size: 64, offset: 1152)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3625, file: !2900, line: 297, baseType: !15, size: 64, offset: 1216)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3625, file: !2900, line: 298, baseType: !15, size: 64, offset: 1280)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3625, file: !2900, line: 299, baseType: !15, size: 64, offset: 1344)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3625, file: !2900, line: 300, baseType: !15, size: 64, offset: 1408)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3625, file: !2900, line: 302, baseType: !16, size: 64, offset: 1472)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3625, file: !2900, line: 303, baseType: !32, size: 32, offset: 1536)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3625, file: !2900, line: 305, baseType: !2946, size: 160, offset: 1568)
!3663 = !DILocalVariable(name: "res_ptr", scope: !3603, file: !573, line: 190, type: !13)
!3664 = !DILocalVariable(name: "res_size", scope: !3603, file: !573, line: 191, type: !16)
!3665 = !DILocalVariable(name: "c", scope: !3600, file: !573, line: 195, type: !32)
!3666 = !DILocalVariable(name: "buf2", scope: !3600, file: !573, line: 197, type: !3667)
!3667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 408, elements: !3668)
!3668 = !{!3669}
!3669 = !DISubrange(count: 51)
!3670 = !DILocalVariable(name: "l1", scope: !3600, file: !573, line: 198, type: !16)
!3671 = !DILocalVariable(name: "l2", scope: !3600, file: !573, line: 198, type: !16)
!3672 = !DILocalVariable(name: "old_res_ptr", scope: !3600, file: !573, line: 199, type: !13)
!3673 = !DILocation(line: 196, column: 28, scope: !3600, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 589, column: 18, scope: !3597)
!3675 = !DILocation(line: 197, column: 28, scope: !3600, inlinedAt: !3674)
!3676 = !DILocation(line: 403, column: 13, scope: !3587)
!3677 = !DILocation(line: 395, column: 15, scope: !3587)
!3678 = !DILocation(line: 584, column: 15, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3587, file: !573, line: 584, column: 7)
!3680 = !DILocation(line: 584, column: 7, scope: !3587)
!3681 = !DILocation(line: 128, column: 8, scope: !3611, inlinedAt: !3674)
!3682 = !DILocation(line: 126, column: 15, scope: !3611, inlinedAt: !3674)
!3683 = !DILocation(line: 129, column: 10, scope: !3610, inlinedAt: !3674)
!3684 = !DILocation(line: 129, column: 7, scope: !3611, inlinedAt: !3674)
!3685 = !DILocation(line: 138, column: 13, scope: !3609, inlinedAt: !3674)
!3686 = !DILocation(line: 132, column: 19, scope: !3609, inlinedAt: !3674)
!3687 = !DILocation(line: 139, column: 15, scope: !3688, inlinedAt: !3674)
!3688 = distinct !DILexicalBlock(scope: !3609, file: !573, line: 139, column: 11)
!3689 = !DILocation(line: 139, column: 23, scope: !3688, inlinedAt: !3674)
!3690 = !DILocation(line: 139, column: 26, scope: !3691, inlinedAt: !3674)
!3691 = !DILexicalBlockFile(scope: !3688, file: !573, discriminator: 1)
!3692 = !DILocation(line: 139, column: 33, scope: !3691, inlinedAt: !3674)
!3693 = !DILocation(line: 139, column: 11, scope: !3694, inlinedAt: !3674)
!3694 = !DILexicalBlockFile(scope: !3609, file: !573, discriminator: 1)
!3695 = !DILocation(line: 140, column: 9, scope: !3688, inlinedAt: !3674)
!3696 = !DILocation(line: 144, column: 26, scope: !3618, inlinedAt: !3674)
!3697 = !DILocation(line: 144, column: 16, scope: !3618, inlinedAt: !3674)
!3698 = !DILocation(line: 145, column: 16, scope: !3618, inlinedAt: !3674)
!3699 = !DILocation(line: 146, column: 34, scope: !3618, inlinedAt: !3674)
!3700 = !DILocation(line: 146, column: 38, scope: !3618, inlinedAt: !3674)
!3701 = !DILocation(line: 146, column: 42, scope: !3702, inlinedAt: !3674)
!3702 = !DILexicalBlockFile(scope: !3618, file: !573, discriminator: 1)
!3703 = !DILocation(line: 146, column: 41, scope: !3702, inlinedAt: !3674)
!3704 = !DILocation(line: 147, column: 48, scope: !3618, inlinedAt: !3674)
!3705 = !DILocation(line: 147, column: 46, scope: !3618, inlinedAt: !3674)
!3706 = !DILocation(line: 147, column: 69, scope: !3618, inlinedAt: !3674)
!3707 = !DILocation(line: 147, column: 30, scope: !3618, inlinedAt: !3674)
!3708 = !DILocation(line: 134, column: 13, scope: !3609, inlinedAt: !3674)
!3709 = !DILocation(line: 148, column: 13, scope: !3618, inlinedAt: !3674)
!3710 = !DILocation(line: 150, column: 13, scope: !3711, inlinedAt: !3674)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !573, line: 149, column: 11)
!3712 = distinct !DILexicalBlock(scope: !3618, file: !573, line: 148, column: 13)
!3713 = !DILocation(line: 151, column: 17, scope: !3711, inlinedAt: !3674)
!3714 = !DILocation(line: 152, column: 34, scope: !3715, inlinedAt: !3674)
!3715 = distinct !DILexicalBlock(scope: !3711, file: !573, line: 151, column: 17)
!3716 = !DILocation(line: 153, column: 41, scope: !3711, inlinedAt: !3674)
!3717 = !DILocation(line: 153, column: 13, scope: !3711, inlinedAt: !3674)
!3718 = !DILocation(line: 157, column: 11, scope: !3609, inlinedAt: !3674)
!3719 = !DILocation(line: 171, column: 16, scope: !3607, inlinedAt: !3674)
!3720 = !DILocation(line: 162, column: 15, scope: !3607, inlinedAt: !3674)
!3721 = !DILocation(line: 173, column: 18, scope: !3606, inlinedAt: !3674)
!3722 = !DILocation(line: 173, column: 15, scope: !3607, inlinedAt: !3674)
!3723 = !DILocation(line: 180, column: 20, scope: !3605, inlinedAt: !3674)
!3724 = !DILocation(line: 178, column: 21, scope: !3605, inlinedAt: !3674)
!3725 = !DILocation(line: 181, column: 22, scope: !3604, inlinedAt: !3674)
!3726 = !DILocation(line: 181, column: 19, scope: !3605, inlinedAt: !3674)
!3727 = !DILocation(line: 190, column: 25, scope: !3603, inlinedAt: !3674)
!3728 = !DILocation(line: 184, column: 19, scope: !3729, inlinedAt: !3674)
!3729 = distinct !DILexicalBlock(scope: !3604, file: !573, line: 182, column: 17)
!3730 = !DILocation(line: 186, column: 17, scope: !3729, inlinedAt: !3674)
!3731 = !DILocation(line: 191, column: 26, scope: !3603, inlinedAt: !3674)
!3732 = !DILocation(line: 196, column: 23, scope: !3600, inlinedAt: !3674)
!3733 = !DILocation(line: 197, column: 23, scope: !3600, inlinedAt: !3674)
!3734 = !DILocalVariable(name: "__fp", arg: 1, scope: !3735, file: !3507, line: 63, type: !3623)
!3735 = distinct !DISubprogram(name: "getc_unlocked", scope: !3507, file: !3507, line: 63, type: !3736, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !229, variables: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!32, !3623}
!3738 = !{!3734}
!3739 = !DILocation(line: 63, column: 22, scope: !3735, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 201, column: 27, scope: !3600, inlinedAt: !3674)
!3741 = !DILocation(line: 65, column: 10, scope: !3735, inlinedAt: !3740)
!3742 = !{!3513, !637, i64 8}
!3743 = !{!3513, !637, i64 16}
!3744 = !{!"branch_weights", i32 2000, i32 1}
!3745 = !DILocation(line: 65, column: 10, scope: !3746, inlinedAt: !3740)
!3746 = !DILexicalBlockFile(scope: !3735, file: !3507, discriminator: 1)
!3747 = !DILocation(line: 65, column: 10, scope: !3748, inlinedAt: !3740)
!3748 = !DILexicalBlockFile(scope: !3735, file: !3507, discriminator: 2)
!3749 = !DILocation(line: 65, column: 10, scope: !3750, inlinedAt: !3740)
!3750 = !DILexicalBlockFile(scope: !3735, file: !3507, discriminator: 3)
!3751 = !DILocation(line: 195, column: 27, scope: !3600, inlinedAt: !3674)
!3752 = !DILocation(line: 202, column: 27, scope: !3600, inlinedAt: !3674)
!3753 = !DILocation(line: 63, column: 22, scope: !3735, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 210, column: 33, scope: !3755, inlinedAt: !3674)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !573, line: 207, column: 25)
!3756 = distinct !DILexicalBlock(scope: !3600, file: !573, line: 206, column: 27)
!3757 = !DILocation(line: 65, column: 10, scope: !3735, inlinedAt: !3754)
!3758 = !DILocation(line: 65, column: 10, scope: !3746, inlinedAt: !3754)
!3759 = !DILocation(line: 65, column: 10, scope: !3748, inlinedAt: !3754)
!3760 = !DILocation(line: 65, column: 10, scope: !3750, inlinedAt: !3754)
!3761 = !DILocation(line: 210, column: 29, scope: !3762, inlinedAt: !3674)
!3762 = !DILexicalBlockFile(scope: !3755, file: !573, discriminator: 1)
!3763 = distinct !{!3763, !3764, !3765}
!3764 = !DILocation(line: 193, column: 19, scope: !3602)
!3765 = !DILocation(line: 241, column: 21, scope: !3602)
!3766 = !DILocation(line: 216, column: 23, scope: !3600, inlinedAt: !3674)
!3767 = !DILocation(line: 217, column: 27, scope: !3768, inlinedAt: !3674)
!3768 = distinct !DILexicalBlock(scope: !3600, file: !573, line: 217, column: 27)
!3769 = !DILocation(line: 217, column: 64, scope: !3768, inlinedAt: !3674)
!3770 = !DILocation(line: 217, column: 27, scope: !3600, inlinedAt: !3674)
!3771 = !DILocation(line: 219, column: 28, scope: !3600, inlinedAt: !3674)
!3772 = !DILocation(line: 198, column: 30, scope: !3600, inlinedAt: !3674)
!3773 = !DILocation(line: 220, column: 28, scope: !3600, inlinedAt: !3674)
!3774 = !DILocation(line: 198, column: 34, scope: !3600, inlinedAt: !3674)
!3775 = !DILocation(line: 199, column: 29, scope: !3600, inlinedAt: !3674)
!3776 = !DILocation(line: 222, column: 36, scope: !3777, inlinedAt: !3674)
!3777 = distinct !DILexicalBlock(scope: !3600, file: !573, line: 222, column: 27)
!3778 = !DILocation(line: 222, column: 27, scope: !3600, inlinedAt: !3674)
!3779 = !DILocation(line: 225, column: 63, scope: !3780, inlinedAt: !3674)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !573, line: 223, column: 25)
!3781 = !DILocation(line: 225, column: 46, scope: !3780, inlinedAt: !3674)
!3782 = !DILocation(line: 226, column: 25, scope: !3780, inlinedAt: !3674)
!3783 = !DILocation(line: 229, column: 36, scope: !3784, inlinedAt: !3674)
!3784 = distinct !DILexicalBlock(scope: !3777, file: !573, line: 228, column: 25)
!3785 = !DILocation(line: 230, column: 73, scope: !3784, inlinedAt: !3674)
!3786 = !DILocation(line: 230, column: 46, scope: !3784, inlinedAt: !3674)
!3787 = !DILocation(line: 232, column: 35, scope: !3788, inlinedAt: !3674)
!3788 = distinct !DILexicalBlock(scope: !3600, file: !573, line: 232, column: 27)
!3789 = !DILocation(line: 232, column: 27, scope: !3600, inlinedAt: !3674)
!3790 = !DILocation(line: 236, column: 27, scope: !3791, inlinedAt: !3674)
!3791 = distinct !DILexicalBlock(scope: !3788, file: !573, line: 233, column: 25)
!3792 = !DILocation(line: 237, column: 27, scope: !3791, inlinedAt: !3674)
!3793 = !DILocation(line: 239, column: 39, scope: !3600, inlinedAt: !3674)
!3794 = !DILocation(line: 239, column: 50, scope: !3600, inlinedAt: !3674)
!3795 = !DILocation(line: 239, column: 61, scope: !3600, inlinedAt: !3674)
!3796 = !DILocalVariable(name: "__dest", arg: 1, scope: !3797, file: !3798, line: 107, type: !3801)
!3797 = distinct !DISubprogram(name: "strcpy", scope: !3798, file: !3798, line: 107, type: !3799, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !229, variables: !3803)
!3798 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!13, !3801, !3802}
!3801 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!3802 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!3803 = !{!3796, !3804}
!3804 = !DILocalVariable(name: "__src", arg: 2, scope: !3797, file: !3798, line: 107, type: !3802)
!3805 = !DILocation(line: 107, column: 1, scope: !3797, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 239, column: 23, scope: !3600, inlinedAt: !3674)
!3807 = !DILocation(line: 109, column: 49, scope: !3797, inlinedAt: !3806)
!3808 = !DILocation(line: 109, column: 10, scope: !3797, inlinedAt: !3806)
!3809 = !DILocation(line: 107, column: 1, scope: !3797, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 240, column: 23, scope: !3600, inlinedAt: !3674)
!3811 = !DILocation(line: 109, column: 49, scope: !3797, inlinedAt: !3810)
!3812 = !DILocation(line: 109, column: 10, scope: !3797, inlinedAt: !3810)
!3813 = !DILocation(line: 241, column: 21, scope: !3601, inlinedAt: !3674)
!3814 = !DILocation(line: 242, column: 19, scope: !3603, inlinedAt: !3674)
!3815 = !DILocation(line: 243, column: 32, scope: !3816, inlinedAt: !3674)
!3816 = distinct !DILexicalBlock(scope: !3603, file: !573, line: 243, column: 23)
!3817 = !DILocation(line: 243, column: 23, scope: !3603, inlinedAt: !3674)
!3818 = !DILocation(line: 247, column: 33, scope: !3819, inlinedAt: !3674)
!3819 = distinct !DILexicalBlock(scope: !3816, file: !573, line: 246, column: 21)
!3820 = !DILocation(line: 247, column: 45, scope: !3819, inlinedAt: !3674)
!3821 = !DILocation(line: 253, column: 11, scope: !3607, inlinedAt: !3674)
!3822 = !DILocation(line: 377, column: 23, scope: !3609, inlinedAt: !3674)
!3823 = !DILocation(line: 378, column: 5, scope: !3609, inlinedAt: !3674)
!3824 = !DILocation(line: 396, column: 15, scope: !3587)
!3825 = !DILocation(line: 590, column: 8, scope: !3596)
!3826 = !DILocation(line: 590, column: 17, scope: !3596)
!3827 = !DILocation(line: 589, column: 3, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3597, file: !573, discriminator: 1)
!3829 = !DILocation(line: 592, column: 9, scope: !3594)
!3830 = !DILocation(line: 592, column: 35, scope: !3595)
!3831 = !DILocation(line: 593, column: 9, scope: !3595)
!3832 = !DILocation(line: 593, column: 24, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !3595, file: !573, discriminator: 1)
!3834 = !DILocation(line: 593, column: 31, scope: !3833)
!3835 = !DILocation(line: 593, column: 34, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3595, file: !573, discriminator: 2)
!3837 = !DILocation(line: 593, column: 45, scope: !3836)
!3838 = !DILocation(line: 592, column: 9, scope: !3839)
!3839 = !DILexicalBlockFile(scope: !3596, file: !573, discriminator: 1)
!3840 = !DILocation(line: 595, column: 29, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3595, file: !573, line: 594, column: 7)
!3842 = !DILocation(line: 595, column: 27, scope: !3841)
!3843 = !DILocation(line: 595, column: 46, scope: !3841)
!3844 = !DILocation(line: 596, column: 9, scope: !3841)
!3845 = !DILocation(line: 591, column: 19, scope: !3596)
!3846 = !DILocation(line: 591, column: 36, scope: !3596)
!3847 = !DILocation(line: 591, column: 16, scope: !3596)
!3848 = !DILocation(line: 591, column: 52, scope: !3839)
!3849 = !DILocation(line: 591, column: 69, scope: !3596)
!3850 = !DILocation(line: 591, column: 49, scope: !3596)
!3851 = distinct !{!3851, !3852, !3853}
!3852 = !DILocation(line: 589, column: 3, scope: !3597)
!3853 = !DILocation(line: 597, column: 7, scope: !3597)
!3854 = !DILocation(line: 602, column: 7, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3587, file: !573, line: 602, column: 7)
!3856 = !DILocation(line: 602, column: 18, scope: !3855)
!3857 = !DILocation(line: 602, column: 7, scope: !3587)
!3858 = !DILocation(line: 612, column: 3, scope: !3587)
!3859 = distinct !DISubprogram(name: "rpl_fclose", scope: !3860, file: !3860, line: 56, type: !3861, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !3903)
!3860 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!32, !3863}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 49, baseType: !3865)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3865, file: !2900, line: 242, baseType: !32, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3865, file: !2900, line: 247, baseType: !13, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3865, file: !2900, line: 248, baseType: !13, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3865, file: !2900, line: 249, baseType: !13, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3865, file: !2900, line: 250, baseType: !13, size: 64, offset: 256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3865, file: !2900, line: 251, baseType: !13, size: 64, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3865, file: !2900, line: 252, baseType: !13, size: 64, offset: 384)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3865, file: !2900, line: 253, baseType: !13, size: 64, offset: 448)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3865, file: !2900, line: 254, baseType: !13, size: 64, offset: 512)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3865, file: !2900, line: 256, baseType: !13, size: 64, offset: 576)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3865, file: !2900, line: 257, baseType: !13, size: 64, offset: 640)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3865, file: !2900, line: 258, baseType: !13, size: 64, offset: 704)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3865, file: !2900, line: 260, baseType: !3880, size: 64, offset: 768)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !3882)
!3882 = !{!3883, !3884, !3886}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3881, file: !2900, line: 157, baseType: !3880, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3881, file: !2900, line: 158, baseType: !3885, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3881, file: !2900, line: 162, baseType: !32, size: 32, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3865, file: !2900, line: 262, baseType: !3885, size: 64, offset: 832)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3865, file: !2900, line: 264, baseType: !32, size: 32, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3865, file: !2900, line: 268, baseType: !32, size: 32, offset: 928)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3865, file: !2900, line: 270, baseType: !2926, size: 64, offset: 960)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3865, file: !2900, line: 274, baseType: !174, size: 16, offset: 1024)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3865, file: !2900, line: 275, baseType: !2931, size: 8, offset: 1040)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3865, file: !2900, line: 276, baseType: !2933, size: 8, offset: 1048)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3865, file: !2900, line: 280, baseType: !2935, size: 64, offset: 1088)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3865, file: !2900, line: 289, baseType: !2938, size: 64, offset: 1152)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3865, file: !2900, line: 297, baseType: !15, size: 64, offset: 1216)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3865, file: !2900, line: 298, baseType: !15, size: 64, offset: 1280)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3865, file: !2900, line: 299, baseType: !15, size: 64, offset: 1344)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3865, file: !2900, line: 300, baseType: !15, size: 64, offset: 1408)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3865, file: !2900, line: 302, baseType: !16, size: 64, offset: 1472)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3865, file: !2900, line: 303, baseType: !32, size: 32, offset: 1536)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3865, file: !2900, line: 305, baseType: !2946, size: 160, offset: 1568)
!3903 = !{!3904, !3905, !3906, !3907}
!3904 = !DILocalVariable(name: "fp", arg: 1, scope: !3859, file: !3860, line: 56, type: !3863)
!3905 = !DILocalVariable(name: "saved_errno", scope: !3859, file: !3860, line: 58, type: !32)
!3906 = !DILocalVariable(name: "fd", scope: !3859, file: !3860, line: 59, type: !32)
!3907 = !DILocalVariable(name: "result", scope: !3859, file: !3860, line: 60, type: !32)
!3908 = !DILocation(line: 56, column: 19, scope: !3859)
!3909 = !DILocation(line: 58, column: 7, scope: !3859)
!3910 = !DILocation(line: 60, column: 7, scope: !3859)
!3911 = !DILocation(line: 63, column: 8, scope: !3859)
!3912 = !DILocation(line: 59, column: 7, scope: !3859)
!3913 = !DILocation(line: 64, column: 10, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3859, file: !3860, line: 64, column: 7)
!3915 = !DILocation(line: 64, column: 7, scope: !3859)
!3916 = !DILocation(line: 65, column: 12, scope: !3914)
!3917 = !DILocation(line: 65, column: 5, scope: !3914)
!3918 = !DILocation(line: 70, column: 9, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3859, file: !3860, line: 70, column: 7)
!3920 = !DILocation(line: 70, column: 23, scope: !3919)
!3921 = !DILocation(line: 70, column: 33, scope: !3922)
!3922 = !DILexicalBlockFile(scope: !3919, file: !3860, discriminator: 1)
!3923 = !DILocation(line: 70, column: 26, scope: !3924)
!3924 = !DILexicalBlockFile(scope: !3919, file: !3860, discriminator: 3)
!3925 = !DILocation(line: 70, column: 59, scope: !3922)
!3926 = !DILocation(line: 71, column: 7, scope: !3919)
!3927 = !DILocation(line: 71, column: 10, scope: !3922)
!3928 = !DILocation(line: 70, column: 7, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3859, file: !3860, discriminator: 2)
!3930 = !DILocation(line: 98, column: 12, scope: !3859)
!3931 = !DILocation(line: 103, column: 7, scope: !3859)
!3932 = !DILocation(line: 72, column: 19, scope: !3919)
!3933 = !DILocation(line: 103, column: 19, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3859, file: !3860, line: 103, column: 7)
!3935 = !DILocation(line: 105, column: 13, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3934, file: !3860, line: 104, column: 5)
!3937 = !DILocation(line: 107, column: 5, scope: !3936)
!3938 = !DILocation(line: 110, column: 1, scope: !3859)
!3939 = distinct !DISubprogram(name: "rpl_fflush", scope: !3940, file: !3940, line: 127, type: !3941, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3983)
!3940 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!32, !3943}
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 49, baseType: !3945)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !3946)
!3946 = !{!3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3945, file: !2900, line: 242, baseType: !32, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3945, file: !2900, line: 247, baseType: !13, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3945, file: !2900, line: 248, baseType: !13, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3945, file: !2900, line: 249, baseType: !13, size: 64, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3945, file: !2900, line: 250, baseType: !13, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3945, file: !2900, line: 251, baseType: !13, size: 64, offset: 320)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3945, file: !2900, line: 252, baseType: !13, size: 64, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3945, file: !2900, line: 253, baseType: !13, size: 64, offset: 448)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3945, file: !2900, line: 254, baseType: !13, size: 64, offset: 512)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3945, file: !2900, line: 256, baseType: !13, size: 64, offset: 576)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3945, file: !2900, line: 257, baseType: !13, size: 64, offset: 640)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3945, file: !2900, line: 258, baseType: !13, size: 64, offset: 704)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3945, file: !2900, line: 260, baseType: !3960, size: 64, offset: 768)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !3962)
!3962 = !{!3963, !3964, !3966}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3961, file: !2900, line: 157, baseType: !3960, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3961, file: !2900, line: 158, baseType: !3965, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3961, file: !2900, line: 162, baseType: !32, size: 32, offset: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3945, file: !2900, line: 262, baseType: !3965, size: 64, offset: 832)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3945, file: !2900, line: 264, baseType: !32, size: 32, offset: 896)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3945, file: !2900, line: 268, baseType: !32, size: 32, offset: 928)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3945, file: !2900, line: 270, baseType: !2926, size: 64, offset: 960)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3945, file: !2900, line: 274, baseType: !174, size: 16, offset: 1024)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3945, file: !2900, line: 275, baseType: !2931, size: 8, offset: 1040)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3945, file: !2900, line: 276, baseType: !2933, size: 8, offset: 1048)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3945, file: !2900, line: 280, baseType: !2935, size: 64, offset: 1088)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3945, file: !2900, line: 289, baseType: !2938, size: 64, offset: 1152)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3945, file: !2900, line: 297, baseType: !15, size: 64, offset: 1216)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3945, file: !2900, line: 298, baseType: !15, size: 64, offset: 1280)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3945, file: !2900, line: 299, baseType: !15, size: 64, offset: 1344)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3945, file: !2900, line: 300, baseType: !15, size: 64, offset: 1408)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3945, file: !2900, line: 302, baseType: !16, size: 64, offset: 1472)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3945, file: !2900, line: 303, baseType: !32, size: 32, offset: 1536)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3945, file: !2900, line: 305, baseType: !2946, size: 160, offset: 1568)
!3983 = !{!3984}
!3984 = !DILocalVariable(name: "stream", arg: 1, scope: !3939, file: !3940, line: 127, type: !3943)
!3985 = !DILocation(line: 127, column: 19, scope: !3939)
!3986 = !DILocation(line: 148, column: 14, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3939, file: !3940, line: 148, column: 7)
!3988 = !DILocation(line: 148, column: 22, scope: !3987)
!3989 = !DILocation(line: 148, column: 27, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3987, file: !3940, discriminator: 1)
!3991 = !DILocation(line: 148, column: 7, scope: !3992)
!3992 = !DILexicalBlockFile(scope: !3939, file: !3940, discriminator: 1)
!3993 = !DILocation(line: 149, column: 12, scope: !3987)
!3994 = !DILocation(line: 149, column: 5, scope: !3987)
!3995 = !DILocalVariable(name: "fp", arg: 1, scope: !3996, file: !3940, line: 40, type: !3943)
!3996 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3940, file: !3940, line: 40, type: !3997, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{null, !3943}
!3999 = !{!3995}
!4000 = !DILocation(line: 40, column: 48, scope: !3996, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 153, column: 3, scope: !3939)
!4002 = !DILocation(line: 42, column: 11, scope: !4003, inlinedAt: !4001)
!4003 = distinct !DILexicalBlock(scope: !3996, file: !3940, line: 42, column: 7)
!4004 = !DILocation(line: 42, column: 18, scope: !4003, inlinedAt: !4001)
!4005 = !DILocation(line: 42, column: 7, scope: !3996, inlinedAt: !4001)
!4006 = !DILocation(line: 44, column: 5, scope: !4003, inlinedAt: !4001)
!4007 = !DILocation(line: 155, column: 10, scope: !3939)
!4008 = !DILocation(line: 155, column: 3, scope: !3939)
!4009 = !DILocation(line: 229, column: 1, scope: !3939)
!4010 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4011, file: !4011, line: 28, type: !4012, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !4055)
!4011 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!32, !4014, !4054, !32}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2898, line: 49, baseType: !4016)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2900, line: 241, size: 1728, elements: !4017)
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4016, file: !2900, line: 242, baseType: !32, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4016, file: !2900, line: 247, baseType: !13, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4016, file: !2900, line: 248, baseType: !13, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4016, file: !2900, line: 249, baseType: !13, size: 64, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4016, file: !2900, line: 250, baseType: !13, size: 64, offset: 256)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4016, file: !2900, line: 251, baseType: !13, size: 64, offset: 320)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4016, file: !2900, line: 252, baseType: !13, size: 64, offset: 384)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4016, file: !2900, line: 253, baseType: !13, size: 64, offset: 448)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4016, file: !2900, line: 254, baseType: !13, size: 64, offset: 512)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4016, file: !2900, line: 256, baseType: !13, size: 64, offset: 576)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4016, file: !2900, line: 257, baseType: !13, size: 64, offset: 640)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4016, file: !2900, line: 258, baseType: !13, size: 64, offset: 704)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4016, file: !2900, line: 260, baseType: !4031, size: 64, offset: 768)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2900, line: 156, size: 192, elements: !4033)
!4033 = !{!4034, !4035, !4037}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4032, file: !2900, line: 157, baseType: !4031, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4032, file: !2900, line: 158, baseType: !4036, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4032, file: !2900, line: 162, baseType: !32, size: 32, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4016, file: !2900, line: 262, baseType: !4036, size: 64, offset: 832)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4016, file: !2900, line: 264, baseType: !32, size: 32, offset: 896)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4016, file: !2900, line: 268, baseType: !32, size: 32, offset: 928)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4016, file: !2900, line: 270, baseType: !2926, size: 64, offset: 960)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4016, file: !2900, line: 274, baseType: !174, size: 16, offset: 1024)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4016, file: !2900, line: 275, baseType: !2931, size: 8, offset: 1040)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4016, file: !2900, line: 276, baseType: !2933, size: 8, offset: 1048)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4016, file: !2900, line: 280, baseType: !2935, size: 64, offset: 1088)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4016, file: !2900, line: 289, baseType: !2938, size: 64, offset: 1152)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4016, file: !2900, line: 297, baseType: !15, size: 64, offset: 1216)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4016, file: !2900, line: 298, baseType: !15, size: 64, offset: 1280)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4016, file: !2900, line: 299, baseType: !15, size: 64, offset: 1344)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4016, file: !2900, line: 300, baseType: !15, size: 64, offset: 1408)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4016, file: !2900, line: 302, baseType: !16, size: 64, offset: 1472)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4016, file: !2900, line: 303, baseType: !32, size: 32, offset: 1536)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4016, file: !2900, line: 305, baseType: !2946, size: 160, offset: 1568)
!4054 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2898, line: 91, baseType: !2926)
!4055 = !{!4056, !4057, !4058, !4059}
!4056 = !DILocalVariable(name: "fp", arg: 1, scope: !4010, file: !4011, line: 28, type: !4014)
!4057 = !DILocalVariable(name: "offset", arg: 2, scope: !4010, file: !4011, line: 28, type: !4054)
!4058 = !DILocalVariable(name: "whence", arg: 3, scope: !4010, file: !4011, line: 28, type: !32)
!4059 = !DILocalVariable(name: "pos", scope: !4060, file: !4011, line: 116, type: !4054)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !4011, line: 112, column: 5)
!4061 = distinct !DILexicalBlock(scope: !4010, file: !4011, line: 51, column: 7)
!4062 = !DILocation(line: 28, column: 15, scope: !4010)
!4063 = !DILocation(line: 28, column: 25, scope: !4010)
!4064 = !DILocation(line: 28, column: 37, scope: !4010)
!4065 = !DILocation(line: 51, column: 11, scope: !4061)
!4066 = !DILocation(line: 51, column: 31, scope: !4061)
!4067 = !DILocation(line: 51, column: 24, scope: !4061)
!4068 = !DILocation(line: 52, column: 7, scope: !4061)
!4069 = !DILocation(line: 52, column: 14, scope: !4070)
!4070 = !DILexicalBlockFile(scope: !4061, file: !4011, discriminator: 1)
!4071 = !{!3513, !637, i64 40}
!4072 = !DILocation(line: 52, column: 35, scope: !4070)
!4073 = !{!3513, !637, i64 32}
!4074 = !DILocation(line: 52, column: 28, scope: !4070)
!4075 = !DILocation(line: 53, column: 7, scope: !4061)
!4076 = !DILocation(line: 53, column: 14, scope: !4070)
!4077 = !{!3513, !637, i64 72}
!4078 = !DILocation(line: 53, column: 28, scope: !4070)
!4079 = !DILocation(line: 51, column: 7, scope: !4080)
!4080 = !DILexicalBlockFile(scope: !4010, file: !4011, discriminator: 1)
!4081 = !DILocation(line: 116, column: 26, scope: !4060)
!4082 = !DILocation(line: 116, column: 19, scope: !4083)
!4083 = !DILexicalBlockFile(scope: !4060, file: !4011, discriminator: 1)
!4084 = !DILocation(line: 116, column: 13, scope: !4060)
!4085 = !DILocation(line: 117, column: 15, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4060, file: !4011, line: 117, column: 11)
!4087 = !DILocation(line: 117, column: 11, scope: !4060)
!4088 = !DILocation(line: 127, column: 11, scope: !4060)
!4089 = !DILocation(line: 127, column: 18, scope: !4060)
!4090 = !DILocation(line: 128, column: 11, scope: !4060)
!4091 = !DILocation(line: 128, column: 19, scope: !4060)
!4092 = !{!3513, !2210, i64 144}
!4093 = !DILocation(line: 159, column: 7, scope: !4060)
!4094 = !DILocation(line: 161, column: 10, scope: !4010)
!4095 = !DILocation(line: 161, column: 3, scope: !4010)
!4096 = !DILocation(line: 162, column: 1, scope: !4010)
