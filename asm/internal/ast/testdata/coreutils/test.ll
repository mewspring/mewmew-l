; ModuleID = 'coreutils-8.27/src/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Exit with the status determined by EXPRESSION.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1
@.str.6 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1
@.str.7 = private unnamed_addr constant [250 x i8] c"\0A  -n STRING            the length of STRING is nonzero\0A  STRING               equivalent to -n STRING\0A  -z STRING            the length of STRING is zero\0A  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A\00", align 1
@.str.8 = private unnamed_addr constant [376 x i8] c"\0A  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1
@.str.9 = private unnamed_addr constant [189 x i8] c"\0A  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1
@.str.10 = private unnamed_addr constant [171 x i8] c"\0A  -b FILE     FILE exists and is block special\0A  -c FILE     FILE exists and is character special\0A  -d FILE     FILE exists and is a directory\0A  -e FILE     FILE exists\0A\00", align 1
@.str.11 = private unnamed_addr constant [275 x i8] c"  -f FILE     FILE exists and is a regular file\0A  -g FILE     FILE exists and is set-group-ID\0A  -G FILE     FILE exists and is owned by the effective group ID\0A  -h FILE     FILE exists and is a symbolic link (same as -L)\0A  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1
@.str.12 = private unnamed_addr constant [289 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A  -O FILE     FILE exists and is owned by the effective user ID\0A  -p FILE     FILE exists and is a named pipe\0A  -r FILE     FILE exists and read permission is granted\0A  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1
@.str.13 = private unnamed_addr constant [287 x i8] c"  -S FILE     FILE exists and is a socket\0A  -t FD       file descriptor FD is opened on a terminal\0A  -u FILE     FILE exists and its set-user-ID bit is set\0A  -w FILE     FILE exists and write permission is granted\0A  -x FILE     FILE exists and execute (or search) permission is granted\0A\00", align 1
@.str.14 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1
@.str.15 = private unnamed_addr constant [122 x i8] c"\0ANOTE: Binary -a and -o are inherently ambiguous.  Use 'test EXPR1 && test\0AEXPR2' or 'test EXPR1 || test EXPR2' instead.\0A\00", align 1
@.str.16 = private unnamed_addr constant [136 x i8] c"\0ANOTE: [ honors the --help and --version options, but test does not.\0Atest treats each of those as it treats any other nonempty STRING.\0A\00", align 1
@.str.17 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.36 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global i8** null, align 8, !dbg !0
@argc = internal unnamed_addr global i32 0, align 4, !dbg !44
@pos = internal unnamed_addr global i32 0, align 4, !dbg !42
@.str.23 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !78
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !84
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !88
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !95
@.str.40 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.41 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.42 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.49, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.50, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.55, i32 0, i32 0), i8* null], align 16, !dbg !102
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !128
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !135
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !147
@.str.11.56 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.57 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.58 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.59 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.60 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.61 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.62 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !154
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !161
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !149
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !163
@.str.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.74 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.1.83 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.95 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !169
@.str.3.99 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.100 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.101 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.102 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.103 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.104 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !573 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !577, metadata !578), !dbg !579
  %2 = icmp eq i32 %0, 0, !dbg !580
  br i1 %2, label %8, label %3, !dbg !582

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !583, !tbaa !586
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #8, !dbg !583
  %6 = load i8*, i8** @program_name, align 8, !dbg !583, !tbaa !586
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #8, !dbg !590
  br label %75, !dbg !592

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #8, !dbg !594
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !594, !tbaa !586
  %11 = tail call i32 @fputs_unlocked(i8* %9, %struct._IO_FILE* %10) #8, !dbg !596
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #8, !dbg !598
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !598, !tbaa !586
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #8, !dbg !599
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #8, !dbg !600
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !600, !tbaa !586
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #8, !dbg !601
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #8, !dbg !602
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !602, !tbaa !586
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #8, !dbg !603
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #8, !dbg !604
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !604, !tbaa !586
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #8, !dbg !605
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #8, !dbg !606
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !606, !tbaa !586
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #8, !dbg !607
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #8, !dbg !608
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608, !tbaa !586
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #8, !dbg !609
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #8, !dbg !610
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !586
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #8, !dbg !611
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #8, !dbg !612
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !586
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #8, !dbg !613
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #8, !dbg !614
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !586
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #8, !dbg !615
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #8, !dbg !616
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !586
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #8, !dbg !617
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.12, i64 0, i64 0), i32 5) #8, !dbg !618
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !586
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #8, !dbg !619
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #8, !dbg !620
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !586
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #8, !dbg !621
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #8, !dbg !622
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !586
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #8, !dbg !623
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #8, !dbg !624
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !586
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #8, !dbg !625
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #8, !dbg !626
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !586
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #8, !dbg !627
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #8, !dbg !628
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #8, !dbg !629
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %58) #8, !dbg !630
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !54, metadata !578) #8, !dbg !632
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 0, metadata !54, metadata !578) #8, !dbg !632
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #8, !dbg !634
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !635
  %62 = tail call i8* @setlocale(i32 5, i8* null) #8, !dbg !637
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !65, metadata !578) #8, !dbg !638
  %63 = icmp eq i8* %62, null, !dbg !639
  br i1 %63, label %70, label %64, !dbg !640

; <label>:64:                                     ; preds = %8
  %65 = tail call i32 @strncmp(i8* nonnull %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #13, !dbg !641
  %66 = icmp eq i32 %65, 0, !dbg !641
  br i1 %66, label %70, label %67, !dbg !643

; <label>:67:                                     ; preds = %64
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.36, i64 0, i64 0), i32 5) #8, !dbg !645
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !647
  br label %70, !dbg !649

; <label>:70:                                     ; preds = %8, %64, %67
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 5) #8, !dbg !650
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !651
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #8, !dbg !652
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !653
  br label %75

; <label>:75:                                     ; preds = %70, %3
  tail call void @exit(i32 %0) #14, !dbg !654
  unreachable, !dbg !654
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !655 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !659, metadata !578), !dbg !662
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !660, metadata !578), !dbg !663
  %3 = load i8*, i8** %1, align 8, !dbg !664, !tbaa !586
  tail call void @set_program_name(i8* %3) #8, !dbg !665
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !666
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !667
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !668
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !669, metadata !578), !dbg !672
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !674, !tbaa !676
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #8, !dbg !678
  store i8** %1, i8*** @argv, align 8, !dbg !679, !tbaa !586
  store i32 %0, i32* @argc, align 4, !dbg !680, !tbaa !676
  store i32 1, i32* @pos, align 4, !dbg !681, !tbaa !676
  %8 = icmp slt i32 %0, 2, !dbg !682
  br i1 %8, label %26, label %9, !dbg !684

; <label>:9:                                      ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !685
  %11 = tail call fastcc zeroext i1 @posixtest(i32 %10), !dbg !686
  %12 = load i32, i32* @pos, align 4, !dbg !687, !tbaa !676
  %13 = load i32, i32* @argc, align 4, !dbg !689, !tbaa !676
  %14 = icmp eq i32 %12, %13, !dbg !690
  br i1 %14, label %23, label %15, !dbg !691

; <label>:15:                                     ; preds = %9
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 5) #8, !dbg !692
  %17 = load i8**, i8*** @argv, align 8, !dbg !693, !tbaa !586
  %18 = load i32, i32* @pos, align 4, !dbg !694, !tbaa !676
  %19 = sext i32 %18 to i64, !dbg !693
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19, !dbg !693
  %21 = load i8*, i8** %20, align 8, !dbg !693, !tbaa !586
  %22 = tail call i8* @quote(i8* %21) #8, !dbg !695
  tail call void (i8*, ...) @test_syntax_error(i8* %16, i8* %22) #15, !dbg !697
  unreachable, !dbg !699

; <label>:23:                                     ; preds = %9
  %24 = xor i1 %11, true, !dbg !700
  %25 = zext i1 %24 to i32, !dbg !700
  br label %26, !dbg !700

; <label>:26:                                     ; preds = %2, %23
  %27 = phi i32 [ %25, %23 ], [ 1, %2 ]
  ret i32 %27, !dbg !701
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32) unnamed_addr #6 !dbg !702 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !706, metadata !578), !dbg !729
  switch i32 %0, label %59 [
    i32 1, label %2
    i32 2, label %12
    i32 3, label %15
    i32 4, label %18
  ], !dbg !730

; <label>:2:                                      ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !731, !tbaa !586
  %4 = load i32, i32* @pos, align 4, !dbg !736, !tbaa !676
  %5 = add nsw i32 %4, 1, !dbg !736
  store i32 %5, i32* @pos, align 4, !dbg !736, !tbaa !676
  %6 = sext i32 %4 to i64, !dbg !731
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !731
  %8 = load i8*, i8** %7, align 8, !dbg !731, !tbaa !586
  %9 = load i8, i8* %8, align 1, !dbg !731, !tbaa !737
  %10 = icmp ne i8 %9, 0, !dbg !738
  %11 = zext i1 %10 to i8, !dbg !739
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !707, metadata !578), !dbg !740
  br label %134, !dbg !741

; <label>:12:                                     ; preds = %1
  %13 = tail call fastcc zeroext i1 @two_arguments(), !dbg !742
  %14 = zext i1 %13 to i8, !dbg !743
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !707, metadata !578), !dbg !740
  br label %134, !dbg !744

; <label>:15:                                     ; preds = %1
  %16 = tail call fastcc zeroext i1 @three_arguments(), !dbg !745
  %17 = zext i1 %16 to i8, !dbg !746
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !707, metadata !578), !dbg !740
  br label %134, !dbg !747

; <label>:18:                                     ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !712, metadata !578), !dbg !748
  %19 = load i8**, i8*** @argv, align 8, !dbg !749, !tbaa !586
  %20 = load i32, i32* @pos, align 4, !dbg !749, !tbaa !676
  %21 = sext i32 %20 to i64, !dbg !749
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21, !dbg !749
  %23 = load i8*, i8** %22, align 8, !dbg !749, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !713, metadata !578), !dbg !751
  %24 = load i8, i8* %23, align 1, !dbg !749, !tbaa !737
  switch i8 %24, label %64 [
    i8 33, label %25
    i8 40, label %38
  ], !dbg !752

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !755
  %27 = load i8, i8* %26, align 1, !dbg !755, !tbaa !737
  %28 = icmp eq i8 %27, 0, !dbg !758
  br i1 %28, label %29, label %64, !dbg !760

; <label>:29:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !768
  %30 = add nsw i32 %20, 1, !dbg !771
  store i32 %30, i32* @pos, align 4, !dbg !771, !tbaa !676
  %31 = load i32, i32* @argc, align 4, !dbg !772
  %32 = icmp slt i32 %30, %31, !dbg !775
  br i1 %32, label %34, label %33, !dbg !776

; <label>:33:                                     ; preds = %29
  tail call fastcc void @beyond() #14, !dbg !777
  unreachable, !dbg !777

; <label>:34:                                     ; preds = %29
  %35 = tail call fastcc zeroext i1 @three_arguments(), !dbg !778
  %36 = xor i1 %35, true, !dbg !779
  %37 = zext i1 %36 to i8, !dbg !780
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !707, metadata !578), !dbg !740
  br label %134, !dbg !781

; <label>:38:                                     ; preds = %18
  %39 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !782
  %40 = load i8, i8* %39, align 1, !dbg !782, !tbaa !737
  %41 = icmp eq i8 %40, 0, !dbg !786
  br i1 %41, label %42, label %64, !dbg !788

; <label>:42:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !725, metadata !578), !dbg !790
  %43 = add nsw i32 %20, 3, !dbg !791
  %44 = sext i32 %43 to i64, !dbg !791
  %45 = getelementptr inbounds i8*, i8** %19, i64 %44, !dbg !791
  %46 = load i8*, i8** %45, align 8, !dbg !791, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !726, metadata !578), !dbg !793
  %47 = load i8, i8* %46, align 1, !dbg !791, !tbaa !737
  %48 = icmp eq i8 %47, 41, !dbg !794
  br i1 %48, label %49, label %64, !dbg !797

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !799
  %51 = load i8, i8* %50, align 1, !dbg !799, !tbaa !737
  %52 = icmp eq i8 %51, 0, !dbg !802
  br i1 %52, label %53, label %64, !dbg !804

; <label>:53:                                     ; preds = %49
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767), !dbg !806
  %54 = add nsw i32 %20, 1, !dbg !809
  store i32 %54, i32* @pos, align 4, !dbg !809, !tbaa !676
  %55 = tail call fastcc zeroext i1 @two_arguments(), !dbg !810
  %56 = zext i1 %55 to i8, !dbg !811
  tail call void @llvm.dbg.value(metadata i8 %56, i64 0, metadata !707, metadata !578), !dbg !740
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767), !dbg !812
  %57 = load i32, i32* @pos, align 4, !dbg !814, !tbaa !676
  %58 = add nsw i32 %57, 1, !dbg !814
  store i32 %58, i32* @pos, align 4, !dbg !814, !tbaa !676
  br label %134, !dbg !815

; <label>:59:                                     ; preds = %1
  %60 = icmp slt i32 %0, 1, !dbg !816
  br i1 %60, label %63, label %61, !dbg !818

; <label>:61:                                     ; preds = %59
  %62 = load i32, i32* @pos, align 4, !tbaa !676
  br label %64, !dbg !818

; <label>:63:                                     ; preds = %59
  tail call void @abort() #14, !dbg !819
  unreachable, !dbg !819

; <label>:64:                                     ; preds = %18, %25, %61, %42, %38, %49
  %65 = phi i32 [ %62, %61 ], [ %20, %42 ], [ %20, %38 ], [ %20, %49 ], [ %20, %25 ], [ %20, %18 ], !dbg !820
  %66 = load i32, i32* @argc, align 4, !dbg !824, !tbaa !676
  %67 = icmp slt i32 %65, %66, !dbg !825
  br i1 %67, label %68, label %69, !dbg !826

; <label>:68:                                     ; preds = %64
  br label %70, !dbg !827

; <label>:69:                                     ; preds = %64
  tail call fastcc void @beyond() #14, !dbg !852
  unreachable, !dbg !852

; <label>:70:                                     ; preds = %68, %129
  %71 = phi i32 [ %112, %129 ], [ 0, %68 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !830, metadata !578) #8, !dbg !827
  %72 = tail call fastcc zeroext i1 @term() #8, !dbg !853
  %73 = zext i1 %72 to i32, !dbg !853
  %74 = load i32, i32* @pos, align 4, !dbg !854, !tbaa !676
  %75 = load i32, i32* @argc, align 4, !dbg !855, !tbaa !676
  %76 = icmp slt i32 %74, %75, !dbg !856
  br i1 %76, label %77, label %108, !dbg !857

; <label>:77:                                     ; preds = %70
  br label %78, !dbg !858

; <label>:78:                                     ; preds = %77, %96
  %79 = phi i32 [ %102, %96 ], [ %75, %77 ]
  %80 = phi i32 [ %101, %96 ], [ %74, %77 ], !dbg !859
  %81 = phi i32 [ %100, %96 ], [ %73, %77 ]
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !835, metadata !578) #8, !dbg !858
  %82 = load i8**, i8*** @argv, align 8, !dbg !861, !tbaa !586
  %83 = sext i32 %80 to i64, !dbg !861
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83, !dbg !861
  %85 = load i8*, i8** %84, align 8, !dbg !861, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !836, metadata !578) #8, !dbg !863
  %86 = load i8, i8* %85, align 1, !dbg !861, !tbaa !737
  %87 = icmp eq i8 %86, 45, !dbg !864
  br i1 %87, label %88, label %104, !dbg !867

; <label>:88:                                     ; preds = %78
  %89 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !869
  %90 = load i8, i8* %89, align 1, !dbg !869, !tbaa !737
  %91 = icmp eq i8 %90, 97, !dbg !872
  br i1 %91, label %92, label %104, !dbg !875

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !877
  %94 = load i8, i8* %93, align 1, !dbg !877, !tbaa !737
  %95 = icmp eq i8 %94, 0, !dbg !880
  br i1 %95, label %96, label %104, !dbg !882

; <label>:96:                                     ; preds = %92
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767) #8, !dbg !884
  %97 = add nsw i32 %80, 1, !dbg !859
  store i32 %97, i32* @pos, align 4, !dbg !859, !tbaa !676
  %98 = tail call fastcc zeroext i1 @term() #8, !dbg !853
  %99 = zext i1 %98 to i32, !dbg !853
  %100 = and i32 %99, %81, !dbg !885
  %101 = load i32, i32* @pos, align 4, !dbg !854, !tbaa !676
  %102 = load i32, i32* @argc, align 4, !dbg !855, !tbaa !676
  %103 = icmp slt i32 %101, %102, !dbg !856
  br i1 %103, label %78, label %104, !dbg !857, !llvm.loop !886

; <label>:104:                                    ; preds = %96, %92, %88, %78
  %105 = phi i32 [ %79, %78 ], [ %79, %88 ], [ %102, %96 ], [ %79, %92 ]
  %106 = phi i32 [ %80, %78 ], [ %80, %88 ], [ %101, %96 ], [ %80, %92 ]
  %107 = phi i32 [ %81, %78 ], [ %81, %88 ], [ %100, %96 ], [ %81, %92 ]
  br label %108, !dbg !889

; <label>:108:                                    ; preds = %104, %70
  %109 = phi i32 [ %75, %70 ], [ %105, %104 ], !dbg !890
  %110 = phi i32 [ %74, %70 ], [ %106, %104 ], !dbg !891
  %111 = phi i32 [ %73, %70 ], [ %107, %104 ]
  %112 = or i32 %111, %71, !dbg !889
  %113 = icmp slt i32 %110, %109, !dbg !893
  br i1 %113, label %114, label %131, !dbg !894

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !847, metadata !578) #8, !dbg !895
  %115 = load i8**, i8*** @argv, align 8, !dbg !896, !tbaa !586
  %116 = sext i32 %110 to i64, !dbg !896
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116, !dbg !896
  %118 = load i8*, i8** %117, align 8, !dbg !896, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !848, metadata !578) #8, !dbg !898
  %119 = load i8, i8* %118, align 1, !dbg !896, !tbaa !737
  %120 = icmp eq i8 %119, 45, !dbg !899
  br i1 %120, label %121, label %131, !dbg !902

; <label>:121:                                    ; preds = %114
  %122 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !904
  %123 = load i8, i8* %122, align 1, !dbg !904, !tbaa !737
  %124 = icmp eq i8 %123, 111, !dbg !907
  br i1 %124, label %125, label %131, !dbg !910

; <label>:125:                                    ; preds = %121
  %126 = getelementptr inbounds i8, i8* %118, i64 2, !dbg !912
  %127 = load i8, i8* %126, align 1, !dbg !912, !tbaa !737
  %128 = icmp eq i8 %127, 0, !dbg !915
  br i1 %128, label %129, label %131, !dbg !917

; <label>:129:                                    ; preds = %125
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767) #8, !dbg !919
  %130 = add nsw i32 %110, 1, !dbg !891
  store i32 %130, i32* @pos, align 4, !dbg !891, !tbaa !676
  br label %70, !dbg !920, !llvm.loop !922

; <label>:131:                                    ; preds = %114, %121, %108, %125
  %132 = icmp ne i32 %112, 0, !dbg !889
  %133 = zext i1 %132 to i8, !dbg !925
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !707, metadata !578), !dbg !740
  br label %134, !dbg !926

; <label>:134:                                    ; preds = %131, %53, %34, %15, %12, %2
  %135 = phi i8 [ %133, %131 ], [ %37, %34 ], [ %56, %53 ], [ %17, %15 ], [ %14, %12 ], [ %11, %2 ]
  tail call void @llvm.dbg.value(metadata i8 %135, i64 0, metadata !707, metadata !578), !dbg !740
  %136 = icmp ne i8 %135, 0, !dbg !927
  ret i1 %136, !dbg !928
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8*, ...) unnamed_addr #0 !dbg !929 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !933, metadata !578), !dbg !949
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !950
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #8, !dbg !950
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !934, metadata !578), !dbg !951
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !952
  call void @llvm.va_start(i8* nonnull %3), !dbg !952
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !953
  call void @exit(i32 2) #14, !dbg !954
  unreachable, !dbg !954
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @two_arguments() unnamed_addr #6 !dbg !955 {
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !961, metadata !578), !dbg !965
  %1 = load i8**, i8*** @argv, align 8, !dbg !966, !tbaa !586
  %2 = load i32, i32* @pos, align 4, !dbg !966, !tbaa !676
  %3 = sext i32 %2 to i64, !dbg !966
  %4 = getelementptr inbounds i8*, i8** %1, i64 %3, !dbg !966
  %5 = load i8*, i8** %4, align 8, !dbg !966, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !962, metadata !578), !dbg !968
  %6 = load i8, i8* %5, align 1, !dbg !966, !tbaa !737
  switch i8 %6, label %46 [
    i8 33, label %7
    i8 45, label %19
  ], !dbg !969

; <label>:7:                                      ; preds = %0
  %8 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !972
  %9 = load i8, i8* %8, align 1, !dbg !972, !tbaa !737
  %10 = icmp eq i8 %9, 0, !dbg !975
  br i1 %10, label %11, label %46, !dbg !977

; <label>:11:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767), !dbg !979
  %12 = add nsw i32 %2, 1, !dbg !982
  %13 = add nsw i32 %2, 2, !dbg !983
  store i32 %13, i32* @pos, align 4, !dbg !983, !tbaa !676
  %14 = sext i32 %12 to i64, !dbg !985
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !985
  %16 = load i8*, i8** %15, align 8, !dbg !985, !tbaa !586
  %17 = load i8, i8* %16, align 1, !dbg !985, !tbaa !737
  %18 = icmp eq i8 %17, 0, !dbg !986
  br label %47, !dbg !987

; <label>:19:                                     ; preds = %0
  %20 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !988
  %21 = load i8, i8* %20, align 1, !dbg !988, !tbaa !737
  %22 = icmp eq i8 %21, 0, !dbg !991
  br i1 %22, label %46, label %23, !dbg !992

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !993
  %25 = load i8, i8* %24, align 1, !dbg !993, !tbaa !737
  %26 = icmp eq i8 %25, 0, !dbg !994
  br i1 %26, label %27, label %46, !dbg !995

; <label>:27:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !997, metadata !578), !dbg !1002
  %28 = sext i8 %21 to i32, !dbg !1006
  %29 = add nsw i32 %28, -71, !dbg !1007
  %30 = icmp ult i32 %29, 52, !dbg !1007
  br i1 %30, label %31, label %38, !dbg !1007

; <label>:31:                                     ; preds = %27
  %32 = zext i32 %29 to i52, !dbg !1007
  %33 = lshr i52 -1271499365281375, %32, !dbg !1007
  %34 = and i52 %33, 1, !dbg !1007
  %35 = icmp eq i52 %34, 0, !dbg !1007
  br i1 %35, label %38, label %36, !dbg !1008

; <label>:36:                                     ; preds = %31
  %37 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1009
  br label %47

; <label>:38:                                     ; preds = %31, %27
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 5) #8, !dbg !1010
  %40 = load i8**, i8*** @argv, align 8, !dbg !1011, !tbaa !586
  %41 = load i32, i32* @pos, align 4, !dbg !1012, !tbaa !676
  %42 = sext i32 %41 to i64, !dbg !1011
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42, !dbg !1011
  %44 = load i8*, i8** %43, align 8, !dbg !1011, !tbaa !586
  %45 = tail call i8* @quote(i8* %44) #8, !dbg !1013
  tail call void (i8*, ...) @test_syntax_error(i8* %39, i8* %45) #15, !dbg !1015
  unreachable, !dbg !1017

; <label>:46:                                     ; preds = %0, %7, %19, %23
  tail call fastcc void @beyond() #15, !dbg !1018
  unreachable, !dbg !1018

; <label>:47:                                     ; preds = %36, %11
  %48 = phi i1 [ %37, %36 ], [ %18, %11 ]
  ret i1 %48, !dbg !1019
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #6 !dbg !1020 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !1057, !tbaa !586
  %2 = load i32, i32* @pos, align 4, !dbg !1058, !tbaa !676
  %3 = add nsw i32 %2, 1, !dbg !1059
  %4 = sext i32 %3 to i64, !dbg !1057
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !1057
  %6 = load i8*, i8** %5, align 8, !dbg !1057, !tbaa !586
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !1060
  br i1 %7, label %8, label %11, !dbg !1061

; <label>:8:                                      ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1062
  %10 = zext i1 %9 to i8, !dbg !1063
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !1022, metadata !578), !dbg !1064
  br label %147, !dbg !1065

; <label>:11:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1027, metadata !578), !dbg !1066
  %12 = sext i32 %2 to i64, !dbg !1067
  %13 = getelementptr inbounds i8*, i8** %1, i64 %12, !dbg !1067
  %14 = load i8*, i8** %13, align 8, !dbg !1067, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1028, metadata !578), !dbg !1069
  %15 = load i8, i8* %14, align 1, !dbg !1067, !tbaa !737
  switch i8 %15, label %50 [
    i8 33, label %16
    i8 40, label %30
  ], !dbg !1070

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1073
  %18 = load i8, i8* %17, align 1, !dbg !1073, !tbaa !737
  %19 = icmp eq i8 %18, 0, !dbg !1076
  br i1 %19, label %20, label %28, !dbg !1078

; <label>:20:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !1080
  store i32 %3, i32* @pos, align 4, !dbg !1083, !tbaa !676
  %21 = load i32, i32* @argc, align 4, !dbg !1084
  %22 = icmp slt i32 %3, %21, !dbg !1085
  br i1 %22, label %24, label %23, !dbg !1086

; <label>:23:                                     ; preds = %20
  tail call fastcc void @beyond() #14, !dbg !1087
  unreachable, !dbg !1087

; <label>:24:                                     ; preds = %20
  %25 = tail call fastcc zeroext i1 @two_arguments(), !dbg !1088
  %26 = xor i1 %25, true, !dbg !1089
  %27 = zext i1 %26 to i8, !dbg !1090
  tail call void @llvm.dbg.value(metadata i8 %27, i64 0, metadata !1022, metadata !578), !dbg !1064
  br label %147, !dbg !1091

; <label>:28:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1034, metadata !578), !dbg !1092
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1035, metadata !578), !dbg !1093
  %29 = icmp eq i8 %15, 40, !dbg !1094
  br i1 %29, label %30, label %50, !dbg !1097

; <label>:30:                                     ; preds = %11, %28
  %31 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1099
  %32 = load i8, i8* %31, align 1, !dbg !1099, !tbaa !737
  %33 = icmp eq i8 %32, 0, !dbg !1102
  br i1 %33, label %34, label %50, !dbg !1104

; <label>:34:                                     ; preds = %30
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1040, metadata !578), !dbg !1106
  %35 = add nsw i32 %2, 2, !dbg !1107
  %36 = sext i32 %35 to i64, !dbg !1107
  %37 = getelementptr inbounds i8*, i8** %1, i64 %36, !dbg !1107
  %38 = load i8*, i8** %37, align 8, !dbg !1107, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !1041, metadata !578), !dbg !1109
  %39 = load i8, i8* %38, align 1, !dbg !1107, !tbaa !737
  %40 = icmp eq i8 %39, 41, !dbg !1110
  br i1 %40, label %41, label %50, !dbg !1113

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1115
  %43 = load i8, i8* %42, align 1, !dbg !1115, !tbaa !737
  %44 = icmp eq i8 %43, 0, !dbg !1118
  br i1 %44, label %45, label %50, !dbg !1120

; <label>:45:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767), !dbg !1122
  %46 = load i8, i8* %6, align 1, !dbg !1125, !tbaa !737
  %47 = icmp ne i8 %46, 0, !dbg !1127
  %48 = zext i1 %47 to i8, !dbg !1128
  tail call void @llvm.dbg.value(metadata i8 %48, i64 0, metadata !1022, metadata !578), !dbg !1064
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767), !dbg !1129
  %49 = add nsw i32 %2, 3, !dbg !1131
  store i32 %49, i32* @pos, align 4, !dbg !1131, !tbaa !676
  br label %147, !dbg !1132

; <label>:50:                                     ; preds = %11, %34, %28, %41, %30
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1047, metadata !578), !dbg !1133
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1048, metadata !578), !dbg !1134
  %51 = load i8, i8* %6, align 1, !dbg !1135, !tbaa !737
  %52 = icmp eq i8 %51, 45, !dbg !1137
  br i1 %52, label %53, label %138, !dbg !1140

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1142
  %55 = load i8, i8* %54, align 1, !dbg !1142, !tbaa !737
  %56 = icmp eq i8 %55, 97, !dbg !1145
  br i1 %56, label %57, label %61, !dbg !1148

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1150
  %59 = load i8, i8* %58, align 1, !dbg !1150, !tbaa !737
  %60 = icmp eq i8 %59, 0, !dbg !1153
  br i1 %60, label %69, label %61, !dbg !1155

; <label>:61:                                     ; preds = %53, %57
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1053, metadata !578), !dbg !1157
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1054, metadata !578), !dbg !1158
  %62 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1159
  %63 = load i8, i8* %62, align 1, !dbg !1159, !tbaa !737
  %64 = icmp eq i8 %63, 111, !dbg !1163
  br i1 %64, label %65, label %138, !dbg !1166

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1168
  %67 = load i8, i8* %66, align 1, !dbg !1168, !tbaa !737
  %68 = icmp eq i8 %67, 0, !dbg !1171
  br i1 %68, label %69, label %138, !dbg !1173

; <label>:69:                                     ; preds = %65, %57
  %70 = load i32, i32* @argc, align 4, !dbg !1175, !tbaa !676
  %71 = icmp slt i32 %2, %70, !dbg !1177
  br i1 %71, label %72, label %73, !dbg !1178

; <label>:72:                                     ; preds = %69
  br label %74, !dbg !1179

; <label>:73:                                     ; preds = %69
  tail call fastcc void @beyond() #14, !dbg !1182
  unreachable, !dbg !1182

; <label>:74:                                     ; preds = %72, %133
  %75 = phi i32 [ %116, %133 ], [ 0, %72 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !830, metadata !578) #8, !dbg !1179
  %76 = tail call fastcc zeroext i1 @term() #8, !dbg !1183
  %77 = zext i1 %76 to i32, !dbg !1183
  %78 = load i32, i32* @pos, align 4, !dbg !1184, !tbaa !676
  %79 = load i32, i32* @argc, align 4, !dbg !1185, !tbaa !676
  %80 = icmp slt i32 %78, %79, !dbg !1186
  br i1 %80, label %81, label %112, !dbg !1187

; <label>:81:                                     ; preds = %74
  br label %82, !dbg !1188

; <label>:82:                                     ; preds = %81, %100
  %83 = phi i32 [ %106, %100 ], [ %79, %81 ]
  %84 = phi i32 [ %105, %100 ], [ %78, %81 ], !dbg !1189
  %85 = phi i32 [ %104, %100 ], [ %77, %81 ]
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !835, metadata !578) #8, !dbg !1188
  %86 = load i8**, i8*** @argv, align 8, !dbg !1191, !tbaa !586
  %87 = sext i32 %84 to i64, !dbg !1191
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87, !dbg !1191
  %89 = load i8*, i8** %88, align 8, !dbg !1191, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !836, metadata !578) #8, !dbg !1192
  %90 = load i8, i8* %89, align 1, !dbg !1191, !tbaa !737
  %91 = icmp eq i8 %90, 45, !dbg !1193
  br i1 %91, label %92, label %108, !dbg !1194

; <label>:92:                                     ; preds = %82
  %93 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1195
  %94 = load i8, i8* %93, align 1, !dbg !1195, !tbaa !737
  %95 = icmp eq i8 %94, 97, !dbg !1196
  br i1 %95, label %96, label %108, !dbg !1197

; <label>:96:                                     ; preds = %92
  %97 = getelementptr inbounds i8, i8* %89, i64 2, !dbg !1198
  %98 = load i8, i8* %97, align 1, !dbg !1198, !tbaa !737
  %99 = icmp eq i8 %98, 0, !dbg !1199
  br i1 %99, label %100, label %108, !dbg !1200

; <label>:100:                                    ; preds = %96
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767) #8, !dbg !1201
  %101 = add nsw i32 %84, 1, !dbg !1189
  store i32 %101, i32* @pos, align 4, !dbg !1189, !tbaa !676
  %102 = tail call fastcc zeroext i1 @term() #8, !dbg !1183
  %103 = zext i1 %102 to i32, !dbg !1183
  %104 = and i32 %103, %85, !dbg !1202
  %105 = load i32, i32* @pos, align 4, !dbg !1184, !tbaa !676
  %106 = load i32, i32* @argc, align 4, !dbg !1185, !tbaa !676
  %107 = icmp slt i32 %105, %106, !dbg !1186
  br i1 %107, label %82, label %108, !dbg !1187, !llvm.loop !886

; <label>:108:                                    ; preds = %96, %100, %92, %82
  %109 = phi i32 [ %83, %82 ], [ %83, %92 ], [ %83, %96 ], [ %106, %100 ]
  %110 = phi i32 [ %84, %82 ], [ %84, %92 ], [ %84, %96 ], [ %105, %100 ]
  %111 = phi i32 [ %85, %82 ], [ %85, %92 ], [ %85, %96 ], [ %104, %100 ]
  br label %112, !dbg !1203

; <label>:112:                                    ; preds = %108, %74
  %113 = phi i32 [ %79, %74 ], [ %109, %108 ], !dbg !1204
  %114 = phi i32 [ %78, %74 ], [ %110, %108 ], !dbg !1205
  %115 = phi i32 [ %77, %74 ], [ %111, %108 ]
  %116 = or i32 %115, %75, !dbg !1203
  %117 = icmp slt i32 %114, %113, !dbg !1207
  br i1 %117, label %118, label %135, !dbg !1208

; <label>:118:                                    ; preds = %112
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !847, metadata !578) #8, !dbg !1209
  %119 = load i8**, i8*** @argv, align 8, !dbg !1210, !tbaa !586
  %120 = sext i32 %114 to i64, !dbg !1210
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120, !dbg !1210
  %122 = load i8*, i8** %121, align 8, !dbg !1210, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !848, metadata !578) #8, !dbg !1211
  %123 = load i8, i8* %122, align 1, !dbg !1210, !tbaa !737
  %124 = icmp eq i8 %123, 45, !dbg !1212
  br i1 %124, label %125, label %135, !dbg !1213

; <label>:125:                                    ; preds = %118
  %126 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !1214
  %127 = load i8, i8* %126, align 1, !dbg !1214, !tbaa !737
  %128 = icmp eq i8 %127, 111, !dbg !1215
  br i1 %128, label %129, label %135, !dbg !1216

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds i8, i8* %122, i64 2, !dbg !1217
  %131 = load i8, i8* %130, align 1, !dbg !1217, !tbaa !737
  %132 = icmp eq i8 %131, 0, !dbg !1218
  br i1 %132, label %133, label %135, !dbg !1219

; <label>:133:                                    ; preds = %129
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767) #8, !dbg !1220
  %134 = add nsw i32 %114, 1, !dbg !1205
  store i32 %134, i32* @pos, align 4, !dbg !1205, !tbaa !676
  br label %74, !dbg !1221, !llvm.loop !922

; <label>:135:                                    ; preds = %118, %125, %112, %129
  %136 = icmp ne i32 %116, 0, !dbg !1203
  %137 = zext i1 %136 to i8, !dbg !1222
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !1022, metadata !578), !dbg !1064
  br label %147

; <label>:138:                                    ; preds = %50, %61, %65
  %139 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), i32 5) #8, !dbg !1223
  %140 = load i8**, i8*** @argv, align 8, !dbg !1224, !tbaa !586
  %141 = load i32, i32* @pos, align 4, !dbg !1225, !tbaa !676
  %142 = add nsw i32 %141, 1, !dbg !1226
  %143 = sext i32 %142 to i64, !dbg !1224
  %144 = getelementptr inbounds i8*, i8** %140, i64 %143, !dbg !1224
  %145 = load i8*, i8** %144, align 8, !dbg !1224, !tbaa !586
  %146 = tail call i8* @quote(i8* %145) #8, !dbg !1227
  tail call void (i8*, ...) @test_syntax_error(i8* %139, i8* %146) #15, !dbg !1229
  unreachable, !dbg !1231

; <label>:147:                                    ; preds = %24, %135, %45, %8
  %148 = phi i8 [ %10, %8 ], [ %27, %24 ], [ %48, %45 ], [ %137, %135 ]
  tail call void @llvm.dbg.value(metadata i8 %148, i64 0, metadata !1022, metadata !578), !dbg !1064
  %149 = icmp ne i8 %148, 0, !dbg !1232
  ret i1 %149, !dbg !1233
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1234 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i32 5) #8, !dbg !1237
  %2 = load i8**, i8*** @argv, align 8, !dbg !1238, !tbaa !586
  %3 = load i32, i32* @argc, align 4, !dbg !1239, !tbaa !676
  %4 = add nsw i32 %3, -1, !dbg !1240
  %5 = sext i32 %4 to i64, !dbg !1238
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !1238
  %7 = load i8*, i8** %6, align 8, !dbg !1238, !tbaa !586
  %8 = tail call i8* @quote(i8* %7) #8, !dbg !1241
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #15, !dbg !1243
  unreachable, !dbg !1245
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #6 !dbg !1246 {
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1249, metadata !578), !dbg !1268
  %1 = load i32, i32* @pos, align 4, !dbg !1269, !tbaa !676
  %2 = load i32, i32* @argc, align 4, !dbg !1271, !tbaa !676
  %3 = icmp slt i32 %1, %2, !dbg !1272
  br i1 %3, label %4, label %33, !dbg !1273

; <label>:4:                                      ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !586
  %6 = sext i32 %1 to i64, !dbg !1274
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !1274
  %8 = load i8*, i8** %7, align 8, !dbg !1274, !tbaa !586
  %9 = load i8, i8* %8, align 1, !dbg !1274, !tbaa !737
  %10 = icmp eq i8 %9, 33, !dbg !1276
  br i1 %10, label %11, label %33, !dbg !1277

; <label>:11:                                     ; preds = %4
  br label %12, !dbg !1278

; <label>:12:                                     ; preds = %11, %23
  %13 = phi i8* [ %27, %23 ], [ %8, %11 ]
  %14 = phi i1 [ %24, %23 ], [ false, %11 ]
  %15 = phi i32 [ %20, %23 ], [ %1, %11 ]
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1278
  %17 = load i8, i8* %16, align 1, !dbg !1278, !tbaa !737
  %18 = icmp eq i8 %17, 0, !dbg !1280
  br i1 %18, label %19, label %30, !dbg !1281

; <label>:19:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !1283
  %20 = add nsw i32 %15, 1, !dbg !1286
  store i32 %20, i32* @pos, align 4, !dbg !1286, !tbaa !676
  %21 = icmp slt i32 %20, %2, !dbg !1287
  br i1 %21, label %23, label %22, !dbg !1288

; <label>:22:                                     ; preds = %19
  tail call fastcc void @beyond() #14, !dbg !1289
  unreachable, !dbg !1289

; <label>:23:                                     ; preds = %19
  %24 = xor i1 %14, true, !dbg !1290
  %25 = sext i32 %20 to i64, !dbg !1274
  %26 = getelementptr inbounds i8*, i8** %5, i64 %25, !dbg !1274
  %27 = load i8*, i8** %26, align 8, !dbg !1274, !tbaa !586
  %28 = load i8, i8* %27, align 1, !dbg !1274, !tbaa !737
  %29 = icmp eq i8 %28, 33, !dbg !1276
  br i1 %29, label %12, label %30, !dbg !1277

; <label>:30:                                     ; preds = %12, %23
  %31 = phi i32 [ %15, %12 ], [ %20, %23 ]
  %32 = phi i1 [ %14, %12 ], [ %24, %23 ]
  br label %33, !dbg !1291

; <label>:33:                                     ; preds = %30, %4, %0
  %34 = phi i32 [ %1, %0 ], [ %1, %4 ], [ %31, %30 ], !dbg !1293
  %35 = phi i1 [ false, %0 ], [ false, %4 ], [ %32, %30 ]
  %36 = icmp sgt i32 %2, %34, !dbg !1291
  br i1 %36, label %38, label %37, !dbg !1297

; <label>:37:                                     ; preds = %33
  tail call fastcc void @beyond() #15, !dbg !1298
  unreachable, !dbg !1298

; <label>:38:                                     ; preds = %33
  %39 = load i8**, i8*** @argv, align 8, !dbg !1299, !tbaa !586
  %40 = sext i32 %34 to i64, !dbg !1299
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40, !dbg !1299
  %42 = load i8*, i8** %41, align 8, !dbg !1299, !tbaa !586
  %43 = load i8, i8* %42, align 1, !dbg !1299, !tbaa !737
  %44 = icmp eq i8 %43, 40, !dbg !1300
  br i1 %44, label %45, label %110, !dbg !1301

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1302
  %47 = load i8, i8* %46, align 1, !dbg !1302, !tbaa !737
  %48 = icmp eq i8 %47, 0, !dbg !1304
  br i1 %48, label %49, label %110, !dbg !1305

; <label>:49:                                     ; preds = %45
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !1306
  %50 = add nsw i32 %34, 1, !dbg !1308
  store i32 %50, i32* @pos, align 4, !dbg !1308, !tbaa !676
  %51 = icmp sgt i32 %2, %50, !dbg !1309
  br i1 %51, label %52, label %56, !dbg !1310

; <label>:52:                                     ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1250, metadata !578), !dbg !1311
  %53 = add nsw i32 %34, 2, !dbg !1312
  %54 = icmp slt i32 %53, %2, !dbg !1313
  br i1 %54, label %55, label %79, !dbg !1314

; <label>:55:                                     ; preds = %52
  br label %57, !dbg !1315

; <label>:56:                                     ; preds = %49
  tail call fastcc void @beyond() #14, !dbg !1316
  unreachable, !dbg !1316

; <label>:57:                                     ; preds = %55, %73
  %58 = phi i32 [ %75, %73 ], [ %53, %55 ]
  %59 = phi i32 [ %74, %73 ], [ 1, %55 ]
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1257, metadata !578), !dbg !1315
  %60 = sext i32 %58 to i64, !dbg !1317
  %61 = getelementptr inbounds i8*, i8** %39, i64 %60, !dbg !1317
  %62 = load i8*, i8** %61, align 8, !dbg !1317, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1258, metadata !578), !dbg !1319
  %63 = load i8, i8* %62, align 1, !dbg !1317, !tbaa !737
  %64 = icmp eq i8 %63, 41, !dbg !1320
  br i1 %64, label %65, label %69, !dbg !1323

; <label>:65:                                     ; preds = %57
  %66 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1325
  %67 = load i8, i8* %66, align 1, !dbg !1325, !tbaa !737
  %68 = icmp eq i8 %67, 0, !dbg !1328
  br i1 %68, label %77, label %69, !dbg !1330

; <label>:69:                                     ; preds = %57, %65
  %70 = icmp eq i32 %59, 4, !dbg !1332
  br i1 %70, label %71, label %73, !dbg !1334

; <label>:71:                                     ; preds = %69
  %72 = sub nsw i32 %2, %50, !dbg !1335
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1250, metadata !578), !dbg !1311
  br label %79, !dbg !1337

; <label>:73:                                     ; preds = %69
  %74 = add nuw nsw i32 %59, 1, !dbg !1338
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !1250, metadata !578), !dbg !1311
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !1250, metadata !578), !dbg !1311
  %75 = add nsw i32 %50, %74, !dbg !1312
  %76 = icmp slt i32 %75, %2, !dbg !1313
  br i1 %76, label %57, label %77, !dbg !1314, !llvm.loop !1339

; <label>:77:                                     ; preds = %65, %73
  %78 = phi i32 [ %74, %73 ], [ %59, %65 ]
  br label %79, !dbg !1311

; <label>:79:                                     ; preds = %77, %52, %71
  %80 = phi i32 [ %72, %71 ], [ 1, %52 ], [ %78, %77 ]
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !1250, metadata !578), !dbg !1311
  %81 = tail call fastcc zeroext i1 @posixtest(i32 %80), !dbg !1342
  %82 = zext i1 %81 to i32, !dbg !1343
  %83 = load i8**, i8*** @argv, align 8, !dbg !1344, !tbaa !586
  %84 = load i32, i32* @pos, align 4, !dbg !1346, !tbaa !676
  %85 = sext i32 %84 to i64, !dbg !1344
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85, !dbg !1344
  %87 = load i8*, i8** %86, align 8, !dbg !1344, !tbaa !586
  %88 = icmp eq i8* %87, null, !dbg !1347
  br i1 %88, label %89, label %92, !dbg !1348

; <label>:89:                                     ; preds = %79
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 5) #8, !dbg !1349
  %91 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1350
  tail call void (i8*, ...) @test_syntax_error(i8* %90, i8* %91) #15, !dbg !1352
  unreachable, !dbg !1354

; <label>:92:                                     ; preds = %79
  %93 = load i8, i8* %87, align 1, !dbg !1355, !tbaa !737
  %94 = icmp eq i8 %93, 41, !dbg !1357
  br i1 %94, label %95, label %99, !dbg !1358

; <label>:95:                                     ; preds = %92
  %96 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1359
  %97 = load i8, i8* %96, align 1, !dbg !1359, !tbaa !737
  %98 = icmp eq i8 %97, 0, !dbg !1359
  br i1 %98, label %108, label %99, !dbg !1361

; <label>:99:                                     ; preds = %95, %92
  %100 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i32 5) #8, !dbg !1362
  %101 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1363
  %102 = load i8**, i8*** @argv, align 8, !dbg !1364, !tbaa !586
  %103 = load i32, i32* @pos, align 4, !dbg !1365, !tbaa !676
  %104 = sext i32 %103 to i64, !dbg !1364
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104, !dbg !1364
  %106 = load i8*, i8** %105, align 8, !dbg !1364, !tbaa !586
  %107 = tail call i8* @quote_n(i32 1, i8* %106) #8, !dbg !1366
  tail call void (i8*, ...) @test_syntax_error(i8* %100, i8* %101, i8* %107) #15, !dbg !1367
  unreachable, !dbg !1368

; <label>:108:                                    ; preds = %95
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767), !dbg !1369
  %109 = add nsw i32 %84, 1, !dbg !1371
  store i32 %109, i32* @pos, align 4, !dbg !1371, !tbaa !676
  br label %177, !dbg !1372

; <label>:110:                                    ; preds = %45, %38
  %111 = sub nsw i32 %2, %34, !dbg !1373
  %112 = icmp sgt i32 %111, 3, !dbg !1374
  br i1 %112, label %113, label %132, !dbg !1375

; <label>:113:                                    ; preds = %110
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1264, metadata !578), !dbg !1376
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !1265, metadata !578), !dbg !1377
  %114 = icmp eq i8 %43, 45, !dbg !1378
  br i1 %114, label %115, label %134, !dbg !1381

; <label>:115:                                    ; preds = %113
  %116 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1383
  %117 = load i8, i8* %116, align 1, !dbg !1383, !tbaa !737
  %118 = icmp eq i8 %117, 108, !dbg !1386
  br i1 %118, label %119, label %134, !dbg !1389

; <label>:119:                                    ; preds = %115
  %120 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !1391
  %121 = load i8, i8* %120, align 1, !dbg !1391, !tbaa !737
  %122 = icmp eq i8 %121, 0, !dbg !1394
  br i1 %122, label %123, label %134, !dbg !1396

; <label>:123:                                    ; preds = %119
  %124 = add nsw i32 %34, 2, !dbg !1398
  %125 = sext i32 %124 to i64, !dbg !1400
  %126 = getelementptr inbounds i8*, i8** %39, i64 %125, !dbg !1400
  %127 = load i8*, i8** %126, align 8, !dbg !1400, !tbaa !586
  %128 = tail call fastcc zeroext i1 @binop(i8* %127), !dbg !1401
  br i1 %128, label %129, label %134, !dbg !1402

; <label>:129:                                    ; preds = %123
  %130 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !1404
  %131 = zext i1 %130 to i32, !dbg !1405
  br label %177, !dbg !1406

; <label>:132:                                    ; preds = %110
  %133 = icmp eq i32 %111, 3, !dbg !1407
  br i1 %133, label %134, label %143, !dbg !1408

; <label>:134:                                    ; preds = %119, %123, %115, %113, %132
  %135 = add nsw i32 %34, 1, !dbg !1409
  %136 = sext i32 %135 to i64, !dbg !1411
  %137 = getelementptr inbounds i8*, i8** %39, i64 %136, !dbg !1411
  %138 = load i8*, i8** %137, align 8, !dbg !1411, !tbaa !586
  %139 = tail call fastcc zeroext i1 @binop(i8* %138), !dbg !1412
  br i1 %139, label %140, label %143, !dbg !1413

; <label>:140:                                    ; preds = %134
  %141 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1415
  %142 = zext i1 %141 to i32, !dbg !1416
  br label %177, !dbg !1417

; <label>:143:                                    ; preds = %134, %132
  %144 = icmp eq i8 %43, 45, !dbg !1418
  br i1 %144, label %145, label %173, !dbg !1419

; <label>:145:                                    ; preds = %143
  %146 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1420
  %147 = load i8, i8* %146, align 1, !dbg !1420, !tbaa !737
  %148 = icmp eq i8 %147, 0, !dbg !1420
  br i1 %148, label %173, label %149, !dbg !1422

; <label>:149:                                    ; preds = %145
  %150 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !1423
  %151 = load i8, i8* %150, align 1, !dbg !1423, !tbaa !737
  %152 = icmp eq i8 %151, 0, !dbg !1425
  br i1 %152, label %153, label %173, !dbg !1426

; <label>:153:                                    ; preds = %149
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !997, metadata !578), !dbg !1428
  %154 = sext i8 %147 to i32, !dbg !1432
  %155 = add nsw i32 %154, -71, !dbg !1433
  %156 = icmp ult i32 %155, 52, !dbg !1433
  br i1 %156, label %157, label %165, !dbg !1433

; <label>:157:                                    ; preds = %153
  %158 = zext i32 %155 to i52, !dbg !1433
  %159 = lshr i52 -1271499365281375, %158, !dbg !1433
  %160 = and i52 %159, 1, !dbg !1433
  %161 = icmp eq i52 %160, 0, !dbg !1433
  br i1 %161, label %165, label %162, !dbg !1434

; <label>:162:                                    ; preds = %157
  %163 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1435
  %164 = zext i1 %163 to i32, !dbg !1436
  br label %177, !dbg !1437

; <label>:165:                                    ; preds = %157, %153
  %166 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 5) #8, !dbg !1438
  %167 = load i8**, i8*** @argv, align 8, !dbg !1439, !tbaa !586
  %168 = load i32, i32* @pos, align 4, !dbg !1440, !tbaa !676
  %169 = sext i32 %168 to i64, !dbg !1439
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169, !dbg !1439
  %171 = load i8*, i8** %170, align 8, !dbg !1439, !tbaa !586
  %172 = tail call i8* @quote(i8* %171) #8, !dbg !1441
  tail call void (i8*, ...) @test_syntax_error(i8* %166, i8* %172) #15, !dbg !1443
  unreachable, !dbg !1445

; <label>:173:                                    ; preds = %145, %149, %143
  %174 = icmp ne i8 %43, 0, !dbg !1446
  %175 = zext i1 %174 to i32, !dbg !1447
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767), !dbg !1448
  %176 = add nsw i32 %34, 1, !dbg !1450
  store i32 %176, i32* @pos, align 4, !dbg !1450, !tbaa !676
  br label %177

; <label>:177:                                    ; preds = %129, %162, %173, %140, %108
  %178 = phi i32 [ %82, %108 ], [ %131, %129 ], [ %142, %140 ], [ %164, %162 ], [ %175, %173 ]
  %179 = zext i1 %35 to i32, !dbg !1451
  %180 = icmp ne i32 %179, %178, !dbg !1451
  ret i1 %180, !dbg !1452
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc zeroext i1 @binop(i8* readonly) unnamed_addr #9 !dbg !1453 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1455, metadata !578), !dbg !1528
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1458, metadata !578), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1459, metadata !578), !dbg !1530
  %2 = load i8, i8* %0, align 1, !dbg !1531, !tbaa !737
  %3 = zext i8 %2 to i32, !dbg !1531
  %4 = icmp eq i8 %2, 61, !dbg !1533
  br i1 %4, label %5, label %9, !dbg !1536

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1538
  %7 = load i8, i8* %6, align 1, !dbg !1538, !tbaa !737
  %8 = icmp eq i8 %7, 0, !dbg !1541
  br i1 %8, label %152, label %9, !dbg !1543

; <label>:9:                                      ; preds = %1, %5
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1464, metadata !578), !dbg !1544
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1465, metadata !578), !dbg !1545
  %10 = icmp eq i8 %2, 33, !dbg !1546
  br i1 %10, label %11, label %19, !dbg !1549

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1551
  %13 = load i8, i8* %12, align 1, !dbg !1551, !tbaa !737
  %14 = icmp eq i8 %13, 61, !dbg !1554
  br i1 %14, label %15, label %19, !dbg !1557

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1559
  %17 = load i8, i8* %16, align 1, !dbg !1559, !tbaa !737
  %18 = icmp eq i8 %17, 0, !dbg !1562
  br i1 %18, label %152, label %19, !dbg !1564

; <label>:19:                                     ; preds = %9, %11, %15
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1470, metadata !578), !dbg !1565
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1471, metadata !578), !dbg !1566
  br i1 %4, label %20, label %28, !dbg !1567

; <label>:20:                                     ; preds = %19
  %21 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1570
  %22 = load i8, i8* %21, align 1, !dbg !1570, !tbaa !737
  %23 = icmp eq i8 %22, 61, !dbg !1573
  br i1 %23, label %24, label %28, !dbg !1576

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1578
  %26 = load i8, i8* %25, align 1, !dbg !1578, !tbaa !737
  %27 = icmp eq i8 %26, 0, !dbg !1581
  br i1 %27, label %152, label %28, !dbg !1583

; <label>:28:                                     ; preds = %19, %20, %24
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1476, metadata !578), !dbg !1584
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1477, metadata !578), !dbg !1585
  %29 = sub nsw i32 45, %3, !dbg !1586
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1479, metadata !578), !dbg !1585
  %30 = icmp eq i32 %29, 0, !dbg !1588
  br i1 %30, label %31, label %93, !dbg !1591

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1593
  %33 = load i8, i8* %32, align 1, !dbg !1593, !tbaa !737
  %34 = icmp eq i8 %33, 110, !dbg !1596
  br i1 %34, label %35, label %44, !dbg !1599

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1601
  %37 = load i8, i8* %36, align 1, !dbg !1601, !tbaa !737
  %38 = icmp eq i8 %37, 116, !dbg !1604
  br i1 %38, label %39, label %43, !dbg !1607

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1609
  %41 = load i8, i8* %40, align 1, !dbg !1609, !tbaa !737
  %42 = icmp eq i8 %41, 0, !dbg !1611
  br i1 %42, label %152, label %43, !dbg !1612

; <label>:43:                                     ; preds = %35, %39
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1482, metadata !578), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1483, metadata !578), !dbg !1614
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1485, metadata !578), !dbg !1614
  br i1 %30, label %44, label %93, !dbg !1615

; <label>:44:                                     ; preds = %31, %43
  %45 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1618
  %46 = load i8, i8* %45, align 1, !dbg !1618, !tbaa !737
  %47 = icmp eq i8 %46, 111, !dbg !1621
  br i1 %47, label %48, label %57, !dbg !1624

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1626
  %50 = load i8, i8* %49, align 1, !dbg !1626, !tbaa !737
  %51 = icmp eq i8 %50, 116, !dbg !1629
  br i1 %51, label %52, label %56, !dbg !1632

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1634
  %54 = load i8, i8* %53, align 1, !dbg !1634, !tbaa !737
  %55 = icmp eq i8 %54, 0, !dbg !1636
  br i1 %55, label %152, label %56, !dbg !1637

; <label>:56:                                     ; preds = %48, %52
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1488, metadata !578), !dbg !1638
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1489, metadata !578), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1491, metadata !578), !dbg !1639
  br i1 %30, label %57, label %93, !dbg !1640

; <label>:57:                                     ; preds = %44, %56
  %58 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1643
  %59 = load i8, i8* %58, align 1, !dbg !1643, !tbaa !737
  %60 = icmp eq i8 %59, 101, !dbg !1646
  br i1 %60, label %61, label %69, !dbg !1649

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1651
  %63 = load i8, i8* %62, align 1, !dbg !1651, !tbaa !737
  %64 = icmp eq i8 %63, 102, !dbg !1654
  br i1 %64, label %65, label %69, !dbg !1657

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1659
  %67 = load i8, i8* %66, align 1, !dbg !1659, !tbaa !737
  %68 = icmp eq i8 %67, 0, !dbg !1661
  br i1 %68, label %152, label %69, !dbg !1662

; <label>:69:                                     ; preds = %65, %61, %57
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1494, metadata !578), !dbg !1663
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1495, metadata !578), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1497, metadata !578), !dbg !1664
  %70 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1665
  %71 = load i8, i8* %70, align 1, !dbg !1665, !tbaa !737
  %72 = icmp eq i8 %71, 101, !dbg !1669
  br i1 %72, label %73, label %81, !dbg !1672

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1674
  %75 = load i8, i8* %74, align 1, !dbg !1674, !tbaa !737
  %76 = icmp eq i8 %75, 113, !dbg !1677
  br i1 %76, label %77, label %81, !dbg !1680

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1682
  %79 = load i8, i8* %78, align 1, !dbg !1682, !tbaa !737
  %80 = icmp eq i8 %79, 0, !dbg !1684
  br i1 %80, label %152, label %81, !dbg !1685

; <label>:81:                                     ; preds = %69, %77, %73
  %82 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1686
  %83 = load i8, i8* %82, align 1, !dbg !1686, !tbaa !737
  %84 = icmp eq i8 %83, 110, !dbg !1690
  br i1 %84, label %85, label %93, !dbg !1693

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1695
  %87 = load i8, i8* %86, align 1, !dbg !1695, !tbaa !737
  %88 = icmp eq i8 %87, 101, !dbg !1698
  br i1 %88, label %89, label %93, !dbg !1701

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1703
  %91 = load i8, i8* %90, align 1, !dbg !1703, !tbaa !737
  %92 = icmp eq i8 %91, 0, !dbg !1705
  br i1 %92, label %152, label %93, !dbg !1706

; <label>:93:                                     ; preds = %56, %43, %28, %81, %85, %89
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1506, metadata !578), !dbg !1707
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1507, metadata !578), !dbg !1708
  %94 = icmp eq i8 %2, 45, !dbg !1709
  br i1 %94, label %95, label %131, !dbg !1712

; <label>:95:                                     ; preds = %93
  %96 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1714
  %97 = load i8, i8* %96, align 1, !dbg !1714, !tbaa !737
  %98 = icmp eq i8 %97, 108, !dbg !1717
  br i1 %98, label %99, label %107, !dbg !1720

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1722
  %101 = load i8, i8* %100, align 1, !dbg !1722, !tbaa !737
  %102 = icmp eq i8 %101, 116, !dbg !1725
  br i1 %102, label %103, label %107, !dbg !1728

; <label>:103:                                    ; preds = %99
  %104 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1730
  %105 = load i8, i8* %104, align 1, !dbg !1730, !tbaa !737
  %106 = icmp eq i8 %105, 0, !dbg !1732
  br i1 %106, label %152, label %107, !dbg !1734

; <label>:107:                                    ; preds = %95, %99, %103
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1512, metadata !578), !dbg !1735
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1513, metadata !578), !dbg !1736
  %108 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1737
  %109 = load i8, i8* %108, align 1, !dbg !1737, !tbaa !737
  %110 = icmp eq i8 %109, 108, !dbg !1741
  br i1 %110, label %111, label %119, !dbg !1744

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1746
  %113 = load i8, i8* %112, align 1, !dbg !1746, !tbaa !737
  %114 = icmp eq i8 %113, 101, !dbg !1749
  br i1 %114, label %115, label %119, !dbg !1752

; <label>:115:                                    ; preds = %111
  %116 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1754
  %117 = load i8, i8* %116, align 1, !dbg !1754, !tbaa !737
  %118 = icmp eq i8 %117, 0, !dbg !1756
  br i1 %118, label %152, label %119, !dbg !1758

; <label>:119:                                    ; preds = %107, %111, %115
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1518, metadata !578), !dbg !1759
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1519, metadata !578), !dbg !1760
  %120 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1761
  %121 = load i8, i8* %120, align 1, !dbg !1761, !tbaa !737
  %122 = icmp eq i8 %121, 103, !dbg !1765
  br i1 %122, label %123, label %131, !dbg !1768

; <label>:123:                                    ; preds = %119
  %124 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1770
  %125 = load i8, i8* %124, align 1, !dbg !1770, !tbaa !737
  %126 = icmp eq i8 %125, 116, !dbg !1773
  br i1 %126, label %127, label %131, !dbg !1776

; <label>:127:                                    ; preds = %123
  %128 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1778
  %129 = load i8, i8* %128, align 1, !dbg !1778, !tbaa !737
  %130 = icmp eq i8 %129, 0, !dbg !1780
  br i1 %130, label %152, label %131, !dbg !1782

; <label>:131:                                    ; preds = %93, %119, %123, %127
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1524, metadata !578), !dbg !1783
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1525, metadata !578), !dbg !1784
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1527, metadata !578), !dbg !1784
  br i1 %30, label %132, label %149, !dbg !1785

; <label>:132:                                    ; preds = %131
  %133 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1788
  %134 = load i8, i8* %133, align 1, !dbg !1788, !tbaa !737
  %135 = zext i8 %134 to i32, !dbg !1788
  %136 = sub nsw i32 103, %135, !dbg !1788
  tail call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !1527, metadata !578), !dbg !1784
  %137 = icmp eq i32 %136, 0, !dbg !1791
  br i1 %137, label %138, label %149, !dbg !1794

; <label>:138:                                    ; preds = %132
  %139 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1796
  %140 = load i8, i8* %139, align 1, !dbg !1796, !tbaa !737
  %141 = zext i8 %140 to i32, !dbg !1796
  %142 = sub nsw i32 101, %141, !dbg !1796
  tail call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !1527, metadata !578), !dbg !1784
  %143 = icmp eq i32 %142, 0, !dbg !1799
  br i1 %143, label %144, label %149, !dbg !1802

; <label>:144:                                    ; preds = %138
  %145 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1804
  %146 = load i8, i8* %145, align 1, !dbg !1804, !tbaa !737
  %147 = zext i8 %146 to i32, !dbg !1804
  %148 = sub nsw i32 0, %147, !dbg !1804
  tail call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !1527, metadata !578), !dbg !1784
  br label %149, !dbg !1804

; <label>:149:                                    ; preds = %132, %144, %138, %131
  %150 = phi i32 [ %148, %144 ], [ %142, %138 ], [ %136, %132 ], [ %29, %131 ]
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !1527, metadata !578), !dbg !1784
  %151 = icmp eq i32 %150, 0, !dbg !1806
  br label %152, !dbg !1808

; <label>:152:                                    ; preds = %149, %127, %115, %103, %89, %77, %65, %52, %39, %24, %15, %5
  %153 = phi i1 [ true, %127 ], [ true, %115 ], [ true, %103 ], [ true, %89 ], [ true, %77 ], [ true, %65 ], [ true, %52 ], [ true, %39 ], [ true, %24 ], [ true, %15 ], [ true, %5 ], [ %151, %149 ]
  ret i1 %153, !dbg !1809
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext) unnamed_addr #6 !dbg !1811 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1815, metadata !767), !dbg !1909
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !1910
  call void @llvm.lifetime.start(i64 144, i8* nonnull %10) #8, !dbg !1910
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !1910
  call void @llvm.lifetime.start(i64 144, i8* nonnull %11) #8, !dbg !1910
  %12 = load i32, i32* @pos, align 4, !tbaa !676
  br i1 %0, label %13, label %15, !dbg !1911

; <label>:13:                                     ; preds = %1
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767), !dbg !1912
  %14 = add nsw i32 %12, 1, !dbg !1915
  store i32 %14, i32* @pos, align 4, !dbg !1915, !tbaa !676
  br label %15, !dbg !1916

; <label>:15:                                     ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !1917
  %17 = add nsw i32 %16, 1, !dbg !1920
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1816, metadata !578), !dbg !1921
  %18 = load i32, i32* @argc, align 4, !dbg !1922, !tbaa !676
  %19 = add nsw i32 %18, -2, !dbg !1923
  %20 = icmp slt i32 %17, %19, !dbg !1924
  %21 = load i8**, i8*** @argv, align 8, !tbaa !586
  br i1 %20, label %22, label %38, !dbg !1925

; <label>:22:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1861, metadata !578), !dbg !1926
  %23 = add nsw i32 %16, 2, !dbg !1927
  %24 = sext i32 %23 to i64, !dbg !1927
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !1927
  %26 = load i8*, i8** %25, align 8, !dbg !1927, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1862, metadata !578), !dbg !1929
  %27 = load i8, i8* %26, align 1, !dbg !1927, !tbaa !737
  %28 = icmp eq i8 %27, 45, !dbg !1930
  br i1 %28, label %29, label %38, !dbg !1933

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1935
  %31 = load i8, i8* %30, align 1, !dbg !1935, !tbaa !737
  %32 = icmp eq i8 %31, 108, !dbg !1938
  br i1 %32, label %33, label %38, !dbg !1941

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !1943
  %35 = load i8, i8* %34, align 1, !dbg !1943, !tbaa !737
  %36 = icmp eq i8 %35, 0, !dbg !1946
  br i1 %36, label %37, label %38, !dbg !1948

; <label>:37:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1857, metadata !578), !dbg !1950
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !762, metadata !767), !dbg !1951
  store i32 %17, i32* @pos, align 4, !dbg !1917, !tbaa !676
  br label %38, !dbg !1952

; <label>:38:                                     ; preds = %15, %22, %29, %33, %37
  %39 = phi i32 [ %17, %37 ], [ %16, %33 ], [ %16, %29 ], [ %16, %22 ], [ %16, %15 ], !dbg !1953
  %40 = phi i1 [ true, %37 ], [ false, %33 ], [ false, %29 ], [ false, %22 ], [ false, %15 ]
  %41 = sext i32 %17 to i64, !dbg !1954
  %42 = getelementptr inbounds i8*, i8** %21, i64 %41, !dbg !1954
  %43 = load i8*, i8** %42, align 8, !dbg !1954, !tbaa !586
  %44 = load i8, i8* %43, align 1, !dbg !1954, !tbaa !737
  switch i8 %44, label %292 [
    i8 45, label %45
    i8 61, label %255
    i8 33, label %273
  ], !dbg !1955

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1956
  %47 = load i8, i8* %46, align 1, !dbg !1956, !tbaa !737
  switch i8 %47, label %115 [
    i8 108, label %48
    i8 103, label %48
    i8 101, label %51
    i8 110, label %55
  ], !dbg !1957

; <label>:48:                                     ; preds = %45, %45
  %49 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !1958
  %50 = load i8, i8* %49, align 1, !dbg !1958, !tbaa !737
  switch i8 %50, label %115 [
    i8 101, label %59
    i8 116, label %59
  ], !dbg !1960

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !1961
  %53 = load i8, i8* %52, align 1, !dbg !1961, !tbaa !737
  %54 = icmp eq i8 %53, 113, !dbg !1963
  br i1 %54, label %59, label %115, !dbg !1964

; <label>:55:                                     ; preds = %45
  %56 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !1965
  %57 = load i8, i8* %56, align 1, !dbg !1965, !tbaa !737
  %58 = icmp eq i8 %57, 101, !dbg !1966
  br i1 %58, label %59, label %115, !dbg !1967

; <label>:59:                                     ; preds = %48, %48, %55, %51
  %60 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !1968
  %61 = load i8, i8* %60, align 1, !dbg !1968, !tbaa !737
  %62 = icmp eq i8 %61, 0, !dbg !1968
  br i1 %62, label %63, label %115, !dbg !1969

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1971
  call void @llvm.lifetime.start(i64 21, i8* nonnull %64) #8, !dbg !1971
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !1865, metadata !578), !dbg !1972
  %65 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !1973
  call void @llvm.lifetime.start(i64 21, i8* nonnull %65) #8, !dbg !1973
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !1873, metadata !578), !dbg !1974
  %66 = sext i32 %16 to i64
  %67 = getelementptr inbounds i8*, i8** %21, i64 %66
  %68 = load i8*, i8** %67, align 8, !tbaa !586
  br i1 %0, label %69, label %72, !dbg !1975

; <label>:69:                                     ; preds = %63
  %70 = tail call i64 @strlen(i8* %68) #13, !dbg !1976
  %71 = call i8* @umaxtostr(i64 %70, i8* nonnull %64) #8, !dbg !1977
  br label %74, !dbg !1979

; <label>:72:                                     ; preds = %63
  %73 = tail call fastcc i8* @find_int(i8* %68), !dbg !1980
  br label %74, !dbg !1981

; <label>:74:                                     ; preds = %72, %69
  %75 = phi i8* [ %71, %69 ], [ %73, %72 ], !dbg !1983
  call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !1874, metadata !578), !dbg !1985
  %76 = load i8**, i8*** @argv, align 8, !tbaa !586
  br i1 %40, label %77, label %84, !dbg !1986

; <label>:77:                                     ; preds = %74
  %78 = add nsw i32 %16, 3, !dbg !1987
  %79 = sext i32 %78 to i64, !dbg !1988
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79, !dbg !1988
  %81 = load i8*, i8** %80, align 8, !dbg !1988, !tbaa !586
  %82 = call i64 @strlen(i8* %81) #13, !dbg !1989
  %83 = call i8* @umaxtostr(i64 %82, i8* nonnull %65) #8, !dbg !1990
  br label %90, !dbg !1991

; <label>:84:                                     ; preds = %74
  %85 = add nsw i32 %16, 2, !dbg !1992
  %86 = sext i32 %85 to i64, !dbg !1993
  %87 = getelementptr inbounds i8*, i8** %76, i64 %86, !dbg !1993
  %88 = load i8*, i8** %87, align 8, !dbg !1993, !tbaa !586
  %89 = call fastcc i8* @find_int(i8* %88), !dbg !1994
  br label %90, !dbg !1995

; <label>:90:                                     ; preds = %84, %77
  %91 = phi i8* [ %83, %77 ], [ %89, %84 ], !dbg !1996
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1875, metadata !578), !dbg !1997
  %92 = call i32 @strintcmp(i8* %75, i8* %91) #13, !dbg !1998
  call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !1876, metadata !578), !dbg !1999
  %93 = load i8**, i8*** @argv, align 8, !dbg !2000, !tbaa !586
  %94 = getelementptr inbounds i8*, i8** %93, i64 %41, !dbg !2000
  %95 = load i8*, i8** %94, align 8, !dbg !2000, !tbaa !586
  %96 = getelementptr inbounds i8, i8* %95, i64 2, !dbg !2000
  %97 = load i8, i8* %96, align 1, !dbg !2000, !tbaa !737
  %98 = icmp eq i8 %97, 101, !dbg !2001
  %99 = load i32, i32* @pos, align 4, !dbg !2002, !tbaa !676
  %100 = add nsw i32 %99, 3, !dbg !2002
  store i32 %100, i32* @pos, align 4, !dbg !2002, !tbaa !676
  %101 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !2003
  %102 = load i8, i8* %101, align 1, !dbg !2003, !tbaa !737
  switch i8 %102, label %109 [
    i8 108, label %103
    i8 103, label %106
  ], !dbg !2003

; <label>:103:                                    ; preds = %90
  %104 = zext i1 %98 to i32, !dbg !2004
  %105 = icmp slt i32 %92, %104, !dbg !2005
  br label %113, !dbg !2006

; <label>:106:                                    ; preds = %90
  %107 = sext i1 %98 to i32, !dbg !2007
  %108 = icmp sgt i32 %92, %107, !dbg !2008
  br label %113, !dbg !2009

; <label>:109:                                    ; preds = %90
  %110 = icmp ne i32 %92, 0, !dbg !2010
  %111 = xor i1 %110, %98, !dbg !2011
  %112 = xor i1 %111, true, !dbg !2011
  br label %113, !dbg !2012

; <label>:113:                                    ; preds = %106, %109, %103
  %114 = phi i1 [ %105, %103 ], [ %112, %109 ], [ %108, %106 ]
  call void @llvm.lifetime.end(i64 21, i8* nonnull %65) #8, !dbg !2013
  call void @llvm.lifetime.end(i64 21, i8* nonnull %64) #8, !dbg !2013
  br label %293

; <label>:115:                                    ; preds = %45, %48, %51, %59, %55
  %116 = sext i8 %47 to i32, !dbg !2014
  switch i32 %116, label %249 [
    i32 110, label %117
    i32 101, label %164
    i32 111, label %203
  ], !dbg !2015

; <label>:117:                                    ; preds = %115
  %118 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2016
  %119 = load i8, i8* %118, align 1, !dbg !2016, !tbaa !737
  %120 = icmp eq i8 %119, 116, !dbg !2017
  br i1 %120, label %121, label %249, !dbg !2018

; <label>:121:                                    ; preds = %117
  %122 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !2019
  %123 = load i8, i8* %122, align 1, !dbg !2019, !tbaa !737
  %124 = icmp eq i8 %123, 0, !dbg !2019
  br i1 %124, label %125, label %249, !dbg !2021

; <label>:125:                                    ; preds = %121
  %126 = add nsw i32 %39, 3, !dbg !2023
  store i32 %126, i32* @pos, align 4, !dbg !2023, !tbaa !676
  %127 = or i1 %40, %0, !dbg !2024
  br i1 %127, label %128, label %130, !dbg !2024

; <label>:128:                                    ; preds = %125
  %129 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i32 5) #8, !dbg !2026
  tail call void (i8*, ...) @test_syntax_error(i8* %129, i8* null) #15, !dbg !2027
  unreachable, !dbg !2029

; <label>:130:                                    ; preds = %125
  %131 = sext i32 %16 to i64, !dbg !2030
  %132 = getelementptr inbounds i8*, i8** %21, i64 %131, !dbg !2030
  %133 = load i8*, i8** %132, align 8, !dbg !2030, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1878, metadata !2031), !dbg !2032
  tail call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !2033, metadata !578) #8, !dbg !2042
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !2039, metadata !578) #8, !dbg !2044
  %134 = bitcast %struct.stat* %4 to i8*, !dbg !2045
  call void @llvm.lifetime.start(i64 144, i8* nonnull %134) #8, !dbg !2045
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !2040, metadata !2031) #8, !dbg !2046
  tail call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !2047, metadata !578) #8, !dbg !2055
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !2054, metadata !578) #8, !dbg !2055
  %135 = call i32 @__xstat(i32 1, i8* nonnull %133, %struct.stat* nonnull %4) #8, !dbg !2057
  %136 = icmp eq i32 %135, 0, !dbg !2058
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !2040, metadata !2031) #8, !dbg !2046
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !2059, metadata !578) #8, !dbg !2067
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !2070
  %138 = load i64, i64* %137, align 8, !dbg !2070
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !2070
  %140 = load i64, i64* %139, align 8, !dbg !2070
  call void @llvm.lifetime.end(i64 144, i8* nonnull %134) #8, !dbg !2071
  %141 = load i8**, i8*** @argv, align 8, !dbg !2072, !tbaa !586
  %142 = add nsw i32 %16, 2, !dbg !2073
  %143 = sext i32 %142 to i64, !dbg !2072
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143, !dbg !2072
  %145 = load i8*, i8** %144, align 8, !dbg !2072, !tbaa !586
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1882, metadata !2031), !dbg !2074
  call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !2033, metadata !578) #8, !dbg !2075
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !2039, metadata !578) #8, !dbg !2077
  %146 = bitcast %struct.stat* %3 to i8*, !dbg !2078
  call void @llvm.lifetime.start(i64 144, i8* nonnull %146) #8, !dbg !2078
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !2040, metadata !2031) #8, !dbg !2079
  call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !2047, metadata !578) #8, !dbg !2080
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !2054, metadata !578) #8, !dbg !2080
  %147 = call i32 @__xstat(i32 1, i8* nonnull %145, %struct.stat* nonnull %3) #8, !dbg !2082
  %148 = icmp eq i32 %147, 0, !dbg !2083
  br i1 %148, label %150, label %149, !dbg !2084

; <label>:149:                                    ; preds = %130
  call void @llvm.lifetime.end(i64 144, i8* nonnull %146) #8, !dbg !2085
  br label %293, !dbg !2086

; <label>:150:                                    ; preds = %130
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !2040, metadata !2031) #8, !dbg !2079
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !2059, metadata !578) #8, !dbg !2087
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !2089
  %152 = load i64, i64* %151, align 8, !dbg !2089
  %153 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !2089
  %154 = load i64, i64* %153, align 8, !dbg !2089
  call void @llvm.lifetime.end(i64 144, i8* nonnull %146) #8, !dbg !2085
  %155 = xor i1 %136, true, !dbg !2086
  %156 = icmp slt i64 %138, %152, !dbg !2090
  %157 = or i1 %156, %155, !dbg !2086
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !2096, metadata !2100), !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !2096, metadata !2102), !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !2097, metadata !2100), !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !2097, metadata !2102), !dbg !2103
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !2096, metadata !578), !dbg !2101
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !2097, metadata !578), !dbg !2103
  br i1 %157, label %293, label %158, !dbg !2086

; <label>:158:                                    ; preds = %150
  %159 = icmp sgt i64 %138, %152, !dbg !2104
  br i1 %159, label %293, label %160, !dbg !2105

; <label>:160:                                    ; preds = %158
  %161 = sub nsw i64 %140, %154, !dbg !2106
  %162 = trunc i64 %161 to i32, !dbg !2107
  %163 = icmp sgt i32 %162, 0, !dbg !2108
  br label %293, !dbg !2108

; <label>:164:                                    ; preds = %115
  %165 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2110
  %166 = load i8, i8* %165, align 1, !dbg !2110, !tbaa !737
  %167 = icmp eq i8 %166, 102, !dbg !2112
  br i1 %167, label %168, label %249, !dbg !2113

; <label>:168:                                    ; preds = %164
  %169 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !2114
  %170 = load i8, i8* %169, align 1, !dbg !2114, !tbaa !737
  %171 = icmp eq i8 %170, 0, !dbg !2114
  br i1 %171, label %172, label %249, !dbg !2116

; <label>:172:                                    ; preds = %168
  %173 = add nsw i32 %39, 3, !dbg !2117
  store i32 %173, i32* @pos, align 4, !dbg !2117, !tbaa !676
  %174 = or i1 %40, %0, !dbg !2119
  br i1 %174, label %175, label %177, !dbg !2119

; <label>:175:                                    ; preds = %172
  %176 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i32 5) #8, !dbg !2121
  tail call void (i8*, ...) @test_syntax_error(i8* %176, i8* null) #15, !dbg !2122
  unreachable, !dbg !2124

; <label>:177:                                    ; preds = %172
  %178 = sext i32 %16 to i64, !dbg !2125
  %179 = getelementptr inbounds i8*, i8** %21, i64 %178, !dbg !2125
  %180 = load i8*, i8** %179, align 8, !dbg !2125, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !1817, metadata !2031), !dbg !2126
  tail call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !2047, metadata !578) #8, !dbg !2127
  tail call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !2054, metadata !578) #8, !dbg !2127
  %181 = call i32 @__xstat(i32 1, i8* nonnull %180, %struct.stat* nonnull %6) #8, !dbg !2129
  %182 = icmp eq i32 %181, 0, !dbg !2130
  br i1 %182, label %183, label %293, !dbg !2131

; <label>:183:                                    ; preds = %177
  %184 = load i8**, i8*** @argv, align 8, !dbg !2132, !tbaa !586
  %185 = add nsw i32 %16, 2, !dbg !2134
  %186 = sext i32 %185 to i64, !dbg !2132
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186, !dbg !2132
  %188 = load i8*, i8** %187, align 8, !dbg !2132, !tbaa !586
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1856, metadata !2031), !dbg !2135
  call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !2047, metadata !578) #8, !dbg !2136
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !2054, metadata !578) #8, !dbg !2136
  %189 = call i32 @__xstat(i32 1, i8* nonnull %188, %struct.stat* nonnull %7) #8, !dbg !2138
  %190 = icmp eq i32 %189, 0, !dbg !2139
  br i1 %190, label %191, label %293, !dbg !2140

; <label>:191:                                    ; preds = %183
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !2141
  %193 = load i64, i64* %192, align 8, !dbg !2141, !tbaa !2142
  %194 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !2146
  %195 = load i64, i64* %194, align 8, !dbg !2146, !tbaa !2142
  %196 = icmp eq i64 %193, %195, !dbg !2147
  br i1 %196, label %197, label %293, !dbg !2148

; <label>:197:                                    ; preds = %191
  %198 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !2149
  %199 = load i64, i64* %198, align 8, !dbg !2149, !tbaa !2150
  %200 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !2151
  %201 = load i64, i64* %200, align 8, !dbg !2151, !tbaa !2150
  %202 = icmp eq i64 %199, %201, !dbg !2152
  br label %293

; <label>:203:                                    ; preds = %115
  %204 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2153
  %205 = load i8, i8* %204, align 1, !dbg !2153, !tbaa !737
  %206 = icmp eq i8 %205, 116, !dbg !2154
  br i1 %206, label %207, label %249, !dbg !2155

; <label>:207:                                    ; preds = %203
  %208 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !2156
  %209 = load i8, i8* %208, align 1, !dbg !2156, !tbaa !737
  %210 = icmp eq i8 %209, 0, !dbg !2158
  br i1 %210, label %211, label %249, !dbg !2159

; <label>:211:                                    ; preds = %207
  %212 = add nsw i32 %39, 3, !dbg !2160
  store i32 %212, i32* @pos, align 4, !dbg !2160, !tbaa !676
  %213 = or i1 %40, %0, !dbg !2161
  br i1 %213, label %214, label %216, !dbg !2161

; <label>:214:                                    ; preds = %211
  %215 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i32 5) #8, !dbg !2163
  tail call void (i8*, ...) @test_syntax_error(i8* %215, i8* null) #15, !dbg !2164
  unreachable, !dbg !2166

; <label>:216:                                    ; preds = %211
  %217 = sext i32 %16 to i64, !dbg !2167
  %218 = getelementptr inbounds i8*, i8** %21, i64 %217, !dbg !2167
  %219 = load i8*, i8** %218, align 8, !dbg !2167, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1885, metadata !2031), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !2033, metadata !578) #8, !dbg !2169
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !2039, metadata !578) #8, !dbg !2171
  %220 = bitcast %struct.stat* %2 to i8*, !dbg !2172
  call void @llvm.lifetime.start(i64 144, i8* nonnull %220) #8, !dbg !2172
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2040, metadata !2031) #8, !dbg !2173
  tail call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !2047, metadata !578) #8, !dbg !2174
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2054, metadata !578) #8, !dbg !2174
  %221 = call i32 @__xstat(i32 1, i8* nonnull %219, %struct.stat* nonnull %2) #8, !dbg !2176
  call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2040, metadata !2031) #8, !dbg !2173
  call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2059, metadata !578) #8, !dbg !2177
  %222 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !2179
  %223 = load i64, i64* %222, align 8, !dbg !2179
  %224 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !2179
  %225 = load i64, i64* %224, align 8, !dbg !2179
  call void @llvm.lifetime.end(i64 144, i8* nonnull %220) #8, !dbg !2180
  %226 = load i8**, i8*** @argv, align 8, !dbg !2181, !tbaa !586
  %227 = add nsw i32 %16, 2, !dbg !2182
  %228 = sext i32 %227 to i64, !dbg !2181
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228, !dbg !2181
  %230 = load i8*, i8** %229, align 8, !dbg !2181, !tbaa !586
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1888, metadata !2031), !dbg !2183
  call void @llvm.dbg.value(metadata i8* %230, i64 0, metadata !2033, metadata !578) #8, !dbg !2184
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !2039, metadata !578) #8, !dbg !2186
  %231 = bitcast %struct.stat* %5 to i8*, !dbg !2187
  call void @llvm.lifetime.start(i64 144, i8* nonnull %231) #8, !dbg !2187
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !2040, metadata !2031) #8, !dbg !2188
  call void @llvm.dbg.value(metadata i8* %230, i64 0, metadata !2047, metadata !578) #8, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !2054, metadata !578) #8, !dbg !2189
  %232 = call i32 @__xstat(i32 1, i8* nonnull %230, %struct.stat* nonnull %5) #8, !dbg !2191
  %233 = icmp eq i32 %232, 0, !dbg !2192
  br i1 %233, label %235, label %234, !dbg !2193

; <label>:234:                                    ; preds = %216
  call void @llvm.lifetime.end(i64 144, i8* nonnull %231) #8, !dbg !2194
  br label %293, !dbg !2195

; <label>:235:                                    ; preds = %216
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !2040, metadata !2031) #8, !dbg !2188
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !2059, metadata !578) #8, !dbg !2196
  %236 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !2198
  %237 = load i64, i64* %236, align 8, !dbg !2198
  %238 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !2198
  %239 = load i64, i64* %238, align 8, !dbg !2198
  call void @llvm.lifetime.end(i64 144, i8* nonnull %231) #8, !dbg !2194
  %240 = icmp ne i32 %221, 0, !dbg !2195
  %241 = icmp slt i64 %223, %237, !dbg !2199
  %242 = or i1 %240, %241, !dbg !2195
  tail call void @llvm.dbg.value(metadata i64 %223, i64 0, metadata !2096, metadata !2100), !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !2096, metadata !2102), !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !2097, metadata !2100), !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %239, i64 0, metadata !2097, metadata !2102), !dbg !2203
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !2096, metadata !578), !dbg !2202
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !2097, metadata !578), !dbg !2203
  br i1 %242, label %293, label %243, !dbg !2195

; <label>:243:                                    ; preds = %235
  %244 = icmp sgt i64 %223, %237, !dbg !2204
  br i1 %244, label %293, label %245, !dbg !2205

; <label>:245:                                    ; preds = %243
  %246 = sub nsw i64 %225, %239, !dbg !2206
  %247 = trunc i64 %246 to i32, !dbg !2207
  %248 = icmp slt i32 %247, 0, !dbg !2208
  br label %293, !dbg !2208

; <label>:249:                                    ; preds = %121, %168, %203, %207, %164, %117, %115
  %250 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), i32 5) #8, !dbg !2209
  %251 = load i8**, i8*** @argv, align 8, !dbg !2210, !tbaa !586
  %252 = getelementptr inbounds i8*, i8** %251, i64 %41, !dbg !2210
  %253 = load i8*, i8** %252, align 8, !dbg !2210, !tbaa !586
  %254 = tail call i8* @quote(i8* %253) #8, !dbg !2211
  tail call void (i8*, ...) @test_syntax_error(i8* %250, i8* %254) #15, !dbg !2213
  unreachable, !dbg !2214

; <label>:255:                                    ; preds = %38
  %256 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !2215
  %257 = load i8, i8* %256, align 1, !dbg !2215, !tbaa !737
  switch i8 %257, label %292 [
    i8 0, label %262
    i8 61, label %258
  ], !dbg !2217

; <label>:258:                                    ; preds = %255
  %259 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2218
  %260 = load i8, i8* %259, align 1, !dbg !2218, !tbaa !737
  %261 = icmp eq i8 %260, 0, !dbg !2218
  br i1 %261, label %262, label %292, !dbg !2220

; <label>:262:                                    ; preds = %255, %258
  %263 = sext i32 %39 to i64, !dbg !2222
  %264 = getelementptr inbounds i8*, i8** %21, i64 %263, !dbg !2222
  %265 = load i8*, i8** %264, align 8, !dbg !2222, !tbaa !586
  %266 = add nsw i32 %39, 2, !dbg !2222
  %267 = sext i32 %266 to i64, !dbg !2222
  %268 = getelementptr inbounds i8*, i8** %21, i64 %267, !dbg !2222
  %269 = load i8*, i8** %268, align 8, !dbg !2222, !tbaa !586
  %270 = tail call i32 @strcmp(i8* %265, i8* %269) #8, !dbg !2222
  %271 = icmp eq i32 %270, 0, !dbg !2223
  %272 = add nsw i32 %39, 3, !dbg !2224
  store i32 %272, i32* @pos, align 4, !dbg !2224, !tbaa !676
  br label %293

; <label>:273:                                    ; preds = %38
  %274 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !2225
  %275 = load i8, i8* %274, align 1, !dbg !2225, !tbaa !737
  %276 = icmp eq i8 %275, 61, !dbg !2229
  br i1 %276, label %277, label %292, !dbg !2232

; <label>:277:                                    ; preds = %273
  %278 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2234
  %279 = load i8, i8* %278, align 1, !dbg !2234, !tbaa !737
  %280 = icmp eq i8 %279, 0, !dbg !2237
  br i1 %280, label %281, label %292, !dbg !2239

; <label>:281:                                    ; preds = %277
  %282 = sext i32 %39 to i64, !dbg !1953
  %283 = getelementptr inbounds i8*, i8** %21, i64 %282, !dbg !1953
  %284 = load i8*, i8** %283, align 8, !dbg !1953, !tbaa !586
  %285 = add nsw i32 %39, 2, !dbg !1953
  %286 = sext i32 %285 to i64, !dbg !1953
  %287 = getelementptr inbounds i8*, i8** %21, i64 %286, !dbg !1953
  %288 = load i8*, i8** %287, align 8, !dbg !1953, !tbaa !586
  %289 = tail call i32 @strcmp(i8* %284, i8* %288) #8, !dbg !1953
  %290 = icmp ne i32 %289, 0, !dbg !2241
  %291 = add nsw i32 %39, 3, !dbg !2242
  store i32 %291, i32* @pos, align 4, !dbg !2242, !tbaa !676
  br label %293

; <label>:292:                                    ; preds = %38, %258, %255, %273, %277
  tail call void @abort() #14, !dbg !2243
  unreachable, !dbg !2243

; <label>:293:                                    ; preds = %235, %150, %245, %243, %160, %158, %234, %149, %177, %183, %191, %197, %281, %262, %113
  %294 = phi i1 [ %114, %113 ], [ %290, %281 ], [ %271, %262 ], [ false, %191 ], [ false, %183 ], [ false, %177 ], [ %202, %197 ], [ false, %150 ], [ %136, %149 ], [ true, %235 ], [ false, %234 ], [ %163, %160 ], [ true, %158 ], [ %248, %245 ], [ false, %243 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %11) #8, !dbg !2244
  call void @llvm.lifetime.end(i64 144, i8* nonnull %10) #8, !dbg !2244
  ret i1 %294, !dbg !2244
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #6 !dbg !2245 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !2261
  call void @llvm.lifetime.start(i64 144, i8* nonnull %2) #8, !dbg !2261
  %3 = load i8**, i8*** @argv, align 8, !dbg !2262, !tbaa !586
  %4 = load i32, i32* @pos, align 4, !dbg !2263, !tbaa !676
  %5 = sext i32 %4 to i64, !dbg !2262
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !2262
  %7 = load i8*, i8** %6, align 8, !dbg !2262, !tbaa !586
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2262
  %9 = load i8, i8* %8, align 1, !dbg !2262, !tbaa !737
  %10 = sext i8 %9 to i32, !dbg !2262
  switch i32 %10, label %336 [
    i32 97, label %11
    i32 101, label %11
    i32 114, label %23
    i32 119, label %35
    i32 120, label %47
    i32 79, label %59
    i32 71, label %82
    i32 102, label %105
    i32 100, label %122
    i32 115, label %139
    i32 83, label %155
    i32 99, label %172
    i32 98, label %189
    i32 112, label %206
    i32 76, label %223
    i32 104, label %223
    i32 117, label %240
    i32 103, label %257
    i32 107, label %274
    i32 116, label %291
    i32 110, label %312
    i32 122, label %324
  ], !dbg !2264

; <label>:11:                                     ; preds = %0, %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2265
  %12 = add nsw i32 %4, 1, !dbg !2269
  store i32 %12, i32* @pos, align 4, !dbg !2269, !tbaa !676
  %13 = load i32, i32* @argc, align 4, !dbg !2270
  %14 = icmp slt i32 %12, %13, !dbg !2271
  br i1 %14, label %16, label %15, !dbg !2272

; <label>:15:                                     ; preds = %11
  tail call fastcc void @beyond() #14, !dbg !2273
  unreachable, !dbg !2273

; <label>:16:                                     ; preds = %11
  %17 = add nsw i32 %4, 2, !dbg !2274
  store i32 %17, i32* @pos, align 4, !dbg !2274, !tbaa !676
  %18 = sext i32 %12 to i64, !dbg !2275
  %19 = getelementptr inbounds i8*, i8** %3, i64 %18, !dbg !2275
  %20 = load i8*, i8** %19, align 8, !dbg !2275, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2047, metadata !578) #8, !dbg !2277
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2277
  %21 = call i32 @__xstat(i32 1, i8* nonnull %20, %struct.stat* nonnull %1) #8, !dbg !2279
  %22 = icmp eq i32 %21, 0, !dbg !2280
  br label %336, !dbg !2281

; <label>:23:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2282
  %24 = add nsw i32 %4, 1, !dbg !2285
  store i32 %24, i32* @pos, align 4, !dbg !2285, !tbaa !676
  %25 = load i32, i32* @argc, align 4, !dbg !2286
  %26 = icmp slt i32 %24, %25, !dbg !2287
  br i1 %26, label %28, label %27, !dbg !2288

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #14, !dbg !2289
  unreachable, !dbg !2289

; <label>:28:                                     ; preds = %23
  %29 = add nsw i32 %4, 2, !dbg !2290
  store i32 %29, i32* @pos, align 4, !dbg !2290, !tbaa !676
  %30 = sext i32 %24 to i64, !dbg !2291
  %31 = getelementptr inbounds i8*, i8** %3, i64 %30, !dbg !2291
  %32 = load i8*, i8** %31, align 8, !dbg !2291, !tbaa !586
  %33 = tail call i32 @euidaccess(i8* %32, i32 4) #8, !dbg !2292
  %34 = icmp eq i32 %33, 0, !dbg !2293
  br label %336, !dbg !2294

; <label>:35:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2295
  %36 = add nsw i32 %4, 1, !dbg !2298
  store i32 %36, i32* @pos, align 4, !dbg !2298, !tbaa !676
  %37 = load i32, i32* @argc, align 4, !dbg !2299
  %38 = icmp slt i32 %36, %37, !dbg !2300
  br i1 %38, label %40, label %39, !dbg !2301

; <label>:39:                                     ; preds = %35
  tail call fastcc void @beyond() #14, !dbg !2302
  unreachable, !dbg !2302

; <label>:40:                                     ; preds = %35
  %41 = add nsw i32 %4, 2, !dbg !2303
  store i32 %41, i32* @pos, align 4, !dbg !2303, !tbaa !676
  %42 = sext i32 %36 to i64, !dbg !2304
  %43 = getelementptr inbounds i8*, i8** %3, i64 %42, !dbg !2304
  %44 = load i8*, i8** %43, align 8, !dbg !2304, !tbaa !586
  %45 = tail call i32 @euidaccess(i8* %44, i32 2) #8, !dbg !2305
  %46 = icmp eq i32 %45, 0, !dbg !2306
  br label %336, !dbg !2307

; <label>:47:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2308
  %48 = add nsw i32 %4, 1, !dbg !2311
  store i32 %48, i32* @pos, align 4, !dbg !2311, !tbaa !676
  %49 = load i32, i32* @argc, align 4, !dbg !2312
  %50 = icmp slt i32 %48, %49, !dbg !2313
  br i1 %50, label %52, label %51, !dbg !2314

; <label>:51:                                     ; preds = %47
  tail call fastcc void @beyond() #14, !dbg !2315
  unreachable, !dbg !2315

; <label>:52:                                     ; preds = %47
  %53 = add nsw i32 %4, 2, !dbg !2316
  store i32 %53, i32* @pos, align 4, !dbg !2316, !tbaa !676
  %54 = sext i32 %48 to i64, !dbg !2317
  %55 = getelementptr inbounds i8*, i8** %3, i64 %54, !dbg !2317
  %56 = load i8*, i8** %55, align 8, !dbg !2317, !tbaa !586
  %57 = tail call i32 @euidaccess(i8* %56, i32 1) #8, !dbg !2318
  %58 = icmp eq i32 %57, 0, !dbg !2319
  br label %336, !dbg !2320

; <label>:59:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2321
  %60 = add nsw i32 %4, 1, !dbg !2324
  store i32 %60, i32* @pos, align 4, !dbg !2324, !tbaa !676
  %61 = load i32, i32* @argc, align 4, !dbg !2325
  %62 = icmp slt i32 %60, %61, !dbg !2326
  br i1 %62, label %64, label %63, !dbg !2327

; <label>:63:                                     ; preds = %59
  tail call fastcc void @beyond() #14, !dbg !2328
  unreachable, !dbg !2328

; <label>:64:                                     ; preds = %59
  %65 = add nsw i32 %4, 2, !dbg !2329
  store i32 %65, i32* @pos, align 4, !dbg !2329, !tbaa !676
  %66 = sext i32 %60 to i64, !dbg !2330
  %67 = getelementptr inbounds i8*, i8** %3, i64 %66, !dbg !2330
  %68 = load i8*, i8** %67, align 8, !dbg !2330, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !2047, metadata !578) #8, !dbg !2332
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2332
  %69 = call i32 @__xstat(i32 1, i8* nonnull %68, %struct.stat* nonnull %1) #8, !dbg !2334
  %70 = icmp eq i32 %69, 0, !dbg !2335
  br i1 %70, label %71, label %336, !dbg !2336

; <label>:71:                                     ; preds = %64
  %72 = tail call i32* @__errno_location() #1, !dbg !2337
  store i32 0, i32* %72, align 4, !dbg !2338, !tbaa !676
  %73 = call i32 @geteuid() #8, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !2248, metadata !578), !dbg !2340
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !2253, metadata !578), !dbg !2341
  %74 = icmp eq i32 %73, -1, !dbg !2342
  br i1 %74, label %75, label %78, !dbg !2343

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %72, align 4, !dbg !2344, !tbaa !676
  %77 = icmp eq i32 %76, 0, !dbg !2344
  br i1 %77, label %78, label %336, !dbg !2346

; <label>:78:                                     ; preds = %75, %71
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !2347
  %80 = load i32, i32* %79, align 4, !dbg !2347, !tbaa !2349
  %81 = icmp eq i32 %73, %80, !dbg !2350
  br label %336

; <label>:82:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2351
  %83 = add nsw i32 %4, 1, !dbg !2354
  store i32 %83, i32* @pos, align 4, !dbg !2354, !tbaa !676
  %84 = load i32, i32* @argc, align 4, !dbg !2355
  %85 = icmp slt i32 %83, %84, !dbg !2356
  br i1 %85, label %87, label %86, !dbg !2357

; <label>:86:                                     ; preds = %82
  tail call fastcc void @beyond() #14, !dbg !2358
  unreachable, !dbg !2358

; <label>:87:                                     ; preds = %82
  %88 = add nsw i32 %4, 2, !dbg !2359
  store i32 %88, i32* @pos, align 4, !dbg !2359, !tbaa !676
  %89 = sext i32 %83 to i64, !dbg !2360
  %90 = getelementptr inbounds i8*, i8** %3, i64 %89, !dbg !2360
  %91 = load i8*, i8** %90, align 8, !dbg !2360, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !2047, metadata !578) #8, !dbg !2362
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2362
  %92 = call i32 @__xstat(i32 1, i8* nonnull %91, %struct.stat* nonnull %1) #8, !dbg !2364
  %93 = icmp eq i32 %92, 0, !dbg !2365
  br i1 %93, label %94, label %336, !dbg !2366

; <label>:94:                                     ; preds = %87
  %95 = tail call i32* @__errno_location() #1, !dbg !2367
  store i32 0, i32* %95, align 4, !dbg !2368, !tbaa !676
  %96 = call i32 @getegid() #8, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2254, metadata !578), !dbg !2370
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !2257, metadata !578), !dbg !2371
  %97 = icmp eq i32 %96, -1, !dbg !2372
  br i1 %97, label %98, label %101, !dbg !2373

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %95, align 4, !dbg !2374, !tbaa !676
  %100 = icmp eq i32 %99, 0, !dbg !2374
  br i1 %100, label %101, label %336, !dbg !2376

; <label>:101:                                    ; preds = %98, %94
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !2377
  %103 = load i32, i32* %102, align 8, !dbg !2377, !tbaa !2379
  %104 = icmp eq i32 %96, %103, !dbg !2380
  br label %336

; <label>:105:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2381
  %106 = add nsw i32 %4, 1, !dbg !2384
  store i32 %106, i32* @pos, align 4, !dbg !2384, !tbaa !676
  %107 = load i32, i32* @argc, align 4, !dbg !2385
  %108 = icmp slt i32 %106, %107, !dbg !2386
  br i1 %108, label %110, label %109, !dbg !2387

; <label>:109:                                    ; preds = %105
  tail call fastcc void @beyond() #14, !dbg !2388
  unreachable, !dbg !2388

; <label>:110:                                    ; preds = %105
  %111 = add nsw i32 %4, 2, !dbg !2389
  store i32 %111, i32* @pos, align 4, !dbg !2389, !tbaa !676
  %112 = sext i32 %106 to i64, !dbg !2390
  %113 = getelementptr inbounds i8*, i8** %3, i64 %112, !dbg !2390
  %114 = load i8*, i8** %113, align 8, !dbg !2390, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !2047, metadata !578) #8, !dbg !2391
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2391
  %115 = call i32 @__xstat(i32 1, i8* nonnull %114, %struct.stat* nonnull %1) #8, !dbg !2393
  %116 = icmp eq i32 %115, 0, !dbg !2394
  br i1 %116, label %117, label %336, !dbg !2395

; <label>:117:                                    ; preds = %110
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2396
  %119 = load i32, i32* %118, align 8, !dbg !2396, !tbaa !2398
  %120 = and i32 %119, 61440, !dbg !2396
  %121 = icmp eq i32 %120, 32768, !dbg !2396
  br label %336

; <label>:122:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2399
  %123 = add nsw i32 %4, 1, !dbg !2402
  store i32 %123, i32* @pos, align 4, !dbg !2402, !tbaa !676
  %124 = load i32, i32* @argc, align 4, !dbg !2403
  %125 = icmp slt i32 %123, %124, !dbg !2404
  br i1 %125, label %127, label %126, !dbg !2405

; <label>:126:                                    ; preds = %122
  tail call fastcc void @beyond() #14, !dbg !2406
  unreachable, !dbg !2406

; <label>:127:                                    ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !2407
  store i32 %128, i32* @pos, align 4, !dbg !2407, !tbaa !676
  %129 = sext i32 %123 to i64, !dbg !2408
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !2408
  %131 = load i8*, i8** %130, align 8, !dbg !2408, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !2047, metadata !578) #8, !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2409
  %132 = call i32 @__xstat(i32 1, i8* nonnull %131, %struct.stat* nonnull %1) #8, !dbg !2411
  %133 = icmp eq i32 %132, 0, !dbg !2412
  br i1 %133, label %134, label %336, !dbg !2413

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2414
  %136 = load i32, i32* %135, align 8, !dbg !2414, !tbaa !2398
  %137 = and i32 %136, 61440, !dbg !2414
  %138 = icmp eq i32 %137, 16384, !dbg !2414
  br label %336

; <label>:139:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2415
  %140 = add nsw i32 %4, 1, !dbg !2418
  store i32 %140, i32* @pos, align 4, !dbg !2418, !tbaa !676
  %141 = load i32, i32* @argc, align 4, !dbg !2419
  %142 = icmp slt i32 %140, %141, !dbg !2420
  br i1 %142, label %144, label %143, !dbg !2421

; <label>:143:                                    ; preds = %139
  tail call fastcc void @beyond() #14, !dbg !2422
  unreachable, !dbg !2422

; <label>:144:                                    ; preds = %139
  %145 = add nsw i32 %4, 2, !dbg !2423
  store i32 %145, i32* @pos, align 4, !dbg !2423, !tbaa !676
  %146 = sext i32 %140 to i64, !dbg !2424
  %147 = getelementptr inbounds i8*, i8** %3, i64 %146, !dbg !2424
  %148 = load i8*, i8** %147, align 8, !dbg !2424, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !2047, metadata !578) #8, !dbg !2425
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2425
  %149 = call i32 @__xstat(i32 1, i8* nonnull %148, %struct.stat* nonnull %1) #8, !dbg !2427
  %150 = icmp eq i32 %149, 0, !dbg !2428
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !2429
  %152 = load i64, i64* %151, align 8, !dbg !2429
  %153 = icmp sgt i64 %152, 0, !dbg !2430
  %154 = and i1 %150, %153, !dbg !2431
  br label %336, !dbg !2432

; <label>:155:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2433
  %156 = add nsw i32 %4, 1, !dbg !2436
  store i32 %156, i32* @pos, align 4, !dbg !2436, !tbaa !676
  %157 = load i32, i32* @argc, align 4, !dbg !2437
  %158 = icmp slt i32 %156, %157, !dbg !2438
  br i1 %158, label %160, label %159, !dbg !2439

; <label>:159:                                    ; preds = %155
  tail call fastcc void @beyond() #14, !dbg !2440
  unreachable, !dbg !2440

; <label>:160:                                    ; preds = %155
  %161 = add nsw i32 %4, 2, !dbg !2441
  store i32 %161, i32* @pos, align 4, !dbg !2441, !tbaa !676
  %162 = sext i32 %156 to i64, !dbg !2442
  %163 = getelementptr inbounds i8*, i8** %3, i64 %162, !dbg !2442
  %164 = load i8*, i8** %163, align 8, !dbg !2442, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !2047, metadata !578) #8, !dbg !2443
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2443
  %165 = call i32 @__xstat(i32 1, i8* nonnull %164, %struct.stat* nonnull %1) #8, !dbg !2445
  %166 = icmp eq i32 %165, 0, !dbg !2446
  br i1 %166, label %167, label %336, !dbg !2447

; <label>:167:                                    ; preds = %160
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2448
  %169 = load i32, i32* %168, align 8, !dbg !2448, !tbaa !2398
  %170 = and i32 %169, 61440, !dbg !2448
  %171 = icmp eq i32 %170, 49152, !dbg !2448
  br label %336

; <label>:172:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2449
  %173 = add nsw i32 %4, 1, !dbg !2452
  store i32 %173, i32* @pos, align 4, !dbg !2452, !tbaa !676
  %174 = load i32, i32* @argc, align 4, !dbg !2453
  %175 = icmp slt i32 %173, %174, !dbg !2454
  br i1 %175, label %177, label %176, !dbg !2455

; <label>:176:                                    ; preds = %172
  tail call fastcc void @beyond() #14, !dbg !2456
  unreachable, !dbg !2456

; <label>:177:                                    ; preds = %172
  %178 = add nsw i32 %4, 2, !dbg !2457
  store i32 %178, i32* @pos, align 4, !dbg !2457, !tbaa !676
  %179 = sext i32 %173 to i64, !dbg !2458
  %180 = getelementptr inbounds i8*, i8** %3, i64 %179, !dbg !2458
  %181 = load i8*, i8** %180, align 8, !dbg !2458, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !2047, metadata !578) #8, !dbg !2459
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2459
  %182 = call i32 @__xstat(i32 1, i8* nonnull %181, %struct.stat* nonnull %1) #8, !dbg !2461
  %183 = icmp eq i32 %182, 0, !dbg !2462
  br i1 %183, label %184, label %336, !dbg !2463

; <label>:184:                                    ; preds = %177
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2464
  %186 = load i32, i32* %185, align 8, !dbg !2464, !tbaa !2398
  %187 = and i32 %186, 61440, !dbg !2464
  %188 = icmp eq i32 %187, 8192, !dbg !2464
  br label %336

; <label>:189:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2465
  %190 = add nsw i32 %4, 1, !dbg !2468
  store i32 %190, i32* @pos, align 4, !dbg !2468, !tbaa !676
  %191 = load i32, i32* @argc, align 4, !dbg !2469
  %192 = icmp slt i32 %190, %191, !dbg !2470
  br i1 %192, label %194, label %193, !dbg !2471

; <label>:193:                                    ; preds = %189
  tail call fastcc void @beyond() #14, !dbg !2472
  unreachable, !dbg !2472

; <label>:194:                                    ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !2473
  store i32 %195, i32* @pos, align 4, !dbg !2473, !tbaa !676
  %196 = sext i32 %190 to i64, !dbg !2474
  %197 = getelementptr inbounds i8*, i8** %3, i64 %196, !dbg !2474
  %198 = load i8*, i8** %197, align 8, !dbg !2474, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !2047, metadata !578) #8, !dbg !2475
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2475
  %199 = call i32 @__xstat(i32 1, i8* nonnull %198, %struct.stat* nonnull %1) #8, !dbg !2477
  %200 = icmp eq i32 %199, 0, !dbg !2478
  br i1 %200, label %201, label %336, !dbg !2479

; <label>:201:                                    ; preds = %194
  %202 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2480
  %203 = load i32, i32* %202, align 8, !dbg !2480, !tbaa !2398
  %204 = and i32 %203, 61440, !dbg !2480
  %205 = icmp eq i32 %204, 24576, !dbg !2480
  br label %336

; <label>:206:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2481
  %207 = add nsw i32 %4, 1, !dbg !2484
  store i32 %207, i32* @pos, align 4, !dbg !2484, !tbaa !676
  %208 = load i32, i32* @argc, align 4, !dbg !2485
  %209 = icmp slt i32 %207, %208, !dbg !2486
  br i1 %209, label %211, label %210, !dbg !2487

; <label>:210:                                    ; preds = %206
  tail call fastcc void @beyond() #14, !dbg !2488
  unreachable, !dbg !2488

; <label>:211:                                    ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !2489
  store i32 %212, i32* @pos, align 4, !dbg !2489, !tbaa !676
  %213 = sext i32 %207 to i64, !dbg !2490
  %214 = getelementptr inbounds i8*, i8** %3, i64 %213, !dbg !2490
  %215 = load i8*, i8** %214, align 8, !dbg !2490, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %215, i64 0, metadata !2047, metadata !578) #8, !dbg !2491
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2491
  %216 = call i32 @__xstat(i32 1, i8* nonnull %215, %struct.stat* nonnull %1) #8, !dbg !2493
  %217 = icmp eq i32 %216, 0, !dbg !2494
  br i1 %217, label %218, label %336, !dbg !2495

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2496
  %220 = load i32, i32* %219, align 8, !dbg !2496, !tbaa !2398
  %221 = and i32 %220, 61440, !dbg !2496
  %222 = icmp eq i32 %221, 4096, !dbg !2496
  br label %336

; <label>:223:                                    ; preds = %0, %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2497
  %224 = add nsw i32 %4, 1, !dbg !2500
  store i32 %224, i32* @pos, align 4, !dbg !2500, !tbaa !676
  %225 = load i32, i32* @argc, align 4, !dbg !2501
  %226 = icmp slt i32 %224, %225, !dbg !2502
  br i1 %226, label %228, label %227, !dbg !2503

; <label>:227:                                    ; preds = %223
  tail call fastcc void @beyond() #14, !dbg !2504
  unreachable, !dbg !2504

; <label>:228:                                    ; preds = %223
  %229 = add nsw i32 %4, 2, !dbg !2505
  store i32 %229, i32* @pos, align 4, !dbg !2505, !tbaa !676
  %230 = sext i32 %224 to i64, !dbg !2506
  %231 = getelementptr inbounds i8*, i8** %3, i64 %230, !dbg !2506
  %232 = load i8*, i8** %231, align 8, !dbg !2506, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %232, i64 0, metadata !2507, metadata !578) #8, !dbg !2511
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2510, metadata !578) #8, !dbg !2511
  %233 = call i32 @__lxstat(i32 1, i8* nonnull %232, %struct.stat* nonnull %1) #8, !dbg !2513
  %234 = icmp eq i32 %233, 0, !dbg !2514
  br i1 %234, label %235, label %336, !dbg !2515

; <label>:235:                                    ; preds = %228
  %236 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2516
  %237 = load i32, i32* %236, align 8, !dbg !2516, !tbaa !2398
  %238 = and i32 %237, 61440, !dbg !2516
  %239 = icmp eq i32 %238, 40960, !dbg !2516
  br label %336

; <label>:240:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2517
  %241 = add nsw i32 %4, 1, !dbg !2520
  store i32 %241, i32* @pos, align 4, !dbg !2520, !tbaa !676
  %242 = load i32, i32* @argc, align 4, !dbg !2521
  %243 = icmp slt i32 %241, %242, !dbg !2522
  br i1 %243, label %245, label %244, !dbg !2523

; <label>:244:                                    ; preds = %240
  tail call fastcc void @beyond() #14, !dbg !2524
  unreachable, !dbg !2524

; <label>:245:                                    ; preds = %240
  %246 = add nsw i32 %4, 2, !dbg !2525
  store i32 %246, i32* @pos, align 4, !dbg !2525, !tbaa !676
  %247 = sext i32 %241 to i64, !dbg !2526
  %248 = getelementptr inbounds i8*, i8** %3, i64 %247, !dbg !2526
  %249 = load i8*, i8** %248, align 8, !dbg !2526, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %249, i64 0, metadata !2047, metadata !578) #8, !dbg !2527
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2527
  %250 = call i32 @__xstat(i32 1, i8* nonnull %249, %struct.stat* nonnull %1) #8, !dbg !2529
  %251 = icmp eq i32 %250, 0, !dbg !2530
  br i1 %251, label %252, label %336, !dbg !2531

; <label>:252:                                    ; preds = %245
  %253 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2532
  %254 = load i32, i32* %253, align 8, !dbg !2532, !tbaa !2398
  %255 = and i32 %254, 2048, !dbg !2533
  %256 = icmp ne i32 %255, 0, !dbg !2534
  br label %336

; <label>:257:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2535
  %258 = add nsw i32 %4, 1, !dbg !2538
  store i32 %258, i32* @pos, align 4, !dbg !2538, !tbaa !676
  %259 = load i32, i32* @argc, align 4, !dbg !2539
  %260 = icmp slt i32 %258, %259, !dbg !2540
  br i1 %260, label %262, label %261, !dbg !2541

; <label>:261:                                    ; preds = %257
  tail call fastcc void @beyond() #14, !dbg !2542
  unreachable, !dbg !2542

; <label>:262:                                    ; preds = %257
  %263 = add nsw i32 %4, 2, !dbg !2543
  store i32 %263, i32* @pos, align 4, !dbg !2543, !tbaa !676
  %264 = sext i32 %258 to i64, !dbg !2544
  %265 = getelementptr inbounds i8*, i8** %3, i64 %264, !dbg !2544
  %266 = load i8*, i8** %265, align 8, !dbg !2544, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %266, i64 0, metadata !2047, metadata !578) #8, !dbg !2545
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2545
  %267 = call i32 @__xstat(i32 1, i8* nonnull %266, %struct.stat* nonnull %1) #8, !dbg !2547
  %268 = icmp eq i32 %267, 0, !dbg !2548
  br i1 %268, label %269, label %336, !dbg !2549

; <label>:269:                                    ; preds = %262
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2550
  %271 = load i32, i32* %270, align 8, !dbg !2550, !tbaa !2398
  %272 = and i32 %271, 1024, !dbg !2551
  %273 = icmp ne i32 %272, 0, !dbg !2552
  br label %336

; <label>:274:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2553
  %275 = add nsw i32 %4, 1, !dbg !2556
  store i32 %275, i32* @pos, align 4, !dbg !2556, !tbaa !676
  %276 = load i32, i32* @argc, align 4, !dbg !2557
  %277 = icmp slt i32 %275, %276, !dbg !2558
  br i1 %277, label %279, label %278, !dbg !2559

; <label>:278:                                    ; preds = %274
  tail call fastcc void @beyond() #14, !dbg !2560
  unreachable, !dbg !2560

; <label>:279:                                    ; preds = %274
  %280 = add nsw i32 %4, 2, !dbg !2561
  store i32 %280, i32* @pos, align 4, !dbg !2561, !tbaa !676
  %281 = sext i32 %275 to i64, !dbg !2562
  %282 = getelementptr inbounds i8*, i8** %3, i64 %281, !dbg !2562
  %283 = load i8*, i8** %282, align 8, !dbg !2562, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2247, metadata !2031), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !2047, metadata !578) #8, !dbg !2563
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2054, metadata !578) #8, !dbg !2563
  %284 = call i32 @__xstat(i32 1, i8* nonnull %283, %struct.stat* nonnull %1) #8, !dbg !2565
  %285 = icmp eq i32 %284, 0, !dbg !2566
  br i1 %285, label %286, label %336, !dbg !2567

; <label>:286:                                    ; preds = %279
  %287 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2568
  %288 = load i32, i32* %287, align 8, !dbg !2568, !tbaa !2398
  %289 = and i32 %288, 512, !dbg !2569
  %290 = icmp ne i32 %289, 0, !dbg !2570
  br label %336

; <label>:291:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2571
  %292 = add nsw i32 %4, 1, !dbg !2574
  store i32 %292, i32* @pos, align 4, !dbg !2574, !tbaa !676
  %293 = load i32, i32* @argc, align 4, !dbg !2575
  %294 = icmp slt i32 %292, %293, !dbg !2576
  br i1 %294, label %296, label %295, !dbg !2577

; <label>:295:                                    ; preds = %291
  tail call fastcc void @beyond() #14, !dbg !2578
  unreachable, !dbg !2578

; <label>:296:                                    ; preds = %291
  %297 = add nsw i32 %4, 2, !dbg !2579
  store i32 %297, i32* @pos, align 4, !dbg !2579, !tbaa !676
  %298 = sext i32 %292 to i64, !dbg !2580
  %299 = getelementptr inbounds i8*, i8** %3, i64 %298, !dbg !2580
  %300 = load i8*, i8** %299, align 8, !dbg !2580, !tbaa !586
  %301 = tail call fastcc i8* @find_int(i8* %300), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8* %301, i64 0, metadata !2260, metadata !578), !dbg !2582
  %302 = tail call i32* @__errno_location() #1, !dbg !2583
  store i32 0, i32* %302, align 4, !dbg !2584, !tbaa !676
  %303 = tail call i64 @strtol(i8* nocapture %301, i8** null, i32 10) #8, !dbg !2585
  tail call void @llvm.dbg.value(metadata i64 %303, i64 0, metadata !2258, metadata !578), !dbg !2586
  %304 = load i32, i32* %302, align 4, !dbg !2587, !tbaa !676
  %305 = icmp ne i32 %304, 34, !dbg !2588
  %306 = icmp ult i64 %303, 2147483648, !dbg !2589
  %307 = and i1 %306, %305, !dbg !2589
  br i1 %307, label %308, label %336, !dbg !2589

; <label>:308:                                    ; preds = %296
  %309 = trunc i64 %303 to i32, !dbg !2590
  %310 = tail call i32 @isatty(i32 %309) #8, !dbg !2592
  %311 = icmp ne i32 %310, 0, !dbg !2593
  br label %336

; <label>:312:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2594
  %313 = add nsw i32 %4, 1, !dbg !2597
  store i32 %313, i32* @pos, align 4, !dbg !2597, !tbaa !676
  %314 = load i32, i32* @argc, align 4, !dbg !2598
  %315 = icmp slt i32 %313, %314, !dbg !2599
  br i1 %315, label %317, label %316, !dbg !2600

; <label>:316:                                    ; preds = %312
  tail call fastcc void @beyond() #14, !dbg !2601
  unreachable, !dbg !2601

; <label>:317:                                    ; preds = %312
  %318 = add nsw i32 %4, 2, !dbg !2602
  store i32 %318, i32* @pos, align 4, !dbg !2602, !tbaa !676
  %319 = sext i32 %313 to i64, !dbg !2603
  %320 = getelementptr inbounds i8*, i8** %3, i64 %319, !dbg !2603
  %321 = load i8*, i8** %320, align 8, !dbg !2603, !tbaa !586
  %322 = load i8, i8* %321, align 1, !dbg !2603, !tbaa !737
  %323 = icmp ne i8 %322, 0, !dbg !2604
  br label %336, !dbg !2605

; <label>:324:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !762, metadata !767) #8, !dbg !2606
  %325 = add nsw i32 %4, 1, !dbg !2609
  store i32 %325, i32* @pos, align 4, !dbg !2609, !tbaa !676
  %326 = load i32, i32* @argc, align 4, !dbg !2610
  %327 = icmp slt i32 %325, %326, !dbg !2611
  br i1 %327, label %329, label %328, !dbg !2612

; <label>:328:                                    ; preds = %324
  tail call fastcc void @beyond() #14, !dbg !2613
  unreachable, !dbg !2613

; <label>:329:                                    ; preds = %324
  %330 = add nsw i32 %4, 2, !dbg !2614
  store i32 %330, i32* @pos, align 4, !dbg !2614, !tbaa !676
  %331 = sext i32 %325 to i64, !dbg !2615
  %332 = getelementptr inbounds i8*, i8** %3, i64 %331, !dbg !2615
  %333 = load i8*, i8** %332, align 8, !dbg !2615, !tbaa !586
  %334 = load i8, i8* %333, align 1, !dbg !2615, !tbaa !737
  %335 = icmp eq i8 %334, 0, !dbg !2616
  br label %336, !dbg !2617

; <label>:336:                                    ; preds = %296, %308, %279, %286, %262, %269, %245, %252, %228, %235, %211, %218, %194, %201, %177, %184, %160, %167, %127, %134, %110, %117, %101, %98, %87, %78, %75, %64, %0, %329, %317, %144, %52, %40, %28, %16
  %337 = phi i1 [ %335, %329 ], [ %323, %317 ], [ %154, %144 ], [ %58, %52 ], [ %46, %40 ], [ %34, %28 ], [ %22, %16 ], [ false, %0 ], [ false, %64 ], [ false, %75 ], [ %81, %78 ], [ false, %87 ], [ false, %98 ], [ %104, %101 ], [ false, %110 ], [ %121, %117 ], [ false, %127 ], [ %138, %134 ], [ false, %160 ], [ %171, %167 ], [ false, %177 ], [ %188, %184 ], [ false, %194 ], [ %205, %201 ], [ false, %211 ], [ %222, %218 ], [ false, %228 ], [ %239, %235 ], [ false, %245 ], [ %256, %252 ], [ false, %262 ], [ %273, %269 ], [ false, %279 ], [ %290, %286 ], [ false, %296 ], [ %311, %308 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %2) #8, !dbg !2618
  ret i1 %337, !dbg !2618
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8*) unnamed_addr #6 !dbg !2619 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2623, metadata !578), !dbg !2626
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2624, metadata !578), !dbg !2627
  %2 = tail call i16** @__ctype_b_loc() #1, !dbg !2628
  %3 = load i16*, i16** %2, align 8, !tbaa !586
  br label %4, !dbg !2632

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2624, metadata !578), !dbg !2627
  %6 = load i8, i8* %5, align 1, !dbg !2628, !tbaa !737
  %7 = zext i8 %6 to i64, !dbg !2628
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !2628
  %9 = load i16, i16* %8, align 2, !dbg !2628, !tbaa !2633
  %10 = and i16 %9, 1, !dbg !2628
  %11 = icmp eq i16 %10, 0, !dbg !2635
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2624, metadata !578), !dbg !2627
  br i1 %11, label %13, label %4, !dbg !2635, !llvm.loop !2639

; <label>:13:                                     ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !2642
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2624, metadata !578), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2625, metadata !578), !dbg !2644
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2625, metadata !578), !dbg !2644
  %15 = icmp eq i8 %6, 45, !dbg !2645
  %16 = zext i1 %15 to i64, !dbg !2647
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !2647
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !2624, metadata !578), !dbg !2627
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !2648
  %19 = select i1 %14, i8* %12, i8* %5, !dbg !2648
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2625, metadata !578), !dbg !2644
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !2624, metadata !578), !dbg !2627
  %20 = load i8, i8* %18, align 1, !dbg !2649, !tbaa !737
  %21 = sext i8 %20 to i32, !dbg !2649
  %22 = add nsw i32 %21, -48, !dbg !2649
  %23 = icmp ult i32 %22, 10, !dbg !2649
  br i1 %23, label %24, label %54, !dbg !2651

; <label>:24:                                     ; preds = %13
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi i8* [ %27, %25 ], [ %18, %24 ]
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !2624, metadata !578), !dbg !2627
  %28 = load i8, i8* %27, align 1, !dbg !2652, !tbaa !737
  %29 = sext i8 %28 to i32, !dbg !2652
  %30 = add nsw i32 %29, -48, !dbg !2652
  %31 = icmp ult i32 %30, 10, !dbg !2652
  br i1 %31, label %25, label %32, !dbg !2655, !llvm.loop !2656

; <label>:32:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !2624, metadata !578), !dbg !2627
  %33 = zext i8 %28 to i64, !dbg !2659
  %34 = getelementptr inbounds i16, i16* %3, i64 %33, !dbg !2659
  %35 = load i16, i16* %34, align 2, !dbg !2659, !tbaa !2633
  %36 = and i16 %35, 1, !dbg !2659
  %37 = icmp eq i16 %36, 0, !dbg !2660
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !2624, metadata !578), !dbg !2627
  br i1 %37, label %50, label %38, !dbg !2660, !llvm.loop !2661

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !2663
  br label %40, !dbg !2660

; <label>:40:                                     ; preds = %38, %40
  %41 = phi i8* [ %39, %38 ], [ %48, %40 ]
  %42 = load i8, i8* %41, align 1, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !2624, metadata !578), !dbg !2627
  %43 = zext i8 %42 to i64, !dbg !2659
  %44 = getelementptr inbounds i16, i16* %3, i64 %43, !dbg !2659
  %45 = load i16, i16* %44, align 2, !dbg !2659, !tbaa !2633
  %46 = and i16 %45, 1, !dbg !2659
  %47 = icmp eq i16 %46, 0, !dbg !2660
  %48 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !2663
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !2624, metadata !578), !dbg !2627
  br i1 %47, label %49, label %40, !dbg !2660, !llvm.loop !2661

; <label>:49:                                     ; preds = %40
  br label %50, !dbg !2664

; <label>:50:                                     ; preds = %49, %32
  %51 = phi i8 [ %28, %32 ], [ %42, %49 ]
  %52 = icmp eq i8 %51, 0, !dbg !2664
  br i1 %52, label %53, label %54, !dbg !2666

; <label>:53:                                     ; preds = %50
  ret i8* %19, !dbg !2667

; <label>:54:                                     ; preds = %50, %13
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i32 5) #8, !dbg !2668
  %56 = tail call i8* @quote(i8* %0) #8, !dbg !2669
  tail call void (i8*, ...) @test_syntax_error(i8* %55, i8* %56) #15, !dbg !2671
  unreachable, !dbg !2673
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !2674 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2676, metadata !578), !dbg !2677
  store i8* %0, i8** @file_name, align 8, !dbg !2678, !tbaa !586
  ret void, !dbg !2679
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !2680 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2682, metadata !767), !dbg !2683
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2684, !tbaa !2685
  ret void, !dbg !2687
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !2688 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2693, !tbaa !586
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #8, !dbg !2694
  %3 = icmp eq i32 %2, 0, !dbg !2695
  br i1 %3, label %21, label %4, !dbg !2696

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2697, !tbaa !2685, !range !2699
  %6 = icmp eq i8 %5, 0, !dbg !2697
  %7 = tail call i32* @__errno_location() #1, !dbg !2700
  br i1 %6, label %11, label %8, !dbg !2702

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !2703, !tbaa !676
  %10 = icmp eq i32 %9, 32, !dbg !2705
  br i1 %10, label %21, label %11, !dbg !2706

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #8, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2690, metadata !578), !dbg !2709
  %13 = load i8*, i8** @file_name, align 8, !dbg !2710, !tbaa !586
  %14 = icmp eq i8* %13, null, !dbg !2710
  %15 = load i32, i32* %7, align 4, !tbaa !676
  br i1 %14, label %18, label %16, !dbg !2711

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #8, !dbg !2712
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #8, !dbg !2714
  br label %19, !dbg !2716

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #8, !dbg !2717
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2718, !tbaa !676
  tail call void @_exit(i32 %20) #14, !dbg !2719
  unreachable, !dbg !2719

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2720, !tbaa !586
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #8, !dbg !2722
  %24 = icmp eq i32 %23, 0, !dbg !2723
  br i1 %24, label %27, label %25, !dbg !2724

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2725, !tbaa !676
  tail call void @_exit(i32 %26) #14, !dbg !2726
  unreachable, !dbg !2726

; <label>:27:                                     ; preds = %21
  ret void, !dbg !2727
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !2728 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2733, metadata !578), !dbg !2736
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2734, metadata !578), !dbg !2737
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2738
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2735, metadata !578), !dbg !2739
  store i8 0, i8* %3, align 1, !dbg !2740, !tbaa !737
  br label %4, !dbg !2741

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2735, metadata !578), !dbg !2739
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2733, metadata !578), !dbg !2736
  %7 = urem i64 %5, 10, !dbg !2742
  %8 = trunc i64 %7 to i8, !dbg !2745
  %9 = or i8 %8, 48, !dbg !2745
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2746
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2735, metadata !578), !dbg !2739
  store i8 %9, i8* %10, align 1, !dbg !2747, !tbaa !737
  %11 = udiv i64 %5, 10, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2733, metadata !578), !dbg !2736
  %12 = icmp ugt i64 %5, 9, !dbg !2749
  br i1 %12, label %4, label %13, !dbg !2750, !llvm.loop !2752

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2735, metadata !578), !dbg !2739
  ret i8* %10, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2756 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2758, metadata !578), !dbg !2761
  %2 = icmp eq i8* %0, null, !dbg !2762
  br i1 %2, label %3, label %6, !dbg !2764

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2765, !tbaa !586
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2767
  tail call void @abort() #14, !dbg !2768
  unreachable, !dbg !2768

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !2769
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2759, metadata !578), !dbg !2770
  %8 = icmp ne i8* %7, null, !dbg !2771
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2772
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2760, metadata !578), !dbg !2775
  %11 = ptrtoint i8* %10 to i64, !dbg !2776
  %12 = ptrtoint i8* %0 to i64, !dbg !2776
  %13 = sub i64 %11, %12, !dbg !2776
  %14 = icmp sgt i64 %13, 6, !dbg !2778
  br i1 %14, label %15, label %24, !dbg !2779

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2780
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.41, i64 0, i64 0), i64 7) #13, !dbg !2780
  %18 = icmp eq i32 %17, 0, !dbg !2782
  br i1 %18, label %19, label %24, !dbg !2783

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2758, metadata !578), !dbg !2761
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.42, i64 0, i64 0), i64 3) #13, !dbg !2784
  %21 = icmp eq i32 %20, 0, !dbg !2787
  br i1 %21, label %22, label %24, !dbg !2788

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2758, metadata !578), !dbg !2761
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2791, !tbaa !586
  br label %24, !dbg !2792

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2758, metadata !578), !dbg !2761
  store i8* %25, i8** @program_name, align 8, !dbg !2793, !tbaa !586
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2794, !tbaa !586
  ret void, !dbg !2795
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #8

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2801, metadata !578), !dbg !2804
  %2 = tail call i32* @__errno_location() #1, !dbg !2805
  %3 = load i32, i32* %2, align 4, !dbg !2805, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2802, metadata !578), !dbg !2806
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2807
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2808
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2808
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #8, !dbg !2810
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2810
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2803, metadata !578), !dbg !2811
  store i32 %3, i32* %2, align 4, !dbg !2812, !tbaa !676
  ret %struct.quoting_options* %8, !dbg !2813
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !2814 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2820, metadata !578), !dbg !2821
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2822
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2822
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2823
  %5 = load i32, i32* %4, align 8, !dbg !2823, !tbaa !2825
  ret i32 %5, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2828 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2832, metadata !578), !dbg !2834
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2833, metadata !578), !dbg !2835
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2836
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2836
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2837
  store i32 %1, i32* %5, align 8, !dbg !2839, !tbaa !2825
  ret void, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2841 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2845, metadata !578), !dbg !2853
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2846, metadata !578), !dbg !2854
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2847, metadata !578), !dbg !2855
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2848, metadata !578), !dbg !2856
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2857
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2857
  %6 = lshr i8 %1, 5, !dbg !2858
  %7 = zext i8 %6 to i64, !dbg !2858
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2860
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2849, metadata !578), !dbg !2861
  %9 = and i8 %1, 31, !dbg !2862
  %10 = zext i8 %9 to i32, !dbg !2863
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2851, metadata !578), !dbg !2864
  %11 = load i32, i32* %8, align 4, !dbg !2865, !tbaa !676
  %12 = lshr i32 %11, %10, !dbg !2866
  %13 = and i32 %12, 1, !dbg !2867
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2852, metadata !578), !dbg !2868
  %14 = and i32 %2, 1, !dbg !2869
  %15 = xor i32 %13, %14, !dbg !2870
  %16 = shl i32 %15, %10, !dbg !2871
  %17 = xor i32 %16, %11, !dbg !2872
  store i32 %17, i32* %8, align 4, !dbg !2872, !tbaa !676
  ret i32 %13, !dbg !2873
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2874 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2878, metadata !578), !dbg !2881
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2879, metadata !578), !dbg !2882
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2883
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2878, metadata !578), !dbg !2881
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2878, metadata !578), !dbg !2881
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2886
  %6 = load i32, i32* %5, align 4, !dbg !2886, !tbaa !2887
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2880, metadata !578), !dbg !2888
  store i32 %1, i32* %5, align 4, !dbg !2889, !tbaa !2887
  ret i32 %6, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2891 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2895, metadata !578), !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2896, metadata !578), !dbg !2899
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2897, metadata !578), !dbg !2900
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2901
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2895, metadata !578), !dbg !2898
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2895, metadata !578), !dbg !2898
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2904
  store i32 10, i32* %6, align 8, !dbg !2905, !tbaa !2825
  %7 = icmp ne i8* %1, null, !dbg !2906
  %8 = icmp ne i8* %2, null, !dbg !2908
  %9 = and i1 %7, %8, !dbg !2910
  br i1 %9, label %11, label %10, !dbg !2910

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2911
  unreachable, !dbg !2911

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2912
  store i8* %1, i8** %12, align 8, !dbg !2913, !tbaa !2914
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2915
  store i8* %2, i8** %13, align 8, !dbg !2916, !tbaa !2917
  ret void, !dbg !2918
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2919 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2923, metadata !578), !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2924, metadata !578), !dbg !2932
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2925, metadata !578), !dbg !2933
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2926, metadata !578), !dbg !2934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2927, metadata !578), !dbg !2935
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2936
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2936
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2928, metadata !578), !dbg !2937
  %8 = tail call i32* @__errno_location() #1, !dbg !2938
  %9 = load i32, i32* %8, align 4, !dbg !2938, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2929, metadata !578), !dbg !2939
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2940
  %11 = load i32, i32* %10, align 8, !dbg !2940, !tbaa !2825
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2941
  %13 = load i32, i32* %12, align 4, !dbg !2941, !tbaa !2887
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2942
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2943
  %16 = load i8*, i8** %15, align 8, !dbg !2943, !tbaa !2914
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2944
  %18 = load i8*, i8** %17, align 8, !dbg !2944, !tbaa !2917
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2945
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2930, metadata !578), !dbg !2946
  store i32 %9, i32* %8, align 4, !dbg !2947, !tbaa !676
  ret i64 %19, !dbg !2948
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2949 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2955, metadata !578), !dbg !3018
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2956, metadata !578), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2957, metadata !578), !dbg !3020
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2958, metadata !578), !dbg !3021
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2959, metadata !578), !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2960, metadata !578), !dbg !3023
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2961, metadata !578), !dbg !3024
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2962, metadata !578), !dbg !3025
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2963, metadata !578), !dbg !3026
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2965, metadata !578), !dbg !3027
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2966, metadata !578), !dbg !3028
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2967, metadata !578), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2968, metadata !578), !dbg !3030
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2969, metadata !578), !dbg !3031
  %13 = tail call i64 @__ctype_get_mb_cur_max() #8, !dbg !3032
  %14 = icmp eq i64 %13, 1, !dbg !3033
  %15 = lshr i32 %5, 1, !dbg !3034
  %16 = trunc i32 %15 to i8, !dbg !3034
  %17 = and i8 %16, 1, !dbg !3034
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2971, metadata !578), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2972, metadata !578), !dbg !3035
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2973, metadata !578), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2974, metadata !578), !dbg !3037
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !3038

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2956, metadata !578), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2974, metadata !578), !dbg !3037
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2973, metadata !578), !dbg !3036
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2971, metadata !578), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2958, metadata !578), !dbg !3021
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2969, metadata !578), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2968, metadata !578), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2967, metadata !578), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2966, metadata !578), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2963, metadata !578), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2962, metadata !578), !dbg !3025
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2959, metadata !578), !dbg !3022
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
  ], !dbg !3039

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2959, metadata !578), !dbg !3022
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2971, metadata !578), !dbg !3034
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2971, metadata !578), !dbg !3034
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2959, metadata !578), !dbg !3022
  br label %95, !dbg !3040

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2971, metadata !578), !dbg !3034
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2959, metadata !578), !dbg !3022
  %43 = and i8 %36, 1, !dbg !3042
  %44 = icmp eq i8 %43, 0, !dbg !3042
  br i1 %44, label %45, label %95, !dbg !3040

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3044
  br i1 %46, label %95, label %47, !dbg !3048

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !3050, !tbaa !737
  br label %95, !dbg !3050

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.56, i64 0, i64 0), i32 %28), !dbg !3052
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2962, metadata !578), !dbg !3025
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), i32 %28), !dbg !3056
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2963, metadata !578), !dbg !3026
  br label %51, !dbg !3057

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2963, metadata !578), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2962, metadata !578), !dbg !3025
  %54 = and i8 %36, 1, !dbg !3058
  %55 = icmp eq i8 %54, 0, !dbg !3058
  br i1 %55, label %56, label %73, !dbg !3060

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2967, metadata !578), !dbg !3029
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2965, metadata !578), !dbg !3027
  %57 = load i8, i8* %52, align 1, !dbg !3061, !tbaa !737
  %58 = icmp eq i8 %57, 0, !dbg !3065
  br i1 %58, label %73, label %59, !dbg !3065

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !3067

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !3067
  br i1 %64, label %65, label %67, !dbg !3071

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3073
  store i8 %61, i8* %66, align 1, !dbg !3073, !tbaa !737
  br label %67, !dbg !3073

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2965, metadata !578), !dbg !3027
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2967, metadata !578), !dbg !3029
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2967, metadata !578), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2965, metadata !578), !dbg !3027
  %70 = load i8, i8* %69, align 1, !dbg !3061, !tbaa !737
  %71 = icmp eq i8 %70, 0, !dbg !3065
  br i1 %71, label %72, label %60, !dbg !3065, !llvm.loop !3079

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !3027

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2969, metadata !578), !dbg !3031
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2967, metadata !578), !dbg !3029
  %75 = call i64 @strlen(i8* %53) #13, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2968, metadata !578), !dbg !3030
  br label %95, !dbg !3083

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2969, metadata !578), !dbg !3031
  br label %77, !dbg !3084

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2969, metadata !578), !dbg !3031
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2971, metadata !578), !dbg !3034
  br label %79, !dbg !3085

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2971, metadata !578), !dbg !3034
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2969, metadata !578), !dbg !3031
  %82 = and i8 %81, 1, !dbg !3086
  %83 = icmp eq i8 %82, 0, !dbg !3086
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2969, metadata !578), !dbg !3031
  %84 = select i1 %83, i8 1, i8 %80, !dbg !3088
  br label %85, !dbg !3088

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2971, metadata !578), !dbg !3034
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2969, metadata !578), !dbg !3031
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2959, metadata !578), !dbg !3022
  %88 = and i8 %87, 1, !dbg !3089
  %89 = icmp eq i8 %88, 0, !dbg !3089
  br i1 %89, label %90, label %95, !dbg !3091

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !3092
  br i1 %91, label %95, label %92, !dbg !3096

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !3098, !tbaa !737
  br label %95, !dbg !3098

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2971, metadata !578), !dbg !3034
  br label %95, !dbg !3100

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !3101
  unreachable, !dbg !3101

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2971, metadata !578), !dbg !3034
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2969, metadata !578), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2968, metadata !578), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2967, metadata !578), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2963, metadata !578), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2962, metadata !578), !dbg !3025
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2959, metadata !578), !dbg !3022
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2964, metadata !578), !dbg !3102
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
  br label %123, !dbg !3103

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2956, metadata !578), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2974, metadata !578), !dbg !3037
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2973, metadata !578), !dbg !3036
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2958, metadata !578), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2966, metadata !578), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2964, metadata !578), !dbg !3102
  %132 = icmp eq i64 %127, -1, !dbg !3104
  br i1 %132, label %135, label %133, !dbg !3106

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !3107
  br i1 %134, label %597, label %139, !dbg !3109

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3111
  %137 = load i8, i8* %136, align 1, !dbg !3111, !tbaa !737
  %138 = icmp eq i8 %137, 0, !dbg !3113
  br i1 %138, label %597, label %139, !dbg !3109

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2980, metadata !578), !dbg !3114
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2981, metadata !578), !dbg !3115
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2982, metadata !578), !dbg !3116
  br i1 %109, label %140, label %155, !dbg !3117

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !3119
  %142 = and i1 %110, %132, !dbg !3121
  br i1 %142, label %143, label %145, !dbg !3121

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2958, metadata !578), !dbg !3021
  br label %145, !dbg !3123

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2958, metadata !578), !dbg !3021
  %147 = icmp ugt i64 %141, %146, !dbg !3125
  br i1 %147, label %155, label %148, !dbg !3127

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3128
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !3129
  %151 = icmp ne i32 %150, 0, !dbg !3130
  %152 = or i1 %151, %112, !dbg !3130
  %153 = xor i1 %151, true, !dbg !3130
  %154 = zext i1 %153 to i8, !dbg !3130
  br i1 %152, label %155, label %644, !dbg !3130

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2980, metadata !578), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2958, metadata !578), !dbg !3021
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3132
  %159 = load i8, i8* %158, align 1, !dbg !3132, !tbaa !737
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2975, metadata !578), !dbg !3133
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
  ], !dbg !3134

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !3135

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !3136

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2981, metadata !578), !dbg !3115
  %163 = and i8 %128, 1, !dbg !3141
  %164 = icmp eq i8 %163, 0, !dbg !3141
  %165 = and i1 %114, %164, !dbg !3144
  br i1 %165, label %166, label %182, !dbg !3144

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !3146
  br i1 %167, label %168, label %170, !dbg !3151

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3153
  store i8 39, i8* %169, align 1, !dbg !3153, !tbaa !737
  br label %170, !dbg !3153

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2965, metadata !578), !dbg !3027
  %172 = icmp ult i64 %171, %131, !dbg !3157
  br i1 %172, label %173, label %175, !dbg !3161

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !3163
  store i8 36, i8* %174, align 1, !dbg !3163, !tbaa !737
  br label %175, !dbg !3163

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2965, metadata !578), !dbg !3027
  %177 = icmp ult i64 %176, %131, !dbg !3167
  br i1 %177, label %178, label %180, !dbg !3171

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !3173
  store i8 39, i8* %179, align 1, !dbg !3173, !tbaa !737
  br label %180, !dbg !3173

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2972, metadata !578), !dbg !3035
  br label %182, !dbg !3177

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2965, metadata !578), !dbg !3027
  %185 = icmp ult i64 %183, %131, !dbg !3179
  br i1 %185, label %186, label %188, !dbg !3183

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !3185
  store i8 92, i8* %187, align 1, !dbg !3185, !tbaa !737
  br label %188, !dbg !3185

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2965, metadata !578), !dbg !3027
  br i1 %106, label %190, label %476, !dbg !3189

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !3191
  %192 = icmp ult i64 %191, %156, !dbg !3193
  br i1 %192, label %193, label %476, !dbg !3194

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !3195
  %195 = load i8, i8* %194, align 1, !dbg !3195, !tbaa !737
  %196 = add i8 %195, -48, !dbg !3197
  %197 = icmp ult i8 %196, 10, !dbg !3197
  br i1 %197, label %198, label %476, !dbg !3197

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !3198
  br i1 %199, label %200, label %202, !dbg !3203

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3205
  store i8 48, i8* %201, align 1, !dbg !3205, !tbaa !737
  br label %202, !dbg !3205

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2965, metadata !578), !dbg !3027
  %204 = icmp ult i64 %203, %131, !dbg !3209
  br i1 %204, label %205, label %207, !dbg !3213

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !3215
  store i8 48, i8* %206, align 1, !dbg !3215, !tbaa !737
  br label %207, !dbg !3215

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2965, metadata !578), !dbg !3027
  br label %476, !dbg !3219

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !3220

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !3221

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !3222

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !3224

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !3226
  %215 = icmp ult i64 %214, %156, !dbg !3228
  br i1 %215, label %216, label %476, !dbg !3229

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !3230
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3232
  %219 = load i8, i8* %218, align 1, !dbg !3232, !tbaa !737
  %220 = icmp eq i8 %219, 63, !dbg !3233
  br i1 %220, label %221, label %476, !dbg !3234

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3236
  %223 = load i8, i8* %222, align 1, !dbg !3236, !tbaa !737
  %224 = sext i8 %223 to i32, !dbg !3236
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
  ], !dbg !3237

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !3238

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2975, metadata !578), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2964, metadata !578), !dbg !3102
  %227 = icmp ult i64 %125, %131, !dbg !3240
  br i1 %227, label %228, label %230, !dbg !3244

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3246
  store i8 63, i8* %229, align 1, !dbg !3246, !tbaa !737
  br label %230, !dbg !3246

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2965, metadata !578), !dbg !3027
  %232 = icmp ult i64 %231, %131, !dbg !3250
  br i1 %232, label %233, label %235, !dbg !3254

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3256
  store i8 34, i8* %234, align 1, !dbg !3256, !tbaa !737
  br label %235, !dbg !3256

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !3258
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2965, metadata !578), !dbg !3027
  %237 = icmp ult i64 %236, %131, !dbg !3260
  br i1 %237, label %238, label %240, !dbg !3264

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3266
  store i8 34, i8* %239, align 1, !dbg !3266, !tbaa !737
  br label %240, !dbg !3266

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2965, metadata !578), !dbg !3027
  %242 = icmp ult i64 %241, %131, !dbg !3270
  br i1 %242, label %243, label %245, !dbg !3274

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3276
  store i8 63, i8* %244, align 1, !dbg !3276, !tbaa !737
  br label %245, !dbg !3276

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2965, metadata !578), !dbg !3027
  br label %476, !dbg !3280

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2979, metadata !578), !dbg !3281
  br label %257, !dbg !3282

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2979, metadata !578), !dbg !3281
  br label %257, !dbg !3283

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2979, metadata !578), !dbg !3281
  br label %255, !dbg !3284

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2979, metadata !578), !dbg !3281
  br label %255, !dbg !3285

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2979, metadata !578), !dbg !3281
  br label %257, !dbg !3286

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2979, metadata !578), !dbg !3281
  br i1 %114, label %253, label %254, !dbg !3287

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !3288

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !3291

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2979, metadata !578), !dbg !3281
  br i1 %118, label %257, label %644, !dbg !3293

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2979, metadata !578), !dbg !3281
  br i1 %105, label %503, label %476, !dbg !3295

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !3296
  br i1 %260, label %261, label %266, !dbg !3298

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !3299, !tbaa !737
  %263 = icmp ne i8 %262, 0, !dbg !3301
  %264 = icmp ne i64 %124, 0, !dbg !3302
  %265 = or i1 %264, %263, !dbg !3304
  br i1 %265, label %476, label %272, !dbg !3304

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !3305
  %268 = icmp ne i64 %124, 0, !dbg !3302
  %269 = or i1 %268, %267, !dbg !3307
  br i1 %269, label %476, label %272, !dbg !3307

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !3302
  br i1 %271, label %272, label %476, !dbg !3309

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2982, metadata !578), !dbg !3116
  br label %273, !dbg !3310

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2982, metadata !578), !dbg !3116
  br i1 %118, label %476, label %644, !dbg !3311

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2973, metadata !578), !dbg !3036
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2982, metadata !578), !dbg !3116
  br i1 %114, label %276, label %476, !dbg !3313

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !3314

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !3317
  %279 = icmp ne i64 %126, 0, !dbg !3319
  %280 = or i1 %279, %278, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2966, metadata !578), !dbg !3028
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2956, metadata !578), !dbg !3019
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !3321
  %282 = select i1 %280, i64 %131, i64 0, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2956, metadata !578), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2966, metadata !578), !dbg !3028
  %283 = icmp ult i64 %125, %282, !dbg !3322
  br i1 %283, label %284, label %286, !dbg !3326

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3328
  store i8 39, i8* %285, align 1, !dbg !3328, !tbaa !737
  br label %286, !dbg !3328

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2965, metadata !578), !dbg !3027
  %288 = icmp ult i64 %287, %282, !dbg !3332
  br i1 %288, label %289, label %291, !dbg !3336

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3338
  store i8 92, i8* %290, align 1, !dbg !3338, !tbaa !737
  br label %291, !dbg !3338

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2965, metadata !578), !dbg !3027
  %293 = icmp ult i64 %292, %282, !dbg !3342
  br i1 %293, label %294, label %296, !dbg !3346

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3348
  store i8 39, i8* %295, align 1, !dbg !3348, !tbaa !737
  br label %296, !dbg !3348

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !3350
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2972, metadata !578), !dbg !3035
  br label %476, !dbg !3352

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !3353

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2983, metadata !578), !dbg !3354
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !3355
  %301 = load i16*, i16** %300, align 8, !dbg !3355, !tbaa !586
  %302 = zext i8 %159 to i64, !dbg !3355
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3355
  %304 = load i16, i16* %303, align 2, !dbg !3355, !tbaa !2633
  %305 = lshr i16 %304, 14, !dbg !3357
  %306 = trunc i16 %305 to i8, !dbg !3357
  %307 = and i8 %306, 1, !dbg !3357
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2986, metadata !578), !dbg !3358
  br label %368, !dbg !3359

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #8, !dbg !3360
  store i64 0, i64* %10, align 8, !dbg !3361
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2983, metadata !578), !dbg !3354
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2986, metadata !578), !dbg !3358
  %309 = icmp eq i64 %156, -1, !dbg !3362
  br i1 %309, label %310, label %312, !dbg !3364, !llvm.loop !3365

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2958, metadata !578), !dbg !3021
  br label %312, !dbg !3369, !llvm.loop !3365

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !3358

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2986, metadata !578), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2983, metadata !578), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2958, metadata !578), !dbg !3021
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #8, !dbg !3370
  %317 = add i64 %315, %124, !dbg !3371
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3372
  %319 = sub i64 %313, %317, !dbg !3373
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2987, metadata !2031), !dbg !3374
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !3004, metadata !2031), !dbg !3375
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #8, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !3007, metadata !578), !dbg !3377
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !3378

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2983, metadata !578), !dbg !3354
  %322 = icmp ugt i64 %313, %317, !dbg !3379
  br i1 %322, label %323, label %351, !dbg !3382

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !3383

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3383
  %328 = load i8, i8* %327, align 1, !dbg !3383, !tbaa !737
  %329 = icmp eq i8 %328, 0, !dbg !3385
  br i1 %329, label %348, label %330, !dbg !3386

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2983, metadata !578), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2983, metadata !578), !dbg !3354
  %332 = add i64 %331, %124, !dbg !3389
  %333 = icmp ult i64 %332, %313, !dbg !3379
  br i1 %333, label %324, label %348, !dbg !3382, !llvm.loop !3390

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !3392
  %336 = and i1 %116, %335, !dbg !3396
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3008, metadata !578), !dbg !3397
  br i1 %336, label %337, label %355, !dbg !3396

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !3398

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !3398
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3399
  %342 = load i8, i8* %341, align 1, !dbg !3399, !tbaa !737
  %343 = sext i8 %342 to i32, !dbg !3399
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !3400

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3008, metadata !578), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3008, metadata !578), !dbg !3397
  %346 = icmp ult i64 %345, %320, !dbg !3392
  br i1 %346, label %338, label %354, !dbg !3403, !llvm.loop !3405

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !3358

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !3358

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !3358

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2986, metadata !578), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2983, metadata !578), !dbg !3354
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #8, !dbg !3408
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !3409

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !3409, !tbaa !676
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !3004, metadata !578), !dbg !3375
  %357 = call i32 @iswprint(i32 %356) #8, !dbg !3411
  %358 = icmp eq i32 %357, 0, !dbg !3411
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2986, metadata !578), !dbg !3358
  %359 = select i1 %358, i8 0, i8 %316, !dbg !3412
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2986, metadata !578), !dbg !3358
  %360 = add i64 %320, %315, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2983, metadata !578), !dbg !3354
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2986, metadata !578), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2983, metadata !578), !dbg !3354
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #8, !dbg !3408
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2987, metadata !2031), !dbg !3374
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !3414
  %362 = icmp eq i32 %361, 0, !dbg !3415
  br i1 %362, label %314, label %363, !dbg !3416, !llvm.loop !3365

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !3418

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #8, !dbg !3418
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2986, metadata !578), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2983, metadata !578), !dbg !3354
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #8, !dbg !3408
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #8, !dbg !3418
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2986, metadata !578), !dbg !3358
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2983, metadata !578), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2958, metadata !578), !dbg !3021
  %372 = and i8 %371, 1, !dbg !3419
  %373 = icmp ne i8 %372, 0, !dbg !3419
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2982, metadata !578), !dbg !3116
  %374 = icmp ult i64 %370, 2, !dbg !3420
  %375 = or i1 %373, %113, !dbg !3421
  %376 = and i1 %374, %375, !dbg !3423
  br i1 %376, label %476, label %377, !dbg !3423

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !3015, metadata !578), !dbg !3425
  br label %379, !dbg !3426

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2981, metadata !578), !dbg !3115
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2980, metadata !578), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2975, metadata !578), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2964, metadata !578), !dbg !3102
  br i1 %375, label %432, label %386, !dbg !3427

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !3432

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2981, metadata !578), !dbg !3115
  %388 = and i8 %382, 1, !dbg !3436
  %389 = icmp eq i8 %388, 0, !dbg !3436
  %390 = and i1 %114, %389, !dbg !3439
  br i1 %390, label %391, label %407, !dbg !3439

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !3441
  br i1 %392, label %393, label %395, !dbg !3446

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3448
  store i8 39, i8* %394, align 1, !dbg !3448, !tbaa !737
  br label %395, !dbg !3448

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !3450
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2965, metadata !578), !dbg !3027
  %397 = icmp ult i64 %396, %131, !dbg !3452
  br i1 %397, label %398, label %400, !dbg !3456

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3458
  store i8 36, i8* %399, align 1, !dbg !3458, !tbaa !737
  br label %400, !dbg !3458

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2965, metadata !578), !dbg !3027
  %402 = icmp ult i64 %401, %131, !dbg !3462
  br i1 %402, label %403, label %405, !dbg !3466

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3468
  store i8 39, i8* %404, align 1, !dbg !3468, !tbaa !737
  br label %405, !dbg !3468

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !3470
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2972, metadata !578), !dbg !3035
  br label %407, !dbg !3472

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2965, metadata !578), !dbg !3027
  %410 = icmp ult i64 %408, %131, !dbg !3474
  br i1 %410, label %411, label %413, !dbg !3478

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3480
  store i8 92, i8* %412, align 1, !dbg !3480, !tbaa !737
  br label %413, !dbg !3480

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2965, metadata !578), !dbg !3027
  %415 = icmp ult i64 %414, %131, !dbg !3484
  br i1 %415, label %416, label %420, !dbg !3488

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !3490
  %418 = or i8 %417, 48, !dbg !3490
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3490
  store i8 %418, i8* %419, align 1, !dbg !3490, !tbaa !737
  br label %420, !dbg !3490

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !3492
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2965, metadata !578), !dbg !3027
  %422 = icmp ult i64 %421, %131, !dbg !3494
  br i1 %422, label %423, label %428, !dbg !3498

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !3500
  %425 = and i8 %424, 7, !dbg !3500
  %426 = or i8 %425, 48, !dbg !3500
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3500
  store i8 %426, i8* %427, align 1, !dbg !3500, !tbaa !737
  br label %428, !dbg !3500

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2965, metadata !578), !dbg !3027
  %430 = and i8 %383, 7, !dbg !3504
  %431 = or i8 %430, 48, !dbg !3505
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2975, metadata !578), !dbg !3133
  br label %441, !dbg !3506

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !3507
  %434 = icmp eq i8 %433, 0, !dbg !3507
  br i1 %434, label %441, label %435, !dbg !3509

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !3510
  br i1 %436, label %437, label %439, !dbg !3515

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3517
  store i8 92, i8* %438, align 1, !dbg !3517, !tbaa !737
  br label %439, !dbg !3517

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !3519
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2980, metadata !578), !dbg !3114
  br label %441, !dbg !3521

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2981, metadata !578), !dbg !3115
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2980, metadata !578), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2975, metadata !578), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2965, metadata !578), !dbg !3027
  %447 = add i64 %380, 1, !dbg !3522
  %448 = icmp ugt i64 %378, %447, !dbg !3524
  br i1 %448, label %449, label %541, !dbg !3525

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !3526
  %451 = icmp ne i8 %450, 0, !dbg !3526
  %452 = and i8 %446, 1, !dbg !3530
  %453 = icmp eq i8 %452, 0, !dbg !3530
  %454 = and i1 %451, %453, !dbg !3526
  br i1 %454, label %455, label %466, !dbg !3526

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !3532
  br i1 %456, label %457, label %459, !dbg !3537

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3539
  store i8 39, i8* %458, align 1, !dbg !3539, !tbaa !737
  br label %459, !dbg !3539

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2965, metadata !578), !dbg !3027
  %461 = icmp ult i64 %460, %131, !dbg !3543
  br i1 %461, label %462, label %464, !dbg !3547

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3549
  store i8 39, i8* %463, align 1, !dbg !3549, !tbaa !737
  br label %464, !dbg !3549

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2972, metadata !578), !dbg !3035
  br label %466, !dbg !3553

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2965, metadata !578), !dbg !3027
  %469 = icmp ult i64 %467, %131, !dbg !3555
  br i1 %469, label %470, label %472, !dbg !3559

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3561
  store i8 %444, i8* %471, align 1, !dbg !3561, !tbaa !737
  br label %472, !dbg !3561

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2964, metadata !578), !dbg !3102
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3565
  %475 = load i8, i8* %474, align 1, !dbg !3565, !tbaa !737
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2975, metadata !578), !dbg !3133
  br label %379, !dbg !3566, !llvm.loop !3568

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2956, metadata !578), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2982, metadata !578), !dbg !3116
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2981, metadata !578), !dbg !3115
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2980, metadata !578), !dbg !3114
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2975, metadata !578), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2973, metadata !578), !dbg !3036
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2958, metadata !578), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2966, metadata !578), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2964, metadata !578), !dbg !3102
  br i1 %107, label %488, label %487, !dbg !3571

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !3573

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !3574

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !3575
  %491 = zext i8 %490 to i64, !dbg !3575
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3577
  %493 = load i32, i32* %492, align 4, !dbg !3577, !tbaa !676
  %494 = and i8 %483, 31, !dbg !3578
  %495 = zext i8 %494 to i32, !dbg !3579
  %496 = shl i32 1, %495, !dbg !3580
  %497 = and i32 %493, %496, !dbg !3580
  %498 = icmp eq i32 %497, 0, !dbg !3580
  %499 = icmp eq i8 %157, 0, !dbg !3581
  %500 = and i1 %499, %498, !dbg !3582
  br i1 %500, label %542, label %503, !dbg !3582

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !3581
  br i1 %502, label %542, label %503, !dbg !3583

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2956, metadata !578), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2982, metadata !578), !dbg !3116
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2975, metadata !578), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2973, metadata !578), !dbg !3036
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2958, metadata !578), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2966, metadata !578), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2964, metadata !578), !dbg !3102
  br i1 %112, label %513, label %644, !dbg !3585

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2981, metadata !578), !dbg !3115
  %514 = and i8 %508, 1, !dbg !3588
  %515 = icmp eq i8 %514, 0, !dbg !3588
  %516 = and i1 %114, %515, !dbg !3591
  br i1 %516, label %517, label %533, !dbg !3591

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !3593
  br i1 %518, label %519, label %521, !dbg !3598

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3600
  store i8 39, i8* %520, align 1, !dbg !3600, !tbaa !737
  br label %521, !dbg !3600

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !3602
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2965, metadata !578), !dbg !3027
  %523 = icmp ult i64 %522, %512, !dbg !3604
  br i1 %523, label %524, label %526, !dbg !3608

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3610
  store i8 36, i8* %525, align 1, !dbg !3610, !tbaa !737
  br label %526, !dbg !3610

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !3612
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2965, metadata !578), !dbg !3027
  %528 = icmp ult i64 %527, %512, !dbg !3614
  br i1 %528, label %529, label %531, !dbg !3618

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3620
  store i8 39, i8* %530, align 1, !dbg !3620, !tbaa !737
  br label %531, !dbg !3620

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2972, metadata !578), !dbg !3035
  br label %533, !dbg !3624

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2965, metadata !578), !dbg !3027
  %536 = icmp ult i64 %534, %512, !dbg !3626
  br i1 %536, label %537, label %539, !dbg !3630

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3632
  store i8 92, i8* %538, align 1, !dbg !3632, !tbaa !737
  br label %539, !dbg !3632

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2956, metadata !578), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2982, metadata !578), !dbg !3116
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2981, metadata !578), !dbg !3115
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2975, metadata !578), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2973, metadata !578), !dbg !3036
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2958, metadata !578), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2966, metadata !578), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2964, metadata !578), !dbg !3102
  br label %569, !dbg !3636

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !3019

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2956, metadata !578), !dbg !3019
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2982, metadata !578), !dbg !3116
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2981, metadata !578), !dbg !3115
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2975, metadata !578), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2973, metadata !578), !dbg !3036
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2958, metadata !578), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2966, metadata !578), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2964, metadata !578), !dbg !3102
  %553 = and i8 %547, 1, !dbg !3636
  %554 = icmp ne i8 %553, 0, !dbg !3636
  %555 = and i8 %550, 1, !dbg !3640
  %556 = icmp eq i8 %555, 0, !dbg !3640
  %557 = and i1 %554, %556, !dbg !3636
  br i1 %557, label %558, label %569, !dbg !3636

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !3642
  br i1 %559, label %560, label %562, !dbg !3647

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3649
  store i8 39, i8* %561, align 1, !dbg !3649, !tbaa !737
  br label %562, !dbg !3649

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !3651
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2965, metadata !578), !dbg !3027
  %564 = icmp ult i64 %563, %552, !dbg !3653
  br i1 %564, label %565, label %567, !dbg !3657

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3659
  store i8 39, i8* %566, align 1, !dbg !3659, !tbaa !737
  br label %567, !dbg !3659

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2965, metadata !578), !dbg !3027
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2972, metadata !578), !dbg !3035
  br label %569, !dbg !3663

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2972, metadata !578), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2965, metadata !578), !dbg !3027
  %579 = icmp ult i64 %577, %570, !dbg !3665
  br i1 %579, label %580, label %582, !dbg !3669

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3671
  store i8 %572, i8* %581, align 1, !dbg !3671, !tbaa !737
  br label %582, !dbg !3671

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2965, metadata !578), !dbg !3027
  %584 = and i8 %571, 1, !dbg !3675
  %585 = icmp eq i8 %584, 0, !dbg !3675
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2974, metadata !578), !dbg !3037
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3677
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2974, metadata !578), !dbg !3037
  br label %587, !dbg !3678

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3679
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2964, metadata !578), !dbg !3102
  br label %123, !dbg !3681, !llvm.loop !3682

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3685
  %600 = and i1 %114, %599, !dbg !3687
  %601 = xor i1 %600, true, !dbg !3687
  %602 = or i1 %112, %601, !dbg !3687
  br i1 %602, label %603, label %648, !dbg !3687

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3688
  %605 = xor i1 %604, true, !dbg !3688
  %606 = and i8 %129, 1, !dbg !3690
  %607 = icmp eq i8 %606, 0, !dbg !3690
  %608 = or i1 %607, %605, !dbg !3688
  br i1 %608, label %618, label %609, !dbg !3688

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3692
  %611 = icmp eq i8 %610, 0, !dbg !3692
  br i1 %611, label %614, label %612, !dbg !3695

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3696
  br label %659, !dbg !3697

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3698
  %616 = icmp ne i64 %126, 0, !dbg !3700
  %617 = and i1 %616, %615, !dbg !3702
  br i1 %617, label %27, label %618, !dbg !3702

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3703
  %620 = and i1 %619, %112, !dbg !3705
  br i1 %620, label %621, label %638, !dbg !3705

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2967, metadata !578), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2965, metadata !578), !dbg !3027
  %622 = load i8, i8* %100, align 1, !dbg !3706, !tbaa !737
  %623 = icmp eq i8 %622, 0, !dbg !3710
  br i1 %623, label %638, label %624, !dbg !3710

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3712

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3712
  br i1 %629, label %630, label %632, !dbg !3716

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3718
  store i8 %626, i8* %631, align 1, !dbg !3718, !tbaa !737
  br label %632, !dbg !3718

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3720
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2965, metadata !578), !dbg !3027
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2967, metadata !578), !dbg !3029
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2967, metadata !578), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2965, metadata !578), !dbg !3027
  %635 = load i8, i8* %634, align 1, !dbg !3706, !tbaa !737
  %636 = icmp eq i8 %635, 0, !dbg !3710
  br i1 %636, label %637, label %625, !dbg !3710, !llvm.loop !3724

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !3027

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2965, metadata !578), !dbg !3027
  %640 = icmp ult i64 %639, %131, !dbg !3727
  br i1 %640, label %641, label %659, !dbg !3729

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3730
  store i8 0, i8* %642, align 1, !dbg !3731, !tbaa !737
  br label %659, !dbg !3730

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !3019

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !3019

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !3019

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2956, metadata !578), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2958, metadata !578), !dbg !3021
  %653 = icmp ne i32 %650, 2, !dbg !3732
  %654 = icmp eq i8 %104, 0, !dbg !3734
  %655 = or i1 %653, %654, !dbg !3736
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2959, metadata !578), !dbg !3022
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2959, metadata !578), !dbg !3022
  %657 = and i32 %5, -3, !dbg !3737
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3738
  br label %659, !dbg !3739

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3740
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3741 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3745, metadata !578), !dbg !3749
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3746, metadata !578), !dbg !3750
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #8, !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3747, metadata !578), !dbg !3752
  %4 = icmp eq i8* %3, %0, !dbg !3753
  br i1 %4, label %5, label %75, !dbg !3755

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #8, !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3748, metadata !578), !dbg !3757
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3758, metadata !578), !dbg !3774
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3772, metadata !578), !dbg !3777
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3773, metadata !578), !dbg !3778
  %7 = load i8, i8* %6, align 1, !tbaa !737
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3779
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3779

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3782, metadata !578), !dbg !3796
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3794, metadata !578), !dbg !3800
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3795, metadata !578), !dbg !3801
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !737
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3802
  %15 = icmp eq i32 %14, 84, !dbg !3802
  br i1 %15, label %16, label %72, !dbg !3802

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3805, metadata !578), !dbg !3818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3816, metadata !578), !dbg !3822
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3817, metadata !578), !dbg !3823
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !737
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3824
  %21 = icmp eq i32 %20, 70, !dbg !3824
  br i1 %21, label %22, label %72, !dbg !3824

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3827, metadata !578), !dbg !3839
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3837, metadata !578), !dbg !3843
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3838, metadata !578), !dbg !3844
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !737
  %25 = icmp eq i8 %24, 45, !dbg !3845
  br i1 %25, label %26, label %72, !dbg !3848

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3850, metadata !578), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3859, metadata !578), !dbg !3865
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3860, metadata !578), !dbg !3866
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !737
  %29 = icmp eq i8 %28, 56, !dbg !3867
  br i1 %29, label %30, label %72, !dbg !3870

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3872, metadata !578), !dbg !3882
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3880, metadata !578), !dbg !3886
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3881, metadata !578), !dbg !3887
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !737
  %33 = icmp eq i8 %32, 0, !dbg !3888
  br i1 %33, label %34, label %72, !dbg !3891

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3893, !tbaa !737
  %36 = icmp eq i8 %35, 96, !dbg !3894
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.59, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.60, i64 0, i64 0), !dbg !3893
  br label %75, !dbg !3895

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3782, metadata !578), !dbg !3896
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3794, metadata !578), !dbg !3900
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3795, metadata !578), !dbg !3901
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !737
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3902
  %43 = icmp eq i32 %42, 66, !dbg !3902
  br i1 %43, label %44, label %72, !dbg !3902

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3805, metadata !578), !dbg !3903
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3816, metadata !578), !dbg !3905
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3817, metadata !578), !dbg !3906
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !737
  %47 = icmp eq i8 %46, 49, !dbg !3907
  br i1 %47, label %48, label %72, !dbg !3909

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3827, metadata !578), !dbg !3911
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3837, metadata !578), !dbg !3913
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3838, metadata !578), !dbg !3914
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !737
  %51 = icmp eq i8 %50, 56, !dbg !3915
  br i1 %51, label %52, label %72, !dbg !3916

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3850, metadata !578), !dbg !3917
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3859, metadata !578), !dbg !3919
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3860, metadata !578), !dbg !3920
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !737
  %55 = icmp eq i8 %54, 48, !dbg !3921
  br i1 %55, label %56, label %72, !dbg !3922

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3872, metadata !578), !dbg !3923
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3880, metadata !578), !dbg !3925
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3881, metadata !578), !dbg !3926
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !737
  %59 = icmp eq i8 %58, 51, !dbg !3927
  br i1 %59, label %60, label %72, !dbg !3928

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3929, metadata !578), !dbg !3938
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3936, metadata !578), !dbg !3942
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3937, metadata !578), !dbg !3943
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !737
  %63 = icmp eq i8 %62, 48, !dbg !3944
  br i1 %63, label %64, label %72, !dbg !3947

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3949, metadata !578), !dbg !3957
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3955, metadata !578), !dbg !3961
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3956, metadata !578), !dbg !3962
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !737
  %67 = icmp eq i8 %66, 0, !dbg !3963
  br i1 %67, label %68, label %72, !dbg !3966

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3967, !tbaa !737
  %70 = icmp eq i8 %69, 96, !dbg !3968
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.61, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.62, i64 0, i64 0), !dbg !3967
  br label %75, !dbg !3969

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3970
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.58, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.57, i64 0, i64 0), !dbg !3971
  br label %75, !dbg !3972

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3973
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3974 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3978, metadata !578), !dbg !3981
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3979, metadata !578), !dbg !3982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3980, metadata !578), !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3984, metadata !578) #8, !dbg !3997
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3989, metadata !578) #8, !dbg !3999
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3990, metadata !578) #8, !dbg !4000
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3991, metadata !578) #8, !dbg !4001
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !4002
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !4002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3992, metadata !578) #8, !dbg !4003
  %6 = tail call i32* @__errno_location() #1, !dbg !4004
  %7 = load i32, i32* %6, align 4, !dbg !4004, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3993, metadata !578) #8, !dbg !4005
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4006
  %9 = load i32, i32* %8, align 4, !dbg !4006, !tbaa !2887
  %10 = or i32 %9, 1, !dbg !4007
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3994, metadata !578) #8, !dbg !4008
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4009
  %12 = load i32, i32* %11, align 8, !dbg !4009, !tbaa !2825
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !4010
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4011
  %15 = load i8*, i8** %14, align 8, !dbg !4011, !tbaa !2914
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4012
  %17 = load i8*, i8** %16, align 8, !dbg !4012, !tbaa !2917
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #8, !dbg !4013
  %19 = add i64 %18, 1, !dbg !4014
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3995, metadata !578) #8, !dbg !4015
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4016, metadata !578) #8, !dbg !4021
  %20 = tail call noalias i8* @xmalloc(i64 %19) #8, !dbg !4023
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3996, metadata !578) #8, !dbg !4024
  %21 = load i32, i32* %11, align 8, !dbg !4025, !tbaa !2825
  %22 = load i8*, i8** %14, align 8, !dbg !4026, !tbaa !2914
  %23 = load i8*, i8** %16, align 8, !dbg !4027, !tbaa !2917
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #8, !dbg !4028
  store i32 %7, i32* %6, align 4, !dbg !4029, !tbaa !676
  ret i8* %20, !dbg !4030
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3985 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3984, metadata !578), !dbg !4031
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3989, metadata !578), !dbg !4032
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3990, metadata !578), !dbg !4033
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3991, metadata !578), !dbg !4034
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !4035
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !4035
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3992, metadata !578), !dbg !4036
  %7 = tail call i32* @__errno_location() #1, !dbg !4037
  %8 = load i32, i32* %7, align 4, !dbg !4037, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3993, metadata !578), !dbg !4038
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4039
  %10 = load i32, i32* %9, align 4, !dbg !4039, !tbaa !2887
  %11 = icmp ne i64* %2, null, !dbg !4040
  %12 = xor i1 %11, true, !dbg !4040
  %13 = zext i1 %12 to i32, !dbg !4040
  %14 = or i32 %10, %13, !dbg !4041
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3994, metadata !578), !dbg !4042
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4043
  %16 = load i32, i32* %15, align 8, !dbg !4043, !tbaa !2825
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !4044
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4045
  %19 = load i8*, i8** %18, align 8, !dbg !4045, !tbaa !2914
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4046
  %21 = load i8*, i8** %20, align 8, !dbg !4046, !tbaa !2917
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !4047
  %23 = add i64 %22, 1, !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3995, metadata !578), !dbg !4049
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4016, metadata !578) #8, !dbg !4050
  %24 = tail call noalias i8* @xmalloc(i64 %23) #8, !dbg !4052
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3996, metadata !578), !dbg !4053
  %25 = load i32, i32* %15, align 8, !dbg !4054, !tbaa !2825
  %26 = load i8*, i8** %18, align 8, !dbg !4055, !tbaa !2914
  %27 = load i8*, i8** %20, align 8, !dbg !4056, !tbaa !2917
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !4057
  store i32 %8, i32* %7, align 4, !dbg !4058, !tbaa !676
  br i1 %11, label %29, label %30, !dbg !4059

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !4060, !tbaa !4062
  br label %30, !dbg !4063

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !4064
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !4065 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4069, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !4067, metadata !578), !dbg !4070
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4068, metadata !578), !dbg !4071
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4068, metadata !578), !dbg !4071
  %2 = load i32, i32* @nslots, align 4, !dbg !4072, !tbaa !676
  %3 = icmp sgt i32 %2, 1, !dbg !4076
  br i1 %3, label %4, label %14, !dbg !4077

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !4079

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !4079
  %8 = load i8*, i8** %7, align 8, !dbg !4079, !tbaa !4080
  tail call void @free(i8* %8) #8, !dbg !4082
  %9 = add nuw i64 %6, 1, !dbg !4083
  %10 = load i32, i32* @nslots, align 4, !dbg !4072, !tbaa !676
  %11 = sext i32 %10 to i64, !dbg !4076
  %12 = icmp slt i64 %9, %11, !dbg !4076
  br i1 %12, label %5, label %13, !dbg !4077, !llvm.loop !4085

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !4088

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !4088
  %16 = load i8*, i8** %15, align 8, !dbg !4088, !tbaa !4080
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4090
  br i1 %17, label %19, label %18, !dbg !4091

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #8, !dbg !4092
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !4094, !tbaa !4095
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !4096, !tbaa !4080
  br label %19, !dbg !4097

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !4098
  br i1 %20, label %23, label %21, !dbg !4100

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !4101
  tail call void @free(i8* %22) #8, !dbg !4103
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4104, !tbaa !586
  br label %23, !dbg !4105

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !4106, !tbaa !676
  ret void, !dbg !4107
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !4108 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4112, metadata !578), !dbg !4114
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4113, metadata !578), !dbg !4115
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4116
  ret i8* %3, !dbg !4117
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !4118 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4122, metadata !578), !dbg !4136
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4123, metadata !578), !dbg !4137
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4124, metadata !578), !dbg !4138
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4125, metadata !578), !dbg !4139
  %5 = tail call i32* @__errno_location() #1, !dbg !4140
  %6 = load i32, i32* %5, align 4, !dbg !4140, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4126, metadata !578), !dbg !4141
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4142, !tbaa !586
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !4127, metadata !578), !dbg !4143
  %8 = icmp slt i32 %0, 0, !dbg !4144
  br i1 %8, label %9, label %10, !dbg !4146

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !4147
  unreachable, !dbg !4147

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4148, !tbaa !676
  %12 = icmp sgt i32 %11, %0, !dbg !4149
  br i1 %12, label %34, label %13, !dbg !4150

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4151
  %15 = icmp ugt i32 %0, 2147483646, !dbg !4152
  br i1 %15, label %16, label %17, !dbg !4154

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4155
  unreachable, !dbg !4155

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !4156
  %19 = select i1 %14, i8* null, i8* %18, !dbg !4156
  %20 = add nsw i32 %0, 1, !dbg !4158
  %21 = sext i32 %20 to i64, !dbg !4159
  %22 = shl nsw i64 %21, 4, !dbg !4160
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #8, !dbg !4161
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4161
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !4127, metadata !578), !dbg !4143
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4162, !tbaa !586
  br i1 %14, label %25, label %26, !dbg !4163

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4164, !tbaa.struct !4166
  br label %26, !dbg !4167

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4168, !tbaa !676
  %28 = sext i32 %27 to i64, !dbg !4169
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4169
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4170
  %31 = sub nsw i32 %20, %27, !dbg !4171
  %32 = sext i32 %31 to i64, !dbg !4172
  %33 = shl nsw i64 %32, 4, !dbg !4173
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4170
  store i32 %20, i32* @nslots, align 4, !dbg !4174, !tbaa !676
  br label %34, !dbg !4175

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !4127, metadata !578), !dbg !4143
  %36 = sext i32 %0 to i64, !dbg !4176
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4177
  %38 = load i64, i64* %37, align 8, !dbg !4177, !tbaa !4095
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4131, metadata !578), !dbg !4178
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4179
  %40 = load i8*, i8** %39, align 8, !dbg !4179, !tbaa !4080
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4133, metadata !578), !dbg !4180
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4181
  %42 = load i32, i32* %41, align 4, !dbg !4181, !tbaa !2887
  %43 = or i32 %42, 1, !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4134, metadata !578), !dbg !4183
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4184
  %45 = load i32, i32* %44, align 8, !dbg !4184, !tbaa !2825
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4185
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4186
  %48 = load i8*, i8** %47, align 8, !dbg !4186, !tbaa !2914
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4187
  %50 = load i8*, i8** %49, align 8, !dbg !4187, !tbaa !2917
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4135, metadata !578), !dbg !4189
  %52 = icmp ugt i64 %38, %51, !dbg !4190
  br i1 %52, label %63, label %53, !dbg !4192

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4131, metadata !578), !dbg !4178
  store i64 %54, i64* %37, align 8, !dbg !4195, !tbaa !4095
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4196
  br i1 %55, label %57, label %56, !dbg !4198

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #8, !dbg !4199
  br label %57, !dbg !4199

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4016, metadata !578) #8, !dbg !4200
  %58 = tail call noalias i8* @xmalloc(i64 %54) #8, !dbg !4202
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4133, metadata !578), !dbg !4180
  store i8* %58, i8** %39, align 8, !dbg !4203, !tbaa !4080
  %59 = load i32, i32* %44, align 8, !dbg !4204, !tbaa !2825
  %60 = load i8*, i8** %47, align 8, !dbg !4205, !tbaa !2914
  %61 = load i8*, i8** %49, align 8, !dbg !4206, !tbaa !2917
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4207
  br label %63, !dbg !4208

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4133, metadata !578), !dbg !4180
  store i32 %6, i32* %5, align 4, !dbg !4209, !tbaa !676
  ret i8* %64, !dbg !4210
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4211 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4215, metadata !578), !dbg !4218
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4216, metadata !578), !dbg !4219
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4217, metadata !578), !dbg !4220
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4221
  ret i8* %4, !dbg !4222
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !4223 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4227, metadata !578), !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4112, metadata !578) #8, !dbg !4229
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4113, metadata !578) #8, !dbg !4231
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #8, !dbg !4232
  ret i8* %2, !dbg !4233
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4234 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4238, metadata !578), !dbg !4240
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4239, metadata !578), !dbg !4241
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4215, metadata !578) #8, !dbg !4242
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4216, metadata !578) #8, !dbg !4244
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4217, metadata !578) #8, !dbg !4245
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #8, !dbg !4246
  ret i8* %3, !dbg !4247
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4248 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4256, metadata !4262), !dbg !4263
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4252, metadata !578), !dbg !4265
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4253, metadata !578), !dbg !4266
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4254, metadata !578), !dbg !4267
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4268
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #8, !dbg !4268
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4255, metadata !2031), !dbg !4269
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4261, metadata !578) #8, !dbg !4270
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4271
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4271
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4256, metadata !578) #8, !dbg !4263
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4256, metadata !4272) #8, !dbg !4263
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4263
  %8 = icmp eq i32 %1, 10, !dbg !4273
  br i1 %8, label %9, label %10, !dbg !4275

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4276, !noalias !4277
  unreachable, !dbg !4276

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4256, metadata !4272) #8, !dbg !4263
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4280
  store i32 %1, i32* %11, align 8, !dbg !4280, !alias.scope !4277
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4280
  %13 = bitcast i32* %12 to i8*, !dbg !4280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #8, !dbg !4280
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4281
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4255, metadata !2031), !dbg !4269
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4282
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #8, !dbg !4283
  ret i8* %14, !dbg !4284
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4285 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4256, metadata !4262), !dbg !4294
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4289, metadata !578), !dbg !4296
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4290, metadata !578), !dbg !4297
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4291, metadata !578), !dbg !4298
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4292, metadata !578), !dbg !4299
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4300
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #8, !dbg !4300
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4293, metadata !2031), !dbg !4301
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4261, metadata !578) #8, !dbg !4302
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4303
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4303
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4256, metadata !578) #8, !dbg !4294
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4256, metadata !4272) #8, !dbg !4294
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4294
  %9 = icmp eq i32 %1, 10, !dbg !4304
  br i1 %9, label %10, label %11, !dbg !4305

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4306, !noalias !4307
  unreachable, !dbg !4306

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4256, metadata !4272) #8, !dbg !4294
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4310
  store i32 %1, i32* %12, align 8, !dbg !4310, !alias.scope !4307
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4310
  %14 = bitcast i32* %13 to i8*, !dbg !4310
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #8, !dbg !4310
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4311
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4293, metadata !2031), !dbg !4301
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4312
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #8, !dbg !4313
  ret i8* %15, !dbg !4314
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4315 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4256, metadata !4262), !dbg !4321
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4319, metadata !578), !dbg !4324
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4320, metadata !578), !dbg !4325
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4252, metadata !578) #8, !dbg !4326
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4253, metadata !578) #8, !dbg !4327
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4254, metadata !578) #8, !dbg !4328
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4329
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #8, !dbg !4329
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4255, metadata !2031) #8, !dbg !4330
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4261, metadata !578) #8, !dbg !4331
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4332
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4332
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4256, metadata !578) #8, !dbg !4321
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4256, metadata !4272) #8, !dbg !4321
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4321
  %7 = icmp eq i32 %0, 10, !dbg !4333
  br i1 %7, label %8, label %9, !dbg !4334

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !4335, !noalias !4336
  unreachable, !dbg !4335

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4256, metadata !4272) #8, !dbg !4321
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4339
  store i32 %0, i32* %10, align 8, !dbg !4339, !alias.scope !4336
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4339
  %12 = bitcast i32* %11 to i8*, !dbg !4339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #8, !dbg !4339
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4340
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4255, metadata !2031) #8, !dbg !4330
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #8, !dbg !4341
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #8, !dbg !4342
  ret i8* %13, !dbg !4343
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4344 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4256, metadata !4262), !dbg !4351
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4348, metadata !578), !dbg !4354
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4349, metadata !578), !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4350, metadata !578), !dbg !4356
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4289, metadata !578) #8, !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4290, metadata !578) #8, !dbg !4358
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4291, metadata !578) #8, !dbg !4359
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4292, metadata !578) #8, !dbg !4360
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4361
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #8, !dbg !4361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4293, metadata !2031) #8, !dbg !4362
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4261, metadata !578) #8, !dbg !4363
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4364
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4364
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4256, metadata !578) #8, !dbg !4351
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4256, metadata !4272) #8, !dbg !4351
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4351
  %8 = icmp eq i32 %0, 10, !dbg !4365
  br i1 %8, label %9, label %10, !dbg !4366

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4367, !noalias !4368
  unreachable, !dbg !4367

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4256, metadata !4272) #8, !dbg !4351
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4371
  store i32 %0, i32* %11, align 8, !dbg !4371, !alias.scope !4368
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4371
  %13 = bitcast i32* %12 to i8*, !dbg !4371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #8, !dbg !4371
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4372
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4293, metadata !2031) #8, !dbg !4362
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #8, !dbg !4373
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #8, !dbg !4374
  ret i8* %14, !dbg !4375
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4376 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4380, metadata !578), !dbg !4384
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4381, metadata !578), !dbg !4385
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4382, metadata !578), !dbg !4386
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4387
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #8, !dbg !4387
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4388, !tbaa.struct !4389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4383, metadata !2031), !dbg !4390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2845, metadata !578), !dbg !4391
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2846, metadata !578), !dbg !4393
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2847, metadata !578), !dbg !4394
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2848, metadata !578), !dbg !4395
  %6 = lshr i8 %2, 5, !dbg !4396
  %7 = zext i8 %6 to i64, !dbg !4396
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4397
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2849, metadata !578), !dbg !4398
  %9 = and i8 %2, 31, !dbg !4399
  %10 = zext i8 %9 to i32, !dbg !4400
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2851, metadata !578), !dbg !4401
  %11 = load i32, i32* %8, align 4, !dbg !4402, !tbaa !676
  %12 = lshr i32 %11, %10, !dbg !4403
  %13 = and i32 %12, 1, !dbg !4404
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2852, metadata !578), !dbg !4405
  %14 = xor i32 %13, 1, !dbg !4406
  %15 = shl i32 %14, %10, !dbg !4407
  %16 = xor i32 %15, %11, !dbg !4408
  store i32 %16, i32* %8, align 4, !dbg !4408, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4383, metadata !2031), !dbg !4390
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4409
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #8, !dbg !4410
  ret i8* %17, !dbg !4411
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4412 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4416, metadata !578), !dbg !4418
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4417, metadata !578), !dbg !4419
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4380, metadata !578) #8, !dbg !4420
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4381, metadata !578) #8, !dbg !4422
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4382, metadata !578) #8, !dbg !4423
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4424
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #8, !dbg !4424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !4425, !tbaa.struct !4389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4383, metadata !2031) #8, !dbg !4426
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2845, metadata !578) #8, !dbg !4427
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2846, metadata !578) #8, !dbg !4429
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2847, metadata !578) #8, !dbg !4430
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2848, metadata !578) #8, !dbg !4431
  %5 = lshr i8 %1, 5, !dbg !4432
  %6 = zext i8 %5 to i64, !dbg !4432
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4433
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2849, metadata !578) #8, !dbg !4434
  %8 = and i8 %1, 31, !dbg !4435
  %9 = zext i8 %8 to i32, !dbg !4436
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2851, metadata !578) #8, !dbg !4437
  %10 = load i32, i32* %7, align 4, !dbg !4438, !tbaa !676
  %11 = lshr i32 %10, %9, !dbg !4439
  %12 = and i32 %11, 1, !dbg !4440
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2852, metadata !578) #8, !dbg !4441
  %13 = xor i32 %12, 1, !dbg !4442
  %14 = shl i32 %13, %9, !dbg !4443
  %15 = xor i32 %14, %10, !dbg !4444
  store i32 %15, i32* %7, align 4, !dbg !4444, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4383, metadata !2031) #8, !dbg !4426
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #8, !dbg !4445
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #8, !dbg !4446
  ret i8* %16, !dbg !4447
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4448 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4450, metadata !578), !dbg !4451
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4416, metadata !578) #8, !dbg !4452
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4417, metadata !578) #8, !dbg !4454
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4380, metadata !578) #8, !dbg !4455
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4381, metadata !578) #8, !dbg !4457
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4382, metadata !578) #8, !dbg !4458
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4459
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #8, !dbg !4459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !4460, !tbaa.struct !4389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4383, metadata !2031) #8, !dbg !4461
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2845, metadata !578) #8, !dbg !4462
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2846, metadata !578) #8, !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2847, metadata !578) #8, !dbg !4465
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2848, metadata !578) #8, !dbg !4466
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4467
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2849, metadata !578) #8, !dbg !4468
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2851, metadata !578) #8, !dbg !4469
  %5 = load i32, i32* %4, align 4, !dbg !4470, !tbaa !676
  %6 = or i32 %5, 67108864, !dbg !4471
  store i32 %6, i32* %4, align 4, !dbg !4471, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4383, metadata !2031) #8, !dbg !4461
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #8, !dbg !4472
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #8, !dbg !4473
  ret i8* %7, !dbg !4474
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4475 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4477, metadata !578), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4478, metadata !578), !dbg !4480
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4380, metadata !578) #8, !dbg !4481
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4381, metadata !578) #8, !dbg !4483
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4382, metadata !578) #8, !dbg !4484
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4485
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #8, !dbg !4485
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !4486, !tbaa.struct !4389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4383, metadata !2031) #8, !dbg !4487
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2845, metadata !578) #8, !dbg !4488
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2846, metadata !578) #8, !dbg !4490
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2847, metadata !578) #8, !dbg !4491
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2848, metadata !578) #8, !dbg !4492
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4493
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2849, metadata !578) #8, !dbg !4494
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2851, metadata !578) #8, !dbg !4495
  %6 = load i32, i32* %5, align 4, !dbg !4496, !tbaa !676
  %7 = or i32 %6, 67108864, !dbg !4497
  store i32 %7, i32* %5, align 4, !dbg !4497, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4383, metadata !2031) #8, !dbg !4487
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #8, !dbg !4498
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #8, !dbg !4499
  ret i8* %8, !dbg !4500
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4501 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4256, metadata !4262), !dbg !4507
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4503, metadata !578), !dbg !4509
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4504, metadata !578), !dbg !4510
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4505, metadata !578), !dbg !4511
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4512
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #8, !dbg !4512
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4261, metadata !578) #8, !dbg !4513
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4514
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4514
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4256, metadata !578) #8, !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4256, metadata !4272) #8, !dbg !4507
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4507
  %9 = icmp eq i32 %1, 10, !dbg !4515
  br i1 %9, label %10, label %11, !dbg !4516

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4517, !noalias !4518
  unreachable, !dbg !4517

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4256, metadata !4272) #8, !dbg !4507
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4521
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4521
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4522
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4523
  store i32 %1, i32* %13, align 8, !dbg !4523
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4523
  %15 = bitcast i32* %14 to i8*, !dbg !4523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4523
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4506, metadata !2031), !dbg !4524
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2845, metadata !578), !dbg !4525
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2846, metadata !578), !dbg !4527
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2847, metadata !578), !dbg !4528
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2848, metadata !578), !dbg !4529
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4530
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2849, metadata !578), !dbg !4531
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2851, metadata !578), !dbg !4532
  %17 = load i32, i32* %16, align 4, !dbg !4533, !tbaa !676
  %18 = or i32 %17, 67108864, !dbg !4534
  store i32 %18, i32* %16, align 4, !dbg !4534, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4506, metadata !2031), !dbg !4524
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4535
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #8, !dbg !4536
  ret i8* %19, !dbg !4537
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4538 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4542, metadata !578), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4543, metadata !578), !dbg !4547
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4544, metadata !578), !dbg !4548
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4545, metadata !578), !dbg !4549
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4550, metadata !578) #8, !dbg !4560
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4555, metadata !578) #8, !dbg !4562
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4556, metadata !578) #8, !dbg !4563
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4557, metadata !578) #8, !dbg !4564
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4558, metadata !578) #8, !dbg !4565
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4566
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #8, !dbg !4566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !4567, !tbaa.struct !4389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4559, metadata !2031) #8, !dbg !4568
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2895, metadata !578) #8, !dbg !4569
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2896, metadata !578) #8, !dbg !4571
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2897, metadata !578) #8, !dbg !4572
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2895, metadata !578) #8, !dbg !4569
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2895, metadata !578) #8, !dbg !4569
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4573
  store i32 10, i32* %7, align 8, !dbg !4574, !tbaa !2825
  %8 = icmp ne i8* %1, null, !dbg !4575
  %9 = icmp ne i8* %2, null, !dbg !4576
  %10 = and i1 %8, %9, !dbg !4577
  br i1 %10, label %12, label %11, !dbg !4577

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4578
  unreachable, !dbg !4578

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4579
  store i8* %1, i8** %13, align 8, !dbg !4580, !tbaa !2914
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4581
  store i8* %2, i8** %14, align 8, !dbg !4582, !tbaa !2917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4559, metadata !2031) #8, !dbg !4568
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #8, !dbg !4583
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #8, !dbg !4584
  ret i8* %15, !dbg !4585
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4551 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4550, metadata !578), !dbg !4586
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4555, metadata !578), !dbg !4587
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4556, metadata !578), !dbg !4588
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4557, metadata !578), !dbg !4589
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4558, metadata !578), !dbg !4590
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4591
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #8, !dbg !4591
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4592, !tbaa.struct !4389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4559, metadata !2031), !dbg !4593
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2895, metadata !578) #8, !dbg !4594
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2896, metadata !578) #8, !dbg !4596
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2897, metadata !578) #8, !dbg !4597
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2895, metadata !578) #8, !dbg !4594
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2895, metadata !578) #8, !dbg !4594
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4598
  store i32 10, i32* %8, align 8, !dbg !4599, !tbaa !2825
  %9 = icmp ne i8* %1, null, !dbg !4600
  %10 = icmp ne i8* %2, null, !dbg !4601
  %11 = and i1 %9, %10, !dbg !4602
  br i1 %11, label %13, label %12, !dbg !4602

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !4603
  unreachable, !dbg !4603

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4604
  store i8* %1, i8** %14, align 8, !dbg !4605, !tbaa !2914
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4606
  store i8* %2, i8** %15, align 8, !dbg !4607, !tbaa !2917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4559, metadata !2031), !dbg !4593
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4608
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #8, !dbg !4609
  ret i8* %16, !dbg !4610
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4611 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4615, metadata !578), !dbg !4618
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4616, metadata !578), !dbg !4619
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4617, metadata !578), !dbg !4620
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4542, metadata !578) #8, !dbg !4621
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4543, metadata !578) #8, !dbg !4623
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4544, metadata !578) #8, !dbg !4624
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4545, metadata !578) #8, !dbg !4625
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4550, metadata !578) #8, !dbg !4626
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4555, metadata !578) #8, !dbg !4628
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4556, metadata !578) #8, !dbg !4629
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4557, metadata !578) #8, !dbg !4630
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4558, metadata !578) #8, !dbg !4631
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4632
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #8, !dbg !4632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !4633, !tbaa.struct !4389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4559, metadata !2031) #8, !dbg !4634
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2895, metadata !578) #8, !dbg !4635
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2896, metadata !578) #8, !dbg !4637
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2897, metadata !578) #8, !dbg !4638
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2895, metadata !578) #8, !dbg !4635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2895, metadata !578) #8, !dbg !4635
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4639
  store i32 10, i32* %6, align 8, !dbg !4640, !tbaa !2825
  %7 = icmp ne i8* %0, null, !dbg !4641
  %8 = icmp ne i8* %1, null, !dbg !4642
  %9 = and i1 %7, %8, !dbg !4643
  br i1 %9, label %11, label %10, !dbg !4643

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4644
  unreachable, !dbg !4644

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4645
  store i8* %0, i8** %12, align 8, !dbg !4646, !tbaa !2914
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4647
  store i8* %1, i8** %13, align 8, !dbg !4648, !tbaa !2917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4559, metadata !2031) #8, !dbg !4634
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #8, !dbg !4649
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #8, !dbg !4650
  ret i8* %14, !dbg !4651
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4652 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4656, metadata !578), !dbg !4660
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4657, metadata !578), !dbg !4661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4658, metadata !578), !dbg !4662
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4659, metadata !578), !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4550, metadata !578) #8, !dbg !4664
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4555, metadata !578) #8, !dbg !4666
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4556, metadata !578) #8, !dbg !4667
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4557, metadata !578) #8, !dbg !4668
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4558, metadata !578) #8, !dbg !4669
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4670
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #8, !dbg !4670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #8, !dbg !4671, !tbaa.struct !4389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4559, metadata !2031) #8, !dbg !4672
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2895, metadata !578) #8, !dbg !4673
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2896, metadata !578) #8, !dbg !4675
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2897, metadata !578) #8, !dbg !4676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2895, metadata !578) #8, !dbg !4673
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2895, metadata !578) #8, !dbg !4673
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4677
  store i32 10, i32* %7, align 8, !dbg !4678, !tbaa !2825
  %8 = icmp ne i8* %0, null, !dbg !4679
  %9 = icmp ne i8* %1, null, !dbg !4680
  %10 = and i1 %8, %9, !dbg !4681
  br i1 %10, label %12, label %11, !dbg !4681

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4682
  unreachable, !dbg !4682

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4683
  store i8* %0, i8** %13, align 8, !dbg !4684, !tbaa !2914
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4685
  store i8* %1, i8** %14, align 8, !dbg !4686, !tbaa !2917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4559, metadata !2031) #8, !dbg !4672
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #8, !dbg !4687
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #8, !dbg !4688
  ret i8* %15, !dbg !4689
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4690 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4694, metadata !578), !dbg !4697
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4695, metadata !578), !dbg !4698
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4696, metadata !578), !dbg !4699
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4700
  ret i8* %4, !dbg !4701
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4702 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4706, metadata !578), !dbg !4708
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4707, metadata !578), !dbg !4709
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4694, metadata !578) #8, !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4695, metadata !578) #8, !dbg !4712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4696, metadata !578) #8, !dbg !4713
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #8, !dbg !4714
  ret i8* %3, !dbg !4715
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4716 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4720, metadata !578), !dbg !4722
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4721, metadata !578), !dbg !4723
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4694, metadata !578) #8, !dbg !4724
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4695, metadata !578) #8, !dbg !4726
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4696, metadata !578) #8, !dbg !4727
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #8, !dbg !4728
  ret i8* %3, !dbg !4729
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4730 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4732, metadata !578), !dbg !4733
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4720, metadata !578) #8, !dbg !4734
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4721, metadata !578) #8, !dbg !4736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4694, metadata !578) #8, !dbg !4737
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4695, metadata !578) #8, !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4696, metadata !578) #8, !dbg !4740
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #8, !dbg !4741
  ret i8* %2, !dbg !4742
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #9 !dbg !4743 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4748, metadata !578), !dbg !4750
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4749, metadata !578), !dbg !4751
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4752, metadata !578), !dbg !4766
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4760, metadata !578), !dbg !4768
  %3 = load i8, i8* %0, align 1, !dbg !4769, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4761, metadata !578), !dbg !4770
  %4 = load i8, i8* %1, align 1, !dbg !4771, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4762, metadata !578), !dbg !4772
  %5 = icmp eq i8 %3, 45, !dbg !4773
  br i1 %5, label %6, label %105, !dbg !4775, !llvm.loop !4776

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !4780

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i8* [ %9, %7 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4758, metadata !578), !dbg !4780
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4781
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4758, metadata !578), !dbg !4780
  %10 = load i8, i8* %9, align 1, !dbg !4782, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4761, metadata !578), !dbg !4770
  %11 = icmp eq i8 %10, 48, !dbg !4783
  br i1 %11, label %7, label %12, !dbg !4784

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %4, 45, !dbg !4785
  br i1 %13, label %14, label %15, !dbg !4787, !llvm.loop !4788

; <label>:14:                                     ; preds = %12
  br label %34, !dbg !4791

; <label>:15:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4761, metadata !578), !dbg !4770
  %16 = zext i8 %10 to i32, !dbg !4792
  %17 = add nsw i32 %16, -48, !dbg !4792
  %18 = icmp ult i32 %17, 10, !dbg !4792
  br i1 %18, label %220, label %19, !dbg !4795

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4759, metadata !578), !dbg !4791
  %20 = icmp eq i8 %4, 48, !dbg !4796
  br i1 %20, label %21, label %28, !dbg !4798

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !4799

; <label>:22:                                     ; preds = %21, %22
  %23 = phi i8* [ %24, %22 ], [ %1, %21 ]
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !4799
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4759, metadata !578), !dbg !4791
  %25 = load i8, i8* %24, align 1, !dbg !4800, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4759, metadata !578), !dbg !4791
  %26 = icmp eq i8 %25, 48, !dbg !4796
  br i1 %26, label %22, label %27, !dbg !4798, !llvm.loop !4801

; <label>:27:                                     ; preds = %22
  br label %28, !dbg !4772

; <label>:28:                                     ; preds = %27, %19
  %29 = phi i8 [ %4, %19 ], [ %25, %27 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !4762, metadata !578), !dbg !4772
  %30 = zext i8 %29 to i32, !dbg !4804
  %31 = add nsw i32 %30, -48, !dbg !4804
  %32 = icmp ult i32 %31, 10, !dbg !4804
  %33 = sext i1 %32 to i32, !dbg !4805
  br label %220, !dbg !4806

; <label>:34:                                     ; preds = %14, %34
  %35 = phi i8* [ %36, %34 ], [ %1, %14 ]
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !4759, metadata !578), !dbg !4791
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !4807
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !4759, metadata !578), !dbg !4791
  %37 = load i8, i8* %36, align 1, !dbg !4808, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !4762, metadata !578), !dbg !4772
  %38 = icmp eq i8 %37, 48, !dbg !4809
  br i1 %38, label %34, label %39, !dbg !4810

; <label>:39:                                     ; preds = %34
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4758, metadata !578), !dbg !4780
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !4759, metadata !578), !dbg !4791
  %40 = zext i8 %10 to i32, !dbg !4811
  %41 = icmp eq i8 %37, %10, !dbg !4813
  %42 = add nsw i32 %40, -48, !dbg !4814
  %43 = icmp ult i32 %42, 10, !dbg !4814
  %44 = and i1 %43, %41, !dbg !4816
  br i1 %44, label %45, label %59, !dbg !4816, !llvm.loop !4817

; <label>:45:                                     ; preds = %39
  br label %46, !dbg !4780

; <label>:46:                                     ; preds = %45, %46
  %47 = phi i8* [ %49, %46 ], [ %9, %45 ]
  %48 = phi i8* [ %51, %46 ], [ %36, %45 ]
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4758, metadata !578), !dbg !4780
  %49 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !4821
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !4758, metadata !578), !dbg !4780
  %50 = load i8, i8* %49, align 1, !dbg !4822, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %50, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !4759, metadata !578), !dbg !4791
  %51 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !4823
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4759, metadata !578), !dbg !4791
  %52 = load i8, i8* %51, align 1, !dbg !4824, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %52, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8 %52, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8 %50, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !4758, metadata !578), !dbg !4780
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4759, metadata !578), !dbg !4791
  %53 = zext i8 %50 to i32, !dbg !4811
  %54 = icmp eq i8 %52, %50, !dbg !4813
  %55 = add nsw i32 %53, -48, !dbg !4814
  %56 = icmp ult i32 %55, 10, !dbg !4814
  %57 = and i1 %54, %56, !dbg !4816
  br i1 %57, label %46, label %58, !dbg !4816, !llvm.loop !4817

; <label>:58:                                     ; preds = %46
  br label %59, !dbg !4825

; <label>:59:                                     ; preds = %58, %39
  %60 = phi i8* [ %36, %39 ], [ %51, %58 ]
  %61 = phi i8* [ %9, %39 ], [ %49, %58 ]
  %62 = phi i8 [ %10, %39 ], [ %50, %58 ]
  %63 = phi i8 [ %37, %39 ], [ %52, %58 ]
  %64 = phi i32 [ %40, %39 ], [ %53, %58 ]
  %65 = zext i8 %63 to i32, !dbg !4825
  %66 = sub nsw i32 %65, %64, !dbg !4826
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !4763, metadata !578), !dbg !4827
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4764, metadata !578), !dbg !4828
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4764, metadata !578), !dbg !4828
  tail call void @llvm.dbg.value(metadata i8 %62, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !4758, metadata !578), !dbg !4780
  %67 = zext i8 %62 to i32, !dbg !4829
  %68 = add nsw i32 %67, -48, !dbg !4829
  %69 = icmp ult i32 %68, 10, !dbg !4829
  br i1 %69, label %70, label %72, !dbg !4833, !llvm.loop !4835

; <label>:70:                                     ; preds = %59
  br label %77, !dbg !4780

; <label>:71:                                     ; preds = %77
  br label %72, !dbg !4838

; <label>:72:                                     ; preds = %71, %59
  %73 = phi i64 [ 0, %59 ], [ %82, %71 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4765, metadata !578), !dbg !4838
  tail call void @llvm.dbg.value(metadata i8 %63, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !4759, metadata !578), !dbg !4791
  %74 = add nsw i32 %65, -48, !dbg !4839
  %75 = icmp ult i32 %74, 10, !dbg !4839
  br i1 %75, label %76, label %96, !dbg !4843, !llvm.loop !4845

; <label>:76:                                     ; preds = %72
  br label %86, !dbg !4791

; <label>:77:                                     ; preds = %70, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %70 ]
  %79 = phi i8* [ %80, %77 ], [ %61, %70 ]
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !4758, metadata !578), !dbg !4780
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !4848
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !4758, metadata !578), !dbg !4780
  %81 = load i8, i8* %80, align 1, !dbg !4849, !tbaa !737
  %82 = add i64 %78, 1, !dbg !4850
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4764, metadata !578), !dbg !4828
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4764, metadata !578), !dbg !4828
  tail call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !4758, metadata !578), !dbg !4780
  %83 = zext i8 %81 to i32, !dbg !4829
  %84 = add nsw i32 %83, -48, !dbg !4829
  %85 = icmp ult i32 %84, 10, !dbg !4829
  br i1 %85, label %77, label %71, !dbg !4833, !llvm.loop !4852

; <label>:86:                                     ; preds = %76, %86
  %87 = phi i64 [ %91, %86 ], [ 0, %76 ]
  %88 = phi i8* [ %89, %86 ], [ %60, %76 ]
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !4759, metadata !578), !dbg !4791
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !4855
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !4759, metadata !578), !dbg !4791
  %90 = load i8, i8* %89, align 1, !dbg !4856, !tbaa !737
  %91 = add i64 %87, 1, !dbg !4857
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !4765, metadata !578), !dbg !4838
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !4765, metadata !578), !dbg !4838
  tail call void @llvm.dbg.value(metadata i8 %90, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !4759, metadata !578), !dbg !4791
  %92 = zext i8 %90 to i32, !dbg !4839
  %93 = add nsw i32 %92, -48, !dbg !4839
  %94 = icmp ult i32 %93, 10, !dbg !4839
  br i1 %94, label %86, label %95, !dbg !4843, !llvm.loop !4859

; <label>:95:                                     ; preds = %86
  br label %96, !dbg !4862

; <label>:96:                                     ; preds = %95, %72
  %97 = phi i64 [ 0, %72 ], [ %91, %95 ]
  %98 = icmp eq i64 %73, %97, !dbg !4862
  br i1 %98, label %102, label %99, !dbg !4864

; <label>:99:                                     ; preds = %96
  %100 = icmp ult i64 %73, %97, !dbg !4865
  %101 = select i1 %100, i32 1, i32 -1, !dbg !4866
  br label %220, !dbg !4867

; <label>:102:                                    ; preds = %96
  %103 = icmp eq i64 %73, 0, !dbg !4868
  %104 = select i1 %103, i32 0, i32 %66, !dbg !4870
  br label %220, !dbg !4870

; <label>:105:                                    ; preds = %2
  %106 = icmp eq i8 %4, 45, !dbg !4871
  br i1 %106, label %107, label %108, !dbg !4873, !llvm.loop !4874

; <label>:107:                                    ; preds = %105
  br label %111, !dbg !4791

; <label>:108:                                    ; preds = %105
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4758, metadata !578), !dbg !4780
  %109 = icmp eq i8 %3, 48, !dbg !4878
  br i1 %109, label %110, label %136, !dbg !4881

; <label>:110:                                    ; preds = %108
  br label %141, !dbg !4882

; <label>:111:                                    ; preds = %107, %111
  %112 = phi i8* [ %113, %111 ], [ %1, %107 ]
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !4759, metadata !578), !dbg !4791
  %113 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !4883
  tail call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4759, metadata !578), !dbg !4791
  %114 = load i8, i8* %113, align 1, !dbg !4884, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %114, i64 0, metadata !4762, metadata !578), !dbg !4772
  %115 = icmp eq i8 %114, 48, !dbg !4885
  br i1 %115, label %111, label %116, !dbg !4886

; <label>:116:                                    ; preds = %111
  tail call void @llvm.dbg.value(metadata i8 %114, i64 0, metadata !4762, metadata !578), !dbg !4772
  %117 = zext i8 %114 to i32, !dbg !4887
  %118 = add nsw i32 %117, -48, !dbg !4887
  %119 = icmp ult i32 %118, 10, !dbg !4887
  br i1 %119, label %220, label %120, !dbg !4889

; <label>:120:                                    ; preds = %116
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4758, metadata !578), !dbg !4780
  %121 = icmp eq i8 %3, 48, !dbg !4890
  br i1 %121, label %122, label %129, !dbg !4892

; <label>:122:                                    ; preds = %120
  br label %123, !dbg !4893

; <label>:123:                                    ; preds = %122, %123
  %124 = phi i8* [ %125, %123 ], [ %0, %122 ]
  %125 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !4893
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !4758, metadata !578), !dbg !4780
  %126 = load i8, i8* %125, align 1, !dbg !4894, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %126, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8 %126, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !4758, metadata !578), !dbg !4780
  %127 = icmp eq i8 %126, 48, !dbg !4890
  br i1 %127, label %123, label %128, !dbg !4892, !llvm.loop !4895

; <label>:128:                                    ; preds = %123
  br label %129, !dbg !4770

; <label>:129:                                    ; preds = %128, %120
  %130 = phi i8 [ %3, %120 ], [ %126, %128 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !4761, metadata !578), !dbg !4770
  %131 = zext i8 %130 to i32, !dbg !4898
  %132 = add nsw i32 %131, -48, !dbg !4898
  %133 = icmp ult i32 %132, 10, !dbg !4898
  %134 = zext i1 %133 to i32, !dbg !4898
  br label %220, !dbg !4899

; <label>:135:                                    ; preds = %141
  br label %136, !dbg !4772

; <label>:136:                                    ; preds = %135, %108
  %137 = phi i8* [ %0, %108 ], [ %143, %135 ]
  %138 = phi i8 [ %3, %108 ], [ %144, %135 ]
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4759, metadata !578), !dbg !4791
  %139 = icmp eq i8 %4, 48, !dbg !4900
  br i1 %139, label %140, label %147, !dbg !4901

; <label>:140:                                    ; preds = %136
  br label %156, !dbg !4902

; <label>:141:                                    ; preds = %110, %141
  %142 = phi i8* [ %143, %141 ], [ %0, %110 ]
  %143 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !4882
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !4758, metadata !578), !dbg !4780
  %144 = load i8, i8* %143, align 1, !dbg !4903, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !4758, metadata !578), !dbg !4780
  %145 = icmp eq i8 %144, 48, !dbg !4878
  br i1 %145, label %141, label %135, !dbg !4881, !llvm.loop !4904

; <label>:146:                                    ; preds = %156
  br label %147, !dbg !4772

; <label>:147:                                    ; preds = %146, %136
  %148 = phi i8* [ %1, %136 ], [ %158, %146 ]
  %149 = phi i8 [ %4, %136 ], [ %159, %146 ]
  tail call void @llvm.dbg.value(metadata i8 %149, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8 %138, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !4758, metadata !578), !dbg !4780
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !4759, metadata !578), !dbg !4791
  %150 = zext i8 %138 to i32, !dbg !4907
  %151 = icmp eq i8 %138, %149, !dbg !4908
  %152 = add nsw i32 %150, -48, !dbg !4909
  %153 = icmp ult i32 %152, 10, !dbg !4909
  %154 = and i1 %153, %151, !dbg !4911
  br i1 %154, label %155, label %174, !dbg !4911, !llvm.loop !4912

; <label>:155:                                    ; preds = %147
  br label %161, !dbg !4780

; <label>:156:                                    ; preds = %140, %156
  %157 = phi i8* [ %158, %156 ], [ %1, %140 ]
  %158 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !4902
  tail call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4759, metadata !578), !dbg !4791
  %159 = load i8, i8* %158, align 1, !dbg !4916, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4759, metadata !578), !dbg !4791
  %160 = icmp eq i8 %159, 48, !dbg !4900
  br i1 %160, label %156, label %146, !dbg !4901, !llvm.loop !4917

; <label>:161:                                    ; preds = %155, %161
  %162 = phi i8* [ %164, %161 ], [ %137, %155 ]
  %163 = phi i8* [ %166, %161 ], [ %148, %155 ]
  tail call void @llvm.dbg.value(metadata i8* %162, i64 0, metadata !4758, metadata !578), !dbg !4780
  %164 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !4920
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !4758, metadata !578), !dbg !4780
  %165 = load i8, i8* %164, align 1, !dbg !4921, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %165, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !4759, metadata !578), !dbg !4791
  %166 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !4922
  tail call void @llvm.dbg.value(metadata i8* %166, i64 0, metadata !4759, metadata !578), !dbg !4791
  %167 = load i8, i8* %166, align 1, !dbg !4923, !tbaa !737
  tail call void @llvm.dbg.value(metadata i8 %167, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8 %167, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8 %165, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !4758, metadata !578), !dbg !4780
  tail call void @llvm.dbg.value(metadata i8* %166, i64 0, metadata !4759, metadata !578), !dbg !4791
  %168 = zext i8 %165 to i32, !dbg !4907
  %169 = icmp eq i8 %165, %167, !dbg !4908
  %170 = add nsw i32 %168, -48, !dbg !4909
  %171 = icmp ult i32 %170, 10, !dbg !4909
  %172 = and i1 %169, %171, !dbg !4911
  br i1 %172, label %161, label %173, !dbg !4911, !llvm.loop !4912

; <label>:173:                                    ; preds = %161
  br label %174, !dbg !4924

; <label>:174:                                    ; preds = %173, %147
  %175 = phi i8* [ %148, %147 ], [ %166, %173 ]
  %176 = phi i8* [ %137, %147 ], [ %164, %173 ]
  %177 = phi i8 [ %138, %147 ], [ %165, %173 ]
  %178 = phi i8 [ %149, %147 ], [ %167, %173 ]
  %179 = phi i32 [ %150, %147 ], [ %168, %173 ]
  %180 = zext i8 %178 to i32, !dbg !4924
  %181 = sub nsw i32 %179, %180, !dbg !4925
  tail call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !4763, metadata !578), !dbg !4827
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4764, metadata !578), !dbg !4828
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4764, metadata !578), !dbg !4828
  tail call void @llvm.dbg.value(metadata i8 %177, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !4758, metadata !578), !dbg !4780
  %182 = zext i8 %177 to i32, !dbg !4926
  %183 = add nsw i32 %182, -48, !dbg !4926
  %184 = icmp ult i32 %183, 10, !dbg !4926
  br i1 %184, label %185, label %187, !dbg !4930, !llvm.loop !4932

; <label>:185:                                    ; preds = %174
  br label %192, !dbg !4780

; <label>:186:                                    ; preds = %192
  br label %187, !dbg !4838

; <label>:187:                                    ; preds = %186, %174
  %188 = phi i64 [ 0, %174 ], [ %197, %186 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4765, metadata !578), !dbg !4838
  tail call void @llvm.dbg.value(metadata i8 %178, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8* %175, i64 0, metadata !4759, metadata !578), !dbg !4791
  %189 = add nsw i32 %180, -48, !dbg !4935
  %190 = icmp ult i32 %189, 10, !dbg !4935
  br i1 %190, label %191, label %211, !dbg !4939, !llvm.loop !4941

; <label>:191:                                    ; preds = %187
  br label %201, !dbg !4791

; <label>:192:                                    ; preds = %185, %192
  %193 = phi i64 [ %197, %192 ], [ 0, %185 ]
  %194 = phi i8* [ %195, %192 ], [ %176, %185 ]
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !4758, metadata !578), !dbg !4780
  %195 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !4944
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !4758, metadata !578), !dbg !4780
  %196 = load i8, i8* %195, align 1, !dbg !4945, !tbaa !737
  %197 = add i64 %193, 1, !dbg !4946
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !4764, metadata !578), !dbg !4828
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !4764, metadata !578), !dbg !4828
  tail call void @llvm.dbg.value(metadata i8 %196, i64 0, metadata !4761, metadata !578), !dbg !4770
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !4758, metadata !578), !dbg !4780
  %198 = zext i8 %196 to i32, !dbg !4926
  %199 = add nsw i32 %198, -48, !dbg !4926
  %200 = icmp ult i32 %199, 10, !dbg !4926
  br i1 %200, label %192, label %186, !dbg !4930, !llvm.loop !4948

; <label>:201:                                    ; preds = %191, %201
  %202 = phi i64 [ %206, %201 ], [ 0, %191 ]
  %203 = phi i8* [ %204, %201 ], [ %175, %191 ]
  tail call void @llvm.dbg.value(metadata i8* %203, i64 0, metadata !4759, metadata !578), !dbg !4791
  %204 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !4951
  tail call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !4759, metadata !578), !dbg !4791
  %205 = load i8, i8* %204, align 1, !dbg !4952, !tbaa !737
  %206 = add i64 %202, 1, !dbg !4953
  tail call void @llvm.dbg.value(metadata i64 %206, i64 0, metadata !4765, metadata !578), !dbg !4838
  tail call void @llvm.dbg.value(metadata i64 %206, i64 0, metadata !4765, metadata !578), !dbg !4838
  tail call void @llvm.dbg.value(metadata i8 %205, i64 0, metadata !4762, metadata !578), !dbg !4772
  tail call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !4759, metadata !578), !dbg !4791
  %207 = zext i8 %205 to i32, !dbg !4935
  %208 = add nsw i32 %207, -48, !dbg !4935
  %209 = icmp ult i32 %208, 10, !dbg !4935
  br i1 %209, label %201, label %210, !dbg !4939, !llvm.loop !4955

; <label>:210:                                    ; preds = %201
  br label %211, !dbg !4958

; <label>:211:                                    ; preds = %210, %187
  %212 = phi i64 [ 0, %187 ], [ %206, %210 ]
  %213 = icmp eq i64 %188, %212, !dbg !4958
  br i1 %213, label %217, label %214, !dbg !4960

; <label>:214:                                    ; preds = %211
  %215 = icmp ult i64 %188, %212, !dbg !4961
  %216 = select i1 %215, i32 -1, i32 1, !dbg !4962
  br label %220, !dbg !4963

; <label>:217:                                    ; preds = %211
  %218 = icmp eq i64 %188, 0, !dbg !4964
  %219 = select i1 %218, i32 0, i32 %181, !dbg !4966
  br label %220, !dbg !4966

; <label>:220:                                    ; preds = %15, %28, %99, %102, %116, %129, %214, %217
  %221 = phi i32 [ %33, %28 ], [ %101, %99 ], [ %134, %129 ], [ %216, %214 ], [ -1, %15 ], [ %104, %102 ], [ 1, %116 ], [ %219, %217 ]
  ret i32 %221, !dbg !4967
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror(i32, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !4968 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4980, metadata !578), !dbg !4984
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4981, metadata !578), !dbg !4985
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4982, metadata !578), !dbg !4986
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, i64 0, metadata !4983, metadata !578), !dbg !4987
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !4988
  ret void, !dbg !4989
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror_at_line(i32, i32, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !4990 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4994, metadata !578), !dbg !5001
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4995, metadata !578), !dbg !5002
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4996, metadata !578), !dbg !5003
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4997, metadata !578), !dbg !5004
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4998, metadata !578), !dbg !5005
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, i64 0, metadata !4999, metadata !578), !dbg !5006
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #8, !dbg !5007
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !5000, metadata !578), !dbg !5008
  %8 = icmp eq i8* %7, null, !dbg !5009
  br i1 %8, label %13, label %9, !dbg !5011

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !5012
  br i1 %10, label %12, label %11, !dbg !5015

; <label>:11:                                     ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %7) #8, !dbg !5016
  br label %17, !dbg !5016

; <label>:12:                                     ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %7) #8, !dbg !5017
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = tail call i32* @__errno_location() #1, !dbg !5018
  %15 = load i32, i32* %14, align 4, !dbg !5018, !tbaa !676
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.74, i64 0, i64 0), i32 5) #8, !dbg !5020
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #8, !dbg !5022
  tail call void @abort() #14, !dbg !5024
  unreachable, !dbg !5024

; <label>:17:                                     ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #8, !dbg !5025
  ret void, !dbg !5026
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !5027 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5031, metadata !578), !dbg !5033
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5032, metadata !578), !dbg !5034
  %3 = udiv i64 9223372036854775807, %1, !dbg !5035
  %4 = icmp ult i64 %3, %0, !dbg !5035
  br i1 %4, label %5, label %6, !dbg !5037

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !5038
  unreachable, !dbg !5038

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5039
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5040, metadata !578) #8, !dbg !5047
  %8 = tail call noalias i8* @malloc(i64 %7) #8, !dbg !5049
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5046, metadata !578) #8, !dbg !5050
  %9 = icmp eq i8* %8, null, !dbg !5051
  %10 = icmp ne i64 %7, 0, !dbg !5053
  %11 = and i1 %10, %9, !dbg !5055
  br i1 %11, label %12, label %13, !dbg !5055

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !5056
  unreachable, !dbg !5056

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !5057
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !5041 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5040, metadata !578), !dbg !5058
  %2 = tail call noalias i8* @malloc(i64 %0) #8, !dbg !5059
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5046, metadata !578), !dbg !5060
  %3 = icmp eq i8* %2, null, !dbg !5061
  %4 = icmp ne i64 %0, 0, !dbg !5062
  %5 = and i1 %4, %3, !dbg !5063
  br i1 %5, label %6, label %7, !dbg !5063

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5064
  unreachable, !dbg !5064

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5065
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !5066 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5070, metadata !578), !dbg !5073
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5071, metadata !578), !dbg !5074
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5072, metadata !578), !dbg !5075
  %4 = udiv i64 9223372036854775807, %2, !dbg !5076
  %5 = icmp ult i64 %4, %1, !dbg !5076
  br i1 %5, label %6, label %7, !dbg !5078

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !5079
  unreachable, !dbg !5079

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !5080
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5081, metadata !578) #8, !dbg !5087
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5086, metadata !578) #8, !dbg !5089
  %9 = icmp eq i64 %8, 0, !dbg !5090
  %10 = icmp ne i8* %0, null, !dbg !5092
  %11 = and i1 %10, %9, !dbg !5094
  br i1 %11, label %12, label %13, !dbg !5094

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #8, !dbg !5095
  br label %19, !dbg !5097

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #8, !dbg !5098
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5081, metadata !578) #8, !dbg !5087
  %15 = icmp eq i8* %14, null, !dbg !5099
  %16 = icmp ne i64 %8, 0, !dbg !5101
  %17 = and i1 %16, %15, !dbg !5103
  br i1 %17, label %18, label %19, !dbg !5103

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !5104
  unreachable, !dbg !5104

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !5105
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !5082 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5081, metadata !578), !dbg !5106
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5086, metadata !578), !dbg !5107
  %3 = icmp eq i64 %1, 0, !dbg !5108
  %4 = icmp ne i8* %0, null, !dbg !5109
  %5 = and i1 %4, %3, !dbg !5110
  br i1 %5, label %6, label %7, !dbg !5110

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #8, !dbg !5111
  br label %13, !dbg !5112

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #8, !dbg !5113
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5081, metadata !578), !dbg !5106
  %9 = icmp eq i8* %8, null, !dbg !5114
  %10 = icmp ne i64 %1, 0, !dbg !5115
  %11 = and i1 %10, %9, !dbg !5116
  br i1 %11, label %12, label %13, !dbg !5116

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !5117
  unreachable, !dbg !5117

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !5118
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !534 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !539, metadata !578), !dbg !5119
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !540, metadata !578), !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !541, metadata !578), !dbg !5121
  %4 = load i64, i64* %1, align 8, !dbg !5122, !tbaa !4062
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !542, metadata !578), !dbg !5123
  %5 = icmp eq i8* %0, null, !dbg !5124
  br i1 %5, label %6, label %13, !dbg !5126

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !5127
  br i1 %7, label %8, label %17, !dbg !5130

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !5131
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !542, metadata !578), !dbg !5123
  %10 = icmp ugt i64 %2, 128, !dbg !5133
  %11 = zext i1 %10 to i64, !dbg !5133
  %12 = add nuw nsw i64 %9, %11, !dbg !5134
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !542, metadata !578), !dbg !5123
  br label %17, !dbg !5135

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !5136
  %15 = icmp ugt i64 %14, %4, !dbg !5139
  br i1 %15, label %20, label %16, !dbg !5140

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !5141
  unreachable, !dbg !5141

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !542, metadata !578), !dbg !5123
  store i64 %18, i64* %1, align 8, !dbg !5142, !tbaa !4062
  %19 = mul i64 %18, %2, !dbg !5143
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5081, metadata !578) #8, !dbg !5144
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5086, metadata !578) #8, !dbg !5146
  br label %27, !dbg !5147

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !5148
  %22 = add i64 %4, 1, !dbg !5149
  %23 = add i64 %22, %21, !dbg !5150
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !542, metadata !578), !dbg !5123
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !542, metadata !578), !dbg !5123
  store i64 %23, i64* %1, align 8, !dbg !5142, !tbaa !4062
  %24 = mul i64 %23, %2, !dbg !5143
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5081, metadata !578) #8, !dbg !5144
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5086, metadata !578) #8, !dbg !5146
  %25 = icmp eq i64 %24, 0, !dbg !5151
  br i1 %25, label %26, label %27, !dbg !5147

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #8, !dbg !5152
  br label %34, !dbg !5153

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #8, !dbg !5154
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5081, metadata !578) #8, !dbg !5144
  %30 = icmp eq i8* %29, null, !dbg !5155
  %31 = icmp ne i64 %28, 0, !dbg !5156
  %32 = and i1 %31, %30, !dbg !5157
  br i1 %32, label %33, label %34, !dbg !5157

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !5158
  unreachable, !dbg !5158

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !5159
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !5160 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5162, metadata !578), !dbg !5163
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5040, metadata !578) #8, !dbg !5164
  %2 = tail call noalias i8* @malloc(i64 %0) #8, !dbg !5166
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5046, metadata !578) #8, !dbg !5167
  %3 = icmp eq i8* %2, null, !dbg !5168
  %4 = icmp ne i64 %0, 0, !dbg !5169
  %5 = and i1 %4, %3, !dbg !5170
  br i1 %5, label %6, label %7, !dbg !5170

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5171
  unreachable, !dbg !5171

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5172
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5173 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5177, metadata !578), !dbg !5179
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5178, metadata !578), !dbg !5180
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !539, metadata !578) #8, !dbg !5181
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !540, metadata !578) #8, !dbg !5183
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !541, metadata !578) #8, !dbg !5184
  %3 = load i64, i64* %1, align 8, !dbg !5185, !tbaa !4062
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !542, metadata !578) #8, !dbg !5186
  %4 = icmp eq i8* %0, null, !dbg !5187
  br i1 %4, label %5, label %8, !dbg !5188

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !5189
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !542, metadata !578) #8, !dbg !5186
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !542, metadata !578) #8, !dbg !5186
  %7 = select i1 %6, i64 128, i64 %3, !dbg !5190
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !542, metadata !578) #8, !dbg !5186
  store i64 %7, i64* %1, align 8, !dbg !5191, !tbaa !4062
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5081, metadata !578) #8, !dbg !5192
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5086, metadata !578) #8, !dbg !5194
  br label %17, !dbg !5195

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !5196
  br i1 %9, label %11, label %10, !dbg !5197

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !5198
  unreachable, !dbg !5198

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !5199
  %13 = add i64 %3, 1, !dbg !5200
  %14 = add i64 %13, %12, !dbg !5201
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !542, metadata !578) #8, !dbg !5186
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !542, metadata !578) #8, !dbg !5186
  store i64 %14, i64* %1, align 8, !dbg !5191, !tbaa !4062
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5081, metadata !578) #8, !dbg !5192
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5086, metadata !578) #8, !dbg !5194
  %15 = icmp eq i64 %14, 0, !dbg !5202
  br i1 %15, label %16, label %17, !dbg !5195

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #8, !dbg !5203
  br label %24, !dbg !5204

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #8, !dbg !5205
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5081, metadata !578) #8, !dbg !5192
  %20 = icmp eq i8* %19, null, !dbg !5206
  %21 = icmp ne i64 %18, 0, !dbg !5207
  %22 = and i1 %21, %20, !dbg !5208
  br i1 %22, label %23, label %24, !dbg !5208

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !5209
  unreachable, !dbg !5209

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !5210
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5211 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5213, metadata !578), !dbg !5214
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5040, metadata !578) #8, !dbg !5215
  %2 = tail call noalias i8* @malloc(i64 %0) #8, !dbg !5217
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5046, metadata !578) #8, !dbg !5218
  %3 = icmp eq i8* %2, null, !dbg !5219
  %4 = icmp ne i64 %0, 0, !dbg !5220
  %5 = and i1 %4, %3, !dbg !5221
  br i1 %5, label %6, label %7, !dbg !5221

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5222
  unreachable, !dbg !5222

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5223
  ret i8* %2, !dbg !5224
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5225 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5227, metadata !578), !dbg !5230
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5228, metadata !578), !dbg !5231
  %3 = udiv i64 9223372036854775807, %1, !dbg !5232
  %4 = icmp ult i64 %3, %0, !dbg !5232
  br i1 %4, label %8, label %5, !dbg !5234

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #8, !dbg !5235
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5229, metadata !578), !dbg !5237
  %7 = icmp eq i8* %6, null, !dbg !5238
  br i1 %7, label %8, label %9, !dbg !5239

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !5241
  unreachable, !dbg !5241

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !5242
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5243 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5247, metadata !578), !dbg !5249
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5248, metadata !578), !dbg !5250
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5040, metadata !578) #8, !dbg !5251
  %3 = tail call noalias i8* @malloc(i64 %1) #8, !dbg !5253
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5046, metadata !578) #8, !dbg !5254
  %4 = icmp eq i8* %3, null, !dbg !5255
  %5 = icmp ne i64 %1, 0, !dbg !5256
  %6 = and i1 %5, %4, !dbg !5257
  br i1 %6, label %7, label %8, !dbg !5257

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !5258
  unreachable, !dbg !5258

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5259
  ret i8* %3, !dbg !5260
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5261 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5263, metadata !578), !dbg !5264
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !5265
  %3 = add i64 %2, 1, !dbg !5266
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5247, metadata !578) #8, !dbg !5267
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5248, metadata !578) #8, !dbg !5270
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5040, metadata !578) #8, !dbg !5271
  %4 = tail call noalias i8* @malloc(i64 %3) #8, !dbg !5273
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5046, metadata !578) #8, !dbg !5274
  %5 = icmp eq i8* %4, null, !dbg !5275
  %6 = icmp ne i64 %3, 0, !dbg !5276
  %7 = and i1 %6, %5, !dbg !5277
  br i1 %7, label %8, label %9, !dbg !5277

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5278
  unreachable, !dbg !5278

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #8, !dbg !5279
  ret i8* %4, !dbg !5280
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !5281 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5283, !tbaa !676
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.83, i64 0, i64 0), i32 5) #8, !dbg !5284
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i8* %2) #8, !dbg !5285
  tail call void @abort() #14, !dbg !5287
  unreachable, !dbg !5287
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xvasprintf(i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !5288 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !5306, metadata !578), !dbg !5330
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5300, metadata !578), !dbg !5336
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !5301, metadata !578), !dbg !5337
  %5 = bitcast i8** %4 to i8*, !dbg !5338
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #8, !dbg !5338
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5303, metadata !578), !dbg !5339
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5305, metadata !578), !dbg !5340
  br label %6, !dbg !5341

; <label>:6:                                      ; preds = %84, %2
  %7 = phi i64 [ 0, %2 ], [ %86, %84 ]
  %8 = phi i8* [ %0, %2 ], [ %85, %84 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5305, metadata !578), !dbg !5340
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5303, metadata !578), !dbg !5339
  %9 = load i8, i8* %8, align 1, !dbg !5342, !tbaa !737
  switch i8 %9, label %89 [
    i8 0, label %10
    i8 37, label %80
  ], !dbg !5343

; <label>:10:                                     ; preds = %6
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5311, metadata !578) #8, !dbg !5344
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !5312, metadata !578) #8, !dbg !5345
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5346
  call void @llvm.lifetime.start(i64 24, i8* nonnull %11) #8, !dbg !5346
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5314, metadata !578) #8, !dbg !5347
  %12 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !5348
  call void @llvm.va_copy(i8* nonnull %11, i8* %12) #8, !dbg !5348
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5314, metadata !578) #8, !dbg !5347
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  %13 = icmp eq i64 %7, 0, !dbg !5350
  br i1 %13, label %14, label %16, !dbg !5352

; <label>:14:                                     ; preds = %10
  call void @llvm.va_end(i8* nonnull %11) #8, !dbg !5354
  %15 = call noalias i8* @xmalloc(i64 1) #8, !dbg !5355
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5313, metadata !578) #8, !dbg !5356
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5316, metadata !578) #8, !dbg !5357
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5316, metadata !578) #8, !dbg !5357
  br label %77, !dbg !5358

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %20 = load i32, i32* %17, align 16
  br label %21, !dbg !5352

; <label>:21:                                     ; preds = %34, %16
  %22 = phi i32 [ %20, %16 ], [ %35, %34 ], !dbg !5360
  %23 = phi i64 [ 0, %16 ], [ %42, %34 ]
  %24 = phi i64 [ %7, %16 ], [ %43, %34 ]
  %25 = icmp ult i32 %22, 41, !dbg !5360
  br i1 %25, label %26, label %31, !dbg !5360

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %18, align 16, !dbg !5361
  %28 = sext i32 %22 to i64, !dbg !5361
  %29 = getelementptr i8, i8* %27, i64 %28, !dbg !5361
  %30 = add i32 %22, 8, !dbg !5361
  store i32 %30, i32* %17, align 16, !dbg !5361
  br label %34, !dbg !5361

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %19, align 8, !dbg !5363
  %33 = getelementptr i8, i8* %32, i64 8, !dbg !5363
  store i8* %33, i8** %19, align 8, !dbg !5363
  br label %34, !dbg !5363

; <label>:34:                                     ; preds = %31, %26
  %35 = phi i32 [ %30, %26 ], [ %22, %31 ]
  %36 = phi i8* [ %29, %26 ], [ %32, %31 ]
  %37 = bitcast i8* %36 to i8**, !dbg !5365
  %38 = load i8*, i8** %37, align 8, !dbg !5365
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !5317, metadata !578) #8, !dbg !5367
  %39 = call i64 @strlen(i8* %38) #13, !dbg !5368
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !5369, metadata !578) #8, !dbg !5377
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !5375, metadata !578) #8, !dbg !5379
  %40 = add i64 %39, %23, !dbg !5380
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !5376, metadata !578) #8, !dbg !5381
  %41 = icmp uge i64 %40, %23, !dbg !5382
  %42 = select i1 %41, i64 %40, i64 -1, !dbg !5383
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !5314, metadata !578) #8, !dbg !5347
  %43 = add i64 %24, -1, !dbg !5384
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !5314, metadata !578) #8, !dbg !5347
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  %44 = icmp eq i64 %43, 0, !dbg !5350
  br i1 %44, label %45, label %21, !dbg !5352, !llvm.loop !5386

; <label>:45:                                     ; preds = %34
  call void @llvm.va_end(i8* nonnull %11) #8, !dbg !5354
  %46 = icmp ugt i64 %42, 2147483647, !dbg !5389
  br i1 %46, label %47, label %49, !dbg !5392

; <label>:47:                                     ; preds = %45
  %48 = tail call i32* @__errno_location() #1, !dbg !5393
  store i32 75, i32* %48, align 4, !dbg !5395, !tbaa !676
  br label %87, !dbg !5396

; <label>:49:                                     ; preds = %45
  %50 = add i64 %40, 1, !dbg !5355
  %51 = call noalias i8* @xmalloc(i64 %50) #8, !dbg !5355
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5313, metadata !578) #8, !dbg !5356
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5316, metadata !578) #8, !dbg !5357
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5316, metadata !578) #8, !dbg !5357
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  br label %55, !dbg !5358

; <label>:55:                                     ; preds = %68, %49
  %56 = phi i64 [ %7, %49 ], [ %74, %68 ]
  %57 = phi i8* [ %51, %49 ], [ %73, %68 ]
  %58 = load i32, i32* %52, align 8, !dbg !5397
  %59 = icmp ult i32 %58, 41, !dbg !5397
  br i1 %59, label %60, label %65, !dbg !5397

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %53, align 8, !dbg !5398
  %62 = sext i32 %58 to i64, !dbg !5398
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !5398
  %64 = add i32 %58, 8, !dbg !5398
  store i32 %64, i32* %52, align 8, !dbg !5398
  br label %68, !dbg !5398

; <label>:65:                                     ; preds = %55
  %66 = load i8*, i8** %54, align 8, !dbg !5400
  %67 = getelementptr i8, i8* %66, i64 8, !dbg !5400
  store i8* %67, i8** %54, align 8, !dbg !5400
  br label %68, !dbg !5400

; <label>:68:                                     ; preds = %65, %60
  %69 = phi i8* [ %63, %60 ], [ %66, %65 ]
  %70 = bitcast i8* %69 to i8**, !dbg !5402
  %71 = load i8*, i8** %70, align 8, !dbg !5402
  call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !5321, metadata !578) #8, !dbg !5404
  %72 = call i64 @strlen(i8* %71) #13, !dbg !5405
  call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !5325, metadata !578) #8, !dbg !5406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %71, i64 %72, i32 1, i1 false) #8, !dbg !5407
  %73 = getelementptr inbounds i8, i8* %57, i64 %72, !dbg !5408
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !5316, metadata !578) #8, !dbg !5357
  %74 = add i64 %56, -1, !dbg !5409
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !5315, metadata !578) #8, !dbg !5349
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !5316, metadata !578) #8, !dbg !5357
  %75 = icmp eq i64 %74, 0, !dbg !5411
  br i1 %75, label %76, label %55, !dbg !5358, !llvm.loop !5413

; <label>:76:                                     ; preds = %68
  br label %77, !dbg !5416

; <label>:77:                                     ; preds = %76, %14
  %78 = phi i8* [ %15, %14 ], [ %51, %76 ]
  %79 = phi i8* [ %15, %14 ], [ %73, %76 ]
  store i8 0, i8* %79, align 1, !dbg !5416, !tbaa !737
  br label %87, !dbg !5417

; <label>:80:                                     ; preds = %6
  %81 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !5418
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !5305, metadata !578), !dbg !5340
  %82 = load i8, i8* %81, align 1, !dbg !5419, !tbaa !737
  %83 = icmp eq i8 %82, 115, !dbg !5421
  br i1 %83, label %84, label %89, !dbg !5422

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !5423
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !5305, metadata !578), !dbg !5340
  %86 = add i64 %7, 1, !dbg !5424
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !5303, metadata !578), !dbg !5339
  br label %6, !dbg !5425, !llvm.loop !5427

; <label>:87:                                     ; preds = %77, %47
  %88 = phi i8* [ null, %47 ], [ %78, %77 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %11) #8, !dbg !5430
  br label %99

; <label>:89:                                     ; preds = %6, %80
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5302, metadata !2031), !dbg !5431
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5432, metadata !578) #8, !dbg !5442
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5440, metadata !578) #8, !dbg !5442
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !5441, metadata !578) #8, !dbg !5442
  %90 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* %0, %struct.__va_list_tag* %1) #8, !dbg !5445
  %91 = icmp slt i32 %90, 0, !dbg !5446
  br i1 %91, label %92, label %97, !dbg !5447

; <label>:92:                                     ; preds = %89
  %93 = tail call i32* @__errno_location() #1, !dbg !5448
  %94 = load i32, i32* %93, align 4, !dbg !5448, !tbaa !676
  %95 = icmp eq i32 %94, 12, !dbg !5451
  br i1 %95, label %96, label %99, !dbg !5452

; <label>:96:                                     ; preds = %92
  call void @xalloc_die() #14, !dbg !5453
  unreachable, !dbg !5453

; <label>:97:                                     ; preds = %89
  %98 = load i8*, i8** %4, align 8, !dbg !5454, !tbaa !586
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5302, metadata !578), !dbg !5431
  br label %99, !dbg !5455

; <label>:99:                                     ; preds = %87, %92, %97
  %100 = phi i8* [ %98, %97 ], [ %88, %87 ], [ null, %92 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #8, !dbg !5456
  ret i8* %100, !dbg !5456
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #8

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5457 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5460, metadata !578), !dbg !5466
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5461, metadata !578), !dbg !5467
  %3 = icmp eq i64 %0, 0, !dbg !5468
  %4 = icmp eq i64 %1, 0, !dbg !5469
  %5 = or i1 %3, %4, !dbg !5471
  br i1 %5, label %12, label %6, !dbg !5471

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5472
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5463, metadata !578), !dbg !5473
  %8 = udiv i64 %7, %1, !dbg !5474
  %9 = icmp eq i64 %8, %0, !dbg !5476
  br i1 %9, label %12, label %10, !dbg !5477

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !5478
  store i32 12, i32* %11, align 4, !dbg !5480, !tbaa !676
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5460, metadata !578), !dbg !5466
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5461, metadata !578), !dbg !5467
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #8, !dbg !5481
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5462, metadata !578), !dbg !5482
  br label %16, !dbg !5483

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5484
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5485 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5502, metadata !578), !dbg !5511
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5503, metadata !578), !dbg !5512
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5504, metadata !578), !dbg !5513
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5505, metadata !578), !dbg !5514
  %6 = bitcast i32* %5 to i8*, !dbg !5515
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #8, !dbg !5515
  %7 = icmp eq i32* %0, null, !dbg !5516
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5502, metadata !578), !dbg !5511
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5518
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5502, metadata !578), !dbg !5511
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #8, !dbg !5519
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5506, metadata !578), !dbg !5520
  %10 = icmp ugt i64 %9, -3, !dbg !5521
  %11 = icmp ne i64 %2, 0, !dbg !5522
  %12 = and i1 %11, %10, !dbg !5524
  br i1 %12, label %13, label %18, !dbg !5524

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #8, !dbg !5525
  br i1 %14, label %18, label %15, !dbg !5527

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5529, !tbaa !737
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5508, metadata !578), !dbg !5530
  %17 = zext i8 %16 to i32, !dbg !5531
  store i32 %17, i32* %8, align 4, !dbg !5532, !tbaa !676
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #8, !dbg !5533
  ret i64 %19, !dbg !5533
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5534 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5588, metadata !578), !dbg !5593
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #8, !dbg !5594
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5595, metadata !578), !dbg !5599
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5601
  %4 = load i32, i32* %3, align 8, !dbg !5601, !tbaa !5602
  %5 = and i32 %4, 32, !dbg !5601
  %6 = icmp eq i32 %5, 0, !dbg !5604
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #8, !dbg !5605
  %8 = icmp ne i32 %7, 0, !dbg !5606
  br i1 %6, label %9, label %19, !dbg !5607

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5609
  %11 = icmp ne i64 %2, 0, !dbg !5609
  %12 = or i1 %11, %10, !dbg !5609
  %13 = sext i1 %8 to i32, !dbg !5609
  br i1 %12, label %22, label %14, !dbg !5609

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5611
  %16 = load i32, i32* %15, align 4, !dbg !5611, !tbaa !676
  %17 = icmp ne i32 %16, 9, !dbg !5613
  %18 = sext i1 %17 to i32, !dbg !5613
  br label %22, !dbg !5613

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5615

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5617
  store i32 0, i32* %21, align 4, !dbg !5619, !tbaa !676
  br label %22, !dbg !5617

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5620
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5621 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5624, metadata !578), !dbg !5644
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5625, metadata !578), !dbg !5645
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #8, !dbg !5646
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5626, metadata !578), !dbg !5647
  %3 = icmp eq i8* %2, null, !dbg !5648
  br i1 %3, label %15, label %4, !dbg !5649

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5634, metadata !578), !dbg !5650
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5635, metadata !578), !dbg !5651
  %5 = load i8, i8* %2, align 1, !dbg !5652, !tbaa !737
  %6 = icmp eq i8 %5, 67, !dbg !5654
  br i1 %6, label %7, label %11, !dbg !5657

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5659
  %9 = load i8, i8* %8, align 1, !dbg !5659, !tbaa !737
  %10 = icmp eq i8 %9, 0, !dbg !5662
  br i1 %10, label %14, label %11, !dbg !5664

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5640, metadata !578), !dbg !5666
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.95, i64 0, i64 0)) #8, !dbg !5667
  %13 = icmp eq i32 %12, 0, !dbg !5669
  br i1 %13, label %14, label %15, !dbg !5671

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5625, metadata !578), !dbg !5645
  br label %15, !dbg !5673

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5674
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5675 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5687, metadata !578), !dbg !5761
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5754, metadata !578), !dbg !5763
  %3 = tail call i8* @nl_langinfo(i32 14) #8, !dbg !5764
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5679, metadata !578), !dbg !5765
  %4 = icmp eq i8* %3, null, !dbg !5766
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), i8* %3, !dbg !5768
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5679, metadata !578), !dbg !5765
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5769, !tbaa !586
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5701, metadata !578) #8, !dbg !5770
  %7 = icmp eq i8* %6, null, !dbg !5771
  br i1 %7, label %8, label %127, !dbg !5772

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.99, i64 0, i64 0)) #8, !dbg !5773
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5702, metadata !578) #8, !dbg !5774
  %10 = icmp eq i8* %9, null, !dbg !5775
  br i1 %10, label %14, label %11, !dbg !5777

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5778, !tbaa !737
  %13 = icmp eq i8 %12, 0, !dbg !5780
  br i1 %13, label %14, label %15, !dbg !5781

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5783

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.100, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5702, metadata !578) #8, !dbg !5774
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5784
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5705, metadata !578) #8, !dbg !5785
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5707, metadata !578) #8, !dbg !5786
  %18 = icmp eq i64 %17, 0, !dbg !5787
  br i1 %18, label %24, label %19, !dbg !5788

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5789
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5789
  %22 = load i8, i8* %21, align 1, !dbg !5789, !tbaa !737
  %23 = icmp ne i8 %22, 47, !dbg !5791
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5792
  %27 = add i64 %17, 14, !dbg !5793
  %28 = add i64 %27, %26, !dbg !5794
  %29 = tail call noalias i8* @malloc(i64 %28) #8, !dbg !5795
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5704, metadata !578) #8, !dbg !5796
  %30 = icmp eq i8* %29, null, !dbg !5797
  br i1 %30, label %125, label %31, !dbg !5797

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #8, !dbg !5798
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5801

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5802, !tbaa !737
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5804
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.101, i64 0, i64 0), i64 14, i32 1, i1 false) #8, !dbg !5805
  br label %37, !dbg !5806

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5804
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.101, i64 0, i64 0), i64 14, i32 1, i1 false) #8, !dbg !5805
  br label %37, !dbg !5806

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #8, !dbg !5807
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5709, metadata !578) #8, !dbg !5808
  %39 = icmp slt i32 %38, 0, !dbg !5809
  br i1 %39, label %123, label %40, !dbg !5810

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0)) #8, !dbg !5811
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5710, metadata !578) #8, !dbg !5812
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5813
  br i1 %42, label %48, label %43, !dbg !5814

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5815

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #8, !dbg !5816
  br label %123, !dbg !5818

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5751, metadata !578) #8, !dbg !5815
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5752, metadata !578) #8, !dbg !5819
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #8, !dbg !5820
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #8, !dbg !5821
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5822, metadata !578) #8, !dbg !5827
  %53 = load i8*, i8** %46, align 8, !dbg !5829, !tbaa !5830
  %54 = load i8*, i8** %47, align 8, !dbg !5829, !tbaa !5831
  %55 = icmp ult i8* %53, %54, !dbg !5829
  br i1 %55, label %58, label %56, !dbg !5829, !prof !5832

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #8, !dbg !5833
  br label %62, !dbg !5833

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5835
  store i8* %59, i8** %46, align 8, !dbg !5835, !tbaa !5830
  %60 = load i8, i8* %53, align 1, !dbg !5835, !tbaa !737
  %61 = zext i8 %60 to i32, !dbg !5835
  br label %62, !dbg !5835

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5837
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5753, metadata !578) #8, !dbg !5839
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5840

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5841

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5822, metadata !578) #8, !dbg !5841
  %66 = load i8*, i8** %46, align 8, !dbg !5845, !tbaa !5830
  %67 = load i8*, i8** %47, align 8, !dbg !5845, !tbaa !5831
  %68 = icmp ult i8* %66, %67, !dbg !5845
  br i1 %68, label %71, label %69, !dbg !5845, !prof !5832

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #8, !dbg !5846
  br label %75, !dbg !5846

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5847
  store i8* %72, i8** %46, align 8, !dbg !5847, !tbaa !5830
  %73 = load i8, i8* %66, align 1, !dbg !5847, !tbaa !737
  %74 = zext i8 %73 to i32, !dbg !5847
  br label %75, !dbg !5847

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5848
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5753, metadata !578) #8, !dbg !5839
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5849, !llvm.loop !5851

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #8, !dbg !5854
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.103, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #8, !dbg !5855
  %80 = icmp slt i32 %79, 2, !dbg !5857
  br i1 %80, label %115, label %81, !dbg !5858

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5859
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5758, metadata !578) #8, !dbg !5860
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5861
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5759, metadata !578) #8, !dbg !5862
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5760, metadata !578) #8, !dbg !5863
  %84 = icmp eq i64 %51, 0, !dbg !5864
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5866

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5752, metadata !578) #8, !dbg !5819
  %89 = add i64 %86, 2, !dbg !5867
  %90 = call noalias i8* @malloc(i64 %89) #8, !dbg !5869
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5751, metadata !578) #8, !dbg !5815
  br label %95, !dbg !5870

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5871
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5752, metadata !578) #8, !dbg !5819
  %93 = add i64 %92, 1, !dbg !5873
  %94 = call i8* @realloc(i8* %52, i64 %93) #8, !dbg !5874
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5751, metadata !578) #8, !dbg !5815
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5751, metadata !578) #8, !dbg !5815
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5752, metadata !578) #8, !dbg !5819
  %98 = icmp eq i8* %97, null, !dbg !5875
  br i1 %98, label %99, label %100, !dbg !5877

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5752, metadata !578) #8, !dbg !5819
  call void @free(i8* %52) #8, !dbg !5878
  br label %116, !dbg !5880

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5881
  %102 = xor i64 %83, -1, !dbg !5882
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5882
  %104 = xor i64 %82, -1, !dbg !5883
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5883
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5884, metadata !578) #8, !dbg !5892
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5891, metadata !578) #8, !dbg !5892
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #8, !dbg !5894
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #8, !dbg !5895
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5884, metadata !578) #8, !dbg !5896
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5891, metadata !578) #8, !dbg !5896
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #8, !dbg !5898
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #8, !dbg !5899
  br label %111, !dbg !5900

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5815

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5751, metadata !578) #8, !dbg !5815
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5752, metadata !578) #8, !dbg !5819
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #8, !dbg !5900
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #8, !dbg !5900
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5815

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5815

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5751, metadata !578) #8, !dbg !5815
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5752, metadata !578) #8, !dbg !5819
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #8, !dbg !5900
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #8, !dbg !5900
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #8, !dbg !5901
  %120 = icmp eq i64 %117, 0, !dbg !5902
  br i1 %120, label %123, label %121, !dbg !5904

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5905
  store i8 0, i8* %122, align 1, !dbg !5907, !tbaa !737
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5701, metadata !578) #8, !dbg !5770
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5701, metadata !578) #8, !dbg !5770
  call void @free(i8* %29) #8, !dbg !5908
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5701, metadata !578) #8, !dbg !5770
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5909, !tbaa !586
  br label %127, !dbg !5910

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5680, metadata !578), !dbg !5911
  %129 = load i8, i8* %128, align 1, !dbg !5912, !tbaa !737
  %130 = icmp eq i8 %129, 0, !dbg !5913
  br i1 %130, label %157, label %131, !dbg !5914

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5916

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #8, !dbg !5916
  %136 = icmp eq i32 %135, 0, !dbg !5917
  br i1 %136, label %143, label %137, !dbg !5918

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5919
  br i1 %138, label %139, label %147, !dbg !5921

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5922
  %141 = load i8, i8* %140, align 1, !dbg !5922, !tbaa !737
  %142 = icmp eq i8 %141, 0, !dbg !5924
  br i1 %142, label %143, label %147, !dbg !5925

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5927
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5929
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5930
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5679, metadata !578), !dbg !5765
  br label %157, !dbg !5931

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5932
  %149 = add i64 %148, 1, !dbg !5933
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5934
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5680, metadata !578), !dbg !5911
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5935
  %152 = add i64 %151, 1, !dbg !5936
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5937
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5680, metadata !578), !dbg !5911
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5680, metadata !578), !dbg !5911
  %154 = load i8, i8* %153, align 1, !dbg !5912, !tbaa !737
  %155 = icmp eq i8 %154, 0, !dbg !5913
  br i1 %155, label %156, label %132, !dbg !5914, !llvm.loop !5938

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5765

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5679, metadata !578), !dbg !5765
  %159 = load i8, i8* %158, align 1, !dbg !5941, !tbaa !737
  %160 = icmp eq i8 %159, 0, !dbg !5943
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.104, i64 0, i64 0), i8* %158, !dbg !5944
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5679, metadata !578), !dbg !5765
  ret i8* %161, !dbg !5945
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5946 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5991, metadata !578), !dbg !5995
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5992, metadata !578), !dbg !5996
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5994, metadata !578), !dbg !5997
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #8, !dbg !5998
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5993, metadata !578), !dbg !5999
  %3 = icmp slt i32 %2, 0, !dbg !6000
  br i1 %3, label %4, label %6, !dbg !6002

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6003
  br label %24, !dbg !6004

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #8, !dbg !6005
  %8 = icmp eq i32 %7, 0, !dbg !6005
  br i1 %8, label %13, label %9, !dbg !6007

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #8, !dbg !6008
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #8, !dbg !6010
  %12 = icmp eq i64 %11, -1, !dbg !6012
  br i1 %12, label %16, label %13, !dbg !6013

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #8, !dbg !6014
  %15 = icmp eq i32 %14, 0, !dbg !6014
  br i1 %15, label %16, label %18, !dbg !6015

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5992, metadata !578), !dbg !5996
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6017
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5994, metadata !578), !dbg !5997
  br label %24, !dbg !6018

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !6019
  %20 = load i32, i32* %19, align 4, !dbg !6019, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5992, metadata !578), !dbg !5996
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5992, metadata !578), !dbg !5996
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6017
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5994, metadata !578), !dbg !5997
  %22 = icmp eq i32 %20, 0, !dbg !6020
  br i1 %22, label %24, label %23, !dbg !6018

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !6022, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5994, metadata !578), !dbg !5997
  br label %24, !dbg !6024

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !6025
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !6026 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6071, metadata !578), !dbg !6072
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !6073
  br i1 %2, label %6, label %3, !dbg !6075

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #8, !dbg !6076
  %5 = icmp eq i32 %4, 0, !dbg !6076
  br i1 %5, label %6, label %8, !dbg !6078

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !6080
  br label %17, !dbg !6081

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6082, metadata !578) #8, !dbg !6087
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6089
  %10 = load i32, i32* %9, align 8, !dbg !6089, !tbaa !5602
  %11 = and i32 %10, 256, !dbg !6091
  %12 = icmp eq i32 %11, 0, !dbg !6091
  br i1 %12, label %15, label %13, !dbg !6092

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #8, !dbg !6093
  br label %15, !dbg !6093

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !6094
  br label %17, !dbg !6095

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !6096
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !6097 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6143, metadata !578), !dbg !6149
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6144, metadata !578), !dbg !6150
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6145, metadata !578), !dbg !6151
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !6152
  %5 = load i8*, i8** %4, align 8, !dbg !6152, !tbaa !5831
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !6153
  %7 = load i8*, i8** %6, align 8, !dbg !6153, !tbaa !5830
  %8 = icmp eq i8* %5, %7, !dbg !6154
  br i1 %8, label %9, label %28, !dbg !6155

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !6156
  %11 = load i8*, i8** %10, align 8, !dbg !6156, !tbaa !6158
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !6159
  %13 = load i8*, i8** %12, align 8, !dbg !6159, !tbaa !6160
  %14 = icmp eq i8* %11, %13, !dbg !6161
  br i1 %14, label %15, label %28, !dbg !6162

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !6163
  %17 = load i8*, i8** %16, align 8, !dbg !6163, !tbaa !6164
  %18 = icmp eq i8* %17, null, !dbg !6165
  br i1 %18, label %19, label %28, !dbg !6166

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #8, !dbg !6168
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #8, !dbg !6169
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !6146, metadata !578), !dbg !6171
  %22 = icmp eq i64 %21, -1, !dbg !6172
  br i1 %22, label %30, label %23, !dbg !6174

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6175
  %25 = load i32, i32* %24, align 8, !dbg !6176, !tbaa !5602
  %26 = and i32 %25, -17, !dbg !6176
  store i32 %26, i32* %24, align 8, !dbg !6176, !tbaa !5602
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !6177
  store i64 %21, i64* %27, align 8, !dbg !6178, !tbaa !6179
  br label %30, !dbg !6180

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !6181
  br label %30, !dbg !6182

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !6183
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
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !80, !90, !517, !97, !104, !524, !527, !529, !546, !548, !551, !554, !557, !559, !171, !562, !564, !566}
!llvm.ident = !{!568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568, !568}
!llvm.module.flags = !{!569, !570, !571, !572}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !3, line: 73, type: !76, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !41)
!3 = !DIFile(filename: "src/test.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 59, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "TEST_TRUE", value: 0)
!8 = !DIEnumerator(name: "TEST_FALSE", value: 1)
!9 = !DIEnumerator(name: "TEST_FAILURE", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 46, size: 32, elements: !12)
!11 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!13 = !DIEnumerator(name: "_ISupper", value: 256)
!14 = !DIEnumerator(name: "_ISlower", value: 512)
!15 = !DIEnumerator(name: "_ISalpha", value: 1024)
!16 = !DIEnumerator(name: "_ISdigit", value: 2048)
!17 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!18 = !DIEnumerator(name: "_ISspace", value: 8192)
!19 = !DIEnumerator(name: "_ISprint", value: 16384)
!20 = !DIEnumerator(name: "_ISgraph", value: 32768)
!21 = !DIEnumerator(name: "_ISblank", value: 1)
!22 = !DIEnumerator(name: "_IScntrl", value: 2)
!23 = !DIEnumerator(name: "_ISpunct", value: 4)
!24 = !DIEnumerator(name: "_ISalnum", value: 8)
!25 = !{!26, !29, !31, !34, !37, !38, !39, !40}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 62, baseType: !28)
!27 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !{!42, !44, !0, !46}
!42 = !DIGlobalVariableExpression(var: !43)
!43 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !3, line: 71, type: !37, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45)
!45 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !3, line: 72, type: !37, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47)
!47 = distinct !DIGlobalVariable(name: "infomap", scope: !48, file: !49, line: 632, type: !73, isLocal: true, isDefinition: true)
!48 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !49, file: !49, line: 630, type: !50, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !52)
!49 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !DISubroutineType(types: !51)
!51 = !{null, !34}
!52 = !{!53, !54, !55, !62, !64, !65, !66, !69, !70, !72}
!53 = !DILocalVariable(name: "program", arg: 1, scope: !48, file: !49, line: 630, type: !34)
!54 = !DILocalVariable(name: "node", scope: !48, file: !49, line: 642, type: !34)
!55 = !DILocalVariable(name: "map_prog", scope: !48, file: !49, line: 643, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !48, file: !49, line: 632, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !58, file: !49, line: 632, baseType: !34, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !58, file: !49, line: 632, baseType: !34, size: 64, offset: 64)
!62 = !DILocalVariable(name: "__s1_len", scope: !63, file: !49, line: 645, type: !26)
!63 = distinct !DILexicalBlock(scope: !48, file: !49, line: 645, column: 33)
!64 = !DILocalVariable(name: "__s2_len", scope: !63, file: !49, line: 645, type: !26)
!65 = !DILocalVariable(name: "lc_messages", scope: !48, file: !49, line: 655, type: !34)
!66 = !DILocalVariable(name: "__s1_len", scope: !67, file: !49, line: 656, type: !26)
!67 = distinct !DILexicalBlock(scope: !68, file: !49, line: 656, column: 22)
!68 = distinct !DILexicalBlock(scope: !48, file: !49, line: 656, column: 7)
!69 = !DILocalVariable(name: "__s2_len", scope: !67, file: !49, line: 656, type: !26)
!70 = !DILocalVariable(name: "__s2", scope: !71, file: !49, line: 656, type: !31)
!71 = distinct !DILexicalBlock(scope: !67, file: !49, line: 656, column: 22)
!72 = !DILocalVariable(name: "__result", scope: !71, file: !49, line: 656, type: !37)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 896, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 7)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "file_name", scope: !80, file: !86, line: 36, type: !34, isLocal: true, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !83)
!81 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !{}
!83 = !{!78, !84}
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !80, file: !86, line: 46, type: !87, isLocal: true, isDefinition: true)
!86 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "exit_failure", scope: !90, file: !93, line: 24, type: !94, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !92)
!91 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !{!88}
!93 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "program_name", scope: !97, file: !101, line: 33, type: !34, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !99, globals: !100)
!98 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !{!40, !77}
!100 = !{!95}
!101 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !104, file: !130, line: 77, type: !165, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !126, globals: !127)
!105 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!107, !121, !10}
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !108, line: 32, size: 32, elements: !109)
!108 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!110 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!111 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!112 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!113 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!114 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!115 = !DIEnumerator(name: "c_quoting_style", value: 5)
!116 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!117 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!118 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!119 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!120 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !108, line: 242, size: 32, elements: !122)
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!124 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!125 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!126 = !{!37, !38, !26, !77}
!127 = !{!102, !128, !135, !147, !149, !154, !161, !163}
!128 = !DIGlobalVariableExpression(var: !129)
!129 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !104, file: !130, line: 93, type: !131, isLocal: false, isDefinition: true)
!130 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 320, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!133 = !{!134}
!134 = !DISubrange(count: 10)
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !104, file: !130, line: 1043, type: !137, isLocal: false, isDefinition: true)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !130, line: 57, size: 448, elements: !138)
!138 = !{!139, !140, !141, !145, !146}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !137, file: !130, line: 60, baseType: !107, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !130, line: 63, baseType: !37, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !137, file: !130, line: 67, baseType: !142, size: 256, offset: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !137, file: !130, line: 70, baseType: !34, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !137, file: !130, line: 73, baseType: !34, size: 64, offset: 384)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !104, file: !130, line: 108, type: !137, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "slot0", scope: !104, file: !130, line: 834, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 256)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "slotvec", scope: !104, file: !130, line: 837, type: !156, isLocal: true, isDefinition: true)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !130, line: 826, size: 128, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !157, file: !130, line: 828, baseType: !26, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !157, file: !130, line: 829, baseType: !77, size: 64, offset: 64)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "nslots", scope: !104, file: !130, line: 835, type: !37, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "slotvec0", scope: !104, file: !130, line: 836, type: !157, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 704, elements: !167)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!167 = !{!168}
!168 = !DISubrange(count: 11)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !171, file: !515, line: 120, type: !516, isLocal: true, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !512, globals: !514)
!172 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !{!174}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 41, size: 32, elements: !176)
!175 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511}
!177 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!178 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!179 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!180 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!181 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!182 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!183 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!184 = !DIEnumerator(name: "DAY_1", value: 131079)
!185 = !DIEnumerator(name: "DAY_2", value: 131080)
!186 = !DIEnumerator(name: "DAY_3", value: 131081)
!187 = !DIEnumerator(name: "DAY_4", value: 131082)
!188 = !DIEnumerator(name: "DAY_5", value: 131083)
!189 = !DIEnumerator(name: "DAY_6", value: 131084)
!190 = !DIEnumerator(name: "DAY_7", value: 131085)
!191 = !DIEnumerator(name: "ABMON_1", value: 131086)
!192 = !DIEnumerator(name: "ABMON_2", value: 131087)
!193 = !DIEnumerator(name: "ABMON_3", value: 131088)
!194 = !DIEnumerator(name: "ABMON_4", value: 131089)
!195 = !DIEnumerator(name: "ABMON_5", value: 131090)
!196 = !DIEnumerator(name: "ABMON_6", value: 131091)
!197 = !DIEnumerator(name: "ABMON_7", value: 131092)
!198 = !DIEnumerator(name: "ABMON_8", value: 131093)
!199 = !DIEnumerator(name: "ABMON_9", value: 131094)
!200 = !DIEnumerator(name: "ABMON_10", value: 131095)
!201 = !DIEnumerator(name: "ABMON_11", value: 131096)
!202 = !DIEnumerator(name: "ABMON_12", value: 131097)
!203 = !DIEnumerator(name: "MON_1", value: 131098)
!204 = !DIEnumerator(name: "MON_2", value: 131099)
!205 = !DIEnumerator(name: "MON_3", value: 131100)
!206 = !DIEnumerator(name: "MON_4", value: 131101)
!207 = !DIEnumerator(name: "MON_5", value: 131102)
!208 = !DIEnumerator(name: "MON_6", value: 131103)
!209 = !DIEnumerator(name: "MON_7", value: 131104)
!210 = !DIEnumerator(name: "MON_8", value: 131105)
!211 = !DIEnumerator(name: "MON_9", value: 131106)
!212 = !DIEnumerator(name: "MON_10", value: 131107)
!213 = !DIEnumerator(name: "MON_11", value: 131108)
!214 = !DIEnumerator(name: "MON_12", value: 131109)
!215 = !DIEnumerator(name: "AM_STR", value: 131110)
!216 = !DIEnumerator(name: "PM_STR", value: 131111)
!217 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!218 = !DIEnumerator(name: "D_FMT", value: 131113)
!219 = !DIEnumerator(name: "T_FMT", value: 131114)
!220 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!221 = !DIEnumerator(name: "ERA", value: 131116)
!222 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!223 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!224 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!225 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!226 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!227 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!228 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!229 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!230 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!231 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!232 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!233 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!234 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!235 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!236 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!237 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!238 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!239 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!240 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!241 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!242 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!243 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!244 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!245 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!246 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!247 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!248 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!249 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!250 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!251 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!252 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!253 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!254 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!255 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!256 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!257 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!258 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!259 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!260 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!261 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!262 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!263 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!264 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!265 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!266 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!267 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!268 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!269 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!270 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!271 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!272 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!273 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!274 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!275 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!276 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!277 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!278 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!279 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!280 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!281 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!282 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!283 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!284 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!285 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!286 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!287 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!288 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!289 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!290 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!291 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!292 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!293 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!294 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!295 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!296 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!297 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!298 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!299 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!300 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!301 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!302 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!303 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!304 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!305 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!306 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!307 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!308 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!309 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!310 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!311 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!312 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!313 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!314 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!315 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!316 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!317 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!318 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!319 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!320 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!321 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!322 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!323 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!324 = !DIEnumerator(name: "CODESET", value: 14)
!325 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!326 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!327 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!328 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!329 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!331 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!332 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!351 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!352 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!353 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!354 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!357 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!371 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!372 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!373 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!374 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!375 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!376 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!377 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!380 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!381 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!382 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!383 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!384 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!385 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!386 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!387 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!388 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!396 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!397 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!398 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!399 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!400 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!401 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!402 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!403 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!404 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!405 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!406 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!407 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!408 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!409 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!410 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!411 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!412 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!413 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!414 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!415 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!416 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!417 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!418 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!419 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!420 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!421 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!422 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!425 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!435 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!436 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!439 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!440 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!441 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!442 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!443 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!444 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!445 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!446 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!447 = !DIEnumerator(name: "THOUSEP", value: 65537)
!448 = !DIEnumerator(name: "__GROUPING", value: 65538)
!449 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!450 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!451 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!452 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!453 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!454 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!455 = !DIEnumerator(name: "__YESSTR", value: 327682)
!456 = !DIEnumerator(name: "__NOSTR", value: 327683)
!457 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!458 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!459 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!460 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!461 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!462 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!463 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!464 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!465 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!466 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!467 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!468 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!469 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!470 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!471 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!472 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!473 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!474 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!475 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!476 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!477 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!478 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!479 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!480 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!481 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!482 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!483 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!484 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!485 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!486 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!487 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!488 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!489 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!490 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!491 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!492 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!493 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!494 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!495 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!496 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!497 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!498 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!499 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!500 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!510 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!511 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!512 = !{!40, !77, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!514 = !{!169}
!515 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!516 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !519)
!518 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !521, line: 136, baseType: !522)
!521 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !523, line: 62, baseType: !28)
!523 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!524 = distinct !DICompileUnit(language: DW_LANG_C99, file: !525, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !526)
!525 = !DIFile(filename: "./lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!526 = !{!39}
!527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !528, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!528 = !DIFile(filename: "./lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!529 = distinct !DICompileUnit(language: DW_LANG_C99, file: !530, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !531, retainedTypes: !545)
!530 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!531 = !{!532}
!532 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !534, file: !533, line: 192, size: 32, elements: !543)
!533 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = distinct !DISubprogram(name: "x2nrealloc", scope: !533, file: !533, line: 180, type: !535, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !538)
!535 = !DISubroutineType(types: !536)
!536 = !{!40, !40, !537, !26}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!538 = !{!539, !540, !541, !542}
!539 = !DILocalVariable(name: "p", arg: 1, scope: !534, file: !533, line: 180, type: !40)
!540 = !DILocalVariable(name: "pn", arg: 2, scope: !534, file: !533, line: 180, type: !537)
!541 = !DILocalVariable(name: "s", arg: 3, scope: !534, file: !533, line: 180, type: !26)
!542 = !DILocalVariable(name: "n", scope: !534, file: !533, line: 182, type: !26)
!543 = !{!544}
!544 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!545 = !{!26, !77, !40}
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!547 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !550)
!549 = !DIFile(filename: "./lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!550 = !{!77}
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !553)
!552 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !{!40}
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !556)
!555 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = !{!26}
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!558 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !561)
!560 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = !{!26, !29, !31, !34}
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!563 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !553)
!565 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !553)
!567 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!569 = !{i32 2, !"Dwarf Version", i32 4}
!570 = !{i32 2, !"Debug Info Version", i32 3}
!571 = !{i32 1, !"PIC Level", i32 2}
!572 = !{i32 1, !"PIE Level", i32 2}
!573 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 703, type: !574, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !37}
!576 = !{!577}
!577 = !DILocalVariable(name: "status", arg: 1, scope: !573, file: !3, line: 703, type: !37)
!578 = !DIExpression()
!579 = !DILocation(line: 703, column: 12, scope: !573)
!580 = !DILocation(line: 705, column: 14, scope: !581)
!581 = distinct !DILexicalBlock(scope: !573, file: !3, line: 705, column: 7)
!582 = !DILocation(line: 705, column: 7, scope: !573)
!583 = !DILocation(line: 706, column: 5, scope: !584)
!584 = !DILexicalBlockFile(scope: !585, file: !3, discriminator: 1)
!585 = distinct !DILexicalBlock(scope: !581, file: !3, line: 706, column: 5)
!586 = !{!587, !587, i64 0}
!587 = !{!"any pointer", !588, i64 0}
!588 = !{!"omnipotent char", !589, i64 0}
!589 = !{!"Simple C/C++ TBAA"}
!590 = !DILocation(line: 706, column: 5, scope: !591)
!591 = !DILexicalBlockFile(scope: !585, file: !3, discriminator: 3)
!592 = !DILocation(line: 706, column: 5, scope: !593)
!593 = !DILexicalBlockFile(scope: !585, file: !3, discriminator: 2)
!594 = !DILocation(line: 709, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !581, file: !3, line: 708, column: 5)
!596 = !DILocation(line: 709, column: 7, scope: !597)
!597 = !DILexicalBlockFile(scope: !595, file: !3, discriminator: 1)
!598 = !DILocation(line: 716, column: 7, scope: !595)
!599 = !DILocation(line: 716, column: 7, scope: !597)
!600 = !DILocation(line: 720, column: 7, scope: !595)
!601 = !DILocation(line: 720, column: 7, scope: !597)
!602 = !DILocation(line: 721, column: 7, scope: !595)
!603 = !DILocation(line: 721, column: 7, scope: !597)
!604 = !DILocation(line: 722, column: 7, scope: !595)
!605 = !DILocation(line: 722, column: 7, scope: !597)
!606 = !DILocation(line: 727, column: 7, scope: !595)
!607 = !DILocation(line: 727, column: 7, scope: !597)
!608 = !DILocation(line: 734, column: 7, scope: !595)
!609 = !DILocation(line: 734, column: 7, scope: !597)
!610 = !DILocation(line: 742, column: 7, scope: !595)
!611 = !DILocation(line: 742, column: 7, scope: !597)
!612 = !DILocation(line: 751, column: 7, scope: !595)
!613 = !DILocation(line: 751, column: 7, scope: !597)
!614 = !DILocation(line: 757, column: 7, scope: !595)
!615 = !DILocation(line: 757, column: 7, scope: !597)
!616 = !DILocation(line: 764, column: 7, scope: !595)
!617 = !DILocation(line: 764, column: 7, scope: !597)
!618 = !DILocation(line: 771, column: 7, scope: !595)
!619 = !DILocation(line: 771, column: 7, scope: !597)
!620 = !DILocation(line: 778, column: 7, scope: !595)
!621 = !DILocation(line: 778, column: 7, scope: !597)
!622 = !DILocation(line: 785, column: 7, scope: !595)
!623 = !DILocation(line: 785, column: 7, scope: !597)
!624 = !DILocation(line: 791, column: 7, scope: !595)
!625 = !DILocation(line: 791, column: 7, scope: !597)
!626 = !DILocation(line: 796, column: 7, scope: !595)
!627 = !DILocation(line: 796, column: 7, scope: !597)
!628 = !DILocation(line: 801, column: 7, scope: !595)
!629 = !DILocation(line: 801, column: 7, scope: !597)
!630 = !DILocation(line: 801, column: 7, scope: !631)
!631 = !DILexicalBlockFile(scope: !595, file: !3, discriminator: 2)
!632 = !DILocation(line: 642, column: 15, scope: !48, inlinedAt: !633)
!633 = distinct !DILocation(line: 802, column: 7, scope: !595)
!634 = !DILocation(line: 651, column: 3, scope: !48, inlinedAt: !633)
!635 = !DILocation(line: 651, column: 3, scope: !636, inlinedAt: !633)
!636 = !DILexicalBlockFile(scope: !48, file: !49, discriminator: 1)
!637 = !DILocation(line: 655, column: 29, scope: !48, inlinedAt: !633)
!638 = !DILocation(line: 655, column: 15, scope: !48, inlinedAt: !633)
!639 = !DILocation(line: 656, column: 7, scope: !68, inlinedAt: !633)
!640 = !DILocation(line: 656, column: 19, scope: !68, inlinedAt: !633)
!641 = !DILocation(line: 656, column: 22, scope: !642, inlinedAt: !633)
!642 = !DILexicalBlockFile(scope: !68, file: !49, discriminator: 16)
!643 = !DILocation(line: 656, column: 7, scope: !644, inlinedAt: !633)
!644 = !DILexicalBlockFile(scope: !48, file: !49, discriminator: 16)
!645 = !DILocation(line: 662, column: 7, scope: !646, inlinedAt: !633)
!646 = distinct !DILexicalBlock(scope: !68, file: !49, line: 657, column: 5)
!647 = !DILocation(line: 662, column: 7, scope: !648, inlinedAt: !633)
!648 = !DILexicalBlockFile(scope: !646, file: !49, discriminator: 1)
!649 = !DILocation(line: 664, column: 5, scope: !646, inlinedAt: !633)
!650 = !DILocation(line: 665, column: 3, scope: !48, inlinedAt: !633)
!651 = !DILocation(line: 665, column: 3, scope: !636, inlinedAt: !633)
!652 = !DILocation(line: 667, column: 3, scope: !48, inlinedAt: !633)
!653 = !DILocation(line: 667, column: 3, scope: !636, inlinedAt: !633)
!654 = !DILocation(line: 804, column: 3, scope: !573)
!655 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 823, type: !656, isLocal: false, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!37, !37, !76}
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(name: "margc", arg: 1, scope: !655, file: !3, line: 823, type: !37)
!660 = !DILocalVariable(name: "margv", arg: 2, scope: !655, file: !3, line: 823, type: !76)
!661 = !DILocalVariable(name: "value", scope: !655, file: !3, line: 825, type: !87)
!662 = !DILocation(line: 823, column: 11, scope: !655)
!663 = !DILocation(line: 823, column: 25, scope: !655)
!664 = !DILocation(line: 836, column: 21, scope: !655)
!665 = !DILocation(line: 836, column: 3, scope: !655)
!666 = !DILocation(line: 837, column: 3, scope: !655)
!667 = !DILocation(line: 838, column: 3, scope: !655)
!668 = !DILocation(line: 839, column: 3, scope: !655)
!669 = !DILocalVariable(name: "status", arg: 1, scope: !670, file: !49, line: 99, type: !37)
!670 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !49, file: !49, line: 99, type: !574, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !671)
!671 = !{!669}
!672 = !DILocation(line: 99, column: 30, scope: !670, inlinedAt: !673)
!673 = distinct !DILocation(line: 841, column: 3, scope: !655)
!674 = !DILocation(line: 102, column: 18, scope: !675, inlinedAt: !673)
!675 = distinct !DILexicalBlock(scope: !670, file: !49, line: 101, column: 7)
!676 = !{!677, !677, i64 0}
!677 = !{!"int", !588, i64 0}
!678 = !DILocation(line: 842, column: 3, scope: !655)
!679 = !DILocation(line: 845, column: 8, scope: !655)
!680 = !DILocation(line: 873, column: 8, scope: !655)
!681 = !DILocation(line: 874, column: 7, scope: !655)
!682 = !DILocation(line: 876, column: 11, scope: !683)
!683 = distinct !DILexicalBlock(scope: !655, file: !3, line: 876, column: 7)
!684 = !DILocation(line: 876, column: 7, scope: !655)
!685 = !DILocation(line: 879, column: 27, scope: !655)
!686 = !DILocation(line: 879, column: 11, scope: !655)
!687 = !DILocation(line: 881, column: 7, scope: !688)
!688 = distinct !DILexicalBlock(scope: !655, file: !3, line: 881, column: 7)
!689 = !DILocation(line: 881, column: 14, scope: !688)
!690 = !DILocation(line: 881, column: 11, scope: !688)
!691 = !DILocation(line: 881, column: 7, scope: !655)
!692 = !DILocation(line: 882, column: 24, scope: !688)
!693 = !DILocation(line: 882, column: 55, scope: !688)
!694 = !DILocation(line: 882, column: 60, scope: !688)
!695 = !DILocation(line: 882, column: 48, scope: !696)
!696 = !DILexicalBlockFile(scope: !688, file: !3, discriminator: 1)
!697 = !DILocation(line: 882, column: 5, scope: !698)
!698 = !DILexicalBlockFile(scope: !688, file: !3, discriminator: 2)
!699 = !DILocation(line: 882, column: 5, scope: !688)
!700 = !DILocation(line: 884, column: 3, scope: !655)
!701 = !DILocation(line: 885, column: 1, scope: !655)
!702 = distinct !DISubprogram(name: "posixtest", scope: !3, file: !3, line: 657, type: !703, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!87, !37}
!705 = !{!706, !707, !708, !712, !713, !715, !716, !719, !720, !722, !723, !725, !726, !728}
!706 = !DILocalVariable(name: "nargs", arg: 1, scope: !702, file: !3, line: 657, type: !37)
!707 = !DILocalVariable(name: "value", scope: !702, file: !3, line: 659, type: !87)
!708 = !DILocalVariable(name: "__s1_len", scope: !709, file: !3, line: 676, type: !26)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 676, column: 13)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 676, column: 13)
!711 = distinct !DILexicalBlock(scope: !702, file: !3, line: 662, column: 5)
!712 = !DILocalVariable(name: "__s2_len", scope: !709, file: !3, line: 676, type: !26)
!713 = !DILocalVariable(name: "__s2", scope: !714, file: !3, line: 676, type: !31)
!714 = distinct !DILexicalBlock(scope: !709, file: !3, line: 676, column: 13)
!715 = !DILocalVariable(name: "__result", scope: !714, file: !3, line: 676, type: !37)
!716 = !DILocalVariable(name: "__s1_len", scope: !717, file: !3, line: 682, type: !26)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 682, column: 13)
!718 = distinct !DILexicalBlock(scope: !711, file: !3, line: 682, column: 13)
!719 = !DILocalVariable(name: "__s2_len", scope: !717, file: !3, line: 682, type: !26)
!720 = !DILocalVariable(name: "__s2", scope: !721, file: !3, line: 682, type: !31)
!721 = distinct !DILexicalBlock(scope: !717, file: !3, line: 682, column: 13)
!722 = !DILocalVariable(name: "__result", scope: !721, file: !3, line: 682, type: !37)
!723 = !DILocalVariable(name: "__s1_len", scope: !724, file: !3, line: 682, type: !26)
!724 = distinct !DILexicalBlock(scope: !718, file: !3, line: 682, column: 39)
!725 = !DILocalVariable(name: "__s2_len", scope: !724, file: !3, line: 682, type: !26)
!726 = !DILocalVariable(name: "__s2", scope: !727, file: !3, line: 682, type: !31)
!727 = distinct !DILexicalBlock(scope: !724, file: !3, line: 682, column: 39)
!728 = !DILocalVariable(name: "__result", scope: !727, file: !3, line: 682, type: !37)
!729 = !DILocation(line: 657, column: 16, scope: !702)
!730 = !DILocation(line: 661, column: 3, scope: !702)
!731 = !DILocation(line: 603, column: 10, scope: !732, inlinedAt: !735)
!732 = distinct !DISubprogram(name: "one_argument", scope: !3, file: !3, line: 601, type: !733, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !82)
!733 = !DISubroutineType(types: !734)
!734 = !{!87}
!735 = distinct !DILocation(line: 664, column: 17, scope: !711)
!736 = !DILocation(line: 603, column: 18, scope: !732, inlinedAt: !735)
!737 = !{!588, !588, i64 0}
!738 = !DILocation(line: 603, column: 25, scope: !732, inlinedAt: !735)
!739 = !DILocation(line: 664, column: 15, scope: !711)
!740 = !DILocation(line: 659, column: 8, scope: !702)
!741 = !DILocation(line: 665, column: 9, scope: !711)
!742 = !DILocation(line: 668, column: 17, scope: !711)
!743 = !DILocation(line: 668, column: 15, scope: !711)
!744 = !DILocation(line: 669, column: 9, scope: !711)
!745 = !DILocation(line: 672, column: 17, scope: !711)
!746 = !DILocation(line: 672, column: 15, scope: !711)
!747 = !DILocation(line: 673, column: 9, scope: !711)
!748 = !DILocation(line: 676, column: 13, scope: !709)
!749 = !DILocation(line: 676, column: 13, scope: !750)
!750 = !DILexicalBlockFile(scope: !714, file: !3, discriminator: 2)
!751 = !DILocation(line: 676, column: 13, scope: !714)
!752 = !DILocation(line: 676, column: 13, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !3, discriminator: 2)
!754 = distinct !DILexicalBlock(scope: !714, file: !3, line: 676, column: 13)
!755 = !DILocation(line: 676, column: 13, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !3, discriminator: 4)
!757 = distinct !DILexicalBlock(scope: !754, file: !3, line: 676, column: 13)
!758 = !DILocation(line: 676, column: 13, scope: !759)
!759 = !DILexicalBlockFile(scope: !709, file: !3, discriminator: 11)
!760 = !DILocation(line: 676, column: 13, scope: !761)
!761 = !DILexicalBlockFile(scope: !711, file: !3, discriminator: 13)
!762 = !DILocalVariable(name: "f", arg: 1, scope: !763, file: !3, line: 105, type: !87)
!763 = distinct !DISubprogram(name: "advance", scope: !3, file: !3, line: 105, type: !764, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !87}
!766 = !{!762}
!767 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!768 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !769)
!769 = distinct !DILocation(line: 678, column: 13, scope: !770)
!770 = distinct !DILexicalBlock(scope: !710, file: !3, line: 677, column: 11)
!771 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !769)
!772 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !769)
!773 = !DILexicalBlockFile(scope: !774, file: !3, discriminator: 1)
!774 = distinct !DILexicalBlock(scope: !763, file: !3, line: 109, column: 7)
!775 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !769)
!776 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !769)
!777 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !769)
!778 = !DILocation(line: 679, column: 22, scope: !770)
!779 = !DILocation(line: 679, column: 21, scope: !770)
!780 = !DILocation(line: 679, column: 19, scope: !770)
!781 = !DILocation(line: 680, column: 13, scope: !770)
!782 = !DILocation(line: 682, column: 13, scope: !783)
!783 = !DILexicalBlockFile(scope: !784, file: !3, discriminator: 4)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 682, column: 13)
!785 = distinct !DILexicalBlock(scope: !721, file: !3, line: 682, column: 13)
!786 = !DILocation(line: 682, column: 13, scope: !787)
!787 = !DILexicalBlockFile(scope: !717, file: !3, discriminator: 11)
!788 = !DILocation(line: 682, column: 36, scope: !789)
!789 = !DILexicalBlockFile(scope: !718, file: !3, discriminator: 13)
!790 = !DILocation(line: 682, column: 39, scope: !724)
!791 = !DILocation(line: 682, column: 39, scope: !792)
!792 = !DILexicalBlockFile(scope: !727, file: !3, discriminator: 16)
!793 = !DILocation(line: 682, column: 39, scope: !727)
!794 = !DILocation(line: 682, column: 39, scope: !795)
!795 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 17)
!796 = distinct !DILexicalBlock(scope: !727, file: !3, line: 682, column: 39)
!797 = !DILocation(line: 682, column: 39, scope: !798)
!798 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 16)
!799 = !DILocation(line: 682, column: 39, scope: !800)
!800 = !DILexicalBlockFile(scope: !801, file: !3, discriminator: 18)
!801 = distinct !DILexicalBlock(scope: !796, file: !3, line: 682, column: 39)
!802 = !DILocation(line: 682, column: 39, scope: !803)
!803 = !DILexicalBlockFile(scope: !724, file: !3, discriminator: 25)
!804 = !DILocation(line: 682, column: 13, scope: !805)
!805 = !DILexicalBlockFile(scope: !711, file: !3, discriminator: 27)
!806 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !807)
!807 = distinct !DILocation(line: 684, column: 13, scope: !808)
!808 = distinct !DILexicalBlock(scope: !718, file: !3, line: 683, column: 11)
!809 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !807)
!810 = !DILocation(line: 685, column: 21, scope: !808)
!811 = !DILocation(line: 685, column: 19, scope: !808)
!812 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !813)
!813 = distinct !DILocation(line: 686, column: 13, scope: !808)
!814 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !813)
!815 = !DILocation(line: 687, column: 13, scope: !808)
!816 = !DILocation(line: 692, column: 19, scope: !817)
!817 = distinct !DILexicalBlock(scope: !711, file: !3, line: 692, column: 13)
!818 = !DILocation(line: 692, column: 13, scope: !711)
!819 = !DILocation(line: 693, column: 11, scope: !817)
!820 = !DILocation(line: 574, column: 7, scope: !821, inlinedAt: !823)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 574, column: 7)
!822 = distinct !DISubprogram(name: "expr", scope: !3, file: !3, line: 572, type: !733, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !82)
!823 = distinct !DILocation(line: 694, column: 17, scope: !711)
!824 = !DILocation(line: 574, column: 14, scope: !821, inlinedAt: !823)
!825 = !DILocation(line: 574, column: 11, scope: !821, inlinedAt: !823)
!826 = !DILocation(line: 574, column: 7, scope: !822, inlinedAt: !823)
!827 = !DILocation(line: 537, column: 8, scope: !828, inlinedAt: !839)
!828 = distinct !DISubprogram(name: "and", scope: !3, file: !3, line: 535, type: !733, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !829)
!829 = !{!830, !831, !835, !836, !838}
!830 = !DILocalVariable(name: "value", scope: !828, file: !3, line: 537, type: !87)
!831 = !DILocalVariable(name: "__s1_len", scope: !832, file: !3, line: 542, type: !26)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 542, column: 28)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 542, column: 11)
!834 = distinct !DILexicalBlock(scope: !828, file: !3, line: 540, column: 5)
!835 = !DILocalVariable(name: "__s2_len", scope: !832, file: !3, line: 542, type: !26)
!836 = !DILocalVariable(name: "__s2", scope: !837, file: !3, line: 542, type: !31)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 542, column: 28)
!838 = !DILocalVariable(name: "__result", scope: !837, file: !3, line: 542, type: !37)
!839 = distinct !DILocation(line: 560, column: 16, scope: !840, inlinedAt: !851)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 559, column: 5)
!841 = distinct !DISubprogram(name: "or", scope: !3, file: !3, line: 554, type: !733, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !842)
!842 = !{!843, !844, !847, !848, !850}
!843 = !DILocalVariable(name: "value", scope: !841, file: !3, line: 556, type: !87)
!844 = !DILocalVariable(name: "__s1_len", scope: !845, file: !3, line: 561, type: !26)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 561, column: 28)
!846 = distinct !DILexicalBlock(scope: !840, file: !3, line: 561, column: 11)
!847 = !DILocalVariable(name: "__s2_len", scope: !845, file: !3, line: 561, type: !26)
!848 = !DILocalVariable(name: "__s2", scope: !849, file: !3, line: 561, type: !31)
!849 = distinct !DILexicalBlock(scope: !845, file: !3, line: 561, column: 28)
!850 = !DILocalVariable(name: "__result", scope: !849, file: !3, line: 561, type: !37)
!851 = distinct !DILocation(line: 577, column: 10, scope: !822, inlinedAt: !823)
!852 = !DILocation(line: 575, column: 5, scope: !821, inlinedAt: !823)
!853 = !DILocation(line: 541, column: 16, scope: !834, inlinedAt: !839)
!854 = !DILocation(line: 542, column: 14, scope: !833, inlinedAt: !839)
!855 = !DILocation(line: 542, column: 20, scope: !833, inlinedAt: !839)
!856 = !DILocation(line: 542, column: 18, scope: !833, inlinedAt: !839)
!857 = !DILocation(line: 542, column: 25, scope: !833, inlinedAt: !839)
!858 = !DILocation(line: 542, column: 28, scope: !832, inlinedAt: !839)
!859 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !860)
!860 = distinct !DILocation(line: 544, column: 7, scope: !834, inlinedAt: !839)
!861 = !DILocation(line: 542, column: 28, scope: !862, inlinedAt: !839)
!862 = !DILexicalBlockFile(scope: !837, file: !3, discriminator: 3)
!863 = !DILocation(line: 542, column: 28, scope: !837, inlinedAt: !839)
!864 = !DILocation(line: 542, column: 28, scope: !865, inlinedAt: !839)
!865 = !DILexicalBlockFile(scope: !866, file: !3, discriminator: 4)
!866 = distinct !DILexicalBlock(scope: !837, file: !3, line: 542, column: 28)
!867 = !DILocation(line: 542, column: 28, scope: !868, inlinedAt: !839)
!868 = !DILexicalBlockFile(scope: !866, file: !3, discriminator: 3)
!869 = !DILocation(line: 542, column: 28, scope: !870, inlinedAt: !839)
!870 = !DILexicalBlockFile(scope: !871, file: !3, discriminator: 5)
!871 = distinct !DILexicalBlock(scope: !866, file: !3, line: 542, column: 28)
!872 = !DILocation(line: 542, column: 28, scope: !873, inlinedAt: !839)
!873 = !DILexicalBlockFile(scope: !874, file: !3, discriminator: 6)
!874 = distinct !DILexicalBlock(scope: !871, file: !3, line: 542, column: 28)
!875 = !DILocation(line: 542, column: 28, scope: !876, inlinedAt: !839)
!876 = !DILexicalBlockFile(scope: !874, file: !3, discriminator: 5)
!877 = !DILocation(line: 542, column: 28, scope: !878, inlinedAt: !839)
!878 = !DILexicalBlockFile(scope: !879, file: !3, discriminator: 7)
!879 = distinct !DILexicalBlock(scope: !874, file: !3, line: 542, column: 28)
!880 = !DILocation(line: 542, column: 28, scope: !881, inlinedAt: !839)
!881 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 14)
!882 = !DILocation(line: 542, column: 11, scope: !883, inlinedAt: !839)
!883 = !DILexicalBlockFile(scope: !834, file: !3, discriminator: 14)
!884 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !860)
!885 = !DILocation(line: 541, column: 13, scope: !834, inlinedAt: !839)
!886 = distinct !{!886, !887, !888}
!887 = !DILocation(line: 539, column: 3, scope: !828)
!888 = !DILocation(line: 545, column: 5, scope: !828)
!889 = !DILocation(line: 560, column: 13, scope: !840, inlinedAt: !851)
!890 = !DILocation(line: 561, column: 20, scope: !846, inlinedAt: !851)
!891 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !892)
!892 = distinct !DILocation(line: 563, column: 7, scope: !840, inlinedAt: !851)
!893 = !DILocation(line: 561, column: 18, scope: !846, inlinedAt: !851)
!894 = !DILocation(line: 561, column: 25, scope: !846, inlinedAt: !851)
!895 = !DILocation(line: 561, column: 28, scope: !845, inlinedAt: !851)
!896 = !DILocation(line: 561, column: 28, scope: !897, inlinedAt: !851)
!897 = !DILexicalBlockFile(scope: !849, file: !3, discriminator: 3)
!898 = !DILocation(line: 561, column: 28, scope: !849, inlinedAt: !851)
!899 = !DILocation(line: 561, column: 28, scope: !900, inlinedAt: !851)
!900 = !DILexicalBlockFile(scope: !901, file: !3, discriminator: 4)
!901 = distinct !DILexicalBlock(scope: !849, file: !3, line: 561, column: 28)
!902 = !DILocation(line: 561, column: 28, scope: !903, inlinedAt: !851)
!903 = !DILexicalBlockFile(scope: !901, file: !3, discriminator: 3)
!904 = !DILocation(line: 561, column: 28, scope: !905, inlinedAt: !851)
!905 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 5)
!906 = distinct !DILexicalBlock(scope: !901, file: !3, line: 561, column: 28)
!907 = !DILocation(line: 561, column: 28, scope: !908, inlinedAt: !851)
!908 = !DILexicalBlockFile(scope: !909, file: !3, discriminator: 6)
!909 = distinct !DILexicalBlock(scope: !906, file: !3, line: 561, column: 28)
!910 = !DILocation(line: 561, column: 28, scope: !911, inlinedAt: !851)
!911 = !DILexicalBlockFile(scope: !909, file: !3, discriminator: 5)
!912 = !DILocation(line: 561, column: 28, scope: !913, inlinedAt: !851)
!913 = !DILexicalBlockFile(scope: !914, file: !3, discriminator: 7)
!914 = distinct !DILexicalBlock(scope: !909, file: !3, line: 561, column: 28)
!915 = !DILocation(line: 561, column: 28, scope: !916, inlinedAt: !851)
!916 = !DILexicalBlockFile(scope: !846, file: !3, discriminator: 14)
!917 = !DILocation(line: 561, column: 11, scope: !918, inlinedAt: !851)
!918 = !DILexicalBlockFile(scope: !840, file: !3, discriminator: 14)
!919 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !892)
!920 = !DILocation(line: 558, column: 3, scope: !921, inlinedAt: !851)
!921 = !DILexicalBlockFile(scope: !841, file: !3, discriminator: 2)
!922 = distinct !{!922, !923, !924}
!923 = !DILocation(line: 558, column: 3, scope: !841)
!924 = !DILocation(line: 564, column: 5, scope: !841)
!925 = !DILocation(line: 694, column: 15, scope: !711)
!926 = !DILocation(line: 695, column: 5, scope: !711)
!927 = !DILocation(line: 697, column: 11, scope: !702)
!928 = !DILocation(line: 697, column: 3, scope: !702)
!929 = distinct !DISubprogram(name: "test_syntax_error", scope: !3, file: !3, line: 92, type: !930, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !932)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !34, null}
!932 = !{!933, !934}
!933 = !DILocalVariable(name: "format", arg: 1, scope: !929, file: !3, line: 92, type: !34)
!934 = !DILocalVariable(name: "ap", scope: !929, file: !3, line: 94, type: !935)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !936, line: 80, baseType: !937)
!936 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !938, line: 50, baseType: !939)
!938 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 94, baseType: !940)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 192, elements: !947)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 94, size: 192, elements: !942)
!942 = !{!943, !944, !945, !946}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !941, file: !3, line: 94, baseType: !39, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !941, file: !3, line: 94, baseType: !39, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !941, file: !3, line: 94, baseType: !40, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !941, file: !3, line: 94, baseType: !40, size: 64, offset: 128)
!947 = !{!948}
!948 = !DISubrange(count: 1)
!949 = !DILocation(line: 92, column: 32, scope: !929)
!950 = !DILocation(line: 94, column: 3, scope: !929)
!951 = !DILocation(line: 94, column: 11, scope: !929)
!952 = !DILocation(line: 95, column: 3, scope: !929)
!953 = !DILocation(line: 96, column: 3, scope: !929)
!954 = !DILocation(line: 97, column: 3, scope: !929)
!955 = distinct !DISubprogram(name: "two_arguments", scope: !3, file: !3, line: 607, type: !733, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !956)
!956 = !{!957, !958, !961, !962, !964}
!957 = !DILocalVariable(name: "value", scope: !955, file: !3, line: 609, type: !87)
!958 = !DILocalVariable(name: "__s1_len", scope: !959, file: !3, line: 611, type: !26)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 611, column: 7)
!960 = distinct !DILexicalBlock(scope: !955, file: !3, line: 611, column: 7)
!961 = !DILocalVariable(name: "__s2_len", scope: !959, file: !3, line: 611, type: !26)
!962 = !DILocalVariable(name: "__s2", scope: !963, file: !3, line: 611, type: !31)
!963 = distinct !DILexicalBlock(scope: !959, file: !3, line: 611, column: 7)
!964 = !DILocalVariable(name: "__result", scope: !963, file: !3, line: 611, type: !37)
!965 = !DILocation(line: 611, column: 7, scope: !959)
!966 = !DILocation(line: 611, column: 7, scope: !967)
!967 = !DILexicalBlockFile(scope: !963, file: !3, discriminator: 2)
!968 = !DILocation(line: 611, column: 7, scope: !963)
!969 = !DILocation(line: 611, column: 7, scope: !970)
!970 = !DILexicalBlockFile(scope: !971, file: !3, discriminator: 2)
!971 = distinct !DILexicalBlock(scope: !963, file: !3, line: 611, column: 7)
!972 = !DILocation(line: 611, column: 7, scope: !973)
!973 = !DILexicalBlockFile(scope: !974, file: !3, discriminator: 4)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 611, column: 7)
!975 = !DILocation(line: 611, column: 7, scope: !976)
!976 = !DILexicalBlockFile(scope: !959, file: !3, discriminator: 11)
!977 = !DILocation(line: 611, column: 7, scope: !978)
!978 = !DILexicalBlockFile(scope: !955, file: !3, discriminator: 13)
!979 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !980)
!980 = distinct !DILocation(line: 613, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !960, file: !3, line: 612, column: 5)
!982 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !980)
!983 = !DILocation(line: 603, column: 18, scope: !732, inlinedAt: !984)
!984 = distinct !DILocation(line: 614, column: 17, scope: !981)
!985 = !DILocation(line: 603, column: 10, scope: !732, inlinedAt: !984)
!986 = !DILocation(line: 614, column: 15, scope: !981)
!987 = !DILocation(line: 615, column: 5, scope: !981)
!988 = !DILocation(line: 617, column: 15, scope: !989)
!989 = !DILexicalBlockFile(scope: !990, file: !3, discriminator: 1)
!990 = distinct !DILexicalBlock(scope: !960, file: !3, line: 616, column: 12)
!991 = !DILocation(line: 617, column: 28, scope: !989)
!992 = !DILocation(line: 618, column: 12, scope: !990)
!993 = !DILocation(line: 618, column: 15, scope: !989)
!994 = !DILocation(line: 618, column: 28, scope: !989)
!995 = !DILocation(line: 616, column: 12, scope: !996)
!996 = !DILexicalBlockFile(scope: !960, file: !3, discriminator: 1)
!997 = !DILocalVariable(name: "op", arg: 1, scope: !998, file: !3, line: 582, type: !34)
!998 = distinct !DISubprogram(name: "test_unop", scope: !3, file: !3, line: 582, type: !999, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!87, !34}
!1001 = !{!997}
!1002 = !DILocation(line: 582, column: 24, scope: !998, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 620, column: 11, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 620, column: 11)
!1005 = distinct !DILexicalBlock(scope: !990, file: !3, line: 619, column: 5)
!1006 = !DILocation(line: 587, column: 11, scope: !998, inlinedAt: !1003)
!1007 = !DILocation(line: 587, column: 3, scope: !998, inlinedAt: !1003)
!1008 = !DILocation(line: 620, column: 11, scope: !1005)
!1009 = !DILocation(line: 621, column: 17, scope: !1004)
!1010 = !DILocation(line: 623, column: 28, scope: !1004)
!1011 = !DILocation(line: 623, column: 69, scope: !1004)
!1012 = !DILocation(line: 623, column: 74, scope: !1004)
!1013 = !DILocation(line: 623, column: 62, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 1)
!1015 = !DILocation(line: 623, column: 9, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 2)
!1017 = !DILocation(line: 623, column: 9, scope: !1004)
!1018 = !DILocation(line: 626, column: 5, scope: !990)
!1019 = !DILocation(line: 627, column: 3, scope: !955)
!1020 = distinct !DISubprogram(name: "three_arguments", scope: !3, file: !3, line: 631, type: !733, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1021)
!1021 = !{!1022, !1023, !1027, !1028, !1030, !1031, !1034, !1035, !1037, !1038, !1040, !1041, !1043, !1044, !1047, !1048, !1050, !1051, !1053, !1054, !1056}
!1022 = !DILocalVariable(name: "value", scope: !1020, file: !3, line: 633, type: !87)
!1023 = !DILocalVariable(name: "__s1_len", scope: !1024, file: !3, line: 637, type: !26)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 637, column: 12)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 637, column: 12)
!1026 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 635, column: 7)
!1027 = !DILocalVariable(name: "__s2_len", scope: !1024, file: !3, line: 637, type: !26)
!1028 = !DILocalVariable(name: "__s2", scope: !1029, file: !3, line: 637, type: !31)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 637, column: 12)
!1030 = !DILocalVariable(name: "__result", scope: !1029, file: !3, line: 637, type: !37)
!1031 = !DILocalVariable(name: "__s1_len", scope: !1032, file: !3, line: 642, type: !26)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 642, column: 12)
!1033 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 642, column: 12)
!1034 = !DILocalVariable(name: "__s2_len", scope: !1032, file: !3, line: 642, type: !26)
!1035 = !DILocalVariable(name: "__s2", scope: !1036, file: !3, line: 642, type: !31)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 642, column: 12)
!1037 = !DILocalVariable(name: "__result", scope: !1036, file: !3, line: 642, type: !37)
!1038 = !DILocalVariable(name: "__s1_len", scope: !1039, file: !3, line: 642, type: !26)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 642, column: 38)
!1040 = !DILocalVariable(name: "__s2_len", scope: !1039, file: !3, line: 642, type: !26)
!1041 = !DILocalVariable(name: "__s2", scope: !1042, file: !3, line: 642, type: !31)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 642, column: 38)
!1043 = !DILocalVariable(name: "__result", scope: !1042, file: !3, line: 642, type: !37)
!1044 = !DILocalVariable(name: "__s1_len", scope: !1045, file: !3, line: 648, type: !26)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 648, column: 12)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 648, column: 12)
!1047 = !DILocalVariable(name: "__s2_len", scope: !1045, file: !3, line: 648, type: !26)
!1048 = !DILocalVariable(name: "__s2", scope: !1049, file: !3, line: 648, type: !31)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 648, column: 12)
!1050 = !DILocalVariable(name: "__result", scope: !1049, file: !3, line: 648, type: !37)
!1051 = !DILocalVariable(name: "__s1_len", scope: !1052, file: !3, line: 648, type: !26)
!1052 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 648, column: 43)
!1053 = !DILocalVariable(name: "__s2_len", scope: !1052, file: !3, line: 648, type: !26)
!1054 = !DILocalVariable(name: "__s2", scope: !1055, file: !3, line: 648, type: !31)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 648, column: 43)
!1056 = !DILocalVariable(name: "__result", scope: !1055, file: !3, line: 648, type: !37)
!1057 = !DILocation(line: 635, column: 14, scope: !1026)
!1058 = !DILocation(line: 635, column: 19, scope: !1026)
!1059 = !DILocation(line: 635, column: 23, scope: !1026)
!1060 = !DILocation(line: 635, column: 7, scope: !1026)
!1061 = !DILocation(line: 635, column: 7, scope: !1020)
!1062 = !DILocation(line: 636, column: 13, scope: !1026)
!1063 = !DILocation(line: 636, column: 11, scope: !1026)
!1064 = !DILocation(line: 633, column: 8, scope: !1020)
!1065 = !DILocation(line: 636, column: 5, scope: !1026)
!1066 = !DILocation(line: 637, column: 12, scope: !1024)
!1067 = !DILocation(line: 637, column: 12, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1029, file: !3, discriminator: 2)
!1069 = !DILocation(line: 637, column: 12, scope: !1029)
!1070 = !DILocation(line: 637, column: 12, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1072, file: !3, discriminator: 2)
!1072 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 637, column: 12)
!1073 = !DILocation(line: 637, column: 12, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1075, file: !3, discriminator: 4)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 637, column: 12)
!1076 = !DILocation(line: 637, column: 12, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1025, file: !3, discriminator: 13)
!1078 = !DILocation(line: 637, column: 12, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 13)
!1080 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 639, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 638, column: 5)
!1083 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1081)
!1084 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !1081)
!1085 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !1081)
!1086 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !1081)
!1087 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !1081)
!1088 = !DILocation(line: 640, column: 16, scope: !1082)
!1089 = !DILocation(line: 640, column: 15, scope: !1082)
!1090 = !DILocation(line: 640, column: 13, scope: !1082)
!1091 = !DILocation(line: 641, column: 5, scope: !1082)
!1092 = !DILocation(line: 642, column: 12, scope: !1032)
!1093 = !DILocation(line: 642, column: 12, scope: !1036)
!1094 = !DILocation(line: 642, column: 12, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1096, file: !3, discriminator: 3)
!1096 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 642, column: 12)
!1097 = !DILocation(line: 642, column: 12, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1096, file: !3, discriminator: 2)
!1099 = !DILocation(line: 642, column: 12, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1101, file: !3, discriminator: 4)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 642, column: 12)
!1102 = !DILocation(line: 642, column: 12, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1032, file: !3, discriminator: 11)
!1104 = !DILocation(line: 642, column: 35, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1033, file: !3, discriminator: 13)
!1106 = !DILocation(line: 642, column: 38, scope: !1039)
!1107 = !DILocation(line: 642, column: 38, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1042, file: !3, discriminator: 16)
!1109 = !DILocation(line: 642, column: 38, scope: !1042)
!1110 = !DILocation(line: 642, column: 38, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1112, file: !3, discriminator: 17)
!1112 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 642, column: 38)
!1113 = !DILocation(line: 642, column: 38, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1112, file: !3, discriminator: 16)
!1115 = !DILocation(line: 642, column: 38, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1117, file: !3, discriminator: 18)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 642, column: 38)
!1118 = !DILocation(line: 642, column: 38, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1039, file: !3, discriminator: 25)
!1120 = !DILocation(line: 642, column: 12, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1025, file: !3, discriminator: 27)
!1122 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 644, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 643, column: 5)
!1125 = !DILocation(line: 603, column: 10, scope: !732, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 645, column: 15, scope: !1124)
!1127 = !DILocation(line: 603, column: 25, scope: !732, inlinedAt: !1126)
!1128 = !DILocation(line: 645, column: 13, scope: !1124)
!1129 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 646, column: 7, scope: !1124)
!1131 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1130)
!1132 = !DILocation(line: 647, column: 5, scope: !1124)
!1133 = !DILocation(line: 648, column: 12, scope: !1045)
!1134 = !DILocation(line: 648, column: 12, scope: !1049)
!1135 = !DILocation(line: 648, column: 12, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1049, file: !3, discriminator: 2)
!1137 = !DILocation(line: 648, column: 12, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1139, file: !3, discriminator: 3)
!1139 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 648, column: 12)
!1140 = !DILocation(line: 648, column: 12, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1139, file: !3, discriminator: 2)
!1142 = !DILocation(line: 648, column: 12, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !3, discriminator: 4)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 648, column: 12)
!1145 = !DILocation(line: 648, column: 12, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1147, file: !3, discriminator: 5)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 648, column: 12)
!1148 = !DILocation(line: 648, column: 12, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1147, file: !3, discriminator: 4)
!1150 = !DILocation(line: 648, column: 12, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1152, file: !3, discriminator: 6)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 648, column: 12)
!1153 = !DILocation(line: 648, column: 12, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1045, file: !3, discriminator: 11)
!1155 = !DILocation(line: 648, column: 40, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1046, file: !3, discriminator: 13)
!1157 = !DILocation(line: 648, column: 43, scope: !1052)
!1158 = !DILocation(line: 648, column: 43, scope: !1055)
!1159 = !DILocation(line: 648, column: 43, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1161, file: !3, discriminator: 18)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 648, column: 43)
!1162 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 648, column: 43)
!1163 = !DILocation(line: 648, column: 43, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1165, file: !3, discriminator: 19)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 648, column: 43)
!1166 = !DILocation(line: 648, column: 43, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1165, file: !3, discriminator: 18)
!1168 = !DILocation(line: 648, column: 43, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !3, discriminator: 20)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 648, column: 43)
!1171 = !DILocation(line: 648, column: 43, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1052, file: !3, discriminator: 25)
!1173 = !DILocation(line: 648, column: 12, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1033, file: !3, discriminator: 27)
!1175 = !DILocation(line: 574, column: 14, scope: !821, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 649, column: 13, scope: !1046)
!1177 = !DILocation(line: 574, column: 11, scope: !821, inlinedAt: !1176)
!1178 = !DILocation(line: 574, column: 7, scope: !822, inlinedAt: !1176)
!1179 = !DILocation(line: 537, column: 8, scope: !828, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 560, column: 16, scope: !840, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 577, column: 10, scope: !822, inlinedAt: !1176)
!1182 = !DILocation(line: 575, column: 5, scope: !821, inlinedAt: !1176)
!1183 = !DILocation(line: 541, column: 16, scope: !834, inlinedAt: !1180)
!1184 = !DILocation(line: 542, column: 14, scope: !833, inlinedAt: !1180)
!1185 = !DILocation(line: 542, column: 20, scope: !833, inlinedAt: !1180)
!1186 = !DILocation(line: 542, column: 18, scope: !833, inlinedAt: !1180)
!1187 = !DILocation(line: 542, column: 25, scope: !833, inlinedAt: !1180)
!1188 = !DILocation(line: 542, column: 28, scope: !832, inlinedAt: !1180)
!1189 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 544, column: 7, scope: !834, inlinedAt: !1180)
!1191 = !DILocation(line: 542, column: 28, scope: !862, inlinedAt: !1180)
!1192 = !DILocation(line: 542, column: 28, scope: !837, inlinedAt: !1180)
!1193 = !DILocation(line: 542, column: 28, scope: !865, inlinedAt: !1180)
!1194 = !DILocation(line: 542, column: 28, scope: !868, inlinedAt: !1180)
!1195 = !DILocation(line: 542, column: 28, scope: !870, inlinedAt: !1180)
!1196 = !DILocation(line: 542, column: 28, scope: !873, inlinedAt: !1180)
!1197 = !DILocation(line: 542, column: 28, scope: !876, inlinedAt: !1180)
!1198 = !DILocation(line: 542, column: 28, scope: !878, inlinedAt: !1180)
!1199 = !DILocation(line: 542, column: 28, scope: !881, inlinedAt: !1180)
!1200 = !DILocation(line: 542, column: 11, scope: !883, inlinedAt: !1180)
!1201 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1190)
!1202 = !DILocation(line: 541, column: 13, scope: !834, inlinedAt: !1180)
!1203 = !DILocation(line: 560, column: 13, scope: !840, inlinedAt: !1181)
!1204 = !DILocation(line: 561, column: 20, scope: !846, inlinedAt: !1181)
!1205 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 563, column: 7, scope: !840, inlinedAt: !1181)
!1207 = !DILocation(line: 561, column: 18, scope: !846, inlinedAt: !1181)
!1208 = !DILocation(line: 561, column: 25, scope: !846, inlinedAt: !1181)
!1209 = !DILocation(line: 561, column: 28, scope: !845, inlinedAt: !1181)
!1210 = !DILocation(line: 561, column: 28, scope: !897, inlinedAt: !1181)
!1211 = !DILocation(line: 561, column: 28, scope: !849, inlinedAt: !1181)
!1212 = !DILocation(line: 561, column: 28, scope: !900, inlinedAt: !1181)
!1213 = !DILocation(line: 561, column: 28, scope: !903, inlinedAt: !1181)
!1214 = !DILocation(line: 561, column: 28, scope: !905, inlinedAt: !1181)
!1215 = !DILocation(line: 561, column: 28, scope: !908, inlinedAt: !1181)
!1216 = !DILocation(line: 561, column: 28, scope: !911, inlinedAt: !1181)
!1217 = !DILocation(line: 561, column: 28, scope: !913, inlinedAt: !1181)
!1218 = !DILocation(line: 561, column: 28, scope: !916, inlinedAt: !1181)
!1219 = !DILocation(line: 561, column: 11, scope: !918, inlinedAt: !1181)
!1220 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1206)
!1221 = !DILocation(line: 558, column: 3, scope: !921, inlinedAt: !1181)
!1222 = !DILocation(line: 649, column: 11, scope: !1046)
!1223 = !DILocation(line: 651, column: 24, scope: !1046)
!1224 = !DILocation(line: 651, column: 66, scope: !1046)
!1225 = !DILocation(line: 651, column: 71, scope: !1046)
!1226 = !DILocation(line: 651, column: 74, scope: !1046)
!1227 = !DILocation(line: 651, column: 59, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1046, file: !3, discriminator: 1)
!1229 = !DILocation(line: 651, column: 5, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1046, file: !3, discriminator: 2)
!1231 = !DILocation(line: 651, column: 5, scope: !1046)
!1232 = !DILocation(line: 652, column: 11, scope: !1020)
!1233 = !DILocation(line: 652, column: 3, scope: !1020)
!1234 = distinct !DISubprogram(name: "beyond", scope: !3, file: !3, line: 125, type: !1235, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !82)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null}
!1237 = !DILocation(line: 127, column: 22, scope: !1234)
!1238 = !DILocation(line: 127, column: 61, scope: !1234)
!1239 = !DILocation(line: 127, column: 66, scope: !1234)
!1240 = !DILocation(line: 127, column: 71, scope: !1234)
!1241 = !DILocation(line: 127, column: 54, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1234, file: !3, discriminator: 1)
!1243 = !DILocation(line: 127, column: 3, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1234, file: !3, discriminator: 2)
!1245 = !DILocation(line: 127, column: 3, scope: !1234)
!1246 = distinct !DISubprogram(name: "term", scope: !3, file: !3, line: 212, type: !733, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1247)
!1247 = !{!1248, !1249, !1250, !1253, !1257, !1258, !1260, !1261, !1264, !1265, !1267}
!1248 = !DILocalVariable(name: "value", scope: !1246, file: !3, line: 214, type: !87)
!1249 = !DILocalVariable(name: "negated", scope: !1246, file: !3, line: 215, type: !87)
!1250 = !DILocalVariable(name: "nargs", scope: !1251, file: !3, line: 230, type: !37)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 229, column: 5)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 228, column: 7)
!1253 = !DILocalVariable(name: "__s1_len", scope: !1254, file: !3, line: 235, type: !26)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 235, column: 36)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 234, column: 7)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 234, column: 7)
!1257 = !DILocalVariable(name: "__s2_len", scope: !1254, file: !3, line: 235, type: !26)
!1258 = !DILocalVariable(name: "__s2", scope: !1259, file: !3, line: 235, type: !31)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 235, column: 36)
!1260 = !DILocalVariable(name: "__result", scope: !1259, file: !3, line: 235, type: !37)
!1261 = !DILocalVariable(name: "__s1_len", scope: !1262, file: !3, line: 254, type: !26)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 254, column: 31)
!1263 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 254, column: 12)
!1264 = !DILocalVariable(name: "__s2_len", scope: !1262, file: !3, line: 254, type: !26)
!1265 = !DILocalVariable(name: "__s2", scope: !1266, file: !3, line: 254, type: !31)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 254, column: 31)
!1267 = !DILocalVariable(name: "__result", scope: !1266, file: !3, line: 254, type: !37)
!1268 = !DILocation(line: 215, column: 8, scope: !1246)
!1269 = !DILocation(line: 218, column: 10, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1246, file: !3, discriminator: 1)
!1271 = !DILocation(line: 218, column: 16, scope: !1270)
!1272 = !DILocation(line: 218, column: 14, scope: !1270)
!1273 = !DILocation(line: 218, column: 21, scope: !1270)
!1274 = !DILocation(line: 218, column: 24, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1246, file: !3, discriminator: 2)
!1276 = !DILocation(line: 218, column: 37, scope: !1275)
!1277 = !DILocation(line: 218, column: 44, scope: !1275)
!1278 = !DILocation(line: 218, column: 47, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1246, file: !3, discriminator: 3)
!1280 = !DILocation(line: 218, column: 60, scope: !1279)
!1281 = !DILocation(line: 218, column: 3, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1246, file: !3, discriminator: 4)
!1283 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 220, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 219, column: 5)
!1286 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1284)
!1287 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !1284)
!1288 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !1284)
!1289 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !1284)
!1290 = !DILocation(line: 221, column: 17, scope: !1285)
!1291 = !DILocation(line: 224, column: 11, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 224, column: 7)
!1293 = !DILocation(line: 269, column: 21, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 268, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 260, column: 12)
!1296 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 256, column: 12)
!1297 = !DILocation(line: 224, column: 7, scope: !1246)
!1298 = !DILocation(line: 225, column: 5, scope: !1292)
!1299 = !DILocation(line: 228, column: 7, scope: !1252)
!1300 = !DILocation(line: 228, column: 20, scope: !1252)
!1301 = !DILocation(line: 228, column: 27, scope: !1252)
!1302 = !DILocation(line: 228, column: 30, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1252, file: !3, discriminator: 1)
!1304 = !DILocation(line: 228, column: 43, scope: !1303)
!1305 = !DILocation(line: 228, column: 7, scope: !1270)
!1306 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 232, column: 7, scope: !1251)
!1308 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1307)
!1309 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !1307)
!1310 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !1307)
!1311 = !DILocation(line: 230, column: 11, scope: !1251)
!1312 = !DILocation(line: 235, column: 16, scope: !1255)
!1313 = !DILocation(line: 235, column: 24, scope: !1255)
!1314 = !DILocation(line: 235, column: 31, scope: !1255)
!1315 = !DILocation(line: 235, column: 36, scope: !1254)
!1316 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !1307)
!1317 = !DILocation(line: 235, column: 36, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1259, file: !3, discriminator: 3)
!1319 = !DILocation(line: 235, column: 36, scope: !1259)
!1320 = !DILocation(line: 235, column: 36, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1322, file: !3, discriminator: 4)
!1322 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 235, column: 36)
!1323 = !DILocation(line: 235, column: 36, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1322, file: !3, discriminator: 3)
!1325 = !DILocation(line: 235, column: 36, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !3, discriminator: 5)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 235, column: 36)
!1328 = !DILocation(line: 235, column: 34, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1255, file: !3, discriminator: 14)
!1330 = !DILocation(line: 234, column: 7, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1256, file: !3, discriminator: 1)
!1332 = !DILocation(line: 237, column: 19, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 237, column: 13)
!1334 = !DILocation(line: 237, column: 13, scope: !1255)
!1335 = !DILocation(line: 239, column: 26, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 238, column: 11)
!1337 = !DILocation(line: 240, column: 13, scope: !1336)
!1338 = !DILocation(line: 236, column: 17, scope: !1255)
!1339 = distinct !{!1339, !1340, !1341}
!1340 = !DILocation(line: 234, column: 7, scope: !1256)
!1341 = !DILocation(line: 241, column: 11, scope: !1256)
!1342 = !DILocation(line: 243, column: 15, scope: !1251)
!1343 = !DILocation(line: 243, column: 13, scope: !1251)
!1344 = !DILocation(line: 244, column: 11, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 244, column: 11)
!1346 = !DILocation(line: 244, column: 16, scope: !1345)
!1347 = !DILocation(line: 244, column: 21, scope: !1345)
!1348 = !DILocation(line: 244, column: 11, scope: !1251)
!1349 = !DILocation(line: 245, column: 28, scope: !1345)
!1350 = !DILocation(line: 245, column: 46, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1345, file: !3, discriminator: 1)
!1352 = !DILocation(line: 245, column: 9, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1345, file: !3, discriminator: 2)
!1354 = !DILocation(line: 245, column: 9, scope: !1345)
!1355 = !DILocation(line: 247, column: 13, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 247, column: 13)
!1357 = !DILocation(line: 247, column: 26, scope: !1356)
!1358 = !DILocation(line: 247, column: 33, scope: !1356)
!1359 = !DILocation(line: 247, column: 36, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1356, file: !3, discriminator: 1)
!1361 = !DILocation(line: 247, column: 13, scope: !1351)
!1362 = !DILocation(line: 248, column: 30, scope: !1356)
!1363 = !DILocation(line: 249, column: 30, scope: !1356)
!1364 = !DILocation(line: 249, column: 60, scope: !1356)
!1365 = !DILocation(line: 249, column: 65, scope: !1356)
!1366 = !DILocation(line: 249, column: 48, scope: !1360)
!1367 = !DILocation(line: 248, column: 11, scope: !1360)
!1368 = !DILocation(line: 248, column: 11, scope: !1356)
!1369 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 250, column: 7, scope: !1251)
!1371 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1370)
!1372 = !DILocation(line: 251, column: 5, scope: !1251)
!1373 = !DILocation(line: 254, column: 22, scope: !1263)
!1374 = !DILocation(line: 254, column: 14, scope: !1263)
!1375 = !DILocation(line: 254, column: 28, scope: !1263)
!1376 = !DILocation(line: 254, column: 31, scope: !1262)
!1377 = !DILocation(line: 254, column: 31, scope: !1266)
!1378 = !DILocation(line: 254, column: 31, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1380, file: !3, discriminator: 4)
!1380 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 254, column: 31)
!1381 = !DILocation(line: 254, column: 31, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1380, file: !3, discriminator: 3)
!1383 = !DILocation(line: 254, column: 31, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1385, file: !3, discriminator: 5)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 254, column: 31)
!1386 = !DILocation(line: 254, column: 31, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1388, file: !3, discriminator: 6)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 254, column: 31)
!1389 = !DILocation(line: 254, column: 31, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1388, file: !3, discriminator: 5)
!1391 = !DILocation(line: 254, column: 31, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1393, file: !3, discriminator: 7)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 254, column: 31)
!1394 = !DILocation(line: 254, column: 31, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1262, file: !3, discriminator: 12)
!1396 = !DILocation(line: 254, column: 55, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1263, file: !3, discriminator: 14)
!1398 = !DILocation(line: 254, column: 74, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1263, file: !3, discriminator: 15)
!1400 = !DILocation(line: 254, column: 65, scope: !1399)
!1401 = !DILocation(line: 254, column: 58, scope: !1399)
!1402 = !DILocation(line: 254, column: 12, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1252, file: !3, discriminator: 15)
!1404 = !DILocation(line: 255, column: 13, scope: !1263)
!1405 = !DILocation(line: 255, column: 11, scope: !1263)
!1406 = !DILocation(line: 255, column: 5, scope: !1263)
!1407 = !DILocation(line: 256, column: 14, scope: !1296)
!1408 = !DILocation(line: 256, column: 28, scope: !1296)
!1409 = !DILocation(line: 256, column: 47, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1296, file: !3, discriminator: 1)
!1411 = !DILocation(line: 256, column: 38, scope: !1410)
!1412 = !DILocation(line: 256, column: 31, scope: !1410)
!1413 = !DILocation(line: 256, column: 12, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1263, file: !3, discriminator: 1)
!1415 = !DILocation(line: 257, column: 13, scope: !1296)
!1416 = !DILocation(line: 257, column: 11, scope: !1296)
!1417 = !DILocation(line: 257, column: 5, scope: !1296)
!1418 = !DILocation(line: 260, column: 25, scope: !1295)
!1419 = !DILocation(line: 260, column: 32, scope: !1295)
!1420 = !DILocation(line: 260, column: 35, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1295, file: !3, discriminator: 1)
!1422 = !DILocation(line: 260, column: 48, scope: !1421)
!1423 = !DILocation(line: 260, column: 51, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1295, file: !3, discriminator: 2)
!1425 = !DILocation(line: 260, column: 64, scope: !1424)
!1426 = !DILocation(line: 260, column: 12, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1296, file: !3, discriminator: 2)
!1428 = !DILocation(line: 582, column: 24, scope: !998, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 262, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 262, column: 11)
!1431 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 261, column: 5)
!1432 = !DILocation(line: 587, column: 11, scope: !998, inlinedAt: !1429)
!1433 = !DILocation(line: 587, column: 3, scope: !998, inlinedAt: !1429)
!1434 = !DILocation(line: 262, column: 11, scope: !1431)
!1435 = !DILocation(line: 263, column: 17, scope: !1430)
!1436 = !DILocation(line: 263, column: 15, scope: !1430)
!1437 = !DILocation(line: 266, column: 5, scope: !1431)
!1438 = !DILocation(line: 265, column: 28, scope: !1430)
!1439 = !DILocation(line: 265, column: 69, scope: !1430)
!1440 = !DILocation(line: 265, column: 74, scope: !1430)
!1441 = !DILocation(line: 265, column: 62, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1430, file: !3, discriminator: 1)
!1443 = !DILocation(line: 265, column: 9, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1430, file: !3, discriminator: 2)
!1445 = !DILocation(line: 265, column: 9, scope: !1430)
!1446 = !DILocation(line: 269, column: 29, scope: !1294)
!1447 = !DILocation(line: 269, column: 13, scope: !1294)
!1448 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 270, column: 7, scope: !1294)
!1450 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1449)
!1451 = !DILocation(line: 273, column: 10, scope: !1246)
!1452 = !DILocation(line: 273, column: 3, scope: !1246)
!1453 = distinct !DISubprogram(name: "binop", scope: !3, file: !3, line: 184, type: !999, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1454)
!1454 = !{!1455, !1456, !1458, !1459, !1461, !1462, !1464, !1465, !1467, !1468, !1470, !1471, !1473, !1474, !1476, !1477, !1479, !1480, !1482, !1483, !1485, !1486, !1488, !1489, !1491, !1492, !1494, !1495, !1497, !1498, !1500, !1501, !1503, !1504, !1506, !1507, !1509, !1510, !1512, !1513, !1515, !1516, !1518, !1519, !1521, !1522, !1524, !1525, !1527}
!1455 = !DILocalVariable(name: "s", arg: 1, scope: !1453, file: !3, line: 184, type: !34)
!1456 = !DILocalVariable(name: "__s1_len", scope: !1457, file: !3, line: 186, type: !26)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 186, column: 12)
!1458 = !DILocalVariable(name: "__s2_len", scope: !1457, file: !3, line: 186, type: !26)
!1459 = !DILocalVariable(name: "__s2", scope: !1460, file: !3, line: 186, type: !31)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 186, column: 12)
!1461 = !DILocalVariable(name: "__result", scope: !1460, file: !3, line: 186, type: !37)
!1462 = !DILocalVariable(name: "__s1_len", scope: !1463, file: !3, line: 186, type: !26)
!1463 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 186, column: 34)
!1464 = !DILocalVariable(name: "__s2_len", scope: !1463, file: !3, line: 186, type: !26)
!1465 = !DILocalVariable(name: "__s2", scope: !1466, file: !3, line: 186, type: !31)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 186, column: 34)
!1467 = !DILocalVariable(name: "__result", scope: !1466, file: !3, line: 186, type: !37)
!1468 = !DILocalVariable(name: "__s1_len", scope: !1469, file: !3, line: 186, type: !26)
!1469 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 186, column: 56)
!1470 = !DILocalVariable(name: "__s2_len", scope: !1469, file: !3, line: 186, type: !26)
!1471 = !DILocalVariable(name: "__s2", scope: !1472, file: !3, line: 186, type: !31)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 186, column: 56)
!1473 = !DILocalVariable(name: "__result", scope: !1472, file: !3, line: 186, type: !37)
!1474 = !DILocalVariable(name: "__s1_len", scope: !1475, file: !3, line: 187, type: !26)
!1475 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 187, column: 12)
!1476 = !DILocalVariable(name: "__s2_len", scope: !1475, file: !3, line: 187, type: !26)
!1477 = !DILocalVariable(name: "__s2", scope: !1478, file: !3, line: 187, type: !31)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 187, column: 12)
!1479 = !DILocalVariable(name: "__result", scope: !1478, file: !3, line: 187, type: !37)
!1480 = !DILocalVariable(name: "__s1_len", scope: !1481, file: !3, line: 188, type: !26)
!1481 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 188, column: 12)
!1482 = !DILocalVariable(name: "__s2_len", scope: !1481, file: !3, line: 188, type: !26)
!1483 = !DILocalVariable(name: "__s2", scope: !1484, file: !3, line: 188, type: !31)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 188, column: 12)
!1485 = !DILocalVariable(name: "__result", scope: !1484, file: !3, line: 188, type: !37)
!1486 = !DILocalVariable(name: "__s1_len", scope: !1487, file: !3, line: 188, type: !26)
!1487 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 188, column: 34)
!1488 = !DILocalVariable(name: "__s2_len", scope: !1487, file: !3, line: 188, type: !26)
!1489 = !DILocalVariable(name: "__s2", scope: !1490, file: !3, line: 188, type: !31)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 188, column: 34)
!1491 = !DILocalVariable(name: "__result", scope: !1490, file: !3, line: 188, type: !37)
!1492 = !DILocalVariable(name: "__s1_len", scope: !1493, file: !3, line: 188, type: !26)
!1493 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 188, column: 56)
!1494 = !DILocalVariable(name: "__s2_len", scope: !1493, file: !3, line: 188, type: !26)
!1495 = !DILocalVariable(name: "__s2", scope: !1496, file: !3, line: 188, type: !31)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 188, column: 56)
!1497 = !DILocalVariable(name: "__result", scope: !1496, file: !3, line: 188, type: !37)
!1498 = !DILocalVariable(name: "__s1_len", scope: !1499, file: !3, line: 189, type: !26)
!1499 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 189, column: 12)
!1500 = !DILocalVariable(name: "__s2_len", scope: !1499, file: !3, line: 189, type: !26)
!1501 = !DILocalVariable(name: "__s2", scope: !1502, file: !3, line: 189, type: !31)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 189, column: 12)
!1503 = !DILocalVariable(name: "__result", scope: !1502, file: !3, line: 189, type: !37)
!1504 = !DILocalVariable(name: "__s1_len", scope: !1505, file: !3, line: 189, type: !26)
!1505 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 189, column: 34)
!1506 = !DILocalVariable(name: "__s2_len", scope: !1505, file: !3, line: 189, type: !26)
!1507 = !DILocalVariable(name: "__s2", scope: !1508, file: !3, line: 189, type: !31)
!1508 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 189, column: 34)
!1509 = !DILocalVariable(name: "__result", scope: !1508, file: !3, line: 189, type: !37)
!1510 = !DILocalVariable(name: "__s1_len", scope: !1511, file: !3, line: 189, type: !26)
!1511 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 189, column: 56)
!1512 = !DILocalVariable(name: "__s2_len", scope: !1511, file: !3, line: 189, type: !26)
!1513 = !DILocalVariable(name: "__s2", scope: !1514, file: !3, line: 189, type: !31)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 189, column: 56)
!1515 = !DILocalVariable(name: "__result", scope: !1514, file: !3, line: 189, type: !37)
!1516 = !DILocalVariable(name: "__s1_len", scope: !1517, file: !3, line: 190, type: !26)
!1517 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 190, column: 12)
!1518 = !DILocalVariable(name: "__s2_len", scope: !1517, file: !3, line: 190, type: !26)
!1519 = !DILocalVariable(name: "__s2", scope: !1520, file: !3, line: 190, type: !31)
!1520 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 190, column: 12)
!1521 = !DILocalVariable(name: "__result", scope: !1520, file: !3, line: 190, type: !37)
!1522 = !DILocalVariable(name: "__s1_len", scope: !1523, file: !3, line: 190, type: !26)
!1523 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 190, column: 34)
!1524 = !DILocalVariable(name: "__s2_len", scope: !1523, file: !3, line: 190, type: !26)
!1525 = !DILocalVariable(name: "__s2", scope: !1526, file: !3, line: 190, type: !31)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 190, column: 34)
!1527 = !DILocalVariable(name: "__result", scope: !1526, file: !3, line: 190, type: !37)
!1528 = !DILocation(line: 184, column: 20, scope: !1453)
!1529 = !DILocation(line: 186, column: 12, scope: !1457)
!1530 = !DILocation(line: 186, column: 12, scope: !1460)
!1531 = !DILocation(line: 186, column: 12, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1460, file: !3, discriminator: 2)
!1533 = !DILocation(line: 186, column: 12, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1535, file: !3, discriminator: 3)
!1535 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 186, column: 12)
!1536 = !DILocation(line: 186, column: 12, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1535, file: !3, discriminator: 2)
!1538 = !DILocation(line: 186, column: 12, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !3, discriminator: 4)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 186, column: 12)
!1541 = !DILocation(line: 186, column: 12, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1453, file: !3, discriminator: 13)
!1543 = !DILocation(line: 186, column: 30, scope: !1542)
!1544 = !DILocation(line: 186, column: 34, scope: !1463)
!1545 = !DILocation(line: 186, column: 34, scope: !1466)
!1546 = !DILocation(line: 186, column: 34, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1548, file: !3, discriminator: 17)
!1548 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 186, column: 34)
!1549 = !DILocation(line: 186, column: 34, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1548, file: !3, discriminator: 16)
!1551 = !DILocation(line: 186, column: 34, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !3, discriminator: 18)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 186, column: 34)
!1554 = !DILocation(line: 186, column: 34, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1556, file: !3, discriminator: 19)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 186, column: 34)
!1557 = !DILocation(line: 186, column: 34, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1556, file: !3, discriminator: 18)
!1559 = !DILocation(line: 186, column: 34, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1561, file: !3, discriminator: 20)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 186, column: 34)
!1562 = !DILocation(line: 186, column: 34, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1453, file: !3, discriminator: 27)
!1564 = !DILocation(line: 186, column: 52, scope: !1563)
!1565 = !DILocation(line: 186, column: 56, scope: !1469)
!1566 = !DILocation(line: 186, column: 56, scope: !1472)
!1567 = !DILocation(line: 186, column: 56, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1569, file: !3, discriminator: 30)
!1569 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 186, column: 56)
!1570 = !DILocation(line: 186, column: 56, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !3, discriminator: 32)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 186, column: 56)
!1573 = !DILocation(line: 186, column: 56, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1575, file: !3, discriminator: 33)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 186, column: 56)
!1576 = !DILocation(line: 186, column: 56, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1575, file: !3, discriminator: 32)
!1578 = !DILocation(line: 186, column: 56, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1580, file: !3, discriminator: 34)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 186, column: 56)
!1581 = !DILocation(line: 186, column: 56, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1453, file: !3, discriminator: 41)
!1583 = !DILocation(line: 186, column: 73, scope: !1582)
!1584 = !DILocation(line: 187, column: 12, scope: !1475)
!1585 = !DILocation(line: 187, column: 12, scope: !1478)
!1586 = !DILocation(line: 187, column: 12, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1478, file: !3, discriminator: 2)
!1588 = !DILocation(line: 187, column: 12, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1590, file: !3, discriminator: 3)
!1590 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 187, column: 12)
!1591 = !DILocation(line: 187, column: 12, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1590, file: !3, discriminator: 2)
!1593 = !DILocation(line: 187, column: 12, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1595, file: !3, discriminator: 4)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 187, column: 12)
!1596 = !DILocation(line: 187, column: 12, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1598, file: !3, discriminator: 5)
!1598 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 187, column: 12)
!1599 = !DILocation(line: 187, column: 12, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1598, file: !3, discriminator: 4)
!1601 = !DILocation(line: 187, column: 12, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1603, file: !3, discriminator: 6)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 187, column: 12)
!1604 = !DILocation(line: 187, column: 12, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1606, file: !3, discriminator: 7)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 187, column: 12)
!1607 = !DILocation(line: 187, column: 12, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1606, file: !3, discriminator: 6)
!1609 = !DILocation(line: 187, column: 12, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1606, file: !3, discriminator: 8)
!1611 = !DILocation(line: 187, column: 12, scope: !1542)
!1612 = !DILocation(line: 187, column: 32, scope: !1542)
!1613 = !DILocation(line: 188, column: 12, scope: !1481)
!1614 = !DILocation(line: 188, column: 12, scope: !1484)
!1615 = !DILocation(line: 188, column: 12, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1617, file: !3, discriminator: 2)
!1617 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 188, column: 12)
!1618 = !DILocation(line: 188, column: 12, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1620, file: !3, discriminator: 4)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 188, column: 12)
!1621 = !DILocation(line: 188, column: 12, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !3, discriminator: 5)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 188, column: 12)
!1624 = !DILocation(line: 188, column: 12, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1623, file: !3, discriminator: 4)
!1626 = !DILocation(line: 188, column: 12, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1628, file: !3, discriminator: 6)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 188, column: 12)
!1629 = !DILocation(line: 188, column: 12, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !3, discriminator: 7)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 188, column: 12)
!1632 = !DILocation(line: 188, column: 12, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1631, file: !3, discriminator: 6)
!1634 = !DILocation(line: 188, column: 12, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1631, file: !3, discriminator: 8)
!1636 = !DILocation(line: 188, column: 12, scope: !1542)
!1637 = !DILocation(line: 188, column: 30, scope: !1542)
!1638 = !DILocation(line: 188, column: 34, scope: !1487)
!1639 = !DILocation(line: 188, column: 34, scope: !1490)
!1640 = !DILocation(line: 188, column: 34, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1642, file: !3, discriminator: 16)
!1642 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 188, column: 34)
!1643 = !DILocation(line: 188, column: 34, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1645, file: !3, discriminator: 18)
!1645 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 188, column: 34)
!1646 = !DILocation(line: 188, column: 34, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !3, discriminator: 19)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 188, column: 34)
!1649 = !DILocation(line: 188, column: 34, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1648, file: !3, discriminator: 18)
!1651 = !DILocation(line: 188, column: 34, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1653, file: !3, discriminator: 20)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 188, column: 34)
!1654 = !DILocation(line: 188, column: 34, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1656, file: !3, discriminator: 21)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 188, column: 34)
!1657 = !DILocation(line: 188, column: 34, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1656, file: !3, discriminator: 20)
!1659 = !DILocation(line: 188, column: 34, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1656, file: !3, discriminator: 22)
!1661 = !DILocation(line: 188, column: 34, scope: !1563)
!1662 = !DILocation(line: 188, column: 52, scope: !1563)
!1663 = !DILocation(line: 188, column: 56, scope: !1493)
!1664 = !DILocation(line: 188, column: 56, scope: !1496)
!1665 = !DILocation(line: 188, column: 56, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1667, file: !3, discriminator: 32)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 188, column: 56)
!1668 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 188, column: 56)
!1669 = !DILocation(line: 188, column: 56, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1671, file: !3, discriminator: 33)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 188, column: 56)
!1672 = !DILocation(line: 188, column: 56, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1671, file: !3, discriminator: 32)
!1674 = !DILocation(line: 188, column: 56, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1676, file: !3, discriminator: 34)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 188, column: 56)
!1677 = !DILocation(line: 188, column: 56, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1679, file: !3, discriminator: 35)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 188, column: 56)
!1680 = !DILocation(line: 188, column: 56, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1679, file: !3, discriminator: 34)
!1682 = !DILocation(line: 188, column: 56, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1679, file: !3, discriminator: 36)
!1684 = !DILocation(line: 188, column: 56, scope: !1582)
!1685 = !DILocation(line: 188, column: 74, scope: !1582)
!1686 = !DILocation(line: 189, column: 12, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1688, file: !3, discriminator: 4)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 189, column: 12)
!1689 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 189, column: 12)
!1690 = !DILocation(line: 189, column: 12, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1692, file: !3, discriminator: 5)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 189, column: 12)
!1693 = !DILocation(line: 189, column: 12, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1692, file: !3, discriminator: 4)
!1695 = !DILocation(line: 189, column: 12, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !3, discriminator: 6)
!1697 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 189, column: 12)
!1698 = !DILocation(line: 189, column: 12, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1700, file: !3, discriminator: 7)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 189, column: 12)
!1701 = !DILocation(line: 189, column: 12, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1700, file: !3, discriminator: 6)
!1703 = !DILocation(line: 189, column: 12, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1700, file: !3, discriminator: 8)
!1705 = !DILocation(line: 189, column: 12, scope: !1542)
!1706 = !DILocation(line: 189, column: 30, scope: !1542)
!1707 = !DILocation(line: 189, column: 34, scope: !1505)
!1708 = !DILocation(line: 189, column: 34, scope: !1508)
!1709 = !DILocation(line: 189, column: 34, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !3, discriminator: 17)
!1711 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 189, column: 34)
!1712 = !DILocation(line: 189, column: 34, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1711, file: !3, discriminator: 16)
!1714 = !DILocation(line: 189, column: 34, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1716, file: !3, discriminator: 18)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 189, column: 34)
!1717 = !DILocation(line: 189, column: 34, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !3, discriminator: 19)
!1719 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 189, column: 34)
!1720 = !DILocation(line: 189, column: 34, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1719, file: !3, discriminator: 18)
!1722 = !DILocation(line: 189, column: 34, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1724, file: !3, discriminator: 20)
!1724 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 189, column: 34)
!1725 = !DILocation(line: 189, column: 34, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !3, discriminator: 21)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 189, column: 34)
!1728 = !DILocation(line: 189, column: 34, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1727, file: !3, discriminator: 20)
!1730 = !DILocation(line: 189, column: 34, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1727, file: !3, discriminator: 22)
!1732 = !DILocation(line: 189, column: 34, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1505, file: !3, discriminator: 25)
!1734 = !DILocation(line: 189, column: 52, scope: !1563)
!1735 = !DILocation(line: 189, column: 56, scope: !1511)
!1736 = !DILocation(line: 189, column: 56, scope: !1514)
!1737 = !DILocation(line: 189, column: 56, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1739, file: !3, discriminator: 32)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 189, column: 56)
!1740 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 189, column: 56)
!1741 = !DILocation(line: 189, column: 56, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1743, file: !3, discriminator: 33)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 189, column: 56)
!1744 = !DILocation(line: 189, column: 56, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1743, file: !3, discriminator: 32)
!1746 = !DILocation(line: 189, column: 56, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1748, file: !3, discriminator: 34)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 189, column: 56)
!1749 = !DILocation(line: 189, column: 56, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1751, file: !3, discriminator: 35)
!1751 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 189, column: 56)
!1752 = !DILocation(line: 189, column: 56, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1751, file: !3, discriminator: 34)
!1754 = !DILocation(line: 189, column: 56, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1751, file: !3, discriminator: 36)
!1756 = !DILocation(line: 189, column: 56, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1511, file: !3, discriminator: 39)
!1758 = !DILocation(line: 189, column: 74, scope: !1582)
!1759 = !DILocation(line: 190, column: 12, scope: !1517)
!1760 = !DILocation(line: 190, column: 12, scope: !1520)
!1761 = !DILocation(line: 190, column: 12, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !3, discriminator: 4)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 190, column: 12)
!1764 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 190, column: 12)
!1765 = !DILocation(line: 190, column: 12, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1767, file: !3, discriminator: 5)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 190, column: 12)
!1768 = !DILocation(line: 190, column: 12, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1767, file: !3, discriminator: 4)
!1770 = !DILocation(line: 190, column: 12, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1772, file: !3, discriminator: 6)
!1772 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 190, column: 12)
!1773 = !DILocation(line: 190, column: 12, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1775, file: !3, discriminator: 7)
!1775 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 190, column: 12)
!1776 = !DILocation(line: 190, column: 12, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1775, file: !3, discriminator: 6)
!1778 = !DILocation(line: 190, column: 12, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1775, file: !3, discriminator: 8)
!1780 = !DILocation(line: 190, column: 12, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1517, file: !3, discriminator: 11)
!1782 = !DILocation(line: 190, column: 30, scope: !1542)
!1783 = !DILocation(line: 190, column: 34, scope: !1523)
!1784 = !DILocation(line: 190, column: 34, scope: !1526)
!1785 = !DILocation(line: 190, column: 34, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1787, file: !3, discriminator: 16)
!1787 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 190, column: 34)
!1788 = !DILocation(line: 190, column: 34, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1790, file: !3, discriminator: 18)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 190, column: 34)
!1791 = !DILocation(line: 190, column: 34, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1793, file: !3, discriminator: 19)
!1793 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 190, column: 34)
!1794 = !DILocation(line: 190, column: 34, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1793, file: !3, discriminator: 18)
!1796 = !DILocation(line: 190, column: 34, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1798, file: !3, discriminator: 20)
!1798 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 190, column: 34)
!1799 = !DILocation(line: 190, column: 34, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !3, discriminator: 21)
!1801 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 190, column: 34)
!1802 = !DILocation(line: 190, column: 34, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1801, file: !3, discriminator: 20)
!1804 = !DILocation(line: 190, column: 34, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1801, file: !3, discriminator: 22)
!1806 = !DILocation(line: 190, column: 34, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1523, file: !3, discriminator: 25)
!1808 = !DILocation(line: 190, column: 30, scope: !1563)
!1809 = !DILocation(line: 186, column: 3, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1453, file: !3, discriminator: 42)
!1811 = distinct !DISubprogram(name: "binary_operator", scope: !3, file: !3, line: 277, type: !1812, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!87, !87}
!1814 = !{!1815, !1816, !1817, !1856, !1857, !1858, !1861, !1862, !1864, !1865, !1873, !1874, !1875, !1876, !1877, !1878, !1882, !1883, !1884, !1885, !1888, !1889, !1890, !1891, !1894, !1896, !1897, !1900, !1901, !1903, !1904, !1906, !1908}
!1815 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1811, file: !3, line: 277, type: !87)
!1816 = !DILocalVariable(name: "op", scope: !1811, file: !3, line: 279, type: !37)
!1817 = !DILocalVariable(name: "stat_buf", scope: !1811, file: !3, line: 280, type: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1819, line: 46, size: 1152, elements: !1820)
!1819 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1820 = !{!1821, !1823, !1825, !1827, !1829, !1831, !1833, !1834, !1835, !1838, !1840, !1842, !1850, !1851, !1852}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1818, file: !1819, line: 48, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !523, line: 133, baseType: !28)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1818, file: !1819, line: 53, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !523, line: 136, baseType: !28)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1818, file: !1819, line: 61, baseType: !1826, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !523, line: 139, baseType: !28)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1818, file: !1819, line: 62, baseType: !1828, size: 32, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !523, line: 138, baseType: !39)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1818, file: !1819, line: 64, baseType: !1830, size: 32, offset: 224)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !523, line: 134, baseType: !39)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1818, file: !1819, line: 65, baseType: !1832, size: 32, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !523, line: 135, baseType: !39)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1818, file: !1819, line: 67, baseType: !37, size: 32, offset: 288)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1818, file: !1819, line: 69, baseType: !1822, size: 64, offset: 320)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1818, file: !1819, line: 74, baseType: !1836, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !523, line: 140, baseType: !1837)
!1837 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1818, file: !1819, line: 78, baseType: !1839, size: 64, offset: 448)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !523, line: 162, baseType: !1837)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1818, file: !1819, line: 80, baseType: !1841, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !523, line: 167, baseType: !1837)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1818, file: !1819, line: 91, baseType: !1843, size: 128, offset: 576)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1844, line: 8, size: 128, elements: !1845)
!1844 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1845 = !{!1846, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1843, file: !1844, line: 10, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !523, line: 148, baseType: !1837)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1843, file: !1844, line: 11, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !523, line: 184, baseType: !1837)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1818, file: !1819, line: 92, baseType: !1843, size: 128, offset: 704)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1818, file: !1819, line: 93, baseType: !1843, size: 128, offset: 832)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1818, file: !1819, line: 106, baseType: !1853, size: 192, offset: 960)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1849, size: 192, elements: !1854)
!1854 = !{!1855}
!1855 = !DISubrange(count: 3)
!1856 = !DILocalVariable(name: "stat_spare", scope: !1811, file: !3, line: 280, type: !1818)
!1857 = !DILocalVariable(name: "r_is_l", scope: !1811, file: !3, line: 282, type: !87)
!1858 = !DILocalVariable(name: "__s1_len", scope: !1859, file: !3, line: 288, type: !26)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 288, column: 26)
!1860 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 288, column: 7)
!1861 = !DILocalVariable(name: "__s2_len", scope: !1859, file: !3, line: 288, type: !26)
!1862 = !DILocalVariable(name: "__s2", scope: !1863, file: !3, line: 288, type: !31)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 288, column: 26)
!1864 = !DILocalVariable(name: "__result", scope: !1863, file: !3, line: 288, type: !37)
!1865 = !DILocalVariable(name: "lbuf", scope: !1866, file: !3, line: 305, type: !1870)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 304, column: 9)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 299, column: 11)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 297, column: 5)
!1869 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 296, column: 7)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 168, elements: !1871)
!1871 = !{!1872}
!1872 = !DISubrange(count: 21)
!1873 = !DILocalVariable(name: "rbuf", scope: !1866, file: !3, line: 306, type: !1870)
!1874 = !DILocalVariable(name: "l", scope: !1866, file: !3, line: 307, type: !34)
!1875 = !DILocalVariable(name: "r", scope: !1866, file: !3, line: 310, type: !34)
!1876 = !DILocalVariable(name: "cmp", scope: !1866, file: !3, line: 313, type: !37)
!1877 = !DILocalVariable(name: "xe_operator", scope: !1866, file: !3, line: 314, type: !87)
!1878 = !DILocalVariable(name: "lt", scope: !1879, file: !3, line: 330, type: !1843)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 328, column: 13)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 327, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 322, column: 9)
!1882 = !DILocalVariable(name: "rt", scope: !1879, file: !3, line: 330, type: !1843)
!1883 = !DILocalVariable(name: "le", scope: !1879, file: !3, line: 331, type: !87)
!1884 = !DILocalVariable(name: "re", scope: !1879, file: !3, line: 331, type: !87)
!1885 = !DILocalVariable(name: "lt", scope: !1886, file: !3, line: 359, type: !1843)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 357, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 356, column: 15)
!1888 = !DILocalVariable(name: "rt", scope: !1886, file: !3, line: 359, type: !1843)
!1889 = !DILocalVariable(name: "le", scope: !1886, file: !3, line: 360, type: !87)
!1890 = !DILocalVariable(name: "re", scope: !1886, file: !3, line: 360, type: !87)
!1891 = !DILocalVariable(name: "value", scope: !1892, file: !3, line: 378, type: !87)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 377, column: 5)
!1893 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 375, column: 7)
!1894 = !DILocalVariable(name: "__s1_len", scope: !1895, file: !3, line: 378, type: !26)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 378, column: 20)
!1896 = !DILocalVariable(name: "__s2_len", scope: !1895, file: !3, line: 378, type: !26)
!1897 = !DILocalVariable(name: "__s1_len", scope: !1898, file: !3, line: 383, type: !26)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 383, column: 7)
!1899 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 383, column: 7)
!1900 = !DILocalVariable(name: "__s2_len", scope: !1898, file: !3, line: 383, type: !26)
!1901 = !DILocalVariable(name: "__s2", scope: !1902, file: !3, line: 383, type: !31)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 383, column: 7)
!1903 = !DILocalVariable(name: "__result", scope: !1902, file: !3, line: 383, type: !37)
!1904 = !DILocalVariable(name: "value", scope: !1905, file: !3, line: 385, type: !87)
!1905 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 384, column: 5)
!1906 = !DILocalVariable(name: "__s1_len", scope: !1907, file: !3, line: 385, type: !26)
!1907 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 385, column: 21)
!1908 = !DILocalVariable(name: "__s2_len", scope: !1907, file: !3, line: 385, type: !26)
!1909 = !DILocation(line: 277, column: 23, scope: !1811)
!1910 = !DILocation(line: 280, column: 3, scope: !1811)
!1911 = !DILocation(line: 284, column: 7, scope: !1811)
!1912 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 285, column: 5, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 284, column: 7)
!1915 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1913)
!1916 = !DILocation(line: 285, column: 5, scope: !1914)
!1917 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 291, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 289, column: 5)
!1920 = !DILocation(line: 286, column: 12, scope: !1811)
!1921 = !DILocation(line: 279, column: 7, scope: !1811)
!1922 = !DILocation(line: 288, column: 13, scope: !1860)
!1923 = !DILocation(line: 288, column: 18, scope: !1860)
!1924 = !DILocation(line: 288, column: 11, scope: !1860)
!1925 = !DILocation(line: 288, column: 23, scope: !1860)
!1926 = !DILocation(line: 288, column: 26, scope: !1859)
!1927 = !DILocation(line: 288, column: 26, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1863, file: !3, discriminator: 3)
!1929 = !DILocation(line: 288, column: 26, scope: !1863)
!1930 = !DILocation(line: 288, column: 26, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1932, file: !3, discriminator: 4)
!1932 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 288, column: 26)
!1933 = !DILocation(line: 288, column: 26, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1932, file: !3, discriminator: 3)
!1935 = !DILocation(line: 288, column: 26, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1937, file: !3, discriminator: 5)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 288, column: 26)
!1938 = !DILocation(line: 288, column: 26, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1940, file: !3, discriminator: 6)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 288, column: 26)
!1941 = !DILocation(line: 288, column: 26, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1940, file: !3, discriminator: 5)
!1943 = !DILocation(line: 288, column: 26, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1945, file: !3, discriminator: 7)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 288, column: 26)
!1946 = !DILocation(line: 288, column: 26, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1860, file: !3, discriminator: 14)
!1948 = !DILocation(line: 288, column: 7, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1811, file: !3, discriminator: 14)
!1950 = !DILocation(line: 282, column: 8, scope: !1811)
!1951 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !1918)
!1952 = !DILocation(line: 292, column: 5, scope: !1919)
!1953 = !DILocation(line: 385, column: 21, scope: !1907)
!1954 = !DILocation(line: 296, column: 7, scope: !1869)
!1955 = !DILocation(line: 296, column: 7, scope: !1811)
!1956 = !DILocation(line: 299, column: 14, scope: !1867)
!1957 = !DILocation(line: 299, column: 33, scope: !1867)
!1958 = !DILocation(line: 300, column: 17, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1867, file: !3, discriminator: 1)
!1960 = !DILocation(line: 300, column: 36, scope: !1959)
!1961 = !DILocation(line: 301, column: 38, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1867, file: !3, discriminator: 2)
!1963 = !DILocation(line: 301, column: 50, scope: !1962)
!1964 = !DILocation(line: 302, column: 12, scope: !1867)
!1965 = !DILocation(line: 302, column: 38, scope: !1962)
!1966 = !DILocation(line: 302, column: 50, scope: !1962)
!1967 = !DILocation(line: 303, column: 11, scope: !1867)
!1968 = !DILocation(line: 303, column: 15, scope: !1959)
!1969 = !DILocation(line: 299, column: 11, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1868, file: !3, discriminator: 2)
!1971 = !DILocation(line: 305, column: 11, scope: !1866)
!1972 = !DILocation(line: 305, column: 16, scope: !1866)
!1973 = !DILocation(line: 306, column: 11, scope: !1866)
!1974 = !DILocation(line: 306, column: 16, scope: !1866)
!1975 = !DILocation(line: 307, column: 28, scope: !1866)
!1976 = !DILocation(line: 308, column: 41, scope: !1866)
!1977 = !DILocation(line: 308, column: 30, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1866, file: !3, discriminator: 1)
!1979 = !DILocation(line: 307, column: 28, scope: !1978)
!1980 = !DILocation(line: 309, column: 30, scope: !1866)
!1981 = !DILocation(line: 307, column: 28, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1866, file: !3, discriminator: 2)
!1983 = !DILocation(line: 307, column: 28, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !1866, file: !3, discriminator: 3)
!1985 = !DILocation(line: 307, column: 23, scope: !1866)
!1986 = !DILocation(line: 310, column: 28, scope: !1866)
!1987 = !DILocation(line: 311, column: 57, scope: !1866)
!1988 = !DILocation(line: 311, column: 49, scope: !1866)
!1989 = !DILocation(line: 311, column: 41, scope: !1866)
!1990 = !DILocation(line: 311, column: 30, scope: !1978)
!1991 = !DILocation(line: 310, column: 28, scope: !1978)
!1992 = !DILocation(line: 312, column: 48, scope: !1866)
!1993 = !DILocation(line: 312, column: 40, scope: !1866)
!1994 = !DILocation(line: 312, column: 30, scope: !1866)
!1995 = !DILocation(line: 310, column: 28, scope: !1982)
!1996 = !DILocation(line: 310, column: 28, scope: !1984)
!1997 = !DILocation(line: 310, column: 23, scope: !1866)
!1998 = !DILocation(line: 313, column: 21, scope: !1866)
!1999 = !DILocation(line: 313, column: 15, scope: !1866)
!2000 = !DILocation(line: 314, column: 31, scope: !1866)
!2001 = !DILocation(line: 314, column: 43, scope: !1866)
!2002 = !DILocation(line: 315, column: 15, scope: !1866)
!2003 = !DILocation(line: 316, column: 19, scope: !1866)
!2004 = !DILocation(line: 316, column: 46, scope: !1978)
!2005 = !DILocation(line: 316, column: 44, scope: !1978)
!2006 = !DILocation(line: 316, column: 19, scope: !1978)
!2007 = !DILocation(line: 317, column: 48, scope: !1978)
!2008 = !DILocation(line: 317, column: 46, scope: !1978)
!2009 = !DILocation(line: 317, column: 21, scope: !1978)
!2010 = !DILocation(line: 318, column: 26, scope: !1866)
!2011 = !DILocation(line: 318, column: 32, scope: !1866)
!2012 = !DILocation(line: 317, column: 21, scope: !1982)
!2013 = !DILocation(line: 319, column: 9, scope: !1867)
!2014 = !DILocation(line: 321, column: 15, scope: !1868)
!2015 = !DILocation(line: 321, column: 7, scope: !1868)
!2016 = !DILocation(line: 327, column: 15, scope: !1880)
!2017 = !DILocation(line: 327, column: 27, scope: !1880)
!2018 = !DILocation(line: 327, column: 34, scope: !1880)
!2019 = !DILocation(line: 327, column: 38, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !1880, file: !3, discriminator: 1)
!2021 = !DILocation(line: 327, column: 15, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !1881, file: !3, discriminator: 1)
!2023 = !DILocation(line: 332, column: 19, scope: !1879)
!2024 = !DILocation(line: 333, column: 26, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 333, column: 19)
!2026 = !DILocation(line: 334, column: 36, scope: !2025)
!2027 = !DILocation(line: 334, column: 17, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2025, file: !3, discriminator: 1)
!2029 = !DILocation(line: 334, column: 17, scope: !2025)
!2030 = !DILocation(line: 335, column: 31, scope: !1879)
!2031 = !DIExpression(DW_OP_deref)
!2032 = !DILocation(line: 330, column: 31, scope: !1879)
!2033 = !DILocalVariable(name: "filename", arg: 1, scope: !2034, file: !3, line: 169, type: !34)
!2034 = distinct !DISubprogram(name: "get_mtime", scope: !3, file: !3, line: 169, type: !2035, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2038)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!87, !34, !2037}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!2038 = !{!2033, !2039, !2040, !2041}
!2039 = !DILocalVariable(name: "mtime", arg: 2, scope: !2034, file: !3, line: 169, type: !2037)
!2040 = !DILocalVariable(name: "finfo", scope: !2034, file: !3, line: 171, type: !1818)
!2041 = !DILocalVariable(name: "ok", scope: !2034, file: !3, line: 172, type: !87)
!2042 = !DILocation(line: 169, column: 24, scope: !2034, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 335, column: 20, scope: !1879)
!2044 = !DILocation(line: 169, column: 51, scope: !2034, inlinedAt: !2043)
!2045 = !DILocation(line: 171, column: 3, scope: !2034, inlinedAt: !2043)
!2046 = !DILocation(line: 171, column: 15, scope: !2034, inlinedAt: !2043)
!2047 = !DILocalVariable(name: "__path", arg: 1, scope: !2048, file: !2049, line: 449, type: !34)
!2048 = distinct !DISubprogram(name: "stat", scope: !2049, file: !2049, line: 449, type: !2050, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2053)
!2049 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!37, !34, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!2053 = !{!2047, !2054}
!2054 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2048, file: !2049, line: 449, type: !2052)
!2055 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 172, column: 14, scope: !2034, inlinedAt: !2043)
!2057 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2056)
!2058 = !DILocation(line: 172, column: 38, scope: !2034, inlinedAt: !2043)
!2059 = !DILocalVariable(name: "st", arg: 1, scope: !2060, file: !2061, line: 140, type: !2064)
!2060 = distinct !DISubprogram(name: "get_stat_mtime", scope: !2061, file: !2061, line: 140, type: !2062, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2066)
!2061 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!1843, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1818)
!2066 = !{!2059}
!2067 = !DILocation(line: 140, column: 36, scope: !2060, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 178, column: 14, scope: !2069, inlinedAt: !2043)
!2069 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 177, column: 7)
!2070 = !DILocation(line: 143, column: 10, scope: !2060, inlinedAt: !2068)
!2071 = !DILocation(line: 180, column: 1, scope: !2034, inlinedAt: !2043)
!2072 = !DILocation(line: 336, column: 31, scope: !1879)
!2073 = !DILocation(line: 336, column: 39, scope: !1879)
!2074 = !DILocation(line: 330, column: 35, scope: !1879)
!2075 = !DILocation(line: 169, column: 24, scope: !2034, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 336, column: 20, scope: !1879)
!2077 = !DILocation(line: 169, column: 51, scope: !2034, inlinedAt: !2076)
!2078 = !DILocation(line: 171, column: 3, scope: !2034, inlinedAt: !2076)
!2079 = !DILocation(line: 171, column: 15, scope: !2034, inlinedAt: !2076)
!2080 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 172, column: 14, scope: !2034, inlinedAt: !2076)
!2082 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2081)
!2083 = !DILocation(line: 172, column: 38, scope: !2034, inlinedAt: !2076)
!2084 = !DILocation(line: 177, column: 7, scope: !2034, inlinedAt: !2076)
!2085 = !DILocation(line: 180, column: 1, scope: !2034, inlinedAt: !2076)
!2086 = !DILocation(line: 337, column: 25, scope: !1879)
!2087 = !DILocation(line: 140, column: 36, scope: !2060, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 178, column: 14, scope: !2069, inlinedAt: !2076)
!2089 = !DILocation(line: 143, column: 10, scope: !2060, inlinedAt: !2088)
!2090 = !DILocation(line: 80, column: 20, scope: !2091, inlinedAt: !2098)
!2091 = distinct !DISubprogram(name: "timespec_cmp", scope: !2092, file: !2092, line: 78, type: !2093, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2095)
!2092 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!37, !1843, !1843}
!2095 = !{!2096, !2097}
!2096 = !DILocalVariable(name: "a", arg: 1, scope: !2091, file: !2092, line: 78, type: !1843)
!2097 = !DILocalVariable(name: "b", arg: 2, scope: !2091, file: !2092, line: 78, type: !1843)
!2098 = distinct !DILocation(line: 337, column: 36, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !1879, file: !3, discriminator: 2)
!2100 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!2101 = !DILocation(line: 78, column: 31, scope: !2091, inlinedAt: !2098)
!2102 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!2103 = !DILocation(line: 78, column: 50, scope: !2091, inlinedAt: !2098)
!2104 = !DILocation(line: 81, column: 22, scope: !2091, inlinedAt: !2098)
!2105 = !DILocation(line: 81, column: 13, scope: !2091, inlinedAt: !2098)
!2106 = !DILocation(line: 82, column: 30, scope: !2091, inlinedAt: !2098)
!2107 = !DILocation(line: 82, column: 13, scope: !2091, inlinedAt: !2098)
!2108 = !DILocation(line: 81, column: 13, scope: !2109, inlinedAt: !2098)
!2109 = !DILexicalBlockFile(scope: !2091, file: !2092, discriminator: 2)
!2110 = !DILocation(line: 342, column: 15, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 342, column: 15)
!2112 = !DILocation(line: 342, column: 27, scope: !2111)
!2113 = !DILocation(line: 342, column: 34, scope: !2111)
!2114 = !DILocation(line: 342, column: 38, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2111, file: !3, discriminator: 1)
!2116 = !DILocation(line: 342, column: 15, scope: !2022)
!2117 = !DILocation(line: 345, column: 19, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 343, column: 13)
!2119 = !DILocation(line: 346, column: 26, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 346, column: 19)
!2121 = !DILocation(line: 347, column: 36, scope: !2120)
!2122 = !DILocation(line: 347, column: 17, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2120, file: !3, discriminator: 1)
!2124 = !DILocation(line: 347, column: 17, scope: !2120)
!2125 = !DILocation(line: 348, column: 29, scope: !2118)
!2126 = !DILocation(line: 280, column: 15, scope: !1811)
!2127 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 348, column: 23, scope: !2118)
!2129 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2128)
!2130 = !DILocation(line: 348, column: 54, scope: !2118)
!2131 = !DILocation(line: 349, column: 23, scope: !2118)
!2132 = !DILocation(line: 349, column: 32, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2118, file: !3, discriminator: 1)
!2134 = !DILocation(line: 349, column: 40, scope: !2133)
!2135 = !DILocation(line: 280, column: 25, scope: !1811)
!2136 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 349, column: 26, scope: !2133)
!2138 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2137)
!2139 = !DILocation(line: 349, column: 59, scope: !2133)
!2140 = !DILocation(line: 350, column: 23, scope: !2118)
!2141 = !DILocation(line: 350, column: 35, scope: !2133)
!2142 = !{!2143, !2144, i64 0}
!2143 = !{!"stat", !2144, i64 0, !2144, i64 8, !2144, i64 16, !677, i64 24, !677, i64 28, !677, i64 32, !677, i64 36, !2144, i64 40, !2144, i64 48, !2144, i64 56, !2144, i64 64, !2145, i64 72, !2145, i64 88, !2145, i64 104, !588, i64 120}
!2144 = !{!"long", !588, i64 0}
!2145 = !{!"timespec", !2144, i64 0, !2144, i64 8}
!2146 = !DILocation(line: 350, column: 56, scope: !2133)
!2147 = !DILocation(line: 350, column: 42, scope: !2133)
!2148 = !DILocation(line: 351, column: 23, scope: !2118)
!2149 = !DILocation(line: 351, column: 35, scope: !2133)
!2150 = !{!2143, !2144, i64 8}
!2151 = !DILocation(line: 351, column: 56, scope: !2133)
!2152 = !DILocation(line: 351, column: 42, scope: !2133)
!2153 = !DILocation(line: 356, column: 22, scope: !1887)
!2154 = !DILocation(line: 356, column: 19, scope: !1887)
!2155 = !DILocation(line: 356, column: 34, scope: !1887)
!2156 = !DILocation(line: 356, column: 47, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !1887, file: !3, discriminator: 1)
!2158 = !DILocation(line: 356, column: 44, scope: !2157)
!2159 = !DILocation(line: 356, column: 15, scope: !2022)
!2160 = !DILocation(line: 361, column: 19, scope: !1886)
!2161 = !DILocation(line: 362, column: 26, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 362, column: 19)
!2163 = !DILocation(line: 363, column: 36, scope: !2162)
!2164 = !DILocation(line: 363, column: 17, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2162, file: !3, discriminator: 1)
!2166 = !DILocation(line: 363, column: 17, scope: !2162)
!2167 = !DILocation(line: 364, column: 31, scope: !1886)
!2168 = !DILocation(line: 359, column: 31, scope: !1886)
!2169 = !DILocation(line: 169, column: 24, scope: !2034, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 364, column: 20, scope: !1886)
!2171 = !DILocation(line: 169, column: 51, scope: !2034, inlinedAt: !2170)
!2172 = !DILocation(line: 171, column: 3, scope: !2034, inlinedAt: !2170)
!2173 = !DILocation(line: 171, column: 15, scope: !2034, inlinedAt: !2170)
!2174 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 172, column: 14, scope: !2034, inlinedAt: !2170)
!2176 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2175)
!2177 = !DILocation(line: 140, column: 36, scope: !2060, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 178, column: 14, scope: !2069, inlinedAt: !2170)
!2179 = !DILocation(line: 143, column: 10, scope: !2060, inlinedAt: !2178)
!2180 = !DILocation(line: 180, column: 1, scope: !2034, inlinedAt: !2170)
!2181 = !DILocation(line: 365, column: 31, scope: !1886)
!2182 = !DILocation(line: 365, column: 39, scope: !1886)
!2183 = !DILocation(line: 359, column: 35, scope: !1886)
!2184 = !DILocation(line: 169, column: 24, scope: !2034, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 365, column: 20, scope: !1886)
!2186 = !DILocation(line: 169, column: 51, scope: !2034, inlinedAt: !2185)
!2187 = !DILocation(line: 171, column: 3, scope: !2034, inlinedAt: !2185)
!2188 = !DILocation(line: 171, column: 15, scope: !2034, inlinedAt: !2185)
!2189 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 172, column: 14, scope: !2034, inlinedAt: !2185)
!2191 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2190)
!2192 = !DILocation(line: 172, column: 38, scope: !2034, inlinedAt: !2185)
!2193 = !DILocation(line: 177, column: 7, scope: !2034, inlinedAt: !2185)
!2194 = !DILocation(line: 180, column: 1, scope: !2034, inlinedAt: !2185)
!2195 = !DILocation(line: 366, column: 25, scope: !1886)
!2196 = !DILocation(line: 140, column: 36, scope: !2060, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 178, column: 14, scope: !2069, inlinedAt: !2185)
!2198 = !DILocation(line: 143, column: 10, scope: !2060, inlinedAt: !2197)
!2199 = !DILocation(line: 80, column: 20, scope: !2091, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 366, column: 36, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !1886, file: !3, discriminator: 2)
!2202 = !DILocation(line: 78, column: 31, scope: !2091, inlinedAt: !2200)
!2203 = !DILocation(line: 78, column: 50, scope: !2091, inlinedAt: !2200)
!2204 = !DILocation(line: 81, column: 22, scope: !2091, inlinedAt: !2200)
!2205 = !DILocation(line: 81, column: 13, scope: !2091, inlinedAt: !2200)
!2206 = !DILocation(line: 82, column: 30, scope: !2091, inlinedAt: !2200)
!2207 = !DILocation(line: 82, column: 13, scope: !2091, inlinedAt: !2200)
!2208 = !DILocation(line: 81, column: 13, scope: !2109, inlinedAt: !2200)
!2209 = !DILocation(line: 372, column: 26, scope: !1868)
!2210 = !DILocation(line: 372, column: 67, scope: !1868)
!2211 = !DILocation(line: 372, column: 60, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !1868, file: !3, discriminator: 1)
!2213 = !DILocation(line: 372, column: 7, scope: !1970)
!2214 = !DILocation(line: 372, column: 7, scope: !1868)
!2215 = !DILocation(line: 376, column: 12, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !1893, file: !3, discriminator: 1)
!2217 = !DILocation(line: 376, column: 24, scope: !2216)
!2218 = !DILocation(line: 376, column: 53, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !1893, file: !3, discriminator: 3)
!2220 = !DILocation(line: 375, column: 7, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !1811, file: !3, discriminator: 1)
!2222 = !DILocation(line: 378, column: 20, scope: !1895)
!2223 = !DILocation(line: 378, column: 20, scope: !1892)
!2224 = !DILocation(line: 379, column: 11, scope: !1892)
!2225 = !DILocation(line: 383, column: 7, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2227, file: !3, discriminator: 4)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 383, column: 7)
!2228 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 383, column: 7)
!2229 = !DILocation(line: 383, column: 7, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2231, file: !3, discriminator: 5)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 383, column: 7)
!2232 = !DILocation(line: 383, column: 7, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2231, file: !3, discriminator: 4)
!2234 = !DILocation(line: 383, column: 7, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2236, file: !3, discriminator: 6)
!2236 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 383, column: 7)
!2237 = !DILocation(line: 383, column: 7, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !1898, file: !3, discriminator: 11)
!2239 = !DILocation(line: 383, column: 7, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !1811, file: !3, discriminator: 13)
!2241 = !DILocation(line: 385, column: 20, scope: !1905)
!2242 = !DILocation(line: 386, column: 11, scope: !1905)
!2243 = !DILocation(line: 391, column: 3, scope: !1811)
!2244 = !DILocation(line: 392, column: 1, scope: !1811)
!2245 = distinct !DISubprogram(name: "unary_operator", scope: !3, file: !3, line: 395, type: !733, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2246)
!2246 = !{!2247, !2248, !2253, !2254, !2257, !2258, !2260}
!2247 = !DILocalVariable(name: "stat_buf", scope: !2245, file: !3, line: 397, type: !1818)
!2248 = !DILocalVariable(name: "euid", scope: !2249, file: !3, line: 432, type: !2251)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 427, column: 7)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 400, column: 5)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !2252, line: 80, baseType: !1830)
!2252 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2253 = !DILocalVariable(name: "NO_UID", scope: !2249, file: !3, line: 433, type: !2251)
!2254 = !DILocalVariable(name: "egid", scope: !2255, file: !3, line: 443, type: !2256)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 438, column: 7)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !2252, line: 65, baseType: !1832)
!2257 = !DILocalVariable(name: "NO_GID", scope: !2255, file: !3, line: 444, type: !2256)
!2258 = !DILocalVariable(name: "fd", scope: !2259, file: !3, line: 510, type: !1837)
!2259 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 509, column: 7)
!2260 = !DILocalVariable(name: "arg", scope: !2259, file: !3, line: 511, type: !34)
!2261 = !DILocation(line: 397, column: 3, scope: !2245)
!2262 = !DILocation(line: 399, column: 11, scope: !2245)
!2263 = !DILocation(line: 399, column: 16, scope: !2245)
!2264 = !DILocation(line: 399, column: 3, scope: !2245)
!2265 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2268)
!2267 = distinct !DISubprogram(name: "unary_advance", scope: !3, file: !3, line: 114, type: !1235, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !82)
!2268 = distinct !DILocation(line: 411, column: 7, scope: !2250)
!2269 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2266)
!2270 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2266)
!2271 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2266)
!2272 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2266)
!2273 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2266)
!2274 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2268)
!2275 = !DILocation(line: 412, column: 20, scope: !2250)
!2276 = !DILocation(line: 397, column: 15, scope: !2245)
!2277 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 412, column: 14, scope: !2250)
!2279 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2278)
!2280 = !DILocation(line: 412, column: 46, scope: !2250)
!2281 = !DILocation(line: 412, column: 7, scope: !2250)
!2282 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 415, column: 7, scope: !2250)
!2285 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2283)
!2286 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2283)
!2287 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2283)
!2288 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2283)
!2289 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2283)
!2290 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2284)
!2291 = !DILocation(line: 416, column: 26, scope: !2250)
!2292 = !DILocation(line: 416, column: 14, scope: !2250)
!2293 = !DILocation(line: 416, column: 47, scope: !2250)
!2294 = !DILocation(line: 416, column: 7, scope: !2250)
!2295 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 419, column: 7, scope: !2250)
!2298 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2296)
!2299 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2296)
!2300 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2296)
!2301 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2296)
!2302 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2296)
!2303 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2297)
!2304 = !DILocation(line: 420, column: 26, scope: !2250)
!2305 = !DILocation(line: 420, column: 14, scope: !2250)
!2306 = !DILocation(line: 420, column: 47, scope: !2250)
!2307 = !DILocation(line: 420, column: 7, scope: !2250)
!2308 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 423, column: 7, scope: !2250)
!2311 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2309)
!2312 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2309)
!2313 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2309)
!2314 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2309)
!2315 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2309)
!2316 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2310)
!2317 = !DILocation(line: 424, column: 26, scope: !2250)
!2318 = !DILocation(line: 424, column: 14, scope: !2250)
!2319 = !DILocation(line: 424, column: 47, scope: !2250)
!2320 = !DILocation(line: 424, column: 7, scope: !2250)
!2321 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 428, column: 9, scope: !2249)
!2324 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2322)
!2325 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2322)
!2326 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2322)
!2327 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2322)
!2328 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2322)
!2329 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2323)
!2330 = !DILocation(line: 429, column: 19, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 429, column: 13)
!2332 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 429, column: 13, scope: !2331)
!2334 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2333)
!2335 = !DILocation(line: 429, column: 45, scope: !2331)
!2336 = !DILocation(line: 429, column: 13, scope: !2249)
!2337 = !DILocation(line: 431, column: 9, scope: !2249)
!2338 = !DILocation(line: 431, column: 15, scope: !2249)
!2339 = !DILocation(line: 432, column: 22, scope: !2249)
!2340 = !DILocation(line: 432, column: 15, scope: !2249)
!2341 = !DILocation(line: 433, column: 15, scope: !2249)
!2342 = !DILocation(line: 434, column: 24, scope: !2249)
!2343 = !DILocation(line: 434, column: 34, scope: !2249)
!2344 = !DILocation(line: 434, column: 37, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2249, file: !3, discriminator: 1)
!2346 = !DILocation(line: 434, column: 44, scope: !2345)
!2347 = !DILocation(line: 434, column: 64, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2249, file: !3, discriminator: 2)
!2349 = !{!2143, !677, i64 28}
!2350 = !DILocation(line: 434, column: 52, scope: !2348)
!2351 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 439, column: 9, scope: !2255)
!2354 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2352)
!2355 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2352)
!2356 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2352)
!2357 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2352)
!2358 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2352)
!2359 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2353)
!2360 = !DILocation(line: 440, column: 19, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 440, column: 13)
!2362 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 440, column: 13, scope: !2361)
!2364 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2363)
!2365 = !DILocation(line: 440, column: 45, scope: !2361)
!2366 = !DILocation(line: 440, column: 13, scope: !2255)
!2367 = !DILocation(line: 442, column: 9, scope: !2255)
!2368 = !DILocation(line: 442, column: 15, scope: !2255)
!2369 = !DILocation(line: 443, column: 22, scope: !2255)
!2370 = !DILocation(line: 443, column: 15, scope: !2255)
!2371 = !DILocation(line: 444, column: 15, scope: !2255)
!2372 = !DILocation(line: 445, column: 24, scope: !2255)
!2373 = !DILocation(line: 445, column: 34, scope: !2255)
!2374 = !DILocation(line: 445, column: 37, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2255, file: !3, discriminator: 1)
!2376 = !DILocation(line: 445, column: 44, scope: !2375)
!2377 = !DILocation(line: 445, column: 64, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2255, file: !3, discriminator: 2)
!2379 = !{!2143, !677, i64 32}
!2380 = !DILocation(line: 445, column: 52, scope: !2378)
!2381 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 449, column: 7, scope: !2250)
!2384 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2382)
!2385 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2382)
!2386 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2382)
!2387 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2382)
!2388 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2382)
!2389 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2383)
!2390 = !DILocation(line: 452, column: 21, scope: !2250)
!2391 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 452, column: 15, scope: !2250)
!2393 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2392)
!2394 = !DILocation(line: 452, column: 47, scope: !2250)
!2395 = !DILocation(line: 453, column: 15, scope: !2250)
!2396 = !DILocation(line: 453, column: 18, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2250, file: !3, discriminator: 1)
!2398 = !{!2143, !677, i64 24}
!2399 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 456, column: 7, scope: !2250)
!2402 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2400)
!2403 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2400)
!2404 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2400)
!2405 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2400)
!2406 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2400)
!2407 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2401)
!2408 = !DILocation(line: 457, column: 21, scope: !2250)
!2409 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 457, column: 15, scope: !2250)
!2411 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2410)
!2412 = !DILocation(line: 457, column: 47, scope: !2250)
!2413 = !DILocation(line: 458, column: 15, scope: !2250)
!2414 = !DILocation(line: 458, column: 18, scope: !2397)
!2415 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 461, column: 7, scope: !2250)
!2418 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2416)
!2419 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2416)
!2420 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2416)
!2421 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2416)
!2422 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2416)
!2423 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2417)
!2424 = !DILocation(line: 462, column: 21, scope: !2250)
!2425 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 462, column: 15, scope: !2250)
!2427 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2426)
!2428 = !DILocation(line: 462, column: 47, scope: !2250)
!2429 = !DILocation(line: 463, column: 31, scope: !2397)
!2430 = !DILocation(line: 463, column: 20, scope: !2397)
!2431 = !DILocation(line: 463, column: 15, scope: !2250)
!2432 = !DILocation(line: 462, column: 7, scope: !2397)
!2433 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 466, column: 7, scope: !2250)
!2436 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2434)
!2437 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2434)
!2438 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2434)
!2439 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2434)
!2440 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2434)
!2441 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2435)
!2442 = !DILocation(line: 467, column: 21, scope: !2250)
!2443 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 467, column: 15, scope: !2250)
!2445 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2444)
!2446 = !DILocation(line: 467, column: 47, scope: !2250)
!2447 = !DILocation(line: 468, column: 15, scope: !2250)
!2448 = !DILocation(line: 468, column: 18, scope: !2397)
!2449 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 471, column: 7, scope: !2250)
!2452 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2450)
!2453 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2450)
!2454 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2450)
!2455 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2450)
!2456 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2450)
!2457 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2451)
!2458 = !DILocation(line: 472, column: 21, scope: !2250)
!2459 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 472, column: 15, scope: !2250)
!2461 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2460)
!2462 = !DILocation(line: 472, column: 47, scope: !2250)
!2463 = !DILocation(line: 473, column: 15, scope: !2250)
!2464 = !DILocation(line: 473, column: 18, scope: !2397)
!2465 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 476, column: 7, scope: !2250)
!2468 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2466)
!2469 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2466)
!2470 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2466)
!2471 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2466)
!2472 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2466)
!2473 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2467)
!2474 = !DILocation(line: 477, column: 21, scope: !2250)
!2475 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 477, column: 15, scope: !2250)
!2477 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2476)
!2478 = !DILocation(line: 477, column: 47, scope: !2250)
!2479 = !DILocation(line: 478, column: 15, scope: !2250)
!2480 = !DILocation(line: 478, column: 18, scope: !2397)
!2481 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 481, column: 7, scope: !2250)
!2484 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2482)
!2485 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2482)
!2486 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2482)
!2487 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2482)
!2488 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2482)
!2489 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2483)
!2490 = !DILocation(line: 482, column: 21, scope: !2250)
!2491 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 482, column: 15, scope: !2250)
!2493 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2492)
!2494 = !DILocation(line: 482, column: 47, scope: !2250)
!2495 = !DILocation(line: 483, column: 15, scope: !2250)
!2496 = !DILocation(line: 483, column: 18, scope: !2397)
!2497 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 489, column: 7, scope: !2250)
!2500 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2498)
!2501 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2498)
!2502 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2498)
!2503 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2498)
!2504 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2498)
!2505 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2499)
!2506 = !DILocation(line: 490, column: 22, scope: !2250)
!2507 = !DILocalVariable(name: "__path", arg: 1, scope: !2508, file: !2049, line: 456, type: !34)
!2508 = distinct !DISubprogram(name: "lstat", scope: !2049, file: !2049, line: 456, type: !2050, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2509)
!2509 = !{!2507, !2510}
!2510 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2508, file: !2049, line: 456, type: !2052)
!2511 = !DILocation(line: 456, column: 1, scope: !2508, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 490, column: 15, scope: !2250)
!2513 = !DILocation(line: 458, column: 10, scope: !2508, inlinedAt: !2512)
!2514 = !DILocation(line: 490, column: 48, scope: !2250)
!2515 = !DILocation(line: 491, column: 15, scope: !2250)
!2516 = !DILocation(line: 491, column: 18, scope: !2397)
!2517 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 494, column: 7, scope: !2250)
!2520 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2518)
!2521 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2518)
!2522 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2518)
!2523 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2518)
!2524 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2518)
!2525 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2519)
!2526 = !DILocation(line: 495, column: 21, scope: !2250)
!2527 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 495, column: 15, scope: !2250)
!2529 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2528)
!2530 = !DILocation(line: 495, column: 47, scope: !2250)
!2531 = !DILocation(line: 496, column: 15, scope: !2250)
!2532 = !DILocation(line: 496, column: 28, scope: !2397)
!2533 = !DILocation(line: 496, column: 36, scope: !2397)
!2534 = !DILocation(line: 496, column: 15, scope: !2397)
!2535 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 499, column: 7, scope: !2250)
!2538 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2536)
!2539 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2536)
!2540 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2536)
!2541 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2536)
!2542 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2536)
!2543 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2537)
!2544 = !DILocation(line: 500, column: 21, scope: !2250)
!2545 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 500, column: 15, scope: !2250)
!2547 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2546)
!2548 = !DILocation(line: 500, column: 47, scope: !2250)
!2549 = !DILocation(line: 501, column: 15, scope: !2250)
!2550 = !DILocation(line: 501, column: 28, scope: !2397)
!2551 = !DILocation(line: 501, column: 36, scope: !2397)
!2552 = !DILocation(line: 501, column: 15, scope: !2397)
!2553 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 504, column: 7, scope: !2250)
!2556 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2554)
!2557 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2554)
!2558 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2554)
!2559 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2554)
!2560 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2554)
!2561 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2555)
!2562 = !DILocation(line: 505, column: 21, scope: !2250)
!2563 = !DILocation(line: 449, column: 1, scope: !2048, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 505, column: 15, scope: !2250)
!2565 = !DILocation(line: 451, column: 10, scope: !2048, inlinedAt: !2564)
!2566 = !DILocation(line: 505, column: 47, scope: !2250)
!2567 = !DILocation(line: 506, column: 15, scope: !2250)
!2568 = !DILocation(line: 506, column: 28, scope: !2397)
!2569 = !DILocation(line: 506, column: 36, scope: !2397)
!2570 = !DILocation(line: 506, column: 15, scope: !2397)
!2571 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 512, column: 9, scope: !2259)
!2574 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2572)
!2575 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2572)
!2576 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2572)
!2577 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2572)
!2578 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2572)
!2579 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2573)
!2580 = !DILocation(line: 513, column: 25, scope: !2259)
!2581 = !DILocation(line: 513, column: 15, scope: !2259)
!2582 = !DILocation(line: 511, column: 21, scope: !2259)
!2583 = !DILocation(line: 514, column: 9, scope: !2259)
!2584 = !DILocation(line: 514, column: 15, scope: !2259)
!2585 = !DILocation(line: 515, column: 14, scope: !2259)
!2586 = !DILocation(line: 510, column: 18, scope: !2259)
!2587 = !DILocation(line: 516, column: 17, scope: !2259)
!2588 = !DILocation(line: 516, column: 23, scope: !2259)
!2589 = !DILocation(line: 516, column: 33, scope: !2259)
!2590 = !DILocation(line: 516, column: 72, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2259, file: !3, discriminator: 3)
!2592 = !DILocation(line: 516, column: 64, scope: !2591)
!2593 = !DILocation(line: 516, column: 61, scope: !2591)
!2594 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 520, column: 7, scope: !2250)
!2597 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2595)
!2598 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2595)
!2599 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2595)
!2600 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2595)
!2601 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2595)
!2602 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2596)
!2603 = !DILocation(line: 521, column: 14, scope: !2250)
!2604 = !DILocation(line: 521, column: 31, scope: !2250)
!2605 = !DILocation(line: 521, column: 7, scope: !2250)
!2606 = !DILocation(line: 105, column: 15, scope: !763, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 116, column: 3, scope: !2267, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 524, column: 7, scope: !2250)
!2609 = !DILocation(line: 107, column: 3, scope: !763, inlinedAt: !2607)
!2610 = !DILocation(line: 109, column: 19, scope: !773, inlinedAt: !2607)
!2611 = !DILocation(line: 109, column: 16, scope: !773, inlinedAt: !2607)
!2612 = !DILocation(line: 109, column: 9, scope: !774, inlinedAt: !2607)
!2613 = !DILocation(line: 110, column: 5, scope: !774, inlinedAt: !2607)
!2614 = !DILocation(line: 117, column: 3, scope: !2267, inlinedAt: !2608)
!2615 = !DILocation(line: 525, column: 14, scope: !2250)
!2616 = !DILocation(line: 525, column: 31, scope: !2250)
!2617 = !DILocation(line: 525, column: 7, scope: !2250)
!2618 = !DILocation(line: 527, column: 1, scope: !2245)
!2619 = distinct !DISubprogram(name: "find_int", scope: !3, file: !3, line: 134, type: !2620, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!34, !34}
!2622 = !{!2623, !2624, !2625}
!2623 = !DILocalVariable(name: "string", arg: 1, scope: !2619, file: !3, line: 134, type: !34)
!2624 = !DILocalVariable(name: "p", scope: !2619, file: !3, line: 136, type: !34)
!2625 = !DILocalVariable(name: "number_start", scope: !2619, file: !3, line: 137, type: !34)
!2626 = !DILocation(line: 134, column: 23, scope: !2619)
!2627 = !DILocation(line: 136, column: 15, scope: !2619)
!2628 = !DILocation(line: 139, column: 20, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2630, file: !3, discriminator: 1)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 139, column: 3)
!2631 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 139, column: 3)
!2632 = !DILocation(line: 139, column: 8, scope: !2631)
!2633 = !{!2634, !2634, i64 0}
!2634 = !{!"short", !588, i64 0}
!2635 = !DILocation(line: 139, column: 3, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2631, file: !3, discriminator: 1)
!2637 = !DILocation(line: 139, column: 46, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2630, file: !3, discriminator: 2)
!2639 = distinct !{!2639, !2640, !2641}
!2640 = !DILocation(line: 139, column: 3, scope: !2631)
!2641 = !DILocation(line: 140, column: 5, scope: !2631)
!2642 = !DILocation(line: 142, column: 10, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 142, column: 7)
!2644 = !DILocation(line: 137, column: 15, scope: !2619)
!2645 = !DILocation(line: 150, column: 16, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 148, column: 5)
!2647 = !DILocation(line: 150, column: 9, scope: !2646)
!2648 = !DILocation(line: 142, column: 7, scope: !2619)
!2649 = !DILocation(line: 153, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 153, column: 7)
!2651 = !DILocation(line: 153, column: 7, scope: !2619)
!2652 = !DILocation(line: 155, column: 14, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2654, file: !3, discriminator: 1)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 154, column: 5)
!2655 = !DILocation(line: 155, column: 7, scope: !2653)
!2656 = distinct !{!2656, !2657, !2658}
!2657 = !DILocation(line: 155, column: 7, scope: !2654)
!2658 = !DILocation(line: 156, column: 10, scope: !2654)
!2659 = !DILocation(line: 157, column: 14, scope: !2653)
!2660 = !DILocation(line: 157, column: 7, scope: !2653)
!2661 = distinct !{!2661, !2662, !2663}
!2662 = !DILocation(line: 157, column: 7, scope: !2654)
!2663 = !DILocation(line: 158, column: 10, scope: !2654)
!2664 = !DILocation(line: 159, column: 12, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 159, column: 11)
!2666 = !DILocation(line: 159, column: 11, scope: !2654)
!2667 = !DILocation(line: 160, column: 9, scope: !2665)
!2668 = !DILocation(line: 163, column: 22, scope: !2619)
!2669 = !DILocation(line: 163, column: 47, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2619, file: !3, discriminator: 1)
!2671 = !DILocation(line: 163, column: 3, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2619, file: !3, discriminator: 2)
!2673 = !DILocation(line: 163, column: 3, scope: !2619)
!2674 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !86, file: !86, line: 41, type: !50, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !80, variables: !2675)
!2675 = !{!2676}
!2676 = !DILocalVariable(name: "file", arg: 1, scope: !2674, file: !86, line: 41, type: !34)
!2677 = !DILocation(line: 41, column: 41, scope: !2674)
!2678 = !DILocation(line: 43, column: 13, scope: !2674)
!2679 = !DILocation(line: 44, column: 1, scope: !2674)
!2680 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !86, file: !86, line: 78, type: !764, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !80, variables: !2681)
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "ignore", arg: 1, scope: !2680, file: !86, line: 78, type: !87)
!2683 = !DILocation(line: 78, column: 37, scope: !2680)
!2684 = !DILocation(line: 80, column: 16, scope: !2680)
!2685 = !{!2686, !2686, i64 0}
!2686 = !{!"_Bool", !588, i64 0}
!2687 = !DILocation(line: 81, column: 1, scope: !2680)
!2688 = distinct !DISubprogram(name: "close_stdout", scope: !86, file: !86, line: 107, type: !1235, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !80, variables: !2689)
!2689 = !{!2690}
!2690 = !DILocalVariable(name: "write_error", scope: !2691, file: !86, line: 112, type: !34)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !86, line: 111, column: 5)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !86, line: 109, column: 7)
!2693 = !DILocation(line: 109, column: 21, scope: !2692)
!2694 = !DILocation(line: 109, column: 7, scope: !2692)
!2695 = !DILocation(line: 109, column: 29, scope: !2692)
!2696 = !DILocation(line: 110, column: 7, scope: !2692)
!2697 = !DILocation(line: 110, column: 12, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2692, file: !86, discriminator: 1)
!2699 = !{i8 0, i8 2}
!2700 = !DILocation(line: 114, column: 19, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2691, file: !86, line: 113, column: 11)
!2702 = !DILocation(line: 110, column: 25, scope: !2698)
!2703 = !DILocation(line: 110, column: 28, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2692, file: !86, discriminator: 2)
!2705 = !DILocation(line: 110, column: 34, scope: !2704)
!2706 = !DILocation(line: 109, column: 7, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2688, file: !86, discriminator: 1)
!2708 = !DILocation(line: 112, column: 33, scope: !2691)
!2709 = !DILocation(line: 112, column: 19, scope: !2691)
!2710 = !DILocation(line: 113, column: 11, scope: !2701)
!2711 = !DILocation(line: 113, column: 11, scope: !2691)
!2712 = !DILocation(line: 114, column: 36, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2701, file: !86, discriminator: 1)
!2714 = !DILocation(line: 114, column: 9, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2701, file: !86, discriminator: 2)
!2716 = !DILocation(line: 114, column: 9, scope: !2701)
!2717 = !DILocation(line: 117, column: 9, scope: !2713)
!2718 = !DILocation(line: 119, column: 14, scope: !2691)
!2719 = !DILocation(line: 119, column: 7, scope: !2691)
!2720 = !DILocation(line: 122, column: 22, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2688, file: !86, line: 122, column: 8)
!2722 = !DILocation(line: 122, column: 8, scope: !2721)
!2723 = !DILocation(line: 122, column: 30, scope: !2721)
!2724 = !DILocation(line: 122, column: 8, scope: !2688)
!2725 = !DILocation(line: 123, column: 13, scope: !2721)
!2726 = !DILocation(line: 123, column: 6, scope: !2721)
!2727 = !DILocation(line: 124, column: 1, scope: !2688)
!2728 = distinct !DISubprogram(name: "umaxtostr", scope: !2729, file: !2729, line: 36, type: !2730, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !517, variables: !2732)
!2729 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!77, !520, !77}
!2732 = !{!2733, !2734, !2735}
!2733 = !DILocalVariable(name: "i", arg: 1, scope: !2728, file: !2729, line: 36, type: !520)
!2734 = !DILocalVariable(name: "buf", arg: 2, scope: !2728, file: !2729, line: 36, type: !77)
!2735 = !DILocalVariable(name: "p", scope: !2728, file: !2729, line: 38, type: !77)
!2736 = !DILocation(line: 36, column: 19, scope: !2728)
!2737 = !DILocation(line: 36, column: 28, scope: !2728)
!2738 = !DILocation(line: 38, column: 17, scope: !2728)
!2739 = !DILocation(line: 38, column: 9, scope: !2728)
!2740 = !DILocation(line: 39, column: 6, scope: !2728)
!2741 = !DILocation(line: 41, column: 7, scope: !2728)
!2742 = !DILocation(line: 52, column: 24, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !2729, line: 50, column: 5)
!2744 = distinct !DILexicalBlock(scope: !2728, file: !2729, line: 41, column: 7)
!2745 = !DILocation(line: 52, column: 16, scope: !2743)
!2746 = !DILocation(line: 52, column: 10, scope: !2743)
!2747 = !DILocation(line: 52, column: 14, scope: !2743)
!2748 = !DILocation(line: 53, column: 17, scope: !2743)
!2749 = !DILocation(line: 53, column: 24, scope: !2743)
!2750 = !DILocation(line: 52, column: 9, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2743, file: !2729, discriminator: 1)
!2752 = distinct !{!2752, !2753, !2754}
!2753 = !DILocation(line: 51, column: 7, scope: !2743)
!2754 = !DILocation(line: 53, column: 28, scope: !2743)
!2755 = !DILocation(line: 56, column: 3, scope: !2728)
!2756 = distinct !DISubprogram(name: "set_program_name", scope: !101, file: !101, line: 39, type: !50, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2757)
!2757 = !{!2758, !2759, !2760}
!2758 = !DILocalVariable(name: "argv0", arg: 1, scope: !2756, file: !101, line: 39, type: !34)
!2759 = !DILocalVariable(name: "slash", scope: !2756, file: !101, line: 46, type: !34)
!2760 = !DILocalVariable(name: "base", scope: !2756, file: !101, line: 47, type: !34)
!2761 = !DILocation(line: 39, column: 31, scope: !2756)
!2762 = !DILocation(line: 51, column: 13, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2756, file: !101, line: 51, column: 7)
!2764 = !DILocation(line: 51, column: 7, scope: !2756)
!2765 = !DILocation(line: 55, column: 14, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !101, line: 52, column: 5)
!2767 = !DILocation(line: 54, column: 7, scope: !2766)
!2768 = !DILocation(line: 56, column: 7, scope: !2766)
!2769 = !DILocation(line: 59, column: 11, scope: !2756)
!2770 = !DILocation(line: 46, column: 15, scope: !2756)
!2771 = !DILocation(line: 60, column: 17, scope: !2756)
!2772 = !DILocation(line: 60, column: 33, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2756, file: !101, discriminator: 1)
!2774 = !DILocation(line: 60, column: 11, scope: !2756)
!2775 = !DILocation(line: 47, column: 15, scope: !2756)
!2776 = !DILocation(line: 61, column: 12, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2756, file: !101, line: 61, column: 7)
!2778 = !DILocation(line: 61, column: 20, scope: !2777)
!2779 = !DILocation(line: 61, column: 25, scope: !2777)
!2780 = !DILocation(line: 61, column: 28, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2777, file: !101, discriminator: 1)
!2782 = !DILocation(line: 61, column: 61, scope: !2781)
!2783 = !DILocation(line: 61, column: 7, scope: !2773)
!2784 = !DILocation(line: 64, column: 11, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !101, line: 64, column: 11)
!2786 = distinct !DILexicalBlock(scope: !2777, file: !101, line: 62, column: 5)
!2787 = !DILocation(line: 64, column: 36, scope: !2785)
!2788 = !DILocation(line: 64, column: 11, scope: !2786)
!2789 = !DILocation(line: 66, column: 24, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2785, file: !101, line: 65, column: 9)
!2791 = !DILocation(line: 70, column: 41, scope: !2790)
!2792 = !DILocation(line: 72, column: 9, scope: !2790)
!2793 = !DILocation(line: 84, column: 16, scope: !2756)
!2794 = !DILocation(line: 90, column: 27, scope: !2756)
!2795 = !DILocation(line: 92, column: 1, scope: !2756)
!2796 = distinct !DISubprogram(name: "clone_quoting_options", scope: !130, file: !130, line: 114, type: !2797, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2800)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!2799, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2800 = !{!2801, !2802, !2803}
!2801 = !DILocalVariable(name: "o", arg: 1, scope: !2796, file: !130, line: 114, type: !2799)
!2802 = !DILocalVariable(name: "e", scope: !2796, file: !130, line: 116, type: !37)
!2803 = !DILocalVariable(name: "p", scope: !2796, file: !130, line: 117, type: !2799)
!2804 = !DILocation(line: 114, column: 48, scope: !2796)
!2805 = !DILocation(line: 116, column: 11, scope: !2796)
!2806 = !DILocation(line: 116, column: 7, scope: !2796)
!2807 = !DILocation(line: 117, column: 40, scope: !2796)
!2808 = !DILocation(line: 117, column: 40, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !2796, file: !130, discriminator: 3)
!2810 = !DILocation(line: 117, column: 31, scope: !2809)
!2811 = !DILocation(line: 117, column: 27, scope: !2796)
!2812 = !DILocation(line: 119, column: 9, scope: !2796)
!2813 = !DILocation(line: 120, column: 3, scope: !2796)
!2814 = distinct !DISubprogram(name: "get_quoting_style", scope: !130, file: !130, line: 125, type: !2815, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2819)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!107, !2817}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "o", arg: 1, scope: !2814, file: !130, line: 125, type: !2817)
!2821 = !DILocation(line: 125, column: 50, scope: !2814)
!2822 = !DILocation(line: 127, column: 11, scope: !2814)
!2823 = !DILocation(line: 127, column: 46, scope: !2824)
!2824 = !DILexicalBlockFile(scope: !2814, file: !130, discriminator: 3)
!2825 = !{!2826, !588, i64 0}
!2826 = !{!"quoting_options", !588, i64 0, !677, i64 4, !588, i64 8, !587, i64 40, !587, i64 48}
!2827 = !DILocation(line: 127, column: 3, scope: !2824)
!2828 = distinct !DISubprogram(name: "set_quoting_style", scope: !130, file: !130, line: 133, type: !2829, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null, !2799, !107}
!2831 = !{!2832, !2833}
!2832 = !DILocalVariable(name: "o", arg: 1, scope: !2828, file: !130, line: 133, type: !2799)
!2833 = !DILocalVariable(name: "s", arg: 2, scope: !2828, file: !130, line: 133, type: !107)
!2834 = !DILocation(line: 133, column: 44, scope: !2828)
!2835 = !DILocation(line: 133, column: 66, scope: !2828)
!2836 = !DILocation(line: 135, column: 4, scope: !2828)
!2837 = !DILocation(line: 135, column: 39, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2828, file: !130, discriminator: 3)
!2839 = !DILocation(line: 135, column: 45, scope: !2838)
!2840 = !DILocation(line: 136, column: 1, scope: !2828)
!2841 = distinct !DISubprogram(name: "set_char_quoting", scope: !130, file: !130, line: 144, type: !2842, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!37, !2799, !36, !37}
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2851, !2852}
!2845 = !DILocalVariable(name: "o", arg: 1, scope: !2841, file: !130, line: 144, type: !2799)
!2846 = !DILocalVariable(name: "c", arg: 2, scope: !2841, file: !130, line: 144, type: !36)
!2847 = !DILocalVariable(name: "i", arg: 3, scope: !2841, file: !130, line: 144, type: !37)
!2848 = !DILocalVariable(name: "uc", scope: !2841, file: !130, line: 146, type: !33)
!2849 = !DILocalVariable(name: "p", scope: !2841, file: !130, line: 147, type: !2850)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!2851 = !DILocalVariable(name: "shift", scope: !2841, file: !130, line: 149, type: !37)
!2852 = !DILocalVariable(name: "r", scope: !2841, file: !130, line: 150, type: !37)
!2853 = !DILocation(line: 144, column: 43, scope: !2841)
!2854 = !DILocation(line: 144, column: 51, scope: !2841)
!2855 = !DILocation(line: 144, column: 58, scope: !2841)
!2856 = !DILocation(line: 146, column: 17, scope: !2841)
!2857 = !DILocation(line: 148, column: 6, scope: !2841)
!2858 = !DILocation(line: 148, column: 62, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2841, file: !130, discriminator: 3)
!2860 = !DILocation(line: 148, column: 57, scope: !2859)
!2861 = !DILocation(line: 147, column: 17, scope: !2841)
!2862 = !DILocation(line: 149, column: 18, scope: !2841)
!2863 = !DILocation(line: 149, column: 15, scope: !2841)
!2864 = !DILocation(line: 149, column: 7, scope: !2841)
!2865 = !DILocation(line: 150, column: 12, scope: !2841)
!2866 = !DILocation(line: 150, column: 15, scope: !2841)
!2867 = !DILocation(line: 150, column: 25, scope: !2841)
!2868 = !DILocation(line: 150, column: 7, scope: !2841)
!2869 = !DILocation(line: 151, column: 13, scope: !2841)
!2870 = !DILocation(line: 151, column: 18, scope: !2841)
!2871 = !DILocation(line: 151, column: 23, scope: !2841)
!2872 = !DILocation(line: 151, column: 6, scope: !2841)
!2873 = !DILocation(line: 152, column: 3, scope: !2841)
!2874 = distinct !DISubprogram(name: "set_quoting_flags", scope: !130, file: !130, line: 160, type: !2875, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!37, !2799, !37}
!2877 = !{!2878, !2879, !2880}
!2878 = !DILocalVariable(name: "o", arg: 1, scope: !2874, file: !130, line: 160, type: !2799)
!2879 = !DILocalVariable(name: "i", arg: 2, scope: !2874, file: !130, line: 160, type: !37)
!2880 = !DILocalVariable(name: "r", scope: !2874, file: !130, line: 162, type: !37)
!2881 = !DILocation(line: 160, column: 44, scope: !2874)
!2882 = !DILocation(line: 160, column: 51, scope: !2874)
!2883 = !DILocation(line: 163, column: 8, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2874, file: !130, line: 163, column: 7)
!2885 = !DILocation(line: 163, column: 7, scope: !2874)
!2886 = !DILocation(line: 165, column: 10, scope: !2874)
!2887 = !{!2826, !677, i64 4}
!2888 = !DILocation(line: 162, column: 7, scope: !2874)
!2889 = !DILocation(line: 166, column: 12, scope: !2874)
!2890 = !DILocation(line: 167, column: 3, scope: !2874)
!2891 = distinct !DISubprogram(name: "set_custom_quoting", scope: !130, file: !130, line: 171, type: !2892, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !2799, !34, !34}
!2894 = !{!2895, !2896, !2897}
!2895 = !DILocalVariable(name: "o", arg: 1, scope: !2891, file: !130, line: 171, type: !2799)
!2896 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2891, file: !130, line: 172, type: !34)
!2897 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2891, file: !130, line: 172, type: !34)
!2898 = !DILocation(line: 171, column: 45, scope: !2891)
!2899 = !DILocation(line: 172, column: 33, scope: !2891)
!2900 = !DILocation(line: 172, column: 57, scope: !2891)
!2901 = !DILocation(line: 174, column: 8, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2891, file: !130, line: 174, column: 7)
!2903 = !DILocation(line: 174, column: 7, scope: !2891)
!2904 = !DILocation(line: 176, column: 6, scope: !2891)
!2905 = !DILocation(line: 176, column: 12, scope: !2891)
!2906 = !DILocation(line: 177, column: 8, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2891, file: !130, line: 177, column: 7)
!2908 = !DILocation(line: 177, column: 23, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !2907, file: !130, discriminator: 1)
!2910 = !DILocation(line: 177, column: 19, scope: !2907)
!2911 = !DILocation(line: 178, column: 5, scope: !2907)
!2912 = !DILocation(line: 179, column: 6, scope: !2891)
!2913 = !DILocation(line: 179, column: 17, scope: !2891)
!2914 = !{!2826, !587, i64 40}
!2915 = !DILocation(line: 180, column: 6, scope: !2891)
!2916 = !DILocation(line: 180, column: 18, scope: !2891)
!2917 = !{!2826, !587, i64 48}
!2918 = !DILocation(line: 181, column: 1, scope: !2891)
!2919 = distinct !DISubprogram(name: "quotearg_buffer", scope: !130, file: !130, line: 776, type: !2920, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!26, !77, !26, !34, !26, !2817}
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930}
!2923 = !DILocalVariable(name: "buffer", arg: 1, scope: !2919, file: !130, line: 776, type: !77)
!2924 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2919, file: !130, line: 776, type: !26)
!2925 = !DILocalVariable(name: "arg", arg: 3, scope: !2919, file: !130, line: 777, type: !34)
!2926 = !DILocalVariable(name: "argsize", arg: 4, scope: !2919, file: !130, line: 777, type: !26)
!2927 = !DILocalVariable(name: "o", arg: 5, scope: !2919, file: !130, line: 778, type: !2817)
!2928 = !DILocalVariable(name: "p", scope: !2919, file: !130, line: 780, type: !2817)
!2929 = !DILocalVariable(name: "e", scope: !2919, file: !130, line: 781, type: !37)
!2930 = !DILocalVariable(name: "r", scope: !2919, file: !130, line: 782, type: !26)
!2931 = !DILocation(line: 776, column: 24, scope: !2919)
!2932 = !DILocation(line: 776, column: 39, scope: !2919)
!2933 = !DILocation(line: 777, column: 30, scope: !2919)
!2934 = !DILocation(line: 777, column: 42, scope: !2919)
!2935 = !DILocation(line: 778, column: 48, scope: !2919)
!2936 = !DILocation(line: 780, column: 37, scope: !2919)
!2937 = !DILocation(line: 780, column: 33, scope: !2919)
!2938 = !DILocation(line: 781, column: 11, scope: !2919)
!2939 = !DILocation(line: 781, column: 7, scope: !2919)
!2940 = !DILocation(line: 783, column: 43, scope: !2919)
!2941 = !DILocation(line: 783, column: 53, scope: !2919)
!2942 = !DILocation(line: 783, column: 60, scope: !2919)
!2943 = !DILocation(line: 784, column: 43, scope: !2919)
!2944 = !DILocation(line: 784, column: 58, scope: !2919)
!2945 = !DILocation(line: 782, column: 14, scope: !2919)
!2946 = !DILocation(line: 782, column: 10, scope: !2919)
!2947 = !DILocation(line: 785, column: 9, scope: !2919)
!2948 = !DILocation(line: 786, column: 3, scope: !2919)
!2949 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !130, file: !130, line: 248, type: !2950, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2954)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!26, !77, !26, !34, !26, !107, !37, !2952, !34, !34}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2979, !2980, !2981, !2982, !2983, !2986, !2987, !3004, !3007, !3008, !3015}
!2955 = !DILocalVariable(name: "buffer", arg: 1, scope: !2949, file: !130, line: 248, type: !77)
!2956 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2949, file: !130, line: 248, type: !26)
!2957 = !DILocalVariable(name: "arg", arg: 3, scope: !2949, file: !130, line: 249, type: !34)
!2958 = !DILocalVariable(name: "argsize", arg: 4, scope: !2949, file: !130, line: 249, type: !26)
!2959 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2949, file: !130, line: 250, type: !107)
!2960 = !DILocalVariable(name: "flags", arg: 6, scope: !2949, file: !130, line: 250, type: !37)
!2961 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2949, file: !130, line: 251, type: !2952)
!2962 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2949, file: !130, line: 252, type: !34)
!2963 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2949, file: !130, line: 253, type: !34)
!2964 = !DILocalVariable(name: "i", scope: !2949, file: !130, line: 255, type: !26)
!2965 = !DILocalVariable(name: "len", scope: !2949, file: !130, line: 256, type: !26)
!2966 = !DILocalVariable(name: "orig_buffersize", scope: !2949, file: !130, line: 257, type: !26)
!2967 = !DILocalVariable(name: "quote_string", scope: !2949, file: !130, line: 258, type: !34)
!2968 = !DILocalVariable(name: "quote_string_len", scope: !2949, file: !130, line: 259, type: !26)
!2969 = !DILocalVariable(name: "backslash_escapes", scope: !2949, file: !130, line: 260, type: !87)
!2970 = !DILocalVariable(name: "unibyte_locale", scope: !2949, file: !130, line: 261, type: !87)
!2971 = !DILocalVariable(name: "elide_outer_quotes", scope: !2949, file: !130, line: 262, type: !87)
!2972 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2949, file: !130, line: 263, type: !87)
!2973 = !DILocalVariable(name: "encountered_single_quote", scope: !2949, file: !130, line: 264, type: !87)
!2974 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2949, file: !130, line: 265, type: !87)
!2975 = !DILocalVariable(name: "c", scope: !2976, file: !130, line: 394, type: !33)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !130, line: 393, column: 5)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !130, line: 392, column: 3)
!2978 = distinct !DILexicalBlock(scope: !2949, file: !130, line: 392, column: 3)
!2979 = !DILocalVariable(name: "esc", scope: !2976, file: !130, line: 395, type: !33)
!2980 = !DILocalVariable(name: "is_right_quote", scope: !2976, file: !130, line: 396, type: !87)
!2981 = !DILocalVariable(name: "escaping", scope: !2976, file: !130, line: 397, type: !87)
!2982 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2976, file: !130, line: 398, type: !87)
!2983 = !DILocalVariable(name: "m", scope: !2984, file: !130, line: 602, type: !26)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 600, column: 11)
!2985 = distinct !DILexicalBlock(scope: !2976, file: !130, line: 418, column: 9)
!2986 = !DILocalVariable(name: "printable", scope: !2984, file: !130, line: 604, type: !87)
!2987 = !DILocalVariable(name: "mbstate", scope: !2988, file: !130, line: 613, type: !2990)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !130, line: 612, column: 15)
!2989 = distinct !DILexicalBlock(scope: !2984, file: !130, line: 606, column: 17)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2991, line: 107, baseType: !2992)
!2991 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2991, line: 95, baseType: !2993)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2991, line: 83, size: 64, elements: !2994)
!2994 = !{!2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2993, file: !2991, line: 85, baseType: !37, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2993, file: !2991, line: 94, baseType: !2997, size: 32, offset: 32)
!2997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2993, file: !2991, line: 86, size: 32, elements: !2998)
!2998 = !{!2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2997, file: !2991, line: 89, baseType: !39, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2997, file: !2991, line: 93, baseType: !3001, size: 32)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !3002)
!3002 = !{!3003}
!3003 = !DISubrange(count: 4)
!3004 = !DILocalVariable(name: "w", scope: !3005, file: !130, line: 623, type: !3006)
!3005 = distinct !DILexicalBlock(scope: !2988, file: !130, line: 622, column: 19)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !27, line: 90, baseType: !37)
!3007 = !DILocalVariable(name: "bytes", scope: !3005, file: !130, line: 624, type: !26)
!3008 = !DILocalVariable(name: "j", scope: !3009, file: !130, line: 649, type: !26)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !130, line: 648, column: 27)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !130, line: 646, column: 29)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !130, line: 641, column: 23)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !130, line: 633, column: 30)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !130, line: 628, column: 30)
!3014 = distinct !DILexicalBlock(scope: !3005, file: !130, line: 626, column: 25)
!3015 = !DILocalVariable(name: "ilim", scope: !3016, file: !130, line: 676, type: !26)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !130, line: 673, column: 15)
!3017 = distinct !DILexicalBlock(scope: !2984, file: !130, line: 672, column: 17)
!3018 = !DILocation(line: 248, column: 33, scope: !2949)
!3019 = !DILocation(line: 248, column: 48, scope: !2949)
!3020 = !DILocation(line: 249, column: 39, scope: !2949)
!3021 = !DILocation(line: 249, column: 51, scope: !2949)
!3022 = !DILocation(line: 250, column: 46, scope: !2949)
!3023 = !DILocation(line: 250, column: 65, scope: !2949)
!3024 = !DILocation(line: 251, column: 47, scope: !2949)
!3025 = !DILocation(line: 252, column: 39, scope: !2949)
!3026 = !DILocation(line: 253, column: 39, scope: !2949)
!3027 = !DILocation(line: 256, column: 10, scope: !2949)
!3028 = !DILocation(line: 257, column: 10, scope: !2949)
!3029 = !DILocation(line: 258, column: 15, scope: !2949)
!3030 = !DILocation(line: 259, column: 10, scope: !2949)
!3031 = !DILocation(line: 260, column: 8, scope: !2949)
!3032 = !DILocation(line: 261, column: 25, scope: !2949)
!3033 = !DILocation(line: 261, column: 36, scope: !2949)
!3034 = !DILocation(line: 262, column: 8, scope: !2949)
!3035 = !DILocation(line: 263, column: 8, scope: !2949)
!3036 = !DILocation(line: 264, column: 8, scope: !2949)
!3037 = !DILocation(line: 265, column: 8, scope: !2949)
!3038 = !DILocation(line: 265, column: 3, scope: !2949)
!3039 = !DILocation(line: 308, column: 3, scope: !2949)
!3040 = !DILocation(line: 315, column: 11, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2949, file: !130, line: 309, column: 5)
!3042 = !DILocation(line: 315, column: 12, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3041, file: !130, line: 315, column: 11)
!3044 = !DILocation(line: 316, column: 9, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3046, file: !130, discriminator: 1)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !130, line: 316, column: 9)
!3047 = distinct !DILexicalBlock(scope: !3043, file: !130, line: 316, column: 9)
!3048 = !DILocation(line: 316, column: 9, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3047, file: !130, discriminator: 1)
!3050 = !DILocation(line: 316, column: 9, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !3046, file: !130, discriminator: 2)
!3052 = !DILocation(line: 354, column: 26, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !130, line: 332, column: 11)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !130, line: 331, column: 13)
!3055 = distinct !DILexicalBlock(scope: !3041, file: !130, line: 330, column: 7)
!3056 = !DILocation(line: 355, column: 27, scope: !3053)
!3057 = !DILocation(line: 356, column: 11, scope: !3053)
!3058 = !DILocation(line: 357, column: 14, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !130, line: 357, column: 13)
!3060 = !DILocation(line: 357, column: 13, scope: !3055)
!3061 = !DILocation(line: 358, column: 43, scope: !3062)
!3062 = !DILexicalBlockFile(scope: !3063, file: !130, discriminator: 1)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !130, line: 358, column: 11)
!3064 = distinct !DILexicalBlock(scope: !3059, file: !130, line: 358, column: 11)
!3065 = !DILocation(line: 358, column: 11, scope: !3066)
!3066 = !DILexicalBlockFile(scope: !3064, file: !130, discriminator: 1)
!3067 = !DILocation(line: 359, column: 13, scope: !3068)
!3068 = !DILexicalBlockFile(scope: !3069, file: !130, discriminator: 1)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !130, line: 359, column: 13)
!3070 = distinct !DILexicalBlock(scope: !3063, file: !130, line: 359, column: 13)
!3071 = !DILocation(line: 359, column: 13, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !3070, file: !130, discriminator: 1)
!3073 = !DILocation(line: 359, column: 13, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3069, file: !130, discriminator: 2)
!3075 = !DILocation(line: 359, column: 13, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !3070, file: !130, discriminator: 3)
!3077 = !DILocation(line: 358, column: 70, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3063, file: !130, discriminator: 2)
!3079 = distinct !{!3079, !3080, !3081}
!3080 = !DILocation(line: 358, column: 11, scope: !3064)
!3081 = !DILocation(line: 359, column: 13, scope: !3064)
!3082 = !DILocation(line: 362, column: 28, scope: !3055)
!3083 = !DILocation(line: 364, column: 7, scope: !3041)
!3084 = !DILocation(line: 367, column: 7, scope: !3041)
!3085 = !DILocation(line: 370, column: 7, scope: !3041)
!3086 = !DILocation(line: 373, column: 12, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3041, file: !130, line: 373, column: 11)
!3088 = !DILocation(line: 373, column: 11, scope: !3041)
!3089 = !DILocation(line: 378, column: 12, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3041, file: !130, line: 378, column: 11)
!3091 = !DILocation(line: 378, column: 11, scope: !3041)
!3092 = !DILocation(line: 379, column: 9, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3094, file: !130, discriminator: 1)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !130, line: 379, column: 9)
!3095 = distinct !DILexicalBlock(scope: !3090, file: !130, line: 379, column: 9)
!3096 = !DILocation(line: 379, column: 9, scope: !3097)
!3097 = !DILexicalBlockFile(scope: !3095, file: !130, discriminator: 1)
!3098 = !DILocation(line: 379, column: 9, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3094, file: !130, discriminator: 2)
!3100 = !DILocation(line: 386, column: 7, scope: !3041)
!3101 = !DILocation(line: 389, column: 7, scope: !3041)
!3102 = !DILocation(line: 255, column: 10, scope: !2949)
!3103 = !DILocation(line: 392, column: 8, scope: !2978)
!3104 = !DILocation(line: 392, column: 27, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !2977, file: !130, discriminator: 1)
!3106 = !DILocation(line: 392, column: 19, scope: !3105)
!3107 = !DILocation(line: 392, column: 60, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !2977, file: !130, discriminator: 3)
!3109 = !DILocation(line: 392, column: 3, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !2978, file: !130, discriminator: 4)
!3111 = !DILocation(line: 392, column: 41, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !2977, file: !130, discriminator: 2)
!3113 = !DILocation(line: 392, column: 48, scope: !3112)
!3114 = !DILocation(line: 396, column: 12, scope: !2976)
!3115 = !DILocation(line: 397, column: 12, scope: !2976)
!3116 = !DILocation(line: 398, column: 12, scope: !2976)
!3117 = !DILocation(line: 401, column: 11, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !2976, file: !130, line: 400, column: 11)
!3119 = !DILocation(line: 403, column: 17, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !3118, file: !130, discriminator: 1)
!3121 = !DILocation(line: 404, column: 39, scope: !3118)
!3122 = !DILocation(line: 408, column: 32, scope: !3118)
!3123 = !DILocation(line: 404, column: 19, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3118, file: !130, discriminator: 2)
!3125 = !DILocation(line: 404, column: 15, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !3118, file: !130, discriminator: 4)
!3127 = !DILocation(line: 409, column: 11, scope: !3118)
!3128 = !DILocation(line: 409, column: 26, scope: !3120)
!3129 = !DILocation(line: 409, column: 14, scope: !3120)
!3130 = !DILocation(line: 400, column: 11, scope: !3131)
!3131 = !DILexicalBlockFile(scope: !2976, file: !130, discriminator: 1)
!3132 = !DILocation(line: 416, column: 11, scope: !2976)
!3133 = !DILocation(line: 394, column: 21, scope: !2976)
!3134 = !DILocation(line: 417, column: 7, scope: !2976)
!3135 = !DILocation(line: 420, column: 15, scope: !2985)
!3136 = !DILocation(line: 422, column: 15, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3138, file: !130, discriminator: 1)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !130, line: 422, column: 15)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !130, line: 421, column: 13)
!3140 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 420, column: 15)
!3141 = !DILocation(line: 422, column: 15, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !3143, file: !130, discriminator: 4)
!3143 = distinct !DILexicalBlock(scope: !3138, file: !130, line: 422, column: 15)
!3144 = !DILocation(line: 422, column: 15, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3143, file: !130, discriminator: 3)
!3146 = !DILocation(line: 422, column: 15, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3148, file: !130, discriminator: 6)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !130, line: 422, column: 15)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !130, line: 422, column: 15)
!3150 = distinct !DILexicalBlock(scope: !3143, file: !130, line: 422, column: 15)
!3151 = !DILocation(line: 422, column: 15, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3149, file: !130, discriminator: 6)
!3153 = !DILocation(line: 422, column: 15, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3148, file: !130, discriminator: 7)
!3155 = !DILocation(line: 422, column: 15, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !3149, file: !130, discriminator: 8)
!3157 = !DILocation(line: 422, column: 15, scope: !3158)
!3158 = !DILexicalBlockFile(scope: !3159, file: !130, discriminator: 11)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !130, line: 422, column: 15)
!3160 = distinct !DILexicalBlock(scope: !3150, file: !130, line: 422, column: 15)
!3161 = !DILocation(line: 422, column: 15, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !3160, file: !130, discriminator: 11)
!3163 = !DILocation(line: 422, column: 15, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3159, file: !130, discriminator: 12)
!3165 = !DILocation(line: 422, column: 15, scope: !3166)
!3166 = !DILexicalBlockFile(scope: !3160, file: !130, discriminator: 13)
!3167 = !DILocation(line: 422, column: 15, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3169, file: !130, discriminator: 16)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !130, line: 422, column: 15)
!3170 = distinct !DILexicalBlock(scope: !3150, file: !130, line: 422, column: 15)
!3171 = !DILocation(line: 422, column: 15, scope: !3172)
!3172 = !DILexicalBlockFile(scope: !3170, file: !130, discriminator: 16)
!3173 = !DILocation(line: 422, column: 15, scope: !3174)
!3174 = !DILexicalBlockFile(scope: !3169, file: !130, discriminator: 17)
!3175 = !DILocation(line: 422, column: 15, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3170, file: !130, discriminator: 18)
!3177 = !DILocation(line: 422, column: 15, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !3150, file: !130, discriminator: 20)
!3179 = !DILocation(line: 422, column: 15, scope: !3180)
!3180 = !DILexicalBlockFile(scope: !3181, file: !130, discriminator: 22)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !130, line: 422, column: 15)
!3182 = distinct !DILexicalBlock(scope: !3138, file: !130, line: 422, column: 15)
!3183 = !DILocation(line: 422, column: 15, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3182, file: !130, discriminator: 22)
!3185 = !DILocation(line: 422, column: 15, scope: !3186)
!3186 = !DILexicalBlockFile(scope: !3181, file: !130, discriminator: 23)
!3187 = !DILocation(line: 422, column: 15, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3182, file: !130, discriminator: 24)
!3189 = !DILocation(line: 430, column: 19, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3139, file: !130, line: 429, column: 19)
!3191 = !DILocation(line: 430, column: 24, scope: !3192)
!3192 = !DILexicalBlockFile(scope: !3190, file: !130, discriminator: 1)
!3193 = !DILocation(line: 430, column: 28, scope: !3192)
!3194 = !DILocation(line: 430, column: 38, scope: !3192)
!3195 = !DILocation(line: 430, column: 48, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3190, file: !130, discriminator: 2)
!3197 = !DILocation(line: 430, column: 59, scope: !3196)
!3198 = !DILocation(line: 432, column: 19, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3200, file: !130, discriminator: 1)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !130, line: 432, column: 19)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !130, line: 432, column: 19)
!3202 = distinct !DILexicalBlock(scope: !3190, file: !130, line: 431, column: 17)
!3203 = !DILocation(line: 432, column: 19, scope: !3204)
!3204 = !DILexicalBlockFile(scope: !3201, file: !130, discriminator: 1)
!3205 = !DILocation(line: 432, column: 19, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3200, file: !130, discriminator: 2)
!3207 = !DILocation(line: 432, column: 19, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !3201, file: !130, discriminator: 3)
!3209 = !DILocation(line: 433, column: 19, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3211, file: !130, discriminator: 1)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !130, line: 433, column: 19)
!3212 = distinct !DILexicalBlock(scope: !3202, file: !130, line: 433, column: 19)
!3213 = !DILocation(line: 433, column: 19, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !3212, file: !130, discriminator: 1)
!3215 = !DILocation(line: 433, column: 19, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3211, file: !130, discriminator: 2)
!3217 = !DILocation(line: 433, column: 19, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3212, file: !130, discriminator: 3)
!3219 = !DILocation(line: 434, column: 17, scope: !3202)
!3220 = !DILocation(line: 441, column: 20, scope: !3140)
!3221 = !DILocation(line: 446, column: 11, scope: !2985)
!3222 = !DILocation(line: 449, column: 19, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 447, column: 13)
!3224 = !DILocation(line: 455, column: 19, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3223, file: !130, line: 454, column: 19)
!3226 = !DILocation(line: 455, column: 24, scope: !3227)
!3227 = !DILexicalBlockFile(scope: !3225, file: !130, discriminator: 1)
!3228 = !DILocation(line: 455, column: 28, scope: !3227)
!3229 = !DILocation(line: 455, column: 38, scope: !3227)
!3230 = !DILocation(line: 455, column: 47, scope: !3231)
!3231 = !DILexicalBlockFile(scope: !3225, file: !130, discriminator: 2)
!3232 = !DILocation(line: 455, column: 41, scope: !3231)
!3233 = !DILocation(line: 455, column: 52, scope: !3231)
!3234 = !DILocation(line: 454, column: 19, scope: !3235)
!3235 = !DILexicalBlockFile(scope: !3223, file: !130, discriminator: 1)
!3236 = !DILocation(line: 456, column: 25, scope: !3225)
!3237 = !DILocation(line: 456, column: 17, scope: !3225)
!3238 = !DILocation(line: 463, column: 25, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3225, file: !130, line: 457, column: 19)
!3240 = !DILocation(line: 467, column: 21, scope: !3241)
!3241 = !DILexicalBlockFile(scope: !3242, file: !130, discriminator: 1)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !130, line: 467, column: 21)
!3243 = distinct !DILexicalBlock(scope: !3239, file: !130, line: 467, column: 21)
!3244 = !DILocation(line: 467, column: 21, scope: !3245)
!3245 = !DILexicalBlockFile(scope: !3243, file: !130, discriminator: 1)
!3246 = !DILocation(line: 467, column: 21, scope: !3247)
!3247 = !DILexicalBlockFile(scope: !3242, file: !130, discriminator: 2)
!3248 = !DILocation(line: 467, column: 21, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !3243, file: !130, discriminator: 3)
!3250 = !DILocation(line: 468, column: 21, scope: !3251)
!3251 = !DILexicalBlockFile(scope: !3252, file: !130, discriminator: 1)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !130, line: 468, column: 21)
!3253 = distinct !DILexicalBlock(scope: !3239, file: !130, line: 468, column: 21)
!3254 = !DILocation(line: 468, column: 21, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !3253, file: !130, discriminator: 1)
!3256 = !DILocation(line: 468, column: 21, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !3252, file: !130, discriminator: 2)
!3258 = !DILocation(line: 468, column: 21, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3253, file: !130, discriminator: 3)
!3260 = !DILocation(line: 469, column: 21, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !3262, file: !130, discriminator: 1)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !130, line: 469, column: 21)
!3263 = distinct !DILexicalBlock(scope: !3239, file: !130, line: 469, column: 21)
!3264 = !DILocation(line: 469, column: 21, scope: !3265)
!3265 = !DILexicalBlockFile(scope: !3263, file: !130, discriminator: 1)
!3266 = !DILocation(line: 469, column: 21, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !3262, file: !130, discriminator: 2)
!3268 = !DILocation(line: 469, column: 21, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !3263, file: !130, discriminator: 3)
!3270 = !DILocation(line: 470, column: 21, scope: !3271)
!3271 = !DILexicalBlockFile(scope: !3272, file: !130, discriminator: 1)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !130, line: 470, column: 21)
!3273 = distinct !DILexicalBlock(scope: !3239, file: !130, line: 470, column: 21)
!3274 = !DILocation(line: 470, column: 21, scope: !3275)
!3275 = !DILexicalBlockFile(scope: !3273, file: !130, discriminator: 1)
!3276 = !DILocation(line: 470, column: 21, scope: !3277)
!3277 = !DILexicalBlockFile(scope: !3272, file: !130, discriminator: 2)
!3278 = !DILocation(line: 470, column: 21, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !3273, file: !130, discriminator: 3)
!3280 = !DILocation(line: 471, column: 21, scope: !3239)
!3281 = !DILocation(line: 395, column: 21, scope: !2976)
!3282 = !DILocation(line: 484, column: 31, scope: !2985)
!3283 = !DILocation(line: 485, column: 31, scope: !2985)
!3284 = !DILocation(line: 487, column: 31, scope: !2985)
!3285 = !DILocation(line: 488, column: 31, scope: !2985)
!3286 = !DILocation(line: 489, column: 31, scope: !2985)
!3287 = !DILocation(line: 492, column: 15, scope: !2985)
!3288 = !DILocation(line: 494, column: 19, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !130, line: 493, column: 13)
!3290 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 492, column: 15)
!3291 = !DILocation(line: 501, column: 33, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 501, column: 15)
!3293 = !DILocation(line: 506, column: 15, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 505, column: 15)
!3295 = !DILocation(line: 510, column: 15, scope: !2985)
!3296 = !DILocation(line: 518, column: 26, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 518, column: 15)
!3298 = !DILocation(line: 518, column: 15, scope: !2985)
!3299 = !DILocation(line: 518, column: 40, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !3297, file: !130, discriminator: 1)
!3301 = !DILocation(line: 518, column: 47, scope: !3300)
!3302 = !DILocation(line: 522, column: 17, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 522, column: 15)
!3304 = !DILocation(line: 518, column: 18, scope: !3300)
!3305 = !DILocation(line: 518, column: 65, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !3297, file: !130, discriminator: 2)
!3307 = !DILocation(line: 518, column: 15, scope: !3308)
!3308 = !DILexicalBlockFile(scope: !2985, file: !130, discriminator: 2)
!3309 = !DILocation(line: 522, column: 15, scope: !2985)
!3310 = !DILocation(line: 526, column: 11, scope: !2985)
!3311 = !DILocation(line: 541, column: 15, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 540, column: 15)
!3313 = !DILocation(line: 548, column: 15, scope: !2985)
!3314 = !DILocation(line: 550, column: 19, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !130, line: 549, column: 13)
!3316 = distinct !DILexicalBlock(scope: !2985, file: !130, line: 548, column: 15)
!3317 = !DILocation(line: 553, column: 19, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3315, file: !130, line: 553, column: 19)
!3319 = !DILocation(line: 553, column: 35, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !3318, file: !130, discriminator: 1)
!3321 = !DILocation(line: 553, column: 30, scope: !3318)
!3322 = !DILocation(line: 562, column: 15, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3324, file: !130, discriminator: 1)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !130, line: 562, column: 15)
!3325 = distinct !DILexicalBlock(scope: !3315, file: !130, line: 562, column: 15)
!3326 = !DILocation(line: 562, column: 15, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !3325, file: !130, discriminator: 1)
!3328 = !DILocation(line: 562, column: 15, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !3324, file: !130, discriminator: 2)
!3330 = !DILocation(line: 562, column: 15, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !3325, file: !130, discriminator: 3)
!3332 = !DILocation(line: 563, column: 15, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3334, file: !130, discriminator: 1)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !130, line: 563, column: 15)
!3335 = distinct !DILexicalBlock(scope: !3315, file: !130, line: 563, column: 15)
!3336 = !DILocation(line: 563, column: 15, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3335, file: !130, discriminator: 1)
!3338 = !DILocation(line: 563, column: 15, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3334, file: !130, discriminator: 2)
!3340 = !DILocation(line: 563, column: 15, scope: !3341)
!3341 = !DILexicalBlockFile(scope: !3335, file: !130, discriminator: 3)
!3342 = !DILocation(line: 564, column: 15, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3344, file: !130, discriminator: 1)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !130, line: 564, column: 15)
!3345 = distinct !DILexicalBlock(scope: !3315, file: !130, line: 564, column: 15)
!3346 = !DILocation(line: 564, column: 15, scope: !3347)
!3347 = !DILexicalBlockFile(scope: !3345, file: !130, discriminator: 1)
!3348 = !DILocation(line: 564, column: 15, scope: !3349)
!3349 = !DILexicalBlockFile(scope: !3344, file: !130, discriminator: 2)
!3350 = !DILocation(line: 564, column: 15, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !3345, file: !130, discriminator: 3)
!3352 = !DILocation(line: 566, column: 13, scope: !3315)
!3353 = !DILocation(line: 606, column: 17, scope: !2984)
!3354 = !DILocation(line: 602, column: 20, scope: !2984)
!3355 = !DILocation(line: 609, column: 29, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !2989, file: !130, line: 607, column: 15)
!3357 = !DILocation(line: 609, column: 27, scope: !3356)
!3358 = !DILocation(line: 604, column: 18, scope: !2984)
!3359 = !DILocation(line: 610, column: 15, scope: !3356)
!3360 = !DILocation(line: 613, column: 17, scope: !2988)
!3361 = !DILocation(line: 614, column: 17, scope: !2988)
!3362 = !DILocation(line: 618, column: 29, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !2988, file: !130, line: 618, column: 21)
!3364 = !DILocation(line: 618, column: 21, scope: !2988)
!3365 = distinct !{!3365, !3366, !3367}
!3366 = !DILocation(line: 621, column: 17, scope: !2988)
!3367 = !DILocation(line: 667, column: 44, scope: !2988)
!3368 = !DILocation(line: 619, column: 29, scope: !3363)
!3369 = !DILocation(line: 619, column: 19, scope: !3363)
!3370 = !DILocation(line: 623, column: 21, scope: !3005)
!3371 = !DILocation(line: 624, column: 56, scope: !3005)
!3372 = !DILocation(line: 624, column: 50, scope: !3005)
!3373 = !DILocation(line: 625, column: 53, scope: !3005)
!3374 = !DILocation(line: 613, column: 27, scope: !2988)
!3375 = !DILocation(line: 623, column: 29, scope: !3005)
!3376 = !DILocation(line: 624, column: 36, scope: !3005)
!3377 = !DILocation(line: 624, column: 28, scope: !3005)
!3378 = !DILocation(line: 626, column: 25, scope: !3005)
!3379 = !DILocation(line: 636, column: 38, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3381, file: !130, discriminator: 1)
!3381 = distinct !DILexicalBlock(scope: !3012, file: !130, line: 634, column: 23)
!3382 = !DILocation(line: 636, column: 48, scope: !3380)
!3383 = !DILocation(line: 636, column: 51, scope: !3384)
!3384 = !DILexicalBlockFile(scope: !3381, file: !130, discriminator: 2)
!3385 = !DILocation(line: 636, column: 48, scope: !3384)
!3386 = !DILocation(line: 636, column: 25, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3381, file: !130, discriminator: 3)
!3388 = !DILocation(line: 637, column: 28, scope: !3381)
!3389 = !DILocation(line: 636, column: 34, scope: !3380)
!3390 = distinct !{!3390, !3391, !3388}
!3391 = !DILocation(line: 636, column: 25, scope: !3381)
!3392 = !DILocation(line: 650, column: 43, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3394, file: !130, discriminator: 1)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !130, line: 650, column: 29)
!3395 = distinct !DILexicalBlock(scope: !3009, file: !130, line: 650, column: 29)
!3396 = !DILocation(line: 647, column: 29, scope: !3010)
!3397 = !DILocation(line: 649, column: 36, scope: !3009)
!3398 = !DILocation(line: 651, column: 49, scope: !3394)
!3399 = !DILocation(line: 651, column: 39, scope: !3394)
!3400 = !DILocation(line: 651, column: 31, scope: !3394)
!3401 = !DILocation(line: 650, column: 53, scope: !3402)
!3402 = !DILexicalBlockFile(scope: !3394, file: !130, discriminator: 2)
!3403 = !DILocation(line: 650, column: 29, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !3395, file: !130, discriminator: 1)
!3405 = distinct !{!3405, !3406, !3407}
!3406 = !DILocation(line: 650, column: 29, scope: !3395)
!3407 = !DILocation(line: 659, column: 33, scope: !3395)
!3408 = !DILocation(line: 666, column: 19, scope: !2988)
!3409 = !DILocation(line: 662, column: 41, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3011, file: !130, line: 662, column: 29)
!3411 = !DILocation(line: 662, column: 31, scope: !3410)
!3412 = !DILocation(line: 662, column: 29, scope: !3011)
!3413 = !DILocation(line: 664, column: 27, scope: !3011)
!3414 = !DILocation(line: 667, column: 26, scope: !2988)
!3415 = !DILocation(line: 667, column: 24, scope: !2988)
!3416 = !DILocation(line: 666, column: 19, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !3005, file: !130, discriminator: 3)
!3418 = !DILocation(line: 668, column: 15, scope: !2989)
!3419 = !DILocation(line: 670, column: 40, scope: !2984)
!3420 = !DILocation(line: 672, column: 19, scope: !3017)
!3421 = !DILocation(line: 672, column: 45, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3017, file: !130, discriminator: 1)
!3423 = !DILocation(line: 672, column: 23, scope: !3017)
!3424 = !DILocation(line: 676, column: 33, scope: !3016)
!3425 = !DILocation(line: 676, column: 24, scope: !3016)
!3426 = !DILocation(line: 678, column: 17, scope: !3016)
!3427 = !DILocation(line: 680, column: 43, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !130, line: 680, column: 25)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !130, line: 679, column: 19)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !130, line: 678, column: 17)
!3431 = distinct !DILexicalBlock(scope: !3016, file: !130, line: 678, column: 17)
!3432 = !DILocation(line: 682, column: 25, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3434, file: !130, discriminator: 1)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !130, line: 682, column: 25)
!3435 = distinct !DILexicalBlock(scope: !3428, file: !130, line: 681, column: 23)
!3436 = !DILocation(line: 682, column: 25, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3438, file: !130, discriminator: 4)
!3438 = distinct !DILexicalBlock(scope: !3434, file: !130, line: 682, column: 25)
!3439 = !DILocation(line: 682, column: 25, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3438, file: !130, discriminator: 3)
!3441 = !DILocation(line: 682, column: 25, scope: !3442)
!3442 = !DILexicalBlockFile(scope: !3443, file: !130, discriminator: 6)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !130, line: 682, column: 25)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !130, line: 682, column: 25)
!3445 = distinct !DILexicalBlock(scope: !3438, file: !130, line: 682, column: 25)
!3446 = !DILocation(line: 682, column: 25, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3444, file: !130, discriminator: 6)
!3448 = !DILocation(line: 682, column: 25, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3443, file: !130, discriminator: 7)
!3450 = !DILocation(line: 682, column: 25, scope: !3451)
!3451 = !DILexicalBlockFile(scope: !3444, file: !130, discriminator: 8)
!3452 = !DILocation(line: 682, column: 25, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !3454, file: !130, discriminator: 11)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !130, line: 682, column: 25)
!3455 = distinct !DILexicalBlock(scope: !3445, file: !130, line: 682, column: 25)
!3456 = !DILocation(line: 682, column: 25, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !3455, file: !130, discriminator: 11)
!3458 = !DILocation(line: 682, column: 25, scope: !3459)
!3459 = !DILexicalBlockFile(scope: !3454, file: !130, discriminator: 12)
!3460 = !DILocation(line: 682, column: 25, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3455, file: !130, discriminator: 13)
!3462 = !DILocation(line: 682, column: 25, scope: !3463)
!3463 = !DILexicalBlockFile(scope: !3464, file: !130, discriminator: 16)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !130, line: 682, column: 25)
!3465 = distinct !DILexicalBlock(scope: !3445, file: !130, line: 682, column: 25)
!3466 = !DILocation(line: 682, column: 25, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3465, file: !130, discriminator: 16)
!3468 = !DILocation(line: 682, column: 25, scope: !3469)
!3469 = !DILexicalBlockFile(scope: !3464, file: !130, discriminator: 17)
!3470 = !DILocation(line: 682, column: 25, scope: !3471)
!3471 = !DILexicalBlockFile(scope: !3465, file: !130, discriminator: 18)
!3472 = !DILocation(line: 682, column: 25, scope: !3473)
!3473 = !DILexicalBlockFile(scope: !3445, file: !130, discriminator: 20)
!3474 = !DILocation(line: 682, column: 25, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !3476, file: !130, discriminator: 22)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !130, line: 682, column: 25)
!3477 = distinct !DILexicalBlock(scope: !3434, file: !130, line: 682, column: 25)
!3478 = !DILocation(line: 682, column: 25, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !3477, file: !130, discriminator: 22)
!3480 = !DILocation(line: 682, column: 25, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3476, file: !130, discriminator: 23)
!3482 = !DILocation(line: 682, column: 25, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !3477, file: !130, discriminator: 24)
!3484 = !DILocation(line: 683, column: 25, scope: !3485)
!3485 = !DILexicalBlockFile(scope: !3486, file: !130, discriminator: 1)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !130, line: 683, column: 25)
!3487 = distinct !DILexicalBlock(scope: !3435, file: !130, line: 683, column: 25)
!3488 = !DILocation(line: 683, column: 25, scope: !3489)
!3489 = !DILexicalBlockFile(scope: !3487, file: !130, discriminator: 1)
!3490 = !DILocation(line: 683, column: 25, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3486, file: !130, discriminator: 2)
!3492 = !DILocation(line: 683, column: 25, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3487, file: !130, discriminator: 3)
!3494 = !DILocation(line: 684, column: 25, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3496, file: !130, discriminator: 1)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !130, line: 684, column: 25)
!3497 = distinct !DILexicalBlock(scope: !3435, file: !130, line: 684, column: 25)
!3498 = !DILocation(line: 684, column: 25, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3497, file: !130, discriminator: 1)
!3500 = !DILocation(line: 684, column: 25, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3496, file: !130, discriminator: 2)
!3502 = !DILocation(line: 684, column: 25, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3497, file: !130, discriminator: 3)
!3504 = !DILocation(line: 685, column: 38, scope: !3435)
!3505 = !DILocation(line: 685, column: 33, scope: !3435)
!3506 = !DILocation(line: 686, column: 23, scope: !3435)
!3507 = !DILocation(line: 687, column: 30, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3428, file: !130, line: 687, column: 30)
!3509 = !DILocation(line: 687, column: 30, scope: !3428)
!3510 = !DILocation(line: 689, column: 25, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !3512, file: !130, discriminator: 1)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !130, line: 689, column: 25)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !130, line: 689, column: 25)
!3514 = distinct !DILexicalBlock(scope: !3508, file: !130, line: 688, column: 23)
!3515 = !DILocation(line: 689, column: 25, scope: !3516)
!3516 = !DILexicalBlockFile(scope: !3513, file: !130, discriminator: 1)
!3517 = !DILocation(line: 689, column: 25, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !3512, file: !130, discriminator: 2)
!3519 = !DILocation(line: 689, column: 25, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3513, file: !130, discriminator: 3)
!3521 = !DILocation(line: 691, column: 23, scope: !3514)
!3522 = !DILocation(line: 692, column: 35, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3429, file: !130, line: 692, column: 25)
!3524 = !DILocation(line: 692, column: 30, scope: !3523)
!3525 = !DILocation(line: 692, column: 25, scope: !3429)
!3526 = !DILocation(line: 694, column: 21, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3528, file: !130, discriminator: 1)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !130, line: 694, column: 21)
!3529 = distinct !DILexicalBlock(scope: !3429, file: !130, line: 694, column: 21)
!3530 = !DILocation(line: 694, column: 21, scope: !3531)
!3531 = !DILexicalBlockFile(scope: !3528, file: !130, discriminator: 2)
!3532 = !DILocation(line: 694, column: 21, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !3534, file: !130, discriminator: 4)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !130, line: 694, column: 21)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !130, line: 694, column: 21)
!3536 = distinct !DILexicalBlock(scope: !3528, file: !130, line: 694, column: 21)
!3537 = !DILocation(line: 694, column: 21, scope: !3538)
!3538 = !DILexicalBlockFile(scope: !3535, file: !130, discriminator: 4)
!3539 = !DILocation(line: 694, column: 21, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !3534, file: !130, discriminator: 5)
!3541 = !DILocation(line: 694, column: 21, scope: !3542)
!3542 = !DILexicalBlockFile(scope: !3535, file: !130, discriminator: 6)
!3543 = !DILocation(line: 694, column: 21, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !3545, file: !130, discriminator: 9)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !130, line: 694, column: 21)
!3546 = distinct !DILexicalBlock(scope: !3536, file: !130, line: 694, column: 21)
!3547 = !DILocation(line: 694, column: 21, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !3546, file: !130, discriminator: 9)
!3549 = !DILocation(line: 694, column: 21, scope: !3550)
!3550 = !DILexicalBlockFile(scope: !3545, file: !130, discriminator: 10)
!3551 = !DILocation(line: 694, column: 21, scope: !3552)
!3552 = !DILexicalBlockFile(scope: !3546, file: !130, discriminator: 11)
!3553 = !DILocation(line: 694, column: 21, scope: !3554)
!3554 = !DILexicalBlockFile(scope: !3536, file: !130, discriminator: 13)
!3555 = !DILocation(line: 695, column: 21, scope: !3556)
!3556 = !DILexicalBlockFile(scope: !3557, file: !130, discriminator: 1)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !130, line: 695, column: 21)
!3558 = distinct !DILexicalBlock(scope: !3429, file: !130, line: 695, column: 21)
!3559 = !DILocation(line: 695, column: 21, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3558, file: !130, discriminator: 1)
!3561 = !DILocation(line: 695, column: 21, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3557, file: !130, discriminator: 2)
!3563 = !DILocation(line: 695, column: 21, scope: !3564)
!3564 = !DILexicalBlockFile(scope: !3558, file: !130, discriminator: 3)
!3565 = !DILocation(line: 696, column: 25, scope: !3429)
!3566 = !DILocation(line: 678, column: 17, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3430, file: !130, discriminator: 1)
!3568 = distinct !{!3568, !3569, !3570}
!3569 = !DILocation(line: 678, column: 17, scope: !3431)
!3570 = !DILocation(line: 697, column: 19, scope: !3431)
!3571 = !DILocation(line: 704, column: 34, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !2976, file: !130, line: 704, column: 11)
!3573 = !DILocation(line: 706, column: 14, scope: !3572)
!3574 = !DILocation(line: 707, column: 14, scope: !3572)
!3575 = !DILocation(line: 707, column: 35, scope: !3576)
!3576 = !DILexicalBlockFile(scope: !3572, file: !130, discriminator: 1)
!3577 = !DILocation(line: 707, column: 17, scope: !3576)
!3578 = !DILocation(line: 707, column: 53, scope: !3576)
!3579 = !DILocation(line: 707, column: 47, scope: !3576)
!3580 = !DILocation(line: 707, column: 65, scope: !3576)
!3581 = !DILocation(line: 708, column: 15, scope: !3576)
!3582 = !DILocation(line: 708, column: 11, scope: !3572)
!3583 = !DILocation(line: 704, column: 11, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !2976, file: !130, discriminator: 2)
!3585 = !DILocation(line: 712, column: 7, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3587, file: !130, discriminator: 1)
!3587 = distinct !DILexicalBlock(scope: !2976, file: !130, line: 712, column: 7)
!3588 = !DILocation(line: 712, column: 7, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3590, file: !130, discriminator: 4)
!3590 = distinct !DILexicalBlock(scope: !3587, file: !130, line: 712, column: 7)
!3591 = !DILocation(line: 712, column: 7, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3590, file: !130, discriminator: 3)
!3593 = !DILocation(line: 712, column: 7, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3595, file: !130, discriminator: 6)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !130, line: 712, column: 7)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !130, line: 712, column: 7)
!3597 = distinct !DILexicalBlock(scope: !3590, file: !130, line: 712, column: 7)
!3598 = !DILocation(line: 712, column: 7, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3596, file: !130, discriminator: 6)
!3600 = !DILocation(line: 712, column: 7, scope: !3601)
!3601 = !DILexicalBlockFile(scope: !3595, file: !130, discriminator: 7)
!3602 = !DILocation(line: 712, column: 7, scope: !3603)
!3603 = !DILexicalBlockFile(scope: !3596, file: !130, discriminator: 8)
!3604 = !DILocation(line: 712, column: 7, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3606, file: !130, discriminator: 11)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !130, line: 712, column: 7)
!3607 = distinct !DILexicalBlock(scope: !3597, file: !130, line: 712, column: 7)
!3608 = !DILocation(line: 712, column: 7, scope: !3609)
!3609 = !DILexicalBlockFile(scope: !3607, file: !130, discriminator: 11)
!3610 = !DILocation(line: 712, column: 7, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !3606, file: !130, discriminator: 12)
!3612 = !DILocation(line: 712, column: 7, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3607, file: !130, discriminator: 13)
!3614 = !DILocation(line: 712, column: 7, scope: !3615)
!3615 = !DILexicalBlockFile(scope: !3616, file: !130, discriminator: 16)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !130, line: 712, column: 7)
!3617 = distinct !DILexicalBlock(scope: !3597, file: !130, line: 712, column: 7)
!3618 = !DILocation(line: 712, column: 7, scope: !3619)
!3619 = !DILexicalBlockFile(scope: !3617, file: !130, discriminator: 16)
!3620 = !DILocation(line: 712, column: 7, scope: !3621)
!3621 = !DILexicalBlockFile(scope: !3616, file: !130, discriminator: 17)
!3622 = !DILocation(line: 712, column: 7, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !3617, file: !130, discriminator: 18)
!3624 = !DILocation(line: 712, column: 7, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3597, file: !130, discriminator: 20)
!3626 = !DILocation(line: 712, column: 7, scope: !3627)
!3627 = !DILexicalBlockFile(scope: !3628, file: !130, discriminator: 22)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !130, line: 712, column: 7)
!3629 = distinct !DILexicalBlock(scope: !3587, file: !130, line: 712, column: 7)
!3630 = !DILocation(line: 712, column: 7, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !3629, file: !130, discriminator: 22)
!3632 = !DILocation(line: 712, column: 7, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3628, file: !130, discriminator: 23)
!3634 = !DILocation(line: 712, column: 7, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !3629, file: !130, discriminator: 24)
!3636 = !DILocation(line: 715, column: 7, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !3638, file: !130, discriminator: 1)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !130, line: 715, column: 7)
!3639 = distinct !DILexicalBlock(scope: !2976, file: !130, line: 715, column: 7)
!3640 = !DILocation(line: 715, column: 7, scope: !3641)
!3641 = !DILexicalBlockFile(scope: !3638, file: !130, discriminator: 2)
!3642 = !DILocation(line: 715, column: 7, scope: !3643)
!3643 = !DILexicalBlockFile(scope: !3644, file: !130, discriminator: 4)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !130, line: 715, column: 7)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !130, line: 715, column: 7)
!3646 = distinct !DILexicalBlock(scope: !3638, file: !130, line: 715, column: 7)
!3647 = !DILocation(line: 715, column: 7, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3645, file: !130, discriminator: 4)
!3649 = !DILocation(line: 715, column: 7, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3644, file: !130, discriminator: 5)
!3651 = !DILocation(line: 715, column: 7, scope: !3652)
!3652 = !DILexicalBlockFile(scope: !3645, file: !130, discriminator: 6)
!3653 = !DILocation(line: 715, column: 7, scope: !3654)
!3654 = !DILexicalBlockFile(scope: !3655, file: !130, discriminator: 9)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !130, line: 715, column: 7)
!3656 = distinct !DILexicalBlock(scope: !3646, file: !130, line: 715, column: 7)
!3657 = !DILocation(line: 715, column: 7, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !3656, file: !130, discriminator: 9)
!3659 = !DILocation(line: 715, column: 7, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3655, file: !130, discriminator: 10)
!3661 = !DILocation(line: 715, column: 7, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3656, file: !130, discriminator: 11)
!3663 = !DILocation(line: 715, column: 7, scope: !3664)
!3664 = !DILexicalBlockFile(scope: !3646, file: !130, discriminator: 13)
!3665 = !DILocation(line: 716, column: 7, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !3667, file: !130, discriminator: 1)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !130, line: 716, column: 7)
!3668 = distinct !DILexicalBlock(scope: !2976, file: !130, line: 716, column: 7)
!3669 = !DILocation(line: 716, column: 7, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3668, file: !130, discriminator: 1)
!3671 = !DILocation(line: 716, column: 7, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3667, file: !130, discriminator: 2)
!3673 = !DILocation(line: 716, column: 7, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !3668, file: !130, discriminator: 3)
!3675 = !DILocation(line: 718, column: 13, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !2976, file: !130, line: 718, column: 11)
!3677 = !DILocation(line: 718, column: 11, scope: !2976)
!3678 = !DILocation(line: 720, column: 5, scope: !2977)
!3679 = !DILocation(line: 392, column: 75, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !2977, file: !130, discriminator: 5)
!3681 = !DILocation(line: 392, column: 3, scope: !3680)
!3682 = distinct !{!3682, !3683, !3684}
!3683 = !DILocation(line: 392, column: 3, scope: !2978)
!3684 = !DILocation(line: 720, column: 5, scope: !2978)
!3685 = !DILocation(line: 722, column: 11, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !2949, file: !130, line: 722, column: 7)
!3687 = !DILocation(line: 722, column: 16, scope: !3686)
!3688 = !DILocation(line: 730, column: 51, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !2949, file: !130, line: 730, column: 7)
!3690 = !DILocation(line: 731, column: 10, scope: !3691)
!3691 = !DILexicalBlockFile(scope: !3689, file: !130, discriminator: 1)
!3692 = !DILocation(line: 733, column: 11, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !130, line: 733, column: 11)
!3694 = distinct !DILexicalBlock(scope: !3689, file: !130, line: 732, column: 5)
!3695 = !DILocation(line: 733, column: 11, scope: !3694)
!3696 = !DILocation(line: 734, column: 16, scope: !3693)
!3697 = !DILocation(line: 734, column: 9, scope: !3693)
!3698 = !DILocation(line: 738, column: 18, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3693, file: !130, line: 738, column: 16)
!3700 = !DILocation(line: 738, column: 32, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3699, file: !130, discriminator: 1)
!3702 = !DILocation(line: 738, column: 29, scope: !3699)
!3703 = !DILocation(line: 747, column: 7, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !2949, file: !130, line: 747, column: 7)
!3705 = !DILocation(line: 747, column: 20, scope: !3704)
!3706 = !DILocation(line: 748, column: 12, scope: !3707)
!3707 = !DILexicalBlockFile(scope: !3708, file: !130, discriminator: 1)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !130, line: 748, column: 5)
!3709 = distinct !DILexicalBlock(scope: !3704, file: !130, line: 748, column: 5)
!3710 = !DILocation(line: 748, column: 5, scope: !3711)
!3711 = !DILexicalBlockFile(scope: !3709, file: !130, discriminator: 1)
!3712 = !DILocation(line: 749, column: 7, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !3714, file: !130, discriminator: 1)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !130, line: 749, column: 7)
!3715 = distinct !DILexicalBlock(scope: !3708, file: !130, line: 749, column: 7)
!3716 = !DILocation(line: 749, column: 7, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3715, file: !130, discriminator: 1)
!3718 = !DILocation(line: 749, column: 7, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !3714, file: !130, discriminator: 2)
!3720 = !DILocation(line: 749, column: 7, scope: !3721)
!3721 = !DILexicalBlockFile(scope: !3715, file: !130, discriminator: 3)
!3722 = !DILocation(line: 748, column: 39, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !3708, file: !130, discriminator: 2)
!3724 = distinct !{!3724, !3725, !3726}
!3725 = !DILocation(line: 748, column: 5, scope: !3709)
!3726 = !DILocation(line: 749, column: 7, scope: !3709)
!3727 = !DILocation(line: 751, column: 11, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !2949, file: !130, line: 751, column: 7)
!3729 = !DILocation(line: 751, column: 7, scope: !2949)
!3730 = !DILocation(line: 752, column: 5, scope: !3728)
!3731 = !DILocation(line: 752, column: 17, scope: !3728)
!3732 = !DILocation(line: 758, column: 21, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !2949, file: !130, line: 758, column: 7)
!3734 = !DILocation(line: 758, column: 54, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3733, file: !130, discriminator: 1)
!3736 = !DILocation(line: 758, column: 51, scope: !3733)
!3737 = !DILocation(line: 762, column: 42, scope: !2949)
!3738 = !DILocation(line: 760, column: 10, scope: !2949)
!3739 = !DILocation(line: 760, column: 3, scope: !2949)
!3740 = !DILocation(line: 764, column: 1, scope: !2949)
!3741 = distinct !DISubprogram(name: "gettext_quote", scope: !130, file: !130, line: 199, type: !3742, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!34, !34, !107}
!3744 = !{!3745, !3746, !3747, !3748}
!3745 = !DILocalVariable(name: "msgid", arg: 1, scope: !3741, file: !130, line: 199, type: !34)
!3746 = !DILocalVariable(name: "s", arg: 2, scope: !3741, file: !130, line: 199, type: !107)
!3747 = !DILocalVariable(name: "translation", scope: !3741, file: !130, line: 201, type: !34)
!3748 = !DILocalVariable(name: "locale_code", scope: !3741, file: !130, line: 202, type: !34)
!3749 = !DILocation(line: 199, column: 28, scope: !3741)
!3750 = !DILocation(line: 199, column: 54, scope: !3741)
!3751 = !DILocation(line: 201, column: 29, scope: !3741)
!3752 = !DILocation(line: 201, column: 15, scope: !3741)
!3753 = !DILocation(line: 204, column: 19, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3741, file: !130, line: 204, column: 7)
!3755 = !DILocation(line: 204, column: 7, scope: !3741)
!3756 = !DILocation(line: 225, column: 17, scope: !3741)
!3757 = !DILocation(line: 202, column: 15, scope: !3741)
!3758 = !DILocalVariable(name: "s2", arg: 2, scope: !3759, file: !3760, line: 160, type: !34)
!3759 = distinct !DISubprogram(name: "strcaseeq0", scope: !3760, file: !3760, line: 160, type: !3761, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3763)
!3760 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!37, !34, !34, !36, !36, !36, !36, !36, !36, !36, !36, !36}
!3763 = !{!3764, !3758, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773}
!3764 = !DILocalVariable(name: "s1", arg: 1, scope: !3759, file: !3760, line: 160, type: !34)
!3765 = !DILocalVariable(name: "s20", arg: 3, scope: !3759, file: !3760, line: 160, type: !36)
!3766 = !DILocalVariable(name: "s21", arg: 4, scope: !3759, file: !3760, line: 160, type: !36)
!3767 = !DILocalVariable(name: "s22", arg: 5, scope: !3759, file: !3760, line: 160, type: !36)
!3768 = !DILocalVariable(name: "s23", arg: 6, scope: !3759, file: !3760, line: 160, type: !36)
!3769 = !DILocalVariable(name: "s24", arg: 7, scope: !3759, file: !3760, line: 160, type: !36)
!3770 = !DILocalVariable(name: "s25", arg: 8, scope: !3759, file: !3760, line: 160, type: !36)
!3771 = !DILocalVariable(name: "s26", arg: 9, scope: !3759, file: !3760, line: 160, type: !36)
!3772 = !DILocalVariable(name: "s27", arg: 10, scope: !3759, file: !3760, line: 160, type: !36)
!3773 = !DILocalVariable(name: "s28", arg: 11, scope: !3759, file: !3760, line: 160, type: !36)
!3774 = !DILocation(line: 160, column: 41, scope: !3759, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 226, column: 7, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3741, file: !130, line: 226, column: 7)
!3777 = !DILocation(line: 160, column: 120, scope: !3759, inlinedAt: !3775)
!3778 = !DILocation(line: 160, column: 130, scope: !3759, inlinedAt: !3775)
!3779 = !DILocation(line: 162, column: 7, scope: !3780, inlinedAt: !3775)
!3780 = !DILexicalBlockFile(scope: !3781, file: !3760, discriminator: 1)
!3781 = distinct !DILexicalBlock(scope: !3759, file: !3760, line: 162, column: 7)
!3782 = !DILocalVariable(name: "s2", arg: 2, scope: !3783, file: !3760, line: 146, type: !34)
!3783 = distinct !DISubprogram(name: "strcaseeq1", scope: !3760, file: !3760, line: 146, type: !3784, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!37, !34, !34, !36, !36, !36, !36, !36, !36, !36, !36}
!3786 = !{!3787, !3782, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795}
!3787 = !DILocalVariable(name: "s1", arg: 1, scope: !3783, file: !3760, line: 146, type: !34)
!3788 = !DILocalVariable(name: "s21", arg: 3, scope: !3783, file: !3760, line: 146, type: !36)
!3789 = !DILocalVariable(name: "s22", arg: 4, scope: !3783, file: !3760, line: 146, type: !36)
!3790 = !DILocalVariable(name: "s23", arg: 5, scope: !3783, file: !3760, line: 146, type: !36)
!3791 = !DILocalVariable(name: "s24", arg: 6, scope: !3783, file: !3760, line: 146, type: !36)
!3792 = !DILocalVariable(name: "s25", arg: 7, scope: !3783, file: !3760, line: 146, type: !36)
!3793 = !DILocalVariable(name: "s26", arg: 8, scope: !3783, file: !3760, line: 146, type: !36)
!3794 = !DILocalVariable(name: "s27", arg: 9, scope: !3783, file: !3760, line: 146, type: !36)
!3795 = !DILocalVariable(name: "s28", arg: 10, scope: !3783, file: !3760, line: 146, type: !36)
!3796 = !DILocation(line: 146, column: 41, scope: !3783, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 167, column: 16, scope: !3798, inlinedAt: !3775)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !3760, line: 164, column: 11)
!3799 = distinct !DILexicalBlock(scope: !3781, file: !3760, line: 163, column: 5)
!3800 = !DILocation(line: 146, column: 110, scope: !3783, inlinedAt: !3797)
!3801 = !DILocation(line: 146, column: 120, scope: !3783, inlinedAt: !3797)
!3802 = !DILocation(line: 148, column: 7, scope: !3803, inlinedAt: !3797)
!3803 = !DILexicalBlockFile(scope: !3804, file: !3760, discriminator: 1)
!3804 = distinct !DILexicalBlock(scope: !3783, file: !3760, line: 148, column: 7)
!3805 = !DILocalVariable(name: "s2", arg: 2, scope: !3806, file: !3760, line: 132, type: !34)
!3806 = distinct !DISubprogram(name: "strcaseeq2", scope: !3760, file: !3760, line: 132, type: !3807, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!37, !34, !34, !36, !36, !36, !36, !36, !36, !36}
!3809 = !{!3810, !3805, !3811, !3812, !3813, !3814, !3815, !3816, !3817}
!3810 = !DILocalVariable(name: "s1", arg: 1, scope: !3806, file: !3760, line: 132, type: !34)
!3811 = !DILocalVariable(name: "s22", arg: 3, scope: !3806, file: !3760, line: 132, type: !36)
!3812 = !DILocalVariable(name: "s23", arg: 4, scope: !3806, file: !3760, line: 132, type: !36)
!3813 = !DILocalVariable(name: "s24", arg: 5, scope: !3806, file: !3760, line: 132, type: !36)
!3814 = !DILocalVariable(name: "s25", arg: 6, scope: !3806, file: !3760, line: 132, type: !36)
!3815 = !DILocalVariable(name: "s26", arg: 7, scope: !3806, file: !3760, line: 132, type: !36)
!3816 = !DILocalVariable(name: "s27", arg: 8, scope: !3806, file: !3760, line: 132, type: !36)
!3817 = !DILocalVariable(name: "s28", arg: 9, scope: !3806, file: !3760, line: 132, type: !36)
!3818 = !DILocation(line: 132, column: 41, scope: !3806, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 153, column: 16, scope: !3820, inlinedAt: !3797)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !3760, line: 150, column: 11)
!3821 = distinct !DILexicalBlock(scope: !3804, file: !3760, line: 149, column: 5)
!3822 = !DILocation(line: 132, column: 100, scope: !3806, inlinedAt: !3819)
!3823 = !DILocation(line: 132, column: 110, scope: !3806, inlinedAt: !3819)
!3824 = !DILocation(line: 134, column: 7, scope: !3825, inlinedAt: !3819)
!3825 = !DILexicalBlockFile(scope: !3826, file: !3760, discriminator: 1)
!3826 = distinct !DILexicalBlock(scope: !3806, file: !3760, line: 134, column: 7)
!3827 = !DILocalVariable(name: "s2", arg: 2, scope: !3828, file: !3760, line: 118, type: !34)
!3828 = distinct !DISubprogram(name: "strcaseeq3", scope: !3760, file: !3760, line: 118, type: !3829, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3831)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!37, !34, !34, !36, !36, !36, !36, !36, !36}
!3831 = !{!3832, !3827, !3833, !3834, !3835, !3836, !3837, !3838}
!3832 = !DILocalVariable(name: "s1", arg: 1, scope: !3828, file: !3760, line: 118, type: !34)
!3833 = !DILocalVariable(name: "s23", arg: 3, scope: !3828, file: !3760, line: 118, type: !36)
!3834 = !DILocalVariable(name: "s24", arg: 4, scope: !3828, file: !3760, line: 118, type: !36)
!3835 = !DILocalVariable(name: "s25", arg: 5, scope: !3828, file: !3760, line: 118, type: !36)
!3836 = !DILocalVariable(name: "s26", arg: 6, scope: !3828, file: !3760, line: 118, type: !36)
!3837 = !DILocalVariable(name: "s27", arg: 7, scope: !3828, file: !3760, line: 118, type: !36)
!3838 = !DILocalVariable(name: "s28", arg: 8, scope: !3828, file: !3760, line: 118, type: !36)
!3839 = !DILocation(line: 118, column: 41, scope: !3828, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 139, column: 16, scope: !3841, inlinedAt: !3819)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3760, line: 136, column: 11)
!3842 = distinct !DILexicalBlock(scope: !3826, file: !3760, line: 135, column: 5)
!3843 = !DILocation(line: 118, column: 90, scope: !3828, inlinedAt: !3840)
!3844 = !DILocation(line: 118, column: 100, scope: !3828, inlinedAt: !3840)
!3845 = !DILocation(line: 120, column: 7, scope: !3846, inlinedAt: !3840)
!3846 = !DILexicalBlockFile(scope: !3847, file: !3760, discriminator: 2)
!3847 = distinct !DILexicalBlock(scope: !3828, file: !3760, line: 120, column: 7)
!3848 = !DILocation(line: 120, column: 7, scope: !3849, inlinedAt: !3840)
!3849 = !DILexicalBlockFile(scope: !3828, file: !3760, discriminator: 2)
!3850 = !DILocalVariable(name: "s2", arg: 2, scope: !3851, file: !3760, line: 104, type: !34)
!3851 = distinct !DISubprogram(name: "strcaseeq4", scope: !3760, file: !3760, line: 104, type: !3852, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!37, !34, !34, !36, !36, !36, !36, !36}
!3854 = !{!3855, !3850, !3856, !3857, !3858, !3859, !3860}
!3855 = !DILocalVariable(name: "s1", arg: 1, scope: !3851, file: !3760, line: 104, type: !34)
!3856 = !DILocalVariable(name: "s24", arg: 3, scope: !3851, file: !3760, line: 104, type: !36)
!3857 = !DILocalVariable(name: "s25", arg: 4, scope: !3851, file: !3760, line: 104, type: !36)
!3858 = !DILocalVariable(name: "s26", arg: 5, scope: !3851, file: !3760, line: 104, type: !36)
!3859 = !DILocalVariable(name: "s27", arg: 6, scope: !3851, file: !3760, line: 104, type: !36)
!3860 = !DILocalVariable(name: "s28", arg: 7, scope: !3851, file: !3760, line: 104, type: !36)
!3861 = !DILocation(line: 104, column: 41, scope: !3851, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 125, column: 16, scope: !3863, inlinedAt: !3840)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !3760, line: 122, column: 11)
!3864 = distinct !DILexicalBlock(scope: !3847, file: !3760, line: 121, column: 5)
!3865 = !DILocation(line: 104, column: 80, scope: !3851, inlinedAt: !3862)
!3866 = !DILocation(line: 104, column: 90, scope: !3851, inlinedAt: !3862)
!3867 = !DILocation(line: 106, column: 7, scope: !3868, inlinedAt: !3862)
!3868 = !DILexicalBlockFile(scope: !3869, file: !3760, discriminator: 2)
!3869 = distinct !DILexicalBlock(scope: !3851, file: !3760, line: 106, column: 7)
!3870 = !DILocation(line: 106, column: 7, scope: !3871, inlinedAt: !3862)
!3871 = !DILexicalBlockFile(scope: !3851, file: !3760, discriminator: 2)
!3872 = !DILocalVariable(name: "s2", arg: 2, scope: !3873, file: !3760, line: 90, type: !34)
!3873 = distinct !DISubprogram(name: "strcaseeq5", scope: !3760, file: !3760, line: 90, type: !3874, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!37, !34, !34, !36, !36, !36, !36}
!3876 = !{!3877, !3872, !3878, !3879, !3880, !3881}
!3877 = !DILocalVariable(name: "s1", arg: 1, scope: !3873, file: !3760, line: 90, type: !34)
!3878 = !DILocalVariable(name: "s25", arg: 3, scope: !3873, file: !3760, line: 90, type: !36)
!3879 = !DILocalVariable(name: "s26", arg: 4, scope: !3873, file: !3760, line: 90, type: !36)
!3880 = !DILocalVariable(name: "s27", arg: 5, scope: !3873, file: !3760, line: 90, type: !36)
!3881 = !DILocalVariable(name: "s28", arg: 6, scope: !3873, file: !3760, line: 90, type: !36)
!3882 = !DILocation(line: 90, column: 41, scope: !3873, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 111, column: 16, scope: !3884, inlinedAt: !3862)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !3760, line: 108, column: 11)
!3885 = distinct !DILexicalBlock(scope: !3869, file: !3760, line: 107, column: 5)
!3886 = !DILocation(line: 90, column: 70, scope: !3873, inlinedAt: !3883)
!3887 = !DILocation(line: 90, column: 80, scope: !3873, inlinedAt: !3883)
!3888 = !DILocation(line: 92, column: 7, scope: !3889, inlinedAt: !3883)
!3889 = !DILexicalBlockFile(scope: !3890, file: !3760, discriminator: 2)
!3890 = distinct !DILexicalBlock(scope: !3873, file: !3760, line: 92, column: 7)
!3891 = !DILocation(line: 92, column: 7, scope: !3892, inlinedAt: !3883)
!3892 = !DILexicalBlockFile(scope: !3873, file: !3760, discriminator: 2)
!3893 = !DILocation(line: 227, column: 12, scope: !3776)
!3894 = !DILocation(line: 227, column: 21, scope: !3776)
!3895 = !DILocation(line: 227, column: 5, scope: !3776)
!3896 = !DILocation(line: 146, column: 41, scope: !3783, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 167, column: 16, scope: !3798, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 228, column: 7, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3741, file: !130, line: 228, column: 7)
!3900 = !DILocation(line: 146, column: 110, scope: !3783, inlinedAt: !3897)
!3901 = !DILocation(line: 146, column: 120, scope: !3783, inlinedAt: !3897)
!3902 = !DILocation(line: 148, column: 7, scope: !3803, inlinedAt: !3897)
!3903 = !DILocation(line: 132, column: 41, scope: !3806, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 153, column: 16, scope: !3820, inlinedAt: !3897)
!3905 = !DILocation(line: 132, column: 100, scope: !3806, inlinedAt: !3904)
!3906 = !DILocation(line: 132, column: 110, scope: !3806, inlinedAt: !3904)
!3907 = !DILocation(line: 134, column: 7, scope: !3908, inlinedAt: !3904)
!3908 = !DILexicalBlockFile(scope: !3826, file: !3760, discriminator: 2)
!3909 = !DILocation(line: 134, column: 7, scope: !3910, inlinedAt: !3904)
!3910 = !DILexicalBlockFile(scope: !3806, file: !3760, discriminator: 2)
!3911 = !DILocation(line: 118, column: 41, scope: !3828, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 139, column: 16, scope: !3841, inlinedAt: !3904)
!3913 = !DILocation(line: 118, column: 90, scope: !3828, inlinedAt: !3912)
!3914 = !DILocation(line: 118, column: 100, scope: !3828, inlinedAt: !3912)
!3915 = !DILocation(line: 120, column: 7, scope: !3846, inlinedAt: !3912)
!3916 = !DILocation(line: 120, column: 7, scope: !3849, inlinedAt: !3912)
!3917 = !DILocation(line: 104, column: 41, scope: !3851, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 125, column: 16, scope: !3863, inlinedAt: !3912)
!3919 = !DILocation(line: 104, column: 80, scope: !3851, inlinedAt: !3918)
!3920 = !DILocation(line: 104, column: 90, scope: !3851, inlinedAt: !3918)
!3921 = !DILocation(line: 106, column: 7, scope: !3868, inlinedAt: !3918)
!3922 = !DILocation(line: 106, column: 7, scope: !3871, inlinedAt: !3918)
!3923 = !DILocation(line: 90, column: 41, scope: !3873, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 111, column: 16, scope: !3884, inlinedAt: !3918)
!3925 = !DILocation(line: 90, column: 70, scope: !3873, inlinedAt: !3924)
!3926 = !DILocation(line: 90, column: 80, scope: !3873, inlinedAt: !3924)
!3927 = !DILocation(line: 92, column: 7, scope: !3889, inlinedAt: !3924)
!3928 = !DILocation(line: 92, column: 7, scope: !3892, inlinedAt: !3924)
!3929 = !DILocalVariable(name: "s2", arg: 2, scope: !3930, file: !3760, line: 76, type: !34)
!3930 = distinct !DISubprogram(name: "strcaseeq6", scope: !3760, file: !3760, line: 76, type: !3931, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!37, !34, !34, !36, !36, !36}
!3933 = !{!3934, !3929, !3935, !3936, !3937}
!3934 = !DILocalVariable(name: "s1", arg: 1, scope: !3930, file: !3760, line: 76, type: !34)
!3935 = !DILocalVariable(name: "s26", arg: 3, scope: !3930, file: !3760, line: 76, type: !36)
!3936 = !DILocalVariable(name: "s27", arg: 4, scope: !3930, file: !3760, line: 76, type: !36)
!3937 = !DILocalVariable(name: "s28", arg: 5, scope: !3930, file: !3760, line: 76, type: !36)
!3938 = !DILocation(line: 76, column: 41, scope: !3930, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 97, column: 16, scope: !3940, inlinedAt: !3924)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !3760, line: 94, column: 11)
!3941 = distinct !DILexicalBlock(scope: !3890, file: !3760, line: 93, column: 5)
!3942 = !DILocation(line: 76, column: 60, scope: !3930, inlinedAt: !3939)
!3943 = !DILocation(line: 76, column: 70, scope: !3930, inlinedAt: !3939)
!3944 = !DILocation(line: 78, column: 7, scope: !3945, inlinedAt: !3939)
!3945 = !DILexicalBlockFile(scope: !3946, file: !3760, discriminator: 2)
!3946 = distinct !DILexicalBlock(scope: !3930, file: !3760, line: 78, column: 7)
!3947 = !DILocation(line: 78, column: 7, scope: !3948, inlinedAt: !3939)
!3948 = !DILexicalBlockFile(scope: !3930, file: !3760, discriminator: 2)
!3949 = !DILocalVariable(name: "s2", arg: 2, scope: !3950, file: !3760, line: 62, type: !34)
!3950 = distinct !DISubprogram(name: "strcaseeq7", scope: !3760, file: !3760, line: 62, type: !3951, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3953)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!37, !34, !34, !36, !36}
!3953 = !{!3954, !3949, !3955, !3956}
!3954 = !DILocalVariable(name: "s1", arg: 1, scope: !3950, file: !3760, line: 62, type: !34)
!3955 = !DILocalVariable(name: "s27", arg: 3, scope: !3950, file: !3760, line: 62, type: !36)
!3956 = !DILocalVariable(name: "s28", arg: 4, scope: !3950, file: !3760, line: 62, type: !36)
!3957 = !DILocation(line: 62, column: 41, scope: !3950, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 83, column: 16, scope: !3959, inlinedAt: !3939)
!3959 = distinct !DILexicalBlock(scope: !3960, file: !3760, line: 80, column: 11)
!3960 = distinct !DILexicalBlock(scope: !3946, file: !3760, line: 79, column: 5)
!3961 = !DILocation(line: 62, column: 50, scope: !3950, inlinedAt: !3958)
!3962 = !DILocation(line: 62, column: 60, scope: !3950, inlinedAt: !3958)
!3963 = !DILocation(line: 64, column: 7, scope: !3964, inlinedAt: !3958)
!3964 = !DILexicalBlockFile(scope: !3965, file: !3760, discriminator: 2)
!3965 = distinct !DILexicalBlock(scope: !3950, file: !3760, line: 64, column: 7)
!3966 = !DILocation(line: 228, column: 7, scope: !3741)
!3967 = !DILocation(line: 229, column: 12, scope: !3899)
!3968 = !DILocation(line: 229, column: 21, scope: !3899)
!3969 = !DILocation(line: 229, column: 5, scope: !3899)
!3970 = !DILocation(line: 231, column: 13, scope: !3741)
!3971 = !DILocation(line: 231, column: 11, scope: !3741)
!3972 = !DILocation(line: 231, column: 3, scope: !3741)
!3973 = !DILocation(line: 232, column: 1, scope: !3741)
!3974 = distinct !DISubprogram(name: "quotearg_alloc", scope: !130, file: !130, line: 791, type: !3975, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!77, !34, !26, !2817}
!3977 = !{!3978, !3979, !3980}
!3978 = !DILocalVariable(name: "arg", arg: 1, scope: !3974, file: !130, line: 791, type: !34)
!3979 = !DILocalVariable(name: "argsize", arg: 2, scope: !3974, file: !130, line: 791, type: !26)
!3980 = !DILocalVariable(name: "o", arg: 3, scope: !3974, file: !130, line: 792, type: !2817)
!3981 = !DILocation(line: 791, column: 29, scope: !3974)
!3982 = !DILocation(line: 791, column: 41, scope: !3974)
!3983 = !DILocation(line: 792, column: 47, scope: !3974)
!3984 = !DILocalVariable(name: "arg", arg: 1, scope: !3985, file: !130, line: 804, type: !34)
!3985 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !130, file: !130, line: 804, type: !3986, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!77, !34, !26, !537, !2817}
!3988 = !{!3984, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!3989 = !DILocalVariable(name: "argsize", arg: 2, scope: !3985, file: !130, line: 804, type: !26)
!3990 = !DILocalVariable(name: "size", arg: 3, scope: !3985, file: !130, line: 804, type: !537)
!3991 = !DILocalVariable(name: "o", arg: 4, scope: !3985, file: !130, line: 805, type: !2817)
!3992 = !DILocalVariable(name: "p", scope: !3985, file: !130, line: 807, type: !2817)
!3993 = !DILocalVariable(name: "e", scope: !3985, file: !130, line: 808, type: !37)
!3994 = !DILocalVariable(name: "flags", scope: !3985, file: !130, line: 810, type: !37)
!3995 = !DILocalVariable(name: "bufsize", scope: !3985, file: !130, line: 811, type: !26)
!3996 = !DILocalVariable(name: "buf", scope: !3985, file: !130, line: 815, type: !77)
!3997 = !DILocation(line: 804, column: 33, scope: !3985, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 794, column: 10, scope: !3974)
!3999 = !DILocation(line: 804, column: 45, scope: !3985, inlinedAt: !3998)
!4000 = !DILocation(line: 804, column: 62, scope: !3985, inlinedAt: !3998)
!4001 = !DILocation(line: 805, column: 51, scope: !3985, inlinedAt: !3998)
!4002 = !DILocation(line: 807, column: 37, scope: !3985, inlinedAt: !3998)
!4003 = !DILocation(line: 807, column: 33, scope: !3985, inlinedAt: !3998)
!4004 = !DILocation(line: 808, column: 11, scope: !3985, inlinedAt: !3998)
!4005 = !DILocation(line: 808, column: 7, scope: !3985, inlinedAt: !3998)
!4006 = !DILocation(line: 810, column: 18, scope: !3985, inlinedAt: !3998)
!4007 = !DILocation(line: 810, column: 24, scope: !3985, inlinedAt: !3998)
!4008 = !DILocation(line: 810, column: 7, scope: !3985, inlinedAt: !3998)
!4009 = !DILocation(line: 811, column: 69, scope: !3985, inlinedAt: !3998)
!4010 = !DILocation(line: 812, column: 53, scope: !3985, inlinedAt: !3998)
!4011 = !DILocation(line: 813, column: 49, scope: !3985, inlinedAt: !3998)
!4012 = !DILocation(line: 814, column: 49, scope: !3985, inlinedAt: !3998)
!4013 = !DILocation(line: 811, column: 20, scope: !3985, inlinedAt: !3998)
!4014 = !DILocation(line: 814, column: 62, scope: !3985, inlinedAt: !3998)
!4015 = !DILocation(line: 811, column: 10, scope: !3985, inlinedAt: !3998)
!4016 = !DILocalVariable(name: "n", arg: 1, scope: !4017, file: !533, line: 220, type: !26)
!4017 = distinct !DISubprogram(name: "xcharalloc", scope: !533, file: !533, line: 220, type: !4018, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!77, !26}
!4020 = !{!4016}
!4021 = !DILocation(line: 220, column: 20, scope: !4017, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 815, column: 15, scope: !3985, inlinedAt: !3998)
!4023 = !DILocation(line: 222, column: 10, scope: !4017, inlinedAt: !4022)
!4024 = !DILocation(line: 815, column: 9, scope: !3985, inlinedAt: !3998)
!4025 = !DILocation(line: 816, column: 60, scope: !3985, inlinedAt: !3998)
!4026 = !DILocation(line: 818, column: 32, scope: !3985, inlinedAt: !3998)
!4027 = !DILocation(line: 818, column: 47, scope: !3985, inlinedAt: !3998)
!4028 = !DILocation(line: 816, column: 3, scope: !3985, inlinedAt: !3998)
!4029 = !DILocation(line: 819, column: 9, scope: !3985, inlinedAt: !3998)
!4030 = !DILocation(line: 794, column: 3, scope: !3974)
!4031 = !DILocation(line: 804, column: 33, scope: !3985)
!4032 = !DILocation(line: 804, column: 45, scope: !3985)
!4033 = !DILocation(line: 804, column: 62, scope: !3985)
!4034 = !DILocation(line: 805, column: 51, scope: !3985)
!4035 = !DILocation(line: 807, column: 37, scope: !3985)
!4036 = !DILocation(line: 807, column: 33, scope: !3985)
!4037 = !DILocation(line: 808, column: 11, scope: !3985)
!4038 = !DILocation(line: 808, column: 7, scope: !3985)
!4039 = !DILocation(line: 810, column: 18, scope: !3985)
!4040 = !DILocation(line: 810, column: 27, scope: !3985)
!4041 = !DILocation(line: 810, column: 24, scope: !3985)
!4042 = !DILocation(line: 810, column: 7, scope: !3985)
!4043 = !DILocation(line: 811, column: 69, scope: !3985)
!4044 = !DILocation(line: 812, column: 53, scope: !3985)
!4045 = !DILocation(line: 813, column: 49, scope: !3985)
!4046 = !DILocation(line: 814, column: 49, scope: !3985)
!4047 = !DILocation(line: 811, column: 20, scope: !3985)
!4048 = !DILocation(line: 814, column: 62, scope: !3985)
!4049 = !DILocation(line: 811, column: 10, scope: !3985)
!4050 = !DILocation(line: 220, column: 20, scope: !4017, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 815, column: 15, scope: !3985)
!4052 = !DILocation(line: 222, column: 10, scope: !4017, inlinedAt: !4051)
!4053 = !DILocation(line: 815, column: 9, scope: !3985)
!4054 = !DILocation(line: 816, column: 60, scope: !3985)
!4055 = !DILocation(line: 818, column: 32, scope: !3985)
!4056 = !DILocation(line: 818, column: 47, scope: !3985)
!4057 = !DILocation(line: 816, column: 3, scope: !3985)
!4058 = !DILocation(line: 819, column: 9, scope: !3985)
!4059 = !DILocation(line: 820, column: 7, scope: !3985)
!4060 = !DILocation(line: 821, column: 11, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !3985, file: !130, line: 820, column: 7)
!4062 = !{!2144, !2144, i64 0}
!4063 = !DILocation(line: 821, column: 5, scope: !4061)
!4064 = !DILocation(line: 822, column: 3, scope: !3985)
!4065 = distinct !DISubprogram(name: "quotearg_free", scope: !130, file: !130, line: 840, type: !1235, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4066)
!4066 = !{!4067, !4068}
!4067 = !DILocalVariable(name: "sv", scope: !4065, file: !130, line: 842, type: !156)
!4068 = !DILocalVariable(name: "i", scope: !4065, file: !130, line: 843, type: !37)
!4069 = !DILocation(line: 842, column: 24, scope: !4065)
!4070 = !DILocation(line: 842, column: 19, scope: !4065)
!4071 = !DILocation(line: 843, column: 7, scope: !4065)
!4072 = !DILocation(line: 844, column: 19, scope: !4073)
!4073 = !DILexicalBlockFile(scope: !4074, file: !130, discriminator: 1)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !130, line: 844, column: 3)
!4075 = distinct !DILexicalBlock(scope: !4065, file: !130, line: 844, column: 3)
!4076 = !DILocation(line: 844, column: 17, scope: !4073)
!4077 = !DILocation(line: 844, column: 3, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4075, file: !130, discriminator: 1)
!4079 = !DILocation(line: 845, column: 17, scope: !4074)
!4080 = !{!4081, !587, i64 8}
!4081 = !{!"slotvec", !2144, i64 0, !587, i64 8}
!4082 = !DILocation(line: 845, column: 5, scope: !4074)
!4083 = !DILocation(line: 844, column: 28, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !4074, file: !130, discriminator: 2)
!4085 = distinct !{!4085, !4086, !4087}
!4086 = !DILocation(line: 844, column: 3, scope: !4075)
!4087 = !DILocation(line: 845, column: 20, scope: !4075)
!4088 = !DILocation(line: 846, column: 13, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4065, file: !130, line: 846, column: 7)
!4090 = !DILocation(line: 846, column: 17, scope: !4089)
!4091 = !DILocation(line: 846, column: 7, scope: !4065)
!4092 = !DILocation(line: 848, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4089, file: !130, line: 847, column: 5)
!4094 = !DILocation(line: 849, column: 21, scope: !4093)
!4095 = !{!4081, !2144, i64 0}
!4096 = !DILocation(line: 850, column: 20, scope: !4093)
!4097 = !DILocation(line: 851, column: 5, scope: !4093)
!4098 = !DILocation(line: 852, column: 10, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4065, file: !130, line: 852, column: 7)
!4100 = !DILocation(line: 852, column: 7, scope: !4065)
!4101 = !DILocation(line: 854, column: 13, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4099, file: !130, line: 853, column: 5)
!4103 = !DILocation(line: 854, column: 7, scope: !4102)
!4104 = !DILocation(line: 855, column: 15, scope: !4102)
!4105 = !DILocation(line: 856, column: 5, scope: !4102)
!4106 = !DILocation(line: 857, column: 10, scope: !4065)
!4107 = !DILocation(line: 858, column: 1, scope: !4065)
!4108 = distinct !DISubprogram(name: "quotearg_n", scope: !130, file: !130, line: 922, type: !4109, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!77, !37, !34}
!4111 = !{!4112, !4113}
!4112 = !DILocalVariable(name: "n", arg: 1, scope: !4108, file: !130, line: 922, type: !37)
!4113 = !DILocalVariable(name: "arg", arg: 2, scope: !4108, file: !130, line: 922, type: !34)
!4114 = !DILocation(line: 922, column: 17, scope: !4108)
!4115 = !DILocation(line: 922, column: 32, scope: !4108)
!4116 = !DILocation(line: 924, column: 10, scope: !4108)
!4117 = !DILocation(line: 924, column: 3, scope: !4108)
!4118 = distinct !DISubprogram(name: "quotearg_n_options", scope: !130, file: !130, line: 869, type: !4119, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4121)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!77, !37, !34, !26, !2817}
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4128, !4131, !4133, !4134, !4135}
!4122 = !DILocalVariable(name: "n", arg: 1, scope: !4118, file: !130, line: 869, type: !37)
!4123 = !DILocalVariable(name: "arg", arg: 2, scope: !4118, file: !130, line: 869, type: !34)
!4124 = !DILocalVariable(name: "argsize", arg: 3, scope: !4118, file: !130, line: 869, type: !26)
!4125 = !DILocalVariable(name: "options", arg: 4, scope: !4118, file: !130, line: 870, type: !2817)
!4126 = !DILocalVariable(name: "e", scope: !4118, file: !130, line: 872, type: !37)
!4127 = !DILocalVariable(name: "sv", scope: !4118, file: !130, line: 874, type: !156)
!4128 = !DILocalVariable(name: "preallocated", scope: !4129, file: !130, line: 881, type: !87)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !130, line: 880, column: 5)
!4130 = distinct !DILexicalBlock(scope: !4118, file: !130, line: 879, column: 7)
!4131 = !DILocalVariable(name: "size", scope: !4132, file: !130, line: 894, type: !26)
!4132 = distinct !DILexicalBlock(scope: !4118, file: !130, line: 893, column: 3)
!4133 = !DILocalVariable(name: "val", scope: !4132, file: !130, line: 895, type: !77)
!4134 = !DILocalVariable(name: "flags", scope: !4132, file: !130, line: 897, type: !37)
!4135 = !DILocalVariable(name: "qsize", scope: !4132, file: !130, line: 898, type: !26)
!4136 = !DILocation(line: 869, column: 25, scope: !4118)
!4137 = !DILocation(line: 869, column: 40, scope: !4118)
!4138 = !DILocation(line: 869, column: 52, scope: !4118)
!4139 = !DILocation(line: 870, column: 51, scope: !4118)
!4140 = !DILocation(line: 872, column: 11, scope: !4118)
!4141 = !DILocation(line: 872, column: 7, scope: !4118)
!4142 = !DILocation(line: 874, column: 24, scope: !4118)
!4143 = !DILocation(line: 874, column: 19, scope: !4118)
!4144 = !DILocation(line: 876, column: 9, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4118, file: !130, line: 876, column: 7)
!4146 = !DILocation(line: 876, column: 7, scope: !4118)
!4147 = !DILocation(line: 877, column: 5, scope: !4145)
!4148 = !DILocation(line: 879, column: 7, scope: !4130)
!4149 = !DILocation(line: 879, column: 14, scope: !4130)
!4150 = !DILocation(line: 879, column: 7, scope: !4118)
!4151 = !DILocation(line: 881, column: 31, scope: !4129)
!4152 = !DILocation(line: 883, column: 67, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4129, file: !130, line: 883, column: 11)
!4154 = !DILocation(line: 883, column: 11, scope: !4129)
!4155 = !DILocation(line: 884, column: 9, scope: !4153)
!4156 = !DILocation(line: 886, column: 32, scope: !4157)
!4157 = !DILexicalBlockFile(scope: !4129, file: !130, discriminator: 3)
!4158 = !DILocation(line: 886, column: 61, scope: !4157)
!4159 = !DILocation(line: 886, column: 58, scope: !4157)
!4160 = !DILocation(line: 886, column: 66, scope: !4157)
!4161 = !DILocation(line: 886, column: 22, scope: !4157)
!4162 = !DILocation(line: 886, column: 15, scope: !4157)
!4163 = !DILocation(line: 887, column: 11, scope: !4129)
!4164 = !DILocation(line: 888, column: 15, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4129, file: !130, line: 887, column: 11)
!4166 = !{i64 0, i64 8, !4062, i64 8, i64 8, !586}
!4167 = !DILocation(line: 888, column: 9, scope: !4165)
!4168 = !DILocation(line: 889, column: 20, scope: !4129)
!4169 = !DILocation(line: 889, column: 18, scope: !4129)
!4170 = !DILocation(line: 889, column: 7, scope: !4129)
!4171 = !DILocation(line: 889, column: 38, scope: !4129)
!4172 = !DILocation(line: 889, column: 31, scope: !4129)
!4173 = !DILocation(line: 889, column: 48, scope: !4129)
!4174 = !DILocation(line: 890, column: 14, scope: !4129)
!4175 = !DILocation(line: 891, column: 5, scope: !4129)
!4176 = !DILocation(line: 894, column: 19, scope: !4132)
!4177 = !DILocation(line: 894, column: 25, scope: !4132)
!4178 = !DILocation(line: 894, column: 12, scope: !4132)
!4179 = !DILocation(line: 895, column: 23, scope: !4132)
!4180 = !DILocation(line: 895, column: 11, scope: !4132)
!4181 = !DILocation(line: 897, column: 26, scope: !4132)
!4182 = !DILocation(line: 897, column: 32, scope: !4132)
!4183 = !DILocation(line: 897, column: 9, scope: !4132)
!4184 = !DILocation(line: 899, column: 55, scope: !4132)
!4185 = !DILocation(line: 900, column: 46, scope: !4132)
!4186 = !DILocation(line: 901, column: 55, scope: !4132)
!4187 = !DILocation(line: 902, column: 55, scope: !4132)
!4188 = !DILocation(line: 898, column: 20, scope: !4132)
!4189 = !DILocation(line: 898, column: 12, scope: !4132)
!4190 = !DILocation(line: 904, column: 14, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4132, file: !130, line: 904, column: 9)
!4192 = !DILocation(line: 904, column: 9, scope: !4132)
!4193 = !DILocation(line: 906, column: 35, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4191, file: !130, line: 905, column: 7)
!4195 = !DILocation(line: 906, column: 20, scope: !4194)
!4196 = !DILocation(line: 907, column: 17, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4194, file: !130, line: 907, column: 13)
!4198 = !DILocation(line: 907, column: 13, scope: !4194)
!4199 = !DILocation(line: 908, column: 11, scope: !4197)
!4200 = !DILocation(line: 220, column: 20, scope: !4017, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 909, column: 27, scope: !4194)
!4202 = !DILocation(line: 222, column: 10, scope: !4017, inlinedAt: !4201)
!4203 = !DILocation(line: 909, column: 19, scope: !4194)
!4204 = !DILocation(line: 910, column: 69, scope: !4194)
!4205 = !DILocation(line: 912, column: 44, scope: !4194)
!4206 = !DILocation(line: 913, column: 44, scope: !4194)
!4207 = !DILocation(line: 910, column: 9, scope: !4194)
!4208 = !DILocation(line: 914, column: 7, scope: !4194)
!4209 = !DILocation(line: 916, column: 11, scope: !4132)
!4210 = !DILocation(line: 917, column: 5, scope: !4132)
!4211 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !130, file: !130, line: 928, type: !4212, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4214)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!77, !37, !34, !26}
!4214 = !{!4215, !4216, !4217}
!4215 = !DILocalVariable(name: "n", arg: 1, scope: !4211, file: !130, line: 928, type: !37)
!4216 = !DILocalVariable(name: "arg", arg: 2, scope: !4211, file: !130, line: 928, type: !34)
!4217 = !DILocalVariable(name: "argsize", arg: 3, scope: !4211, file: !130, line: 928, type: !26)
!4218 = !DILocation(line: 928, column: 21, scope: !4211)
!4219 = !DILocation(line: 928, column: 36, scope: !4211)
!4220 = !DILocation(line: 928, column: 48, scope: !4211)
!4221 = !DILocation(line: 930, column: 10, scope: !4211)
!4222 = !DILocation(line: 930, column: 3, scope: !4211)
!4223 = distinct !DISubprogram(name: "quotearg", scope: !130, file: !130, line: 934, type: !4224, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4226)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!77, !34}
!4226 = !{!4227}
!4227 = !DILocalVariable(name: "arg", arg: 1, scope: !4223, file: !130, line: 934, type: !34)
!4228 = !DILocation(line: 934, column: 23, scope: !4223)
!4229 = !DILocation(line: 922, column: 17, scope: !4108, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 936, column: 10, scope: !4223)
!4231 = !DILocation(line: 922, column: 32, scope: !4108, inlinedAt: !4230)
!4232 = !DILocation(line: 924, column: 10, scope: !4108, inlinedAt: !4230)
!4233 = !DILocation(line: 936, column: 3, scope: !4223)
!4234 = distinct !DISubprogram(name: "quotearg_mem", scope: !130, file: !130, line: 940, type: !4235, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!77, !34, !26}
!4237 = !{!4238, !4239}
!4238 = !DILocalVariable(name: "arg", arg: 1, scope: !4234, file: !130, line: 940, type: !34)
!4239 = !DILocalVariable(name: "argsize", arg: 2, scope: !4234, file: !130, line: 940, type: !26)
!4240 = !DILocation(line: 940, column: 27, scope: !4234)
!4241 = !DILocation(line: 940, column: 39, scope: !4234)
!4242 = !DILocation(line: 928, column: 21, scope: !4211, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 942, column: 10, scope: !4234)
!4244 = !DILocation(line: 928, column: 36, scope: !4211, inlinedAt: !4243)
!4245 = !DILocation(line: 928, column: 48, scope: !4211, inlinedAt: !4243)
!4246 = !DILocation(line: 930, column: 10, scope: !4211, inlinedAt: !4243)
!4247 = !DILocation(line: 942, column: 3, scope: !4234)
!4248 = distinct !DISubprogram(name: "quotearg_n_style", scope: !130, file: !130, line: 946, type: !4249, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4251)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!77, !37, !107, !34}
!4251 = !{!4252, !4253, !4254, !4255}
!4252 = !DILocalVariable(name: "n", arg: 1, scope: !4248, file: !130, line: 946, type: !37)
!4253 = !DILocalVariable(name: "s", arg: 2, scope: !4248, file: !130, line: 946, type: !107)
!4254 = !DILocalVariable(name: "arg", arg: 3, scope: !4248, file: !130, line: 946, type: !34)
!4255 = !DILocalVariable(name: "o", scope: !4248, file: !130, line: 948, type: !2818)
!4256 = !DILocalVariable(name: "o", scope: !4257, file: !130, line: 187, type: !137)
!4257 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !130, file: !130, line: 185, type: !4258, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!137, !107}
!4260 = !{!4261, !4256}
!4261 = !DILocalVariable(name: "style", arg: 1, scope: !4257, file: !130, line: 185, type: !107)
!4262 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4263 = !DILocation(line: 187, column: 26, scope: !4257, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 948, column: 36, scope: !4248)
!4265 = !DILocation(line: 946, column: 23, scope: !4248)
!4266 = !DILocation(line: 946, column: 45, scope: !4248)
!4267 = !DILocation(line: 946, column: 60, scope: !4248)
!4268 = !DILocation(line: 948, column: 3, scope: !4248)
!4269 = !DILocation(line: 948, column: 32, scope: !4248)
!4270 = !DILocation(line: 185, column: 48, scope: !4257, inlinedAt: !4264)
!4271 = !DILocation(line: 187, column: 3, scope: !4257, inlinedAt: !4264)
!4272 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4273 = !DILocation(line: 188, column: 13, scope: !4274, inlinedAt: !4264)
!4274 = distinct !DILexicalBlock(scope: !4257, file: !130, line: 188, column: 7)
!4275 = !DILocation(line: 188, column: 7, scope: !4257, inlinedAt: !4264)
!4276 = !DILocation(line: 189, column: 5, scope: !4274, inlinedAt: !4264)
!4277 = !{!4278}
!4278 = distinct !{!4278, !4279, !"quoting_options_from_style: argument 0"}
!4279 = distinct !{!4279, !"quoting_options_from_style"}
!4280 = !DILocation(line: 191, column: 10, scope: !4257, inlinedAt: !4264)
!4281 = !DILocation(line: 192, column: 1, scope: !4257, inlinedAt: !4264)
!4282 = !DILocation(line: 949, column: 10, scope: !4248)
!4283 = !DILocation(line: 950, column: 1, scope: !4248)
!4284 = !DILocation(line: 949, column: 3, scope: !4248)
!4285 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !130, file: !130, line: 953, type: !4286, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!77, !37, !107, !34, !26}
!4288 = !{!4289, !4290, !4291, !4292, !4293}
!4289 = !DILocalVariable(name: "n", arg: 1, scope: !4285, file: !130, line: 953, type: !37)
!4290 = !DILocalVariable(name: "s", arg: 2, scope: !4285, file: !130, line: 953, type: !107)
!4291 = !DILocalVariable(name: "arg", arg: 3, scope: !4285, file: !130, line: 954, type: !34)
!4292 = !DILocalVariable(name: "argsize", arg: 4, scope: !4285, file: !130, line: 954, type: !26)
!4293 = !DILocalVariable(name: "o", scope: !4285, file: !130, line: 956, type: !2818)
!4294 = !DILocation(line: 187, column: 26, scope: !4257, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 956, column: 36, scope: !4285)
!4296 = !DILocation(line: 953, column: 27, scope: !4285)
!4297 = !DILocation(line: 953, column: 49, scope: !4285)
!4298 = !DILocation(line: 954, column: 35, scope: !4285)
!4299 = !DILocation(line: 954, column: 47, scope: !4285)
!4300 = !DILocation(line: 956, column: 3, scope: !4285)
!4301 = !DILocation(line: 956, column: 32, scope: !4285)
!4302 = !DILocation(line: 185, column: 48, scope: !4257, inlinedAt: !4295)
!4303 = !DILocation(line: 187, column: 3, scope: !4257, inlinedAt: !4295)
!4304 = !DILocation(line: 188, column: 13, scope: !4274, inlinedAt: !4295)
!4305 = !DILocation(line: 188, column: 7, scope: !4257, inlinedAt: !4295)
!4306 = !DILocation(line: 189, column: 5, scope: !4274, inlinedAt: !4295)
!4307 = !{!4308}
!4308 = distinct !{!4308, !4309, !"quoting_options_from_style: argument 0"}
!4309 = distinct !{!4309, !"quoting_options_from_style"}
!4310 = !DILocation(line: 191, column: 10, scope: !4257, inlinedAt: !4295)
!4311 = !DILocation(line: 192, column: 1, scope: !4257, inlinedAt: !4295)
!4312 = !DILocation(line: 957, column: 10, scope: !4285)
!4313 = !DILocation(line: 958, column: 1, scope: !4285)
!4314 = !DILocation(line: 957, column: 3, scope: !4285)
!4315 = distinct !DISubprogram(name: "quotearg_style", scope: !130, file: !130, line: 961, type: !4316, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!77, !107, !34}
!4318 = !{!4319, !4320}
!4319 = !DILocalVariable(name: "s", arg: 1, scope: !4315, file: !130, line: 961, type: !107)
!4320 = !DILocalVariable(name: "arg", arg: 2, scope: !4315, file: !130, line: 961, type: !34)
!4321 = !DILocation(line: 187, column: 26, scope: !4257, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 948, column: 36, scope: !4248, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 963, column: 10, scope: !4315)
!4324 = !DILocation(line: 961, column: 36, scope: !4315)
!4325 = !DILocation(line: 961, column: 51, scope: !4315)
!4326 = !DILocation(line: 946, column: 23, scope: !4248, inlinedAt: !4323)
!4327 = !DILocation(line: 946, column: 45, scope: !4248, inlinedAt: !4323)
!4328 = !DILocation(line: 946, column: 60, scope: !4248, inlinedAt: !4323)
!4329 = !DILocation(line: 948, column: 3, scope: !4248, inlinedAt: !4323)
!4330 = !DILocation(line: 948, column: 32, scope: !4248, inlinedAt: !4323)
!4331 = !DILocation(line: 185, column: 48, scope: !4257, inlinedAt: !4322)
!4332 = !DILocation(line: 187, column: 3, scope: !4257, inlinedAt: !4322)
!4333 = !DILocation(line: 188, column: 13, scope: !4274, inlinedAt: !4322)
!4334 = !DILocation(line: 188, column: 7, scope: !4257, inlinedAt: !4322)
!4335 = !DILocation(line: 189, column: 5, scope: !4274, inlinedAt: !4322)
!4336 = !{!4337}
!4337 = distinct !{!4337, !4338, !"quoting_options_from_style: argument 0"}
!4338 = distinct !{!4338, !"quoting_options_from_style"}
!4339 = !DILocation(line: 191, column: 10, scope: !4257, inlinedAt: !4322)
!4340 = !DILocation(line: 192, column: 1, scope: !4257, inlinedAt: !4322)
!4341 = !DILocation(line: 949, column: 10, scope: !4248, inlinedAt: !4323)
!4342 = !DILocation(line: 950, column: 1, scope: !4248, inlinedAt: !4323)
!4343 = !DILocation(line: 963, column: 3, scope: !4315)
!4344 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !130, file: !130, line: 967, type: !4345, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!77, !107, !34, !26}
!4347 = !{!4348, !4349, !4350}
!4348 = !DILocalVariable(name: "s", arg: 1, scope: !4344, file: !130, line: 967, type: !107)
!4349 = !DILocalVariable(name: "arg", arg: 2, scope: !4344, file: !130, line: 967, type: !34)
!4350 = !DILocalVariable(name: "argsize", arg: 3, scope: !4344, file: !130, line: 967, type: !26)
!4351 = !DILocation(line: 187, column: 26, scope: !4257, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 956, column: 36, scope: !4285, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 969, column: 10, scope: !4344)
!4354 = !DILocation(line: 967, column: 40, scope: !4344)
!4355 = !DILocation(line: 967, column: 55, scope: !4344)
!4356 = !DILocation(line: 967, column: 67, scope: !4344)
!4357 = !DILocation(line: 953, column: 27, scope: !4285, inlinedAt: !4353)
!4358 = !DILocation(line: 953, column: 49, scope: !4285, inlinedAt: !4353)
!4359 = !DILocation(line: 954, column: 35, scope: !4285, inlinedAt: !4353)
!4360 = !DILocation(line: 954, column: 47, scope: !4285, inlinedAt: !4353)
!4361 = !DILocation(line: 956, column: 3, scope: !4285, inlinedAt: !4353)
!4362 = !DILocation(line: 956, column: 32, scope: !4285, inlinedAt: !4353)
!4363 = !DILocation(line: 185, column: 48, scope: !4257, inlinedAt: !4352)
!4364 = !DILocation(line: 187, column: 3, scope: !4257, inlinedAt: !4352)
!4365 = !DILocation(line: 188, column: 13, scope: !4274, inlinedAt: !4352)
!4366 = !DILocation(line: 188, column: 7, scope: !4257, inlinedAt: !4352)
!4367 = !DILocation(line: 189, column: 5, scope: !4274, inlinedAt: !4352)
!4368 = !{!4369}
!4369 = distinct !{!4369, !4370, !"quoting_options_from_style: argument 0"}
!4370 = distinct !{!4370, !"quoting_options_from_style"}
!4371 = !DILocation(line: 191, column: 10, scope: !4257, inlinedAt: !4352)
!4372 = !DILocation(line: 192, column: 1, scope: !4257, inlinedAt: !4352)
!4373 = !DILocation(line: 957, column: 10, scope: !4285, inlinedAt: !4353)
!4374 = !DILocation(line: 958, column: 1, scope: !4285, inlinedAt: !4353)
!4375 = !DILocation(line: 969, column: 3, scope: !4344)
!4376 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !130, file: !130, line: 973, type: !4377, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4379)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!77, !34, !26, !36}
!4379 = !{!4380, !4381, !4382, !4383}
!4380 = !DILocalVariable(name: "arg", arg: 1, scope: !4376, file: !130, line: 973, type: !34)
!4381 = !DILocalVariable(name: "argsize", arg: 2, scope: !4376, file: !130, line: 973, type: !26)
!4382 = !DILocalVariable(name: "ch", arg: 3, scope: !4376, file: !130, line: 973, type: !36)
!4383 = !DILocalVariable(name: "options", scope: !4376, file: !130, line: 975, type: !137)
!4384 = !DILocation(line: 973, column: 32, scope: !4376)
!4385 = !DILocation(line: 973, column: 44, scope: !4376)
!4386 = !DILocation(line: 973, column: 58, scope: !4376)
!4387 = !DILocation(line: 975, column: 3, scope: !4376)
!4388 = !DILocation(line: 976, column: 13, scope: !4376)
!4389 = !{i64 0, i64 4, !737, i64 4, i64 4, !676, i64 8, i64 32, !737, i64 40, i64 8, !586, i64 48, i64 8, !586}
!4390 = !DILocation(line: 975, column: 26, scope: !4376)
!4391 = !DILocation(line: 144, column: 43, scope: !2841, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 977, column: 3, scope: !4376)
!4393 = !DILocation(line: 144, column: 51, scope: !2841, inlinedAt: !4392)
!4394 = !DILocation(line: 144, column: 58, scope: !2841, inlinedAt: !4392)
!4395 = !DILocation(line: 146, column: 17, scope: !2841, inlinedAt: !4392)
!4396 = !DILocation(line: 148, column: 62, scope: !2859, inlinedAt: !4392)
!4397 = !DILocation(line: 148, column: 57, scope: !2859, inlinedAt: !4392)
!4398 = !DILocation(line: 147, column: 17, scope: !2841, inlinedAt: !4392)
!4399 = !DILocation(line: 149, column: 18, scope: !2841, inlinedAt: !4392)
!4400 = !DILocation(line: 149, column: 15, scope: !2841, inlinedAt: !4392)
!4401 = !DILocation(line: 149, column: 7, scope: !2841, inlinedAt: !4392)
!4402 = !DILocation(line: 150, column: 12, scope: !2841, inlinedAt: !4392)
!4403 = !DILocation(line: 150, column: 15, scope: !2841, inlinedAt: !4392)
!4404 = !DILocation(line: 150, column: 25, scope: !2841, inlinedAt: !4392)
!4405 = !DILocation(line: 150, column: 7, scope: !2841, inlinedAt: !4392)
!4406 = !DILocation(line: 151, column: 18, scope: !2841, inlinedAt: !4392)
!4407 = !DILocation(line: 151, column: 23, scope: !2841, inlinedAt: !4392)
!4408 = !DILocation(line: 151, column: 6, scope: !2841, inlinedAt: !4392)
!4409 = !DILocation(line: 978, column: 10, scope: !4376)
!4410 = !DILocation(line: 979, column: 1, scope: !4376)
!4411 = !DILocation(line: 978, column: 3, scope: !4376)
!4412 = distinct !DISubprogram(name: "quotearg_char", scope: !130, file: !130, line: 982, type: !4413, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4415)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!77, !34, !36}
!4415 = !{!4416, !4417}
!4416 = !DILocalVariable(name: "arg", arg: 1, scope: !4412, file: !130, line: 982, type: !34)
!4417 = !DILocalVariable(name: "ch", arg: 2, scope: !4412, file: !130, line: 982, type: !36)
!4418 = !DILocation(line: 982, column: 28, scope: !4412)
!4419 = !DILocation(line: 982, column: 38, scope: !4412)
!4420 = !DILocation(line: 973, column: 32, scope: !4376, inlinedAt: !4421)
!4421 = distinct !DILocation(line: 984, column: 10, scope: !4412)
!4422 = !DILocation(line: 973, column: 44, scope: !4376, inlinedAt: !4421)
!4423 = !DILocation(line: 973, column: 58, scope: !4376, inlinedAt: !4421)
!4424 = !DILocation(line: 975, column: 3, scope: !4376, inlinedAt: !4421)
!4425 = !DILocation(line: 976, column: 13, scope: !4376, inlinedAt: !4421)
!4426 = !DILocation(line: 975, column: 26, scope: !4376, inlinedAt: !4421)
!4427 = !DILocation(line: 144, column: 43, scope: !2841, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 977, column: 3, scope: !4376, inlinedAt: !4421)
!4429 = !DILocation(line: 144, column: 51, scope: !2841, inlinedAt: !4428)
!4430 = !DILocation(line: 144, column: 58, scope: !2841, inlinedAt: !4428)
!4431 = !DILocation(line: 146, column: 17, scope: !2841, inlinedAt: !4428)
!4432 = !DILocation(line: 148, column: 62, scope: !2859, inlinedAt: !4428)
!4433 = !DILocation(line: 148, column: 57, scope: !2859, inlinedAt: !4428)
!4434 = !DILocation(line: 147, column: 17, scope: !2841, inlinedAt: !4428)
!4435 = !DILocation(line: 149, column: 18, scope: !2841, inlinedAt: !4428)
!4436 = !DILocation(line: 149, column: 15, scope: !2841, inlinedAt: !4428)
!4437 = !DILocation(line: 149, column: 7, scope: !2841, inlinedAt: !4428)
!4438 = !DILocation(line: 150, column: 12, scope: !2841, inlinedAt: !4428)
!4439 = !DILocation(line: 150, column: 15, scope: !2841, inlinedAt: !4428)
!4440 = !DILocation(line: 150, column: 25, scope: !2841, inlinedAt: !4428)
!4441 = !DILocation(line: 150, column: 7, scope: !2841, inlinedAt: !4428)
!4442 = !DILocation(line: 151, column: 18, scope: !2841, inlinedAt: !4428)
!4443 = !DILocation(line: 151, column: 23, scope: !2841, inlinedAt: !4428)
!4444 = !DILocation(line: 151, column: 6, scope: !2841, inlinedAt: !4428)
!4445 = !DILocation(line: 978, column: 10, scope: !4376, inlinedAt: !4421)
!4446 = !DILocation(line: 979, column: 1, scope: !4376, inlinedAt: !4421)
!4447 = !DILocation(line: 984, column: 3, scope: !4412)
!4448 = distinct !DISubprogram(name: "quotearg_colon", scope: !130, file: !130, line: 988, type: !4224, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4449)
!4449 = !{!4450}
!4450 = !DILocalVariable(name: "arg", arg: 1, scope: !4448, file: !130, line: 988, type: !34)
!4451 = !DILocation(line: 988, column: 29, scope: !4448)
!4452 = !DILocation(line: 982, column: 28, scope: !4412, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 990, column: 10, scope: !4448)
!4454 = !DILocation(line: 982, column: 38, scope: !4412, inlinedAt: !4453)
!4455 = !DILocation(line: 973, column: 32, scope: !4376, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 984, column: 10, scope: !4412, inlinedAt: !4453)
!4457 = !DILocation(line: 973, column: 44, scope: !4376, inlinedAt: !4456)
!4458 = !DILocation(line: 973, column: 58, scope: !4376, inlinedAt: !4456)
!4459 = !DILocation(line: 975, column: 3, scope: !4376, inlinedAt: !4456)
!4460 = !DILocation(line: 976, column: 13, scope: !4376, inlinedAt: !4456)
!4461 = !DILocation(line: 975, column: 26, scope: !4376, inlinedAt: !4456)
!4462 = !DILocation(line: 144, column: 43, scope: !2841, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 977, column: 3, scope: !4376, inlinedAt: !4456)
!4464 = !DILocation(line: 144, column: 51, scope: !2841, inlinedAt: !4463)
!4465 = !DILocation(line: 144, column: 58, scope: !2841, inlinedAt: !4463)
!4466 = !DILocation(line: 146, column: 17, scope: !2841, inlinedAt: !4463)
!4467 = !DILocation(line: 148, column: 57, scope: !2859, inlinedAt: !4463)
!4468 = !DILocation(line: 147, column: 17, scope: !2841, inlinedAt: !4463)
!4469 = !DILocation(line: 149, column: 7, scope: !2841, inlinedAt: !4463)
!4470 = !DILocation(line: 150, column: 12, scope: !2841, inlinedAt: !4463)
!4471 = !DILocation(line: 151, column: 6, scope: !2841, inlinedAt: !4463)
!4472 = !DILocation(line: 978, column: 10, scope: !4376, inlinedAt: !4456)
!4473 = !DILocation(line: 979, column: 1, scope: !4376, inlinedAt: !4456)
!4474 = !DILocation(line: 990, column: 3, scope: !4448)
!4475 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !130, file: !130, line: 994, type: !4235, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4476)
!4476 = !{!4477, !4478}
!4477 = !DILocalVariable(name: "arg", arg: 1, scope: !4475, file: !130, line: 994, type: !34)
!4478 = !DILocalVariable(name: "argsize", arg: 2, scope: !4475, file: !130, line: 994, type: !26)
!4479 = !DILocation(line: 994, column: 33, scope: !4475)
!4480 = !DILocation(line: 994, column: 45, scope: !4475)
!4481 = !DILocation(line: 973, column: 32, scope: !4376, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 996, column: 10, scope: !4475)
!4483 = !DILocation(line: 973, column: 44, scope: !4376, inlinedAt: !4482)
!4484 = !DILocation(line: 973, column: 58, scope: !4376, inlinedAt: !4482)
!4485 = !DILocation(line: 975, column: 3, scope: !4376, inlinedAt: !4482)
!4486 = !DILocation(line: 976, column: 13, scope: !4376, inlinedAt: !4482)
!4487 = !DILocation(line: 975, column: 26, scope: !4376, inlinedAt: !4482)
!4488 = !DILocation(line: 144, column: 43, scope: !2841, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 977, column: 3, scope: !4376, inlinedAt: !4482)
!4490 = !DILocation(line: 144, column: 51, scope: !2841, inlinedAt: !4489)
!4491 = !DILocation(line: 144, column: 58, scope: !2841, inlinedAt: !4489)
!4492 = !DILocation(line: 146, column: 17, scope: !2841, inlinedAt: !4489)
!4493 = !DILocation(line: 148, column: 57, scope: !2859, inlinedAt: !4489)
!4494 = !DILocation(line: 147, column: 17, scope: !2841, inlinedAt: !4489)
!4495 = !DILocation(line: 149, column: 7, scope: !2841, inlinedAt: !4489)
!4496 = !DILocation(line: 150, column: 12, scope: !2841, inlinedAt: !4489)
!4497 = !DILocation(line: 151, column: 6, scope: !2841, inlinedAt: !4489)
!4498 = !DILocation(line: 978, column: 10, scope: !4376, inlinedAt: !4482)
!4499 = !DILocation(line: 979, column: 1, scope: !4376, inlinedAt: !4482)
!4500 = !DILocation(line: 996, column: 3, scope: !4475)
!4501 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !130, file: !130, line: 1000, type: !4249, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4502)
!4502 = !{!4503, !4504, !4505, !4506}
!4503 = !DILocalVariable(name: "n", arg: 1, scope: !4501, file: !130, line: 1000, type: !37)
!4504 = !DILocalVariable(name: "s", arg: 2, scope: !4501, file: !130, line: 1000, type: !107)
!4505 = !DILocalVariable(name: "arg", arg: 3, scope: !4501, file: !130, line: 1000, type: !34)
!4506 = !DILocalVariable(name: "options", scope: !4501, file: !130, line: 1002, type: !137)
!4507 = !DILocation(line: 187, column: 26, scope: !4257, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 1003, column: 13, scope: !4501)
!4509 = !DILocation(line: 1000, column: 29, scope: !4501)
!4510 = !DILocation(line: 1000, column: 51, scope: !4501)
!4511 = !DILocation(line: 1000, column: 66, scope: !4501)
!4512 = !DILocation(line: 1002, column: 3, scope: !4501)
!4513 = !DILocation(line: 185, column: 48, scope: !4257, inlinedAt: !4508)
!4514 = !DILocation(line: 187, column: 3, scope: !4257, inlinedAt: !4508)
!4515 = !DILocation(line: 188, column: 13, scope: !4274, inlinedAt: !4508)
!4516 = !DILocation(line: 188, column: 7, scope: !4257, inlinedAt: !4508)
!4517 = !DILocation(line: 189, column: 5, scope: !4274, inlinedAt: !4508)
!4518 = !{!4519}
!4519 = distinct !{!4519, !4520, !"quoting_options_from_style: argument 0"}
!4520 = distinct !{!4520, !"quoting_options_from_style"}
!4521 = !DILocation(line: 191, column: 10, scope: !4257, inlinedAt: !4508)
!4522 = !DILocation(line: 192, column: 1, scope: !4257, inlinedAt: !4508)
!4523 = !DILocation(line: 1003, column: 13, scope: !4501)
!4524 = !DILocation(line: 1002, column: 26, scope: !4501)
!4525 = !DILocation(line: 144, column: 43, scope: !2841, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 1004, column: 3, scope: !4501)
!4527 = !DILocation(line: 144, column: 51, scope: !2841, inlinedAt: !4526)
!4528 = !DILocation(line: 144, column: 58, scope: !2841, inlinedAt: !4526)
!4529 = !DILocation(line: 146, column: 17, scope: !2841, inlinedAt: !4526)
!4530 = !DILocation(line: 148, column: 57, scope: !2859, inlinedAt: !4526)
!4531 = !DILocation(line: 147, column: 17, scope: !2841, inlinedAt: !4526)
!4532 = !DILocation(line: 149, column: 7, scope: !2841, inlinedAt: !4526)
!4533 = !DILocation(line: 150, column: 12, scope: !2841, inlinedAt: !4526)
!4534 = !DILocation(line: 151, column: 6, scope: !2841, inlinedAt: !4526)
!4535 = !DILocation(line: 1005, column: 10, scope: !4501)
!4536 = !DILocation(line: 1006, column: 1, scope: !4501)
!4537 = !DILocation(line: 1005, column: 3, scope: !4501)
!4538 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !130, file: !130, line: 1009, type: !4539, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4541)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!77, !37, !34, !34, !34}
!4541 = !{!4542, !4543, !4544, !4545}
!4542 = !DILocalVariable(name: "n", arg: 1, scope: !4538, file: !130, line: 1009, type: !37)
!4543 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4538, file: !130, line: 1009, type: !34)
!4544 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4538, file: !130, line: 1010, type: !34)
!4545 = !DILocalVariable(name: "arg", arg: 4, scope: !4538, file: !130, line: 1010, type: !34)
!4546 = !DILocation(line: 1009, column: 24, scope: !4538)
!4547 = !DILocation(line: 1009, column: 39, scope: !4538)
!4548 = !DILocation(line: 1010, column: 32, scope: !4538)
!4549 = !DILocation(line: 1010, column: 57, scope: !4538)
!4550 = !DILocalVariable(name: "n", arg: 1, scope: !4551, file: !130, line: 1017, type: !37)
!4551 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !130, file: !130, line: 1017, type: !4552, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4554)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!77, !37, !34, !34, !34, !26}
!4554 = !{!4550, !4555, !4556, !4557, !4558, !4559}
!4555 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4551, file: !130, line: 1017, type: !34)
!4556 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4551, file: !130, line: 1018, type: !34)
!4557 = !DILocalVariable(name: "arg", arg: 4, scope: !4551, file: !130, line: 1019, type: !34)
!4558 = !DILocalVariable(name: "argsize", arg: 5, scope: !4551, file: !130, line: 1019, type: !26)
!4559 = !DILocalVariable(name: "o", scope: !4551, file: !130, line: 1021, type: !137)
!4560 = !DILocation(line: 1017, column: 28, scope: !4551, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 1012, column: 10, scope: !4538)
!4562 = !DILocation(line: 1017, column: 43, scope: !4551, inlinedAt: !4561)
!4563 = !DILocation(line: 1018, column: 36, scope: !4551, inlinedAt: !4561)
!4564 = !DILocation(line: 1019, column: 36, scope: !4551, inlinedAt: !4561)
!4565 = !DILocation(line: 1019, column: 48, scope: !4551, inlinedAt: !4561)
!4566 = !DILocation(line: 1021, column: 3, scope: !4551, inlinedAt: !4561)
!4567 = !DILocation(line: 1021, column: 30, scope: !4551, inlinedAt: !4561)
!4568 = !DILocation(line: 1021, column: 26, scope: !4551, inlinedAt: !4561)
!4569 = !DILocation(line: 171, column: 45, scope: !2891, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 1022, column: 3, scope: !4551, inlinedAt: !4561)
!4571 = !DILocation(line: 172, column: 33, scope: !2891, inlinedAt: !4570)
!4572 = !DILocation(line: 172, column: 57, scope: !2891, inlinedAt: !4570)
!4573 = !DILocation(line: 176, column: 6, scope: !2891, inlinedAt: !4570)
!4574 = !DILocation(line: 176, column: 12, scope: !2891, inlinedAt: !4570)
!4575 = !DILocation(line: 177, column: 8, scope: !2907, inlinedAt: !4570)
!4576 = !DILocation(line: 177, column: 23, scope: !2909, inlinedAt: !4570)
!4577 = !DILocation(line: 177, column: 19, scope: !2907, inlinedAt: !4570)
!4578 = !DILocation(line: 178, column: 5, scope: !2907, inlinedAt: !4570)
!4579 = !DILocation(line: 179, column: 6, scope: !2891, inlinedAt: !4570)
!4580 = !DILocation(line: 179, column: 17, scope: !2891, inlinedAt: !4570)
!4581 = !DILocation(line: 180, column: 6, scope: !2891, inlinedAt: !4570)
!4582 = !DILocation(line: 180, column: 18, scope: !2891, inlinedAt: !4570)
!4583 = !DILocation(line: 1023, column: 10, scope: !4551, inlinedAt: !4561)
!4584 = !DILocation(line: 1024, column: 1, scope: !4551, inlinedAt: !4561)
!4585 = !DILocation(line: 1012, column: 3, scope: !4538)
!4586 = !DILocation(line: 1017, column: 28, scope: !4551)
!4587 = !DILocation(line: 1017, column: 43, scope: !4551)
!4588 = !DILocation(line: 1018, column: 36, scope: !4551)
!4589 = !DILocation(line: 1019, column: 36, scope: !4551)
!4590 = !DILocation(line: 1019, column: 48, scope: !4551)
!4591 = !DILocation(line: 1021, column: 3, scope: !4551)
!4592 = !DILocation(line: 1021, column: 30, scope: !4551)
!4593 = !DILocation(line: 1021, column: 26, scope: !4551)
!4594 = !DILocation(line: 171, column: 45, scope: !2891, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 1022, column: 3, scope: !4551)
!4596 = !DILocation(line: 172, column: 33, scope: !2891, inlinedAt: !4595)
!4597 = !DILocation(line: 172, column: 57, scope: !2891, inlinedAt: !4595)
!4598 = !DILocation(line: 176, column: 6, scope: !2891, inlinedAt: !4595)
!4599 = !DILocation(line: 176, column: 12, scope: !2891, inlinedAt: !4595)
!4600 = !DILocation(line: 177, column: 8, scope: !2907, inlinedAt: !4595)
!4601 = !DILocation(line: 177, column: 23, scope: !2909, inlinedAt: !4595)
!4602 = !DILocation(line: 177, column: 19, scope: !2907, inlinedAt: !4595)
!4603 = !DILocation(line: 178, column: 5, scope: !2907, inlinedAt: !4595)
!4604 = !DILocation(line: 179, column: 6, scope: !2891, inlinedAt: !4595)
!4605 = !DILocation(line: 179, column: 17, scope: !2891, inlinedAt: !4595)
!4606 = !DILocation(line: 180, column: 6, scope: !2891, inlinedAt: !4595)
!4607 = !DILocation(line: 180, column: 18, scope: !2891, inlinedAt: !4595)
!4608 = !DILocation(line: 1023, column: 10, scope: !4551)
!4609 = !DILocation(line: 1024, column: 1, scope: !4551)
!4610 = !DILocation(line: 1023, column: 3, scope: !4551)
!4611 = distinct !DISubprogram(name: "quotearg_custom", scope: !130, file: !130, line: 1027, type: !4612, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4614)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!77, !34, !34, !34}
!4614 = !{!4615, !4616, !4617}
!4615 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4611, file: !130, line: 1027, type: !34)
!4616 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4611, file: !130, line: 1027, type: !34)
!4617 = !DILocalVariable(name: "arg", arg: 3, scope: !4611, file: !130, line: 1028, type: !34)
!4618 = !DILocation(line: 1027, column: 30, scope: !4611)
!4619 = !DILocation(line: 1027, column: 54, scope: !4611)
!4620 = !DILocation(line: 1028, column: 30, scope: !4611)
!4621 = !DILocation(line: 1009, column: 24, scope: !4538, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 1030, column: 10, scope: !4611)
!4623 = !DILocation(line: 1009, column: 39, scope: !4538, inlinedAt: !4622)
!4624 = !DILocation(line: 1010, column: 32, scope: !4538, inlinedAt: !4622)
!4625 = !DILocation(line: 1010, column: 57, scope: !4538, inlinedAt: !4622)
!4626 = !DILocation(line: 1017, column: 28, scope: !4551, inlinedAt: !4627)
!4627 = distinct !DILocation(line: 1012, column: 10, scope: !4538, inlinedAt: !4622)
!4628 = !DILocation(line: 1017, column: 43, scope: !4551, inlinedAt: !4627)
!4629 = !DILocation(line: 1018, column: 36, scope: !4551, inlinedAt: !4627)
!4630 = !DILocation(line: 1019, column: 36, scope: !4551, inlinedAt: !4627)
!4631 = !DILocation(line: 1019, column: 48, scope: !4551, inlinedAt: !4627)
!4632 = !DILocation(line: 1021, column: 3, scope: !4551, inlinedAt: !4627)
!4633 = !DILocation(line: 1021, column: 30, scope: !4551, inlinedAt: !4627)
!4634 = !DILocation(line: 1021, column: 26, scope: !4551, inlinedAt: !4627)
!4635 = !DILocation(line: 171, column: 45, scope: !2891, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 1022, column: 3, scope: !4551, inlinedAt: !4627)
!4637 = !DILocation(line: 172, column: 33, scope: !2891, inlinedAt: !4636)
!4638 = !DILocation(line: 172, column: 57, scope: !2891, inlinedAt: !4636)
!4639 = !DILocation(line: 176, column: 6, scope: !2891, inlinedAt: !4636)
!4640 = !DILocation(line: 176, column: 12, scope: !2891, inlinedAt: !4636)
!4641 = !DILocation(line: 177, column: 8, scope: !2907, inlinedAt: !4636)
!4642 = !DILocation(line: 177, column: 23, scope: !2909, inlinedAt: !4636)
!4643 = !DILocation(line: 177, column: 19, scope: !2907, inlinedAt: !4636)
!4644 = !DILocation(line: 178, column: 5, scope: !2907, inlinedAt: !4636)
!4645 = !DILocation(line: 179, column: 6, scope: !2891, inlinedAt: !4636)
!4646 = !DILocation(line: 179, column: 17, scope: !2891, inlinedAt: !4636)
!4647 = !DILocation(line: 180, column: 6, scope: !2891, inlinedAt: !4636)
!4648 = !DILocation(line: 180, column: 18, scope: !2891, inlinedAt: !4636)
!4649 = !DILocation(line: 1023, column: 10, scope: !4551, inlinedAt: !4627)
!4650 = !DILocation(line: 1024, column: 1, scope: !4551, inlinedAt: !4627)
!4651 = !DILocation(line: 1030, column: 3, scope: !4611)
!4652 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !130, file: !130, line: 1034, type: !4653, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4655)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!77, !34, !34, !34, !26}
!4655 = !{!4656, !4657, !4658, !4659}
!4656 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4652, file: !130, line: 1034, type: !34)
!4657 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4652, file: !130, line: 1034, type: !34)
!4658 = !DILocalVariable(name: "arg", arg: 3, scope: !4652, file: !130, line: 1035, type: !34)
!4659 = !DILocalVariable(name: "argsize", arg: 4, scope: !4652, file: !130, line: 1035, type: !26)
!4660 = !DILocation(line: 1034, column: 34, scope: !4652)
!4661 = !DILocation(line: 1034, column: 58, scope: !4652)
!4662 = !DILocation(line: 1035, column: 34, scope: !4652)
!4663 = !DILocation(line: 1035, column: 46, scope: !4652)
!4664 = !DILocation(line: 1017, column: 28, scope: !4551, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 1037, column: 10, scope: !4652)
!4666 = !DILocation(line: 1017, column: 43, scope: !4551, inlinedAt: !4665)
!4667 = !DILocation(line: 1018, column: 36, scope: !4551, inlinedAt: !4665)
!4668 = !DILocation(line: 1019, column: 36, scope: !4551, inlinedAt: !4665)
!4669 = !DILocation(line: 1019, column: 48, scope: !4551, inlinedAt: !4665)
!4670 = !DILocation(line: 1021, column: 3, scope: !4551, inlinedAt: !4665)
!4671 = !DILocation(line: 1021, column: 30, scope: !4551, inlinedAt: !4665)
!4672 = !DILocation(line: 1021, column: 26, scope: !4551, inlinedAt: !4665)
!4673 = !DILocation(line: 171, column: 45, scope: !2891, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 1022, column: 3, scope: !4551, inlinedAt: !4665)
!4675 = !DILocation(line: 172, column: 33, scope: !2891, inlinedAt: !4674)
!4676 = !DILocation(line: 172, column: 57, scope: !2891, inlinedAt: !4674)
!4677 = !DILocation(line: 176, column: 6, scope: !2891, inlinedAt: !4674)
!4678 = !DILocation(line: 176, column: 12, scope: !2891, inlinedAt: !4674)
!4679 = !DILocation(line: 177, column: 8, scope: !2907, inlinedAt: !4674)
!4680 = !DILocation(line: 177, column: 23, scope: !2909, inlinedAt: !4674)
!4681 = !DILocation(line: 177, column: 19, scope: !2907, inlinedAt: !4674)
!4682 = !DILocation(line: 178, column: 5, scope: !2907, inlinedAt: !4674)
!4683 = !DILocation(line: 179, column: 6, scope: !2891, inlinedAt: !4674)
!4684 = !DILocation(line: 179, column: 17, scope: !2891, inlinedAt: !4674)
!4685 = !DILocation(line: 180, column: 6, scope: !2891, inlinedAt: !4674)
!4686 = !DILocation(line: 180, column: 18, scope: !2891, inlinedAt: !4674)
!4687 = !DILocation(line: 1023, column: 10, scope: !4551, inlinedAt: !4665)
!4688 = !DILocation(line: 1024, column: 1, scope: !4551, inlinedAt: !4665)
!4689 = !DILocation(line: 1037, column: 3, scope: !4652)
!4690 = distinct !DISubprogram(name: "quote_n_mem", scope: !130, file: !130, line: 1052, type: !4691, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4693)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!34, !37, !34, !26}
!4693 = !{!4694, !4695, !4696}
!4694 = !DILocalVariable(name: "n", arg: 1, scope: !4690, file: !130, line: 1052, type: !37)
!4695 = !DILocalVariable(name: "arg", arg: 2, scope: !4690, file: !130, line: 1052, type: !34)
!4696 = !DILocalVariable(name: "argsize", arg: 3, scope: !4690, file: !130, line: 1052, type: !26)
!4697 = !DILocation(line: 1052, column: 18, scope: !4690)
!4698 = !DILocation(line: 1052, column: 33, scope: !4690)
!4699 = !DILocation(line: 1052, column: 45, scope: !4690)
!4700 = !DILocation(line: 1054, column: 10, scope: !4690)
!4701 = !DILocation(line: 1054, column: 3, scope: !4690)
!4702 = distinct !DISubprogram(name: "quote_mem", scope: !130, file: !130, line: 1058, type: !4703, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4705)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!34, !34, !26}
!4705 = !{!4706, !4707}
!4706 = !DILocalVariable(name: "arg", arg: 1, scope: !4702, file: !130, line: 1058, type: !34)
!4707 = !DILocalVariable(name: "argsize", arg: 2, scope: !4702, file: !130, line: 1058, type: !26)
!4708 = !DILocation(line: 1058, column: 24, scope: !4702)
!4709 = !DILocation(line: 1058, column: 36, scope: !4702)
!4710 = !DILocation(line: 1052, column: 18, scope: !4690, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 1060, column: 10, scope: !4702)
!4712 = !DILocation(line: 1052, column: 33, scope: !4690, inlinedAt: !4711)
!4713 = !DILocation(line: 1052, column: 45, scope: !4690, inlinedAt: !4711)
!4714 = !DILocation(line: 1054, column: 10, scope: !4690, inlinedAt: !4711)
!4715 = !DILocation(line: 1060, column: 3, scope: !4702)
!4716 = distinct !DISubprogram(name: "quote_n", scope: !130, file: !130, line: 1064, type: !4717, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4719)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!34, !37, !34}
!4719 = !{!4720, !4721}
!4720 = !DILocalVariable(name: "n", arg: 1, scope: !4716, file: !130, line: 1064, type: !37)
!4721 = !DILocalVariable(name: "arg", arg: 2, scope: !4716, file: !130, line: 1064, type: !34)
!4722 = !DILocation(line: 1064, column: 14, scope: !4716)
!4723 = !DILocation(line: 1064, column: 29, scope: !4716)
!4724 = !DILocation(line: 1052, column: 18, scope: !4690, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 1066, column: 10, scope: !4716)
!4726 = !DILocation(line: 1052, column: 33, scope: !4690, inlinedAt: !4725)
!4727 = !DILocation(line: 1052, column: 45, scope: !4690, inlinedAt: !4725)
!4728 = !DILocation(line: 1054, column: 10, scope: !4690, inlinedAt: !4725)
!4729 = !DILocation(line: 1066, column: 3, scope: !4716)
!4730 = distinct !DISubprogram(name: "quote", scope: !130, file: !130, line: 1070, type: !2620, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !4731)
!4731 = !{!4732}
!4732 = !DILocalVariable(name: "arg", arg: 1, scope: !4730, file: !130, line: 1070, type: !34)
!4733 = !DILocation(line: 1070, column: 20, scope: !4730)
!4734 = !DILocation(line: 1064, column: 14, scope: !4716, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 1072, column: 10, scope: !4730)
!4736 = !DILocation(line: 1064, column: 29, scope: !4716, inlinedAt: !4735)
!4737 = !DILocation(line: 1052, column: 18, scope: !4690, inlinedAt: !4738)
!4738 = distinct !DILocation(line: 1066, column: 10, scope: !4716, inlinedAt: !4735)
!4739 = !DILocation(line: 1052, column: 33, scope: !4690, inlinedAt: !4738)
!4740 = !DILocation(line: 1052, column: 45, scope: !4690, inlinedAt: !4738)
!4741 = !DILocation(line: 1054, column: 10, scope: !4690, inlinedAt: !4738)
!4742 = !DILocation(line: 1072, column: 3, scope: !4730)
!4743 = distinct !DISubprogram(name: "strintcmp", scope: !4744, file: !4744, line: 29, type: !4745, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !4747)
!4744 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!37, !34, !34}
!4747 = !{!4748, !4749}
!4748 = !DILocalVariable(name: "a", arg: 1, scope: !4743, file: !4744, line: 29, type: !34)
!4749 = !DILocalVariable(name: "b", arg: 2, scope: !4743, file: !4744, line: 29, type: !34)
!4750 = !DILocation(line: 29, column: 24, scope: !4743)
!4751 = !DILocation(line: 29, column: 39, scope: !4743)
!4752 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4753, file: !4754, line: 115, type: !37)
!4753 = distinct !DISubprogram(name: "numcompare", scope: !4754, file: !4754, line: 114, type: !4755, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !524, variables: !4757)
!4754 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!37, !34, !34, !37, !37}
!4757 = !{!4758, !4759, !4752, !4760, !4761, !4762, !4763, !4764, !4765}
!4758 = !DILocalVariable(name: "a", arg: 1, scope: !4753, file: !4754, line: 114, type: !34)
!4759 = !DILocalVariable(name: "b", arg: 2, scope: !4753, file: !4754, line: 114, type: !34)
!4760 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4753, file: !4754, line: 115, type: !37)
!4761 = !DILocalVariable(name: "tmpa", scope: !4753, file: !4754, line: 117, type: !33)
!4762 = !DILocalVariable(name: "tmpb", scope: !4753, file: !4754, line: 118, type: !33)
!4763 = !DILocalVariable(name: "tmp", scope: !4753, file: !4754, line: 119, type: !37)
!4764 = !DILocalVariable(name: "log_a", scope: !4753, file: !4754, line: 120, type: !26)
!4765 = !DILocalVariable(name: "log_b", scope: !4753, file: !4754, line: 121, type: !26)
!4766 = !DILocation(line: 115, column: 17, scope: !4753, inlinedAt: !4767)
!4767 = distinct !DILocation(line: 31, column: 10, scope: !4743)
!4768 = !DILocation(line: 115, column: 36, scope: !4753, inlinedAt: !4767)
!4769 = !DILocation(line: 117, column: 24, scope: !4753, inlinedAt: !4767)
!4770 = !DILocation(line: 117, column: 17, scope: !4753, inlinedAt: !4767)
!4771 = !DILocation(line: 118, column: 24, scope: !4753, inlinedAt: !4767)
!4772 = !DILocation(line: 118, column: 17, scope: !4753, inlinedAt: !4767)
!4773 = !DILocation(line: 123, column: 12, scope: !4774, inlinedAt: !4767)
!4774 = distinct !DILexicalBlock(scope: !4753, file: !4754, line: 123, column: 7)
!4775 = !DILocation(line: 123, column: 7, scope: !4753, inlinedAt: !4767)
!4776 = distinct !{!4776, !4777, !4779}
!4777 = !DILocation(line: 125, column: 7, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4774, file: !4754, line: 124, column: 5)
!4779 = !DILocation(line: 127, column: 59, scope: !4778)
!4780 = !DILocation(line: 114, column: 25, scope: !4753, inlinedAt: !4767)
!4781 = !DILocation(line: 126, column: 17, scope: !4778, inlinedAt: !4767)
!4782 = !DILocation(line: 126, column: 16, scope: !4778, inlinedAt: !4767)
!4783 = !DILocation(line: 127, column: 19, scope: !4778, inlinedAt: !4767)
!4784 = !DILocation(line: 127, column: 35, scope: !4778, inlinedAt: !4767)
!4785 = !DILocation(line: 128, column: 16, scope: !4786, inlinedAt: !4767)
!4786 = distinct !DILexicalBlock(scope: !4778, file: !4754, line: 128, column: 11)
!4787 = !DILocation(line: 128, column: 11, scope: !4778, inlinedAt: !4767)
!4788 = distinct !{!4788, !4789, !4790}
!4789 = !DILocation(line: 144, column: 7, scope: !4778)
!4790 = !DILocation(line: 146, column: 59, scope: !4778)
!4791 = !DILocation(line: 114, column: 40, scope: !4753, inlinedAt: !4767)
!4792 = !DILocation(line: 134, column: 15, scope: !4793, inlinedAt: !4767)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !4754, line: 134, column: 15)
!4794 = distinct !DILexicalBlock(scope: !4786, file: !4754, line: 129, column: 9)
!4795 = !DILocation(line: 134, column: 15, scope: !4794, inlinedAt: !4767)
!4796 = !DILocation(line: 136, column: 23, scope: !4797, inlinedAt: !4767)
!4797 = !DILexicalBlockFile(scope: !4794, file: !4754, discriminator: 1)
!4798 = !DILocation(line: 136, column: 39, scope: !4797, inlinedAt: !4767)
!4799 = !DILocation(line: 137, column: 21, scope: !4794, inlinedAt: !4767)
!4800 = !DILocation(line: 137, column: 20, scope: !4794, inlinedAt: !4767)
!4801 = distinct !{!4801, !4802, !4803}
!4802 = !DILocation(line: 136, column: 11, scope: !4794)
!4803 = !DILocation(line: 137, column: 23, scope: !4794)
!4804 = !DILocation(line: 142, column: 20, scope: !4794, inlinedAt: !4767)
!4805 = !DILocation(line: 142, column: 18, scope: !4794, inlinedAt: !4767)
!4806 = !DILocation(line: 142, column: 11, scope: !4794, inlinedAt: !4767)
!4807 = !DILocation(line: 145, column: 17, scope: !4778, inlinedAt: !4767)
!4808 = !DILocation(line: 145, column: 16, scope: !4778, inlinedAt: !4767)
!4809 = !DILocation(line: 146, column: 19, scope: !4778, inlinedAt: !4767)
!4810 = !DILocation(line: 146, column: 35, scope: !4778, inlinedAt: !4767)
!4811 = !DILocation(line: 148, column: 14, scope: !4812, inlinedAt: !4767)
!4812 = !DILexicalBlockFile(scope: !4778, file: !4754, discriminator: 1)
!4813 = !DILocation(line: 148, column: 19, scope: !4812, inlinedAt: !4767)
!4814 = !DILocation(line: 148, column: 30, scope: !4815, inlinedAt: !4767)
!4815 = !DILexicalBlockFile(scope: !4778, file: !4754, discriminator: 2)
!4816 = !DILocation(line: 148, column: 27, scope: !4812, inlinedAt: !4767)
!4817 = distinct !{!4817, !4818, !4820}
!4818 = !DILocation(line: 150, column: 11, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4778, file: !4754, line: 149, column: 9)
!4820 = !DILocation(line: 152, column: 39, scope: !4819)
!4821 = !DILocation(line: 151, column: 21, scope: !4819, inlinedAt: !4767)
!4822 = !DILocation(line: 151, column: 20, scope: !4819, inlinedAt: !4767)
!4823 = !DILocation(line: 154, column: 21, scope: !4819, inlinedAt: !4767)
!4824 = !DILocation(line: 154, column: 20, scope: !4819, inlinedAt: !4767)
!4825 = !DILocation(line: 148, column: 22, scope: !4812, inlinedAt: !4767)
!4826 = !DILocation(line: 162, column: 18, scope: !4778, inlinedAt: !4767)
!4827 = !DILocation(line: 119, column: 7, scope: !4753, inlinedAt: !4767)
!4828 = !DILocation(line: 120, column: 10, scope: !4753, inlinedAt: !4767)
!4829 = !DILocation(line: 164, column: 23, scope: !4830, inlinedAt: !4767)
!4830 = !DILexicalBlockFile(scope: !4831, file: !4754, discriminator: 1)
!4831 = distinct !DILexicalBlock(scope: !4832, file: !4754, line: 164, column: 7)
!4832 = distinct !DILexicalBlock(scope: !4778, file: !4754, line: 164, column: 7)
!4833 = !DILocation(line: 164, column: 7, scope: !4834, inlinedAt: !4767)
!4834 = !DILexicalBlockFile(scope: !4832, file: !4754, discriminator: 1)
!4835 = distinct !{!4835, !4836, !4837}
!4836 = !DILocation(line: 165, column: 9, scope: !4831)
!4837 = !DILocation(line: 167, column: 37, scope: !4831)
!4838 = !DILocation(line: 121, column: 10, scope: !4753, inlinedAt: !4767)
!4839 = !DILocation(line: 169, column: 23, scope: !4840, inlinedAt: !4767)
!4840 = !DILexicalBlockFile(scope: !4841, file: !4754, discriminator: 1)
!4841 = distinct !DILexicalBlock(scope: !4842, file: !4754, line: 169, column: 7)
!4842 = distinct !DILexicalBlock(scope: !4778, file: !4754, line: 169, column: 7)
!4843 = !DILocation(line: 169, column: 7, scope: !4844, inlinedAt: !4767)
!4844 = !DILexicalBlockFile(scope: !4842, file: !4754, discriminator: 1)
!4845 = distinct !{!4845, !4846, !4847}
!4846 = !DILocation(line: 170, column: 9, scope: !4841)
!4847 = !DILocation(line: 172, column: 37, scope: !4841)
!4848 = !DILocation(line: 166, column: 19, scope: !4831, inlinedAt: !4767)
!4849 = !DILocation(line: 166, column: 18, scope: !4831, inlinedAt: !4767)
!4850 = !DILocation(line: 164, column: 39, scope: !4851, inlinedAt: !4767)
!4851 = !DILexicalBlockFile(scope: !4831, file: !4754, discriminator: 2)
!4852 = distinct !{!4852, !4853, !4854}
!4853 = !DILocation(line: 164, column: 7, scope: !4832)
!4854 = !DILocation(line: 167, column: 37, scope: !4832)
!4855 = !DILocation(line: 171, column: 19, scope: !4841, inlinedAt: !4767)
!4856 = !DILocation(line: 171, column: 18, scope: !4841, inlinedAt: !4767)
!4857 = !DILocation(line: 169, column: 39, scope: !4858, inlinedAt: !4767)
!4858 = !DILexicalBlockFile(scope: !4841, file: !4754, discriminator: 2)
!4859 = distinct !{!4859, !4860, !4861}
!4860 = !DILocation(line: 169, column: 7, scope: !4842)
!4861 = !DILocation(line: 172, column: 37, scope: !4842)
!4862 = !DILocation(line: 174, column: 17, scope: !4863, inlinedAt: !4767)
!4863 = distinct !DILexicalBlock(scope: !4778, file: !4754, line: 174, column: 11)
!4864 = !DILocation(line: 174, column: 11, scope: !4778, inlinedAt: !4767)
!4865 = !DILocation(line: 175, column: 22, scope: !4863, inlinedAt: !4767)
!4866 = !DILocation(line: 175, column: 16, scope: !4863, inlinedAt: !4767)
!4867 = !DILocation(line: 175, column: 9, scope: !4863, inlinedAt: !4767)
!4868 = !DILocation(line: 177, column: 12, scope: !4869, inlinedAt: !4767)
!4869 = distinct !DILexicalBlock(scope: !4778, file: !4754, line: 177, column: 11)
!4870 = !DILocation(line: 178, column: 9, scope: !4869, inlinedAt: !4767)
!4871 = !DILocation(line: 182, column: 17, scope: !4872, inlinedAt: !4767)
!4872 = distinct !DILexicalBlock(scope: !4774, file: !4754, line: 182, column: 12)
!4873 = !DILocation(line: 182, column: 12, scope: !4774, inlinedAt: !4767)
!4874 = distinct !{!4874, !4875, !4877}
!4875 = !DILocation(line: 184, column: 7, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4872, file: !4754, line: 183, column: 5)
!4877 = !DILocation(line: 186, column: 59, scope: !4876)
!4878 = !DILocation(line: 203, column: 19, scope: !4879, inlinedAt: !4767)
!4879 = !DILexicalBlockFile(scope: !4880, file: !4754, discriminator: 1)
!4880 = distinct !DILexicalBlock(scope: !4872, file: !4754, line: 202, column: 5)
!4881 = !DILocation(line: 203, column: 35, scope: !4879, inlinedAt: !4767)
!4882 = !DILocation(line: 204, column: 17, scope: !4880, inlinedAt: !4767)
!4883 = !DILocation(line: 185, column: 17, scope: !4876, inlinedAt: !4767)
!4884 = !DILocation(line: 185, column: 16, scope: !4876, inlinedAt: !4767)
!4885 = !DILocation(line: 186, column: 19, scope: !4876, inlinedAt: !4767)
!4886 = !DILocation(line: 186, column: 35, scope: !4876, inlinedAt: !4767)
!4887 = !DILocation(line: 191, column: 11, scope: !4888, inlinedAt: !4767)
!4888 = distinct !DILexicalBlock(scope: !4876, file: !4754, line: 191, column: 11)
!4889 = !DILocation(line: 191, column: 11, scope: !4876, inlinedAt: !4767)
!4890 = !DILocation(line: 193, column: 19, scope: !4891, inlinedAt: !4767)
!4891 = !DILexicalBlockFile(scope: !4876, file: !4754, discriminator: 1)
!4892 = !DILocation(line: 193, column: 35, scope: !4891, inlinedAt: !4767)
!4893 = !DILocation(line: 194, column: 17, scope: !4876, inlinedAt: !4767)
!4894 = !DILocation(line: 194, column: 16, scope: !4876, inlinedAt: !4767)
!4895 = distinct !{!4895, !4896, !4897}
!4896 = !DILocation(line: 193, column: 7, scope: !4876)
!4897 = !DILocation(line: 194, column: 19, scope: !4876)
!4898 = !DILocation(line: 199, column: 14, scope: !4876, inlinedAt: !4767)
!4899 = !DILocation(line: 199, column: 7, scope: !4876, inlinedAt: !4767)
!4900 = !DILocation(line: 205, column: 19, scope: !4879, inlinedAt: !4767)
!4901 = !DILocation(line: 205, column: 35, scope: !4879, inlinedAt: !4767)
!4902 = !DILocation(line: 206, column: 17, scope: !4880, inlinedAt: !4767)
!4903 = !DILocation(line: 204, column: 16, scope: !4880, inlinedAt: !4767)
!4904 = distinct !{!4904, !4905, !4906}
!4905 = !DILocation(line: 203, column: 7, scope: !4880)
!4906 = !DILocation(line: 204, column: 19, scope: !4880)
!4907 = !DILocation(line: 208, column: 14, scope: !4879, inlinedAt: !4767)
!4908 = !DILocation(line: 208, column: 19, scope: !4879, inlinedAt: !4767)
!4909 = !DILocation(line: 208, column: 30, scope: !4910, inlinedAt: !4767)
!4910 = !DILexicalBlockFile(scope: !4880, file: !4754, discriminator: 2)
!4911 = !DILocation(line: 208, column: 27, scope: !4879, inlinedAt: !4767)
!4912 = distinct !{!4912, !4913, !4915}
!4913 = !DILocation(line: 210, column: 11, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4880, file: !4754, line: 209, column: 9)
!4915 = !DILocation(line: 212, column: 39, scope: !4914)
!4916 = !DILocation(line: 206, column: 16, scope: !4880, inlinedAt: !4767)
!4917 = distinct !{!4917, !4918, !4919}
!4918 = !DILocation(line: 205, column: 7, scope: !4880)
!4919 = !DILocation(line: 206, column: 19, scope: !4880)
!4920 = !DILocation(line: 211, column: 21, scope: !4914, inlinedAt: !4767)
!4921 = !DILocation(line: 211, column: 20, scope: !4914, inlinedAt: !4767)
!4922 = !DILocation(line: 214, column: 21, scope: !4914, inlinedAt: !4767)
!4923 = !DILocation(line: 214, column: 20, scope: !4914, inlinedAt: !4767)
!4924 = !DILocation(line: 208, column: 22, scope: !4879, inlinedAt: !4767)
!4925 = !DILocation(line: 222, column: 18, scope: !4880, inlinedAt: !4767)
!4926 = !DILocation(line: 224, column: 23, scope: !4927, inlinedAt: !4767)
!4927 = !DILexicalBlockFile(scope: !4928, file: !4754, discriminator: 1)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !4754, line: 224, column: 7)
!4929 = distinct !DILexicalBlock(scope: !4880, file: !4754, line: 224, column: 7)
!4930 = !DILocation(line: 224, column: 7, scope: !4931, inlinedAt: !4767)
!4931 = !DILexicalBlockFile(scope: !4929, file: !4754, discriminator: 1)
!4932 = distinct !{!4932, !4933, !4934}
!4933 = !DILocation(line: 225, column: 9, scope: !4928)
!4934 = !DILocation(line: 227, column: 37, scope: !4928)
!4935 = !DILocation(line: 229, column: 23, scope: !4936, inlinedAt: !4767)
!4936 = !DILexicalBlockFile(scope: !4937, file: !4754, discriminator: 1)
!4937 = distinct !DILexicalBlock(scope: !4938, file: !4754, line: 229, column: 7)
!4938 = distinct !DILexicalBlock(scope: !4880, file: !4754, line: 229, column: 7)
!4939 = !DILocation(line: 229, column: 7, scope: !4940, inlinedAt: !4767)
!4940 = !DILexicalBlockFile(scope: !4938, file: !4754, discriminator: 1)
!4941 = distinct !{!4941, !4942, !4943}
!4942 = !DILocation(line: 230, column: 9, scope: !4937)
!4943 = !DILocation(line: 232, column: 37, scope: !4937)
!4944 = !DILocation(line: 226, column: 19, scope: !4928, inlinedAt: !4767)
!4945 = !DILocation(line: 226, column: 18, scope: !4928, inlinedAt: !4767)
!4946 = !DILocation(line: 224, column: 39, scope: !4947, inlinedAt: !4767)
!4947 = !DILexicalBlockFile(scope: !4928, file: !4754, discriminator: 2)
!4948 = distinct !{!4948, !4949, !4950}
!4949 = !DILocation(line: 224, column: 7, scope: !4929)
!4950 = !DILocation(line: 227, column: 37, scope: !4929)
!4951 = !DILocation(line: 231, column: 19, scope: !4937, inlinedAt: !4767)
!4952 = !DILocation(line: 231, column: 18, scope: !4937, inlinedAt: !4767)
!4953 = !DILocation(line: 229, column: 39, scope: !4954, inlinedAt: !4767)
!4954 = !DILexicalBlockFile(scope: !4937, file: !4754, discriminator: 2)
!4955 = distinct !{!4955, !4956, !4957}
!4956 = !DILocation(line: 229, column: 7, scope: !4938)
!4957 = !DILocation(line: 232, column: 37, scope: !4938)
!4958 = !DILocation(line: 234, column: 17, scope: !4959, inlinedAt: !4767)
!4959 = distinct !DILexicalBlock(scope: !4880, file: !4754, line: 234, column: 11)
!4960 = !DILocation(line: 234, column: 11, scope: !4880, inlinedAt: !4767)
!4961 = !DILocation(line: 235, column: 22, scope: !4959, inlinedAt: !4767)
!4962 = !DILocation(line: 235, column: 16, scope: !4959, inlinedAt: !4767)
!4963 = !DILocation(line: 235, column: 9, scope: !4959, inlinedAt: !4767)
!4964 = !DILocation(line: 237, column: 12, scope: !4965, inlinedAt: !4767)
!4965 = distinct !DILexicalBlock(scope: !4880, file: !4754, line: 237, column: 11)
!4966 = !DILocation(line: 238, column: 9, scope: !4965, inlinedAt: !4767)
!4967 = !DILocation(line: 31, column: 3, scope: !4743)
!4968 = distinct !DISubprogram(name: "verror", scope: !4969, file: !4969, line: 43, type: !4970, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !527, variables: !4979)
!4969 = !DIFile(filename: "lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4970 = !DISubroutineType(types: !4971)
!4971 = !{null, !37, !37, !34, !4972}
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !528, size: 192, elements: !4974)
!4974 = !{!4975, !4976, !4977, !4978}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4973, file: !528, baseType: !39, size: 32)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4973, file: !528, baseType: !39, size: 32, offset: 32)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4973, file: !528, baseType: !40, size: 64, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4973, file: !528, baseType: !40, size: 64, offset: 128)
!4979 = !{!4980, !4981, !4982, !4983}
!4980 = !DILocalVariable(name: "status", arg: 1, scope: !4968, file: !4969, line: 43, type: !37)
!4981 = !DILocalVariable(name: "errnum", arg: 2, scope: !4968, file: !4969, line: 43, type: !37)
!4982 = !DILocalVariable(name: "format", arg: 3, scope: !4968, file: !4969, line: 43, type: !34)
!4983 = !DILocalVariable(name: "args", arg: 4, scope: !4968, file: !4969, line: 43, type: !4972)
!4984 = !DILocation(line: 43, column: 13, scope: !4968)
!4985 = !DILocation(line: 43, column: 25, scope: !4968)
!4986 = !DILocation(line: 43, column: 45, scope: !4968)
!4987 = !DILocation(line: 43, column: 61, scope: !4968)
!4988 = !DILocation(line: 45, column: 3, scope: !4968)
!4989 = !DILocation(line: 46, column: 1, scope: !4968)
!4990 = distinct !DISubprogram(name: "verror_at_line", scope: !4969, file: !4969, line: 55, type: !4991, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !527, variables: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !37, !37, !34, !39, !34, !4972}
!4993 = !{!4994, !4995, !4996, !4997, !4998, !4999, !5000}
!4994 = !DILocalVariable(name: "status", arg: 1, scope: !4990, file: !4969, line: 55, type: !37)
!4995 = !DILocalVariable(name: "errnum", arg: 2, scope: !4990, file: !4969, line: 55, type: !37)
!4996 = !DILocalVariable(name: "file", arg: 3, scope: !4990, file: !4969, line: 55, type: !34)
!4997 = !DILocalVariable(name: "line_number", arg: 4, scope: !4990, file: !4969, line: 56, type: !39)
!4998 = !DILocalVariable(name: "format", arg: 5, scope: !4990, file: !4969, line: 56, type: !34)
!4999 = !DILocalVariable(name: "args", arg: 6, scope: !4990, file: !4969, line: 56, type: !4972)
!5000 = !DILocalVariable(name: "message", scope: !4990, file: !4969, line: 58, type: !77)
!5001 = !DILocation(line: 55, column: 21, scope: !4990)
!5002 = !DILocation(line: 55, column: 33, scope: !4990)
!5003 = !DILocation(line: 55, column: 53, scope: !4990)
!5004 = !DILocation(line: 56, column: 30, scope: !4990)
!5005 = !DILocation(line: 56, column: 55, scope: !4990)
!5006 = !DILocation(line: 56, column: 71, scope: !4990)
!5007 = !DILocation(line: 58, column: 19, scope: !4990)
!5008 = !DILocation(line: 58, column: 9, scope: !4990)
!5009 = !DILocation(line: 59, column: 7, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4990, file: !4969, line: 59, column: 7)
!5011 = !DILocation(line: 59, column: 7, scope: !4990)
!5012 = !DILocation(line: 64, column: 11, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !4969, line: 64, column: 11)
!5014 = distinct !DILexicalBlock(scope: !5010, file: !4969, line: 60, column: 5)
!5015 = !DILocation(line: 64, column: 11, scope: !5014)
!5016 = !DILocation(line: 65, column: 9, scope: !5013)
!5017 = !DILocation(line: 67, column: 9, scope: !5013)
!5018 = !DILocation(line: 73, column: 17, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5010, file: !4969, line: 70, column: 5)
!5020 = !DILocation(line: 73, column: 24, scope: !5021)
!5021 = !DILexicalBlockFile(scope: !5019, file: !4969, discriminator: 1)
!5022 = !DILocation(line: 73, column: 7, scope: !5023)
!5023 = !DILexicalBlockFile(scope: !5019, file: !4969, discriminator: 2)
!5024 = !DILocation(line: 74, column: 7, scope: !5019)
!5025 = !DILocation(line: 76, column: 3, scope: !4990)
!5026 = !DILocation(line: 77, column: 1, scope: !4990)
!5027 = distinct !DISubprogram(name: "xnmalloc", scope: !533, file: !533, line: 105, type: !5028, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5030)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!40, !26, !26}
!5030 = !{!5031, !5032}
!5031 = !DILocalVariable(name: "n", arg: 1, scope: !5027, file: !533, line: 105, type: !26)
!5032 = !DILocalVariable(name: "s", arg: 2, scope: !5027, file: !533, line: 105, type: !26)
!5033 = !DILocation(line: 105, column: 18, scope: !5027)
!5034 = !DILocation(line: 105, column: 28, scope: !5027)
!5035 = !DILocation(line: 107, column: 7, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5027, file: !533, line: 107, column: 7)
!5037 = !DILocation(line: 107, column: 7, scope: !5027)
!5038 = !DILocation(line: 108, column: 5, scope: !5036)
!5039 = !DILocation(line: 109, column: 21, scope: !5027)
!5040 = !DILocalVariable(name: "n", arg: 1, scope: !5041, file: !5042, line: 39, type: !26)
!5041 = distinct !DISubprogram(name: "xmalloc", scope: !5042, file: !5042, line: 39, type: !5043, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5045)
!5042 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!40, !26}
!5045 = !{!5040, !5046}
!5046 = !DILocalVariable(name: "p", scope: !5041, file: !5042, line: 41, type: !40)
!5047 = !DILocation(line: 39, column: 17, scope: !5041, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 109, column: 10, scope: !5027)
!5049 = !DILocation(line: 41, column: 13, scope: !5041, inlinedAt: !5048)
!5050 = !DILocation(line: 41, column: 9, scope: !5041, inlinedAt: !5048)
!5051 = !DILocation(line: 42, column: 8, scope: !5052, inlinedAt: !5048)
!5052 = distinct !DILexicalBlock(scope: !5041, file: !5042, line: 42, column: 7)
!5053 = !DILocation(line: 42, column: 15, scope: !5054, inlinedAt: !5048)
!5054 = !DILexicalBlockFile(scope: !5052, file: !5042, discriminator: 1)
!5055 = !DILocation(line: 42, column: 10, scope: !5052, inlinedAt: !5048)
!5056 = !DILocation(line: 43, column: 5, scope: !5052, inlinedAt: !5048)
!5057 = !DILocation(line: 109, column: 3, scope: !5027)
!5058 = !DILocation(line: 39, column: 17, scope: !5041)
!5059 = !DILocation(line: 41, column: 13, scope: !5041)
!5060 = !DILocation(line: 41, column: 9, scope: !5041)
!5061 = !DILocation(line: 42, column: 8, scope: !5052)
!5062 = !DILocation(line: 42, column: 15, scope: !5054)
!5063 = !DILocation(line: 42, column: 10, scope: !5052)
!5064 = !DILocation(line: 43, column: 5, scope: !5052)
!5065 = !DILocation(line: 44, column: 3, scope: !5041)
!5066 = distinct !DISubprogram(name: "xnrealloc", scope: !533, file: !533, line: 118, type: !5067, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5069)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!40, !40, !26, !26}
!5069 = !{!5070, !5071, !5072}
!5070 = !DILocalVariable(name: "p", arg: 1, scope: !5066, file: !533, line: 118, type: !40)
!5071 = !DILocalVariable(name: "n", arg: 2, scope: !5066, file: !533, line: 118, type: !26)
!5072 = !DILocalVariable(name: "s", arg: 3, scope: !5066, file: !533, line: 118, type: !26)
!5073 = !DILocation(line: 118, column: 18, scope: !5066)
!5074 = !DILocation(line: 118, column: 28, scope: !5066)
!5075 = !DILocation(line: 118, column: 38, scope: !5066)
!5076 = !DILocation(line: 120, column: 7, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5066, file: !533, line: 120, column: 7)
!5078 = !DILocation(line: 120, column: 7, scope: !5066)
!5079 = !DILocation(line: 121, column: 5, scope: !5077)
!5080 = !DILocation(line: 122, column: 25, scope: !5066)
!5081 = !DILocalVariable(name: "p", arg: 1, scope: !5082, file: !5042, line: 51, type: !40)
!5082 = distinct !DISubprogram(name: "xrealloc", scope: !5042, file: !5042, line: 51, type: !5083, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5085)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!40, !40, !26}
!5085 = !{!5081, !5086}
!5086 = !DILocalVariable(name: "n", arg: 2, scope: !5082, file: !5042, line: 51, type: !26)
!5087 = !DILocation(line: 51, column: 17, scope: !5082, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 122, column: 10, scope: !5066)
!5089 = !DILocation(line: 51, column: 27, scope: !5082, inlinedAt: !5088)
!5090 = !DILocation(line: 53, column: 8, scope: !5091, inlinedAt: !5088)
!5091 = distinct !DILexicalBlock(scope: !5082, file: !5042, line: 53, column: 7)
!5092 = !DILocation(line: 53, column: 13, scope: !5093, inlinedAt: !5088)
!5093 = !DILexicalBlockFile(scope: !5091, file: !5042, discriminator: 1)
!5094 = !DILocation(line: 53, column: 10, scope: !5091, inlinedAt: !5088)
!5095 = !DILocation(line: 57, column: 7, scope: !5096, inlinedAt: !5088)
!5096 = distinct !DILexicalBlock(scope: !5091, file: !5042, line: 54, column: 5)
!5097 = !DILocation(line: 58, column: 7, scope: !5096, inlinedAt: !5088)
!5098 = !DILocation(line: 61, column: 7, scope: !5082, inlinedAt: !5088)
!5099 = !DILocation(line: 62, column: 8, scope: !5100, inlinedAt: !5088)
!5100 = distinct !DILexicalBlock(scope: !5082, file: !5042, line: 62, column: 7)
!5101 = !DILocation(line: 62, column: 13, scope: !5102, inlinedAt: !5088)
!5102 = !DILexicalBlockFile(scope: !5100, file: !5042, discriminator: 1)
!5103 = !DILocation(line: 62, column: 10, scope: !5100, inlinedAt: !5088)
!5104 = !DILocation(line: 63, column: 5, scope: !5100, inlinedAt: !5088)
!5105 = !DILocation(line: 122, column: 3, scope: !5066)
!5106 = !DILocation(line: 51, column: 17, scope: !5082)
!5107 = !DILocation(line: 51, column: 27, scope: !5082)
!5108 = !DILocation(line: 53, column: 8, scope: !5091)
!5109 = !DILocation(line: 53, column: 13, scope: !5093)
!5110 = !DILocation(line: 53, column: 10, scope: !5091)
!5111 = !DILocation(line: 57, column: 7, scope: !5096)
!5112 = !DILocation(line: 58, column: 7, scope: !5096)
!5113 = !DILocation(line: 61, column: 7, scope: !5082)
!5114 = !DILocation(line: 62, column: 8, scope: !5100)
!5115 = !DILocation(line: 62, column: 13, scope: !5102)
!5116 = !DILocation(line: 62, column: 10, scope: !5100)
!5117 = !DILocation(line: 63, column: 5, scope: !5100)
!5118 = !DILocation(line: 65, column: 1, scope: !5082)
!5119 = !DILocation(line: 180, column: 19, scope: !534)
!5120 = !DILocation(line: 180, column: 30, scope: !534)
!5121 = !DILocation(line: 180, column: 41, scope: !534)
!5122 = !DILocation(line: 182, column: 14, scope: !534)
!5123 = !DILocation(line: 182, column: 10, scope: !534)
!5124 = !DILocation(line: 184, column: 9, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !534, file: !533, line: 184, column: 7)
!5126 = !DILocation(line: 184, column: 7, scope: !534)
!5127 = !DILocation(line: 186, column: 13, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !533, line: 186, column: 11)
!5129 = distinct !DILexicalBlock(scope: !5125, file: !533, line: 185, column: 5)
!5130 = !DILocation(line: 186, column: 11, scope: !5129)
!5131 = !DILocation(line: 194, column: 30, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5128, file: !533, line: 187, column: 9)
!5133 = !DILocation(line: 195, column: 16, scope: !5132)
!5134 = !DILocation(line: 195, column: 13, scope: !5132)
!5135 = !DILocation(line: 196, column: 9, scope: !5132)
!5136 = !DILocation(line: 204, column: 69, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5138, file: !533, line: 204, column: 11)
!5138 = distinct !DILexicalBlock(scope: !5125, file: !533, line: 199, column: 5)
!5139 = !DILocation(line: 205, column: 11, scope: !5137)
!5140 = !DILocation(line: 204, column: 11, scope: !5138)
!5141 = !DILocation(line: 206, column: 9, scope: !5137)
!5142 = !DILocation(line: 210, column: 7, scope: !534)
!5143 = !DILocation(line: 211, column: 25, scope: !534)
!5144 = !DILocation(line: 51, column: 17, scope: !5082, inlinedAt: !5145)
!5145 = distinct !DILocation(line: 211, column: 10, scope: !534)
!5146 = !DILocation(line: 51, column: 27, scope: !5082, inlinedAt: !5145)
!5147 = !DILocation(line: 53, column: 10, scope: !5091, inlinedAt: !5145)
!5148 = !DILocation(line: 207, column: 14, scope: !5138)
!5149 = !DILocation(line: 207, column: 18, scope: !5138)
!5150 = !DILocation(line: 207, column: 9, scope: !5138)
!5151 = !DILocation(line: 53, column: 8, scope: !5091, inlinedAt: !5145)
!5152 = !DILocation(line: 57, column: 7, scope: !5096, inlinedAt: !5145)
!5153 = !DILocation(line: 58, column: 7, scope: !5096, inlinedAt: !5145)
!5154 = !DILocation(line: 61, column: 7, scope: !5082, inlinedAt: !5145)
!5155 = !DILocation(line: 62, column: 8, scope: !5100, inlinedAt: !5145)
!5156 = !DILocation(line: 62, column: 13, scope: !5102, inlinedAt: !5145)
!5157 = !DILocation(line: 62, column: 10, scope: !5100, inlinedAt: !5145)
!5158 = !DILocation(line: 63, column: 5, scope: !5100, inlinedAt: !5145)
!5159 = !DILocation(line: 211, column: 3, scope: !534)
!5160 = distinct !DISubprogram(name: "xcharalloc", scope: !533, file: !533, line: 220, type: !4018, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5161)
!5161 = !{!5162}
!5162 = !DILocalVariable(name: "n", arg: 1, scope: !5160, file: !533, line: 220, type: !26)
!5163 = !DILocation(line: 220, column: 20, scope: !5160)
!5164 = !DILocation(line: 39, column: 17, scope: !5041, inlinedAt: !5165)
!5165 = distinct !DILocation(line: 222, column: 10, scope: !5160)
!5166 = !DILocation(line: 41, column: 13, scope: !5041, inlinedAt: !5165)
!5167 = !DILocation(line: 41, column: 9, scope: !5041, inlinedAt: !5165)
!5168 = !DILocation(line: 42, column: 8, scope: !5052, inlinedAt: !5165)
!5169 = !DILocation(line: 42, column: 15, scope: !5054, inlinedAt: !5165)
!5170 = !DILocation(line: 42, column: 10, scope: !5052, inlinedAt: !5165)
!5171 = !DILocation(line: 43, column: 5, scope: !5052, inlinedAt: !5165)
!5172 = !DILocation(line: 222, column: 3, scope: !5160)
!5173 = distinct !DISubprogram(name: "x2realloc", scope: !5042, file: !5042, line: 74, type: !5174, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5176)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!40, !40, !537}
!5176 = !{!5177, !5178}
!5177 = !DILocalVariable(name: "p", arg: 1, scope: !5173, file: !5042, line: 74, type: !40)
!5178 = !DILocalVariable(name: "pn", arg: 2, scope: !5173, file: !5042, line: 74, type: !537)
!5179 = !DILocation(line: 74, column: 18, scope: !5173)
!5180 = !DILocation(line: 74, column: 29, scope: !5173)
!5181 = !DILocation(line: 180, column: 19, scope: !534, inlinedAt: !5182)
!5182 = distinct !DILocation(line: 76, column: 10, scope: !5173)
!5183 = !DILocation(line: 180, column: 30, scope: !534, inlinedAt: !5182)
!5184 = !DILocation(line: 180, column: 41, scope: !534, inlinedAt: !5182)
!5185 = !DILocation(line: 182, column: 14, scope: !534, inlinedAt: !5182)
!5186 = !DILocation(line: 182, column: 10, scope: !534, inlinedAt: !5182)
!5187 = !DILocation(line: 184, column: 9, scope: !5125, inlinedAt: !5182)
!5188 = !DILocation(line: 184, column: 7, scope: !534, inlinedAt: !5182)
!5189 = !DILocation(line: 186, column: 13, scope: !5128, inlinedAt: !5182)
!5190 = !DILocation(line: 186, column: 11, scope: !5129, inlinedAt: !5182)
!5191 = !DILocation(line: 210, column: 7, scope: !534, inlinedAt: !5182)
!5192 = !DILocation(line: 51, column: 17, scope: !5082, inlinedAt: !5193)
!5193 = distinct !DILocation(line: 211, column: 10, scope: !534, inlinedAt: !5182)
!5194 = !DILocation(line: 51, column: 27, scope: !5082, inlinedAt: !5193)
!5195 = !DILocation(line: 53, column: 10, scope: !5091, inlinedAt: !5193)
!5196 = !DILocation(line: 205, column: 11, scope: !5137, inlinedAt: !5182)
!5197 = !DILocation(line: 204, column: 11, scope: !5138, inlinedAt: !5182)
!5198 = !DILocation(line: 206, column: 9, scope: !5137, inlinedAt: !5182)
!5199 = !DILocation(line: 207, column: 14, scope: !5138, inlinedAt: !5182)
!5200 = !DILocation(line: 207, column: 18, scope: !5138, inlinedAt: !5182)
!5201 = !DILocation(line: 207, column: 9, scope: !5138, inlinedAt: !5182)
!5202 = !DILocation(line: 53, column: 8, scope: !5091, inlinedAt: !5193)
!5203 = !DILocation(line: 57, column: 7, scope: !5096, inlinedAt: !5193)
!5204 = !DILocation(line: 58, column: 7, scope: !5096, inlinedAt: !5193)
!5205 = !DILocation(line: 61, column: 7, scope: !5082, inlinedAt: !5193)
!5206 = !DILocation(line: 62, column: 8, scope: !5100, inlinedAt: !5193)
!5207 = !DILocation(line: 62, column: 13, scope: !5102, inlinedAt: !5193)
!5208 = !DILocation(line: 62, column: 10, scope: !5100, inlinedAt: !5193)
!5209 = !DILocation(line: 63, column: 5, scope: !5100, inlinedAt: !5193)
!5210 = !DILocation(line: 76, column: 3, scope: !5173)
!5211 = distinct !DISubprogram(name: "xzalloc", scope: !5042, file: !5042, line: 84, type: !5043, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5212)
!5212 = !{!5213}
!5213 = !DILocalVariable(name: "s", arg: 1, scope: !5211, file: !5042, line: 84, type: !26)
!5214 = !DILocation(line: 84, column: 17, scope: !5211)
!5215 = !DILocation(line: 39, column: 17, scope: !5041, inlinedAt: !5216)
!5216 = distinct !DILocation(line: 86, column: 18, scope: !5211)
!5217 = !DILocation(line: 41, column: 13, scope: !5041, inlinedAt: !5216)
!5218 = !DILocation(line: 41, column: 9, scope: !5041, inlinedAt: !5216)
!5219 = !DILocation(line: 42, column: 8, scope: !5052, inlinedAt: !5216)
!5220 = !DILocation(line: 42, column: 15, scope: !5054, inlinedAt: !5216)
!5221 = !DILocation(line: 42, column: 10, scope: !5052, inlinedAt: !5216)
!5222 = !DILocation(line: 43, column: 5, scope: !5052, inlinedAt: !5216)
!5223 = !DILocation(line: 86, column: 10, scope: !5211)
!5224 = !DILocation(line: 86, column: 3, scope: !5211)
!5225 = distinct !DISubprogram(name: "xcalloc", scope: !5042, file: !5042, line: 93, type: !5028, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5226)
!5226 = !{!5227, !5228, !5229}
!5227 = !DILocalVariable(name: "n", arg: 1, scope: !5225, file: !5042, line: 93, type: !26)
!5228 = !DILocalVariable(name: "s", arg: 2, scope: !5225, file: !5042, line: 93, type: !26)
!5229 = !DILocalVariable(name: "p", scope: !5225, file: !5042, line: 95, type: !40)
!5230 = !DILocation(line: 93, column: 17, scope: !5225)
!5231 = !DILocation(line: 93, column: 27, scope: !5225)
!5232 = !DILocation(line: 100, column: 7, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5225, file: !5042, line: 100, column: 7)
!5234 = !DILocation(line: 101, column: 7, scope: !5233)
!5235 = !DILocation(line: 101, column: 18, scope: !5236)
!5236 = !DILexicalBlockFile(scope: !5233, file: !5042, discriminator: 1)
!5237 = !DILocation(line: 95, column: 9, scope: !5225)
!5238 = !DILocation(line: 101, column: 16, scope: !5236)
!5239 = !DILocation(line: 100, column: 7, scope: !5240)
!5240 = !DILexicalBlockFile(scope: !5225, file: !5042, discriminator: 1)
!5241 = !DILocation(line: 102, column: 5, scope: !5233)
!5242 = !DILocation(line: 103, column: 3, scope: !5225)
!5243 = distinct !DISubprogram(name: "xmemdup", scope: !5042, file: !5042, line: 111, type: !5244, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5246)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{!40, !29, !26}
!5246 = !{!5247, !5248}
!5247 = !DILocalVariable(name: "p", arg: 1, scope: !5243, file: !5042, line: 111, type: !29)
!5248 = !DILocalVariable(name: "s", arg: 2, scope: !5243, file: !5042, line: 111, type: !26)
!5249 = !DILocation(line: 111, column: 22, scope: !5243)
!5250 = !DILocation(line: 111, column: 32, scope: !5243)
!5251 = !DILocation(line: 39, column: 17, scope: !5041, inlinedAt: !5252)
!5252 = distinct !DILocation(line: 113, column: 18, scope: !5243)
!5253 = !DILocation(line: 41, column: 13, scope: !5041, inlinedAt: !5252)
!5254 = !DILocation(line: 41, column: 9, scope: !5041, inlinedAt: !5252)
!5255 = !DILocation(line: 42, column: 8, scope: !5052, inlinedAt: !5252)
!5256 = !DILocation(line: 42, column: 15, scope: !5054, inlinedAt: !5252)
!5257 = !DILocation(line: 42, column: 10, scope: !5052, inlinedAt: !5252)
!5258 = !DILocation(line: 43, column: 5, scope: !5052, inlinedAt: !5252)
!5259 = !DILocation(line: 113, column: 10, scope: !5243)
!5260 = !DILocation(line: 113, column: 3, scope: !5243)
!5261 = distinct !DISubprogram(name: "xstrdup", scope: !5042, file: !5042, line: 119, type: !4224, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !529, variables: !5262)
!5262 = !{!5263}
!5263 = !DILocalVariable(name: "string", arg: 1, scope: !5261, file: !5042, line: 119, type: !34)
!5264 = !DILocation(line: 119, column: 22, scope: !5261)
!5265 = !DILocation(line: 121, column: 27, scope: !5261)
!5266 = !DILocation(line: 121, column: 43, scope: !5261)
!5267 = !DILocation(line: 111, column: 22, scope: !5243, inlinedAt: !5268)
!5268 = distinct !DILocation(line: 121, column: 10, scope: !5269)
!5269 = !DILexicalBlockFile(scope: !5261, file: !5042, discriminator: 1)
!5270 = !DILocation(line: 111, column: 32, scope: !5243, inlinedAt: !5268)
!5271 = !DILocation(line: 39, column: 17, scope: !5041, inlinedAt: !5272)
!5272 = distinct !DILocation(line: 113, column: 18, scope: !5243, inlinedAt: !5268)
!5273 = !DILocation(line: 41, column: 13, scope: !5041, inlinedAt: !5272)
!5274 = !DILocation(line: 41, column: 9, scope: !5041, inlinedAt: !5272)
!5275 = !DILocation(line: 42, column: 8, scope: !5052, inlinedAt: !5272)
!5276 = !DILocation(line: 42, column: 15, scope: !5054, inlinedAt: !5272)
!5277 = !DILocation(line: 42, column: 10, scope: !5052, inlinedAt: !5272)
!5278 = !DILocation(line: 43, column: 5, scope: !5052, inlinedAt: !5272)
!5279 = !DILocation(line: 113, column: 10, scope: !5243, inlinedAt: !5268)
!5280 = !DILocation(line: 121, column: 3, scope: !5261)
!5281 = distinct !DISubprogram(name: "xalloc_die", scope: !5282, file: !5282, line: 32, type: !1235, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !546, variables: !82)
!5282 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5283 = !DILocation(line: 34, column: 10, scope: !5281)
!5284 = !DILocation(line: 34, column: 33, scope: !5281)
!5285 = !DILocation(line: 34, column: 3, scope: !5286)
!5286 = !DILexicalBlockFile(scope: !5281, file: !5282, discriminator: 1)
!5287 = !DILocation(line: 40, column: 3, scope: !5281)
!5288 = distinct !DISubprogram(name: "xvasprintf", scope: !5289, file: !5289, line: 76, type: !5290, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !5299)
!5289 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!77, !34, !5292}
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !549, size: 192, elements: !5294)
!5294 = !{!5295, !5296, !5297, !5298}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5293, file: !549, baseType: !39, size: 32)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5293, file: !549, baseType: !39, size: 32, offset: 32)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5293, file: !549, baseType: !40, size: 64, offset: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5293, file: !549, baseType: !40, size: 64, offset: 128)
!5299 = !{!5300, !5301, !5302, !5303, !5305}
!5300 = !DILocalVariable(name: "format", arg: 1, scope: !5288, file: !5289, line: 76, type: !34)
!5301 = !DILocalVariable(name: "args", arg: 2, scope: !5288, file: !5289, line: 76, type: !5292)
!5302 = !DILocalVariable(name: "result", scope: !5288, file: !5289, line: 78, type: !77)
!5303 = !DILocalVariable(name: "argcount", scope: !5304, file: !5289, line: 84, type: !26)
!5304 = distinct !DILexicalBlock(scope: !5288, file: !5289, line: 83, column: 3)
!5305 = !DILocalVariable(name: "f", scope: !5304, file: !5289, line: 85, type: !34)
!5306 = !DILocalVariable(name: "ap", scope: !5307, file: !5289, line: 36, type: !5326)
!5307 = distinct !DISubprogram(name: "xstrcat", scope: !5289, file: !5289, line: 33, type: !5308, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !5310)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{!77, !26, !5292}
!5310 = !{!5311, !5312, !5313, !5306, !5314, !5315, !5316, !5317, !5321, !5325}
!5311 = !DILocalVariable(name: "argcount", arg: 1, scope: !5307, file: !5289, line: 33, type: !26)
!5312 = !DILocalVariable(name: "args", arg: 2, scope: !5307, file: !5289, line: 33, type: !5292)
!5313 = !DILocalVariable(name: "result", scope: !5307, file: !5289, line: 35, type: !77)
!5314 = !DILocalVariable(name: "totalsize", scope: !5307, file: !5289, line: 37, type: !26)
!5315 = !DILocalVariable(name: "i", scope: !5307, file: !5289, line: 38, type: !26)
!5316 = !DILocalVariable(name: "p", scope: !5307, file: !5289, line: 39, type: !77)
!5317 = !DILocalVariable(name: "next", scope: !5318, file: !5289, line: 46, type: !34)
!5318 = distinct !DILexicalBlock(scope: !5319, file: !5289, line: 45, column: 5)
!5319 = distinct !DILexicalBlock(scope: !5320, file: !5289, line: 44, column: 3)
!5320 = distinct !DILexicalBlock(scope: !5307, file: !5289, line: 44, column: 3)
!5321 = !DILocalVariable(name: "next", scope: !5322, file: !5289, line: 65, type: !34)
!5322 = distinct !DILexicalBlock(scope: !5323, file: !5289, line: 64, column: 5)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !5289, line: 63, column: 3)
!5324 = distinct !DILexicalBlock(scope: !5307, file: !5289, line: 63, column: 3)
!5325 = !DILocalVariable(name: "len", scope: !5322, file: !5289, line: 66, type: !26)
!5326 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !936, line: 80, baseType: !5327)
!5327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !938, line: 50, baseType: !5328)
!5328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !549, line: 36, baseType: !5329)
!5329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5293, size: 192, elements: !947)
!5330 = !DILocation(line: 36, column: 11, scope: !5307, inlinedAt: !5331)
!5331 = distinct !DILocation(line: 91, column: 18, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !5289, line: 89, column: 13)
!5333 = distinct !DILexicalBlock(scope: !5334, file: !5289, line: 88, column: 7)
!5334 = distinct !DILexicalBlock(scope: !5335, file: !5289, line: 87, column: 5)
!5335 = distinct !DILexicalBlock(scope: !5304, file: !5289, line: 87, column: 5)
!5336 = !DILocation(line: 76, column: 25, scope: !5288)
!5337 = !DILocation(line: 76, column: 41, scope: !5288)
!5338 = !DILocation(line: 78, column: 3, scope: !5288)
!5339 = !DILocation(line: 84, column: 12, scope: !5304)
!5340 = !DILocation(line: 85, column: 17, scope: !5304)
!5341 = !DILocation(line: 87, column: 10, scope: !5335)
!5342 = !DILocation(line: 89, column: 13, scope: !5332)
!5343 = !DILocation(line: 89, column: 13, scope: !5333)
!5344 = !DILocation(line: 33, column: 17, scope: !5307, inlinedAt: !5331)
!5345 = !DILocation(line: 33, column: 35, scope: !5307, inlinedAt: !5331)
!5346 = !DILocation(line: 36, column: 3, scope: !5307, inlinedAt: !5331)
!5347 = !DILocation(line: 37, column: 10, scope: !5307, inlinedAt: !5331)
!5348 = !DILocation(line: 43, column: 3, scope: !5307, inlinedAt: !5331)
!5349 = !DILocation(line: 38, column: 10, scope: !5307, inlinedAt: !5331)
!5350 = !DILocation(line: 44, column: 24, scope: !5351, inlinedAt: !5331)
!5351 = !DILexicalBlockFile(scope: !5319, file: !5289, discriminator: 1)
!5352 = !DILocation(line: 44, column: 3, scope: !5353, inlinedAt: !5331)
!5353 = !DILexicalBlockFile(scope: !5320, file: !5289, discriminator: 1)
!5354 = !DILocation(line: 49, column: 3, scope: !5307, inlinedAt: !5331)
!5355 = !DILocation(line: 61, column: 12, scope: !5307, inlinedAt: !5331)
!5356 = !DILocation(line: 35, column: 9, scope: !5307, inlinedAt: !5331)
!5357 = !DILocation(line: 39, column: 9, scope: !5307, inlinedAt: !5331)
!5358 = !DILocation(line: 63, column: 3, scope: !5359, inlinedAt: !5331)
!5359 = !DILexicalBlockFile(scope: !5324, file: !5289, discriminator: 1)
!5360 = !DILocation(line: 46, column: 26, scope: !5318, inlinedAt: !5331)
!5361 = !DILocation(line: 46, column: 26, scope: !5362, inlinedAt: !5331)
!5362 = !DILexicalBlockFile(scope: !5318, file: !5289, discriminator: 1)
!5363 = !DILocation(line: 46, column: 26, scope: !5364, inlinedAt: !5331)
!5364 = !DILexicalBlockFile(scope: !5318, file: !5289, discriminator: 2)
!5365 = !DILocation(line: 46, column: 26, scope: !5366, inlinedAt: !5331)
!5366 = !DILexicalBlockFile(scope: !5318, file: !5289, discriminator: 3)
!5367 = !DILocation(line: 46, column: 19, scope: !5318, inlinedAt: !5331)
!5368 = !DILocation(line: 47, column: 36, scope: !5318, inlinedAt: !5331)
!5369 = !DILocalVariable(name: "size1", arg: 1, scope: !5370, file: !5371, line: 63, type: !26)
!5370 = distinct !DISubprogram(name: "xsum", scope: !5371, file: !5371, line: 63, type: !5372, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !5374)
!5371 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!26, !26, !26}
!5374 = !{!5369, !5375, !5376}
!5375 = !DILocalVariable(name: "size2", arg: 2, scope: !5370, file: !5371, line: 63, type: !26)
!5376 = !DILocalVariable(name: "sum", scope: !5370, file: !5371, line: 65, type: !26)
!5377 = !DILocation(line: 63, column: 14, scope: !5370, inlinedAt: !5378)
!5378 = distinct !DILocation(line: 47, column: 19, scope: !5362, inlinedAt: !5331)
!5379 = !DILocation(line: 63, column: 28, scope: !5370, inlinedAt: !5378)
!5380 = !DILocation(line: 65, column: 22, scope: !5370, inlinedAt: !5378)
!5381 = !DILocation(line: 65, column: 10, scope: !5370, inlinedAt: !5378)
!5382 = !DILocation(line: 66, column: 15, scope: !5370, inlinedAt: !5378)
!5383 = !DILocation(line: 66, column: 11, scope: !5370, inlinedAt: !5378)
!5384 = !DILocation(line: 44, column: 30, scope: !5385, inlinedAt: !5331)
!5385 = !DILexicalBlockFile(scope: !5319, file: !5289, discriminator: 2)
!5386 = distinct !{!5386, !5387, !5388}
!5387 = !DILocation(line: 44, column: 3, scope: !5320)
!5388 = !DILocation(line: 48, column: 5, scope: !5320)
!5389 = !DILocation(line: 54, column: 42, scope: !5390, inlinedAt: !5331)
!5390 = !DILexicalBlockFile(scope: !5391, file: !5289, discriminator: 1)
!5391 = distinct !DILexicalBlock(scope: !5307, file: !5289, line: 54, column: 7)
!5392 = !DILocation(line: 54, column: 29, scope: !5391, inlinedAt: !5331)
!5393 = !DILocation(line: 56, column: 7, scope: !5394, inlinedAt: !5331)
!5394 = distinct !DILexicalBlock(scope: !5391, file: !5289, line: 55, column: 5)
!5395 = !DILocation(line: 56, column: 13, scope: !5394, inlinedAt: !5331)
!5396 = !DILocation(line: 57, column: 7, scope: !5394, inlinedAt: !5331)
!5397 = !DILocation(line: 65, column: 26, scope: !5322, inlinedAt: !5331)
!5398 = !DILocation(line: 65, column: 26, scope: !5399, inlinedAt: !5331)
!5399 = !DILexicalBlockFile(scope: !5322, file: !5289, discriminator: 1)
!5400 = !DILocation(line: 65, column: 26, scope: !5401, inlinedAt: !5331)
!5401 = !DILexicalBlockFile(scope: !5322, file: !5289, discriminator: 2)
!5402 = !DILocation(line: 65, column: 26, scope: !5403, inlinedAt: !5331)
!5403 = !DILexicalBlockFile(scope: !5322, file: !5289, discriminator: 3)
!5404 = !DILocation(line: 65, column: 19, scope: !5322, inlinedAt: !5331)
!5405 = !DILocation(line: 66, column: 20, scope: !5322, inlinedAt: !5331)
!5406 = !DILocation(line: 66, column: 14, scope: !5322, inlinedAt: !5331)
!5407 = !DILocation(line: 67, column: 7, scope: !5322, inlinedAt: !5331)
!5408 = !DILocation(line: 68, column: 9, scope: !5322, inlinedAt: !5331)
!5409 = !DILocation(line: 63, column: 30, scope: !5410, inlinedAt: !5331)
!5410 = !DILexicalBlockFile(scope: !5323, file: !5289, discriminator: 2)
!5411 = !DILocation(line: 63, column: 24, scope: !5412, inlinedAt: !5331)
!5412 = !DILexicalBlockFile(scope: !5323, file: !5289, discriminator: 1)
!5413 = distinct !{!5413, !5414, !5415}
!5414 = !DILocation(line: 63, column: 3, scope: !5324)
!5415 = !DILocation(line: 69, column: 5, scope: !5324)
!5416 = !DILocation(line: 70, column: 6, scope: !5307, inlinedAt: !5331)
!5417 = !DILocation(line: 72, column: 3, scope: !5307, inlinedAt: !5331)
!5418 = !DILocation(line: 94, column: 10, scope: !5333)
!5419 = !DILocation(line: 95, column: 13, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5333, file: !5289, line: 95, column: 13)
!5421 = !DILocation(line: 95, column: 16, scope: !5420)
!5422 = !DILocation(line: 95, column: 13, scope: !5333)
!5423 = !DILocation(line: 97, column: 10, scope: !5333)
!5424 = !DILocation(line: 98, column: 17, scope: !5333)
!5425 = !DILocation(line: 87, column: 5, scope: !5426)
!5426 = !DILexicalBlockFile(scope: !5334, file: !5289, discriminator: 1)
!5427 = distinct !{!5427, !5428, !5429}
!5428 = !DILocation(line: 87, column: 5, scope: !5335)
!5429 = !DILocation(line: 99, column: 7, scope: !5335)
!5430 = !DILocation(line: 73, column: 1, scope: !5307, inlinedAt: !5331)
!5431 = !DILocation(line: 78, column: 9, scope: !5288)
!5432 = !DILocalVariable(name: "__ptr", arg: 1, scope: !5433, file: !5434, line: 207, type: !5437)
!5433 = distinct !DISubprogram(name: "vasprintf", scope: !5434, file: !5434, line: 207, type: !5435, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !5439)
!5434 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!37, !5437, !5438, !5292}
!5437 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!5438 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!5439 = !{!5432, !5440, !5441}
!5440 = !DILocalVariable(name: "__fmt", arg: 2, scope: !5433, file: !5434, line: 207, type: !5438)
!5441 = !DILocalVariable(name: "__ap", arg: 3, scope: !5433, file: !5434, line: 207, type: !5292)
!5442 = !DILocation(line: 207, column: 1, scope: !5433, inlinedAt: !5443)
!5443 = distinct !DILocation(line: 102, column: 7, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5288, file: !5289, line: 102, column: 7)
!5445 = !DILocation(line: 210, column: 10, scope: !5433, inlinedAt: !5443)
!5446 = !DILocation(line: 102, column: 41, scope: !5444)
!5447 = !DILocation(line: 102, column: 7, scope: !5288)
!5448 = !DILocation(line: 104, column: 11, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !5289, line: 104, column: 11)
!5450 = distinct !DILexicalBlock(scope: !5444, file: !5289, line: 103, column: 5)
!5451 = !DILocation(line: 104, column: 17, scope: !5449)
!5452 = !DILocation(line: 104, column: 11, scope: !5450)
!5453 = !DILocation(line: 105, column: 9, scope: !5449)
!5454 = !DILocation(line: 109, column: 10, scope: !5288)
!5455 = !DILocation(line: 109, column: 3, scope: !5288)
!5456 = !DILocation(line: 110, column: 1, scope: !5288)
!5457 = distinct !DISubprogram(name: "rpl_calloc", scope: !5458, file: !5458, line: 42, type: !5028, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !5459)
!5458 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5459 = !{!5460, !5461, !5462, !5463}
!5460 = !DILocalVariable(name: "n", arg: 1, scope: !5457, file: !5458, line: 42, type: !26)
!5461 = !DILocalVariable(name: "s", arg: 2, scope: !5457, file: !5458, line: 42, type: !26)
!5462 = !DILocalVariable(name: "result", scope: !5457, file: !5458, line: 44, type: !40)
!5463 = !DILocalVariable(name: "bytes", scope: !5464, file: !5458, line: 56, type: !26)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !5458, line: 53, column: 5)
!5465 = distinct !DILexicalBlock(scope: !5457, file: !5458, line: 47, column: 7)
!5466 = !DILocation(line: 42, column: 20, scope: !5457)
!5467 = !DILocation(line: 42, column: 30, scope: !5457)
!5468 = !DILocation(line: 47, column: 9, scope: !5465)
!5469 = !DILocation(line: 47, column: 19, scope: !5470)
!5470 = !DILexicalBlockFile(scope: !5465, file: !5458, discriminator: 1)
!5471 = !DILocation(line: 47, column: 14, scope: !5465)
!5472 = !DILocation(line: 56, column: 24, scope: !5464)
!5473 = !DILocation(line: 56, column: 14, scope: !5464)
!5474 = !DILocation(line: 57, column: 17, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5464, file: !5458, line: 57, column: 11)
!5476 = !DILocation(line: 57, column: 21, scope: !5475)
!5477 = !DILocation(line: 57, column: 11, scope: !5464)
!5478 = !DILocation(line: 59, column: 11, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5475, file: !5458, line: 58, column: 9)
!5480 = !DILocation(line: 59, column: 17, scope: !5479)
!5481 = !DILocation(line: 65, column: 12, scope: !5457)
!5482 = !DILocation(line: 44, column: 9, scope: !5457)
!5483 = !DILocation(line: 72, column: 3, scope: !5457)
!5484 = !DILocation(line: 73, column: 1, scope: !5457)
!5485 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5486, file: !5486, line: 334, type: !5487, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !5501)
!5486 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5487 = !DISubroutineType(types: !5488)
!5488 = !{!26, !5489, !34, !26, !5490}
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2991, line: 107, baseType: !5492)
!5492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2991, line: 95, baseType: !5493)
!5493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2991, line: 83, size: 64, elements: !5494)
!5494 = !{!5495, !5496}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5493, file: !2991, line: 85, baseType: !37, size: 32)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5493, file: !2991, line: 94, baseType: !5497, size: 32, offset: 32)
!5497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5493, file: !2991, line: 86, size: 32, elements: !5498)
!5498 = !{!5499, !5500}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5497, file: !2991, line: 89, baseType: !39, size: 32)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5497, file: !2991, line: 93, baseType: !3001, size: 32)
!5501 = !{!5502, !5503, !5504, !5505, !5506, !5507, !5508}
!5502 = !DILocalVariable(name: "pwc", arg: 1, scope: !5485, file: !5486, line: 334, type: !5489)
!5503 = !DILocalVariable(name: "s", arg: 2, scope: !5485, file: !5486, line: 334, type: !34)
!5504 = !DILocalVariable(name: "n", arg: 3, scope: !5485, file: !5486, line: 334, type: !26)
!5505 = !DILocalVariable(name: "ps", arg: 4, scope: !5485, file: !5486, line: 334, type: !5490)
!5506 = !DILocalVariable(name: "ret", scope: !5485, file: !5486, line: 336, type: !26)
!5507 = !DILocalVariable(name: "wc", scope: !5485, file: !5486, line: 337, type: !3006)
!5508 = !DILocalVariable(name: "uc", scope: !5509, file: !5486, line: 398, type: !33)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !5486, line: 397, column: 5)
!5510 = distinct !DILexicalBlock(scope: !5485, file: !5486, line: 396, column: 7)
!5511 = !DILocation(line: 334, column: 23, scope: !5485)
!5512 = !DILocation(line: 334, column: 40, scope: !5485)
!5513 = !DILocation(line: 334, column: 50, scope: !5485)
!5514 = !DILocation(line: 334, column: 64, scope: !5485)
!5515 = !DILocation(line: 337, column: 3, scope: !5485)
!5516 = !DILocation(line: 353, column: 9, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5485, file: !5486, line: 353, column: 7)
!5518 = !DILocation(line: 353, column: 7, scope: !5485)
!5519 = !DILocation(line: 388, column: 9, scope: !5485)
!5520 = !DILocation(line: 336, column: 10, scope: !5485)
!5521 = !DILocation(line: 396, column: 19, scope: !5510)
!5522 = !DILocation(line: 396, column: 31, scope: !5523)
!5523 = !DILexicalBlockFile(scope: !5510, file: !5486, discriminator: 1)
!5524 = !DILocation(line: 396, column: 26, scope: !5510)
!5525 = !DILocation(line: 396, column: 41, scope: !5526)
!5526 = !DILexicalBlockFile(scope: !5510, file: !5486, discriminator: 2)
!5527 = !DILocation(line: 396, column: 7, scope: !5528)
!5528 = !DILexicalBlockFile(scope: !5485, file: !5486, discriminator: 2)
!5529 = !DILocation(line: 398, column: 26, scope: !5509)
!5530 = !DILocation(line: 398, column: 21, scope: !5509)
!5531 = !DILocation(line: 399, column: 14, scope: !5509)
!5532 = !DILocation(line: 399, column: 12, scope: !5509)
!5533 = !DILocation(line: 405, column: 1, scope: !5485)
!5534 = distinct !DISubprogram(name: "close_stream", scope: !5535, file: !5535, line: 56, type: !5536, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !5587)
!5535 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5536 = !DISubroutineType(types: !5537)
!5537 = !{!37, !5538}
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5539, size: 64)
!5539 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !936, line: 49, baseType: !5540)
!5540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5541, line: 241, size: 1728, elements: !5542)
!5541 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5542 = !{!5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5563, !5564, !5565, !5566, !5567, !5568, !5570, !5572, !5575, !5577, !5578, !5579, !5580, !5581, !5582, !5583}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5540, file: !5541, line: 242, baseType: !37, size: 32)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5540, file: !5541, line: 247, baseType: !77, size: 64, offset: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5540, file: !5541, line: 248, baseType: !77, size: 64, offset: 128)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5540, file: !5541, line: 249, baseType: !77, size: 64, offset: 192)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5540, file: !5541, line: 250, baseType: !77, size: 64, offset: 256)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5540, file: !5541, line: 251, baseType: !77, size: 64, offset: 320)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5540, file: !5541, line: 252, baseType: !77, size: 64, offset: 384)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5540, file: !5541, line: 253, baseType: !77, size: 64, offset: 448)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5540, file: !5541, line: 254, baseType: !77, size: 64, offset: 512)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5540, file: !5541, line: 256, baseType: !77, size: 64, offset: 576)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5540, file: !5541, line: 257, baseType: !77, size: 64, offset: 640)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5540, file: !5541, line: 258, baseType: !77, size: 64, offset: 704)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5540, file: !5541, line: 260, baseType: !5556, size: 64, offset: 768)
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5541, line: 156, size: 192, elements: !5558)
!5558 = !{!5559, !5560, !5562}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5557, file: !5541, line: 157, baseType: !5556, size: 64)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5557, file: !5541, line: 158, baseType: !5561, size: 64, offset: 64)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5557, file: !5541, line: 162, baseType: !37, size: 32, offset: 128)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5540, file: !5541, line: 262, baseType: !5561, size: 64, offset: 832)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5540, file: !5541, line: 264, baseType: !37, size: 32, offset: 896)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5540, file: !5541, line: 268, baseType: !37, size: 32, offset: 928)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5540, file: !5541, line: 270, baseType: !1836, size: 64, offset: 960)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5540, file: !5541, line: 274, baseType: !38, size: 16, offset: 1024)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5540, file: !5541, line: 275, baseType: !5569, size: 8, offset: 1040)
!5569 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5540, file: !5541, line: 276, baseType: !5571, size: 8, offset: 1048)
!5571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !947)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5540, file: !5541, line: 280, baseType: !5573, size: 64, offset: 1088)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !5541, line: 150, baseType: null)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5540, file: !5541, line: 289, baseType: !5576, size: 64, offset: 1152)
!5576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !523, line: 141, baseType: !1837)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5540, file: !5541, line: 297, baseType: !40, size: 64, offset: 1216)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5540, file: !5541, line: 298, baseType: !40, size: 64, offset: 1280)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5540, file: !5541, line: 299, baseType: !40, size: 64, offset: 1344)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5540, file: !5541, line: 300, baseType: !40, size: 64, offset: 1408)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5540, file: !5541, line: 302, baseType: !26, size: 64, offset: 1472)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5540, file: !5541, line: 303, baseType: !37, size: 32, offset: 1536)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5540, file: !5541, line: 305, baseType: !5584, size: 160, offset: 1568)
!5584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !5585)
!5585 = !{!5586}
!5586 = !DISubrange(count: 20)
!5587 = !{!5588, !5589, !5591, !5592}
!5588 = !DILocalVariable(name: "stream", arg: 1, scope: !5534, file: !5535, line: 56, type: !5538)
!5589 = !DILocalVariable(name: "some_pending", scope: !5534, file: !5535, line: 58, type: !5590)
!5590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!5591 = !DILocalVariable(name: "prev_fail", scope: !5534, file: !5535, line: 59, type: !5590)
!5592 = !DILocalVariable(name: "fclose_fail", scope: !5534, file: !5535, line: 60, type: !5590)
!5593 = !DILocation(line: 56, column: 21, scope: !5534)
!5594 = !DILocation(line: 58, column: 30, scope: !5534)
!5595 = !DILocalVariable(name: "__stream", arg: 1, scope: !5596, file: !5597, line: 132, type: !5538)
!5596 = distinct !DISubprogram(name: "ferror_unlocked", scope: !5597, file: !5597, line: 132, type: !5536, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !5598)
!5597 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5598 = !{!5595}
!5599 = !DILocation(line: 132, column: 1, scope: !5596, inlinedAt: !5600)
!5600 = distinct !DILocation(line: 59, column: 27, scope: !5534)
!5601 = !DILocation(line: 134, column: 10, scope: !5596, inlinedAt: !5600)
!5602 = !{!5603, !677, i64 0}
!5603 = !{!"_IO_FILE", !677, i64 0, !587, i64 8, !587, i64 16, !587, i64 24, !587, i64 32, !587, i64 40, !587, i64 48, !587, i64 56, !587, i64 64, !587, i64 72, !587, i64 80, !587, i64 88, !587, i64 96, !587, i64 104, !677, i64 112, !677, i64 116, !2144, i64 120, !2634, i64 128, !588, i64 130, !588, i64 131, !587, i64 136, !2144, i64 144, !587, i64 152, !587, i64 160, !587, i64 168, !587, i64 176, !2144, i64 184, !677, i64 192, !588, i64 196}
!5604 = !DILocation(line: 59, column: 43, scope: !5534)
!5605 = !DILocation(line: 60, column: 29, scope: !5534)
!5606 = !DILocation(line: 60, column: 45, scope: !5534)
!5607 = !DILocation(line: 70, column: 17, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5534, file: !5535, line: 70, column: 7)
!5609 = !DILocation(line: 70, column: 33, scope: !5610)
!5610 = !DILexicalBlockFile(scope: !5608, file: !5535, discriminator: 1)
!5611 = !DILocation(line: 70, column: 53, scope: !5612)
!5612 = !DILexicalBlockFile(scope: !5608, file: !5535, discriminator: 3)
!5613 = !DILocation(line: 70, column: 7, scope: !5614)
!5614 = !DILexicalBlockFile(scope: !5534, file: !5535, discriminator: 3)
!5615 = !DILocation(line: 72, column: 11, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5608, file: !5535, line: 71, column: 5)
!5617 = !DILocation(line: 73, column: 9, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5616, file: !5535, line: 72, column: 11)
!5619 = !DILocation(line: 73, column: 15, scope: !5618)
!5620 = !DILocation(line: 78, column: 1, scope: !5534)
!5621 = distinct !DISubprogram(name: "hard_locale", scope: !5622, file: !5622, line: 38, type: !703, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !5623)
!5622 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5623 = !{!5624, !5625, !5626, !5627, !5634, !5635, !5637, !5638, !5640, !5641, !5643}
!5624 = !DILocalVariable(name: "category", arg: 1, scope: !5621, file: !5622, line: 38, type: !37)
!5625 = !DILocalVariable(name: "hard", scope: !5621, file: !5622, line: 40, type: !87)
!5626 = !DILocalVariable(name: "p", scope: !5621, file: !5622, line: 41, type: !34)
!5627 = !DILocalVariable(name: "__s1_len", scope: !5628, file: !5622, line: 47, type: !26)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !5622, line: 47, column: 15)
!5629 = distinct !DILexicalBlock(scope: !5630, file: !5622, line: 47, column: 15)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !5622, line: 46, column: 9)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !5622, line: 45, column: 11)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !5622, line: 44, column: 5)
!5633 = distinct !DILexicalBlock(scope: !5621, file: !5622, line: 43, column: 7)
!5634 = !DILocalVariable(name: "__s2_len", scope: !5628, file: !5622, line: 47, type: !26)
!5635 = !DILocalVariable(name: "__s2", scope: !5636, file: !5622, line: 47, type: !31)
!5636 = distinct !DILexicalBlock(scope: !5628, file: !5622, line: 47, column: 15)
!5637 = !DILocalVariable(name: "__result", scope: !5636, file: !5622, line: 47, type: !37)
!5638 = !DILocalVariable(name: "__s1_len", scope: !5639, file: !5622, line: 47, type: !26)
!5639 = distinct !DILexicalBlock(scope: !5629, file: !5622, line: 47, column: 39)
!5640 = !DILocalVariable(name: "__s2_len", scope: !5639, file: !5622, line: 47, type: !26)
!5641 = !DILocalVariable(name: "__s2", scope: !5642, file: !5622, line: 47, type: !31)
!5642 = distinct !DILexicalBlock(scope: !5639, file: !5622, line: 47, column: 39)
!5643 = !DILocalVariable(name: "__result", scope: !5642, file: !5622, line: 47, type: !37)
!5644 = !DILocation(line: 38, column: 18, scope: !5621)
!5645 = !DILocation(line: 40, column: 8, scope: !5621)
!5646 = !DILocation(line: 41, column: 19, scope: !5621)
!5647 = !DILocation(line: 41, column: 15, scope: !5621)
!5648 = !DILocation(line: 43, column: 7, scope: !5633)
!5649 = !DILocation(line: 43, column: 7, scope: !5621)
!5650 = !DILocation(line: 47, column: 15, scope: !5628)
!5651 = !DILocation(line: 47, column: 15, scope: !5636)
!5652 = !DILocation(line: 47, column: 15, scope: !5653)
!5653 = !DILexicalBlockFile(scope: !5636, file: !5622, discriminator: 2)
!5654 = !DILocation(line: 47, column: 15, scope: !5655)
!5655 = !DILexicalBlockFile(scope: !5656, file: !5622, discriminator: 3)
!5656 = distinct !DILexicalBlock(scope: !5636, file: !5622, line: 47, column: 15)
!5657 = !DILocation(line: 47, column: 15, scope: !5658)
!5658 = !DILexicalBlockFile(scope: !5656, file: !5622, discriminator: 2)
!5659 = !DILocation(line: 47, column: 15, scope: !5660)
!5660 = !DILexicalBlockFile(scope: !5661, file: !5622, discriminator: 4)
!5661 = distinct !DILexicalBlock(scope: !5656, file: !5622, line: 47, column: 15)
!5662 = !DILocation(line: 47, column: 15, scope: !5663)
!5663 = !DILexicalBlockFile(scope: !5628, file: !5622, discriminator: 11)
!5664 = !DILocation(line: 47, column: 36, scope: !5665)
!5665 = !DILexicalBlockFile(scope: !5629, file: !5622, discriminator: 13)
!5666 = !DILocation(line: 47, column: 39, scope: !5639)
!5667 = !DILocation(line: 47, column: 39, scope: !5668)
!5668 = !DILexicalBlockFile(scope: !5639, file: !5622, discriminator: 26)
!5669 = !DILocation(line: 47, column: 59, scope: !5670)
!5670 = !DILexicalBlockFile(scope: !5629, file: !5622, discriminator: 27)
!5671 = !DILocation(line: 47, column: 15, scope: !5672)
!5672 = !DILexicalBlockFile(scope: !5630, file: !5622, discriminator: 27)
!5673 = !DILocation(line: 48, column: 13, scope: !5629)
!5674 = !DILocation(line: 71, column: 3, scope: !5621)
!5675 = distinct !DISubprogram(name: "locale_charset", scope: !515, file: !515, line: 393, type: !5676, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !5678)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!34}
!5678 = !{!5679, !5680, !5681, !5686}
!5679 = !DILocalVariable(name: "codeset", scope: !5675, file: !515, line: 395, type: !34)
!5680 = !DILocalVariable(name: "aliases", scope: !5675, file: !515, line: 396, type: !34)
!5681 = !DILocalVariable(name: "__s1_len", scope: !5682, file: !515, line: 592, type: !26)
!5682 = distinct !DILexicalBlock(scope: !5683, file: !515, line: 592, column: 9)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !515, line: 592, column: 9)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !515, line: 589, column: 3)
!5685 = distinct !DILexicalBlock(scope: !5675, file: !515, line: 589, column: 3)
!5686 = !DILocalVariable(name: "__s2_len", scope: !5682, file: !515, line: 592, type: !26)
!5687 = !DILocalVariable(name: "buf1", scope: !5688, file: !515, line: 196, type: !5755)
!5688 = distinct !DILexicalBlock(scope: !5689, file: !515, line: 194, column: 21)
!5689 = distinct !DILexicalBlock(scope: !5690, file: !515, line: 193, column: 19)
!5690 = distinct !DILexicalBlock(scope: !5691, file: !515, line: 193, column: 19)
!5691 = distinct !DILexicalBlock(scope: !5692, file: !515, line: 188, column: 17)
!5692 = distinct !DILexicalBlock(scope: !5693, file: !515, line: 181, column: 19)
!5693 = distinct !DILexicalBlock(scope: !5694, file: !515, line: 177, column: 13)
!5694 = distinct !DILexicalBlock(scope: !5695, file: !515, line: 173, column: 15)
!5695 = distinct !DILexicalBlock(scope: !5696, file: !515, line: 161, column: 9)
!5696 = distinct !DILexicalBlock(scope: !5697, file: !515, line: 157, column: 11)
!5697 = distinct !DILexicalBlock(scope: !5698, file: !515, line: 130, column: 5)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !515, line: 129, column: 7)
!5699 = distinct !DISubprogram(name: "get_charset_aliases", scope: !515, file: !515, line: 124, type: !5676, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !5700)
!5700 = !{!5701, !5702, !5703, !5704, !5705, !5707, !5708, !5709, !5710, !5751, !5752, !5753, !5687, !5754, !5758, !5759, !5760}
!5701 = !DILocalVariable(name: "cp", scope: !5699, file: !515, line: 126, type: !34)
!5702 = !DILocalVariable(name: "dir", scope: !5697, file: !515, line: 132, type: !34)
!5703 = !DILocalVariable(name: "base", scope: !5697, file: !515, line: 133, type: !34)
!5704 = !DILocalVariable(name: "file_name", scope: !5697, file: !515, line: 134, type: !77)
!5705 = !DILocalVariable(name: "dir_len", scope: !5706, file: !515, line: 144, type: !26)
!5706 = distinct !DILexicalBlock(scope: !5697, file: !515, line: 143, column: 7)
!5707 = !DILocalVariable(name: "base_len", scope: !5706, file: !515, line: 145, type: !26)
!5708 = !DILocalVariable(name: "add_slash", scope: !5706, file: !515, line: 146, type: !37)
!5709 = !DILocalVariable(name: "fd", scope: !5695, file: !515, line: 162, type: !37)
!5710 = !DILocalVariable(name: "fp", scope: !5693, file: !515, line: 178, type: !5711)
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !936, line: 49, baseType: !5713)
!5713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5541, line: 241, size: 1728, elements: !5714)
!5714 = !{!5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5713, file: !5541, line: 242, baseType: !37, size: 32)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5713, file: !5541, line: 247, baseType: !77, size: 64, offset: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5713, file: !5541, line: 248, baseType: !77, size: 64, offset: 128)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5713, file: !5541, line: 249, baseType: !77, size: 64, offset: 192)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5713, file: !5541, line: 250, baseType: !77, size: 64, offset: 256)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5713, file: !5541, line: 251, baseType: !77, size: 64, offset: 320)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5713, file: !5541, line: 252, baseType: !77, size: 64, offset: 384)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5713, file: !5541, line: 253, baseType: !77, size: 64, offset: 448)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5713, file: !5541, line: 254, baseType: !77, size: 64, offset: 512)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5713, file: !5541, line: 256, baseType: !77, size: 64, offset: 576)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5713, file: !5541, line: 257, baseType: !77, size: 64, offset: 640)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5713, file: !5541, line: 258, baseType: !77, size: 64, offset: 704)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5713, file: !5541, line: 260, baseType: !5728, size: 64, offset: 768)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5541, line: 156, size: 192, elements: !5730)
!5730 = !{!5731, !5732, !5734}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5729, file: !5541, line: 157, baseType: !5728, size: 64)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5729, file: !5541, line: 158, baseType: !5733, size: 64, offset: 64)
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5729, file: !5541, line: 162, baseType: !37, size: 32, offset: 128)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5713, file: !5541, line: 262, baseType: !5733, size: 64, offset: 832)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5713, file: !5541, line: 264, baseType: !37, size: 32, offset: 896)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5713, file: !5541, line: 268, baseType: !37, size: 32, offset: 928)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5713, file: !5541, line: 270, baseType: !1836, size: 64, offset: 960)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5713, file: !5541, line: 274, baseType: !38, size: 16, offset: 1024)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5713, file: !5541, line: 275, baseType: !5569, size: 8, offset: 1040)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5713, file: !5541, line: 276, baseType: !5571, size: 8, offset: 1048)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5713, file: !5541, line: 280, baseType: !5573, size: 64, offset: 1088)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5713, file: !5541, line: 289, baseType: !5576, size: 64, offset: 1152)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5713, file: !5541, line: 297, baseType: !40, size: 64, offset: 1216)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5713, file: !5541, line: 298, baseType: !40, size: 64, offset: 1280)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5713, file: !5541, line: 299, baseType: !40, size: 64, offset: 1344)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5713, file: !5541, line: 300, baseType: !40, size: 64, offset: 1408)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5713, file: !5541, line: 302, baseType: !26, size: 64, offset: 1472)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5713, file: !5541, line: 303, baseType: !37, size: 32, offset: 1536)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5713, file: !5541, line: 305, baseType: !5584, size: 160, offset: 1568)
!5751 = !DILocalVariable(name: "res_ptr", scope: !5691, file: !515, line: 190, type: !77)
!5752 = !DILocalVariable(name: "res_size", scope: !5691, file: !515, line: 191, type: !26)
!5753 = !DILocalVariable(name: "c", scope: !5688, file: !515, line: 195, type: !37)
!5754 = !DILocalVariable(name: "buf2", scope: !5688, file: !515, line: 197, type: !5755)
!5755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 408, elements: !5756)
!5756 = !{!5757}
!5757 = !DISubrange(count: 51)
!5758 = !DILocalVariable(name: "l1", scope: !5688, file: !515, line: 198, type: !26)
!5759 = !DILocalVariable(name: "l2", scope: !5688, file: !515, line: 198, type: !26)
!5760 = !DILocalVariable(name: "old_res_ptr", scope: !5688, file: !515, line: 199, type: !77)
!5761 = !DILocation(line: 196, column: 28, scope: !5688, inlinedAt: !5762)
!5762 = distinct !DILocation(line: 589, column: 18, scope: !5685)
!5763 = !DILocation(line: 197, column: 28, scope: !5688, inlinedAt: !5762)
!5764 = !DILocation(line: 403, column: 13, scope: !5675)
!5765 = !DILocation(line: 395, column: 15, scope: !5675)
!5766 = !DILocation(line: 584, column: 15, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5675, file: !515, line: 584, column: 7)
!5768 = !DILocation(line: 584, column: 7, scope: !5675)
!5769 = !DILocation(line: 128, column: 8, scope: !5699, inlinedAt: !5762)
!5770 = !DILocation(line: 126, column: 15, scope: !5699, inlinedAt: !5762)
!5771 = !DILocation(line: 129, column: 10, scope: !5698, inlinedAt: !5762)
!5772 = !DILocation(line: 129, column: 7, scope: !5699, inlinedAt: !5762)
!5773 = !DILocation(line: 138, column: 13, scope: !5697, inlinedAt: !5762)
!5774 = !DILocation(line: 132, column: 19, scope: !5697, inlinedAt: !5762)
!5775 = !DILocation(line: 139, column: 15, scope: !5776, inlinedAt: !5762)
!5776 = distinct !DILexicalBlock(scope: !5697, file: !515, line: 139, column: 11)
!5777 = !DILocation(line: 139, column: 23, scope: !5776, inlinedAt: !5762)
!5778 = !DILocation(line: 139, column: 26, scope: !5779, inlinedAt: !5762)
!5779 = !DILexicalBlockFile(scope: !5776, file: !515, discriminator: 1)
!5780 = !DILocation(line: 139, column: 33, scope: !5779, inlinedAt: !5762)
!5781 = !DILocation(line: 139, column: 11, scope: !5782, inlinedAt: !5762)
!5782 = !DILexicalBlockFile(scope: !5697, file: !515, discriminator: 1)
!5783 = !DILocation(line: 140, column: 9, scope: !5776, inlinedAt: !5762)
!5784 = !DILocation(line: 144, column: 26, scope: !5706, inlinedAt: !5762)
!5785 = !DILocation(line: 144, column: 16, scope: !5706, inlinedAt: !5762)
!5786 = !DILocation(line: 145, column: 16, scope: !5706, inlinedAt: !5762)
!5787 = !DILocation(line: 146, column: 34, scope: !5706, inlinedAt: !5762)
!5788 = !DILocation(line: 146, column: 38, scope: !5706, inlinedAt: !5762)
!5789 = !DILocation(line: 146, column: 42, scope: !5790, inlinedAt: !5762)
!5790 = !DILexicalBlockFile(scope: !5706, file: !515, discriminator: 1)
!5791 = !DILocation(line: 146, column: 41, scope: !5790, inlinedAt: !5762)
!5792 = !DILocation(line: 147, column: 48, scope: !5706, inlinedAt: !5762)
!5793 = !DILocation(line: 147, column: 46, scope: !5706, inlinedAt: !5762)
!5794 = !DILocation(line: 147, column: 69, scope: !5706, inlinedAt: !5762)
!5795 = !DILocation(line: 147, column: 30, scope: !5706, inlinedAt: !5762)
!5796 = !DILocation(line: 134, column: 13, scope: !5697, inlinedAt: !5762)
!5797 = !DILocation(line: 148, column: 13, scope: !5706, inlinedAt: !5762)
!5798 = !DILocation(line: 150, column: 13, scope: !5799, inlinedAt: !5762)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !515, line: 149, column: 11)
!5800 = distinct !DILexicalBlock(scope: !5706, file: !515, line: 148, column: 13)
!5801 = !DILocation(line: 151, column: 17, scope: !5799, inlinedAt: !5762)
!5802 = !DILocation(line: 152, column: 34, scope: !5803, inlinedAt: !5762)
!5803 = distinct !DILexicalBlock(scope: !5799, file: !515, line: 151, column: 17)
!5804 = !DILocation(line: 153, column: 41, scope: !5799, inlinedAt: !5762)
!5805 = !DILocation(line: 153, column: 13, scope: !5799, inlinedAt: !5762)
!5806 = !DILocation(line: 157, column: 11, scope: !5697, inlinedAt: !5762)
!5807 = !DILocation(line: 171, column: 16, scope: !5695, inlinedAt: !5762)
!5808 = !DILocation(line: 162, column: 15, scope: !5695, inlinedAt: !5762)
!5809 = !DILocation(line: 173, column: 18, scope: !5694, inlinedAt: !5762)
!5810 = !DILocation(line: 173, column: 15, scope: !5695, inlinedAt: !5762)
!5811 = !DILocation(line: 180, column: 20, scope: !5693, inlinedAt: !5762)
!5812 = !DILocation(line: 178, column: 21, scope: !5693, inlinedAt: !5762)
!5813 = !DILocation(line: 181, column: 22, scope: !5692, inlinedAt: !5762)
!5814 = !DILocation(line: 181, column: 19, scope: !5693, inlinedAt: !5762)
!5815 = !DILocation(line: 190, column: 25, scope: !5691, inlinedAt: !5762)
!5816 = !DILocation(line: 184, column: 19, scope: !5817, inlinedAt: !5762)
!5817 = distinct !DILexicalBlock(scope: !5692, file: !515, line: 182, column: 17)
!5818 = !DILocation(line: 186, column: 17, scope: !5817, inlinedAt: !5762)
!5819 = !DILocation(line: 191, column: 26, scope: !5691, inlinedAt: !5762)
!5820 = !DILocation(line: 196, column: 23, scope: !5688, inlinedAt: !5762)
!5821 = !DILocation(line: 197, column: 23, scope: !5688, inlinedAt: !5762)
!5822 = !DILocalVariable(name: "__fp", arg: 1, scope: !5823, file: !5597, line: 63, type: !5711)
!5823 = distinct !DISubprogram(name: "getc_unlocked", scope: !5597, file: !5597, line: 63, type: !5824, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !5826)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{!37, !5711}
!5826 = !{!5822}
!5827 = !DILocation(line: 63, column: 22, scope: !5823, inlinedAt: !5828)
!5828 = distinct !DILocation(line: 201, column: 27, scope: !5688, inlinedAt: !5762)
!5829 = !DILocation(line: 65, column: 10, scope: !5823, inlinedAt: !5828)
!5830 = !{!5603, !587, i64 8}
!5831 = !{!5603, !587, i64 16}
!5832 = !{!"branch_weights", i32 2000, i32 1}
!5833 = !DILocation(line: 65, column: 10, scope: !5834, inlinedAt: !5828)
!5834 = !DILexicalBlockFile(scope: !5823, file: !5597, discriminator: 1)
!5835 = !DILocation(line: 65, column: 10, scope: !5836, inlinedAt: !5828)
!5836 = !DILexicalBlockFile(scope: !5823, file: !5597, discriminator: 2)
!5837 = !DILocation(line: 65, column: 10, scope: !5838, inlinedAt: !5828)
!5838 = !DILexicalBlockFile(scope: !5823, file: !5597, discriminator: 3)
!5839 = !DILocation(line: 195, column: 27, scope: !5688, inlinedAt: !5762)
!5840 = !DILocation(line: 202, column: 27, scope: !5688, inlinedAt: !5762)
!5841 = !DILocation(line: 63, column: 22, scope: !5823, inlinedAt: !5842)
!5842 = distinct !DILocation(line: 210, column: 33, scope: !5843, inlinedAt: !5762)
!5843 = distinct !DILexicalBlock(scope: !5844, file: !515, line: 207, column: 25)
!5844 = distinct !DILexicalBlock(scope: !5688, file: !515, line: 206, column: 27)
!5845 = !DILocation(line: 65, column: 10, scope: !5823, inlinedAt: !5842)
!5846 = !DILocation(line: 65, column: 10, scope: !5834, inlinedAt: !5842)
!5847 = !DILocation(line: 65, column: 10, scope: !5836, inlinedAt: !5842)
!5848 = !DILocation(line: 65, column: 10, scope: !5838, inlinedAt: !5842)
!5849 = !DILocation(line: 210, column: 29, scope: !5850, inlinedAt: !5762)
!5850 = !DILexicalBlockFile(scope: !5843, file: !515, discriminator: 1)
!5851 = distinct !{!5851, !5852, !5853}
!5852 = !DILocation(line: 193, column: 19, scope: !5690)
!5853 = !DILocation(line: 241, column: 21, scope: !5690)
!5854 = !DILocation(line: 216, column: 23, scope: !5688, inlinedAt: !5762)
!5855 = !DILocation(line: 217, column: 27, scope: !5856, inlinedAt: !5762)
!5856 = distinct !DILexicalBlock(scope: !5688, file: !515, line: 217, column: 27)
!5857 = !DILocation(line: 217, column: 64, scope: !5856, inlinedAt: !5762)
!5858 = !DILocation(line: 217, column: 27, scope: !5688, inlinedAt: !5762)
!5859 = !DILocation(line: 219, column: 28, scope: !5688, inlinedAt: !5762)
!5860 = !DILocation(line: 198, column: 30, scope: !5688, inlinedAt: !5762)
!5861 = !DILocation(line: 220, column: 28, scope: !5688, inlinedAt: !5762)
!5862 = !DILocation(line: 198, column: 34, scope: !5688, inlinedAt: !5762)
!5863 = !DILocation(line: 199, column: 29, scope: !5688, inlinedAt: !5762)
!5864 = !DILocation(line: 222, column: 36, scope: !5865, inlinedAt: !5762)
!5865 = distinct !DILexicalBlock(scope: !5688, file: !515, line: 222, column: 27)
!5866 = !DILocation(line: 222, column: 27, scope: !5688, inlinedAt: !5762)
!5867 = !DILocation(line: 225, column: 63, scope: !5868, inlinedAt: !5762)
!5868 = distinct !DILexicalBlock(scope: !5865, file: !515, line: 223, column: 25)
!5869 = !DILocation(line: 225, column: 46, scope: !5868, inlinedAt: !5762)
!5870 = !DILocation(line: 226, column: 25, scope: !5868, inlinedAt: !5762)
!5871 = !DILocation(line: 229, column: 36, scope: !5872, inlinedAt: !5762)
!5872 = distinct !DILexicalBlock(scope: !5865, file: !515, line: 228, column: 25)
!5873 = !DILocation(line: 230, column: 73, scope: !5872, inlinedAt: !5762)
!5874 = !DILocation(line: 230, column: 46, scope: !5872, inlinedAt: !5762)
!5875 = !DILocation(line: 232, column: 35, scope: !5876, inlinedAt: !5762)
!5876 = distinct !DILexicalBlock(scope: !5688, file: !515, line: 232, column: 27)
!5877 = !DILocation(line: 232, column: 27, scope: !5688, inlinedAt: !5762)
!5878 = !DILocation(line: 236, column: 27, scope: !5879, inlinedAt: !5762)
!5879 = distinct !DILexicalBlock(scope: !5876, file: !515, line: 233, column: 25)
!5880 = !DILocation(line: 237, column: 27, scope: !5879, inlinedAt: !5762)
!5881 = !DILocation(line: 239, column: 39, scope: !5688, inlinedAt: !5762)
!5882 = !DILocation(line: 239, column: 50, scope: !5688, inlinedAt: !5762)
!5883 = !DILocation(line: 239, column: 61, scope: !5688, inlinedAt: !5762)
!5884 = !DILocalVariable(name: "__dest", arg: 1, scope: !5885, file: !5886, line: 107, type: !5889)
!5885 = distinct !DISubprogram(name: "strcpy", scope: !5886, file: !5886, line: 107, type: !5887, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !5890)
!5886 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!77, !5889, !5438}
!5889 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!5890 = !{!5884, !5891}
!5891 = !DILocalVariable(name: "__src", arg: 2, scope: !5885, file: !5886, line: 107, type: !5438)
!5892 = !DILocation(line: 107, column: 1, scope: !5885, inlinedAt: !5893)
!5893 = distinct !DILocation(line: 239, column: 23, scope: !5688, inlinedAt: !5762)
!5894 = !DILocation(line: 109, column: 49, scope: !5885, inlinedAt: !5893)
!5895 = !DILocation(line: 109, column: 10, scope: !5885, inlinedAt: !5893)
!5896 = !DILocation(line: 107, column: 1, scope: !5885, inlinedAt: !5897)
!5897 = distinct !DILocation(line: 240, column: 23, scope: !5688, inlinedAt: !5762)
!5898 = !DILocation(line: 109, column: 49, scope: !5885, inlinedAt: !5897)
!5899 = !DILocation(line: 109, column: 10, scope: !5885, inlinedAt: !5897)
!5900 = !DILocation(line: 241, column: 21, scope: !5689, inlinedAt: !5762)
!5901 = !DILocation(line: 242, column: 19, scope: !5691, inlinedAt: !5762)
!5902 = !DILocation(line: 243, column: 32, scope: !5903, inlinedAt: !5762)
!5903 = distinct !DILexicalBlock(scope: !5691, file: !515, line: 243, column: 23)
!5904 = !DILocation(line: 243, column: 23, scope: !5691, inlinedAt: !5762)
!5905 = !DILocation(line: 247, column: 33, scope: !5906, inlinedAt: !5762)
!5906 = distinct !DILexicalBlock(scope: !5903, file: !515, line: 246, column: 21)
!5907 = !DILocation(line: 247, column: 45, scope: !5906, inlinedAt: !5762)
!5908 = !DILocation(line: 253, column: 11, scope: !5695, inlinedAt: !5762)
!5909 = !DILocation(line: 377, column: 23, scope: !5697, inlinedAt: !5762)
!5910 = !DILocation(line: 378, column: 5, scope: !5697, inlinedAt: !5762)
!5911 = !DILocation(line: 396, column: 15, scope: !5675)
!5912 = !DILocation(line: 590, column: 8, scope: !5684)
!5913 = !DILocation(line: 590, column: 17, scope: !5684)
!5914 = !DILocation(line: 589, column: 3, scope: !5915)
!5915 = !DILexicalBlockFile(scope: !5685, file: !515, discriminator: 1)
!5916 = !DILocation(line: 592, column: 9, scope: !5682)
!5917 = !DILocation(line: 592, column: 35, scope: !5683)
!5918 = !DILocation(line: 593, column: 9, scope: !5683)
!5919 = !DILocation(line: 593, column: 24, scope: !5920)
!5920 = !DILexicalBlockFile(scope: !5683, file: !515, discriminator: 1)
!5921 = !DILocation(line: 593, column: 31, scope: !5920)
!5922 = !DILocation(line: 593, column: 34, scope: !5923)
!5923 = !DILexicalBlockFile(scope: !5683, file: !515, discriminator: 2)
!5924 = !DILocation(line: 593, column: 45, scope: !5923)
!5925 = !DILocation(line: 592, column: 9, scope: !5926)
!5926 = !DILexicalBlockFile(scope: !5684, file: !515, discriminator: 1)
!5927 = !DILocation(line: 595, column: 29, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5683, file: !515, line: 594, column: 7)
!5929 = !DILocation(line: 595, column: 27, scope: !5928)
!5930 = !DILocation(line: 595, column: 46, scope: !5928)
!5931 = !DILocation(line: 596, column: 9, scope: !5928)
!5932 = !DILocation(line: 591, column: 19, scope: !5684)
!5933 = !DILocation(line: 591, column: 36, scope: !5684)
!5934 = !DILocation(line: 591, column: 16, scope: !5684)
!5935 = !DILocation(line: 591, column: 52, scope: !5926)
!5936 = !DILocation(line: 591, column: 69, scope: !5684)
!5937 = !DILocation(line: 591, column: 49, scope: !5684)
!5938 = distinct !{!5938, !5939, !5940}
!5939 = !DILocation(line: 589, column: 3, scope: !5685)
!5940 = !DILocation(line: 597, column: 7, scope: !5685)
!5941 = !DILocation(line: 602, column: 7, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5675, file: !515, line: 602, column: 7)
!5943 = !DILocation(line: 602, column: 18, scope: !5942)
!5944 = !DILocation(line: 602, column: 7, scope: !5675)
!5945 = !DILocation(line: 612, column: 3, scope: !5675)
!5946 = distinct !DISubprogram(name: "rpl_fclose", scope: !5947, file: !5947, line: 56, type: !5948, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !5990)
!5947 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5948 = !DISubroutineType(types: !5949)
!5949 = !{!37, !5950}
!5950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5951, size: 64)
!5951 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !936, line: 49, baseType: !5952)
!5952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5541, line: 241, size: 1728, elements: !5953)
!5953 = !{!5954, !5955, !5956, !5957, !5958, !5959, !5960, !5961, !5962, !5963, !5964, !5965, !5966, !5974, !5975, !5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983, !5984, !5985, !5986, !5987, !5988, !5989}
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5952, file: !5541, line: 242, baseType: !37, size: 32)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5952, file: !5541, line: 247, baseType: !77, size: 64, offset: 64)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5952, file: !5541, line: 248, baseType: !77, size: 64, offset: 128)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5952, file: !5541, line: 249, baseType: !77, size: 64, offset: 192)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5952, file: !5541, line: 250, baseType: !77, size: 64, offset: 256)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5952, file: !5541, line: 251, baseType: !77, size: 64, offset: 320)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5952, file: !5541, line: 252, baseType: !77, size: 64, offset: 384)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5952, file: !5541, line: 253, baseType: !77, size: 64, offset: 448)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5952, file: !5541, line: 254, baseType: !77, size: 64, offset: 512)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5952, file: !5541, line: 256, baseType: !77, size: 64, offset: 576)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5952, file: !5541, line: 257, baseType: !77, size: 64, offset: 640)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5952, file: !5541, line: 258, baseType: !77, size: 64, offset: 704)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5952, file: !5541, line: 260, baseType: !5967, size: 64, offset: 768)
!5967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5968, size: 64)
!5968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5541, line: 156, size: 192, elements: !5969)
!5969 = !{!5970, !5971, !5973}
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5968, file: !5541, line: 157, baseType: !5967, size: 64)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5968, file: !5541, line: 158, baseType: !5972, size: 64, offset: 64)
!5972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5952, size: 64)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5968, file: !5541, line: 162, baseType: !37, size: 32, offset: 128)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5952, file: !5541, line: 262, baseType: !5972, size: 64, offset: 832)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5952, file: !5541, line: 264, baseType: !37, size: 32, offset: 896)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5952, file: !5541, line: 268, baseType: !37, size: 32, offset: 928)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5952, file: !5541, line: 270, baseType: !1836, size: 64, offset: 960)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5952, file: !5541, line: 274, baseType: !38, size: 16, offset: 1024)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5952, file: !5541, line: 275, baseType: !5569, size: 8, offset: 1040)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5952, file: !5541, line: 276, baseType: !5571, size: 8, offset: 1048)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5952, file: !5541, line: 280, baseType: !5573, size: 64, offset: 1088)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5952, file: !5541, line: 289, baseType: !5576, size: 64, offset: 1152)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5952, file: !5541, line: 297, baseType: !40, size: 64, offset: 1216)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5952, file: !5541, line: 298, baseType: !40, size: 64, offset: 1280)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5952, file: !5541, line: 299, baseType: !40, size: 64, offset: 1344)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5952, file: !5541, line: 300, baseType: !40, size: 64, offset: 1408)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5952, file: !5541, line: 302, baseType: !26, size: 64, offset: 1472)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5952, file: !5541, line: 303, baseType: !37, size: 32, offset: 1536)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5952, file: !5541, line: 305, baseType: !5584, size: 160, offset: 1568)
!5990 = !{!5991, !5992, !5993, !5994}
!5991 = !DILocalVariable(name: "fp", arg: 1, scope: !5946, file: !5947, line: 56, type: !5950)
!5992 = !DILocalVariable(name: "saved_errno", scope: !5946, file: !5947, line: 58, type: !37)
!5993 = !DILocalVariable(name: "fd", scope: !5946, file: !5947, line: 59, type: !37)
!5994 = !DILocalVariable(name: "result", scope: !5946, file: !5947, line: 60, type: !37)
!5995 = !DILocation(line: 56, column: 19, scope: !5946)
!5996 = !DILocation(line: 58, column: 7, scope: !5946)
!5997 = !DILocation(line: 60, column: 7, scope: !5946)
!5998 = !DILocation(line: 63, column: 8, scope: !5946)
!5999 = !DILocation(line: 59, column: 7, scope: !5946)
!6000 = !DILocation(line: 64, column: 10, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5946, file: !5947, line: 64, column: 7)
!6002 = !DILocation(line: 64, column: 7, scope: !5946)
!6003 = !DILocation(line: 65, column: 12, scope: !6001)
!6004 = !DILocation(line: 65, column: 5, scope: !6001)
!6005 = !DILocation(line: 70, column: 9, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5946, file: !5947, line: 70, column: 7)
!6007 = !DILocation(line: 70, column: 23, scope: !6006)
!6008 = !DILocation(line: 70, column: 33, scope: !6009)
!6009 = !DILexicalBlockFile(scope: !6006, file: !5947, discriminator: 1)
!6010 = !DILocation(line: 70, column: 26, scope: !6011)
!6011 = !DILexicalBlockFile(scope: !6006, file: !5947, discriminator: 3)
!6012 = !DILocation(line: 70, column: 59, scope: !6009)
!6013 = !DILocation(line: 71, column: 7, scope: !6006)
!6014 = !DILocation(line: 71, column: 10, scope: !6009)
!6015 = !DILocation(line: 70, column: 7, scope: !6016)
!6016 = !DILexicalBlockFile(scope: !5946, file: !5947, discriminator: 2)
!6017 = !DILocation(line: 98, column: 12, scope: !5946)
!6018 = !DILocation(line: 103, column: 7, scope: !5946)
!6019 = !DILocation(line: 72, column: 19, scope: !6006)
!6020 = !DILocation(line: 103, column: 19, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5946, file: !5947, line: 103, column: 7)
!6022 = !DILocation(line: 105, column: 13, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6021, file: !5947, line: 104, column: 5)
!6024 = !DILocation(line: 107, column: 5, scope: !6023)
!6025 = !DILocation(line: 110, column: 1, scope: !5946)
!6026 = distinct !DISubprogram(name: "rpl_fflush", scope: !6027, file: !6027, line: 127, type: !6028, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !6070)
!6027 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6028 = !DISubroutineType(types: !6029)
!6029 = !{!37, !6030}
!6030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6031, size: 64)
!6031 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !936, line: 49, baseType: !6032)
!6032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5541, line: 241, size: 1728, elements: !6033)
!6033 = !{!6034, !6035, !6036, !6037, !6038, !6039, !6040, !6041, !6042, !6043, !6044, !6045, !6046, !6054, !6055, !6056, !6057, !6058, !6059, !6060, !6061, !6062, !6063, !6064, !6065, !6066, !6067, !6068, !6069}
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6032, file: !5541, line: 242, baseType: !37, size: 32)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6032, file: !5541, line: 247, baseType: !77, size: 64, offset: 64)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6032, file: !5541, line: 248, baseType: !77, size: 64, offset: 128)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6032, file: !5541, line: 249, baseType: !77, size: 64, offset: 192)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6032, file: !5541, line: 250, baseType: !77, size: 64, offset: 256)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6032, file: !5541, line: 251, baseType: !77, size: 64, offset: 320)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6032, file: !5541, line: 252, baseType: !77, size: 64, offset: 384)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6032, file: !5541, line: 253, baseType: !77, size: 64, offset: 448)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6032, file: !5541, line: 254, baseType: !77, size: 64, offset: 512)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6032, file: !5541, line: 256, baseType: !77, size: 64, offset: 576)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6032, file: !5541, line: 257, baseType: !77, size: 64, offset: 640)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6032, file: !5541, line: 258, baseType: !77, size: 64, offset: 704)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6032, file: !5541, line: 260, baseType: !6047, size: 64, offset: 768)
!6047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6048, size: 64)
!6048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5541, line: 156, size: 192, elements: !6049)
!6049 = !{!6050, !6051, !6053}
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6048, file: !5541, line: 157, baseType: !6047, size: 64)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6048, file: !5541, line: 158, baseType: !6052, size: 64, offset: 64)
!6052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6032, size: 64)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6048, file: !5541, line: 162, baseType: !37, size: 32, offset: 128)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6032, file: !5541, line: 262, baseType: !6052, size: 64, offset: 832)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6032, file: !5541, line: 264, baseType: !37, size: 32, offset: 896)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6032, file: !5541, line: 268, baseType: !37, size: 32, offset: 928)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6032, file: !5541, line: 270, baseType: !1836, size: 64, offset: 960)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6032, file: !5541, line: 274, baseType: !38, size: 16, offset: 1024)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6032, file: !5541, line: 275, baseType: !5569, size: 8, offset: 1040)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6032, file: !5541, line: 276, baseType: !5571, size: 8, offset: 1048)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6032, file: !5541, line: 280, baseType: !5573, size: 64, offset: 1088)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6032, file: !5541, line: 289, baseType: !5576, size: 64, offset: 1152)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6032, file: !5541, line: 297, baseType: !40, size: 64, offset: 1216)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6032, file: !5541, line: 298, baseType: !40, size: 64, offset: 1280)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6032, file: !5541, line: 299, baseType: !40, size: 64, offset: 1344)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6032, file: !5541, line: 300, baseType: !40, size: 64, offset: 1408)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6032, file: !5541, line: 302, baseType: !26, size: 64, offset: 1472)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6032, file: !5541, line: 303, baseType: !37, size: 32, offset: 1536)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6032, file: !5541, line: 305, baseType: !5584, size: 160, offset: 1568)
!6070 = !{!6071}
!6071 = !DILocalVariable(name: "stream", arg: 1, scope: !6026, file: !6027, line: 127, type: !6030)
!6072 = !DILocation(line: 127, column: 19, scope: !6026)
!6073 = !DILocation(line: 148, column: 14, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6026, file: !6027, line: 148, column: 7)
!6075 = !DILocation(line: 148, column: 22, scope: !6074)
!6076 = !DILocation(line: 148, column: 27, scope: !6077)
!6077 = !DILexicalBlockFile(scope: !6074, file: !6027, discriminator: 1)
!6078 = !DILocation(line: 148, column: 7, scope: !6079)
!6079 = !DILexicalBlockFile(scope: !6026, file: !6027, discriminator: 1)
!6080 = !DILocation(line: 149, column: 12, scope: !6074)
!6081 = !DILocation(line: 149, column: 5, scope: !6074)
!6082 = !DILocalVariable(name: "fp", arg: 1, scope: !6083, file: !6027, line: 40, type: !6030)
!6083 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !6027, file: !6027, line: 40, type: !6084, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !564, variables: !6086)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{null, !6030}
!6086 = !{!6082}
!6087 = !DILocation(line: 40, column: 48, scope: !6083, inlinedAt: !6088)
!6088 = distinct !DILocation(line: 153, column: 3, scope: !6026)
!6089 = !DILocation(line: 42, column: 11, scope: !6090, inlinedAt: !6088)
!6090 = distinct !DILexicalBlock(scope: !6083, file: !6027, line: 42, column: 7)
!6091 = !DILocation(line: 42, column: 18, scope: !6090, inlinedAt: !6088)
!6092 = !DILocation(line: 42, column: 7, scope: !6083, inlinedAt: !6088)
!6093 = !DILocation(line: 44, column: 5, scope: !6090, inlinedAt: !6088)
!6094 = !DILocation(line: 155, column: 10, scope: !6026)
!6095 = !DILocation(line: 155, column: 3, scope: !6026)
!6096 = !DILocation(line: 229, column: 1, scope: !6026)
!6097 = distinct !DISubprogram(name: "rpl_fseeko", scope: !6098, file: !6098, line: 28, type: !6099, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !6142)
!6098 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6099 = !DISubroutineType(types: !6100)
!6100 = !{!37, !6101, !6141, !37}
!6101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6102, size: 64)
!6102 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !936, line: 49, baseType: !6103)
!6103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5541, line: 241, size: 1728, elements: !6104)
!6104 = !{!6105, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6125, !6126, !6127, !6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139, !6140}
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6103, file: !5541, line: 242, baseType: !37, size: 32)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6103, file: !5541, line: 247, baseType: !77, size: 64, offset: 64)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6103, file: !5541, line: 248, baseType: !77, size: 64, offset: 128)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6103, file: !5541, line: 249, baseType: !77, size: 64, offset: 192)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6103, file: !5541, line: 250, baseType: !77, size: 64, offset: 256)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6103, file: !5541, line: 251, baseType: !77, size: 64, offset: 320)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6103, file: !5541, line: 252, baseType: !77, size: 64, offset: 384)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6103, file: !5541, line: 253, baseType: !77, size: 64, offset: 448)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6103, file: !5541, line: 254, baseType: !77, size: 64, offset: 512)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6103, file: !5541, line: 256, baseType: !77, size: 64, offset: 576)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6103, file: !5541, line: 257, baseType: !77, size: 64, offset: 640)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6103, file: !5541, line: 258, baseType: !77, size: 64, offset: 704)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6103, file: !5541, line: 260, baseType: !6118, size: 64, offset: 768)
!6118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6119, size: 64)
!6119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5541, line: 156, size: 192, elements: !6120)
!6120 = !{!6121, !6122, !6124}
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6119, file: !5541, line: 157, baseType: !6118, size: 64)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6119, file: !5541, line: 158, baseType: !6123, size: 64, offset: 64)
!6123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6103, size: 64)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6119, file: !5541, line: 162, baseType: !37, size: 32, offset: 128)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6103, file: !5541, line: 262, baseType: !6123, size: 64, offset: 832)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6103, file: !5541, line: 264, baseType: !37, size: 32, offset: 896)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6103, file: !5541, line: 268, baseType: !37, size: 32, offset: 928)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6103, file: !5541, line: 270, baseType: !1836, size: 64, offset: 960)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6103, file: !5541, line: 274, baseType: !38, size: 16, offset: 1024)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6103, file: !5541, line: 275, baseType: !5569, size: 8, offset: 1040)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6103, file: !5541, line: 276, baseType: !5571, size: 8, offset: 1048)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6103, file: !5541, line: 280, baseType: !5573, size: 64, offset: 1088)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6103, file: !5541, line: 289, baseType: !5576, size: 64, offset: 1152)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6103, file: !5541, line: 297, baseType: !40, size: 64, offset: 1216)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6103, file: !5541, line: 298, baseType: !40, size: 64, offset: 1280)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6103, file: !5541, line: 299, baseType: !40, size: 64, offset: 1344)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6103, file: !5541, line: 300, baseType: !40, size: 64, offset: 1408)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6103, file: !5541, line: 302, baseType: !26, size: 64, offset: 1472)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6103, file: !5541, line: 303, baseType: !37, size: 32, offset: 1536)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6103, file: !5541, line: 305, baseType: !5584, size: 160, offset: 1568)
!6141 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !936, line: 91, baseType: !1836)
!6142 = !{!6143, !6144, !6145, !6146}
!6143 = !DILocalVariable(name: "fp", arg: 1, scope: !6097, file: !6098, line: 28, type: !6101)
!6144 = !DILocalVariable(name: "offset", arg: 2, scope: !6097, file: !6098, line: 28, type: !6141)
!6145 = !DILocalVariable(name: "whence", arg: 3, scope: !6097, file: !6098, line: 28, type: !37)
!6146 = !DILocalVariable(name: "pos", scope: !6147, file: !6098, line: 116, type: !6141)
!6147 = distinct !DILexicalBlock(scope: !6148, file: !6098, line: 112, column: 5)
!6148 = distinct !DILexicalBlock(scope: !6097, file: !6098, line: 51, column: 7)
!6149 = !DILocation(line: 28, column: 15, scope: !6097)
!6150 = !DILocation(line: 28, column: 25, scope: !6097)
!6151 = !DILocation(line: 28, column: 37, scope: !6097)
!6152 = !DILocation(line: 51, column: 11, scope: !6148)
!6153 = !DILocation(line: 51, column: 31, scope: !6148)
!6154 = !DILocation(line: 51, column: 24, scope: !6148)
!6155 = !DILocation(line: 52, column: 7, scope: !6148)
!6156 = !DILocation(line: 52, column: 14, scope: !6157)
!6157 = !DILexicalBlockFile(scope: !6148, file: !6098, discriminator: 1)
!6158 = !{!5603, !587, i64 40}
!6159 = !DILocation(line: 52, column: 35, scope: !6157)
!6160 = !{!5603, !587, i64 32}
!6161 = !DILocation(line: 52, column: 28, scope: !6157)
!6162 = !DILocation(line: 53, column: 7, scope: !6148)
!6163 = !DILocation(line: 53, column: 14, scope: !6157)
!6164 = !{!5603, !587, i64 72}
!6165 = !DILocation(line: 53, column: 28, scope: !6157)
!6166 = !DILocation(line: 51, column: 7, scope: !6167)
!6167 = !DILexicalBlockFile(scope: !6097, file: !6098, discriminator: 1)
!6168 = !DILocation(line: 116, column: 26, scope: !6147)
!6169 = !DILocation(line: 116, column: 19, scope: !6170)
!6170 = !DILexicalBlockFile(scope: !6147, file: !6098, discriminator: 1)
!6171 = !DILocation(line: 116, column: 13, scope: !6147)
!6172 = !DILocation(line: 117, column: 15, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6147, file: !6098, line: 117, column: 11)
!6174 = !DILocation(line: 117, column: 11, scope: !6147)
!6175 = !DILocation(line: 127, column: 11, scope: !6147)
!6176 = !DILocation(line: 127, column: 18, scope: !6147)
!6177 = !DILocation(line: 128, column: 11, scope: !6147)
!6178 = !DILocation(line: 128, column: 19, scope: !6147)
!6179 = !{!5603, !2144, i64 144}
!6180 = !DILocation(line: 159, column: 7, scope: !6147)
!6181 = !DILocation(line: 161, column: 10, scope: !6097)
!6182 = !DILocation(line: 161, column: 3, scope: !6097)
!6183 = !DILocation(line: 162, column: 1, scope: !6097)
