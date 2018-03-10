; ModuleID = 'coreutils-8.27/src/basename.bc'
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
@.str.1 = private unnamed_addr constant [53 x i8] c"Usage: %s NAME [SUFFIX]\0A  or:  %s OPTION... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print NAME with any leading directory components removed.\0AIf specified, also remove a trailing SUFFIX.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [202 x i8] c"  -a, --multiple       support multiple arguments and treat each as a NAME\0A  -s, --suffix=SUFFIX  remove a trailing SUFFIX; implies -a\0A  -z, --zero           end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AExamples:\0A  %s /usr/bin/sort          -> \22sort\22\0A  %s include/stdio.h .h     -> \22stdio\22\0A  %s -s .h include/stdio.h  -> \22stdio\22\0A  %s -a any/str1 any/str2   -> \22str1\22 followed by \22str2\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
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
@.str.11 = private unnamed_addr constant [6 x i8] c"+as:z\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !63
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !68
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !73
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !77
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !84
@.str.37 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.38 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.39 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.43, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.49, i32 0, i32 0), i8* null], align 16, !dbg !91
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !133
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !140
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !153
@.str.11.50 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.51 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.52 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.53 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.54 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.55 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !160
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !167
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !155
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !169
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
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !175
@.str.1.91 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.103 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.106 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !184
@.str.3.107 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.108 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.109 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.110 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.111 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !589 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !593, metadata !594), !dbg !595
  %2 = icmp eq i32 %0, 0, !dbg !596
  br i1 %2, label %8, label %3, !dbg !598

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !599, !tbaa !602
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !599
  %6 = load i8*, i8** @program_name, align 8, !dbg !599, !tbaa !602
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !606
  br label %45, !dbg !608

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !610
  %10 = load i8*, i8** @program_name, align 8, !dbg !610, !tbaa !602
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !612
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !614
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !602
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !615
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !616
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !602
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !621
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !623
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !602
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !624
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !625
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !625, !tbaa !602
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !626
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !627
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !602
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !628
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !629
  %28 = load i8*, i8** @program_name, align 8, !dbg !629, !tbaa !602
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* %28, i8* %28, i8* %28, i8* %28) #10, !dbg !630
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !28, metadata !594) #10, !dbg !631
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !28, metadata !594) #10, !dbg !631
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !633
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !634
  %32 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !636
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !39, metadata !594) #10, !dbg !637
  %33 = icmp eq i8* %32, null, !dbg !638
  br i1 %33, label %40, label %34, !dbg !639

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #13, !dbg !640
  %36 = icmp eq i32 %35, 0, !dbg !640
  br i1 %36, label %40, label %37, !dbg !642

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !644
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !646
  br label %40, !dbg !648

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !649
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !650
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !651
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !652
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #14, !dbg !653
  unreachable, !dbg !653
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !654 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !659, metadata !594), !dbg !666
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !660, metadata !594), !dbg !667
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !661, metadata !594), !dbg !668
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !662, metadata !594), !dbg !669
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !663, metadata !594), !dbg !670
  %3 = load i8*, i8** %1, align 8, !dbg !671, !tbaa !602
  tail call void @set_program_name(i8* %3) #10, !dbg !672
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !673
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !674
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !675
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !676
  br label %17, !dbg !677

; <label>:8:                                      ; preds = %12
  br label %9, !dbg !670

; <label>:9:                                      ; preds = %8, %17
  %10 = phi i8 [ %18, %17 ], [ 1, %8 ]
  %11 = phi i8 [ %19, %17 ], [ %13, %8 ]
  br label %12, !dbg !670

; <label>:12:                                     ; preds = %12, %9
  %13 = phi i8 [ %11, %9 ], [ 1, %12 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !663, metadata !594), !dbg !670
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !662, metadata !594), !dbg !669
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !661, metadata !594), !dbg !668
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !678
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !664, metadata !594), !dbg !679
  switch i32 %14, label %25 [
    i32 -1, label %26
    i32 115, label %15
    i32 97, label %8
    i32 122, label %12
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !680

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** @optarg, align 8, !dbg !681, !tbaa !602
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !663, metadata !594), !dbg !670
  br label %17, !dbg !683

; <label>:17:                                     ; preds = %2, %15
  %18 = phi i8 [ 0, %2 ], [ 1, %15 ]
  %19 = phi i8 [ 0, %2 ], [ %13, %15 ]
  %20 = phi i8* [ null, %2 ], [ %16, %15 ]
  br label %9, !dbg !670

; <label>:21:                                     ; preds = %12
  tail call void @usage(i32 0) #15, !dbg !684
  unreachable, !dbg !684

; <label>:22:                                     ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !602
  %24 = load i8*, i8** @Version, align 8, !dbg !685, !tbaa !602
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #10, !dbg !685
  tail call void @exit(i32 0) #14, !dbg !686
  unreachable, !dbg !685

; <label>:25:                                     ; preds = %12
  tail call void @usage(i32 1) #15, !dbg !688
  unreachable, !dbg !688

; <label>:26:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !663, metadata !594), !dbg !670
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !662, metadata !594), !dbg !669
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !661, metadata !594), !dbg !668
  %27 = load i32, i32* @optind, align 4, !dbg !689, !tbaa !691
  %28 = icmp slt i32 %27, %0, !dbg !693
  br i1 %28, label %31, label %29, !dbg !694

; <label>:29:                                     ; preds = %26
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !695
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30) #10, !dbg !697
  tail call void @usage(i32 1) #15, !dbg !699
  unreachable, !dbg !699

; <label>:31:                                     ; preds = %26
  %32 = icmp ne i8 %10, 0, !dbg !700
  %33 = xor i1 %32, true, !dbg !702
  %34 = add nsw i32 %27, 2, !dbg !703
  %35 = icmp slt i32 %34, %0, !dbg !705
  %36 = and i1 %35, %33, !dbg !702
  br i1 %36, label %37, label %45, !dbg !702

; <label>:37:                                     ; preds = %31
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !706
  %39 = load i32, i32* @optind, align 4, !dbg !708, !tbaa !691
  %40 = add nsw i32 %39, 2, !dbg !709
  %41 = sext i32 %40 to i64, !dbg !710
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !710
  %43 = load i8*, i8** %42, align 8, !dbg !710, !tbaa !602
  %44 = tail call i8* @quote(i8* %43) #10, !dbg !711
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38, i8* %44) #10, !dbg !713
  tail call void @usage(i32 1) #15, !dbg !715
  unreachable, !dbg !715

; <label>:45:                                     ; preds = %31
  br i1 %32, label %46, label %56, !dbg !716

; <label>:46:                                     ; preds = %45
  %47 = icmp ne i8 %13, 0
  br label %48, !dbg !717

; <label>:48:                                     ; preds = %46, %48
  %49 = phi i32 [ %27, %46 ], [ %54, %48 ]
  %50 = sext i32 %49 to i64, !dbg !722
  %51 = getelementptr inbounds i8*, i8** %1, i64 %50, !dbg !722
  %52 = load i8*, i8** %51, align 8, !dbg !722, !tbaa !602
  tail call fastcc void @perform_basename(i8* %52, i8* %20, i1 zeroext %47), !dbg !724
  %53 = load i32, i32* @optind, align 4, !dbg !725, !tbaa !691
  %54 = add nsw i32 %53, 1, !dbg !725
  store i32 %54, i32* @optind, align 4, !dbg !725, !tbaa !691
  %55 = icmp slt i32 %54, %0, !dbg !727
  br i1 %55, label %48, label %69, !dbg !717, !llvm.loop !729

; <label>:56:                                     ; preds = %45
  %57 = sext i32 %27 to i64, !dbg !732
  %58 = getelementptr inbounds i8*, i8** %1, i64 %57, !dbg !732
  %59 = load i8*, i8** %58, align 8, !dbg !732, !tbaa !602
  %60 = icmp eq i32 %34, %0, !dbg !733
  br i1 %60, label %61, label %66, !dbg !734

; <label>:61:                                     ; preds = %56
  %62 = add nsw i32 %27, 1, !dbg !735
  %63 = sext i32 %62 to i64, !dbg !737
  %64 = getelementptr inbounds i8*, i8** %1, i64 %63, !dbg !737
  %65 = load i8*, i8** %64, align 8, !dbg !737, !tbaa !602
  br label %66, !dbg !738

; <label>:66:                                     ; preds = %56, %61
  %67 = phi i8* [ %65, %61 ], [ null, %56 ], !dbg !739
  %68 = icmp ne i8 %13, 0, !dbg !741
  tail call fastcc void @perform_basename(i8* %59, i8* %67, i1 zeroext %68), !dbg !742
  br label %70

; <label>:69:                                     ; preds = %48
  br label %70, !dbg !743

; <label>:70:                                     ; preds = %69, %66
  ret i32 0, !dbg !743
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
define internal fastcc void @perform_basename(i8*, i8* readonly, i1 zeroext) unnamed_addr #6 !dbg !744 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !748, metadata !594), !dbg !752
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !749, metadata !594), !dbg !753
  tail call void @llvm.dbg.value(metadata i1 %2, i64 0, metadata !750, metadata !754), !dbg !755
  %4 = tail call i8* @base_name(i8* %0) #10, !dbg !756
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !751, metadata !594), !dbg !757
  %5 = tail call zeroext i1 @strip_trailing_slashes(i8* %4) #10, !dbg !758
  %6 = icmp eq i8* %1, null, !dbg !759
  br i1 %6, label %30, label %7, !dbg !761

; <label>:7:                                      ; preds = %3
  %8 = load i8, i8* %4, align 1, !dbg !762, !tbaa !764
  %9 = icmp eq i8 %8, 47, !dbg !762
  br i1 %9, label %30, label %10, !dbg !765

; <label>:10:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !767, metadata !594) #10, !dbg !775
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !772, metadata !594) #10, !dbg !777
  %11 = tail call i64 @strlen(i8* nonnull %4) #13, !dbg !778
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !779
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !773, metadata !594) #10, !dbg !780
  %13 = tail call i64 @strlen(i8* nonnull %1) #13, !dbg !781
  %14 = getelementptr inbounds i8, i8* %1, i64 %13, !dbg !782
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !774, metadata !594) #10, !dbg !783
  br label %15, !dbg !784

; <label>:15:                                     ; preds = %21, %10
  %16 = phi i8* [ %12, %10 ], [ %22, %21 ]
  %17 = phi i8* [ %14, %10 ], [ %24, %21 ]
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !774, metadata !594) #10, !dbg !783
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !773, metadata !594) #10, !dbg !780
  %18 = icmp ugt i8* %16, %4, !dbg !785
  %19 = icmp ugt i8* %17, %1, !dbg !787
  %20 = and i1 %18, %19, !dbg !789
  br i1 %20, label %21, label %27, !dbg !790

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !792
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !773, metadata !594) #10, !dbg !780
  %23 = load i8, i8* %22, align 1, !dbg !794, !tbaa !764
  %24 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !795
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !774, metadata !594) #10, !dbg !783
  %25 = load i8, i8* %24, align 1, !dbg !796, !tbaa !764
  %26 = icmp eq i8 %23, %25, !dbg !797
  br i1 %26, label %15, label %29, !dbg !798, !llvm.loop !799

; <label>:27:                                     ; preds = %15
  br i1 %18, label %28, label %30, !dbg !802

; <label>:28:                                     ; preds = %27
  store i8 0, i8* %16, align 1, !dbg !803, !tbaa !764
  br label %30, !dbg !805

; <label>:29:                                     ; preds = %21
  br label %30, !dbg !806

; <label>:30:                                     ; preds = %29, %28, %27, %3, %7
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !806, !tbaa !602
  %32 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %31) #10, !dbg !806
  %33 = select i1 %2, i32 0, i32 10, !dbg !807
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !808, metadata !594) #10, !dbg !814
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !816, !tbaa !602
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 5, !dbg !816
  %36 = load i8*, i8** %35, align 8, !dbg !816, !tbaa !817
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 6, !dbg !816
  %38 = load i8*, i8** %37, align 8, !dbg !816, !tbaa !821
  %39 = icmp ult i8* %36, %38, !dbg !816
  br i1 %39, label %42, label %40, !dbg !816, !prof !822

; <label>:40:                                     ; preds = %30
  %41 = tail call i32 @__overflow(%struct._IO_FILE* %34, i32 %33) #10, !dbg !823
  br label %45, !dbg !823

; <label>:42:                                     ; preds = %30
  %43 = trunc i32 %33 to i8, !dbg !825
  %44 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !825
  store i8* %44, i8** %35, align 8, !dbg !825, !tbaa !817
  store i8 %43, i8* %36, align 1, !dbg !825, !tbaa !764
  br label %45, !dbg !825

; <label>:45:                                     ; preds = %40, %42
  tail call void @free(i8* %4) #10, !dbg !827
  ret void, !dbg !828
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !829 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !831, metadata !594), !dbg !832
  store i8* %0, i8** @file_name, align 8, !dbg !833, !tbaa !602
  ret void, !dbg !834
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !835 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !839, metadata !754), !dbg !840
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !841, !tbaa !842
  ret void, !dbg !844
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !845 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !850, !tbaa !602
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !851
  %3 = icmp eq i32 %2, 0, !dbg !852
  br i1 %3, label %21, label %4, !dbg !853

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !854, !tbaa !842, !range !856
  %6 = icmp eq i8 %5, 0, !dbg !854
  %7 = tail call i32* @__errno_location() #1, !dbg !857
  br i1 %6, label %11, label %8, !dbg !859

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !860, !tbaa !691
  %10 = icmp eq i32 %9, 32, !dbg !862
  br i1 %10, label %21, label %11, !dbg !863

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !865
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !847, metadata !594), !dbg !866
  %13 = load i8*, i8** @file_name, align 8, !dbg !867, !tbaa !602
  %14 = icmp eq i8* %13, null, !dbg !867
  %15 = load i32, i32* %7, align 4, !tbaa !691
  br i1 %14, label %18, label %16, !dbg !868

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !869
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !871
  br label %19, !dbg !873

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #10, !dbg !874
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !875, !tbaa !691
  tail call void @_exit(i32 %20) #14, !dbg !876
  unreachable, !dbg !876

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !877, !tbaa !602
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !879
  %24 = icmp eq i32 %23, 0, !dbg !880
  br i1 %24, label %27, label %25, !dbg !881

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !882, !tbaa !691
  tail call void @_exit(i32 %26) #14, !dbg !883
  unreachable, !dbg !883

; <label>:27:                                     ; preds = %21
  ret void, !dbg !884
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @base_name(i8*) local_unnamed_addr #6 !dbg !885 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !890, metadata !594), !dbg !893
  %2 = tail call i8* @last_component(i8* %0) #13, !dbg !894
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !891, metadata !594), !dbg !895
  %3 = load i8, i8* %2, align 1, !dbg !896, !tbaa !764
  %4 = icmp eq i8 %3, 0, !dbg !896
  br i1 %4, label %5, label %8, !dbg !898

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @base_len(i8* %0) #13, !dbg !899
  %7 = tail call i8* @xstrndup(i8* %0, i64 %6) #10, !dbg !900
  br label %16, !dbg !902

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @base_len(i8* %2) #13, !dbg !903
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !892, metadata !594), !dbg !904
  %10 = getelementptr inbounds i8, i8* %2, i64 %9, !dbg !905
  %11 = load i8, i8* %10, align 1, !dbg !905, !tbaa !764
  %12 = icmp eq i8 %11, 47, !dbg !905
  %13 = zext i1 %12 to i64, !dbg !907
  %14 = add i64 %13, %9, !dbg !907
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !892, metadata !594), !dbg !904
  %15 = tail call i8* @xstrndup(i8* %2, i64 %14) #10, !dbg !908
  br label %16, !dbg !909

; <label>:16:                                     ; preds = %8, %5
  %17 = phi i8* [ %15, %8 ], [ %7, %5 ]
  ret i8* %17, !dbg !910
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #9 !dbg !911 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !914, metadata !594), !dbg !918
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !915, metadata !594), !dbg !919
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !917, metadata !594), !dbg !920
  br label %2, !dbg !921

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !915, metadata !594), !dbg !919
  %4 = load i8, i8* %3, align 1, !dbg !922, !tbaa !764
  %5 = icmp eq i8 %4, 47, !dbg !922
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !924
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !915, metadata !594), !dbg !919
  br i1 %5, label %2, label %7, !dbg !925, !llvm.loop !926

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !920

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !927
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !917, metadata !594), !dbg !920
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !916, metadata !594), !dbg !931
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !915, metadata !594), !dbg !919
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !932

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !934
  %15 = icmp eq i8 %14, 0, !dbg !934
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !915, metadata !594), !dbg !919
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !917, metadata !594), !dbg !920
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !938
  %17 = select i1 %15, i8 %12, i8 0, !dbg !938
  br label %18, !dbg !938

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !917, metadata !594), !dbg !920
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !915, metadata !594), !dbg !919
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !939
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !916, metadata !594), !dbg !931
  %22 = load i8, i8* %21, align 1, !tbaa !764
  br label %8, !dbg !941, !llvm.loop !942

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !945
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #9 !dbg !946 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !950, metadata !594), !dbg !953
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !952, metadata !594), !dbg !954
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !955
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !951, metadata !594), !dbg !957
  br label %3, !dbg !958

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !951, metadata !594), !dbg !957
  %5 = icmp ugt i64 %4, 1, !dbg !959
  br i1 %5, label %6, label %11, !dbg !962

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !963
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !963
  %9 = load i8, i8* %8, align 1, !dbg !963, !tbaa !764
  %10 = icmp eq i8 %9, 47, !dbg !963
  br i1 %10, label %3, label %11, !dbg !965, !llvm.loop !967

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4, !dbg !970
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @strip_trailing_slashes(i8*) local_unnamed_addr #6 !dbg !971 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !976, metadata !594), !dbg !980
  %2 = tail call i8* @last_component(i8* %0) #13, !dbg !981
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !977, metadata !594), !dbg !982
  %3 = load i8, i8* %2, align 1, !dbg !983, !tbaa !764
  %4 = icmp eq i8 %3, 0, !dbg !983
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !977, metadata !594), !dbg !982
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !985
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !977, metadata !594), !dbg !982
  %6 = tail call i64 @base_len(i8* %5) #13, !dbg !986
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !987
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !978, metadata !594), !dbg !988
  %8 = load i8, i8* %7, align 1, !dbg !989, !tbaa !764
  %9 = icmp ne i8 %8, 0, !dbg !990
  store i8 0, i8* %7, align 1, !dbg !991, !tbaa !764
  ret i1 %9, !dbg !992
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !993 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !995, metadata !594), !dbg !998
  %2 = icmp eq i8* %0, null, !dbg !999
  br i1 %2, label %3, label %6, !dbg !1001

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1002, !tbaa !602
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1004
  tail call void @abort() #14, !dbg !1005
  unreachable, !dbg !1005

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1006
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !996, metadata !594), !dbg !1007
  %8 = icmp ne i8* %7, null, !dbg !1008
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1009
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1011
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !997, metadata !594), !dbg !1012
  %11 = ptrtoint i8* %10 to i64, !dbg !1013
  %12 = ptrtoint i8* %0 to i64, !dbg !1013
  %13 = sub i64 %11, %12, !dbg !1013
  %14 = icmp sgt i64 %13, 6, !dbg !1015
  br i1 %14, label %15, label %24, !dbg !1016

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1017
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.38, i64 0, i64 0), i64 7) #13, !dbg !1017
  %18 = icmp eq i32 %17, 0, !dbg !1019
  br i1 %18, label %19, label %24, !dbg !1020

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !995, metadata !594), !dbg !998
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.39, i64 0, i64 0), i64 3) #13, !dbg !1021
  %21 = icmp eq i32 %20, 0, !dbg !1024
  br i1 %21, label %22, label %24, !dbg !1025

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1026
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !995, metadata !594), !dbg !998
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1028, !tbaa !602
  br label %24, !dbg !1029

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !995, metadata !594), !dbg !998
  store i8* %25, i8** @program_name, align 8, !dbg !1030, !tbaa !602
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1031, !tbaa !602
  ret void, !dbg !1032
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1033 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1038, metadata !594), !dbg !1041
  %2 = tail call i32* @__errno_location() #1, !dbg !1042
  %3 = load i32, i32* %2, align 4, !dbg !1042, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1039, metadata !594), !dbg !1043
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1044
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1045
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1045
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1047
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1040, metadata !594), !dbg !1048
  store i32 %3, i32* %2, align 4, !dbg !1049, !tbaa !691
  ret %struct.quoting_options* %8, !dbg !1050
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !1051 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1057, metadata !594), !dbg !1058
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1059
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1059
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1060
  %5 = load i32, i32* %4, align 8, !dbg !1060, !tbaa !1062
  ret i32 %5, !dbg !1064
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1065 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1069, metadata !594), !dbg !1071
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1070, metadata !594), !dbg !1072
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1073
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1073
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1074
  store i32 %1, i32* %5, align 8, !dbg !1076, !tbaa !1062
  ret void, !dbg !1077
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1078 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1082, metadata !594), !dbg !1090
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1083, metadata !594), !dbg !1091
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1084, metadata !594), !dbg !1092
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1085, metadata !594), !dbg !1093
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1094
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1094
  %6 = lshr i8 %1, 5, !dbg !1095
  %7 = zext i8 %6 to i64, !dbg !1095
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1097
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1086, metadata !594), !dbg !1098
  %9 = and i8 %1, 31, !dbg !1099
  %10 = zext i8 %9 to i32, !dbg !1100
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1088, metadata !594), !dbg !1101
  %11 = load i32, i32* %8, align 4, !dbg !1102, !tbaa !691
  %12 = lshr i32 %11, %10, !dbg !1103
  %13 = and i32 %12, 1, !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1089, metadata !594), !dbg !1105
  %14 = and i32 %2, 1, !dbg !1106
  %15 = xor i32 %13, %14, !dbg !1107
  %16 = shl i32 %15, %10, !dbg !1108
  %17 = xor i32 %16, %11, !dbg !1109
  store i32 %17, i32* %8, align 4, !dbg !1109, !tbaa !691
  ret i32 %13, !dbg !1110
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1111 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1115, metadata !594), !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1116, metadata !594), !dbg !1119
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1115, metadata !594), !dbg !1118
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1122
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1115, metadata !594), !dbg !1118
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1123
  %6 = load i32, i32* %5, align 4, !dbg !1123, !tbaa !1124
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1117, metadata !594), !dbg !1125
  store i32 %1, i32* %5, align 4, !dbg !1126, !tbaa !1124
  ret i32 %6, !dbg !1127
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1128 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1132, metadata !594), !dbg !1135
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1133, metadata !594), !dbg !1136
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1134, metadata !594), !dbg !1137
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1138
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1132, metadata !594), !dbg !1135
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1140
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1132, metadata !594), !dbg !1135
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1141
  store i32 10, i32* %6, align 8, !dbg !1142, !tbaa !1062
  %7 = icmp ne i8* %1, null, !dbg !1143
  %8 = icmp ne i8* %2, null, !dbg !1145
  %9 = and i1 %7, %8, !dbg !1147
  br i1 %9, label %11, label %10, !dbg !1147

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1148
  unreachable, !dbg !1148

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1149
  store i8* %1, i8** %12, align 8, !dbg !1150, !tbaa !1151
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1152
  store i8* %2, i8** %13, align 8, !dbg !1153, !tbaa !1154
  ret void, !dbg !1155
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1156 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1160, metadata !594), !dbg !1168
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1161, metadata !594), !dbg !1169
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1162, metadata !594), !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1163, metadata !594), !dbg !1171
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1164, metadata !594), !dbg !1172
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1173
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1173
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1165, metadata !594), !dbg !1174
  %8 = tail call i32* @__errno_location() #1, !dbg !1175
  %9 = load i32, i32* %8, align 4, !dbg !1175, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1166, metadata !594), !dbg !1176
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1177
  %11 = load i32, i32* %10, align 8, !dbg !1177, !tbaa !1062
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1178
  %13 = load i32, i32* %12, align 4, !dbg !1178, !tbaa !1124
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1179
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1180
  %16 = load i8*, i8** %15, align 8, !dbg !1180, !tbaa !1151
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1181
  %18 = load i8*, i8** %17, align 8, !dbg !1181, !tbaa !1154
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1167, metadata !594), !dbg !1183
  store i32 %9, i32* %8, align 4, !dbg !1184, !tbaa !691
  ret i64 %19, !dbg !1185
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1186 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1192, metadata !594), !dbg !1255
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1193, metadata !594), !dbg !1256
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1194, metadata !594), !dbg !1257
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1195, metadata !594), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1196, metadata !594), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1197, metadata !594), !dbg !1260
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1198, metadata !594), !dbg !1261
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1199, metadata !594), !dbg !1262
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1200, metadata !594), !dbg !1263
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1202, metadata !594), !dbg !1264
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1203, metadata !594), !dbg !1265
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1204, metadata !594), !dbg !1266
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1205, metadata !594), !dbg !1267
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1206, metadata !594), !dbg !1268
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1269
  %14 = icmp eq i64 %13, 1, !dbg !1270
  %15 = lshr i32 %5, 1, !dbg !1271
  %16 = trunc i32 %15 to i8, !dbg !1271
  %17 = and i8 %16, 1, !dbg !1271
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1208, metadata !594), !dbg !1271
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1209, metadata !594), !dbg !1272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1210, metadata !594), !dbg !1273
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1211, metadata !594), !dbg !1274
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1275

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1193, metadata !594), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1211, metadata !594), !dbg !1274
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1210, metadata !594), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1208, metadata !594), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1195, metadata !594), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1206, metadata !594), !dbg !1268
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1205, metadata !594), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1204, metadata !594), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1203, metadata !594), !dbg !1265
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1200, metadata !594), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1199, metadata !594), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1196, metadata !594), !dbg !1259
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
  ], !dbg !1276

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1196, metadata !594), !dbg !1259
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1208, metadata !594), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1208, metadata !594), !dbg !1271
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1196, metadata !594), !dbg !1259
  br label %95, !dbg !1277

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1208, metadata !594), !dbg !1271
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1196, metadata !594), !dbg !1259
  %43 = and i8 %36, 1, !dbg !1279
  %44 = icmp eq i8 %43, 0, !dbg !1279
  br i1 %44, label %45, label %95, !dbg !1277

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1281
  br i1 %46, label %95, label %47, !dbg !1285

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1287, !tbaa !764
  br label %95, !dbg !1287

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.50, i64 0, i64 0), i32 %28), !dbg !1289
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1199, metadata !594), !dbg !1262
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), i32 %28), !dbg !1293
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1200, metadata !594), !dbg !1263
  br label %51, !dbg !1294

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1200, metadata !594), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1199, metadata !594), !dbg !1262
  %54 = and i8 %36, 1, !dbg !1295
  %55 = icmp eq i8 %54, 0, !dbg !1295
  br i1 %55, label %56, label %73, !dbg !1297

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1204, metadata !594), !dbg !1266
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1202, metadata !594), !dbg !1264
  %57 = load i8, i8* %52, align 1, !dbg !1298, !tbaa !764
  %58 = icmp eq i8 %57, 0, !dbg !1302
  br i1 %58, label %73, label %59, !dbg !1302

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1304

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1304
  br i1 %64, label %65, label %67, !dbg !1308

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1310
  store i8 %61, i8* %66, align 1, !dbg !1310, !tbaa !764
  br label %67, !dbg !1310

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1202, metadata !594), !dbg !1264
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1204, metadata !594), !dbg !1266
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1204, metadata !594), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1202, metadata !594), !dbg !1264
  %70 = load i8, i8* %69, align 1, !dbg !1298, !tbaa !764
  %71 = icmp eq i8 %70, 0, !dbg !1302
  br i1 %71, label %72, label %60, !dbg !1302, !llvm.loop !1316

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1264

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1206, metadata !594), !dbg !1268
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1204, metadata !594), !dbg !1266
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1205, metadata !594), !dbg !1267
  br label %95, !dbg !1320

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1206, metadata !594), !dbg !1268
  br label %77, !dbg !1321

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1206, metadata !594), !dbg !1268
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1208, metadata !594), !dbg !1271
  br label %79, !dbg !1322

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1208, metadata !594), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1206, metadata !594), !dbg !1268
  %82 = and i8 %81, 1, !dbg !1323
  %83 = icmp eq i8 %82, 0, !dbg !1323
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1206, metadata !594), !dbg !1268
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1325
  br label %85, !dbg !1325

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1208, metadata !594), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1206, metadata !594), !dbg !1268
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1196, metadata !594), !dbg !1259
  %88 = and i8 %87, 1, !dbg !1326
  %89 = icmp eq i8 %88, 0, !dbg !1326
  br i1 %89, label %90, label %95, !dbg !1328

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1329
  br i1 %91, label %95, label %92, !dbg !1333

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1335, !tbaa !764
  br label %95, !dbg !1335

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1208, metadata !594), !dbg !1271
  br label %95, !dbg !1337

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1338
  unreachable, !dbg !1338

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1208, metadata !594), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1206, metadata !594), !dbg !1268
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1205, metadata !594), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1204, metadata !594), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1200, metadata !594), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1199, metadata !594), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1196, metadata !594), !dbg !1259
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1201, metadata !594), !dbg !1339
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
  br label %123, !dbg !1340

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1193, metadata !594), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1211, metadata !594), !dbg !1274
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1210, metadata !594), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1195, metadata !594), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1203, metadata !594), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1201, metadata !594), !dbg !1339
  %132 = icmp eq i64 %127, -1, !dbg !1341
  br i1 %132, label %135, label %133, !dbg !1343

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1344
  br i1 %134, label %597, label %139, !dbg !1346

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1348
  %137 = load i8, i8* %136, align 1, !dbg !1348, !tbaa !764
  %138 = icmp eq i8 %137, 0, !dbg !1350
  br i1 %138, label %597, label %139, !dbg !1346

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1217, metadata !594), !dbg !1351
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1218, metadata !594), !dbg !1352
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1219, metadata !594), !dbg !1353
  br i1 %109, label %140, label %155, !dbg !1354

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1356
  %142 = and i1 %110, %132, !dbg !1358
  br i1 %142, label %143, label %145, !dbg !1358

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1195, metadata !594), !dbg !1258
  br label %145, !dbg !1360

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1195, metadata !594), !dbg !1258
  %147 = icmp ugt i64 %141, %146, !dbg !1362
  br i1 %147, label %155, label %148, !dbg !1364

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1365
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1366
  %151 = icmp ne i32 %150, 0, !dbg !1367
  %152 = or i1 %151, %112, !dbg !1367
  %153 = xor i1 %151, true, !dbg !1367
  %154 = zext i1 %153 to i8, !dbg !1367
  br i1 %152, label %155, label %644, !dbg !1367

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1217, metadata !594), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1195, metadata !594), !dbg !1258
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1369
  %159 = load i8, i8* %158, align 1, !dbg !1369, !tbaa !764
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1212, metadata !594), !dbg !1370
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
  ], !dbg !1371

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1372

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1373

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1218, metadata !594), !dbg !1352
  %163 = and i8 %128, 1, !dbg !1378
  %164 = icmp eq i8 %163, 0, !dbg !1378
  %165 = and i1 %114, %164, !dbg !1381
  br i1 %165, label %166, label %182, !dbg !1381

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1383
  br i1 %167, label %168, label %170, !dbg !1388

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1390
  store i8 39, i8* %169, align 1, !dbg !1390, !tbaa !764
  br label %170, !dbg !1390

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1202, metadata !594), !dbg !1264
  %172 = icmp ult i64 %171, %131, !dbg !1394
  br i1 %172, label %173, label %175, !dbg !1398

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1400
  store i8 36, i8* %174, align 1, !dbg !1400, !tbaa !764
  br label %175, !dbg !1400

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1202, metadata !594), !dbg !1264
  %177 = icmp ult i64 %176, %131, !dbg !1404
  br i1 %177, label %178, label %180, !dbg !1408

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1410
  store i8 39, i8* %179, align 1, !dbg !1410, !tbaa !764
  br label %180, !dbg !1410

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1209, metadata !594), !dbg !1272
  br label %182, !dbg !1414

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1202, metadata !594), !dbg !1264
  %185 = icmp ult i64 %183, %131, !dbg !1416
  br i1 %185, label %186, label %188, !dbg !1420

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1422
  store i8 92, i8* %187, align 1, !dbg !1422, !tbaa !764
  br label %188, !dbg !1422

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1202, metadata !594), !dbg !1264
  br i1 %106, label %190, label %476, !dbg !1426

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1428
  %192 = icmp ult i64 %191, %156, !dbg !1430
  br i1 %192, label %193, label %476, !dbg !1431

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1432
  %195 = load i8, i8* %194, align 1, !dbg !1432, !tbaa !764
  %196 = add i8 %195, -48, !dbg !1434
  %197 = icmp ult i8 %196, 10, !dbg !1434
  br i1 %197, label %198, label %476, !dbg !1434

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1435
  br i1 %199, label %200, label %202, !dbg !1440

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1442
  store i8 48, i8* %201, align 1, !dbg !1442, !tbaa !764
  br label %202, !dbg !1442

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1202, metadata !594), !dbg !1264
  %204 = icmp ult i64 %203, %131, !dbg !1446
  br i1 %204, label %205, label %207, !dbg !1450

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1452
  store i8 48, i8* %206, align 1, !dbg !1452, !tbaa !764
  br label %207, !dbg !1452

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1202, metadata !594), !dbg !1264
  br label %476, !dbg !1456

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1457

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1458

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1459

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1461

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1463
  %215 = icmp ult i64 %214, %156, !dbg !1465
  br i1 %215, label %216, label %476, !dbg !1466

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1467
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1469
  %219 = load i8, i8* %218, align 1, !dbg !1469, !tbaa !764
  %220 = icmp eq i8 %219, 63, !dbg !1470
  br i1 %220, label %221, label %476, !dbg !1471

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1473
  %223 = load i8, i8* %222, align 1, !dbg !1473, !tbaa !764
  %224 = sext i8 %223 to i32, !dbg !1473
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
  ], !dbg !1474

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1475

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1212, metadata !594), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1201, metadata !594), !dbg !1339
  %227 = icmp ult i64 %125, %131, !dbg !1477
  br i1 %227, label %228, label %230, !dbg !1481

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1483
  store i8 63, i8* %229, align 1, !dbg !1483, !tbaa !764
  br label %230, !dbg !1483

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1202, metadata !594), !dbg !1264
  %232 = icmp ult i64 %231, %131, !dbg !1487
  br i1 %232, label %233, label %235, !dbg !1491

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1493
  store i8 34, i8* %234, align 1, !dbg !1493, !tbaa !764
  br label %235, !dbg !1493

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1202, metadata !594), !dbg !1264
  %237 = icmp ult i64 %236, %131, !dbg !1497
  br i1 %237, label %238, label %240, !dbg !1501

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1503
  store i8 34, i8* %239, align 1, !dbg !1503, !tbaa !764
  br label %240, !dbg !1503

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1202, metadata !594), !dbg !1264
  %242 = icmp ult i64 %241, %131, !dbg !1507
  br i1 %242, label %243, label %245, !dbg !1511

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1513
  store i8 63, i8* %244, align 1, !dbg !1513, !tbaa !764
  br label %245, !dbg !1513

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1202, metadata !594), !dbg !1264
  br label %476, !dbg !1517

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1216, metadata !594), !dbg !1518
  br label %257, !dbg !1519

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1216, metadata !594), !dbg !1518
  br label %257, !dbg !1520

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1216, metadata !594), !dbg !1518
  br label %255, !dbg !1521

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1216, metadata !594), !dbg !1518
  br label %255, !dbg !1522

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1216, metadata !594), !dbg !1518
  br label %257, !dbg !1523

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1216, metadata !594), !dbg !1518
  br i1 %114, label %253, label %254, !dbg !1524

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1525

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1528

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1216, metadata !594), !dbg !1518
  br i1 %118, label %257, label %644, !dbg !1530

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1216, metadata !594), !dbg !1518
  br i1 %105, label %503, label %476, !dbg !1532

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1533
  br i1 %260, label %261, label %266, !dbg !1535

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1536, !tbaa !764
  %263 = icmp ne i8 %262, 0, !dbg !1538
  %264 = icmp ne i64 %124, 0, !dbg !1539
  %265 = or i1 %264, %263, !dbg !1541
  br i1 %265, label %476, label %272, !dbg !1541

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1542
  %268 = icmp ne i64 %124, 0, !dbg !1539
  %269 = or i1 %268, %267, !dbg !1544
  br i1 %269, label %476, label %272, !dbg !1544

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1539
  br i1 %271, label %272, label %476, !dbg !1546

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1219, metadata !594), !dbg !1353
  br label %273, !dbg !1547

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1219, metadata !594), !dbg !1353
  br i1 %118, label %476, label %644, !dbg !1548

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1210, metadata !594), !dbg !1273
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1219, metadata !594), !dbg !1353
  br i1 %114, label %276, label %476, !dbg !1550

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1551

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1554
  %279 = icmp ne i64 %126, 0, !dbg !1556
  %280 = or i1 %279, %278, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1203, metadata !594), !dbg !1265
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1193, metadata !594), !dbg !1256
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1558
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1193, metadata !594), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1203, metadata !594), !dbg !1265
  %283 = icmp ult i64 %125, %282, !dbg !1559
  br i1 %283, label %284, label %286, !dbg !1563

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1565
  store i8 39, i8* %285, align 1, !dbg !1565, !tbaa !764
  br label %286, !dbg !1565

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1202, metadata !594), !dbg !1264
  %288 = icmp ult i64 %287, %282, !dbg !1569
  br i1 %288, label %289, label %291, !dbg !1573

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1575
  store i8 92, i8* %290, align 1, !dbg !1575, !tbaa !764
  br label %291, !dbg !1575

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1202, metadata !594), !dbg !1264
  %293 = icmp ult i64 %292, %282, !dbg !1579
  br i1 %293, label %294, label %296, !dbg !1583

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1585
  store i8 39, i8* %295, align 1, !dbg !1585, !tbaa !764
  br label %296, !dbg !1585

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1209, metadata !594), !dbg !1272
  br label %476, !dbg !1589

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1590

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1220, metadata !594), !dbg !1591
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1592
  %301 = load i16*, i16** %300, align 8, !dbg !1592, !tbaa !602
  %302 = zext i8 %159 to i64, !dbg !1592
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1592
  %304 = load i16, i16* %303, align 2, !dbg !1592, !tbaa !1594
  %305 = lshr i16 %304, 14, !dbg !1595
  %306 = trunc i16 %305 to i8, !dbg !1595
  %307 = and i8 %306, 1, !dbg !1595
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1223, metadata !594), !dbg !1596
  br label %368, !dbg !1597

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1598
  store i64 0, i64* %10, align 8, !dbg !1599
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1220, metadata !594), !dbg !1591
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1223, metadata !594), !dbg !1596
  %309 = icmp eq i64 %156, -1, !dbg !1600
  br i1 %309, label %310, label %312, !dbg !1602, !llvm.loop !1603

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1195, metadata !594), !dbg !1258
  br label %312, !dbg !1607, !llvm.loop !1603

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1596

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1223, metadata !594), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1220, metadata !594), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1195, metadata !594), !dbg !1258
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1608
  %317 = add i64 %315, %124, !dbg !1609
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1610
  %319 = sub i64 %313, %317, !dbg !1611
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1224, metadata !1612), !dbg !1613
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1241, metadata !1612), !dbg !1614
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1244, metadata !594), !dbg !1616
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1617

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1220, metadata !594), !dbg !1591
  %322 = icmp ugt i64 %313, %317, !dbg !1618
  br i1 %322, label %323, label %351, !dbg !1621

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1622

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1622
  %328 = load i8, i8* %327, align 1, !dbg !1622, !tbaa !764
  %329 = icmp eq i8 %328, 0, !dbg !1624
  br i1 %329, label %348, label %330, !dbg !1625

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1220, metadata !594), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1220, metadata !594), !dbg !1591
  %332 = add i64 %331, %124, !dbg !1628
  %333 = icmp ult i64 %332, %313, !dbg !1618
  br i1 %333, label %324, label %348, !dbg !1621, !llvm.loop !1629

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1631
  %336 = and i1 %116, %335, !dbg !1635
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1245, metadata !594), !dbg !1636
  br i1 %336, label %337, label %355, !dbg !1635

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1637

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1637
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1638
  %342 = load i8, i8* %341, align 1, !dbg !1638, !tbaa !764
  %343 = sext i8 %342 to i32, !dbg !1638
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1639

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1245, metadata !594), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1245, metadata !594), !dbg !1636
  %346 = icmp ult i64 %345, %320, !dbg !1631
  br i1 %346, label %338, label %354, !dbg !1642, !llvm.loop !1644

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1596

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1596

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1596

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1223, metadata !594), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1220, metadata !594), !dbg !1591
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1647
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1648

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1648, !tbaa !691
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1241, metadata !594), !dbg !1614
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1650
  %358 = icmp eq i32 %357, 0, !dbg !1650
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1223, metadata !594), !dbg !1596
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1651
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1223, metadata !594), !dbg !1596
  %360 = add i64 %320, %315, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1220, metadata !594), !dbg !1591
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1223, metadata !594), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1220, metadata !594), !dbg !1591
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1647
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1224, metadata !1612), !dbg !1613
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1653
  %362 = icmp eq i32 %361, 0, !dbg !1654
  br i1 %362, label %314, label %363, !dbg !1655, !llvm.loop !1603

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1657

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1657
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1223, metadata !594), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1220, metadata !594), !dbg !1591
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1647
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1657
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1223, metadata !594), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1220, metadata !594), !dbg !1591
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1195, metadata !594), !dbg !1258
  %372 = and i8 %371, 1, !dbg !1658
  %373 = icmp ne i8 %372, 0, !dbg !1658
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1219, metadata !594), !dbg !1353
  %374 = icmp ult i64 %370, 2, !dbg !1659
  %375 = or i1 %373, %113, !dbg !1660
  %376 = and i1 %374, %375, !dbg !1662
  br i1 %376, label %476, label %377, !dbg !1662

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1252, metadata !594), !dbg !1664
  br label %379, !dbg !1665

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1218, metadata !594), !dbg !1352
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1217, metadata !594), !dbg !1351
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1212, metadata !594), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1201, metadata !594), !dbg !1339
  br i1 %375, label %432, label %386, !dbg !1666

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1671

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1218, metadata !594), !dbg !1352
  %388 = and i8 %382, 1, !dbg !1675
  %389 = icmp eq i8 %388, 0, !dbg !1675
  %390 = and i1 %114, %389, !dbg !1678
  br i1 %390, label %391, label %407, !dbg !1678

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1680
  br i1 %392, label %393, label %395, !dbg !1685

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1687
  store i8 39, i8* %394, align 1, !dbg !1687, !tbaa !764
  br label %395, !dbg !1687

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1202, metadata !594), !dbg !1264
  %397 = icmp ult i64 %396, %131, !dbg !1691
  br i1 %397, label %398, label %400, !dbg !1695

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1697
  store i8 36, i8* %399, align 1, !dbg !1697, !tbaa !764
  br label %400, !dbg !1697

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1202, metadata !594), !dbg !1264
  %402 = icmp ult i64 %401, %131, !dbg !1701
  br i1 %402, label %403, label %405, !dbg !1705

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1707
  store i8 39, i8* %404, align 1, !dbg !1707, !tbaa !764
  br label %405, !dbg !1707

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1209, metadata !594), !dbg !1272
  br label %407, !dbg !1711

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1202, metadata !594), !dbg !1264
  %410 = icmp ult i64 %408, %131, !dbg !1713
  br i1 %410, label %411, label %413, !dbg !1717

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1719
  store i8 92, i8* %412, align 1, !dbg !1719, !tbaa !764
  br label %413, !dbg !1719

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1202, metadata !594), !dbg !1264
  %415 = icmp ult i64 %414, %131, !dbg !1723
  br i1 %415, label %416, label %420, !dbg !1727

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1729
  %418 = or i8 %417, 48, !dbg !1729
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1729
  store i8 %418, i8* %419, align 1, !dbg !1729, !tbaa !764
  br label %420, !dbg !1729

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1202, metadata !594), !dbg !1264
  %422 = icmp ult i64 %421, %131, !dbg !1733
  br i1 %422, label %423, label %428, !dbg !1737

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1739
  %425 = and i8 %424, 7, !dbg !1739
  %426 = or i8 %425, 48, !dbg !1739
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1739
  store i8 %426, i8* %427, align 1, !dbg !1739, !tbaa !764
  br label %428, !dbg !1739

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1202, metadata !594), !dbg !1264
  %430 = and i8 %383, 7, !dbg !1743
  %431 = or i8 %430, 48, !dbg !1744
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1212, metadata !594), !dbg !1370
  br label %441, !dbg !1745

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1746
  %434 = icmp eq i8 %433, 0, !dbg !1746
  br i1 %434, label %441, label %435, !dbg !1748

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1749
  br i1 %436, label %437, label %439, !dbg !1754

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1756
  store i8 92, i8* %438, align 1, !dbg !1756, !tbaa !764
  br label %439, !dbg !1756

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1217, metadata !594), !dbg !1351
  br label %441, !dbg !1760

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1218, metadata !594), !dbg !1352
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1217, metadata !594), !dbg !1351
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1212, metadata !594), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1202, metadata !594), !dbg !1264
  %447 = add i64 %380, 1, !dbg !1761
  %448 = icmp ugt i64 %378, %447, !dbg !1763
  br i1 %448, label %449, label %541, !dbg !1764

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1765
  %451 = icmp ne i8 %450, 0, !dbg !1765
  %452 = and i8 %446, 1, !dbg !1769
  %453 = icmp eq i8 %452, 0, !dbg !1769
  %454 = and i1 %451, %453, !dbg !1765
  br i1 %454, label %455, label %466, !dbg !1765

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1771
  br i1 %456, label %457, label %459, !dbg !1776

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1778
  store i8 39, i8* %458, align 1, !dbg !1778, !tbaa !764
  br label %459, !dbg !1778

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1202, metadata !594), !dbg !1264
  %461 = icmp ult i64 %460, %131, !dbg !1782
  br i1 %461, label %462, label %464, !dbg !1786

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1788
  store i8 39, i8* %463, align 1, !dbg !1788, !tbaa !764
  br label %464, !dbg !1788

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1209, metadata !594), !dbg !1272
  br label %466, !dbg !1792

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1202, metadata !594), !dbg !1264
  %469 = icmp ult i64 %467, %131, !dbg !1794
  br i1 %469, label %470, label %472, !dbg !1798

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1800
  store i8 %444, i8* %471, align 1, !dbg !1800, !tbaa !764
  br label %472, !dbg !1800

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1201, metadata !594), !dbg !1339
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1804
  %475 = load i8, i8* %474, align 1, !dbg !1804, !tbaa !764
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1212, metadata !594), !dbg !1370
  br label %379, !dbg !1805, !llvm.loop !1807

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1193, metadata !594), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1219, metadata !594), !dbg !1353
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1218, metadata !594), !dbg !1352
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1217, metadata !594), !dbg !1351
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1212, metadata !594), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1210, metadata !594), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1195, metadata !594), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1203, metadata !594), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1201, metadata !594), !dbg !1339
  br i1 %107, label %488, label %487, !dbg !1810

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1812

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1813

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1814
  %491 = zext i8 %490 to i64, !dbg !1814
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1816
  %493 = load i32, i32* %492, align 4, !dbg !1816, !tbaa !691
  %494 = and i8 %483, 31, !dbg !1817
  %495 = zext i8 %494 to i32, !dbg !1818
  %496 = shl i32 1, %495, !dbg !1819
  %497 = and i32 %493, %496, !dbg !1819
  %498 = icmp eq i32 %497, 0, !dbg !1819
  %499 = icmp eq i8 %157, 0, !dbg !1820
  %500 = and i1 %499, %498, !dbg !1821
  br i1 %500, label %542, label %503, !dbg !1821

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1820
  br i1 %502, label %542, label %503, !dbg !1822

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1193, metadata !594), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1219, metadata !594), !dbg !1353
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1212, metadata !594), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1210, metadata !594), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1195, metadata !594), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1203, metadata !594), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1201, metadata !594), !dbg !1339
  br i1 %112, label %513, label %644, !dbg !1824

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1218, metadata !594), !dbg !1352
  %514 = and i8 %508, 1, !dbg !1827
  %515 = icmp eq i8 %514, 0, !dbg !1827
  %516 = and i1 %114, %515, !dbg !1830
  br i1 %516, label %517, label %533, !dbg !1830

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1832
  br i1 %518, label %519, label %521, !dbg !1837

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1839
  store i8 39, i8* %520, align 1, !dbg !1839, !tbaa !764
  br label %521, !dbg !1839

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1202, metadata !594), !dbg !1264
  %523 = icmp ult i64 %522, %512, !dbg !1843
  br i1 %523, label %524, label %526, !dbg !1847

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1849
  store i8 36, i8* %525, align 1, !dbg !1849, !tbaa !764
  br label %526, !dbg !1849

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1202, metadata !594), !dbg !1264
  %528 = icmp ult i64 %527, %512, !dbg !1853
  br i1 %528, label %529, label %531, !dbg !1857

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1859
  store i8 39, i8* %530, align 1, !dbg !1859, !tbaa !764
  br label %531, !dbg !1859

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1209, metadata !594), !dbg !1272
  br label %533, !dbg !1863

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1202, metadata !594), !dbg !1264
  %536 = icmp ult i64 %534, %512, !dbg !1865
  br i1 %536, label %537, label %539, !dbg !1869

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1871
  store i8 92, i8* %538, align 1, !dbg !1871, !tbaa !764
  br label %539, !dbg !1871

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1193, metadata !594), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1219, metadata !594), !dbg !1353
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1218, metadata !594), !dbg !1352
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1212, metadata !594), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1210, metadata !594), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1195, metadata !594), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1203, metadata !594), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1201, metadata !594), !dbg !1339
  br label %569, !dbg !1875

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1256

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1193, metadata !594), !dbg !1256
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1219, metadata !594), !dbg !1353
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1218, metadata !594), !dbg !1352
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1212, metadata !594), !dbg !1370
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1210, metadata !594), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1195, metadata !594), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1203, metadata !594), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1201, metadata !594), !dbg !1339
  %553 = and i8 %547, 1, !dbg !1875
  %554 = icmp ne i8 %553, 0, !dbg !1875
  %555 = and i8 %550, 1, !dbg !1879
  %556 = icmp eq i8 %555, 0, !dbg !1879
  %557 = and i1 %554, %556, !dbg !1875
  br i1 %557, label %558, label %569, !dbg !1875

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1881
  br i1 %559, label %560, label %562, !dbg !1886

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1888
  store i8 39, i8* %561, align 1, !dbg !1888, !tbaa !764
  br label %562, !dbg !1888

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1202, metadata !594), !dbg !1264
  %564 = icmp ult i64 %563, %552, !dbg !1892
  br i1 %564, label %565, label %567, !dbg !1896

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1898
  store i8 39, i8* %566, align 1, !dbg !1898, !tbaa !764
  br label %567, !dbg !1898

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1202, metadata !594), !dbg !1264
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1209, metadata !594), !dbg !1272
  br label %569, !dbg !1902

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1209, metadata !594), !dbg !1272
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1202, metadata !594), !dbg !1264
  %579 = icmp ult i64 %577, %570, !dbg !1904
  br i1 %579, label %580, label %582, !dbg !1908

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1910
  store i8 %572, i8* %581, align 1, !dbg !1910, !tbaa !764
  br label %582, !dbg !1910

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1202, metadata !594), !dbg !1264
  %584 = and i8 %571, 1, !dbg !1914
  %585 = icmp eq i8 %584, 0, !dbg !1914
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1211, metadata !594), !dbg !1274
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1916
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1211, metadata !594), !dbg !1274
  br label %587, !dbg !1917

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1201, metadata !594), !dbg !1339
  br label %123, !dbg !1920, !llvm.loop !1921

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1924
  %600 = and i1 %114, %599, !dbg !1926
  %601 = xor i1 %600, true, !dbg !1926
  %602 = or i1 %112, %601, !dbg !1926
  br i1 %602, label %603, label %648, !dbg !1926

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1927
  %605 = xor i1 %604, true, !dbg !1927
  %606 = and i8 %129, 1, !dbg !1929
  %607 = icmp eq i8 %606, 0, !dbg !1929
  %608 = or i1 %607, %605, !dbg !1927
  br i1 %608, label %618, label %609, !dbg !1927

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1931
  %611 = icmp eq i8 %610, 0, !dbg !1931
  br i1 %611, label %614, label %612, !dbg !1934

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1935
  br label %659, !dbg !1936

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1937
  %616 = icmp ne i64 %126, 0, !dbg !1939
  %617 = and i1 %616, %615, !dbg !1941
  br i1 %617, label %27, label %618, !dbg !1941

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1942
  %620 = and i1 %619, %112, !dbg !1944
  br i1 %620, label %621, label %638, !dbg !1944

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1204, metadata !594), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1202, metadata !594), !dbg !1264
  %622 = load i8, i8* %100, align 1, !dbg !1945, !tbaa !764
  %623 = icmp eq i8 %622, 0, !dbg !1949
  br i1 %623, label %638, label %624, !dbg !1949

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1951

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1951
  br i1 %629, label %630, label %632, !dbg !1955

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1957
  store i8 %626, i8* %631, align 1, !dbg !1957, !tbaa !764
  br label %632, !dbg !1957

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1202, metadata !594), !dbg !1264
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1961
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1204, metadata !594), !dbg !1266
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1204, metadata !594), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1202, metadata !594), !dbg !1264
  %635 = load i8, i8* %634, align 1, !dbg !1945, !tbaa !764
  %636 = icmp eq i8 %635, 0, !dbg !1949
  br i1 %636, label %637, label %625, !dbg !1949, !llvm.loop !1963

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1264

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1202, metadata !594), !dbg !1264
  %640 = icmp ult i64 %639, %131, !dbg !1966
  br i1 %640, label %641, label %659, !dbg !1968

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1969
  store i8 0, i8* %642, align 1, !dbg !1970, !tbaa !764
  br label %659, !dbg !1969

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1256

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1256

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1256

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1193, metadata !594), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1195, metadata !594), !dbg !1258
  %653 = icmp ne i32 %650, 2, !dbg !1971
  %654 = icmp eq i8 %104, 0, !dbg !1973
  %655 = or i1 %653, %654, !dbg !1975
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1196, metadata !594), !dbg !1259
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1196, metadata !594), !dbg !1259
  %657 = and i32 %5, -3, !dbg !1976
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1977
  br label %659, !dbg !1978

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1979
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1980 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1984, metadata !594), !dbg !1988
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1985, metadata !594), !dbg !1989
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1990
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1986, metadata !594), !dbg !1991
  %4 = icmp eq i8* %3, %0, !dbg !1992
  br i1 %4, label %5, label %75, !dbg !1994

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1995
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1987, metadata !594), !dbg !1996
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1997, metadata !594), !dbg !2013
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2011, metadata !594), !dbg !2016
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2012, metadata !594), !dbg !2017
  %7 = load i8, i8* %6, align 1, !tbaa !764
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2018
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2018

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2021, metadata !594), !dbg !2035
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2033, metadata !594), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2034, metadata !594), !dbg !2040
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !764
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2041
  %15 = icmp eq i32 %14, 84, !dbg !2041
  br i1 %15, label %16, label %72, !dbg !2041

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2044, metadata !594), !dbg !2057
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2055, metadata !594), !dbg !2061
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2056, metadata !594), !dbg !2062
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !764
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2063
  %21 = icmp eq i32 %20, 70, !dbg !2063
  br i1 %21, label %22, label %72, !dbg !2063

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2066, metadata !594), !dbg !2078
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2076, metadata !594), !dbg !2082
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2077, metadata !594), !dbg !2083
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !764
  %25 = icmp eq i8 %24, 45, !dbg !2084
  br i1 %25, label %26, label %72, !dbg !2087

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2089, metadata !594), !dbg !2100
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2098, metadata !594), !dbg !2104
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2099, metadata !594), !dbg !2105
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !764
  %29 = icmp eq i8 %28, 56, !dbg !2106
  br i1 %29, label %30, label %72, !dbg !2109

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2111, metadata !594), !dbg !2121
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2119, metadata !594), !dbg !2125
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2120, metadata !594), !dbg !2126
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !764
  %33 = icmp eq i8 %32, 0, !dbg !2127
  br i1 %33, label %34, label %72, !dbg !2130

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2132, !tbaa !764
  %36 = icmp eq i8 %35, 96, !dbg !2133
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.54, i64 0, i64 0), !dbg !2132
  br label %75, !dbg !2134

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2021, metadata !594), !dbg !2135
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2033, metadata !594), !dbg !2139
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2034, metadata !594), !dbg !2140
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !764
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2141
  %43 = icmp eq i32 %42, 66, !dbg !2141
  br i1 %43, label %44, label %72, !dbg !2141

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2044, metadata !594), !dbg !2142
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2055, metadata !594), !dbg !2144
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2056, metadata !594), !dbg !2145
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !764
  %47 = icmp eq i8 %46, 49, !dbg !2146
  br i1 %47, label %48, label %72, !dbg !2148

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2066, metadata !594), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2076, metadata !594), !dbg !2152
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2077, metadata !594), !dbg !2153
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !764
  %51 = icmp eq i8 %50, 56, !dbg !2154
  br i1 %51, label %52, label %72, !dbg !2155

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2089, metadata !594), !dbg !2156
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2098, metadata !594), !dbg !2158
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2099, metadata !594), !dbg !2159
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !764
  %55 = icmp eq i8 %54, 48, !dbg !2160
  br i1 %55, label %56, label %72, !dbg !2161

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2111, metadata !594), !dbg !2162
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2119, metadata !594), !dbg !2164
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2120, metadata !594), !dbg !2165
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !764
  %59 = icmp eq i8 %58, 51, !dbg !2166
  br i1 %59, label %60, label %72, !dbg !2167

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2168, metadata !594), !dbg !2177
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2175, metadata !594), !dbg !2181
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2176, metadata !594), !dbg !2182
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !764
  %63 = icmp eq i8 %62, 48, !dbg !2183
  br i1 %63, label %64, label %72, !dbg !2186

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2188, metadata !594), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2194, metadata !594), !dbg !2200
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2195, metadata !594), !dbg !2201
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !764
  %67 = icmp eq i8 %66, 0, !dbg !2202
  br i1 %67, label %68, label %72, !dbg !2205

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2206, !tbaa !764
  %70 = icmp eq i8 %69, 96, !dbg !2207
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2206
  br label %75, !dbg !2208

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2209
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), !dbg !2210
  br label %75, !dbg !2211

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2212
}

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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2213 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2217, metadata !594), !dbg !2220
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2218, metadata !594), !dbg !2221
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2219, metadata !594), !dbg !2222
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2223, metadata !594) #10, !dbg !2236
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2228, metadata !594) #10, !dbg !2238
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2229, metadata !594) #10, !dbg !2239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2230, metadata !594) #10, !dbg !2240
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2241
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2241
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2231, metadata !594) #10, !dbg !2242
  %6 = tail call i32* @__errno_location() #1, !dbg !2243
  %7 = load i32, i32* %6, align 4, !dbg !2243, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2232, metadata !594) #10, !dbg !2244
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2245
  %9 = load i32, i32* %8, align 4, !dbg !2245, !tbaa !1124
  %10 = or i32 %9, 1, !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2233, metadata !594) #10, !dbg !2247
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2248
  %12 = load i32, i32* %11, align 8, !dbg !2248, !tbaa !1062
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2249
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2250
  %15 = load i8*, i8** %14, align 8, !dbg !2250, !tbaa !1151
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2251
  %17 = load i8*, i8** %16, align 8, !dbg !2251, !tbaa !1154
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2252
  %19 = add i64 %18, 1, !dbg !2253
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2234, metadata !594) #10, !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2255, metadata !594) #10, !dbg !2260
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2262
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2235, metadata !594) #10, !dbg !2263
  %21 = load i32, i32* %11, align 8, !dbg !2264, !tbaa !1062
  %22 = load i8*, i8** %14, align 8, !dbg !2265, !tbaa !1151
  %23 = load i8*, i8** %16, align 8, !dbg !2266, !tbaa !1154
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2267
  store i32 %7, i32* %6, align 4, !dbg !2268, !tbaa !691
  ret i8* %20, !dbg !2269
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2224 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2223, metadata !594), !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2228, metadata !594), !dbg !2271
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2229, metadata !594), !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2230, metadata !594), !dbg !2273
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2274
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2231, metadata !594), !dbg !2275
  %7 = tail call i32* @__errno_location() #1, !dbg !2276
  %8 = load i32, i32* %7, align 4, !dbg !2276, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2232, metadata !594), !dbg !2277
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2278
  %10 = load i32, i32* %9, align 4, !dbg !2278, !tbaa !1124
  %11 = icmp ne i64* %2, null, !dbg !2279
  %12 = xor i1 %11, true, !dbg !2279
  %13 = zext i1 %12 to i32, !dbg !2279
  %14 = or i32 %10, %13, !dbg !2280
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2233, metadata !594), !dbg !2281
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2282
  %16 = load i32, i32* %15, align 8, !dbg !2282, !tbaa !1062
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2283
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2284
  %19 = load i8*, i8** %18, align 8, !dbg !2284, !tbaa !1151
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2285
  %21 = load i8*, i8** %20, align 8, !dbg !2285, !tbaa !1154
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2286
  %23 = add i64 %22, 1, !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2234, metadata !594), !dbg !2288
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2255, metadata !594) #10, !dbg !2289
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2291
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2235, metadata !594), !dbg !2292
  %25 = load i32, i32* %15, align 8, !dbg !2293, !tbaa !1062
  %26 = load i8*, i8** %18, align 8, !dbg !2294, !tbaa !1151
  %27 = load i8*, i8** %20, align 8, !dbg !2295, !tbaa !1154
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2296
  store i32 %8, i32* %7, align 4, !dbg !2297, !tbaa !691
  br i1 %11, label %29, label %30, !dbg !2298

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2299, !tbaa !2301
  br label %30, !dbg !2302

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2303
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2304 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2308, !tbaa !602
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2306, metadata !594), !dbg !2309
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2307, metadata !594), !dbg !2310
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2307, metadata !594), !dbg !2310
  %2 = load i32, i32* @nslots, align 4, !dbg !2311, !tbaa !691
  %3 = icmp sgt i32 %2, 1, !dbg !2315
  br i1 %3, label %4, label %14, !dbg !2316

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2318

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2318
  %8 = load i8*, i8** %7, align 8, !dbg !2318, !tbaa !2319
  tail call void @free(i8* %8) #10, !dbg !2321
  %9 = add nuw i64 %6, 1, !dbg !2322
  %10 = load i32, i32* @nslots, align 4, !dbg !2311, !tbaa !691
  %11 = sext i32 %10 to i64, !dbg !2315
  %12 = icmp slt i64 %9, %11, !dbg !2315
  br i1 %12, label %5, label %13, !dbg !2316, !llvm.loop !2324

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2327

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2327
  %16 = load i8*, i8** %15, align 8, !dbg !2327, !tbaa !2319
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2329
  br i1 %17, label %19, label %18, !dbg !2330

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2331
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2333, !tbaa !2334
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2335, !tbaa !2319
  br label %19, !dbg !2336

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2337
  br i1 %20, label %23, label %21, !dbg !2339

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2340
  tail call void @free(i8* %22) #10, !dbg !2342
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2343, !tbaa !602
  br label %23, !dbg !2344

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2345, !tbaa !691
  ret void, !dbg !2346
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2347 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2351, metadata !594), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2352, metadata !594), !dbg !2354
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2355
  ret i8* %3, !dbg !2356
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2357 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2361, metadata !594), !dbg !2375
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2362, metadata !594), !dbg !2376
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2363, metadata !594), !dbg !2377
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2364, metadata !594), !dbg !2378
  %5 = tail call i32* @__errno_location() #1, !dbg !2379
  %6 = load i32, i32* %5, align 4, !dbg !2379, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2365, metadata !594), !dbg !2380
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2381, !tbaa !602
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2366, metadata !594), !dbg !2382
  %8 = icmp slt i32 %0, 0, !dbg !2383
  br i1 %8, label %9, label %10, !dbg !2385

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2386
  unreachable, !dbg !2386

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2387, !tbaa !691
  %12 = icmp sgt i32 %11, %0, !dbg !2388
  br i1 %12, label %34, label %13, !dbg !2389

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2390
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2391
  br i1 %15, label %16, label %17, !dbg !2393

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2394
  unreachable, !dbg !2394

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2395
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2395
  %20 = add nsw i32 %0, 1, !dbg !2397
  %21 = sext i32 %20 to i64, !dbg !2398
  %22 = shl nsw i64 %21, 4, !dbg !2399
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2400
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2400
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2366, metadata !594), !dbg !2382
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2401, !tbaa !602
  br i1 %14, label %25, label %26, !dbg !2402

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2403, !tbaa.struct !2405
  br label %26, !dbg !2406

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2407, !tbaa !691
  %28 = sext i32 %27 to i64, !dbg !2408
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2408
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2409
  %31 = sub nsw i32 %20, %27, !dbg !2410
  %32 = sext i32 %31 to i64, !dbg !2411
  %33 = shl nsw i64 %32, 4, !dbg !2412
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2409
  store i32 %20, i32* @nslots, align 4, !dbg !2413, !tbaa !691
  br label %34, !dbg !2414

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2366, metadata !594), !dbg !2382
  %36 = sext i32 %0 to i64, !dbg !2415
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2416
  %38 = load i64, i64* %37, align 8, !dbg !2416, !tbaa !2334
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2370, metadata !594), !dbg !2417
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2418
  %40 = load i8*, i8** %39, align 8, !dbg !2418, !tbaa !2319
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2372, metadata !594), !dbg !2419
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2420
  %42 = load i32, i32* %41, align 4, !dbg !2420, !tbaa !1124
  %43 = or i32 %42, 1, !dbg !2421
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2373, metadata !594), !dbg !2422
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2423
  %45 = load i32, i32* %44, align 8, !dbg !2423, !tbaa !1062
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2424
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2425
  %48 = load i8*, i8** %47, align 8, !dbg !2425, !tbaa !1151
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2426
  %50 = load i8*, i8** %49, align 8, !dbg !2426, !tbaa !1154
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2427
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2374, metadata !594), !dbg !2428
  %52 = icmp ugt i64 %38, %51, !dbg !2429
  br i1 %52, label %63, label %53, !dbg !2431

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2432
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2370, metadata !594), !dbg !2417
  store i64 %54, i64* %37, align 8, !dbg !2434, !tbaa !2334
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2435
  br i1 %55, label %57, label %56, !dbg !2437

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2438
  br label %57, !dbg !2438

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2255, metadata !594) #10, !dbg !2439
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2441
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2372, metadata !594), !dbg !2419
  store i8* %58, i8** %39, align 8, !dbg !2442, !tbaa !2319
  %59 = load i32, i32* %44, align 8, !dbg !2443, !tbaa !1062
  %60 = load i8*, i8** %47, align 8, !dbg !2444, !tbaa !1151
  %61 = load i8*, i8** %49, align 8, !dbg !2445, !tbaa !1154
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2446
  br label %63, !dbg !2447

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2372, metadata !594), !dbg !2419
  store i32 %6, i32* %5, align 4, !dbg !2448, !tbaa !691
  ret i8* %64, !dbg !2449
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2450 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2454, metadata !594), !dbg !2457
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2455, metadata !594), !dbg !2458
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2456, metadata !594), !dbg !2459
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2460
  ret i8* %4, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2462 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2464, metadata !594), !dbg !2465
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2351, metadata !594) #10, !dbg !2466
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2352, metadata !594) #10, !dbg !2468
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2469
  ret i8* %2, !dbg !2470
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2471 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2475, metadata !594), !dbg !2477
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2476, metadata !594), !dbg !2478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2454, metadata !594) #10, !dbg !2479
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2455, metadata !594) #10, !dbg !2481
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2456, metadata !594) #10, !dbg !2482
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2483
  ret i8* %3, !dbg !2484
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2485 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2493, metadata !2499), !dbg !2500
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2489, metadata !594), !dbg !2502
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2490, metadata !594), !dbg !2503
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2491, metadata !594), !dbg !2504
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2505
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2505
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2492, metadata !1612), !dbg !2506
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2498, metadata !594) #10, !dbg !2507
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2508
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2508
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2493, metadata !594) #10, !dbg !2500
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2493, metadata !2509) #10, !dbg !2500
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2500
  %8 = icmp eq i32 %1, 10, !dbg !2510
  br i1 %8, label %9, label %10, !dbg !2512

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2513, !noalias !2514
  unreachable, !dbg !2513

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2493, metadata !2509) #10, !dbg !2500
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2517
  store i32 %1, i32* %11, align 8, !dbg !2517, !alias.scope !2514
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2517
  %13 = bitcast i32* %12 to i8*, !dbg !2517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2517
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2518
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2492, metadata !1612), !dbg !2506
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2519
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2520
  ret i8* %14, !dbg !2521
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2522 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2493, metadata !2499), !dbg !2531
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2526, metadata !594), !dbg !2533
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2527, metadata !594), !dbg !2534
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2528, metadata !594), !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2529, metadata !594), !dbg !2536
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2537
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2530, metadata !1612), !dbg !2538
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2498, metadata !594) #10, !dbg !2539
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2540
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2540
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2493, metadata !594) #10, !dbg !2531
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2493, metadata !2509) #10, !dbg !2531
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2531
  %9 = icmp eq i32 %1, 10, !dbg !2541
  br i1 %9, label %10, label %11, !dbg !2542

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2543, !noalias !2544
  unreachable, !dbg !2543

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2493, metadata !2509) #10, !dbg !2531
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2547
  store i32 %1, i32* %12, align 8, !dbg !2547, !alias.scope !2544
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2547
  %14 = bitcast i32* %13 to i8*, !dbg !2547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2547
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2530, metadata !1612), !dbg !2538
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2549
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2550
  ret i8* %15, !dbg !2551
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2552 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2493, metadata !2499), !dbg !2558
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2556, metadata !594), !dbg !2561
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2557, metadata !594), !dbg !2562
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2489, metadata !594) #10, !dbg !2563
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2490, metadata !594) #10, !dbg !2564
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2491, metadata !594) #10, !dbg !2565
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2566
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2566
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2492, metadata !1612) #10, !dbg !2567
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2498, metadata !594) #10, !dbg !2568
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2569
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2569
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2493, metadata !594) #10, !dbg !2558
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2493, metadata !2509) #10, !dbg !2558
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2558
  %7 = icmp eq i32 %0, 10, !dbg !2570
  br i1 %7, label %8, label %9, !dbg !2571

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2572, !noalias !2573
  unreachable, !dbg !2572

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2493, metadata !2509) #10, !dbg !2558
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2576
  store i32 %0, i32* %10, align 8, !dbg !2576, !alias.scope !2573
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2576
  %12 = bitcast i32* %11 to i8*, !dbg !2576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2576
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2577
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2492, metadata !1612) #10, !dbg !2567
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2578
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2579
  ret i8* %13, !dbg !2580
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2581 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2493, metadata !2499), !dbg !2588
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2585, metadata !594), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2586, metadata !594), !dbg !2592
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2587, metadata !594), !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2526, metadata !594) #10, !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2527, metadata !594) #10, !dbg !2595
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2528, metadata !594) #10, !dbg !2596
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2529, metadata !594) #10, !dbg !2597
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2598
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2598
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2530, metadata !1612) #10, !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2498, metadata !594) #10, !dbg !2600
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2601
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2601
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2493, metadata !594) #10, !dbg !2588
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2493, metadata !2509) #10, !dbg !2588
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2588
  %8 = icmp eq i32 %0, 10, !dbg !2602
  br i1 %8, label %9, label %10, !dbg !2603

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2604, !noalias !2605
  unreachable, !dbg !2604

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2493, metadata !2509) #10, !dbg !2588
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2608
  store i32 %0, i32* %11, align 8, !dbg !2608, !alias.scope !2605
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2608
  %13 = bitcast i32* %12 to i8*, !dbg !2608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2608
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2609
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2530, metadata !1612) #10, !dbg !2599
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2610
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2611
  ret i8* %14, !dbg !2612
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2613 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !594), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2618, metadata !594), !dbg !2622
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2619, metadata !594), !dbg !2623
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2624
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2625, !tbaa.struct !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2620, metadata !1612), !dbg !2627
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1082, metadata !594), !dbg !2628
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1083, metadata !594), !dbg !2630
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1084, metadata !594), !dbg !2631
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1085, metadata !594), !dbg !2632
  %6 = lshr i8 %2, 5, !dbg !2633
  %7 = zext i8 %6 to i64, !dbg !2633
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2634
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1086, metadata !594), !dbg !2635
  %9 = and i8 %2, 31, !dbg !2636
  %10 = zext i8 %9 to i32, !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1088, metadata !594), !dbg !2638
  %11 = load i32, i32* %8, align 4, !dbg !2639, !tbaa !691
  %12 = lshr i32 %11, %10, !dbg !2640
  %13 = and i32 %12, 1, !dbg !2641
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1089, metadata !594), !dbg !2642
  %14 = xor i32 %13, 1, !dbg !2643
  %15 = shl i32 %14, %10, !dbg !2644
  %16 = xor i32 %15, %11, !dbg !2645
  store i32 %16, i32* %8, align 4, !dbg !2645, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2620, metadata !1612), !dbg !2627
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2646
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2647
  ret i8* %17, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2649 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !594), !dbg !2655
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2654, metadata !594), !dbg !2656
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !594) #10, !dbg !2657
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2618, metadata !594) #10, !dbg !2659
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2619, metadata !594) #10, !dbg !2660
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2661
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2661
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2662, !tbaa.struct !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2620, metadata !1612) #10, !dbg !2663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1082, metadata !594) #10, !dbg !2664
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1083, metadata !594) #10, !dbg !2666
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1084, metadata !594) #10, !dbg !2667
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1085, metadata !594) #10, !dbg !2668
  %5 = lshr i8 %1, 5, !dbg !2669
  %6 = zext i8 %5 to i64, !dbg !2669
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2670
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1086, metadata !594) #10, !dbg !2671
  %8 = and i8 %1, 31, !dbg !2672
  %9 = zext i8 %8 to i32, !dbg !2673
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1088, metadata !594) #10, !dbg !2674
  %10 = load i32, i32* %7, align 4, !dbg !2675, !tbaa !691
  %11 = lshr i32 %10, %9, !dbg !2676
  %12 = and i32 %11, 1, !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1089, metadata !594) #10, !dbg !2678
  %13 = xor i32 %12, 1, !dbg !2679
  %14 = shl i32 %13, %9, !dbg !2680
  %15 = xor i32 %14, %10, !dbg !2681
  store i32 %15, i32* %7, align 4, !dbg !2681, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2620, metadata !1612) #10, !dbg !2663
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2682
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2683
  ret i8* %16, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2685 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2687, metadata !594), !dbg !2688
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !594) #10, !dbg !2689
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2654, metadata !594) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !594) #10, !dbg !2692
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2618, metadata !594) #10, !dbg !2694
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2619, metadata !594) #10, !dbg !2695
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2696
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2697, !tbaa.struct !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2620, metadata !1612) #10, !dbg !2698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1082, metadata !594) #10, !dbg !2699
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1083, metadata !594) #10, !dbg !2701
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1084, metadata !594) #10, !dbg !2702
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1085, metadata !594) #10, !dbg !2703
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2704
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1086, metadata !594) #10, !dbg !2705
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1088, metadata !594) #10, !dbg !2706
  %5 = load i32, i32* %4, align 4, !dbg !2707, !tbaa !691
  %6 = or i32 %5, 67108864, !dbg !2708
  store i32 %6, i32* %4, align 4, !dbg !2708, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2620, metadata !1612) #10, !dbg !2698
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2709
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2710
  ret i8* %7, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2712 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2714, metadata !594), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2715, metadata !594), !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2617, metadata !594) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2618, metadata !594) #10, !dbg !2720
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2619, metadata !594) #10, !dbg !2721
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2722
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2723, !tbaa.struct !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2620, metadata !1612) #10, !dbg !2724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1082, metadata !594) #10, !dbg !2725
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1083, metadata !594) #10, !dbg !2727
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1084, metadata !594) #10, !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1085, metadata !594) #10, !dbg !2729
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2730
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1086, metadata !594) #10, !dbg !2731
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1088, metadata !594) #10, !dbg !2732
  %6 = load i32, i32* %5, align 4, !dbg !2733, !tbaa !691
  %7 = or i32 %6, 67108864, !dbg !2734
  store i32 %7, i32* %5, align 4, !dbg !2734, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2620, metadata !1612) #10, !dbg !2724
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2735
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2736
  ret i8* %8, !dbg !2737
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2738 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2493, metadata !2499), !dbg !2744
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2740, metadata !594), !dbg !2746
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2741, metadata !594), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2742, metadata !594), !dbg !2748
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2749
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2749
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2498, metadata !594) #10, !dbg !2750
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2751
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2751
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2493, metadata !594) #10, !dbg !2744
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2493, metadata !2509) #10, !dbg !2744
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2744
  %9 = icmp eq i32 %1, 10, !dbg !2752
  br i1 %9, label %10, label %11, !dbg !2753

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2754, !noalias !2755
  unreachable, !dbg !2754

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2493, metadata !2509) #10, !dbg !2744
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2758
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2759
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2760
  store i32 %1, i32* %13, align 8, !dbg !2760
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2760
  %15 = bitcast i32* %14 to i8*, !dbg !2760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2760
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2743, metadata !1612), !dbg !2761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1082, metadata !594), !dbg !2762
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1083, metadata !594), !dbg !2764
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1084, metadata !594), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1085, metadata !594), !dbg !2766
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2767
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1086, metadata !594), !dbg !2768
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1088, metadata !594), !dbg !2769
  %17 = load i32, i32* %16, align 4, !dbg !2770, !tbaa !691
  %18 = or i32 %17, 67108864, !dbg !2771
  store i32 %18, i32* %16, align 4, !dbg !2771, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2743, metadata !1612), !dbg !2761
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2772
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2773
  ret i8* %19, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2775 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2779, metadata !594), !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2780, metadata !594), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2781, metadata !594), !dbg !2785
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2782, metadata !594), !dbg !2786
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2787, metadata !594) #10, !dbg !2797
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2792, metadata !594) #10, !dbg !2799
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2793, metadata !594) #10, !dbg !2800
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2794, metadata !594) #10, !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2795, metadata !594) #10, !dbg !2802
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2803
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2803
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2804, !tbaa.struct !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2796, metadata !1612) #10, !dbg !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1132, metadata !594) #10, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1133, metadata !594) #10, !dbg !2808
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1134, metadata !594) #10, !dbg !2809
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1132, metadata !594) #10, !dbg !2806
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1132, metadata !594) #10, !dbg !2806
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2810
  store i32 10, i32* %7, align 8, !dbg !2811, !tbaa !1062
  %8 = icmp ne i8* %1, null, !dbg !2812
  %9 = icmp ne i8* %2, null, !dbg !2813
  %10 = and i1 %8, %9, !dbg !2814
  br i1 %10, label %12, label %11, !dbg !2814

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2815
  unreachable, !dbg !2815

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2816
  store i8* %1, i8** %13, align 8, !dbg !2817, !tbaa !1151
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2818
  store i8* %2, i8** %14, align 8, !dbg !2819, !tbaa !1154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2796, metadata !1612) #10, !dbg !2805
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2820
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2821
  ret i8* %15, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2788 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2787, metadata !594), !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2792, metadata !594), !dbg !2824
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2793, metadata !594), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2794, metadata !594), !dbg !2826
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2795, metadata !594), !dbg !2827
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2828
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2828
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2829, !tbaa.struct !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2796, metadata !1612), !dbg !2830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1132, metadata !594) #10, !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1133, metadata !594) #10, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1134, metadata !594) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1132, metadata !594) #10, !dbg !2831
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1132, metadata !594) #10, !dbg !2831
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2835
  store i32 10, i32* %8, align 8, !dbg !2836, !tbaa !1062
  %9 = icmp ne i8* %1, null, !dbg !2837
  %10 = icmp ne i8* %2, null, !dbg !2838
  %11 = and i1 %9, %10, !dbg !2839
  br i1 %11, label %13, label %12, !dbg !2839

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2840
  unreachable, !dbg !2840

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2841
  store i8* %1, i8** %14, align 8, !dbg !2842, !tbaa !1151
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2843
  store i8* %2, i8** %15, align 8, !dbg !2844, !tbaa !1154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2796, metadata !1612), !dbg !2830
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2845
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2846
  ret i8* %16, !dbg !2847
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2848 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2852, metadata !594), !dbg !2855
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2853, metadata !594), !dbg !2856
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2854, metadata !594), !dbg !2857
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2779, metadata !594) #10, !dbg !2858
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2780, metadata !594) #10, !dbg !2860
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2781, metadata !594) #10, !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2782, metadata !594) #10, !dbg !2862
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2787, metadata !594) #10, !dbg !2863
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !594) #10, !dbg !2865
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2793, metadata !594) #10, !dbg !2866
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2794, metadata !594) #10, !dbg !2867
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2795, metadata !594) #10, !dbg !2868
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2869
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2870, !tbaa.struct !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2796, metadata !1612) #10, !dbg !2871
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1132, metadata !594) #10, !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1133, metadata !594) #10, !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1134, metadata !594) #10, !dbg !2875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1132, metadata !594) #10, !dbg !2872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1132, metadata !594) #10, !dbg !2872
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2876
  store i32 10, i32* %6, align 8, !dbg !2877, !tbaa !1062
  %7 = icmp ne i8* %0, null, !dbg !2878
  %8 = icmp ne i8* %1, null, !dbg !2879
  %9 = and i1 %7, %8, !dbg !2880
  br i1 %9, label %11, label %10, !dbg !2880

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2881
  unreachable, !dbg !2881

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2882
  store i8* %0, i8** %12, align 8, !dbg !2883, !tbaa !1151
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2884
  store i8* %1, i8** %13, align 8, !dbg !2885, !tbaa !1154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2796, metadata !1612) #10, !dbg !2871
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2886
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2887
  ret i8* %14, !dbg !2888
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2889 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2893, metadata !594), !dbg !2897
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2894, metadata !594), !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2895, metadata !594), !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2896, metadata !594), !dbg !2900
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2787, metadata !594) #10, !dbg !2901
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !594) #10, !dbg !2903
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2793, metadata !594) #10, !dbg !2904
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2794, metadata !594) #10, !dbg !2905
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2795, metadata !594) #10, !dbg !2906
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2907
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2907
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2908, !tbaa.struct !2626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2796, metadata !1612) #10, !dbg !2909
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1132, metadata !594) #10, !dbg !2910
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1133, metadata !594) #10, !dbg !2912
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1134, metadata !594) #10, !dbg !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1132, metadata !594) #10, !dbg !2910
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1132, metadata !594) #10, !dbg !2910
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2914
  store i32 10, i32* %7, align 8, !dbg !2915, !tbaa !1062
  %8 = icmp ne i8* %0, null, !dbg !2916
  %9 = icmp ne i8* %1, null, !dbg !2917
  %10 = and i1 %8, %9, !dbg !2918
  br i1 %10, label %12, label %11, !dbg !2918

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2919
  unreachable, !dbg !2919

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2920
  store i8* %0, i8** %13, align 8, !dbg !2921, !tbaa !1151
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2922
  store i8* %1, i8** %14, align 8, !dbg !2923, !tbaa !1154
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2796, metadata !1612) #10, !dbg !2909
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2924
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2925
  ret i8* %15, !dbg !2926
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2927 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2931, metadata !594), !dbg !2934
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2932, metadata !594), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2933, metadata !594), !dbg !2936
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2937
  ret i8* %4, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2939 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2943, metadata !594), !dbg !2945
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2944, metadata !594), !dbg !2946
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2931, metadata !594) #10, !dbg !2947
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2932, metadata !594) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2933, metadata !594) #10, !dbg !2950
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2951
  ret i8* %3, !dbg !2952
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2953 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2957, metadata !594), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2958, metadata !594), !dbg !2960
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2931, metadata !594) #10, !dbg !2961
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2932, metadata !594) #10, !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2933, metadata !594) #10, !dbg !2964
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2965
  ret i8* %3, !dbg !2966
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2967 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2971, metadata !594), !dbg !2972
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2957, metadata !594) #10, !dbg !2973
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2958, metadata !594) #10, !dbg !2975
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2931, metadata !594) #10, !dbg !2976
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2932, metadata !594) #10, !dbg !2978
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2933, metadata !594) #10, !dbg !2979
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2980
  ret i8* %2, !dbg !2981
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2982 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3042, metadata !594), !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3043, metadata !594), !dbg !3049
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3044, metadata !594), !dbg !3050
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3045, metadata !594), !dbg !3051
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3046, metadata !594), !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3047, metadata !594), !dbg !3053
  %7 = icmp eq i8* %1, null, !dbg !3054
  br i1 %7, label %10, label %8, !dbg !3056

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3057
  br label %12, !dbg !3057

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3058
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i32 5) #10, !dbg !3059
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3060
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.63, i64 0, i64 0), i32 5) #10, !dbg !3062
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3063
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
  ], !dbg !3064

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3065
  unreachable, !dbg !3065

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.64, i64 0, i64 0), i32 5) #10, !dbg !3067
  %20 = load i8*, i8** %4, align 8, !dbg !3067, !tbaa !602
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3068
  br label %146, !dbg !3070

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.65, i64 0, i64 0), i32 5) #10, !dbg !3071
  %24 = load i8*, i8** %4, align 8, !dbg !3071, !tbaa !602
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3071
  %26 = load i8*, i8** %25, align 8, !dbg !3071, !tbaa !602
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3072
  br label %146, !dbg !3073

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.66, i64 0, i64 0), i32 5) #10, !dbg !3074
  %30 = load i8*, i8** %4, align 8, !dbg !3074, !tbaa !602
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3074
  %32 = load i8*, i8** %31, align 8, !dbg !3074, !tbaa !602
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3074
  %34 = load i8*, i8** %33, align 8, !dbg !3074, !tbaa !602
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3075
  br label %146, !dbg !3076

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.67, i64 0, i64 0), i32 5) #10, !dbg !3077
  %38 = load i8*, i8** %4, align 8, !dbg !3077, !tbaa !602
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3077
  %40 = load i8*, i8** %39, align 8, !dbg !3077, !tbaa !602
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3077
  %42 = load i8*, i8** %41, align 8, !dbg !3077, !tbaa !602
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3077
  %44 = load i8*, i8** %43, align 8, !dbg !3077, !tbaa !602
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3078
  br label %146, !dbg !3079

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.68, i64 0, i64 0), i32 5) #10, !dbg !3080
  %48 = load i8*, i8** %4, align 8, !dbg !3080, !tbaa !602
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3080
  %50 = load i8*, i8** %49, align 8, !dbg !3080, !tbaa !602
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3080
  %52 = load i8*, i8** %51, align 8, !dbg !3080, !tbaa !602
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3080
  %54 = load i8*, i8** %53, align 8, !dbg !3080, !tbaa !602
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3080
  %56 = load i8*, i8** %55, align 8, !dbg !3080, !tbaa !602
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3081
  br label %146, !dbg !3082

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.69, i64 0, i64 0), i32 5) #10, !dbg !3083
  %60 = load i8*, i8** %4, align 8, !dbg !3083, !tbaa !602
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3083
  %62 = load i8*, i8** %61, align 8, !dbg !3083, !tbaa !602
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3083
  %64 = load i8*, i8** %63, align 8, !dbg !3083, !tbaa !602
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3083
  %66 = load i8*, i8** %65, align 8, !dbg !3083, !tbaa !602
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3083
  %68 = load i8*, i8** %67, align 8, !dbg !3083, !tbaa !602
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3083
  %70 = load i8*, i8** %69, align 8, !dbg !3083, !tbaa !602
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3084
  br label %146, !dbg !3085

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.70, i64 0, i64 0), i32 5) #10, !dbg !3086
  %74 = load i8*, i8** %4, align 8, !dbg !3086, !tbaa !602
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3086
  %76 = load i8*, i8** %75, align 8, !dbg !3086, !tbaa !602
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3086
  %78 = load i8*, i8** %77, align 8, !dbg !3086, !tbaa !602
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3086
  %80 = load i8*, i8** %79, align 8, !dbg !3086, !tbaa !602
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3086
  %82 = load i8*, i8** %81, align 8, !dbg !3086, !tbaa !602
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3086
  %84 = load i8*, i8** %83, align 8, !dbg !3086, !tbaa !602
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3086
  %86 = load i8*, i8** %85, align 8, !dbg !3086, !tbaa !602
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3087
  br label %146, !dbg !3088

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.71, i64 0, i64 0), i32 5) #10, !dbg !3089
  %90 = load i8*, i8** %4, align 8, !dbg !3089, !tbaa !602
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3089
  %92 = load i8*, i8** %91, align 8, !dbg !3089, !tbaa !602
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3089
  %94 = load i8*, i8** %93, align 8, !dbg !3089, !tbaa !602
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3089
  %96 = load i8*, i8** %95, align 8, !dbg !3089, !tbaa !602
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3089
  %98 = load i8*, i8** %97, align 8, !dbg !3089, !tbaa !602
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3089
  %100 = load i8*, i8** %99, align 8, !dbg !3089, !tbaa !602
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3089
  %102 = load i8*, i8** %101, align 8, !dbg !3089, !tbaa !602
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3089
  %104 = load i8*, i8** %103, align 8, !dbg !3089, !tbaa !602
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3090
  br label %146, !dbg !3091

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.72, i64 0, i64 0), i32 5) #10, !dbg !3092
  %108 = load i8*, i8** %4, align 8, !dbg !3092, !tbaa !602
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3092
  %110 = load i8*, i8** %109, align 8, !dbg !3092, !tbaa !602
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3092
  %112 = load i8*, i8** %111, align 8, !dbg !3092, !tbaa !602
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3092
  %114 = load i8*, i8** %113, align 8, !dbg !3092, !tbaa !602
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3092
  %116 = load i8*, i8** %115, align 8, !dbg !3092, !tbaa !602
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3092
  %118 = load i8*, i8** %117, align 8, !dbg !3092, !tbaa !602
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3092
  %120 = load i8*, i8** %119, align 8, !dbg !3092, !tbaa !602
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3092
  %122 = load i8*, i8** %121, align 8, !dbg !3092, !tbaa !602
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3092
  %124 = load i8*, i8** %123, align 8, !dbg !3092, !tbaa !602
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3093
  br label %146, !dbg !3094

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.73, i64 0, i64 0), i32 5) #10, !dbg !3095
  %128 = load i8*, i8** %4, align 8, !dbg !3095, !tbaa !602
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3095
  %130 = load i8*, i8** %129, align 8, !dbg !3095, !tbaa !602
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3095
  %132 = load i8*, i8** %131, align 8, !dbg !3095, !tbaa !602
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3095
  %134 = load i8*, i8** %133, align 8, !dbg !3095, !tbaa !602
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3095
  %136 = load i8*, i8** %135, align 8, !dbg !3095, !tbaa !602
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3095
  %138 = load i8*, i8** %137, align 8, !dbg !3095, !tbaa !602
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3095
  %140 = load i8*, i8** %139, align 8, !dbg !3095, !tbaa !602
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3095
  %142 = load i8*, i8** %141, align 8, !dbg !3095, !tbaa !602
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3095
  %144 = load i8*, i8** %143, align 8, !dbg !3095, !tbaa !602
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3096
  br label %146, !dbg !3097

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3098
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3099 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3103, metadata !594), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3104, metadata !594), !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3105, metadata !594), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3106, metadata !594), !dbg !3112
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3107, metadata !594), !dbg !3113
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3108, metadata !594), !dbg !3114
  br label %6, !dbg !3115

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3108, metadata !594), !dbg !3114
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3117
  %9 = load i8*, i8** %8, align 8, !dbg !3117, !tbaa !602
  %10 = icmp eq i8* %9, null, !dbg !3120
  %11 = add i64 %7, 1, !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3108, metadata !594), !dbg !3114
  br i1 %10, label %12, label %6, !dbg !3120, !llvm.loop !3124

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3127
  ret void, !dbg !3128
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3129 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3140, metadata !594), !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3141, metadata !594), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3142, metadata !594), !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3143, metadata !594), !dbg !3151
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3144, metadata !594), !dbg !3152
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3153
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3153
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3146, metadata !594), !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3145, metadata !594), !dbg !3155
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3156
  %12 = icmp ult i32 %11, 41, !dbg !3156
  br i1 %12, label %13, label %18, !dbg !3156

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3160
  %15 = sext i32 %11 to i64, !dbg !3160
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3160
  %17 = add i32 %11, 8, !dbg !3160
  store i32 %17, i32* %8, align 8, !dbg !3160
  br label %21, !dbg !3160

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3162
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3162
  store i8* %20, i8** %10, align 8, !dbg !3162
  br label %21, !dbg !3162

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3156
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3164
  %25 = load i8*, i8** %24, align 8, !dbg !3164
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3166
  store i8* %25, i8** %26, align 16, !dbg !3167, !tbaa !602
  %27 = icmp eq i8* %25, null, !dbg !3168
  br i1 %27, label %30, label %28, !dbg !3169

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %29 = icmp ult i32 %22, 41, !dbg !3156
  br i1 %29, label %35, label %32, !dbg !3156

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3171
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3172
  ret void, !dbg !3172

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3162
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3162
  store i8* %34, i8** %10, align 8, !dbg !3162
  br label %40, !dbg !3162

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3160
  %37 = sext i32 %22 to i64, !dbg !3160
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3160
  %39 = add i32 %22, 8, !dbg !3160
  store i32 %39, i32* %8, align 8, !dbg !3160
  br label %40, !dbg !3160

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3156
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3164
  %44 = load i8*, i8** %43, align 8, !dbg !3164
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3166
  store i8* %44, i8** %45, align 8, !dbg !3167, !tbaa !602
  %46 = icmp eq i8* %44, null, !dbg !3168
  br i1 %46, label %30, label %47, !dbg !3169

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %48 = icmp ult i32 %41, 41, !dbg !3156
  br i1 %48, label %52, label %49, !dbg !3156

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3162
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3162
  store i8* %51, i8** %10, align 8, !dbg !3162
  br label %57, !dbg !3162

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3160
  %54 = sext i32 %41 to i64, !dbg !3160
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3160
  %56 = add i32 %41, 8, !dbg !3160
  store i32 %56, i32* %8, align 8, !dbg !3160
  br label %57, !dbg !3160

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3156
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3164
  %61 = load i8*, i8** %60, align 8, !dbg !3164
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3166
  store i8* %61, i8** %62, align 16, !dbg !3167, !tbaa !602
  %63 = icmp eq i8* %61, null, !dbg !3168
  br i1 %63, label %30, label %64, !dbg !3169

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %65 = icmp ult i32 %58, 41, !dbg !3156
  br i1 %65, label %69, label %66, !dbg !3156

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3162
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3162
  store i8* %68, i8** %10, align 8, !dbg !3162
  br label %74, !dbg !3162

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3160
  %71 = sext i32 %58 to i64, !dbg !3160
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3160
  %73 = add i32 %58, 8, !dbg !3160
  store i32 %73, i32* %8, align 8, !dbg !3160
  br label %74, !dbg !3160

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3156
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3164
  %78 = load i8*, i8** %77, align 8, !dbg !3164
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3166
  store i8* %78, i8** %79, align 8, !dbg !3167, !tbaa !602
  %80 = icmp eq i8* %78, null, !dbg !3168
  br i1 %80, label %30, label %81, !dbg !3169

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %82 = icmp ult i32 %75, 41, !dbg !3156
  br i1 %82, label %86, label %83, !dbg !3156

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3162
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3162
  store i8* %85, i8** %10, align 8, !dbg !3162
  br label %91, !dbg !3162

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3160
  %88 = sext i32 %75 to i64, !dbg !3160
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3160
  %90 = add i32 %75, 8, !dbg !3160
  store i32 %90, i32* %8, align 8, !dbg !3160
  br label %91, !dbg !3160

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3156
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3164
  %95 = load i8*, i8** %94, align 8, !dbg !3164
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3166
  store i8* %95, i8** %96, align 16, !dbg !3167, !tbaa !602
  %97 = icmp eq i8* %95, null, !dbg !3168
  br i1 %97, label %30, label %98, !dbg !3169

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %99 = icmp ult i32 %92, 41, !dbg !3156
  br i1 %99, label %103, label %100, !dbg !3156

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3162
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3162
  store i8* %102, i8** %10, align 8, !dbg !3162
  br label %108, !dbg !3162

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3160
  %105 = sext i32 %92 to i64, !dbg !3160
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3160
  %107 = add i32 %92, 8, !dbg !3160
  store i32 %107, i32* %8, align 8, !dbg !3160
  br label %108, !dbg !3160

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3164
  %111 = load i8*, i8** %110, align 8, !dbg !3164
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3166
  store i8* %111, i8** %112, align 8, !dbg !3167, !tbaa !602
  %113 = icmp eq i8* %111, null, !dbg !3168
  br i1 %113, label %30, label %114, !dbg !3169

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %115 = load i8*, i8** %10, align 8, !dbg !3162
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3162
  store i8* %116, i8** %10, align 8, !dbg !3162
  %117 = bitcast i8* %115 to i8**, !dbg !3164
  %118 = load i8*, i8** %117, align 8, !dbg !3164
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3166
  store i8* %118, i8** %119, align 16, !dbg !3167, !tbaa !602
  %120 = icmp eq i8* %118, null, !dbg !3168
  br i1 %120, label %30, label %121, !dbg !3169

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %122 = load i8*, i8** %10, align 8, !dbg !3162
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3162
  store i8* %123, i8** %10, align 8, !dbg !3162
  %124 = bitcast i8* %122 to i8**, !dbg !3164
  %125 = load i8*, i8** %124, align 8, !dbg !3164
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3166
  store i8* %125, i8** %126, align 8, !dbg !3167, !tbaa !602
  %127 = icmp eq i8* %125, null, !dbg !3168
  br i1 %127, label %30, label %128, !dbg !3169

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %129 = load i8*, i8** %10, align 8, !dbg !3162
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3162
  store i8* %130, i8** %10, align 8, !dbg !3162
  %131 = bitcast i8* %129 to i8**, !dbg !3164
  %132 = load i8*, i8** %131, align 8, !dbg !3164
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3166
  store i8* %132, i8** %133, align 16, !dbg !3167, !tbaa !602
  %134 = icmp eq i8* %132, null, !dbg !3168
  br i1 %134, label %30, label %135, !dbg !3169

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %136 = load i8*, i8** %10, align 8, !dbg !3162
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3162
  store i8* %137, i8** %10, align 8, !dbg !3162
  %138 = bitcast i8* %136 to i8**, !dbg !3164
  %139 = load i8*, i8** %138, align 8, !dbg !3164
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3166
  store i8* %139, i8** %140, align 8, !dbg !3167, !tbaa !602
  %141 = icmp eq i8* %139, null, !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3145, metadata !594), !dbg !3155
  %142 = select i1 %141, i64 9, i64 10, !dbg !3169
  br label %30, !dbg !3169
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3173 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3177, metadata !594), !dbg !3187
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3178, metadata !594), !dbg !3188
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3179, metadata !594), !dbg !3189
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3180, metadata !594), !dbg !3190
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3191
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3191
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3181, metadata !594), !dbg !3192
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3193
  call void @llvm.va_start(i8* nonnull %6), !dbg !3193
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3194
  call void @llvm.va_end(i8* nonnull %6), !dbg !3195
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3196
  ret void, !dbg !3196
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3197 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #10, !dbg !3198
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #10, !dbg !3199
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.78, i64 0, i64 0), i32 5) #10, !dbg !3201
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.80, i64 0, i64 0)) #10, !dbg !3202
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3203
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3203, !tbaa !602
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3204
  ret void, !dbg !3205
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3206 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3210, metadata !594), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3211, metadata !594), !dbg !3213
  %3 = udiv i64 9223372036854775807, %1, !dbg !3214
  %4 = icmp ult i64 %3, %0, !dbg !3214
  br i1 %4, label %5, label %6, !dbg !3216

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3217
  unreachable, !dbg !3217

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3219, metadata !594) #10, !dbg !3226
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3225, metadata !594) #10, !dbg !3229
  %9 = icmp eq i8* %8, null, !dbg !3230
  %10 = icmp ne i64 %7, 0, !dbg !3232
  %11 = and i1 %10, %9, !dbg !3234
  br i1 %11, label %12, label %13, !dbg !3234

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3235
  unreachable, !dbg !3235

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3236
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3220 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3219, metadata !594), !dbg !3237
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3238
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3225, metadata !594), !dbg !3239
  %3 = icmp eq i8* %2, null, !dbg !3240
  %4 = icmp ne i64 %0, 0, !dbg !3241
  %5 = and i1 %4, %3, !dbg !3242
  br i1 %5, label %6, label %7, !dbg !3242

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3243
  unreachable, !dbg !3243

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3244
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3245 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3249, metadata !594), !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3250, metadata !594), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3251, metadata !594), !dbg !3254
  %4 = udiv i64 9223372036854775807, %2, !dbg !3255
  %5 = icmp ult i64 %4, %1, !dbg !3255
  br i1 %5, label %6, label %7, !dbg !3257

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3258
  unreachable, !dbg !3258

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3260, metadata !594) #10, !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3265, metadata !594) #10, !dbg !3268
  %9 = icmp eq i64 %8, 0, !dbg !3269
  %10 = icmp ne i8* %0, null, !dbg !3271
  %11 = and i1 %10, %9, !dbg !3273
  br i1 %11, label %12, label %13, !dbg !3273

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3274
  br label %19, !dbg !3276

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3277
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3260, metadata !594) #10, !dbg !3266
  %15 = icmp eq i8* %14, null, !dbg !3278
  %16 = icmp ne i64 %8, 0, !dbg !3280
  %17 = and i1 %16, %15, !dbg !3282
  br i1 %17, label %18, label %19, !dbg !3282

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3283
  unreachable, !dbg !3283

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3284
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3261 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3260, metadata !594), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3265, metadata !594), !dbg !3286
  %3 = icmp eq i64 %1, 0, !dbg !3287
  %4 = icmp ne i8* %0, null, !dbg !3288
  %5 = and i1 %4, %3, !dbg !3289
  br i1 %5, label %6, label %7, !dbg !3289

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3290
  br label %13, !dbg !3291

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3292
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3260, metadata !594), !dbg !3285
  %9 = icmp eq i8* %8, null, !dbg !3293
  %10 = icmp ne i64 %1, 0, !dbg !3294
  %11 = and i1 %10, %9, !dbg !3295
  br i1 %11, label %12, label %13, !dbg !3295

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3296
  unreachable, !dbg !3296

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3297
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !552 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !557, metadata !594), !dbg !3298
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !558, metadata !594), !dbg !3299
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !559, metadata !594), !dbg !3300
  %4 = load i64, i64* %1, align 8, !dbg !3301, !tbaa !2301
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !560, metadata !594), !dbg !3302
  %5 = icmp eq i8* %0, null, !dbg !3303
  br i1 %5, label %6, label %13, !dbg !3305

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3306
  br i1 %7, label %8, label %17, !dbg !3309

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3310
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !560, metadata !594), !dbg !3302
  %10 = icmp ugt i64 %2, 128, !dbg !3312
  %11 = zext i1 %10 to i64, !dbg !3312
  %12 = add nuw nsw i64 %9, %11, !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !560, metadata !594), !dbg !3302
  br label %17, !dbg !3314

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3315
  %15 = icmp ugt i64 %14, %4, !dbg !3318
  br i1 %15, label %20, label %16, !dbg !3319

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3320
  unreachable, !dbg !3320

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !560, metadata !594), !dbg !3302
  store i64 %18, i64* %1, align 8, !dbg !3321, !tbaa !2301
  %19 = mul i64 %18, %2, !dbg !3322
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3260, metadata !594) #10, !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3265, metadata !594) #10, !dbg !3325
  br label %27, !dbg !3326

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3327
  %22 = add i64 %4, 1, !dbg !3328
  %23 = add i64 %22, %21, !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !560, metadata !594), !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !560, metadata !594), !dbg !3302
  store i64 %23, i64* %1, align 8, !dbg !3321, !tbaa !2301
  %24 = mul i64 %23, %2, !dbg !3322
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3260, metadata !594) #10, !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3265, metadata !594) #10, !dbg !3325
  %25 = icmp eq i64 %24, 0, !dbg !3330
  br i1 %25, label %26, label %27, !dbg !3326

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3331
  br label %34, !dbg !3332

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3260, metadata !594) #10, !dbg !3323
  %30 = icmp eq i8* %29, null, !dbg !3334
  %31 = icmp ne i64 %28, 0, !dbg !3335
  %32 = and i1 %31, %30, !dbg !3336
  br i1 %32, label %33, label %34, !dbg !3336

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3337
  unreachable, !dbg !3337

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3338
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3339 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3341, metadata !594), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3219, metadata !594) #10, !dbg !3343
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3345
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3225, metadata !594) #10, !dbg !3346
  %3 = icmp eq i8* %2, null, !dbg !3347
  %4 = icmp ne i64 %0, 0, !dbg !3348
  %5 = and i1 %4, %3, !dbg !3349
  br i1 %5, label %6, label %7, !dbg !3349

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3350
  unreachable, !dbg !3350

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3351
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3352 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3356, metadata !594), !dbg !3358
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3357, metadata !594), !dbg !3359
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !557, metadata !594) #10, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !558, metadata !594) #10, !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !559, metadata !594) #10, !dbg !3363
  %3 = load i64, i64* %1, align 8, !dbg !3364, !tbaa !2301
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !560, metadata !594) #10, !dbg !3365
  %4 = icmp eq i8* %0, null, !dbg !3366
  br i1 %4, label %5, label %8, !dbg !3367

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !560, metadata !594) #10, !dbg !3365
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !560, metadata !594) #10, !dbg !3365
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !560, metadata !594) #10, !dbg !3365
  store i64 %7, i64* %1, align 8, !dbg !3370, !tbaa !2301
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3260, metadata !594) #10, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3265, metadata !594) #10, !dbg !3373
  br label %17, !dbg !3374

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3375
  br i1 %9, label %11, label %10, !dbg !3376

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3377
  unreachable, !dbg !3377

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3378
  %13 = add i64 %3, 1, !dbg !3379
  %14 = add i64 %13, %12, !dbg !3380
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !560, metadata !594) #10, !dbg !3365
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !560, metadata !594) #10, !dbg !3365
  store i64 %14, i64* %1, align 8, !dbg !3370, !tbaa !2301
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3260, metadata !594) #10, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3265, metadata !594) #10, !dbg !3373
  %15 = icmp eq i64 %14, 0, !dbg !3381
  br i1 %15, label %16, label %17, !dbg !3374

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3382
  br label %24, !dbg !3383

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3384
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3260, metadata !594) #10, !dbg !3371
  %20 = icmp eq i8* %19, null, !dbg !3385
  %21 = icmp ne i64 %18, 0, !dbg !3386
  %22 = and i1 %21, %20, !dbg !3387
  br i1 %22, label %23, label %24, !dbg !3387

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3388
  unreachable, !dbg !3388

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3389
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3390 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3392, metadata !594), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3219, metadata !594) #10, !dbg !3394
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3225, metadata !594) #10, !dbg !3397
  %3 = icmp eq i8* %2, null, !dbg !3398
  %4 = icmp ne i64 %0, 0, !dbg !3399
  %5 = and i1 %4, %3, !dbg !3400
  br i1 %5, label %6, label %7, !dbg !3400

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3401
  unreachable, !dbg !3401

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3402
  ret i8* %2, !dbg !3403
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3404 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3406, metadata !594), !dbg !3409
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3407, metadata !594), !dbg !3410
  %3 = udiv i64 9223372036854775807, %1, !dbg !3411
  %4 = icmp ult i64 %3, %0, !dbg !3411
  br i1 %4, label %8, label %5, !dbg !3413

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3414
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3408, metadata !594), !dbg !3416
  %7 = icmp eq i8* %6, null, !dbg !3417
  br i1 %7, label %8, label %9, !dbg !3418

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3420
  unreachable, !dbg !3420

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3421
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3422 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3426, metadata !594), !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3427, metadata !594), !dbg !3429
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3219, metadata !594) #10, !dbg !3430
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3432
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3225, metadata !594) #10, !dbg !3433
  %4 = icmp eq i8* %3, null, !dbg !3434
  %5 = icmp ne i64 %1, 0, !dbg !3435
  %6 = and i1 %5, %4, !dbg !3436
  br i1 %6, label %7, label %8, !dbg !3436

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3437
  unreachable, !dbg !3437

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3438
  ret i8* %3, !dbg !3439
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3440 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3442, metadata !594), !dbg !3443
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3444
  %3 = add i64 %2, 1, !dbg !3445
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3426, metadata !594) #10, !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3427, metadata !594) #10, !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3219, metadata !594) #10, !dbg !3450
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3452
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3225, metadata !594) #10, !dbg !3453
  %5 = icmp eq i8* %4, null, !dbg !3454
  %6 = icmp ne i64 %3, 0, !dbg !3455
  %7 = and i1 %6, %5, !dbg !3456
  br i1 %7, label %8, label %9, !dbg !3456

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3457
  unreachable, !dbg !3457

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3458
  ret i8* %4, !dbg !3459
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3460 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3462, !tbaa !691
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.91, i64 0, i64 0), i32 5) #10, !dbg !3463
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i64 0, i64 0), i8* %2) #10, !dbg !3464
  tail call void @abort() #14, !dbg !3466
  unreachable, !dbg !3466
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3467 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !594), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3471, metadata !594), !dbg !3474
  %3 = tail call noalias i8* @__strndup(i8* %0, i64 %1) #10, !dbg !3475
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3472, metadata !594), !dbg !3476
  %4 = icmp eq i8* %3, null, !dbg !3477
  br i1 %4, label %5, label %6, !dbg !3479

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3480
  unreachable, !dbg !3480

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !3481
}

; Function Attrs: nounwind
declare noalias i8* @__strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3482 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3485, metadata !594), !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3486, metadata !594), !dbg !3492
  %3 = icmp eq i64 %0, 0, !dbg !3493
  %4 = icmp eq i64 %1, 0, !dbg !3494
  %5 = or i1 %3, %4, !dbg !3496
  br i1 %5, label %12, label %6, !dbg !3496

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3488, metadata !594), !dbg !3498
  %8 = udiv i64 %7, %1, !dbg !3499
  %9 = icmp eq i64 %8, %0, !dbg !3501
  br i1 %9, label %12, label %10, !dbg !3502

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3503
  store i32 12, i32* %11, align 4, !dbg !3505, !tbaa !691
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3485, metadata !594), !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3486, metadata !594), !dbg !3492
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3506
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3487, metadata !594), !dbg !3507
  br label %16, !dbg !3508

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3509
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3510 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3527, metadata !594), !dbg !3536
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3528, metadata !594), !dbg !3537
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3529, metadata !594), !dbg !3538
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3530, metadata !594), !dbg !3539
  %6 = bitcast i32* %5 to i8*, !dbg !3540
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3540
  %7 = icmp eq i32* %0, null, !dbg !3541
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3527, metadata !594), !dbg !3536
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3543
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3527, metadata !594), !dbg !3536
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3544
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3531, metadata !594), !dbg !3545
  %10 = icmp ugt i64 %9, -3, !dbg !3546
  %11 = icmp ne i64 %2, 0, !dbg !3547
  %12 = and i1 %11, %10, !dbg !3549
  br i1 %12, label %13, label %18, !dbg !3549

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3550
  br i1 %14, label %18, label %15, !dbg !3552

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3554, !tbaa !764
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3533, metadata !594), !dbg !3555
  %17 = zext i8 %16 to i32, !dbg !3556
  store i32 %17, i32* %8, align 4, !dbg !3557, !tbaa !691
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3558
  ret i64 %19, !dbg !3558
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3559 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3604, metadata !594), !dbg !3609
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3610
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3611, metadata !594), !dbg !3614
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3616
  %4 = load i32, i32* %3, align 8, !dbg !3616, !tbaa !3617
  %5 = and i32 %4, 32, !dbg !3616
  %6 = icmp eq i32 %5, 0, !dbg !3618
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3619
  %8 = icmp ne i32 %7, 0, !dbg !3620
  br i1 %6, label %9, label %19, !dbg !3621

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3623
  %11 = icmp ne i64 %2, 0, !dbg !3623
  %12 = or i1 %11, %10, !dbg !3623
  %13 = sext i1 %8 to i32, !dbg !3623
  br i1 %12, label %22, label %14, !dbg !3623

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3625
  %16 = load i32, i32* %15, align 4, !dbg !3625, !tbaa !691
  %17 = icmp ne i32 %16, 9, !dbg !3627
  %18 = sext i1 %17 to i32, !dbg !3627
  br label %22, !dbg !3627

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3629

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3631
  store i32 0, i32* %21, align 4, !dbg !3633, !tbaa !691
  br label %22, !dbg !3631

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3634
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3635 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3640, metadata !594), !dbg !3660
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3641, metadata !594), !dbg !3661
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3662
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3642, metadata !594), !dbg !3663
  %3 = icmp eq i8* %2, null, !dbg !3664
  br i1 %3, label %15, label %4, !dbg !3665

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3650, metadata !594), !dbg !3666
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3651, metadata !594), !dbg !3667
  %5 = load i8, i8* %2, align 1, !dbg !3668, !tbaa !764
  %6 = icmp eq i8 %5, 67, !dbg !3670
  br i1 %6, label %7, label %11, !dbg !3673

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3675
  %9 = load i8, i8* %8, align 1, !dbg !3675, !tbaa !764
  %10 = icmp eq i8 %9, 0, !dbg !3678
  br i1 %10, label %14, label %11, !dbg !3680

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3656, metadata !594), !dbg !3682
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.103, i64 0, i64 0)) #10, !dbg !3683
  %13 = icmp eq i32 %12, 0, !dbg !3685
  br i1 %13, label %14, label %15, !dbg !3687

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3641, metadata !594), !dbg !3661
  br label %15, !dbg !3689

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3690
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3691 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3703, metadata !594), !dbg !3777
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3770, metadata !594), !dbg !3779
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3780
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3695, metadata !594), !dbg !3781
  %4 = icmp eq i8* %3, null, !dbg !3782
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), i8* %3, !dbg !3784
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3695, metadata !594), !dbg !3781
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3785, !tbaa !602
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3717, metadata !594) #10, !dbg !3786
  %7 = icmp eq i8* %6, null, !dbg !3787
  br i1 %7, label %8, label %127, !dbg !3788

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.107, i64 0, i64 0)) #10, !dbg !3789
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3718, metadata !594) #10, !dbg !3790
  %10 = icmp eq i8* %9, null, !dbg !3791
  br i1 %10, label %14, label %11, !dbg !3793

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3794, !tbaa !764
  %13 = icmp eq i8 %12, 0, !dbg !3796
  br i1 %13, label %14, label %15, !dbg !3797

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3799

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.108, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3718, metadata !594) #10, !dbg !3790
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3800
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3721, metadata !594) #10, !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3723, metadata !594) #10, !dbg !3802
  %18 = icmp eq i64 %17, 0, !dbg !3803
  br i1 %18, label %24, label %19, !dbg !3804

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3805
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3805
  %22 = load i8, i8* %21, align 1, !dbg !3805, !tbaa !764
  %23 = icmp ne i8 %22, 47, !dbg !3807
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3808
  %27 = add i64 %17, 14, !dbg !3809
  %28 = add i64 %27, %26, !dbg !3810
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3811
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3720, metadata !594) #10, !dbg !3812
  %30 = icmp eq i8* %29, null, !dbg !3813
  br i1 %30, label %125, label %31, !dbg !3813

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3814
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3817

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3818, !tbaa !764
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3820
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.109, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3821
  br label %37, !dbg !3822

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3820
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.109, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3821
  br label %37, !dbg !3822

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3823
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3725, metadata !594) #10, !dbg !3824
  %39 = icmp slt i32 %38, 0, !dbg !3825
  br i1 %39, label %123, label %40, !dbg !3826

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.110, i64 0, i64 0)) #10, !dbg !3827
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3726, metadata !594) #10, !dbg !3828
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3829
  br i1 %42, label %48, label %43, !dbg !3830

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3831

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3832
  br label %123, !dbg !3834

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3767, metadata !594) #10, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3768, metadata !594) #10, !dbg !3835
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3836
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3837
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3838, metadata !594) #10, !dbg !3843
  %53 = load i8*, i8** %46, align 8, !dbg !3845, !tbaa !3846
  %54 = load i8*, i8** %47, align 8, !dbg !3845, !tbaa !3847
  %55 = icmp ult i8* %53, %54, !dbg !3845
  br i1 %55, label %58, label %56, !dbg !3845, !prof !822

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3848
  br label %62, !dbg !3848

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3850
  store i8* %59, i8** %46, align 8, !dbg !3850, !tbaa !3846
  %60 = load i8, i8* %53, align 1, !dbg !3850, !tbaa !764
  %61 = zext i8 %60 to i32, !dbg !3850
  br label %62, !dbg !3850

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3852
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3769, metadata !594) #10, !dbg !3854
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3855

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3856

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3838, metadata !594) #10, !dbg !3856
  %66 = load i8*, i8** %46, align 8, !dbg !3860, !tbaa !3846
  %67 = load i8*, i8** %47, align 8, !dbg !3860, !tbaa !3847
  %68 = icmp ult i8* %66, %67, !dbg !3860
  br i1 %68, label %71, label %69, !dbg !3860, !prof !822

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3861
  br label %75, !dbg !3861

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3862
  store i8* %72, i8** %46, align 8, !dbg !3862, !tbaa !3846
  %73 = load i8, i8* %66, align 1, !dbg !3862, !tbaa !764
  %74 = zext i8 %73 to i32, !dbg !3862
  br label %75, !dbg !3862

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3863
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3769, metadata !594) #10, !dbg !3854
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3864, !llvm.loop !3866

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !3869
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.111, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !3870
  %80 = icmp slt i32 %79, 2, !dbg !3872
  br i1 %80, label %115, label %81, !dbg !3873

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3774, metadata !594) #10, !dbg !3875
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3775, metadata !594) #10, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3776, metadata !594) #10, !dbg !3878
  %84 = icmp eq i64 %51, 0, !dbg !3879
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3881

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3768, metadata !594) #10, !dbg !3835
  %89 = add i64 %86, 2, !dbg !3882
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3767, metadata !594) #10, !dbg !3831
  br label %95, !dbg !3885

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3768, metadata !594) #10, !dbg !3835
  %93 = add i64 %92, 1, !dbg !3888
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !3889
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3767, metadata !594) #10, !dbg !3831
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3767, metadata !594) #10, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3768, metadata !594) #10, !dbg !3835
  %98 = icmp eq i8* %97, null, !dbg !3890
  br i1 %98, label %99, label %100, !dbg !3892

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3768, metadata !594) #10, !dbg !3835
  call void @free(i8* %52) #10, !dbg !3893
  br label %116, !dbg !3895

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3896
  %102 = xor i64 %83, -1, !dbg !3897
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3897
  %104 = xor i64 %82, -1, !dbg !3898
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3898
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3899, metadata !594) #10, !dbg !3908
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3907, metadata !594) #10, !dbg !3908
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !3910
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !3911
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3899, metadata !594) #10, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3907, metadata !594) #10, !dbg !3912
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !3914
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !3915
  br label %111, !dbg !3916

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3831

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3767, metadata !594) #10, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3768, metadata !594) #10, !dbg !3835
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3916
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3916
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3831

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3831

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3767, metadata !594) #10, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3768, metadata !594) #10, !dbg !3835
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3916
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3916
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3917
  %120 = icmp eq i64 %117, 0, !dbg !3918
  br i1 %120, label %123, label %121, !dbg !3920

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3921
  store i8 0, i8* %122, align 1, !dbg !3923, !tbaa !764
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3717, metadata !594) #10, !dbg !3786
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3717, metadata !594) #10, !dbg !3786
  call void @free(i8* %29) #10, !dbg !3924
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3717, metadata !594) #10, !dbg !3786
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3925, !tbaa !602
  br label %127, !dbg !3926

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3696, metadata !594), !dbg !3927
  %129 = load i8, i8* %128, align 1, !dbg !3928, !tbaa !764
  %130 = icmp eq i8 %129, 0, !dbg !3929
  br i1 %130, label %157, label %131, !dbg !3930

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3932

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !3932
  %136 = icmp eq i32 %135, 0, !dbg !3933
  br i1 %136, label %143, label %137, !dbg !3934

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3935
  br i1 %138, label %139, label %147, !dbg !3937

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3938
  %141 = load i8, i8* %140, align 1, !dbg !3938, !tbaa !764
  %142 = icmp eq i8 %141, 0, !dbg !3940
  br i1 %142, label %143, label %147, !dbg !3941

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3943
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3945
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3946
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3695, metadata !594), !dbg !3781
  br label %157, !dbg !3947

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3948
  %149 = add i64 %148, 1, !dbg !3949
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3950
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3696, metadata !594), !dbg !3927
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3951
  %152 = add i64 %151, 1, !dbg !3952
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3953
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3696, metadata !594), !dbg !3927
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3696, metadata !594), !dbg !3927
  %154 = load i8, i8* %153, align 1, !dbg !3928, !tbaa !764
  %155 = icmp eq i8 %154, 0, !dbg !3929
  br i1 %155, label %156, label %132, !dbg !3930, !llvm.loop !3954

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3781

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3695, metadata !594), !dbg !3781
  %159 = load i8, i8* %158, align 1, !dbg !3957, !tbaa !764
  %160 = icmp eq i8 %159, 0, !dbg !3959
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i8* %158, !dbg !3960
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3695, metadata !594), !dbg !3781
  ret i8* %161, !dbg !3961
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3962 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4007, metadata !594), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4008, metadata !594), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4010, metadata !594), !dbg !4013
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4014
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4009, metadata !594), !dbg !4015
  %3 = icmp slt i32 %2, 0, !dbg !4016
  br i1 %3, label %4, label %6, !dbg !4018

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4019
  br label %24, !dbg !4020

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4021
  %8 = icmp eq i32 %7, 0, !dbg !4021
  br i1 %8, label %13, label %9, !dbg !4023

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4024
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4026
  %12 = icmp eq i64 %11, -1, !dbg !4028
  br i1 %12, label %16, label %13, !dbg !4029

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4030
  %15 = icmp eq i32 %14, 0, !dbg !4030
  br i1 %15, label %16, label %18, !dbg !4031

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4008, metadata !594), !dbg !4012
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4033
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4010, metadata !594), !dbg !4013
  br label %24, !dbg !4034

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4035
  %20 = load i32, i32* %19, align 4, !dbg !4035, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4008, metadata !594), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4008, metadata !594), !dbg !4012
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4033
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4010, metadata !594), !dbg !4013
  %22 = icmp eq i32 %20, 0, !dbg !4036
  br i1 %22, label %24, label %23, !dbg !4034

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4038, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4010, metadata !594), !dbg !4013
  br label %24, !dbg !4040

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4041
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4042 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4087, metadata !594), !dbg !4088
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4089
  br i1 %2, label %6, label %3, !dbg !4091

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4092
  %5 = icmp eq i32 %4, 0, !dbg !4092
  br i1 %5, label %6, label %8, !dbg !4094

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4096
  br label %17, !dbg !4097

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4098, metadata !594) #10, !dbg !4103
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4105
  %10 = load i32, i32* %9, align 8, !dbg !4105, !tbaa !3617
  %11 = and i32 %10, 256, !dbg !4107
  %12 = icmp eq i32 %11, 0, !dbg !4107
  br i1 %12, label %15, label %13, !dbg !4108

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4109
  br label %15, !dbg !4109

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4110
  br label %17, !dbg !4111

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4112
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4113 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4159, metadata !594), !dbg !4165
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4160, metadata !594), !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4161, metadata !594), !dbg !4167
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4168
  %5 = load i8*, i8** %4, align 8, !dbg !4168, !tbaa !3847
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4169
  %7 = load i8*, i8** %6, align 8, !dbg !4169, !tbaa !3846
  %8 = icmp eq i8* %5, %7, !dbg !4170
  br i1 %8, label %9, label %28, !dbg !4171

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4172
  %11 = load i8*, i8** %10, align 8, !dbg !4172, !tbaa !817
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4174
  %13 = load i8*, i8** %12, align 8, !dbg !4174, !tbaa !4175
  %14 = icmp eq i8* %11, %13, !dbg !4176
  br i1 %14, label %15, label %28, !dbg !4177

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4178
  %17 = load i8*, i8** %16, align 8, !dbg !4178, !tbaa !4179
  %18 = icmp eq i8* %17, null, !dbg !4180
  br i1 %18, label %19, label %28, !dbg !4181

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4183
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4184
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4162, metadata !594), !dbg !4186
  %22 = icmp eq i64 %21, -1, !dbg !4187
  br i1 %22, label %30, label %23, !dbg !4189

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4190
  %25 = load i32, i32* %24, align 8, !dbg !4191, !tbaa !3617
  %26 = and i32 %25, -17, !dbg !4191
  store i32 %26, i32* %24, align 8, !dbg !4191, !tbaa !3617
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4192
  store i64 %21, i64* %27, align 8, !dbg !4193, !tbaa !4194
  br label %30, !dbg !4195

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4196
  br label %30, !dbg !4197

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4198
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
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { argmemonly nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !65, !70, !532, !534, !537, !79, !86, !93, !539, !177, !547, !564, !566, !568, !570, !573, !575, !186, !578, !580, !582}
!llvm.ident = !{!584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584, !584}
!llvm.module.flags = !{!585, !586, !587, !588}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 31, type: !51, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19)
!3 = !DIFile(filename: "src/basename.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1536, elements: !61)
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
!62 = !DISubrange(count: 6)
!63 = !DIGlobalVariableExpression(var: !64)
!64 = distinct !DIGlobalVariable(name: "Version", scope: !65, file: !66, line: 2, type: !17, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !67)
!66 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!67 = !{!63}
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "file_name", scope: !70, file: !75, line: 36, type: !17, isLocal: true, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !72)
!71 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !{!68, !73}
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !70, file: !75, line: 46, type: !76, isLocal: true, isDefinition: true)
!75 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "exit_failure", scope: !79, file: !82, line: 24, type: !83, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !81)
!80 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!77}
!82 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "program_name", scope: !86, file: !90, line: 33, type: !17, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !89)
!87 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!8, !6}
!89 = !{!84}
!90 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !93, file: !135, line: 77, type: !171, isLocal: false, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !130, globals: !132)
!94 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{!96, !110, !115}
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !97, line: 32, size: 32, elements: !98)
!97 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!99 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!100 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!101 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!102 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!103 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!104 = !DIEnumerator(name: "c_quoting_style", value: 5)
!105 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!106 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!107 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!108 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!109 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !97, line: 242, size: 32, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!113 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!114 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !116, line: 46, size: 32, elements: !117)
!116 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!118 = !DIEnumerator(name: "_ISupper", value: 256)
!119 = !DIEnumerator(name: "_ISlower", value: 512)
!120 = !DIEnumerator(name: "_ISalpha", value: 1024)
!121 = !DIEnumerator(name: "_ISdigit", value: 2048)
!122 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!123 = !DIEnumerator(name: "_ISspace", value: 8192)
!124 = !DIEnumerator(name: "_ISprint", value: 16384)
!125 = !DIEnumerator(name: "_ISgraph", value: 32768)
!126 = !DIEnumerator(name: "_ISblank", value: 1)
!127 = !DIEnumerator(name: "_IScntrl", value: 2)
!128 = !DIEnumerator(name: "_ISpunct", value: 4)
!129 = !DIEnumerator(name: "_ISalnum", value: 8)
!130 = !{!47, !131, !9, !6}
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !{!91, !133, !140, !153, !155, !160, !167, !169}
!133 = !DIGlobalVariableExpression(var: !134)
!134 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !93, file: !135, line: 93, type: !136, isLocal: false, isDefinition: true)
!135 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 320, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!138 = !{!139}
!139 = !DISubrange(count: 10)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !93, file: !135, line: 1043, type: !142, isLocal: false, isDefinition: true)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !135, line: 57, size: 448, elements: !143)
!143 = !{!144, !145, !146, !151, !152}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !142, file: !135, line: 60, baseType: !96, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !135, line: 63, baseType: !47, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !142, file: !135, line: 67, baseType: !147, size: 256, offset: 64)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !149)
!148 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!149 = !{!150}
!150 = !DISubrange(count: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !142, file: !135, line: 70, baseType: !17, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !142, file: !135, line: 73, baseType: !17, size: 64, offset: 384)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !93, file: !135, line: 108, type: !142, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "slot0", scope: !93, file: !135, line: 834, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 256)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "slotvec", scope: !93, file: !135, line: 837, type: !162, isLocal: true, isDefinition: true)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !135, line: 826, size: 128, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !163, file: !135, line: 828, baseType: !9, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !163, file: !135, line: 829, baseType: !6, size: 64, offset: 64)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "nslots", scope: !93, file: !135, line: 835, type: !47, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "slotvec0", scope: !93, file: !135, line: 836, type: !163, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 704, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!173 = !{!174}
!174 = !DISubrange(count: 11)
!175 = !DIGlobalVariableExpression(var: !176)
!176 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !177, file: !180, line: 26, type: !181, isLocal: false, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !179)
!178 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!179 = !{!175}
!180 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 47)
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !186, file: !530, line: 120, type: !531, isLocal: true, isDefinition: true)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !188, retainedTypes: !527, globals: !529)
!187 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !{!189}
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !190, line: 41, size: 32, elements: !191)
!190 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!192 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!193 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!194 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!195 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!196 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!197 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!198 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!199 = !DIEnumerator(name: "DAY_1", value: 131079)
!200 = !DIEnumerator(name: "DAY_2", value: 131080)
!201 = !DIEnumerator(name: "DAY_3", value: 131081)
!202 = !DIEnumerator(name: "DAY_4", value: 131082)
!203 = !DIEnumerator(name: "DAY_5", value: 131083)
!204 = !DIEnumerator(name: "DAY_6", value: 131084)
!205 = !DIEnumerator(name: "DAY_7", value: 131085)
!206 = !DIEnumerator(name: "ABMON_1", value: 131086)
!207 = !DIEnumerator(name: "ABMON_2", value: 131087)
!208 = !DIEnumerator(name: "ABMON_3", value: 131088)
!209 = !DIEnumerator(name: "ABMON_4", value: 131089)
!210 = !DIEnumerator(name: "ABMON_5", value: 131090)
!211 = !DIEnumerator(name: "ABMON_6", value: 131091)
!212 = !DIEnumerator(name: "ABMON_7", value: 131092)
!213 = !DIEnumerator(name: "ABMON_8", value: 131093)
!214 = !DIEnumerator(name: "ABMON_9", value: 131094)
!215 = !DIEnumerator(name: "ABMON_10", value: 131095)
!216 = !DIEnumerator(name: "ABMON_11", value: 131096)
!217 = !DIEnumerator(name: "ABMON_12", value: 131097)
!218 = !DIEnumerator(name: "MON_1", value: 131098)
!219 = !DIEnumerator(name: "MON_2", value: 131099)
!220 = !DIEnumerator(name: "MON_3", value: 131100)
!221 = !DIEnumerator(name: "MON_4", value: 131101)
!222 = !DIEnumerator(name: "MON_5", value: 131102)
!223 = !DIEnumerator(name: "MON_6", value: 131103)
!224 = !DIEnumerator(name: "MON_7", value: 131104)
!225 = !DIEnumerator(name: "MON_8", value: 131105)
!226 = !DIEnumerator(name: "MON_9", value: 131106)
!227 = !DIEnumerator(name: "MON_10", value: 131107)
!228 = !DIEnumerator(name: "MON_11", value: 131108)
!229 = !DIEnumerator(name: "MON_12", value: 131109)
!230 = !DIEnumerator(name: "AM_STR", value: 131110)
!231 = !DIEnumerator(name: "PM_STR", value: 131111)
!232 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!233 = !DIEnumerator(name: "D_FMT", value: 131113)
!234 = !DIEnumerator(name: "T_FMT", value: 131114)
!235 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!236 = !DIEnumerator(name: "ERA", value: 131116)
!237 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!238 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!239 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!240 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!241 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!242 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!243 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!244 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!245 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!246 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!247 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!248 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!249 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!250 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!251 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!252 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!253 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!254 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!255 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!256 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!257 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!258 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!259 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!260 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!261 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!262 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!263 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!264 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!265 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!266 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!267 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!268 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!269 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!270 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!271 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!272 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!273 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!274 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!275 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!276 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!277 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!278 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!279 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!280 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!281 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!282 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!283 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!284 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!285 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!286 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!287 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!288 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!289 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!290 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!291 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!292 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!293 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!294 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!295 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!296 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!297 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!298 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!299 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!300 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!301 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!302 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!303 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!304 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!305 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!306 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!307 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!308 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!309 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!310 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!311 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!312 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!313 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!314 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!315 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!316 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!317 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!318 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!319 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!320 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!321 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!322 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!323 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!324 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!325 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!326 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!327 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!328 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!329 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!330 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!331 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!332 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!334 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!335 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!336 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!337 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!338 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!339 = !DIEnumerator(name: "CODESET", value: 14)
!340 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!341 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!342 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!343 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!386 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!387 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!389 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!395 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!396 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!411 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!412 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!413 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!414 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!415 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!416 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!417 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!418 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!419 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!420 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!421 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!422 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!423 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!424 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!425 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!426 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!427 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!428 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!429 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!430 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!431 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!432 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!433 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!450 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!451 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!454 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!455 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!456 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!457 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!458 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!459 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!460 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!461 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!462 = !DIEnumerator(name: "THOUSEP", value: 65537)
!463 = !DIEnumerator(name: "__GROUPING", value: 65538)
!464 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!465 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!466 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!467 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!468 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!469 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!470 = !DIEnumerator(name: "__YESSTR", value: 327682)
!471 = !DIEnumerator(name: "__NOSTR", value: 327683)
!472 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!473 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!474 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!475 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!476 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!477 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!478 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!479 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!480 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!481 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!482 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!483 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!484 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!485 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!486 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!487 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!488 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!489 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!490 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!491 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!492 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!494 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!495 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!496 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!497 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!498 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!499 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!500 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!501 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!502 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!503 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!504 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!505 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!506 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!507 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!508 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!525 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!526 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!527 = !{!8, !6, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!529 = !{!184}
!530 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!531 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!532 = distinct !DICompileUnit(language: DW_LANG_C99, file: !533, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!533 = !DIFile(filename: "./lib/basename.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = distinct !DICompileUnit(language: DW_LANG_C99, file: !535, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !536)
!535 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!536 = !{!6}
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!538 = !DIFile(filename: "./lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = distinct !DICompileUnit(language: DW_LANG_C99, file: !540, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !541, retainedTypes: !546)
!540 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!541 = !{!542}
!542 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !543, line: 41, size: 32, elements: !544)
!543 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = !{!545}
!545 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!546 = !{!8}
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !549, retainedTypes: !563)
!548 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = !{!550}
!550 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !552, file: !551, line: 192, size: 32, elements: !561)
!551 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = distinct !DISubprogram(name: "x2nrealloc", scope: !551, file: !551, line: 180, type: !553, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !556)
!553 = !DISubroutineType(types: !554)
!554 = !{!8, !8, !555, !9}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!556 = !{!557, !558, !559, !560}
!557 = !DILocalVariable(name: "p", arg: 1, scope: !552, file: !551, line: 180, type: !8)
!558 = !DILocalVariable(name: "pn", arg: 2, scope: !552, file: !551, line: 180, type: !555)
!559 = !DILocalVariable(name: "s", arg: 3, scope: !552, file: !551, line: 180, type: !9)
!560 = !DILocalVariable(name: "n", scope: !552, file: !551, line: 182, type: !9)
!561 = !{!562}
!562 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!563 = !{!9, !6, !8}
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!565 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!567 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !546)
!569 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !572)
!571 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = !{!9}
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!574 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !577)
!576 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = !{!9, !12, !14, !17}
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!579 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !546)
!581 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !546)
!583 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!585 = !{i32 2, !"Dwarf Version", i32 4}
!586 = !{i32 2, !"Debug Info Version", i32 3}
!587 = !{i32 1, !"PIC Level", i32 2}
!588 = !{i32 1, !"PIE Level", i32 2}
!589 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 42, type: !590, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !592)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !47}
!592 = !{!593}
!593 = !DILocalVariable(name: "status", arg: 1, scope: !589, file: !3, line: 42, type: !47)
!594 = !DIExpression()
!595 = !DILocation(line: 42, column: 12, scope: !589)
!596 = !DILocation(line: 44, column: 14, scope: !597)
!597 = distinct !DILexicalBlock(scope: !589, file: !3, line: 44, column: 7)
!598 = !DILocation(line: 44, column: 7, scope: !589)
!599 = !DILocation(line: 45, column: 5, scope: !600)
!600 = !DILexicalBlockFile(scope: !601, file: !3, discriminator: 1)
!601 = distinct !DILexicalBlock(scope: !597, file: !3, line: 45, column: 5)
!602 = !{!603, !603, i64 0}
!603 = !{!"any pointer", !604, i64 0}
!604 = !{!"omnipotent char", !605, i64 0}
!605 = !{!"Simple C/C++ TBAA"}
!606 = !DILocation(line: 45, column: 5, scope: !607)
!607 = !DILexicalBlockFile(scope: !601, file: !3, discriminator: 3)
!608 = !DILocation(line: 45, column: 5, scope: !609)
!609 = !DILexicalBlockFile(scope: !601, file: !3, discriminator: 2)
!610 = !DILocation(line: 48, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !597, file: !3, line: 47, column: 5)
!612 = !DILocation(line: 48, column: 7, scope: !613)
!613 = !DILexicalBlockFile(scope: !611, file: !3, discriminator: 1)
!614 = !DILocation(line: 53, column: 7, scope: !611)
!615 = !DILocation(line: 53, column: 7, scope: !613)
!616 = !DILocation(line: 587, column: 3, scope: !617, inlinedAt: !620)
!617 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !23, file: !23, line: 585, type: !618, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!618 = !DISubroutineType(types: !619)
!619 = !{null}
!620 = distinct !DILocation(line: 58, column: 7, scope: !611)
!621 = !DILocation(line: 587, column: 3, scope: !622, inlinedAt: !620)
!622 = !DILexicalBlockFile(scope: !617, file: !23, discriminator: 1)
!623 = !DILocation(line: 60, column: 7, scope: !611)
!624 = !DILocation(line: 60, column: 7, scope: !613)
!625 = !DILocation(line: 65, column: 7, scope: !611)
!626 = !DILocation(line: 65, column: 7, scope: !613)
!627 = !DILocation(line: 66, column: 7, scope: !611)
!628 = !DILocation(line: 66, column: 7, scope: !613)
!629 = !DILocation(line: 67, column: 7, scope: !611)
!630 = !DILocation(line: 67, column: 7, scope: !613)
!631 = !DILocation(line: 642, column: 15, scope: !22, inlinedAt: !632)
!632 = distinct !DILocation(line: 76, column: 7, scope: !611)
!633 = !DILocation(line: 651, column: 3, scope: !22, inlinedAt: !632)
!634 = !DILocation(line: 651, column: 3, scope: !635, inlinedAt: !632)
!635 = !DILexicalBlockFile(scope: !22, file: !23, discriminator: 1)
!636 = !DILocation(line: 655, column: 29, scope: !22, inlinedAt: !632)
!637 = !DILocation(line: 655, column: 15, scope: !22, inlinedAt: !632)
!638 = !DILocation(line: 656, column: 7, scope: !42, inlinedAt: !632)
!639 = !DILocation(line: 656, column: 19, scope: !42, inlinedAt: !632)
!640 = !DILocation(line: 656, column: 22, scope: !641, inlinedAt: !632)
!641 = !DILexicalBlockFile(scope: !42, file: !23, discriminator: 16)
!642 = !DILocation(line: 656, column: 7, scope: !643, inlinedAt: !632)
!643 = !DILexicalBlockFile(scope: !22, file: !23, discriminator: 16)
!644 = !DILocation(line: 662, column: 7, scope: !645, inlinedAt: !632)
!645 = distinct !DILexicalBlock(scope: !42, file: !23, line: 657, column: 5)
!646 = !DILocation(line: 662, column: 7, scope: !647, inlinedAt: !632)
!647 = !DILexicalBlockFile(scope: !645, file: !23, discriminator: 1)
!648 = !DILocation(line: 664, column: 5, scope: !645, inlinedAt: !632)
!649 = !DILocation(line: 665, column: 3, scope: !22, inlinedAt: !632)
!650 = !DILocation(line: 665, column: 3, scope: !635, inlinedAt: !632)
!651 = !DILocation(line: 667, column: 3, scope: !22, inlinedAt: !632)
!652 = !DILocation(line: 667, column: 3, scope: !635, inlinedAt: !632)
!653 = !DILocation(line: 78, column: 3, scope: !589)
!654 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 124, type: !655, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !658)
!655 = !DISubroutineType(types: !656)
!656 = !{!47, !47, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!658 = !{!659, !660, !661, !662, !663, !664}
!659 = !DILocalVariable(name: "argc", arg: 1, scope: !654, file: !3, line: 124, type: !47)
!660 = !DILocalVariable(name: "argv", arg: 2, scope: !654, file: !3, line: 124, type: !657)
!661 = !DILocalVariable(name: "multiple_names", scope: !654, file: !3, line: 126, type: !76)
!662 = !DILocalVariable(name: "use_nuls", scope: !654, file: !3, line: 127, type: !76)
!663 = !DILocalVariable(name: "suffix", scope: !654, file: !3, line: 128, type: !17)
!664 = !DILocalVariable(name: "c", scope: !665, file: !3, line: 140, type: !47)
!665 = distinct !DILexicalBlock(scope: !654, file: !3, line: 139, column: 5)
!666 = !DILocation(line: 124, column: 11, scope: !654)
!667 = !DILocation(line: 124, column: 24, scope: !654)
!668 = !DILocation(line: 126, column: 8, scope: !654)
!669 = !DILocation(line: 127, column: 8, scope: !654)
!670 = !DILocation(line: 128, column: 15, scope: !654)
!671 = !DILocation(line: 131, column: 21, scope: !654)
!672 = !DILocation(line: 131, column: 3, scope: !654)
!673 = !DILocation(line: 132, column: 3, scope: !654)
!674 = !DILocation(line: 133, column: 3, scope: !654)
!675 = !DILocation(line: 134, column: 3, scope: !654)
!676 = !DILocation(line: 136, column: 3, scope: !654)
!677 = !DILocation(line: 138, column: 3, scope: !654)
!678 = !DILocation(line: 140, column: 15, scope: !665)
!679 = !DILocation(line: 140, column: 11, scope: !665)
!680 = !DILocation(line: 142, column: 11, scope: !665)
!681 = !DILocation(line: 148, column: 20, scope: !682)
!682 = distinct !DILexicalBlock(scope: !665, file: !3, line: 146, column: 9)
!683 = !DILocation(line: 148, column: 11, scope: !682)
!684 = !DILocation(line: 160, column: 9, scope: !682)
!685 = !DILocation(line: 161, column: 9, scope: !682)
!686 = !DILocation(line: 161, column: 9, scope: !687)
!687 = !DILexicalBlockFile(scope: !682, file: !3, discriminator: 1)
!688 = !DILocation(line: 164, column: 11, scope: !682)
!689 = !DILocation(line: 168, column: 14, scope: !690)
!690 = distinct !DILexicalBlock(scope: !654, file: !3, line: 168, column: 7)
!691 = !{!692, !692, i64 0}
!692 = !{!"int", !604, i64 0}
!693 = !DILocation(line: 168, column: 12, scope: !690)
!694 = !DILocation(line: 168, column: 7, scope: !654)
!695 = !DILocation(line: 170, column: 20, scope: !696)
!696 = distinct !DILexicalBlock(scope: !690, file: !3, line: 169, column: 5)
!697 = !DILocation(line: 170, column: 7, scope: !698)
!698 = !DILexicalBlockFile(scope: !696, file: !3, discriminator: 1)
!699 = !DILocation(line: 171, column: 7, scope: !696)
!700 = !DILocation(line: 174, column: 8, scope: !701)
!701 = distinct !DILexicalBlock(scope: !654, file: !3, line: 174, column: 7)
!702 = !DILocation(line: 174, column: 23, scope: !701)
!703 = !DILocation(line: 174, column: 33, scope: !704)
!704 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 1)
!705 = !DILocation(line: 174, column: 37, scope: !704)
!706 = !DILocation(line: 176, column: 20, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !3, line: 175, column: 5)
!708 = !DILocation(line: 176, column: 55, scope: !707)
!709 = !DILocation(line: 176, column: 62, scope: !707)
!710 = !DILocation(line: 176, column: 50, scope: !707)
!711 = !DILocation(line: 176, column: 43, scope: !712)
!712 = !DILexicalBlockFile(scope: !707, file: !3, discriminator: 1)
!713 = !DILocation(line: 176, column: 7, scope: !714)
!714 = !DILexicalBlockFile(scope: !707, file: !3, discriminator: 2)
!715 = !DILocation(line: 177, column: 7, scope: !707)
!716 = !DILocation(line: 180, column: 7, scope: !654)
!717 = !DILocation(line: 182, column: 7, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !3, discriminator: 1)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 182, column: 7)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 181, column: 5)
!721 = distinct !DILexicalBlock(scope: !654, file: !3, line: 180, column: 7)
!722 = !DILocation(line: 183, column: 27, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !3, line: 182, column: 7)
!724 = !DILocation(line: 183, column: 9, scope: !723)
!725 = !DILocation(line: 182, column: 35, scope: !726)
!726 = !DILexicalBlockFile(scope: !723, file: !3, discriminator: 2)
!727 = !DILocation(line: 182, column: 21, scope: !728)
!728 = !DILexicalBlockFile(scope: !723, file: !3, discriminator: 1)
!729 = distinct !{!729, !730, !731}
!730 = !DILocation(line: 182, column: 7, scope: !719)
!731 = !DILocation(line: 183, column: 57, scope: !719)
!732 = !DILocation(line: 186, column: 23, scope: !721)
!733 = !DILocation(line: 187, column: 34, scope: !721)
!734 = !DILocation(line: 187, column: 23, scope: !721)
!735 = !DILocation(line: 187, column: 56, scope: !736)
!736 = !DILexicalBlockFile(scope: !721, file: !3, discriminator: 1)
!737 = !DILocation(line: 187, column: 44, scope: !736)
!738 = !DILocation(line: 187, column: 23, scope: !736)
!739 = !DILocation(line: 187, column: 23, scope: !740)
!740 = !DILexicalBlockFile(scope: !721, file: !3, discriminator: 3)
!741 = !DILocation(line: 187, column: 69, scope: !740)
!742 = !DILocation(line: 186, column: 5, scope: !736)
!743 = !DILocation(line: 190, column: 1, scope: !654)
!744 = distinct !DISubprogram(name: "perform_basename", scope: !3, file: !3, line: 104, type: !745, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !17, !17, !76}
!747 = !{!748, !749, !750, !751}
!748 = !DILocalVariable(name: "string", arg: 1, scope: !744, file: !3, line: 104, type: !17)
!749 = !DILocalVariable(name: "suffix", arg: 2, scope: !744, file: !3, line: 104, type: !17)
!750 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !744, file: !3, line: 104, type: !76)
!751 = !DILocalVariable(name: "name", scope: !744, file: !3, line: 106, type: !6)
!752 = !DILocation(line: 104, column: 31, scope: !744)
!753 = !DILocation(line: 104, column: 51, scope: !744)
!754 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!755 = !DILocation(line: 104, column: 64, scope: !744)
!756 = !DILocation(line: 106, column: 16, scope: !744)
!757 = !DILocation(line: 106, column: 9, scope: !744)
!758 = !DILocation(line: 107, column: 3, scope: !744)
!759 = !DILocation(line: 115, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !744, file: !3, line: 115, column: 7)
!761 = !DILocation(line: 115, column: 14, scope: !760)
!762 = !DILocation(line: 115, column: 17, scope: !763)
!763 = !DILexicalBlockFile(scope: !760, file: !3, discriminator: 1)
!764 = !{!604, !604, i64 0}
!765 = !DILocation(line: 115, column: 7, scope: !766)
!766 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 1)
!767 = !DILocalVariable(name: "name", arg: 1, scope: !768, file: !3, line: 85, type: !6)
!768 = distinct !DISubprogram(name: "remove_suffix", scope: !3, file: !3, line: 85, type: !769, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !6, !17}
!771 = !{!767, !772, !773, !774}
!772 = !DILocalVariable(name: "suffix", arg: 2, scope: !768, file: !3, line: 85, type: !17)
!773 = !DILocalVariable(name: "np", scope: !768, file: !3, line: 87, type: !6)
!774 = !DILocalVariable(name: "sp", scope: !768, file: !3, line: 88, type: !17)
!775 = !DILocation(line: 85, column: 22, scope: !768, inlinedAt: !776)
!776 = distinct !DILocation(line: 116, column: 5, scope: !760)
!777 = !DILocation(line: 85, column: 40, scope: !768, inlinedAt: !776)
!778 = !DILocation(line: 90, column: 15, scope: !768, inlinedAt: !776)
!779 = !DILocation(line: 90, column: 13, scope: !768, inlinedAt: !776)
!780 = !DILocation(line: 87, column: 9, scope: !768, inlinedAt: !776)
!781 = !DILocation(line: 91, column: 17, scope: !768, inlinedAt: !776)
!782 = !DILocation(line: 91, column: 15, scope: !768, inlinedAt: !776)
!783 = !DILocation(line: 88, column: 15, scope: !768, inlinedAt: !776)
!784 = !DILocation(line: 93, column: 3, scope: !768, inlinedAt: !776)
!785 = !DILocation(line: 93, column: 13, scope: !786, inlinedAt: !776)
!786 = !DILexicalBlockFile(scope: !768, file: !3, discriminator: 1)
!787 = !DILocation(line: 93, column: 26, scope: !788, inlinedAt: !776)
!788 = !DILexicalBlockFile(scope: !768, file: !3, discriminator: 2)
!789 = !DILocation(line: 93, column: 20, scope: !786, inlinedAt: !776)
!790 = !DILocation(line: 93, column: 3, scope: !791, inlinedAt: !776)
!791 = !DILexicalBlockFile(scope: !768, file: !3, discriminator: 3)
!792 = !DILocation(line: 94, column: 10, scope: !793, inlinedAt: !776)
!793 = distinct !DILexicalBlock(scope: !768, file: !3, line: 94, column: 9)
!794 = !DILocation(line: 94, column: 9, scope: !793, inlinedAt: !776)
!795 = !DILocation(line: 94, column: 19, scope: !793, inlinedAt: !776)
!796 = !DILocation(line: 94, column: 18, scope: !793, inlinedAt: !776)
!797 = !DILocation(line: 94, column: 15, scope: !793, inlinedAt: !776)
!798 = !DILocation(line: 94, column: 9, scope: !768, inlinedAt: !776)
!799 = distinct !{!799, !800, !801}
!800 = !DILocation(line: 93, column: 3, scope: !768)
!801 = !DILocation(line: 95, column: 7, scope: !768)
!802 = !DILocation(line: 96, column: 7, scope: !768, inlinedAt: !776)
!803 = !DILocation(line: 97, column: 9, scope: !804, inlinedAt: !776)
!804 = distinct !DILexicalBlock(scope: !768, file: !3, line: 96, column: 7)
!805 = !DILocation(line: 97, column: 5, scope: !804, inlinedAt: !776)
!806 = !DILocation(line: 118, column: 3, scope: !744)
!807 = !DILocation(line: 119, column: 3, scope: !744)
!808 = !DILocalVariable(name: "__c", arg: 1, scope: !809, file: !810, line: 105, type: !47)
!809 = distinct !DISubprogram(name: "putchar_unlocked", scope: !810, file: !810, line: 105, type: !811, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !813)
!810 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!811 = !DISubroutineType(types: !812)
!812 = !{!47, !47}
!813 = !{!808}
!814 = !DILocation(line: 105, column: 23, scope: !809, inlinedAt: !815)
!815 = distinct !DILocation(line: 119, column: 3, scope: !744)
!816 = !DILocation(line: 107, column: 10, scope: !809, inlinedAt: !815)
!817 = !{!818, !603, i64 40}
!818 = !{!"_IO_FILE", !692, i64 0, !603, i64 8, !603, i64 16, !603, i64 24, !603, i64 32, !603, i64 40, !603, i64 48, !603, i64 56, !603, i64 64, !603, i64 72, !603, i64 80, !603, i64 88, !603, i64 96, !603, i64 104, !692, i64 112, !692, i64 116, !819, i64 120, !820, i64 128, !604, i64 130, !604, i64 131, !603, i64 136, !819, i64 144, !603, i64 152, !603, i64 160, !603, i64 168, !603, i64 176, !819, i64 184, !692, i64 192, !604, i64 196}
!819 = !{!"long", !604, i64 0}
!820 = !{!"short", !604, i64 0}
!821 = !{!818, !603, i64 48}
!822 = !{!"branch_weights", i32 2000, i32 1}
!823 = !DILocation(line: 107, column: 10, scope: !824, inlinedAt: !815)
!824 = !DILexicalBlockFile(scope: !809, file: !810, discriminator: 1)
!825 = !DILocation(line: 107, column: 10, scope: !826, inlinedAt: !815)
!826 = !DILexicalBlockFile(scope: !809, file: !810, discriminator: 2)
!827 = !DILocation(line: 120, column: 3, scope: !744)
!828 = !DILocation(line: 121, column: 1, scope: !744)
!829 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !75, file: !75, line: 41, type: !24, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !830)
!830 = !{!831}
!831 = !DILocalVariable(name: "file", arg: 1, scope: !829, file: !75, line: 41, type: !17)
!832 = !DILocation(line: 41, column: 41, scope: !829)
!833 = !DILocation(line: 43, column: 13, scope: !829)
!834 = !DILocation(line: 44, column: 1, scope: !829)
!835 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !75, file: !75, line: 78, type: !836, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !76}
!838 = !{!839}
!839 = !DILocalVariable(name: "ignore", arg: 1, scope: !835, file: !75, line: 78, type: !76)
!840 = !DILocation(line: 78, column: 37, scope: !835)
!841 = !DILocation(line: 80, column: 16, scope: !835)
!842 = !{!843, !843, i64 0}
!843 = !{!"_Bool", !604, i64 0}
!844 = !DILocation(line: 81, column: 1, scope: !835)
!845 = distinct !DISubprogram(name: "close_stdout", scope: !75, file: !75, line: 107, type: !618, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !70, variables: !846)
!846 = !{!847}
!847 = !DILocalVariable(name: "write_error", scope: !848, file: !75, line: 112, type: !17)
!848 = distinct !DILexicalBlock(scope: !849, file: !75, line: 111, column: 5)
!849 = distinct !DILexicalBlock(scope: !845, file: !75, line: 109, column: 7)
!850 = !DILocation(line: 109, column: 21, scope: !849)
!851 = !DILocation(line: 109, column: 7, scope: !849)
!852 = !DILocation(line: 109, column: 29, scope: !849)
!853 = !DILocation(line: 110, column: 7, scope: !849)
!854 = !DILocation(line: 110, column: 12, scope: !855)
!855 = !DILexicalBlockFile(scope: !849, file: !75, discriminator: 1)
!856 = !{i8 0, i8 2}
!857 = !DILocation(line: 114, column: 19, scope: !858)
!858 = distinct !DILexicalBlock(scope: !848, file: !75, line: 113, column: 11)
!859 = !DILocation(line: 110, column: 25, scope: !855)
!860 = !DILocation(line: 110, column: 28, scope: !861)
!861 = !DILexicalBlockFile(scope: !849, file: !75, discriminator: 2)
!862 = !DILocation(line: 110, column: 34, scope: !861)
!863 = !DILocation(line: 109, column: 7, scope: !864)
!864 = !DILexicalBlockFile(scope: !845, file: !75, discriminator: 1)
!865 = !DILocation(line: 112, column: 33, scope: !848)
!866 = !DILocation(line: 112, column: 19, scope: !848)
!867 = !DILocation(line: 113, column: 11, scope: !858)
!868 = !DILocation(line: 113, column: 11, scope: !848)
!869 = !DILocation(line: 114, column: 36, scope: !870)
!870 = !DILexicalBlockFile(scope: !858, file: !75, discriminator: 1)
!871 = !DILocation(line: 114, column: 9, scope: !872)
!872 = !DILexicalBlockFile(scope: !858, file: !75, discriminator: 2)
!873 = !DILocation(line: 114, column: 9, scope: !858)
!874 = !DILocation(line: 117, column: 9, scope: !870)
!875 = !DILocation(line: 119, column: 14, scope: !848)
!876 = !DILocation(line: 119, column: 7, scope: !848)
!877 = !DILocation(line: 122, column: 22, scope: !878)
!878 = distinct !DILexicalBlock(scope: !845, file: !75, line: 122, column: 8)
!879 = !DILocation(line: 122, column: 8, scope: !878)
!880 = !DILocation(line: 122, column: 30, scope: !878)
!881 = !DILocation(line: 122, column: 8, scope: !845)
!882 = !DILocation(line: 123, column: 13, scope: !878)
!883 = !DILocation(line: 123, column: 6, scope: !878)
!884 = !DILocation(line: 124, column: 1, scope: !845)
!885 = distinct !DISubprogram(name: "base_name", scope: !886, file: !886, line: 28, type: !887, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !889)
!886 = !DIFile(filename: "lib/basename.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!887 = !DISubroutineType(types: !888)
!888 = !{!6, !17}
!889 = !{!890, !891, !892}
!890 = !DILocalVariable(name: "name", arg: 1, scope: !885, file: !886, line: 28, type: !17)
!891 = !DILocalVariable(name: "base", scope: !885, file: !886, line: 30, type: !17)
!892 = !DILocalVariable(name: "length", scope: !885, file: !886, line: 31, type: !9)
!893 = !DILocation(line: 28, column: 24, scope: !885)
!894 = !DILocation(line: 30, column: 22, scope: !885)
!895 = !DILocation(line: 30, column: 15, scope: !885)
!896 = !DILocation(line: 35, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !885, file: !886, line: 35, column: 7)
!898 = !DILocation(line: 35, column: 7, scope: !885)
!899 = !DILocation(line: 36, column: 28, scope: !897)
!900 = !DILocation(line: 36, column: 12, scope: !901)
!901 = !DILexicalBlockFile(scope: !897, file: !886, discriminator: 1)
!902 = !DILocation(line: 36, column: 5, scope: !897)
!903 = !DILocation(line: 39, column: 12, scope: !885)
!904 = !DILocation(line: 31, column: 10, scope: !885)
!905 = !DILocation(line: 40, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !885, file: !886, line: 40, column: 7)
!907 = !DILocation(line: 40, column: 7, scope: !885)
!908 = !DILocation(line: 57, column: 10, scope: !885)
!909 = !DILocation(line: 57, column: 3, scope: !885)
!910 = !DILocation(line: 58, column: 1, scope: !885)
!911 = distinct !DISubprogram(name: "last_component", scope: !912, file: !912, line: 30, type: !887, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !534, variables: !913)
!912 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!913 = !{!914, !915, !916, !917}
!914 = !DILocalVariable(name: "name", arg: 1, scope: !911, file: !912, line: 30, type: !17)
!915 = !DILocalVariable(name: "base", scope: !911, file: !912, line: 32, type: !17)
!916 = !DILocalVariable(name: "p", scope: !911, file: !912, line: 33, type: !17)
!917 = !DILocalVariable(name: "saw_slash", scope: !911, file: !912, line: 34, type: !76)
!918 = !DILocation(line: 30, column: 29, scope: !911)
!919 = !DILocation(line: 32, column: 15, scope: !911)
!920 = !DILocation(line: 34, column: 8, scope: !911)
!921 = !DILocation(line: 36, column: 3, scope: !911)
!922 = !DILocation(line: 36, column: 10, scope: !923)
!923 = !DILexicalBlockFile(scope: !911, file: !912, discriminator: 1)
!924 = !DILocation(line: 37, column: 9, scope: !911)
!925 = !DILocation(line: 36, column: 3, scope: !923)
!926 = distinct !{!926, !921, !924}
!927 = !DILocation(line: 39, column: 18, scope: !928)
!928 = !DILexicalBlockFile(scope: !929, file: !912, discriminator: 1)
!929 = distinct !DILexicalBlock(scope: !930, file: !912, line: 39, column: 3)
!930 = distinct !DILexicalBlock(scope: !911, file: !912, line: 39, column: 3)
!931 = !DILocation(line: 33, column: 15, scope: !911)
!932 = !DILocation(line: 39, column: 3, scope: !933)
!933 = !DILexicalBlockFile(scope: !930, file: !912, discriminator: 1)
!934 = !DILocation(line: 43, column: 16, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !912, line: 43, column: 16)
!936 = distinct !DILexicalBlock(scope: !937, file: !912, line: 41, column: 11)
!937 = distinct !DILexicalBlock(scope: !929, file: !912, line: 40, column: 5)
!938 = !DILocation(line: 43, column: 16, scope: !936)
!939 = !DILocation(line: 39, column: 23, scope: !940)
!940 = !DILexicalBlockFile(scope: !929, file: !912, discriminator: 2)
!941 = !DILocation(line: 39, column: 3, scope: !940)
!942 = distinct !{!942, !943, !944}
!943 = !DILocation(line: 39, column: 3, scope: !930)
!944 = !DILocation(line: 48, column: 5, scope: !930)
!945 = !DILocation(line: 50, column: 3, scope: !911)
!946 = distinct !DISubprogram(name: "base_len", scope: !912, file: !912, line: 58, type: !947, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !534, variables: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{!9, !17}
!949 = !{!950, !951, !952}
!950 = !DILocalVariable(name: "name", arg: 1, scope: !946, file: !912, line: 58, type: !17)
!951 = !DILocalVariable(name: "len", scope: !946, file: !912, line: 60, type: !9)
!952 = !DILocalVariable(name: "prefix_len", scope: !946, file: !912, line: 61, type: !9)
!953 = !DILocation(line: 58, column: 23, scope: !946)
!954 = !DILocation(line: 61, column: 10, scope: !946)
!955 = !DILocation(line: 63, column: 14, scope: !956)
!956 = distinct !DILexicalBlock(scope: !946, file: !912, line: 63, column: 3)
!957 = !DILocation(line: 60, column: 10, scope: !946)
!958 = !DILocation(line: 63, column: 8, scope: !956)
!959 = !DILocation(line: 63, column: 32, scope: !960)
!960 = !DILexicalBlockFile(scope: !961, file: !912, discriminator: 1)
!961 = distinct !DILexicalBlock(scope: !956, file: !912, line: 63, column: 3)
!962 = !DILocation(line: 63, column: 38, scope: !960)
!963 = !DILocation(line: 63, column: 41, scope: !964)
!964 = !DILexicalBlockFile(scope: !961, file: !912, discriminator: 2)
!965 = !DILocation(line: 63, column: 3, scope: !966)
!966 = !DILexicalBlockFile(scope: !956, file: !912, discriminator: 3)
!967 = distinct !{!967, !968, !969}
!968 = !DILocation(line: 63, column: 3, scope: !956)
!969 = !DILocation(line: 64, column: 5, scope: !956)
!970 = !DILocation(line: 74, column: 3, scope: !946)
!971 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !972, file: !972, line: 31, type: !973, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !975)
!972 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!973 = !DISubroutineType(types: !974)
!974 = !{!76, !6}
!975 = !{!976, !977, !978, !979}
!976 = !DILocalVariable(name: "file", arg: 1, scope: !971, file: !972, line: 31, type: !6)
!977 = !DILocalVariable(name: "base", scope: !971, file: !972, line: 33, type: !6)
!978 = !DILocalVariable(name: "base_lim", scope: !971, file: !972, line: 34, type: !6)
!979 = !DILocalVariable(name: "had_slash", scope: !971, file: !972, line: 35, type: !76)
!980 = !DILocation(line: 31, column: 31, scope: !971)
!981 = !DILocation(line: 33, column: 16, scope: !971)
!982 = !DILocation(line: 33, column: 9, scope: !971)
!983 = !DILocation(line: 39, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !971, file: !972, line: 39, column: 7)
!985 = !DILocation(line: 39, column: 7, scope: !971)
!986 = !DILocation(line: 41, column: 21, scope: !971)
!987 = !DILocation(line: 41, column: 19, scope: !971)
!988 = !DILocation(line: 34, column: 9, scope: !971)
!989 = !DILocation(line: 42, column: 16, scope: !971)
!990 = !DILocation(line: 42, column: 26, scope: !971)
!991 = !DILocation(line: 43, column: 13, scope: !971)
!992 = !DILocation(line: 44, column: 3, scope: !971)
!993 = distinct !DISubprogram(name: "set_program_name", scope: !90, file: !90, line: 39, type: !24, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !86, variables: !994)
!994 = !{!995, !996, !997}
!995 = !DILocalVariable(name: "argv0", arg: 1, scope: !993, file: !90, line: 39, type: !17)
!996 = !DILocalVariable(name: "slash", scope: !993, file: !90, line: 46, type: !17)
!997 = !DILocalVariable(name: "base", scope: !993, file: !90, line: 47, type: !17)
!998 = !DILocation(line: 39, column: 31, scope: !993)
!999 = !DILocation(line: 51, column: 13, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !993, file: !90, line: 51, column: 7)
!1001 = !DILocation(line: 51, column: 7, scope: !993)
!1002 = !DILocation(line: 55, column: 14, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !90, line: 52, column: 5)
!1004 = !DILocation(line: 54, column: 7, scope: !1003)
!1005 = !DILocation(line: 56, column: 7, scope: !1003)
!1006 = !DILocation(line: 59, column: 11, scope: !993)
!1007 = !DILocation(line: 46, column: 15, scope: !993)
!1008 = !DILocation(line: 60, column: 17, scope: !993)
!1009 = !DILocation(line: 60, column: 33, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !993, file: !90, discriminator: 1)
!1011 = !DILocation(line: 60, column: 11, scope: !993)
!1012 = !DILocation(line: 47, column: 15, scope: !993)
!1013 = !DILocation(line: 61, column: 12, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !993, file: !90, line: 61, column: 7)
!1015 = !DILocation(line: 61, column: 20, scope: !1014)
!1016 = !DILocation(line: 61, column: 25, scope: !1014)
!1017 = !DILocation(line: 61, column: 28, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1014, file: !90, discriminator: 1)
!1019 = !DILocation(line: 61, column: 61, scope: !1018)
!1020 = !DILocation(line: 61, column: 7, scope: !1010)
!1021 = !DILocation(line: 64, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !90, line: 64, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1014, file: !90, line: 62, column: 5)
!1024 = !DILocation(line: 64, column: 36, scope: !1022)
!1025 = !DILocation(line: 64, column: 11, scope: !1023)
!1026 = !DILocation(line: 66, column: 24, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !90, line: 65, column: 9)
!1028 = !DILocation(line: 70, column: 41, scope: !1027)
!1029 = !DILocation(line: 72, column: 9, scope: !1027)
!1030 = !DILocation(line: 84, column: 16, scope: !993)
!1031 = !DILocation(line: 90, column: 27, scope: !993)
!1032 = !DILocation(line: 92, column: 1, scope: !993)
!1033 = distinct !DISubprogram(name: "clone_quoting_options", scope: !135, file: !135, line: 114, type: !1034, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1037)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!1036, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!1037 = !{!1038, !1039, !1040}
!1038 = !DILocalVariable(name: "o", arg: 1, scope: !1033, file: !135, line: 114, type: !1036)
!1039 = !DILocalVariable(name: "e", scope: !1033, file: !135, line: 116, type: !47)
!1040 = !DILocalVariable(name: "p", scope: !1033, file: !135, line: 117, type: !1036)
!1041 = !DILocation(line: 114, column: 48, scope: !1033)
!1042 = !DILocation(line: 116, column: 11, scope: !1033)
!1043 = !DILocation(line: 116, column: 7, scope: !1033)
!1044 = !DILocation(line: 117, column: 40, scope: !1033)
!1045 = !DILocation(line: 117, column: 40, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1033, file: !135, discriminator: 3)
!1047 = !DILocation(line: 117, column: 31, scope: !1046)
!1048 = !DILocation(line: 117, column: 27, scope: !1033)
!1049 = !DILocation(line: 119, column: 9, scope: !1033)
!1050 = !DILocation(line: 120, column: 3, scope: !1033)
!1051 = distinct !DISubprogram(name: "get_quoting_style", scope: !135, file: !135, line: 125, type: !1052, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1056)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!96, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!1056 = !{!1057}
!1057 = !DILocalVariable(name: "o", arg: 1, scope: !1051, file: !135, line: 125, type: !1054)
!1058 = !DILocation(line: 125, column: 50, scope: !1051)
!1059 = !DILocation(line: 127, column: 11, scope: !1051)
!1060 = !DILocation(line: 127, column: 46, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1051, file: !135, discriminator: 3)
!1062 = !{!1063, !604, i64 0}
!1063 = !{!"quoting_options", !604, i64 0, !692, i64 4, !604, i64 8, !603, i64 40, !603, i64 48}
!1064 = !DILocation(line: 127, column: 3, scope: !1061)
!1065 = distinct !DISubprogram(name: "set_quoting_style", scope: !135, file: !135, line: 133, type: !1066, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1068)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !1036, !96}
!1068 = !{!1069, !1070}
!1069 = !DILocalVariable(name: "o", arg: 1, scope: !1065, file: !135, line: 133, type: !1036)
!1070 = !DILocalVariable(name: "s", arg: 2, scope: !1065, file: !135, line: 133, type: !96)
!1071 = !DILocation(line: 133, column: 44, scope: !1065)
!1072 = !DILocation(line: 133, column: 66, scope: !1065)
!1073 = !DILocation(line: 135, column: 4, scope: !1065)
!1074 = !DILocation(line: 135, column: 39, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1065, file: !135, discriminator: 3)
!1076 = !DILocation(line: 135, column: 45, scope: !1075)
!1077 = !DILocation(line: 136, column: 1, scope: !1065)
!1078 = distinct !DISubprogram(name: "set_char_quoting", scope: !135, file: !135, line: 144, type: !1079, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!47, !1036, !7, !47}
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1088, !1089}
!1082 = !DILocalVariable(name: "o", arg: 1, scope: !1078, file: !135, line: 144, type: !1036)
!1083 = !DILocalVariable(name: "c", arg: 2, scope: !1078, file: !135, line: 144, type: !7)
!1084 = !DILocalVariable(name: "i", arg: 3, scope: !1078, file: !135, line: 144, type: !47)
!1085 = !DILocalVariable(name: "uc", scope: !1078, file: !135, line: 146, type: !16)
!1086 = !DILocalVariable(name: "p", scope: !1078, file: !135, line: 147, type: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1088 = !DILocalVariable(name: "shift", scope: !1078, file: !135, line: 149, type: !47)
!1089 = !DILocalVariable(name: "r", scope: !1078, file: !135, line: 150, type: !47)
!1090 = !DILocation(line: 144, column: 43, scope: !1078)
!1091 = !DILocation(line: 144, column: 51, scope: !1078)
!1092 = !DILocation(line: 144, column: 58, scope: !1078)
!1093 = !DILocation(line: 146, column: 17, scope: !1078)
!1094 = !DILocation(line: 148, column: 6, scope: !1078)
!1095 = !DILocation(line: 148, column: 62, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1078, file: !135, discriminator: 3)
!1097 = !DILocation(line: 148, column: 57, scope: !1096)
!1098 = !DILocation(line: 147, column: 17, scope: !1078)
!1099 = !DILocation(line: 149, column: 18, scope: !1078)
!1100 = !DILocation(line: 149, column: 15, scope: !1078)
!1101 = !DILocation(line: 149, column: 7, scope: !1078)
!1102 = !DILocation(line: 150, column: 12, scope: !1078)
!1103 = !DILocation(line: 150, column: 15, scope: !1078)
!1104 = !DILocation(line: 150, column: 25, scope: !1078)
!1105 = !DILocation(line: 150, column: 7, scope: !1078)
!1106 = !DILocation(line: 151, column: 13, scope: !1078)
!1107 = !DILocation(line: 151, column: 18, scope: !1078)
!1108 = !DILocation(line: 151, column: 23, scope: !1078)
!1109 = !DILocation(line: 151, column: 6, scope: !1078)
!1110 = !DILocation(line: 152, column: 3, scope: !1078)
!1111 = distinct !DISubprogram(name: "set_quoting_flags", scope: !135, file: !135, line: 160, type: !1112, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!47, !1036, !47}
!1114 = !{!1115, !1116, !1117}
!1115 = !DILocalVariable(name: "o", arg: 1, scope: !1111, file: !135, line: 160, type: !1036)
!1116 = !DILocalVariable(name: "i", arg: 2, scope: !1111, file: !135, line: 160, type: !47)
!1117 = !DILocalVariable(name: "r", scope: !1111, file: !135, line: 162, type: !47)
!1118 = !DILocation(line: 160, column: 44, scope: !1111)
!1119 = !DILocation(line: 160, column: 51, scope: !1111)
!1120 = !DILocation(line: 163, column: 8, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1111, file: !135, line: 163, column: 7)
!1122 = !DILocation(line: 163, column: 7, scope: !1111)
!1123 = !DILocation(line: 165, column: 10, scope: !1111)
!1124 = !{!1063, !692, i64 4}
!1125 = !DILocation(line: 162, column: 7, scope: !1111)
!1126 = !DILocation(line: 166, column: 12, scope: !1111)
!1127 = !DILocation(line: 167, column: 3, scope: !1111)
!1128 = distinct !DISubprogram(name: "set_custom_quoting", scope: !135, file: !135, line: 171, type: !1129, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !1036, !17, !17}
!1131 = !{!1132, !1133, !1134}
!1132 = !DILocalVariable(name: "o", arg: 1, scope: !1128, file: !135, line: 171, type: !1036)
!1133 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1128, file: !135, line: 172, type: !17)
!1134 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1128, file: !135, line: 172, type: !17)
!1135 = !DILocation(line: 171, column: 45, scope: !1128)
!1136 = !DILocation(line: 172, column: 33, scope: !1128)
!1137 = !DILocation(line: 172, column: 57, scope: !1128)
!1138 = !DILocation(line: 174, column: 8, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1128, file: !135, line: 174, column: 7)
!1140 = !DILocation(line: 174, column: 7, scope: !1128)
!1141 = !DILocation(line: 176, column: 6, scope: !1128)
!1142 = !DILocation(line: 176, column: 12, scope: !1128)
!1143 = !DILocation(line: 177, column: 8, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1128, file: !135, line: 177, column: 7)
!1145 = !DILocation(line: 177, column: 23, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1144, file: !135, discriminator: 1)
!1147 = !DILocation(line: 177, column: 19, scope: !1144)
!1148 = !DILocation(line: 178, column: 5, scope: !1144)
!1149 = !DILocation(line: 179, column: 6, scope: !1128)
!1150 = !DILocation(line: 179, column: 17, scope: !1128)
!1151 = !{!1063, !603, i64 40}
!1152 = !DILocation(line: 180, column: 6, scope: !1128)
!1153 = !DILocation(line: 180, column: 18, scope: !1128)
!1154 = !{!1063, !603, i64 48}
!1155 = !DILocation(line: 181, column: 1, scope: !1128)
!1156 = distinct !DISubprogram(name: "quotearg_buffer", scope: !135, file: !135, line: 776, type: !1157, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!9, !6, !9, !17, !9, !1054}
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1160 = !DILocalVariable(name: "buffer", arg: 1, scope: !1156, file: !135, line: 776, type: !6)
!1161 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1156, file: !135, line: 776, type: !9)
!1162 = !DILocalVariable(name: "arg", arg: 3, scope: !1156, file: !135, line: 777, type: !17)
!1163 = !DILocalVariable(name: "argsize", arg: 4, scope: !1156, file: !135, line: 777, type: !9)
!1164 = !DILocalVariable(name: "o", arg: 5, scope: !1156, file: !135, line: 778, type: !1054)
!1165 = !DILocalVariable(name: "p", scope: !1156, file: !135, line: 780, type: !1054)
!1166 = !DILocalVariable(name: "e", scope: !1156, file: !135, line: 781, type: !47)
!1167 = !DILocalVariable(name: "r", scope: !1156, file: !135, line: 782, type: !9)
!1168 = !DILocation(line: 776, column: 24, scope: !1156)
!1169 = !DILocation(line: 776, column: 39, scope: !1156)
!1170 = !DILocation(line: 777, column: 30, scope: !1156)
!1171 = !DILocation(line: 777, column: 42, scope: !1156)
!1172 = !DILocation(line: 778, column: 48, scope: !1156)
!1173 = !DILocation(line: 780, column: 37, scope: !1156)
!1174 = !DILocation(line: 780, column: 33, scope: !1156)
!1175 = !DILocation(line: 781, column: 11, scope: !1156)
!1176 = !DILocation(line: 781, column: 7, scope: !1156)
!1177 = !DILocation(line: 783, column: 43, scope: !1156)
!1178 = !DILocation(line: 783, column: 53, scope: !1156)
!1179 = !DILocation(line: 783, column: 60, scope: !1156)
!1180 = !DILocation(line: 784, column: 43, scope: !1156)
!1181 = !DILocation(line: 784, column: 58, scope: !1156)
!1182 = !DILocation(line: 782, column: 14, scope: !1156)
!1183 = !DILocation(line: 782, column: 10, scope: !1156)
!1184 = !DILocation(line: 785, column: 9, scope: !1156)
!1185 = !DILocation(line: 786, column: 3, scope: !1156)
!1186 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !135, file: !135, line: 248, type: !1187, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1191)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!9, !6, !9, !17, !9, !96, !47, !1189, !17, !17}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1216, !1217, !1218, !1219, !1220, !1223, !1224, !1241, !1244, !1245, !1252}
!1192 = !DILocalVariable(name: "buffer", arg: 1, scope: !1186, file: !135, line: 248, type: !6)
!1193 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1186, file: !135, line: 248, type: !9)
!1194 = !DILocalVariable(name: "arg", arg: 3, scope: !1186, file: !135, line: 249, type: !17)
!1195 = !DILocalVariable(name: "argsize", arg: 4, scope: !1186, file: !135, line: 249, type: !9)
!1196 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1186, file: !135, line: 250, type: !96)
!1197 = !DILocalVariable(name: "flags", arg: 6, scope: !1186, file: !135, line: 250, type: !47)
!1198 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1186, file: !135, line: 251, type: !1189)
!1199 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1186, file: !135, line: 252, type: !17)
!1200 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1186, file: !135, line: 253, type: !17)
!1201 = !DILocalVariable(name: "i", scope: !1186, file: !135, line: 255, type: !9)
!1202 = !DILocalVariable(name: "len", scope: !1186, file: !135, line: 256, type: !9)
!1203 = !DILocalVariable(name: "orig_buffersize", scope: !1186, file: !135, line: 257, type: !9)
!1204 = !DILocalVariable(name: "quote_string", scope: !1186, file: !135, line: 258, type: !17)
!1205 = !DILocalVariable(name: "quote_string_len", scope: !1186, file: !135, line: 259, type: !9)
!1206 = !DILocalVariable(name: "backslash_escapes", scope: !1186, file: !135, line: 260, type: !76)
!1207 = !DILocalVariable(name: "unibyte_locale", scope: !1186, file: !135, line: 261, type: !76)
!1208 = !DILocalVariable(name: "elide_outer_quotes", scope: !1186, file: !135, line: 262, type: !76)
!1209 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1186, file: !135, line: 263, type: !76)
!1210 = !DILocalVariable(name: "encountered_single_quote", scope: !1186, file: !135, line: 264, type: !76)
!1211 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1186, file: !135, line: 265, type: !76)
!1212 = !DILocalVariable(name: "c", scope: !1213, file: !135, line: 394, type: !16)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !135, line: 393, column: 5)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !135, line: 392, column: 3)
!1215 = distinct !DILexicalBlock(scope: !1186, file: !135, line: 392, column: 3)
!1216 = !DILocalVariable(name: "esc", scope: !1213, file: !135, line: 395, type: !16)
!1217 = !DILocalVariable(name: "is_right_quote", scope: !1213, file: !135, line: 396, type: !76)
!1218 = !DILocalVariable(name: "escaping", scope: !1213, file: !135, line: 397, type: !76)
!1219 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1213, file: !135, line: 398, type: !76)
!1220 = !DILocalVariable(name: "m", scope: !1221, file: !135, line: 602, type: !9)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 600, column: 11)
!1222 = distinct !DILexicalBlock(scope: !1213, file: !135, line: 418, column: 9)
!1223 = !DILocalVariable(name: "printable", scope: !1221, file: !135, line: 604, type: !76)
!1224 = !DILocalVariable(name: "mbstate", scope: !1225, file: !135, line: 613, type: !1227)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !135, line: 612, column: 15)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !135, line: 606, column: 17)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1228, line: 107, baseType: !1229)
!1228 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1228, line: 95, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 83, size: 64, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1230, file: !1228, line: 85, baseType: !47, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1230, file: !1228, line: 94, baseType: !1234, size: 32, offset: 32)
!1234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1228, line: 86, size: 32, elements: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1234, file: !1228, line: 89, baseType: !148, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1234, file: !1228, line: 93, baseType: !1238, size: 32)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 4)
!1241 = !DILocalVariable(name: "w", scope: !1242, file: !135, line: 623, type: !1243)
!1242 = distinct !DILexicalBlock(scope: !1225, file: !135, line: 622, column: 19)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !10, line: 90, baseType: !47)
!1244 = !DILocalVariable(name: "bytes", scope: !1242, file: !135, line: 624, type: !9)
!1245 = !DILocalVariable(name: "j", scope: !1246, file: !135, line: 649, type: !9)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !135, line: 648, column: 27)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !135, line: 646, column: 29)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !135, line: 641, column: 23)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !135, line: 633, column: 30)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !135, line: 628, column: 30)
!1251 = distinct !DILexicalBlock(scope: !1242, file: !135, line: 626, column: 25)
!1252 = !DILocalVariable(name: "ilim", scope: !1253, file: !135, line: 676, type: !9)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !135, line: 673, column: 15)
!1254 = distinct !DILexicalBlock(scope: !1221, file: !135, line: 672, column: 17)
!1255 = !DILocation(line: 248, column: 33, scope: !1186)
!1256 = !DILocation(line: 248, column: 48, scope: !1186)
!1257 = !DILocation(line: 249, column: 39, scope: !1186)
!1258 = !DILocation(line: 249, column: 51, scope: !1186)
!1259 = !DILocation(line: 250, column: 46, scope: !1186)
!1260 = !DILocation(line: 250, column: 65, scope: !1186)
!1261 = !DILocation(line: 251, column: 47, scope: !1186)
!1262 = !DILocation(line: 252, column: 39, scope: !1186)
!1263 = !DILocation(line: 253, column: 39, scope: !1186)
!1264 = !DILocation(line: 256, column: 10, scope: !1186)
!1265 = !DILocation(line: 257, column: 10, scope: !1186)
!1266 = !DILocation(line: 258, column: 15, scope: !1186)
!1267 = !DILocation(line: 259, column: 10, scope: !1186)
!1268 = !DILocation(line: 260, column: 8, scope: !1186)
!1269 = !DILocation(line: 261, column: 25, scope: !1186)
!1270 = !DILocation(line: 261, column: 36, scope: !1186)
!1271 = !DILocation(line: 262, column: 8, scope: !1186)
!1272 = !DILocation(line: 263, column: 8, scope: !1186)
!1273 = !DILocation(line: 264, column: 8, scope: !1186)
!1274 = !DILocation(line: 265, column: 8, scope: !1186)
!1275 = !DILocation(line: 265, column: 3, scope: !1186)
!1276 = !DILocation(line: 308, column: 3, scope: !1186)
!1277 = !DILocation(line: 315, column: 11, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1186, file: !135, line: 309, column: 5)
!1279 = !DILocation(line: 315, column: 12, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1278, file: !135, line: 315, column: 11)
!1281 = !DILocation(line: 316, column: 9, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1283, file: !135, discriminator: 1)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !135, line: 316, column: 9)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !135, line: 316, column: 9)
!1285 = !DILocation(line: 316, column: 9, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1284, file: !135, discriminator: 1)
!1287 = !DILocation(line: 316, column: 9, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1283, file: !135, discriminator: 2)
!1289 = !DILocation(line: 354, column: 26, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !135, line: 332, column: 11)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !135, line: 331, column: 13)
!1292 = distinct !DILexicalBlock(scope: !1278, file: !135, line: 330, column: 7)
!1293 = !DILocation(line: 355, column: 27, scope: !1290)
!1294 = !DILocation(line: 356, column: 11, scope: !1290)
!1295 = !DILocation(line: 357, column: 14, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !135, line: 357, column: 13)
!1297 = !DILocation(line: 357, column: 13, scope: !1292)
!1298 = !DILocation(line: 358, column: 43, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !135, discriminator: 1)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !135, line: 358, column: 11)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !135, line: 358, column: 11)
!1302 = !DILocation(line: 358, column: 11, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1301, file: !135, discriminator: 1)
!1304 = !DILocation(line: 359, column: 13, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1306, file: !135, discriminator: 1)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !135, line: 359, column: 13)
!1307 = distinct !DILexicalBlock(scope: !1300, file: !135, line: 359, column: 13)
!1308 = !DILocation(line: 359, column: 13, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1307, file: !135, discriminator: 1)
!1310 = !DILocation(line: 359, column: 13, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1306, file: !135, discriminator: 2)
!1312 = !DILocation(line: 359, column: 13, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1307, file: !135, discriminator: 3)
!1314 = !DILocation(line: 358, column: 70, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1300, file: !135, discriminator: 2)
!1316 = distinct !{!1316, !1317, !1318}
!1317 = !DILocation(line: 358, column: 11, scope: !1301)
!1318 = !DILocation(line: 359, column: 13, scope: !1301)
!1319 = !DILocation(line: 362, column: 28, scope: !1292)
!1320 = !DILocation(line: 364, column: 7, scope: !1278)
!1321 = !DILocation(line: 367, column: 7, scope: !1278)
!1322 = !DILocation(line: 370, column: 7, scope: !1278)
!1323 = !DILocation(line: 373, column: 12, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1278, file: !135, line: 373, column: 11)
!1325 = !DILocation(line: 373, column: 11, scope: !1278)
!1326 = !DILocation(line: 378, column: 12, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1278, file: !135, line: 378, column: 11)
!1328 = !DILocation(line: 378, column: 11, scope: !1278)
!1329 = !DILocation(line: 379, column: 9, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1331, file: !135, discriminator: 1)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !135, line: 379, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !135, line: 379, column: 9)
!1333 = !DILocation(line: 379, column: 9, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1332, file: !135, discriminator: 1)
!1335 = !DILocation(line: 379, column: 9, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1331, file: !135, discriminator: 2)
!1337 = !DILocation(line: 386, column: 7, scope: !1278)
!1338 = !DILocation(line: 389, column: 7, scope: !1278)
!1339 = !DILocation(line: 255, column: 10, scope: !1186)
!1340 = !DILocation(line: 392, column: 8, scope: !1215)
!1341 = !DILocation(line: 392, column: 27, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1214, file: !135, discriminator: 1)
!1343 = !DILocation(line: 392, column: 19, scope: !1342)
!1344 = !DILocation(line: 392, column: 60, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1214, file: !135, discriminator: 3)
!1346 = !DILocation(line: 392, column: 3, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1215, file: !135, discriminator: 4)
!1348 = !DILocation(line: 392, column: 41, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1214, file: !135, discriminator: 2)
!1350 = !DILocation(line: 392, column: 48, scope: !1349)
!1351 = !DILocation(line: 396, column: 12, scope: !1213)
!1352 = !DILocation(line: 397, column: 12, scope: !1213)
!1353 = !DILocation(line: 398, column: 12, scope: !1213)
!1354 = !DILocation(line: 401, column: 11, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1213, file: !135, line: 400, column: 11)
!1356 = !DILocation(line: 403, column: 17, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1355, file: !135, discriminator: 1)
!1358 = !DILocation(line: 404, column: 39, scope: !1355)
!1359 = !DILocation(line: 408, column: 32, scope: !1355)
!1360 = !DILocation(line: 404, column: 19, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1355, file: !135, discriminator: 2)
!1362 = !DILocation(line: 404, column: 15, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1355, file: !135, discriminator: 4)
!1364 = !DILocation(line: 409, column: 11, scope: !1355)
!1365 = !DILocation(line: 409, column: 26, scope: !1357)
!1366 = !DILocation(line: 409, column: 14, scope: !1357)
!1367 = !DILocation(line: 400, column: 11, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1213, file: !135, discriminator: 1)
!1369 = !DILocation(line: 416, column: 11, scope: !1213)
!1370 = !DILocation(line: 394, column: 21, scope: !1213)
!1371 = !DILocation(line: 417, column: 7, scope: !1213)
!1372 = !DILocation(line: 420, column: 15, scope: !1222)
!1373 = !DILocation(line: 422, column: 15, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !135, discriminator: 1)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !135, line: 422, column: 15)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !135, line: 421, column: 13)
!1377 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 420, column: 15)
!1378 = !DILocation(line: 422, column: 15, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1380, file: !135, discriminator: 4)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !135, line: 422, column: 15)
!1381 = !DILocation(line: 422, column: 15, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1380, file: !135, discriminator: 3)
!1383 = !DILocation(line: 422, column: 15, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1385, file: !135, discriminator: 6)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !135, line: 422, column: 15)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !135, line: 422, column: 15)
!1387 = distinct !DILexicalBlock(scope: !1380, file: !135, line: 422, column: 15)
!1388 = !DILocation(line: 422, column: 15, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1386, file: !135, discriminator: 6)
!1390 = !DILocation(line: 422, column: 15, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1385, file: !135, discriminator: 7)
!1392 = !DILocation(line: 422, column: 15, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1386, file: !135, discriminator: 8)
!1394 = !DILocation(line: 422, column: 15, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1396, file: !135, discriminator: 11)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !135, line: 422, column: 15)
!1397 = distinct !DILexicalBlock(scope: !1387, file: !135, line: 422, column: 15)
!1398 = !DILocation(line: 422, column: 15, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1397, file: !135, discriminator: 11)
!1400 = !DILocation(line: 422, column: 15, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1396, file: !135, discriminator: 12)
!1402 = !DILocation(line: 422, column: 15, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1397, file: !135, discriminator: 13)
!1404 = !DILocation(line: 422, column: 15, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !135, discriminator: 16)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !135, line: 422, column: 15)
!1407 = distinct !DILexicalBlock(scope: !1387, file: !135, line: 422, column: 15)
!1408 = !DILocation(line: 422, column: 15, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1407, file: !135, discriminator: 16)
!1410 = !DILocation(line: 422, column: 15, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1406, file: !135, discriminator: 17)
!1412 = !DILocation(line: 422, column: 15, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1407, file: !135, discriminator: 18)
!1414 = !DILocation(line: 422, column: 15, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1387, file: !135, discriminator: 20)
!1416 = !DILocation(line: 422, column: 15, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1418, file: !135, discriminator: 22)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !135, line: 422, column: 15)
!1419 = distinct !DILexicalBlock(scope: !1375, file: !135, line: 422, column: 15)
!1420 = !DILocation(line: 422, column: 15, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1419, file: !135, discriminator: 22)
!1422 = !DILocation(line: 422, column: 15, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1418, file: !135, discriminator: 23)
!1424 = !DILocation(line: 422, column: 15, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1419, file: !135, discriminator: 24)
!1426 = !DILocation(line: 430, column: 19, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1376, file: !135, line: 429, column: 19)
!1428 = !DILocation(line: 430, column: 24, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1427, file: !135, discriminator: 1)
!1430 = !DILocation(line: 430, column: 28, scope: !1429)
!1431 = !DILocation(line: 430, column: 38, scope: !1429)
!1432 = !DILocation(line: 430, column: 48, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1427, file: !135, discriminator: 2)
!1434 = !DILocation(line: 430, column: 59, scope: !1433)
!1435 = !DILocation(line: 432, column: 19, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1437, file: !135, discriminator: 1)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !135, line: 432, column: 19)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !135, line: 432, column: 19)
!1439 = distinct !DILexicalBlock(scope: !1427, file: !135, line: 431, column: 17)
!1440 = !DILocation(line: 432, column: 19, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1438, file: !135, discriminator: 1)
!1442 = !DILocation(line: 432, column: 19, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1437, file: !135, discriminator: 2)
!1444 = !DILocation(line: 432, column: 19, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1438, file: !135, discriminator: 3)
!1446 = !DILocation(line: 433, column: 19, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1448, file: !135, discriminator: 1)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !135, line: 433, column: 19)
!1449 = distinct !DILexicalBlock(scope: !1439, file: !135, line: 433, column: 19)
!1450 = !DILocation(line: 433, column: 19, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1449, file: !135, discriminator: 1)
!1452 = !DILocation(line: 433, column: 19, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1448, file: !135, discriminator: 2)
!1454 = !DILocation(line: 433, column: 19, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1449, file: !135, discriminator: 3)
!1456 = !DILocation(line: 434, column: 17, scope: !1439)
!1457 = !DILocation(line: 441, column: 20, scope: !1377)
!1458 = !DILocation(line: 446, column: 11, scope: !1222)
!1459 = !DILocation(line: 449, column: 19, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 447, column: 13)
!1461 = !DILocation(line: 455, column: 19, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1460, file: !135, line: 454, column: 19)
!1463 = !DILocation(line: 455, column: 24, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1462, file: !135, discriminator: 1)
!1465 = !DILocation(line: 455, column: 28, scope: !1464)
!1466 = !DILocation(line: 455, column: 38, scope: !1464)
!1467 = !DILocation(line: 455, column: 47, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1462, file: !135, discriminator: 2)
!1469 = !DILocation(line: 455, column: 41, scope: !1468)
!1470 = !DILocation(line: 455, column: 52, scope: !1468)
!1471 = !DILocation(line: 454, column: 19, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1460, file: !135, discriminator: 1)
!1473 = !DILocation(line: 456, column: 25, scope: !1462)
!1474 = !DILocation(line: 456, column: 17, scope: !1462)
!1475 = !DILocation(line: 463, column: 25, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1462, file: !135, line: 457, column: 19)
!1477 = !DILocation(line: 467, column: 21, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1479, file: !135, discriminator: 1)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !135, line: 467, column: 21)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !135, line: 467, column: 21)
!1481 = !DILocation(line: 467, column: 21, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1480, file: !135, discriminator: 1)
!1483 = !DILocation(line: 467, column: 21, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1479, file: !135, discriminator: 2)
!1485 = !DILocation(line: 467, column: 21, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1480, file: !135, discriminator: 3)
!1487 = !DILocation(line: 468, column: 21, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1489, file: !135, discriminator: 1)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !135, line: 468, column: 21)
!1490 = distinct !DILexicalBlock(scope: !1476, file: !135, line: 468, column: 21)
!1491 = !DILocation(line: 468, column: 21, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1490, file: !135, discriminator: 1)
!1493 = !DILocation(line: 468, column: 21, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1489, file: !135, discriminator: 2)
!1495 = !DILocation(line: 468, column: 21, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1490, file: !135, discriminator: 3)
!1497 = !DILocation(line: 469, column: 21, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1499, file: !135, discriminator: 1)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !135, line: 469, column: 21)
!1500 = distinct !DILexicalBlock(scope: !1476, file: !135, line: 469, column: 21)
!1501 = !DILocation(line: 469, column: 21, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1500, file: !135, discriminator: 1)
!1503 = !DILocation(line: 469, column: 21, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1499, file: !135, discriminator: 2)
!1505 = !DILocation(line: 469, column: 21, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1500, file: !135, discriminator: 3)
!1507 = !DILocation(line: 470, column: 21, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1509, file: !135, discriminator: 1)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !135, line: 470, column: 21)
!1510 = distinct !DILexicalBlock(scope: !1476, file: !135, line: 470, column: 21)
!1511 = !DILocation(line: 470, column: 21, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1510, file: !135, discriminator: 1)
!1513 = !DILocation(line: 470, column: 21, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1509, file: !135, discriminator: 2)
!1515 = !DILocation(line: 470, column: 21, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1510, file: !135, discriminator: 3)
!1517 = !DILocation(line: 471, column: 21, scope: !1476)
!1518 = !DILocation(line: 395, column: 21, scope: !1213)
!1519 = !DILocation(line: 484, column: 31, scope: !1222)
!1520 = !DILocation(line: 485, column: 31, scope: !1222)
!1521 = !DILocation(line: 487, column: 31, scope: !1222)
!1522 = !DILocation(line: 488, column: 31, scope: !1222)
!1523 = !DILocation(line: 489, column: 31, scope: !1222)
!1524 = !DILocation(line: 492, column: 15, scope: !1222)
!1525 = !DILocation(line: 494, column: 19, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !135, line: 493, column: 13)
!1527 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 492, column: 15)
!1528 = !DILocation(line: 501, column: 33, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 501, column: 15)
!1530 = !DILocation(line: 506, column: 15, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 505, column: 15)
!1532 = !DILocation(line: 510, column: 15, scope: !1222)
!1533 = !DILocation(line: 518, column: 26, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 518, column: 15)
!1535 = !DILocation(line: 518, column: 15, scope: !1222)
!1536 = !DILocation(line: 518, column: 40, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1534, file: !135, discriminator: 1)
!1538 = !DILocation(line: 518, column: 47, scope: !1537)
!1539 = !DILocation(line: 522, column: 17, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 522, column: 15)
!1541 = !DILocation(line: 518, column: 18, scope: !1537)
!1542 = !DILocation(line: 518, column: 65, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1534, file: !135, discriminator: 2)
!1544 = !DILocation(line: 518, column: 15, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1222, file: !135, discriminator: 2)
!1546 = !DILocation(line: 522, column: 15, scope: !1222)
!1547 = !DILocation(line: 526, column: 11, scope: !1222)
!1548 = !DILocation(line: 541, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 540, column: 15)
!1550 = !DILocation(line: 548, column: 15, scope: !1222)
!1551 = !DILocation(line: 550, column: 19, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !135, line: 549, column: 13)
!1553 = distinct !DILexicalBlock(scope: !1222, file: !135, line: 548, column: 15)
!1554 = !DILocation(line: 553, column: 19, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !135, line: 553, column: 19)
!1556 = !DILocation(line: 553, column: 35, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1555, file: !135, discriminator: 1)
!1558 = !DILocation(line: 553, column: 30, scope: !1555)
!1559 = !DILocation(line: 562, column: 15, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1561, file: !135, discriminator: 1)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !135, line: 562, column: 15)
!1562 = distinct !DILexicalBlock(scope: !1552, file: !135, line: 562, column: 15)
!1563 = !DILocation(line: 562, column: 15, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1562, file: !135, discriminator: 1)
!1565 = !DILocation(line: 562, column: 15, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1561, file: !135, discriminator: 2)
!1567 = !DILocation(line: 562, column: 15, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1562, file: !135, discriminator: 3)
!1569 = !DILocation(line: 563, column: 15, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1571, file: !135, discriminator: 1)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !135, line: 563, column: 15)
!1572 = distinct !DILexicalBlock(scope: !1552, file: !135, line: 563, column: 15)
!1573 = !DILocation(line: 563, column: 15, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1572, file: !135, discriminator: 1)
!1575 = !DILocation(line: 563, column: 15, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1571, file: !135, discriminator: 2)
!1577 = !DILocation(line: 563, column: 15, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1572, file: !135, discriminator: 3)
!1579 = !DILocation(line: 564, column: 15, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1581, file: !135, discriminator: 1)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !135, line: 564, column: 15)
!1582 = distinct !DILexicalBlock(scope: !1552, file: !135, line: 564, column: 15)
!1583 = !DILocation(line: 564, column: 15, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1582, file: !135, discriminator: 1)
!1585 = !DILocation(line: 564, column: 15, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1581, file: !135, discriminator: 2)
!1587 = !DILocation(line: 564, column: 15, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1582, file: !135, discriminator: 3)
!1589 = !DILocation(line: 566, column: 13, scope: !1552)
!1590 = !DILocation(line: 606, column: 17, scope: !1221)
!1591 = !DILocation(line: 602, column: 20, scope: !1221)
!1592 = !DILocation(line: 609, column: 29, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1226, file: !135, line: 607, column: 15)
!1594 = !{!820, !820, i64 0}
!1595 = !DILocation(line: 609, column: 27, scope: !1593)
!1596 = !DILocation(line: 604, column: 18, scope: !1221)
!1597 = !DILocation(line: 610, column: 15, scope: !1593)
!1598 = !DILocation(line: 613, column: 17, scope: !1225)
!1599 = !DILocation(line: 614, column: 17, scope: !1225)
!1600 = !DILocation(line: 618, column: 29, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1225, file: !135, line: 618, column: 21)
!1602 = !DILocation(line: 618, column: 21, scope: !1225)
!1603 = distinct !{!1603, !1604, !1605}
!1604 = !DILocation(line: 621, column: 17, scope: !1225)
!1605 = !DILocation(line: 667, column: 44, scope: !1225)
!1606 = !DILocation(line: 619, column: 29, scope: !1601)
!1607 = !DILocation(line: 619, column: 19, scope: !1601)
!1608 = !DILocation(line: 623, column: 21, scope: !1242)
!1609 = !DILocation(line: 624, column: 56, scope: !1242)
!1610 = !DILocation(line: 624, column: 50, scope: !1242)
!1611 = !DILocation(line: 625, column: 53, scope: !1242)
!1612 = !DIExpression(DW_OP_deref)
!1613 = !DILocation(line: 613, column: 27, scope: !1225)
!1614 = !DILocation(line: 623, column: 29, scope: !1242)
!1615 = !DILocation(line: 624, column: 36, scope: !1242)
!1616 = !DILocation(line: 624, column: 28, scope: !1242)
!1617 = !DILocation(line: 626, column: 25, scope: !1242)
!1618 = !DILocation(line: 636, column: 38, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1620, file: !135, discriminator: 1)
!1620 = distinct !DILexicalBlock(scope: !1249, file: !135, line: 634, column: 23)
!1621 = !DILocation(line: 636, column: 48, scope: !1619)
!1622 = !DILocation(line: 636, column: 51, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1620, file: !135, discriminator: 2)
!1624 = !DILocation(line: 636, column: 48, scope: !1623)
!1625 = !DILocation(line: 636, column: 25, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1620, file: !135, discriminator: 3)
!1627 = !DILocation(line: 637, column: 28, scope: !1620)
!1628 = !DILocation(line: 636, column: 34, scope: !1619)
!1629 = distinct !{!1629, !1630, !1627}
!1630 = !DILocation(line: 636, column: 25, scope: !1620)
!1631 = !DILocation(line: 650, column: 43, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1633, file: !135, discriminator: 1)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !135, line: 650, column: 29)
!1634 = distinct !DILexicalBlock(scope: !1246, file: !135, line: 650, column: 29)
!1635 = !DILocation(line: 647, column: 29, scope: !1247)
!1636 = !DILocation(line: 649, column: 36, scope: !1246)
!1637 = !DILocation(line: 651, column: 49, scope: !1633)
!1638 = !DILocation(line: 651, column: 39, scope: !1633)
!1639 = !DILocation(line: 651, column: 31, scope: !1633)
!1640 = !DILocation(line: 650, column: 53, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1633, file: !135, discriminator: 2)
!1642 = !DILocation(line: 650, column: 29, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1634, file: !135, discriminator: 1)
!1644 = distinct !{!1644, !1645, !1646}
!1645 = !DILocation(line: 650, column: 29, scope: !1634)
!1646 = !DILocation(line: 659, column: 33, scope: !1634)
!1647 = !DILocation(line: 666, column: 19, scope: !1225)
!1648 = !DILocation(line: 662, column: 41, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1248, file: !135, line: 662, column: 29)
!1650 = !DILocation(line: 662, column: 31, scope: !1649)
!1651 = !DILocation(line: 662, column: 29, scope: !1248)
!1652 = !DILocation(line: 664, column: 27, scope: !1248)
!1653 = !DILocation(line: 667, column: 26, scope: !1225)
!1654 = !DILocation(line: 667, column: 24, scope: !1225)
!1655 = !DILocation(line: 666, column: 19, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1242, file: !135, discriminator: 3)
!1657 = !DILocation(line: 668, column: 15, scope: !1226)
!1658 = !DILocation(line: 670, column: 40, scope: !1221)
!1659 = !DILocation(line: 672, column: 19, scope: !1254)
!1660 = !DILocation(line: 672, column: 45, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1254, file: !135, discriminator: 1)
!1662 = !DILocation(line: 672, column: 23, scope: !1254)
!1663 = !DILocation(line: 676, column: 33, scope: !1253)
!1664 = !DILocation(line: 676, column: 24, scope: !1253)
!1665 = !DILocation(line: 678, column: 17, scope: !1253)
!1666 = !DILocation(line: 680, column: 43, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !135, line: 680, column: 25)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !135, line: 679, column: 19)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !135, line: 678, column: 17)
!1670 = distinct !DILexicalBlock(scope: !1253, file: !135, line: 678, column: 17)
!1671 = !DILocation(line: 682, column: 25, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1673, file: !135, discriminator: 1)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !135, line: 682, column: 25)
!1674 = distinct !DILexicalBlock(scope: !1667, file: !135, line: 681, column: 23)
!1675 = !DILocation(line: 682, column: 25, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1677, file: !135, discriminator: 4)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !135, line: 682, column: 25)
!1678 = !DILocation(line: 682, column: 25, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1677, file: !135, discriminator: 3)
!1680 = !DILocation(line: 682, column: 25, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !135, discriminator: 6)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !135, line: 682, column: 25)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !135, line: 682, column: 25)
!1684 = distinct !DILexicalBlock(scope: !1677, file: !135, line: 682, column: 25)
!1685 = !DILocation(line: 682, column: 25, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1683, file: !135, discriminator: 6)
!1687 = !DILocation(line: 682, column: 25, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1682, file: !135, discriminator: 7)
!1689 = !DILocation(line: 682, column: 25, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1683, file: !135, discriminator: 8)
!1691 = !DILocation(line: 682, column: 25, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1693, file: !135, discriminator: 11)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !135, line: 682, column: 25)
!1694 = distinct !DILexicalBlock(scope: !1684, file: !135, line: 682, column: 25)
!1695 = !DILocation(line: 682, column: 25, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1694, file: !135, discriminator: 11)
!1697 = !DILocation(line: 682, column: 25, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1693, file: !135, discriminator: 12)
!1699 = !DILocation(line: 682, column: 25, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1694, file: !135, discriminator: 13)
!1701 = !DILocation(line: 682, column: 25, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1703, file: !135, discriminator: 16)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !135, line: 682, column: 25)
!1704 = distinct !DILexicalBlock(scope: !1684, file: !135, line: 682, column: 25)
!1705 = !DILocation(line: 682, column: 25, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1704, file: !135, discriminator: 16)
!1707 = !DILocation(line: 682, column: 25, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1703, file: !135, discriminator: 17)
!1709 = !DILocation(line: 682, column: 25, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1704, file: !135, discriminator: 18)
!1711 = !DILocation(line: 682, column: 25, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1684, file: !135, discriminator: 20)
!1713 = !DILocation(line: 682, column: 25, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1715, file: !135, discriminator: 22)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !135, line: 682, column: 25)
!1716 = distinct !DILexicalBlock(scope: !1673, file: !135, line: 682, column: 25)
!1717 = !DILocation(line: 682, column: 25, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1716, file: !135, discriminator: 22)
!1719 = !DILocation(line: 682, column: 25, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1715, file: !135, discriminator: 23)
!1721 = !DILocation(line: 682, column: 25, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1716, file: !135, discriminator: 24)
!1723 = !DILocation(line: 683, column: 25, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1725, file: !135, discriminator: 1)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !135, line: 683, column: 25)
!1726 = distinct !DILexicalBlock(scope: !1674, file: !135, line: 683, column: 25)
!1727 = !DILocation(line: 683, column: 25, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1726, file: !135, discriminator: 1)
!1729 = !DILocation(line: 683, column: 25, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1725, file: !135, discriminator: 2)
!1731 = !DILocation(line: 683, column: 25, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1726, file: !135, discriminator: 3)
!1733 = !DILocation(line: 684, column: 25, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1735, file: !135, discriminator: 1)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !135, line: 684, column: 25)
!1736 = distinct !DILexicalBlock(scope: !1674, file: !135, line: 684, column: 25)
!1737 = !DILocation(line: 684, column: 25, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1736, file: !135, discriminator: 1)
!1739 = !DILocation(line: 684, column: 25, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1735, file: !135, discriminator: 2)
!1741 = !DILocation(line: 684, column: 25, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1736, file: !135, discriminator: 3)
!1743 = !DILocation(line: 685, column: 38, scope: !1674)
!1744 = !DILocation(line: 685, column: 33, scope: !1674)
!1745 = !DILocation(line: 686, column: 23, scope: !1674)
!1746 = !DILocation(line: 687, column: 30, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1667, file: !135, line: 687, column: 30)
!1748 = !DILocation(line: 687, column: 30, scope: !1667)
!1749 = !DILocation(line: 689, column: 25, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1751, file: !135, discriminator: 1)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !135, line: 689, column: 25)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !135, line: 689, column: 25)
!1753 = distinct !DILexicalBlock(scope: !1747, file: !135, line: 688, column: 23)
!1754 = !DILocation(line: 689, column: 25, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1752, file: !135, discriminator: 1)
!1756 = !DILocation(line: 689, column: 25, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1751, file: !135, discriminator: 2)
!1758 = !DILocation(line: 689, column: 25, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1752, file: !135, discriminator: 3)
!1760 = !DILocation(line: 691, column: 23, scope: !1753)
!1761 = !DILocation(line: 692, column: 35, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1668, file: !135, line: 692, column: 25)
!1763 = !DILocation(line: 692, column: 30, scope: !1762)
!1764 = !DILocation(line: 692, column: 25, scope: !1668)
!1765 = !DILocation(line: 694, column: 21, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1767, file: !135, discriminator: 1)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !135, line: 694, column: 21)
!1768 = distinct !DILexicalBlock(scope: !1668, file: !135, line: 694, column: 21)
!1769 = !DILocation(line: 694, column: 21, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1767, file: !135, discriminator: 2)
!1771 = !DILocation(line: 694, column: 21, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1773, file: !135, discriminator: 4)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !135, line: 694, column: 21)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !135, line: 694, column: 21)
!1775 = distinct !DILexicalBlock(scope: !1767, file: !135, line: 694, column: 21)
!1776 = !DILocation(line: 694, column: 21, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1774, file: !135, discriminator: 4)
!1778 = !DILocation(line: 694, column: 21, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1773, file: !135, discriminator: 5)
!1780 = !DILocation(line: 694, column: 21, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1774, file: !135, discriminator: 6)
!1782 = !DILocation(line: 694, column: 21, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1784, file: !135, discriminator: 9)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !135, line: 694, column: 21)
!1785 = distinct !DILexicalBlock(scope: !1775, file: !135, line: 694, column: 21)
!1786 = !DILocation(line: 694, column: 21, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1785, file: !135, discriminator: 9)
!1788 = !DILocation(line: 694, column: 21, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1784, file: !135, discriminator: 10)
!1790 = !DILocation(line: 694, column: 21, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1785, file: !135, discriminator: 11)
!1792 = !DILocation(line: 694, column: 21, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1775, file: !135, discriminator: 13)
!1794 = !DILocation(line: 695, column: 21, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1796, file: !135, discriminator: 1)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !135, line: 695, column: 21)
!1797 = distinct !DILexicalBlock(scope: !1668, file: !135, line: 695, column: 21)
!1798 = !DILocation(line: 695, column: 21, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1797, file: !135, discriminator: 1)
!1800 = !DILocation(line: 695, column: 21, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1796, file: !135, discriminator: 2)
!1802 = !DILocation(line: 695, column: 21, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1797, file: !135, discriminator: 3)
!1804 = !DILocation(line: 696, column: 25, scope: !1668)
!1805 = !DILocation(line: 678, column: 17, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1669, file: !135, discriminator: 1)
!1807 = distinct !{!1807, !1808, !1809}
!1808 = !DILocation(line: 678, column: 17, scope: !1670)
!1809 = !DILocation(line: 697, column: 19, scope: !1670)
!1810 = !DILocation(line: 704, column: 34, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1213, file: !135, line: 704, column: 11)
!1812 = !DILocation(line: 706, column: 14, scope: !1811)
!1813 = !DILocation(line: 707, column: 14, scope: !1811)
!1814 = !DILocation(line: 707, column: 35, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1811, file: !135, discriminator: 1)
!1816 = !DILocation(line: 707, column: 17, scope: !1815)
!1817 = !DILocation(line: 707, column: 53, scope: !1815)
!1818 = !DILocation(line: 707, column: 47, scope: !1815)
!1819 = !DILocation(line: 707, column: 65, scope: !1815)
!1820 = !DILocation(line: 708, column: 15, scope: !1815)
!1821 = !DILocation(line: 708, column: 11, scope: !1811)
!1822 = !DILocation(line: 704, column: 11, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1213, file: !135, discriminator: 2)
!1824 = !DILocation(line: 712, column: 7, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1826, file: !135, discriminator: 1)
!1826 = distinct !DILexicalBlock(scope: !1213, file: !135, line: 712, column: 7)
!1827 = !DILocation(line: 712, column: 7, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1829, file: !135, discriminator: 4)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !135, line: 712, column: 7)
!1830 = !DILocation(line: 712, column: 7, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1829, file: !135, discriminator: 3)
!1832 = !DILocation(line: 712, column: 7, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1834, file: !135, discriminator: 6)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !135, line: 712, column: 7)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !135, line: 712, column: 7)
!1836 = distinct !DILexicalBlock(scope: !1829, file: !135, line: 712, column: 7)
!1837 = !DILocation(line: 712, column: 7, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1835, file: !135, discriminator: 6)
!1839 = !DILocation(line: 712, column: 7, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1834, file: !135, discriminator: 7)
!1841 = !DILocation(line: 712, column: 7, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1835, file: !135, discriminator: 8)
!1843 = !DILocation(line: 712, column: 7, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1845, file: !135, discriminator: 11)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !135, line: 712, column: 7)
!1846 = distinct !DILexicalBlock(scope: !1836, file: !135, line: 712, column: 7)
!1847 = !DILocation(line: 712, column: 7, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1846, file: !135, discriminator: 11)
!1849 = !DILocation(line: 712, column: 7, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1845, file: !135, discriminator: 12)
!1851 = !DILocation(line: 712, column: 7, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1846, file: !135, discriminator: 13)
!1853 = !DILocation(line: 712, column: 7, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1855, file: !135, discriminator: 16)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !135, line: 712, column: 7)
!1856 = distinct !DILexicalBlock(scope: !1836, file: !135, line: 712, column: 7)
!1857 = !DILocation(line: 712, column: 7, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1856, file: !135, discriminator: 16)
!1859 = !DILocation(line: 712, column: 7, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1855, file: !135, discriminator: 17)
!1861 = !DILocation(line: 712, column: 7, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1856, file: !135, discriminator: 18)
!1863 = !DILocation(line: 712, column: 7, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1836, file: !135, discriminator: 20)
!1865 = !DILocation(line: 712, column: 7, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1867, file: !135, discriminator: 22)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !135, line: 712, column: 7)
!1868 = distinct !DILexicalBlock(scope: !1826, file: !135, line: 712, column: 7)
!1869 = !DILocation(line: 712, column: 7, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1868, file: !135, discriminator: 22)
!1871 = !DILocation(line: 712, column: 7, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1867, file: !135, discriminator: 23)
!1873 = !DILocation(line: 712, column: 7, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1868, file: !135, discriminator: 24)
!1875 = !DILocation(line: 715, column: 7, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1877, file: !135, discriminator: 1)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !135, line: 715, column: 7)
!1878 = distinct !DILexicalBlock(scope: !1213, file: !135, line: 715, column: 7)
!1879 = !DILocation(line: 715, column: 7, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1877, file: !135, discriminator: 2)
!1881 = !DILocation(line: 715, column: 7, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1883, file: !135, discriminator: 4)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !135, line: 715, column: 7)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !135, line: 715, column: 7)
!1885 = distinct !DILexicalBlock(scope: !1877, file: !135, line: 715, column: 7)
!1886 = !DILocation(line: 715, column: 7, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1884, file: !135, discriminator: 4)
!1888 = !DILocation(line: 715, column: 7, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1883, file: !135, discriminator: 5)
!1890 = !DILocation(line: 715, column: 7, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1884, file: !135, discriminator: 6)
!1892 = !DILocation(line: 715, column: 7, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1894, file: !135, discriminator: 9)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !135, line: 715, column: 7)
!1895 = distinct !DILexicalBlock(scope: !1885, file: !135, line: 715, column: 7)
!1896 = !DILocation(line: 715, column: 7, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1895, file: !135, discriminator: 9)
!1898 = !DILocation(line: 715, column: 7, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1894, file: !135, discriminator: 10)
!1900 = !DILocation(line: 715, column: 7, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1895, file: !135, discriminator: 11)
!1902 = !DILocation(line: 715, column: 7, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1885, file: !135, discriminator: 13)
!1904 = !DILocation(line: 716, column: 7, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1906, file: !135, discriminator: 1)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !135, line: 716, column: 7)
!1907 = distinct !DILexicalBlock(scope: !1213, file: !135, line: 716, column: 7)
!1908 = !DILocation(line: 716, column: 7, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1907, file: !135, discriminator: 1)
!1910 = !DILocation(line: 716, column: 7, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1906, file: !135, discriminator: 2)
!1912 = !DILocation(line: 716, column: 7, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1907, file: !135, discriminator: 3)
!1914 = !DILocation(line: 718, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1213, file: !135, line: 718, column: 11)
!1916 = !DILocation(line: 718, column: 11, scope: !1213)
!1917 = !DILocation(line: 720, column: 5, scope: !1214)
!1918 = !DILocation(line: 392, column: 75, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1214, file: !135, discriminator: 5)
!1920 = !DILocation(line: 392, column: 3, scope: !1919)
!1921 = distinct !{!1921, !1922, !1923}
!1922 = !DILocation(line: 392, column: 3, scope: !1215)
!1923 = !DILocation(line: 720, column: 5, scope: !1215)
!1924 = !DILocation(line: 722, column: 11, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1186, file: !135, line: 722, column: 7)
!1926 = !DILocation(line: 722, column: 16, scope: !1925)
!1927 = !DILocation(line: 730, column: 51, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1186, file: !135, line: 730, column: 7)
!1929 = !DILocation(line: 731, column: 10, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1928, file: !135, discriminator: 1)
!1931 = !DILocation(line: 733, column: 11, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !135, line: 733, column: 11)
!1933 = distinct !DILexicalBlock(scope: !1928, file: !135, line: 732, column: 5)
!1934 = !DILocation(line: 733, column: 11, scope: !1933)
!1935 = !DILocation(line: 734, column: 16, scope: !1932)
!1936 = !DILocation(line: 734, column: 9, scope: !1932)
!1937 = !DILocation(line: 738, column: 18, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1932, file: !135, line: 738, column: 16)
!1939 = !DILocation(line: 738, column: 32, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1938, file: !135, discriminator: 1)
!1941 = !DILocation(line: 738, column: 29, scope: !1938)
!1942 = !DILocation(line: 747, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1186, file: !135, line: 747, column: 7)
!1944 = !DILocation(line: 747, column: 20, scope: !1943)
!1945 = !DILocation(line: 748, column: 12, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1947, file: !135, discriminator: 1)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !135, line: 748, column: 5)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !135, line: 748, column: 5)
!1949 = !DILocation(line: 748, column: 5, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1948, file: !135, discriminator: 1)
!1951 = !DILocation(line: 749, column: 7, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1953, file: !135, discriminator: 1)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !135, line: 749, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1947, file: !135, line: 749, column: 7)
!1955 = !DILocation(line: 749, column: 7, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1954, file: !135, discriminator: 1)
!1957 = !DILocation(line: 749, column: 7, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1953, file: !135, discriminator: 2)
!1959 = !DILocation(line: 749, column: 7, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1954, file: !135, discriminator: 3)
!1961 = !DILocation(line: 748, column: 39, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1947, file: !135, discriminator: 2)
!1963 = distinct !{!1963, !1964, !1965}
!1964 = !DILocation(line: 748, column: 5, scope: !1948)
!1965 = !DILocation(line: 749, column: 7, scope: !1948)
!1966 = !DILocation(line: 751, column: 11, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1186, file: !135, line: 751, column: 7)
!1968 = !DILocation(line: 751, column: 7, scope: !1186)
!1969 = !DILocation(line: 752, column: 5, scope: !1967)
!1970 = !DILocation(line: 752, column: 17, scope: !1967)
!1971 = !DILocation(line: 758, column: 21, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1186, file: !135, line: 758, column: 7)
!1973 = !DILocation(line: 758, column: 54, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1972, file: !135, discriminator: 1)
!1975 = !DILocation(line: 758, column: 51, scope: !1972)
!1976 = !DILocation(line: 762, column: 42, scope: !1186)
!1977 = !DILocation(line: 760, column: 10, scope: !1186)
!1978 = !DILocation(line: 760, column: 3, scope: !1186)
!1979 = !DILocation(line: 764, column: 1, scope: !1186)
!1980 = distinct !DISubprogram(name: "gettext_quote", scope: !135, file: !135, line: 199, type: !1981, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!17, !17, !96}
!1983 = !{!1984, !1985, !1986, !1987}
!1984 = !DILocalVariable(name: "msgid", arg: 1, scope: !1980, file: !135, line: 199, type: !17)
!1985 = !DILocalVariable(name: "s", arg: 2, scope: !1980, file: !135, line: 199, type: !96)
!1986 = !DILocalVariable(name: "translation", scope: !1980, file: !135, line: 201, type: !17)
!1987 = !DILocalVariable(name: "locale_code", scope: !1980, file: !135, line: 202, type: !17)
!1988 = !DILocation(line: 199, column: 28, scope: !1980)
!1989 = !DILocation(line: 199, column: 54, scope: !1980)
!1990 = !DILocation(line: 201, column: 29, scope: !1980)
!1991 = !DILocation(line: 201, column: 15, scope: !1980)
!1992 = !DILocation(line: 204, column: 19, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1980, file: !135, line: 204, column: 7)
!1994 = !DILocation(line: 204, column: 7, scope: !1980)
!1995 = !DILocation(line: 225, column: 17, scope: !1980)
!1996 = !DILocation(line: 202, column: 15, scope: !1980)
!1997 = !DILocalVariable(name: "s2", arg: 2, scope: !1998, file: !1999, line: 160, type: !17)
!1998 = distinct !DISubprogram(name: "strcaseeq0", scope: !1999, file: !1999, line: 160, type: !2000, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2002)
!1999 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2002 = !{!2003, !1997, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!2003 = !DILocalVariable(name: "s1", arg: 1, scope: !1998, file: !1999, line: 160, type: !17)
!2004 = !DILocalVariable(name: "s20", arg: 3, scope: !1998, file: !1999, line: 160, type: !7)
!2005 = !DILocalVariable(name: "s21", arg: 4, scope: !1998, file: !1999, line: 160, type: !7)
!2006 = !DILocalVariable(name: "s22", arg: 5, scope: !1998, file: !1999, line: 160, type: !7)
!2007 = !DILocalVariable(name: "s23", arg: 6, scope: !1998, file: !1999, line: 160, type: !7)
!2008 = !DILocalVariable(name: "s24", arg: 7, scope: !1998, file: !1999, line: 160, type: !7)
!2009 = !DILocalVariable(name: "s25", arg: 8, scope: !1998, file: !1999, line: 160, type: !7)
!2010 = !DILocalVariable(name: "s26", arg: 9, scope: !1998, file: !1999, line: 160, type: !7)
!2011 = !DILocalVariable(name: "s27", arg: 10, scope: !1998, file: !1999, line: 160, type: !7)
!2012 = !DILocalVariable(name: "s28", arg: 11, scope: !1998, file: !1999, line: 160, type: !7)
!2013 = !DILocation(line: 160, column: 41, scope: !1998, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 226, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1980, file: !135, line: 226, column: 7)
!2016 = !DILocation(line: 160, column: 120, scope: !1998, inlinedAt: !2014)
!2017 = !DILocation(line: 160, column: 130, scope: !1998, inlinedAt: !2014)
!2018 = !DILocation(line: 162, column: 7, scope: !2019, inlinedAt: !2014)
!2019 = !DILexicalBlockFile(scope: !2020, file: !1999, discriminator: 1)
!2020 = distinct !DILexicalBlock(scope: !1998, file: !1999, line: 162, column: 7)
!2021 = !DILocalVariable(name: "s2", arg: 2, scope: !2022, file: !1999, line: 146, type: !17)
!2022 = distinct !DISubprogram(name: "strcaseeq1", scope: !1999, file: !1999, line: 146, type: !2023, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!2025 = !{!2026, !2021, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034}
!2026 = !DILocalVariable(name: "s1", arg: 1, scope: !2022, file: !1999, line: 146, type: !17)
!2027 = !DILocalVariable(name: "s21", arg: 3, scope: !2022, file: !1999, line: 146, type: !7)
!2028 = !DILocalVariable(name: "s22", arg: 4, scope: !2022, file: !1999, line: 146, type: !7)
!2029 = !DILocalVariable(name: "s23", arg: 5, scope: !2022, file: !1999, line: 146, type: !7)
!2030 = !DILocalVariable(name: "s24", arg: 6, scope: !2022, file: !1999, line: 146, type: !7)
!2031 = !DILocalVariable(name: "s25", arg: 7, scope: !2022, file: !1999, line: 146, type: !7)
!2032 = !DILocalVariable(name: "s26", arg: 8, scope: !2022, file: !1999, line: 146, type: !7)
!2033 = !DILocalVariable(name: "s27", arg: 9, scope: !2022, file: !1999, line: 146, type: !7)
!2034 = !DILocalVariable(name: "s28", arg: 10, scope: !2022, file: !1999, line: 146, type: !7)
!2035 = !DILocation(line: 146, column: 41, scope: !2022, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 167, column: 16, scope: !2037, inlinedAt: !2014)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !1999, line: 164, column: 11)
!2038 = distinct !DILexicalBlock(scope: !2020, file: !1999, line: 163, column: 5)
!2039 = !DILocation(line: 146, column: 110, scope: !2022, inlinedAt: !2036)
!2040 = !DILocation(line: 146, column: 120, scope: !2022, inlinedAt: !2036)
!2041 = !DILocation(line: 148, column: 7, scope: !2042, inlinedAt: !2036)
!2042 = !DILexicalBlockFile(scope: !2043, file: !1999, discriminator: 1)
!2043 = distinct !DILexicalBlock(scope: !2022, file: !1999, line: 148, column: 7)
!2044 = !DILocalVariable(name: "s2", arg: 2, scope: !2045, file: !1999, line: 132, type: !17)
!2045 = distinct !DISubprogram(name: "strcaseeq2", scope: !1999, file: !1999, line: 132, type: !2046, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!2048 = !{!2049, !2044, !2050, !2051, !2052, !2053, !2054, !2055, !2056}
!2049 = !DILocalVariable(name: "s1", arg: 1, scope: !2045, file: !1999, line: 132, type: !17)
!2050 = !DILocalVariable(name: "s22", arg: 3, scope: !2045, file: !1999, line: 132, type: !7)
!2051 = !DILocalVariable(name: "s23", arg: 4, scope: !2045, file: !1999, line: 132, type: !7)
!2052 = !DILocalVariable(name: "s24", arg: 5, scope: !2045, file: !1999, line: 132, type: !7)
!2053 = !DILocalVariable(name: "s25", arg: 6, scope: !2045, file: !1999, line: 132, type: !7)
!2054 = !DILocalVariable(name: "s26", arg: 7, scope: !2045, file: !1999, line: 132, type: !7)
!2055 = !DILocalVariable(name: "s27", arg: 8, scope: !2045, file: !1999, line: 132, type: !7)
!2056 = !DILocalVariable(name: "s28", arg: 9, scope: !2045, file: !1999, line: 132, type: !7)
!2057 = !DILocation(line: 132, column: 41, scope: !2045, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 153, column: 16, scope: !2059, inlinedAt: !2036)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !1999, line: 150, column: 11)
!2060 = distinct !DILexicalBlock(scope: !2043, file: !1999, line: 149, column: 5)
!2061 = !DILocation(line: 132, column: 100, scope: !2045, inlinedAt: !2058)
!2062 = !DILocation(line: 132, column: 110, scope: !2045, inlinedAt: !2058)
!2063 = !DILocation(line: 134, column: 7, scope: !2064, inlinedAt: !2058)
!2064 = !DILexicalBlockFile(scope: !2065, file: !1999, discriminator: 1)
!2065 = distinct !DILexicalBlock(scope: !2045, file: !1999, line: 134, column: 7)
!2066 = !DILocalVariable(name: "s2", arg: 2, scope: !2067, file: !1999, line: 118, type: !17)
!2067 = distinct !DISubprogram(name: "strcaseeq3", scope: !1999, file: !1999, line: 118, type: !2068, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!47, !17, !17, !7, !7, !7, !7, !7, !7}
!2070 = !{!2071, !2066, !2072, !2073, !2074, !2075, !2076, !2077}
!2071 = !DILocalVariable(name: "s1", arg: 1, scope: !2067, file: !1999, line: 118, type: !17)
!2072 = !DILocalVariable(name: "s23", arg: 3, scope: !2067, file: !1999, line: 118, type: !7)
!2073 = !DILocalVariable(name: "s24", arg: 4, scope: !2067, file: !1999, line: 118, type: !7)
!2074 = !DILocalVariable(name: "s25", arg: 5, scope: !2067, file: !1999, line: 118, type: !7)
!2075 = !DILocalVariable(name: "s26", arg: 6, scope: !2067, file: !1999, line: 118, type: !7)
!2076 = !DILocalVariable(name: "s27", arg: 7, scope: !2067, file: !1999, line: 118, type: !7)
!2077 = !DILocalVariable(name: "s28", arg: 8, scope: !2067, file: !1999, line: 118, type: !7)
!2078 = !DILocation(line: 118, column: 41, scope: !2067, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 139, column: 16, scope: !2080, inlinedAt: !2058)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !1999, line: 136, column: 11)
!2081 = distinct !DILexicalBlock(scope: !2065, file: !1999, line: 135, column: 5)
!2082 = !DILocation(line: 118, column: 90, scope: !2067, inlinedAt: !2079)
!2083 = !DILocation(line: 118, column: 100, scope: !2067, inlinedAt: !2079)
!2084 = !DILocation(line: 120, column: 7, scope: !2085, inlinedAt: !2079)
!2085 = !DILexicalBlockFile(scope: !2086, file: !1999, discriminator: 2)
!2086 = distinct !DILexicalBlock(scope: !2067, file: !1999, line: 120, column: 7)
!2087 = !DILocation(line: 120, column: 7, scope: !2088, inlinedAt: !2079)
!2088 = !DILexicalBlockFile(scope: !2067, file: !1999, discriminator: 2)
!2089 = !DILocalVariable(name: "s2", arg: 2, scope: !2090, file: !1999, line: 104, type: !17)
!2090 = distinct !DISubprogram(name: "strcaseeq4", scope: !1999, file: !1999, line: 104, type: !2091, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!47, !17, !17, !7, !7, !7, !7, !7}
!2093 = !{!2094, !2089, !2095, !2096, !2097, !2098, !2099}
!2094 = !DILocalVariable(name: "s1", arg: 1, scope: !2090, file: !1999, line: 104, type: !17)
!2095 = !DILocalVariable(name: "s24", arg: 3, scope: !2090, file: !1999, line: 104, type: !7)
!2096 = !DILocalVariable(name: "s25", arg: 4, scope: !2090, file: !1999, line: 104, type: !7)
!2097 = !DILocalVariable(name: "s26", arg: 5, scope: !2090, file: !1999, line: 104, type: !7)
!2098 = !DILocalVariable(name: "s27", arg: 6, scope: !2090, file: !1999, line: 104, type: !7)
!2099 = !DILocalVariable(name: "s28", arg: 7, scope: !2090, file: !1999, line: 104, type: !7)
!2100 = !DILocation(line: 104, column: 41, scope: !2090, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 125, column: 16, scope: !2102, inlinedAt: !2079)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !1999, line: 122, column: 11)
!2103 = distinct !DILexicalBlock(scope: !2086, file: !1999, line: 121, column: 5)
!2104 = !DILocation(line: 104, column: 80, scope: !2090, inlinedAt: !2101)
!2105 = !DILocation(line: 104, column: 90, scope: !2090, inlinedAt: !2101)
!2106 = !DILocation(line: 106, column: 7, scope: !2107, inlinedAt: !2101)
!2107 = !DILexicalBlockFile(scope: !2108, file: !1999, discriminator: 2)
!2108 = distinct !DILexicalBlock(scope: !2090, file: !1999, line: 106, column: 7)
!2109 = !DILocation(line: 106, column: 7, scope: !2110, inlinedAt: !2101)
!2110 = !DILexicalBlockFile(scope: !2090, file: !1999, discriminator: 2)
!2111 = !DILocalVariable(name: "s2", arg: 2, scope: !2112, file: !1999, line: 90, type: !17)
!2112 = distinct !DISubprogram(name: "strcaseeq5", scope: !1999, file: !1999, line: 90, type: !2113, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!47, !17, !17, !7, !7, !7, !7}
!2115 = !{!2116, !2111, !2117, !2118, !2119, !2120}
!2116 = !DILocalVariable(name: "s1", arg: 1, scope: !2112, file: !1999, line: 90, type: !17)
!2117 = !DILocalVariable(name: "s25", arg: 3, scope: !2112, file: !1999, line: 90, type: !7)
!2118 = !DILocalVariable(name: "s26", arg: 4, scope: !2112, file: !1999, line: 90, type: !7)
!2119 = !DILocalVariable(name: "s27", arg: 5, scope: !2112, file: !1999, line: 90, type: !7)
!2120 = !DILocalVariable(name: "s28", arg: 6, scope: !2112, file: !1999, line: 90, type: !7)
!2121 = !DILocation(line: 90, column: 41, scope: !2112, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 111, column: 16, scope: !2123, inlinedAt: !2101)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !1999, line: 108, column: 11)
!2124 = distinct !DILexicalBlock(scope: !2108, file: !1999, line: 107, column: 5)
!2125 = !DILocation(line: 90, column: 70, scope: !2112, inlinedAt: !2122)
!2126 = !DILocation(line: 90, column: 80, scope: !2112, inlinedAt: !2122)
!2127 = !DILocation(line: 92, column: 7, scope: !2128, inlinedAt: !2122)
!2128 = !DILexicalBlockFile(scope: !2129, file: !1999, discriminator: 2)
!2129 = distinct !DILexicalBlock(scope: !2112, file: !1999, line: 92, column: 7)
!2130 = !DILocation(line: 92, column: 7, scope: !2131, inlinedAt: !2122)
!2131 = !DILexicalBlockFile(scope: !2112, file: !1999, discriminator: 2)
!2132 = !DILocation(line: 227, column: 12, scope: !2015)
!2133 = !DILocation(line: 227, column: 21, scope: !2015)
!2134 = !DILocation(line: 227, column: 5, scope: !2015)
!2135 = !DILocation(line: 146, column: 41, scope: !2022, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 167, column: 16, scope: !2037, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 228, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1980, file: !135, line: 228, column: 7)
!2139 = !DILocation(line: 146, column: 110, scope: !2022, inlinedAt: !2136)
!2140 = !DILocation(line: 146, column: 120, scope: !2022, inlinedAt: !2136)
!2141 = !DILocation(line: 148, column: 7, scope: !2042, inlinedAt: !2136)
!2142 = !DILocation(line: 132, column: 41, scope: !2045, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 153, column: 16, scope: !2059, inlinedAt: !2136)
!2144 = !DILocation(line: 132, column: 100, scope: !2045, inlinedAt: !2143)
!2145 = !DILocation(line: 132, column: 110, scope: !2045, inlinedAt: !2143)
!2146 = !DILocation(line: 134, column: 7, scope: !2147, inlinedAt: !2143)
!2147 = !DILexicalBlockFile(scope: !2065, file: !1999, discriminator: 2)
!2148 = !DILocation(line: 134, column: 7, scope: !2149, inlinedAt: !2143)
!2149 = !DILexicalBlockFile(scope: !2045, file: !1999, discriminator: 2)
!2150 = !DILocation(line: 118, column: 41, scope: !2067, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 139, column: 16, scope: !2080, inlinedAt: !2143)
!2152 = !DILocation(line: 118, column: 90, scope: !2067, inlinedAt: !2151)
!2153 = !DILocation(line: 118, column: 100, scope: !2067, inlinedAt: !2151)
!2154 = !DILocation(line: 120, column: 7, scope: !2085, inlinedAt: !2151)
!2155 = !DILocation(line: 120, column: 7, scope: !2088, inlinedAt: !2151)
!2156 = !DILocation(line: 104, column: 41, scope: !2090, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 125, column: 16, scope: !2102, inlinedAt: !2151)
!2158 = !DILocation(line: 104, column: 80, scope: !2090, inlinedAt: !2157)
!2159 = !DILocation(line: 104, column: 90, scope: !2090, inlinedAt: !2157)
!2160 = !DILocation(line: 106, column: 7, scope: !2107, inlinedAt: !2157)
!2161 = !DILocation(line: 106, column: 7, scope: !2110, inlinedAt: !2157)
!2162 = !DILocation(line: 90, column: 41, scope: !2112, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 111, column: 16, scope: !2123, inlinedAt: !2157)
!2164 = !DILocation(line: 90, column: 70, scope: !2112, inlinedAt: !2163)
!2165 = !DILocation(line: 90, column: 80, scope: !2112, inlinedAt: !2163)
!2166 = !DILocation(line: 92, column: 7, scope: !2128, inlinedAt: !2163)
!2167 = !DILocation(line: 92, column: 7, scope: !2131, inlinedAt: !2163)
!2168 = !DILocalVariable(name: "s2", arg: 2, scope: !2169, file: !1999, line: 76, type: !17)
!2169 = distinct !DISubprogram(name: "strcaseeq6", scope: !1999, file: !1999, line: 76, type: !2170, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!47, !17, !17, !7, !7, !7}
!2172 = !{!2173, !2168, !2174, !2175, !2176}
!2173 = !DILocalVariable(name: "s1", arg: 1, scope: !2169, file: !1999, line: 76, type: !17)
!2174 = !DILocalVariable(name: "s26", arg: 3, scope: !2169, file: !1999, line: 76, type: !7)
!2175 = !DILocalVariable(name: "s27", arg: 4, scope: !2169, file: !1999, line: 76, type: !7)
!2176 = !DILocalVariable(name: "s28", arg: 5, scope: !2169, file: !1999, line: 76, type: !7)
!2177 = !DILocation(line: 76, column: 41, scope: !2169, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 97, column: 16, scope: !2179, inlinedAt: !2163)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !1999, line: 94, column: 11)
!2180 = distinct !DILexicalBlock(scope: !2129, file: !1999, line: 93, column: 5)
!2181 = !DILocation(line: 76, column: 60, scope: !2169, inlinedAt: !2178)
!2182 = !DILocation(line: 76, column: 70, scope: !2169, inlinedAt: !2178)
!2183 = !DILocation(line: 78, column: 7, scope: !2184, inlinedAt: !2178)
!2184 = !DILexicalBlockFile(scope: !2185, file: !1999, discriminator: 2)
!2185 = distinct !DILexicalBlock(scope: !2169, file: !1999, line: 78, column: 7)
!2186 = !DILocation(line: 78, column: 7, scope: !2187, inlinedAt: !2178)
!2187 = !DILexicalBlockFile(scope: !2169, file: !1999, discriminator: 2)
!2188 = !DILocalVariable(name: "s2", arg: 2, scope: !2189, file: !1999, line: 62, type: !17)
!2189 = distinct !DISubprogram(name: "strcaseeq7", scope: !1999, file: !1999, line: 62, type: !2190, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!47, !17, !17, !7, !7}
!2192 = !{!2193, !2188, !2194, !2195}
!2193 = !DILocalVariable(name: "s1", arg: 1, scope: !2189, file: !1999, line: 62, type: !17)
!2194 = !DILocalVariable(name: "s27", arg: 3, scope: !2189, file: !1999, line: 62, type: !7)
!2195 = !DILocalVariable(name: "s28", arg: 4, scope: !2189, file: !1999, line: 62, type: !7)
!2196 = !DILocation(line: 62, column: 41, scope: !2189, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 83, column: 16, scope: !2198, inlinedAt: !2178)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !1999, line: 80, column: 11)
!2199 = distinct !DILexicalBlock(scope: !2185, file: !1999, line: 79, column: 5)
!2200 = !DILocation(line: 62, column: 50, scope: !2189, inlinedAt: !2197)
!2201 = !DILocation(line: 62, column: 60, scope: !2189, inlinedAt: !2197)
!2202 = !DILocation(line: 64, column: 7, scope: !2203, inlinedAt: !2197)
!2203 = !DILexicalBlockFile(scope: !2204, file: !1999, discriminator: 2)
!2204 = distinct !DILexicalBlock(scope: !2189, file: !1999, line: 64, column: 7)
!2205 = !DILocation(line: 228, column: 7, scope: !1980)
!2206 = !DILocation(line: 229, column: 12, scope: !2138)
!2207 = !DILocation(line: 229, column: 21, scope: !2138)
!2208 = !DILocation(line: 229, column: 5, scope: !2138)
!2209 = !DILocation(line: 231, column: 13, scope: !1980)
!2210 = !DILocation(line: 231, column: 11, scope: !1980)
!2211 = !DILocation(line: 231, column: 3, scope: !1980)
!2212 = !DILocation(line: 232, column: 1, scope: !1980)
!2213 = distinct !DISubprogram(name: "quotearg_alloc", scope: !135, file: !135, line: 791, type: !2214, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!6, !17, !9, !1054}
!2216 = !{!2217, !2218, !2219}
!2217 = !DILocalVariable(name: "arg", arg: 1, scope: !2213, file: !135, line: 791, type: !17)
!2218 = !DILocalVariable(name: "argsize", arg: 2, scope: !2213, file: !135, line: 791, type: !9)
!2219 = !DILocalVariable(name: "o", arg: 3, scope: !2213, file: !135, line: 792, type: !1054)
!2220 = !DILocation(line: 791, column: 29, scope: !2213)
!2221 = !DILocation(line: 791, column: 41, scope: !2213)
!2222 = !DILocation(line: 792, column: 47, scope: !2213)
!2223 = !DILocalVariable(name: "arg", arg: 1, scope: !2224, file: !135, line: 804, type: !17)
!2224 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !135, file: !135, line: 804, type: !2225, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!6, !17, !9, !555, !1054}
!2227 = !{!2223, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235}
!2228 = !DILocalVariable(name: "argsize", arg: 2, scope: !2224, file: !135, line: 804, type: !9)
!2229 = !DILocalVariable(name: "size", arg: 3, scope: !2224, file: !135, line: 804, type: !555)
!2230 = !DILocalVariable(name: "o", arg: 4, scope: !2224, file: !135, line: 805, type: !1054)
!2231 = !DILocalVariable(name: "p", scope: !2224, file: !135, line: 807, type: !1054)
!2232 = !DILocalVariable(name: "e", scope: !2224, file: !135, line: 808, type: !47)
!2233 = !DILocalVariable(name: "flags", scope: !2224, file: !135, line: 810, type: !47)
!2234 = !DILocalVariable(name: "bufsize", scope: !2224, file: !135, line: 811, type: !9)
!2235 = !DILocalVariable(name: "buf", scope: !2224, file: !135, line: 815, type: !6)
!2236 = !DILocation(line: 804, column: 33, scope: !2224, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 794, column: 10, scope: !2213)
!2238 = !DILocation(line: 804, column: 45, scope: !2224, inlinedAt: !2237)
!2239 = !DILocation(line: 804, column: 62, scope: !2224, inlinedAt: !2237)
!2240 = !DILocation(line: 805, column: 51, scope: !2224, inlinedAt: !2237)
!2241 = !DILocation(line: 807, column: 37, scope: !2224, inlinedAt: !2237)
!2242 = !DILocation(line: 807, column: 33, scope: !2224, inlinedAt: !2237)
!2243 = !DILocation(line: 808, column: 11, scope: !2224, inlinedAt: !2237)
!2244 = !DILocation(line: 808, column: 7, scope: !2224, inlinedAt: !2237)
!2245 = !DILocation(line: 810, column: 18, scope: !2224, inlinedAt: !2237)
!2246 = !DILocation(line: 810, column: 24, scope: !2224, inlinedAt: !2237)
!2247 = !DILocation(line: 810, column: 7, scope: !2224, inlinedAt: !2237)
!2248 = !DILocation(line: 811, column: 69, scope: !2224, inlinedAt: !2237)
!2249 = !DILocation(line: 812, column: 53, scope: !2224, inlinedAt: !2237)
!2250 = !DILocation(line: 813, column: 49, scope: !2224, inlinedAt: !2237)
!2251 = !DILocation(line: 814, column: 49, scope: !2224, inlinedAt: !2237)
!2252 = !DILocation(line: 811, column: 20, scope: !2224, inlinedAt: !2237)
!2253 = !DILocation(line: 814, column: 62, scope: !2224, inlinedAt: !2237)
!2254 = !DILocation(line: 811, column: 10, scope: !2224, inlinedAt: !2237)
!2255 = !DILocalVariable(name: "n", arg: 1, scope: !2256, file: !551, line: 220, type: !9)
!2256 = distinct !DISubprogram(name: "xcharalloc", scope: !551, file: !551, line: 220, type: !2257, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!6, !9}
!2259 = !{!2255}
!2260 = !DILocation(line: 220, column: 20, scope: !2256, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 815, column: 15, scope: !2224, inlinedAt: !2237)
!2262 = !DILocation(line: 222, column: 10, scope: !2256, inlinedAt: !2261)
!2263 = !DILocation(line: 815, column: 9, scope: !2224, inlinedAt: !2237)
!2264 = !DILocation(line: 816, column: 60, scope: !2224, inlinedAt: !2237)
!2265 = !DILocation(line: 818, column: 32, scope: !2224, inlinedAt: !2237)
!2266 = !DILocation(line: 818, column: 47, scope: !2224, inlinedAt: !2237)
!2267 = !DILocation(line: 816, column: 3, scope: !2224, inlinedAt: !2237)
!2268 = !DILocation(line: 819, column: 9, scope: !2224, inlinedAt: !2237)
!2269 = !DILocation(line: 794, column: 3, scope: !2213)
!2270 = !DILocation(line: 804, column: 33, scope: !2224)
!2271 = !DILocation(line: 804, column: 45, scope: !2224)
!2272 = !DILocation(line: 804, column: 62, scope: !2224)
!2273 = !DILocation(line: 805, column: 51, scope: !2224)
!2274 = !DILocation(line: 807, column: 37, scope: !2224)
!2275 = !DILocation(line: 807, column: 33, scope: !2224)
!2276 = !DILocation(line: 808, column: 11, scope: !2224)
!2277 = !DILocation(line: 808, column: 7, scope: !2224)
!2278 = !DILocation(line: 810, column: 18, scope: !2224)
!2279 = !DILocation(line: 810, column: 27, scope: !2224)
!2280 = !DILocation(line: 810, column: 24, scope: !2224)
!2281 = !DILocation(line: 810, column: 7, scope: !2224)
!2282 = !DILocation(line: 811, column: 69, scope: !2224)
!2283 = !DILocation(line: 812, column: 53, scope: !2224)
!2284 = !DILocation(line: 813, column: 49, scope: !2224)
!2285 = !DILocation(line: 814, column: 49, scope: !2224)
!2286 = !DILocation(line: 811, column: 20, scope: !2224)
!2287 = !DILocation(line: 814, column: 62, scope: !2224)
!2288 = !DILocation(line: 811, column: 10, scope: !2224)
!2289 = !DILocation(line: 220, column: 20, scope: !2256, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 815, column: 15, scope: !2224)
!2291 = !DILocation(line: 222, column: 10, scope: !2256, inlinedAt: !2290)
!2292 = !DILocation(line: 815, column: 9, scope: !2224)
!2293 = !DILocation(line: 816, column: 60, scope: !2224)
!2294 = !DILocation(line: 818, column: 32, scope: !2224)
!2295 = !DILocation(line: 818, column: 47, scope: !2224)
!2296 = !DILocation(line: 816, column: 3, scope: !2224)
!2297 = !DILocation(line: 819, column: 9, scope: !2224)
!2298 = !DILocation(line: 820, column: 7, scope: !2224)
!2299 = !DILocation(line: 821, column: 11, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2224, file: !135, line: 820, column: 7)
!2301 = !{!819, !819, i64 0}
!2302 = !DILocation(line: 821, column: 5, scope: !2300)
!2303 = !DILocation(line: 822, column: 3, scope: !2224)
!2304 = distinct !DISubprogram(name: "quotearg_free", scope: !135, file: !135, line: 840, type: !618, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2305)
!2305 = !{!2306, !2307}
!2306 = !DILocalVariable(name: "sv", scope: !2304, file: !135, line: 842, type: !162)
!2307 = !DILocalVariable(name: "i", scope: !2304, file: !135, line: 843, type: !47)
!2308 = !DILocation(line: 842, column: 24, scope: !2304)
!2309 = !DILocation(line: 842, column: 19, scope: !2304)
!2310 = !DILocation(line: 843, column: 7, scope: !2304)
!2311 = !DILocation(line: 844, column: 19, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2313, file: !135, discriminator: 1)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !135, line: 844, column: 3)
!2314 = distinct !DILexicalBlock(scope: !2304, file: !135, line: 844, column: 3)
!2315 = !DILocation(line: 844, column: 17, scope: !2312)
!2316 = !DILocation(line: 844, column: 3, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2314, file: !135, discriminator: 1)
!2318 = !DILocation(line: 845, column: 17, scope: !2313)
!2319 = !{!2320, !603, i64 8}
!2320 = !{!"slotvec", !819, i64 0, !603, i64 8}
!2321 = !DILocation(line: 845, column: 5, scope: !2313)
!2322 = !DILocation(line: 844, column: 28, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2313, file: !135, discriminator: 2)
!2324 = distinct !{!2324, !2325, !2326}
!2325 = !DILocation(line: 844, column: 3, scope: !2314)
!2326 = !DILocation(line: 845, column: 20, scope: !2314)
!2327 = !DILocation(line: 846, column: 13, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2304, file: !135, line: 846, column: 7)
!2329 = !DILocation(line: 846, column: 17, scope: !2328)
!2330 = !DILocation(line: 846, column: 7, scope: !2304)
!2331 = !DILocation(line: 848, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2328, file: !135, line: 847, column: 5)
!2333 = !DILocation(line: 849, column: 21, scope: !2332)
!2334 = !{!2320, !819, i64 0}
!2335 = !DILocation(line: 850, column: 20, scope: !2332)
!2336 = !DILocation(line: 851, column: 5, scope: !2332)
!2337 = !DILocation(line: 852, column: 10, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2304, file: !135, line: 852, column: 7)
!2339 = !DILocation(line: 852, column: 7, scope: !2304)
!2340 = !DILocation(line: 854, column: 13, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !135, line: 853, column: 5)
!2342 = !DILocation(line: 854, column: 7, scope: !2341)
!2343 = !DILocation(line: 855, column: 15, scope: !2341)
!2344 = !DILocation(line: 856, column: 5, scope: !2341)
!2345 = !DILocation(line: 857, column: 10, scope: !2304)
!2346 = !DILocation(line: 858, column: 1, scope: !2304)
!2347 = distinct !DISubprogram(name: "quotearg_n", scope: !135, file: !135, line: 922, type: !2348, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!6, !47, !17}
!2350 = !{!2351, !2352}
!2351 = !DILocalVariable(name: "n", arg: 1, scope: !2347, file: !135, line: 922, type: !47)
!2352 = !DILocalVariable(name: "arg", arg: 2, scope: !2347, file: !135, line: 922, type: !17)
!2353 = !DILocation(line: 922, column: 17, scope: !2347)
!2354 = !DILocation(line: 922, column: 32, scope: !2347)
!2355 = !DILocation(line: 924, column: 10, scope: !2347)
!2356 = !DILocation(line: 924, column: 3, scope: !2347)
!2357 = distinct !DISubprogram(name: "quotearg_n_options", scope: !135, file: !135, line: 869, type: !2358, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!6, !47, !17, !9, !1054}
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2366, !2367, !2370, !2372, !2373, !2374}
!2361 = !DILocalVariable(name: "n", arg: 1, scope: !2357, file: !135, line: 869, type: !47)
!2362 = !DILocalVariable(name: "arg", arg: 2, scope: !2357, file: !135, line: 869, type: !17)
!2363 = !DILocalVariable(name: "argsize", arg: 3, scope: !2357, file: !135, line: 869, type: !9)
!2364 = !DILocalVariable(name: "options", arg: 4, scope: !2357, file: !135, line: 870, type: !1054)
!2365 = !DILocalVariable(name: "e", scope: !2357, file: !135, line: 872, type: !47)
!2366 = !DILocalVariable(name: "sv", scope: !2357, file: !135, line: 874, type: !162)
!2367 = !DILocalVariable(name: "preallocated", scope: !2368, file: !135, line: 881, type: !76)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !135, line: 880, column: 5)
!2369 = distinct !DILexicalBlock(scope: !2357, file: !135, line: 879, column: 7)
!2370 = !DILocalVariable(name: "size", scope: !2371, file: !135, line: 894, type: !9)
!2371 = distinct !DILexicalBlock(scope: !2357, file: !135, line: 893, column: 3)
!2372 = !DILocalVariable(name: "val", scope: !2371, file: !135, line: 895, type: !6)
!2373 = !DILocalVariable(name: "flags", scope: !2371, file: !135, line: 897, type: !47)
!2374 = !DILocalVariable(name: "qsize", scope: !2371, file: !135, line: 898, type: !9)
!2375 = !DILocation(line: 869, column: 25, scope: !2357)
!2376 = !DILocation(line: 869, column: 40, scope: !2357)
!2377 = !DILocation(line: 869, column: 52, scope: !2357)
!2378 = !DILocation(line: 870, column: 51, scope: !2357)
!2379 = !DILocation(line: 872, column: 11, scope: !2357)
!2380 = !DILocation(line: 872, column: 7, scope: !2357)
!2381 = !DILocation(line: 874, column: 24, scope: !2357)
!2382 = !DILocation(line: 874, column: 19, scope: !2357)
!2383 = !DILocation(line: 876, column: 9, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2357, file: !135, line: 876, column: 7)
!2385 = !DILocation(line: 876, column: 7, scope: !2357)
!2386 = !DILocation(line: 877, column: 5, scope: !2384)
!2387 = !DILocation(line: 879, column: 7, scope: !2369)
!2388 = !DILocation(line: 879, column: 14, scope: !2369)
!2389 = !DILocation(line: 879, column: 7, scope: !2357)
!2390 = !DILocation(line: 881, column: 31, scope: !2368)
!2391 = !DILocation(line: 883, column: 67, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2368, file: !135, line: 883, column: 11)
!2393 = !DILocation(line: 883, column: 11, scope: !2368)
!2394 = !DILocation(line: 884, column: 9, scope: !2392)
!2395 = !DILocation(line: 886, column: 32, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2368, file: !135, discriminator: 3)
!2397 = !DILocation(line: 886, column: 61, scope: !2396)
!2398 = !DILocation(line: 886, column: 58, scope: !2396)
!2399 = !DILocation(line: 886, column: 66, scope: !2396)
!2400 = !DILocation(line: 886, column: 22, scope: !2396)
!2401 = !DILocation(line: 886, column: 15, scope: !2396)
!2402 = !DILocation(line: 887, column: 11, scope: !2368)
!2403 = !DILocation(line: 888, column: 15, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2368, file: !135, line: 887, column: 11)
!2405 = !{i64 0, i64 8, !2301, i64 8, i64 8, !602}
!2406 = !DILocation(line: 888, column: 9, scope: !2404)
!2407 = !DILocation(line: 889, column: 20, scope: !2368)
!2408 = !DILocation(line: 889, column: 18, scope: !2368)
!2409 = !DILocation(line: 889, column: 7, scope: !2368)
!2410 = !DILocation(line: 889, column: 38, scope: !2368)
!2411 = !DILocation(line: 889, column: 31, scope: !2368)
!2412 = !DILocation(line: 889, column: 48, scope: !2368)
!2413 = !DILocation(line: 890, column: 14, scope: !2368)
!2414 = !DILocation(line: 891, column: 5, scope: !2368)
!2415 = !DILocation(line: 894, column: 19, scope: !2371)
!2416 = !DILocation(line: 894, column: 25, scope: !2371)
!2417 = !DILocation(line: 894, column: 12, scope: !2371)
!2418 = !DILocation(line: 895, column: 23, scope: !2371)
!2419 = !DILocation(line: 895, column: 11, scope: !2371)
!2420 = !DILocation(line: 897, column: 26, scope: !2371)
!2421 = !DILocation(line: 897, column: 32, scope: !2371)
!2422 = !DILocation(line: 897, column: 9, scope: !2371)
!2423 = !DILocation(line: 899, column: 55, scope: !2371)
!2424 = !DILocation(line: 900, column: 46, scope: !2371)
!2425 = !DILocation(line: 901, column: 55, scope: !2371)
!2426 = !DILocation(line: 902, column: 55, scope: !2371)
!2427 = !DILocation(line: 898, column: 20, scope: !2371)
!2428 = !DILocation(line: 898, column: 12, scope: !2371)
!2429 = !DILocation(line: 904, column: 14, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2371, file: !135, line: 904, column: 9)
!2431 = !DILocation(line: 904, column: 9, scope: !2371)
!2432 = !DILocation(line: 906, column: 35, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !135, line: 905, column: 7)
!2434 = !DILocation(line: 906, column: 20, scope: !2433)
!2435 = !DILocation(line: 907, column: 17, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !135, line: 907, column: 13)
!2437 = !DILocation(line: 907, column: 13, scope: !2433)
!2438 = !DILocation(line: 908, column: 11, scope: !2436)
!2439 = !DILocation(line: 220, column: 20, scope: !2256, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 909, column: 27, scope: !2433)
!2441 = !DILocation(line: 222, column: 10, scope: !2256, inlinedAt: !2440)
!2442 = !DILocation(line: 909, column: 19, scope: !2433)
!2443 = !DILocation(line: 910, column: 69, scope: !2433)
!2444 = !DILocation(line: 912, column: 44, scope: !2433)
!2445 = !DILocation(line: 913, column: 44, scope: !2433)
!2446 = !DILocation(line: 910, column: 9, scope: !2433)
!2447 = !DILocation(line: 914, column: 7, scope: !2433)
!2448 = !DILocation(line: 916, column: 11, scope: !2371)
!2449 = !DILocation(line: 917, column: 5, scope: !2371)
!2450 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !135, file: !135, line: 928, type: !2451, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!6, !47, !17, !9}
!2453 = !{!2454, !2455, !2456}
!2454 = !DILocalVariable(name: "n", arg: 1, scope: !2450, file: !135, line: 928, type: !47)
!2455 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !135, line: 928, type: !17)
!2456 = !DILocalVariable(name: "argsize", arg: 3, scope: !2450, file: !135, line: 928, type: !9)
!2457 = !DILocation(line: 928, column: 21, scope: !2450)
!2458 = !DILocation(line: 928, column: 36, scope: !2450)
!2459 = !DILocation(line: 928, column: 48, scope: !2450)
!2460 = !DILocation(line: 930, column: 10, scope: !2450)
!2461 = !DILocation(line: 930, column: 3, scope: !2450)
!2462 = distinct !DISubprogram(name: "quotearg", scope: !135, file: !135, line: 934, type: !887, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2463)
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "arg", arg: 1, scope: !2462, file: !135, line: 934, type: !17)
!2465 = !DILocation(line: 934, column: 23, scope: !2462)
!2466 = !DILocation(line: 922, column: 17, scope: !2347, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 936, column: 10, scope: !2462)
!2468 = !DILocation(line: 922, column: 32, scope: !2347, inlinedAt: !2467)
!2469 = !DILocation(line: 924, column: 10, scope: !2347, inlinedAt: !2467)
!2470 = !DILocation(line: 936, column: 3, scope: !2462)
!2471 = distinct !DISubprogram(name: "quotearg_mem", scope: !135, file: !135, line: 940, type: !2472, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!6, !17, !9}
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "arg", arg: 1, scope: !2471, file: !135, line: 940, type: !17)
!2476 = !DILocalVariable(name: "argsize", arg: 2, scope: !2471, file: !135, line: 940, type: !9)
!2477 = !DILocation(line: 940, column: 27, scope: !2471)
!2478 = !DILocation(line: 940, column: 39, scope: !2471)
!2479 = !DILocation(line: 928, column: 21, scope: !2450, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 942, column: 10, scope: !2471)
!2481 = !DILocation(line: 928, column: 36, scope: !2450, inlinedAt: !2480)
!2482 = !DILocation(line: 928, column: 48, scope: !2450, inlinedAt: !2480)
!2483 = !DILocation(line: 930, column: 10, scope: !2450, inlinedAt: !2480)
!2484 = !DILocation(line: 942, column: 3, scope: !2471)
!2485 = distinct !DISubprogram(name: "quotearg_n_style", scope: !135, file: !135, line: 946, type: !2486, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!6, !47, !96, !17}
!2488 = !{!2489, !2490, !2491, !2492}
!2489 = !DILocalVariable(name: "n", arg: 1, scope: !2485, file: !135, line: 946, type: !47)
!2490 = !DILocalVariable(name: "s", arg: 2, scope: !2485, file: !135, line: 946, type: !96)
!2491 = !DILocalVariable(name: "arg", arg: 3, scope: !2485, file: !135, line: 946, type: !17)
!2492 = !DILocalVariable(name: "o", scope: !2485, file: !135, line: 948, type: !1055)
!2493 = !DILocalVariable(name: "o", scope: !2494, file: !135, line: 187, type: !142)
!2494 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !135, file: !135, line: 185, type: !2495, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!142, !96}
!2497 = !{!2498, !2493}
!2498 = !DILocalVariable(name: "style", arg: 1, scope: !2494, file: !135, line: 185, type: !96)
!2499 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2500 = !DILocation(line: 187, column: 26, scope: !2494, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 948, column: 36, scope: !2485)
!2502 = !DILocation(line: 946, column: 23, scope: !2485)
!2503 = !DILocation(line: 946, column: 45, scope: !2485)
!2504 = !DILocation(line: 946, column: 60, scope: !2485)
!2505 = !DILocation(line: 948, column: 3, scope: !2485)
!2506 = !DILocation(line: 948, column: 32, scope: !2485)
!2507 = !DILocation(line: 185, column: 48, scope: !2494, inlinedAt: !2501)
!2508 = !DILocation(line: 187, column: 3, scope: !2494, inlinedAt: !2501)
!2509 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2510 = !DILocation(line: 188, column: 13, scope: !2511, inlinedAt: !2501)
!2511 = distinct !DILexicalBlock(scope: !2494, file: !135, line: 188, column: 7)
!2512 = !DILocation(line: 188, column: 7, scope: !2494, inlinedAt: !2501)
!2513 = !DILocation(line: 189, column: 5, scope: !2511, inlinedAt: !2501)
!2514 = !{!2515}
!2515 = distinct !{!2515, !2516, !"quoting_options_from_style: argument 0"}
!2516 = distinct !{!2516, !"quoting_options_from_style"}
!2517 = !DILocation(line: 191, column: 10, scope: !2494, inlinedAt: !2501)
!2518 = !DILocation(line: 192, column: 1, scope: !2494, inlinedAt: !2501)
!2519 = !DILocation(line: 949, column: 10, scope: !2485)
!2520 = !DILocation(line: 950, column: 1, scope: !2485)
!2521 = !DILocation(line: 949, column: 3, scope: !2485)
!2522 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !135, file: !135, line: 953, type: !2523, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!6, !47, !96, !17, !9}
!2525 = !{!2526, !2527, !2528, !2529, !2530}
!2526 = !DILocalVariable(name: "n", arg: 1, scope: !2522, file: !135, line: 953, type: !47)
!2527 = !DILocalVariable(name: "s", arg: 2, scope: !2522, file: !135, line: 953, type: !96)
!2528 = !DILocalVariable(name: "arg", arg: 3, scope: !2522, file: !135, line: 954, type: !17)
!2529 = !DILocalVariable(name: "argsize", arg: 4, scope: !2522, file: !135, line: 954, type: !9)
!2530 = !DILocalVariable(name: "o", scope: !2522, file: !135, line: 956, type: !1055)
!2531 = !DILocation(line: 187, column: 26, scope: !2494, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 956, column: 36, scope: !2522)
!2533 = !DILocation(line: 953, column: 27, scope: !2522)
!2534 = !DILocation(line: 953, column: 49, scope: !2522)
!2535 = !DILocation(line: 954, column: 35, scope: !2522)
!2536 = !DILocation(line: 954, column: 47, scope: !2522)
!2537 = !DILocation(line: 956, column: 3, scope: !2522)
!2538 = !DILocation(line: 956, column: 32, scope: !2522)
!2539 = !DILocation(line: 185, column: 48, scope: !2494, inlinedAt: !2532)
!2540 = !DILocation(line: 187, column: 3, scope: !2494, inlinedAt: !2532)
!2541 = !DILocation(line: 188, column: 13, scope: !2511, inlinedAt: !2532)
!2542 = !DILocation(line: 188, column: 7, scope: !2494, inlinedAt: !2532)
!2543 = !DILocation(line: 189, column: 5, scope: !2511, inlinedAt: !2532)
!2544 = !{!2545}
!2545 = distinct !{!2545, !2546, !"quoting_options_from_style: argument 0"}
!2546 = distinct !{!2546, !"quoting_options_from_style"}
!2547 = !DILocation(line: 191, column: 10, scope: !2494, inlinedAt: !2532)
!2548 = !DILocation(line: 192, column: 1, scope: !2494, inlinedAt: !2532)
!2549 = !DILocation(line: 957, column: 10, scope: !2522)
!2550 = !DILocation(line: 958, column: 1, scope: !2522)
!2551 = !DILocation(line: 957, column: 3, scope: !2522)
!2552 = distinct !DISubprogram(name: "quotearg_style", scope: !135, file: !135, line: 961, type: !2553, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!6, !96, !17}
!2555 = !{!2556, !2557}
!2556 = !DILocalVariable(name: "s", arg: 1, scope: !2552, file: !135, line: 961, type: !96)
!2557 = !DILocalVariable(name: "arg", arg: 2, scope: !2552, file: !135, line: 961, type: !17)
!2558 = !DILocation(line: 187, column: 26, scope: !2494, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 948, column: 36, scope: !2485, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 963, column: 10, scope: !2552)
!2561 = !DILocation(line: 961, column: 36, scope: !2552)
!2562 = !DILocation(line: 961, column: 51, scope: !2552)
!2563 = !DILocation(line: 946, column: 23, scope: !2485, inlinedAt: !2560)
!2564 = !DILocation(line: 946, column: 45, scope: !2485, inlinedAt: !2560)
!2565 = !DILocation(line: 946, column: 60, scope: !2485, inlinedAt: !2560)
!2566 = !DILocation(line: 948, column: 3, scope: !2485, inlinedAt: !2560)
!2567 = !DILocation(line: 948, column: 32, scope: !2485, inlinedAt: !2560)
!2568 = !DILocation(line: 185, column: 48, scope: !2494, inlinedAt: !2559)
!2569 = !DILocation(line: 187, column: 3, scope: !2494, inlinedAt: !2559)
!2570 = !DILocation(line: 188, column: 13, scope: !2511, inlinedAt: !2559)
!2571 = !DILocation(line: 188, column: 7, scope: !2494, inlinedAt: !2559)
!2572 = !DILocation(line: 189, column: 5, scope: !2511, inlinedAt: !2559)
!2573 = !{!2574}
!2574 = distinct !{!2574, !2575, !"quoting_options_from_style: argument 0"}
!2575 = distinct !{!2575, !"quoting_options_from_style"}
!2576 = !DILocation(line: 191, column: 10, scope: !2494, inlinedAt: !2559)
!2577 = !DILocation(line: 192, column: 1, scope: !2494, inlinedAt: !2559)
!2578 = !DILocation(line: 949, column: 10, scope: !2485, inlinedAt: !2560)
!2579 = !DILocation(line: 950, column: 1, scope: !2485, inlinedAt: !2560)
!2580 = !DILocation(line: 963, column: 3, scope: !2552)
!2581 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !135, file: !135, line: 967, type: !2582, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!6, !96, !17, !9}
!2584 = !{!2585, !2586, !2587}
!2585 = !DILocalVariable(name: "s", arg: 1, scope: !2581, file: !135, line: 967, type: !96)
!2586 = !DILocalVariable(name: "arg", arg: 2, scope: !2581, file: !135, line: 967, type: !17)
!2587 = !DILocalVariable(name: "argsize", arg: 3, scope: !2581, file: !135, line: 967, type: !9)
!2588 = !DILocation(line: 187, column: 26, scope: !2494, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 956, column: 36, scope: !2522, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 969, column: 10, scope: !2581)
!2591 = !DILocation(line: 967, column: 40, scope: !2581)
!2592 = !DILocation(line: 967, column: 55, scope: !2581)
!2593 = !DILocation(line: 967, column: 67, scope: !2581)
!2594 = !DILocation(line: 953, column: 27, scope: !2522, inlinedAt: !2590)
!2595 = !DILocation(line: 953, column: 49, scope: !2522, inlinedAt: !2590)
!2596 = !DILocation(line: 954, column: 35, scope: !2522, inlinedAt: !2590)
!2597 = !DILocation(line: 954, column: 47, scope: !2522, inlinedAt: !2590)
!2598 = !DILocation(line: 956, column: 3, scope: !2522, inlinedAt: !2590)
!2599 = !DILocation(line: 956, column: 32, scope: !2522, inlinedAt: !2590)
!2600 = !DILocation(line: 185, column: 48, scope: !2494, inlinedAt: !2589)
!2601 = !DILocation(line: 187, column: 3, scope: !2494, inlinedAt: !2589)
!2602 = !DILocation(line: 188, column: 13, scope: !2511, inlinedAt: !2589)
!2603 = !DILocation(line: 188, column: 7, scope: !2494, inlinedAt: !2589)
!2604 = !DILocation(line: 189, column: 5, scope: !2511, inlinedAt: !2589)
!2605 = !{!2606}
!2606 = distinct !{!2606, !2607, !"quoting_options_from_style: argument 0"}
!2607 = distinct !{!2607, !"quoting_options_from_style"}
!2608 = !DILocation(line: 191, column: 10, scope: !2494, inlinedAt: !2589)
!2609 = !DILocation(line: 192, column: 1, scope: !2494, inlinedAt: !2589)
!2610 = !DILocation(line: 957, column: 10, scope: !2522, inlinedAt: !2590)
!2611 = !DILocation(line: 958, column: 1, scope: !2522, inlinedAt: !2590)
!2612 = !DILocation(line: 969, column: 3, scope: !2581)
!2613 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !135, file: !135, line: 973, type: !2614, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!6, !17, !9, !7}
!2616 = !{!2617, !2618, !2619, !2620}
!2617 = !DILocalVariable(name: "arg", arg: 1, scope: !2613, file: !135, line: 973, type: !17)
!2618 = !DILocalVariable(name: "argsize", arg: 2, scope: !2613, file: !135, line: 973, type: !9)
!2619 = !DILocalVariable(name: "ch", arg: 3, scope: !2613, file: !135, line: 973, type: !7)
!2620 = !DILocalVariable(name: "options", scope: !2613, file: !135, line: 975, type: !142)
!2621 = !DILocation(line: 973, column: 32, scope: !2613)
!2622 = !DILocation(line: 973, column: 44, scope: !2613)
!2623 = !DILocation(line: 973, column: 58, scope: !2613)
!2624 = !DILocation(line: 975, column: 3, scope: !2613)
!2625 = !DILocation(line: 976, column: 13, scope: !2613)
!2626 = !{i64 0, i64 4, !764, i64 4, i64 4, !691, i64 8, i64 32, !764, i64 40, i64 8, !602, i64 48, i64 8, !602}
!2627 = !DILocation(line: 975, column: 26, scope: !2613)
!2628 = !DILocation(line: 144, column: 43, scope: !1078, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 977, column: 3, scope: !2613)
!2630 = !DILocation(line: 144, column: 51, scope: !1078, inlinedAt: !2629)
!2631 = !DILocation(line: 144, column: 58, scope: !1078, inlinedAt: !2629)
!2632 = !DILocation(line: 146, column: 17, scope: !1078, inlinedAt: !2629)
!2633 = !DILocation(line: 148, column: 62, scope: !1096, inlinedAt: !2629)
!2634 = !DILocation(line: 148, column: 57, scope: !1096, inlinedAt: !2629)
!2635 = !DILocation(line: 147, column: 17, scope: !1078, inlinedAt: !2629)
!2636 = !DILocation(line: 149, column: 18, scope: !1078, inlinedAt: !2629)
!2637 = !DILocation(line: 149, column: 15, scope: !1078, inlinedAt: !2629)
!2638 = !DILocation(line: 149, column: 7, scope: !1078, inlinedAt: !2629)
!2639 = !DILocation(line: 150, column: 12, scope: !1078, inlinedAt: !2629)
!2640 = !DILocation(line: 150, column: 15, scope: !1078, inlinedAt: !2629)
!2641 = !DILocation(line: 150, column: 25, scope: !1078, inlinedAt: !2629)
!2642 = !DILocation(line: 150, column: 7, scope: !1078, inlinedAt: !2629)
!2643 = !DILocation(line: 151, column: 18, scope: !1078, inlinedAt: !2629)
!2644 = !DILocation(line: 151, column: 23, scope: !1078, inlinedAt: !2629)
!2645 = !DILocation(line: 151, column: 6, scope: !1078, inlinedAt: !2629)
!2646 = !DILocation(line: 978, column: 10, scope: !2613)
!2647 = !DILocation(line: 979, column: 1, scope: !2613)
!2648 = !DILocation(line: 978, column: 3, scope: !2613)
!2649 = distinct !DISubprogram(name: "quotearg_char", scope: !135, file: !135, line: 982, type: !2650, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!6, !17, !7}
!2652 = !{!2653, !2654}
!2653 = !DILocalVariable(name: "arg", arg: 1, scope: !2649, file: !135, line: 982, type: !17)
!2654 = !DILocalVariable(name: "ch", arg: 2, scope: !2649, file: !135, line: 982, type: !7)
!2655 = !DILocation(line: 982, column: 28, scope: !2649)
!2656 = !DILocation(line: 982, column: 38, scope: !2649)
!2657 = !DILocation(line: 973, column: 32, scope: !2613, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 984, column: 10, scope: !2649)
!2659 = !DILocation(line: 973, column: 44, scope: !2613, inlinedAt: !2658)
!2660 = !DILocation(line: 973, column: 58, scope: !2613, inlinedAt: !2658)
!2661 = !DILocation(line: 975, column: 3, scope: !2613, inlinedAt: !2658)
!2662 = !DILocation(line: 976, column: 13, scope: !2613, inlinedAt: !2658)
!2663 = !DILocation(line: 975, column: 26, scope: !2613, inlinedAt: !2658)
!2664 = !DILocation(line: 144, column: 43, scope: !1078, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 977, column: 3, scope: !2613, inlinedAt: !2658)
!2666 = !DILocation(line: 144, column: 51, scope: !1078, inlinedAt: !2665)
!2667 = !DILocation(line: 144, column: 58, scope: !1078, inlinedAt: !2665)
!2668 = !DILocation(line: 146, column: 17, scope: !1078, inlinedAt: !2665)
!2669 = !DILocation(line: 148, column: 62, scope: !1096, inlinedAt: !2665)
!2670 = !DILocation(line: 148, column: 57, scope: !1096, inlinedAt: !2665)
!2671 = !DILocation(line: 147, column: 17, scope: !1078, inlinedAt: !2665)
!2672 = !DILocation(line: 149, column: 18, scope: !1078, inlinedAt: !2665)
!2673 = !DILocation(line: 149, column: 15, scope: !1078, inlinedAt: !2665)
!2674 = !DILocation(line: 149, column: 7, scope: !1078, inlinedAt: !2665)
!2675 = !DILocation(line: 150, column: 12, scope: !1078, inlinedAt: !2665)
!2676 = !DILocation(line: 150, column: 15, scope: !1078, inlinedAt: !2665)
!2677 = !DILocation(line: 150, column: 25, scope: !1078, inlinedAt: !2665)
!2678 = !DILocation(line: 150, column: 7, scope: !1078, inlinedAt: !2665)
!2679 = !DILocation(line: 151, column: 18, scope: !1078, inlinedAt: !2665)
!2680 = !DILocation(line: 151, column: 23, scope: !1078, inlinedAt: !2665)
!2681 = !DILocation(line: 151, column: 6, scope: !1078, inlinedAt: !2665)
!2682 = !DILocation(line: 978, column: 10, scope: !2613, inlinedAt: !2658)
!2683 = !DILocation(line: 979, column: 1, scope: !2613, inlinedAt: !2658)
!2684 = !DILocation(line: 984, column: 3, scope: !2649)
!2685 = distinct !DISubprogram(name: "quotearg_colon", scope: !135, file: !135, line: 988, type: !887, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2686)
!2686 = !{!2687}
!2687 = !DILocalVariable(name: "arg", arg: 1, scope: !2685, file: !135, line: 988, type: !17)
!2688 = !DILocation(line: 988, column: 29, scope: !2685)
!2689 = !DILocation(line: 982, column: 28, scope: !2649, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 990, column: 10, scope: !2685)
!2691 = !DILocation(line: 982, column: 38, scope: !2649, inlinedAt: !2690)
!2692 = !DILocation(line: 973, column: 32, scope: !2613, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 984, column: 10, scope: !2649, inlinedAt: !2690)
!2694 = !DILocation(line: 973, column: 44, scope: !2613, inlinedAt: !2693)
!2695 = !DILocation(line: 973, column: 58, scope: !2613, inlinedAt: !2693)
!2696 = !DILocation(line: 975, column: 3, scope: !2613, inlinedAt: !2693)
!2697 = !DILocation(line: 976, column: 13, scope: !2613, inlinedAt: !2693)
!2698 = !DILocation(line: 975, column: 26, scope: !2613, inlinedAt: !2693)
!2699 = !DILocation(line: 144, column: 43, scope: !1078, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 977, column: 3, scope: !2613, inlinedAt: !2693)
!2701 = !DILocation(line: 144, column: 51, scope: !1078, inlinedAt: !2700)
!2702 = !DILocation(line: 144, column: 58, scope: !1078, inlinedAt: !2700)
!2703 = !DILocation(line: 146, column: 17, scope: !1078, inlinedAt: !2700)
!2704 = !DILocation(line: 148, column: 57, scope: !1096, inlinedAt: !2700)
!2705 = !DILocation(line: 147, column: 17, scope: !1078, inlinedAt: !2700)
!2706 = !DILocation(line: 149, column: 7, scope: !1078, inlinedAt: !2700)
!2707 = !DILocation(line: 150, column: 12, scope: !1078, inlinedAt: !2700)
!2708 = !DILocation(line: 151, column: 6, scope: !1078, inlinedAt: !2700)
!2709 = !DILocation(line: 978, column: 10, scope: !2613, inlinedAt: !2693)
!2710 = !DILocation(line: 979, column: 1, scope: !2613, inlinedAt: !2693)
!2711 = !DILocation(line: 990, column: 3, scope: !2685)
!2712 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !135, file: !135, line: 994, type: !2472, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2713)
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "arg", arg: 1, scope: !2712, file: !135, line: 994, type: !17)
!2715 = !DILocalVariable(name: "argsize", arg: 2, scope: !2712, file: !135, line: 994, type: !9)
!2716 = !DILocation(line: 994, column: 33, scope: !2712)
!2717 = !DILocation(line: 994, column: 45, scope: !2712)
!2718 = !DILocation(line: 973, column: 32, scope: !2613, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 996, column: 10, scope: !2712)
!2720 = !DILocation(line: 973, column: 44, scope: !2613, inlinedAt: !2719)
!2721 = !DILocation(line: 973, column: 58, scope: !2613, inlinedAt: !2719)
!2722 = !DILocation(line: 975, column: 3, scope: !2613, inlinedAt: !2719)
!2723 = !DILocation(line: 976, column: 13, scope: !2613, inlinedAt: !2719)
!2724 = !DILocation(line: 975, column: 26, scope: !2613, inlinedAt: !2719)
!2725 = !DILocation(line: 144, column: 43, scope: !1078, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 977, column: 3, scope: !2613, inlinedAt: !2719)
!2727 = !DILocation(line: 144, column: 51, scope: !1078, inlinedAt: !2726)
!2728 = !DILocation(line: 144, column: 58, scope: !1078, inlinedAt: !2726)
!2729 = !DILocation(line: 146, column: 17, scope: !1078, inlinedAt: !2726)
!2730 = !DILocation(line: 148, column: 57, scope: !1096, inlinedAt: !2726)
!2731 = !DILocation(line: 147, column: 17, scope: !1078, inlinedAt: !2726)
!2732 = !DILocation(line: 149, column: 7, scope: !1078, inlinedAt: !2726)
!2733 = !DILocation(line: 150, column: 12, scope: !1078, inlinedAt: !2726)
!2734 = !DILocation(line: 151, column: 6, scope: !1078, inlinedAt: !2726)
!2735 = !DILocation(line: 978, column: 10, scope: !2613, inlinedAt: !2719)
!2736 = !DILocation(line: 979, column: 1, scope: !2613, inlinedAt: !2719)
!2737 = !DILocation(line: 996, column: 3, scope: !2712)
!2738 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !135, file: !135, line: 1000, type: !2486, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2739)
!2739 = !{!2740, !2741, !2742, !2743}
!2740 = !DILocalVariable(name: "n", arg: 1, scope: !2738, file: !135, line: 1000, type: !47)
!2741 = !DILocalVariable(name: "s", arg: 2, scope: !2738, file: !135, line: 1000, type: !96)
!2742 = !DILocalVariable(name: "arg", arg: 3, scope: !2738, file: !135, line: 1000, type: !17)
!2743 = !DILocalVariable(name: "options", scope: !2738, file: !135, line: 1002, type: !142)
!2744 = !DILocation(line: 187, column: 26, scope: !2494, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1003, column: 13, scope: !2738)
!2746 = !DILocation(line: 1000, column: 29, scope: !2738)
!2747 = !DILocation(line: 1000, column: 51, scope: !2738)
!2748 = !DILocation(line: 1000, column: 66, scope: !2738)
!2749 = !DILocation(line: 1002, column: 3, scope: !2738)
!2750 = !DILocation(line: 185, column: 48, scope: !2494, inlinedAt: !2745)
!2751 = !DILocation(line: 187, column: 3, scope: !2494, inlinedAt: !2745)
!2752 = !DILocation(line: 188, column: 13, scope: !2511, inlinedAt: !2745)
!2753 = !DILocation(line: 188, column: 7, scope: !2494, inlinedAt: !2745)
!2754 = !DILocation(line: 189, column: 5, scope: !2511, inlinedAt: !2745)
!2755 = !{!2756}
!2756 = distinct !{!2756, !2757, !"quoting_options_from_style: argument 0"}
!2757 = distinct !{!2757, !"quoting_options_from_style"}
!2758 = !DILocation(line: 191, column: 10, scope: !2494, inlinedAt: !2745)
!2759 = !DILocation(line: 192, column: 1, scope: !2494, inlinedAt: !2745)
!2760 = !DILocation(line: 1003, column: 13, scope: !2738)
!2761 = !DILocation(line: 1002, column: 26, scope: !2738)
!2762 = !DILocation(line: 144, column: 43, scope: !1078, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 1004, column: 3, scope: !2738)
!2764 = !DILocation(line: 144, column: 51, scope: !1078, inlinedAt: !2763)
!2765 = !DILocation(line: 144, column: 58, scope: !1078, inlinedAt: !2763)
!2766 = !DILocation(line: 146, column: 17, scope: !1078, inlinedAt: !2763)
!2767 = !DILocation(line: 148, column: 57, scope: !1096, inlinedAt: !2763)
!2768 = !DILocation(line: 147, column: 17, scope: !1078, inlinedAt: !2763)
!2769 = !DILocation(line: 149, column: 7, scope: !1078, inlinedAt: !2763)
!2770 = !DILocation(line: 150, column: 12, scope: !1078, inlinedAt: !2763)
!2771 = !DILocation(line: 151, column: 6, scope: !1078, inlinedAt: !2763)
!2772 = !DILocation(line: 1005, column: 10, scope: !2738)
!2773 = !DILocation(line: 1006, column: 1, scope: !2738)
!2774 = !DILocation(line: 1005, column: 3, scope: !2738)
!2775 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !135, file: !135, line: 1009, type: !2776, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!6, !47, !17, !17, !17}
!2778 = !{!2779, !2780, !2781, !2782}
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2775, file: !135, line: 1009, type: !47)
!2780 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2775, file: !135, line: 1009, type: !17)
!2781 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2775, file: !135, line: 1010, type: !17)
!2782 = !DILocalVariable(name: "arg", arg: 4, scope: !2775, file: !135, line: 1010, type: !17)
!2783 = !DILocation(line: 1009, column: 24, scope: !2775)
!2784 = !DILocation(line: 1009, column: 39, scope: !2775)
!2785 = !DILocation(line: 1010, column: 32, scope: !2775)
!2786 = !DILocation(line: 1010, column: 57, scope: !2775)
!2787 = !DILocalVariable(name: "n", arg: 1, scope: !2788, file: !135, line: 1017, type: !47)
!2788 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !135, file: !135, line: 1017, type: !2789, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!6, !47, !17, !17, !17, !9}
!2791 = !{!2787, !2792, !2793, !2794, !2795, !2796}
!2792 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2788, file: !135, line: 1017, type: !17)
!2793 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2788, file: !135, line: 1018, type: !17)
!2794 = !DILocalVariable(name: "arg", arg: 4, scope: !2788, file: !135, line: 1019, type: !17)
!2795 = !DILocalVariable(name: "argsize", arg: 5, scope: !2788, file: !135, line: 1019, type: !9)
!2796 = !DILocalVariable(name: "o", scope: !2788, file: !135, line: 1021, type: !142)
!2797 = !DILocation(line: 1017, column: 28, scope: !2788, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 1012, column: 10, scope: !2775)
!2799 = !DILocation(line: 1017, column: 43, scope: !2788, inlinedAt: !2798)
!2800 = !DILocation(line: 1018, column: 36, scope: !2788, inlinedAt: !2798)
!2801 = !DILocation(line: 1019, column: 36, scope: !2788, inlinedAt: !2798)
!2802 = !DILocation(line: 1019, column: 48, scope: !2788, inlinedAt: !2798)
!2803 = !DILocation(line: 1021, column: 3, scope: !2788, inlinedAt: !2798)
!2804 = !DILocation(line: 1021, column: 30, scope: !2788, inlinedAt: !2798)
!2805 = !DILocation(line: 1021, column: 26, scope: !2788, inlinedAt: !2798)
!2806 = !DILocation(line: 171, column: 45, scope: !1128, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 1022, column: 3, scope: !2788, inlinedAt: !2798)
!2808 = !DILocation(line: 172, column: 33, scope: !1128, inlinedAt: !2807)
!2809 = !DILocation(line: 172, column: 57, scope: !1128, inlinedAt: !2807)
!2810 = !DILocation(line: 176, column: 6, scope: !1128, inlinedAt: !2807)
!2811 = !DILocation(line: 176, column: 12, scope: !1128, inlinedAt: !2807)
!2812 = !DILocation(line: 177, column: 8, scope: !1144, inlinedAt: !2807)
!2813 = !DILocation(line: 177, column: 23, scope: !1146, inlinedAt: !2807)
!2814 = !DILocation(line: 177, column: 19, scope: !1144, inlinedAt: !2807)
!2815 = !DILocation(line: 178, column: 5, scope: !1144, inlinedAt: !2807)
!2816 = !DILocation(line: 179, column: 6, scope: !1128, inlinedAt: !2807)
!2817 = !DILocation(line: 179, column: 17, scope: !1128, inlinedAt: !2807)
!2818 = !DILocation(line: 180, column: 6, scope: !1128, inlinedAt: !2807)
!2819 = !DILocation(line: 180, column: 18, scope: !1128, inlinedAt: !2807)
!2820 = !DILocation(line: 1023, column: 10, scope: !2788, inlinedAt: !2798)
!2821 = !DILocation(line: 1024, column: 1, scope: !2788, inlinedAt: !2798)
!2822 = !DILocation(line: 1012, column: 3, scope: !2775)
!2823 = !DILocation(line: 1017, column: 28, scope: !2788)
!2824 = !DILocation(line: 1017, column: 43, scope: !2788)
!2825 = !DILocation(line: 1018, column: 36, scope: !2788)
!2826 = !DILocation(line: 1019, column: 36, scope: !2788)
!2827 = !DILocation(line: 1019, column: 48, scope: !2788)
!2828 = !DILocation(line: 1021, column: 3, scope: !2788)
!2829 = !DILocation(line: 1021, column: 30, scope: !2788)
!2830 = !DILocation(line: 1021, column: 26, scope: !2788)
!2831 = !DILocation(line: 171, column: 45, scope: !1128, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 1022, column: 3, scope: !2788)
!2833 = !DILocation(line: 172, column: 33, scope: !1128, inlinedAt: !2832)
!2834 = !DILocation(line: 172, column: 57, scope: !1128, inlinedAt: !2832)
!2835 = !DILocation(line: 176, column: 6, scope: !1128, inlinedAt: !2832)
!2836 = !DILocation(line: 176, column: 12, scope: !1128, inlinedAt: !2832)
!2837 = !DILocation(line: 177, column: 8, scope: !1144, inlinedAt: !2832)
!2838 = !DILocation(line: 177, column: 23, scope: !1146, inlinedAt: !2832)
!2839 = !DILocation(line: 177, column: 19, scope: !1144, inlinedAt: !2832)
!2840 = !DILocation(line: 178, column: 5, scope: !1144, inlinedAt: !2832)
!2841 = !DILocation(line: 179, column: 6, scope: !1128, inlinedAt: !2832)
!2842 = !DILocation(line: 179, column: 17, scope: !1128, inlinedAt: !2832)
!2843 = !DILocation(line: 180, column: 6, scope: !1128, inlinedAt: !2832)
!2844 = !DILocation(line: 180, column: 18, scope: !1128, inlinedAt: !2832)
!2845 = !DILocation(line: 1023, column: 10, scope: !2788)
!2846 = !DILocation(line: 1024, column: 1, scope: !2788)
!2847 = !DILocation(line: 1023, column: 3, scope: !2788)
!2848 = distinct !DISubprogram(name: "quotearg_custom", scope: !135, file: !135, line: 1027, type: !2849, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!6, !17, !17, !17}
!2851 = !{!2852, !2853, !2854}
!2852 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2848, file: !135, line: 1027, type: !17)
!2853 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2848, file: !135, line: 1027, type: !17)
!2854 = !DILocalVariable(name: "arg", arg: 3, scope: !2848, file: !135, line: 1028, type: !17)
!2855 = !DILocation(line: 1027, column: 30, scope: !2848)
!2856 = !DILocation(line: 1027, column: 54, scope: !2848)
!2857 = !DILocation(line: 1028, column: 30, scope: !2848)
!2858 = !DILocation(line: 1009, column: 24, scope: !2775, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 1030, column: 10, scope: !2848)
!2860 = !DILocation(line: 1009, column: 39, scope: !2775, inlinedAt: !2859)
!2861 = !DILocation(line: 1010, column: 32, scope: !2775, inlinedAt: !2859)
!2862 = !DILocation(line: 1010, column: 57, scope: !2775, inlinedAt: !2859)
!2863 = !DILocation(line: 1017, column: 28, scope: !2788, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 1012, column: 10, scope: !2775, inlinedAt: !2859)
!2865 = !DILocation(line: 1017, column: 43, scope: !2788, inlinedAt: !2864)
!2866 = !DILocation(line: 1018, column: 36, scope: !2788, inlinedAt: !2864)
!2867 = !DILocation(line: 1019, column: 36, scope: !2788, inlinedAt: !2864)
!2868 = !DILocation(line: 1019, column: 48, scope: !2788, inlinedAt: !2864)
!2869 = !DILocation(line: 1021, column: 3, scope: !2788, inlinedAt: !2864)
!2870 = !DILocation(line: 1021, column: 30, scope: !2788, inlinedAt: !2864)
!2871 = !DILocation(line: 1021, column: 26, scope: !2788, inlinedAt: !2864)
!2872 = !DILocation(line: 171, column: 45, scope: !1128, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1022, column: 3, scope: !2788, inlinedAt: !2864)
!2874 = !DILocation(line: 172, column: 33, scope: !1128, inlinedAt: !2873)
!2875 = !DILocation(line: 172, column: 57, scope: !1128, inlinedAt: !2873)
!2876 = !DILocation(line: 176, column: 6, scope: !1128, inlinedAt: !2873)
!2877 = !DILocation(line: 176, column: 12, scope: !1128, inlinedAt: !2873)
!2878 = !DILocation(line: 177, column: 8, scope: !1144, inlinedAt: !2873)
!2879 = !DILocation(line: 177, column: 23, scope: !1146, inlinedAt: !2873)
!2880 = !DILocation(line: 177, column: 19, scope: !1144, inlinedAt: !2873)
!2881 = !DILocation(line: 178, column: 5, scope: !1144, inlinedAt: !2873)
!2882 = !DILocation(line: 179, column: 6, scope: !1128, inlinedAt: !2873)
!2883 = !DILocation(line: 179, column: 17, scope: !1128, inlinedAt: !2873)
!2884 = !DILocation(line: 180, column: 6, scope: !1128, inlinedAt: !2873)
!2885 = !DILocation(line: 180, column: 18, scope: !1128, inlinedAt: !2873)
!2886 = !DILocation(line: 1023, column: 10, scope: !2788, inlinedAt: !2864)
!2887 = !DILocation(line: 1024, column: 1, scope: !2788, inlinedAt: !2864)
!2888 = !DILocation(line: 1030, column: 3, scope: !2848)
!2889 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !135, file: !135, line: 1034, type: !2890, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!6, !17, !17, !17, !9}
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2889, file: !135, line: 1034, type: !17)
!2894 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2889, file: !135, line: 1034, type: !17)
!2895 = !DILocalVariable(name: "arg", arg: 3, scope: !2889, file: !135, line: 1035, type: !17)
!2896 = !DILocalVariable(name: "argsize", arg: 4, scope: !2889, file: !135, line: 1035, type: !9)
!2897 = !DILocation(line: 1034, column: 34, scope: !2889)
!2898 = !DILocation(line: 1034, column: 58, scope: !2889)
!2899 = !DILocation(line: 1035, column: 34, scope: !2889)
!2900 = !DILocation(line: 1035, column: 46, scope: !2889)
!2901 = !DILocation(line: 1017, column: 28, scope: !2788, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 1037, column: 10, scope: !2889)
!2903 = !DILocation(line: 1017, column: 43, scope: !2788, inlinedAt: !2902)
!2904 = !DILocation(line: 1018, column: 36, scope: !2788, inlinedAt: !2902)
!2905 = !DILocation(line: 1019, column: 36, scope: !2788, inlinedAt: !2902)
!2906 = !DILocation(line: 1019, column: 48, scope: !2788, inlinedAt: !2902)
!2907 = !DILocation(line: 1021, column: 3, scope: !2788, inlinedAt: !2902)
!2908 = !DILocation(line: 1021, column: 30, scope: !2788, inlinedAt: !2902)
!2909 = !DILocation(line: 1021, column: 26, scope: !2788, inlinedAt: !2902)
!2910 = !DILocation(line: 171, column: 45, scope: !1128, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 1022, column: 3, scope: !2788, inlinedAt: !2902)
!2912 = !DILocation(line: 172, column: 33, scope: !1128, inlinedAt: !2911)
!2913 = !DILocation(line: 172, column: 57, scope: !1128, inlinedAt: !2911)
!2914 = !DILocation(line: 176, column: 6, scope: !1128, inlinedAt: !2911)
!2915 = !DILocation(line: 176, column: 12, scope: !1128, inlinedAt: !2911)
!2916 = !DILocation(line: 177, column: 8, scope: !1144, inlinedAt: !2911)
!2917 = !DILocation(line: 177, column: 23, scope: !1146, inlinedAt: !2911)
!2918 = !DILocation(line: 177, column: 19, scope: !1144, inlinedAt: !2911)
!2919 = !DILocation(line: 178, column: 5, scope: !1144, inlinedAt: !2911)
!2920 = !DILocation(line: 179, column: 6, scope: !1128, inlinedAt: !2911)
!2921 = !DILocation(line: 179, column: 17, scope: !1128, inlinedAt: !2911)
!2922 = !DILocation(line: 180, column: 6, scope: !1128, inlinedAt: !2911)
!2923 = !DILocation(line: 180, column: 18, scope: !1128, inlinedAt: !2911)
!2924 = !DILocation(line: 1023, column: 10, scope: !2788, inlinedAt: !2902)
!2925 = !DILocation(line: 1024, column: 1, scope: !2788, inlinedAt: !2902)
!2926 = !DILocation(line: 1037, column: 3, scope: !2889)
!2927 = distinct !DISubprogram(name: "quote_n_mem", scope: !135, file: !135, line: 1052, type: !2928, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!17, !47, !17, !9}
!2930 = !{!2931, !2932, !2933}
!2931 = !DILocalVariable(name: "n", arg: 1, scope: !2927, file: !135, line: 1052, type: !47)
!2932 = !DILocalVariable(name: "arg", arg: 2, scope: !2927, file: !135, line: 1052, type: !17)
!2933 = !DILocalVariable(name: "argsize", arg: 3, scope: !2927, file: !135, line: 1052, type: !9)
!2934 = !DILocation(line: 1052, column: 18, scope: !2927)
!2935 = !DILocation(line: 1052, column: 33, scope: !2927)
!2936 = !DILocation(line: 1052, column: 45, scope: !2927)
!2937 = !DILocation(line: 1054, column: 10, scope: !2927)
!2938 = !DILocation(line: 1054, column: 3, scope: !2927)
!2939 = distinct !DISubprogram(name: "quote_mem", scope: !135, file: !135, line: 1058, type: !2940, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!17, !17, !9}
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "arg", arg: 1, scope: !2939, file: !135, line: 1058, type: !17)
!2944 = !DILocalVariable(name: "argsize", arg: 2, scope: !2939, file: !135, line: 1058, type: !9)
!2945 = !DILocation(line: 1058, column: 24, scope: !2939)
!2946 = !DILocation(line: 1058, column: 36, scope: !2939)
!2947 = !DILocation(line: 1052, column: 18, scope: !2927, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 1060, column: 10, scope: !2939)
!2949 = !DILocation(line: 1052, column: 33, scope: !2927, inlinedAt: !2948)
!2950 = !DILocation(line: 1052, column: 45, scope: !2927, inlinedAt: !2948)
!2951 = !DILocation(line: 1054, column: 10, scope: !2927, inlinedAt: !2948)
!2952 = !DILocation(line: 1060, column: 3, scope: !2939)
!2953 = distinct !DISubprogram(name: "quote_n", scope: !135, file: !135, line: 1064, type: !2954, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!17, !47, !17}
!2956 = !{!2957, !2958}
!2957 = !DILocalVariable(name: "n", arg: 1, scope: !2953, file: !135, line: 1064, type: !47)
!2958 = !DILocalVariable(name: "arg", arg: 2, scope: !2953, file: !135, line: 1064, type: !17)
!2959 = !DILocation(line: 1064, column: 14, scope: !2953)
!2960 = !DILocation(line: 1064, column: 29, scope: !2953)
!2961 = !DILocation(line: 1052, column: 18, scope: !2927, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 1066, column: 10, scope: !2953)
!2963 = !DILocation(line: 1052, column: 33, scope: !2927, inlinedAt: !2962)
!2964 = !DILocation(line: 1052, column: 45, scope: !2927, inlinedAt: !2962)
!2965 = !DILocation(line: 1054, column: 10, scope: !2927, inlinedAt: !2962)
!2966 = !DILocation(line: 1066, column: 3, scope: !2953)
!2967 = distinct !DISubprogram(name: "quote", scope: !135, file: !135, line: 1070, type: !2968, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!17, !17}
!2970 = !{!2971}
!2971 = !DILocalVariable(name: "arg", arg: 1, scope: !2967, file: !135, line: 1070, type: !17)
!2972 = !DILocation(line: 1070, column: 20, scope: !2967)
!2973 = !DILocation(line: 1064, column: 14, scope: !2953, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 1072, column: 10, scope: !2967)
!2975 = !DILocation(line: 1064, column: 29, scope: !2953, inlinedAt: !2974)
!2976 = !DILocation(line: 1052, column: 18, scope: !2927, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1066, column: 10, scope: !2953, inlinedAt: !2974)
!2978 = !DILocation(line: 1052, column: 33, scope: !2927, inlinedAt: !2977)
!2979 = !DILocation(line: 1052, column: 45, scope: !2927, inlinedAt: !2977)
!2980 = !DILocation(line: 1054, column: 10, scope: !2927, inlinedAt: !2977)
!2981 = !DILocation(line: 1072, column: 3, scope: !2967)
!2982 = distinct !DISubprogram(name: "version_etc_arn", scope: !543, file: !543, line: 62, type: !2983, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !3041)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2985, !17, !17, !17, !3040, !9}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2987, line: 49, baseType: !2988)
!2987 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2989, line: 241, size: 1728, elements: !2990)
!2989 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3011, !3012, !3013, !3014, !3018, !3019, !3021, !3025, !3028, !3030, !3031, !3032, !3033, !3034, !3035, !3036}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2988, file: !2989, line: 242, baseType: !47, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2988, file: !2989, line: 247, baseType: !6, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2988, file: !2989, line: 248, baseType: !6, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2988, file: !2989, line: 249, baseType: !6, size: 64, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2988, file: !2989, line: 250, baseType: !6, size: 64, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2988, file: !2989, line: 251, baseType: !6, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2988, file: !2989, line: 252, baseType: !6, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2988, file: !2989, line: 253, baseType: !6, size: 64, offset: 448)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2988, file: !2989, line: 254, baseType: !6, size: 64, offset: 512)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2988, file: !2989, line: 256, baseType: !6, size: 64, offset: 576)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2988, file: !2989, line: 257, baseType: !6, size: 64, offset: 640)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2988, file: !2989, line: 258, baseType: !6, size: 64, offset: 704)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2988, file: !2989, line: 260, baseType: !3004, size: 64, offset: 768)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2989, line: 156, size: 192, elements: !3006)
!3006 = !{!3007, !3008, !3010}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3005, file: !2989, line: 157, baseType: !3004, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3005, file: !2989, line: 158, baseType: !3009, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3005, file: !2989, line: 162, baseType: !47, size: 32, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2988, file: !2989, line: 262, baseType: !3009, size: 64, offset: 832)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2988, file: !2989, line: 264, baseType: !47, size: 32, offset: 896)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2988, file: !2989, line: 268, baseType: !47, size: 32, offset: 928)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2988, file: !2989, line: 270, baseType: !3015, size: 64, offset: 960)
!3015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3016, line: 140, baseType: !3017)
!3016 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3017 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2988, file: !2989, line: 274, baseType: !131, size: 16, offset: 1024)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2988, file: !2989, line: 275, baseType: !3020, size: 8, offset: 1040)
!3020 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2988, file: !2989, line: 276, baseType: !3022, size: 8, offset: 1048)
!3022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !3023)
!3023 = !{!3024}
!3024 = !DISubrange(count: 1)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2988, file: !2989, line: 280, baseType: !3026, size: 64, offset: 1088)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2989, line: 150, baseType: null)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2988, file: !2989, line: 289, baseType: !3029, size: 64, offset: 1152)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3016, line: 141, baseType: !3017)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2988, file: !2989, line: 297, baseType: !8, size: 64, offset: 1216)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2988, file: !2989, line: 298, baseType: !8, size: 64, offset: 1280)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2988, file: !2989, line: 299, baseType: !8, size: 64, offset: 1344)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2988, file: !2989, line: 300, baseType: !8, size: 64, offset: 1408)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2988, file: !2989, line: 302, baseType: !9, size: 64, offset: 1472)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2988, file: !2989, line: 303, baseType: !47, size: 32, offset: 1536)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2988, file: !2989, line: 305, baseType: !3037, size: 160, offset: 1568)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !3038)
!3038 = !{!3039}
!3039 = !DISubrange(count: 20)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047}
!3042 = !DILocalVariable(name: "stream", arg: 1, scope: !2982, file: !543, line: 62, type: !2985)
!3043 = !DILocalVariable(name: "command_name", arg: 2, scope: !2982, file: !543, line: 63, type: !17)
!3044 = !DILocalVariable(name: "package", arg: 3, scope: !2982, file: !543, line: 63, type: !17)
!3045 = !DILocalVariable(name: "version", arg: 4, scope: !2982, file: !543, line: 64, type: !17)
!3046 = !DILocalVariable(name: "authors", arg: 5, scope: !2982, file: !543, line: 65, type: !3040)
!3047 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2982, file: !543, line: 65, type: !9)
!3048 = !DILocation(line: 62, column: 24, scope: !2982)
!3049 = !DILocation(line: 63, column: 30, scope: !2982)
!3050 = !DILocation(line: 63, column: 56, scope: !2982)
!3051 = !DILocation(line: 64, column: 30, scope: !2982)
!3052 = !DILocation(line: 65, column: 39, scope: !2982)
!3053 = !DILocation(line: 65, column: 55, scope: !2982)
!3054 = !DILocation(line: 67, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2982, file: !543, line: 67, column: 7)
!3056 = !DILocation(line: 67, column: 7, scope: !2982)
!3057 = !DILocation(line: 68, column: 5, scope: !3055)
!3058 = !DILocation(line: 70, column: 5, scope: !3055)
!3059 = !DILocation(line: 84, column: 3, scope: !2982)
!3060 = !DILocation(line: 84, column: 3, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !2982, file: !543, discriminator: 1)
!3062 = !DILocation(line: 86, column: 3, scope: !2982)
!3063 = !DILocation(line: 86, column: 3, scope: !3061)
!3064 = !DILocation(line: 95, column: 3, scope: !2982)
!3065 = !DILocation(line: 99, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2982, file: !543, line: 96, column: 5)
!3067 = !DILocation(line: 102, column: 7, scope: !3066)
!3068 = !DILocation(line: 102, column: 7, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !3066, file: !543, discriminator: 1)
!3070 = !DILocation(line: 103, column: 7, scope: !3066)
!3071 = !DILocation(line: 106, column: 7, scope: !3066)
!3072 = !DILocation(line: 106, column: 7, scope: !3069)
!3073 = !DILocation(line: 107, column: 7, scope: !3066)
!3074 = !DILocation(line: 110, column: 7, scope: !3066)
!3075 = !DILocation(line: 110, column: 7, scope: !3069)
!3076 = !DILocation(line: 112, column: 7, scope: !3066)
!3077 = !DILocation(line: 117, column: 7, scope: !3066)
!3078 = !DILocation(line: 117, column: 7, scope: !3069)
!3079 = !DILocation(line: 119, column: 7, scope: !3066)
!3080 = !DILocation(line: 124, column: 7, scope: !3066)
!3081 = !DILocation(line: 124, column: 7, scope: !3069)
!3082 = !DILocation(line: 126, column: 7, scope: !3066)
!3083 = !DILocation(line: 131, column: 7, scope: !3066)
!3084 = !DILocation(line: 131, column: 7, scope: !3069)
!3085 = !DILocation(line: 134, column: 7, scope: !3066)
!3086 = !DILocation(line: 139, column: 7, scope: !3066)
!3087 = !DILocation(line: 139, column: 7, scope: !3069)
!3088 = !DILocation(line: 142, column: 7, scope: !3066)
!3089 = !DILocation(line: 147, column: 7, scope: !3066)
!3090 = !DILocation(line: 147, column: 7, scope: !3069)
!3091 = !DILocation(line: 151, column: 7, scope: !3066)
!3092 = !DILocation(line: 156, column: 7, scope: !3066)
!3093 = !DILocation(line: 156, column: 7, scope: !3069)
!3094 = !DILocation(line: 160, column: 7, scope: !3066)
!3095 = !DILocation(line: 167, column: 7, scope: !3066)
!3096 = !DILocation(line: 167, column: 7, scope: !3069)
!3097 = !DILocation(line: 171, column: 7, scope: !3066)
!3098 = !DILocation(line: 173, column: 1, scope: !2982)
!3099 = distinct !DISubprogram(name: "version_etc_ar", scope: !543, file: !543, line: 180, type: !3100, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !2985, !17, !17, !17, !3040}
!3102 = !{!3103, !3104, !3105, !3106, !3107, !3108}
!3103 = !DILocalVariable(name: "stream", arg: 1, scope: !3099, file: !543, line: 180, type: !2985)
!3104 = !DILocalVariable(name: "command_name", arg: 2, scope: !3099, file: !543, line: 181, type: !17)
!3105 = !DILocalVariable(name: "package", arg: 3, scope: !3099, file: !543, line: 181, type: !17)
!3106 = !DILocalVariable(name: "version", arg: 4, scope: !3099, file: !543, line: 182, type: !17)
!3107 = !DILocalVariable(name: "authors", arg: 5, scope: !3099, file: !543, line: 182, type: !3040)
!3108 = !DILocalVariable(name: "n_authors", scope: !3099, file: !543, line: 184, type: !9)
!3109 = !DILocation(line: 180, column: 23, scope: !3099)
!3110 = !DILocation(line: 181, column: 29, scope: !3099)
!3111 = !DILocation(line: 181, column: 55, scope: !3099)
!3112 = !DILocation(line: 182, column: 29, scope: !3099)
!3113 = !DILocation(line: 182, column: 59, scope: !3099)
!3114 = !DILocation(line: 184, column: 10, scope: !3099)
!3115 = !DILocation(line: 186, column: 8, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3099, file: !543, line: 186, column: 3)
!3117 = !DILocation(line: 186, column: 23, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3119, file: !543, discriminator: 1)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !543, line: 186, column: 3)
!3120 = !DILocation(line: 186, column: 3, scope: !3121)
!3121 = !DILexicalBlockFile(scope: !3116, file: !543, discriminator: 1)
!3122 = !DILocation(line: 186, column: 52, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3119, file: !543, discriminator: 3)
!3124 = distinct !{!3124, !3125, !3126}
!3125 = !DILocation(line: 186, column: 3, scope: !3116)
!3126 = !DILocation(line: 187, column: 5, scope: !3116)
!3127 = !DILocation(line: 188, column: 3, scope: !3099)
!3128 = !DILocation(line: 189, column: 1, scope: !3099)
!3129 = distinct !DISubprogram(name: "version_etc_va", scope: !543, file: !543, line: 196, type: !3130, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !3139)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !2985, !17, !17, !17, !3132}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !540, line: 189, size: 192, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3138}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3133, file: !540, line: 189, baseType: !148, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3133, file: !540, line: 189, baseType: !148, size: 32, offset: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3133, file: !540, line: 189, baseType: !8, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3133, file: !540, line: 189, baseType: !8, size: 64, offset: 128)
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146}
!3140 = !DILocalVariable(name: "stream", arg: 1, scope: !3129, file: !543, line: 196, type: !2985)
!3141 = !DILocalVariable(name: "command_name", arg: 2, scope: !3129, file: !543, line: 197, type: !17)
!3142 = !DILocalVariable(name: "package", arg: 3, scope: !3129, file: !543, line: 197, type: !17)
!3143 = !DILocalVariable(name: "version", arg: 4, scope: !3129, file: !543, line: 198, type: !17)
!3144 = !DILocalVariable(name: "authors", arg: 5, scope: !3129, file: !543, line: 198, type: !3132)
!3145 = !DILocalVariable(name: "n_authors", scope: !3129, file: !543, line: 200, type: !9)
!3146 = !DILocalVariable(name: "authtab", scope: !3129, file: !543, line: 201, type: !3147)
!3147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !138)
!3148 = !DILocation(line: 196, column: 23, scope: !3129)
!3149 = !DILocation(line: 197, column: 29, scope: !3129)
!3150 = !DILocation(line: 197, column: 55, scope: !3129)
!3151 = !DILocation(line: 198, column: 29, scope: !3129)
!3152 = !DILocation(line: 198, column: 46, scope: !3129)
!3153 = !DILocation(line: 201, column: 3, scope: !3129)
!3154 = !DILocation(line: 201, column: 15, scope: !3129)
!3155 = !DILocation(line: 200, column: 10, scope: !3129)
!3156 = !DILocation(line: 205, column: 35, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3158, file: !543, discriminator: 1)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !543, line: 203, column: 3)
!3159 = distinct !DILexicalBlock(scope: !3129, file: !543, line: 203, column: 3)
!3160 = !DILocation(line: 205, column: 35, scope: !3161)
!3161 = !DILexicalBlockFile(scope: !3158, file: !543, discriminator: 2)
!3162 = !DILocation(line: 205, column: 35, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !3158, file: !543, discriminator: 3)
!3164 = !DILocation(line: 205, column: 35, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3158, file: !543, discriminator: 4)
!3166 = !DILocation(line: 205, column: 14, scope: !3165)
!3167 = !DILocation(line: 205, column: 33, scope: !3165)
!3168 = !DILocation(line: 205, column: 67, scope: !3165)
!3169 = !DILocation(line: 203, column: 3, scope: !3170)
!3170 = !DILexicalBlockFile(scope: !3159, file: !543, discriminator: 1)
!3171 = !DILocation(line: 208, column: 3, scope: !3129)
!3172 = !DILocation(line: 210, column: 1, scope: !3129)
!3173 = distinct !DISubprogram(name: "version_etc", scope: !543, file: !543, line: 227, type: !3174, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !2985, !17, !17, !17, null}
!3176 = !{!3177, !3178, !3179, !3180, !3181}
!3177 = !DILocalVariable(name: "stream", arg: 1, scope: !3173, file: !543, line: 227, type: !2985)
!3178 = !DILocalVariable(name: "command_name", arg: 2, scope: !3173, file: !543, line: 228, type: !17)
!3179 = !DILocalVariable(name: "package", arg: 3, scope: !3173, file: !543, line: 228, type: !17)
!3180 = !DILocalVariable(name: "version", arg: 4, scope: !3173, file: !543, line: 229, type: !17)
!3181 = !DILocalVariable(name: "authors", scope: !3173, file: !543, line: 231, type: !3182)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2987, line: 80, baseType: !3183)
!3183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3184, line: 50, baseType: !3185)
!3184 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !540, line: 231, baseType: !3186)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3133, size: 192, elements: !3023)
!3187 = !DILocation(line: 227, column: 20, scope: !3173)
!3188 = !DILocation(line: 228, column: 26, scope: !3173)
!3189 = !DILocation(line: 228, column: 52, scope: !3173)
!3190 = !DILocation(line: 229, column: 26, scope: !3173)
!3191 = !DILocation(line: 231, column: 3, scope: !3173)
!3192 = !DILocation(line: 231, column: 11, scope: !3173)
!3193 = !DILocation(line: 233, column: 3, scope: !3173)
!3194 = !DILocation(line: 234, column: 3, scope: !3173)
!3195 = !DILocation(line: 235, column: 3, scope: !3173)
!3196 = !DILocation(line: 236, column: 1, scope: !3173)
!3197 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !543, file: !543, line: 239, type: !618, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !4)
!3198 = !DILocation(line: 245, column: 3, scope: !3197)
!3199 = !DILocation(line: 245, column: 3, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3197, file: !543, discriminator: 1)
!3201 = !DILocation(line: 251, column: 3, scope: !3197)
!3202 = !DILocation(line: 251, column: 3, scope: !3200)
!3203 = !DILocation(line: 256, column: 3, scope: !3197)
!3204 = !DILocation(line: 256, column: 3, scope: !3200)
!3205 = !DILocation(line: 258, column: 1, scope: !3197)
!3206 = distinct !DISubprogram(name: "xnmalloc", scope: !551, file: !551, line: 105, type: !3207, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!8, !9, !9}
!3209 = !{!3210, !3211}
!3210 = !DILocalVariable(name: "n", arg: 1, scope: !3206, file: !551, line: 105, type: !9)
!3211 = !DILocalVariable(name: "s", arg: 2, scope: !3206, file: !551, line: 105, type: !9)
!3212 = !DILocation(line: 105, column: 18, scope: !3206)
!3213 = !DILocation(line: 105, column: 28, scope: !3206)
!3214 = !DILocation(line: 107, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3206, file: !551, line: 107, column: 7)
!3216 = !DILocation(line: 107, column: 7, scope: !3206)
!3217 = !DILocation(line: 108, column: 5, scope: !3215)
!3218 = !DILocation(line: 109, column: 21, scope: !3206)
!3219 = !DILocalVariable(name: "n", arg: 1, scope: !3220, file: !3221, line: 39, type: !9)
!3220 = distinct !DISubprogram(name: "xmalloc", scope: !3221, file: !3221, line: 39, type: !3222, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3224)
!3221 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!8, !9}
!3224 = !{!3219, !3225}
!3225 = !DILocalVariable(name: "p", scope: !3220, file: !3221, line: 41, type: !8)
!3226 = !DILocation(line: 39, column: 17, scope: !3220, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 109, column: 10, scope: !3206)
!3228 = !DILocation(line: 41, column: 13, scope: !3220, inlinedAt: !3227)
!3229 = !DILocation(line: 41, column: 9, scope: !3220, inlinedAt: !3227)
!3230 = !DILocation(line: 42, column: 8, scope: !3231, inlinedAt: !3227)
!3231 = distinct !DILexicalBlock(scope: !3220, file: !3221, line: 42, column: 7)
!3232 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3227)
!3233 = !DILexicalBlockFile(scope: !3231, file: !3221, discriminator: 1)
!3234 = !DILocation(line: 42, column: 10, scope: !3231, inlinedAt: !3227)
!3235 = !DILocation(line: 43, column: 5, scope: !3231, inlinedAt: !3227)
!3236 = !DILocation(line: 109, column: 3, scope: !3206)
!3237 = !DILocation(line: 39, column: 17, scope: !3220)
!3238 = !DILocation(line: 41, column: 13, scope: !3220)
!3239 = !DILocation(line: 41, column: 9, scope: !3220)
!3240 = !DILocation(line: 42, column: 8, scope: !3231)
!3241 = !DILocation(line: 42, column: 15, scope: !3233)
!3242 = !DILocation(line: 42, column: 10, scope: !3231)
!3243 = !DILocation(line: 43, column: 5, scope: !3231)
!3244 = !DILocation(line: 44, column: 3, scope: !3220)
!3245 = distinct !DISubprogram(name: "xnrealloc", scope: !551, file: !551, line: 118, type: !3246, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!8, !8, !9, !9}
!3248 = !{!3249, !3250, !3251}
!3249 = !DILocalVariable(name: "p", arg: 1, scope: !3245, file: !551, line: 118, type: !8)
!3250 = !DILocalVariable(name: "n", arg: 2, scope: !3245, file: !551, line: 118, type: !9)
!3251 = !DILocalVariable(name: "s", arg: 3, scope: !3245, file: !551, line: 118, type: !9)
!3252 = !DILocation(line: 118, column: 18, scope: !3245)
!3253 = !DILocation(line: 118, column: 28, scope: !3245)
!3254 = !DILocation(line: 118, column: 38, scope: !3245)
!3255 = !DILocation(line: 120, column: 7, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3245, file: !551, line: 120, column: 7)
!3257 = !DILocation(line: 120, column: 7, scope: !3245)
!3258 = !DILocation(line: 121, column: 5, scope: !3256)
!3259 = !DILocation(line: 122, column: 25, scope: !3245)
!3260 = !DILocalVariable(name: "p", arg: 1, scope: !3261, file: !3221, line: 51, type: !8)
!3261 = distinct !DISubprogram(name: "xrealloc", scope: !3221, file: !3221, line: 51, type: !3262, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!8, !8, !9}
!3264 = !{!3260, !3265}
!3265 = !DILocalVariable(name: "n", arg: 2, scope: !3261, file: !3221, line: 51, type: !9)
!3266 = !DILocation(line: 51, column: 17, scope: !3261, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 122, column: 10, scope: !3245)
!3268 = !DILocation(line: 51, column: 27, scope: !3261, inlinedAt: !3267)
!3269 = !DILocation(line: 53, column: 8, scope: !3270, inlinedAt: !3267)
!3270 = distinct !DILexicalBlock(scope: !3261, file: !3221, line: 53, column: 7)
!3271 = !DILocation(line: 53, column: 13, scope: !3272, inlinedAt: !3267)
!3272 = !DILexicalBlockFile(scope: !3270, file: !3221, discriminator: 1)
!3273 = !DILocation(line: 53, column: 10, scope: !3270, inlinedAt: !3267)
!3274 = !DILocation(line: 57, column: 7, scope: !3275, inlinedAt: !3267)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !3221, line: 54, column: 5)
!3276 = !DILocation(line: 58, column: 7, scope: !3275, inlinedAt: !3267)
!3277 = !DILocation(line: 61, column: 7, scope: !3261, inlinedAt: !3267)
!3278 = !DILocation(line: 62, column: 8, scope: !3279, inlinedAt: !3267)
!3279 = distinct !DILexicalBlock(scope: !3261, file: !3221, line: 62, column: 7)
!3280 = !DILocation(line: 62, column: 13, scope: !3281, inlinedAt: !3267)
!3281 = !DILexicalBlockFile(scope: !3279, file: !3221, discriminator: 1)
!3282 = !DILocation(line: 62, column: 10, scope: !3279, inlinedAt: !3267)
!3283 = !DILocation(line: 63, column: 5, scope: !3279, inlinedAt: !3267)
!3284 = !DILocation(line: 122, column: 3, scope: !3245)
!3285 = !DILocation(line: 51, column: 17, scope: !3261)
!3286 = !DILocation(line: 51, column: 27, scope: !3261)
!3287 = !DILocation(line: 53, column: 8, scope: !3270)
!3288 = !DILocation(line: 53, column: 13, scope: !3272)
!3289 = !DILocation(line: 53, column: 10, scope: !3270)
!3290 = !DILocation(line: 57, column: 7, scope: !3275)
!3291 = !DILocation(line: 58, column: 7, scope: !3275)
!3292 = !DILocation(line: 61, column: 7, scope: !3261)
!3293 = !DILocation(line: 62, column: 8, scope: !3279)
!3294 = !DILocation(line: 62, column: 13, scope: !3281)
!3295 = !DILocation(line: 62, column: 10, scope: !3279)
!3296 = !DILocation(line: 63, column: 5, scope: !3279)
!3297 = !DILocation(line: 65, column: 1, scope: !3261)
!3298 = !DILocation(line: 180, column: 19, scope: !552)
!3299 = !DILocation(line: 180, column: 30, scope: !552)
!3300 = !DILocation(line: 180, column: 41, scope: !552)
!3301 = !DILocation(line: 182, column: 14, scope: !552)
!3302 = !DILocation(line: 182, column: 10, scope: !552)
!3303 = !DILocation(line: 184, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !552, file: !551, line: 184, column: 7)
!3305 = !DILocation(line: 184, column: 7, scope: !552)
!3306 = !DILocation(line: 186, column: 13, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !551, line: 186, column: 11)
!3308 = distinct !DILexicalBlock(scope: !3304, file: !551, line: 185, column: 5)
!3309 = !DILocation(line: 186, column: 11, scope: !3308)
!3310 = !DILocation(line: 194, column: 30, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3307, file: !551, line: 187, column: 9)
!3312 = !DILocation(line: 195, column: 16, scope: !3311)
!3313 = !DILocation(line: 195, column: 13, scope: !3311)
!3314 = !DILocation(line: 196, column: 9, scope: !3311)
!3315 = !DILocation(line: 204, column: 69, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !551, line: 204, column: 11)
!3317 = distinct !DILexicalBlock(scope: !3304, file: !551, line: 199, column: 5)
!3318 = !DILocation(line: 205, column: 11, scope: !3316)
!3319 = !DILocation(line: 204, column: 11, scope: !3317)
!3320 = !DILocation(line: 206, column: 9, scope: !3316)
!3321 = !DILocation(line: 210, column: 7, scope: !552)
!3322 = !DILocation(line: 211, column: 25, scope: !552)
!3323 = !DILocation(line: 51, column: 17, scope: !3261, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 211, column: 10, scope: !552)
!3325 = !DILocation(line: 51, column: 27, scope: !3261, inlinedAt: !3324)
!3326 = !DILocation(line: 53, column: 10, scope: !3270, inlinedAt: !3324)
!3327 = !DILocation(line: 207, column: 14, scope: !3317)
!3328 = !DILocation(line: 207, column: 18, scope: !3317)
!3329 = !DILocation(line: 207, column: 9, scope: !3317)
!3330 = !DILocation(line: 53, column: 8, scope: !3270, inlinedAt: !3324)
!3331 = !DILocation(line: 57, column: 7, scope: !3275, inlinedAt: !3324)
!3332 = !DILocation(line: 58, column: 7, scope: !3275, inlinedAt: !3324)
!3333 = !DILocation(line: 61, column: 7, scope: !3261, inlinedAt: !3324)
!3334 = !DILocation(line: 62, column: 8, scope: !3279, inlinedAt: !3324)
!3335 = !DILocation(line: 62, column: 13, scope: !3281, inlinedAt: !3324)
!3336 = !DILocation(line: 62, column: 10, scope: !3279, inlinedAt: !3324)
!3337 = !DILocation(line: 63, column: 5, scope: !3279, inlinedAt: !3324)
!3338 = !DILocation(line: 211, column: 3, scope: !552)
!3339 = distinct !DISubprogram(name: "xcharalloc", scope: !551, file: !551, line: 220, type: !2257, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3340)
!3340 = !{!3341}
!3341 = !DILocalVariable(name: "n", arg: 1, scope: !3339, file: !551, line: 220, type: !9)
!3342 = !DILocation(line: 220, column: 20, scope: !3339)
!3343 = !DILocation(line: 39, column: 17, scope: !3220, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 222, column: 10, scope: !3339)
!3345 = !DILocation(line: 41, column: 13, scope: !3220, inlinedAt: !3344)
!3346 = !DILocation(line: 41, column: 9, scope: !3220, inlinedAt: !3344)
!3347 = !DILocation(line: 42, column: 8, scope: !3231, inlinedAt: !3344)
!3348 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3344)
!3349 = !DILocation(line: 42, column: 10, scope: !3231, inlinedAt: !3344)
!3350 = !DILocation(line: 43, column: 5, scope: !3231, inlinedAt: !3344)
!3351 = !DILocation(line: 222, column: 3, scope: !3339)
!3352 = distinct !DISubprogram(name: "x2realloc", scope: !3221, file: !3221, line: 74, type: !3353, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!8, !8, !555}
!3355 = !{!3356, !3357}
!3356 = !DILocalVariable(name: "p", arg: 1, scope: !3352, file: !3221, line: 74, type: !8)
!3357 = !DILocalVariable(name: "pn", arg: 2, scope: !3352, file: !3221, line: 74, type: !555)
!3358 = !DILocation(line: 74, column: 18, scope: !3352)
!3359 = !DILocation(line: 74, column: 29, scope: !3352)
!3360 = !DILocation(line: 180, column: 19, scope: !552, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 76, column: 10, scope: !3352)
!3362 = !DILocation(line: 180, column: 30, scope: !552, inlinedAt: !3361)
!3363 = !DILocation(line: 180, column: 41, scope: !552, inlinedAt: !3361)
!3364 = !DILocation(line: 182, column: 14, scope: !552, inlinedAt: !3361)
!3365 = !DILocation(line: 182, column: 10, scope: !552, inlinedAt: !3361)
!3366 = !DILocation(line: 184, column: 9, scope: !3304, inlinedAt: !3361)
!3367 = !DILocation(line: 184, column: 7, scope: !552, inlinedAt: !3361)
!3368 = !DILocation(line: 186, column: 13, scope: !3307, inlinedAt: !3361)
!3369 = !DILocation(line: 186, column: 11, scope: !3308, inlinedAt: !3361)
!3370 = !DILocation(line: 210, column: 7, scope: !552, inlinedAt: !3361)
!3371 = !DILocation(line: 51, column: 17, scope: !3261, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 211, column: 10, scope: !552, inlinedAt: !3361)
!3373 = !DILocation(line: 51, column: 27, scope: !3261, inlinedAt: !3372)
!3374 = !DILocation(line: 53, column: 10, scope: !3270, inlinedAt: !3372)
!3375 = !DILocation(line: 205, column: 11, scope: !3316, inlinedAt: !3361)
!3376 = !DILocation(line: 204, column: 11, scope: !3317, inlinedAt: !3361)
!3377 = !DILocation(line: 206, column: 9, scope: !3316, inlinedAt: !3361)
!3378 = !DILocation(line: 207, column: 14, scope: !3317, inlinedAt: !3361)
!3379 = !DILocation(line: 207, column: 18, scope: !3317, inlinedAt: !3361)
!3380 = !DILocation(line: 207, column: 9, scope: !3317, inlinedAt: !3361)
!3381 = !DILocation(line: 53, column: 8, scope: !3270, inlinedAt: !3372)
!3382 = !DILocation(line: 57, column: 7, scope: !3275, inlinedAt: !3372)
!3383 = !DILocation(line: 58, column: 7, scope: !3275, inlinedAt: !3372)
!3384 = !DILocation(line: 61, column: 7, scope: !3261, inlinedAt: !3372)
!3385 = !DILocation(line: 62, column: 8, scope: !3279, inlinedAt: !3372)
!3386 = !DILocation(line: 62, column: 13, scope: !3281, inlinedAt: !3372)
!3387 = !DILocation(line: 62, column: 10, scope: !3279, inlinedAt: !3372)
!3388 = !DILocation(line: 63, column: 5, scope: !3279, inlinedAt: !3372)
!3389 = !DILocation(line: 76, column: 3, scope: !3352)
!3390 = distinct !DISubprogram(name: "xzalloc", scope: !3221, file: !3221, line: 84, type: !3222, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3391)
!3391 = !{!3392}
!3392 = !DILocalVariable(name: "s", arg: 1, scope: !3390, file: !3221, line: 84, type: !9)
!3393 = !DILocation(line: 84, column: 17, scope: !3390)
!3394 = !DILocation(line: 39, column: 17, scope: !3220, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 86, column: 18, scope: !3390)
!3396 = !DILocation(line: 41, column: 13, scope: !3220, inlinedAt: !3395)
!3397 = !DILocation(line: 41, column: 9, scope: !3220, inlinedAt: !3395)
!3398 = !DILocation(line: 42, column: 8, scope: !3231, inlinedAt: !3395)
!3399 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3395)
!3400 = !DILocation(line: 42, column: 10, scope: !3231, inlinedAt: !3395)
!3401 = !DILocation(line: 43, column: 5, scope: !3231, inlinedAt: !3395)
!3402 = !DILocation(line: 86, column: 10, scope: !3390)
!3403 = !DILocation(line: 86, column: 3, scope: !3390)
!3404 = distinct !DISubprogram(name: "xcalloc", scope: !3221, file: !3221, line: 93, type: !3207, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3405)
!3405 = !{!3406, !3407, !3408}
!3406 = !DILocalVariable(name: "n", arg: 1, scope: !3404, file: !3221, line: 93, type: !9)
!3407 = !DILocalVariable(name: "s", arg: 2, scope: !3404, file: !3221, line: 93, type: !9)
!3408 = !DILocalVariable(name: "p", scope: !3404, file: !3221, line: 95, type: !8)
!3409 = !DILocation(line: 93, column: 17, scope: !3404)
!3410 = !DILocation(line: 93, column: 27, scope: !3404)
!3411 = !DILocation(line: 100, column: 7, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3404, file: !3221, line: 100, column: 7)
!3413 = !DILocation(line: 101, column: 7, scope: !3412)
!3414 = !DILocation(line: 101, column: 18, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3412, file: !3221, discriminator: 1)
!3416 = !DILocation(line: 95, column: 9, scope: !3404)
!3417 = !DILocation(line: 101, column: 16, scope: !3415)
!3418 = !DILocation(line: 100, column: 7, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3404, file: !3221, discriminator: 1)
!3420 = !DILocation(line: 102, column: 5, scope: !3412)
!3421 = !DILocation(line: 103, column: 3, scope: !3404)
!3422 = distinct !DISubprogram(name: "xmemdup", scope: !3221, file: !3221, line: 111, type: !3423, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!8, !12, !9}
!3425 = !{!3426, !3427}
!3426 = !DILocalVariable(name: "p", arg: 1, scope: !3422, file: !3221, line: 111, type: !12)
!3427 = !DILocalVariable(name: "s", arg: 2, scope: !3422, file: !3221, line: 111, type: !9)
!3428 = !DILocation(line: 111, column: 22, scope: !3422)
!3429 = !DILocation(line: 111, column: 32, scope: !3422)
!3430 = !DILocation(line: 39, column: 17, scope: !3220, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 113, column: 18, scope: !3422)
!3432 = !DILocation(line: 41, column: 13, scope: !3220, inlinedAt: !3431)
!3433 = !DILocation(line: 41, column: 9, scope: !3220, inlinedAt: !3431)
!3434 = !DILocation(line: 42, column: 8, scope: !3231, inlinedAt: !3431)
!3435 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3431)
!3436 = !DILocation(line: 42, column: 10, scope: !3231, inlinedAt: !3431)
!3437 = !DILocation(line: 43, column: 5, scope: !3231, inlinedAt: !3431)
!3438 = !DILocation(line: 113, column: 10, scope: !3422)
!3439 = !DILocation(line: 113, column: 3, scope: !3422)
!3440 = distinct !DISubprogram(name: "xstrdup", scope: !3221, file: !3221, line: 119, type: !887, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3441)
!3441 = !{!3442}
!3442 = !DILocalVariable(name: "string", arg: 1, scope: !3440, file: !3221, line: 119, type: !17)
!3443 = !DILocation(line: 119, column: 22, scope: !3440)
!3444 = !DILocation(line: 121, column: 27, scope: !3440)
!3445 = !DILocation(line: 121, column: 43, scope: !3440)
!3446 = !DILocation(line: 111, column: 22, scope: !3422, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 121, column: 10, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3440, file: !3221, discriminator: 1)
!3449 = !DILocation(line: 111, column: 32, scope: !3422, inlinedAt: !3447)
!3450 = !DILocation(line: 39, column: 17, scope: !3220, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 113, column: 18, scope: !3422, inlinedAt: !3447)
!3452 = !DILocation(line: 41, column: 13, scope: !3220, inlinedAt: !3451)
!3453 = !DILocation(line: 41, column: 9, scope: !3220, inlinedAt: !3451)
!3454 = !DILocation(line: 42, column: 8, scope: !3231, inlinedAt: !3451)
!3455 = !DILocation(line: 42, column: 15, scope: !3233, inlinedAt: !3451)
!3456 = !DILocation(line: 42, column: 10, scope: !3231, inlinedAt: !3451)
!3457 = !DILocation(line: 43, column: 5, scope: !3231, inlinedAt: !3451)
!3458 = !DILocation(line: 113, column: 10, scope: !3422, inlinedAt: !3447)
!3459 = !DILocation(line: 121, column: 3, scope: !3440)
!3460 = distinct !DISubprogram(name: "xalloc_die", scope: !3461, file: !3461, line: 32, type: !618, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !564, variables: !4)
!3461 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3462 = !DILocation(line: 34, column: 10, scope: !3460)
!3463 = !DILocation(line: 34, column: 33, scope: !3460)
!3464 = !DILocation(line: 34, column: 3, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3460, file: !3461, discriminator: 1)
!3466 = !DILocation(line: 40, column: 3, scope: !3460)
!3467 = distinct !DISubprogram(name: "xstrndup", scope: !3468, file: !3468, line: 30, type: !2472, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3469)
!3468 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3469 = !{!3470, !3471, !3472}
!3470 = !DILocalVariable(name: "string", arg: 1, scope: !3467, file: !3468, line: 30, type: !17)
!3471 = !DILocalVariable(name: "n", arg: 2, scope: !3467, file: !3468, line: 30, type: !9)
!3472 = !DILocalVariable(name: "s", scope: !3467, file: !3468, line: 32, type: !6)
!3473 = !DILocation(line: 30, column: 23, scope: !3467)
!3474 = !DILocation(line: 30, column: 38, scope: !3467)
!3475 = !DILocation(line: 32, column: 13, scope: !3467)
!3476 = !DILocation(line: 32, column: 9, scope: !3467)
!3477 = !DILocation(line: 33, column: 9, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3467, file: !3468, line: 33, column: 7)
!3479 = !DILocation(line: 33, column: 7, scope: !3467)
!3480 = !DILocation(line: 34, column: 5, scope: !3478)
!3481 = !DILocation(line: 35, column: 3, scope: !3467)
!3482 = distinct !DISubprogram(name: "rpl_calloc", scope: !3483, file: !3483, line: 42, type: !3207, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3484)
!3483 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3484 = !{!3485, !3486, !3487, !3488}
!3485 = !DILocalVariable(name: "n", arg: 1, scope: !3482, file: !3483, line: 42, type: !9)
!3486 = !DILocalVariable(name: "s", arg: 2, scope: !3482, file: !3483, line: 42, type: !9)
!3487 = !DILocalVariable(name: "result", scope: !3482, file: !3483, line: 44, type: !8)
!3488 = !DILocalVariable(name: "bytes", scope: !3489, file: !3483, line: 56, type: !9)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !3483, line: 53, column: 5)
!3490 = distinct !DILexicalBlock(scope: !3482, file: !3483, line: 47, column: 7)
!3491 = !DILocation(line: 42, column: 20, scope: !3482)
!3492 = !DILocation(line: 42, column: 30, scope: !3482)
!3493 = !DILocation(line: 47, column: 9, scope: !3490)
!3494 = !DILocation(line: 47, column: 19, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3490, file: !3483, discriminator: 1)
!3496 = !DILocation(line: 47, column: 14, scope: !3490)
!3497 = !DILocation(line: 56, column: 24, scope: !3489)
!3498 = !DILocation(line: 56, column: 14, scope: !3489)
!3499 = !DILocation(line: 57, column: 17, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3489, file: !3483, line: 57, column: 11)
!3501 = !DILocation(line: 57, column: 21, scope: !3500)
!3502 = !DILocation(line: 57, column: 11, scope: !3489)
!3503 = !DILocation(line: 59, column: 11, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3500, file: !3483, line: 58, column: 9)
!3505 = !DILocation(line: 59, column: 17, scope: !3504)
!3506 = !DILocation(line: 65, column: 12, scope: !3482)
!3507 = !DILocation(line: 44, column: 9, scope: !3482)
!3508 = !DILocation(line: 72, column: 3, scope: !3482)
!3509 = !DILocation(line: 73, column: 1, scope: !3482)
!3510 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3511, file: !3511, line: 334, type: !3512, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3526)
!3511 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!9, !3514, !17, !9, !3515}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1228, line: 107, baseType: !3517)
!3517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1228, line: 95, baseType: !3518)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1228, line: 83, size: 64, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3518, file: !1228, line: 85, baseType: !47, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3518, file: !1228, line: 94, baseType: !3522, size: 32, offset: 32)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3518, file: !1228, line: 86, size: 32, elements: !3523)
!3523 = !{!3524, !3525}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3522, file: !1228, line: 89, baseType: !148, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3522, file: !1228, line: 93, baseType: !1238, size: 32)
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532, !3533}
!3527 = !DILocalVariable(name: "pwc", arg: 1, scope: !3510, file: !3511, line: 334, type: !3514)
!3528 = !DILocalVariable(name: "s", arg: 2, scope: !3510, file: !3511, line: 334, type: !17)
!3529 = !DILocalVariable(name: "n", arg: 3, scope: !3510, file: !3511, line: 334, type: !9)
!3530 = !DILocalVariable(name: "ps", arg: 4, scope: !3510, file: !3511, line: 334, type: !3515)
!3531 = !DILocalVariable(name: "ret", scope: !3510, file: !3511, line: 336, type: !9)
!3532 = !DILocalVariable(name: "wc", scope: !3510, file: !3511, line: 337, type: !1243)
!3533 = !DILocalVariable(name: "uc", scope: !3534, file: !3511, line: 398, type: !16)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3511, line: 397, column: 5)
!3535 = distinct !DILexicalBlock(scope: !3510, file: !3511, line: 396, column: 7)
!3536 = !DILocation(line: 334, column: 23, scope: !3510)
!3537 = !DILocation(line: 334, column: 40, scope: !3510)
!3538 = !DILocation(line: 334, column: 50, scope: !3510)
!3539 = !DILocation(line: 334, column: 64, scope: !3510)
!3540 = !DILocation(line: 337, column: 3, scope: !3510)
!3541 = !DILocation(line: 353, column: 9, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3510, file: !3511, line: 353, column: 7)
!3543 = !DILocation(line: 353, column: 7, scope: !3510)
!3544 = !DILocation(line: 388, column: 9, scope: !3510)
!3545 = !DILocation(line: 336, column: 10, scope: !3510)
!3546 = !DILocation(line: 396, column: 19, scope: !3535)
!3547 = !DILocation(line: 396, column: 31, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !3535, file: !3511, discriminator: 1)
!3549 = !DILocation(line: 396, column: 26, scope: !3535)
!3550 = !DILocation(line: 396, column: 41, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !3535, file: !3511, discriminator: 2)
!3552 = !DILocation(line: 396, column: 7, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !3510, file: !3511, discriminator: 2)
!3554 = !DILocation(line: 398, column: 26, scope: !3534)
!3555 = !DILocation(line: 398, column: 21, scope: !3534)
!3556 = !DILocation(line: 399, column: 14, scope: !3534)
!3557 = !DILocation(line: 399, column: 12, scope: !3534)
!3558 = !DILocation(line: 405, column: 1, scope: !3510)
!3559 = distinct !DISubprogram(name: "close_stream", scope: !3560, file: !3560, line: 56, type: !3561, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3603)
!3560 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!47, !3563}
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2987, line: 49, baseType: !3565)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2989, line: 241, size: 1728, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3565, file: !2989, line: 242, baseType: !47, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3565, file: !2989, line: 247, baseType: !6, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3565, file: !2989, line: 248, baseType: !6, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3565, file: !2989, line: 249, baseType: !6, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3565, file: !2989, line: 250, baseType: !6, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3565, file: !2989, line: 251, baseType: !6, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3565, file: !2989, line: 252, baseType: !6, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3565, file: !2989, line: 253, baseType: !6, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3565, file: !2989, line: 254, baseType: !6, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3565, file: !2989, line: 256, baseType: !6, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3565, file: !2989, line: 257, baseType: !6, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3565, file: !2989, line: 258, baseType: !6, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3565, file: !2989, line: 260, baseType: !3580, size: 64, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2989, line: 156, size: 192, elements: !3582)
!3582 = !{!3583, !3584, !3586}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3581, file: !2989, line: 157, baseType: !3580, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3581, file: !2989, line: 158, baseType: !3585, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3581, file: !2989, line: 162, baseType: !47, size: 32, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3565, file: !2989, line: 262, baseType: !3585, size: 64, offset: 832)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3565, file: !2989, line: 264, baseType: !47, size: 32, offset: 896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3565, file: !2989, line: 268, baseType: !47, size: 32, offset: 928)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3565, file: !2989, line: 270, baseType: !3015, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3565, file: !2989, line: 274, baseType: !131, size: 16, offset: 1024)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3565, file: !2989, line: 275, baseType: !3020, size: 8, offset: 1040)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3565, file: !2989, line: 276, baseType: !3022, size: 8, offset: 1048)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3565, file: !2989, line: 280, baseType: !3026, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3565, file: !2989, line: 289, baseType: !3029, size: 64, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3565, file: !2989, line: 297, baseType: !8, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3565, file: !2989, line: 298, baseType: !8, size: 64, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3565, file: !2989, line: 299, baseType: !8, size: 64, offset: 1344)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3565, file: !2989, line: 300, baseType: !8, size: 64, offset: 1408)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3565, file: !2989, line: 302, baseType: !9, size: 64, offset: 1472)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3565, file: !2989, line: 303, baseType: !47, size: 32, offset: 1536)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3565, file: !2989, line: 305, baseType: !3037, size: 160, offset: 1568)
!3603 = !{!3604, !3605, !3607, !3608}
!3604 = !DILocalVariable(name: "stream", arg: 1, scope: !3559, file: !3560, line: 56, type: !3563)
!3605 = !DILocalVariable(name: "some_pending", scope: !3559, file: !3560, line: 58, type: !3606)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!3607 = !DILocalVariable(name: "prev_fail", scope: !3559, file: !3560, line: 59, type: !3606)
!3608 = !DILocalVariable(name: "fclose_fail", scope: !3559, file: !3560, line: 60, type: !3606)
!3609 = !DILocation(line: 56, column: 21, scope: !3559)
!3610 = !DILocation(line: 58, column: 30, scope: !3559)
!3611 = !DILocalVariable(name: "__stream", arg: 1, scope: !3612, file: !810, line: 132, type: !3563)
!3612 = distinct !DISubprogram(name: "ferror_unlocked", scope: !810, file: !810, line: 132, type: !3561, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3613)
!3613 = !{!3611}
!3614 = !DILocation(line: 132, column: 1, scope: !3612, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 59, column: 27, scope: !3559)
!3616 = !DILocation(line: 134, column: 10, scope: !3612, inlinedAt: !3615)
!3617 = !{!818, !692, i64 0}
!3618 = !DILocation(line: 59, column: 43, scope: !3559)
!3619 = !DILocation(line: 60, column: 29, scope: !3559)
!3620 = !DILocation(line: 60, column: 45, scope: !3559)
!3621 = !DILocation(line: 70, column: 17, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3559, file: !3560, line: 70, column: 7)
!3623 = !DILocation(line: 70, column: 33, scope: !3624)
!3624 = !DILexicalBlockFile(scope: !3622, file: !3560, discriminator: 1)
!3625 = !DILocation(line: 70, column: 53, scope: !3626)
!3626 = !DILexicalBlockFile(scope: !3622, file: !3560, discriminator: 3)
!3627 = !DILocation(line: 70, column: 7, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !3559, file: !3560, discriminator: 3)
!3629 = !DILocation(line: 72, column: 11, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3622, file: !3560, line: 71, column: 5)
!3631 = !DILocation(line: 73, column: 9, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3630, file: !3560, line: 72, column: 11)
!3633 = !DILocation(line: 73, column: 15, scope: !3632)
!3634 = !DILocation(line: 78, column: 1, scope: !3559)
!3635 = distinct !DISubprogram(name: "hard_locale", scope: !3636, file: !3636, line: 38, type: !3637, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3639)
!3636 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!76, !47}
!3639 = !{!3640, !3641, !3642, !3643, !3650, !3651, !3653, !3654, !3656, !3657, !3659}
!3640 = !DILocalVariable(name: "category", arg: 1, scope: !3635, file: !3636, line: 38, type: !47)
!3641 = !DILocalVariable(name: "hard", scope: !3635, file: !3636, line: 40, type: !76)
!3642 = !DILocalVariable(name: "p", scope: !3635, file: !3636, line: 41, type: !17)
!3643 = !DILocalVariable(name: "__s1_len", scope: !3644, file: !3636, line: 47, type: !9)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !3636, line: 47, column: 15)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !3636, line: 47, column: 15)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !3636, line: 46, column: 9)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !3636, line: 45, column: 11)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !3636, line: 44, column: 5)
!3649 = distinct !DILexicalBlock(scope: !3635, file: !3636, line: 43, column: 7)
!3650 = !DILocalVariable(name: "__s2_len", scope: !3644, file: !3636, line: 47, type: !9)
!3651 = !DILocalVariable(name: "__s2", scope: !3652, file: !3636, line: 47, type: !14)
!3652 = distinct !DILexicalBlock(scope: !3644, file: !3636, line: 47, column: 15)
!3653 = !DILocalVariable(name: "__result", scope: !3652, file: !3636, line: 47, type: !47)
!3654 = !DILocalVariable(name: "__s1_len", scope: !3655, file: !3636, line: 47, type: !9)
!3655 = distinct !DILexicalBlock(scope: !3645, file: !3636, line: 47, column: 39)
!3656 = !DILocalVariable(name: "__s2_len", scope: !3655, file: !3636, line: 47, type: !9)
!3657 = !DILocalVariable(name: "__s2", scope: !3658, file: !3636, line: 47, type: !14)
!3658 = distinct !DILexicalBlock(scope: !3655, file: !3636, line: 47, column: 39)
!3659 = !DILocalVariable(name: "__result", scope: !3658, file: !3636, line: 47, type: !47)
!3660 = !DILocation(line: 38, column: 18, scope: !3635)
!3661 = !DILocation(line: 40, column: 8, scope: !3635)
!3662 = !DILocation(line: 41, column: 19, scope: !3635)
!3663 = !DILocation(line: 41, column: 15, scope: !3635)
!3664 = !DILocation(line: 43, column: 7, scope: !3649)
!3665 = !DILocation(line: 43, column: 7, scope: !3635)
!3666 = !DILocation(line: 47, column: 15, scope: !3644)
!3667 = !DILocation(line: 47, column: 15, scope: !3652)
!3668 = !DILocation(line: 47, column: 15, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !3652, file: !3636, discriminator: 2)
!3670 = !DILocation(line: 47, column: 15, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !3672, file: !3636, discriminator: 3)
!3672 = distinct !DILexicalBlock(scope: !3652, file: !3636, line: 47, column: 15)
!3673 = !DILocation(line: 47, column: 15, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !3672, file: !3636, discriminator: 2)
!3675 = !DILocation(line: 47, column: 15, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !3677, file: !3636, discriminator: 4)
!3677 = distinct !DILexicalBlock(scope: !3672, file: !3636, line: 47, column: 15)
!3678 = !DILocation(line: 47, column: 15, scope: !3679)
!3679 = !DILexicalBlockFile(scope: !3644, file: !3636, discriminator: 11)
!3680 = !DILocation(line: 47, column: 36, scope: !3681)
!3681 = !DILexicalBlockFile(scope: !3645, file: !3636, discriminator: 13)
!3682 = !DILocation(line: 47, column: 39, scope: !3655)
!3683 = !DILocation(line: 47, column: 39, scope: !3684)
!3684 = !DILexicalBlockFile(scope: !3655, file: !3636, discriminator: 26)
!3685 = !DILocation(line: 47, column: 59, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3645, file: !3636, discriminator: 27)
!3687 = !DILocation(line: 47, column: 15, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3646, file: !3636, discriminator: 27)
!3689 = !DILocation(line: 48, column: 13, scope: !3645)
!3690 = !DILocation(line: 71, column: 3, scope: !3635)
!3691 = distinct !DISubprogram(name: "locale_charset", scope: !530, file: !530, line: 393, type: !3692, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!17}
!3694 = !{!3695, !3696, !3697, !3702}
!3695 = !DILocalVariable(name: "codeset", scope: !3691, file: !530, line: 395, type: !17)
!3696 = !DILocalVariable(name: "aliases", scope: !3691, file: !530, line: 396, type: !17)
!3697 = !DILocalVariable(name: "__s1_len", scope: !3698, file: !530, line: 592, type: !9)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !530, line: 592, column: 9)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !530, line: 592, column: 9)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !530, line: 589, column: 3)
!3701 = distinct !DILexicalBlock(scope: !3691, file: !530, line: 589, column: 3)
!3702 = !DILocalVariable(name: "__s2_len", scope: !3698, file: !530, line: 592, type: !9)
!3703 = !DILocalVariable(name: "buf1", scope: !3704, file: !530, line: 196, type: !3771)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !530, line: 194, column: 21)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !530, line: 193, column: 19)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !530, line: 193, column: 19)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !530, line: 188, column: 17)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !530, line: 181, column: 19)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !530, line: 177, column: 13)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !530, line: 173, column: 15)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !530, line: 161, column: 9)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !530, line: 157, column: 11)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !530, line: 130, column: 5)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !530, line: 129, column: 7)
!3715 = distinct !DISubprogram(name: "get_charset_aliases", scope: !530, file: !530, line: 124, type: !3692, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3723, !3724, !3725, !3726, !3767, !3768, !3769, !3703, !3770, !3774, !3775, !3776}
!3717 = !DILocalVariable(name: "cp", scope: !3715, file: !530, line: 126, type: !17)
!3718 = !DILocalVariable(name: "dir", scope: !3713, file: !530, line: 132, type: !17)
!3719 = !DILocalVariable(name: "base", scope: !3713, file: !530, line: 133, type: !17)
!3720 = !DILocalVariable(name: "file_name", scope: !3713, file: !530, line: 134, type: !6)
!3721 = !DILocalVariable(name: "dir_len", scope: !3722, file: !530, line: 144, type: !9)
!3722 = distinct !DILexicalBlock(scope: !3713, file: !530, line: 143, column: 7)
!3723 = !DILocalVariable(name: "base_len", scope: !3722, file: !530, line: 145, type: !9)
!3724 = !DILocalVariable(name: "add_slash", scope: !3722, file: !530, line: 146, type: !47)
!3725 = !DILocalVariable(name: "fd", scope: !3711, file: !530, line: 162, type: !47)
!3726 = !DILocalVariable(name: "fp", scope: !3709, file: !530, line: 178, type: !3727)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2987, line: 49, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2989, line: 241, size: 1728, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3729, file: !2989, line: 242, baseType: !47, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3729, file: !2989, line: 247, baseType: !6, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3729, file: !2989, line: 248, baseType: !6, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3729, file: !2989, line: 249, baseType: !6, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3729, file: !2989, line: 250, baseType: !6, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3729, file: !2989, line: 251, baseType: !6, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3729, file: !2989, line: 252, baseType: !6, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3729, file: !2989, line: 253, baseType: !6, size: 64, offset: 448)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3729, file: !2989, line: 254, baseType: !6, size: 64, offset: 512)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3729, file: !2989, line: 256, baseType: !6, size: 64, offset: 576)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3729, file: !2989, line: 257, baseType: !6, size: 64, offset: 640)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3729, file: !2989, line: 258, baseType: !6, size: 64, offset: 704)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3729, file: !2989, line: 260, baseType: !3744, size: 64, offset: 768)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2989, line: 156, size: 192, elements: !3746)
!3746 = !{!3747, !3748, !3750}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3745, file: !2989, line: 157, baseType: !3744, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3745, file: !2989, line: 158, baseType: !3749, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3745, file: !2989, line: 162, baseType: !47, size: 32, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3729, file: !2989, line: 262, baseType: !3749, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3729, file: !2989, line: 264, baseType: !47, size: 32, offset: 896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3729, file: !2989, line: 268, baseType: !47, size: 32, offset: 928)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3729, file: !2989, line: 270, baseType: !3015, size: 64, offset: 960)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3729, file: !2989, line: 274, baseType: !131, size: 16, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3729, file: !2989, line: 275, baseType: !3020, size: 8, offset: 1040)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3729, file: !2989, line: 276, baseType: !3022, size: 8, offset: 1048)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3729, file: !2989, line: 280, baseType: !3026, size: 64, offset: 1088)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3729, file: !2989, line: 289, baseType: !3029, size: 64, offset: 1152)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3729, file: !2989, line: 297, baseType: !8, size: 64, offset: 1216)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3729, file: !2989, line: 298, baseType: !8, size: 64, offset: 1280)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3729, file: !2989, line: 299, baseType: !8, size: 64, offset: 1344)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3729, file: !2989, line: 300, baseType: !8, size: 64, offset: 1408)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3729, file: !2989, line: 302, baseType: !9, size: 64, offset: 1472)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3729, file: !2989, line: 303, baseType: !47, size: 32, offset: 1536)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3729, file: !2989, line: 305, baseType: !3037, size: 160, offset: 1568)
!3767 = !DILocalVariable(name: "res_ptr", scope: !3707, file: !530, line: 190, type: !6)
!3768 = !DILocalVariable(name: "res_size", scope: !3707, file: !530, line: 191, type: !9)
!3769 = !DILocalVariable(name: "c", scope: !3704, file: !530, line: 195, type: !47)
!3770 = !DILocalVariable(name: "buf2", scope: !3704, file: !530, line: 197, type: !3771)
!3771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !3772)
!3772 = !{!3773}
!3773 = !DISubrange(count: 51)
!3774 = !DILocalVariable(name: "l1", scope: !3704, file: !530, line: 198, type: !9)
!3775 = !DILocalVariable(name: "l2", scope: !3704, file: !530, line: 198, type: !9)
!3776 = !DILocalVariable(name: "old_res_ptr", scope: !3704, file: !530, line: 199, type: !6)
!3777 = !DILocation(line: 196, column: 28, scope: !3704, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 589, column: 18, scope: !3701)
!3779 = !DILocation(line: 197, column: 28, scope: !3704, inlinedAt: !3778)
!3780 = !DILocation(line: 403, column: 13, scope: !3691)
!3781 = !DILocation(line: 395, column: 15, scope: !3691)
!3782 = !DILocation(line: 584, column: 15, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3691, file: !530, line: 584, column: 7)
!3784 = !DILocation(line: 584, column: 7, scope: !3691)
!3785 = !DILocation(line: 128, column: 8, scope: !3715, inlinedAt: !3778)
!3786 = !DILocation(line: 126, column: 15, scope: !3715, inlinedAt: !3778)
!3787 = !DILocation(line: 129, column: 10, scope: !3714, inlinedAt: !3778)
!3788 = !DILocation(line: 129, column: 7, scope: !3715, inlinedAt: !3778)
!3789 = !DILocation(line: 138, column: 13, scope: !3713, inlinedAt: !3778)
!3790 = !DILocation(line: 132, column: 19, scope: !3713, inlinedAt: !3778)
!3791 = !DILocation(line: 139, column: 15, scope: !3792, inlinedAt: !3778)
!3792 = distinct !DILexicalBlock(scope: !3713, file: !530, line: 139, column: 11)
!3793 = !DILocation(line: 139, column: 23, scope: !3792, inlinedAt: !3778)
!3794 = !DILocation(line: 139, column: 26, scope: !3795, inlinedAt: !3778)
!3795 = !DILexicalBlockFile(scope: !3792, file: !530, discriminator: 1)
!3796 = !DILocation(line: 139, column: 33, scope: !3795, inlinedAt: !3778)
!3797 = !DILocation(line: 139, column: 11, scope: !3798, inlinedAt: !3778)
!3798 = !DILexicalBlockFile(scope: !3713, file: !530, discriminator: 1)
!3799 = !DILocation(line: 140, column: 9, scope: !3792, inlinedAt: !3778)
!3800 = !DILocation(line: 144, column: 26, scope: !3722, inlinedAt: !3778)
!3801 = !DILocation(line: 144, column: 16, scope: !3722, inlinedAt: !3778)
!3802 = !DILocation(line: 145, column: 16, scope: !3722, inlinedAt: !3778)
!3803 = !DILocation(line: 146, column: 34, scope: !3722, inlinedAt: !3778)
!3804 = !DILocation(line: 146, column: 38, scope: !3722, inlinedAt: !3778)
!3805 = !DILocation(line: 146, column: 42, scope: !3806, inlinedAt: !3778)
!3806 = !DILexicalBlockFile(scope: !3722, file: !530, discriminator: 1)
!3807 = !DILocation(line: 146, column: 41, scope: !3806, inlinedAt: !3778)
!3808 = !DILocation(line: 147, column: 48, scope: !3722, inlinedAt: !3778)
!3809 = !DILocation(line: 147, column: 46, scope: !3722, inlinedAt: !3778)
!3810 = !DILocation(line: 147, column: 69, scope: !3722, inlinedAt: !3778)
!3811 = !DILocation(line: 147, column: 30, scope: !3722, inlinedAt: !3778)
!3812 = !DILocation(line: 134, column: 13, scope: !3713, inlinedAt: !3778)
!3813 = !DILocation(line: 148, column: 13, scope: !3722, inlinedAt: !3778)
!3814 = !DILocation(line: 150, column: 13, scope: !3815, inlinedAt: !3778)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !530, line: 149, column: 11)
!3816 = distinct !DILexicalBlock(scope: !3722, file: !530, line: 148, column: 13)
!3817 = !DILocation(line: 151, column: 17, scope: !3815, inlinedAt: !3778)
!3818 = !DILocation(line: 152, column: 34, scope: !3819, inlinedAt: !3778)
!3819 = distinct !DILexicalBlock(scope: !3815, file: !530, line: 151, column: 17)
!3820 = !DILocation(line: 153, column: 41, scope: !3815, inlinedAt: !3778)
!3821 = !DILocation(line: 153, column: 13, scope: !3815, inlinedAt: !3778)
!3822 = !DILocation(line: 157, column: 11, scope: !3713, inlinedAt: !3778)
!3823 = !DILocation(line: 171, column: 16, scope: !3711, inlinedAt: !3778)
!3824 = !DILocation(line: 162, column: 15, scope: !3711, inlinedAt: !3778)
!3825 = !DILocation(line: 173, column: 18, scope: !3710, inlinedAt: !3778)
!3826 = !DILocation(line: 173, column: 15, scope: !3711, inlinedAt: !3778)
!3827 = !DILocation(line: 180, column: 20, scope: !3709, inlinedAt: !3778)
!3828 = !DILocation(line: 178, column: 21, scope: !3709, inlinedAt: !3778)
!3829 = !DILocation(line: 181, column: 22, scope: !3708, inlinedAt: !3778)
!3830 = !DILocation(line: 181, column: 19, scope: !3709, inlinedAt: !3778)
!3831 = !DILocation(line: 190, column: 25, scope: !3707, inlinedAt: !3778)
!3832 = !DILocation(line: 184, column: 19, scope: !3833, inlinedAt: !3778)
!3833 = distinct !DILexicalBlock(scope: !3708, file: !530, line: 182, column: 17)
!3834 = !DILocation(line: 186, column: 17, scope: !3833, inlinedAt: !3778)
!3835 = !DILocation(line: 191, column: 26, scope: !3707, inlinedAt: !3778)
!3836 = !DILocation(line: 196, column: 23, scope: !3704, inlinedAt: !3778)
!3837 = !DILocation(line: 197, column: 23, scope: !3704, inlinedAt: !3778)
!3838 = !DILocalVariable(name: "__fp", arg: 1, scope: !3839, file: !810, line: 63, type: !3727)
!3839 = distinct !DISubprogram(name: "getc_unlocked", scope: !810, file: !810, line: 63, type: !3840, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3842)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!47, !3727}
!3842 = !{!3838}
!3843 = !DILocation(line: 63, column: 22, scope: !3839, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 201, column: 27, scope: !3704, inlinedAt: !3778)
!3845 = !DILocation(line: 65, column: 10, scope: !3839, inlinedAt: !3844)
!3846 = !{!818, !603, i64 8}
!3847 = !{!818, !603, i64 16}
!3848 = !DILocation(line: 65, column: 10, scope: !3849, inlinedAt: !3844)
!3849 = !DILexicalBlockFile(scope: !3839, file: !810, discriminator: 1)
!3850 = !DILocation(line: 65, column: 10, scope: !3851, inlinedAt: !3844)
!3851 = !DILexicalBlockFile(scope: !3839, file: !810, discriminator: 2)
!3852 = !DILocation(line: 65, column: 10, scope: !3853, inlinedAt: !3844)
!3853 = !DILexicalBlockFile(scope: !3839, file: !810, discriminator: 3)
!3854 = !DILocation(line: 195, column: 27, scope: !3704, inlinedAt: !3778)
!3855 = !DILocation(line: 202, column: 27, scope: !3704, inlinedAt: !3778)
!3856 = !DILocation(line: 63, column: 22, scope: !3839, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 210, column: 33, scope: !3858, inlinedAt: !3778)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !530, line: 207, column: 25)
!3859 = distinct !DILexicalBlock(scope: !3704, file: !530, line: 206, column: 27)
!3860 = !DILocation(line: 65, column: 10, scope: !3839, inlinedAt: !3857)
!3861 = !DILocation(line: 65, column: 10, scope: !3849, inlinedAt: !3857)
!3862 = !DILocation(line: 65, column: 10, scope: !3851, inlinedAt: !3857)
!3863 = !DILocation(line: 65, column: 10, scope: !3853, inlinedAt: !3857)
!3864 = !DILocation(line: 210, column: 29, scope: !3865, inlinedAt: !3778)
!3865 = !DILexicalBlockFile(scope: !3858, file: !530, discriminator: 1)
!3866 = distinct !{!3866, !3867, !3868}
!3867 = !DILocation(line: 193, column: 19, scope: !3706)
!3868 = !DILocation(line: 241, column: 21, scope: !3706)
!3869 = !DILocation(line: 216, column: 23, scope: !3704, inlinedAt: !3778)
!3870 = !DILocation(line: 217, column: 27, scope: !3871, inlinedAt: !3778)
!3871 = distinct !DILexicalBlock(scope: !3704, file: !530, line: 217, column: 27)
!3872 = !DILocation(line: 217, column: 64, scope: !3871, inlinedAt: !3778)
!3873 = !DILocation(line: 217, column: 27, scope: !3704, inlinedAt: !3778)
!3874 = !DILocation(line: 219, column: 28, scope: !3704, inlinedAt: !3778)
!3875 = !DILocation(line: 198, column: 30, scope: !3704, inlinedAt: !3778)
!3876 = !DILocation(line: 220, column: 28, scope: !3704, inlinedAt: !3778)
!3877 = !DILocation(line: 198, column: 34, scope: !3704, inlinedAt: !3778)
!3878 = !DILocation(line: 199, column: 29, scope: !3704, inlinedAt: !3778)
!3879 = !DILocation(line: 222, column: 36, scope: !3880, inlinedAt: !3778)
!3880 = distinct !DILexicalBlock(scope: !3704, file: !530, line: 222, column: 27)
!3881 = !DILocation(line: 222, column: 27, scope: !3704, inlinedAt: !3778)
!3882 = !DILocation(line: 225, column: 63, scope: !3883, inlinedAt: !3778)
!3883 = distinct !DILexicalBlock(scope: !3880, file: !530, line: 223, column: 25)
!3884 = !DILocation(line: 225, column: 46, scope: !3883, inlinedAt: !3778)
!3885 = !DILocation(line: 226, column: 25, scope: !3883, inlinedAt: !3778)
!3886 = !DILocation(line: 229, column: 36, scope: !3887, inlinedAt: !3778)
!3887 = distinct !DILexicalBlock(scope: !3880, file: !530, line: 228, column: 25)
!3888 = !DILocation(line: 230, column: 73, scope: !3887, inlinedAt: !3778)
!3889 = !DILocation(line: 230, column: 46, scope: !3887, inlinedAt: !3778)
!3890 = !DILocation(line: 232, column: 35, scope: !3891, inlinedAt: !3778)
!3891 = distinct !DILexicalBlock(scope: !3704, file: !530, line: 232, column: 27)
!3892 = !DILocation(line: 232, column: 27, scope: !3704, inlinedAt: !3778)
!3893 = !DILocation(line: 236, column: 27, scope: !3894, inlinedAt: !3778)
!3894 = distinct !DILexicalBlock(scope: !3891, file: !530, line: 233, column: 25)
!3895 = !DILocation(line: 237, column: 27, scope: !3894, inlinedAt: !3778)
!3896 = !DILocation(line: 239, column: 39, scope: !3704, inlinedAt: !3778)
!3897 = !DILocation(line: 239, column: 50, scope: !3704, inlinedAt: !3778)
!3898 = !DILocation(line: 239, column: 61, scope: !3704, inlinedAt: !3778)
!3899 = !DILocalVariable(name: "__dest", arg: 1, scope: !3900, file: !3901, line: 107, type: !3904)
!3900 = distinct !DISubprogram(name: "strcpy", scope: !3901, file: !3901, line: 107, type: !3902, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !3906)
!3901 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!6, !3904, !3905}
!3904 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!3906 = !{!3899, !3907}
!3907 = !DILocalVariable(name: "__src", arg: 2, scope: !3900, file: !3901, line: 107, type: !3905)
!3908 = !DILocation(line: 107, column: 1, scope: !3900, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 239, column: 23, scope: !3704, inlinedAt: !3778)
!3910 = !DILocation(line: 109, column: 49, scope: !3900, inlinedAt: !3909)
!3911 = !DILocation(line: 109, column: 10, scope: !3900, inlinedAt: !3909)
!3912 = !DILocation(line: 107, column: 1, scope: !3900, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 240, column: 23, scope: !3704, inlinedAt: !3778)
!3914 = !DILocation(line: 109, column: 49, scope: !3900, inlinedAt: !3913)
!3915 = !DILocation(line: 109, column: 10, scope: !3900, inlinedAt: !3913)
!3916 = !DILocation(line: 241, column: 21, scope: !3705, inlinedAt: !3778)
!3917 = !DILocation(line: 242, column: 19, scope: !3707, inlinedAt: !3778)
!3918 = !DILocation(line: 243, column: 32, scope: !3919, inlinedAt: !3778)
!3919 = distinct !DILexicalBlock(scope: !3707, file: !530, line: 243, column: 23)
!3920 = !DILocation(line: 243, column: 23, scope: !3707, inlinedAt: !3778)
!3921 = !DILocation(line: 247, column: 33, scope: !3922, inlinedAt: !3778)
!3922 = distinct !DILexicalBlock(scope: !3919, file: !530, line: 246, column: 21)
!3923 = !DILocation(line: 247, column: 45, scope: !3922, inlinedAt: !3778)
!3924 = !DILocation(line: 253, column: 11, scope: !3711, inlinedAt: !3778)
!3925 = !DILocation(line: 377, column: 23, scope: !3713, inlinedAt: !3778)
!3926 = !DILocation(line: 378, column: 5, scope: !3713, inlinedAt: !3778)
!3927 = !DILocation(line: 396, column: 15, scope: !3691)
!3928 = !DILocation(line: 590, column: 8, scope: !3700)
!3929 = !DILocation(line: 590, column: 17, scope: !3700)
!3930 = !DILocation(line: 589, column: 3, scope: !3931)
!3931 = !DILexicalBlockFile(scope: !3701, file: !530, discriminator: 1)
!3932 = !DILocation(line: 592, column: 9, scope: !3698)
!3933 = !DILocation(line: 592, column: 35, scope: !3699)
!3934 = !DILocation(line: 593, column: 9, scope: !3699)
!3935 = !DILocation(line: 593, column: 24, scope: !3936)
!3936 = !DILexicalBlockFile(scope: !3699, file: !530, discriminator: 1)
!3937 = !DILocation(line: 593, column: 31, scope: !3936)
!3938 = !DILocation(line: 593, column: 34, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !3699, file: !530, discriminator: 2)
!3940 = !DILocation(line: 593, column: 45, scope: !3939)
!3941 = !DILocation(line: 592, column: 9, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3700, file: !530, discriminator: 1)
!3943 = !DILocation(line: 595, column: 29, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3699, file: !530, line: 594, column: 7)
!3945 = !DILocation(line: 595, column: 27, scope: !3944)
!3946 = !DILocation(line: 595, column: 46, scope: !3944)
!3947 = !DILocation(line: 596, column: 9, scope: !3944)
!3948 = !DILocation(line: 591, column: 19, scope: !3700)
!3949 = !DILocation(line: 591, column: 36, scope: !3700)
!3950 = !DILocation(line: 591, column: 16, scope: !3700)
!3951 = !DILocation(line: 591, column: 52, scope: !3942)
!3952 = !DILocation(line: 591, column: 69, scope: !3700)
!3953 = !DILocation(line: 591, column: 49, scope: !3700)
!3954 = distinct !{!3954, !3955, !3956}
!3955 = !DILocation(line: 589, column: 3, scope: !3701)
!3956 = !DILocation(line: 597, column: 7, scope: !3701)
!3957 = !DILocation(line: 602, column: 7, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3691, file: !530, line: 602, column: 7)
!3959 = !DILocation(line: 602, column: 18, scope: !3958)
!3960 = !DILocation(line: 602, column: 7, scope: !3691)
!3961 = !DILocation(line: 612, column: 3, scope: !3691)
!3962 = distinct !DISubprogram(name: "rpl_fclose", scope: !3963, file: !3963, line: 56, type: !3964, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !4006)
!3963 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!47, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2987, line: 49, baseType: !3968)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2989, line: 241, size: 1728, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3968, file: !2989, line: 242, baseType: !47, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3968, file: !2989, line: 247, baseType: !6, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3968, file: !2989, line: 248, baseType: !6, size: 64, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3968, file: !2989, line: 249, baseType: !6, size: 64, offset: 192)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3968, file: !2989, line: 250, baseType: !6, size: 64, offset: 256)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3968, file: !2989, line: 251, baseType: !6, size: 64, offset: 320)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3968, file: !2989, line: 252, baseType: !6, size: 64, offset: 384)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3968, file: !2989, line: 253, baseType: !6, size: 64, offset: 448)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3968, file: !2989, line: 254, baseType: !6, size: 64, offset: 512)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3968, file: !2989, line: 256, baseType: !6, size: 64, offset: 576)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3968, file: !2989, line: 257, baseType: !6, size: 64, offset: 640)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3968, file: !2989, line: 258, baseType: !6, size: 64, offset: 704)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3968, file: !2989, line: 260, baseType: !3983, size: 64, offset: 768)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2989, line: 156, size: 192, elements: !3985)
!3985 = !{!3986, !3987, !3989}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3984, file: !2989, line: 157, baseType: !3983, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3984, file: !2989, line: 158, baseType: !3988, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3984, file: !2989, line: 162, baseType: !47, size: 32, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3968, file: !2989, line: 262, baseType: !3988, size: 64, offset: 832)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3968, file: !2989, line: 264, baseType: !47, size: 32, offset: 896)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3968, file: !2989, line: 268, baseType: !47, size: 32, offset: 928)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3968, file: !2989, line: 270, baseType: !3015, size: 64, offset: 960)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3968, file: !2989, line: 274, baseType: !131, size: 16, offset: 1024)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3968, file: !2989, line: 275, baseType: !3020, size: 8, offset: 1040)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3968, file: !2989, line: 276, baseType: !3022, size: 8, offset: 1048)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3968, file: !2989, line: 280, baseType: !3026, size: 64, offset: 1088)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3968, file: !2989, line: 289, baseType: !3029, size: 64, offset: 1152)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3968, file: !2989, line: 297, baseType: !8, size: 64, offset: 1216)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3968, file: !2989, line: 298, baseType: !8, size: 64, offset: 1280)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3968, file: !2989, line: 299, baseType: !8, size: 64, offset: 1344)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3968, file: !2989, line: 300, baseType: !8, size: 64, offset: 1408)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3968, file: !2989, line: 302, baseType: !9, size: 64, offset: 1472)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3968, file: !2989, line: 303, baseType: !47, size: 32, offset: 1536)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3968, file: !2989, line: 305, baseType: !3037, size: 160, offset: 1568)
!4006 = !{!4007, !4008, !4009, !4010}
!4007 = !DILocalVariable(name: "fp", arg: 1, scope: !3962, file: !3963, line: 56, type: !3966)
!4008 = !DILocalVariable(name: "saved_errno", scope: !3962, file: !3963, line: 58, type: !47)
!4009 = !DILocalVariable(name: "fd", scope: !3962, file: !3963, line: 59, type: !47)
!4010 = !DILocalVariable(name: "result", scope: !3962, file: !3963, line: 60, type: !47)
!4011 = !DILocation(line: 56, column: 19, scope: !3962)
!4012 = !DILocation(line: 58, column: 7, scope: !3962)
!4013 = !DILocation(line: 60, column: 7, scope: !3962)
!4014 = !DILocation(line: 63, column: 8, scope: !3962)
!4015 = !DILocation(line: 59, column: 7, scope: !3962)
!4016 = !DILocation(line: 64, column: 10, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3962, file: !3963, line: 64, column: 7)
!4018 = !DILocation(line: 64, column: 7, scope: !3962)
!4019 = !DILocation(line: 65, column: 12, scope: !4017)
!4020 = !DILocation(line: 65, column: 5, scope: !4017)
!4021 = !DILocation(line: 70, column: 9, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3962, file: !3963, line: 70, column: 7)
!4023 = !DILocation(line: 70, column: 23, scope: !4022)
!4024 = !DILocation(line: 70, column: 33, scope: !4025)
!4025 = !DILexicalBlockFile(scope: !4022, file: !3963, discriminator: 1)
!4026 = !DILocation(line: 70, column: 26, scope: !4027)
!4027 = !DILexicalBlockFile(scope: !4022, file: !3963, discriminator: 3)
!4028 = !DILocation(line: 70, column: 59, scope: !4025)
!4029 = !DILocation(line: 71, column: 7, scope: !4022)
!4030 = !DILocation(line: 71, column: 10, scope: !4025)
!4031 = !DILocation(line: 70, column: 7, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !3962, file: !3963, discriminator: 2)
!4033 = !DILocation(line: 98, column: 12, scope: !3962)
!4034 = !DILocation(line: 103, column: 7, scope: !3962)
!4035 = !DILocation(line: 72, column: 19, scope: !4022)
!4036 = !DILocation(line: 103, column: 19, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3962, file: !3963, line: 103, column: 7)
!4038 = !DILocation(line: 105, column: 13, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4037, file: !3963, line: 104, column: 5)
!4040 = !DILocation(line: 107, column: 5, scope: !4039)
!4041 = !DILocation(line: 110, column: 1, scope: !3962)
!4042 = distinct !DISubprogram(name: "rpl_fflush", scope: !4043, file: !4043, line: 127, type: !4044, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !4086)
!4043 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!47, !4046}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2987, line: 49, baseType: !4048)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2989, line: 241, size: 1728, elements: !4049)
!4049 = !{!4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4048, file: !2989, line: 242, baseType: !47, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4048, file: !2989, line: 247, baseType: !6, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4048, file: !2989, line: 248, baseType: !6, size: 64, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4048, file: !2989, line: 249, baseType: !6, size: 64, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4048, file: !2989, line: 250, baseType: !6, size: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4048, file: !2989, line: 251, baseType: !6, size: 64, offset: 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4048, file: !2989, line: 252, baseType: !6, size: 64, offset: 384)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4048, file: !2989, line: 253, baseType: !6, size: 64, offset: 448)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4048, file: !2989, line: 254, baseType: !6, size: 64, offset: 512)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4048, file: !2989, line: 256, baseType: !6, size: 64, offset: 576)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4048, file: !2989, line: 257, baseType: !6, size: 64, offset: 640)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4048, file: !2989, line: 258, baseType: !6, size: 64, offset: 704)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4048, file: !2989, line: 260, baseType: !4063, size: 64, offset: 768)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2989, line: 156, size: 192, elements: !4065)
!4065 = !{!4066, !4067, !4069}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4064, file: !2989, line: 157, baseType: !4063, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4064, file: !2989, line: 158, baseType: !4068, size: 64, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4064, file: !2989, line: 162, baseType: !47, size: 32, offset: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4048, file: !2989, line: 262, baseType: !4068, size: 64, offset: 832)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4048, file: !2989, line: 264, baseType: !47, size: 32, offset: 896)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4048, file: !2989, line: 268, baseType: !47, size: 32, offset: 928)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4048, file: !2989, line: 270, baseType: !3015, size: 64, offset: 960)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4048, file: !2989, line: 274, baseType: !131, size: 16, offset: 1024)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4048, file: !2989, line: 275, baseType: !3020, size: 8, offset: 1040)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4048, file: !2989, line: 276, baseType: !3022, size: 8, offset: 1048)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4048, file: !2989, line: 280, baseType: !3026, size: 64, offset: 1088)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4048, file: !2989, line: 289, baseType: !3029, size: 64, offset: 1152)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4048, file: !2989, line: 297, baseType: !8, size: 64, offset: 1216)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4048, file: !2989, line: 298, baseType: !8, size: 64, offset: 1280)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4048, file: !2989, line: 299, baseType: !8, size: 64, offset: 1344)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4048, file: !2989, line: 300, baseType: !8, size: 64, offset: 1408)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4048, file: !2989, line: 302, baseType: !9, size: 64, offset: 1472)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4048, file: !2989, line: 303, baseType: !47, size: 32, offset: 1536)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4048, file: !2989, line: 305, baseType: !3037, size: 160, offset: 1568)
!4086 = !{!4087}
!4087 = !DILocalVariable(name: "stream", arg: 1, scope: !4042, file: !4043, line: 127, type: !4046)
!4088 = !DILocation(line: 127, column: 19, scope: !4042)
!4089 = !DILocation(line: 148, column: 14, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4042, file: !4043, line: 148, column: 7)
!4091 = !DILocation(line: 148, column: 22, scope: !4090)
!4092 = !DILocation(line: 148, column: 27, scope: !4093)
!4093 = !DILexicalBlockFile(scope: !4090, file: !4043, discriminator: 1)
!4094 = !DILocation(line: 148, column: 7, scope: !4095)
!4095 = !DILexicalBlockFile(scope: !4042, file: !4043, discriminator: 1)
!4096 = !DILocation(line: 149, column: 12, scope: !4090)
!4097 = !DILocation(line: 149, column: 5, scope: !4090)
!4098 = !DILocalVariable(name: "fp", arg: 1, scope: !4099, file: !4043, line: 40, type: !4046)
!4099 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4043, file: !4043, line: 40, type: !4100, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !4046}
!4102 = !{!4098}
!4103 = !DILocation(line: 40, column: 48, scope: !4099, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 153, column: 3, scope: !4042)
!4105 = !DILocation(line: 42, column: 11, scope: !4106, inlinedAt: !4104)
!4106 = distinct !DILexicalBlock(scope: !4099, file: !4043, line: 42, column: 7)
!4107 = !DILocation(line: 42, column: 18, scope: !4106, inlinedAt: !4104)
!4108 = !DILocation(line: 42, column: 7, scope: !4099, inlinedAt: !4104)
!4109 = !DILocation(line: 44, column: 5, scope: !4106, inlinedAt: !4104)
!4110 = !DILocation(line: 155, column: 10, scope: !4042)
!4111 = !DILocation(line: 155, column: 3, scope: !4042)
!4112 = !DILocation(line: 229, column: 1, scope: !4042)
!4113 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4114, file: !4114, line: 28, type: !4115, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !4158)
!4114 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!47, !4117, !4157, !47}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2987, line: 49, baseType: !4119)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2989, line: 241, size: 1728, elements: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4119, file: !2989, line: 242, baseType: !47, size: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4119, file: !2989, line: 247, baseType: !6, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4119, file: !2989, line: 248, baseType: !6, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4119, file: !2989, line: 249, baseType: !6, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4119, file: !2989, line: 250, baseType: !6, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4119, file: !2989, line: 251, baseType: !6, size: 64, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4119, file: !2989, line: 252, baseType: !6, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4119, file: !2989, line: 253, baseType: !6, size: 64, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4119, file: !2989, line: 254, baseType: !6, size: 64, offset: 512)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4119, file: !2989, line: 256, baseType: !6, size: 64, offset: 576)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4119, file: !2989, line: 257, baseType: !6, size: 64, offset: 640)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4119, file: !2989, line: 258, baseType: !6, size: 64, offset: 704)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4119, file: !2989, line: 260, baseType: !4134, size: 64, offset: 768)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2989, line: 156, size: 192, elements: !4136)
!4136 = !{!4137, !4138, !4140}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4135, file: !2989, line: 157, baseType: !4134, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4135, file: !2989, line: 158, baseType: !4139, size: 64, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4135, file: !2989, line: 162, baseType: !47, size: 32, offset: 128)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4119, file: !2989, line: 262, baseType: !4139, size: 64, offset: 832)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4119, file: !2989, line: 264, baseType: !47, size: 32, offset: 896)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4119, file: !2989, line: 268, baseType: !47, size: 32, offset: 928)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4119, file: !2989, line: 270, baseType: !3015, size: 64, offset: 960)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4119, file: !2989, line: 274, baseType: !131, size: 16, offset: 1024)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4119, file: !2989, line: 275, baseType: !3020, size: 8, offset: 1040)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4119, file: !2989, line: 276, baseType: !3022, size: 8, offset: 1048)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4119, file: !2989, line: 280, baseType: !3026, size: 64, offset: 1088)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4119, file: !2989, line: 289, baseType: !3029, size: 64, offset: 1152)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4119, file: !2989, line: 297, baseType: !8, size: 64, offset: 1216)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4119, file: !2989, line: 298, baseType: !8, size: 64, offset: 1280)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4119, file: !2989, line: 299, baseType: !8, size: 64, offset: 1344)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4119, file: !2989, line: 300, baseType: !8, size: 64, offset: 1408)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4119, file: !2989, line: 302, baseType: !9, size: 64, offset: 1472)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4119, file: !2989, line: 303, baseType: !47, size: 32, offset: 1536)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4119, file: !2989, line: 305, baseType: !3037, size: 160, offset: 1568)
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2987, line: 91, baseType: !3015)
!4158 = !{!4159, !4160, !4161, !4162}
!4159 = !DILocalVariable(name: "fp", arg: 1, scope: !4113, file: !4114, line: 28, type: !4117)
!4160 = !DILocalVariable(name: "offset", arg: 2, scope: !4113, file: !4114, line: 28, type: !4157)
!4161 = !DILocalVariable(name: "whence", arg: 3, scope: !4113, file: !4114, line: 28, type: !47)
!4162 = !DILocalVariable(name: "pos", scope: !4163, file: !4114, line: 116, type: !4157)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !4114, line: 112, column: 5)
!4164 = distinct !DILexicalBlock(scope: !4113, file: !4114, line: 51, column: 7)
!4165 = !DILocation(line: 28, column: 15, scope: !4113)
!4166 = !DILocation(line: 28, column: 25, scope: !4113)
!4167 = !DILocation(line: 28, column: 37, scope: !4113)
!4168 = !DILocation(line: 51, column: 11, scope: !4164)
!4169 = !DILocation(line: 51, column: 31, scope: !4164)
!4170 = !DILocation(line: 51, column: 24, scope: !4164)
!4171 = !DILocation(line: 52, column: 7, scope: !4164)
!4172 = !DILocation(line: 52, column: 14, scope: !4173)
!4173 = !DILexicalBlockFile(scope: !4164, file: !4114, discriminator: 1)
!4174 = !DILocation(line: 52, column: 35, scope: !4173)
!4175 = !{!818, !603, i64 32}
!4176 = !DILocation(line: 52, column: 28, scope: !4173)
!4177 = !DILocation(line: 53, column: 7, scope: !4164)
!4178 = !DILocation(line: 53, column: 14, scope: !4173)
!4179 = !{!818, !603, i64 72}
!4180 = !DILocation(line: 53, column: 28, scope: !4173)
!4181 = !DILocation(line: 51, column: 7, scope: !4182)
!4182 = !DILexicalBlockFile(scope: !4113, file: !4114, discriminator: 1)
!4183 = !DILocation(line: 116, column: 26, scope: !4163)
!4184 = !DILocation(line: 116, column: 19, scope: !4185)
!4185 = !DILexicalBlockFile(scope: !4163, file: !4114, discriminator: 1)
!4186 = !DILocation(line: 116, column: 13, scope: !4163)
!4187 = !DILocation(line: 117, column: 15, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4163, file: !4114, line: 117, column: 11)
!4189 = !DILocation(line: 117, column: 11, scope: !4163)
!4190 = !DILocation(line: 127, column: 11, scope: !4163)
!4191 = !DILocation(line: 127, column: 18, scope: !4163)
!4192 = !DILocation(line: 128, column: 11, scope: !4163)
!4193 = !DILocation(line: 128, column: 19, scope: !4163)
!4194 = !{!818, !819, i64 144}
!4195 = !DILocation(line: 159, column: 7, scope: !4163)
!4196 = !DILocation(line: 161, column: 10, scope: !4113)
!4197 = !DILocation(line: 161, column: 3, scope: !4113)
!4198 = !DILocation(line: 162, column: 1, scope: !4113)
