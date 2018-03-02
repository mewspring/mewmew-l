; ModuleID = 'coreutils-8.27/src/[.bc'
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
@.str.31 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global i8** null, align 8, !dbg !0
@.str.23 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Kevin Braunsdorf\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Matthew Bradburn\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"missing %s\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@argc = internal unnamed_addr global i32 0, align 4, !dbg !46
@pos = internal unnamed_addr global i32 0, align 4, !dbg !44
@.str.30 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"-nt does not accept -l\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"-ot does not accept -l\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"%s: unknown binary operator\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), align 8, !dbg !79
@.str.32 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !85
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.36 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !94
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !101
@.str.46 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !108
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !134
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !141
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !153
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.62 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.64 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.66 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.67 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !160
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !167
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !155
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !169
@.str.78 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.79 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.83 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.96 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.98 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.99 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.100 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.101 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !175
@.str.1.112 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.124 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !184
@.str.3.128 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.129 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.130 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.131 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.132 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !595 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !599, metadata !600), !dbg !601
  %2 = icmp eq i32 %0, 0, !dbg !602
  br i1 %2, label %8, label %3, !dbg !604

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !605, !tbaa !608
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !605
  %6 = load i8*, i8** @program_name, align 8, !dbg !605, !tbaa !608
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !612
  br label %75, !dbg !614

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !616
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !608
  %11 = tail call i32 @fputs_unlocked(i8* %9, %struct._IO_FILE* %10) #10, !dbg !618
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !620
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !608
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !621
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !622
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !608
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !623
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !624
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !608
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !625
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !626
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !608
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !627
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !628
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !608
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !629
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !630
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !608
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !631
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([376 x i8], [376 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !632
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !608
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !633
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !634
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !608
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10, !dbg !635
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !636
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !608
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #10, !dbg !637
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !638
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !608
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #10, !dbg !639
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !640
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !640, !tbaa !608
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #10, !dbg !641
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !642
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !608
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #10, !dbg !643
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !644
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !608
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #10, !dbg !645
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !646
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !608
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #10, !dbg !647
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !648
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648, !tbaa !608
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #10, !dbg !649
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !650
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !651
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %58) #10, !dbg !652
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i64 0, metadata !56, metadata !600) #10, !dbg !654
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #10, !dbg !656
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0)) #10, !dbg !657
  %62 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !659
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !67, metadata !600) #10, !dbg !660
  %63 = icmp eq i8* %62, null, !dbg !661
  br i1 %63, label %70, label %64, !dbg !662

; <label>:64:                                     ; preds = %8
  %65 = tail call i32 @strncmp(i8* nonnull %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #13, !dbg !663
  %66 = icmp eq i32 %65, 0, !dbg !663
  br i1 %66, label %70, label %67, !dbg !665

; <label>:67:                                     ; preds = %64
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !667
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !669
  br label %70, !dbg !671

; <label>:70:                                     ; preds = %8, %64, %67
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !672
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !673
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !674
  %74 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !675
  br label %75

; <label>:75:                                     ; preds = %70, %3
  tail call void @exit(i32 %0) #14, !dbg !676
  unreachable, !dbg !676
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !677 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !681, metadata !600), !dbg !709
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !682, metadata !600), !dbg !710
  %3 = load i8*, i8** %1, align 8, !dbg !711, !tbaa !608
  tail call void @set_program_name(i8* %3) #10, !dbg !712
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !713
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !714
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !715
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !716, metadata !600), !dbg !719
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !721, !tbaa !723
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !725
  store i8** %1, i8*** @argv, align 8, !dbg !726, !tbaa !608
  %8 = icmp eq i32 %0, 2, !dbg !727
  br i1 %8, label %9, label %21, !dbg !728

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !691, metadata !600), !dbg !729
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !730
  %11 = load i8*, i8** %10, align 8, !dbg !730, !tbaa !608
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !730
  %13 = icmp eq i32 %12, 0, !dbg !732
  br i1 %13, label %14, label %15, !dbg !734

; <label>:14:                                     ; preds = %9
  tail call void @usage(i32 0) #15, !dbg !736
  unreachable, !dbg !736

; <label>:15:                                     ; preds = %9
  tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !698, metadata !600), !dbg !737
  %16 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !738
  %17 = icmp eq i32 %16, 0, !dbg !740
  br i1 %17, label %18, label %23, !dbg !742

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !743, !tbaa !608
  %20 = load i8*, i8** @Version, align 8, !dbg !745, !tbaa !608
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* null) #10, !dbg !746
  br label %56, !dbg !747

; <label>:21:                                     ; preds = %2
  %22 = icmp slt i32 %0, 2, !dbg !748
  br i1 %22, label %34, label %23, !dbg !749

; <label>:23:                                     ; preds = %15, %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !705, metadata !600), !dbg !750
  %24 = add nsw i32 %0, -1, !dbg !751
  %25 = sext i32 %24 to i64, !dbg !751
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !751
  %27 = load i8*, i8** %26, align 8, !dbg !751, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !706, metadata !600), !dbg !753
  %28 = load i8, i8* %27, align 1, !dbg !751, !tbaa !754
  %29 = icmp eq i8 %28, 93, !dbg !755
  br i1 %29, label %30, label %34, !dbg !758

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !760
  %32 = load i8, i8* %31, align 1, !dbg !760, !tbaa !754
  %33 = icmp eq i8 %32, 0, !dbg !763
  br i1 %33, label %37, label %34, !dbg !765

; <label>:34:                                     ; preds = %23, %30, %21
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !767
  %36 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !768
  tail call void (i8*, ...) @test_syntax_error(i8* %35, i8* %36) #15, !dbg !770
  unreachable, !dbg !772

; <label>:37:                                     ; preds = %30
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !681, metadata !600), !dbg !709
  store i32 %24, i32* @argc, align 4, !dbg !773, !tbaa !723
  store i32 1, i32* @pos, align 4, !dbg !774, !tbaa !723
  %38 = icmp slt i32 %0, 3, !dbg !775
  br i1 %38, label %56, label %39, !dbg !777

; <label>:39:                                     ; preds = %37
  %40 = add nsw i32 %0, -2, !dbg !778
  %41 = tail call fastcc zeroext i1 @posixtest(i32 %40), !dbg !779
  %42 = load i32, i32* @pos, align 4, !dbg !780, !tbaa !723
  %43 = load i32, i32* @argc, align 4, !dbg !782, !tbaa !723
  %44 = icmp eq i32 %42, %43, !dbg !783
  br i1 %44, label %53, label %45, !dbg !784

; <label>:45:                                     ; preds = %39
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !785
  %47 = load i8**, i8*** @argv, align 8, !dbg !786, !tbaa !608
  %48 = load i32, i32* @pos, align 4, !dbg !787, !tbaa !723
  %49 = sext i32 %48 to i64, !dbg !786
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49, !dbg !786
  %51 = load i8*, i8** %50, align 8, !dbg !786, !tbaa !608
  %52 = tail call i8* @quote(i8* %51) #10, !dbg !788
  tail call void (i8*, ...) @test_syntax_error(i8* %46, i8* %52) #15, !dbg !790
  unreachable, !dbg !792

; <label>:53:                                     ; preds = %39
  %54 = xor i1 %41, true, !dbg !793
  %55 = zext i1 %54 to i32, !dbg !793
  br label %56, !dbg !793

; <label>:56:                                     ; preds = %37, %53, %18
  %57 = phi i32 [ 0, %18 ], [ %55, %53 ], [ 1, %37 ]
  ret i32 %57, !dbg !794
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @test_syntax_error(i8*, ...) unnamed_addr #0 !dbg !795 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !799, metadata !600), !dbg !815
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !816
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #10, !dbg !816
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !800, metadata !600), !dbg !817
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !818
  call void @llvm.va_start(i8* nonnull %3), !dbg !818
  call void @verror(i32 0, i32 0, i8* %0, %struct.__va_list_tag* nonnull %4) #10, !dbg !819
  call void @exit(i32 2) #14, !dbg !820
  unreachable, !dbg !820
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @posixtest(i32) unnamed_addr #6 !dbg !821 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !825, metadata !600), !dbg !848
  switch i32 %0, label %59 [
    i32 1, label %2
    i32 2, label %12
    i32 3, label %15
    i32 4, label %18
  ], !dbg !849

; <label>:2:                                      ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !850, !tbaa !608
  %4 = load i32, i32* @pos, align 4, !dbg !855, !tbaa !723
  %5 = add nsw i32 %4, 1, !dbg !855
  store i32 %5, i32* @pos, align 4, !dbg !855, !tbaa !723
  %6 = sext i32 %4 to i64, !dbg !850
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !850
  %8 = load i8*, i8** %7, align 8, !dbg !850, !tbaa !608
  %9 = load i8, i8* %8, align 1, !dbg !850, !tbaa !754
  %10 = icmp ne i8 %9, 0, !dbg !856
  %11 = zext i1 %10 to i8, !dbg !857
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !826, metadata !600), !dbg !858
  br label %134, !dbg !859

; <label>:12:                                     ; preds = %1
  %13 = tail call fastcc zeroext i1 @two_arguments(), !dbg !860
  %14 = zext i1 %13 to i8, !dbg !861
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !826, metadata !600), !dbg !858
  br label %134, !dbg !862

; <label>:15:                                     ; preds = %1
  %16 = tail call fastcc zeroext i1 @three_arguments(), !dbg !863
  %17 = zext i1 %16 to i8, !dbg !864
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !826, metadata !600), !dbg !858
  br label %134, !dbg !865

; <label>:18:                                     ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !831, metadata !600), !dbg !866
  %19 = load i8**, i8*** @argv, align 8, !dbg !867, !tbaa !608
  %20 = load i32, i32* @pos, align 4, !dbg !867, !tbaa !723
  %21 = sext i32 %20 to i64, !dbg !867
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21, !dbg !867
  %23 = load i8*, i8** %22, align 8, !dbg !867, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !832, metadata !600), !dbg !869
  %24 = load i8, i8* %23, align 1, !dbg !867, !tbaa !754
  switch i8 %24, label %64 [
    i8 33, label %25
    i8 40, label %38
  ], !dbg !870

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !873
  %27 = load i8, i8* %26, align 1, !dbg !873, !tbaa !754
  %28 = icmp eq i8 %27, 0, !dbg !876
  br i1 %28, label %29, label %64, !dbg !878

; <label>:29:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !886
  %30 = add nsw i32 %20, 1, !dbg !889
  store i32 %30, i32* @pos, align 4, !dbg !889, !tbaa !723
  %31 = load i32, i32* @argc, align 4, !dbg !890
  %32 = icmp slt i32 %30, %31, !dbg !893
  br i1 %32, label %34, label %33, !dbg !894

; <label>:33:                                     ; preds = %29
  tail call fastcc void @beyond() #14, !dbg !895
  unreachable, !dbg !895

; <label>:34:                                     ; preds = %29
  %35 = tail call fastcc zeroext i1 @three_arguments(), !dbg !896
  %36 = xor i1 %35, true, !dbg !897
  %37 = zext i1 %36 to i8, !dbg !898
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !826, metadata !600), !dbg !858
  br label %134, !dbg !899

; <label>:38:                                     ; preds = %18
  %39 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !900
  %40 = load i8, i8* %39, align 1, !dbg !900, !tbaa !754
  %41 = icmp eq i8 %40, 0, !dbg !904
  br i1 %41, label %42, label %64, !dbg !906

; <label>:42:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !844, metadata !600), !dbg !908
  %43 = add nsw i32 %20, 3, !dbg !909
  %44 = sext i32 %43 to i64, !dbg !909
  %45 = getelementptr inbounds i8*, i8** %19, i64 %44, !dbg !909
  %46 = load i8*, i8** %45, align 8, !dbg !909, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !845, metadata !600), !dbg !911
  %47 = load i8, i8* %46, align 1, !dbg !909, !tbaa !754
  %48 = icmp eq i8 %47, 41, !dbg !912
  br i1 %48, label %49, label %64, !dbg !915

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !917
  %51 = load i8, i8* %50, align 1, !dbg !917, !tbaa !754
  %52 = icmp eq i8 %51, 0, !dbg !920
  br i1 %52, label %53, label %64, !dbg !922

; <label>:53:                                     ; preds = %49
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885), !dbg !924
  %54 = add nsw i32 %20, 1, !dbg !927
  store i32 %54, i32* @pos, align 4, !dbg !927, !tbaa !723
  %55 = tail call fastcc zeroext i1 @two_arguments(), !dbg !928
  %56 = zext i1 %55 to i8, !dbg !929
  tail call void @llvm.dbg.value(metadata i8 %56, i64 0, metadata !826, metadata !600), !dbg !858
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885), !dbg !930
  %57 = load i32, i32* @pos, align 4, !dbg !932, !tbaa !723
  %58 = add nsw i32 %57, 1, !dbg !932
  store i32 %58, i32* @pos, align 4, !dbg !932, !tbaa !723
  br label %134, !dbg !933

; <label>:59:                                     ; preds = %1
  %60 = icmp slt i32 %0, 1, !dbg !934
  br i1 %60, label %63, label %61, !dbg !936

; <label>:61:                                     ; preds = %59
  %62 = load i32, i32* @pos, align 4, !tbaa !723
  br label %64, !dbg !936

; <label>:63:                                     ; preds = %59
  tail call void @abort() #14, !dbg !937
  unreachable, !dbg !937

; <label>:64:                                     ; preds = %18, %25, %61, %42, %38, %49
  %65 = phi i32 [ %62, %61 ], [ %20, %42 ], [ %20, %38 ], [ %20, %49 ], [ %20, %25 ], [ %20, %18 ], !dbg !938
  %66 = load i32, i32* @argc, align 4, !dbg !942, !tbaa !723
  %67 = icmp slt i32 %65, %66, !dbg !943
  br i1 %67, label %68, label %69, !dbg !944

; <label>:68:                                     ; preds = %64
  br label %70, !dbg !945

; <label>:69:                                     ; preds = %64
  tail call fastcc void @beyond() #14, !dbg !970
  unreachable, !dbg !970

; <label>:70:                                     ; preds = %68, %129
  %71 = phi i32 [ %112, %129 ], [ 0, %68 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !948, metadata !600) #10, !dbg !945
  %72 = tail call fastcc zeroext i1 @term() #10, !dbg !971
  %73 = zext i1 %72 to i32, !dbg !971
  %74 = load i32, i32* @pos, align 4, !dbg !972, !tbaa !723
  %75 = load i32, i32* @argc, align 4, !dbg !973, !tbaa !723
  %76 = icmp slt i32 %74, %75, !dbg !974
  br i1 %76, label %77, label %108, !dbg !975

; <label>:77:                                     ; preds = %70
  br label %78, !dbg !976

; <label>:78:                                     ; preds = %77, %96
  %79 = phi i32 [ %102, %96 ], [ %75, %77 ]
  %80 = phi i32 [ %101, %96 ], [ %74, %77 ], !dbg !977
  %81 = phi i32 [ %100, %96 ], [ %73, %77 ]
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !953, metadata !600) #10, !dbg !976
  %82 = load i8**, i8*** @argv, align 8, !dbg !979, !tbaa !608
  %83 = sext i32 %80 to i64, !dbg !979
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83, !dbg !979
  %85 = load i8*, i8** %84, align 8, !dbg !979, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !954, metadata !600) #10, !dbg !981
  %86 = load i8, i8* %85, align 1, !dbg !979, !tbaa !754
  %87 = icmp eq i8 %86, 45, !dbg !982
  br i1 %87, label %88, label %104, !dbg !985

; <label>:88:                                     ; preds = %78
  %89 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !987
  %90 = load i8, i8* %89, align 1, !dbg !987, !tbaa !754
  %91 = icmp eq i8 %90, 97, !dbg !990
  br i1 %91, label %92, label %104, !dbg !993

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !995
  %94 = load i8, i8* %93, align 1, !dbg !995, !tbaa !754
  %95 = icmp eq i8 %94, 0, !dbg !998
  br i1 %95, label %96, label %104, !dbg !1000

; <label>:96:                                     ; preds = %92
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885) #10, !dbg !1002
  %97 = add nsw i32 %80, 1, !dbg !977
  store i32 %97, i32* @pos, align 4, !dbg !977, !tbaa !723
  %98 = tail call fastcc zeroext i1 @term() #10, !dbg !971
  %99 = zext i1 %98 to i32, !dbg !971
  %100 = and i32 %99, %81, !dbg !1003
  %101 = load i32, i32* @pos, align 4, !dbg !972, !tbaa !723
  %102 = load i32, i32* @argc, align 4, !dbg !973, !tbaa !723
  %103 = icmp slt i32 %101, %102, !dbg !974
  br i1 %103, label %78, label %104, !dbg !975, !llvm.loop !1004

; <label>:104:                                    ; preds = %96, %92, %88, %78
  %105 = phi i32 [ %79, %78 ], [ %79, %88 ], [ %102, %96 ], [ %79, %92 ]
  %106 = phi i32 [ %80, %78 ], [ %80, %88 ], [ %101, %96 ], [ %80, %92 ]
  %107 = phi i32 [ %81, %78 ], [ %81, %88 ], [ %100, %96 ], [ %81, %92 ]
  br label %108, !dbg !1007

; <label>:108:                                    ; preds = %104, %70
  %109 = phi i32 [ %75, %70 ], [ %105, %104 ], !dbg !1008
  %110 = phi i32 [ %74, %70 ], [ %106, %104 ], !dbg !1009
  %111 = phi i32 [ %73, %70 ], [ %107, %104 ]
  %112 = or i32 %111, %71, !dbg !1007
  %113 = icmp slt i32 %110, %109, !dbg !1011
  br i1 %113, label %114, label %131, !dbg !1012

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !965, metadata !600) #10, !dbg !1013
  %115 = load i8**, i8*** @argv, align 8, !dbg !1014, !tbaa !608
  %116 = sext i32 %110 to i64, !dbg !1014
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116, !dbg !1014
  %118 = load i8*, i8** %117, align 8, !dbg !1014, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %118, i64 0, metadata !966, metadata !600) #10, !dbg !1016
  %119 = load i8, i8* %118, align 1, !dbg !1014, !tbaa !754
  %120 = icmp eq i8 %119, 45, !dbg !1017
  br i1 %120, label %121, label %131, !dbg !1020

; <label>:121:                                    ; preds = %114
  %122 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1022
  %123 = load i8, i8* %122, align 1, !dbg !1022, !tbaa !754
  %124 = icmp eq i8 %123, 111, !dbg !1025
  br i1 %124, label %125, label %131, !dbg !1028

; <label>:125:                                    ; preds = %121
  %126 = getelementptr inbounds i8, i8* %118, i64 2, !dbg !1030
  %127 = load i8, i8* %126, align 1, !dbg !1030, !tbaa !754
  %128 = icmp eq i8 %127, 0, !dbg !1033
  br i1 %128, label %129, label %131, !dbg !1035

; <label>:129:                                    ; preds = %125
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885) #10, !dbg !1037
  %130 = add nsw i32 %110, 1, !dbg !1009
  store i32 %130, i32* @pos, align 4, !dbg !1009, !tbaa !723
  br label %70, !dbg !1038, !llvm.loop !1040

; <label>:131:                                    ; preds = %114, %121, %108, %125
  %132 = icmp ne i32 %112, 0, !dbg !1007
  %133 = zext i1 %132 to i8, !dbg !1043
  tail call void @llvm.dbg.value(metadata i8 %133, i64 0, metadata !826, metadata !600), !dbg !858
  br label %134, !dbg !1044

; <label>:134:                                    ; preds = %131, %53, %34, %15, %12, %2
  %135 = phi i8 [ %133, %131 ], [ %37, %34 ], [ %56, %53 ], [ %17, %15 ], [ %14, %12 ], [ %11, %2 ]
  tail call void @llvm.dbg.value(metadata i8 %135, i64 0, metadata !826, metadata !600), !dbg !858
  %136 = icmp ne i8 %135, 0, !dbg !1045
  ret i1 %136, !dbg !1046
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @two_arguments() unnamed_addr #6 !dbg !1047 {
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1053, metadata !600), !dbg !1057
  %1 = load i8**, i8*** @argv, align 8, !dbg !1058, !tbaa !608
  %2 = load i32, i32* @pos, align 4, !dbg !1058, !tbaa !723
  %3 = sext i32 %2 to i64, !dbg !1058
  %4 = getelementptr inbounds i8*, i8** %1, i64 %3, !dbg !1058
  %5 = load i8*, i8** %4, align 8, !dbg !1058, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1054, metadata !600), !dbg !1060
  %6 = load i8, i8* %5, align 1, !dbg !1058, !tbaa !754
  switch i8 %6, label %46 [
    i8 33, label %7
    i8 45, label %19
  ], !dbg !1061

; <label>:7:                                      ; preds = %0
  %8 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1064
  %9 = load i8, i8* %8, align 1, !dbg !1064, !tbaa !754
  %10 = icmp eq i8 %9, 0, !dbg !1067
  br i1 %10, label %11, label %46, !dbg !1069

; <label>:11:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885), !dbg !1071
  %12 = add nsw i32 %2, 1, !dbg !1074
  %13 = add nsw i32 %2, 2, !dbg !1075
  store i32 %13, i32* @pos, align 4, !dbg !1075, !tbaa !723
  %14 = sext i32 %12 to i64, !dbg !1077
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !1077
  %16 = load i8*, i8** %15, align 8, !dbg !1077, !tbaa !608
  %17 = load i8, i8* %16, align 1, !dbg !1077, !tbaa !754
  %18 = icmp eq i8 %17, 0, !dbg !1078
  br label %47, !dbg !1079

; <label>:19:                                     ; preds = %0
  %20 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1080
  %21 = load i8, i8* %20, align 1, !dbg !1080, !tbaa !754
  %22 = icmp eq i8 %21, 0, !dbg !1083
  br i1 %22, label %46, label %23, !dbg !1084

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !1085
  %25 = load i8, i8* %24, align 1, !dbg !1085, !tbaa !754
  %26 = icmp eq i8 %25, 0, !dbg !1086
  br i1 %26, label %27, label %46, !dbg !1087

; <label>:27:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1089, metadata !600), !dbg !1094
  %28 = sext i8 %21 to i32, !dbg !1098
  %29 = add nsw i32 %28, -71, !dbg !1099
  %30 = icmp ult i32 %29, 52, !dbg !1099
  br i1 %30, label %31, label %38, !dbg !1099

; <label>:31:                                     ; preds = %27
  %32 = zext i32 %29 to i52, !dbg !1099
  %33 = lshr i52 -1271499365281375, %32, !dbg !1099
  %34 = and i52 %33, 1, !dbg !1099
  %35 = icmp eq i52 %34, 0, !dbg !1099
  br i1 %35, label %38, label %36, !dbg !1100

; <label>:36:                                     ; preds = %31
  %37 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1101
  br label %47

; <label>:38:                                     ; preds = %31, %27
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !1102
  %40 = load i8**, i8*** @argv, align 8, !dbg !1103, !tbaa !608
  %41 = load i32, i32* @pos, align 4, !dbg !1104, !tbaa !723
  %42 = sext i32 %41 to i64, !dbg !1103
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42, !dbg !1103
  %44 = load i8*, i8** %43, align 8, !dbg !1103, !tbaa !608
  %45 = tail call i8* @quote(i8* %44) #10, !dbg !1105
  tail call void (i8*, ...) @test_syntax_error(i8* %39, i8* %45) #15, !dbg !1107
  unreachable, !dbg !1109

; <label>:46:                                     ; preds = %0, %7, %19, %23
  tail call fastcc void @beyond() #15, !dbg !1110
  unreachable, !dbg !1110

; <label>:47:                                     ; preds = %36, %11
  %48 = phi i1 [ %37, %36 ], [ %18, %11 ]
  ret i1 %48, !dbg !1111
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #6 !dbg !1112 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !1149, !tbaa !608
  %2 = load i32, i32* @pos, align 4, !dbg !1150, !tbaa !723
  %3 = add nsw i32 %2, 1, !dbg !1151
  %4 = sext i32 %3 to i64, !dbg !1149
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !1149
  %6 = load i8*, i8** %5, align 8, !dbg !1149, !tbaa !608
  %7 = tail call fastcc zeroext i1 @binop(i8* %6), !dbg !1152
  br i1 %7, label %8, label %11, !dbg !1153

; <label>:8:                                      ; preds = %0
  %9 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1154
  %10 = zext i1 %9 to i8, !dbg !1155
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !1114, metadata !600), !dbg !1156
  br label %147, !dbg !1157

; <label>:11:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1119, metadata !600), !dbg !1158
  %12 = sext i32 %2 to i64, !dbg !1159
  %13 = getelementptr inbounds i8*, i8** %1, i64 %12, !dbg !1159
  %14 = load i8*, i8** %13, align 8, !dbg !1159, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1120, metadata !600), !dbg !1161
  %15 = load i8, i8* %14, align 1, !dbg !1159, !tbaa !754
  switch i8 %15, label %50 [
    i8 33, label %16
    i8 40, label %30
  ], !dbg !1162

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1165
  %18 = load i8, i8* %17, align 1, !dbg !1165, !tbaa !754
  %19 = icmp eq i8 %18, 0, !dbg !1168
  br i1 %19, label %20, label %28, !dbg !1170

; <label>:20:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !1172
  store i32 %3, i32* @pos, align 4, !dbg !1175, !tbaa !723
  %21 = load i32, i32* @argc, align 4, !dbg !1176
  %22 = icmp slt i32 %3, %21, !dbg !1177
  br i1 %22, label %24, label %23, !dbg !1178

; <label>:23:                                     ; preds = %20
  tail call fastcc void @beyond() #14, !dbg !1179
  unreachable, !dbg !1179

; <label>:24:                                     ; preds = %20
  %25 = tail call fastcc zeroext i1 @two_arguments(), !dbg !1180
  %26 = xor i1 %25, true, !dbg !1181
  %27 = zext i1 %26 to i8, !dbg !1182
  tail call void @llvm.dbg.value(metadata i8 %27, i64 0, metadata !1114, metadata !600), !dbg !1156
  br label %147, !dbg !1183

; <label>:28:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1126, metadata !600), !dbg !1184
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1127, metadata !600), !dbg !1185
  %29 = icmp eq i8 %15, 40, !dbg !1186
  br i1 %29, label %30, label %50, !dbg !1189

; <label>:30:                                     ; preds = %11, %28
  %31 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1191
  %32 = load i8, i8* %31, align 1, !dbg !1191, !tbaa !754
  %33 = icmp eq i8 %32, 0, !dbg !1194
  br i1 %33, label %34, label %50, !dbg !1196

; <label>:34:                                     ; preds = %30
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1132, metadata !600), !dbg !1198
  %35 = add nsw i32 %2, 2, !dbg !1199
  %36 = sext i32 %35 to i64, !dbg !1199
  %37 = getelementptr inbounds i8*, i8** %1, i64 %36, !dbg !1199
  %38 = load i8*, i8** %37, align 8, !dbg !1199, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !1133, metadata !600), !dbg !1201
  %39 = load i8, i8* %38, align 1, !dbg !1199, !tbaa !754
  %40 = icmp eq i8 %39, 41, !dbg !1202
  br i1 %40, label %41, label %50, !dbg !1205

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1207
  %43 = load i8, i8* %42, align 1, !dbg !1207, !tbaa !754
  %44 = icmp eq i8 %43, 0, !dbg !1210
  br i1 %44, label %45, label %50, !dbg !1212

; <label>:45:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885), !dbg !1214
  %46 = load i8, i8* %6, align 1, !dbg !1217, !tbaa !754
  %47 = icmp ne i8 %46, 0, !dbg !1219
  %48 = zext i1 %47 to i8, !dbg !1220
  tail call void @llvm.dbg.value(metadata i8 %48, i64 0, metadata !1114, metadata !600), !dbg !1156
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885), !dbg !1221
  %49 = add nsw i32 %2, 3, !dbg !1223
  store i32 %49, i32* @pos, align 4, !dbg !1223, !tbaa !723
  br label %147, !dbg !1224

; <label>:50:                                     ; preds = %11, %34, %28, %41, %30
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1139, metadata !600), !dbg !1225
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1140, metadata !600), !dbg !1226
  %51 = load i8, i8* %6, align 1, !dbg !1227, !tbaa !754
  %52 = icmp eq i8 %51, 45, !dbg !1229
  br i1 %52, label %53, label %138, !dbg !1232

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1234
  %55 = load i8, i8* %54, align 1, !dbg !1234, !tbaa !754
  %56 = icmp eq i8 %55, 97, !dbg !1237
  br i1 %56, label %57, label %61, !dbg !1240

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1242
  %59 = load i8, i8* %58, align 1, !dbg !1242, !tbaa !754
  %60 = icmp eq i8 %59, 0, !dbg !1245
  br i1 %60, label %69, label %61, !dbg !1247

; <label>:61:                                     ; preds = %53, %57
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1145, metadata !600), !dbg !1249
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1146, metadata !600), !dbg !1250
  %62 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1251
  %63 = load i8, i8* %62, align 1, !dbg !1251, !tbaa !754
  %64 = icmp eq i8 %63, 111, !dbg !1255
  br i1 %64, label %65, label %138, !dbg !1258

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1260
  %67 = load i8, i8* %66, align 1, !dbg !1260, !tbaa !754
  %68 = icmp eq i8 %67, 0, !dbg !1263
  br i1 %68, label %69, label %138, !dbg !1265

; <label>:69:                                     ; preds = %65, %57
  %70 = load i32, i32* @argc, align 4, !dbg !1267, !tbaa !723
  %71 = icmp slt i32 %2, %70, !dbg !1269
  br i1 %71, label %72, label %73, !dbg !1270

; <label>:72:                                     ; preds = %69
  br label %74, !dbg !1271

; <label>:73:                                     ; preds = %69
  tail call fastcc void @beyond() #14, !dbg !1274
  unreachable, !dbg !1274

; <label>:74:                                     ; preds = %72, %133
  %75 = phi i32 [ %116, %133 ], [ 0, %72 ]
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !948, metadata !600) #10, !dbg !1271
  %76 = tail call fastcc zeroext i1 @term() #10, !dbg !1275
  %77 = zext i1 %76 to i32, !dbg !1275
  %78 = load i32, i32* @pos, align 4, !dbg !1276, !tbaa !723
  %79 = load i32, i32* @argc, align 4, !dbg !1277, !tbaa !723
  %80 = icmp slt i32 %78, %79, !dbg !1278
  br i1 %80, label %81, label %112, !dbg !1279

; <label>:81:                                     ; preds = %74
  br label %82, !dbg !1280

; <label>:82:                                     ; preds = %81, %100
  %83 = phi i32 [ %106, %100 ], [ %79, %81 ]
  %84 = phi i32 [ %105, %100 ], [ %78, %81 ], !dbg !1281
  %85 = phi i32 [ %104, %100 ], [ %77, %81 ]
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !953, metadata !600) #10, !dbg !1280
  %86 = load i8**, i8*** @argv, align 8, !dbg !1283, !tbaa !608
  %87 = sext i32 %84 to i64, !dbg !1283
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87, !dbg !1283
  %89 = load i8*, i8** %88, align 8, !dbg !1283, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !954, metadata !600) #10, !dbg !1284
  %90 = load i8, i8* %89, align 1, !dbg !1283, !tbaa !754
  %91 = icmp eq i8 %90, 45, !dbg !1285
  br i1 %91, label %92, label %108, !dbg !1286

; <label>:92:                                     ; preds = %82
  %93 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1287
  %94 = load i8, i8* %93, align 1, !dbg !1287, !tbaa !754
  %95 = icmp eq i8 %94, 97, !dbg !1288
  br i1 %95, label %96, label %108, !dbg !1289

; <label>:96:                                     ; preds = %92
  %97 = getelementptr inbounds i8, i8* %89, i64 2, !dbg !1290
  %98 = load i8, i8* %97, align 1, !dbg !1290, !tbaa !754
  %99 = icmp eq i8 %98, 0, !dbg !1291
  br i1 %99, label %100, label %108, !dbg !1292

; <label>:100:                                    ; preds = %96
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885) #10, !dbg !1293
  %101 = add nsw i32 %84, 1, !dbg !1281
  store i32 %101, i32* @pos, align 4, !dbg !1281, !tbaa !723
  %102 = tail call fastcc zeroext i1 @term() #10, !dbg !1275
  %103 = zext i1 %102 to i32, !dbg !1275
  %104 = and i32 %103, %85, !dbg !1294
  %105 = load i32, i32* @pos, align 4, !dbg !1276, !tbaa !723
  %106 = load i32, i32* @argc, align 4, !dbg !1277, !tbaa !723
  %107 = icmp slt i32 %105, %106, !dbg !1278
  br i1 %107, label %82, label %108, !dbg !1279, !llvm.loop !1004

; <label>:108:                                    ; preds = %96, %100, %92, %82
  %109 = phi i32 [ %83, %82 ], [ %83, %92 ], [ %83, %96 ], [ %106, %100 ]
  %110 = phi i32 [ %84, %82 ], [ %84, %92 ], [ %84, %96 ], [ %105, %100 ]
  %111 = phi i32 [ %85, %82 ], [ %85, %92 ], [ %85, %96 ], [ %104, %100 ]
  br label %112, !dbg !1295

; <label>:112:                                    ; preds = %108, %74
  %113 = phi i32 [ %79, %74 ], [ %109, %108 ], !dbg !1296
  %114 = phi i32 [ %78, %74 ], [ %110, %108 ], !dbg !1297
  %115 = phi i32 [ %77, %74 ], [ %111, %108 ]
  %116 = or i32 %115, %75, !dbg !1295
  %117 = icmp slt i32 %114, %113, !dbg !1299
  br i1 %117, label %118, label %135, !dbg !1300

; <label>:118:                                    ; preds = %112
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !965, metadata !600) #10, !dbg !1301
  %119 = load i8**, i8*** @argv, align 8, !dbg !1302, !tbaa !608
  %120 = sext i32 %114 to i64, !dbg !1302
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120, !dbg !1302
  %122 = load i8*, i8** %121, align 8, !dbg !1302, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !966, metadata !600) #10, !dbg !1303
  %123 = load i8, i8* %122, align 1, !dbg !1302, !tbaa !754
  %124 = icmp eq i8 %123, 45, !dbg !1304
  br i1 %124, label %125, label %135, !dbg !1305

; <label>:125:                                    ; preds = %118
  %126 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !1306
  %127 = load i8, i8* %126, align 1, !dbg !1306, !tbaa !754
  %128 = icmp eq i8 %127, 111, !dbg !1307
  br i1 %128, label %129, label %135, !dbg !1308

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds i8, i8* %122, i64 2, !dbg !1309
  %131 = load i8, i8* %130, align 1, !dbg !1309, !tbaa !754
  %132 = icmp eq i8 %131, 0, !dbg !1310
  br i1 %132, label %133, label %135, !dbg !1311

; <label>:133:                                    ; preds = %129
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885) #10, !dbg !1312
  %134 = add nsw i32 %114, 1, !dbg !1297
  store i32 %134, i32* @pos, align 4, !dbg !1297, !tbaa !723
  br label %74, !dbg !1313, !llvm.loop !1040

; <label>:135:                                    ; preds = %118, %125, %112, %129
  %136 = icmp ne i32 %116, 0, !dbg !1295
  %137 = zext i1 %136 to i8, !dbg !1314
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !1114, metadata !600), !dbg !1156
  br label %147

; <label>:138:                                    ; preds = %50, %61, %65
  %139 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1315
  %140 = load i8**, i8*** @argv, align 8, !dbg !1316, !tbaa !608
  %141 = load i32, i32* @pos, align 4, !dbg !1317, !tbaa !723
  %142 = add nsw i32 %141, 1, !dbg !1318
  %143 = sext i32 %142 to i64, !dbg !1316
  %144 = getelementptr inbounds i8*, i8** %140, i64 %143, !dbg !1316
  %145 = load i8*, i8** %144, align 8, !dbg !1316, !tbaa !608
  %146 = tail call i8* @quote(i8* %145) #10, !dbg !1319
  tail call void (i8*, ...) @test_syntax_error(i8* %139, i8* %146) #15, !dbg !1321
  unreachable, !dbg !1323

; <label>:147:                                    ; preds = %24, %135, %45, %8
  %148 = phi i8 [ %10, %8 ], [ %27, %24 ], [ %48, %45 ], [ %137, %135 ]
  tail call void @llvm.dbg.value(metadata i8 %148, i64 0, metadata !1114, metadata !600), !dbg !1156
  %149 = icmp ne i8 %148, 0, !dbg !1324
  ret i1 %149, !dbg !1325
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1326 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !1329
  %2 = load i8**, i8*** @argv, align 8, !dbg !1330, !tbaa !608
  %3 = load i32, i32* @argc, align 4, !dbg !1331, !tbaa !723
  %4 = add nsw i32 %3, -1, !dbg !1332
  %5 = sext i32 %4 to i64, !dbg !1330
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !1330
  %7 = load i8*, i8** %6, align 8, !dbg !1330, !tbaa !608
  %8 = tail call i8* @quote(i8* %7) #10, !dbg !1333
  tail call void (i8*, ...) @test_syntax_error(i8* %1, i8* %8) #15, !dbg !1335
  unreachable, !dbg !1337
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @term() unnamed_addr #6 !dbg !1338 {
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1341, metadata !600), !dbg !1360
  %1 = load i32, i32* @pos, align 4, !dbg !1361, !tbaa !723
  %2 = load i32, i32* @argc, align 4, !dbg !1363, !tbaa !723
  %3 = icmp slt i32 %1, %2, !dbg !1364
  br i1 %3, label %4, label %33, !dbg !1365

; <label>:4:                                      ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !608
  %6 = sext i32 %1 to i64, !dbg !1366
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6, !dbg !1366
  %8 = load i8*, i8** %7, align 8, !dbg !1366, !tbaa !608
  %9 = load i8, i8* %8, align 1, !dbg !1366, !tbaa !754
  %10 = icmp eq i8 %9, 33, !dbg !1368
  br i1 %10, label %11, label %33, !dbg !1369

; <label>:11:                                     ; preds = %4
  br label %12, !dbg !1370

; <label>:12:                                     ; preds = %11, %23
  %13 = phi i8* [ %27, %23 ], [ %8, %11 ]
  %14 = phi i1 [ %24, %23 ], [ false, %11 ]
  %15 = phi i32 [ %20, %23 ], [ %1, %11 ]
  %16 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1370
  %17 = load i8, i8* %16, align 1, !dbg !1370, !tbaa !754
  %18 = icmp eq i8 %17, 0, !dbg !1372
  br i1 %18, label %19, label %30, !dbg !1373

; <label>:19:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !1375
  %20 = add nsw i32 %15, 1, !dbg !1378
  store i32 %20, i32* @pos, align 4, !dbg !1378, !tbaa !723
  %21 = icmp slt i32 %20, %2, !dbg !1379
  br i1 %21, label %23, label %22, !dbg !1380

; <label>:22:                                     ; preds = %19
  tail call fastcc void @beyond() #14, !dbg !1381
  unreachable, !dbg !1381

; <label>:23:                                     ; preds = %19
  %24 = xor i1 %14, true, !dbg !1382
  %25 = sext i32 %20 to i64, !dbg !1366
  %26 = getelementptr inbounds i8*, i8** %5, i64 %25, !dbg !1366
  %27 = load i8*, i8** %26, align 8, !dbg !1366, !tbaa !608
  %28 = load i8, i8* %27, align 1, !dbg !1366, !tbaa !754
  %29 = icmp eq i8 %28, 33, !dbg !1368
  br i1 %29, label %12, label %30, !dbg !1369

; <label>:30:                                     ; preds = %12, %23
  %31 = phi i32 [ %15, %12 ], [ %20, %23 ]
  %32 = phi i1 [ %14, %12 ], [ %24, %23 ]
  br label %33, !dbg !1383

; <label>:33:                                     ; preds = %30, %4, %0
  %34 = phi i32 [ %1, %0 ], [ %1, %4 ], [ %31, %30 ], !dbg !1385
  %35 = phi i1 [ false, %0 ], [ false, %4 ], [ %32, %30 ]
  %36 = icmp sgt i32 %2, %34, !dbg !1383
  br i1 %36, label %38, label %37, !dbg !1389

; <label>:37:                                     ; preds = %33
  tail call fastcc void @beyond() #15, !dbg !1390
  unreachable, !dbg !1390

; <label>:38:                                     ; preds = %33
  %39 = load i8**, i8*** @argv, align 8, !dbg !1391, !tbaa !608
  %40 = sext i32 %34 to i64, !dbg !1391
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40, !dbg !1391
  %42 = load i8*, i8** %41, align 8, !dbg !1391, !tbaa !608
  %43 = load i8, i8* %42, align 1, !dbg !1391, !tbaa !754
  %44 = icmp eq i8 %43, 40, !dbg !1392
  br i1 %44, label %45, label %110, !dbg !1393

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1394
  %47 = load i8, i8* %46, align 1, !dbg !1394, !tbaa !754
  %48 = icmp eq i8 %47, 0, !dbg !1396
  br i1 %48, label %49, label %110, !dbg !1397

; <label>:49:                                     ; preds = %45
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !1398
  %50 = add nsw i32 %34, 1, !dbg !1400
  store i32 %50, i32* @pos, align 4, !dbg !1400, !tbaa !723
  %51 = icmp sgt i32 %2, %50, !dbg !1401
  br i1 %51, label %52, label %56, !dbg !1402

; <label>:52:                                     ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1342, metadata !600), !dbg !1403
  %53 = add nsw i32 %34, 2, !dbg !1404
  %54 = icmp slt i32 %53, %2, !dbg !1405
  br i1 %54, label %55, label %79, !dbg !1406

; <label>:55:                                     ; preds = %52
  br label %57, !dbg !1407

; <label>:56:                                     ; preds = %49
  tail call fastcc void @beyond() #14, !dbg !1408
  unreachable, !dbg !1408

; <label>:57:                                     ; preds = %55, %73
  %58 = phi i32 [ %75, %73 ], [ %53, %55 ]
  %59 = phi i32 [ %74, %73 ], [ 1, %55 ]
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1349, metadata !600), !dbg !1407
  %60 = sext i32 %58 to i64, !dbg !1409
  %61 = getelementptr inbounds i8*, i8** %39, i64 %60, !dbg !1409
  %62 = load i8*, i8** %61, align 8, !dbg !1409, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1350, metadata !600), !dbg !1411
  %63 = load i8, i8* %62, align 1, !dbg !1409, !tbaa !754
  %64 = icmp eq i8 %63, 41, !dbg !1412
  br i1 %64, label %65, label %69, !dbg !1415

; <label>:65:                                     ; preds = %57
  %66 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1417
  %67 = load i8, i8* %66, align 1, !dbg !1417, !tbaa !754
  %68 = icmp eq i8 %67, 0, !dbg !1420
  br i1 %68, label %77, label %69, !dbg !1422

; <label>:69:                                     ; preds = %57, %65
  %70 = icmp eq i32 %59, 4, !dbg !1424
  br i1 %70, label %71, label %73, !dbg !1426

; <label>:71:                                     ; preds = %69
  %72 = sub nsw i32 %2, %50, !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1342, metadata !600), !dbg !1403
  br label %79, !dbg !1429

; <label>:73:                                     ; preds = %69
  %74 = add nuw nsw i32 %59, 1, !dbg !1430
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !1342, metadata !600), !dbg !1403
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !1342, metadata !600), !dbg !1403
  %75 = add nsw i32 %50, %74, !dbg !1404
  %76 = icmp slt i32 %75, %2, !dbg !1405
  br i1 %76, label %57, label %77, !dbg !1406, !llvm.loop !1431

; <label>:77:                                     ; preds = %65, %73
  %78 = phi i32 [ %74, %73 ], [ %59, %65 ]
  br label %79, !dbg !1403

; <label>:79:                                     ; preds = %77, %52, %71
  %80 = phi i32 [ %72, %71 ], [ 1, %52 ], [ %78, %77 ]
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !1342, metadata !600), !dbg !1403
  %81 = tail call fastcc zeroext i1 @posixtest(i32 %80), !dbg !1434
  %82 = zext i1 %81 to i32, !dbg !1435
  %83 = load i8**, i8*** @argv, align 8, !dbg !1436, !tbaa !608
  %84 = load i32, i32* @pos, align 4, !dbg !1438, !tbaa !723
  %85 = sext i32 %84 to i64, !dbg !1436
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85, !dbg !1436
  %87 = load i8*, i8** %86, align 8, !dbg !1436, !tbaa !608
  %88 = icmp eq i8* %87, null, !dbg !1439
  br i1 %88, label %89, label %92, !dbg !1440

; <label>:89:                                     ; preds = %79
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i32 5) #10, !dbg !1441
  %91 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !1442
  tail call void (i8*, ...) @test_syntax_error(i8* %90, i8* %91) #15, !dbg !1444
  unreachable, !dbg !1446

; <label>:92:                                     ; preds = %79
  %93 = load i8, i8* %87, align 1, !dbg !1447, !tbaa !754
  %94 = icmp eq i8 %93, 41, !dbg !1449
  br i1 %94, label %95, label %99, !dbg !1450

; <label>:95:                                     ; preds = %92
  %96 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1451
  %97 = load i8, i8* %96, align 1, !dbg !1451, !tbaa !754
  %98 = icmp eq i8 %97, 0, !dbg !1451
  br i1 %98, label %108, label %99, !dbg !1453

; <label>:99:                                     ; preds = %95, %92
  %100 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i64 0, i64 0), i32 5) #10, !dbg !1454
  %101 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !1455
  %102 = load i8**, i8*** @argv, align 8, !dbg !1456, !tbaa !608
  %103 = load i32, i32* @pos, align 4, !dbg !1457, !tbaa !723
  %104 = sext i32 %103 to i64, !dbg !1456
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104, !dbg !1456
  %106 = load i8*, i8** %105, align 8, !dbg !1456, !tbaa !608
  %107 = tail call i8* @quote_n(i32 1, i8* %106) #10, !dbg !1458
  tail call void (i8*, ...) @test_syntax_error(i8* %100, i8* %101, i8* %107) #15, !dbg !1459
  unreachable, !dbg !1460

; <label>:108:                                    ; preds = %95
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885), !dbg !1461
  %109 = add nsw i32 %84, 1, !dbg !1463
  store i32 %109, i32* @pos, align 4, !dbg !1463, !tbaa !723
  br label %177, !dbg !1464

; <label>:110:                                    ; preds = %45, %38
  %111 = sub nsw i32 %2, %34, !dbg !1465
  %112 = icmp sgt i32 %111, 3, !dbg !1466
  br i1 %112, label %113, label %132, !dbg !1467

; <label>:113:                                    ; preds = %110
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1356, metadata !600), !dbg !1468
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !1357, metadata !600), !dbg !1469
  %114 = icmp eq i8 %43, 45, !dbg !1470
  br i1 %114, label %115, label %134, !dbg !1473

; <label>:115:                                    ; preds = %113
  %116 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1475
  %117 = load i8, i8* %116, align 1, !dbg !1475, !tbaa !754
  %118 = icmp eq i8 %117, 108, !dbg !1478
  br i1 %118, label %119, label %134, !dbg !1481

; <label>:119:                                    ; preds = %115
  %120 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !1483
  %121 = load i8, i8* %120, align 1, !dbg !1483, !tbaa !754
  %122 = icmp eq i8 %121, 0, !dbg !1486
  br i1 %122, label %123, label %134, !dbg !1488

; <label>:123:                                    ; preds = %119
  %124 = add nsw i32 %34, 2, !dbg !1490
  %125 = sext i32 %124 to i64, !dbg !1492
  %126 = getelementptr inbounds i8*, i8** %39, i64 %125, !dbg !1492
  %127 = load i8*, i8** %126, align 8, !dbg !1492, !tbaa !608
  %128 = tail call fastcc zeroext i1 @binop(i8* %127), !dbg !1493
  br i1 %128, label %129, label %134, !dbg !1494

; <label>:129:                                    ; preds = %123
  %130 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext true), !dbg !1496
  %131 = zext i1 %130 to i32, !dbg !1497
  br label %177, !dbg !1498

; <label>:132:                                    ; preds = %110
  %133 = icmp eq i32 %111, 3, !dbg !1499
  br i1 %133, label %134, label %143, !dbg !1500

; <label>:134:                                    ; preds = %119, %123, %115, %113, %132
  %135 = add nsw i32 %34, 1, !dbg !1501
  %136 = sext i32 %135 to i64, !dbg !1503
  %137 = getelementptr inbounds i8*, i8** %39, i64 %136, !dbg !1503
  %138 = load i8*, i8** %137, align 8, !dbg !1503, !tbaa !608
  %139 = tail call fastcc zeroext i1 @binop(i8* %138), !dbg !1504
  br i1 %139, label %140, label %143, !dbg !1505

; <label>:140:                                    ; preds = %134
  %141 = tail call fastcc zeroext i1 @binary_operator(i1 zeroext false), !dbg !1507
  %142 = zext i1 %141 to i32, !dbg !1508
  br label %177, !dbg !1509

; <label>:143:                                    ; preds = %134, %132
  %144 = icmp eq i8 %43, 45, !dbg !1510
  br i1 %144, label %145, label %173, !dbg !1511

; <label>:145:                                    ; preds = %143
  %146 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1512
  %147 = load i8, i8* %146, align 1, !dbg !1512, !tbaa !754
  %148 = icmp eq i8 %147, 0, !dbg !1512
  br i1 %148, label %173, label %149, !dbg !1514

; <label>:149:                                    ; preds = %145
  %150 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !1515
  %151 = load i8, i8* %150, align 1, !dbg !1515, !tbaa !754
  %152 = icmp eq i8 %151, 0, !dbg !1517
  br i1 %152, label %153, label %173, !dbg !1518

; <label>:153:                                    ; preds = %149
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !1089, metadata !600), !dbg !1520
  %154 = sext i8 %147 to i32, !dbg !1524
  %155 = add nsw i32 %154, -71, !dbg !1525
  %156 = icmp ult i32 %155, 52, !dbg !1525
  br i1 %156, label %157, label %165, !dbg !1525

; <label>:157:                                    ; preds = %153
  %158 = zext i32 %155 to i52, !dbg !1525
  %159 = lshr i52 -1271499365281375, %158, !dbg !1525
  %160 = and i52 %159, 1, !dbg !1525
  %161 = icmp eq i52 %160, 0, !dbg !1525
  br i1 %161, label %165, label %162, !dbg !1526

; <label>:162:                                    ; preds = %157
  %163 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1527
  %164 = zext i1 %163 to i32, !dbg !1528
  br label %177, !dbg !1529

; <label>:165:                                    ; preds = %157, %153
  %166 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !1530
  %167 = load i8**, i8*** @argv, align 8, !dbg !1531, !tbaa !608
  %168 = load i32, i32* @pos, align 4, !dbg !1532, !tbaa !723
  %169 = sext i32 %168 to i64, !dbg !1531
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169, !dbg !1531
  %171 = load i8*, i8** %170, align 8, !dbg !1531, !tbaa !608
  %172 = tail call i8* @quote(i8* %171) #10, !dbg !1533
  tail call void (i8*, ...) @test_syntax_error(i8* %166, i8* %172) #15, !dbg !1535
  unreachable, !dbg !1537

; <label>:173:                                    ; preds = %145, %149, %143
  %174 = icmp ne i8 %43, 0, !dbg !1538
  %175 = zext i1 %174 to i32, !dbg !1539
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885), !dbg !1540
  %176 = add nsw i32 %34, 1, !dbg !1542
  store i32 %176, i32* @pos, align 4, !dbg !1542, !tbaa !723
  br label %177

; <label>:177:                                    ; preds = %129, %162, %173, %140, %108
  %178 = phi i32 [ %82, %108 ], [ %131, %129 ], [ %142, %140 ], [ %164, %162 ], [ %175, %173 ]
  %179 = zext i1 %35 to i32, !dbg !1543
  %180 = icmp ne i32 %179, %178, !dbg !1543
  ret i1 %180, !dbg !1544
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc zeroext i1 @binop(i8* readonly) unnamed_addr #7 !dbg !1545 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1547, metadata !600), !dbg !1620
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1550, metadata !600), !dbg !1621
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1551, metadata !600), !dbg !1622
  %2 = load i8, i8* %0, align 1, !dbg !1623, !tbaa !754
  %3 = zext i8 %2 to i32, !dbg !1623
  %4 = icmp eq i8 %2, 61, !dbg !1625
  br i1 %4, label %5, label %9, !dbg !1628

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1630
  %7 = load i8, i8* %6, align 1, !dbg !1630, !tbaa !754
  %8 = icmp eq i8 %7, 0, !dbg !1633
  br i1 %8, label %152, label %9, !dbg !1635

; <label>:9:                                      ; preds = %1, %5
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1556, metadata !600), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1557, metadata !600), !dbg !1637
  %10 = icmp eq i8 %2, 33, !dbg !1638
  br i1 %10, label %11, label %19, !dbg !1641

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1643
  %13 = load i8, i8* %12, align 1, !dbg !1643, !tbaa !754
  %14 = icmp eq i8 %13, 61, !dbg !1646
  br i1 %14, label %15, label %19, !dbg !1649

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1651
  %17 = load i8, i8* %16, align 1, !dbg !1651, !tbaa !754
  %18 = icmp eq i8 %17, 0, !dbg !1654
  br i1 %18, label %152, label %19, !dbg !1656

; <label>:19:                                     ; preds = %9, %11, %15
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1562, metadata !600), !dbg !1657
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1563, metadata !600), !dbg !1658
  br i1 %4, label %20, label %28, !dbg !1659

; <label>:20:                                     ; preds = %19
  %21 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1662
  %22 = load i8, i8* %21, align 1, !dbg !1662, !tbaa !754
  %23 = icmp eq i8 %22, 61, !dbg !1665
  br i1 %23, label %24, label %28, !dbg !1668

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1670
  %26 = load i8, i8* %25, align 1, !dbg !1670, !tbaa !754
  %27 = icmp eq i8 %26, 0, !dbg !1673
  br i1 %27, label %152, label %28, !dbg !1675

; <label>:28:                                     ; preds = %19, %20, %24
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1568, metadata !600), !dbg !1676
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1569, metadata !600), !dbg !1677
  %29 = sub nsw i32 45, %3, !dbg !1678
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1571, metadata !600), !dbg !1677
  %30 = icmp eq i32 %29, 0, !dbg !1680
  br i1 %30, label %31, label %93, !dbg !1683

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1685
  %33 = load i8, i8* %32, align 1, !dbg !1685, !tbaa !754
  %34 = icmp eq i8 %33, 110, !dbg !1688
  br i1 %34, label %35, label %44, !dbg !1691

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1693
  %37 = load i8, i8* %36, align 1, !dbg !1693, !tbaa !754
  %38 = icmp eq i8 %37, 116, !dbg !1696
  br i1 %38, label %39, label %43, !dbg !1699

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1701
  %41 = load i8, i8* %40, align 1, !dbg !1701, !tbaa !754
  %42 = icmp eq i8 %41, 0, !dbg !1703
  br i1 %42, label %152, label %43, !dbg !1704

; <label>:43:                                     ; preds = %35, %39
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1574, metadata !600), !dbg !1705
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1575, metadata !600), !dbg !1706
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1577, metadata !600), !dbg !1706
  br i1 %30, label %44, label %93, !dbg !1707

; <label>:44:                                     ; preds = %31, %43
  %45 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1710
  %46 = load i8, i8* %45, align 1, !dbg !1710, !tbaa !754
  %47 = icmp eq i8 %46, 111, !dbg !1713
  br i1 %47, label %48, label %57, !dbg !1716

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1718
  %50 = load i8, i8* %49, align 1, !dbg !1718, !tbaa !754
  %51 = icmp eq i8 %50, 116, !dbg !1721
  br i1 %51, label %52, label %56, !dbg !1724

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1726
  %54 = load i8, i8* %53, align 1, !dbg !1726, !tbaa !754
  %55 = icmp eq i8 %54, 0, !dbg !1728
  br i1 %55, label %152, label %56, !dbg !1729

; <label>:56:                                     ; preds = %48, %52
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1580, metadata !600), !dbg !1730
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1581, metadata !600), !dbg !1731
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1583, metadata !600), !dbg !1731
  br i1 %30, label %57, label %93, !dbg !1732

; <label>:57:                                     ; preds = %44, %56
  %58 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1735
  %59 = load i8, i8* %58, align 1, !dbg !1735, !tbaa !754
  %60 = icmp eq i8 %59, 101, !dbg !1738
  br i1 %60, label %61, label %69, !dbg !1741

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1743
  %63 = load i8, i8* %62, align 1, !dbg !1743, !tbaa !754
  %64 = icmp eq i8 %63, 102, !dbg !1746
  br i1 %64, label %65, label %69, !dbg !1749

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1751
  %67 = load i8, i8* %66, align 1, !dbg !1751, !tbaa !754
  %68 = icmp eq i8 %67, 0, !dbg !1753
  br i1 %68, label %152, label %69, !dbg !1754

; <label>:69:                                     ; preds = %65, %61, %57
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1586, metadata !600), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1587, metadata !600), !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1589, metadata !600), !dbg !1756
  %70 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1757
  %71 = load i8, i8* %70, align 1, !dbg !1757, !tbaa !754
  %72 = icmp eq i8 %71, 101, !dbg !1761
  br i1 %72, label %73, label %81, !dbg !1764

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1766
  %75 = load i8, i8* %74, align 1, !dbg !1766, !tbaa !754
  %76 = icmp eq i8 %75, 113, !dbg !1769
  br i1 %76, label %77, label %81, !dbg !1772

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1774
  %79 = load i8, i8* %78, align 1, !dbg !1774, !tbaa !754
  %80 = icmp eq i8 %79, 0, !dbg !1776
  br i1 %80, label %152, label %81, !dbg !1777

; <label>:81:                                     ; preds = %69, %77, %73
  %82 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1778
  %83 = load i8, i8* %82, align 1, !dbg !1778, !tbaa !754
  %84 = icmp eq i8 %83, 110, !dbg !1782
  br i1 %84, label %85, label %93, !dbg !1785

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1787
  %87 = load i8, i8* %86, align 1, !dbg !1787, !tbaa !754
  %88 = icmp eq i8 %87, 101, !dbg !1790
  br i1 %88, label %89, label %93, !dbg !1793

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1795
  %91 = load i8, i8* %90, align 1, !dbg !1795, !tbaa !754
  %92 = icmp eq i8 %91, 0, !dbg !1797
  br i1 %92, label %152, label %93, !dbg !1798

; <label>:93:                                     ; preds = %56, %43, %28, %81, %85, %89
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1598, metadata !600), !dbg !1799
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1599, metadata !600), !dbg !1800
  %94 = icmp eq i8 %2, 45, !dbg !1801
  br i1 %94, label %95, label %131, !dbg !1804

; <label>:95:                                     ; preds = %93
  %96 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1806
  %97 = load i8, i8* %96, align 1, !dbg !1806, !tbaa !754
  %98 = icmp eq i8 %97, 108, !dbg !1809
  br i1 %98, label %99, label %107, !dbg !1812

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1814
  %101 = load i8, i8* %100, align 1, !dbg !1814, !tbaa !754
  %102 = icmp eq i8 %101, 116, !dbg !1817
  br i1 %102, label %103, label %107, !dbg !1820

; <label>:103:                                    ; preds = %99
  %104 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1822
  %105 = load i8, i8* %104, align 1, !dbg !1822, !tbaa !754
  %106 = icmp eq i8 %105, 0, !dbg !1824
  br i1 %106, label %152, label %107, !dbg !1826

; <label>:107:                                    ; preds = %95, %99, %103
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1604, metadata !600), !dbg !1827
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1605, metadata !600), !dbg !1828
  %108 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1829
  %109 = load i8, i8* %108, align 1, !dbg !1829, !tbaa !754
  %110 = icmp eq i8 %109, 108, !dbg !1833
  br i1 %110, label %111, label %119, !dbg !1836

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1838
  %113 = load i8, i8* %112, align 1, !dbg !1838, !tbaa !754
  %114 = icmp eq i8 %113, 101, !dbg !1841
  br i1 %114, label %115, label %119, !dbg !1844

; <label>:115:                                    ; preds = %111
  %116 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1846
  %117 = load i8, i8* %116, align 1, !dbg !1846, !tbaa !754
  %118 = icmp eq i8 %117, 0, !dbg !1848
  br i1 %118, label %152, label %119, !dbg !1850

; <label>:119:                                    ; preds = %107, %111, %115
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1610, metadata !600), !dbg !1851
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1611, metadata !600), !dbg !1852
  %120 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1853
  %121 = load i8, i8* %120, align 1, !dbg !1853, !tbaa !754
  %122 = icmp eq i8 %121, 103, !dbg !1857
  br i1 %122, label %123, label %131, !dbg !1860

; <label>:123:                                    ; preds = %119
  %124 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1862
  %125 = load i8, i8* %124, align 1, !dbg !1862, !tbaa !754
  %126 = icmp eq i8 %125, 116, !dbg !1865
  br i1 %126, label %127, label %131, !dbg !1868

; <label>:127:                                    ; preds = %123
  %128 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1870
  %129 = load i8, i8* %128, align 1, !dbg !1870, !tbaa !754
  %130 = icmp eq i8 %129, 0, !dbg !1872
  br i1 %130, label %152, label %131, !dbg !1874

; <label>:131:                                    ; preds = %93, %119, %123, %127
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1616, metadata !600), !dbg !1875
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1617, metadata !600), !dbg !1876
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1619, metadata !600), !dbg !1876
  br i1 %30, label %132, label %149, !dbg !1877

; <label>:132:                                    ; preds = %131
  %133 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1880
  %134 = load i8, i8* %133, align 1, !dbg !1880, !tbaa !754
  %135 = zext i8 %134 to i32, !dbg !1880
  %136 = sub nsw i32 103, %135, !dbg !1880
  tail call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !1619, metadata !600), !dbg !1876
  %137 = icmp eq i32 %136, 0, !dbg !1883
  br i1 %137, label %138, label %149, !dbg !1886

; <label>:138:                                    ; preds = %132
  %139 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1888
  %140 = load i8, i8* %139, align 1, !dbg !1888, !tbaa !754
  %141 = zext i8 %140 to i32, !dbg !1888
  %142 = sub nsw i32 101, %141, !dbg !1888
  tail call void @llvm.dbg.value(metadata i32 %142, i64 0, metadata !1619, metadata !600), !dbg !1876
  %143 = icmp eq i32 %142, 0, !dbg !1891
  br i1 %143, label %144, label %149, !dbg !1894

; <label>:144:                                    ; preds = %138
  %145 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1896
  %146 = load i8, i8* %145, align 1, !dbg !1896, !tbaa !754
  %147 = zext i8 %146 to i32, !dbg !1896
  %148 = sub nsw i32 0, %147, !dbg !1896
  tail call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !1619, metadata !600), !dbg !1876
  br label %149, !dbg !1896

; <label>:149:                                    ; preds = %132, %144, %138, %131
  %150 = phi i32 [ %148, %144 ], [ %142, %138 ], [ %136, %132 ], [ %29, %131 ]
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !1619, metadata !600), !dbg !1876
  %151 = icmp eq i32 %150, 0, !dbg !1898
  br label %152, !dbg !1900

; <label>:152:                                    ; preds = %149, %127, %115, %103, %89, %77, %65, %52, %39, %24, %15, %5
  %153 = phi i1 [ true, %127 ], [ true, %115 ], [ true, %103 ], [ true, %89 ], [ true, %77 ], [ true, %65 ], [ true, %52 ], [ true, %39 ], [ true, %24 ], [ true, %15 ], [ true, %5 ], [ %151, %149 ]
  ret i1 %153, !dbg !1901
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @binary_operator(i1 zeroext) unnamed_addr #6 !dbg !1903 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1907, metadata !885), !dbg !2001
  %10 = bitcast %struct.stat* %6 to i8*, !dbg !2002
  call void @llvm.lifetime.start(i64 144, i8* nonnull %10) #10, !dbg !2002
  %11 = bitcast %struct.stat* %7 to i8*, !dbg !2002
  call void @llvm.lifetime.start(i64 144, i8* nonnull %11) #10, !dbg !2002
  %12 = load i32, i32* @pos, align 4, !tbaa !723
  br i1 %0, label %13, label %15, !dbg !2003

; <label>:13:                                     ; preds = %1
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885), !dbg !2004
  %14 = add nsw i32 %12, 1, !dbg !2007
  store i32 %14, i32* @pos, align 4, !dbg !2007, !tbaa !723
  br label %15, !dbg !2008

; <label>:15:                                     ; preds = %1, %13
  %16 = phi i32 [ %14, %13 ], [ %12, %1 ], !dbg !2009
  %17 = add nsw i32 %16, 1, !dbg !2012
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1908, metadata !600), !dbg !2013
  %18 = load i32, i32* @argc, align 4, !dbg !2014, !tbaa !723
  %19 = add nsw i32 %18, -2, !dbg !2015
  %20 = icmp slt i32 %17, %19, !dbg !2016
  %21 = load i8**, i8*** @argv, align 8, !tbaa !608
  br i1 %20, label %22, label %38, !dbg !2017

; <label>:22:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1953, metadata !600), !dbg !2018
  %23 = add nsw i32 %16, 2, !dbg !2019
  %24 = sext i32 %23 to i64, !dbg !2019
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24, !dbg !2019
  %26 = load i8*, i8** %25, align 8, !dbg !2019, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1954, metadata !600), !dbg !2021
  %27 = load i8, i8* %26, align 1, !dbg !2019, !tbaa !754
  %28 = icmp eq i8 %27, 45, !dbg !2022
  br i1 %28, label %29, label %38, !dbg !2025

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !2027
  %31 = load i8, i8* %30, align 1, !dbg !2027, !tbaa !754
  %32 = icmp eq i8 %31, 108, !dbg !2030
  br i1 %32, label %33, label %38, !dbg !2033

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !2035
  %35 = load i8, i8* %34, align 1, !dbg !2035, !tbaa !754
  %36 = icmp eq i8 %35, 0, !dbg !2038
  br i1 %36, label %37, label %38, !dbg !2040

; <label>:37:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1949, metadata !600), !dbg !2042
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !880, metadata !885), !dbg !2043
  store i32 %17, i32* @pos, align 4, !dbg !2009, !tbaa !723
  br label %38, !dbg !2044

; <label>:38:                                     ; preds = %15, %22, %29, %33, %37
  %39 = phi i32 [ %17, %37 ], [ %16, %33 ], [ %16, %29 ], [ %16, %22 ], [ %16, %15 ], !dbg !2045
  %40 = phi i1 [ true, %37 ], [ false, %33 ], [ false, %29 ], [ false, %22 ], [ false, %15 ]
  %41 = sext i32 %17 to i64, !dbg !2046
  %42 = getelementptr inbounds i8*, i8** %21, i64 %41, !dbg !2046
  %43 = load i8*, i8** %42, align 8, !dbg !2046, !tbaa !608
  %44 = load i8, i8* %43, align 1, !dbg !2046, !tbaa !754
  switch i8 %44, label %292 [
    i8 45, label %45
    i8 61, label %255
    i8 33, label %273
  ], !dbg !2047

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !2048
  %47 = load i8, i8* %46, align 1, !dbg !2048, !tbaa !754
  switch i8 %47, label %115 [
    i8 108, label %48
    i8 103, label %48
    i8 101, label %51
    i8 110, label %55
  ], !dbg !2049

; <label>:48:                                     ; preds = %45, %45
  %49 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2050
  %50 = load i8, i8* %49, align 1, !dbg !2050, !tbaa !754
  switch i8 %50, label %115 [
    i8 101, label %59
    i8 116, label %59
  ], !dbg !2052

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2053
  %53 = load i8, i8* %52, align 1, !dbg !2053, !tbaa !754
  %54 = icmp eq i8 %53, 113, !dbg !2055
  br i1 %54, label %59, label %115, !dbg !2056

; <label>:55:                                     ; preds = %45
  %56 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2057
  %57 = load i8, i8* %56, align 1, !dbg !2057, !tbaa !754
  %58 = icmp eq i8 %57, 101, !dbg !2058
  br i1 %58, label %59, label %115, !dbg !2059

; <label>:59:                                     ; preds = %48, %48, %55, %51
  %60 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !2060
  %61 = load i8, i8* %60, align 1, !dbg !2060, !tbaa !754
  %62 = icmp eq i8 %61, 0, !dbg !2060
  br i1 %62, label %63, label %115, !dbg !2061

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !2063
  call void @llvm.lifetime.start(i64 21, i8* nonnull %64) #10, !dbg !2063
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !1957, metadata !600), !dbg !2064
  %65 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0, !dbg !2065
  call void @llvm.lifetime.start(i64 21, i8* nonnull %65) #10, !dbg !2065
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %9, metadata !1965, metadata !600), !dbg !2066
  %66 = sext i32 %16 to i64
  %67 = getelementptr inbounds i8*, i8** %21, i64 %66
  %68 = load i8*, i8** %67, align 8, !tbaa !608
  br i1 %0, label %69, label %72, !dbg !2067

; <label>:69:                                     ; preds = %63
  %70 = tail call i64 @strlen(i8* %68) #13, !dbg !2068
  %71 = call i8* @umaxtostr(i64 %70, i8* nonnull %64) #10, !dbg !2069
  br label %74, !dbg !2071

; <label>:72:                                     ; preds = %63
  %73 = tail call fastcc i8* @find_int(i8* %68), !dbg !2072
  br label %74, !dbg !2073

; <label>:74:                                     ; preds = %72, %69
  %75 = phi i8* [ %71, %69 ], [ %73, %72 ], !dbg !2075
  call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !1966, metadata !600), !dbg !2077
  %76 = load i8**, i8*** @argv, align 8, !tbaa !608
  br i1 %40, label %77, label %84, !dbg !2078

; <label>:77:                                     ; preds = %74
  %78 = add nsw i32 %16, 3, !dbg !2079
  %79 = sext i32 %78 to i64, !dbg !2080
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79, !dbg !2080
  %81 = load i8*, i8** %80, align 8, !dbg !2080, !tbaa !608
  %82 = call i64 @strlen(i8* %81) #13, !dbg !2081
  %83 = call i8* @umaxtostr(i64 %82, i8* nonnull %65) #10, !dbg !2082
  br label %90, !dbg !2083

; <label>:84:                                     ; preds = %74
  %85 = add nsw i32 %16, 2, !dbg !2084
  %86 = sext i32 %85 to i64, !dbg !2085
  %87 = getelementptr inbounds i8*, i8** %76, i64 %86, !dbg !2085
  %88 = load i8*, i8** %87, align 8, !dbg !2085, !tbaa !608
  %89 = call fastcc i8* @find_int(i8* %88), !dbg !2086
  br label %90, !dbg !2087

; <label>:90:                                     ; preds = %84, %77
  %91 = phi i8* [ %83, %77 ], [ %89, %84 ], !dbg !2088
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1967, metadata !600), !dbg !2089
  %92 = call i32 @strintcmp(i8* %75, i8* %91) #13, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !1968, metadata !600), !dbg !2091
  %93 = load i8**, i8*** @argv, align 8, !dbg !2092, !tbaa !608
  %94 = getelementptr inbounds i8*, i8** %93, i64 %41, !dbg !2092
  %95 = load i8*, i8** %94, align 8, !dbg !2092, !tbaa !608
  %96 = getelementptr inbounds i8, i8* %95, i64 2, !dbg !2092
  %97 = load i8, i8* %96, align 1, !dbg !2092, !tbaa !754
  %98 = icmp eq i8 %97, 101, !dbg !2093
  %99 = load i32, i32* @pos, align 4, !dbg !2094, !tbaa !723
  %100 = add nsw i32 %99, 3, !dbg !2094
  store i32 %100, i32* @pos, align 4, !dbg !2094, !tbaa !723
  %101 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !2095
  %102 = load i8, i8* %101, align 1, !dbg !2095, !tbaa !754
  switch i8 %102, label %109 [
    i8 108, label %103
    i8 103, label %106
  ], !dbg !2095

; <label>:103:                                    ; preds = %90
  %104 = zext i1 %98 to i32, !dbg !2096
  %105 = icmp slt i32 %92, %104, !dbg !2097
  br label %113, !dbg !2098

; <label>:106:                                    ; preds = %90
  %107 = sext i1 %98 to i32, !dbg !2099
  %108 = icmp sgt i32 %92, %107, !dbg !2100
  br label %113, !dbg !2101

; <label>:109:                                    ; preds = %90
  %110 = icmp ne i32 %92, 0, !dbg !2102
  %111 = xor i1 %110, %98, !dbg !2103
  %112 = xor i1 %111, true, !dbg !2103
  br label %113, !dbg !2104

; <label>:113:                                    ; preds = %106, %109, %103
  %114 = phi i1 [ %105, %103 ], [ %112, %109 ], [ %108, %106 ]
  call void @llvm.lifetime.end(i64 21, i8* nonnull %65) #10, !dbg !2105
  call void @llvm.lifetime.end(i64 21, i8* nonnull %64) #10, !dbg !2105
  br label %293

; <label>:115:                                    ; preds = %45, %48, %51, %59, %55
  %116 = sext i8 %47 to i32, !dbg !2106
  switch i32 %116, label %249 [
    i32 110, label %117
    i32 101, label %164
    i32 111, label %203
  ], !dbg !2107

; <label>:117:                                    ; preds = %115
  %118 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2108
  %119 = load i8, i8* %118, align 1, !dbg !2108, !tbaa !754
  %120 = icmp eq i8 %119, 116, !dbg !2109
  br i1 %120, label %121, label %249, !dbg !2110

; <label>:121:                                    ; preds = %117
  %122 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !2111
  %123 = load i8, i8* %122, align 1, !dbg !2111, !tbaa !754
  %124 = icmp eq i8 %123, 0, !dbg !2111
  br i1 %124, label %125, label %249, !dbg !2113

; <label>:125:                                    ; preds = %121
  %126 = add nsw i32 %39, 3, !dbg !2115
  store i32 %126, i32* @pos, align 4, !dbg !2115, !tbaa !723
  %127 = or i1 %40, %0, !dbg !2116
  br i1 %127, label %128, label %130, !dbg !2116

; <label>:128:                                    ; preds = %125
  %129 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0), i32 5) #10, !dbg !2118
  tail call void (i8*, ...) @test_syntax_error(i8* %129, i8* null) #15, !dbg !2119
  unreachable, !dbg !2121

; <label>:130:                                    ; preds = %125
  %131 = sext i32 %16 to i64, !dbg !2122
  %132 = getelementptr inbounds i8*, i8** %21, i64 %131, !dbg !2122
  %133 = load i8*, i8** %132, align 8, !dbg !2122, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1970, metadata !2123), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !2125, metadata !600) #10, !dbg !2134
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !2131, metadata !600) #10, !dbg !2136
  %134 = bitcast %struct.stat* %4 to i8*, !dbg !2137
  call void @llvm.lifetime.start(i64 144, i8* nonnull %134) #10, !dbg !2137
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !2132, metadata !2123) #10, !dbg !2138
  tail call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !2139, metadata !600) #10, !dbg !2147
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !2146, metadata !600) #10, !dbg !2147
  %135 = call i32 @__xstat(i32 1, i8* nonnull %133, %struct.stat* nonnull %4) #10, !dbg !2149
  %136 = icmp eq i32 %135, 0, !dbg !2150
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !2132, metadata !2123) #10, !dbg !2138
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !2151, metadata !600) #10, !dbg !2159
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0, !dbg !2162
  %138 = load i64, i64* %137, align 8, !dbg !2162
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1, !dbg !2162
  %140 = load i64, i64* %139, align 8, !dbg !2162
  call void @llvm.lifetime.end(i64 144, i8* nonnull %134) #10, !dbg !2163
  %141 = load i8**, i8*** @argv, align 8, !dbg !2164, !tbaa !608
  %142 = add nsw i32 %16, 2, !dbg !2165
  %143 = sext i32 %142 to i64, !dbg !2164
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143, !dbg !2164
  %145 = load i8*, i8** %144, align 8, !dbg !2164, !tbaa !608
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1974, metadata !2123), !dbg !2166
  call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !2125, metadata !600) #10, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !2131, metadata !600) #10, !dbg !2169
  %146 = bitcast %struct.stat* %3 to i8*, !dbg !2170
  call void @llvm.lifetime.start(i64 144, i8* nonnull %146) #10, !dbg !2170
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !2132, metadata !2123) #10, !dbg !2171
  call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !2139, metadata !600) #10, !dbg !2172
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !2146, metadata !600) #10, !dbg !2172
  %147 = call i32 @__xstat(i32 1, i8* nonnull %145, %struct.stat* nonnull %3) #10, !dbg !2174
  %148 = icmp eq i32 %147, 0, !dbg !2175
  br i1 %148, label %150, label %149, !dbg !2176

; <label>:149:                                    ; preds = %130
  call void @llvm.lifetime.end(i64 144, i8* nonnull %146) #10, !dbg !2177
  br label %293, !dbg !2178

; <label>:150:                                    ; preds = %130
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !2132, metadata !2123) #10, !dbg !2171
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !2151, metadata !600) #10, !dbg !2179
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0, !dbg !2181
  %152 = load i64, i64* %151, align 8, !dbg !2181
  %153 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1, !dbg !2181
  %154 = load i64, i64* %153, align 8, !dbg !2181
  call void @llvm.lifetime.end(i64 144, i8* nonnull %146) #10, !dbg !2177
  %155 = xor i1 %136, true, !dbg !2178
  %156 = icmp slt i64 %138, %152, !dbg !2182
  %157 = or i1 %156, %155, !dbg !2178
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !2188, metadata !2192), !dbg !2193
  tail call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !2188, metadata !2194), !dbg !2193
  tail call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !2189, metadata !2192), !dbg !2195
  tail call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !2189, metadata !2194), !dbg !2195
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !2188, metadata !600), !dbg !2193
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !2189, metadata !600), !dbg !2195
  br i1 %157, label %293, label %158, !dbg !2178

; <label>:158:                                    ; preds = %150
  %159 = icmp sgt i64 %138, %152, !dbg !2196
  br i1 %159, label %293, label %160, !dbg !2197

; <label>:160:                                    ; preds = %158
  %161 = sub nsw i64 %140, %154, !dbg !2198
  %162 = trunc i64 %161 to i32, !dbg !2199
  %163 = icmp sgt i32 %162, 0, !dbg !2200
  br label %293, !dbg !2200

; <label>:164:                                    ; preds = %115
  %165 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2202
  %166 = load i8, i8* %165, align 1, !dbg !2202, !tbaa !754
  %167 = icmp eq i8 %166, 102, !dbg !2204
  br i1 %167, label %168, label %249, !dbg !2205

; <label>:168:                                    ; preds = %164
  %169 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !2206
  %170 = load i8, i8* %169, align 1, !dbg !2206, !tbaa !754
  %171 = icmp eq i8 %170, 0, !dbg !2206
  br i1 %171, label %172, label %249, !dbg !2208

; <label>:172:                                    ; preds = %168
  %173 = add nsw i32 %39, 3, !dbg !2209
  store i32 %173, i32* @pos, align 4, !dbg !2209, !tbaa !723
  %174 = or i1 %40, %0, !dbg !2211
  br i1 %174, label %175, label %177, !dbg !2211

; <label>:175:                                    ; preds = %172
  %176 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i64 0, i64 0), i32 5) #10, !dbg !2213
  tail call void (i8*, ...) @test_syntax_error(i8* %176, i8* null) #15, !dbg !2214
  unreachable, !dbg !2216

; <label>:177:                                    ; preds = %172
  %178 = sext i32 %16 to i64, !dbg !2217
  %179 = getelementptr inbounds i8*, i8** %21, i64 %178, !dbg !2217
  %180 = load i8*, i8** %179, align 8, !dbg !2217, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !1909, metadata !2123), !dbg !2218
  tail call void @llvm.dbg.value(metadata i8* %180, i64 0, metadata !2139, metadata !600) #10, !dbg !2219
  tail call void @llvm.dbg.value(metadata %struct.stat* %6, i64 0, metadata !2146, metadata !600) #10, !dbg !2219
  %181 = call i32 @__xstat(i32 1, i8* nonnull %180, %struct.stat* nonnull %6) #10, !dbg !2221
  %182 = icmp eq i32 %181, 0, !dbg !2222
  br i1 %182, label %183, label %293, !dbg !2223

; <label>:183:                                    ; preds = %177
  %184 = load i8**, i8*** @argv, align 8, !dbg !2224, !tbaa !608
  %185 = add nsw i32 %16, 2, !dbg !2226
  %186 = sext i32 %185 to i64, !dbg !2224
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186, !dbg !2224
  %188 = load i8*, i8** %187, align 8, !dbg !2224, !tbaa !608
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1948, metadata !2123), !dbg !2227
  call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !2139, metadata !600) #10, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !2146, metadata !600) #10, !dbg !2228
  %189 = call i32 @__xstat(i32 1, i8* nonnull %188, %struct.stat* nonnull %7) #10, !dbg !2230
  %190 = icmp eq i32 %189, 0, !dbg !2231
  br i1 %190, label %191, label %293, !dbg !2232

; <label>:191:                                    ; preds = %183
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0, !dbg !2233
  %193 = load i64, i64* %192, align 8, !dbg !2233, !tbaa !2234
  %194 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !2238
  %195 = load i64, i64* %194, align 8, !dbg !2238, !tbaa !2234
  %196 = icmp eq i64 %193, %195, !dbg !2239
  br i1 %196, label %197, label %293, !dbg !2240

; <label>:197:                                    ; preds = %191
  %198 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1, !dbg !2241
  %199 = load i64, i64* %198, align 8, !dbg !2241, !tbaa !2242
  %200 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !2243
  %201 = load i64, i64* %200, align 8, !dbg !2243, !tbaa !2242
  %202 = icmp eq i64 %199, %201, !dbg !2244
  br label %293

; <label>:203:                                    ; preds = %115
  %204 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2245
  %205 = load i8, i8* %204, align 1, !dbg !2245, !tbaa !754
  %206 = icmp eq i8 %205, 116, !dbg !2246
  br i1 %206, label %207, label %249, !dbg !2247

; <label>:207:                                    ; preds = %203
  %208 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !2248
  %209 = load i8, i8* %208, align 1, !dbg !2248, !tbaa !754
  %210 = icmp eq i8 %209, 0, !dbg !2250
  br i1 %210, label %211, label %249, !dbg !2251

; <label>:211:                                    ; preds = %207
  %212 = add nsw i32 %39, 3, !dbg !2252
  store i32 %212, i32* @pos, align 4, !dbg !2252, !tbaa !723
  %213 = or i1 %40, %0, !dbg !2253
  br i1 %213, label %214, label %216, !dbg !2253

; <label>:214:                                    ; preds = %211
  %215 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i32 5) #10, !dbg !2255
  tail call void (i8*, ...) @test_syntax_error(i8* %215, i8* null) #15, !dbg !2256
  unreachable, !dbg !2258

; <label>:216:                                    ; preds = %211
  %217 = sext i32 %16 to i64, !dbg !2259
  %218 = getelementptr inbounds i8*, i8** %21, i64 %217, !dbg !2259
  %219 = load i8*, i8** %218, align 8, !dbg !2259, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1977, metadata !2123), !dbg !2260
  tail call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !2125, metadata !600) #10, !dbg !2261
  tail call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !2131, metadata !600) #10, !dbg !2263
  %220 = bitcast %struct.stat* %2 to i8*, !dbg !2264
  call void @llvm.lifetime.start(i64 144, i8* nonnull %220) #10, !dbg !2264
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2132, metadata !2123) #10, !dbg !2265
  tail call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !2139, metadata !600) #10, !dbg !2266
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2146, metadata !600) #10, !dbg !2266
  %221 = call i32 @__xstat(i32 1, i8* nonnull %219, %struct.stat* nonnull %2) #10, !dbg !2268
  call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2132, metadata !2123) #10, !dbg !2265
  call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !2151, metadata !600) #10, !dbg !2269
  %222 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !2271
  %223 = load i64, i64* %222, align 8, !dbg !2271
  %224 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1, !dbg !2271
  %225 = load i64, i64* %224, align 8, !dbg !2271
  call void @llvm.lifetime.end(i64 144, i8* nonnull %220) #10, !dbg !2272
  %226 = load i8**, i8*** @argv, align 8, !dbg !2273, !tbaa !608
  %227 = add nsw i32 %16, 2, !dbg !2274
  %228 = sext i32 %227 to i64, !dbg !2273
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228, !dbg !2273
  %230 = load i8*, i8** %229, align 8, !dbg !2273, !tbaa !608
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !1980, metadata !2123), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %230, i64 0, metadata !2125, metadata !600) #10, !dbg !2276
  call void @llvm.dbg.value(metadata %struct.timespec* undef, i64 0, metadata !2131, metadata !600) #10, !dbg !2278
  %231 = bitcast %struct.stat* %5 to i8*, !dbg !2279
  call void @llvm.lifetime.start(i64 144, i8* nonnull %231) #10, !dbg !2279
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !2132, metadata !2123) #10, !dbg !2280
  call void @llvm.dbg.value(metadata i8* %230, i64 0, metadata !2139, metadata !600) #10, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !2146, metadata !600) #10, !dbg !2281
  %232 = call i32 @__xstat(i32 1, i8* nonnull %230, %struct.stat* nonnull %5) #10, !dbg !2283
  %233 = icmp eq i32 %232, 0, !dbg !2284
  br i1 %233, label %235, label %234, !dbg !2285

; <label>:234:                                    ; preds = %216
  call void @llvm.lifetime.end(i64 144, i8* nonnull %231) #10, !dbg !2286
  br label %293, !dbg !2287

; <label>:235:                                    ; preds = %216
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !2132, metadata !2123) #10, !dbg !2280
  call void @llvm.dbg.value(metadata %struct.stat* %5, i64 0, metadata !2151, metadata !600) #10, !dbg !2288
  %236 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0, !dbg !2290
  %237 = load i64, i64* %236, align 8, !dbg !2290
  %238 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1, !dbg !2290
  %239 = load i64, i64* %238, align 8, !dbg !2290
  call void @llvm.lifetime.end(i64 144, i8* nonnull %231) #10, !dbg !2286
  %240 = icmp ne i32 %221, 0, !dbg !2287
  %241 = icmp slt i64 %223, %237, !dbg !2291
  %242 = or i1 %240, %241, !dbg !2287
  tail call void @llvm.dbg.value(metadata i64 %223, i64 0, metadata !2188, metadata !2192), !dbg !2294
  tail call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !2188, metadata !2194), !dbg !2294
  tail call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !2189, metadata !2192), !dbg !2295
  tail call void @llvm.dbg.value(metadata i64 %239, i64 0, metadata !2189, metadata !2194), !dbg !2295
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !2188, metadata !600), !dbg !2294
  tail call void @llvm.dbg.declare(metadata %struct.timespec* undef, metadata !2189, metadata !600), !dbg !2295
  br i1 %242, label %293, label %243, !dbg !2287

; <label>:243:                                    ; preds = %235
  %244 = icmp sgt i64 %223, %237, !dbg !2296
  br i1 %244, label %293, label %245, !dbg !2297

; <label>:245:                                    ; preds = %243
  %246 = sub nsw i64 %225, %239, !dbg !2298
  %247 = trunc i64 %246 to i32, !dbg !2299
  %248 = icmp slt i32 %247, 0, !dbg !2300
  br label %293, !dbg !2300

; <label>:249:                                    ; preds = %121, %168, %203, %207, %164, %117, %115
  %250 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i64 0, i64 0), i32 5) #10, !dbg !2301
  %251 = load i8**, i8*** @argv, align 8, !dbg !2302, !tbaa !608
  %252 = getelementptr inbounds i8*, i8** %251, i64 %41, !dbg !2302
  %253 = load i8*, i8** %252, align 8, !dbg !2302, !tbaa !608
  %254 = tail call i8* @quote(i8* %253) #10, !dbg !2303
  tail call void (i8*, ...) @test_syntax_error(i8* %250, i8* %254) #15, !dbg !2305
  unreachable, !dbg !2306

; <label>:255:                                    ; preds = %38
  %256 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !2307
  %257 = load i8, i8* %256, align 1, !dbg !2307, !tbaa !754
  switch i8 %257, label %292 [
    i8 0, label %262
    i8 61, label %258
  ], !dbg !2309

; <label>:258:                                    ; preds = %255
  %259 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2310
  %260 = load i8, i8* %259, align 1, !dbg !2310, !tbaa !754
  %261 = icmp eq i8 %260, 0, !dbg !2310
  br i1 %261, label %262, label %292, !dbg !2312

; <label>:262:                                    ; preds = %255, %258
  %263 = sext i32 %39 to i64, !dbg !2314
  %264 = getelementptr inbounds i8*, i8** %21, i64 %263, !dbg !2314
  %265 = load i8*, i8** %264, align 8, !dbg !2314, !tbaa !608
  %266 = add nsw i32 %39, 2, !dbg !2314
  %267 = sext i32 %266 to i64, !dbg !2314
  %268 = getelementptr inbounds i8*, i8** %21, i64 %267, !dbg !2314
  %269 = load i8*, i8** %268, align 8, !dbg !2314, !tbaa !608
  %270 = tail call i32 @strcmp(i8* %265, i8* %269) #10, !dbg !2314
  %271 = icmp eq i32 %270, 0, !dbg !2315
  %272 = add nsw i32 %39, 3, !dbg !2316
  store i32 %272, i32* @pos, align 4, !dbg !2316, !tbaa !723
  br label %293

; <label>:273:                                    ; preds = %38
  %274 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !2317
  %275 = load i8, i8* %274, align 1, !dbg !2317, !tbaa !754
  %276 = icmp eq i8 %275, 61, !dbg !2321
  br i1 %276, label %277, label %292, !dbg !2324

; <label>:277:                                    ; preds = %273
  %278 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !2326
  %279 = load i8, i8* %278, align 1, !dbg !2326, !tbaa !754
  %280 = icmp eq i8 %279, 0, !dbg !2329
  br i1 %280, label %281, label %292, !dbg !2331

; <label>:281:                                    ; preds = %277
  %282 = sext i32 %39 to i64, !dbg !2045
  %283 = getelementptr inbounds i8*, i8** %21, i64 %282, !dbg !2045
  %284 = load i8*, i8** %283, align 8, !dbg !2045, !tbaa !608
  %285 = add nsw i32 %39, 2, !dbg !2045
  %286 = sext i32 %285 to i64, !dbg !2045
  %287 = getelementptr inbounds i8*, i8** %21, i64 %286, !dbg !2045
  %288 = load i8*, i8** %287, align 8, !dbg !2045, !tbaa !608
  %289 = tail call i32 @strcmp(i8* %284, i8* %288) #10, !dbg !2045
  %290 = icmp ne i32 %289, 0, !dbg !2333
  %291 = add nsw i32 %39, 3, !dbg !2334
  store i32 %291, i32* @pos, align 4, !dbg !2334, !tbaa !723
  br label %293

; <label>:292:                                    ; preds = %38, %258, %255, %273, %277
  tail call void @abort() #14, !dbg !2335
  unreachable, !dbg !2335

; <label>:293:                                    ; preds = %235, %150, %245, %243, %160, %158, %234, %149, %177, %183, %191, %197, %281, %262, %113
  %294 = phi i1 [ %114, %113 ], [ %290, %281 ], [ %271, %262 ], [ false, %191 ], [ false, %183 ], [ false, %177 ], [ %202, %197 ], [ false, %150 ], [ %136, %149 ], [ true, %235 ], [ false, %234 ], [ %163, %160 ], [ true, %158 ], [ %248, %245 ], [ false, %243 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %11) #10, !dbg !2336
  call void @llvm.lifetime.end(i64 144, i8* nonnull %10) #10, !dbg !2336
  ret i1 %294, !dbg !2336
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #6 !dbg !2337 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !2353
  call void @llvm.lifetime.start(i64 144, i8* nonnull %2) #10, !dbg !2353
  %3 = load i8**, i8*** @argv, align 8, !dbg !2354, !tbaa !608
  %4 = load i32, i32* @pos, align 4, !dbg !2355, !tbaa !723
  %5 = sext i32 %4 to i64, !dbg !2354
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5, !dbg !2354
  %7 = load i8*, i8** %6, align 8, !dbg !2354, !tbaa !608
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2354
  %9 = load i8, i8* %8, align 1, !dbg !2354, !tbaa !754
  %10 = sext i8 %9 to i32, !dbg !2354
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
  ], !dbg !2356

; <label>:11:                                     ; preds = %0, %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2357
  %12 = add nsw i32 %4, 1, !dbg !2361
  store i32 %12, i32* @pos, align 4, !dbg !2361, !tbaa !723
  %13 = load i32, i32* @argc, align 4, !dbg !2362
  %14 = icmp slt i32 %12, %13, !dbg !2363
  br i1 %14, label %16, label %15, !dbg !2364

; <label>:15:                                     ; preds = %11
  tail call fastcc void @beyond() #14, !dbg !2365
  unreachable, !dbg !2365

; <label>:16:                                     ; preds = %11
  %17 = add nsw i32 %4, 2, !dbg !2366
  store i32 %17, i32* @pos, align 4, !dbg !2366, !tbaa !723
  %18 = sext i32 %12 to i64, !dbg !2367
  %19 = getelementptr inbounds i8*, i8** %3, i64 %18, !dbg !2367
  %20 = load i8*, i8** %19, align 8, !dbg !2367, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2139, metadata !600) #10, !dbg !2369
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2369
  %21 = call i32 @__xstat(i32 1, i8* nonnull %20, %struct.stat* nonnull %1) #10, !dbg !2371
  %22 = icmp eq i32 %21, 0, !dbg !2372
  br label %336, !dbg !2373

; <label>:23:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2374
  %24 = add nsw i32 %4, 1, !dbg !2377
  store i32 %24, i32* @pos, align 4, !dbg !2377, !tbaa !723
  %25 = load i32, i32* @argc, align 4, !dbg !2378
  %26 = icmp slt i32 %24, %25, !dbg !2379
  br i1 %26, label %28, label %27, !dbg !2380

; <label>:27:                                     ; preds = %23
  tail call fastcc void @beyond() #14, !dbg !2381
  unreachable, !dbg !2381

; <label>:28:                                     ; preds = %23
  %29 = add nsw i32 %4, 2, !dbg !2382
  store i32 %29, i32* @pos, align 4, !dbg !2382, !tbaa !723
  %30 = sext i32 %24 to i64, !dbg !2383
  %31 = getelementptr inbounds i8*, i8** %3, i64 %30, !dbg !2383
  %32 = load i8*, i8** %31, align 8, !dbg !2383, !tbaa !608
  %33 = tail call i32 @euidaccess(i8* %32, i32 4) #10, !dbg !2384
  %34 = icmp eq i32 %33, 0, !dbg !2385
  br label %336, !dbg !2386

; <label>:35:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2387
  %36 = add nsw i32 %4, 1, !dbg !2390
  store i32 %36, i32* @pos, align 4, !dbg !2390, !tbaa !723
  %37 = load i32, i32* @argc, align 4, !dbg !2391
  %38 = icmp slt i32 %36, %37, !dbg !2392
  br i1 %38, label %40, label %39, !dbg !2393

; <label>:39:                                     ; preds = %35
  tail call fastcc void @beyond() #14, !dbg !2394
  unreachable, !dbg !2394

; <label>:40:                                     ; preds = %35
  %41 = add nsw i32 %4, 2, !dbg !2395
  store i32 %41, i32* @pos, align 4, !dbg !2395, !tbaa !723
  %42 = sext i32 %36 to i64, !dbg !2396
  %43 = getelementptr inbounds i8*, i8** %3, i64 %42, !dbg !2396
  %44 = load i8*, i8** %43, align 8, !dbg !2396, !tbaa !608
  %45 = tail call i32 @euidaccess(i8* %44, i32 2) #10, !dbg !2397
  %46 = icmp eq i32 %45, 0, !dbg !2398
  br label %336, !dbg !2399

; <label>:47:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2400
  %48 = add nsw i32 %4, 1, !dbg !2403
  store i32 %48, i32* @pos, align 4, !dbg !2403, !tbaa !723
  %49 = load i32, i32* @argc, align 4, !dbg !2404
  %50 = icmp slt i32 %48, %49, !dbg !2405
  br i1 %50, label %52, label %51, !dbg !2406

; <label>:51:                                     ; preds = %47
  tail call fastcc void @beyond() #14, !dbg !2407
  unreachable, !dbg !2407

; <label>:52:                                     ; preds = %47
  %53 = add nsw i32 %4, 2, !dbg !2408
  store i32 %53, i32* @pos, align 4, !dbg !2408, !tbaa !723
  %54 = sext i32 %48 to i64, !dbg !2409
  %55 = getelementptr inbounds i8*, i8** %3, i64 %54, !dbg !2409
  %56 = load i8*, i8** %55, align 8, !dbg !2409, !tbaa !608
  %57 = tail call i32 @euidaccess(i8* %56, i32 1) #10, !dbg !2410
  %58 = icmp eq i32 %57, 0, !dbg !2411
  br label %336, !dbg !2412

; <label>:59:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2413
  %60 = add nsw i32 %4, 1, !dbg !2416
  store i32 %60, i32* @pos, align 4, !dbg !2416, !tbaa !723
  %61 = load i32, i32* @argc, align 4, !dbg !2417
  %62 = icmp slt i32 %60, %61, !dbg !2418
  br i1 %62, label %64, label %63, !dbg !2419

; <label>:63:                                     ; preds = %59
  tail call fastcc void @beyond() #14, !dbg !2420
  unreachable, !dbg !2420

; <label>:64:                                     ; preds = %59
  %65 = add nsw i32 %4, 2, !dbg !2421
  store i32 %65, i32* @pos, align 4, !dbg !2421, !tbaa !723
  %66 = sext i32 %60 to i64, !dbg !2422
  %67 = getelementptr inbounds i8*, i8** %3, i64 %66, !dbg !2422
  %68 = load i8*, i8** %67, align 8, !dbg !2422, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !2139, metadata !600) #10, !dbg !2424
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2424
  %69 = call i32 @__xstat(i32 1, i8* nonnull %68, %struct.stat* nonnull %1) #10, !dbg !2426
  %70 = icmp eq i32 %69, 0, !dbg !2427
  br i1 %70, label %71, label %336, !dbg !2428

; <label>:71:                                     ; preds = %64
  %72 = tail call i32* @__errno_location() #1, !dbg !2429
  store i32 0, i32* %72, align 4, !dbg !2430, !tbaa !723
  %73 = call i32 @geteuid() #10, !dbg !2431
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !2340, metadata !600), !dbg !2432
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !2345, metadata !600), !dbg !2433
  %74 = icmp eq i32 %73, -1, !dbg !2434
  br i1 %74, label %75, label %78, !dbg !2435

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %72, align 4, !dbg !2436, !tbaa !723
  %77 = icmp eq i32 %76, 0, !dbg !2436
  br i1 %77, label %78, label %336, !dbg !2438

; <label>:78:                                     ; preds = %75, %71
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 4, !dbg !2439
  %80 = load i32, i32* %79, align 4, !dbg !2439, !tbaa !2441
  %81 = icmp eq i32 %73, %80, !dbg !2442
  br label %336

; <label>:82:                                     ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2443
  %83 = add nsw i32 %4, 1, !dbg !2446
  store i32 %83, i32* @pos, align 4, !dbg !2446, !tbaa !723
  %84 = load i32, i32* @argc, align 4, !dbg !2447
  %85 = icmp slt i32 %83, %84, !dbg !2448
  br i1 %85, label %87, label %86, !dbg !2449

; <label>:86:                                     ; preds = %82
  tail call fastcc void @beyond() #14, !dbg !2450
  unreachable, !dbg !2450

; <label>:87:                                     ; preds = %82
  %88 = add nsw i32 %4, 2, !dbg !2451
  store i32 %88, i32* @pos, align 4, !dbg !2451, !tbaa !723
  %89 = sext i32 %83 to i64, !dbg !2452
  %90 = getelementptr inbounds i8*, i8** %3, i64 %89, !dbg !2452
  %91 = load i8*, i8** %90, align 8, !dbg !2452, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !2139, metadata !600) #10, !dbg !2454
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2454
  %92 = call i32 @__xstat(i32 1, i8* nonnull %91, %struct.stat* nonnull %1) #10, !dbg !2456
  %93 = icmp eq i32 %92, 0, !dbg !2457
  br i1 %93, label %94, label %336, !dbg !2458

; <label>:94:                                     ; preds = %87
  %95 = tail call i32* @__errno_location() #1, !dbg !2459
  store i32 0, i32* %95, align 4, !dbg !2460, !tbaa !723
  %96 = call i32 @getegid() #10, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2346, metadata !600), !dbg !2462
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !2349, metadata !600), !dbg !2463
  %97 = icmp eq i32 %96, -1, !dbg !2464
  br i1 %97, label %98, label %101, !dbg !2465

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %95, align 4, !dbg !2466, !tbaa !723
  %100 = icmp eq i32 %99, 0, !dbg !2466
  br i1 %100, label %101, label %336, !dbg !2468

; <label>:101:                                    ; preds = %98, %94
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 5, !dbg !2469
  %103 = load i32, i32* %102, align 8, !dbg !2469, !tbaa !2471
  %104 = icmp eq i32 %96, %103, !dbg !2472
  br label %336

; <label>:105:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2473
  %106 = add nsw i32 %4, 1, !dbg !2476
  store i32 %106, i32* @pos, align 4, !dbg !2476, !tbaa !723
  %107 = load i32, i32* @argc, align 4, !dbg !2477
  %108 = icmp slt i32 %106, %107, !dbg !2478
  br i1 %108, label %110, label %109, !dbg !2479

; <label>:109:                                    ; preds = %105
  tail call fastcc void @beyond() #14, !dbg !2480
  unreachable, !dbg !2480

; <label>:110:                                    ; preds = %105
  %111 = add nsw i32 %4, 2, !dbg !2481
  store i32 %111, i32* @pos, align 4, !dbg !2481, !tbaa !723
  %112 = sext i32 %106 to i64, !dbg !2482
  %113 = getelementptr inbounds i8*, i8** %3, i64 %112, !dbg !2482
  %114 = load i8*, i8** %113, align 8, !dbg !2482, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !2139, metadata !600) #10, !dbg !2483
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2483
  %115 = call i32 @__xstat(i32 1, i8* nonnull %114, %struct.stat* nonnull %1) #10, !dbg !2485
  %116 = icmp eq i32 %115, 0, !dbg !2486
  br i1 %116, label %117, label %336, !dbg !2487

; <label>:117:                                    ; preds = %110
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2488
  %119 = load i32, i32* %118, align 8, !dbg !2488, !tbaa !2490
  %120 = and i32 %119, 61440, !dbg !2488
  %121 = icmp eq i32 %120, 32768, !dbg !2488
  br label %336

; <label>:122:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2491
  %123 = add nsw i32 %4, 1, !dbg !2494
  store i32 %123, i32* @pos, align 4, !dbg !2494, !tbaa !723
  %124 = load i32, i32* @argc, align 4, !dbg !2495
  %125 = icmp slt i32 %123, %124, !dbg !2496
  br i1 %125, label %127, label %126, !dbg !2497

; <label>:126:                                    ; preds = %122
  tail call fastcc void @beyond() #14, !dbg !2498
  unreachable, !dbg !2498

; <label>:127:                                    ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !2499
  store i32 %128, i32* @pos, align 4, !dbg !2499, !tbaa !723
  %129 = sext i32 %123 to i64, !dbg !2500
  %130 = getelementptr inbounds i8*, i8** %3, i64 %129, !dbg !2500
  %131 = load i8*, i8** %130, align 8, !dbg !2500, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !2139, metadata !600) #10, !dbg !2501
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2501
  %132 = call i32 @__xstat(i32 1, i8* nonnull %131, %struct.stat* nonnull %1) #10, !dbg !2503
  %133 = icmp eq i32 %132, 0, !dbg !2504
  br i1 %133, label %134, label %336, !dbg !2505

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2506
  %136 = load i32, i32* %135, align 8, !dbg !2506, !tbaa !2490
  %137 = and i32 %136, 61440, !dbg !2506
  %138 = icmp eq i32 %137, 16384, !dbg !2506
  br label %336

; <label>:139:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2507
  %140 = add nsw i32 %4, 1, !dbg !2510
  store i32 %140, i32* @pos, align 4, !dbg !2510, !tbaa !723
  %141 = load i32, i32* @argc, align 4, !dbg !2511
  %142 = icmp slt i32 %140, %141, !dbg !2512
  br i1 %142, label %144, label %143, !dbg !2513

; <label>:143:                                    ; preds = %139
  tail call fastcc void @beyond() #14, !dbg !2514
  unreachable, !dbg !2514

; <label>:144:                                    ; preds = %139
  %145 = add nsw i32 %4, 2, !dbg !2515
  store i32 %145, i32* @pos, align 4, !dbg !2515, !tbaa !723
  %146 = sext i32 %140 to i64, !dbg !2516
  %147 = getelementptr inbounds i8*, i8** %3, i64 %146, !dbg !2516
  %148 = load i8*, i8** %147, align 8, !dbg !2516, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !2139, metadata !600) #10, !dbg !2517
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2517
  %149 = call i32 @__xstat(i32 1, i8* nonnull %148, %struct.stat* nonnull %1) #10, !dbg !2519
  %150 = icmp eq i32 %149, 0, !dbg !2520
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 8, !dbg !2521
  %152 = load i64, i64* %151, align 8, !dbg !2521
  %153 = icmp sgt i64 %152, 0, !dbg !2522
  %154 = and i1 %150, %153, !dbg !2523
  br label %336, !dbg !2524

; <label>:155:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2525
  %156 = add nsw i32 %4, 1, !dbg !2528
  store i32 %156, i32* @pos, align 4, !dbg !2528, !tbaa !723
  %157 = load i32, i32* @argc, align 4, !dbg !2529
  %158 = icmp slt i32 %156, %157, !dbg !2530
  br i1 %158, label %160, label %159, !dbg !2531

; <label>:159:                                    ; preds = %155
  tail call fastcc void @beyond() #14, !dbg !2532
  unreachable, !dbg !2532

; <label>:160:                                    ; preds = %155
  %161 = add nsw i32 %4, 2, !dbg !2533
  store i32 %161, i32* @pos, align 4, !dbg !2533, !tbaa !723
  %162 = sext i32 %156 to i64, !dbg !2534
  %163 = getelementptr inbounds i8*, i8** %3, i64 %162, !dbg !2534
  %164 = load i8*, i8** %163, align 8, !dbg !2534, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !2139, metadata !600) #10, !dbg !2535
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2535
  %165 = call i32 @__xstat(i32 1, i8* nonnull %164, %struct.stat* nonnull %1) #10, !dbg !2537
  %166 = icmp eq i32 %165, 0, !dbg !2538
  br i1 %166, label %167, label %336, !dbg !2539

; <label>:167:                                    ; preds = %160
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2540
  %169 = load i32, i32* %168, align 8, !dbg !2540, !tbaa !2490
  %170 = and i32 %169, 61440, !dbg !2540
  %171 = icmp eq i32 %170, 49152, !dbg !2540
  br label %336

; <label>:172:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2541
  %173 = add nsw i32 %4, 1, !dbg !2544
  store i32 %173, i32* @pos, align 4, !dbg !2544, !tbaa !723
  %174 = load i32, i32* @argc, align 4, !dbg !2545
  %175 = icmp slt i32 %173, %174, !dbg !2546
  br i1 %175, label %177, label %176, !dbg !2547

; <label>:176:                                    ; preds = %172
  tail call fastcc void @beyond() #14, !dbg !2548
  unreachable, !dbg !2548

; <label>:177:                                    ; preds = %172
  %178 = add nsw i32 %4, 2, !dbg !2549
  store i32 %178, i32* @pos, align 4, !dbg !2549, !tbaa !723
  %179 = sext i32 %173 to i64, !dbg !2550
  %180 = getelementptr inbounds i8*, i8** %3, i64 %179, !dbg !2550
  %181 = load i8*, i8** %180, align 8, !dbg !2550, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !2139, metadata !600) #10, !dbg !2551
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2551
  %182 = call i32 @__xstat(i32 1, i8* nonnull %181, %struct.stat* nonnull %1) #10, !dbg !2553
  %183 = icmp eq i32 %182, 0, !dbg !2554
  br i1 %183, label %184, label %336, !dbg !2555

; <label>:184:                                    ; preds = %177
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2556
  %186 = load i32, i32* %185, align 8, !dbg !2556, !tbaa !2490
  %187 = and i32 %186, 61440, !dbg !2556
  %188 = icmp eq i32 %187, 8192, !dbg !2556
  br label %336

; <label>:189:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2557
  %190 = add nsw i32 %4, 1, !dbg !2560
  store i32 %190, i32* @pos, align 4, !dbg !2560, !tbaa !723
  %191 = load i32, i32* @argc, align 4, !dbg !2561
  %192 = icmp slt i32 %190, %191, !dbg !2562
  br i1 %192, label %194, label %193, !dbg !2563

; <label>:193:                                    ; preds = %189
  tail call fastcc void @beyond() #14, !dbg !2564
  unreachable, !dbg !2564

; <label>:194:                                    ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !2565
  store i32 %195, i32* @pos, align 4, !dbg !2565, !tbaa !723
  %196 = sext i32 %190 to i64, !dbg !2566
  %197 = getelementptr inbounds i8*, i8** %3, i64 %196, !dbg !2566
  %198 = load i8*, i8** %197, align 8, !dbg !2566, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !2139, metadata !600) #10, !dbg !2567
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2567
  %199 = call i32 @__xstat(i32 1, i8* nonnull %198, %struct.stat* nonnull %1) #10, !dbg !2569
  %200 = icmp eq i32 %199, 0, !dbg !2570
  br i1 %200, label %201, label %336, !dbg !2571

; <label>:201:                                    ; preds = %194
  %202 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2572
  %203 = load i32, i32* %202, align 8, !dbg !2572, !tbaa !2490
  %204 = and i32 %203, 61440, !dbg !2572
  %205 = icmp eq i32 %204, 24576, !dbg !2572
  br label %336

; <label>:206:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2573
  %207 = add nsw i32 %4, 1, !dbg !2576
  store i32 %207, i32* @pos, align 4, !dbg !2576, !tbaa !723
  %208 = load i32, i32* @argc, align 4, !dbg !2577
  %209 = icmp slt i32 %207, %208, !dbg !2578
  br i1 %209, label %211, label %210, !dbg !2579

; <label>:210:                                    ; preds = %206
  tail call fastcc void @beyond() #14, !dbg !2580
  unreachable, !dbg !2580

; <label>:211:                                    ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !2581
  store i32 %212, i32* @pos, align 4, !dbg !2581, !tbaa !723
  %213 = sext i32 %207 to i64, !dbg !2582
  %214 = getelementptr inbounds i8*, i8** %3, i64 %213, !dbg !2582
  %215 = load i8*, i8** %214, align 8, !dbg !2582, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %215, i64 0, metadata !2139, metadata !600) #10, !dbg !2583
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2583
  %216 = call i32 @__xstat(i32 1, i8* nonnull %215, %struct.stat* nonnull %1) #10, !dbg !2585
  %217 = icmp eq i32 %216, 0, !dbg !2586
  br i1 %217, label %218, label %336, !dbg !2587

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2588
  %220 = load i32, i32* %219, align 8, !dbg !2588, !tbaa !2490
  %221 = and i32 %220, 61440, !dbg !2588
  %222 = icmp eq i32 %221, 4096, !dbg !2588
  br label %336

; <label>:223:                                    ; preds = %0, %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2589
  %224 = add nsw i32 %4, 1, !dbg !2592
  store i32 %224, i32* @pos, align 4, !dbg !2592, !tbaa !723
  %225 = load i32, i32* @argc, align 4, !dbg !2593
  %226 = icmp slt i32 %224, %225, !dbg !2594
  br i1 %226, label %228, label %227, !dbg !2595

; <label>:227:                                    ; preds = %223
  tail call fastcc void @beyond() #14, !dbg !2596
  unreachable, !dbg !2596

; <label>:228:                                    ; preds = %223
  %229 = add nsw i32 %4, 2, !dbg !2597
  store i32 %229, i32* @pos, align 4, !dbg !2597, !tbaa !723
  %230 = sext i32 %224 to i64, !dbg !2598
  %231 = getelementptr inbounds i8*, i8** %3, i64 %230, !dbg !2598
  %232 = load i8*, i8** %231, align 8, !dbg !2598, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %232, i64 0, metadata !2599, metadata !600) #10, !dbg !2603
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2602, metadata !600) #10, !dbg !2603
  %233 = call i32 @__lxstat(i32 1, i8* nonnull %232, %struct.stat* nonnull %1) #10, !dbg !2605
  %234 = icmp eq i32 %233, 0, !dbg !2606
  br i1 %234, label %235, label %336, !dbg !2607

; <label>:235:                                    ; preds = %228
  %236 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2608
  %237 = load i32, i32* %236, align 8, !dbg !2608, !tbaa !2490
  %238 = and i32 %237, 61440, !dbg !2608
  %239 = icmp eq i32 %238, 40960, !dbg !2608
  br label %336

; <label>:240:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2609
  %241 = add nsw i32 %4, 1, !dbg !2612
  store i32 %241, i32* @pos, align 4, !dbg !2612, !tbaa !723
  %242 = load i32, i32* @argc, align 4, !dbg !2613
  %243 = icmp slt i32 %241, %242, !dbg !2614
  br i1 %243, label %245, label %244, !dbg !2615

; <label>:244:                                    ; preds = %240
  tail call fastcc void @beyond() #14, !dbg !2616
  unreachable, !dbg !2616

; <label>:245:                                    ; preds = %240
  %246 = add nsw i32 %4, 2, !dbg !2617
  store i32 %246, i32* @pos, align 4, !dbg !2617, !tbaa !723
  %247 = sext i32 %241 to i64, !dbg !2618
  %248 = getelementptr inbounds i8*, i8** %3, i64 %247, !dbg !2618
  %249 = load i8*, i8** %248, align 8, !dbg !2618, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %249, i64 0, metadata !2139, metadata !600) #10, !dbg !2619
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2619
  %250 = call i32 @__xstat(i32 1, i8* nonnull %249, %struct.stat* nonnull %1) #10, !dbg !2621
  %251 = icmp eq i32 %250, 0, !dbg !2622
  br i1 %251, label %252, label %336, !dbg !2623

; <label>:252:                                    ; preds = %245
  %253 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2624
  %254 = load i32, i32* %253, align 8, !dbg !2624, !tbaa !2490
  %255 = and i32 %254, 2048, !dbg !2625
  %256 = icmp ne i32 %255, 0, !dbg !2626
  br label %336

; <label>:257:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2627
  %258 = add nsw i32 %4, 1, !dbg !2630
  store i32 %258, i32* @pos, align 4, !dbg !2630, !tbaa !723
  %259 = load i32, i32* @argc, align 4, !dbg !2631
  %260 = icmp slt i32 %258, %259, !dbg !2632
  br i1 %260, label %262, label %261, !dbg !2633

; <label>:261:                                    ; preds = %257
  tail call fastcc void @beyond() #14, !dbg !2634
  unreachable, !dbg !2634

; <label>:262:                                    ; preds = %257
  %263 = add nsw i32 %4, 2, !dbg !2635
  store i32 %263, i32* @pos, align 4, !dbg !2635, !tbaa !723
  %264 = sext i32 %258 to i64, !dbg !2636
  %265 = getelementptr inbounds i8*, i8** %3, i64 %264, !dbg !2636
  %266 = load i8*, i8** %265, align 8, !dbg !2636, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %266, i64 0, metadata !2139, metadata !600) #10, !dbg !2637
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2637
  %267 = call i32 @__xstat(i32 1, i8* nonnull %266, %struct.stat* nonnull %1) #10, !dbg !2639
  %268 = icmp eq i32 %267, 0, !dbg !2640
  br i1 %268, label %269, label %336, !dbg !2641

; <label>:269:                                    ; preds = %262
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2642
  %271 = load i32, i32* %270, align 8, !dbg !2642, !tbaa !2490
  %272 = and i32 %271, 1024, !dbg !2643
  %273 = icmp ne i32 %272, 0, !dbg !2644
  br label %336

; <label>:274:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2645
  %275 = add nsw i32 %4, 1, !dbg !2648
  store i32 %275, i32* @pos, align 4, !dbg !2648, !tbaa !723
  %276 = load i32, i32* @argc, align 4, !dbg !2649
  %277 = icmp slt i32 %275, %276, !dbg !2650
  br i1 %277, label %279, label %278, !dbg !2651

; <label>:278:                                    ; preds = %274
  tail call fastcc void @beyond() #14, !dbg !2652
  unreachable, !dbg !2652

; <label>:279:                                    ; preds = %274
  %280 = add nsw i32 %4, 2, !dbg !2653
  store i32 %280, i32* @pos, align 4, !dbg !2653, !tbaa !723
  %281 = sext i32 %275 to i64, !dbg !2654
  %282 = getelementptr inbounds i8*, i8** %3, i64 %281, !dbg !2654
  %283 = load i8*, i8** %282, align 8, !dbg !2654, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2339, metadata !2123), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !2139, metadata !600) #10, !dbg !2655
  tail call void @llvm.dbg.value(metadata %struct.stat* %1, i64 0, metadata !2146, metadata !600) #10, !dbg !2655
  %284 = call i32 @__xstat(i32 1, i8* nonnull %283, %struct.stat* nonnull %1) #10, !dbg !2657
  %285 = icmp eq i32 %284, 0, !dbg !2658
  br i1 %285, label %286, label %336, !dbg !2659

; <label>:286:                                    ; preds = %279
  %287 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3, !dbg !2660
  %288 = load i32, i32* %287, align 8, !dbg !2660, !tbaa !2490
  %289 = and i32 %288, 512, !dbg !2661
  %290 = icmp ne i32 %289, 0, !dbg !2662
  br label %336

; <label>:291:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2663
  %292 = add nsw i32 %4, 1, !dbg !2666
  store i32 %292, i32* @pos, align 4, !dbg !2666, !tbaa !723
  %293 = load i32, i32* @argc, align 4, !dbg !2667
  %294 = icmp slt i32 %292, %293, !dbg !2668
  br i1 %294, label %296, label %295, !dbg !2669

; <label>:295:                                    ; preds = %291
  tail call fastcc void @beyond() #14, !dbg !2670
  unreachable, !dbg !2670

; <label>:296:                                    ; preds = %291
  %297 = add nsw i32 %4, 2, !dbg !2671
  store i32 %297, i32* @pos, align 4, !dbg !2671, !tbaa !723
  %298 = sext i32 %292 to i64, !dbg !2672
  %299 = getelementptr inbounds i8*, i8** %3, i64 %298, !dbg !2672
  %300 = load i8*, i8** %299, align 8, !dbg !2672, !tbaa !608
  %301 = tail call fastcc i8* @find_int(i8* %300), !dbg !2673
  tail call void @llvm.dbg.value(metadata i8* %301, i64 0, metadata !2352, metadata !600), !dbg !2674
  %302 = tail call i32* @__errno_location() #1, !dbg !2675
  store i32 0, i32* %302, align 4, !dbg !2676, !tbaa !723
  %303 = tail call i64 @strtol(i8* nocapture %301, i8** null, i32 10) #10, !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %303, i64 0, metadata !2350, metadata !600), !dbg !2678
  %304 = load i32, i32* %302, align 4, !dbg !2679, !tbaa !723
  %305 = icmp ne i32 %304, 34, !dbg !2680
  %306 = icmp ult i64 %303, 2147483648, !dbg !2681
  %307 = and i1 %306, %305, !dbg !2681
  br i1 %307, label %308, label %336, !dbg !2681

; <label>:308:                                    ; preds = %296
  %309 = trunc i64 %303 to i32, !dbg !2682
  %310 = tail call i32 @isatty(i32 %309) #10, !dbg !2684
  %311 = icmp ne i32 %310, 0, !dbg !2685
  br label %336

; <label>:312:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2686
  %313 = add nsw i32 %4, 1, !dbg !2689
  store i32 %313, i32* @pos, align 4, !dbg !2689, !tbaa !723
  %314 = load i32, i32* @argc, align 4, !dbg !2690
  %315 = icmp slt i32 %313, %314, !dbg !2691
  br i1 %315, label %317, label %316, !dbg !2692

; <label>:316:                                    ; preds = %312
  tail call fastcc void @beyond() #14, !dbg !2693
  unreachable, !dbg !2693

; <label>:317:                                    ; preds = %312
  %318 = add nsw i32 %4, 2, !dbg !2694
  store i32 %318, i32* @pos, align 4, !dbg !2694, !tbaa !723
  %319 = sext i32 %313 to i64, !dbg !2695
  %320 = getelementptr inbounds i8*, i8** %3, i64 %319, !dbg !2695
  %321 = load i8*, i8** %320, align 8, !dbg !2695, !tbaa !608
  %322 = load i8, i8* %321, align 1, !dbg !2695, !tbaa !754
  %323 = icmp ne i8 %322, 0, !dbg !2696
  br label %336, !dbg !2697

; <label>:324:                                    ; preds = %0
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !880, metadata !885) #10, !dbg !2698
  %325 = add nsw i32 %4, 1, !dbg !2701
  store i32 %325, i32* @pos, align 4, !dbg !2701, !tbaa !723
  %326 = load i32, i32* @argc, align 4, !dbg !2702
  %327 = icmp slt i32 %325, %326, !dbg !2703
  br i1 %327, label %329, label %328, !dbg !2704

; <label>:328:                                    ; preds = %324
  tail call fastcc void @beyond() #14, !dbg !2705
  unreachable, !dbg !2705

; <label>:329:                                    ; preds = %324
  %330 = add nsw i32 %4, 2, !dbg !2706
  store i32 %330, i32* @pos, align 4, !dbg !2706, !tbaa !723
  %331 = sext i32 %325 to i64, !dbg !2707
  %332 = getelementptr inbounds i8*, i8** %3, i64 %331, !dbg !2707
  %333 = load i8*, i8** %332, align 8, !dbg !2707, !tbaa !608
  %334 = load i8, i8* %333, align 1, !dbg !2707, !tbaa !754
  %335 = icmp eq i8 %334, 0, !dbg !2708
  br label %336, !dbg !2709

; <label>:336:                                    ; preds = %296, %308, %279, %286, %262, %269, %245, %252, %228, %235, %211, %218, %194, %201, %177, %184, %160, %167, %127, %134, %110, %117, %101, %98, %87, %78, %75, %64, %0, %329, %317, %144, %52, %40, %28, %16
  %337 = phi i1 [ %335, %329 ], [ %323, %317 ], [ %154, %144 ], [ %58, %52 ], [ %46, %40 ], [ %34, %28 ], [ %22, %16 ], [ false, %0 ], [ false, %64 ], [ false, %75 ], [ %81, %78 ], [ false, %87 ], [ false, %98 ], [ %104, %101 ], [ false, %110 ], [ %121, %117 ], [ false, %127 ], [ %138, %134 ], [ false, %160 ], [ %171, %167 ], [ false, %177 ], [ %188, %184 ], [ false, %194 ], [ %205, %201 ], [ false, %211 ], [ %222, %218 ], [ false, %228 ], [ %239, %235 ], [ false, %245 ], [ %256, %252 ], [ false, %262 ], [ %273, %269 ], [ false, %279 ], [ %290, %286 ], [ false, %296 ], [ %311, %308 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %2) #10, !dbg !2710
  ret i1 %337, !dbg !2710
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_int(i8*) unnamed_addr #6 !dbg !2711 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2715, metadata !600), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2716, metadata !600), !dbg !2719
  %2 = tail call i16** @__ctype_b_loc() #1, !dbg !2720
  %3 = load i16*, i16** %2, align 8, !tbaa !608
  br label %4, !dbg !2724

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2716, metadata !600), !dbg !2719
  %6 = load i8, i8* %5, align 1, !dbg !2720, !tbaa !754
  %7 = zext i8 %6 to i64, !dbg !2720
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !2720
  %9 = load i16, i16* %8, align 2, !dbg !2720, !tbaa !2725
  %10 = and i16 %9, 1, !dbg !2720
  %11 = icmp eq i16 %10, 0, !dbg !2727
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !2729
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2716, metadata !600), !dbg !2719
  br i1 %11, label %13, label %4, !dbg !2727, !llvm.loop !2731

; <label>:13:                                     ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !2734
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2716, metadata !600), !dbg !2719
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2717, metadata !600), !dbg !2736
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2717, metadata !600), !dbg !2736
  %15 = icmp eq i8 %6, 45, !dbg !2737
  %16 = zext i1 %15 to i64, !dbg !2739
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !2716, metadata !600), !dbg !2719
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !2740
  %19 = select i1 %14, i8* %12, i8* %5, !dbg !2740
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2717, metadata !600), !dbg !2736
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !2716, metadata !600), !dbg !2719
  %20 = load i8, i8* %18, align 1, !dbg !2741, !tbaa !754
  %21 = sext i8 %20 to i32, !dbg !2741
  %22 = add nsw i32 %21, -48, !dbg !2741
  %23 = icmp ult i32 %22, 10, !dbg !2741
  br i1 %23, label %24, label %54, !dbg !2743

; <label>:24:                                     ; preds = %13
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi i8* [ %27, %25 ], [ %18, %24 ]
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !2716, metadata !600), !dbg !2719
  %28 = load i8, i8* %27, align 1, !dbg !2744, !tbaa !754
  %29 = sext i8 %28 to i32, !dbg !2744
  %30 = add nsw i32 %29, -48, !dbg !2744
  %31 = icmp ult i32 %30, 10, !dbg !2744
  br i1 %31, label %25, label %32, !dbg !2747, !llvm.loop !2748

; <label>:32:                                     ; preds = %25
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !2716, metadata !600), !dbg !2719
  %33 = zext i8 %28 to i64, !dbg !2751
  %34 = getelementptr inbounds i16, i16* %3, i64 %33, !dbg !2751
  %35 = load i16, i16* %34, align 2, !dbg !2751, !tbaa !2725
  %36 = and i16 %35, 1, !dbg !2751
  %37 = icmp eq i16 %36, 0, !dbg !2752
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !2716, metadata !600), !dbg !2719
  br i1 %37, label %50, label %38, !dbg !2752, !llvm.loop !2753

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !2755
  br label %40, !dbg !2752

; <label>:40:                                     ; preds = %38, %40
  %41 = phi i8* [ %39, %38 ], [ %48, %40 ]
  %42 = load i8, i8* %41, align 1, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !2716, metadata !600), !dbg !2719
  %43 = zext i8 %42 to i64, !dbg !2751
  %44 = getelementptr inbounds i16, i16* %3, i64 %43, !dbg !2751
  %45 = load i16, i16* %44, align 2, !dbg !2751, !tbaa !2725
  %46 = and i16 %45, 1, !dbg !2751
  %47 = icmp eq i16 %46, 0, !dbg !2752
  %48 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !2716, metadata !600), !dbg !2719
  br i1 %47, label %49, label %40, !dbg !2752, !llvm.loop !2753

; <label>:49:                                     ; preds = %40
  br label %50, !dbg !2756

; <label>:50:                                     ; preds = %49, %32
  %51 = phi i8 [ %28, %32 ], [ %42, %49 ]
  %52 = icmp eq i8 %51, 0, !dbg !2756
  br i1 %52, label %53, label %54, !dbg !2758

; <label>:53:                                     ; preds = %50
  ret i8* %19, !dbg !2759

; <label>:54:                                     ; preds = %50, %13
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i32 5) #10, !dbg !2760
  %56 = tail call i8* @quote(i8* %0) #10, !dbg !2761
  tail call void (i8*, ...) @test_syntax_error(i8* %55, i8* %56) #15, !dbg !2763
  unreachable, !dbg !2765
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !2766 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2768, metadata !600), !dbg !2769
  store i8* %0, i8** @file_name, align 8, !dbg !2770, !tbaa !608
  ret void, !dbg !2771
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !2772 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2774, metadata !885), !dbg !2775
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2776, !tbaa !2777
  ret void, !dbg !2779
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !2780 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2785, !tbaa !608
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !2786
  %3 = icmp eq i32 %2, 0, !dbg !2787
  br i1 %3, label %21, label %4, !dbg !2788

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2789, !tbaa !2777, !range !2791
  %6 = icmp eq i8 %5, 0, !dbg !2789
  %7 = tail call i32* @__errno_location() #1, !dbg !2792
  br i1 %6, label %11, label %8, !dbg !2794

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !2795, !tbaa !723
  %10 = icmp eq i32 %9, 32, !dbg !2797
  br i1 %10, label %21, label %11, !dbg !2798

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !2800
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2782, metadata !600), !dbg !2801
  %13 = load i8*, i8** @file_name, align 8, !dbg !2802, !tbaa !608
  %14 = icmp eq i8* %13, null, !dbg !2802
  %15 = load i32, i32* %7, align 4, !tbaa !723
  br i1 %14, label %18, label %16, !dbg !2803

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !2804
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.36, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !2806
  br label %19, !dbg !2808

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.37, i64 0, i64 0), i8* %12) #10, !dbg !2809
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2810, !tbaa !723
  tail call void @_exit(i32 %20) #14, !dbg !2811
  unreachable, !dbg !2811

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2812, !tbaa !608
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !2814
  %24 = icmp eq i32 %23, 0, !dbg !2815
  br i1 %24, label %27, label %25, !dbg !2816

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2817, !tbaa !723
  tail call void @_exit(i32 %26) #14, !dbg !2818
  unreachable, !dbg !2818

; <label>:27:                                     ; preds = %21
  ret void, !dbg !2819
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !2820 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2825, metadata !600), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2826, metadata !600), !dbg !2829
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2830
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2827, metadata !600), !dbg !2831
  store i8 0, i8* %3, align 1, !dbg !2832, !tbaa !754
  br label %4, !dbg !2833

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2827, metadata !600), !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2825, metadata !600), !dbg !2828
  %7 = urem i64 %5, 10, !dbg !2834
  %8 = trunc i64 %7 to i8, !dbg !2837
  %9 = or i8 %8, 48, !dbg !2837
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2838
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2827, metadata !600), !dbg !2831
  store i8 %9, i8* %10, align 1, !dbg !2839, !tbaa !754
  %11 = udiv i64 %5, 10, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2825, metadata !600), !dbg !2828
  %12 = icmp ugt i64 %5, 9, !dbg !2841
  br i1 %12, label %4, label %13, !dbg !2842, !llvm.loop !2844

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2827, metadata !600), !dbg !2831
  ret i8* %10, !dbg !2847
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2848 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2850, metadata !600), !dbg !2853
  %2 = icmp eq i8* %0, null, !dbg !2854
  br i1 %2, label %3, label %6, !dbg !2856

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2857, !tbaa !608
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2859
  tail call void @abort() #14, !dbg !2860
  unreachable, !dbg !2860

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2851, metadata !600), !dbg !2862
  %8 = icmp ne i8* %7, null, !dbg !2863
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2864
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2866
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2852, metadata !600), !dbg !2867
  %11 = ptrtoint i8* %10 to i64, !dbg !2868
  %12 = ptrtoint i8* %0 to i64, !dbg !2868
  %13 = sub i64 %11, %12, !dbg !2868
  %14 = icmp sgt i64 %13, 6, !dbg !2870
  br i1 %14, label %15, label %24, !dbg !2871

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2872
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.47, i64 0, i64 0), i64 7) #13, !dbg !2872
  %18 = icmp eq i32 %17, 0, !dbg !2874
  br i1 %18, label %19, label %24, !dbg !2875

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2850, metadata !600), !dbg !2853
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.48, i64 0, i64 0), i64 3) #13, !dbg !2876
  %21 = icmp eq i32 %20, 0, !dbg !2879
  br i1 %21, label %22, label %24, !dbg !2880

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2881
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2850, metadata !600), !dbg !2853
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2883, !tbaa !608
  br label %24, !dbg !2884

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2850, metadata !600), !dbg !2853
  store i8* %25, i8** @program_name, align 8, !dbg !2885, !tbaa !608
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2886, !tbaa !608
  ret void, !dbg !2887
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2888 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2893, metadata !600), !dbg !2896
  %2 = tail call i32* @__errno_location() #1, !dbg !2897
  %3 = load i32, i32* %2, align 4, !dbg !2897, !tbaa !723
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2894, metadata !600), !dbg !2898
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2899
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2900
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2900
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2902
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2895, metadata !600), !dbg !2903
  store i32 %3, i32* %2, align 4, !dbg !2904, !tbaa !723
  ret %struct.quoting_options* %8, !dbg !2905
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2906 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2912, metadata !600), !dbg !2913
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2914
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2914
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2915
  %5 = load i32, i32* %4, align 8, !dbg !2915, !tbaa !2917
  ret i32 %5, !dbg !2919
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2920 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2924, metadata !600), !dbg !2926
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2925, metadata !600), !dbg !2927
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2928
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2928
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2929
  store i32 %1, i32* %5, align 8, !dbg !2931, !tbaa !2917
  ret void, !dbg !2932
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2933 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2937, metadata !600), !dbg !2945
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2938, metadata !600), !dbg !2946
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2939, metadata !600), !dbg !2947
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2940, metadata !600), !dbg !2948
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2949
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2949
  %6 = lshr i8 %1, 5, !dbg !2950
  %7 = zext i8 %6 to i64, !dbg !2950
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2952
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2941, metadata !600), !dbg !2953
  %9 = and i8 %1, 31, !dbg !2954
  %10 = zext i8 %9 to i32, !dbg !2955
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2943, metadata !600), !dbg !2956
  %11 = load i32, i32* %8, align 4, !dbg !2957, !tbaa !723
  %12 = lshr i32 %11, %10, !dbg !2958
  %13 = and i32 %12, 1, !dbg !2959
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2944, metadata !600), !dbg !2960
  %14 = and i32 %2, 1, !dbg !2961
  %15 = xor i32 %13, %14, !dbg !2962
  %16 = shl i32 %15, %10, !dbg !2963
  %17 = xor i32 %16, %11, !dbg !2964
  store i32 %17, i32* %8, align 4, !dbg !2964, !tbaa !723
  ret i32 %13, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2966 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2970, metadata !600), !dbg !2973
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2971, metadata !600), !dbg !2974
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2975
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2970, metadata !600), !dbg !2973
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2977
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2970, metadata !600), !dbg !2973
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2978
  %6 = load i32, i32* %5, align 4, !dbg !2978, !tbaa !2979
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2972, metadata !600), !dbg !2980
  store i32 %1, i32* %5, align 4, !dbg !2981, !tbaa !2979
  ret i32 %6, !dbg !2982
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2983 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2987, metadata !600), !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2988, metadata !600), !dbg !2991
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2989, metadata !600), !dbg !2992
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2993
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2987, metadata !600), !dbg !2990
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2995
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2987, metadata !600), !dbg !2990
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2996
  store i32 10, i32* %6, align 8, !dbg !2997, !tbaa !2917
  %7 = icmp ne i8* %1, null, !dbg !2998
  %8 = icmp ne i8* %2, null, !dbg !3000
  %9 = and i1 %7, %8, !dbg !3002
  br i1 %9, label %11, label %10, !dbg !3002

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3003
  unreachable, !dbg !3003

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3004
  store i8* %1, i8** %12, align 8, !dbg !3005, !tbaa !3006
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3007
  store i8* %2, i8** %13, align 8, !dbg !3008, !tbaa !3009
  ret void, !dbg !3010
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !3011 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3015, metadata !600), !dbg !3023
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3016, metadata !600), !dbg !3024
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3017, metadata !600), !dbg !3025
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3018, metadata !600), !dbg !3026
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3019, metadata !600), !dbg !3027
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !3028
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !3028
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !3020, metadata !600), !dbg !3029
  %8 = tail call i32* @__errno_location() #1, !dbg !3030
  %9 = load i32, i32* %8, align 4, !dbg !3030, !tbaa !723
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3021, metadata !600), !dbg !3031
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3032
  %11 = load i32, i32* %10, align 8, !dbg !3032, !tbaa !2917
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3033
  %13 = load i32, i32* %12, align 4, !dbg !3033, !tbaa !2979
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3034
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3035
  %16 = load i8*, i8** %15, align 8, !dbg !3035, !tbaa !3006
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3036
  %18 = load i8*, i8** %17, align 8, !dbg !3036, !tbaa !3009
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3022, metadata !600), !dbg !3038
  store i32 %9, i32* %8, align 4, !dbg !3039, !tbaa !723
  ret i64 %19, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !3041 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3047, metadata !600), !dbg !3110
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3048, metadata !600), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3049, metadata !600), !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3050, metadata !600), !dbg !3113
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3051, metadata !600), !dbg !3114
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3052, metadata !600), !dbg !3115
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !3053, metadata !600), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3054, metadata !600), !dbg !3117
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3055, metadata !600), !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3057, metadata !600), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3058, metadata !600), !dbg !3120
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3059, metadata !600), !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3060, metadata !600), !dbg !3122
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3061, metadata !600), !dbg !3123
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !3124
  %14 = icmp eq i64 %13, 1, !dbg !3125
  %15 = lshr i32 %5, 1, !dbg !3126
  %16 = trunc i32 %15 to i8, !dbg !3126
  %17 = and i8 %16, 1, !dbg !3126
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3063, metadata !600), !dbg !3126
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3064, metadata !600), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3065, metadata !600), !dbg !3128
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3066, metadata !600), !dbg !3129
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !3130

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3048, metadata !600), !dbg !3111
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !3066, metadata !600), !dbg !3129
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !3065, metadata !600), !dbg !3128
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3063, metadata !600), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3050, metadata !600), !dbg !3113
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !3061, metadata !600), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3060, metadata !600), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !3059, metadata !600), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !3058, metadata !600), !dbg !3120
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !3055, metadata !600), !dbg !3118
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3054, metadata !600), !dbg !3117
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !3051, metadata !600), !dbg !3114
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
  ], !dbg !3131

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3051, metadata !600), !dbg !3114
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3063, metadata !600), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3063, metadata !600), !dbg !3126
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3051, metadata !600), !dbg !3114
  br label %95, !dbg !3132

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3063, metadata !600), !dbg !3126
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3051, metadata !600), !dbg !3114
  %43 = and i8 %36, 1, !dbg !3134
  %44 = icmp eq i8 %43, 0, !dbg !3134
  br i1 %44, label %45, label %95, !dbg !3132

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3136
  br i1 %46, label %95, label %47, !dbg !3140

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !3142, !tbaa !754
  br label %95, !dbg !3142

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %28), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3054, metadata !600), !dbg !3117
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %28), !dbg !3148
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3055, metadata !600), !dbg !3118
  br label %51, !dbg !3149

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3055, metadata !600), !dbg !3118
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3054, metadata !600), !dbg !3117
  %54 = and i8 %36, 1, !dbg !3150
  %55 = icmp eq i8 %54, 0, !dbg !3150
  br i1 %55, label %56, label %73, !dbg !3152

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3059, metadata !600), !dbg !3121
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3057, metadata !600), !dbg !3119
  %57 = load i8, i8* %52, align 1, !dbg !3153, !tbaa !754
  %58 = icmp eq i8 %57, 0, !dbg !3157
  br i1 %58, label %73, label %59, !dbg !3157

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !3159

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !3159
  br i1 %64, label %65, label %67, !dbg !3163

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3165
  store i8 %61, i8* %66, align 1, !dbg !3165, !tbaa !754
  br label %67, !dbg !3165

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3057, metadata !600), !dbg !3119
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3059, metadata !600), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3059, metadata !600), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3057, metadata !600), !dbg !3119
  %70 = load i8, i8* %69, align 1, !dbg !3153, !tbaa !754
  %71 = icmp eq i8 %70, 0, !dbg !3157
  br i1 %71, label %72, label %60, !dbg !3157, !llvm.loop !3171

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !3119

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3061, metadata !600), !dbg !3123
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3059, metadata !600), !dbg !3121
  %75 = call i64 @strlen(i8* %53) #13, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !3060, metadata !600), !dbg !3122
  br label %95, !dbg !3175

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3061, metadata !600), !dbg !3123
  br label %77, !dbg !3176

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !3061, metadata !600), !dbg !3123
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3063, metadata !600), !dbg !3126
  br label %79, !dbg !3177

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !3063, metadata !600), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !3061, metadata !600), !dbg !3123
  %82 = and i8 %81, 1, !dbg !3178
  %83 = icmp eq i8 %82, 0, !dbg !3178
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3061, metadata !600), !dbg !3123
  %84 = select i1 %83, i8 1, i8 %80, !dbg !3180
  br label %85, !dbg !3180

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !3063, metadata !600), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !3061, metadata !600), !dbg !3123
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3051, metadata !600), !dbg !3114
  %88 = and i8 %87, 1, !dbg !3181
  %89 = icmp eq i8 %88, 0, !dbg !3181
  br i1 %89, label %90, label %95, !dbg !3183

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !3184
  br i1 %91, label %95, label %92, !dbg !3188

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !3190, !tbaa !754
  br label %95, !dbg !3190

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3063, metadata !600), !dbg !3126
  br label %95, !dbg !3192

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !3193
  unreachable, !dbg !3193

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !3063, metadata !600), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !3061, metadata !600), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !3060, metadata !600), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3059, metadata !600), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3055, metadata !600), !dbg !3118
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3054, metadata !600), !dbg !3117
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !3051, metadata !600), !dbg !3114
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3056, metadata !600), !dbg !3194
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
  br label %123, !dbg !3195

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3048, metadata !600), !dbg !3111
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !3066, metadata !600), !dbg !3129
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !3065, metadata !600), !dbg !3128
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !3050, metadata !600), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !3058, metadata !600), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !3056, metadata !600), !dbg !3194
  %132 = icmp eq i64 %127, -1, !dbg !3196
  br i1 %132, label %135, label %133, !dbg !3198

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !3199
  br i1 %134, label %597, label %139, !dbg !3201

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3203
  %137 = load i8, i8* %136, align 1, !dbg !3203, !tbaa !754
  %138 = icmp eq i8 %137, 0, !dbg !3205
  br i1 %138, label %597, label %139, !dbg !3201

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3072, metadata !600), !dbg !3206
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3073, metadata !600), !dbg !3207
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3074, metadata !600), !dbg !3208
  br i1 %109, label %140, label %155, !dbg !3209

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !3211
  %142 = and i1 %110, %132, !dbg !3213
  br i1 %142, label %143, label %145, !dbg !3213

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !3214
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !3050, metadata !600), !dbg !3113
  br label %145, !dbg !3215

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !3050, metadata !600), !dbg !3113
  %147 = icmp ugt i64 %141, %146, !dbg !3217
  br i1 %147, label %155, label %148, !dbg !3219

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3220
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !3221
  %151 = icmp ne i32 %150, 0, !dbg !3222
  %152 = or i1 %151, %112, !dbg !3222
  %153 = xor i1 %151, true, !dbg !3222
  %154 = zext i1 %153 to i8, !dbg !3222
  br i1 %152, label %155, label %644, !dbg !3222

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3072, metadata !600), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !3050, metadata !600), !dbg !3113
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3224
  %159 = load i8, i8* %158, align 1, !dbg !3224, !tbaa !754
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3067, metadata !600), !dbg !3225
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
  ], !dbg !3226

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !3227

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !3228

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3073, metadata !600), !dbg !3207
  %163 = and i8 %128, 1, !dbg !3233
  %164 = icmp eq i8 %163, 0, !dbg !3233
  %165 = and i1 %114, %164, !dbg !3236
  br i1 %165, label %166, label %182, !dbg !3236

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !3238
  br i1 %167, label %168, label %170, !dbg !3243

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3245
  store i8 39, i8* %169, align 1, !dbg !3245, !tbaa !754
  br label %170, !dbg !3245

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !3057, metadata !600), !dbg !3119
  %172 = icmp ult i64 %171, %131, !dbg !3249
  br i1 %172, label %173, label %175, !dbg !3253

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !3255
  store i8 36, i8* %174, align 1, !dbg !3255, !tbaa !754
  br label %175, !dbg !3255

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !3257
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !3057, metadata !600), !dbg !3119
  %177 = icmp ult i64 %176, %131, !dbg !3259
  br i1 %177, label %178, label %180, !dbg !3263

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !3265
  store i8 39, i8* %179, align 1, !dbg !3265, !tbaa !754
  br label %180, !dbg !3265

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3064, metadata !600), !dbg !3127
  br label %182, !dbg !3269

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3057, metadata !600), !dbg !3119
  %185 = icmp ult i64 %183, %131, !dbg !3271
  br i1 %185, label %186, label %188, !dbg !3275

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !3277
  store i8 92, i8* %187, align 1, !dbg !3277, !tbaa !754
  br label %188, !dbg !3277

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !3057, metadata !600), !dbg !3119
  br i1 %106, label %190, label %476, !dbg !3281

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !3283
  %192 = icmp ult i64 %191, %156, !dbg !3285
  br i1 %192, label %193, label %476, !dbg !3286

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !3287
  %195 = load i8, i8* %194, align 1, !dbg !3287, !tbaa !754
  %196 = add i8 %195, -48, !dbg !3289
  %197 = icmp ult i8 %196, 10, !dbg !3289
  br i1 %197, label %198, label %476, !dbg !3289

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !3290
  br i1 %199, label %200, label %202, !dbg !3295

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3297
  store i8 48, i8* %201, align 1, !dbg !3297, !tbaa !754
  br label %202, !dbg !3297

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !3299
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !3057, metadata !600), !dbg !3119
  %204 = icmp ult i64 %203, %131, !dbg !3301
  br i1 %204, label %205, label %207, !dbg !3305

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !3307
  store i8 48, i8* %206, align 1, !dbg !3307, !tbaa !754
  br label %207, !dbg !3307

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !3057, metadata !600), !dbg !3119
  br label %476, !dbg !3311

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !3312

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !3313

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !3314

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !3316

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !3318
  %215 = icmp ult i64 %214, %156, !dbg !3320
  br i1 %215, label %216, label %476, !dbg !3321

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !3322
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3324
  %219 = load i8, i8* %218, align 1, !dbg !3324, !tbaa !754
  %220 = icmp eq i8 %219, 63, !dbg !3325
  br i1 %220, label %221, label %476, !dbg !3326

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3328
  %223 = load i8, i8* %222, align 1, !dbg !3328, !tbaa !754
  %224 = sext i8 %223 to i32, !dbg !3328
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
  ], !dbg !3329

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !3330

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !3067, metadata !600), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !3056, metadata !600), !dbg !3194
  %227 = icmp ult i64 %125, %131, !dbg !3332
  br i1 %227, label %228, label %230, !dbg !3336

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3338
  store i8 63, i8* %229, align 1, !dbg !3338, !tbaa !754
  br label %230, !dbg !3338

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !3057, metadata !600), !dbg !3119
  %232 = icmp ult i64 %231, %131, !dbg !3342
  br i1 %232, label %233, label %235, !dbg !3346

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3348
  store i8 34, i8* %234, align 1, !dbg !3348, !tbaa !754
  br label %235, !dbg !3348

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !3350
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !3057, metadata !600), !dbg !3119
  %237 = icmp ult i64 %236, %131, !dbg !3352
  br i1 %237, label %238, label %240, !dbg !3356

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3358
  store i8 34, i8* %239, align 1, !dbg !3358, !tbaa !754
  br label %240, !dbg !3358

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !3057, metadata !600), !dbg !3119
  %242 = icmp ult i64 %241, %131, !dbg !3362
  br i1 %242, label %243, label %245, !dbg !3366

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3368
  store i8 63, i8* %244, align 1, !dbg !3368, !tbaa !754
  br label %245, !dbg !3368

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !3370
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !3057, metadata !600), !dbg !3119
  br label %476, !dbg !3372

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !3071, metadata !600), !dbg !3373
  br label %257, !dbg !3374

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !3071, metadata !600), !dbg !3373
  br label %257, !dbg !3375

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !3071, metadata !600), !dbg !3373
  br label %255, !dbg !3376

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !3071, metadata !600), !dbg !3373
  br label %255, !dbg !3377

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !3071, metadata !600), !dbg !3373
  br label %257, !dbg !3378

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3071, metadata !600), !dbg !3373
  br i1 %114, label %253, label %254, !dbg !3379

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !3380

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !3383

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !3071, metadata !600), !dbg !3373
  br i1 %118, label %257, label %644, !dbg !3385

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !3071, metadata !600), !dbg !3373
  br i1 %105, label %503, label %476, !dbg !3387

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !3388
  br i1 %260, label %261, label %266, !dbg !3390

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !3391, !tbaa !754
  %263 = icmp ne i8 %262, 0, !dbg !3393
  %264 = icmp ne i64 %124, 0, !dbg !3394
  %265 = or i1 %264, %263, !dbg !3396
  br i1 %265, label %476, label %272, !dbg !3396

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !3397
  %268 = icmp ne i64 %124, 0, !dbg !3394
  %269 = or i1 %268, %267, !dbg !3399
  br i1 %269, label %476, label %272, !dbg !3399

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !3394
  br i1 %271, label %272, label %476, !dbg !3401

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3074, metadata !600), !dbg !3208
  br label %273, !dbg !3402

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !3074, metadata !600), !dbg !3208
  br i1 %118, label %476, label %644, !dbg !3403

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3065, metadata !600), !dbg !3128
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3074, metadata !600), !dbg !3208
  br i1 %114, label %276, label %476, !dbg !3405

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !3406

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !3409
  %279 = icmp ne i64 %126, 0, !dbg !3411
  %280 = or i1 %279, %278, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3058, metadata !600), !dbg !3120
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3048, metadata !600), !dbg !3111
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !3413
  %282 = select i1 %280, i64 %131, i64 0, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !3048, metadata !600), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !3058, metadata !600), !dbg !3120
  %283 = icmp ult i64 %125, %282, !dbg !3414
  br i1 %283, label %284, label %286, !dbg !3418

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3420
  store i8 39, i8* %285, align 1, !dbg !3420, !tbaa !754
  br label %286, !dbg !3420

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !3057, metadata !600), !dbg !3119
  %288 = icmp ult i64 %287, %282, !dbg !3424
  br i1 %288, label %289, label %291, !dbg !3428

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3430
  store i8 92, i8* %290, align 1, !dbg !3430, !tbaa !754
  br label %291, !dbg !3430

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !3057, metadata !600), !dbg !3119
  %293 = icmp ult i64 %292, %282, !dbg !3434
  br i1 %293, label %294, label %296, !dbg !3438

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3440
  store i8 39, i8* %295, align 1, !dbg !3440, !tbaa !754
  br label %296, !dbg !3440

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3064, metadata !600), !dbg !3127
  br label %476, !dbg !3444

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !3445

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3075, metadata !600), !dbg !3446
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !3447
  %301 = load i16*, i16** %300, align 8, !dbg !3447, !tbaa !608
  %302 = zext i8 %159 to i64, !dbg !3447
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3447
  %304 = load i16, i16* %303, align 2, !dbg !3447, !tbaa !2725
  %305 = lshr i16 %304, 14, !dbg !3449
  %306 = trunc i16 %305 to i8, !dbg !3449
  %307 = and i8 %306, 1, !dbg !3449
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !3078, metadata !600), !dbg !3450
  br label %368, !dbg !3451

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !3452
  store i64 0, i64* %10, align 8, !dbg !3453
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3075, metadata !600), !dbg !3446
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3078, metadata !600), !dbg !3450
  %309 = icmp eq i64 %156, -1, !dbg !3454
  br i1 %309, label %310, label %312, !dbg !3456, !llvm.loop !3457

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !3050, metadata !600), !dbg !3113
  br label %312, !dbg !3461, !llvm.loop !3457

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !3450

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !3078, metadata !600), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3075, metadata !600), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !3050, metadata !600), !dbg !3113
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !3462
  %317 = add i64 %315, %124, !dbg !3463
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3464
  %319 = sub i64 %313, %317, !dbg !3465
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3079, metadata !2123), !dbg !3466
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !3096, metadata !2123), !dbg !3467
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !3468
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !3099, metadata !600), !dbg !3469
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !3470

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3075, metadata !600), !dbg !3446
  %322 = icmp ugt i64 %313, %317, !dbg !3471
  br i1 %322, label %323, label %351, !dbg !3474

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !3475

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3475
  %328 = load i8, i8* %327, align 1, !dbg !3475, !tbaa !754
  %329 = icmp eq i8 %328, 0, !dbg !3477
  br i1 %329, label %348, label %330, !dbg !3478

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !3480
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3075, metadata !600), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3075, metadata !600), !dbg !3446
  %332 = add i64 %331, %124, !dbg !3481
  %333 = icmp ult i64 %332, %313, !dbg !3471
  br i1 %333, label %324, label %348, !dbg !3474, !llvm.loop !3482

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !3484
  %336 = and i1 %116, %335, !dbg !3488
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3100, metadata !600), !dbg !3489
  br i1 %336, label %337, label %355, !dbg !3488

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !3490

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !3490
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3491
  %342 = load i8, i8* %341, align 1, !dbg !3491, !tbaa !754
  %343 = sext i8 %342 to i32, !dbg !3491
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !3492

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3100, metadata !600), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3100, metadata !600), !dbg !3489
  %346 = icmp ult i64 %345, %320, !dbg !3484
  br i1 %346, label %338, label %354, !dbg !3495, !llvm.loop !3497

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !3450

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !3450

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !3450

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3078, metadata !600), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3075, metadata !600), !dbg !3446
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3500
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !3501

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !3501, !tbaa !723
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !3096, metadata !600), !dbg !3467
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !3503
  %358 = icmp eq i32 %357, 0, !dbg !3503
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3078, metadata !600), !dbg !3450
  %359 = select i1 %358, i8 0, i8 %316, !dbg !3504
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3078, metadata !600), !dbg !3450
  %360 = add i64 %320, %315, !dbg !3505
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3075, metadata !600), !dbg !3446
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3078, metadata !600), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3075, metadata !600), !dbg !3446
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3079, metadata !2123), !dbg !3466
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !3506
  %362 = icmp eq i32 %361, 0, !dbg !3507
  br i1 %362, label %314, label %363, !dbg !3508, !llvm.loop !3457

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !3510

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3510
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3078, metadata !600), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3075, metadata !600), !dbg !3446
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3500
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3510
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !3078, metadata !600), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !3075, metadata !600), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !3050, metadata !600), !dbg !3113
  %372 = and i8 %371, 1, !dbg !3511
  %373 = icmp ne i8 %372, 0, !dbg !3511
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !3074, metadata !600), !dbg !3208
  %374 = icmp ult i64 %370, 2, !dbg !3512
  %375 = or i1 %373, %113, !dbg !3513
  %376 = and i1 %374, %375, !dbg !3515
  br i1 %376, label %476, label %377, !dbg !3515

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !3516
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !3107, metadata !600), !dbg !3517
  br label %379, !dbg !3518

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !3073, metadata !600), !dbg !3207
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !3072, metadata !600), !dbg !3206
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !3067, metadata !600), !dbg !3225
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !3056, metadata !600), !dbg !3194
  br i1 %375, label %432, label %386, !dbg !3519

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !3524

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3073, metadata !600), !dbg !3207
  %388 = and i8 %382, 1, !dbg !3528
  %389 = icmp eq i8 %388, 0, !dbg !3528
  %390 = and i1 %114, %389, !dbg !3531
  br i1 %390, label %391, label %407, !dbg !3531

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !3533
  br i1 %392, label %393, label %395, !dbg !3538

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3540
  store i8 39, i8* %394, align 1, !dbg !3540, !tbaa !754
  br label %395, !dbg !3540

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !3542
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !3057, metadata !600), !dbg !3119
  %397 = icmp ult i64 %396, %131, !dbg !3544
  br i1 %397, label %398, label %400, !dbg !3548

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3550
  store i8 36, i8* %399, align 1, !dbg !3550, !tbaa !754
  br label %400, !dbg !3550

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !3057, metadata !600), !dbg !3119
  %402 = icmp ult i64 %401, %131, !dbg !3554
  br i1 %402, label %403, label %405, !dbg !3558

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3560
  store i8 39, i8* %404, align 1, !dbg !3560, !tbaa !754
  br label %405, !dbg !3560

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3064, metadata !600), !dbg !3127
  br label %407, !dbg !3564

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !3057, metadata !600), !dbg !3119
  %410 = icmp ult i64 %408, %131, !dbg !3566
  br i1 %410, label %411, label %413, !dbg !3570

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3572
  store i8 92, i8* %412, align 1, !dbg !3572, !tbaa !754
  br label %413, !dbg !3572

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !3057, metadata !600), !dbg !3119
  %415 = icmp ult i64 %414, %131, !dbg !3576
  br i1 %415, label %416, label %420, !dbg !3580

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !3582
  %418 = or i8 %417, 48, !dbg !3582
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3582
  store i8 %418, i8* %419, align 1, !dbg !3582, !tbaa !754
  br label %420, !dbg !3582

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !3057, metadata !600), !dbg !3119
  %422 = icmp ult i64 %421, %131, !dbg !3586
  br i1 %422, label %423, label %428, !dbg !3590

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !3592
  %425 = and i8 %424, 7, !dbg !3592
  %426 = or i8 %425, 48, !dbg !3592
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3592
  store i8 %426, i8* %427, align 1, !dbg !3592, !tbaa !754
  br label %428, !dbg !3592

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !3594
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !3057, metadata !600), !dbg !3119
  %430 = and i8 %383, 7, !dbg !3596
  %431 = or i8 %430, 48, !dbg !3597
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !3067, metadata !600), !dbg !3225
  br label %441, !dbg !3598

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !3599
  %434 = icmp eq i8 %433, 0, !dbg !3599
  br i1 %434, label %441, label %435, !dbg !3601

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !3602
  br i1 %436, label %437, label %439, !dbg !3607

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3609
  store i8 92, i8* %438, align 1, !dbg !3609, !tbaa !754
  br label %439, !dbg !3609

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3072, metadata !600), !dbg !3206
  br label %441, !dbg !3613

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !3073, metadata !600), !dbg !3207
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !3072, metadata !600), !dbg !3206
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !3067, metadata !600), !dbg !3225
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !3057, metadata !600), !dbg !3119
  %447 = add i64 %380, 1, !dbg !3614
  %448 = icmp ugt i64 %378, %447, !dbg !3616
  br i1 %448, label %449, label %541, !dbg !3617

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !3618
  %451 = icmp ne i8 %450, 0, !dbg !3618
  %452 = and i8 %446, 1, !dbg !3622
  %453 = icmp eq i8 %452, 0, !dbg !3622
  %454 = and i1 %451, %453, !dbg !3618
  br i1 %454, label %455, label %466, !dbg !3618

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !3624
  br i1 %456, label %457, label %459, !dbg !3629

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3631
  store i8 39, i8* %458, align 1, !dbg !3631, !tbaa !754
  br label %459, !dbg !3631

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !3633
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !3057, metadata !600), !dbg !3119
  %461 = icmp ult i64 %460, %131, !dbg !3635
  br i1 %461, label %462, label %464, !dbg !3639

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3641
  store i8 39, i8* %463, align 1, !dbg !3641, !tbaa !754
  br label %464, !dbg !3641

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3064, metadata !600), !dbg !3127
  br label %466, !dbg !3645

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !3057, metadata !600), !dbg !3119
  %469 = icmp ult i64 %467, %131, !dbg !3647
  br i1 %469, label %470, label %472, !dbg !3651

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3653
  store i8 %444, i8* %471, align 1, !dbg !3653, !tbaa !754
  br label %472, !dbg !3653

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !3655
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !3056, metadata !600), !dbg !3194
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3657
  %475 = load i8, i8* %474, align 1, !dbg !3657, !tbaa !754
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !3067, metadata !600), !dbg !3225
  br label %379, !dbg !3658, !llvm.loop !3660

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !3048, metadata !600), !dbg !3111
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !3074, metadata !600), !dbg !3208
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !3073, metadata !600), !dbg !3207
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3072, metadata !600), !dbg !3206
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !3067, metadata !600), !dbg !3225
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !3065, metadata !600), !dbg !3128
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !3050, metadata !600), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !3058, metadata !600), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !3056, metadata !600), !dbg !3194
  br i1 %107, label %488, label %487, !dbg !3663

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !3665

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !3666

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !3667
  %491 = zext i8 %490 to i64, !dbg !3667
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3669
  %493 = load i32, i32* %492, align 4, !dbg !3669, !tbaa !723
  %494 = and i8 %483, 31, !dbg !3670
  %495 = zext i8 %494 to i32, !dbg !3671
  %496 = shl i32 1, %495, !dbg !3672
  %497 = and i32 %493, %496, !dbg !3672
  %498 = icmp eq i32 %497, 0, !dbg !3672
  %499 = icmp eq i8 %157, 0, !dbg !3673
  %500 = and i1 %499, %498, !dbg !3674
  br i1 %500, label %542, label %503, !dbg !3674

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !3673
  br i1 %502, label %542, label %503, !dbg !3675

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !3048, metadata !600), !dbg !3111
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !3074, metadata !600), !dbg !3208
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !3067, metadata !600), !dbg !3225
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !3065, metadata !600), !dbg !3128
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !3050, metadata !600), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !3058, metadata !600), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !3056, metadata !600), !dbg !3194
  br i1 %112, label %513, label %644, !dbg !3677

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3073, metadata !600), !dbg !3207
  %514 = and i8 %508, 1, !dbg !3680
  %515 = icmp eq i8 %514, 0, !dbg !3680
  %516 = and i1 %114, %515, !dbg !3683
  br i1 %516, label %517, label %533, !dbg !3683

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !3685
  br i1 %518, label %519, label %521, !dbg !3690

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3692
  store i8 39, i8* %520, align 1, !dbg !3692, !tbaa !754
  br label %521, !dbg !3692

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !3694
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !3057, metadata !600), !dbg !3119
  %523 = icmp ult i64 %522, %512, !dbg !3696
  br i1 %523, label %524, label %526, !dbg !3700

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3702
  store i8 36, i8* %525, align 1, !dbg !3702, !tbaa !754
  br label %526, !dbg !3702

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !3057, metadata !600), !dbg !3119
  %528 = icmp ult i64 %527, %512, !dbg !3706
  br i1 %528, label %529, label %531, !dbg !3710

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3712
  store i8 39, i8* %530, align 1, !dbg !3712, !tbaa !754
  br label %531, !dbg !3712

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !3714
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3064, metadata !600), !dbg !3127
  br label %533, !dbg !3716

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !3057, metadata !600), !dbg !3119
  %536 = icmp ult i64 %534, %512, !dbg !3718
  br i1 %536, label %537, label %539, !dbg !3722

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3724
  store i8 92, i8* %538, align 1, !dbg !3724, !tbaa !754
  br label %539, !dbg !3724

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3048, metadata !600), !dbg !3111
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3074, metadata !600), !dbg !3208
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3073, metadata !600), !dbg !3207
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3067, metadata !600), !dbg !3225
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3065, metadata !600), !dbg !3128
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3050, metadata !600), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3058, metadata !600), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3056, metadata !600), !dbg !3194
  br label %569, !dbg !3728

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !3111

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3048, metadata !600), !dbg !3111
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3074, metadata !600), !dbg !3208
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3073, metadata !600), !dbg !3207
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3067, metadata !600), !dbg !3225
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3065, metadata !600), !dbg !3128
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3050, metadata !600), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3058, metadata !600), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3056, metadata !600), !dbg !3194
  %553 = and i8 %547, 1, !dbg !3728
  %554 = icmp ne i8 %553, 0, !dbg !3728
  %555 = and i8 %550, 1, !dbg !3732
  %556 = icmp eq i8 %555, 0, !dbg !3732
  %557 = and i1 %554, %556, !dbg !3728
  br i1 %557, label %558, label %569, !dbg !3728

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !3734
  br i1 %559, label %560, label %562, !dbg !3739

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3741
  store i8 39, i8* %561, align 1, !dbg !3741, !tbaa !754
  br label %562, !dbg !3741

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !3057, metadata !600), !dbg !3119
  %564 = icmp ult i64 %563, %552, !dbg !3745
  br i1 %564, label %565, label %567, !dbg !3749

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3751
  store i8 39, i8* %566, align 1, !dbg !3751, !tbaa !754
  br label %567, !dbg !3751

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3753
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !3057, metadata !600), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3064, metadata !600), !dbg !3127
  br label %569, !dbg !3755

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !3064, metadata !600), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !3057, metadata !600), !dbg !3119
  %579 = icmp ult i64 %577, %570, !dbg !3757
  br i1 %579, label %580, label %582, !dbg !3761

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3763
  store i8 %572, i8* %581, align 1, !dbg !3763, !tbaa !754
  br label %582, !dbg !3763

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3765
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !3057, metadata !600), !dbg !3119
  %584 = and i8 %571, 1, !dbg !3767
  %585 = icmp eq i8 %584, 0, !dbg !3767
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3066, metadata !600), !dbg !3129
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3769
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !3066, metadata !600), !dbg !3129
  br label %587, !dbg !3770

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !3056, metadata !600), !dbg !3194
  br label %123, !dbg !3773, !llvm.loop !3774

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3777
  %600 = and i1 %114, %599, !dbg !3779
  %601 = xor i1 %600, true, !dbg !3779
  %602 = or i1 %112, %601, !dbg !3779
  br i1 %602, label %603, label %648, !dbg !3779

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3780
  %605 = xor i1 %604, true, !dbg !3780
  %606 = and i8 %129, 1, !dbg !3782
  %607 = icmp eq i8 %606, 0, !dbg !3782
  %608 = or i1 %607, %605, !dbg !3780
  br i1 %608, label %618, label %609, !dbg !3780

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3784
  %611 = icmp eq i8 %610, 0, !dbg !3784
  br i1 %611, label %614, label %612, !dbg !3787

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3788
  br label %659, !dbg !3789

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3790
  %616 = icmp ne i64 %126, 0, !dbg !3792
  %617 = and i1 %616, %615, !dbg !3794
  br i1 %617, label %27, label %618, !dbg !3794

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3795
  %620 = and i1 %619, %112, !dbg !3797
  br i1 %620, label %621, label %638, !dbg !3797

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3059, metadata !600), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3057, metadata !600), !dbg !3119
  %622 = load i8, i8* %100, align 1, !dbg !3798, !tbaa !754
  %623 = icmp eq i8 %622, 0, !dbg !3802
  br i1 %623, label %638, label %624, !dbg !3802

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3804

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3804
  br i1 %629, label %630, label %632, !dbg !3808

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3810
  store i8 %626, i8* %631, align 1, !dbg !3810, !tbaa !754
  br label %632, !dbg !3810

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3057, metadata !600), !dbg !3119
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3814
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3059, metadata !600), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3059, metadata !600), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3057, metadata !600), !dbg !3119
  %635 = load i8, i8* %634, align 1, !dbg !3798, !tbaa !754
  %636 = icmp eq i8 %635, 0, !dbg !3802
  br i1 %636, label %637, label %625, !dbg !3802, !llvm.loop !3816

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !3119

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !3057, metadata !600), !dbg !3119
  %640 = icmp ult i64 %639, %131, !dbg !3819
  br i1 %640, label %641, label %659, !dbg !3821

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3822
  store i8 0, i8* %642, align 1, !dbg !3823, !tbaa !754
  br label %659, !dbg !3822

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !3111

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !3111

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !3111

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !3048, metadata !600), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !3050, metadata !600), !dbg !3113
  %653 = icmp ne i32 %650, 2, !dbg !3824
  %654 = icmp eq i8 %104, 0, !dbg !3826
  %655 = or i1 %653, %654, !dbg !3828
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3051, metadata !600), !dbg !3114
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3828
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !3051, metadata !600), !dbg !3114
  %657 = and i32 %5, -3, !dbg !3829
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3830
  br label %659, !dbg !3831

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3832
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3833 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3837, metadata !600), !dbg !3841
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3838, metadata !600), !dbg !3842
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3843
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3839, metadata !600), !dbg !3844
  %4 = icmp eq i8* %3, %0, !dbg !3845
  br i1 %4, label %5, label %75, !dbg !3847

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3848
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3840, metadata !600), !dbg !3849
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3850, metadata !600), !dbg !3866
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3864, metadata !600), !dbg !3869
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3865, metadata !600), !dbg !3870
  %7 = load i8, i8* %6, align 1, !tbaa !754
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3871
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3871

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3874, metadata !600), !dbg !3888
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3886, metadata !600), !dbg !3892
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3887, metadata !600), !dbg !3893
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !754
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3894
  %15 = icmp eq i32 %14, 84, !dbg !3894
  br i1 %15, label %16, label %72, !dbg !3894

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3897, metadata !600), !dbg !3910
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3908, metadata !600), !dbg !3914
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3909, metadata !600), !dbg !3915
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !754
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3916
  %21 = icmp eq i32 %20, 70, !dbg !3916
  br i1 %21, label %22, label %72, !dbg !3916

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3919, metadata !600), !dbg !3931
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3929, metadata !600), !dbg !3935
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3930, metadata !600), !dbg !3936
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !754
  %25 = icmp eq i8 %24, 45, !dbg !3937
  br i1 %25, label %26, label %72, !dbg !3940

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3942, metadata !600), !dbg !3953
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3951, metadata !600), !dbg !3957
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3952, metadata !600), !dbg !3958
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !754
  %29 = icmp eq i8 %28, 56, !dbg !3959
  br i1 %29, label %30, label %72, !dbg !3962

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3964, metadata !600), !dbg !3974
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3972, metadata !600), !dbg !3978
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3973, metadata !600), !dbg !3979
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !754
  %33 = icmp eq i8 %32, 0, !dbg !3980
  br i1 %33, label %34, label %72, !dbg !3983

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3985, !tbaa !754
  %36 = icmp eq i8 %35, 96, !dbg !3986
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !3985
  br label %75, !dbg !3987

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3874, metadata !600), !dbg !3988
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3886, metadata !600), !dbg !3992
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3887, metadata !600), !dbg !3993
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !754
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3994
  %43 = icmp eq i32 %42, 66, !dbg !3994
  br i1 %43, label %44, label %72, !dbg !3994

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3897, metadata !600), !dbg !3995
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3908, metadata !600), !dbg !3997
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3909, metadata !600), !dbg !3998
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !754
  %47 = icmp eq i8 %46, 49, !dbg !3999
  br i1 %47, label %48, label %72, !dbg !4001

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3919, metadata !600), !dbg !4003
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3929, metadata !600), !dbg !4005
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3930, metadata !600), !dbg !4006
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !754
  %51 = icmp eq i8 %50, 56, !dbg !4007
  br i1 %51, label %52, label %72, !dbg !4008

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3942, metadata !600), !dbg !4009
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3951, metadata !600), !dbg !4011
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3952, metadata !600), !dbg !4012
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !754
  %55 = icmp eq i8 %54, 48, !dbg !4013
  br i1 %55, label %56, label %72, !dbg !4014

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3964, metadata !600), !dbg !4015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3972, metadata !600), !dbg !4017
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3973, metadata !600), !dbg !4018
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !754
  %59 = icmp eq i8 %58, 51, !dbg !4019
  br i1 %59, label %60, label %72, !dbg !4020

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4021, metadata !600), !dbg !4030
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4028, metadata !600), !dbg !4034
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4029, metadata !600), !dbg !4035
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !754
  %63 = icmp eq i8 %62, 48, !dbg !4036
  br i1 %63, label %64, label %72, !dbg !4039

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4041, metadata !600), !dbg !4049
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4047, metadata !600), !dbg !4053
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4048, metadata !600), !dbg !4054
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !754
  %67 = icmp eq i8 %66, 0, !dbg !4055
  br i1 %67, label %68, label %72, !dbg !4058

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !4059, !tbaa !754
  %70 = icmp eq i8 %69, 96, !dbg !4060
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.67, i64 0, i64 0), !dbg !4059
  br label %75, !dbg !4061

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !4062
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !4063
  br label %75, !dbg !4064

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !4065
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4066 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4070, metadata !600), !dbg !4073
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4071, metadata !600), !dbg !4074
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4072, metadata !600), !dbg !4075
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4076, metadata !600) #10, !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4081, metadata !600) #10, !dbg !4091
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !4082, metadata !600) #10, !dbg !4092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4083, metadata !600) #10, !dbg !4093
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !4094
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !4094
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4084, metadata !600) #10, !dbg !4095
  %6 = tail call i32* @__errno_location() #1, !dbg !4096
  %7 = load i32, i32* %6, align 4, !dbg !4096, !tbaa !723
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4085, metadata !600) #10, !dbg !4097
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4098
  %9 = load i32, i32* %8, align 4, !dbg !4098, !tbaa !2979
  %10 = or i32 %9, 1, !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4086, metadata !600) #10, !dbg !4100
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4101
  %12 = load i32, i32* %11, align 8, !dbg !4101, !tbaa !2917
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !4102
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4103
  %15 = load i8*, i8** %14, align 8, !dbg !4103, !tbaa !3006
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4104
  %17 = load i8*, i8** %16, align 8, !dbg !4104, !tbaa !3009
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !4105
  %19 = add i64 %18, 1, !dbg !4106
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4087, metadata !600) #10, !dbg !4107
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4108, metadata !600) #10, !dbg !4113
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !4115
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !4088, metadata !600) #10, !dbg !4116
  %21 = load i32, i32* %11, align 8, !dbg !4117, !tbaa !2917
  %22 = load i8*, i8** %14, align 8, !dbg !4118, !tbaa !3006
  %23 = load i8*, i8** %16, align 8, !dbg !4119, !tbaa !3009
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !4120
  store i32 %7, i32* %6, align 4, !dbg !4121, !tbaa !723
  ret i8* %20, !dbg !4122
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4077 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4076, metadata !600), !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4081, metadata !600), !dbg !4124
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !4082, metadata !600), !dbg !4125
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4083, metadata !600), !dbg !4126
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !4127
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !4127
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4084, metadata !600), !dbg !4128
  %7 = tail call i32* @__errno_location() #1, !dbg !4129
  %8 = load i32, i32* %7, align 4, !dbg !4129, !tbaa !723
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !4085, metadata !600), !dbg !4130
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4131
  %10 = load i32, i32* %9, align 4, !dbg !4131, !tbaa !2979
  %11 = icmp ne i64* %2, null, !dbg !4132
  %12 = xor i1 %11, true, !dbg !4132
  %13 = zext i1 %12 to i32, !dbg !4132
  %14 = or i32 %10, %13, !dbg !4133
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !4086, metadata !600), !dbg !4134
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4135
  %16 = load i32, i32* %15, align 8, !dbg !4135, !tbaa !2917
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !4136
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4137
  %19 = load i8*, i8** %18, align 8, !dbg !4137, !tbaa !3006
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4138
  %21 = load i8*, i8** %20, align 8, !dbg !4138, !tbaa !3009
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !4139
  %23 = add i64 %22, 1, !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4087, metadata !600), !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4108, metadata !600) #10, !dbg !4142
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !4144
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4088, metadata !600), !dbg !4145
  %25 = load i32, i32* %15, align 8, !dbg !4146, !tbaa !2917
  %26 = load i8*, i8** %18, align 8, !dbg !4147, !tbaa !3006
  %27 = load i8*, i8** %20, align 8, !dbg !4148, !tbaa !3009
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !4149
  store i32 %8, i32* %7, align 4, !dbg !4150, !tbaa !723
  br i1 %11, label %29, label %30, !dbg !4151

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !4152, !tbaa !4154
  br label %30, !dbg !4155

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !4156
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !4157 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4161, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !4159, metadata !600), !dbg !4162
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4160, metadata !600), !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4160, metadata !600), !dbg !4163
  %2 = load i32, i32* @nslots, align 4, !dbg !4164, !tbaa !723
  %3 = icmp sgt i32 %2, 1, !dbg !4168
  br i1 %3, label %4, label %14, !dbg !4169

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !4171

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !4171
  %8 = load i8*, i8** %7, align 8, !dbg !4171, !tbaa !4172
  tail call void @free(i8* %8) #10, !dbg !4174
  %9 = add nuw i64 %6, 1, !dbg !4175
  %10 = load i32, i32* @nslots, align 4, !dbg !4164, !tbaa !723
  %11 = sext i32 %10 to i64, !dbg !4168
  %12 = icmp slt i64 %9, %11, !dbg !4168
  br i1 %12, label %5, label %13, !dbg !4169, !llvm.loop !4177

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !4180

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !4180
  %16 = load i8*, i8** %15, align 8, !dbg !4180, !tbaa !4172
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4182
  br i1 %17, label %19, label %18, !dbg !4183

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !4184
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !4186, !tbaa !4187
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !4188, !tbaa !4172
  br label %19, !dbg !4189

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !4190
  br i1 %20, label %23, label %21, !dbg !4192

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !4193
  tail call void @free(i8* %22) #10, !dbg !4195
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4196, !tbaa !608
  br label %23, !dbg !4197

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !4198, !tbaa !723
  ret void, !dbg !4199
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !4200 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4204, metadata !600), !dbg !4206
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4205, metadata !600), !dbg !4207
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4208
  ret i8* %3, !dbg !4209
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !4210 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4214, metadata !600), !dbg !4228
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4215, metadata !600), !dbg !4229
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4216, metadata !600), !dbg !4230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4217, metadata !600), !dbg !4231
  %5 = tail call i32* @__errno_location() #1, !dbg !4232
  %6 = load i32, i32* %5, align 4, !dbg !4232, !tbaa !723
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4218, metadata !600), !dbg !4233
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4234, !tbaa !608
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !4219, metadata !600), !dbg !4235
  %8 = icmp slt i32 %0, 0, !dbg !4236
  br i1 %8, label %9, label %10, !dbg !4238

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !4239
  unreachable, !dbg !4239

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !4240, !tbaa !723
  %12 = icmp sgt i32 %11, %0, !dbg !4241
  br i1 %12, label %34, label %13, !dbg !4242

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4243
  %15 = icmp ugt i32 %0, 2147483646, !dbg !4244
  br i1 %15, label %16, label %17, !dbg !4246

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4247
  unreachable, !dbg !4247

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !4248
  %19 = select i1 %14, i8* null, i8* %18, !dbg !4248
  %20 = add nsw i32 %0, 1, !dbg !4250
  %21 = sext i32 %20 to i64, !dbg !4251
  %22 = shl nsw i64 %21, 4, !dbg !4252
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !4253
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4253
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !4219, metadata !600), !dbg !4235
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4254, !tbaa !608
  br i1 %14, label %25, label %26, !dbg !4255

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4256, !tbaa.struct !4258
  br label %26, !dbg !4259

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !4260, !tbaa !723
  %28 = sext i32 %27 to i64, !dbg !4261
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4261
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4262
  %31 = sub nsw i32 %20, %27, !dbg !4263
  %32 = sext i32 %31 to i64, !dbg !4264
  %33 = shl nsw i64 %32, 4, !dbg !4265
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4262
  store i32 %20, i32* @nslots, align 4, !dbg !4266, !tbaa !723
  br label %34, !dbg !4267

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !4219, metadata !600), !dbg !4235
  %36 = sext i32 %0 to i64, !dbg !4268
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4269
  %38 = load i64, i64* %37, align 8, !dbg !4269, !tbaa !4187
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4223, metadata !600), !dbg !4270
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4271
  %40 = load i8*, i8** %39, align 8, !dbg !4271, !tbaa !4172
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4225, metadata !600), !dbg !4272
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4273
  %42 = load i32, i32* %41, align 4, !dbg !4273, !tbaa !2979
  %43 = or i32 %42, 1, !dbg !4274
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4226, metadata !600), !dbg !4275
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4276
  %45 = load i32, i32* %44, align 8, !dbg !4276, !tbaa !2917
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4277
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4278
  %48 = load i8*, i8** %47, align 8, !dbg !4278, !tbaa !3006
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4279
  %50 = load i8*, i8** %49, align 8, !dbg !4279, !tbaa !3009
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4280
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4227, metadata !600), !dbg !4281
  %52 = icmp ugt i64 %38, %51, !dbg !4282
  br i1 %52, label %63, label %53, !dbg !4284

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !4285
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4223, metadata !600), !dbg !4270
  store i64 %54, i64* %37, align 8, !dbg !4287, !tbaa !4187
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4288
  br i1 %55, label %57, label %56, !dbg !4290

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !4291
  br label %57, !dbg !4291

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4108, metadata !600) #10, !dbg !4292
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !4294
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4225, metadata !600), !dbg !4272
  store i8* %58, i8** %39, align 8, !dbg !4295, !tbaa !4172
  %59 = load i32, i32* %44, align 8, !dbg !4296, !tbaa !2917
  %60 = load i8*, i8** %47, align 8, !dbg !4297, !tbaa !3006
  %61 = load i8*, i8** %49, align 8, !dbg !4298, !tbaa !3009
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4299
  br label %63, !dbg !4300

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4225, metadata !600), !dbg !4272
  store i32 %6, i32* %5, align 4, !dbg !4301, !tbaa !723
  ret i8* %64, !dbg !4302
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4303 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4307, metadata !600), !dbg !4310
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4308, metadata !600), !dbg !4311
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4309, metadata !600), !dbg !4312
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4313
  ret i8* %4, !dbg !4314
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !4315 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4319, metadata !600), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4204, metadata !600) #10, !dbg !4321
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4205, metadata !600) #10, !dbg !4323
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4324
  ret i8* %2, !dbg !4325
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4326 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4330, metadata !600), !dbg !4332
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4331, metadata !600), !dbg !4333
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4307, metadata !600) #10, !dbg !4334
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4308, metadata !600) #10, !dbg !4336
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4309, metadata !600) #10, !dbg !4337
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4338
  ret i8* %3, !dbg !4339
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4340 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4348, metadata !4354), !dbg !4355
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4344, metadata !600), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4345, metadata !600), !dbg !4358
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4346, metadata !600), !dbg !4359
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4360
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4360
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4347, metadata !2123), !dbg !4361
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4353, metadata !600) #10, !dbg !4362
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4363
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4363
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4348, metadata !600) #10, !dbg !4355
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !4364) #10, !dbg !4355
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4355
  %8 = icmp eq i32 %1, 10, !dbg !4365
  br i1 %8, label %9, label %10, !dbg !4367

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4368, !noalias !4369
  unreachable, !dbg !4368

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4348, metadata !4364) #10, !dbg !4355
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4372
  store i32 %1, i32* %11, align 8, !dbg !4372, !alias.scope !4369
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4372
  %13 = bitcast i32* %12 to i8*, !dbg !4372
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4372
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4373
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4347, metadata !2123), !dbg !4361
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4374
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4375
  ret i8* %14, !dbg !4376
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4377 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4348, metadata !4354), !dbg !4386
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4381, metadata !600), !dbg !4388
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4382, metadata !600), !dbg !4389
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4383, metadata !600), !dbg !4390
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4384, metadata !600), !dbg !4391
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4392
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4392
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4385, metadata !2123), !dbg !4393
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4353, metadata !600) #10, !dbg !4394
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4395
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4395
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4348, metadata !600) #10, !dbg !4386
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !4364) #10, !dbg !4386
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4386
  %9 = icmp eq i32 %1, 10, !dbg !4396
  br i1 %9, label %10, label %11, !dbg !4397

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4398, !noalias !4399
  unreachable, !dbg !4398

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4348, metadata !4364) #10, !dbg !4386
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4402
  store i32 %1, i32* %12, align 8, !dbg !4402, !alias.scope !4399
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4402
  %14 = bitcast i32* %13 to i8*, !dbg !4402
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !4402
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4385, metadata !2123), !dbg !4393
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4404
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4405
  ret i8* %15, !dbg !4406
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4407 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4348, metadata !4354), !dbg !4413
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4411, metadata !600), !dbg !4416
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4412, metadata !600), !dbg !4417
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4344, metadata !600) #10, !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4345, metadata !600) #10, !dbg !4419
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4346, metadata !600) #10, !dbg !4420
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4421
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4421
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4347, metadata !2123) #10, !dbg !4422
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4353, metadata !600) #10, !dbg !4423
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4424
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4424
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4348, metadata !600) #10, !dbg !4413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !4364) #10, !dbg !4413
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4413
  %7 = icmp eq i32 %0, 10, !dbg !4425
  br i1 %7, label %8, label %9, !dbg !4426

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !4427, !noalias !4428
  unreachable, !dbg !4427

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4348, metadata !4364) #10, !dbg !4413
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4431
  store i32 %0, i32* %10, align 8, !dbg !4431, !alias.scope !4428
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4431
  %12 = bitcast i32* %11 to i8*, !dbg !4431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !4431
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4347, metadata !2123) #10, !dbg !4422
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4433
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4434
  ret i8* %13, !dbg !4435
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4436 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4348, metadata !4354), !dbg !4443
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4440, metadata !600), !dbg !4446
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4441, metadata !600), !dbg !4447
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4442, metadata !600), !dbg !4448
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4381, metadata !600) #10, !dbg !4449
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4382, metadata !600) #10, !dbg !4450
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4383, metadata !600) #10, !dbg !4451
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4384, metadata !600) #10, !dbg !4452
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4453
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4453
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4385, metadata !2123) #10, !dbg !4454
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4353, metadata !600) #10, !dbg !4455
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4456
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4456
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4348, metadata !600) #10, !dbg !4443
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !4364) #10, !dbg !4443
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4443
  %8 = icmp eq i32 %0, 10, !dbg !4457
  br i1 %8, label %9, label %10, !dbg !4458

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4459, !noalias !4460
  unreachable, !dbg !4459

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4348, metadata !4364) #10, !dbg !4443
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4463
  store i32 %0, i32* %11, align 8, !dbg !4463, !alias.scope !4460
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4463
  %13 = bitcast i32* %12 to i8*, !dbg !4463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4463
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4464
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4385, metadata !2123) #10, !dbg !4454
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !4465
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4466
  ret i8* %14, !dbg !4467
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4468 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4472, metadata !600), !dbg !4476
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4473, metadata !600), !dbg !4477
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4474, metadata !600), !dbg !4478
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4479
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4479
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4480, !tbaa.struct !4481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4475, metadata !2123), !dbg !4482
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2937, metadata !600), !dbg !4483
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2938, metadata !600), !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2939, metadata !600), !dbg !4486
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2940, metadata !600), !dbg !4487
  %6 = lshr i8 %2, 5, !dbg !4488
  %7 = zext i8 %6 to i64, !dbg !4488
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4489
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2941, metadata !600), !dbg !4490
  %9 = and i8 %2, 31, !dbg !4491
  %10 = zext i8 %9 to i32, !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2943, metadata !600), !dbg !4493
  %11 = load i32, i32* %8, align 4, !dbg !4494, !tbaa !723
  %12 = lshr i32 %11, %10, !dbg !4495
  %13 = and i32 %12, 1, !dbg !4496
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2944, metadata !600), !dbg !4497
  %14 = xor i32 %13, 1, !dbg !4498
  %15 = shl i32 %14, %10, !dbg !4499
  %16 = xor i32 %15, %11, !dbg !4500
  store i32 %16, i32* %8, align 4, !dbg !4500, !tbaa !723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4475, metadata !2123), !dbg !4482
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4501
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4502
  ret i8* %17, !dbg !4503
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4504 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4508, metadata !600), !dbg !4510
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4509, metadata !600), !dbg !4511
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4472, metadata !600) #10, !dbg !4512
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4473, metadata !600) #10, !dbg !4514
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4474, metadata !600) #10, !dbg !4515
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4516
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4517, !tbaa.struct !4481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4475, metadata !2123) #10, !dbg !4518
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2937, metadata !600) #10, !dbg !4519
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2938, metadata !600) #10, !dbg !4521
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2939, metadata !600) #10, !dbg !4522
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2940, metadata !600) #10, !dbg !4523
  %5 = lshr i8 %1, 5, !dbg !4524
  %6 = zext i8 %5 to i64, !dbg !4524
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4525
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2941, metadata !600) #10, !dbg !4526
  %8 = and i8 %1, 31, !dbg !4527
  %9 = zext i8 %8 to i32, !dbg !4528
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2943, metadata !600) #10, !dbg !4529
  %10 = load i32, i32* %7, align 4, !dbg !4530, !tbaa !723
  %11 = lshr i32 %10, %9, !dbg !4531
  %12 = and i32 %11, 1, !dbg !4532
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2944, metadata !600) #10, !dbg !4533
  %13 = xor i32 %12, 1, !dbg !4534
  %14 = shl i32 %13, %9, !dbg !4535
  %15 = xor i32 %14, %10, !dbg !4536
  store i32 %15, i32* %7, align 4, !dbg !4536, !tbaa !723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4475, metadata !2123) #10, !dbg !4518
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !4537
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4538
  ret i8* %16, !dbg !4539
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4540 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4542, metadata !600), !dbg !4543
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4508, metadata !600) #10, !dbg !4544
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4509, metadata !600) #10, !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4472, metadata !600) #10, !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4473, metadata !600) #10, !dbg !4549
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4474, metadata !600) #10, !dbg !4550
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4551
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !4551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4552, !tbaa.struct !4481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4475, metadata !2123) #10, !dbg !4553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2937, metadata !600) #10, !dbg !4554
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2938, metadata !600) #10, !dbg !4556
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2939, metadata !600) #10, !dbg !4557
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2940, metadata !600) #10, !dbg !4558
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4559
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2941, metadata !600) #10, !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2943, metadata !600) #10, !dbg !4561
  %5 = load i32, i32* %4, align 4, !dbg !4562, !tbaa !723
  %6 = or i32 %5, 67108864, !dbg !4563
  store i32 %6, i32* %4, align 4, !dbg !4563, !tbaa !723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4475, metadata !2123) #10, !dbg !4553
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !4564
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !4565
  ret i8* %7, !dbg !4566
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4567 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4569, metadata !600), !dbg !4571
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4570, metadata !600), !dbg !4572
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4472, metadata !600) #10, !dbg !4573
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4473, metadata !600) #10, !dbg !4575
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4474, metadata !600) #10, !dbg !4576
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4577
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4577
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4578, !tbaa.struct !4481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4475, metadata !2123) #10, !dbg !4579
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2937, metadata !600) #10, !dbg !4580
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2938, metadata !600) #10, !dbg !4582
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2939, metadata !600) #10, !dbg !4583
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2940, metadata !600) #10, !dbg !4584
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4585
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2941, metadata !600) #10, !dbg !4586
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2943, metadata !600) #10, !dbg !4587
  %6 = load i32, i32* %5, align 4, !dbg !4588, !tbaa !723
  %7 = or i32 %6, 67108864, !dbg !4589
  store i32 %7, i32* %5, align 4, !dbg !4589, !tbaa !723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4475, metadata !2123) #10, !dbg !4579
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !4590
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4591
  ret i8* %8, !dbg !4592
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4593 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4348, metadata !4354), !dbg !4599
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4595, metadata !600), !dbg !4601
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4596, metadata !600), !dbg !4602
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4597, metadata !600), !dbg !4603
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4604
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4604
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4353, metadata !600) #10, !dbg !4605
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4606
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4606
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4348, metadata !600) #10, !dbg !4599
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4348, metadata !4364) #10, !dbg !4599
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4599
  %9 = icmp eq i32 %1, 10, !dbg !4607
  br i1 %9, label %10, label %11, !dbg !4608

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4609, !noalias !4610
  unreachable, !dbg !4609

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4348, metadata !4364) #10, !dbg !4599
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4613
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4614
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4615
  store i32 %1, i32* %13, align 8, !dbg !4615
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4615
  %15 = bitcast i32* %14 to i8*, !dbg !4615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4598, metadata !2123), !dbg !4616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2937, metadata !600), !dbg !4617
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2938, metadata !600), !dbg !4619
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2939, metadata !600), !dbg !4620
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2940, metadata !600), !dbg !4621
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4622
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2941, metadata !600), !dbg !4623
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2943, metadata !600), !dbg !4624
  %17 = load i32, i32* %16, align 4, !dbg !4625, !tbaa !723
  %18 = or i32 %17, 67108864, !dbg !4626
  store i32 %18, i32* %16, align 4, !dbg !4626, !tbaa !723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4598, metadata !2123), !dbg !4616
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4627
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4628
  ret i8* %19, !dbg !4629
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4630 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4634, metadata !600), !dbg !4638
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4635, metadata !600), !dbg !4639
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4636, metadata !600), !dbg !4640
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4637, metadata !600), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4642, metadata !600) #10, !dbg !4652
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4647, metadata !600) #10, !dbg !4654
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4648, metadata !600) #10, !dbg !4655
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4649, metadata !600) #10, !dbg !4656
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4650, metadata !600) #10, !dbg !4657
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4658
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4658
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4659, !tbaa.struct !4481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4651, metadata !2123) #10, !dbg !4660
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2987, metadata !600) #10, !dbg !4661
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2988, metadata !600) #10, !dbg !4663
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2989, metadata !600) #10, !dbg !4664
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2987, metadata !600) #10, !dbg !4661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2987, metadata !600) #10, !dbg !4661
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4665
  store i32 10, i32* %7, align 8, !dbg !4666, !tbaa !2917
  %8 = icmp ne i8* %1, null, !dbg !4667
  %9 = icmp ne i8* %2, null, !dbg !4668
  %10 = and i1 %8, %9, !dbg !4669
  br i1 %10, label %12, label %11, !dbg !4669

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4670
  unreachable, !dbg !4670

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4671
  store i8* %1, i8** %13, align 8, !dbg !4672, !tbaa !3006
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4673
  store i8* %2, i8** %14, align 8, !dbg !4674, !tbaa !3009
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4651, metadata !2123) #10, !dbg !4660
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4675
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4676
  ret i8* %15, !dbg !4677
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4643 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4642, metadata !600), !dbg !4678
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4647, metadata !600), !dbg !4679
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4648, metadata !600), !dbg !4680
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4649, metadata !600), !dbg !4681
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4650, metadata !600), !dbg !4682
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4683
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4683
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4684, !tbaa.struct !4481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4651, metadata !2123), !dbg !4685
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2987, metadata !600) #10, !dbg !4686
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2988, metadata !600) #10, !dbg !4688
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2989, metadata !600) #10, !dbg !4689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2987, metadata !600) #10, !dbg !4686
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2987, metadata !600) #10, !dbg !4686
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4690
  store i32 10, i32* %8, align 8, !dbg !4691, !tbaa !2917
  %9 = icmp ne i8* %1, null, !dbg !4692
  %10 = icmp ne i8* %2, null, !dbg !4693
  %11 = and i1 %9, %10, !dbg !4694
  br i1 %11, label %13, label %12, !dbg !4694

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !4695
  unreachable, !dbg !4695

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4696
  store i8* %1, i8** %14, align 8, !dbg !4697, !tbaa !3006
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4698
  store i8* %2, i8** %15, align 8, !dbg !4699, !tbaa !3009
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4651, metadata !2123), !dbg !4685
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4700
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4701
  ret i8* %16, !dbg !4702
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4703 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4707, metadata !600), !dbg !4710
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4708, metadata !600), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4709, metadata !600), !dbg !4712
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4634, metadata !600) #10, !dbg !4713
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4635, metadata !600) #10, !dbg !4715
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4636, metadata !600) #10, !dbg !4716
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4637, metadata !600) #10, !dbg !4717
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4642, metadata !600) #10, !dbg !4718
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4647, metadata !600) #10, !dbg !4720
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4648, metadata !600) #10, !dbg !4721
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4649, metadata !600) #10, !dbg !4722
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4650, metadata !600) #10, !dbg !4723
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4724
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4725, !tbaa.struct !4481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4651, metadata !2123) #10, !dbg !4726
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2987, metadata !600) #10, !dbg !4727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2988, metadata !600) #10, !dbg !4729
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2989, metadata !600) #10, !dbg !4730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2987, metadata !600) #10, !dbg !4727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2987, metadata !600) #10, !dbg !4727
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4731
  store i32 10, i32* %6, align 8, !dbg !4732, !tbaa !2917
  %7 = icmp ne i8* %0, null, !dbg !4733
  %8 = icmp ne i8* %1, null, !dbg !4734
  %9 = and i1 %7, %8, !dbg !4735
  br i1 %9, label %11, label %10, !dbg !4735

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4736
  unreachable, !dbg !4736

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4737
  store i8* %0, i8** %12, align 8, !dbg !4738, !tbaa !3006
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4739
  store i8* %1, i8** %13, align 8, !dbg !4740, !tbaa !3009
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4651, metadata !2123) #10, !dbg !4726
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4741
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4742
  ret i8* %14, !dbg !4743
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4744 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4748, metadata !600), !dbg !4752
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4749, metadata !600), !dbg !4753
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4750, metadata !600), !dbg !4754
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4751, metadata !600), !dbg !4755
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4642, metadata !600) #10, !dbg !4756
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4647, metadata !600) #10, !dbg !4758
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4648, metadata !600) #10, !dbg !4759
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4649, metadata !600) #10, !dbg !4760
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4650, metadata !600) #10, !dbg !4761
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4762
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4762
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4763, !tbaa.struct !4481
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4651, metadata !2123) #10, !dbg !4764
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2987, metadata !600) #10, !dbg !4765
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2988, metadata !600) #10, !dbg !4767
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2989, metadata !600) #10, !dbg !4768
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2987, metadata !600) #10, !dbg !4765
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2987, metadata !600) #10, !dbg !4765
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4769
  store i32 10, i32* %7, align 8, !dbg !4770, !tbaa !2917
  %8 = icmp ne i8* %0, null, !dbg !4771
  %9 = icmp ne i8* %1, null, !dbg !4772
  %10 = and i1 %8, %9, !dbg !4773
  br i1 %10, label %12, label %11, !dbg !4773

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4774
  unreachable, !dbg !4774

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4775
  store i8* %0, i8** %13, align 8, !dbg !4776, !tbaa !3006
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4777
  store i8* %1, i8** %14, align 8, !dbg !4778, !tbaa !3009
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4651, metadata !2123) #10, !dbg !4764
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !4779
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4780
  ret i8* %15, !dbg !4781
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4782 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4786, metadata !600), !dbg !4789
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4787, metadata !600), !dbg !4790
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4788, metadata !600), !dbg !4791
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4792
  ret i8* %4, !dbg !4793
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4794 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4798, metadata !600), !dbg !4800
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4799, metadata !600), !dbg !4801
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4786, metadata !600) #10, !dbg !4802
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4787, metadata !600) #10, !dbg !4804
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4788, metadata !600) #10, !dbg !4805
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4806
  ret i8* %3, !dbg !4807
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4808 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4812, metadata !600), !dbg !4814
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4813, metadata !600), !dbg !4815
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4786, metadata !600) #10, !dbg !4816
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4787, metadata !600) #10, !dbg !4818
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4788, metadata !600) #10, !dbg !4819
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4820
  ret i8* %3, !dbg !4821
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4822 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4824, metadata !600), !dbg !4825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4812, metadata !600) #10, !dbg !4826
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4813, metadata !600) #10, !dbg !4828
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4786, metadata !600) #10, !dbg !4829
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4787, metadata !600) #10, !dbg !4831
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4788, metadata !600) #10, !dbg !4832
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4833
  ret i8* %2, !dbg !4834
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #7 !dbg !4835 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4840, metadata !600), !dbg !4842
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4841, metadata !600), !dbg !4843
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4844, metadata !600), !dbg !4858
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4852, metadata !600), !dbg !4860
  %3 = load i8, i8* %0, align 1, !dbg !4861, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4853, metadata !600), !dbg !4862
  %4 = load i8, i8* %1, align 1, !dbg !4863, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4854, metadata !600), !dbg !4864
  %5 = icmp eq i8 %3, 45, !dbg !4865
  br i1 %5, label %6, label %105, !dbg !4867, !llvm.loop !4868

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !4872

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i8* [ %9, %7 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4850, metadata !600), !dbg !4872
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4873
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4850, metadata !600), !dbg !4872
  %10 = load i8, i8* %9, align 1, !dbg !4874, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4853, metadata !600), !dbg !4862
  %11 = icmp eq i8 %10, 48, !dbg !4875
  br i1 %11, label %7, label %12, !dbg !4876

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %4, 45, !dbg !4877
  br i1 %13, label %14, label %15, !dbg !4879, !llvm.loop !4880

; <label>:14:                                     ; preds = %12
  br label %34, !dbg !4883

; <label>:15:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4853, metadata !600), !dbg !4862
  %16 = zext i8 %10 to i32, !dbg !4884
  %17 = add nsw i32 %16, -48, !dbg !4884
  %18 = icmp ult i32 %17, 10, !dbg !4884
  br i1 %18, label %220, label %19, !dbg !4887

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4851, metadata !600), !dbg !4883
  %20 = icmp eq i8 %4, 48, !dbg !4888
  br i1 %20, label %21, label %28, !dbg !4890

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !4891

; <label>:22:                                     ; preds = %21, %22
  %23 = phi i8* [ %24, %22 ], [ %1, %21 ]
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !4891
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4851, metadata !600), !dbg !4883
  %25 = load i8, i8* %24, align 1, !dbg !4892, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4851, metadata !600), !dbg !4883
  %26 = icmp eq i8 %25, 48, !dbg !4888
  br i1 %26, label %22, label %27, !dbg !4890, !llvm.loop !4893

; <label>:27:                                     ; preds = %22
  br label %28, !dbg !4864

; <label>:28:                                     ; preds = %27, %19
  %29 = phi i8 [ %4, %19 ], [ %25, %27 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !4854, metadata !600), !dbg !4864
  %30 = zext i8 %29 to i32, !dbg !4896
  %31 = add nsw i32 %30, -48, !dbg !4896
  %32 = icmp ult i32 %31, 10, !dbg !4896
  %33 = sext i1 %32 to i32, !dbg !4897
  br label %220, !dbg !4898

; <label>:34:                                     ; preds = %14, %34
  %35 = phi i8* [ %36, %34 ], [ %1, %14 ]
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !4851, metadata !600), !dbg !4883
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !4899
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !4851, metadata !600), !dbg !4883
  %37 = load i8, i8* %36, align 1, !dbg !4900, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !4854, metadata !600), !dbg !4864
  %38 = icmp eq i8 %37, 48, !dbg !4901
  br i1 %38, label %34, label %39, !dbg !4902

; <label>:39:                                     ; preds = %34
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4850, metadata !600), !dbg !4872
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !4851, metadata !600), !dbg !4883
  %40 = zext i8 %10 to i32, !dbg !4903
  %41 = icmp eq i8 %37, %10, !dbg !4905
  %42 = add nsw i32 %40, -48, !dbg !4906
  %43 = icmp ult i32 %42, 10, !dbg !4906
  %44 = and i1 %43, %41, !dbg !4908
  br i1 %44, label %45, label %59, !dbg !4908, !llvm.loop !4909

; <label>:45:                                     ; preds = %39
  br label %46, !dbg !4872

; <label>:46:                                     ; preds = %45, %46
  %47 = phi i8* [ %49, %46 ], [ %9, %45 ]
  %48 = phi i8* [ %51, %46 ], [ %36, %45 ]
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4850, metadata !600), !dbg !4872
  %49 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !4913
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !4850, metadata !600), !dbg !4872
  %50 = load i8, i8* %49, align 1, !dbg !4914, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %50, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !4851, metadata !600), !dbg !4883
  %51 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !4915
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4851, metadata !600), !dbg !4883
  %52 = load i8, i8* %51, align 1, !dbg !4916, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %52, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8 %52, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8 %50, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !4850, metadata !600), !dbg !4872
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4851, metadata !600), !dbg !4883
  %53 = zext i8 %50 to i32, !dbg !4903
  %54 = icmp eq i8 %52, %50, !dbg !4905
  %55 = add nsw i32 %53, -48, !dbg !4906
  %56 = icmp ult i32 %55, 10, !dbg !4906
  %57 = and i1 %54, %56, !dbg !4908
  br i1 %57, label %46, label %58, !dbg !4908, !llvm.loop !4909

; <label>:58:                                     ; preds = %46
  br label %59, !dbg !4917

; <label>:59:                                     ; preds = %58, %39
  %60 = phi i8* [ %36, %39 ], [ %51, %58 ]
  %61 = phi i8* [ %9, %39 ], [ %49, %58 ]
  %62 = phi i8 [ %10, %39 ], [ %50, %58 ]
  %63 = phi i8 [ %37, %39 ], [ %52, %58 ]
  %64 = phi i32 [ %40, %39 ], [ %53, %58 ]
  %65 = zext i8 %63 to i32, !dbg !4917
  %66 = sub nsw i32 %65, %64, !dbg !4918
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !4855, metadata !600), !dbg !4919
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4856, metadata !600), !dbg !4920
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4856, metadata !600), !dbg !4920
  tail call void @llvm.dbg.value(metadata i8 %62, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !4850, metadata !600), !dbg !4872
  %67 = zext i8 %62 to i32, !dbg !4921
  %68 = add nsw i32 %67, -48, !dbg !4921
  %69 = icmp ult i32 %68, 10, !dbg !4921
  br i1 %69, label %70, label %72, !dbg !4925, !llvm.loop !4927

; <label>:70:                                     ; preds = %59
  br label %77, !dbg !4872

; <label>:71:                                     ; preds = %77
  br label %72, !dbg !4930

; <label>:72:                                     ; preds = %71, %59
  %73 = phi i64 [ 0, %59 ], [ %82, %71 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4857, metadata !600), !dbg !4930
  tail call void @llvm.dbg.value(metadata i8 %63, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !4851, metadata !600), !dbg !4883
  %74 = add nsw i32 %65, -48, !dbg !4931
  %75 = icmp ult i32 %74, 10, !dbg !4931
  br i1 %75, label %76, label %96, !dbg !4935, !llvm.loop !4937

; <label>:76:                                     ; preds = %72
  br label %86, !dbg !4883

; <label>:77:                                     ; preds = %70, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %70 ]
  %79 = phi i8* [ %80, %77 ], [ %61, %70 ]
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !4850, metadata !600), !dbg !4872
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !4940
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !4850, metadata !600), !dbg !4872
  %81 = load i8, i8* %80, align 1, !dbg !4941, !tbaa !754
  %82 = add i64 %78, 1, !dbg !4942
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4856, metadata !600), !dbg !4920
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4856, metadata !600), !dbg !4920
  tail call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !4850, metadata !600), !dbg !4872
  %83 = zext i8 %81 to i32, !dbg !4921
  %84 = add nsw i32 %83, -48, !dbg !4921
  %85 = icmp ult i32 %84, 10, !dbg !4921
  br i1 %85, label %77, label %71, !dbg !4925, !llvm.loop !4944

; <label>:86:                                     ; preds = %76, %86
  %87 = phi i64 [ %91, %86 ], [ 0, %76 ]
  %88 = phi i8* [ %89, %86 ], [ %60, %76 ]
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !4851, metadata !600), !dbg !4883
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !4947
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !4851, metadata !600), !dbg !4883
  %90 = load i8, i8* %89, align 1, !dbg !4948, !tbaa !754
  %91 = add i64 %87, 1, !dbg !4949
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !4857, metadata !600), !dbg !4930
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !4857, metadata !600), !dbg !4930
  tail call void @llvm.dbg.value(metadata i8 %90, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !4851, metadata !600), !dbg !4883
  %92 = zext i8 %90 to i32, !dbg !4931
  %93 = add nsw i32 %92, -48, !dbg !4931
  %94 = icmp ult i32 %93, 10, !dbg !4931
  br i1 %94, label %86, label %95, !dbg !4935, !llvm.loop !4951

; <label>:95:                                     ; preds = %86
  br label %96, !dbg !4954

; <label>:96:                                     ; preds = %95, %72
  %97 = phi i64 [ 0, %72 ], [ %91, %95 ]
  %98 = icmp eq i64 %73, %97, !dbg !4954
  br i1 %98, label %102, label %99, !dbg !4956

; <label>:99:                                     ; preds = %96
  %100 = icmp ult i64 %73, %97, !dbg !4957
  %101 = select i1 %100, i32 1, i32 -1, !dbg !4958
  br label %220, !dbg !4959

; <label>:102:                                    ; preds = %96
  %103 = icmp eq i64 %73, 0, !dbg !4960
  %104 = select i1 %103, i32 0, i32 %66, !dbg !4962
  br label %220, !dbg !4962

; <label>:105:                                    ; preds = %2
  %106 = icmp eq i8 %4, 45, !dbg !4963
  br i1 %106, label %107, label %108, !dbg !4965, !llvm.loop !4966

; <label>:107:                                    ; preds = %105
  br label %111, !dbg !4883

; <label>:108:                                    ; preds = %105
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4850, metadata !600), !dbg !4872
  %109 = icmp eq i8 %3, 48, !dbg !4970
  br i1 %109, label %110, label %136, !dbg !4973

; <label>:110:                                    ; preds = %108
  br label %141, !dbg !4974

; <label>:111:                                    ; preds = %107, %111
  %112 = phi i8* [ %113, %111 ], [ %1, %107 ]
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !4851, metadata !600), !dbg !4883
  %113 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !4975
  tail call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4851, metadata !600), !dbg !4883
  %114 = load i8, i8* %113, align 1, !dbg !4976, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %114, i64 0, metadata !4854, metadata !600), !dbg !4864
  %115 = icmp eq i8 %114, 48, !dbg !4977
  br i1 %115, label %111, label %116, !dbg !4978

; <label>:116:                                    ; preds = %111
  tail call void @llvm.dbg.value(metadata i8 %114, i64 0, metadata !4854, metadata !600), !dbg !4864
  %117 = zext i8 %114 to i32, !dbg !4979
  %118 = add nsw i32 %117, -48, !dbg !4979
  %119 = icmp ult i32 %118, 10, !dbg !4979
  br i1 %119, label %220, label %120, !dbg !4981

; <label>:120:                                    ; preds = %116
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4850, metadata !600), !dbg !4872
  %121 = icmp eq i8 %3, 48, !dbg !4982
  br i1 %121, label %122, label %129, !dbg !4984

; <label>:122:                                    ; preds = %120
  br label %123, !dbg !4985

; <label>:123:                                    ; preds = %122, %123
  %124 = phi i8* [ %125, %123 ], [ %0, %122 ]
  %125 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !4985
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !4850, metadata !600), !dbg !4872
  %126 = load i8, i8* %125, align 1, !dbg !4986, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %126, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8 %126, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !4850, metadata !600), !dbg !4872
  %127 = icmp eq i8 %126, 48, !dbg !4982
  br i1 %127, label %123, label %128, !dbg !4984, !llvm.loop !4987

; <label>:128:                                    ; preds = %123
  br label %129, !dbg !4862

; <label>:129:                                    ; preds = %128, %120
  %130 = phi i8 [ %3, %120 ], [ %126, %128 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !4853, metadata !600), !dbg !4862
  %131 = zext i8 %130 to i32, !dbg !4990
  %132 = add nsw i32 %131, -48, !dbg !4990
  %133 = icmp ult i32 %132, 10, !dbg !4990
  %134 = zext i1 %133 to i32, !dbg !4990
  br label %220, !dbg !4991

; <label>:135:                                    ; preds = %141
  br label %136, !dbg !4864

; <label>:136:                                    ; preds = %135, %108
  %137 = phi i8* [ %0, %108 ], [ %143, %135 ]
  %138 = phi i8 [ %3, %108 ], [ %144, %135 ]
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4851, metadata !600), !dbg !4883
  %139 = icmp eq i8 %4, 48, !dbg !4992
  br i1 %139, label %140, label %147, !dbg !4993

; <label>:140:                                    ; preds = %136
  br label %156, !dbg !4994

; <label>:141:                                    ; preds = %110, %141
  %142 = phi i8* [ %143, %141 ], [ %0, %110 ]
  %143 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !4974
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !4850, metadata !600), !dbg !4872
  %144 = load i8, i8* %143, align 1, !dbg !4995, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !4850, metadata !600), !dbg !4872
  %145 = icmp eq i8 %144, 48, !dbg !4970
  br i1 %145, label %141, label %135, !dbg !4973, !llvm.loop !4996

; <label>:146:                                    ; preds = %156
  br label %147, !dbg !4864

; <label>:147:                                    ; preds = %146, %136
  %148 = phi i8* [ %1, %136 ], [ %158, %146 ]
  %149 = phi i8 [ %4, %136 ], [ %159, %146 ]
  tail call void @llvm.dbg.value(metadata i8 %149, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8 %138, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !4850, metadata !600), !dbg !4872
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !4851, metadata !600), !dbg !4883
  %150 = zext i8 %138 to i32, !dbg !4999
  %151 = icmp eq i8 %138, %149, !dbg !5000
  %152 = add nsw i32 %150, -48, !dbg !5001
  %153 = icmp ult i32 %152, 10, !dbg !5001
  %154 = and i1 %153, %151, !dbg !5003
  br i1 %154, label %155, label %174, !dbg !5003, !llvm.loop !5004

; <label>:155:                                    ; preds = %147
  br label %161, !dbg !4872

; <label>:156:                                    ; preds = %140, %156
  %157 = phi i8* [ %158, %156 ], [ %1, %140 ]
  %158 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !4994
  tail call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4851, metadata !600), !dbg !4883
  %159 = load i8, i8* %158, align 1, !dbg !5008, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4851, metadata !600), !dbg !4883
  %160 = icmp eq i8 %159, 48, !dbg !4992
  br i1 %160, label %156, label %146, !dbg !4993, !llvm.loop !5009

; <label>:161:                                    ; preds = %155, %161
  %162 = phi i8* [ %164, %161 ], [ %137, %155 ]
  %163 = phi i8* [ %166, %161 ], [ %148, %155 ]
  tail call void @llvm.dbg.value(metadata i8* %162, i64 0, metadata !4850, metadata !600), !dbg !4872
  %164 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !5012
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !4850, metadata !600), !dbg !4872
  %165 = load i8, i8* %164, align 1, !dbg !5013, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %165, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !4851, metadata !600), !dbg !4883
  %166 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !5014
  tail call void @llvm.dbg.value(metadata i8* %166, i64 0, metadata !4851, metadata !600), !dbg !4883
  %167 = load i8, i8* %166, align 1, !dbg !5015, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8 %167, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8 %167, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8 %165, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !4850, metadata !600), !dbg !4872
  tail call void @llvm.dbg.value(metadata i8* %166, i64 0, metadata !4851, metadata !600), !dbg !4883
  %168 = zext i8 %165 to i32, !dbg !4999
  %169 = icmp eq i8 %165, %167, !dbg !5000
  %170 = add nsw i32 %168, -48, !dbg !5001
  %171 = icmp ult i32 %170, 10, !dbg !5001
  %172 = and i1 %169, %171, !dbg !5003
  br i1 %172, label %161, label %173, !dbg !5003, !llvm.loop !5004

; <label>:173:                                    ; preds = %161
  br label %174, !dbg !5016

; <label>:174:                                    ; preds = %173, %147
  %175 = phi i8* [ %148, %147 ], [ %166, %173 ]
  %176 = phi i8* [ %137, %147 ], [ %164, %173 ]
  %177 = phi i8 [ %138, %147 ], [ %165, %173 ]
  %178 = phi i8 [ %149, %147 ], [ %167, %173 ]
  %179 = phi i32 [ %150, %147 ], [ %168, %173 ]
  %180 = zext i8 %178 to i32, !dbg !5016
  %181 = sub nsw i32 %179, %180, !dbg !5017
  tail call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !4855, metadata !600), !dbg !4919
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4856, metadata !600), !dbg !4920
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4856, metadata !600), !dbg !4920
  tail call void @llvm.dbg.value(metadata i8 %177, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !4850, metadata !600), !dbg !4872
  %182 = zext i8 %177 to i32, !dbg !5018
  %183 = add nsw i32 %182, -48, !dbg !5018
  %184 = icmp ult i32 %183, 10, !dbg !5018
  br i1 %184, label %185, label %187, !dbg !5022, !llvm.loop !5024

; <label>:185:                                    ; preds = %174
  br label %192, !dbg !4872

; <label>:186:                                    ; preds = %192
  br label %187, !dbg !4930

; <label>:187:                                    ; preds = %186, %174
  %188 = phi i64 [ 0, %174 ], [ %197, %186 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4857, metadata !600), !dbg !4930
  tail call void @llvm.dbg.value(metadata i8 %178, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8* %175, i64 0, metadata !4851, metadata !600), !dbg !4883
  %189 = add nsw i32 %180, -48, !dbg !5027
  %190 = icmp ult i32 %189, 10, !dbg !5027
  br i1 %190, label %191, label %211, !dbg !5031, !llvm.loop !5033

; <label>:191:                                    ; preds = %187
  br label %201, !dbg !4883

; <label>:192:                                    ; preds = %185, %192
  %193 = phi i64 [ %197, %192 ], [ 0, %185 ]
  %194 = phi i8* [ %195, %192 ], [ %176, %185 ]
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !4850, metadata !600), !dbg !4872
  %195 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !5036
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !4850, metadata !600), !dbg !4872
  %196 = load i8, i8* %195, align 1, !dbg !5037, !tbaa !754
  %197 = add i64 %193, 1, !dbg !5038
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !4856, metadata !600), !dbg !4920
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !4856, metadata !600), !dbg !4920
  tail call void @llvm.dbg.value(metadata i8 %196, i64 0, metadata !4853, metadata !600), !dbg !4862
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !4850, metadata !600), !dbg !4872
  %198 = zext i8 %196 to i32, !dbg !5018
  %199 = add nsw i32 %198, -48, !dbg !5018
  %200 = icmp ult i32 %199, 10, !dbg !5018
  br i1 %200, label %192, label %186, !dbg !5022, !llvm.loop !5040

; <label>:201:                                    ; preds = %191, %201
  %202 = phi i64 [ %206, %201 ], [ 0, %191 ]
  %203 = phi i8* [ %204, %201 ], [ %175, %191 ]
  tail call void @llvm.dbg.value(metadata i8* %203, i64 0, metadata !4851, metadata !600), !dbg !4883
  %204 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !5043
  tail call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !4851, metadata !600), !dbg !4883
  %205 = load i8, i8* %204, align 1, !dbg !5044, !tbaa !754
  %206 = add i64 %202, 1, !dbg !5045
  tail call void @llvm.dbg.value(metadata i64 %206, i64 0, metadata !4857, metadata !600), !dbg !4930
  tail call void @llvm.dbg.value(metadata i64 %206, i64 0, metadata !4857, metadata !600), !dbg !4930
  tail call void @llvm.dbg.value(metadata i8 %205, i64 0, metadata !4854, metadata !600), !dbg !4864
  tail call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !4851, metadata !600), !dbg !4883
  %207 = zext i8 %205 to i32, !dbg !5027
  %208 = add nsw i32 %207, -48, !dbg !5027
  %209 = icmp ult i32 %208, 10, !dbg !5027
  br i1 %209, label %201, label %210, !dbg !5031, !llvm.loop !5047

; <label>:210:                                    ; preds = %201
  br label %211, !dbg !5050

; <label>:211:                                    ; preds = %210, %187
  %212 = phi i64 [ 0, %187 ], [ %206, %210 ]
  %213 = icmp eq i64 %188, %212, !dbg !5050
  br i1 %213, label %217, label %214, !dbg !5052

; <label>:214:                                    ; preds = %211
  %215 = icmp ult i64 %188, %212, !dbg !5053
  %216 = select i1 %215, i32 -1, i32 1, !dbg !5054
  br label %220, !dbg !5055

; <label>:217:                                    ; preds = %211
  %218 = icmp eq i64 %188, 0, !dbg !5056
  %219 = select i1 %218, i32 0, i32 %181, !dbg !5058
  br label %220, !dbg !5058

; <label>:220:                                    ; preds = %15, %28, %99, %102, %116, %129, %214, %217
  %221 = phi i32 [ %33, %28 ], [ %101, %99 ], [ %134, %129 ], [ %216, %214 ], [ -1, %15 ], [ %104, %102 ], [ 1, %116 ], [ %219, %217 ]
  ret i32 %221, !dbg !5059
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror(i32, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !5060 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5072, metadata !600), !dbg !5076
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !5073, metadata !600), !dbg !5077
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5074, metadata !600), !dbg !5078
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %3, i64 0, metadata !5075, metadata !600), !dbg !5079
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3), !dbg !5080
  ret void, !dbg !5081
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror_at_line(i32, i32, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !5082 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5086, metadata !600), !dbg !5093
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !5087, metadata !600), !dbg !5094
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5088, metadata !600), !dbg !5095
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !5089, metadata !600), !dbg !5096
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5090, metadata !600), !dbg !5097
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, i64 0, metadata !5091, metadata !600), !dbg !5098
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #10, !dbg !5099
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !5092, metadata !600), !dbg !5100
  %8 = icmp eq i8* %7, null, !dbg !5101
  br i1 %8, label %13, label %9, !dbg !5103

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i8* %2, null, !dbg !5104
  br i1 %10, label %12, label %11, !dbg !5107

; <label>:11:                                     ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %7) #10, !dbg !5108
  br label %17, !dbg !5108

; <label>:12:                                     ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %7) #10, !dbg !5109
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = tail call i32* @__errno_location() #1, !dbg !5110
  %15 = load i32, i32* %14, align 4, !dbg !5110, !tbaa !723
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.79, i64 0, i64 0), i32 5) #10, !dbg !5112
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #10, !dbg !5114
  tail call void @abort() #14, !dbg !5116
  unreachable, !dbg !5116

; <label>:17:                                     ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #10, !dbg !5117
  ret void, !dbg !5118
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !5119 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5173, metadata !600), !dbg !5179
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5174, metadata !600), !dbg !5180
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5175, metadata !600), !dbg !5181
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5176, metadata !600), !dbg !5182
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5177, metadata !600), !dbg !5183
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !5178, metadata !600), !dbg !5184
  %7 = icmp eq i8* %1, null, !dbg !5185
  br i1 %7, label %10, label %8, !dbg !5187

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !5188
  br label %12, !dbg !5188

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.81, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !5189
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i32 5) #10, !dbg !5190
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !5191
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.83, i64 0, i64 0), i32 5) #10, !dbg !5193
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !5194
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
  ], !dbg !5195

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !5196
  unreachable, !dbg !5196

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.84, i64 0, i64 0), i32 5) #10, !dbg !5198
  %20 = load i8*, i8** %4, align 8, !dbg !5198, !tbaa !608
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !5199
  br label %146, !dbg !5201

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.85, i64 0, i64 0), i32 5) #10, !dbg !5202
  %24 = load i8*, i8** %4, align 8, !dbg !5202, !tbaa !608
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5202
  %26 = load i8*, i8** %25, align 8, !dbg !5202, !tbaa !608
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !5203
  br label %146, !dbg !5204

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.86, i64 0, i64 0), i32 5) #10, !dbg !5205
  %30 = load i8*, i8** %4, align 8, !dbg !5205, !tbaa !608
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5205
  %32 = load i8*, i8** %31, align 8, !dbg !5205, !tbaa !608
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5205
  %34 = load i8*, i8** %33, align 8, !dbg !5205, !tbaa !608
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !5206
  br label %146, !dbg !5207

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.87, i64 0, i64 0), i32 5) #10, !dbg !5208
  %38 = load i8*, i8** %4, align 8, !dbg !5208, !tbaa !608
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5208
  %40 = load i8*, i8** %39, align 8, !dbg !5208, !tbaa !608
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5208
  %42 = load i8*, i8** %41, align 8, !dbg !5208, !tbaa !608
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5208
  %44 = load i8*, i8** %43, align 8, !dbg !5208, !tbaa !608
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !5209
  br label %146, !dbg !5210

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.88, i64 0, i64 0), i32 5) #10, !dbg !5211
  %48 = load i8*, i8** %4, align 8, !dbg !5211, !tbaa !608
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5211
  %50 = load i8*, i8** %49, align 8, !dbg !5211, !tbaa !608
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5211
  %52 = load i8*, i8** %51, align 8, !dbg !5211, !tbaa !608
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5211
  %54 = load i8*, i8** %53, align 8, !dbg !5211, !tbaa !608
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5211
  %56 = load i8*, i8** %55, align 8, !dbg !5211, !tbaa !608
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !5212
  br label %146, !dbg !5213

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.89, i64 0, i64 0), i32 5) #10, !dbg !5214
  %60 = load i8*, i8** %4, align 8, !dbg !5214, !tbaa !608
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5214
  %62 = load i8*, i8** %61, align 8, !dbg !5214, !tbaa !608
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5214
  %64 = load i8*, i8** %63, align 8, !dbg !5214, !tbaa !608
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5214
  %66 = load i8*, i8** %65, align 8, !dbg !5214, !tbaa !608
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5214
  %68 = load i8*, i8** %67, align 8, !dbg !5214, !tbaa !608
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5214
  %70 = load i8*, i8** %69, align 8, !dbg !5214, !tbaa !608
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !5215
  br label %146, !dbg !5216

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.90, i64 0, i64 0), i32 5) #10, !dbg !5217
  %74 = load i8*, i8** %4, align 8, !dbg !5217, !tbaa !608
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5217
  %76 = load i8*, i8** %75, align 8, !dbg !5217, !tbaa !608
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5217
  %78 = load i8*, i8** %77, align 8, !dbg !5217, !tbaa !608
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5217
  %80 = load i8*, i8** %79, align 8, !dbg !5217, !tbaa !608
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5217
  %82 = load i8*, i8** %81, align 8, !dbg !5217, !tbaa !608
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5217
  %84 = load i8*, i8** %83, align 8, !dbg !5217, !tbaa !608
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5217
  %86 = load i8*, i8** %85, align 8, !dbg !5217, !tbaa !608
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !5218
  br label %146, !dbg !5219

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.91, i64 0, i64 0), i32 5) #10, !dbg !5220
  %90 = load i8*, i8** %4, align 8, !dbg !5220, !tbaa !608
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5220
  %92 = load i8*, i8** %91, align 8, !dbg !5220, !tbaa !608
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5220
  %94 = load i8*, i8** %93, align 8, !dbg !5220, !tbaa !608
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5220
  %96 = load i8*, i8** %95, align 8, !dbg !5220, !tbaa !608
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5220
  %98 = load i8*, i8** %97, align 8, !dbg !5220, !tbaa !608
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5220
  %100 = load i8*, i8** %99, align 8, !dbg !5220, !tbaa !608
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5220
  %102 = load i8*, i8** %101, align 8, !dbg !5220, !tbaa !608
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5220
  %104 = load i8*, i8** %103, align 8, !dbg !5220, !tbaa !608
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !5221
  br label %146, !dbg !5222

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.92, i64 0, i64 0), i32 5) #10, !dbg !5223
  %108 = load i8*, i8** %4, align 8, !dbg !5223, !tbaa !608
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5223
  %110 = load i8*, i8** %109, align 8, !dbg !5223, !tbaa !608
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5223
  %112 = load i8*, i8** %111, align 8, !dbg !5223, !tbaa !608
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5223
  %114 = load i8*, i8** %113, align 8, !dbg !5223, !tbaa !608
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5223
  %116 = load i8*, i8** %115, align 8, !dbg !5223, !tbaa !608
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5223
  %118 = load i8*, i8** %117, align 8, !dbg !5223, !tbaa !608
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5223
  %120 = load i8*, i8** %119, align 8, !dbg !5223, !tbaa !608
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5223
  %122 = load i8*, i8** %121, align 8, !dbg !5223, !tbaa !608
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5223
  %124 = load i8*, i8** %123, align 8, !dbg !5223, !tbaa !608
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !5224
  br label %146, !dbg !5225

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.93, i64 0, i64 0), i32 5) #10, !dbg !5226
  %128 = load i8*, i8** %4, align 8, !dbg !5226, !tbaa !608
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5226
  %130 = load i8*, i8** %129, align 8, !dbg !5226, !tbaa !608
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5226
  %132 = load i8*, i8** %131, align 8, !dbg !5226, !tbaa !608
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5226
  %134 = load i8*, i8** %133, align 8, !dbg !5226, !tbaa !608
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5226
  %136 = load i8*, i8** %135, align 8, !dbg !5226, !tbaa !608
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5226
  %138 = load i8*, i8** %137, align 8, !dbg !5226, !tbaa !608
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5226
  %140 = load i8*, i8** %139, align 8, !dbg !5226, !tbaa !608
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5226
  %142 = load i8*, i8** %141, align 8, !dbg !5226, !tbaa !608
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5226
  %144 = load i8*, i8** %143, align 8, !dbg !5226, !tbaa !608
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !5227
  br label %146, !dbg !5228

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !5229
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !5230 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5234, metadata !600), !dbg !5240
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5235, metadata !600), !dbg !5241
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5236, metadata !600), !dbg !5242
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5237, metadata !600), !dbg !5243
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5238, metadata !600), !dbg !5244
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5239, metadata !600), !dbg !5245
  br label %6, !dbg !5246

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5239, metadata !600), !dbg !5245
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !5248
  %9 = load i8*, i8** %8, align 8, !dbg !5248, !tbaa !608
  %10 = icmp eq i8* %9, null, !dbg !5251
  %11 = add i64 %7, 1, !dbg !5253
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5239, metadata !600), !dbg !5245
  br i1 %10, label %12, label %6, !dbg !5251, !llvm.loop !5255

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !5258
  ret void, !dbg !5259
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !5260 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5271, metadata !600), !dbg !5279
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5272, metadata !600), !dbg !5280
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5273, metadata !600), !dbg !5281
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5274, metadata !600), !dbg !5282
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !5275, metadata !600), !dbg !5283
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !5284
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !5284
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !5277, metadata !600), !dbg !5285
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5276, metadata !600), !dbg !5286
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !5287
  %12 = icmp ult i32 %11, 41, !dbg !5287
  br i1 %12, label %13, label %18, !dbg !5287

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !5291
  %15 = sext i32 %11 to i64, !dbg !5291
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !5291
  %17 = add i32 %11, 8, !dbg !5291
  store i32 %17, i32* %8, align 8, !dbg !5291
  br label %21, !dbg !5291

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !5293
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !5293
  store i8* %20, i8** %10, align 8, !dbg !5293
  br label %21, !dbg !5293

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !5287
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !5295
  %25 = load i8*, i8** %24, align 8, !dbg !5295
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !5297
  store i8* %25, i8** %26, align 16, !dbg !5298, !tbaa !608
  %27 = icmp eq i8* %25, null, !dbg !5299
  br i1 %27, label %30, label %28, !dbg !5300

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %29 = icmp ult i32 %22, 41, !dbg !5287
  br i1 %29, label %35, label %32, !dbg !5287

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !5302
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !5303
  ret void, !dbg !5303

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !5293
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !5293
  store i8* %34, i8** %10, align 8, !dbg !5293
  br label %40, !dbg !5293

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !5291
  %37 = sext i32 %22 to i64, !dbg !5291
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !5291
  %39 = add i32 %22, 8, !dbg !5291
  store i32 %39, i32* %8, align 8, !dbg !5291
  br label %40, !dbg !5291

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !5287
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !5295
  %44 = load i8*, i8** %43, align 8, !dbg !5295
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !5297
  store i8* %44, i8** %45, align 8, !dbg !5298, !tbaa !608
  %46 = icmp eq i8* %44, null, !dbg !5299
  br i1 %46, label %30, label %47, !dbg !5300

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %48 = icmp ult i32 %41, 41, !dbg !5287
  br i1 %48, label %52, label %49, !dbg !5287

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !5293
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !5293
  store i8* %51, i8** %10, align 8, !dbg !5293
  br label %57, !dbg !5293

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !5291
  %54 = sext i32 %41 to i64, !dbg !5291
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !5291
  %56 = add i32 %41, 8, !dbg !5291
  store i32 %56, i32* %8, align 8, !dbg !5291
  br label %57, !dbg !5291

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !5287
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !5295
  %61 = load i8*, i8** %60, align 8, !dbg !5295
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !5297
  store i8* %61, i8** %62, align 16, !dbg !5298, !tbaa !608
  %63 = icmp eq i8* %61, null, !dbg !5299
  br i1 %63, label %30, label %64, !dbg !5300

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %65 = icmp ult i32 %58, 41, !dbg !5287
  br i1 %65, label %69, label %66, !dbg !5287

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !5293
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !5293
  store i8* %68, i8** %10, align 8, !dbg !5293
  br label %74, !dbg !5293

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !5291
  %71 = sext i32 %58 to i64, !dbg !5291
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !5291
  %73 = add i32 %58, 8, !dbg !5291
  store i32 %73, i32* %8, align 8, !dbg !5291
  br label %74, !dbg !5291

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !5287
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !5295
  %78 = load i8*, i8** %77, align 8, !dbg !5295
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !5297
  store i8* %78, i8** %79, align 8, !dbg !5298, !tbaa !608
  %80 = icmp eq i8* %78, null, !dbg !5299
  br i1 %80, label %30, label %81, !dbg !5300

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %82 = icmp ult i32 %75, 41, !dbg !5287
  br i1 %82, label %86, label %83, !dbg !5287

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !5293
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !5293
  store i8* %85, i8** %10, align 8, !dbg !5293
  br label %91, !dbg !5293

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !5291
  %88 = sext i32 %75 to i64, !dbg !5291
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !5291
  %90 = add i32 %75, 8, !dbg !5291
  store i32 %90, i32* %8, align 8, !dbg !5291
  br label %91, !dbg !5291

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !5287
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !5295
  %95 = load i8*, i8** %94, align 8, !dbg !5295
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !5297
  store i8* %95, i8** %96, align 16, !dbg !5298, !tbaa !608
  %97 = icmp eq i8* %95, null, !dbg !5299
  br i1 %97, label %30, label %98, !dbg !5300

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %99 = icmp ult i32 %92, 41, !dbg !5287
  br i1 %99, label %103, label %100, !dbg !5287

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !5293
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !5293
  store i8* %102, i8** %10, align 8, !dbg !5293
  br label %108, !dbg !5293

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !5291
  %105 = sext i32 %92 to i64, !dbg !5291
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !5291
  %107 = add i32 %92, 8, !dbg !5291
  store i32 %107, i32* %8, align 8, !dbg !5291
  br label %108, !dbg !5291

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !5295
  %111 = load i8*, i8** %110, align 8, !dbg !5295
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !5297
  store i8* %111, i8** %112, align 8, !dbg !5298, !tbaa !608
  %113 = icmp eq i8* %111, null, !dbg !5299
  br i1 %113, label %30, label %114, !dbg !5300

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %115 = load i8*, i8** %10, align 8, !dbg !5293
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !5293
  store i8* %116, i8** %10, align 8, !dbg !5293
  %117 = bitcast i8* %115 to i8**, !dbg !5295
  %118 = load i8*, i8** %117, align 8, !dbg !5295
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !5297
  store i8* %118, i8** %119, align 16, !dbg !5298, !tbaa !608
  %120 = icmp eq i8* %118, null, !dbg !5299
  br i1 %120, label %30, label %121, !dbg !5300

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %122 = load i8*, i8** %10, align 8, !dbg !5293
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !5293
  store i8* %123, i8** %10, align 8, !dbg !5293
  %124 = bitcast i8* %122 to i8**, !dbg !5295
  %125 = load i8*, i8** %124, align 8, !dbg !5295
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !5297
  store i8* %125, i8** %126, align 8, !dbg !5298, !tbaa !608
  %127 = icmp eq i8* %125, null, !dbg !5299
  br i1 %127, label %30, label %128, !dbg !5300

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %129 = load i8*, i8** %10, align 8, !dbg !5293
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !5293
  store i8* %130, i8** %10, align 8, !dbg !5293
  %131 = bitcast i8* %129 to i8**, !dbg !5295
  %132 = load i8*, i8** %131, align 8, !dbg !5295
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !5297
  store i8* %132, i8** %133, align 16, !dbg !5298, !tbaa !608
  %134 = icmp eq i8* %132, null, !dbg !5299
  br i1 %134, label %30, label %135, !dbg !5300

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %136 = load i8*, i8** %10, align 8, !dbg !5293
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !5293
  store i8* %137, i8** %10, align 8, !dbg !5293
  %138 = bitcast i8* %136 to i8**, !dbg !5295
  %139 = load i8*, i8** %138, align 8, !dbg !5295
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !5297
  store i8* %139, i8** %140, align 8, !dbg !5298, !tbaa !608
  %141 = icmp eq i8* %139, null, !dbg !5299
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !600), !dbg !5286
  %142 = select i1 %141, i64 9, i64 10, !dbg !5300
  br label %30, !dbg !5300
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !5304 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5308, metadata !600), !dbg !5317
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5309, metadata !600), !dbg !5318
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5310, metadata !600), !dbg !5319
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5311, metadata !600), !dbg !5320
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !5321
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !5321
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !5312, metadata !600), !dbg !5322
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !5323
  call void @llvm.va_start(i8* nonnull %6), !dbg !5323
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !5324
  call void @llvm.va_end(i8* nonnull %6), !dbg !5325
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !5326
  ret void, !dbg !5326
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !5327 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.96, i64 0, i64 0), i32 5) #10, !dbg !5328
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.97, i64 0, i64 0)) #10, !dbg !5329
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.98, i64 0, i64 0), i32 5) #10, !dbg !5331
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.100, i64 0, i64 0)) #10, !dbg !5332
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.101, i64 0, i64 0), i32 5) #10, !dbg !5333
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !5333, !tbaa !608
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !5334
  ret void, !dbg !5335
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !5336 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5340, metadata !600), !dbg !5342
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5341, metadata !600), !dbg !5343
  %3 = udiv i64 9223372036854775807, %1, !dbg !5344
  %4 = icmp ult i64 %3, %0, !dbg !5344
  br i1 %4, label %5, label %6, !dbg !5346

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !5347
  unreachable, !dbg !5347

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5348
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5349, metadata !600) #10, !dbg !5356
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !5358
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5355, metadata !600) #10, !dbg !5359
  %9 = icmp eq i8* %8, null, !dbg !5360
  %10 = icmp ne i64 %7, 0, !dbg !5362
  %11 = and i1 %10, %9, !dbg !5364
  br i1 %11, label %12, label %13, !dbg !5364

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !5365
  unreachable, !dbg !5365

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !5366
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !5350 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5349, metadata !600), !dbg !5367
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5368
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5355, metadata !600), !dbg !5369
  %3 = icmp eq i8* %2, null, !dbg !5370
  %4 = icmp ne i64 %0, 0, !dbg !5371
  %5 = and i1 %4, %3, !dbg !5372
  br i1 %5, label %6, label %7, !dbg !5372

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5373
  unreachable, !dbg !5373

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5374
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !5375 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5379, metadata !600), !dbg !5382
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5380, metadata !600), !dbg !5383
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5381, metadata !600), !dbg !5384
  %4 = udiv i64 9223372036854775807, %2, !dbg !5385
  %5 = icmp ult i64 %4, %1, !dbg !5385
  br i1 %5, label %6, label %7, !dbg !5387

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !5388
  unreachable, !dbg !5388

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !5389
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5390, metadata !600) #10, !dbg !5396
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5395, metadata !600) #10, !dbg !5398
  %9 = icmp eq i64 %8, 0, !dbg !5399
  %10 = icmp ne i8* %0, null, !dbg !5401
  %11 = and i1 %10, %9, !dbg !5403
  br i1 %11, label %12, label %13, !dbg !5403

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !5404
  br label %19, !dbg !5406

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !5407
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5390, metadata !600) #10, !dbg !5396
  %15 = icmp eq i8* %14, null, !dbg !5408
  %16 = icmp ne i64 %8, 0, !dbg !5410
  %17 = and i1 %16, %15, !dbg !5412
  br i1 %17, label %18, label %19, !dbg !5412

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !5413
  unreachable, !dbg !5413

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !5414
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !5391 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5390, metadata !600), !dbg !5415
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5395, metadata !600), !dbg !5416
  %3 = icmp eq i64 %1, 0, !dbg !5417
  %4 = icmp ne i8* %0, null, !dbg !5418
  %5 = and i1 %4, %3, !dbg !5419
  br i1 %5, label %6, label %7, !dbg !5419

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !5420
  br label %13, !dbg !5421

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !5422
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5390, metadata !600), !dbg !5415
  %9 = icmp eq i8* %8, null, !dbg !5423
  %10 = icmp ne i64 %1, 0, !dbg !5424
  %11 = and i1 %10, %9, !dbg !5425
  br i1 %11, label %12, label %13, !dbg !5425

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !5426
  unreachable, !dbg !5426

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !5427
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !557 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !562, metadata !600), !dbg !5428
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !563, metadata !600), !dbg !5429
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !564, metadata !600), !dbg !5430
  %4 = load i64, i64* %1, align 8, !dbg !5431, !tbaa !4154
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !565, metadata !600), !dbg !5432
  %5 = icmp eq i8* %0, null, !dbg !5433
  br i1 %5, label %6, label %13, !dbg !5435

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !5436
  br i1 %7, label %8, label %17, !dbg !5439

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !5440
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !565, metadata !600), !dbg !5432
  %10 = icmp ugt i64 %2, 128, !dbg !5442
  %11 = zext i1 %10 to i64, !dbg !5442
  %12 = add nuw nsw i64 %9, %11, !dbg !5443
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !565, metadata !600), !dbg !5432
  br label %17, !dbg !5444

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !5445
  %15 = icmp ugt i64 %14, %4, !dbg !5448
  br i1 %15, label %20, label %16, !dbg !5449

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !5450
  unreachable, !dbg !5450

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !565, metadata !600), !dbg !5432
  store i64 %18, i64* %1, align 8, !dbg !5451, !tbaa !4154
  %19 = mul i64 %18, %2, !dbg !5452
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5390, metadata !600) #10, !dbg !5453
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5395, metadata !600) #10, !dbg !5455
  br label %27, !dbg !5456

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !5457
  %22 = add i64 %4, 1, !dbg !5458
  %23 = add i64 %22, %21, !dbg !5459
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !565, metadata !600), !dbg !5432
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !565, metadata !600), !dbg !5432
  store i64 %23, i64* %1, align 8, !dbg !5451, !tbaa !4154
  %24 = mul i64 %23, %2, !dbg !5452
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5390, metadata !600) #10, !dbg !5453
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5395, metadata !600) #10, !dbg !5455
  %25 = icmp eq i64 %24, 0, !dbg !5460
  br i1 %25, label %26, label %27, !dbg !5456

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !5461
  br label %34, !dbg !5462

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !5463
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5390, metadata !600) #10, !dbg !5453
  %30 = icmp eq i8* %29, null, !dbg !5464
  %31 = icmp ne i64 %28, 0, !dbg !5465
  %32 = and i1 %31, %30, !dbg !5466
  br i1 %32, label %33, label %34, !dbg !5466

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !5467
  unreachable, !dbg !5467

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !5468
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !5469 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5471, metadata !600), !dbg !5472
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5349, metadata !600) #10, !dbg !5473
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5475
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5355, metadata !600) #10, !dbg !5476
  %3 = icmp eq i8* %2, null, !dbg !5477
  %4 = icmp ne i64 %0, 0, !dbg !5478
  %5 = and i1 %4, %3, !dbg !5479
  br i1 %5, label %6, label %7, !dbg !5479

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5480
  unreachable, !dbg !5480

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5481
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5482 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5486, metadata !600), !dbg !5488
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5487, metadata !600), !dbg !5489
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !562, metadata !600) #10, !dbg !5490
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !563, metadata !600) #10, !dbg !5492
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !564, metadata !600) #10, !dbg !5493
  %3 = load i64, i64* %1, align 8, !dbg !5494, !tbaa !4154
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !565, metadata !600) #10, !dbg !5495
  %4 = icmp eq i8* %0, null, !dbg !5496
  br i1 %4, label %5, label %8, !dbg !5497

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !5498
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !565, metadata !600) #10, !dbg !5495
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !565, metadata !600) #10, !dbg !5495
  %7 = select i1 %6, i64 128, i64 %3, !dbg !5499
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !565, metadata !600) #10, !dbg !5495
  store i64 %7, i64* %1, align 8, !dbg !5500, !tbaa !4154
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5390, metadata !600) #10, !dbg !5501
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5395, metadata !600) #10, !dbg !5503
  br label %17, !dbg !5504

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !5505
  br i1 %9, label %11, label %10, !dbg !5506

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !5507
  unreachable, !dbg !5507

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !5508
  %13 = add i64 %3, 1, !dbg !5509
  %14 = add i64 %13, %12, !dbg !5510
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !565, metadata !600) #10, !dbg !5495
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !565, metadata !600) #10, !dbg !5495
  store i64 %14, i64* %1, align 8, !dbg !5500, !tbaa !4154
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5390, metadata !600) #10, !dbg !5501
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5395, metadata !600) #10, !dbg !5503
  %15 = icmp eq i64 %14, 0, !dbg !5511
  br i1 %15, label %16, label %17, !dbg !5504

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !5512
  br label %24, !dbg !5513

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !5514
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5390, metadata !600) #10, !dbg !5501
  %20 = icmp eq i8* %19, null, !dbg !5515
  %21 = icmp ne i64 %18, 0, !dbg !5516
  %22 = and i1 %21, %20, !dbg !5517
  br i1 %22, label %23, label %24, !dbg !5517

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !5518
  unreachable, !dbg !5518

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !5519
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5520 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5522, metadata !600), !dbg !5523
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5349, metadata !600) #10, !dbg !5524
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5526
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5355, metadata !600) #10, !dbg !5527
  %3 = icmp eq i8* %2, null, !dbg !5528
  %4 = icmp ne i64 %0, 0, !dbg !5529
  %5 = and i1 %4, %3, !dbg !5530
  br i1 %5, label %6, label %7, !dbg !5530

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5531
  unreachable, !dbg !5531

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5532
  ret i8* %2, !dbg !5533
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5534 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5536, metadata !600), !dbg !5539
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5537, metadata !600), !dbg !5540
  %3 = udiv i64 9223372036854775807, %1, !dbg !5541
  %4 = icmp ult i64 %3, %0, !dbg !5541
  br i1 %4, label %8, label %5, !dbg !5543

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !5544
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5538, metadata !600), !dbg !5546
  %7 = icmp eq i8* %6, null, !dbg !5547
  br i1 %7, label %8, label %9, !dbg !5548

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !5550
  unreachable, !dbg !5550

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !5551
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5552 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5556, metadata !600), !dbg !5558
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5557, metadata !600), !dbg !5559
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5349, metadata !600) #10, !dbg !5560
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !5562
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5355, metadata !600) #10, !dbg !5563
  %4 = icmp eq i8* %3, null, !dbg !5564
  %5 = icmp ne i64 %1, 0, !dbg !5565
  %6 = and i1 %5, %4, !dbg !5566
  br i1 %6, label %7, label %8, !dbg !5566

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !5567
  unreachable, !dbg !5567

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5568
  ret i8* %3, !dbg !5569
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5570 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5572, metadata !600), !dbg !5573
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !5574
  %3 = add i64 %2, 1, !dbg !5575
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5556, metadata !600) #10, !dbg !5576
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5557, metadata !600) #10, !dbg !5579
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5349, metadata !600) #10, !dbg !5580
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !5582
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5355, metadata !600) #10, !dbg !5583
  %5 = icmp eq i8* %4, null, !dbg !5584
  %6 = icmp ne i64 %3, 0, !dbg !5585
  %7 = and i1 %6, %5, !dbg !5586
  br i1 %7, label %8, label %9, !dbg !5586

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5587
  unreachable, !dbg !5587

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !5588
  ret i8* %4, !dbg !5589
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !5590 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5592, !tbaa !723
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.112, i64 0, i64 0), i32 5) #10, !dbg !5593
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0), i8* %2) #10, !dbg !5594
  tail call void @abort() #14, !dbg !5596
  unreachable, !dbg !5596
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xvasprintf(i8*, %struct.__va_list_tag*) local_unnamed_addr #6 !dbg !5597 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !5615, metadata !600), !dbg !5639
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5609, metadata !600), !dbg !5645
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !5610, metadata !600), !dbg !5646
  %5 = bitcast i8** %4 to i8*, !dbg !5647
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #10, !dbg !5647
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5612, metadata !600), !dbg !5648
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5614, metadata !600), !dbg !5649
  br label %6, !dbg !5650

; <label>:6:                                      ; preds = %84, %2
  %7 = phi i64 [ 0, %2 ], [ %86, %84 ]
  %8 = phi i8* [ %0, %2 ], [ %85, %84 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5614, metadata !600), !dbg !5649
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5612, metadata !600), !dbg !5648
  %9 = load i8, i8* %8, align 1, !dbg !5651, !tbaa !754
  switch i8 %9, label %89 [
    i8 0, label %10
    i8 37, label %80
  ], !dbg !5652

; <label>:10:                                     ; preds = %6
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5620, metadata !600) #10, !dbg !5653
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !5621, metadata !600) #10, !dbg !5654
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5655
  call void @llvm.lifetime.start(i64 24, i8* nonnull %11) #10, !dbg !5655
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5623, metadata !600) #10, !dbg !5656
  %12 = bitcast %struct.__va_list_tag* %1 to i8*, !dbg !5657
  call void @llvm.va_copy(i8* nonnull %11, i8* %12) #10, !dbg !5657
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5623, metadata !600) #10, !dbg !5656
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  %13 = icmp eq i64 %7, 0, !dbg !5659
  br i1 %13, label %14, label %16, !dbg !5661

; <label>:14:                                     ; preds = %10
  call void @llvm.va_end(i8* nonnull %11) #10, !dbg !5663
  %15 = call noalias i8* @xmalloc(i64 1) #10, !dbg !5664
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5622, metadata !600) #10, !dbg !5665
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5625, metadata !600) #10, !dbg !5666
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5625, metadata !600) #10, !dbg !5666
  br label %77, !dbg !5667

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %20 = load i32, i32* %17, align 16
  br label %21, !dbg !5661

; <label>:21:                                     ; preds = %34, %16
  %22 = phi i32 [ %20, %16 ], [ %35, %34 ], !dbg !5669
  %23 = phi i64 [ 0, %16 ], [ %42, %34 ]
  %24 = phi i64 [ %7, %16 ], [ %43, %34 ]
  %25 = icmp ult i32 %22, 41, !dbg !5669
  br i1 %25, label %26, label %31, !dbg !5669

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %18, align 16, !dbg !5670
  %28 = sext i32 %22 to i64, !dbg !5670
  %29 = getelementptr i8, i8* %27, i64 %28, !dbg !5670
  %30 = add i32 %22, 8, !dbg !5670
  store i32 %30, i32* %17, align 16, !dbg !5670
  br label %34, !dbg !5670

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %19, align 8, !dbg !5672
  %33 = getelementptr i8, i8* %32, i64 8, !dbg !5672
  store i8* %33, i8** %19, align 8, !dbg !5672
  br label %34, !dbg !5672

; <label>:34:                                     ; preds = %31, %26
  %35 = phi i32 [ %30, %26 ], [ %22, %31 ]
  %36 = phi i8* [ %29, %26 ], [ %32, %31 ]
  %37 = bitcast i8* %36 to i8**, !dbg !5674
  %38 = load i8*, i8** %37, align 8, !dbg !5674
  call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !5626, metadata !600) #10, !dbg !5676
  %39 = call i64 @strlen(i8* %38) #13, !dbg !5677
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !5678, metadata !600) #10, !dbg !5686
  call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !5684, metadata !600) #10, !dbg !5688
  %40 = add i64 %39, %23, !dbg !5689
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !5685, metadata !600) #10, !dbg !5690
  %41 = icmp uge i64 %40, %23, !dbg !5691
  %42 = select i1 %41, i64 %40, i64 -1, !dbg !5692
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !5623, metadata !600) #10, !dbg !5656
  %43 = add i64 %24, -1, !dbg !5693
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !5623, metadata !600) #10, !dbg !5656
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  %44 = icmp eq i64 %43, 0, !dbg !5659
  br i1 %44, label %45, label %21, !dbg !5661, !llvm.loop !5695

; <label>:45:                                     ; preds = %34
  call void @llvm.va_end(i8* nonnull %11) #10, !dbg !5663
  %46 = icmp ugt i64 %42, 2147483647, !dbg !5698
  br i1 %46, label %47, label %49, !dbg !5701

; <label>:47:                                     ; preds = %45
  %48 = tail call i32* @__errno_location() #1, !dbg !5702
  store i32 75, i32* %48, align 4, !dbg !5704, !tbaa !723
  br label %87, !dbg !5705

; <label>:49:                                     ; preds = %45
  %50 = add i64 %40, 1, !dbg !5664
  %51 = call noalias i8* @xmalloc(i64 %50) #10, !dbg !5664
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5622, metadata !600) #10, !dbg !5665
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5625, metadata !600) #10, !dbg !5666
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !5625, metadata !600) #10, !dbg !5666
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  br label %55, !dbg !5667

; <label>:55:                                     ; preds = %68, %49
  %56 = phi i64 [ %7, %49 ], [ %74, %68 ]
  %57 = phi i8* [ %51, %49 ], [ %73, %68 ]
  %58 = load i32, i32* %52, align 8, !dbg !5706
  %59 = icmp ult i32 %58, 41, !dbg !5706
  br i1 %59, label %60, label %65, !dbg !5706

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %53, align 8, !dbg !5707
  %62 = sext i32 %58 to i64, !dbg !5707
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !5707
  %64 = add i32 %58, 8, !dbg !5707
  store i32 %64, i32* %52, align 8, !dbg !5707
  br label %68, !dbg !5707

; <label>:65:                                     ; preds = %55
  %66 = load i8*, i8** %54, align 8, !dbg !5709
  %67 = getelementptr i8, i8* %66, i64 8, !dbg !5709
  store i8* %67, i8** %54, align 8, !dbg !5709
  br label %68, !dbg !5709

; <label>:68:                                     ; preds = %65, %60
  %69 = phi i8* [ %63, %60 ], [ %66, %65 ]
  %70 = bitcast i8* %69 to i8**, !dbg !5711
  %71 = load i8*, i8** %70, align 8, !dbg !5711
  call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !5630, metadata !600) #10, !dbg !5713
  %72 = call i64 @strlen(i8* %71) #13, !dbg !5714
  call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !5634, metadata !600) #10, !dbg !5715
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %71, i64 %72, i32 1, i1 false) #10, !dbg !5716
  %73 = getelementptr inbounds i8, i8* %57, i64 %72, !dbg !5717
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !5625, metadata !600) #10, !dbg !5666
  %74 = add i64 %56, -1, !dbg !5718
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !5624, metadata !600) #10, !dbg !5658
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !5625, metadata !600) #10, !dbg !5666
  %75 = icmp eq i64 %74, 0, !dbg !5720
  br i1 %75, label %76, label %55, !dbg !5667, !llvm.loop !5722

; <label>:76:                                     ; preds = %68
  br label %77, !dbg !5725

; <label>:77:                                     ; preds = %76, %14
  %78 = phi i8* [ %15, %14 ], [ %51, %76 ]
  %79 = phi i8* [ %15, %14 ], [ %73, %76 ]
  store i8 0, i8* %79, align 1, !dbg !5725, !tbaa !754
  br label %87, !dbg !5726

; <label>:80:                                     ; preds = %6
  %81 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !5727
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !5614, metadata !600), !dbg !5649
  %82 = load i8, i8* %81, align 1, !dbg !5728, !tbaa !754
  %83 = icmp eq i8 %82, 115, !dbg !5730
  br i1 %83, label %84, label %89, !dbg !5731

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !5732
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !5614, metadata !600), !dbg !5649
  %86 = add i64 %7, 1, !dbg !5733
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !5612, metadata !600), !dbg !5648
  br label %6, !dbg !5734, !llvm.loop !5736

; <label>:87:                                     ; preds = %77, %47
  %88 = phi i8* [ null, %47 ], [ %78, %77 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %11) #10, !dbg !5739
  br label %99

; <label>:89:                                     ; preds = %6, %80
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5611, metadata !2123), !dbg !5740
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5741, metadata !600) #10, !dbg !5751
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5749, metadata !600) #10, !dbg !5751
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, i64 0, metadata !5750, metadata !600) #10, !dbg !5751
  %90 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* %0, %struct.__va_list_tag* %1) #10, !dbg !5754
  %91 = icmp slt i32 %90, 0, !dbg !5755
  br i1 %91, label %92, label %97, !dbg !5756

; <label>:92:                                     ; preds = %89
  %93 = tail call i32* @__errno_location() #1, !dbg !5757
  %94 = load i32, i32* %93, align 4, !dbg !5757, !tbaa !723
  %95 = icmp eq i32 %94, 12, !dbg !5760
  br i1 %95, label %96, label %99, !dbg !5761

; <label>:96:                                     ; preds = %92
  call void @xalloc_die() #14, !dbg !5762
  unreachable, !dbg !5762

; <label>:97:                                     ; preds = %89
  %98 = load i8*, i8** %4, align 8, !dbg !5763, !tbaa !608
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !5611, metadata !600), !dbg !5740
  br label %99, !dbg !5764

; <label>:99:                                     ; preds = %87, %92, %97
  %100 = phi i8* [ %98, %97 ], [ %88, %87 ], [ null, %92 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #10, !dbg !5765
  ret i8* %100, !dbg !5765
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #10

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5766 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5769, metadata !600), !dbg !5775
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5770, metadata !600), !dbg !5776
  %3 = icmp eq i64 %0, 0, !dbg !5777
  %4 = icmp eq i64 %1, 0, !dbg !5778
  %5 = or i1 %3, %4, !dbg !5780
  br i1 %5, label %12, label %6, !dbg !5780

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5781
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5772, metadata !600), !dbg !5782
  %8 = udiv i64 %7, %1, !dbg !5783
  %9 = icmp eq i64 %8, %0, !dbg !5785
  br i1 %9, label %12, label %10, !dbg !5786

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !5787
  store i32 12, i32* %11, align 4, !dbg !5789, !tbaa !723
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5769, metadata !600), !dbg !5775
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5770, metadata !600), !dbg !5776
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !5790
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5771, metadata !600), !dbg !5791
  br label %16, !dbg !5792

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5793
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5794 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5811, metadata !600), !dbg !5820
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5812, metadata !600), !dbg !5821
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5813, metadata !600), !dbg !5822
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5814, metadata !600), !dbg !5823
  %6 = bitcast i32* %5 to i8*, !dbg !5824
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !5824
  %7 = icmp eq i32* %0, null, !dbg !5825
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5811, metadata !600), !dbg !5820
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5827
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5811, metadata !600), !dbg !5820
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !5828
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5815, metadata !600), !dbg !5829
  %10 = icmp ugt i64 %9, -3, !dbg !5830
  %11 = icmp ne i64 %2, 0, !dbg !5831
  %12 = and i1 %11, %10, !dbg !5833
  br i1 %12, label %13, label %18, !dbg !5833

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !5834
  br i1 %14, label %18, label %15, !dbg !5836

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5838, !tbaa !754
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5817, metadata !600), !dbg !5839
  %17 = zext i8 %16 to i32, !dbg !5840
  store i32 %17, i32* %8, align 4, !dbg !5841, !tbaa !723
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !5842
  ret i64 %19, !dbg !5842
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5843 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5888, metadata !600), !dbg !5893
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5894
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5895, metadata !600), !dbg !5899
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5901
  %4 = load i32, i32* %3, align 8, !dbg !5901, !tbaa !5902
  %5 = and i32 %4, 32, !dbg !5901
  %6 = icmp eq i32 %5, 0, !dbg !5904
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5905
  %8 = icmp ne i32 %7, 0, !dbg !5906
  br i1 %6, label %9, label %19, !dbg !5907

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5909
  %11 = icmp ne i64 %2, 0, !dbg !5909
  %12 = or i1 %11, %10, !dbg !5909
  %13 = sext i1 %8 to i32, !dbg !5909
  br i1 %12, label %22, label %14, !dbg !5909

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5911
  %16 = load i32, i32* %15, align 4, !dbg !5911, !tbaa !723
  %17 = icmp ne i32 %16, 9, !dbg !5913
  %18 = sext i1 %17 to i32, !dbg !5913
  br label %22, !dbg !5913

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5915

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5917
  store i32 0, i32* %21, align 4, !dbg !5919, !tbaa !723
  br label %22, !dbg !5917

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5920
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5921 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5924, metadata !600), !dbg !5944
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5925, metadata !600), !dbg !5945
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5946
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5926, metadata !600), !dbg !5947
  %3 = icmp eq i8* %2, null, !dbg !5948
  br i1 %3, label %15, label %4, !dbg !5949

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5934, metadata !600), !dbg !5950
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5935, metadata !600), !dbg !5951
  %5 = load i8, i8* %2, align 1, !dbg !5952, !tbaa !754
  %6 = icmp eq i8 %5, 67, !dbg !5954
  br i1 %6, label %7, label %11, !dbg !5957

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5959
  %9 = load i8, i8* %8, align 1, !dbg !5959, !tbaa !754
  %10 = icmp eq i8 %9, 0, !dbg !5962
  br i1 %10, label %14, label %11, !dbg !5964

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5940, metadata !600), !dbg !5966
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.124, i64 0, i64 0)) #10, !dbg !5967
  %13 = icmp eq i32 %12, 0, !dbg !5969
  br i1 %13, label %14, label %15, !dbg !5971

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5925, metadata !600), !dbg !5945
  br label %15, !dbg !5973

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5974
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5975 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5987, metadata !600), !dbg !6061
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !6054, metadata !600), !dbg !6063
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !6064
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5979, metadata !600), !dbg !6065
  %4 = icmp eq i8* %3, null, !dbg !6066
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), i8* %3, !dbg !6068
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5979, metadata !600), !dbg !6065
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !6069, !tbaa !608
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !6001, metadata !600) #10, !dbg !6070
  %7 = icmp eq i8* %6, null, !dbg !6071
  br i1 %7, label %8, label %127, !dbg !6072

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.128, i64 0, i64 0)) #10, !dbg !6073
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !6002, metadata !600) #10, !dbg !6074
  %10 = icmp eq i8* %9, null, !dbg !6075
  br i1 %10, label %14, label %11, !dbg !6077

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !6078, !tbaa !754
  %13 = icmp eq i8 %12, 0, !dbg !6080
  br i1 %13, label %14, label %15, !dbg !6081

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !6083

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.129, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !6002, metadata !600) #10, !dbg !6074
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !6084
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !6005, metadata !600) #10, !dbg !6085
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !6007, metadata !600) #10, !dbg !6086
  %18 = icmp eq i64 %17, 0, !dbg !6087
  br i1 %18, label %24, label %19, !dbg !6088

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !6089
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !6089
  %22 = load i8, i8* %21, align 1, !dbg !6089, !tbaa !754
  %23 = icmp ne i8 %22, 47, !dbg !6091
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !6092
  %27 = add i64 %17, 14, !dbg !6093
  %28 = add i64 %27, %26, !dbg !6094
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !6095
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !6004, metadata !600) #10, !dbg !6096
  %30 = icmp eq i8* %29, null, !dbg !6097
  br i1 %30, label %125, label %31, !dbg !6097

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !6098
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !6101

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !6102, !tbaa !754
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6104
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.130, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !6105
  br label %37, !dbg !6106

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6104
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.130, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !6105
  br label %37, !dbg !6106

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !6107
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !6009, metadata !600) #10, !dbg !6108
  %39 = icmp slt i32 %38, 0, !dbg !6109
  br i1 %39, label %123, label %40, !dbg !6110

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.131, i64 0, i64 0)) #10, !dbg !6111
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6010, metadata !600) #10, !dbg !6112
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !6113
  br i1 %42, label %48, label %43, !dbg !6114

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !6115

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !6116
  br label %123, !dbg !6118

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6051, metadata !600) #10, !dbg !6115
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !6052, metadata !600) #10, !dbg !6119
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !6120
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !6121
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6122, metadata !600) #10, !dbg !6127
  %53 = load i8*, i8** %46, align 8, !dbg !6129, !tbaa !6130
  %54 = load i8*, i8** %47, align 8, !dbg !6129, !tbaa !6131
  %55 = icmp ult i8* %53, %54, !dbg !6129
  br i1 %55, label %58, label %56, !dbg !6129, !prof !6132

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !6133
  br label %62, !dbg !6133

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !6135
  store i8* %59, i8** %46, align 8, !dbg !6135, !tbaa !6130
  %60 = load i8, i8* %53, align 1, !dbg !6135, !tbaa !754
  %61 = zext i8 %60 to i32, !dbg !6135
  br label %62, !dbg !6135

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !6137
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !6053, metadata !600) #10, !dbg !6139
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !6140

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !6141

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6122, metadata !600) #10, !dbg !6141
  %66 = load i8*, i8** %46, align 8, !dbg !6145, !tbaa !6130
  %67 = load i8*, i8** %47, align 8, !dbg !6145, !tbaa !6131
  %68 = icmp ult i8* %66, %67, !dbg !6145
  br i1 %68, label %71, label %69, !dbg !6145, !prof !6132

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !6146
  br label %75, !dbg !6146

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !6147
  store i8* %72, i8** %46, align 8, !dbg !6147, !tbaa !6130
  %73 = load i8, i8* %66, align 1, !dbg !6147, !tbaa !754
  %74 = zext i8 %73 to i32, !dbg !6147
  br label %75, !dbg !6147

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !6148
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !6053, metadata !600) #10, !dbg !6139
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !6149, !llvm.loop !6151

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !6154
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.132, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !6155
  %80 = icmp slt i32 %79, 2, !dbg !6157
  br i1 %80, label %115, label %81, !dbg !6158

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !6159
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !6058, metadata !600) #10, !dbg !6160
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !6161
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !6059, metadata !600) #10, !dbg !6162
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6060, metadata !600) #10, !dbg !6163
  %84 = icmp eq i64 %51, 0, !dbg !6164
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !6166

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !6052, metadata !600) #10, !dbg !6119
  %89 = add i64 %86, 2, !dbg !6167
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !6169
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !6051, metadata !600) #10, !dbg !6115
  br label %95, !dbg !6170

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !6171
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !6052, metadata !600) #10, !dbg !6119
  %93 = add i64 %92, 1, !dbg !6173
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !6174
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !6051, metadata !600) #10, !dbg !6115
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !6051, metadata !600) #10, !dbg !6115
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !6052, metadata !600) #10, !dbg !6119
  %98 = icmp eq i8* %97, null, !dbg !6175
  br i1 %98, label %99, label %100, !dbg !6177

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6052, metadata !600) #10, !dbg !6119
  call void @free(i8* %52) #10, !dbg !6178
  br label %116, !dbg !6180

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !6181
  %102 = xor i64 %83, -1, !dbg !6182
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !6182
  %104 = xor i64 %82, -1, !dbg !6183
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !6183
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !6184, metadata !600) #10, !dbg !6192
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !6191, metadata !600) #10, !dbg !6192
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !6194
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !6195
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !6184, metadata !600) #10, !dbg !6196
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !6191, metadata !600) #10, !dbg !6196
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !6198
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !6199
  br label %111, !dbg !6200

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !6115

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6051, metadata !600) #10, !dbg !6115
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6052, metadata !600) #10, !dbg !6119
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !6200
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !6200
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !6115

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !6115

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6051, metadata !600) #10, !dbg !6115
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6052, metadata !600) #10, !dbg !6119
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !6200
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !6200
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !6201
  %120 = icmp eq i64 %117, 0, !dbg !6202
  br i1 %120, label %123, label %121, !dbg !6204

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !6205
  store i8 0, i8* %122, align 1, !dbg !6207, !tbaa !754
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6001, metadata !600) #10, !dbg !6070
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !6001, metadata !600) #10, !dbg !6070
  call void @free(i8* %29) #10, !dbg !6208
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !6001, metadata !600) #10, !dbg !6070
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !6209, !tbaa !608
  br label %127, !dbg !6210

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5980, metadata !600), !dbg !6211
  %129 = load i8, i8* %128, align 1, !dbg !6212, !tbaa !754
  %130 = icmp eq i8 %129, 0, !dbg !6213
  br i1 %130, label %157, label %131, !dbg !6214

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !6216

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !6216
  %136 = icmp eq i32 %135, 0, !dbg !6217
  br i1 %136, label %143, label %137, !dbg !6218

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !6219
  br i1 %138, label %139, label %147, !dbg !6221

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !6222
  %141 = load i8, i8* %140, align 1, !dbg !6222, !tbaa !754
  %142 = icmp eq i8 %141, 0, !dbg !6224
  br i1 %142, label %143, label %147, !dbg !6225

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !6227
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !6229
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !6230
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5979, metadata !600), !dbg !6065
  br label %157, !dbg !6231

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !6232
  %149 = add i64 %148, 1, !dbg !6233
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !6234
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5980, metadata !600), !dbg !6211
  %151 = call i64 @strlen(i8* %150) #13, !dbg !6235
  %152 = add i64 %151, 1, !dbg !6236
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !6237
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5980, metadata !600), !dbg !6211
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5980, metadata !600), !dbg !6211
  %154 = load i8, i8* %153, align 1, !dbg !6212, !tbaa !754
  %155 = icmp eq i8 %154, 0, !dbg !6213
  br i1 %155, label %156, label %132, !dbg !6214, !llvm.loop !6238

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !6065

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5979, metadata !600), !dbg !6065
  %159 = load i8, i8* %158, align 1, !dbg !6241, !tbaa !754
  %160 = icmp eq i8 %159, 0, !dbg !6243
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), i8* %158, !dbg !6244
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5979, metadata !600), !dbg !6065
  ret i8* %161, !dbg !6245
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !6246 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6291, metadata !600), !dbg !6295
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6292, metadata !600), !dbg !6296
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6294, metadata !600), !dbg !6297
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !6298
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6293, metadata !600), !dbg !6299
  %3 = icmp slt i32 %2, 0, !dbg !6300
  br i1 %3, label %4, label %6, !dbg !6302

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6303
  br label %24, !dbg !6304

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !6305
  %8 = icmp eq i32 %7, 0, !dbg !6305
  br i1 %8, label %13, label %9, !dbg !6307

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !6308
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !6310
  %12 = icmp eq i64 %11, -1, !dbg !6312
  br i1 %12, label %16, label %13, !dbg !6313

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !6314
  %15 = icmp eq i32 %14, 0, !dbg !6314
  br i1 %15, label %16, label %18, !dbg !6315

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6292, metadata !600), !dbg !6296
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6317
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6294, metadata !600), !dbg !6297
  br label %24, !dbg !6318

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !6319
  %20 = load i32, i32* %19, align 4, !dbg !6319, !tbaa !723
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6292, metadata !600), !dbg !6296
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6292, metadata !600), !dbg !6296
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6317
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6294, metadata !600), !dbg !6297
  %22 = icmp eq i32 %20, 0, !dbg !6320
  br i1 %22, label %24, label %23, !dbg !6318

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !6322, !tbaa !723
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !6294, metadata !600), !dbg !6297
  br label %24, !dbg !6324

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !6325
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !6326 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6371, metadata !600), !dbg !6372
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !6373
  br i1 %2, label %6, label %3, !dbg !6375

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !6376
  %5 = icmp eq i32 %4, 0, !dbg !6376
  br i1 %5, label %6, label %8, !dbg !6378

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !6380
  br label %17, !dbg !6381

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6382, metadata !600) #10, !dbg !6387
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6389
  %10 = load i32, i32* %9, align 8, !dbg !6389, !tbaa !5902
  %11 = and i32 %10, 256, !dbg !6391
  %12 = icmp eq i32 %11, 0, !dbg !6391
  br i1 %12, label %15, label %13, !dbg !6392

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !6393
  br label %15, !dbg !6393

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !6394
  br label %17, !dbg !6395

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !6396
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !6397 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6443, metadata !600), !dbg !6449
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6444, metadata !600), !dbg !6450
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6445, metadata !600), !dbg !6451
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !6452
  %5 = load i8*, i8** %4, align 8, !dbg !6452, !tbaa !6131
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !6453
  %7 = load i8*, i8** %6, align 8, !dbg !6453, !tbaa !6130
  %8 = icmp eq i8* %5, %7, !dbg !6454
  br i1 %8, label %9, label %28, !dbg !6455

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !6456
  %11 = load i8*, i8** %10, align 8, !dbg !6456, !tbaa !6458
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !6459
  %13 = load i8*, i8** %12, align 8, !dbg !6459, !tbaa !6460
  %14 = icmp eq i8* %11, %13, !dbg !6461
  br i1 %14, label %15, label %28, !dbg !6462

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !6463
  %17 = load i8*, i8** %16, align 8, !dbg !6463, !tbaa !6464
  %18 = icmp eq i8* %17, null, !dbg !6465
  br i1 %18, label %19, label %28, !dbg !6466

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !6468
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !6469
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !6446, metadata !600), !dbg !6471
  %22 = icmp eq i64 %21, -1, !dbg !6472
  br i1 %22, label %30, label %23, !dbg !6474

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6475
  %25 = load i32, i32* %24, align 8, !dbg !6476, !tbaa !5902
  %26 = and i32 %25, -17, !dbg !6476
  store i32 %26, i32* %24, align 8, !dbg !6476, !tbaa !5902
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !6477
  store i64 %21, i64* %27, align 8, !dbg !6478, !tbaa !6479
  br label %30, !dbg !6480

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !6481
  br label %30, !dbg !6482

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !6483
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
attributes #7 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !81, !87, !96, !532, !103, !110, !539, !542, !544, !177, !552, !569, !571, !574, !576, !579, !581, !186, !584, !586, !588}
!llvm.ident = !{!590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590, !590}
!llvm.module.flags = !{!591, !592, !593, !594}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !6, line: 73, type: !78, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !43)
!3 = !DIFile(filename: "src/lbracket.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 59, size: 32, elements: !7)
!6 = !DIFile(filename: "src/test.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TEST_TRUE", value: 0)
!9 = !DIEnumerator(name: "TEST_FALSE", value: 1)
!10 = !DIEnumerator(name: "TEST_FAILURE", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 46, size: 32, elements: !13)
!12 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!14 = !DIEnumerator(name: "_ISupper", value: 256)
!15 = !DIEnumerator(name: "_ISlower", value: 512)
!16 = !DIEnumerator(name: "_ISalpha", value: 1024)
!17 = !DIEnumerator(name: "_ISdigit", value: 2048)
!18 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!19 = !DIEnumerator(name: "_ISspace", value: 8192)
!20 = !DIEnumerator(name: "_ISprint", value: 16384)
!21 = !DIEnumerator(name: "_ISgraph", value: 32768)
!22 = !DIEnumerator(name: "_ISblank", value: 1)
!23 = !DIEnumerator(name: "_IScntrl", value: 2)
!24 = !DIEnumerator(name: "_ISpunct", value: 4)
!25 = !DIEnumerator(name: "_ISalnum", value: 8)
!26 = !{!27, !30, !32, !35, !38, !39, !40, !41, !42}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 62, baseType: !29)
!28 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !{!44, !46, !0, !48}
!44 = !DIGlobalVariableExpression(var: !45)
!45 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !6, line: 71, type: !40, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47)
!47 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !6, line: 72, type: !40, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "infomap", scope: !50, file: !51, line: 632, type: !75, isLocal: true, isDefinition: true)
!50 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !51, file: !51, line: 630, type: !52, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !54)
!51 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!52 = !DISubroutineType(types: !53)
!53 = !{null, !35}
!54 = !{!55, !56, !57, !64, !66, !67, !68, !71, !72, !74}
!55 = !DILocalVariable(name: "program", arg: 1, scope: !50, file: !51, line: 630, type: !35)
!56 = !DILocalVariable(name: "node", scope: !50, file: !51, line: 642, type: !35)
!57 = !DILocalVariable(name: "map_prog", scope: !50, file: !51, line: 643, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !50, file: !51, line: 632, size: 128, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !60, file: !51, line: 632, baseType: !35, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !60, file: !51, line: 632, baseType: !35, size: 64, offset: 64)
!64 = !DILocalVariable(name: "__s1_len", scope: !65, file: !51, line: 645, type: !27)
!65 = distinct !DILexicalBlock(scope: !50, file: !51, line: 645, column: 33)
!66 = !DILocalVariable(name: "__s2_len", scope: !65, file: !51, line: 645, type: !27)
!67 = !DILocalVariable(name: "lc_messages", scope: !50, file: !51, line: 655, type: !35)
!68 = !DILocalVariable(name: "__s1_len", scope: !69, file: !51, line: 656, type: !27)
!69 = distinct !DILexicalBlock(scope: !70, file: !51, line: 656, column: 22)
!70 = distinct !DILexicalBlock(scope: !50, file: !51, line: 656, column: 7)
!71 = !DILocalVariable(name: "__s2_len", scope: !69, file: !51, line: 656, type: !27)
!72 = !DILocalVariable(name: "__s2", scope: !73, file: !51, line: 656, type: !32)
!73 = distinct !DILexicalBlock(scope: !69, file: !51, line: 656, column: 22)
!74 = !DILocalVariable(name: "__result", scope: !73, file: !51, line: 656, type: !40)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 896, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 7)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "Version", scope: !81, file: !82, line: 2, type: !35, isLocal: false, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !84)
!82 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !{}
!84 = !{!79}
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "file_name", scope: !87, file: !92, line: 36, type: !35, isLocal: true, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !89)
!88 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!89 = !{!85, !90}
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !87, file: !92, line: 46, type: !93, isLocal: true, isDefinition: true)
!92 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "exit_failure", scope: !96, file: !99, line: 24, type: !100, isLocal: false, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !98)
!97 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !{!94}
!99 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "program_name", scope: !103, file: !107, line: 33, type: !35, isLocal: false, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !105, globals: !106)
!104 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !{!39, !38}
!106 = !{!101}
!107 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!108 = !DIGlobalVariableExpression(var: !109)
!109 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !110, file: !136, line: 77, type: !171, isLocal: false, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !112, retainedTypes: !132, globals: !133)
!111 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !{!113, !127, !11}
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !114, line: 32, size: 32, elements: !115)
!114 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!116 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!117 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!118 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!119 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!120 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!121 = !DIEnumerator(name: "c_quoting_style", value: 5)
!122 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!123 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!124 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!125 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!126 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !114, line: 242, size: 32, elements: !128)
!128 = !{!129, !130, !131}
!129 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!130 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!131 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!132 = !{!40, !41, !27, !38}
!133 = !{!108, !134, !141, !153, !155, !160, !167, !169}
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !110, file: !136, line: 93, type: !137, isLocal: false, isDefinition: true)
!136 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 320, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!139 = !{!140}
!140 = !DISubrange(count: 10)
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !110, file: !136, line: 1043, type: !143, isLocal: false, isDefinition: true)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !136, line: 57, size: 448, elements: !144)
!144 = !{!145, !146, !147, !151, !152}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !143, file: !136, line: 60, baseType: !113, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !136, line: 63, baseType: !40, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !143, file: !136, line: 67, baseType: !148, size: 256, offset: 64)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !143, file: !136, line: 70, baseType: !35, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !143, file: !136, line: 73, baseType: !35, size: 64, offset: 384)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !110, file: !136, line: 108, type: !143, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "slot0", scope: !110, file: !136, line: 834, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 256)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "slotvec", scope: !110, file: !136, line: 837, type: !162, isLocal: true, isDefinition: true)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !136, line: 826, size: 128, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !163, file: !136, line: 828, baseType: !27, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !163, file: !136, line: 829, baseType: !38, size: 64, offset: 64)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "nslots", scope: !110, file: !136, line: 835, type: !40, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "slotvec0", scope: !110, file: !136, line: 836, type: !163, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 704, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!173 = !{!174}
!174 = !DISubrange(count: 11)
!175 = !DIGlobalVariableExpression(var: !176)
!176 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !177, file: !180, line: 26, type: !181, isLocal: false, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, globals: !179)
!178 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!179 = !{!175}
!180 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !182)
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
!527 = !{!39, !38, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!529 = !{!184}
!530 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!531 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!532 = distinct !DICompileUnit(language: DW_LANG_C99, file: !533, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !534)
!533 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !536, line: 136, baseType: !537)
!536 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !538, line: 62, baseType: !29)
!538 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = distinct !DICompileUnit(language: DW_LANG_C99, file: !540, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !541)
!540 = !DIFile(filename: "./lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!541 = !{!42}
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !543, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83)
!543 = !DIFile(filename: "./lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !546, retainedTypes: !551)
!545 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !{!547}
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !548, line: 41, size: 32, elements: !549)
!548 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = !{!550}
!550 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!551 = !{!39}
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !554, retainedTypes: !568)
!553 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!555}
!555 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !557, file: !556, line: 192, size: 32, elements: !566)
!556 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = distinct !DISubprogram(name: "x2nrealloc", scope: !556, file: !556, line: 180, type: !558, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !561)
!558 = !DISubroutineType(types: !559)
!559 = !{!39, !39, !560, !27}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!561 = !{!562, !563, !564, !565}
!562 = !DILocalVariable(name: "p", arg: 1, scope: !557, file: !556, line: 180, type: !39)
!563 = !DILocalVariable(name: "pn", arg: 2, scope: !557, file: !556, line: 180, type: !560)
!564 = !DILocalVariable(name: "s", arg: 3, scope: !557, file: !556, line: 180, type: !27)
!565 = !DILocalVariable(name: "n", scope: !557, file: !556, line: 182, type: !27)
!566 = !{!567}
!567 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!568 = !{!27, !38, !39}
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83)
!570 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !573)
!572 = !DIFile(filename: "./lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = !{!38}
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !551)
!575 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !578)
!577 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !{!27}
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83)
!580 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !583)
!582 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = !{!27, !30, !32, !35}
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83)
!585 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !551)
!587 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !551)
!589 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!591 = !{i32 2, !"Dwarf Version", i32 4}
!592 = !{i32 2, !"Debug Info Version", i32 3}
!593 = !{i32 1, !"PIC Level", i32 2}
!594 = !{i32 1, !"PIE Level", i32 2}
!595 = distinct !DISubprogram(name: "usage", scope: !6, file: !6, line: 703, type: !596, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !40}
!598 = !{!599}
!599 = !DILocalVariable(name: "status", arg: 1, scope: !595, file: !6, line: 703, type: !40)
!600 = !DIExpression()
!601 = !DILocation(line: 703, column: 12, scope: !595)
!602 = !DILocation(line: 705, column: 14, scope: !603)
!603 = distinct !DILexicalBlock(scope: !595, file: !6, line: 705, column: 7)
!604 = !DILocation(line: 705, column: 7, scope: !595)
!605 = !DILocation(line: 706, column: 5, scope: !606)
!606 = !DILexicalBlockFile(scope: !607, file: !6, discriminator: 1)
!607 = distinct !DILexicalBlock(scope: !603, file: !6, line: 706, column: 5)
!608 = !{!609, !609, i64 0}
!609 = !{!"any pointer", !610, i64 0}
!610 = !{!"omnipotent char", !611, i64 0}
!611 = !{!"Simple C/C++ TBAA"}
!612 = !DILocation(line: 706, column: 5, scope: !613)
!613 = !DILexicalBlockFile(scope: !607, file: !6, discriminator: 3)
!614 = !DILocation(line: 706, column: 5, scope: !615)
!615 = !DILexicalBlockFile(scope: !607, file: !6, discriminator: 2)
!616 = !DILocation(line: 709, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !603, file: !6, line: 708, column: 5)
!618 = !DILocation(line: 709, column: 7, scope: !619)
!619 = !DILexicalBlockFile(scope: !617, file: !6, discriminator: 1)
!620 = !DILocation(line: 716, column: 7, scope: !617)
!621 = !DILocation(line: 716, column: 7, scope: !619)
!622 = !DILocation(line: 720, column: 7, scope: !617)
!623 = !DILocation(line: 720, column: 7, scope: !619)
!624 = !DILocation(line: 721, column: 7, scope: !617)
!625 = !DILocation(line: 721, column: 7, scope: !619)
!626 = !DILocation(line: 722, column: 7, scope: !617)
!627 = !DILocation(line: 722, column: 7, scope: !619)
!628 = !DILocation(line: 727, column: 7, scope: !617)
!629 = !DILocation(line: 727, column: 7, scope: !619)
!630 = !DILocation(line: 734, column: 7, scope: !617)
!631 = !DILocation(line: 734, column: 7, scope: !619)
!632 = !DILocation(line: 742, column: 7, scope: !617)
!633 = !DILocation(line: 742, column: 7, scope: !619)
!634 = !DILocation(line: 751, column: 7, scope: !617)
!635 = !DILocation(line: 751, column: 7, scope: !619)
!636 = !DILocation(line: 757, column: 7, scope: !617)
!637 = !DILocation(line: 757, column: 7, scope: !619)
!638 = !DILocation(line: 764, column: 7, scope: !617)
!639 = !DILocation(line: 764, column: 7, scope: !619)
!640 = !DILocation(line: 771, column: 7, scope: !617)
!641 = !DILocation(line: 771, column: 7, scope: !619)
!642 = !DILocation(line: 778, column: 7, scope: !617)
!643 = !DILocation(line: 778, column: 7, scope: !619)
!644 = !DILocation(line: 785, column: 7, scope: !617)
!645 = !DILocation(line: 785, column: 7, scope: !619)
!646 = !DILocation(line: 791, column: 7, scope: !617)
!647 = !DILocation(line: 791, column: 7, scope: !619)
!648 = !DILocation(line: 796, column: 7, scope: !617)
!649 = !DILocation(line: 796, column: 7, scope: !619)
!650 = !DILocation(line: 801, column: 7, scope: !617)
!651 = !DILocation(line: 801, column: 7, scope: !619)
!652 = !DILocation(line: 801, column: 7, scope: !653)
!653 = !DILexicalBlockFile(scope: !617, file: !6, discriminator: 2)
!654 = !DILocation(line: 642, column: 15, scope: !50, inlinedAt: !655)
!655 = distinct !DILocation(line: 802, column: 7, scope: !617)
!656 = !DILocation(line: 651, column: 3, scope: !50, inlinedAt: !655)
!657 = !DILocation(line: 651, column: 3, scope: !658, inlinedAt: !655)
!658 = !DILexicalBlockFile(scope: !50, file: !51, discriminator: 1)
!659 = !DILocation(line: 655, column: 29, scope: !50, inlinedAt: !655)
!660 = !DILocation(line: 655, column: 15, scope: !50, inlinedAt: !655)
!661 = !DILocation(line: 656, column: 7, scope: !70, inlinedAt: !655)
!662 = !DILocation(line: 656, column: 19, scope: !70, inlinedAt: !655)
!663 = !DILocation(line: 656, column: 22, scope: !664, inlinedAt: !655)
!664 = !DILexicalBlockFile(scope: !70, file: !51, discriminator: 16)
!665 = !DILocation(line: 656, column: 7, scope: !666, inlinedAt: !655)
!666 = !DILexicalBlockFile(scope: !50, file: !51, discriminator: 16)
!667 = !DILocation(line: 662, column: 7, scope: !668, inlinedAt: !655)
!668 = distinct !DILexicalBlock(scope: !70, file: !51, line: 657, column: 5)
!669 = !DILocation(line: 662, column: 7, scope: !670, inlinedAt: !655)
!670 = !DILexicalBlockFile(scope: !668, file: !51, discriminator: 1)
!671 = !DILocation(line: 664, column: 5, scope: !668, inlinedAt: !655)
!672 = !DILocation(line: 665, column: 3, scope: !50, inlinedAt: !655)
!673 = !DILocation(line: 665, column: 3, scope: !658, inlinedAt: !655)
!674 = !DILocation(line: 667, column: 3, scope: !50, inlinedAt: !655)
!675 = !DILocation(line: 667, column: 3, scope: !658, inlinedAt: !655)
!676 = !DILocation(line: 804, column: 3, scope: !595)
!677 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 823, type: !678, isLocal: false, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!40, !40, !78}
!680 = !{!681, !682, !683, !684, !691, !692, !694, !695, !698, !699, !701, !702, !705, !706, !708}
!681 = !DILocalVariable(name: "margc", arg: 1, scope: !677, file: !6, line: 823, type: !40)
!682 = !DILocalVariable(name: "margv", arg: 2, scope: !677, file: !6, line: 823, type: !78)
!683 = !DILocalVariable(name: "value", scope: !677, file: !6, line: 825, type: !93)
!684 = !DILocalVariable(name: "__s1_len", scope: !685, file: !6, line: 857, type: !27)
!685 = distinct !DILexicalBlock(scope: !686, file: !6, line: 857, column: 15)
!686 = distinct !DILexicalBlock(scope: !687, file: !6, line: 857, column: 15)
!687 = distinct !DILexicalBlock(scope: !688, file: !6, line: 856, column: 9)
!688 = distinct !DILexicalBlock(scope: !689, file: !6, line: 855, column: 11)
!689 = distinct !DILexicalBlock(scope: !690, file: !6, line: 848, column: 5)
!690 = distinct !DILexicalBlock(scope: !677, file: !6, line: 847, column: 7)
!691 = !DILocalVariable(name: "__s2_len", scope: !685, file: !6, line: 857, type: !27)
!692 = !DILocalVariable(name: "__s2", scope: !693, file: !6, line: 857, type: !32)
!693 = distinct !DILexicalBlock(scope: !685, file: !6, line: 857, column: 15)
!694 = !DILocalVariable(name: "__result", scope: !693, file: !6, line: 857, type: !40)
!695 = !DILocalVariable(name: "__s1_len", scope: !696, file: !6, line: 860, type: !27)
!696 = distinct !DILexicalBlock(scope: !697, file: !6, line: 860, column: 15)
!697 = distinct !DILexicalBlock(scope: !687, file: !6, line: 860, column: 15)
!698 = !DILocalVariable(name: "__s2_len", scope: !696, file: !6, line: 860, type: !27)
!699 = !DILocalVariable(name: "__s2", scope: !700, file: !6, line: 860, type: !32)
!700 = distinct !DILexicalBlock(scope: !696, file: !6, line: 860, column: 15)
!701 = !DILocalVariable(name: "__result", scope: !700, file: !6, line: 860, type: !40)
!702 = !DILocalVariable(name: "__s1_len", scope: !703, file: !6, line: 867, type: !27)
!703 = distinct !DILexicalBlock(scope: !704, file: !6, line: 867, column: 25)
!704 = distinct !DILexicalBlock(scope: !689, file: !6, line: 867, column: 11)
!705 = !DILocalVariable(name: "__s2_len", scope: !703, file: !6, line: 867, type: !27)
!706 = !DILocalVariable(name: "__s2", scope: !707, file: !6, line: 867, type: !32)
!707 = distinct !DILexicalBlock(scope: !703, file: !6, line: 867, column: 25)
!708 = !DILocalVariable(name: "__result", scope: !707, file: !6, line: 867, type: !40)
!709 = !DILocation(line: 823, column: 11, scope: !677)
!710 = !DILocation(line: 823, column: 25, scope: !677)
!711 = !DILocation(line: 836, column: 21, scope: !677)
!712 = !DILocation(line: 836, column: 3, scope: !677)
!713 = !DILocation(line: 837, column: 3, scope: !677)
!714 = !DILocation(line: 838, column: 3, scope: !677)
!715 = !DILocation(line: 839, column: 3, scope: !677)
!716 = !DILocalVariable(name: "status", arg: 1, scope: !717, file: !51, line: 99, type: !40)
!717 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !51, file: !51, line: 99, type: !596, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !718)
!718 = !{!716}
!719 = !DILocation(line: 99, column: 30, scope: !717, inlinedAt: !720)
!720 = distinct !DILocation(line: 841, column: 3, scope: !677)
!721 = !DILocation(line: 102, column: 18, scope: !722, inlinedAt: !720)
!722 = distinct !DILexicalBlock(scope: !717, file: !51, line: 101, column: 7)
!723 = !{!724, !724, i64 0}
!724 = !{!"int", !610, i64 0}
!725 = !DILocation(line: 842, column: 3, scope: !677)
!726 = !DILocation(line: 845, column: 8, scope: !677)
!727 = !DILocation(line: 855, column: 17, scope: !688)
!728 = !DILocation(line: 855, column: 11, scope: !689)
!729 = !DILocation(line: 857, column: 15, scope: !685)
!730 = !DILocation(line: 857, column: 15, scope: !731)
!731 = !DILexicalBlockFile(scope: !685, file: !6, discriminator: 12)
!732 = !DILocation(line: 857, column: 15, scope: !733)
!733 = !DILexicalBlockFile(scope: !686, file: !6, discriminator: 13)
!734 = !DILocation(line: 857, column: 15, scope: !735)
!735 = !DILexicalBlockFile(scope: !687, file: !6, discriminator: 13)
!736 = !DILocation(line: 858, column: 13, scope: !686)
!737 = !DILocation(line: 860, column: 15, scope: !696)
!738 = !DILocation(line: 860, column: 15, scope: !739)
!739 = !DILexicalBlockFile(scope: !696, file: !6, discriminator: 12)
!740 = !DILocation(line: 860, column: 15, scope: !741)
!741 = !DILexicalBlockFile(scope: !697, file: !6, discriminator: 13)
!742 = !DILocation(line: 860, column: 15, scope: !735)
!743 = !DILocation(line: 862, column: 28, scope: !744)
!744 = distinct !DILexicalBlock(scope: !697, file: !6, line: 861, column: 13)
!745 = !DILocation(line: 862, column: 64, scope: !744)
!746 = !DILocation(line: 862, column: 15, scope: !744)
!747 = !DILocation(line: 864, column: 15, scope: !744)
!748 = !DILocation(line: 867, column: 17, scope: !704)
!749 = !DILocation(line: 867, column: 21, scope: !704)
!750 = !DILocation(line: 867, column: 25, scope: !703)
!751 = !DILocation(line: 867, column: 25, scope: !752)
!752 = !DILexicalBlockFile(scope: !707, file: !6, discriminator: 3)
!753 = !DILocation(line: 867, column: 25, scope: !707)
!754 = !{!610, !610, i64 0}
!755 = !DILocation(line: 867, column: 25, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !6, discriminator: 4)
!757 = distinct !DILexicalBlock(scope: !707, file: !6, line: 867, column: 25)
!758 = !DILocation(line: 867, column: 25, scope: !759)
!759 = !DILexicalBlockFile(scope: !757, file: !6, discriminator: 3)
!760 = !DILocation(line: 867, column: 25, scope: !761)
!761 = !DILexicalBlockFile(scope: !762, file: !6, discriminator: 5)
!762 = distinct !DILexicalBlock(scope: !757, file: !6, line: 867, column: 25)
!763 = !DILocation(line: 867, column: 25, scope: !764)
!764 = !DILexicalBlockFile(scope: !703, file: !6, discriminator: 12)
!765 = !DILocation(line: 867, column: 11, scope: !766)
!766 = !DILexicalBlockFile(scope: !689, file: !6, discriminator: 14)
!767 = !DILocation(line: 868, column: 28, scope: !704)
!768 = !DILocation(line: 868, column: 45, scope: !769)
!769 = !DILexicalBlockFile(scope: !704, file: !6, discriminator: 1)
!770 = !DILocation(line: 868, column: 9, scope: !771)
!771 = !DILexicalBlockFile(scope: !704, file: !6, discriminator: 2)
!772 = !DILocation(line: 868, column: 9, scope: !704)
!773 = !DILocation(line: 873, column: 8, scope: !677)
!774 = !DILocation(line: 874, column: 7, scope: !677)
!775 = !DILocation(line: 876, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !677, file: !6, line: 876, column: 7)
!777 = !DILocation(line: 876, column: 7, scope: !677)
!778 = !DILocation(line: 879, column: 27, scope: !677)
!779 = !DILocation(line: 879, column: 11, scope: !677)
!780 = !DILocation(line: 881, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !677, file: !6, line: 881, column: 7)
!782 = !DILocation(line: 881, column: 14, scope: !781)
!783 = !DILocation(line: 881, column: 11, scope: !781)
!784 = !DILocation(line: 881, column: 7, scope: !677)
!785 = !DILocation(line: 882, column: 24, scope: !781)
!786 = !DILocation(line: 882, column: 55, scope: !781)
!787 = !DILocation(line: 882, column: 60, scope: !781)
!788 = !DILocation(line: 882, column: 48, scope: !789)
!789 = !DILexicalBlockFile(scope: !781, file: !6, discriminator: 1)
!790 = !DILocation(line: 882, column: 5, scope: !791)
!791 = !DILexicalBlockFile(scope: !781, file: !6, discriminator: 2)
!792 = !DILocation(line: 882, column: 5, scope: !781)
!793 = !DILocation(line: 884, column: 3, scope: !677)
!794 = !DILocation(line: 885, column: 1, scope: !677)
!795 = distinct !DISubprogram(name: "test_syntax_error", scope: !6, file: !6, line: 92, type: !796, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !35, null}
!798 = !{!799, !800}
!799 = !DILocalVariable(name: "format", arg: 1, scope: !795, file: !6, line: 92, type: !35)
!800 = !DILocalVariable(name: "ap", scope: !795, file: !6, line: 94, type: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !802, line: 80, baseType: !803)
!802 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !804, line: 50, baseType: !805)
!804 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 94, baseType: !806)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 192, elements: !813)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 94, size: 192, elements: !808)
!808 = !{!809, !810, !811, !812}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !807, file: !3, line: 94, baseType: !42, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !807, file: !3, line: 94, baseType: !42, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !807, file: !3, line: 94, baseType: !39, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !807, file: !3, line: 94, baseType: !39, size: 64, offset: 128)
!813 = !{!814}
!814 = !DISubrange(count: 1)
!815 = !DILocation(line: 92, column: 32, scope: !795)
!816 = !DILocation(line: 94, column: 3, scope: !795)
!817 = !DILocation(line: 94, column: 11, scope: !795)
!818 = !DILocation(line: 95, column: 3, scope: !795)
!819 = !DILocation(line: 96, column: 3, scope: !795)
!820 = !DILocation(line: 97, column: 3, scope: !795)
!821 = distinct !DISubprogram(name: "posixtest", scope: !6, file: !6, line: 657, type: !822, isLocal: true, isDefinition: true, scopeLine: 658, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{!93, !40}
!824 = !{!825, !826, !827, !831, !832, !834, !835, !838, !839, !841, !842, !844, !845, !847}
!825 = !DILocalVariable(name: "nargs", arg: 1, scope: !821, file: !6, line: 657, type: !40)
!826 = !DILocalVariable(name: "value", scope: !821, file: !6, line: 659, type: !93)
!827 = !DILocalVariable(name: "__s1_len", scope: !828, file: !6, line: 676, type: !27)
!828 = distinct !DILexicalBlock(scope: !829, file: !6, line: 676, column: 13)
!829 = distinct !DILexicalBlock(scope: !830, file: !6, line: 676, column: 13)
!830 = distinct !DILexicalBlock(scope: !821, file: !6, line: 662, column: 5)
!831 = !DILocalVariable(name: "__s2_len", scope: !828, file: !6, line: 676, type: !27)
!832 = !DILocalVariable(name: "__s2", scope: !833, file: !6, line: 676, type: !32)
!833 = distinct !DILexicalBlock(scope: !828, file: !6, line: 676, column: 13)
!834 = !DILocalVariable(name: "__result", scope: !833, file: !6, line: 676, type: !40)
!835 = !DILocalVariable(name: "__s1_len", scope: !836, file: !6, line: 682, type: !27)
!836 = distinct !DILexicalBlock(scope: !837, file: !6, line: 682, column: 13)
!837 = distinct !DILexicalBlock(scope: !830, file: !6, line: 682, column: 13)
!838 = !DILocalVariable(name: "__s2_len", scope: !836, file: !6, line: 682, type: !27)
!839 = !DILocalVariable(name: "__s2", scope: !840, file: !6, line: 682, type: !32)
!840 = distinct !DILexicalBlock(scope: !836, file: !6, line: 682, column: 13)
!841 = !DILocalVariable(name: "__result", scope: !840, file: !6, line: 682, type: !40)
!842 = !DILocalVariable(name: "__s1_len", scope: !843, file: !6, line: 682, type: !27)
!843 = distinct !DILexicalBlock(scope: !837, file: !6, line: 682, column: 39)
!844 = !DILocalVariable(name: "__s2_len", scope: !843, file: !6, line: 682, type: !27)
!845 = !DILocalVariable(name: "__s2", scope: !846, file: !6, line: 682, type: !32)
!846 = distinct !DILexicalBlock(scope: !843, file: !6, line: 682, column: 39)
!847 = !DILocalVariable(name: "__result", scope: !846, file: !6, line: 682, type: !40)
!848 = !DILocation(line: 657, column: 16, scope: !821)
!849 = !DILocation(line: 661, column: 3, scope: !821)
!850 = !DILocation(line: 603, column: 10, scope: !851, inlinedAt: !854)
!851 = distinct !DISubprogram(name: "one_argument", scope: !6, file: !6, line: 601, type: !852, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !83)
!852 = !DISubroutineType(types: !853)
!853 = !{!93}
!854 = distinct !DILocation(line: 664, column: 17, scope: !830)
!855 = !DILocation(line: 603, column: 18, scope: !851, inlinedAt: !854)
!856 = !DILocation(line: 603, column: 25, scope: !851, inlinedAt: !854)
!857 = !DILocation(line: 664, column: 15, scope: !830)
!858 = !DILocation(line: 659, column: 8, scope: !821)
!859 = !DILocation(line: 665, column: 9, scope: !830)
!860 = !DILocation(line: 668, column: 17, scope: !830)
!861 = !DILocation(line: 668, column: 15, scope: !830)
!862 = !DILocation(line: 669, column: 9, scope: !830)
!863 = !DILocation(line: 672, column: 17, scope: !830)
!864 = !DILocation(line: 672, column: 15, scope: !830)
!865 = !DILocation(line: 673, column: 9, scope: !830)
!866 = !DILocation(line: 676, column: 13, scope: !828)
!867 = !DILocation(line: 676, column: 13, scope: !868)
!868 = !DILexicalBlockFile(scope: !833, file: !6, discriminator: 2)
!869 = !DILocation(line: 676, column: 13, scope: !833)
!870 = !DILocation(line: 676, column: 13, scope: !871)
!871 = !DILexicalBlockFile(scope: !872, file: !6, discriminator: 2)
!872 = distinct !DILexicalBlock(scope: !833, file: !6, line: 676, column: 13)
!873 = !DILocation(line: 676, column: 13, scope: !874)
!874 = !DILexicalBlockFile(scope: !875, file: !6, discriminator: 4)
!875 = distinct !DILexicalBlock(scope: !872, file: !6, line: 676, column: 13)
!876 = !DILocation(line: 676, column: 13, scope: !877)
!877 = !DILexicalBlockFile(scope: !828, file: !6, discriminator: 11)
!878 = !DILocation(line: 676, column: 13, scope: !879)
!879 = !DILexicalBlockFile(scope: !830, file: !6, discriminator: 13)
!880 = !DILocalVariable(name: "f", arg: 1, scope: !881, file: !6, line: 105, type: !93)
!881 = distinct !DISubprogram(name: "advance", scope: !6, file: !6, line: 105, type: !882, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !93}
!884 = !{!880}
!885 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!886 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !887)
!887 = distinct !DILocation(line: 678, column: 13, scope: !888)
!888 = distinct !DILexicalBlock(scope: !829, file: !6, line: 677, column: 11)
!889 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !887)
!890 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !887)
!891 = !DILexicalBlockFile(scope: !892, file: !6, discriminator: 1)
!892 = distinct !DILexicalBlock(scope: !881, file: !6, line: 109, column: 7)
!893 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !887)
!894 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !887)
!895 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !887)
!896 = !DILocation(line: 679, column: 22, scope: !888)
!897 = !DILocation(line: 679, column: 21, scope: !888)
!898 = !DILocation(line: 679, column: 19, scope: !888)
!899 = !DILocation(line: 680, column: 13, scope: !888)
!900 = !DILocation(line: 682, column: 13, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !6, discriminator: 4)
!902 = distinct !DILexicalBlock(scope: !903, file: !6, line: 682, column: 13)
!903 = distinct !DILexicalBlock(scope: !840, file: !6, line: 682, column: 13)
!904 = !DILocation(line: 682, column: 13, scope: !905)
!905 = !DILexicalBlockFile(scope: !836, file: !6, discriminator: 11)
!906 = !DILocation(line: 682, column: 36, scope: !907)
!907 = !DILexicalBlockFile(scope: !837, file: !6, discriminator: 13)
!908 = !DILocation(line: 682, column: 39, scope: !843)
!909 = !DILocation(line: 682, column: 39, scope: !910)
!910 = !DILexicalBlockFile(scope: !846, file: !6, discriminator: 16)
!911 = !DILocation(line: 682, column: 39, scope: !846)
!912 = !DILocation(line: 682, column: 39, scope: !913)
!913 = !DILexicalBlockFile(scope: !914, file: !6, discriminator: 17)
!914 = distinct !DILexicalBlock(scope: !846, file: !6, line: 682, column: 39)
!915 = !DILocation(line: 682, column: 39, scope: !916)
!916 = !DILexicalBlockFile(scope: !914, file: !6, discriminator: 16)
!917 = !DILocation(line: 682, column: 39, scope: !918)
!918 = !DILexicalBlockFile(scope: !919, file: !6, discriminator: 18)
!919 = distinct !DILexicalBlock(scope: !914, file: !6, line: 682, column: 39)
!920 = !DILocation(line: 682, column: 39, scope: !921)
!921 = !DILexicalBlockFile(scope: !843, file: !6, discriminator: 25)
!922 = !DILocation(line: 682, column: 13, scope: !923)
!923 = !DILexicalBlockFile(scope: !830, file: !6, discriminator: 27)
!924 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !925)
!925 = distinct !DILocation(line: 684, column: 13, scope: !926)
!926 = distinct !DILexicalBlock(scope: !837, file: !6, line: 683, column: 11)
!927 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !925)
!928 = !DILocation(line: 685, column: 21, scope: !926)
!929 = !DILocation(line: 685, column: 19, scope: !926)
!930 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !931)
!931 = distinct !DILocation(line: 686, column: 13, scope: !926)
!932 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !931)
!933 = !DILocation(line: 687, column: 13, scope: !926)
!934 = !DILocation(line: 692, column: 19, scope: !935)
!935 = distinct !DILexicalBlock(scope: !830, file: !6, line: 692, column: 13)
!936 = !DILocation(line: 692, column: 13, scope: !830)
!937 = !DILocation(line: 693, column: 11, scope: !935)
!938 = !DILocation(line: 574, column: 7, scope: !939, inlinedAt: !941)
!939 = distinct !DILexicalBlock(scope: !940, file: !6, line: 574, column: 7)
!940 = distinct !DISubprogram(name: "expr", scope: !6, file: !6, line: 572, type: !852, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !83)
!941 = distinct !DILocation(line: 694, column: 17, scope: !830)
!942 = !DILocation(line: 574, column: 14, scope: !939, inlinedAt: !941)
!943 = !DILocation(line: 574, column: 11, scope: !939, inlinedAt: !941)
!944 = !DILocation(line: 574, column: 7, scope: !940, inlinedAt: !941)
!945 = !DILocation(line: 537, column: 8, scope: !946, inlinedAt: !957)
!946 = distinct !DISubprogram(name: "and", scope: !6, file: !6, line: 535, type: !852, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !947)
!947 = !{!948, !949, !953, !954, !956}
!948 = !DILocalVariable(name: "value", scope: !946, file: !6, line: 537, type: !93)
!949 = !DILocalVariable(name: "__s1_len", scope: !950, file: !6, line: 542, type: !27)
!950 = distinct !DILexicalBlock(scope: !951, file: !6, line: 542, column: 28)
!951 = distinct !DILexicalBlock(scope: !952, file: !6, line: 542, column: 11)
!952 = distinct !DILexicalBlock(scope: !946, file: !6, line: 540, column: 5)
!953 = !DILocalVariable(name: "__s2_len", scope: !950, file: !6, line: 542, type: !27)
!954 = !DILocalVariable(name: "__s2", scope: !955, file: !6, line: 542, type: !32)
!955 = distinct !DILexicalBlock(scope: !950, file: !6, line: 542, column: 28)
!956 = !DILocalVariable(name: "__result", scope: !955, file: !6, line: 542, type: !40)
!957 = distinct !DILocation(line: 560, column: 16, scope: !958, inlinedAt: !969)
!958 = distinct !DILexicalBlock(scope: !959, file: !6, line: 559, column: 5)
!959 = distinct !DISubprogram(name: "or", scope: !6, file: !6, line: 554, type: !852, isLocal: true, isDefinition: true, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !960)
!960 = !{!961, !962, !965, !966, !968}
!961 = !DILocalVariable(name: "value", scope: !959, file: !6, line: 556, type: !93)
!962 = !DILocalVariable(name: "__s1_len", scope: !963, file: !6, line: 561, type: !27)
!963 = distinct !DILexicalBlock(scope: !964, file: !6, line: 561, column: 28)
!964 = distinct !DILexicalBlock(scope: !958, file: !6, line: 561, column: 11)
!965 = !DILocalVariable(name: "__s2_len", scope: !963, file: !6, line: 561, type: !27)
!966 = !DILocalVariable(name: "__s2", scope: !967, file: !6, line: 561, type: !32)
!967 = distinct !DILexicalBlock(scope: !963, file: !6, line: 561, column: 28)
!968 = !DILocalVariable(name: "__result", scope: !967, file: !6, line: 561, type: !40)
!969 = distinct !DILocation(line: 577, column: 10, scope: !940, inlinedAt: !941)
!970 = !DILocation(line: 575, column: 5, scope: !939, inlinedAt: !941)
!971 = !DILocation(line: 541, column: 16, scope: !952, inlinedAt: !957)
!972 = !DILocation(line: 542, column: 14, scope: !951, inlinedAt: !957)
!973 = !DILocation(line: 542, column: 20, scope: !951, inlinedAt: !957)
!974 = !DILocation(line: 542, column: 18, scope: !951, inlinedAt: !957)
!975 = !DILocation(line: 542, column: 25, scope: !951, inlinedAt: !957)
!976 = !DILocation(line: 542, column: 28, scope: !950, inlinedAt: !957)
!977 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !978)
!978 = distinct !DILocation(line: 544, column: 7, scope: !952, inlinedAt: !957)
!979 = !DILocation(line: 542, column: 28, scope: !980, inlinedAt: !957)
!980 = !DILexicalBlockFile(scope: !955, file: !6, discriminator: 3)
!981 = !DILocation(line: 542, column: 28, scope: !955, inlinedAt: !957)
!982 = !DILocation(line: 542, column: 28, scope: !983, inlinedAt: !957)
!983 = !DILexicalBlockFile(scope: !984, file: !6, discriminator: 4)
!984 = distinct !DILexicalBlock(scope: !955, file: !6, line: 542, column: 28)
!985 = !DILocation(line: 542, column: 28, scope: !986, inlinedAt: !957)
!986 = !DILexicalBlockFile(scope: !984, file: !6, discriminator: 3)
!987 = !DILocation(line: 542, column: 28, scope: !988, inlinedAt: !957)
!988 = !DILexicalBlockFile(scope: !989, file: !6, discriminator: 5)
!989 = distinct !DILexicalBlock(scope: !984, file: !6, line: 542, column: 28)
!990 = !DILocation(line: 542, column: 28, scope: !991, inlinedAt: !957)
!991 = !DILexicalBlockFile(scope: !992, file: !6, discriminator: 6)
!992 = distinct !DILexicalBlock(scope: !989, file: !6, line: 542, column: 28)
!993 = !DILocation(line: 542, column: 28, scope: !994, inlinedAt: !957)
!994 = !DILexicalBlockFile(scope: !992, file: !6, discriminator: 5)
!995 = !DILocation(line: 542, column: 28, scope: !996, inlinedAt: !957)
!996 = !DILexicalBlockFile(scope: !997, file: !6, discriminator: 7)
!997 = distinct !DILexicalBlock(scope: !992, file: !6, line: 542, column: 28)
!998 = !DILocation(line: 542, column: 28, scope: !999, inlinedAt: !957)
!999 = !DILexicalBlockFile(scope: !951, file: !6, discriminator: 14)
!1000 = !DILocation(line: 542, column: 11, scope: !1001, inlinedAt: !957)
!1001 = !DILexicalBlockFile(scope: !952, file: !6, discriminator: 14)
!1002 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !978)
!1003 = !DILocation(line: 541, column: 13, scope: !952, inlinedAt: !957)
!1004 = distinct !{!1004, !1005, !1006}
!1005 = !DILocation(line: 539, column: 3, scope: !946)
!1006 = !DILocation(line: 545, column: 5, scope: !946)
!1007 = !DILocation(line: 560, column: 13, scope: !958, inlinedAt: !969)
!1008 = !DILocation(line: 561, column: 20, scope: !964, inlinedAt: !969)
!1009 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 563, column: 7, scope: !958, inlinedAt: !969)
!1011 = !DILocation(line: 561, column: 18, scope: !964, inlinedAt: !969)
!1012 = !DILocation(line: 561, column: 25, scope: !964, inlinedAt: !969)
!1013 = !DILocation(line: 561, column: 28, scope: !963, inlinedAt: !969)
!1014 = !DILocation(line: 561, column: 28, scope: !1015, inlinedAt: !969)
!1015 = !DILexicalBlockFile(scope: !967, file: !6, discriminator: 3)
!1016 = !DILocation(line: 561, column: 28, scope: !967, inlinedAt: !969)
!1017 = !DILocation(line: 561, column: 28, scope: !1018, inlinedAt: !969)
!1018 = !DILexicalBlockFile(scope: !1019, file: !6, discriminator: 4)
!1019 = distinct !DILexicalBlock(scope: !967, file: !6, line: 561, column: 28)
!1020 = !DILocation(line: 561, column: 28, scope: !1021, inlinedAt: !969)
!1021 = !DILexicalBlockFile(scope: !1019, file: !6, discriminator: 3)
!1022 = !DILocation(line: 561, column: 28, scope: !1023, inlinedAt: !969)
!1023 = !DILexicalBlockFile(scope: !1024, file: !6, discriminator: 5)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !6, line: 561, column: 28)
!1025 = !DILocation(line: 561, column: 28, scope: !1026, inlinedAt: !969)
!1026 = !DILexicalBlockFile(scope: !1027, file: !6, discriminator: 6)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !6, line: 561, column: 28)
!1028 = !DILocation(line: 561, column: 28, scope: !1029, inlinedAt: !969)
!1029 = !DILexicalBlockFile(scope: !1027, file: !6, discriminator: 5)
!1030 = !DILocation(line: 561, column: 28, scope: !1031, inlinedAt: !969)
!1031 = !DILexicalBlockFile(scope: !1032, file: !6, discriminator: 7)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !6, line: 561, column: 28)
!1033 = !DILocation(line: 561, column: 28, scope: !1034, inlinedAt: !969)
!1034 = !DILexicalBlockFile(scope: !964, file: !6, discriminator: 14)
!1035 = !DILocation(line: 561, column: 11, scope: !1036, inlinedAt: !969)
!1036 = !DILexicalBlockFile(scope: !958, file: !6, discriminator: 14)
!1037 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1010)
!1038 = !DILocation(line: 558, column: 3, scope: !1039, inlinedAt: !969)
!1039 = !DILexicalBlockFile(scope: !959, file: !6, discriminator: 2)
!1040 = distinct !{!1040, !1041, !1042}
!1041 = !DILocation(line: 558, column: 3, scope: !959)
!1042 = !DILocation(line: 564, column: 5, scope: !959)
!1043 = !DILocation(line: 694, column: 15, scope: !830)
!1044 = !DILocation(line: 695, column: 5, scope: !830)
!1045 = !DILocation(line: 697, column: 11, scope: !821)
!1046 = !DILocation(line: 697, column: 3, scope: !821)
!1047 = distinct !DISubprogram(name: "two_arguments", scope: !6, file: !6, line: 607, type: !852, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1048)
!1048 = !{!1049, !1050, !1053, !1054, !1056}
!1049 = !DILocalVariable(name: "value", scope: !1047, file: !6, line: 609, type: !93)
!1050 = !DILocalVariable(name: "__s1_len", scope: !1051, file: !6, line: 611, type: !27)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !6, line: 611, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !6, line: 611, column: 7)
!1053 = !DILocalVariable(name: "__s2_len", scope: !1051, file: !6, line: 611, type: !27)
!1054 = !DILocalVariable(name: "__s2", scope: !1055, file: !6, line: 611, type: !32)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !6, line: 611, column: 7)
!1056 = !DILocalVariable(name: "__result", scope: !1055, file: !6, line: 611, type: !40)
!1057 = !DILocation(line: 611, column: 7, scope: !1051)
!1058 = !DILocation(line: 611, column: 7, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1055, file: !6, discriminator: 2)
!1060 = !DILocation(line: 611, column: 7, scope: !1055)
!1061 = !DILocation(line: 611, column: 7, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1063, file: !6, discriminator: 2)
!1063 = distinct !DILexicalBlock(scope: !1055, file: !6, line: 611, column: 7)
!1064 = !DILocation(line: 611, column: 7, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1066, file: !6, discriminator: 4)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !6, line: 611, column: 7)
!1067 = !DILocation(line: 611, column: 7, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1051, file: !6, discriminator: 11)
!1069 = !DILocation(line: 611, column: 7, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1047, file: !6, discriminator: 13)
!1071 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 613, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1052, file: !6, line: 612, column: 5)
!1074 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1072)
!1075 = !DILocation(line: 603, column: 18, scope: !851, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 614, column: 17, scope: !1073)
!1077 = !DILocation(line: 603, column: 10, scope: !851, inlinedAt: !1076)
!1078 = !DILocation(line: 614, column: 15, scope: !1073)
!1079 = !DILocation(line: 615, column: 5, scope: !1073)
!1080 = !DILocation(line: 617, column: 15, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1082, file: !6, discriminator: 1)
!1082 = distinct !DILexicalBlock(scope: !1052, file: !6, line: 616, column: 12)
!1083 = !DILocation(line: 617, column: 28, scope: !1081)
!1084 = !DILocation(line: 618, column: 12, scope: !1082)
!1085 = !DILocation(line: 618, column: 15, scope: !1081)
!1086 = !DILocation(line: 618, column: 28, scope: !1081)
!1087 = !DILocation(line: 616, column: 12, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1052, file: !6, discriminator: 1)
!1089 = !DILocalVariable(name: "op", arg: 1, scope: !1090, file: !6, line: 582, type: !35)
!1090 = distinct !DISubprogram(name: "test_unop", scope: !6, file: !6, line: 582, type: !1091, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!93, !35}
!1093 = !{!1089}
!1094 = !DILocation(line: 582, column: 24, scope: !1090, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 620, column: 11, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !6, line: 620, column: 11)
!1097 = distinct !DILexicalBlock(scope: !1082, file: !6, line: 619, column: 5)
!1098 = !DILocation(line: 587, column: 11, scope: !1090, inlinedAt: !1095)
!1099 = !DILocation(line: 587, column: 3, scope: !1090, inlinedAt: !1095)
!1100 = !DILocation(line: 620, column: 11, scope: !1097)
!1101 = !DILocation(line: 621, column: 17, scope: !1096)
!1102 = !DILocation(line: 623, column: 28, scope: !1096)
!1103 = !DILocation(line: 623, column: 69, scope: !1096)
!1104 = !DILocation(line: 623, column: 74, scope: !1096)
!1105 = !DILocation(line: 623, column: 62, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1096, file: !6, discriminator: 1)
!1107 = !DILocation(line: 623, column: 9, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1096, file: !6, discriminator: 2)
!1109 = !DILocation(line: 623, column: 9, scope: !1096)
!1110 = !DILocation(line: 626, column: 5, scope: !1082)
!1111 = !DILocation(line: 627, column: 3, scope: !1047)
!1112 = distinct !DISubprogram(name: "three_arguments", scope: !6, file: !6, line: 631, type: !852, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1113)
!1113 = !{!1114, !1115, !1119, !1120, !1122, !1123, !1126, !1127, !1129, !1130, !1132, !1133, !1135, !1136, !1139, !1140, !1142, !1143, !1145, !1146, !1148}
!1114 = !DILocalVariable(name: "value", scope: !1112, file: !6, line: 633, type: !93)
!1115 = !DILocalVariable(name: "__s1_len", scope: !1116, file: !6, line: 637, type: !27)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !6, line: 637, column: 12)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !6, line: 637, column: 12)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !6, line: 635, column: 7)
!1119 = !DILocalVariable(name: "__s2_len", scope: !1116, file: !6, line: 637, type: !27)
!1120 = !DILocalVariable(name: "__s2", scope: !1121, file: !6, line: 637, type: !32)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !6, line: 637, column: 12)
!1122 = !DILocalVariable(name: "__result", scope: !1121, file: !6, line: 637, type: !40)
!1123 = !DILocalVariable(name: "__s1_len", scope: !1124, file: !6, line: 642, type: !27)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !6, line: 642, column: 12)
!1125 = distinct !DILexicalBlock(scope: !1117, file: !6, line: 642, column: 12)
!1126 = !DILocalVariable(name: "__s2_len", scope: !1124, file: !6, line: 642, type: !27)
!1127 = !DILocalVariable(name: "__s2", scope: !1128, file: !6, line: 642, type: !32)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !6, line: 642, column: 12)
!1129 = !DILocalVariable(name: "__result", scope: !1128, file: !6, line: 642, type: !40)
!1130 = !DILocalVariable(name: "__s1_len", scope: !1131, file: !6, line: 642, type: !27)
!1131 = distinct !DILexicalBlock(scope: !1125, file: !6, line: 642, column: 38)
!1132 = !DILocalVariable(name: "__s2_len", scope: !1131, file: !6, line: 642, type: !27)
!1133 = !DILocalVariable(name: "__s2", scope: !1134, file: !6, line: 642, type: !32)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !6, line: 642, column: 38)
!1135 = !DILocalVariable(name: "__result", scope: !1134, file: !6, line: 642, type: !40)
!1136 = !DILocalVariable(name: "__s1_len", scope: !1137, file: !6, line: 648, type: !27)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !6, line: 648, column: 12)
!1138 = distinct !DILexicalBlock(scope: !1125, file: !6, line: 648, column: 12)
!1139 = !DILocalVariable(name: "__s2_len", scope: !1137, file: !6, line: 648, type: !27)
!1140 = !DILocalVariable(name: "__s2", scope: !1141, file: !6, line: 648, type: !32)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !6, line: 648, column: 12)
!1142 = !DILocalVariable(name: "__result", scope: !1141, file: !6, line: 648, type: !40)
!1143 = !DILocalVariable(name: "__s1_len", scope: !1144, file: !6, line: 648, type: !27)
!1144 = distinct !DILexicalBlock(scope: !1138, file: !6, line: 648, column: 43)
!1145 = !DILocalVariable(name: "__s2_len", scope: !1144, file: !6, line: 648, type: !27)
!1146 = !DILocalVariable(name: "__s2", scope: !1147, file: !6, line: 648, type: !32)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !6, line: 648, column: 43)
!1148 = !DILocalVariable(name: "__result", scope: !1147, file: !6, line: 648, type: !40)
!1149 = !DILocation(line: 635, column: 14, scope: !1118)
!1150 = !DILocation(line: 635, column: 19, scope: !1118)
!1151 = !DILocation(line: 635, column: 23, scope: !1118)
!1152 = !DILocation(line: 635, column: 7, scope: !1118)
!1153 = !DILocation(line: 635, column: 7, scope: !1112)
!1154 = !DILocation(line: 636, column: 13, scope: !1118)
!1155 = !DILocation(line: 636, column: 11, scope: !1118)
!1156 = !DILocation(line: 633, column: 8, scope: !1112)
!1157 = !DILocation(line: 636, column: 5, scope: !1118)
!1158 = !DILocation(line: 637, column: 12, scope: !1116)
!1159 = !DILocation(line: 637, column: 12, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1121, file: !6, discriminator: 2)
!1161 = !DILocation(line: 637, column: 12, scope: !1121)
!1162 = !DILocation(line: 637, column: 12, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1164, file: !6, discriminator: 2)
!1164 = distinct !DILexicalBlock(scope: !1121, file: !6, line: 637, column: 12)
!1165 = !DILocation(line: 637, column: 12, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1167, file: !6, discriminator: 4)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !6, line: 637, column: 12)
!1168 = !DILocation(line: 637, column: 12, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1117, file: !6, discriminator: 13)
!1170 = !DILocation(line: 637, column: 12, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1118, file: !6, discriminator: 13)
!1172 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 639, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1117, file: !6, line: 638, column: 5)
!1175 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1173)
!1176 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !1173)
!1177 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !1173)
!1178 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !1173)
!1179 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !1173)
!1180 = !DILocation(line: 640, column: 16, scope: !1174)
!1181 = !DILocation(line: 640, column: 15, scope: !1174)
!1182 = !DILocation(line: 640, column: 13, scope: !1174)
!1183 = !DILocation(line: 641, column: 5, scope: !1174)
!1184 = !DILocation(line: 642, column: 12, scope: !1124)
!1185 = !DILocation(line: 642, column: 12, scope: !1128)
!1186 = !DILocation(line: 642, column: 12, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1188, file: !6, discriminator: 3)
!1188 = distinct !DILexicalBlock(scope: !1128, file: !6, line: 642, column: 12)
!1189 = !DILocation(line: 642, column: 12, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1188, file: !6, discriminator: 2)
!1191 = !DILocation(line: 642, column: 12, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1193, file: !6, discriminator: 4)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !6, line: 642, column: 12)
!1194 = !DILocation(line: 642, column: 12, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1124, file: !6, discriminator: 11)
!1196 = !DILocation(line: 642, column: 35, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1125, file: !6, discriminator: 13)
!1198 = !DILocation(line: 642, column: 38, scope: !1131)
!1199 = !DILocation(line: 642, column: 38, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1134, file: !6, discriminator: 16)
!1201 = !DILocation(line: 642, column: 38, scope: !1134)
!1202 = !DILocation(line: 642, column: 38, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !6, discriminator: 17)
!1204 = distinct !DILexicalBlock(scope: !1134, file: !6, line: 642, column: 38)
!1205 = !DILocation(line: 642, column: 38, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1204, file: !6, discriminator: 16)
!1207 = !DILocation(line: 642, column: 38, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1209, file: !6, discriminator: 18)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !6, line: 642, column: 38)
!1210 = !DILocation(line: 642, column: 38, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1131, file: !6, discriminator: 25)
!1212 = !DILocation(line: 642, column: 12, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1117, file: !6, discriminator: 27)
!1214 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 644, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1125, file: !6, line: 643, column: 5)
!1217 = !DILocation(line: 603, column: 10, scope: !851, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 645, column: 15, scope: !1216)
!1219 = !DILocation(line: 603, column: 25, scope: !851, inlinedAt: !1218)
!1220 = !DILocation(line: 645, column: 13, scope: !1216)
!1221 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 646, column: 7, scope: !1216)
!1223 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1222)
!1224 = !DILocation(line: 647, column: 5, scope: !1216)
!1225 = !DILocation(line: 648, column: 12, scope: !1137)
!1226 = !DILocation(line: 648, column: 12, scope: !1141)
!1227 = !DILocation(line: 648, column: 12, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1141, file: !6, discriminator: 2)
!1229 = !DILocation(line: 648, column: 12, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1231, file: !6, discriminator: 3)
!1231 = distinct !DILexicalBlock(scope: !1141, file: !6, line: 648, column: 12)
!1232 = !DILocation(line: 648, column: 12, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1231, file: !6, discriminator: 2)
!1234 = !DILocation(line: 648, column: 12, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1236, file: !6, discriminator: 4)
!1236 = distinct !DILexicalBlock(scope: !1231, file: !6, line: 648, column: 12)
!1237 = !DILocation(line: 648, column: 12, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !6, discriminator: 5)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !6, line: 648, column: 12)
!1240 = !DILocation(line: 648, column: 12, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1239, file: !6, discriminator: 4)
!1242 = !DILocation(line: 648, column: 12, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1244, file: !6, discriminator: 6)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !6, line: 648, column: 12)
!1245 = !DILocation(line: 648, column: 12, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1137, file: !6, discriminator: 11)
!1247 = !DILocation(line: 648, column: 40, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1138, file: !6, discriminator: 13)
!1249 = !DILocation(line: 648, column: 43, scope: !1144)
!1250 = !DILocation(line: 648, column: 43, scope: !1147)
!1251 = !DILocation(line: 648, column: 43, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1253, file: !6, discriminator: 18)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !6, line: 648, column: 43)
!1254 = distinct !DILexicalBlock(scope: !1147, file: !6, line: 648, column: 43)
!1255 = !DILocation(line: 648, column: 43, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1257, file: !6, discriminator: 19)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !6, line: 648, column: 43)
!1258 = !DILocation(line: 648, column: 43, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1257, file: !6, discriminator: 18)
!1260 = !DILocation(line: 648, column: 43, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1262, file: !6, discriminator: 20)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !6, line: 648, column: 43)
!1263 = !DILocation(line: 648, column: 43, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1144, file: !6, discriminator: 25)
!1265 = !DILocation(line: 648, column: 12, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1125, file: !6, discriminator: 27)
!1267 = !DILocation(line: 574, column: 14, scope: !939, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 649, column: 13, scope: !1138)
!1269 = !DILocation(line: 574, column: 11, scope: !939, inlinedAt: !1268)
!1270 = !DILocation(line: 574, column: 7, scope: !940, inlinedAt: !1268)
!1271 = !DILocation(line: 537, column: 8, scope: !946, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 560, column: 16, scope: !958, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 577, column: 10, scope: !940, inlinedAt: !1268)
!1274 = !DILocation(line: 575, column: 5, scope: !939, inlinedAt: !1268)
!1275 = !DILocation(line: 541, column: 16, scope: !952, inlinedAt: !1272)
!1276 = !DILocation(line: 542, column: 14, scope: !951, inlinedAt: !1272)
!1277 = !DILocation(line: 542, column: 20, scope: !951, inlinedAt: !1272)
!1278 = !DILocation(line: 542, column: 18, scope: !951, inlinedAt: !1272)
!1279 = !DILocation(line: 542, column: 25, scope: !951, inlinedAt: !1272)
!1280 = !DILocation(line: 542, column: 28, scope: !950, inlinedAt: !1272)
!1281 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 544, column: 7, scope: !952, inlinedAt: !1272)
!1283 = !DILocation(line: 542, column: 28, scope: !980, inlinedAt: !1272)
!1284 = !DILocation(line: 542, column: 28, scope: !955, inlinedAt: !1272)
!1285 = !DILocation(line: 542, column: 28, scope: !983, inlinedAt: !1272)
!1286 = !DILocation(line: 542, column: 28, scope: !986, inlinedAt: !1272)
!1287 = !DILocation(line: 542, column: 28, scope: !988, inlinedAt: !1272)
!1288 = !DILocation(line: 542, column: 28, scope: !991, inlinedAt: !1272)
!1289 = !DILocation(line: 542, column: 28, scope: !994, inlinedAt: !1272)
!1290 = !DILocation(line: 542, column: 28, scope: !996, inlinedAt: !1272)
!1291 = !DILocation(line: 542, column: 28, scope: !999, inlinedAt: !1272)
!1292 = !DILocation(line: 542, column: 11, scope: !1001, inlinedAt: !1272)
!1293 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1282)
!1294 = !DILocation(line: 541, column: 13, scope: !952, inlinedAt: !1272)
!1295 = !DILocation(line: 560, column: 13, scope: !958, inlinedAt: !1273)
!1296 = !DILocation(line: 561, column: 20, scope: !964, inlinedAt: !1273)
!1297 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 563, column: 7, scope: !958, inlinedAt: !1273)
!1299 = !DILocation(line: 561, column: 18, scope: !964, inlinedAt: !1273)
!1300 = !DILocation(line: 561, column: 25, scope: !964, inlinedAt: !1273)
!1301 = !DILocation(line: 561, column: 28, scope: !963, inlinedAt: !1273)
!1302 = !DILocation(line: 561, column: 28, scope: !1015, inlinedAt: !1273)
!1303 = !DILocation(line: 561, column: 28, scope: !967, inlinedAt: !1273)
!1304 = !DILocation(line: 561, column: 28, scope: !1018, inlinedAt: !1273)
!1305 = !DILocation(line: 561, column: 28, scope: !1021, inlinedAt: !1273)
!1306 = !DILocation(line: 561, column: 28, scope: !1023, inlinedAt: !1273)
!1307 = !DILocation(line: 561, column: 28, scope: !1026, inlinedAt: !1273)
!1308 = !DILocation(line: 561, column: 28, scope: !1029, inlinedAt: !1273)
!1309 = !DILocation(line: 561, column: 28, scope: !1031, inlinedAt: !1273)
!1310 = !DILocation(line: 561, column: 28, scope: !1034, inlinedAt: !1273)
!1311 = !DILocation(line: 561, column: 11, scope: !1036, inlinedAt: !1273)
!1312 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1298)
!1313 = !DILocation(line: 558, column: 3, scope: !1039, inlinedAt: !1273)
!1314 = !DILocation(line: 649, column: 11, scope: !1138)
!1315 = !DILocation(line: 651, column: 24, scope: !1138)
!1316 = !DILocation(line: 651, column: 66, scope: !1138)
!1317 = !DILocation(line: 651, column: 71, scope: !1138)
!1318 = !DILocation(line: 651, column: 74, scope: !1138)
!1319 = !DILocation(line: 651, column: 59, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1138, file: !6, discriminator: 1)
!1321 = !DILocation(line: 651, column: 5, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1138, file: !6, discriminator: 2)
!1323 = !DILocation(line: 651, column: 5, scope: !1138)
!1324 = !DILocation(line: 652, column: 11, scope: !1112)
!1325 = !DILocation(line: 652, column: 3, scope: !1112)
!1326 = distinct !DISubprogram(name: "beyond", scope: !6, file: !6, line: 125, type: !1327, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !83)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null}
!1329 = !DILocation(line: 127, column: 22, scope: !1326)
!1330 = !DILocation(line: 127, column: 61, scope: !1326)
!1331 = !DILocation(line: 127, column: 66, scope: !1326)
!1332 = !DILocation(line: 127, column: 71, scope: !1326)
!1333 = !DILocation(line: 127, column: 54, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1326, file: !6, discriminator: 1)
!1335 = !DILocation(line: 127, column: 3, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1326, file: !6, discriminator: 2)
!1337 = !DILocation(line: 127, column: 3, scope: !1326)
!1338 = distinct !DISubprogram(name: "term", scope: !6, file: !6, line: 212, type: !852, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1339)
!1339 = !{!1340, !1341, !1342, !1345, !1349, !1350, !1352, !1353, !1356, !1357, !1359}
!1340 = !DILocalVariable(name: "value", scope: !1338, file: !6, line: 214, type: !93)
!1341 = !DILocalVariable(name: "negated", scope: !1338, file: !6, line: 215, type: !93)
!1342 = !DILocalVariable(name: "nargs", scope: !1343, file: !6, line: 230, type: !40)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 229, column: 5)
!1344 = distinct !DILexicalBlock(scope: !1338, file: !6, line: 228, column: 7)
!1345 = !DILocalVariable(name: "__s1_len", scope: !1346, file: !6, line: 235, type: !27)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !6, line: 235, column: 36)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !6, line: 234, column: 7)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !6, line: 234, column: 7)
!1349 = !DILocalVariable(name: "__s2_len", scope: !1346, file: !6, line: 235, type: !27)
!1350 = !DILocalVariable(name: "__s2", scope: !1351, file: !6, line: 235, type: !32)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !6, line: 235, column: 36)
!1352 = !DILocalVariable(name: "__result", scope: !1351, file: !6, line: 235, type: !40)
!1353 = !DILocalVariable(name: "__s1_len", scope: !1354, file: !6, line: 254, type: !27)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !6, line: 254, column: 31)
!1355 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 254, column: 12)
!1356 = !DILocalVariable(name: "__s2_len", scope: !1354, file: !6, line: 254, type: !27)
!1357 = !DILocalVariable(name: "__s2", scope: !1358, file: !6, line: 254, type: !32)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !6, line: 254, column: 31)
!1359 = !DILocalVariable(name: "__result", scope: !1358, file: !6, line: 254, type: !40)
!1360 = !DILocation(line: 215, column: 8, scope: !1338)
!1361 = !DILocation(line: 218, column: 10, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1338, file: !6, discriminator: 1)
!1363 = !DILocation(line: 218, column: 16, scope: !1362)
!1364 = !DILocation(line: 218, column: 14, scope: !1362)
!1365 = !DILocation(line: 218, column: 21, scope: !1362)
!1366 = !DILocation(line: 218, column: 24, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1338, file: !6, discriminator: 2)
!1368 = !DILocation(line: 218, column: 37, scope: !1367)
!1369 = !DILocation(line: 218, column: 44, scope: !1367)
!1370 = !DILocation(line: 218, column: 47, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1338, file: !6, discriminator: 3)
!1372 = !DILocation(line: 218, column: 60, scope: !1371)
!1373 = !DILocation(line: 218, column: 3, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1338, file: !6, discriminator: 4)
!1375 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 220, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1338, file: !6, line: 219, column: 5)
!1378 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1376)
!1379 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !1376)
!1380 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !1376)
!1381 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !1376)
!1382 = !DILocation(line: 221, column: 17, scope: !1377)
!1383 = !DILocation(line: 224, column: 11, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1338, file: !6, line: 224, column: 7)
!1385 = !DILocation(line: 269, column: 21, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !6, line: 268, column: 5)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !6, line: 260, column: 12)
!1388 = distinct !DILexicalBlock(scope: !1355, file: !6, line: 256, column: 12)
!1389 = !DILocation(line: 224, column: 7, scope: !1338)
!1390 = !DILocation(line: 225, column: 5, scope: !1384)
!1391 = !DILocation(line: 228, column: 7, scope: !1344)
!1392 = !DILocation(line: 228, column: 20, scope: !1344)
!1393 = !DILocation(line: 228, column: 27, scope: !1344)
!1394 = !DILocation(line: 228, column: 30, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1344, file: !6, discriminator: 1)
!1396 = !DILocation(line: 228, column: 43, scope: !1395)
!1397 = !DILocation(line: 228, column: 7, scope: !1362)
!1398 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 232, column: 7, scope: !1343)
!1400 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1399)
!1401 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !1399)
!1402 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !1399)
!1403 = !DILocation(line: 230, column: 11, scope: !1343)
!1404 = !DILocation(line: 235, column: 16, scope: !1347)
!1405 = !DILocation(line: 235, column: 24, scope: !1347)
!1406 = !DILocation(line: 235, column: 31, scope: !1347)
!1407 = !DILocation(line: 235, column: 36, scope: !1346)
!1408 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !1399)
!1409 = !DILocation(line: 235, column: 36, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1351, file: !6, discriminator: 3)
!1411 = !DILocation(line: 235, column: 36, scope: !1351)
!1412 = !DILocation(line: 235, column: 36, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1414, file: !6, discriminator: 4)
!1414 = distinct !DILexicalBlock(scope: !1351, file: !6, line: 235, column: 36)
!1415 = !DILocation(line: 235, column: 36, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1414, file: !6, discriminator: 3)
!1417 = !DILocation(line: 235, column: 36, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1419, file: !6, discriminator: 5)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !6, line: 235, column: 36)
!1420 = !DILocation(line: 235, column: 34, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1347, file: !6, discriminator: 14)
!1422 = !DILocation(line: 234, column: 7, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1348, file: !6, discriminator: 1)
!1424 = !DILocation(line: 237, column: 19, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1347, file: !6, line: 237, column: 13)
!1426 = !DILocation(line: 237, column: 13, scope: !1347)
!1427 = !DILocation(line: 239, column: 26, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !6, line: 238, column: 11)
!1429 = !DILocation(line: 240, column: 13, scope: !1428)
!1430 = !DILocation(line: 236, column: 17, scope: !1347)
!1431 = distinct !{!1431, !1432, !1433}
!1432 = !DILocation(line: 234, column: 7, scope: !1348)
!1433 = !DILocation(line: 241, column: 11, scope: !1348)
!1434 = !DILocation(line: 243, column: 15, scope: !1343)
!1435 = !DILocation(line: 243, column: 13, scope: !1343)
!1436 = !DILocation(line: 244, column: 11, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1343, file: !6, line: 244, column: 11)
!1438 = !DILocation(line: 244, column: 16, scope: !1437)
!1439 = !DILocation(line: 244, column: 21, scope: !1437)
!1440 = !DILocation(line: 244, column: 11, scope: !1343)
!1441 = !DILocation(line: 245, column: 28, scope: !1437)
!1442 = !DILocation(line: 245, column: 46, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1437, file: !6, discriminator: 1)
!1444 = !DILocation(line: 245, column: 9, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1437, file: !6, discriminator: 2)
!1446 = !DILocation(line: 245, column: 9, scope: !1437)
!1447 = !DILocation(line: 247, column: 13, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1437, file: !6, line: 247, column: 13)
!1449 = !DILocation(line: 247, column: 26, scope: !1448)
!1450 = !DILocation(line: 247, column: 33, scope: !1448)
!1451 = !DILocation(line: 247, column: 36, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1448, file: !6, discriminator: 1)
!1453 = !DILocation(line: 247, column: 13, scope: !1443)
!1454 = !DILocation(line: 248, column: 30, scope: !1448)
!1455 = !DILocation(line: 249, column: 30, scope: !1448)
!1456 = !DILocation(line: 249, column: 60, scope: !1448)
!1457 = !DILocation(line: 249, column: 65, scope: !1448)
!1458 = !DILocation(line: 249, column: 48, scope: !1452)
!1459 = !DILocation(line: 248, column: 11, scope: !1452)
!1460 = !DILocation(line: 248, column: 11, scope: !1448)
!1461 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 250, column: 7, scope: !1343)
!1463 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1462)
!1464 = !DILocation(line: 251, column: 5, scope: !1343)
!1465 = !DILocation(line: 254, column: 22, scope: !1355)
!1466 = !DILocation(line: 254, column: 14, scope: !1355)
!1467 = !DILocation(line: 254, column: 28, scope: !1355)
!1468 = !DILocation(line: 254, column: 31, scope: !1354)
!1469 = !DILocation(line: 254, column: 31, scope: !1358)
!1470 = !DILocation(line: 254, column: 31, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1472, file: !6, discriminator: 4)
!1472 = distinct !DILexicalBlock(scope: !1358, file: !6, line: 254, column: 31)
!1473 = !DILocation(line: 254, column: 31, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1472, file: !6, discriminator: 3)
!1475 = !DILocation(line: 254, column: 31, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1477, file: !6, discriminator: 5)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !6, line: 254, column: 31)
!1478 = !DILocation(line: 254, column: 31, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !6, discriminator: 6)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !6, line: 254, column: 31)
!1481 = !DILocation(line: 254, column: 31, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1480, file: !6, discriminator: 5)
!1483 = !DILocation(line: 254, column: 31, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1485, file: !6, discriminator: 7)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !6, line: 254, column: 31)
!1486 = !DILocation(line: 254, column: 31, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1354, file: !6, discriminator: 12)
!1488 = !DILocation(line: 254, column: 55, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1355, file: !6, discriminator: 14)
!1490 = !DILocation(line: 254, column: 74, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1355, file: !6, discriminator: 15)
!1492 = !DILocation(line: 254, column: 65, scope: !1491)
!1493 = !DILocation(line: 254, column: 58, scope: !1491)
!1494 = !DILocation(line: 254, column: 12, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1344, file: !6, discriminator: 15)
!1496 = !DILocation(line: 255, column: 13, scope: !1355)
!1497 = !DILocation(line: 255, column: 11, scope: !1355)
!1498 = !DILocation(line: 255, column: 5, scope: !1355)
!1499 = !DILocation(line: 256, column: 14, scope: !1388)
!1500 = !DILocation(line: 256, column: 28, scope: !1388)
!1501 = !DILocation(line: 256, column: 47, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1388, file: !6, discriminator: 1)
!1503 = !DILocation(line: 256, column: 38, scope: !1502)
!1504 = !DILocation(line: 256, column: 31, scope: !1502)
!1505 = !DILocation(line: 256, column: 12, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1355, file: !6, discriminator: 1)
!1507 = !DILocation(line: 257, column: 13, scope: !1388)
!1508 = !DILocation(line: 257, column: 11, scope: !1388)
!1509 = !DILocation(line: 257, column: 5, scope: !1388)
!1510 = !DILocation(line: 260, column: 25, scope: !1387)
!1511 = !DILocation(line: 260, column: 32, scope: !1387)
!1512 = !DILocation(line: 260, column: 35, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1387, file: !6, discriminator: 1)
!1514 = !DILocation(line: 260, column: 48, scope: !1513)
!1515 = !DILocation(line: 260, column: 51, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1387, file: !6, discriminator: 2)
!1517 = !DILocation(line: 260, column: 64, scope: !1516)
!1518 = !DILocation(line: 260, column: 12, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1388, file: !6, discriminator: 2)
!1520 = !DILocation(line: 582, column: 24, scope: !1090, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 262, column: 11, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !6, line: 262, column: 11)
!1523 = distinct !DILexicalBlock(scope: !1387, file: !6, line: 261, column: 5)
!1524 = !DILocation(line: 587, column: 11, scope: !1090, inlinedAt: !1521)
!1525 = !DILocation(line: 587, column: 3, scope: !1090, inlinedAt: !1521)
!1526 = !DILocation(line: 262, column: 11, scope: !1523)
!1527 = !DILocation(line: 263, column: 17, scope: !1522)
!1528 = !DILocation(line: 263, column: 15, scope: !1522)
!1529 = !DILocation(line: 266, column: 5, scope: !1523)
!1530 = !DILocation(line: 265, column: 28, scope: !1522)
!1531 = !DILocation(line: 265, column: 69, scope: !1522)
!1532 = !DILocation(line: 265, column: 74, scope: !1522)
!1533 = !DILocation(line: 265, column: 62, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1522, file: !6, discriminator: 1)
!1535 = !DILocation(line: 265, column: 9, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1522, file: !6, discriminator: 2)
!1537 = !DILocation(line: 265, column: 9, scope: !1522)
!1538 = !DILocation(line: 269, column: 29, scope: !1386)
!1539 = !DILocation(line: 269, column: 13, scope: !1386)
!1540 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 270, column: 7, scope: !1386)
!1542 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !1541)
!1543 = !DILocation(line: 273, column: 10, scope: !1338)
!1544 = !DILocation(line: 273, column: 3, scope: !1338)
!1545 = distinct !DISubprogram(name: "binop", scope: !6, file: !6, line: 184, type: !1091, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1546)
!1546 = !{!1547, !1548, !1550, !1551, !1553, !1554, !1556, !1557, !1559, !1560, !1562, !1563, !1565, !1566, !1568, !1569, !1571, !1572, !1574, !1575, !1577, !1578, !1580, !1581, !1583, !1584, !1586, !1587, !1589, !1590, !1592, !1593, !1595, !1596, !1598, !1599, !1601, !1602, !1604, !1605, !1607, !1608, !1610, !1611, !1613, !1614, !1616, !1617, !1619}
!1547 = !DILocalVariable(name: "s", arg: 1, scope: !1545, file: !6, line: 184, type: !35)
!1548 = !DILocalVariable(name: "__s1_len", scope: !1549, file: !6, line: 186, type: !27)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 186, column: 12)
!1550 = !DILocalVariable(name: "__s2_len", scope: !1549, file: !6, line: 186, type: !27)
!1551 = !DILocalVariable(name: "__s2", scope: !1552, file: !6, line: 186, type: !32)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !6, line: 186, column: 12)
!1553 = !DILocalVariable(name: "__result", scope: !1552, file: !6, line: 186, type: !40)
!1554 = !DILocalVariable(name: "__s1_len", scope: !1555, file: !6, line: 186, type: !27)
!1555 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 186, column: 34)
!1556 = !DILocalVariable(name: "__s2_len", scope: !1555, file: !6, line: 186, type: !27)
!1557 = !DILocalVariable(name: "__s2", scope: !1558, file: !6, line: 186, type: !32)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !6, line: 186, column: 34)
!1559 = !DILocalVariable(name: "__result", scope: !1558, file: !6, line: 186, type: !40)
!1560 = !DILocalVariable(name: "__s1_len", scope: !1561, file: !6, line: 186, type: !27)
!1561 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 186, column: 56)
!1562 = !DILocalVariable(name: "__s2_len", scope: !1561, file: !6, line: 186, type: !27)
!1563 = !DILocalVariable(name: "__s2", scope: !1564, file: !6, line: 186, type: !32)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !6, line: 186, column: 56)
!1565 = !DILocalVariable(name: "__result", scope: !1564, file: !6, line: 186, type: !40)
!1566 = !DILocalVariable(name: "__s1_len", scope: !1567, file: !6, line: 187, type: !27)
!1567 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 187, column: 12)
!1568 = !DILocalVariable(name: "__s2_len", scope: !1567, file: !6, line: 187, type: !27)
!1569 = !DILocalVariable(name: "__s2", scope: !1570, file: !6, line: 187, type: !32)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !6, line: 187, column: 12)
!1571 = !DILocalVariable(name: "__result", scope: !1570, file: !6, line: 187, type: !40)
!1572 = !DILocalVariable(name: "__s1_len", scope: !1573, file: !6, line: 188, type: !27)
!1573 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 188, column: 12)
!1574 = !DILocalVariable(name: "__s2_len", scope: !1573, file: !6, line: 188, type: !27)
!1575 = !DILocalVariable(name: "__s2", scope: !1576, file: !6, line: 188, type: !32)
!1576 = distinct !DILexicalBlock(scope: !1573, file: !6, line: 188, column: 12)
!1577 = !DILocalVariable(name: "__result", scope: !1576, file: !6, line: 188, type: !40)
!1578 = !DILocalVariable(name: "__s1_len", scope: !1579, file: !6, line: 188, type: !27)
!1579 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 188, column: 34)
!1580 = !DILocalVariable(name: "__s2_len", scope: !1579, file: !6, line: 188, type: !27)
!1581 = !DILocalVariable(name: "__s2", scope: !1582, file: !6, line: 188, type: !32)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !6, line: 188, column: 34)
!1583 = !DILocalVariable(name: "__result", scope: !1582, file: !6, line: 188, type: !40)
!1584 = !DILocalVariable(name: "__s1_len", scope: !1585, file: !6, line: 188, type: !27)
!1585 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 188, column: 56)
!1586 = !DILocalVariable(name: "__s2_len", scope: !1585, file: !6, line: 188, type: !27)
!1587 = !DILocalVariable(name: "__s2", scope: !1588, file: !6, line: 188, type: !32)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !6, line: 188, column: 56)
!1589 = !DILocalVariable(name: "__result", scope: !1588, file: !6, line: 188, type: !40)
!1590 = !DILocalVariable(name: "__s1_len", scope: !1591, file: !6, line: 189, type: !27)
!1591 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 189, column: 12)
!1592 = !DILocalVariable(name: "__s2_len", scope: !1591, file: !6, line: 189, type: !27)
!1593 = !DILocalVariable(name: "__s2", scope: !1594, file: !6, line: 189, type: !32)
!1594 = distinct !DILexicalBlock(scope: !1591, file: !6, line: 189, column: 12)
!1595 = !DILocalVariable(name: "__result", scope: !1594, file: !6, line: 189, type: !40)
!1596 = !DILocalVariable(name: "__s1_len", scope: !1597, file: !6, line: 189, type: !27)
!1597 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 189, column: 34)
!1598 = !DILocalVariable(name: "__s2_len", scope: !1597, file: !6, line: 189, type: !27)
!1599 = !DILocalVariable(name: "__s2", scope: !1600, file: !6, line: 189, type: !32)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !6, line: 189, column: 34)
!1601 = !DILocalVariable(name: "__result", scope: !1600, file: !6, line: 189, type: !40)
!1602 = !DILocalVariable(name: "__s1_len", scope: !1603, file: !6, line: 189, type: !27)
!1603 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 189, column: 56)
!1604 = !DILocalVariable(name: "__s2_len", scope: !1603, file: !6, line: 189, type: !27)
!1605 = !DILocalVariable(name: "__s2", scope: !1606, file: !6, line: 189, type: !32)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !6, line: 189, column: 56)
!1607 = !DILocalVariable(name: "__result", scope: !1606, file: !6, line: 189, type: !40)
!1608 = !DILocalVariable(name: "__s1_len", scope: !1609, file: !6, line: 190, type: !27)
!1609 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 190, column: 12)
!1610 = !DILocalVariable(name: "__s2_len", scope: !1609, file: !6, line: 190, type: !27)
!1611 = !DILocalVariable(name: "__s2", scope: !1612, file: !6, line: 190, type: !32)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !6, line: 190, column: 12)
!1613 = !DILocalVariable(name: "__result", scope: !1612, file: !6, line: 190, type: !40)
!1614 = !DILocalVariable(name: "__s1_len", scope: !1615, file: !6, line: 190, type: !27)
!1615 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 190, column: 34)
!1616 = !DILocalVariable(name: "__s2_len", scope: !1615, file: !6, line: 190, type: !27)
!1617 = !DILocalVariable(name: "__s2", scope: !1618, file: !6, line: 190, type: !32)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !6, line: 190, column: 34)
!1619 = !DILocalVariable(name: "__result", scope: !1618, file: !6, line: 190, type: !40)
!1620 = !DILocation(line: 184, column: 20, scope: !1545)
!1621 = !DILocation(line: 186, column: 12, scope: !1549)
!1622 = !DILocation(line: 186, column: 12, scope: !1552)
!1623 = !DILocation(line: 186, column: 12, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1552, file: !6, discriminator: 2)
!1625 = !DILocation(line: 186, column: 12, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1627, file: !6, discriminator: 3)
!1627 = distinct !DILexicalBlock(scope: !1552, file: !6, line: 186, column: 12)
!1628 = !DILocation(line: 186, column: 12, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1627, file: !6, discriminator: 2)
!1630 = !DILocation(line: 186, column: 12, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1632, file: !6, discriminator: 4)
!1632 = distinct !DILexicalBlock(scope: !1627, file: !6, line: 186, column: 12)
!1633 = !DILocation(line: 186, column: 12, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1545, file: !6, discriminator: 13)
!1635 = !DILocation(line: 186, column: 30, scope: !1634)
!1636 = !DILocation(line: 186, column: 34, scope: !1555)
!1637 = !DILocation(line: 186, column: 34, scope: !1558)
!1638 = !DILocation(line: 186, column: 34, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1640, file: !6, discriminator: 17)
!1640 = distinct !DILexicalBlock(scope: !1558, file: !6, line: 186, column: 34)
!1641 = !DILocation(line: 186, column: 34, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1640, file: !6, discriminator: 16)
!1643 = !DILocation(line: 186, column: 34, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1645, file: !6, discriminator: 18)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !6, line: 186, column: 34)
!1646 = !DILocation(line: 186, column: 34, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !6, discriminator: 19)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !6, line: 186, column: 34)
!1649 = !DILocation(line: 186, column: 34, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1648, file: !6, discriminator: 18)
!1651 = !DILocation(line: 186, column: 34, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1653, file: !6, discriminator: 20)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !6, line: 186, column: 34)
!1654 = !DILocation(line: 186, column: 34, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1545, file: !6, discriminator: 27)
!1656 = !DILocation(line: 186, column: 52, scope: !1655)
!1657 = !DILocation(line: 186, column: 56, scope: !1561)
!1658 = !DILocation(line: 186, column: 56, scope: !1564)
!1659 = !DILocation(line: 186, column: 56, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1661, file: !6, discriminator: 30)
!1661 = distinct !DILexicalBlock(scope: !1564, file: !6, line: 186, column: 56)
!1662 = !DILocation(line: 186, column: 56, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1664, file: !6, discriminator: 32)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !6, line: 186, column: 56)
!1665 = !DILocation(line: 186, column: 56, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1667, file: !6, discriminator: 33)
!1667 = distinct !DILexicalBlock(scope: !1664, file: !6, line: 186, column: 56)
!1668 = !DILocation(line: 186, column: 56, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1667, file: !6, discriminator: 32)
!1670 = !DILocation(line: 186, column: 56, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !6, discriminator: 34)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !6, line: 186, column: 56)
!1673 = !DILocation(line: 186, column: 56, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1545, file: !6, discriminator: 41)
!1675 = !DILocation(line: 186, column: 73, scope: !1674)
!1676 = !DILocation(line: 187, column: 12, scope: !1567)
!1677 = !DILocation(line: 187, column: 12, scope: !1570)
!1678 = !DILocation(line: 187, column: 12, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1570, file: !6, discriminator: 2)
!1680 = !DILocation(line: 187, column: 12, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !6, discriminator: 3)
!1682 = distinct !DILexicalBlock(scope: !1570, file: !6, line: 187, column: 12)
!1683 = !DILocation(line: 187, column: 12, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1682, file: !6, discriminator: 2)
!1685 = !DILocation(line: 187, column: 12, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1687, file: !6, discriminator: 4)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !6, line: 187, column: 12)
!1688 = !DILocation(line: 187, column: 12, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1690, file: !6, discriminator: 5)
!1690 = distinct !DILexicalBlock(scope: !1687, file: !6, line: 187, column: 12)
!1691 = !DILocation(line: 187, column: 12, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1690, file: !6, discriminator: 4)
!1693 = !DILocation(line: 187, column: 12, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1695, file: !6, discriminator: 6)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !6, line: 187, column: 12)
!1696 = !DILocation(line: 187, column: 12, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1698, file: !6, discriminator: 7)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !6, line: 187, column: 12)
!1699 = !DILocation(line: 187, column: 12, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1698, file: !6, discriminator: 6)
!1701 = !DILocation(line: 187, column: 12, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1698, file: !6, discriminator: 8)
!1703 = !DILocation(line: 187, column: 12, scope: !1634)
!1704 = !DILocation(line: 187, column: 32, scope: !1634)
!1705 = !DILocation(line: 188, column: 12, scope: !1573)
!1706 = !DILocation(line: 188, column: 12, scope: !1576)
!1707 = !DILocation(line: 188, column: 12, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1709, file: !6, discriminator: 2)
!1709 = distinct !DILexicalBlock(scope: !1576, file: !6, line: 188, column: 12)
!1710 = !DILocation(line: 188, column: 12, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1712, file: !6, discriminator: 4)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !6, line: 188, column: 12)
!1713 = !DILocation(line: 188, column: 12, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1715, file: !6, discriminator: 5)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !6, line: 188, column: 12)
!1716 = !DILocation(line: 188, column: 12, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1715, file: !6, discriminator: 4)
!1718 = !DILocation(line: 188, column: 12, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !6, discriminator: 6)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !6, line: 188, column: 12)
!1721 = !DILocation(line: 188, column: 12, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1723, file: !6, discriminator: 7)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !6, line: 188, column: 12)
!1724 = !DILocation(line: 188, column: 12, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1723, file: !6, discriminator: 6)
!1726 = !DILocation(line: 188, column: 12, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1723, file: !6, discriminator: 8)
!1728 = !DILocation(line: 188, column: 12, scope: !1634)
!1729 = !DILocation(line: 188, column: 30, scope: !1634)
!1730 = !DILocation(line: 188, column: 34, scope: !1579)
!1731 = !DILocation(line: 188, column: 34, scope: !1582)
!1732 = !DILocation(line: 188, column: 34, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1734, file: !6, discriminator: 16)
!1734 = distinct !DILexicalBlock(scope: !1582, file: !6, line: 188, column: 34)
!1735 = !DILocation(line: 188, column: 34, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !6, discriminator: 18)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !6, line: 188, column: 34)
!1738 = !DILocation(line: 188, column: 34, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1740, file: !6, discriminator: 19)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !6, line: 188, column: 34)
!1741 = !DILocation(line: 188, column: 34, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1740, file: !6, discriminator: 18)
!1743 = !DILocation(line: 188, column: 34, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1745, file: !6, discriminator: 20)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !6, line: 188, column: 34)
!1746 = !DILocation(line: 188, column: 34, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1748, file: !6, discriminator: 21)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !6, line: 188, column: 34)
!1749 = !DILocation(line: 188, column: 34, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1748, file: !6, discriminator: 20)
!1751 = !DILocation(line: 188, column: 34, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1748, file: !6, discriminator: 22)
!1753 = !DILocation(line: 188, column: 34, scope: !1655)
!1754 = !DILocation(line: 188, column: 52, scope: !1655)
!1755 = !DILocation(line: 188, column: 56, scope: !1585)
!1756 = !DILocation(line: 188, column: 56, scope: !1588)
!1757 = !DILocation(line: 188, column: 56, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1759, file: !6, discriminator: 32)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !6, line: 188, column: 56)
!1760 = distinct !DILexicalBlock(scope: !1588, file: !6, line: 188, column: 56)
!1761 = !DILocation(line: 188, column: 56, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !6, discriminator: 33)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !6, line: 188, column: 56)
!1764 = !DILocation(line: 188, column: 56, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1763, file: !6, discriminator: 32)
!1766 = !DILocation(line: 188, column: 56, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1768, file: !6, discriminator: 34)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !6, line: 188, column: 56)
!1769 = !DILocation(line: 188, column: 56, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1771, file: !6, discriminator: 35)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !6, line: 188, column: 56)
!1772 = !DILocation(line: 188, column: 56, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1771, file: !6, discriminator: 34)
!1774 = !DILocation(line: 188, column: 56, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1771, file: !6, discriminator: 36)
!1776 = !DILocation(line: 188, column: 56, scope: !1674)
!1777 = !DILocation(line: 188, column: 74, scope: !1674)
!1778 = !DILocation(line: 189, column: 12, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1780, file: !6, discriminator: 4)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !6, line: 189, column: 12)
!1781 = distinct !DILexicalBlock(scope: !1594, file: !6, line: 189, column: 12)
!1782 = !DILocation(line: 189, column: 12, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1784, file: !6, discriminator: 5)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !6, line: 189, column: 12)
!1785 = !DILocation(line: 189, column: 12, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1784, file: !6, discriminator: 4)
!1787 = !DILocation(line: 189, column: 12, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1789, file: !6, discriminator: 6)
!1789 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 189, column: 12)
!1790 = !DILocation(line: 189, column: 12, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1792, file: !6, discriminator: 7)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 189, column: 12)
!1793 = !DILocation(line: 189, column: 12, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1792, file: !6, discriminator: 6)
!1795 = !DILocation(line: 189, column: 12, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1792, file: !6, discriminator: 8)
!1797 = !DILocation(line: 189, column: 12, scope: !1634)
!1798 = !DILocation(line: 189, column: 30, scope: !1634)
!1799 = !DILocation(line: 189, column: 34, scope: !1597)
!1800 = !DILocation(line: 189, column: 34, scope: !1600)
!1801 = !DILocation(line: 189, column: 34, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1803, file: !6, discriminator: 17)
!1803 = distinct !DILexicalBlock(scope: !1600, file: !6, line: 189, column: 34)
!1804 = !DILocation(line: 189, column: 34, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1803, file: !6, discriminator: 16)
!1806 = !DILocation(line: 189, column: 34, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1808, file: !6, discriminator: 18)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !6, line: 189, column: 34)
!1809 = !DILocation(line: 189, column: 34, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1811, file: !6, discriminator: 19)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !6, line: 189, column: 34)
!1812 = !DILocation(line: 189, column: 34, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1811, file: !6, discriminator: 18)
!1814 = !DILocation(line: 189, column: 34, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1816, file: !6, discriminator: 20)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !6, line: 189, column: 34)
!1817 = !DILocation(line: 189, column: 34, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1819, file: !6, discriminator: 21)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !6, line: 189, column: 34)
!1820 = !DILocation(line: 189, column: 34, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1819, file: !6, discriminator: 20)
!1822 = !DILocation(line: 189, column: 34, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1819, file: !6, discriminator: 22)
!1824 = !DILocation(line: 189, column: 34, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1597, file: !6, discriminator: 25)
!1826 = !DILocation(line: 189, column: 52, scope: !1655)
!1827 = !DILocation(line: 189, column: 56, scope: !1603)
!1828 = !DILocation(line: 189, column: 56, scope: !1606)
!1829 = !DILocation(line: 189, column: 56, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1831, file: !6, discriminator: 32)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !6, line: 189, column: 56)
!1832 = distinct !DILexicalBlock(scope: !1606, file: !6, line: 189, column: 56)
!1833 = !DILocation(line: 189, column: 56, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1835, file: !6, discriminator: 33)
!1835 = distinct !DILexicalBlock(scope: !1831, file: !6, line: 189, column: 56)
!1836 = !DILocation(line: 189, column: 56, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1835, file: !6, discriminator: 32)
!1838 = !DILocation(line: 189, column: 56, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1840, file: !6, discriminator: 34)
!1840 = distinct !DILexicalBlock(scope: !1835, file: !6, line: 189, column: 56)
!1841 = !DILocation(line: 189, column: 56, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !6, discriminator: 35)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !6, line: 189, column: 56)
!1844 = !DILocation(line: 189, column: 56, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1843, file: !6, discriminator: 34)
!1846 = !DILocation(line: 189, column: 56, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1843, file: !6, discriminator: 36)
!1848 = !DILocation(line: 189, column: 56, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1603, file: !6, discriminator: 39)
!1850 = !DILocation(line: 189, column: 74, scope: !1674)
!1851 = !DILocation(line: 190, column: 12, scope: !1609)
!1852 = !DILocation(line: 190, column: 12, scope: !1612)
!1853 = !DILocation(line: 190, column: 12, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1855, file: !6, discriminator: 4)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !6, line: 190, column: 12)
!1856 = distinct !DILexicalBlock(scope: !1612, file: !6, line: 190, column: 12)
!1857 = !DILocation(line: 190, column: 12, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1859, file: !6, discriminator: 5)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !6, line: 190, column: 12)
!1860 = !DILocation(line: 190, column: 12, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1859, file: !6, discriminator: 4)
!1862 = !DILocation(line: 190, column: 12, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1864, file: !6, discriminator: 6)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !6, line: 190, column: 12)
!1865 = !DILocation(line: 190, column: 12, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1867, file: !6, discriminator: 7)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !6, line: 190, column: 12)
!1868 = !DILocation(line: 190, column: 12, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1867, file: !6, discriminator: 6)
!1870 = !DILocation(line: 190, column: 12, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1867, file: !6, discriminator: 8)
!1872 = !DILocation(line: 190, column: 12, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1609, file: !6, discriminator: 11)
!1874 = !DILocation(line: 190, column: 30, scope: !1634)
!1875 = !DILocation(line: 190, column: 34, scope: !1615)
!1876 = !DILocation(line: 190, column: 34, scope: !1618)
!1877 = !DILocation(line: 190, column: 34, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1879, file: !6, discriminator: 16)
!1879 = distinct !DILexicalBlock(scope: !1618, file: !6, line: 190, column: 34)
!1880 = !DILocation(line: 190, column: 34, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1882, file: !6, discriminator: 18)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !6, line: 190, column: 34)
!1883 = !DILocation(line: 190, column: 34, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1885, file: !6, discriminator: 19)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !6, line: 190, column: 34)
!1886 = !DILocation(line: 190, column: 34, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1885, file: !6, discriminator: 18)
!1888 = !DILocation(line: 190, column: 34, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1890, file: !6, discriminator: 20)
!1890 = distinct !DILexicalBlock(scope: !1885, file: !6, line: 190, column: 34)
!1891 = !DILocation(line: 190, column: 34, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1893, file: !6, discriminator: 21)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !6, line: 190, column: 34)
!1894 = !DILocation(line: 190, column: 34, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1893, file: !6, discriminator: 20)
!1896 = !DILocation(line: 190, column: 34, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1893, file: !6, discriminator: 22)
!1898 = !DILocation(line: 190, column: 34, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1615, file: !6, discriminator: 25)
!1900 = !DILocation(line: 190, column: 30, scope: !1655)
!1901 = !DILocation(line: 186, column: 3, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1545, file: !6, discriminator: 42)
!1903 = distinct !DISubprogram(name: "binary_operator", scope: !6, file: !6, line: 277, type: !1904, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1906)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!93, !93}
!1906 = !{!1907, !1908, !1909, !1948, !1949, !1950, !1953, !1954, !1956, !1957, !1965, !1966, !1967, !1968, !1969, !1970, !1974, !1975, !1976, !1977, !1980, !1981, !1982, !1983, !1986, !1988, !1989, !1992, !1993, !1995, !1996, !1998, !2000}
!1907 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1903, file: !6, line: 277, type: !93)
!1908 = !DILocalVariable(name: "op", scope: !1903, file: !6, line: 279, type: !40)
!1909 = !DILocalVariable(name: "stat_buf", scope: !1903, file: !6, line: 280, type: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1911, line: 46, size: 1152, elements: !1912)
!1911 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1912 = !{!1913, !1915, !1917, !1919, !1921, !1923, !1925, !1926, !1927, !1930, !1932, !1934, !1942, !1943, !1944}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1910, file: !1911, line: 48, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !538, line: 133, baseType: !29)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1910, file: !1911, line: 53, baseType: !1916, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !538, line: 136, baseType: !29)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1910, file: !1911, line: 61, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !538, line: 139, baseType: !29)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1910, file: !1911, line: 62, baseType: !1920, size: 32, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !538, line: 138, baseType: !42)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1910, file: !1911, line: 64, baseType: !1922, size: 32, offset: 224)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !538, line: 134, baseType: !42)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1910, file: !1911, line: 65, baseType: !1924, size: 32, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !538, line: 135, baseType: !42)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1910, file: !1911, line: 67, baseType: !40, size: 32, offset: 288)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1910, file: !1911, line: 69, baseType: !1914, size: 64, offset: 320)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1910, file: !1911, line: 74, baseType: !1928, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !538, line: 140, baseType: !1929)
!1929 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1910, file: !1911, line: 78, baseType: !1931, size: 64, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !538, line: 162, baseType: !1929)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1910, file: !1911, line: 80, baseType: !1933, size: 64, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !538, line: 167, baseType: !1929)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1910, file: !1911, line: 91, baseType: !1935, size: 128, offset: 576)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1936, line: 8, size: 128, elements: !1937)
!1936 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1937 = !{!1938, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1935, file: !1936, line: 10, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !538, line: 148, baseType: !1929)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1935, file: !1936, line: 11, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !538, line: 184, baseType: !1929)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1910, file: !1911, line: 92, baseType: !1935, size: 128, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1910, file: !1911, line: 93, baseType: !1935, size: 128, offset: 832)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1910, file: !1911, line: 106, baseType: !1945, size: 192, offset: 960)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1941, size: 192, elements: !1946)
!1946 = !{!1947}
!1947 = !DISubrange(count: 3)
!1948 = !DILocalVariable(name: "stat_spare", scope: !1903, file: !6, line: 280, type: !1910)
!1949 = !DILocalVariable(name: "r_is_l", scope: !1903, file: !6, line: 282, type: !93)
!1950 = !DILocalVariable(name: "__s1_len", scope: !1951, file: !6, line: 288, type: !27)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !6, line: 288, column: 26)
!1952 = distinct !DILexicalBlock(scope: !1903, file: !6, line: 288, column: 7)
!1953 = !DILocalVariable(name: "__s2_len", scope: !1951, file: !6, line: 288, type: !27)
!1954 = !DILocalVariable(name: "__s2", scope: !1955, file: !6, line: 288, type: !32)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !6, line: 288, column: 26)
!1956 = !DILocalVariable(name: "__result", scope: !1955, file: !6, line: 288, type: !40)
!1957 = !DILocalVariable(name: "lbuf", scope: !1958, file: !6, line: 305, type: !1962)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !6, line: 304, column: 9)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !6, line: 299, column: 11)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !6, line: 297, column: 5)
!1961 = distinct !DILexicalBlock(scope: !1903, file: !6, line: 296, column: 7)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 168, elements: !1963)
!1963 = !{!1964}
!1964 = !DISubrange(count: 21)
!1965 = !DILocalVariable(name: "rbuf", scope: !1958, file: !6, line: 306, type: !1962)
!1966 = !DILocalVariable(name: "l", scope: !1958, file: !6, line: 307, type: !35)
!1967 = !DILocalVariable(name: "r", scope: !1958, file: !6, line: 310, type: !35)
!1968 = !DILocalVariable(name: "cmp", scope: !1958, file: !6, line: 313, type: !40)
!1969 = !DILocalVariable(name: "xe_operator", scope: !1958, file: !6, line: 314, type: !93)
!1970 = !DILocalVariable(name: "lt", scope: !1971, file: !6, line: 330, type: !1935)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !6, line: 328, column: 13)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !6, line: 327, column: 15)
!1973 = distinct !DILexicalBlock(scope: !1960, file: !6, line: 322, column: 9)
!1974 = !DILocalVariable(name: "rt", scope: !1971, file: !6, line: 330, type: !1935)
!1975 = !DILocalVariable(name: "le", scope: !1971, file: !6, line: 331, type: !93)
!1976 = !DILocalVariable(name: "re", scope: !1971, file: !6, line: 331, type: !93)
!1977 = !DILocalVariable(name: "lt", scope: !1978, file: !6, line: 359, type: !1935)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !6, line: 357, column: 13)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !6, line: 356, column: 15)
!1980 = !DILocalVariable(name: "rt", scope: !1978, file: !6, line: 359, type: !1935)
!1981 = !DILocalVariable(name: "le", scope: !1978, file: !6, line: 360, type: !93)
!1982 = !DILocalVariable(name: "re", scope: !1978, file: !6, line: 360, type: !93)
!1983 = !DILocalVariable(name: "value", scope: !1984, file: !6, line: 378, type: !93)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !6, line: 377, column: 5)
!1985 = distinct !DILexicalBlock(scope: !1903, file: !6, line: 375, column: 7)
!1986 = !DILocalVariable(name: "__s1_len", scope: !1987, file: !6, line: 378, type: !27)
!1987 = distinct !DILexicalBlock(scope: !1984, file: !6, line: 378, column: 20)
!1988 = !DILocalVariable(name: "__s2_len", scope: !1987, file: !6, line: 378, type: !27)
!1989 = !DILocalVariable(name: "__s1_len", scope: !1990, file: !6, line: 383, type: !27)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !6, line: 383, column: 7)
!1991 = distinct !DILexicalBlock(scope: !1903, file: !6, line: 383, column: 7)
!1992 = !DILocalVariable(name: "__s2_len", scope: !1990, file: !6, line: 383, type: !27)
!1993 = !DILocalVariable(name: "__s2", scope: !1994, file: !6, line: 383, type: !32)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !6, line: 383, column: 7)
!1995 = !DILocalVariable(name: "__result", scope: !1994, file: !6, line: 383, type: !40)
!1996 = !DILocalVariable(name: "value", scope: !1997, file: !6, line: 385, type: !93)
!1997 = distinct !DILexicalBlock(scope: !1991, file: !6, line: 384, column: 5)
!1998 = !DILocalVariable(name: "__s1_len", scope: !1999, file: !6, line: 385, type: !27)
!1999 = distinct !DILexicalBlock(scope: !1997, file: !6, line: 385, column: 21)
!2000 = !DILocalVariable(name: "__s2_len", scope: !1999, file: !6, line: 385, type: !27)
!2001 = !DILocation(line: 277, column: 23, scope: !1903)
!2002 = !DILocation(line: 280, column: 3, scope: !1903)
!2003 = !DILocation(line: 284, column: 7, scope: !1903)
!2004 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 285, column: 5, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1903, file: !6, line: 284, column: 7)
!2007 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2005)
!2008 = !DILocation(line: 285, column: 5, scope: !2006)
!2009 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 291, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1952, file: !6, line: 289, column: 5)
!2012 = !DILocation(line: 286, column: 12, scope: !1903)
!2013 = !DILocation(line: 279, column: 7, scope: !1903)
!2014 = !DILocation(line: 288, column: 13, scope: !1952)
!2015 = !DILocation(line: 288, column: 18, scope: !1952)
!2016 = !DILocation(line: 288, column: 11, scope: !1952)
!2017 = !DILocation(line: 288, column: 23, scope: !1952)
!2018 = !DILocation(line: 288, column: 26, scope: !1951)
!2019 = !DILocation(line: 288, column: 26, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !1955, file: !6, discriminator: 3)
!2021 = !DILocation(line: 288, column: 26, scope: !1955)
!2022 = !DILocation(line: 288, column: 26, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2024, file: !6, discriminator: 4)
!2024 = distinct !DILexicalBlock(scope: !1955, file: !6, line: 288, column: 26)
!2025 = !DILocation(line: 288, column: 26, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2024, file: !6, discriminator: 3)
!2027 = !DILocation(line: 288, column: 26, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2029, file: !6, discriminator: 5)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !6, line: 288, column: 26)
!2030 = !DILocation(line: 288, column: 26, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2032, file: !6, discriminator: 6)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !6, line: 288, column: 26)
!2033 = !DILocation(line: 288, column: 26, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2032, file: !6, discriminator: 5)
!2035 = !DILocation(line: 288, column: 26, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2037, file: !6, discriminator: 7)
!2037 = distinct !DILexicalBlock(scope: !2032, file: !6, line: 288, column: 26)
!2038 = !DILocation(line: 288, column: 26, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !1952, file: !6, discriminator: 14)
!2040 = !DILocation(line: 288, column: 7, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !1903, file: !6, discriminator: 14)
!2042 = !DILocation(line: 282, column: 8, scope: !1903)
!2043 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2010)
!2044 = !DILocation(line: 292, column: 5, scope: !2011)
!2045 = !DILocation(line: 385, column: 21, scope: !1999)
!2046 = !DILocation(line: 296, column: 7, scope: !1961)
!2047 = !DILocation(line: 296, column: 7, scope: !1903)
!2048 = !DILocation(line: 299, column: 14, scope: !1959)
!2049 = !DILocation(line: 299, column: 33, scope: !1959)
!2050 = !DILocation(line: 300, column: 17, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !1959, file: !6, discriminator: 1)
!2052 = !DILocation(line: 300, column: 36, scope: !2051)
!2053 = !DILocation(line: 301, column: 38, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !1959, file: !6, discriminator: 2)
!2055 = !DILocation(line: 301, column: 50, scope: !2054)
!2056 = !DILocation(line: 302, column: 12, scope: !1959)
!2057 = !DILocation(line: 302, column: 38, scope: !2054)
!2058 = !DILocation(line: 302, column: 50, scope: !2054)
!2059 = !DILocation(line: 303, column: 11, scope: !1959)
!2060 = !DILocation(line: 303, column: 15, scope: !2051)
!2061 = !DILocation(line: 299, column: 11, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !1960, file: !6, discriminator: 2)
!2063 = !DILocation(line: 305, column: 11, scope: !1958)
!2064 = !DILocation(line: 305, column: 16, scope: !1958)
!2065 = !DILocation(line: 306, column: 11, scope: !1958)
!2066 = !DILocation(line: 306, column: 16, scope: !1958)
!2067 = !DILocation(line: 307, column: 28, scope: !1958)
!2068 = !DILocation(line: 308, column: 41, scope: !1958)
!2069 = !DILocation(line: 308, column: 30, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !1958, file: !6, discriminator: 1)
!2071 = !DILocation(line: 307, column: 28, scope: !2070)
!2072 = !DILocation(line: 309, column: 30, scope: !1958)
!2073 = !DILocation(line: 307, column: 28, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !1958, file: !6, discriminator: 2)
!2075 = !DILocation(line: 307, column: 28, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !1958, file: !6, discriminator: 3)
!2077 = !DILocation(line: 307, column: 23, scope: !1958)
!2078 = !DILocation(line: 310, column: 28, scope: !1958)
!2079 = !DILocation(line: 311, column: 57, scope: !1958)
!2080 = !DILocation(line: 311, column: 49, scope: !1958)
!2081 = !DILocation(line: 311, column: 41, scope: !1958)
!2082 = !DILocation(line: 311, column: 30, scope: !2070)
!2083 = !DILocation(line: 310, column: 28, scope: !2070)
!2084 = !DILocation(line: 312, column: 48, scope: !1958)
!2085 = !DILocation(line: 312, column: 40, scope: !1958)
!2086 = !DILocation(line: 312, column: 30, scope: !1958)
!2087 = !DILocation(line: 310, column: 28, scope: !2074)
!2088 = !DILocation(line: 310, column: 28, scope: !2076)
!2089 = !DILocation(line: 310, column: 23, scope: !1958)
!2090 = !DILocation(line: 313, column: 21, scope: !1958)
!2091 = !DILocation(line: 313, column: 15, scope: !1958)
!2092 = !DILocation(line: 314, column: 31, scope: !1958)
!2093 = !DILocation(line: 314, column: 43, scope: !1958)
!2094 = !DILocation(line: 315, column: 15, scope: !1958)
!2095 = !DILocation(line: 316, column: 19, scope: !1958)
!2096 = !DILocation(line: 316, column: 46, scope: !2070)
!2097 = !DILocation(line: 316, column: 44, scope: !2070)
!2098 = !DILocation(line: 316, column: 19, scope: !2070)
!2099 = !DILocation(line: 317, column: 48, scope: !2070)
!2100 = !DILocation(line: 317, column: 46, scope: !2070)
!2101 = !DILocation(line: 317, column: 21, scope: !2070)
!2102 = !DILocation(line: 318, column: 26, scope: !1958)
!2103 = !DILocation(line: 318, column: 32, scope: !1958)
!2104 = !DILocation(line: 317, column: 21, scope: !2074)
!2105 = !DILocation(line: 319, column: 9, scope: !1959)
!2106 = !DILocation(line: 321, column: 15, scope: !1960)
!2107 = !DILocation(line: 321, column: 7, scope: !1960)
!2108 = !DILocation(line: 327, column: 15, scope: !1972)
!2109 = !DILocation(line: 327, column: 27, scope: !1972)
!2110 = !DILocation(line: 327, column: 34, scope: !1972)
!2111 = !DILocation(line: 327, column: 38, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !1972, file: !6, discriminator: 1)
!2113 = !DILocation(line: 327, column: 15, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !1973, file: !6, discriminator: 1)
!2115 = !DILocation(line: 332, column: 19, scope: !1971)
!2116 = !DILocation(line: 333, column: 26, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1971, file: !6, line: 333, column: 19)
!2118 = !DILocation(line: 334, column: 36, scope: !2117)
!2119 = !DILocation(line: 334, column: 17, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2117, file: !6, discriminator: 1)
!2121 = !DILocation(line: 334, column: 17, scope: !2117)
!2122 = !DILocation(line: 335, column: 31, scope: !1971)
!2123 = !DIExpression(DW_OP_deref)
!2124 = !DILocation(line: 330, column: 31, scope: !1971)
!2125 = !DILocalVariable(name: "filename", arg: 1, scope: !2126, file: !6, line: 169, type: !35)
!2126 = distinct !DISubprogram(name: "get_mtime", scope: !6, file: !6, line: 169, type: !2127, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2130)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!93, !35, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!2130 = !{!2125, !2131, !2132, !2133}
!2131 = !DILocalVariable(name: "mtime", arg: 2, scope: !2126, file: !6, line: 169, type: !2129)
!2132 = !DILocalVariable(name: "finfo", scope: !2126, file: !6, line: 171, type: !1910)
!2133 = !DILocalVariable(name: "ok", scope: !2126, file: !6, line: 172, type: !93)
!2134 = !DILocation(line: 169, column: 24, scope: !2126, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 335, column: 20, scope: !1971)
!2136 = !DILocation(line: 169, column: 51, scope: !2126, inlinedAt: !2135)
!2137 = !DILocation(line: 171, column: 3, scope: !2126, inlinedAt: !2135)
!2138 = !DILocation(line: 171, column: 15, scope: !2126, inlinedAt: !2135)
!2139 = !DILocalVariable(name: "__path", arg: 1, scope: !2140, file: !2141, line: 449, type: !35)
!2140 = distinct !DISubprogram(name: "stat", scope: !2141, file: !2141, line: 449, type: !2142, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2145)
!2141 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!40, !35, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!2145 = !{!2139, !2146}
!2146 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2140, file: !2141, line: 449, type: !2144)
!2147 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 172, column: 14, scope: !2126, inlinedAt: !2135)
!2149 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2148)
!2150 = !DILocation(line: 172, column: 38, scope: !2126, inlinedAt: !2135)
!2151 = !DILocalVariable(name: "st", arg: 1, scope: !2152, file: !2153, line: 140, type: !2156)
!2152 = distinct !DISubprogram(name: "get_stat_mtime", scope: !2153, file: !2153, line: 140, type: !2154, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2158)
!2153 = !DIFile(filename: "./lib/stat-time.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!1935, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!2158 = !{!2151}
!2159 = !DILocation(line: 140, column: 36, scope: !2152, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 178, column: 14, scope: !2161, inlinedAt: !2135)
!2161 = distinct !DILexicalBlock(scope: !2126, file: !6, line: 177, column: 7)
!2162 = !DILocation(line: 143, column: 10, scope: !2152, inlinedAt: !2160)
!2163 = !DILocation(line: 180, column: 1, scope: !2126, inlinedAt: !2135)
!2164 = !DILocation(line: 336, column: 31, scope: !1971)
!2165 = !DILocation(line: 336, column: 39, scope: !1971)
!2166 = !DILocation(line: 330, column: 35, scope: !1971)
!2167 = !DILocation(line: 169, column: 24, scope: !2126, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 336, column: 20, scope: !1971)
!2169 = !DILocation(line: 169, column: 51, scope: !2126, inlinedAt: !2168)
!2170 = !DILocation(line: 171, column: 3, scope: !2126, inlinedAt: !2168)
!2171 = !DILocation(line: 171, column: 15, scope: !2126, inlinedAt: !2168)
!2172 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 172, column: 14, scope: !2126, inlinedAt: !2168)
!2174 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2173)
!2175 = !DILocation(line: 172, column: 38, scope: !2126, inlinedAt: !2168)
!2176 = !DILocation(line: 177, column: 7, scope: !2126, inlinedAt: !2168)
!2177 = !DILocation(line: 180, column: 1, scope: !2126, inlinedAt: !2168)
!2178 = !DILocation(line: 337, column: 25, scope: !1971)
!2179 = !DILocation(line: 140, column: 36, scope: !2152, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 178, column: 14, scope: !2161, inlinedAt: !2168)
!2181 = !DILocation(line: 143, column: 10, scope: !2152, inlinedAt: !2180)
!2182 = !DILocation(line: 80, column: 20, scope: !2183, inlinedAt: !2190)
!2183 = distinct !DISubprogram(name: "timespec_cmp", scope: !2184, file: !2184, line: 78, type: !2185, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2187)
!2184 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!40, !1935, !1935}
!2187 = !{!2188, !2189}
!2188 = !DILocalVariable(name: "a", arg: 1, scope: !2183, file: !2184, line: 78, type: !1935)
!2189 = !DILocalVariable(name: "b", arg: 2, scope: !2183, file: !2184, line: 78, type: !1935)
!2190 = distinct !DILocation(line: 337, column: 36, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !1971, file: !6, discriminator: 2)
!2192 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!2193 = !DILocation(line: 78, column: 31, scope: !2183, inlinedAt: !2190)
!2194 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!2195 = !DILocation(line: 78, column: 50, scope: !2183, inlinedAt: !2190)
!2196 = !DILocation(line: 81, column: 22, scope: !2183, inlinedAt: !2190)
!2197 = !DILocation(line: 81, column: 13, scope: !2183, inlinedAt: !2190)
!2198 = !DILocation(line: 82, column: 30, scope: !2183, inlinedAt: !2190)
!2199 = !DILocation(line: 82, column: 13, scope: !2183, inlinedAt: !2190)
!2200 = !DILocation(line: 81, column: 13, scope: !2201, inlinedAt: !2190)
!2201 = !DILexicalBlockFile(scope: !2183, file: !2184, discriminator: 2)
!2202 = !DILocation(line: 342, column: 15, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1973, file: !6, line: 342, column: 15)
!2204 = !DILocation(line: 342, column: 27, scope: !2203)
!2205 = !DILocation(line: 342, column: 34, scope: !2203)
!2206 = !DILocation(line: 342, column: 38, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2203, file: !6, discriminator: 1)
!2208 = !DILocation(line: 342, column: 15, scope: !2114)
!2209 = !DILocation(line: 345, column: 19, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2203, file: !6, line: 343, column: 13)
!2211 = !DILocation(line: 346, column: 26, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2210, file: !6, line: 346, column: 19)
!2213 = !DILocation(line: 347, column: 36, scope: !2212)
!2214 = !DILocation(line: 347, column: 17, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2212, file: !6, discriminator: 1)
!2216 = !DILocation(line: 347, column: 17, scope: !2212)
!2217 = !DILocation(line: 348, column: 29, scope: !2210)
!2218 = !DILocation(line: 280, column: 15, scope: !1903)
!2219 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 348, column: 23, scope: !2210)
!2221 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2220)
!2222 = !DILocation(line: 348, column: 54, scope: !2210)
!2223 = !DILocation(line: 349, column: 23, scope: !2210)
!2224 = !DILocation(line: 349, column: 32, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2210, file: !6, discriminator: 1)
!2226 = !DILocation(line: 349, column: 40, scope: !2225)
!2227 = !DILocation(line: 280, column: 25, scope: !1903)
!2228 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 349, column: 26, scope: !2225)
!2230 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2229)
!2231 = !DILocation(line: 349, column: 59, scope: !2225)
!2232 = !DILocation(line: 350, column: 23, scope: !2210)
!2233 = !DILocation(line: 350, column: 35, scope: !2225)
!2234 = !{!2235, !2236, i64 0}
!2235 = !{!"stat", !2236, i64 0, !2236, i64 8, !2236, i64 16, !724, i64 24, !724, i64 28, !724, i64 32, !724, i64 36, !2236, i64 40, !2236, i64 48, !2236, i64 56, !2236, i64 64, !2237, i64 72, !2237, i64 88, !2237, i64 104, !610, i64 120}
!2236 = !{!"long", !610, i64 0}
!2237 = !{!"timespec", !2236, i64 0, !2236, i64 8}
!2238 = !DILocation(line: 350, column: 56, scope: !2225)
!2239 = !DILocation(line: 350, column: 42, scope: !2225)
!2240 = !DILocation(line: 351, column: 23, scope: !2210)
!2241 = !DILocation(line: 351, column: 35, scope: !2225)
!2242 = !{!2235, !2236, i64 8}
!2243 = !DILocation(line: 351, column: 56, scope: !2225)
!2244 = !DILocation(line: 351, column: 42, scope: !2225)
!2245 = !DILocation(line: 356, column: 22, scope: !1979)
!2246 = !DILocation(line: 356, column: 19, scope: !1979)
!2247 = !DILocation(line: 356, column: 34, scope: !1979)
!2248 = !DILocation(line: 356, column: 47, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !1979, file: !6, discriminator: 1)
!2250 = !DILocation(line: 356, column: 44, scope: !2249)
!2251 = !DILocation(line: 356, column: 15, scope: !2114)
!2252 = !DILocation(line: 361, column: 19, scope: !1978)
!2253 = !DILocation(line: 362, column: 26, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !1978, file: !6, line: 362, column: 19)
!2255 = !DILocation(line: 363, column: 36, scope: !2254)
!2256 = !DILocation(line: 363, column: 17, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2254, file: !6, discriminator: 1)
!2258 = !DILocation(line: 363, column: 17, scope: !2254)
!2259 = !DILocation(line: 364, column: 31, scope: !1978)
!2260 = !DILocation(line: 359, column: 31, scope: !1978)
!2261 = !DILocation(line: 169, column: 24, scope: !2126, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 364, column: 20, scope: !1978)
!2263 = !DILocation(line: 169, column: 51, scope: !2126, inlinedAt: !2262)
!2264 = !DILocation(line: 171, column: 3, scope: !2126, inlinedAt: !2262)
!2265 = !DILocation(line: 171, column: 15, scope: !2126, inlinedAt: !2262)
!2266 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 172, column: 14, scope: !2126, inlinedAt: !2262)
!2268 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2267)
!2269 = !DILocation(line: 140, column: 36, scope: !2152, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 178, column: 14, scope: !2161, inlinedAt: !2262)
!2271 = !DILocation(line: 143, column: 10, scope: !2152, inlinedAt: !2270)
!2272 = !DILocation(line: 180, column: 1, scope: !2126, inlinedAt: !2262)
!2273 = !DILocation(line: 365, column: 31, scope: !1978)
!2274 = !DILocation(line: 365, column: 39, scope: !1978)
!2275 = !DILocation(line: 359, column: 35, scope: !1978)
!2276 = !DILocation(line: 169, column: 24, scope: !2126, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 365, column: 20, scope: !1978)
!2278 = !DILocation(line: 169, column: 51, scope: !2126, inlinedAt: !2277)
!2279 = !DILocation(line: 171, column: 3, scope: !2126, inlinedAt: !2277)
!2280 = !DILocation(line: 171, column: 15, scope: !2126, inlinedAt: !2277)
!2281 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 172, column: 14, scope: !2126, inlinedAt: !2277)
!2283 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2282)
!2284 = !DILocation(line: 172, column: 38, scope: !2126, inlinedAt: !2277)
!2285 = !DILocation(line: 177, column: 7, scope: !2126, inlinedAt: !2277)
!2286 = !DILocation(line: 180, column: 1, scope: !2126, inlinedAt: !2277)
!2287 = !DILocation(line: 366, column: 25, scope: !1978)
!2288 = !DILocation(line: 140, column: 36, scope: !2152, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 178, column: 14, scope: !2161, inlinedAt: !2277)
!2290 = !DILocation(line: 143, column: 10, scope: !2152, inlinedAt: !2289)
!2291 = !DILocation(line: 80, column: 20, scope: !2183, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 366, column: 36, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !1978, file: !6, discriminator: 2)
!2294 = !DILocation(line: 78, column: 31, scope: !2183, inlinedAt: !2292)
!2295 = !DILocation(line: 78, column: 50, scope: !2183, inlinedAt: !2292)
!2296 = !DILocation(line: 81, column: 22, scope: !2183, inlinedAt: !2292)
!2297 = !DILocation(line: 81, column: 13, scope: !2183, inlinedAt: !2292)
!2298 = !DILocation(line: 82, column: 30, scope: !2183, inlinedAt: !2292)
!2299 = !DILocation(line: 82, column: 13, scope: !2183, inlinedAt: !2292)
!2300 = !DILocation(line: 81, column: 13, scope: !2201, inlinedAt: !2292)
!2301 = !DILocation(line: 372, column: 26, scope: !1960)
!2302 = !DILocation(line: 372, column: 67, scope: !1960)
!2303 = !DILocation(line: 372, column: 60, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !1960, file: !6, discriminator: 1)
!2305 = !DILocation(line: 372, column: 7, scope: !2062)
!2306 = !DILocation(line: 372, column: 7, scope: !1960)
!2307 = !DILocation(line: 376, column: 12, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !1985, file: !6, discriminator: 1)
!2309 = !DILocation(line: 376, column: 24, scope: !2308)
!2310 = !DILocation(line: 376, column: 53, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !1985, file: !6, discriminator: 3)
!2312 = !DILocation(line: 375, column: 7, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !1903, file: !6, discriminator: 1)
!2314 = !DILocation(line: 378, column: 20, scope: !1987)
!2315 = !DILocation(line: 378, column: 20, scope: !1984)
!2316 = !DILocation(line: 379, column: 11, scope: !1984)
!2317 = !DILocation(line: 383, column: 7, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2319, file: !6, discriminator: 4)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !6, line: 383, column: 7)
!2320 = distinct !DILexicalBlock(scope: !1994, file: !6, line: 383, column: 7)
!2321 = !DILocation(line: 383, column: 7, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2323, file: !6, discriminator: 5)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !6, line: 383, column: 7)
!2324 = !DILocation(line: 383, column: 7, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2323, file: !6, discriminator: 4)
!2326 = !DILocation(line: 383, column: 7, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !6, discriminator: 6)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !6, line: 383, column: 7)
!2329 = !DILocation(line: 383, column: 7, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !1990, file: !6, discriminator: 11)
!2331 = !DILocation(line: 383, column: 7, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !1903, file: !6, discriminator: 13)
!2333 = !DILocation(line: 385, column: 20, scope: !1997)
!2334 = !DILocation(line: 386, column: 11, scope: !1997)
!2335 = !DILocation(line: 391, column: 3, scope: !1903)
!2336 = !DILocation(line: 392, column: 1, scope: !1903)
!2337 = distinct !DISubprogram(name: "unary_operator", scope: !6, file: !6, line: 395, type: !852, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2338)
!2338 = !{!2339, !2340, !2345, !2346, !2349, !2350, !2352}
!2339 = !DILocalVariable(name: "stat_buf", scope: !2337, file: !6, line: 397, type: !1910)
!2340 = !DILocalVariable(name: "euid", scope: !2341, file: !6, line: 432, type: !2343)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !6, line: 427, column: 7)
!2342 = distinct !DILexicalBlock(scope: !2337, file: !6, line: 400, column: 5)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !2344, line: 80, baseType: !1922)
!2344 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2345 = !DILocalVariable(name: "NO_UID", scope: !2341, file: !6, line: 433, type: !2343)
!2346 = !DILocalVariable(name: "egid", scope: !2347, file: !6, line: 443, type: !2348)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !6, line: 438, column: 7)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !2344, line: 65, baseType: !1924)
!2349 = !DILocalVariable(name: "NO_GID", scope: !2347, file: !6, line: 444, type: !2348)
!2350 = !DILocalVariable(name: "fd", scope: !2351, file: !6, line: 510, type: !1929)
!2351 = distinct !DILexicalBlock(scope: !2342, file: !6, line: 509, column: 7)
!2352 = !DILocalVariable(name: "arg", scope: !2351, file: !6, line: 511, type: !35)
!2353 = !DILocation(line: 397, column: 3, scope: !2337)
!2354 = !DILocation(line: 399, column: 11, scope: !2337)
!2355 = !DILocation(line: 399, column: 16, scope: !2337)
!2356 = !DILocation(line: 399, column: 3, scope: !2337)
!2357 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2360)
!2359 = distinct !DISubprogram(name: "unary_advance", scope: !6, file: !6, line: 114, type: !1327, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !83)
!2360 = distinct !DILocation(line: 411, column: 7, scope: !2342)
!2361 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2358)
!2362 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2358)
!2363 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2358)
!2364 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2358)
!2365 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2358)
!2366 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2360)
!2367 = !DILocation(line: 412, column: 20, scope: !2342)
!2368 = !DILocation(line: 397, column: 15, scope: !2337)
!2369 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 412, column: 14, scope: !2342)
!2371 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2370)
!2372 = !DILocation(line: 412, column: 46, scope: !2342)
!2373 = !DILocation(line: 412, column: 7, scope: !2342)
!2374 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 415, column: 7, scope: !2342)
!2377 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2375)
!2378 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2375)
!2379 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2375)
!2380 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2375)
!2381 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2375)
!2382 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2376)
!2383 = !DILocation(line: 416, column: 26, scope: !2342)
!2384 = !DILocation(line: 416, column: 14, scope: !2342)
!2385 = !DILocation(line: 416, column: 47, scope: !2342)
!2386 = !DILocation(line: 416, column: 7, scope: !2342)
!2387 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 419, column: 7, scope: !2342)
!2390 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2388)
!2391 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2388)
!2392 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2388)
!2393 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2388)
!2394 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2388)
!2395 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2389)
!2396 = !DILocation(line: 420, column: 26, scope: !2342)
!2397 = !DILocation(line: 420, column: 14, scope: !2342)
!2398 = !DILocation(line: 420, column: 47, scope: !2342)
!2399 = !DILocation(line: 420, column: 7, scope: !2342)
!2400 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 423, column: 7, scope: !2342)
!2403 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2401)
!2404 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2401)
!2405 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2401)
!2406 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2401)
!2407 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2401)
!2408 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2402)
!2409 = !DILocation(line: 424, column: 26, scope: !2342)
!2410 = !DILocation(line: 424, column: 14, scope: !2342)
!2411 = !DILocation(line: 424, column: 47, scope: !2342)
!2412 = !DILocation(line: 424, column: 7, scope: !2342)
!2413 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 428, column: 9, scope: !2341)
!2416 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2414)
!2417 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2414)
!2418 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2414)
!2419 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2414)
!2420 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2414)
!2421 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2415)
!2422 = !DILocation(line: 429, column: 19, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2341, file: !6, line: 429, column: 13)
!2424 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 429, column: 13, scope: !2423)
!2426 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2425)
!2427 = !DILocation(line: 429, column: 45, scope: !2423)
!2428 = !DILocation(line: 429, column: 13, scope: !2341)
!2429 = !DILocation(line: 431, column: 9, scope: !2341)
!2430 = !DILocation(line: 431, column: 15, scope: !2341)
!2431 = !DILocation(line: 432, column: 22, scope: !2341)
!2432 = !DILocation(line: 432, column: 15, scope: !2341)
!2433 = !DILocation(line: 433, column: 15, scope: !2341)
!2434 = !DILocation(line: 434, column: 24, scope: !2341)
!2435 = !DILocation(line: 434, column: 34, scope: !2341)
!2436 = !DILocation(line: 434, column: 37, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2341, file: !6, discriminator: 1)
!2438 = !DILocation(line: 434, column: 44, scope: !2437)
!2439 = !DILocation(line: 434, column: 64, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2341, file: !6, discriminator: 2)
!2441 = !{!2235, !724, i64 28}
!2442 = !DILocation(line: 434, column: 52, scope: !2440)
!2443 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 439, column: 9, scope: !2347)
!2446 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2444)
!2447 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2444)
!2448 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2444)
!2449 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2444)
!2450 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2444)
!2451 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2445)
!2452 = !DILocation(line: 440, column: 19, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2347, file: !6, line: 440, column: 13)
!2454 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 440, column: 13, scope: !2453)
!2456 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2455)
!2457 = !DILocation(line: 440, column: 45, scope: !2453)
!2458 = !DILocation(line: 440, column: 13, scope: !2347)
!2459 = !DILocation(line: 442, column: 9, scope: !2347)
!2460 = !DILocation(line: 442, column: 15, scope: !2347)
!2461 = !DILocation(line: 443, column: 22, scope: !2347)
!2462 = !DILocation(line: 443, column: 15, scope: !2347)
!2463 = !DILocation(line: 444, column: 15, scope: !2347)
!2464 = !DILocation(line: 445, column: 24, scope: !2347)
!2465 = !DILocation(line: 445, column: 34, scope: !2347)
!2466 = !DILocation(line: 445, column: 37, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2347, file: !6, discriminator: 1)
!2468 = !DILocation(line: 445, column: 44, scope: !2467)
!2469 = !DILocation(line: 445, column: 64, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2347, file: !6, discriminator: 2)
!2471 = !{!2235, !724, i64 32}
!2472 = !DILocation(line: 445, column: 52, scope: !2470)
!2473 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 449, column: 7, scope: !2342)
!2476 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2474)
!2477 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2474)
!2478 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2474)
!2479 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2474)
!2480 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2474)
!2481 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2475)
!2482 = !DILocation(line: 452, column: 21, scope: !2342)
!2483 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 452, column: 15, scope: !2342)
!2485 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2484)
!2486 = !DILocation(line: 452, column: 47, scope: !2342)
!2487 = !DILocation(line: 453, column: 15, scope: !2342)
!2488 = !DILocation(line: 453, column: 18, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2342, file: !6, discriminator: 1)
!2490 = !{!2235, !724, i64 24}
!2491 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 456, column: 7, scope: !2342)
!2494 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2492)
!2495 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2492)
!2496 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2492)
!2497 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2492)
!2498 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2492)
!2499 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2493)
!2500 = !DILocation(line: 457, column: 21, scope: !2342)
!2501 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 457, column: 15, scope: !2342)
!2503 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2502)
!2504 = !DILocation(line: 457, column: 47, scope: !2342)
!2505 = !DILocation(line: 458, column: 15, scope: !2342)
!2506 = !DILocation(line: 458, column: 18, scope: !2489)
!2507 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 461, column: 7, scope: !2342)
!2510 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2508)
!2511 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2508)
!2512 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2508)
!2513 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2508)
!2514 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2508)
!2515 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2509)
!2516 = !DILocation(line: 462, column: 21, scope: !2342)
!2517 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 462, column: 15, scope: !2342)
!2519 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2518)
!2520 = !DILocation(line: 462, column: 47, scope: !2342)
!2521 = !DILocation(line: 463, column: 31, scope: !2489)
!2522 = !DILocation(line: 463, column: 20, scope: !2489)
!2523 = !DILocation(line: 463, column: 15, scope: !2342)
!2524 = !DILocation(line: 462, column: 7, scope: !2489)
!2525 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 466, column: 7, scope: !2342)
!2528 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2526)
!2529 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2526)
!2530 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2526)
!2531 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2526)
!2532 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2526)
!2533 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2527)
!2534 = !DILocation(line: 467, column: 21, scope: !2342)
!2535 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 467, column: 15, scope: !2342)
!2537 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2536)
!2538 = !DILocation(line: 467, column: 47, scope: !2342)
!2539 = !DILocation(line: 468, column: 15, scope: !2342)
!2540 = !DILocation(line: 468, column: 18, scope: !2489)
!2541 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 471, column: 7, scope: !2342)
!2544 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2542)
!2545 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2542)
!2546 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2542)
!2547 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2542)
!2548 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2542)
!2549 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2543)
!2550 = !DILocation(line: 472, column: 21, scope: !2342)
!2551 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 472, column: 15, scope: !2342)
!2553 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2552)
!2554 = !DILocation(line: 472, column: 47, scope: !2342)
!2555 = !DILocation(line: 473, column: 15, scope: !2342)
!2556 = !DILocation(line: 473, column: 18, scope: !2489)
!2557 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 476, column: 7, scope: !2342)
!2560 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2558)
!2561 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2558)
!2562 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2558)
!2563 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2558)
!2564 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2558)
!2565 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2559)
!2566 = !DILocation(line: 477, column: 21, scope: !2342)
!2567 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 477, column: 15, scope: !2342)
!2569 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2568)
!2570 = !DILocation(line: 477, column: 47, scope: !2342)
!2571 = !DILocation(line: 478, column: 15, scope: !2342)
!2572 = !DILocation(line: 478, column: 18, scope: !2489)
!2573 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 481, column: 7, scope: !2342)
!2576 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2574)
!2577 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2574)
!2578 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2574)
!2579 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2574)
!2580 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2574)
!2581 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2575)
!2582 = !DILocation(line: 482, column: 21, scope: !2342)
!2583 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 482, column: 15, scope: !2342)
!2585 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2584)
!2586 = !DILocation(line: 482, column: 47, scope: !2342)
!2587 = !DILocation(line: 483, column: 15, scope: !2342)
!2588 = !DILocation(line: 483, column: 18, scope: !2489)
!2589 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 489, column: 7, scope: !2342)
!2592 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2590)
!2593 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2590)
!2594 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2590)
!2595 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2590)
!2596 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2590)
!2597 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2591)
!2598 = !DILocation(line: 490, column: 22, scope: !2342)
!2599 = !DILocalVariable(name: "__path", arg: 1, scope: !2600, file: !2141, line: 456, type: !35)
!2600 = distinct !DISubprogram(name: "lstat", scope: !2141, file: !2141, line: 456, type: !2142, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2601)
!2601 = !{!2599, !2602}
!2602 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2600, file: !2141, line: 456, type: !2144)
!2603 = !DILocation(line: 456, column: 1, scope: !2600, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 490, column: 15, scope: !2342)
!2605 = !DILocation(line: 458, column: 10, scope: !2600, inlinedAt: !2604)
!2606 = !DILocation(line: 490, column: 48, scope: !2342)
!2607 = !DILocation(line: 491, column: 15, scope: !2342)
!2608 = !DILocation(line: 491, column: 18, scope: !2489)
!2609 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 494, column: 7, scope: !2342)
!2612 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2610)
!2613 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2610)
!2614 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2610)
!2615 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2610)
!2616 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2610)
!2617 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2611)
!2618 = !DILocation(line: 495, column: 21, scope: !2342)
!2619 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 495, column: 15, scope: !2342)
!2621 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2620)
!2622 = !DILocation(line: 495, column: 47, scope: !2342)
!2623 = !DILocation(line: 496, column: 15, scope: !2342)
!2624 = !DILocation(line: 496, column: 28, scope: !2489)
!2625 = !DILocation(line: 496, column: 36, scope: !2489)
!2626 = !DILocation(line: 496, column: 15, scope: !2489)
!2627 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 499, column: 7, scope: !2342)
!2630 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2628)
!2631 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2628)
!2632 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2628)
!2633 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2628)
!2634 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2628)
!2635 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2629)
!2636 = !DILocation(line: 500, column: 21, scope: !2342)
!2637 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 500, column: 15, scope: !2342)
!2639 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2638)
!2640 = !DILocation(line: 500, column: 47, scope: !2342)
!2641 = !DILocation(line: 501, column: 15, scope: !2342)
!2642 = !DILocation(line: 501, column: 28, scope: !2489)
!2643 = !DILocation(line: 501, column: 36, scope: !2489)
!2644 = !DILocation(line: 501, column: 15, scope: !2489)
!2645 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 504, column: 7, scope: !2342)
!2648 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2646)
!2649 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2646)
!2650 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2646)
!2651 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2646)
!2652 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2646)
!2653 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2647)
!2654 = !DILocation(line: 505, column: 21, scope: !2342)
!2655 = !DILocation(line: 449, column: 1, scope: !2140, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 505, column: 15, scope: !2342)
!2657 = !DILocation(line: 451, column: 10, scope: !2140, inlinedAt: !2656)
!2658 = !DILocation(line: 505, column: 47, scope: !2342)
!2659 = !DILocation(line: 506, column: 15, scope: !2342)
!2660 = !DILocation(line: 506, column: 28, scope: !2489)
!2661 = !DILocation(line: 506, column: 36, scope: !2489)
!2662 = !DILocation(line: 506, column: 15, scope: !2489)
!2663 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 512, column: 9, scope: !2351)
!2666 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2664)
!2667 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2664)
!2668 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2664)
!2669 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2664)
!2670 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2664)
!2671 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2665)
!2672 = !DILocation(line: 513, column: 25, scope: !2351)
!2673 = !DILocation(line: 513, column: 15, scope: !2351)
!2674 = !DILocation(line: 511, column: 21, scope: !2351)
!2675 = !DILocation(line: 514, column: 9, scope: !2351)
!2676 = !DILocation(line: 514, column: 15, scope: !2351)
!2677 = !DILocation(line: 515, column: 14, scope: !2351)
!2678 = !DILocation(line: 510, column: 18, scope: !2351)
!2679 = !DILocation(line: 516, column: 17, scope: !2351)
!2680 = !DILocation(line: 516, column: 23, scope: !2351)
!2681 = !DILocation(line: 516, column: 33, scope: !2351)
!2682 = !DILocation(line: 516, column: 72, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2351, file: !6, discriminator: 3)
!2684 = !DILocation(line: 516, column: 64, scope: !2683)
!2685 = !DILocation(line: 516, column: 61, scope: !2683)
!2686 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 520, column: 7, scope: !2342)
!2689 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2687)
!2690 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2687)
!2691 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2687)
!2692 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2687)
!2693 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2687)
!2694 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2688)
!2695 = !DILocation(line: 521, column: 14, scope: !2342)
!2696 = !DILocation(line: 521, column: 31, scope: !2342)
!2697 = !DILocation(line: 521, column: 7, scope: !2342)
!2698 = !DILocation(line: 105, column: 15, scope: !881, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 116, column: 3, scope: !2359, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 524, column: 7, scope: !2342)
!2701 = !DILocation(line: 107, column: 3, scope: !881, inlinedAt: !2699)
!2702 = !DILocation(line: 109, column: 19, scope: !891, inlinedAt: !2699)
!2703 = !DILocation(line: 109, column: 16, scope: !891, inlinedAt: !2699)
!2704 = !DILocation(line: 109, column: 9, scope: !892, inlinedAt: !2699)
!2705 = !DILocation(line: 110, column: 5, scope: !892, inlinedAt: !2699)
!2706 = !DILocation(line: 117, column: 3, scope: !2359, inlinedAt: !2700)
!2707 = !DILocation(line: 525, column: 14, scope: !2342)
!2708 = !DILocation(line: 525, column: 31, scope: !2342)
!2709 = !DILocation(line: 525, column: 7, scope: !2342)
!2710 = !DILocation(line: 527, column: 1, scope: !2337)
!2711 = distinct !DISubprogram(name: "find_int", scope: !6, file: !6, line: 134, type: !2712, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!35, !35}
!2714 = !{!2715, !2716, !2717}
!2715 = !DILocalVariable(name: "string", arg: 1, scope: !2711, file: !6, line: 134, type: !35)
!2716 = !DILocalVariable(name: "p", scope: !2711, file: !6, line: 136, type: !35)
!2717 = !DILocalVariable(name: "number_start", scope: !2711, file: !6, line: 137, type: !35)
!2718 = !DILocation(line: 134, column: 23, scope: !2711)
!2719 = !DILocation(line: 136, column: 15, scope: !2711)
!2720 = !DILocation(line: 139, column: 20, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2722, file: !6, discriminator: 1)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !6, line: 139, column: 3)
!2723 = distinct !DILexicalBlock(scope: !2711, file: !6, line: 139, column: 3)
!2724 = !DILocation(line: 139, column: 8, scope: !2723)
!2725 = !{!2726, !2726, i64 0}
!2726 = !{!"short", !610, i64 0}
!2727 = !DILocation(line: 139, column: 3, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2723, file: !6, discriminator: 1)
!2729 = !DILocation(line: 139, column: 46, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2722, file: !6, discriminator: 2)
!2731 = distinct !{!2731, !2732, !2733}
!2732 = !DILocation(line: 139, column: 3, scope: !2723)
!2733 = !DILocation(line: 140, column: 5, scope: !2723)
!2734 = !DILocation(line: 142, column: 10, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2711, file: !6, line: 142, column: 7)
!2736 = !DILocation(line: 137, column: 15, scope: !2711)
!2737 = !DILocation(line: 150, column: 16, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2735, file: !6, line: 148, column: 5)
!2739 = !DILocation(line: 150, column: 9, scope: !2738)
!2740 = !DILocation(line: 142, column: 7, scope: !2711)
!2741 = !DILocation(line: 153, column: 7, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2711, file: !6, line: 153, column: 7)
!2743 = !DILocation(line: 153, column: 7, scope: !2711)
!2744 = !DILocation(line: 155, column: 14, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2746, file: !6, discriminator: 1)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !6, line: 154, column: 5)
!2747 = !DILocation(line: 155, column: 7, scope: !2745)
!2748 = distinct !{!2748, !2749, !2750}
!2749 = !DILocation(line: 155, column: 7, scope: !2746)
!2750 = !DILocation(line: 156, column: 10, scope: !2746)
!2751 = !DILocation(line: 157, column: 14, scope: !2745)
!2752 = !DILocation(line: 157, column: 7, scope: !2745)
!2753 = distinct !{!2753, !2754, !2755}
!2754 = !DILocation(line: 157, column: 7, scope: !2746)
!2755 = !DILocation(line: 158, column: 10, scope: !2746)
!2756 = !DILocation(line: 159, column: 12, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2746, file: !6, line: 159, column: 11)
!2758 = !DILocation(line: 159, column: 11, scope: !2746)
!2759 = !DILocation(line: 160, column: 9, scope: !2757)
!2760 = !DILocation(line: 163, column: 22, scope: !2711)
!2761 = !DILocation(line: 163, column: 47, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !2711, file: !6, discriminator: 1)
!2763 = !DILocation(line: 163, column: 3, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2711, file: !6, discriminator: 2)
!2765 = !DILocation(line: 163, column: 3, scope: !2711)
!2766 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !92, file: !92, line: 41, type: !52, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !2767)
!2767 = !{!2768}
!2768 = !DILocalVariable(name: "file", arg: 1, scope: !2766, file: !92, line: 41, type: !35)
!2769 = !DILocation(line: 41, column: 41, scope: !2766)
!2770 = !DILocation(line: 43, column: 13, scope: !2766)
!2771 = !DILocation(line: 44, column: 1, scope: !2766)
!2772 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !92, file: !92, line: 78, type: !882, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !2773)
!2773 = !{!2774}
!2774 = !DILocalVariable(name: "ignore", arg: 1, scope: !2772, file: !92, line: 78, type: !93)
!2775 = !DILocation(line: 78, column: 37, scope: !2772)
!2776 = !DILocation(line: 80, column: 16, scope: !2772)
!2777 = !{!2778, !2778, i64 0}
!2778 = !{!"_Bool", !610, i64 0}
!2779 = !DILocation(line: 81, column: 1, scope: !2772)
!2780 = distinct !DISubprogram(name: "close_stdout", scope: !92, file: !92, line: 107, type: !1327, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !2781)
!2781 = !{!2782}
!2782 = !DILocalVariable(name: "write_error", scope: !2783, file: !92, line: 112, type: !35)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !92, line: 111, column: 5)
!2784 = distinct !DILexicalBlock(scope: !2780, file: !92, line: 109, column: 7)
!2785 = !DILocation(line: 109, column: 21, scope: !2784)
!2786 = !DILocation(line: 109, column: 7, scope: !2784)
!2787 = !DILocation(line: 109, column: 29, scope: !2784)
!2788 = !DILocation(line: 110, column: 7, scope: !2784)
!2789 = !DILocation(line: 110, column: 12, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !2784, file: !92, discriminator: 1)
!2791 = !{i8 0, i8 2}
!2792 = !DILocation(line: 114, column: 19, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2783, file: !92, line: 113, column: 11)
!2794 = !DILocation(line: 110, column: 25, scope: !2790)
!2795 = !DILocation(line: 110, column: 28, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2784, file: !92, discriminator: 2)
!2797 = !DILocation(line: 110, column: 34, scope: !2796)
!2798 = !DILocation(line: 109, column: 7, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2780, file: !92, discriminator: 1)
!2800 = !DILocation(line: 112, column: 33, scope: !2783)
!2801 = !DILocation(line: 112, column: 19, scope: !2783)
!2802 = !DILocation(line: 113, column: 11, scope: !2793)
!2803 = !DILocation(line: 113, column: 11, scope: !2783)
!2804 = !DILocation(line: 114, column: 36, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !2793, file: !92, discriminator: 1)
!2806 = !DILocation(line: 114, column: 9, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !2793, file: !92, discriminator: 2)
!2808 = !DILocation(line: 114, column: 9, scope: !2793)
!2809 = !DILocation(line: 117, column: 9, scope: !2805)
!2810 = !DILocation(line: 119, column: 14, scope: !2783)
!2811 = !DILocation(line: 119, column: 7, scope: !2783)
!2812 = !DILocation(line: 122, column: 22, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2780, file: !92, line: 122, column: 8)
!2814 = !DILocation(line: 122, column: 8, scope: !2813)
!2815 = !DILocation(line: 122, column: 30, scope: !2813)
!2816 = !DILocation(line: 122, column: 8, scope: !2780)
!2817 = !DILocation(line: 123, column: 13, scope: !2813)
!2818 = !DILocation(line: 123, column: 6, scope: !2813)
!2819 = !DILocation(line: 124, column: 1, scope: !2780)
!2820 = distinct !DISubprogram(name: "umaxtostr", scope: !2821, file: !2821, line: 36, type: !2822, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !532, variables: !2824)
!2821 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!38, !535, !38}
!2824 = !{!2825, !2826, !2827}
!2825 = !DILocalVariable(name: "i", arg: 1, scope: !2820, file: !2821, line: 36, type: !535)
!2826 = !DILocalVariable(name: "buf", arg: 2, scope: !2820, file: !2821, line: 36, type: !38)
!2827 = !DILocalVariable(name: "p", scope: !2820, file: !2821, line: 38, type: !38)
!2828 = !DILocation(line: 36, column: 19, scope: !2820)
!2829 = !DILocation(line: 36, column: 28, scope: !2820)
!2830 = !DILocation(line: 38, column: 17, scope: !2820)
!2831 = !DILocation(line: 38, column: 9, scope: !2820)
!2832 = !DILocation(line: 39, column: 6, scope: !2820)
!2833 = !DILocation(line: 41, column: 7, scope: !2820)
!2834 = !DILocation(line: 52, column: 24, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !2821, line: 50, column: 5)
!2836 = distinct !DILexicalBlock(scope: !2820, file: !2821, line: 41, column: 7)
!2837 = !DILocation(line: 52, column: 16, scope: !2835)
!2838 = !DILocation(line: 52, column: 10, scope: !2835)
!2839 = !DILocation(line: 52, column: 14, scope: !2835)
!2840 = !DILocation(line: 53, column: 17, scope: !2835)
!2841 = !DILocation(line: 53, column: 24, scope: !2835)
!2842 = !DILocation(line: 52, column: 9, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2835, file: !2821, discriminator: 1)
!2844 = distinct !{!2844, !2845, !2846}
!2845 = !DILocation(line: 51, column: 7, scope: !2835)
!2846 = !DILocation(line: 53, column: 28, scope: !2835)
!2847 = !DILocation(line: 56, column: 3, scope: !2820)
!2848 = distinct !DISubprogram(name: "set_program_name", scope: !107, file: !107, line: 39, type: !52, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !103, variables: !2849)
!2849 = !{!2850, !2851, !2852}
!2850 = !DILocalVariable(name: "argv0", arg: 1, scope: !2848, file: !107, line: 39, type: !35)
!2851 = !DILocalVariable(name: "slash", scope: !2848, file: !107, line: 46, type: !35)
!2852 = !DILocalVariable(name: "base", scope: !2848, file: !107, line: 47, type: !35)
!2853 = !DILocation(line: 39, column: 31, scope: !2848)
!2854 = !DILocation(line: 51, column: 13, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2848, file: !107, line: 51, column: 7)
!2856 = !DILocation(line: 51, column: 7, scope: !2848)
!2857 = !DILocation(line: 55, column: 14, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2855, file: !107, line: 52, column: 5)
!2859 = !DILocation(line: 54, column: 7, scope: !2858)
!2860 = !DILocation(line: 56, column: 7, scope: !2858)
!2861 = !DILocation(line: 59, column: 11, scope: !2848)
!2862 = !DILocation(line: 46, column: 15, scope: !2848)
!2863 = !DILocation(line: 60, column: 17, scope: !2848)
!2864 = !DILocation(line: 60, column: 33, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2848, file: !107, discriminator: 1)
!2866 = !DILocation(line: 60, column: 11, scope: !2848)
!2867 = !DILocation(line: 47, column: 15, scope: !2848)
!2868 = !DILocation(line: 61, column: 12, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2848, file: !107, line: 61, column: 7)
!2870 = !DILocation(line: 61, column: 20, scope: !2869)
!2871 = !DILocation(line: 61, column: 25, scope: !2869)
!2872 = !DILocation(line: 61, column: 28, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2869, file: !107, discriminator: 1)
!2874 = !DILocation(line: 61, column: 61, scope: !2873)
!2875 = !DILocation(line: 61, column: 7, scope: !2865)
!2876 = !DILocation(line: 64, column: 11, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !107, line: 64, column: 11)
!2878 = distinct !DILexicalBlock(scope: !2869, file: !107, line: 62, column: 5)
!2879 = !DILocation(line: 64, column: 36, scope: !2877)
!2880 = !DILocation(line: 64, column: 11, scope: !2878)
!2881 = !DILocation(line: 66, column: 24, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2877, file: !107, line: 65, column: 9)
!2883 = !DILocation(line: 70, column: 41, scope: !2882)
!2884 = !DILocation(line: 72, column: 9, scope: !2882)
!2885 = !DILocation(line: 84, column: 16, scope: !2848)
!2886 = !DILocation(line: 90, column: 27, scope: !2848)
!2887 = !DILocation(line: 92, column: 1, scope: !2848)
!2888 = distinct !DISubprogram(name: "clone_quoting_options", scope: !136, file: !136, line: 114, type: !2889, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !2892)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!2891, !2891}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!2892 = !{!2893, !2894, !2895}
!2893 = !DILocalVariable(name: "o", arg: 1, scope: !2888, file: !136, line: 114, type: !2891)
!2894 = !DILocalVariable(name: "e", scope: !2888, file: !136, line: 116, type: !40)
!2895 = !DILocalVariable(name: "p", scope: !2888, file: !136, line: 117, type: !2891)
!2896 = !DILocation(line: 114, column: 48, scope: !2888)
!2897 = !DILocation(line: 116, column: 11, scope: !2888)
!2898 = !DILocation(line: 116, column: 7, scope: !2888)
!2899 = !DILocation(line: 117, column: 40, scope: !2888)
!2900 = !DILocation(line: 117, column: 40, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2888, file: !136, discriminator: 3)
!2902 = !DILocation(line: 117, column: 31, scope: !2901)
!2903 = !DILocation(line: 117, column: 27, scope: !2888)
!2904 = !DILocation(line: 119, column: 9, scope: !2888)
!2905 = !DILocation(line: 120, column: 3, scope: !2888)
!2906 = distinct !DISubprogram(name: "get_quoting_style", scope: !136, file: !136, line: 125, type: !2907, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !2911)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!113, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!2911 = !{!2912}
!2912 = !DILocalVariable(name: "o", arg: 1, scope: !2906, file: !136, line: 125, type: !2909)
!2913 = !DILocation(line: 125, column: 50, scope: !2906)
!2914 = !DILocation(line: 127, column: 11, scope: !2906)
!2915 = !DILocation(line: 127, column: 46, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2906, file: !136, discriminator: 3)
!2917 = !{!2918, !610, i64 0}
!2918 = !{!"quoting_options", !610, i64 0, !724, i64 4, !610, i64 8, !609, i64 40, !609, i64 48}
!2919 = !DILocation(line: 127, column: 3, scope: !2916)
!2920 = distinct !DISubprogram(name: "set_quoting_style", scope: !136, file: !136, line: 133, type: !2921, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2891, !113}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "o", arg: 1, scope: !2920, file: !136, line: 133, type: !2891)
!2925 = !DILocalVariable(name: "s", arg: 2, scope: !2920, file: !136, line: 133, type: !113)
!2926 = !DILocation(line: 133, column: 44, scope: !2920)
!2927 = !DILocation(line: 133, column: 66, scope: !2920)
!2928 = !DILocation(line: 135, column: 4, scope: !2920)
!2929 = !DILocation(line: 135, column: 39, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2920, file: !136, discriminator: 3)
!2931 = !DILocation(line: 135, column: 45, scope: !2930)
!2932 = !DILocation(line: 136, column: 1, scope: !2920)
!2933 = distinct !DISubprogram(name: "set_char_quoting", scope: !136, file: !136, line: 144, type: !2934, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!40, !2891, !37, !40}
!2936 = !{!2937, !2938, !2939, !2940, !2941, !2943, !2944}
!2937 = !DILocalVariable(name: "o", arg: 1, scope: !2933, file: !136, line: 144, type: !2891)
!2938 = !DILocalVariable(name: "c", arg: 2, scope: !2933, file: !136, line: 144, type: !37)
!2939 = !DILocalVariable(name: "i", arg: 3, scope: !2933, file: !136, line: 144, type: !40)
!2940 = !DILocalVariable(name: "uc", scope: !2933, file: !136, line: 146, type: !34)
!2941 = !DILocalVariable(name: "p", scope: !2933, file: !136, line: 147, type: !2942)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!2943 = !DILocalVariable(name: "shift", scope: !2933, file: !136, line: 149, type: !40)
!2944 = !DILocalVariable(name: "r", scope: !2933, file: !136, line: 150, type: !40)
!2945 = !DILocation(line: 144, column: 43, scope: !2933)
!2946 = !DILocation(line: 144, column: 51, scope: !2933)
!2947 = !DILocation(line: 144, column: 58, scope: !2933)
!2948 = !DILocation(line: 146, column: 17, scope: !2933)
!2949 = !DILocation(line: 148, column: 6, scope: !2933)
!2950 = !DILocation(line: 148, column: 62, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2933, file: !136, discriminator: 3)
!2952 = !DILocation(line: 148, column: 57, scope: !2951)
!2953 = !DILocation(line: 147, column: 17, scope: !2933)
!2954 = !DILocation(line: 149, column: 18, scope: !2933)
!2955 = !DILocation(line: 149, column: 15, scope: !2933)
!2956 = !DILocation(line: 149, column: 7, scope: !2933)
!2957 = !DILocation(line: 150, column: 12, scope: !2933)
!2958 = !DILocation(line: 150, column: 15, scope: !2933)
!2959 = !DILocation(line: 150, column: 25, scope: !2933)
!2960 = !DILocation(line: 150, column: 7, scope: !2933)
!2961 = !DILocation(line: 151, column: 13, scope: !2933)
!2962 = !DILocation(line: 151, column: 18, scope: !2933)
!2963 = !DILocation(line: 151, column: 23, scope: !2933)
!2964 = !DILocation(line: 151, column: 6, scope: !2933)
!2965 = !DILocation(line: 152, column: 3, scope: !2933)
!2966 = distinct !DISubprogram(name: "set_quoting_flags", scope: !136, file: !136, line: 160, type: !2967, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!40, !2891, !40}
!2969 = !{!2970, !2971, !2972}
!2970 = !DILocalVariable(name: "o", arg: 1, scope: !2966, file: !136, line: 160, type: !2891)
!2971 = !DILocalVariable(name: "i", arg: 2, scope: !2966, file: !136, line: 160, type: !40)
!2972 = !DILocalVariable(name: "r", scope: !2966, file: !136, line: 162, type: !40)
!2973 = !DILocation(line: 160, column: 44, scope: !2966)
!2974 = !DILocation(line: 160, column: 51, scope: !2966)
!2975 = !DILocation(line: 163, column: 8, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2966, file: !136, line: 163, column: 7)
!2977 = !DILocation(line: 163, column: 7, scope: !2966)
!2978 = !DILocation(line: 165, column: 10, scope: !2966)
!2979 = !{!2918, !724, i64 4}
!2980 = !DILocation(line: 162, column: 7, scope: !2966)
!2981 = !DILocation(line: 166, column: 12, scope: !2966)
!2982 = !DILocation(line: 167, column: 3, scope: !2966)
!2983 = distinct !DISubprogram(name: "set_custom_quoting", scope: !136, file: !136, line: 171, type: !2984, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2891, !35, !35}
!2986 = !{!2987, !2988, !2989}
!2987 = !DILocalVariable(name: "o", arg: 1, scope: !2983, file: !136, line: 171, type: !2891)
!2988 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2983, file: !136, line: 172, type: !35)
!2989 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2983, file: !136, line: 172, type: !35)
!2990 = !DILocation(line: 171, column: 45, scope: !2983)
!2991 = !DILocation(line: 172, column: 33, scope: !2983)
!2992 = !DILocation(line: 172, column: 57, scope: !2983)
!2993 = !DILocation(line: 174, column: 8, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2983, file: !136, line: 174, column: 7)
!2995 = !DILocation(line: 174, column: 7, scope: !2983)
!2996 = !DILocation(line: 176, column: 6, scope: !2983)
!2997 = !DILocation(line: 176, column: 12, scope: !2983)
!2998 = !DILocation(line: 177, column: 8, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2983, file: !136, line: 177, column: 7)
!3000 = !DILocation(line: 177, column: 23, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !2999, file: !136, discriminator: 1)
!3002 = !DILocation(line: 177, column: 19, scope: !2999)
!3003 = !DILocation(line: 178, column: 5, scope: !2999)
!3004 = !DILocation(line: 179, column: 6, scope: !2983)
!3005 = !DILocation(line: 179, column: 17, scope: !2983)
!3006 = !{!2918, !609, i64 40}
!3007 = !DILocation(line: 180, column: 6, scope: !2983)
!3008 = !DILocation(line: 180, column: 18, scope: !2983)
!3009 = !{!2918, !609, i64 48}
!3010 = !DILocation(line: 181, column: 1, scope: !2983)
!3011 = distinct !DISubprogram(name: "quotearg_buffer", scope: !136, file: !136, line: 776, type: !3012, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!27, !38, !27, !35, !27, !2909}
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022}
!3015 = !DILocalVariable(name: "buffer", arg: 1, scope: !3011, file: !136, line: 776, type: !38)
!3016 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3011, file: !136, line: 776, type: !27)
!3017 = !DILocalVariable(name: "arg", arg: 3, scope: !3011, file: !136, line: 777, type: !35)
!3018 = !DILocalVariable(name: "argsize", arg: 4, scope: !3011, file: !136, line: 777, type: !27)
!3019 = !DILocalVariable(name: "o", arg: 5, scope: !3011, file: !136, line: 778, type: !2909)
!3020 = !DILocalVariable(name: "p", scope: !3011, file: !136, line: 780, type: !2909)
!3021 = !DILocalVariable(name: "e", scope: !3011, file: !136, line: 781, type: !40)
!3022 = !DILocalVariable(name: "r", scope: !3011, file: !136, line: 782, type: !27)
!3023 = !DILocation(line: 776, column: 24, scope: !3011)
!3024 = !DILocation(line: 776, column: 39, scope: !3011)
!3025 = !DILocation(line: 777, column: 30, scope: !3011)
!3026 = !DILocation(line: 777, column: 42, scope: !3011)
!3027 = !DILocation(line: 778, column: 48, scope: !3011)
!3028 = !DILocation(line: 780, column: 37, scope: !3011)
!3029 = !DILocation(line: 780, column: 33, scope: !3011)
!3030 = !DILocation(line: 781, column: 11, scope: !3011)
!3031 = !DILocation(line: 781, column: 7, scope: !3011)
!3032 = !DILocation(line: 783, column: 43, scope: !3011)
!3033 = !DILocation(line: 783, column: 53, scope: !3011)
!3034 = !DILocation(line: 783, column: 60, scope: !3011)
!3035 = !DILocation(line: 784, column: 43, scope: !3011)
!3036 = !DILocation(line: 784, column: 58, scope: !3011)
!3037 = !DILocation(line: 782, column: 14, scope: !3011)
!3038 = !DILocation(line: 782, column: 10, scope: !3011)
!3039 = !DILocation(line: 785, column: 9, scope: !3011)
!3040 = !DILocation(line: 786, column: 3, scope: !3011)
!3041 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !136, file: !136, line: 248, type: !3042, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !3046)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!27, !38, !27, !35, !27, !113, !40, !3044, !35, !35}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!3046 = !{!3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3071, !3072, !3073, !3074, !3075, !3078, !3079, !3096, !3099, !3100, !3107}
!3047 = !DILocalVariable(name: "buffer", arg: 1, scope: !3041, file: !136, line: 248, type: !38)
!3048 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3041, file: !136, line: 248, type: !27)
!3049 = !DILocalVariable(name: "arg", arg: 3, scope: !3041, file: !136, line: 249, type: !35)
!3050 = !DILocalVariable(name: "argsize", arg: 4, scope: !3041, file: !136, line: 249, type: !27)
!3051 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3041, file: !136, line: 250, type: !113)
!3052 = !DILocalVariable(name: "flags", arg: 6, scope: !3041, file: !136, line: 250, type: !40)
!3053 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3041, file: !136, line: 251, type: !3044)
!3054 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3041, file: !136, line: 252, type: !35)
!3055 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3041, file: !136, line: 253, type: !35)
!3056 = !DILocalVariable(name: "i", scope: !3041, file: !136, line: 255, type: !27)
!3057 = !DILocalVariable(name: "len", scope: !3041, file: !136, line: 256, type: !27)
!3058 = !DILocalVariable(name: "orig_buffersize", scope: !3041, file: !136, line: 257, type: !27)
!3059 = !DILocalVariable(name: "quote_string", scope: !3041, file: !136, line: 258, type: !35)
!3060 = !DILocalVariable(name: "quote_string_len", scope: !3041, file: !136, line: 259, type: !27)
!3061 = !DILocalVariable(name: "backslash_escapes", scope: !3041, file: !136, line: 260, type: !93)
!3062 = !DILocalVariable(name: "unibyte_locale", scope: !3041, file: !136, line: 261, type: !93)
!3063 = !DILocalVariable(name: "elide_outer_quotes", scope: !3041, file: !136, line: 262, type: !93)
!3064 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3041, file: !136, line: 263, type: !93)
!3065 = !DILocalVariable(name: "encountered_single_quote", scope: !3041, file: !136, line: 264, type: !93)
!3066 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3041, file: !136, line: 265, type: !93)
!3067 = !DILocalVariable(name: "c", scope: !3068, file: !136, line: 394, type: !34)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !136, line: 393, column: 5)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !136, line: 392, column: 3)
!3070 = distinct !DILexicalBlock(scope: !3041, file: !136, line: 392, column: 3)
!3071 = !DILocalVariable(name: "esc", scope: !3068, file: !136, line: 395, type: !34)
!3072 = !DILocalVariable(name: "is_right_quote", scope: !3068, file: !136, line: 396, type: !93)
!3073 = !DILocalVariable(name: "escaping", scope: !3068, file: !136, line: 397, type: !93)
!3074 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3068, file: !136, line: 398, type: !93)
!3075 = !DILocalVariable(name: "m", scope: !3076, file: !136, line: 602, type: !27)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 600, column: 11)
!3077 = distinct !DILexicalBlock(scope: !3068, file: !136, line: 418, column: 9)
!3078 = !DILocalVariable(name: "printable", scope: !3076, file: !136, line: 604, type: !93)
!3079 = !DILocalVariable(name: "mbstate", scope: !3080, file: !136, line: 613, type: !3082)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !136, line: 612, column: 15)
!3081 = distinct !DILexicalBlock(scope: !3076, file: !136, line: 606, column: 17)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3083, line: 107, baseType: !3084)
!3083 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3083, line: 95, baseType: !3085)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3083, line: 83, size: 64, elements: !3086)
!3086 = !{!3087, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3085, file: !3083, line: 85, baseType: !40, size: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3085, file: !3083, line: 94, baseType: !3089, size: 32, offset: 32)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3085, file: !3083, line: 86, size: 32, elements: !3090)
!3090 = !{!3091, !3092}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3089, file: !3083, line: 89, baseType: !42, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3089, file: !3083, line: 93, baseType: !3093, size: 32)
!3093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !3094)
!3094 = !{!3095}
!3095 = !DISubrange(count: 4)
!3096 = !DILocalVariable(name: "w", scope: !3097, file: !136, line: 623, type: !3098)
!3097 = distinct !DILexicalBlock(scope: !3080, file: !136, line: 622, column: 19)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !28, line: 90, baseType: !40)
!3099 = !DILocalVariable(name: "bytes", scope: !3097, file: !136, line: 624, type: !27)
!3100 = !DILocalVariable(name: "j", scope: !3101, file: !136, line: 649, type: !27)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !136, line: 648, column: 27)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !136, line: 646, column: 29)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !136, line: 641, column: 23)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !136, line: 633, column: 30)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !136, line: 628, column: 30)
!3106 = distinct !DILexicalBlock(scope: !3097, file: !136, line: 626, column: 25)
!3107 = !DILocalVariable(name: "ilim", scope: !3108, file: !136, line: 676, type: !27)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !136, line: 673, column: 15)
!3109 = distinct !DILexicalBlock(scope: !3076, file: !136, line: 672, column: 17)
!3110 = !DILocation(line: 248, column: 33, scope: !3041)
!3111 = !DILocation(line: 248, column: 48, scope: !3041)
!3112 = !DILocation(line: 249, column: 39, scope: !3041)
!3113 = !DILocation(line: 249, column: 51, scope: !3041)
!3114 = !DILocation(line: 250, column: 46, scope: !3041)
!3115 = !DILocation(line: 250, column: 65, scope: !3041)
!3116 = !DILocation(line: 251, column: 47, scope: !3041)
!3117 = !DILocation(line: 252, column: 39, scope: !3041)
!3118 = !DILocation(line: 253, column: 39, scope: !3041)
!3119 = !DILocation(line: 256, column: 10, scope: !3041)
!3120 = !DILocation(line: 257, column: 10, scope: !3041)
!3121 = !DILocation(line: 258, column: 15, scope: !3041)
!3122 = !DILocation(line: 259, column: 10, scope: !3041)
!3123 = !DILocation(line: 260, column: 8, scope: !3041)
!3124 = !DILocation(line: 261, column: 25, scope: !3041)
!3125 = !DILocation(line: 261, column: 36, scope: !3041)
!3126 = !DILocation(line: 262, column: 8, scope: !3041)
!3127 = !DILocation(line: 263, column: 8, scope: !3041)
!3128 = !DILocation(line: 264, column: 8, scope: !3041)
!3129 = !DILocation(line: 265, column: 8, scope: !3041)
!3130 = !DILocation(line: 265, column: 3, scope: !3041)
!3131 = !DILocation(line: 308, column: 3, scope: !3041)
!3132 = !DILocation(line: 315, column: 11, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3041, file: !136, line: 309, column: 5)
!3134 = !DILocation(line: 315, column: 12, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3133, file: !136, line: 315, column: 11)
!3136 = !DILocation(line: 316, column: 9, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3138, file: !136, discriminator: 1)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !136, line: 316, column: 9)
!3139 = distinct !DILexicalBlock(scope: !3135, file: !136, line: 316, column: 9)
!3140 = !DILocation(line: 316, column: 9, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !3139, file: !136, discriminator: 1)
!3142 = !DILocation(line: 316, column: 9, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !3138, file: !136, discriminator: 2)
!3144 = !DILocation(line: 354, column: 26, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !136, line: 332, column: 11)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !136, line: 331, column: 13)
!3147 = distinct !DILexicalBlock(scope: !3133, file: !136, line: 330, column: 7)
!3148 = !DILocation(line: 355, column: 27, scope: !3145)
!3149 = !DILocation(line: 356, column: 11, scope: !3145)
!3150 = !DILocation(line: 357, column: 14, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !136, line: 357, column: 13)
!3152 = !DILocation(line: 357, column: 13, scope: !3147)
!3153 = !DILocation(line: 358, column: 43, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3155, file: !136, discriminator: 1)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !136, line: 358, column: 11)
!3156 = distinct !DILexicalBlock(scope: !3151, file: !136, line: 358, column: 11)
!3157 = !DILocation(line: 358, column: 11, scope: !3158)
!3158 = !DILexicalBlockFile(scope: !3156, file: !136, discriminator: 1)
!3159 = !DILocation(line: 359, column: 13, scope: !3160)
!3160 = !DILexicalBlockFile(scope: !3161, file: !136, discriminator: 1)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !136, line: 359, column: 13)
!3162 = distinct !DILexicalBlock(scope: !3155, file: !136, line: 359, column: 13)
!3163 = !DILocation(line: 359, column: 13, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3162, file: !136, discriminator: 1)
!3165 = !DILocation(line: 359, column: 13, scope: !3166)
!3166 = !DILexicalBlockFile(scope: !3161, file: !136, discriminator: 2)
!3167 = !DILocation(line: 359, column: 13, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3162, file: !136, discriminator: 3)
!3169 = !DILocation(line: 358, column: 70, scope: !3170)
!3170 = !DILexicalBlockFile(scope: !3155, file: !136, discriminator: 2)
!3171 = distinct !{!3171, !3172, !3173}
!3172 = !DILocation(line: 358, column: 11, scope: !3156)
!3173 = !DILocation(line: 359, column: 13, scope: !3156)
!3174 = !DILocation(line: 362, column: 28, scope: !3147)
!3175 = !DILocation(line: 364, column: 7, scope: !3133)
!3176 = !DILocation(line: 367, column: 7, scope: !3133)
!3177 = !DILocation(line: 370, column: 7, scope: !3133)
!3178 = !DILocation(line: 373, column: 12, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3133, file: !136, line: 373, column: 11)
!3180 = !DILocation(line: 373, column: 11, scope: !3133)
!3181 = !DILocation(line: 378, column: 12, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3133, file: !136, line: 378, column: 11)
!3183 = !DILocation(line: 378, column: 11, scope: !3133)
!3184 = !DILocation(line: 379, column: 9, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3186, file: !136, discriminator: 1)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !136, line: 379, column: 9)
!3187 = distinct !DILexicalBlock(scope: !3182, file: !136, line: 379, column: 9)
!3188 = !DILocation(line: 379, column: 9, scope: !3189)
!3189 = !DILexicalBlockFile(scope: !3187, file: !136, discriminator: 1)
!3190 = !DILocation(line: 379, column: 9, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3186, file: !136, discriminator: 2)
!3192 = !DILocation(line: 386, column: 7, scope: !3133)
!3193 = !DILocation(line: 389, column: 7, scope: !3133)
!3194 = !DILocation(line: 255, column: 10, scope: !3041)
!3195 = !DILocation(line: 392, column: 8, scope: !3070)
!3196 = !DILocation(line: 392, column: 27, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3069, file: !136, discriminator: 1)
!3198 = !DILocation(line: 392, column: 19, scope: !3197)
!3199 = !DILocation(line: 392, column: 60, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3069, file: !136, discriminator: 3)
!3201 = !DILocation(line: 392, column: 3, scope: !3202)
!3202 = !DILexicalBlockFile(scope: !3070, file: !136, discriminator: 4)
!3203 = !DILocation(line: 392, column: 41, scope: !3204)
!3204 = !DILexicalBlockFile(scope: !3069, file: !136, discriminator: 2)
!3205 = !DILocation(line: 392, column: 48, scope: !3204)
!3206 = !DILocation(line: 396, column: 12, scope: !3068)
!3207 = !DILocation(line: 397, column: 12, scope: !3068)
!3208 = !DILocation(line: 398, column: 12, scope: !3068)
!3209 = !DILocation(line: 401, column: 11, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3068, file: !136, line: 400, column: 11)
!3211 = !DILocation(line: 403, column: 17, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !3210, file: !136, discriminator: 1)
!3213 = !DILocation(line: 404, column: 39, scope: !3210)
!3214 = !DILocation(line: 408, column: 32, scope: !3210)
!3215 = !DILocation(line: 404, column: 19, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3210, file: !136, discriminator: 2)
!3217 = !DILocation(line: 404, column: 15, scope: !3218)
!3218 = !DILexicalBlockFile(scope: !3210, file: !136, discriminator: 4)
!3219 = !DILocation(line: 409, column: 11, scope: !3210)
!3220 = !DILocation(line: 409, column: 26, scope: !3212)
!3221 = !DILocation(line: 409, column: 14, scope: !3212)
!3222 = !DILocation(line: 400, column: 11, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3068, file: !136, discriminator: 1)
!3224 = !DILocation(line: 416, column: 11, scope: !3068)
!3225 = !DILocation(line: 394, column: 21, scope: !3068)
!3226 = !DILocation(line: 417, column: 7, scope: !3068)
!3227 = !DILocation(line: 420, column: 15, scope: !3077)
!3228 = !DILocation(line: 422, column: 15, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3230, file: !136, discriminator: 1)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !136, line: 422, column: 15)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !136, line: 421, column: 13)
!3232 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 420, column: 15)
!3233 = !DILocation(line: 422, column: 15, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3235, file: !136, discriminator: 4)
!3235 = distinct !DILexicalBlock(scope: !3230, file: !136, line: 422, column: 15)
!3236 = !DILocation(line: 422, column: 15, scope: !3237)
!3237 = !DILexicalBlockFile(scope: !3235, file: !136, discriminator: 3)
!3238 = !DILocation(line: 422, column: 15, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !3240, file: !136, discriminator: 6)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !136, line: 422, column: 15)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !136, line: 422, column: 15)
!3242 = distinct !DILexicalBlock(scope: !3235, file: !136, line: 422, column: 15)
!3243 = !DILocation(line: 422, column: 15, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3241, file: !136, discriminator: 6)
!3245 = !DILocation(line: 422, column: 15, scope: !3246)
!3246 = !DILexicalBlockFile(scope: !3240, file: !136, discriminator: 7)
!3247 = !DILocation(line: 422, column: 15, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !3241, file: !136, discriminator: 8)
!3249 = !DILocation(line: 422, column: 15, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !3251, file: !136, discriminator: 11)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !136, line: 422, column: 15)
!3252 = distinct !DILexicalBlock(scope: !3242, file: !136, line: 422, column: 15)
!3253 = !DILocation(line: 422, column: 15, scope: !3254)
!3254 = !DILexicalBlockFile(scope: !3252, file: !136, discriminator: 11)
!3255 = !DILocation(line: 422, column: 15, scope: !3256)
!3256 = !DILexicalBlockFile(scope: !3251, file: !136, discriminator: 12)
!3257 = !DILocation(line: 422, column: 15, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3252, file: !136, discriminator: 13)
!3259 = !DILocation(line: 422, column: 15, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3261, file: !136, discriminator: 16)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !136, line: 422, column: 15)
!3262 = distinct !DILexicalBlock(scope: !3242, file: !136, line: 422, column: 15)
!3263 = !DILocation(line: 422, column: 15, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3262, file: !136, discriminator: 16)
!3265 = !DILocation(line: 422, column: 15, scope: !3266)
!3266 = !DILexicalBlockFile(scope: !3261, file: !136, discriminator: 17)
!3267 = !DILocation(line: 422, column: 15, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3262, file: !136, discriminator: 18)
!3269 = !DILocation(line: 422, column: 15, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !3242, file: !136, discriminator: 20)
!3271 = !DILocation(line: 422, column: 15, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3273, file: !136, discriminator: 22)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !136, line: 422, column: 15)
!3274 = distinct !DILexicalBlock(scope: !3230, file: !136, line: 422, column: 15)
!3275 = !DILocation(line: 422, column: 15, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3274, file: !136, discriminator: 22)
!3277 = !DILocation(line: 422, column: 15, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !3273, file: !136, discriminator: 23)
!3279 = !DILocation(line: 422, column: 15, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3274, file: !136, discriminator: 24)
!3281 = !DILocation(line: 430, column: 19, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3231, file: !136, line: 429, column: 19)
!3283 = !DILocation(line: 430, column: 24, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3282, file: !136, discriminator: 1)
!3285 = !DILocation(line: 430, column: 28, scope: !3284)
!3286 = !DILocation(line: 430, column: 38, scope: !3284)
!3287 = !DILocation(line: 430, column: 48, scope: !3288)
!3288 = !DILexicalBlockFile(scope: !3282, file: !136, discriminator: 2)
!3289 = !DILocation(line: 430, column: 59, scope: !3288)
!3290 = !DILocation(line: 432, column: 19, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3292, file: !136, discriminator: 1)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !136, line: 432, column: 19)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !136, line: 432, column: 19)
!3294 = distinct !DILexicalBlock(scope: !3282, file: !136, line: 431, column: 17)
!3295 = !DILocation(line: 432, column: 19, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3293, file: !136, discriminator: 1)
!3297 = !DILocation(line: 432, column: 19, scope: !3298)
!3298 = !DILexicalBlockFile(scope: !3292, file: !136, discriminator: 2)
!3299 = !DILocation(line: 432, column: 19, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !3293, file: !136, discriminator: 3)
!3301 = !DILocation(line: 433, column: 19, scope: !3302)
!3302 = !DILexicalBlockFile(scope: !3303, file: !136, discriminator: 1)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !136, line: 433, column: 19)
!3304 = distinct !DILexicalBlock(scope: !3294, file: !136, line: 433, column: 19)
!3305 = !DILocation(line: 433, column: 19, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !3304, file: !136, discriminator: 1)
!3307 = !DILocation(line: 433, column: 19, scope: !3308)
!3308 = !DILexicalBlockFile(scope: !3303, file: !136, discriminator: 2)
!3309 = !DILocation(line: 433, column: 19, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3304, file: !136, discriminator: 3)
!3311 = !DILocation(line: 434, column: 17, scope: !3294)
!3312 = !DILocation(line: 441, column: 20, scope: !3232)
!3313 = !DILocation(line: 446, column: 11, scope: !3077)
!3314 = !DILocation(line: 449, column: 19, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 447, column: 13)
!3316 = !DILocation(line: 455, column: 19, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3315, file: !136, line: 454, column: 19)
!3318 = !DILocation(line: 455, column: 24, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3317, file: !136, discriminator: 1)
!3320 = !DILocation(line: 455, column: 28, scope: !3319)
!3321 = !DILocation(line: 455, column: 38, scope: !3319)
!3322 = !DILocation(line: 455, column: 47, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3317, file: !136, discriminator: 2)
!3324 = !DILocation(line: 455, column: 41, scope: !3323)
!3325 = !DILocation(line: 455, column: 52, scope: !3323)
!3326 = !DILocation(line: 454, column: 19, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !3315, file: !136, discriminator: 1)
!3328 = !DILocation(line: 456, column: 25, scope: !3317)
!3329 = !DILocation(line: 456, column: 17, scope: !3317)
!3330 = !DILocation(line: 463, column: 25, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3317, file: !136, line: 457, column: 19)
!3332 = !DILocation(line: 467, column: 21, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3334, file: !136, discriminator: 1)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !136, line: 467, column: 21)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !136, line: 467, column: 21)
!3336 = !DILocation(line: 467, column: 21, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3335, file: !136, discriminator: 1)
!3338 = !DILocation(line: 467, column: 21, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3334, file: !136, discriminator: 2)
!3340 = !DILocation(line: 467, column: 21, scope: !3341)
!3341 = !DILexicalBlockFile(scope: !3335, file: !136, discriminator: 3)
!3342 = !DILocation(line: 468, column: 21, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3344, file: !136, discriminator: 1)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !136, line: 468, column: 21)
!3345 = distinct !DILexicalBlock(scope: !3331, file: !136, line: 468, column: 21)
!3346 = !DILocation(line: 468, column: 21, scope: !3347)
!3347 = !DILexicalBlockFile(scope: !3345, file: !136, discriminator: 1)
!3348 = !DILocation(line: 468, column: 21, scope: !3349)
!3349 = !DILexicalBlockFile(scope: !3344, file: !136, discriminator: 2)
!3350 = !DILocation(line: 468, column: 21, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !3345, file: !136, discriminator: 3)
!3352 = !DILocation(line: 469, column: 21, scope: !3353)
!3353 = !DILexicalBlockFile(scope: !3354, file: !136, discriminator: 1)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !136, line: 469, column: 21)
!3355 = distinct !DILexicalBlock(scope: !3331, file: !136, line: 469, column: 21)
!3356 = !DILocation(line: 469, column: 21, scope: !3357)
!3357 = !DILexicalBlockFile(scope: !3355, file: !136, discriminator: 1)
!3358 = !DILocation(line: 469, column: 21, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3354, file: !136, discriminator: 2)
!3360 = !DILocation(line: 469, column: 21, scope: !3361)
!3361 = !DILexicalBlockFile(scope: !3355, file: !136, discriminator: 3)
!3362 = !DILocation(line: 470, column: 21, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !3364, file: !136, discriminator: 1)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !136, line: 470, column: 21)
!3365 = distinct !DILexicalBlock(scope: !3331, file: !136, line: 470, column: 21)
!3366 = !DILocation(line: 470, column: 21, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !3365, file: !136, discriminator: 1)
!3368 = !DILocation(line: 470, column: 21, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3364, file: !136, discriminator: 2)
!3370 = !DILocation(line: 470, column: 21, scope: !3371)
!3371 = !DILexicalBlockFile(scope: !3365, file: !136, discriminator: 3)
!3372 = !DILocation(line: 471, column: 21, scope: !3331)
!3373 = !DILocation(line: 395, column: 21, scope: !3068)
!3374 = !DILocation(line: 484, column: 31, scope: !3077)
!3375 = !DILocation(line: 485, column: 31, scope: !3077)
!3376 = !DILocation(line: 487, column: 31, scope: !3077)
!3377 = !DILocation(line: 488, column: 31, scope: !3077)
!3378 = !DILocation(line: 489, column: 31, scope: !3077)
!3379 = !DILocation(line: 492, column: 15, scope: !3077)
!3380 = !DILocation(line: 494, column: 19, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !136, line: 493, column: 13)
!3382 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 492, column: 15)
!3383 = !DILocation(line: 501, column: 33, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 501, column: 15)
!3385 = !DILocation(line: 506, column: 15, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 505, column: 15)
!3387 = !DILocation(line: 510, column: 15, scope: !3077)
!3388 = !DILocation(line: 518, column: 26, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 518, column: 15)
!3390 = !DILocation(line: 518, column: 15, scope: !3077)
!3391 = !DILocation(line: 518, column: 40, scope: !3392)
!3392 = !DILexicalBlockFile(scope: !3389, file: !136, discriminator: 1)
!3393 = !DILocation(line: 518, column: 47, scope: !3392)
!3394 = !DILocation(line: 522, column: 17, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 522, column: 15)
!3396 = !DILocation(line: 518, column: 18, scope: !3392)
!3397 = !DILocation(line: 518, column: 65, scope: !3398)
!3398 = !DILexicalBlockFile(scope: !3389, file: !136, discriminator: 2)
!3399 = !DILocation(line: 518, column: 15, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3077, file: !136, discriminator: 2)
!3401 = !DILocation(line: 522, column: 15, scope: !3077)
!3402 = !DILocation(line: 526, column: 11, scope: !3077)
!3403 = !DILocation(line: 541, column: 15, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 540, column: 15)
!3405 = !DILocation(line: 548, column: 15, scope: !3077)
!3406 = !DILocation(line: 550, column: 19, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !136, line: 549, column: 13)
!3408 = distinct !DILexicalBlock(scope: !3077, file: !136, line: 548, column: 15)
!3409 = !DILocation(line: 553, column: 19, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3407, file: !136, line: 553, column: 19)
!3411 = !DILocation(line: 553, column: 35, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !3410, file: !136, discriminator: 1)
!3413 = !DILocation(line: 553, column: 30, scope: !3410)
!3414 = !DILocation(line: 562, column: 15, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3416, file: !136, discriminator: 1)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !136, line: 562, column: 15)
!3417 = distinct !DILexicalBlock(scope: !3407, file: !136, line: 562, column: 15)
!3418 = !DILocation(line: 562, column: 15, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3417, file: !136, discriminator: 1)
!3420 = !DILocation(line: 562, column: 15, scope: !3421)
!3421 = !DILexicalBlockFile(scope: !3416, file: !136, discriminator: 2)
!3422 = !DILocation(line: 562, column: 15, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3417, file: !136, discriminator: 3)
!3424 = !DILocation(line: 563, column: 15, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3426, file: !136, discriminator: 1)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !136, line: 563, column: 15)
!3427 = distinct !DILexicalBlock(scope: !3407, file: !136, line: 563, column: 15)
!3428 = !DILocation(line: 563, column: 15, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3427, file: !136, discriminator: 1)
!3430 = !DILocation(line: 563, column: 15, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3426, file: !136, discriminator: 2)
!3432 = !DILocation(line: 563, column: 15, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3427, file: !136, discriminator: 3)
!3434 = !DILocation(line: 564, column: 15, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !3436, file: !136, discriminator: 1)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !136, line: 564, column: 15)
!3437 = distinct !DILexicalBlock(scope: !3407, file: !136, line: 564, column: 15)
!3438 = !DILocation(line: 564, column: 15, scope: !3439)
!3439 = !DILexicalBlockFile(scope: !3437, file: !136, discriminator: 1)
!3440 = !DILocation(line: 564, column: 15, scope: !3441)
!3441 = !DILexicalBlockFile(scope: !3436, file: !136, discriminator: 2)
!3442 = !DILocation(line: 564, column: 15, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !3437, file: !136, discriminator: 3)
!3444 = !DILocation(line: 566, column: 13, scope: !3407)
!3445 = !DILocation(line: 606, column: 17, scope: !3076)
!3446 = !DILocation(line: 602, column: 20, scope: !3076)
!3447 = !DILocation(line: 609, column: 29, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3081, file: !136, line: 607, column: 15)
!3449 = !DILocation(line: 609, column: 27, scope: !3448)
!3450 = !DILocation(line: 604, column: 18, scope: !3076)
!3451 = !DILocation(line: 610, column: 15, scope: !3448)
!3452 = !DILocation(line: 613, column: 17, scope: !3080)
!3453 = !DILocation(line: 614, column: 17, scope: !3080)
!3454 = !DILocation(line: 618, column: 29, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3080, file: !136, line: 618, column: 21)
!3456 = !DILocation(line: 618, column: 21, scope: !3080)
!3457 = distinct !{!3457, !3458, !3459}
!3458 = !DILocation(line: 621, column: 17, scope: !3080)
!3459 = !DILocation(line: 667, column: 44, scope: !3080)
!3460 = !DILocation(line: 619, column: 29, scope: !3455)
!3461 = !DILocation(line: 619, column: 19, scope: !3455)
!3462 = !DILocation(line: 623, column: 21, scope: !3097)
!3463 = !DILocation(line: 624, column: 56, scope: !3097)
!3464 = !DILocation(line: 624, column: 50, scope: !3097)
!3465 = !DILocation(line: 625, column: 53, scope: !3097)
!3466 = !DILocation(line: 613, column: 27, scope: !3080)
!3467 = !DILocation(line: 623, column: 29, scope: !3097)
!3468 = !DILocation(line: 624, column: 36, scope: !3097)
!3469 = !DILocation(line: 624, column: 28, scope: !3097)
!3470 = !DILocation(line: 626, column: 25, scope: !3097)
!3471 = !DILocation(line: 636, column: 38, scope: !3472)
!3472 = !DILexicalBlockFile(scope: !3473, file: !136, discriminator: 1)
!3473 = distinct !DILexicalBlock(scope: !3104, file: !136, line: 634, column: 23)
!3474 = !DILocation(line: 636, column: 48, scope: !3472)
!3475 = !DILocation(line: 636, column: 51, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !3473, file: !136, discriminator: 2)
!3477 = !DILocation(line: 636, column: 48, scope: !3476)
!3478 = !DILocation(line: 636, column: 25, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !3473, file: !136, discriminator: 3)
!3480 = !DILocation(line: 637, column: 28, scope: !3473)
!3481 = !DILocation(line: 636, column: 34, scope: !3472)
!3482 = distinct !{!3482, !3483, !3480}
!3483 = !DILocation(line: 636, column: 25, scope: !3473)
!3484 = !DILocation(line: 650, column: 43, scope: !3485)
!3485 = !DILexicalBlockFile(scope: !3486, file: !136, discriminator: 1)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !136, line: 650, column: 29)
!3487 = distinct !DILexicalBlock(scope: !3101, file: !136, line: 650, column: 29)
!3488 = !DILocation(line: 647, column: 29, scope: !3102)
!3489 = !DILocation(line: 649, column: 36, scope: !3101)
!3490 = !DILocation(line: 651, column: 49, scope: !3486)
!3491 = !DILocation(line: 651, column: 39, scope: !3486)
!3492 = !DILocation(line: 651, column: 31, scope: !3486)
!3493 = !DILocation(line: 650, column: 53, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3486, file: !136, discriminator: 2)
!3495 = !DILocation(line: 650, column: 29, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !3487, file: !136, discriminator: 1)
!3497 = distinct !{!3497, !3498, !3499}
!3498 = !DILocation(line: 650, column: 29, scope: !3487)
!3499 = !DILocation(line: 659, column: 33, scope: !3487)
!3500 = !DILocation(line: 666, column: 19, scope: !3080)
!3501 = !DILocation(line: 662, column: 41, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3103, file: !136, line: 662, column: 29)
!3503 = !DILocation(line: 662, column: 31, scope: !3502)
!3504 = !DILocation(line: 662, column: 29, scope: !3103)
!3505 = !DILocation(line: 664, column: 27, scope: !3103)
!3506 = !DILocation(line: 667, column: 26, scope: !3080)
!3507 = !DILocation(line: 667, column: 24, scope: !3080)
!3508 = !DILocation(line: 666, column: 19, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3097, file: !136, discriminator: 3)
!3510 = !DILocation(line: 668, column: 15, scope: !3081)
!3511 = !DILocation(line: 670, column: 40, scope: !3076)
!3512 = !DILocation(line: 672, column: 19, scope: !3109)
!3513 = !DILocation(line: 672, column: 45, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !3109, file: !136, discriminator: 1)
!3515 = !DILocation(line: 672, column: 23, scope: !3109)
!3516 = !DILocation(line: 676, column: 33, scope: !3108)
!3517 = !DILocation(line: 676, column: 24, scope: !3108)
!3518 = !DILocation(line: 678, column: 17, scope: !3108)
!3519 = !DILocation(line: 680, column: 43, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !136, line: 680, column: 25)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !136, line: 679, column: 19)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !136, line: 678, column: 17)
!3523 = distinct !DILexicalBlock(scope: !3108, file: !136, line: 678, column: 17)
!3524 = !DILocation(line: 682, column: 25, scope: !3525)
!3525 = !DILexicalBlockFile(scope: !3526, file: !136, discriminator: 1)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !136, line: 682, column: 25)
!3527 = distinct !DILexicalBlock(scope: !3520, file: !136, line: 681, column: 23)
!3528 = !DILocation(line: 682, column: 25, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !3530, file: !136, discriminator: 4)
!3530 = distinct !DILexicalBlock(scope: !3526, file: !136, line: 682, column: 25)
!3531 = !DILocation(line: 682, column: 25, scope: !3532)
!3532 = !DILexicalBlockFile(scope: !3530, file: !136, discriminator: 3)
!3533 = !DILocation(line: 682, column: 25, scope: !3534)
!3534 = !DILexicalBlockFile(scope: !3535, file: !136, discriminator: 6)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !136, line: 682, column: 25)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !136, line: 682, column: 25)
!3537 = distinct !DILexicalBlock(scope: !3530, file: !136, line: 682, column: 25)
!3538 = !DILocation(line: 682, column: 25, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !3536, file: !136, discriminator: 6)
!3540 = !DILocation(line: 682, column: 25, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3535, file: !136, discriminator: 7)
!3542 = !DILocation(line: 682, column: 25, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !3536, file: !136, discriminator: 8)
!3544 = !DILocation(line: 682, column: 25, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !3546, file: !136, discriminator: 11)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !136, line: 682, column: 25)
!3547 = distinct !DILexicalBlock(scope: !3537, file: !136, line: 682, column: 25)
!3548 = !DILocation(line: 682, column: 25, scope: !3549)
!3549 = !DILexicalBlockFile(scope: !3547, file: !136, discriminator: 11)
!3550 = !DILocation(line: 682, column: 25, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !3546, file: !136, discriminator: 12)
!3552 = !DILocation(line: 682, column: 25, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !3547, file: !136, discriminator: 13)
!3554 = !DILocation(line: 682, column: 25, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3556, file: !136, discriminator: 16)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !136, line: 682, column: 25)
!3557 = distinct !DILexicalBlock(scope: !3537, file: !136, line: 682, column: 25)
!3558 = !DILocation(line: 682, column: 25, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3557, file: !136, discriminator: 16)
!3560 = !DILocation(line: 682, column: 25, scope: !3561)
!3561 = !DILexicalBlockFile(scope: !3556, file: !136, discriminator: 17)
!3562 = !DILocation(line: 682, column: 25, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !3557, file: !136, discriminator: 18)
!3564 = !DILocation(line: 682, column: 25, scope: !3565)
!3565 = !DILexicalBlockFile(scope: !3537, file: !136, discriminator: 20)
!3566 = !DILocation(line: 682, column: 25, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3568, file: !136, discriminator: 22)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !136, line: 682, column: 25)
!3569 = distinct !DILexicalBlock(scope: !3526, file: !136, line: 682, column: 25)
!3570 = !DILocation(line: 682, column: 25, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3569, file: !136, discriminator: 22)
!3572 = !DILocation(line: 682, column: 25, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3568, file: !136, discriminator: 23)
!3574 = !DILocation(line: 682, column: 25, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !3569, file: !136, discriminator: 24)
!3576 = !DILocation(line: 683, column: 25, scope: !3577)
!3577 = !DILexicalBlockFile(scope: !3578, file: !136, discriminator: 1)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !136, line: 683, column: 25)
!3579 = distinct !DILexicalBlock(scope: !3527, file: !136, line: 683, column: 25)
!3580 = !DILocation(line: 683, column: 25, scope: !3581)
!3581 = !DILexicalBlockFile(scope: !3579, file: !136, discriminator: 1)
!3582 = !DILocation(line: 683, column: 25, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !3578, file: !136, discriminator: 2)
!3584 = !DILocation(line: 683, column: 25, scope: !3585)
!3585 = !DILexicalBlockFile(scope: !3579, file: !136, discriminator: 3)
!3586 = !DILocation(line: 684, column: 25, scope: !3587)
!3587 = !DILexicalBlockFile(scope: !3588, file: !136, discriminator: 1)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !136, line: 684, column: 25)
!3589 = distinct !DILexicalBlock(scope: !3527, file: !136, line: 684, column: 25)
!3590 = !DILocation(line: 684, column: 25, scope: !3591)
!3591 = !DILexicalBlockFile(scope: !3589, file: !136, discriminator: 1)
!3592 = !DILocation(line: 684, column: 25, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3588, file: !136, discriminator: 2)
!3594 = !DILocation(line: 684, column: 25, scope: !3595)
!3595 = !DILexicalBlockFile(scope: !3589, file: !136, discriminator: 3)
!3596 = !DILocation(line: 685, column: 38, scope: !3527)
!3597 = !DILocation(line: 685, column: 33, scope: !3527)
!3598 = !DILocation(line: 686, column: 23, scope: !3527)
!3599 = !DILocation(line: 687, column: 30, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3520, file: !136, line: 687, column: 30)
!3601 = !DILocation(line: 687, column: 30, scope: !3520)
!3602 = !DILocation(line: 689, column: 25, scope: !3603)
!3603 = !DILexicalBlockFile(scope: !3604, file: !136, discriminator: 1)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !136, line: 689, column: 25)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !136, line: 689, column: 25)
!3606 = distinct !DILexicalBlock(scope: !3600, file: !136, line: 688, column: 23)
!3607 = !DILocation(line: 689, column: 25, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3605, file: !136, discriminator: 1)
!3609 = !DILocation(line: 689, column: 25, scope: !3610)
!3610 = !DILexicalBlockFile(scope: !3604, file: !136, discriminator: 2)
!3611 = !DILocation(line: 689, column: 25, scope: !3612)
!3612 = !DILexicalBlockFile(scope: !3605, file: !136, discriminator: 3)
!3613 = !DILocation(line: 691, column: 23, scope: !3606)
!3614 = !DILocation(line: 692, column: 35, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3521, file: !136, line: 692, column: 25)
!3616 = !DILocation(line: 692, column: 30, scope: !3615)
!3617 = !DILocation(line: 692, column: 25, scope: !3521)
!3618 = !DILocation(line: 694, column: 21, scope: !3619)
!3619 = !DILexicalBlockFile(scope: !3620, file: !136, discriminator: 1)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !136, line: 694, column: 21)
!3621 = distinct !DILexicalBlock(scope: !3521, file: !136, line: 694, column: 21)
!3622 = !DILocation(line: 694, column: 21, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !3620, file: !136, discriminator: 2)
!3624 = !DILocation(line: 694, column: 21, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3626, file: !136, discriminator: 4)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !136, line: 694, column: 21)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !136, line: 694, column: 21)
!3628 = distinct !DILexicalBlock(scope: !3620, file: !136, line: 694, column: 21)
!3629 = !DILocation(line: 694, column: 21, scope: !3630)
!3630 = !DILexicalBlockFile(scope: !3627, file: !136, discriminator: 4)
!3631 = !DILocation(line: 694, column: 21, scope: !3632)
!3632 = !DILexicalBlockFile(scope: !3626, file: !136, discriminator: 5)
!3633 = !DILocation(line: 694, column: 21, scope: !3634)
!3634 = !DILexicalBlockFile(scope: !3627, file: !136, discriminator: 6)
!3635 = !DILocation(line: 694, column: 21, scope: !3636)
!3636 = !DILexicalBlockFile(scope: !3637, file: !136, discriminator: 9)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !136, line: 694, column: 21)
!3638 = distinct !DILexicalBlock(scope: !3628, file: !136, line: 694, column: 21)
!3639 = !DILocation(line: 694, column: 21, scope: !3640)
!3640 = !DILexicalBlockFile(scope: !3638, file: !136, discriminator: 9)
!3641 = !DILocation(line: 694, column: 21, scope: !3642)
!3642 = !DILexicalBlockFile(scope: !3637, file: !136, discriminator: 10)
!3643 = !DILocation(line: 694, column: 21, scope: !3644)
!3644 = !DILexicalBlockFile(scope: !3638, file: !136, discriminator: 11)
!3645 = !DILocation(line: 694, column: 21, scope: !3646)
!3646 = !DILexicalBlockFile(scope: !3628, file: !136, discriminator: 13)
!3647 = !DILocation(line: 695, column: 21, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3649, file: !136, discriminator: 1)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !136, line: 695, column: 21)
!3650 = distinct !DILexicalBlock(scope: !3521, file: !136, line: 695, column: 21)
!3651 = !DILocation(line: 695, column: 21, scope: !3652)
!3652 = !DILexicalBlockFile(scope: !3650, file: !136, discriminator: 1)
!3653 = !DILocation(line: 695, column: 21, scope: !3654)
!3654 = !DILexicalBlockFile(scope: !3649, file: !136, discriminator: 2)
!3655 = !DILocation(line: 695, column: 21, scope: !3656)
!3656 = !DILexicalBlockFile(scope: !3650, file: !136, discriminator: 3)
!3657 = !DILocation(line: 696, column: 25, scope: !3521)
!3658 = !DILocation(line: 678, column: 17, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3522, file: !136, discriminator: 1)
!3660 = distinct !{!3660, !3661, !3662}
!3661 = !DILocation(line: 678, column: 17, scope: !3523)
!3662 = !DILocation(line: 697, column: 19, scope: !3523)
!3663 = !DILocation(line: 704, column: 34, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3068, file: !136, line: 704, column: 11)
!3665 = !DILocation(line: 706, column: 14, scope: !3664)
!3666 = !DILocation(line: 707, column: 14, scope: !3664)
!3667 = !DILocation(line: 707, column: 35, scope: !3668)
!3668 = !DILexicalBlockFile(scope: !3664, file: !136, discriminator: 1)
!3669 = !DILocation(line: 707, column: 17, scope: !3668)
!3670 = !DILocation(line: 707, column: 53, scope: !3668)
!3671 = !DILocation(line: 707, column: 47, scope: !3668)
!3672 = !DILocation(line: 707, column: 65, scope: !3668)
!3673 = !DILocation(line: 708, column: 15, scope: !3668)
!3674 = !DILocation(line: 708, column: 11, scope: !3664)
!3675 = !DILocation(line: 704, column: 11, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !3068, file: !136, discriminator: 2)
!3677 = !DILocation(line: 712, column: 7, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3679, file: !136, discriminator: 1)
!3679 = distinct !DILexicalBlock(scope: !3068, file: !136, line: 712, column: 7)
!3680 = !DILocation(line: 712, column: 7, scope: !3681)
!3681 = !DILexicalBlockFile(scope: !3682, file: !136, discriminator: 4)
!3682 = distinct !DILexicalBlock(scope: !3679, file: !136, line: 712, column: 7)
!3683 = !DILocation(line: 712, column: 7, scope: !3684)
!3684 = !DILexicalBlockFile(scope: !3682, file: !136, discriminator: 3)
!3685 = !DILocation(line: 712, column: 7, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3687, file: !136, discriminator: 6)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !136, line: 712, column: 7)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !136, line: 712, column: 7)
!3689 = distinct !DILexicalBlock(scope: !3682, file: !136, line: 712, column: 7)
!3690 = !DILocation(line: 712, column: 7, scope: !3691)
!3691 = !DILexicalBlockFile(scope: !3688, file: !136, discriminator: 6)
!3692 = !DILocation(line: 712, column: 7, scope: !3693)
!3693 = !DILexicalBlockFile(scope: !3687, file: !136, discriminator: 7)
!3694 = !DILocation(line: 712, column: 7, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !3688, file: !136, discriminator: 8)
!3696 = !DILocation(line: 712, column: 7, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !3698, file: !136, discriminator: 11)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !136, line: 712, column: 7)
!3699 = distinct !DILexicalBlock(scope: !3689, file: !136, line: 712, column: 7)
!3700 = !DILocation(line: 712, column: 7, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3699, file: !136, discriminator: 11)
!3702 = !DILocation(line: 712, column: 7, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !3698, file: !136, discriminator: 12)
!3704 = !DILocation(line: 712, column: 7, scope: !3705)
!3705 = !DILexicalBlockFile(scope: !3699, file: !136, discriminator: 13)
!3706 = !DILocation(line: 712, column: 7, scope: !3707)
!3707 = !DILexicalBlockFile(scope: !3708, file: !136, discriminator: 16)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !136, line: 712, column: 7)
!3709 = distinct !DILexicalBlock(scope: !3689, file: !136, line: 712, column: 7)
!3710 = !DILocation(line: 712, column: 7, scope: !3711)
!3711 = !DILexicalBlockFile(scope: !3709, file: !136, discriminator: 16)
!3712 = !DILocation(line: 712, column: 7, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !3708, file: !136, discriminator: 17)
!3714 = !DILocation(line: 712, column: 7, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !3709, file: !136, discriminator: 18)
!3716 = !DILocation(line: 712, column: 7, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3689, file: !136, discriminator: 20)
!3718 = !DILocation(line: 712, column: 7, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !3720, file: !136, discriminator: 22)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !136, line: 712, column: 7)
!3721 = distinct !DILexicalBlock(scope: !3679, file: !136, line: 712, column: 7)
!3722 = !DILocation(line: 712, column: 7, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !3721, file: !136, discriminator: 22)
!3724 = !DILocation(line: 712, column: 7, scope: !3725)
!3725 = !DILexicalBlockFile(scope: !3720, file: !136, discriminator: 23)
!3726 = !DILocation(line: 712, column: 7, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !3721, file: !136, discriminator: 24)
!3728 = !DILocation(line: 715, column: 7, scope: !3729)
!3729 = !DILexicalBlockFile(scope: !3730, file: !136, discriminator: 1)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !136, line: 715, column: 7)
!3731 = distinct !DILexicalBlock(scope: !3068, file: !136, line: 715, column: 7)
!3732 = !DILocation(line: 715, column: 7, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !3730, file: !136, discriminator: 2)
!3734 = !DILocation(line: 715, column: 7, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3736, file: !136, discriminator: 4)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !136, line: 715, column: 7)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !136, line: 715, column: 7)
!3738 = distinct !DILexicalBlock(scope: !3730, file: !136, line: 715, column: 7)
!3739 = !DILocation(line: 715, column: 7, scope: !3740)
!3740 = !DILexicalBlockFile(scope: !3737, file: !136, discriminator: 4)
!3741 = !DILocation(line: 715, column: 7, scope: !3742)
!3742 = !DILexicalBlockFile(scope: !3736, file: !136, discriminator: 5)
!3743 = !DILocation(line: 715, column: 7, scope: !3744)
!3744 = !DILexicalBlockFile(scope: !3737, file: !136, discriminator: 6)
!3745 = !DILocation(line: 715, column: 7, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3747, file: !136, discriminator: 9)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !136, line: 715, column: 7)
!3748 = distinct !DILexicalBlock(scope: !3738, file: !136, line: 715, column: 7)
!3749 = !DILocation(line: 715, column: 7, scope: !3750)
!3750 = !DILexicalBlockFile(scope: !3748, file: !136, discriminator: 9)
!3751 = !DILocation(line: 715, column: 7, scope: !3752)
!3752 = !DILexicalBlockFile(scope: !3747, file: !136, discriminator: 10)
!3753 = !DILocation(line: 715, column: 7, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !3748, file: !136, discriminator: 11)
!3755 = !DILocation(line: 715, column: 7, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3738, file: !136, discriminator: 13)
!3757 = !DILocation(line: 716, column: 7, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !3759, file: !136, discriminator: 1)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !136, line: 716, column: 7)
!3760 = distinct !DILexicalBlock(scope: !3068, file: !136, line: 716, column: 7)
!3761 = !DILocation(line: 716, column: 7, scope: !3762)
!3762 = !DILexicalBlockFile(scope: !3760, file: !136, discriminator: 1)
!3763 = !DILocation(line: 716, column: 7, scope: !3764)
!3764 = !DILexicalBlockFile(scope: !3759, file: !136, discriminator: 2)
!3765 = !DILocation(line: 716, column: 7, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3760, file: !136, discriminator: 3)
!3767 = !DILocation(line: 718, column: 13, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3068, file: !136, line: 718, column: 11)
!3769 = !DILocation(line: 718, column: 11, scope: !3068)
!3770 = !DILocation(line: 720, column: 5, scope: !3069)
!3771 = !DILocation(line: 392, column: 75, scope: !3772)
!3772 = !DILexicalBlockFile(scope: !3069, file: !136, discriminator: 5)
!3773 = !DILocation(line: 392, column: 3, scope: !3772)
!3774 = distinct !{!3774, !3775, !3776}
!3775 = !DILocation(line: 392, column: 3, scope: !3070)
!3776 = !DILocation(line: 720, column: 5, scope: !3070)
!3777 = !DILocation(line: 722, column: 11, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3041, file: !136, line: 722, column: 7)
!3779 = !DILocation(line: 722, column: 16, scope: !3778)
!3780 = !DILocation(line: 730, column: 51, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3041, file: !136, line: 730, column: 7)
!3782 = !DILocation(line: 731, column: 10, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !3781, file: !136, discriminator: 1)
!3784 = !DILocation(line: 733, column: 11, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !136, line: 733, column: 11)
!3786 = distinct !DILexicalBlock(scope: !3781, file: !136, line: 732, column: 5)
!3787 = !DILocation(line: 733, column: 11, scope: !3786)
!3788 = !DILocation(line: 734, column: 16, scope: !3785)
!3789 = !DILocation(line: 734, column: 9, scope: !3785)
!3790 = !DILocation(line: 738, column: 18, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3785, file: !136, line: 738, column: 16)
!3792 = !DILocation(line: 738, column: 32, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !3791, file: !136, discriminator: 1)
!3794 = !DILocation(line: 738, column: 29, scope: !3791)
!3795 = !DILocation(line: 747, column: 7, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3041, file: !136, line: 747, column: 7)
!3797 = !DILocation(line: 747, column: 20, scope: !3796)
!3798 = !DILocation(line: 748, column: 12, scope: !3799)
!3799 = !DILexicalBlockFile(scope: !3800, file: !136, discriminator: 1)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !136, line: 748, column: 5)
!3801 = distinct !DILexicalBlock(scope: !3796, file: !136, line: 748, column: 5)
!3802 = !DILocation(line: 748, column: 5, scope: !3803)
!3803 = !DILexicalBlockFile(scope: !3801, file: !136, discriminator: 1)
!3804 = !DILocation(line: 749, column: 7, scope: !3805)
!3805 = !DILexicalBlockFile(scope: !3806, file: !136, discriminator: 1)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !136, line: 749, column: 7)
!3807 = distinct !DILexicalBlock(scope: !3800, file: !136, line: 749, column: 7)
!3808 = !DILocation(line: 749, column: 7, scope: !3809)
!3809 = !DILexicalBlockFile(scope: !3807, file: !136, discriminator: 1)
!3810 = !DILocation(line: 749, column: 7, scope: !3811)
!3811 = !DILexicalBlockFile(scope: !3806, file: !136, discriminator: 2)
!3812 = !DILocation(line: 749, column: 7, scope: !3813)
!3813 = !DILexicalBlockFile(scope: !3807, file: !136, discriminator: 3)
!3814 = !DILocation(line: 748, column: 39, scope: !3815)
!3815 = !DILexicalBlockFile(scope: !3800, file: !136, discriminator: 2)
!3816 = distinct !{!3816, !3817, !3818}
!3817 = !DILocation(line: 748, column: 5, scope: !3801)
!3818 = !DILocation(line: 749, column: 7, scope: !3801)
!3819 = !DILocation(line: 751, column: 11, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3041, file: !136, line: 751, column: 7)
!3821 = !DILocation(line: 751, column: 7, scope: !3041)
!3822 = !DILocation(line: 752, column: 5, scope: !3820)
!3823 = !DILocation(line: 752, column: 17, scope: !3820)
!3824 = !DILocation(line: 758, column: 21, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3041, file: !136, line: 758, column: 7)
!3826 = !DILocation(line: 758, column: 54, scope: !3827)
!3827 = !DILexicalBlockFile(scope: !3825, file: !136, discriminator: 1)
!3828 = !DILocation(line: 758, column: 51, scope: !3825)
!3829 = !DILocation(line: 762, column: 42, scope: !3041)
!3830 = !DILocation(line: 760, column: 10, scope: !3041)
!3831 = !DILocation(line: 760, column: 3, scope: !3041)
!3832 = !DILocation(line: 764, column: 1, scope: !3041)
!3833 = distinct !DISubprogram(name: "gettext_quote", scope: !136, file: !136, line: 199, type: !3834, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!35, !35, !113}
!3836 = !{!3837, !3838, !3839, !3840}
!3837 = !DILocalVariable(name: "msgid", arg: 1, scope: !3833, file: !136, line: 199, type: !35)
!3838 = !DILocalVariable(name: "s", arg: 2, scope: !3833, file: !136, line: 199, type: !113)
!3839 = !DILocalVariable(name: "translation", scope: !3833, file: !136, line: 201, type: !35)
!3840 = !DILocalVariable(name: "locale_code", scope: !3833, file: !136, line: 202, type: !35)
!3841 = !DILocation(line: 199, column: 28, scope: !3833)
!3842 = !DILocation(line: 199, column: 54, scope: !3833)
!3843 = !DILocation(line: 201, column: 29, scope: !3833)
!3844 = !DILocation(line: 201, column: 15, scope: !3833)
!3845 = !DILocation(line: 204, column: 19, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3833, file: !136, line: 204, column: 7)
!3847 = !DILocation(line: 204, column: 7, scope: !3833)
!3848 = !DILocation(line: 225, column: 17, scope: !3833)
!3849 = !DILocation(line: 202, column: 15, scope: !3833)
!3850 = !DILocalVariable(name: "s2", arg: 2, scope: !3851, file: !3852, line: 160, type: !35)
!3851 = distinct !DISubprogram(name: "strcaseeq0", scope: !3852, file: !3852, line: 160, type: !3853, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !3855)
!3852 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!40, !35, !35, !37, !37, !37, !37, !37, !37, !37, !37, !37}
!3855 = !{!3856, !3850, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865}
!3856 = !DILocalVariable(name: "s1", arg: 1, scope: !3851, file: !3852, line: 160, type: !35)
!3857 = !DILocalVariable(name: "s20", arg: 3, scope: !3851, file: !3852, line: 160, type: !37)
!3858 = !DILocalVariable(name: "s21", arg: 4, scope: !3851, file: !3852, line: 160, type: !37)
!3859 = !DILocalVariable(name: "s22", arg: 5, scope: !3851, file: !3852, line: 160, type: !37)
!3860 = !DILocalVariable(name: "s23", arg: 6, scope: !3851, file: !3852, line: 160, type: !37)
!3861 = !DILocalVariable(name: "s24", arg: 7, scope: !3851, file: !3852, line: 160, type: !37)
!3862 = !DILocalVariable(name: "s25", arg: 8, scope: !3851, file: !3852, line: 160, type: !37)
!3863 = !DILocalVariable(name: "s26", arg: 9, scope: !3851, file: !3852, line: 160, type: !37)
!3864 = !DILocalVariable(name: "s27", arg: 10, scope: !3851, file: !3852, line: 160, type: !37)
!3865 = !DILocalVariable(name: "s28", arg: 11, scope: !3851, file: !3852, line: 160, type: !37)
!3866 = !DILocation(line: 160, column: 41, scope: !3851, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 226, column: 7, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3833, file: !136, line: 226, column: 7)
!3869 = !DILocation(line: 160, column: 120, scope: !3851, inlinedAt: !3867)
!3870 = !DILocation(line: 160, column: 130, scope: !3851, inlinedAt: !3867)
!3871 = !DILocation(line: 162, column: 7, scope: !3872, inlinedAt: !3867)
!3872 = !DILexicalBlockFile(scope: !3873, file: !3852, discriminator: 1)
!3873 = distinct !DILexicalBlock(scope: !3851, file: !3852, line: 162, column: 7)
!3874 = !DILocalVariable(name: "s2", arg: 2, scope: !3875, file: !3852, line: 146, type: !35)
!3875 = distinct !DISubprogram(name: "strcaseeq1", scope: !3852, file: !3852, line: 146, type: !3876, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !3878)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!40, !35, !35, !37, !37, !37, !37, !37, !37, !37, !37}
!3878 = !{!3879, !3874, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887}
!3879 = !DILocalVariable(name: "s1", arg: 1, scope: !3875, file: !3852, line: 146, type: !35)
!3880 = !DILocalVariable(name: "s21", arg: 3, scope: !3875, file: !3852, line: 146, type: !37)
!3881 = !DILocalVariable(name: "s22", arg: 4, scope: !3875, file: !3852, line: 146, type: !37)
!3882 = !DILocalVariable(name: "s23", arg: 5, scope: !3875, file: !3852, line: 146, type: !37)
!3883 = !DILocalVariable(name: "s24", arg: 6, scope: !3875, file: !3852, line: 146, type: !37)
!3884 = !DILocalVariable(name: "s25", arg: 7, scope: !3875, file: !3852, line: 146, type: !37)
!3885 = !DILocalVariable(name: "s26", arg: 8, scope: !3875, file: !3852, line: 146, type: !37)
!3886 = !DILocalVariable(name: "s27", arg: 9, scope: !3875, file: !3852, line: 146, type: !37)
!3887 = !DILocalVariable(name: "s28", arg: 10, scope: !3875, file: !3852, line: 146, type: !37)
!3888 = !DILocation(line: 146, column: 41, scope: !3875, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 167, column: 16, scope: !3890, inlinedAt: !3867)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3852, line: 164, column: 11)
!3891 = distinct !DILexicalBlock(scope: !3873, file: !3852, line: 163, column: 5)
!3892 = !DILocation(line: 146, column: 110, scope: !3875, inlinedAt: !3889)
!3893 = !DILocation(line: 146, column: 120, scope: !3875, inlinedAt: !3889)
!3894 = !DILocation(line: 148, column: 7, scope: !3895, inlinedAt: !3889)
!3895 = !DILexicalBlockFile(scope: !3896, file: !3852, discriminator: 1)
!3896 = distinct !DILexicalBlock(scope: !3875, file: !3852, line: 148, column: 7)
!3897 = !DILocalVariable(name: "s2", arg: 2, scope: !3898, file: !3852, line: 132, type: !35)
!3898 = distinct !DISubprogram(name: "strcaseeq2", scope: !3852, file: !3852, line: 132, type: !3899, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!40, !35, !35, !37, !37, !37, !37, !37, !37, !37}
!3901 = !{!3902, !3897, !3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3902 = !DILocalVariable(name: "s1", arg: 1, scope: !3898, file: !3852, line: 132, type: !35)
!3903 = !DILocalVariable(name: "s22", arg: 3, scope: !3898, file: !3852, line: 132, type: !37)
!3904 = !DILocalVariable(name: "s23", arg: 4, scope: !3898, file: !3852, line: 132, type: !37)
!3905 = !DILocalVariable(name: "s24", arg: 5, scope: !3898, file: !3852, line: 132, type: !37)
!3906 = !DILocalVariable(name: "s25", arg: 6, scope: !3898, file: !3852, line: 132, type: !37)
!3907 = !DILocalVariable(name: "s26", arg: 7, scope: !3898, file: !3852, line: 132, type: !37)
!3908 = !DILocalVariable(name: "s27", arg: 8, scope: !3898, file: !3852, line: 132, type: !37)
!3909 = !DILocalVariable(name: "s28", arg: 9, scope: !3898, file: !3852, line: 132, type: !37)
!3910 = !DILocation(line: 132, column: 41, scope: !3898, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 153, column: 16, scope: !3912, inlinedAt: !3889)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !3852, line: 150, column: 11)
!3913 = distinct !DILexicalBlock(scope: !3896, file: !3852, line: 149, column: 5)
!3914 = !DILocation(line: 132, column: 100, scope: !3898, inlinedAt: !3911)
!3915 = !DILocation(line: 132, column: 110, scope: !3898, inlinedAt: !3911)
!3916 = !DILocation(line: 134, column: 7, scope: !3917, inlinedAt: !3911)
!3917 = !DILexicalBlockFile(scope: !3918, file: !3852, discriminator: 1)
!3918 = distinct !DILexicalBlock(scope: !3898, file: !3852, line: 134, column: 7)
!3919 = !DILocalVariable(name: "s2", arg: 2, scope: !3920, file: !3852, line: 118, type: !35)
!3920 = distinct !DISubprogram(name: "strcaseeq3", scope: !3852, file: !3852, line: 118, type: !3921, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !3923)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!40, !35, !35, !37, !37, !37, !37, !37, !37}
!3923 = !{!3924, !3919, !3925, !3926, !3927, !3928, !3929, !3930}
!3924 = !DILocalVariable(name: "s1", arg: 1, scope: !3920, file: !3852, line: 118, type: !35)
!3925 = !DILocalVariable(name: "s23", arg: 3, scope: !3920, file: !3852, line: 118, type: !37)
!3926 = !DILocalVariable(name: "s24", arg: 4, scope: !3920, file: !3852, line: 118, type: !37)
!3927 = !DILocalVariable(name: "s25", arg: 5, scope: !3920, file: !3852, line: 118, type: !37)
!3928 = !DILocalVariable(name: "s26", arg: 6, scope: !3920, file: !3852, line: 118, type: !37)
!3929 = !DILocalVariable(name: "s27", arg: 7, scope: !3920, file: !3852, line: 118, type: !37)
!3930 = !DILocalVariable(name: "s28", arg: 8, scope: !3920, file: !3852, line: 118, type: !37)
!3931 = !DILocation(line: 118, column: 41, scope: !3920, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 139, column: 16, scope: !3933, inlinedAt: !3911)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !3852, line: 136, column: 11)
!3934 = distinct !DILexicalBlock(scope: !3918, file: !3852, line: 135, column: 5)
!3935 = !DILocation(line: 118, column: 90, scope: !3920, inlinedAt: !3932)
!3936 = !DILocation(line: 118, column: 100, scope: !3920, inlinedAt: !3932)
!3937 = !DILocation(line: 120, column: 7, scope: !3938, inlinedAt: !3932)
!3938 = !DILexicalBlockFile(scope: !3939, file: !3852, discriminator: 2)
!3939 = distinct !DILexicalBlock(scope: !3920, file: !3852, line: 120, column: 7)
!3940 = !DILocation(line: 120, column: 7, scope: !3941, inlinedAt: !3932)
!3941 = !DILexicalBlockFile(scope: !3920, file: !3852, discriminator: 2)
!3942 = !DILocalVariable(name: "s2", arg: 2, scope: !3943, file: !3852, line: 104, type: !35)
!3943 = distinct !DISubprogram(name: "strcaseeq4", scope: !3852, file: !3852, line: 104, type: !3944, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!40, !35, !35, !37, !37, !37, !37, !37}
!3946 = !{!3947, !3942, !3948, !3949, !3950, !3951, !3952}
!3947 = !DILocalVariable(name: "s1", arg: 1, scope: !3943, file: !3852, line: 104, type: !35)
!3948 = !DILocalVariable(name: "s24", arg: 3, scope: !3943, file: !3852, line: 104, type: !37)
!3949 = !DILocalVariable(name: "s25", arg: 4, scope: !3943, file: !3852, line: 104, type: !37)
!3950 = !DILocalVariable(name: "s26", arg: 5, scope: !3943, file: !3852, line: 104, type: !37)
!3951 = !DILocalVariable(name: "s27", arg: 6, scope: !3943, file: !3852, line: 104, type: !37)
!3952 = !DILocalVariable(name: "s28", arg: 7, scope: !3943, file: !3852, line: 104, type: !37)
!3953 = !DILocation(line: 104, column: 41, scope: !3943, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 125, column: 16, scope: !3955, inlinedAt: !3932)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !3852, line: 122, column: 11)
!3956 = distinct !DILexicalBlock(scope: !3939, file: !3852, line: 121, column: 5)
!3957 = !DILocation(line: 104, column: 80, scope: !3943, inlinedAt: !3954)
!3958 = !DILocation(line: 104, column: 90, scope: !3943, inlinedAt: !3954)
!3959 = !DILocation(line: 106, column: 7, scope: !3960, inlinedAt: !3954)
!3960 = !DILexicalBlockFile(scope: !3961, file: !3852, discriminator: 2)
!3961 = distinct !DILexicalBlock(scope: !3943, file: !3852, line: 106, column: 7)
!3962 = !DILocation(line: 106, column: 7, scope: !3963, inlinedAt: !3954)
!3963 = !DILexicalBlockFile(scope: !3943, file: !3852, discriminator: 2)
!3964 = !DILocalVariable(name: "s2", arg: 2, scope: !3965, file: !3852, line: 90, type: !35)
!3965 = distinct !DISubprogram(name: "strcaseeq5", scope: !3852, file: !3852, line: 90, type: !3966, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !3968)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!40, !35, !35, !37, !37, !37, !37}
!3968 = !{!3969, !3964, !3970, !3971, !3972, !3973}
!3969 = !DILocalVariable(name: "s1", arg: 1, scope: !3965, file: !3852, line: 90, type: !35)
!3970 = !DILocalVariable(name: "s25", arg: 3, scope: !3965, file: !3852, line: 90, type: !37)
!3971 = !DILocalVariable(name: "s26", arg: 4, scope: !3965, file: !3852, line: 90, type: !37)
!3972 = !DILocalVariable(name: "s27", arg: 5, scope: !3965, file: !3852, line: 90, type: !37)
!3973 = !DILocalVariable(name: "s28", arg: 6, scope: !3965, file: !3852, line: 90, type: !37)
!3974 = !DILocation(line: 90, column: 41, scope: !3965, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 111, column: 16, scope: !3976, inlinedAt: !3954)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !3852, line: 108, column: 11)
!3977 = distinct !DILexicalBlock(scope: !3961, file: !3852, line: 107, column: 5)
!3978 = !DILocation(line: 90, column: 70, scope: !3965, inlinedAt: !3975)
!3979 = !DILocation(line: 90, column: 80, scope: !3965, inlinedAt: !3975)
!3980 = !DILocation(line: 92, column: 7, scope: !3981, inlinedAt: !3975)
!3981 = !DILexicalBlockFile(scope: !3982, file: !3852, discriminator: 2)
!3982 = distinct !DILexicalBlock(scope: !3965, file: !3852, line: 92, column: 7)
!3983 = !DILocation(line: 92, column: 7, scope: !3984, inlinedAt: !3975)
!3984 = !DILexicalBlockFile(scope: !3965, file: !3852, discriminator: 2)
!3985 = !DILocation(line: 227, column: 12, scope: !3868)
!3986 = !DILocation(line: 227, column: 21, scope: !3868)
!3987 = !DILocation(line: 227, column: 5, scope: !3868)
!3988 = !DILocation(line: 146, column: 41, scope: !3875, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 167, column: 16, scope: !3890, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 228, column: 7, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3833, file: !136, line: 228, column: 7)
!3992 = !DILocation(line: 146, column: 110, scope: !3875, inlinedAt: !3989)
!3993 = !DILocation(line: 146, column: 120, scope: !3875, inlinedAt: !3989)
!3994 = !DILocation(line: 148, column: 7, scope: !3895, inlinedAt: !3989)
!3995 = !DILocation(line: 132, column: 41, scope: !3898, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 153, column: 16, scope: !3912, inlinedAt: !3989)
!3997 = !DILocation(line: 132, column: 100, scope: !3898, inlinedAt: !3996)
!3998 = !DILocation(line: 132, column: 110, scope: !3898, inlinedAt: !3996)
!3999 = !DILocation(line: 134, column: 7, scope: !4000, inlinedAt: !3996)
!4000 = !DILexicalBlockFile(scope: !3918, file: !3852, discriminator: 2)
!4001 = !DILocation(line: 134, column: 7, scope: !4002, inlinedAt: !3996)
!4002 = !DILexicalBlockFile(scope: !3898, file: !3852, discriminator: 2)
!4003 = !DILocation(line: 118, column: 41, scope: !3920, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 139, column: 16, scope: !3933, inlinedAt: !3996)
!4005 = !DILocation(line: 118, column: 90, scope: !3920, inlinedAt: !4004)
!4006 = !DILocation(line: 118, column: 100, scope: !3920, inlinedAt: !4004)
!4007 = !DILocation(line: 120, column: 7, scope: !3938, inlinedAt: !4004)
!4008 = !DILocation(line: 120, column: 7, scope: !3941, inlinedAt: !4004)
!4009 = !DILocation(line: 104, column: 41, scope: !3943, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 125, column: 16, scope: !3955, inlinedAt: !4004)
!4011 = !DILocation(line: 104, column: 80, scope: !3943, inlinedAt: !4010)
!4012 = !DILocation(line: 104, column: 90, scope: !3943, inlinedAt: !4010)
!4013 = !DILocation(line: 106, column: 7, scope: !3960, inlinedAt: !4010)
!4014 = !DILocation(line: 106, column: 7, scope: !3963, inlinedAt: !4010)
!4015 = !DILocation(line: 90, column: 41, scope: !3965, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 111, column: 16, scope: !3976, inlinedAt: !4010)
!4017 = !DILocation(line: 90, column: 70, scope: !3965, inlinedAt: !4016)
!4018 = !DILocation(line: 90, column: 80, scope: !3965, inlinedAt: !4016)
!4019 = !DILocation(line: 92, column: 7, scope: !3981, inlinedAt: !4016)
!4020 = !DILocation(line: 92, column: 7, scope: !3984, inlinedAt: !4016)
!4021 = !DILocalVariable(name: "s2", arg: 2, scope: !4022, file: !3852, line: 76, type: !35)
!4022 = distinct !DISubprogram(name: "strcaseeq6", scope: !3852, file: !3852, line: 76, type: !4023, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4025)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!40, !35, !35, !37, !37, !37}
!4025 = !{!4026, !4021, !4027, !4028, !4029}
!4026 = !DILocalVariable(name: "s1", arg: 1, scope: !4022, file: !3852, line: 76, type: !35)
!4027 = !DILocalVariable(name: "s26", arg: 3, scope: !4022, file: !3852, line: 76, type: !37)
!4028 = !DILocalVariable(name: "s27", arg: 4, scope: !4022, file: !3852, line: 76, type: !37)
!4029 = !DILocalVariable(name: "s28", arg: 5, scope: !4022, file: !3852, line: 76, type: !37)
!4030 = !DILocation(line: 76, column: 41, scope: !4022, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 97, column: 16, scope: !4032, inlinedAt: !4016)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !3852, line: 94, column: 11)
!4033 = distinct !DILexicalBlock(scope: !3982, file: !3852, line: 93, column: 5)
!4034 = !DILocation(line: 76, column: 60, scope: !4022, inlinedAt: !4031)
!4035 = !DILocation(line: 76, column: 70, scope: !4022, inlinedAt: !4031)
!4036 = !DILocation(line: 78, column: 7, scope: !4037, inlinedAt: !4031)
!4037 = !DILexicalBlockFile(scope: !4038, file: !3852, discriminator: 2)
!4038 = distinct !DILexicalBlock(scope: !4022, file: !3852, line: 78, column: 7)
!4039 = !DILocation(line: 78, column: 7, scope: !4040, inlinedAt: !4031)
!4040 = !DILexicalBlockFile(scope: !4022, file: !3852, discriminator: 2)
!4041 = !DILocalVariable(name: "s2", arg: 2, scope: !4042, file: !3852, line: 62, type: !35)
!4042 = distinct !DISubprogram(name: "strcaseeq7", scope: !3852, file: !3852, line: 62, type: !4043, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4045)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!40, !35, !35, !37, !37}
!4045 = !{!4046, !4041, !4047, !4048}
!4046 = !DILocalVariable(name: "s1", arg: 1, scope: !4042, file: !3852, line: 62, type: !35)
!4047 = !DILocalVariable(name: "s27", arg: 3, scope: !4042, file: !3852, line: 62, type: !37)
!4048 = !DILocalVariable(name: "s28", arg: 4, scope: !4042, file: !3852, line: 62, type: !37)
!4049 = !DILocation(line: 62, column: 41, scope: !4042, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 83, column: 16, scope: !4051, inlinedAt: !4031)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !3852, line: 80, column: 11)
!4052 = distinct !DILexicalBlock(scope: !4038, file: !3852, line: 79, column: 5)
!4053 = !DILocation(line: 62, column: 50, scope: !4042, inlinedAt: !4050)
!4054 = !DILocation(line: 62, column: 60, scope: !4042, inlinedAt: !4050)
!4055 = !DILocation(line: 64, column: 7, scope: !4056, inlinedAt: !4050)
!4056 = !DILexicalBlockFile(scope: !4057, file: !3852, discriminator: 2)
!4057 = distinct !DILexicalBlock(scope: !4042, file: !3852, line: 64, column: 7)
!4058 = !DILocation(line: 228, column: 7, scope: !3833)
!4059 = !DILocation(line: 229, column: 12, scope: !3991)
!4060 = !DILocation(line: 229, column: 21, scope: !3991)
!4061 = !DILocation(line: 229, column: 5, scope: !3991)
!4062 = !DILocation(line: 231, column: 13, scope: !3833)
!4063 = !DILocation(line: 231, column: 11, scope: !3833)
!4064 = !DILocation(line: 231, column: 3, scope: !3833)
!4065 = !DILocation(line: 232, column: 1, scope: !3833)
!4066 = distinct !DISubprogram(name: "quotearg_alloc", scope: !136, file: !136, line: 791, type: !4067, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!38, !35, !27, !2909}
!4069 = !{!4070, !4071, !4072}
!4070 = !DILocalVariable(name: "arg", arg: 1, scope: !4066, file: !136, line: 791, type: !35)
!4071 = !DILocalVariable(name: "argsize", arg: 2, scope: !4066, file: !136, line: 791, type: !27)
!4072 = !DILocalVariable(name: "o", arg: 3, scope: !4066, file: !136, line: 792, type: !2909)
!4073 = !DILocation(line: 791, column: 29, scope: !4066)
!4074 = !DILocation(line: 791, column: 41, scope: !4066)
!4075 = !DILocation(line: 792, column: 47, scope: !4066)
!4076 = !DILocalVariable(name: "arg", arg: 1, scope: !4077, file: !136, line: 804, type: !35)
!4077 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !136, file: !136, line: 804, type: !4078, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!38, !35, !27, !560, !2909}
!4080 = !{!4076, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088}
!4081 = !DILocalVariable(name: "argsize", arg: 2, scope: !4077, file: !136, line: 804, type: !27)
!4082 = !DILocalVariable(name: "size", arg: 3, scope: !4077, file: !136, line: 804, type: !560)
!4083 = !DILocalVariable(name: "o", arg: 4, scope: !4077, file: !136, line: 805, type: !2909)
!4084 = !DILocalVariable(name: "p", scope: !4077, file: !136, line: 807, type: !2909)
!4085 = !DILocalVariable(name: "e", scope: !4077, file: !136, line: 808, type: !40)
!4086 = !DILocalVariable(name: "flags", scope: !4077, file: !136, line: 810, type: !40)
!4087 = !DILocalVariable(name: "bufsize", scope: !4077, file: !136, line: 811, type: !27)
!4088 = !DILocalVariable(name: "buf", scope: !4077, file: !136, line: 815, type: !38)
!4089 = !DILocation(line: 804, column: 33, scope: !4077, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 794, column: 10, scope: !4066)
!4091 = !DILocation(line: 804, column: 45, scope: !4077, inlinedAt: !4090)
!4092 = !DILocation(line: 804, column: 62, scope: !4077, inlinedAt: !4090)
!4093 = !DILocation(line: 805, column: 51, scope: !4077, inlinedAt: !4090)
!4094 = !DILocation(line: 807, column: 37, scope: !4077, inlinedAt: !4090)
!4095 = !DILocation(line: 807, column: 33, scope: !4077, inlinedAt: !4090)
!4096 = !DILocation(line: 808, column: 11, scope: !4077, inlinedAt: !4090)
!4097 = !DILocation(line: 808, column: 7, scope: !4077, inlinedAt: !4090)
!4098 = !DILocation(line: 810, column: 18, scope: !4077, inlinedAt: !4090)
!4099 = !DILocation(line: 810, column: 24, scope: !4077, inlinedAt: !4090)
!4100 = !DILocation(line: 810, column: 7, scope: !4077, inlinedAt: !4090)
!4101 = !DILocation(line: 811, column: 69, scope: !4077, inlinedAt: !4090)
!4102 = !DILocation(line: 812, column: 53, scope: !4077, inlinedAt: !4090)
!4103 = !DILocation(line: 813, column: 49, scope: !4077, inlinedAt: !4090)
!4104 = !DILocation(line: 814, column: 49, scope: !4077, inlinedAt: !4090)
!4105 = !DILocation(line: 811, column: 20, scope: !4077, inlinedAt: !4090)
!4106 = !DILocation(line: 814, column: 62, scope: !4077, inlinedAt: !4090)
!4107 = !DILocation(line: 811, column: 10, scope: !4077, inlinedAt: !4090)
!4108 = !DILocalVariable(name: "n", arg: 1, scope: !4109, file: !556, line: 220, type: !27)
!4109 = distinct !DISubprogram(name: "xcharalloc", scope: !556, file: !556, line: 220, type: !4110, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4112)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!38, !27}
!4112 = !{!4108}
!4113 = !DILocation(line: 220, column: 20, scope: !4109, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 815, column: 15, scope: !4077, inlinedAt: !4090)
!4115 = !DILocation(line: 222, column: 10, scope: !4109, inlinedAt: !4114)
!4116 = !DILocation(line: 815, column: 9, scope: !4077, inlinedAt: !4090)
!4117 = !DILocation(line: 816, column: 60, scope: !4077, inlinedAt: !4090)
!4118 = !DILocation(line: 818, column: 32, scope: !4077, inlinedAt: !4090)
!4119 = !DILocation(line: 818, column: 47, scope: !4077, inlinedAt: !4090)
!4120 = !DILocation(line: 816, column: 3, scope: !4077, inlinedAt: !4090)
!4121 = !DILocation(line: 819, column: 9, scope: !4077, inlinedAt: !4090)
!4122 = !DILocation(line: 794, column: 3, scope: !4066)
!4123 = !DILocation(line: 804, column: 33, scope: !4077)
!4124 = !DILocation(line: 804, column: 45, scope: !4077)
!4125 = !DILocation(line: 804, column: 62, scope: !4077)
!4126 = !DILocation(line: 805, column: 51, scope: !4077)
!4127 = !DILocation(line: 807, column: 37, scope: !4077)
!4128 = !DILocation(line: 807, column: 33, scope: !4077)
!4129 = !DILocation(line: 808, column: 11, scope: !4077)
!4130 = !DILocation(line: 808, column: 7, scope: !4077)
!4131 = !DILocation(line: 810, column: 18, scope: !4077)
!4132 = !DILocation(line: 810, column: 27, scope: !4077)
!4133 = !DILocation(line: 810, column: 24, scope: !4077)
!4134 = !DILocation(line: 810, column: 7, scope: !4077)
!4135 = !DILocation(line: 811, column: 69, scope: !4077)
!4136 = !DILocation(line: 812, column: 53, scope: !4077)
!4137 = !DILocation(line: 813, column: 49, scope: !4077)
!4138 = !DILocation(line: 814, column: 49, scope: !4077)
!4139 = !DILocation(line: 811, column: 20, scope: !4077)
!4140 = !DILocation(line: 814, column: 62, scope: !4077)
!4141 = !DILocation(line: 811, column: 10, scope: !4077)
!4142 = !DILocation(line: 220, column: 20, scope: !4109, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 815, column: 15, scope: !4077)
!4144 = !DILocation(line: 222, column: 10, scope: !4109, inlinedAt: !4143)
!4145 = !DILocation(line: 815, column: 9, scope: !4077)
!4146 = !DILocation(line: 816, column: 60, scope: !4077)
!4147 = !DILocation(line: 818, column: 32, scope: !4077)
!4148 = !DILocation(line: 818, column: 47, scope: !4077)
!4149 = !DILocation(line: 816, column: 3, scope: !4077)
!4150 = !DILocation(line: 819, column: 9, scope: !4077)
!4151 = !DILocation(line: 820, column: 7, scope: !4077)
!4152 = !DILocation(line: 821, column: 11, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4077, file: !136, line: 820, column: 7)
!4154 = !{!2236, !2236, i64 0}
!4155 = !DILocation(line: 821, column: 5, scope: !4153)
!4156 = !DILocation(line: 822, column: 3, scope: !4077)
!4157 = distinct !DISubprogram(name: "quotearg_free", scope: !136, file: !136, line: 840, type: !1327, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4158)
!4158 = !{!4159, !4160}
!4159 = !DILocalVariable(name: "sv", scope: !4157, file: !136, line: 842, type: !162)
!4160 = !DILocalVariable(name: "i", scope: !4157, file: !136, line: 843, type: !40)
!4161 = !DILocation(line: 842, column: 24, scope: !4157)
!4162 = !DILocation(line: 842, column: 19, scope: !4157)
!4163 = !DILocation(line: 843, column: 7, scope: !4157)
!4164 = !DILocation(line: 844, column: 19, scope: !4165)
!4165 = !DILexicalBlockFile(scope: !4166, file: !136, discriminator: 1)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !136, line: 844, column: 3)
!4167 = distinct !DILexicalBlock(scope: !4157, file: !136, line: 844, column: 3)
!4168 = !DILocation(line: 844, column: 17, scope: !4165)
!4169 = !DILocation(line: 844, column: 3, scope: !4170)
!4170 = !DILexicalBlockFile(scope: !4167, file: !136, discriminator: 1)
!4171 = !DILocation(line: 845, column: 17, scope: !4166)
!4172 = !{!4173, !609, i64 8}
!4173 = !{!"slotvec", !2236, i64 0, !609, i64 8}
!4174 = !DILocation(line: 845, column: 5, scope: !4166)
!4175 = !DILocation(line: 844, column: 28, scope: !4176)
!4176 = !DILexicalBlockFile(scope: !4166, file: !136, discriminator: 2)
!4177 = distinct !{!4177, !4178, !4179}
!4178 = !DILocation(line: 844, column: 3, scope: !4167)
!4179 = !DILocation(line: 845, column: 20, scope: !4167)
!4180 = !DILocation(line: 846, column: 13, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4157, file: !136, line: 846, column: 7)
!4182 = !DILocation(line: 846, column: 17, scope: !4181)
!4183 = !DILocation(line: 846, column: 7, scope: !4157)
!4184 = !DILocation(line: 848, column: 7, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4181, file: !136, line: 847, column: 5)
!4186 = !DILocation(line: 849, column: 21, scope: !4185)
!4187 = !{!4173, !2236, i64 0}
!4188 = !DILocation(line: 850, column: 20, scope: !4185)
!4189 = !DILocation(line: 851, column: 5, scope: !4185)
!4190 = !DILocation(line: 852, column: 10, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4157, file: !136, line: 852, column: 7)
!4192 = !DILocation(line: 852, column: 7, scope: !4157)
!4193 = !DILocation(line: 854, column: 13, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4191, file: !136, line: 853, column: 5)
!4195 = !DILocation(line: 854, column: 7, scope: !4194)
!4196 = !DILocation(line: 855, column: 15, scope: !4194)
!4197 = !DILocation(line: 856, column: 5, scope: !4194)
!4198 = !DILocation(line: 857, column: 10, scope: !4157)
!4199 = !DILocation(line: 858, column: 1, scope: !4157)
!4200 = distinct !DISubprogram(name: "quotearg_n", scope: !136, file: !136, line: 922, type: !4201, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4203)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!38, !40, !35}
!4203 = !{!4204, !4205}
!4204 = !DILocalVariable(name: "n", arg: 1, scope: !4200, file: !136, line: 922, type: !40)
!4205 = !DILocalVariable(name: "arg", arg: 2, scope: !4200, file: !136, line: 922, type: !35)
!4206 = !DILocation(line: 922, column: 17, scope: !4200)
!4207 = !DILocation(line: 922, column: 32, scope: !4200)
!4208 = !DILocation(line: 924, column: 10, scope: !4200)
!4209 = !DILocation(line: 924, column: 3, scope: !4200)
!4210 = distinct !DISubprogram(name: "quotearg_n_options", scope: !136, file: !136, line: 869, type: !4211, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!38, !40, !35, !27, !2909}
!4213 = !{!4214, !4215, !4216, !4217, !4218, !4219, !4220, !4223, !4225, !4226, !4227}
!4214 = !DILocalVariable(name: "n", arg: 1, scope: !4210, file: !136, line: 869, type: !40)
!4215 = !DILocalVariable(name: "arg", arg: 2, scope: !4210, file: !136, line: 869, type: !35)
!4216 = !DILocalVariable(name: "argsize", arg: 3, scope: !4210, file: !136, line: 869, type: !27)
!4217 = !DILocalVariable(name: "options", arg: 4, scope: !4210, file: !136, line: 870, type: !2909)
!4218 = !DILocalVariable(name: "e", scope: !4210, file: !136, line: 872, type: !40)
!4219 = !DILocalVariable(name: "sv", scope: !4210, file: !136, line: 874, type: !162)
!4220 = !DILocalVariable(name: "preallocated", scope: !4221, file: !136, line: 881, type: !93)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !136, line: 880, column: 5)
!4222 = distinct !DILexicalBlock(scope: !4210, file: !136, line: 879, column: 7)
!4223 = !DILocalVariable(name: "size", scope: !4224, file: !136, line: 894, type: !27)
!4224 = distinct !DILexicalBlock(scope: !4210, file: !136, line: 893, column: 3)
!4225 = !DILocalVariable(name: "val", scope: !4224, file: !136, line: 895, type: !38)
!4226 = !DILocalVariable(name: "flags", scope: !4224, file: !136, line: 897, type: !40)
!4227 = !DILocalVariable(name: "qsize", scope: !4224, file: !136, line: 898, type: !27)
!4228 = !DILocation(line: 869, column: 25, scope: !4210)
!4229 = !DILocation(line: 869, column: 40, scope: !4210)
!4230 = !DILocation(line: 869, column: 52, scope: !4210)
!4231 = !DILocation(line: 870, column: 51, scope: !4210)
!4232 = !DILocation(line: 872, column: 11, scope: !4210)
!4233 = !DILocation(line: 872, column: 7, scope: !4210)
!4234 = !DILocation(line: 874, column: 24, scope: !4210)
!4235 = !DILocation(line: 874, column: 19, scope: !4210)
!4236 = !DILocation(line: 876, column: 9, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4210, file: !136, line: 876, column: 7)
!4238 = !DILocation(line: 876, column: 7, scope: !4210)
!4239 = !DILocation(line: 877, column: 5, scope: !4237)
!4240 = !DILocation(line: 879, column: 7, scope: !4222)
!4241 = !DILocation(line: 879, column: 14, scope: !4222)
!4242 = !DILocation(line: 879, column: 7, scope: !4210)
!4243 = !DILocation(line: 881, column: 31, scope: !4221)
!4244 = !DILocation(line: 883, column: 67, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4221, file: !136, line: 883, column: 11)
!4246 = !DILocation(line: 883, column: 11, scope: !4221)
!4247 = !DILocation(line: 884, column: 9, scope: !4245)
!4248 = !DILocation(line: 886, column: 32, scope: !4249)
!4249 = !DILexicalBlockFile(scope: !4221, file: !136, discriminator: 3)
!4250 = !DILocation(line: 886, column: 61, scope: !4249)
!4251 = !DILocation(line: 886, column: 58, scope: !4249)
!4252 = !DILocation(line: 886, column: 66, scope: !4249)
!4253 = !DILocation(line: 886, column: 22, scope: !4249)
!4254 = !DILocation(line: 886, column: 15, scope: !4249)
!4255 = !DILocation(line: 887, column: 11, scope: !4221)
!4256 = !DILocation(line: 888, column: 15, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4221, file: !136, line: 887, column: 11)
!4258 = !{i64 0, i64 8, !4154, i64 8, i64 8, !608}
!4259 = !DILocation(line: 888, column: 9, scope: !4257)
!4260 = !DILocation(line: 889, column: 20, scope: !4221)
!4261 = !DILocation(line: 889, column: 18, scope: !4221)
!4262 = !DILocation(line: 889, column: 7, scope: !4221)
!4263 = !DILocation(line: 889, column: 38, scope: !4221)
!4264 = !DILocation(line: 889, column: 31, scope: !4221)
!4265 = !DILocation(line: 889, column: 48, scope: !4221)
!4266 = !DILocation(line: 890, column: 14, scope: !4221)
!4267 = !DILocation(line: 891, column: 5, scope: !4221)
!4268 = !DILocation(line: 894, column: 19, scope: !4224)
!4269 = !DILocation(line: 894, column: 25, scope: !4224)
!4270 = !DILocation(line: 894, column: 12, scope: !4224)
!4271 = !DILocation(line: 895, column: 23, scope: !4224)
!4272 = !DILocation(line: 895, column: 11, scope: !4224)
!4273 = !DILocation(line: 897, column: 26, scope: !4224)
!4274 = !DILocation(line: 897, column: 32, scope: !4224)
!4275 = !DILocation(line: 897, column: 9, scope: !4224)
!4276 = !DILocation(line: 899, column: 55, scope: !4224)
!4277 = !DILocation(line: 900, column: 46, scope: !4224)
!4278 = !DILocation(line: 901, column: 55, scope: !4224)
!4279 = !DILocation(line: 902, column: 55, scope: !4224)
!4280 = !DILocation(line: 898, column: 20, scope: !4224)
!4281 = !DILocation(line: 898, column: 12, scope: !4224)
!4282 = !DILocation(line: 904, column: 14, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4224, file: !136, line: 904, column: 9)
!4284 = !DILocation(line: 904, column: 9, scope: !4224)
!4285 = !DILocation(line: 906, column: 35, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4283, file: !136, line: 905, column: 7)
!4287 = !DILocation(line: 906, column: 20, scope: !4286)
!4288 = !DILocation(line: 907, column: 17, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4286, file: !136, line: 907, column: 13)
!4290 = !DILocation(line: 907, column: 13, scope: !4286)
!4291 = !DILocation(line: 908, column: 11, scope: !4289)
!4292 = !DILocation(line: 220, column: 20, scope: !4109, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 909, column: 27, scope: !4286)
!4294 = !DILocation(line: 222, column: 10, scope: !4109, inlinedAt: !4293)
!4295 = !DILocation(line: 909, column: 19, scope: !4286)
!4296 = !DILocation(line: 910, column: 69, scope: !4286)
!4297 = !DILocation(line: 912, column: 44, scope: !4286)
!4298 = !DILocation(line: 913, column: 44, scope: !4286)
!4299 = !DILocation(line: 910, column: 9, scope: !4286)
!4300 = !DILocation(line: 914, column: 7, scope: !4286)
!4301 = !DILocation(line: 916, column: 11, scope: !4224)
!4302 = !DILocation(line: 917, column: 5, scope: !4224)
!4303 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !136, file: !136, line: 928, type: !4304, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4306)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!38, !40, !35, !27}
!4306 = !{!4307, !4308, !4309}
!4307 = !DILocalVariable(name: "n", arg: 1, scope: !4303, file: !136, line: 928, type: !40)
!4308 = !DILocalVariable(name: "arg", arg: 2, scope: !4303, file: !136, line: 928, type: !35)
!4309 = !DILocalVariable(name: "argsize", arg: 3, scope: !4303, file: !136, line: 928, type: !27)
!4310 = !DILocation(line: 928, column: 21, scope: !4303)
!4311 = !DILocation(line: 928, column: 36, scope: !4303)
!4312 = !DILocation(line: 928, column: 48, scope: !4303)
!4313 = !DILocation(line: 930, column: 10, scope: !4303)
!4314 = !DILocation(line: 930, column: 3, scope: !4303)
!4315 = distinct !DISubprogram(name: "quotearg", scope: !136, file: !136, line: 934, type: !4316, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!38, !35}
!4318 = !{!4319}
!4319 = !DILocalVariable(name: "arg", arg: 1, scope: !4315, file: !136, line: 934, type: !35)
!4320 = !DILocation(line: 934, column: 23, scope: !4315)
!4321 = !DILocation(line: 922, column: 17, scope: !4200, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 936, column: 10, scope: !4315)
!4323 = !DILocation(line: 922, column: 32, scope: !4200, inlinedAt: !4322)
!4324 = !DILocation(line: 924, column: 10, scope: !4200, inlinedAt: !4322)
!4325 = !DILocation(line: 936, column: 3, scope: !4315)
!4326 = distinct !DISubprogram(name: "quotearg_mem", scope: !136, file: !136, line: 940, type: !4327, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4329)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!38, !35, !27}
!4329 = !{!4330, !4331}
!4330 = !DILocalVariable(name: "arg", arg: 1, scope: !4326, file: !136, line: 940, type: !35)
!4331 = !DILocalVariable(name: "argsize", arg: 2, scope: !4326, file: !136, line: 940, type: !27)
!4332 = !DILocation(line: 940, column: 27, scope: !4326)
!4333 = !DILocation(line: 940, column: 39, scope: !4326)
!4334 = !DILocation(line: 928, column: 21, scope: !4303, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 942, column: 10, scope: !4326)
!4336 = !DILocation(line: 928, column: 36, scope: !4303, inlinedAt: !4335)
!4337 = !DILocation(line: 928, column: 48, scope: !4303, inlinedAt: !4335)
!4338 = !DILocation(line: 930, column: 10, scope: !4303, inlinedAt: !4335)
!4339 = !DILocation(line: 942, column: 3, scope: !4326)
!4340 = distinct !DISubprogram(name: "quotearg_n_style", scope: !136, file: !136, line: 946, type: !4341, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!38, !40, !113, !35}
!4343 = !{!4344, !4345, !4346, !4347}
!4344 = !DILocalVariable(name: "n", arg: 1, scope: !4340, file: !136, line: 946, type: !40)
!4345 = !DILocalVariable(name: "s", arg: 2, scope: !4340, file: !136, line: 946, type: !113)
!4346 = !DILocalVariable(name: "arg", arg: 3, scope: !4340, file: !136, line: 946, type: !35)
!4347 = !DILocalVariable(name: "o", scope: !4340, file: !136, line: 948, type: !2910)
!4348 = !DILocalVariable(name: "o", scope: !4349, file: !136, line: 187, type: !143)
!4349 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !136, file: !136, line: 185, type: !4350, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4352)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!143, !113}
!4352 = !{!4353, !4348}
!4353 = !DILocalVariable(name: "style", arg: 1, scope: !4349, file: !136, line: 185, type: !113)
!4354 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4355 = !DILocation(line: 187, column: 26, scope: !4349, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 948, column: 36, scope: !4340)
!4357 = !DILocation(line: 946, column: 23, scope: !4340)
!4358 = !DILocation(line: 946, column: 45, scope: !4340)
!4359 = !DILocation(line: 946, column: 60, scope: !4340)
!4360 = !DILocation(line: 948, column: 3, scope: !4340)
!4361 = !DILocation(line: 948, column: 32, scope: !4340)
!4362 = !DILocation(line: 185, column: 48, scope: !4349, inlinedAt: !4356)
!4363 = !DILocation(line: 187, column: 3, scope: !4349, inlinedAt: !4356)
!4364 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4365 = !DILocation(line: 188, column: 13, scope: !4366, inlinedAt: !4356)
!4366 = distinct !DILexicalBlock(scope: !4349, file: !136, line: 188, column: 7)
!4367 = !DILocation(line: 188, column: 7, scope: !4349, inlinedAt: !4356)
!4368 = !DILocation(line: 189, column: 5, scope: !4366, inlinedAt: !4356)
!4369 = !{!4370}
!4370 = distinct !{!4370, !4371, !"quoting_options_from_style: argument 0"}
!4371 = distinct !{!4371, !"quoting_options_from_style"}
!4372 = !DILocation(line: 191, column: 10, scope: !4349, inlinedAt: !4356)
!4373 = !DILocation(line: 192, column: 1, scope: !4349, inlinedAt: !4356)
!4374 = !DILocation(line: 949, column: 10, scope: !4340)
!4375 = !DILocation(line: 950, column: 1, scope: !4340)
!4376 = !DILocation(line: 949, column: 3, scope: !4340)
!4377 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !136, file: !136, line: 953, type: !4378, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4380)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!38, !40, !113, !35, !27}
!4380 = !{!4381, !4382, !4383, !4384, !4385}
!4381 = !DILocalVariable(name: "n", arg: 1, scope: !4377, file: !136, line: 953, type: !40)
!4382 = !DILocalVariable(name: "s", arg: 2, scope: !4377, file: !136, line: 953, type: !113)
!4383 = !DILocalVariable(name: "arg", arg: 3, scope: !4377, file: !136, line: 954, type: !35)
!4384 = !DILocalVariable(name: "argsize", arg: 4, scope: !4377, file: !136, line: 954, type: !27)
!4385 = !DILocalVariable(name: "o", scope: !4377, file: !136, line: 956, type: !2910)
!4386 = !DILocation(line: 187, column: 26, scope: !4349, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 956, column: 36, scope: !4377)
!4388 = !DILocation(line: 953, column: 27, scope: !4377)
!4389 = !DILocation(line: 953, column: 49, scope: !4377)
!4390 = !DILocation(line: 954, column: 35, scope: !4377)
!4391 = !DILocation(line: 954, column: 47, scope: !4377)
!4392 = !DILocation(line: 956, column: 3, scope: !4377)
!4393 = !DILocation(line: 956, column: 32, scope: !4377)
!4394 = !DILocation(line: 185, column: 48, scope: !4349, inlinedAt: !4387)
!4395 = !DILocation(line: 187, column: 3, scope: !4349, inlinedAt: !4387)
!4396 = !DILocation(line: 188, column: 13, scope: !4366, inlinedAt: !4387)
!4397 = !DILocation(line: 188, column: 7, scope: !4349, inlinedAt: !4387)
!4398 = !DILocation(line: 189, column: 5, scope: !4366, inlinedAt: !4387)
!4399 = !{!4400}
!4400 = distinct !{!4400, !4401, !"quoting_options_from_style: argument 0"}
!4401 = distinct !{!4401, !"quoting_options_from_style"}
!4402 = !DILocation(line: 191, column: 10, scope: !4349, inlinedAt: !4387)
!4403 = !DILocation(line: 192, column: 1, scope: !4349, inlinedAt: !4387)
!4404 = !DILocation(line: 957, column: 10, scope: !4377)
!4405 = !DILocation(line: 958, column: 1, scope: !4377)
!4406 = !DILocation(line: 957, column: 3, scope: !4377)
!4407 = distinct !DISubprogram(name: "quotearg_style", scope: !136, file: !136, line: 961, type: !4408, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4410)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!38, !113, !35}
!4410 = !{!4411, !4412}
!4411 = !DILocalVariable(name: "s", arg: 1, scope: !4407, file: !136, line: 961, type: !113)
!4412 = !DILocalVariable(name: "arg", arg: 2, scope: !4407, file: !136, line: 961, type: !35)
!4413 = !DILocation(line: 187, column: 26, scope: !4349, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 948, column: 36, scope: !4340, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 963, column: 10, scope: !4407)
!4416 = !DILocation(line: 961, column: 36, scope: !4407)
!4417 = !DILocation(line: 961, column: 51, scope: !4407)
!4418 = !DILocation(line: 946, column: 23, scope: !4340, inlinedAt: !4415)
!4419 = !DILocation(line: 946, column: 45, scope: !4340, inlinedAt: !4415)
!4420 = !DILocation(line: 946, column: 60, scope: !4340, inlinedAt: !4415)
!4421 = !DILocation(line: 948, column: 3, scope: !4340, inlinedAt: !4415)
!4422 = !DILocation(line: 948, column: 32, scope: !4340, inlinedAt: !4415)
!4423 = !DILocation(line: 185, column: 48, scope: !4349, inlinedAt: !4414)
!4424 = !DILocation(line: 187, column: 3, scope: !4349, inlinedAt: !4414)
!4425 = !DILocation(line: 188, column: 13, scope: !4366, inlinedAt: !4414)
!4426 = !DILocation(line: 188, column: 7, scope: !4349, inlinedAt: !4414)
!4427 = !DILocation(line: 189, column: 5, scope: !4366, inlinedAt: !4414)
!4428 = !{!4429}
!4429 = distinct !{!4429, !4430, !"quoting_options_from_style: argument 0"}
!4430 = distinct !{!4430, !"quoting_options_from_style"}
!4431 = !DILocation(line: 191, column: 10, scope: !4349, inlinedAt: !4414)
!4432 = !DILocation(line: 192, column: 1, scope: !4349, inlinedAt: !4414)
!4433 = !DILocation(line: 949, column: 10, scope: !4340, inlinedAt: !4415)
!4434 = !DILocation(line: 950, column: 1, scope: !4340, inlinedAt: !4415)
!4435 = !DILocation(line: 963, column: 3, scope: !4407)
!4436 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !136, file: !136, line: 967, type: !4437, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4439)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!38, !113, !35, !27}
!4439 = !{!4440, !4441, !4442}
!4440 = !DILocalVariable(name: "s", arg: 1, scope: !4436, file: !136, line: 967, type: !113)
!4441 = !DILocalVariable(name: "arg", arg: 2, scope: !4436, file: !136, line: 967, type: !35)
!4442 = !DILocalVariable(name: "argsize", arg: 3, scope: !4436, file: !136, line: 967, type: !27)
!4443 = !DILocation(line: 187, column: 26, scope: !4349, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 956, column: 36, scope: !4377, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 969, column: 10, scope: !4436)
!4446 = !DILocation(line: 967, column: 40, scope: !4436)
!4447 = !DILocation(line: 967, column: 55, scope: !4436)
!4448 = !DILocation(line: 967, column: 67, scope: !4436)
!4449 = !DILocation(line: 953, column: 27, scope: !4377, inlinedAt: !4445)
!4450 = !DILocation(line: 953, column: 49, scope: !4377, inlinedAt: !4445)
!4451 = !DILocation(line: 954, column: 35, scope: !4377, inlinedAt: !4445)
!4452 = !DILocation(line: 954, column: 47, scope: !4377, inlinedAt: !4445)
!4453 = !DILocation(line: 956, column: 3, scope: !4377, inlinedAt: !4445)
!4454 = !DILocation(line: 956, column: 32, scope: !4377, inlinedAt: !4445)
!4455 = !DILocation(line: 185, column: 48, scope: !4349, inlinedAt: !4444)
!4456 = !DILocation(line: 187, column: 3, scope: !4349, inlinedAt: !4444)
!4457 = !DILocation(line: 188, column: 13, scope: !4366, inlinedAt: !4444)
!4458 = !DILocation(line: 188, column: 7, scope: !4349, inlinedAt: !4444)
!4459 = !DILocation(line: 189, column: 5, scope: !4366, inlinedAt: !4444)
!4460 = !{!4461}
!4461 = distinct !{!4461, !4462, !"quoting_options_from_style: argument 0"}
!4462 = distinct !{!4462, !"quoting_options_from_style"}
!4463 = !DILocation(line: 191, column: 10, scope: !4349, inlinedAt: !4444)
!4464 = !DILocation(line: 192, column: 1, scope: !4349, inlinedAt: !4444)
!4465 = !DILocation(line: 957, column: 10, scope: !4377, inlinedAt: !4445)
!4466 = !DILocation(line: 958, column: 1, scope: !4377, inlinedAt: !4445)
!4467 = !DILocation(line: 969, column: 3, scope: !4436)
!4468 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !136, file: !136, line: 973, type: !4469, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4471)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!38, !35, !27, !37}
!4471 = !{!4472, !4473, !4474, !4475}
!4472 = !DILocalVariable(name: "arg", arg: 1, scope: !4468, file: !136, line: 973, type: !35)
!4473 = !DILocalVariable(name: "argsize", arg: 2, scope: !4468, file: !136, line: 973, type: !27)
!4474 = !DILocalVariable(name: "ch", arg: 3, scope: !4468, file: !136, line: 973, type: !37)
!4475 = !DILocalVariable(name: "options", scope: !4468, file: !136, line: 975, type: !143)
!4476 = !DILocation(line: 973, column: 32, scope: !4468)
!4477 = !DILocation(line: 973, column: 44, scope: !4468)
!4478 = !DILocation(line: 973, column: 58, scope: !4468)
!4479 = !DILocation(line: 975, column: 3, scope: !4468)
!4480 = !DILocation(line: 976, column: 13, scope: !4468)
!4481 = !{i64 0, i64 4, !754, i64 4, i64 4, !723, i64 8, i64 32, !754, i64 40, i64 8, !608, i64 48, i64 8, !608}
!4482 = !DILocation(line: 975, column: 26, scope: !4468)
!4483 = !DILocation(line: 144, column: 43, scope: !2933, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 977, column: 3, scope: !4468)
!4485 = !DILocation(line: 144, column: 51, scope: !2933, inlinedAt: !4484)
!4486 = !DILocation(line: 144, column: 58, scope: !2933, inlinedAt: !4484)
!4487 = !DILocation(line: 146, column: 17, scope: !2933, inlinedAt: !4484)
!4488 = !DILocation(line: 148, column: 62, scope: !2951, inlinedAt: !4484)
!4489 = !DILocation(line: 148, column: 57, scope: !2951, inlinedAt: !4484)
!4490 = !DILocation(line: 147, column: 17, scope: !2933, inlinedAt: !4484)
!4491 = !DILocation(line: 149, column: 18, scope: !2933, inlinedAt: !4484)
!4492 = !DILocation(line: 149, column: 15, scope: !2933, inlinedAt: !4484)
!4493 = !DILocation(line: 149, column: 7, scope: !2933, inlinedAt: !4484)
!4494 = !DILocation(line: 150, column: 12, scope: !2933, inlinedAt: !4484)
!4495 = !DILocation(line: 150, column: 15, scope: !2933, inlinedAt: !4484)
!4496 = !DILocation(line: 150, column: 25, scope: !2933, inlinedAt: !4484)
!4497 = !DILocation(line: 150, column: 7, scope: !2933, inlinedAt: !4484)
!4498 = !DILocation(line: 151, column: 18, scope: !2933, inlinedAt: !4484)
!4499 = !DILocation(line: 151, column: 23, scope: !2933, inlinedAt: !4484)
!4500 = !DILocation(line: 151, column: 6, scope: !2933, inlinedAt: !4484)
!4501 = !DILocation(line: 978, column: 10, scope: !4468)
!4502 = !DILocation(line: 979, column: 1, scope: !4468)
!4503 = !DILocation(line: 978, column: 3, scope: !4468)
!4504 = distinct !DISubprogram(name: "quotearg_char", scope: !136, file: !136, line: 982, type: !4505, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4507)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!38, !35, !37}
!4507 = !{!4508, !4509}
!4508 = !DILocalVariable(name: "arg", arg: 1, scope: !4504, file: !136, line: 982, type: !35)
!4509 = !DILocalVariable(name: "ch", arg: 2, scope: !4504, file: !136, line: 982, type: !37)
!4510 = !DILocation(line: 982, column: 28, scope: !4504)
!4511 = !DILocation(line: 982, column: 38, scope: !4504)
!4512 = !DILocation(line: 973, column: 32, scope: !4468, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 984, column: 10, scope: !4504)
!4514 = !DILocation(line: 973, column: 44, scope: !4468, inlinedAt: !4513)
!4515 = !DILocation(line: 973, column: 58, scope: !4468, inlinedAt: !4513)
!4516 = !DILocation(line: 975, column: 3, scope: !4468, inlinedAt: !4513)
!4517 = !DILocation(line: 976, column: 13, scope: !4468, inlinedAt: !4513)
!4518 = !DILocation(line: 975, column: 26, scope: !4468, inlinedAt: !4513)
!4519 = !DILocation(line: 144, column: 43, scope: !2933, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 977, column: 3, scope: !4468, inlinedAt: !4513)
!4521 = !DILocation(line: 144, column: 51, scope: !2933, inlinedAt: !4520)
!4522 = !DILocation(line: 144, column: 58, scope: !2933, inlinedAt: !4520)
!4523 = !DILocation(line: 146, column: 17, scope: !2933, inlinedAt: !4520)
!4524 = !DILocation(line: 148, column: 62, scope: !2951, inlinedAt: !4520)
!4525 = !DILocation(line: 148, column: 57, scope: !2951, inlinedAt: !4520)
!4526 = !DILocation(line: 147, column: 17, scope: !2933, inlinedAt: !4520)
!4527 = !DILocation(line: 149, column: 18, scope: !2933, inlinedAt: !4520)
!4528 = !DILocation(line: 149, column: 15, scope: !2933, inlinedAt: !4520)
!4529 = !DILocation(line: 149, column: 7, scope: !2933, inlinedAt: !4520)
!4530 = !DILocation(line: 150, column: 12, scope: !2933, inlinedAt: !4520)
!4531 = !DILocation(line: 150, column: 15, scope: !2933, inlinedAt: !4520)
!4532 = !DILocation(line: 150, column: 25, scope: !2933, inlinedAt: !4520)
!4533 = !DILocation(line: 150, column: 7, scope: !2933, inlinedAt: !4520)
!4534 = !DILocation(line: 151, column: 18, scope: !2933, inlinedAt: !4520)
!4535 = !DILocation(line: 151, column: 23, scope: !2933, inlinedAt: !4520)
!4536 = !DILocation(line: 151, column: 6, scope: !2933, inlinedAt: !4520)
!4537 = !DILocation(line: 978, column: 10, scope: !4468, inlinedAt: !4513)
!4538 = !DILocation(line: 979, column: 1, scope: !4468, inlinedAt: !4513)
!4539 = !DILocation(line: 984, column: 3, scope: !4504)
!4540 = distinct !DISubprogram(name: "quotearg_colon", scope: !136, file: !136, line: 988, type: !4316, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4541)
!4541 = !{!4542}
!4542 = !DILocalVariable(name: "arg", arg: 1, scope: !4540, file: !136, line: 988, type: !35)
!4543 = !DILocation(line: 988, column: 29, scope: !4540)
!4544 = !DILocation(line: 982, column: 28, scope: !4504, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 990, column: 10, scope: !4540)
!4546 = !DILocation(line: 982, column: 38, scope: !4504, inlinedAt: !4545)
!4547 = !DILocation(line: 973, column: 32, scope: !4468, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 984, column: 10, scope: !4504, inlinedAt: !4545)
!4549 = !DILocation(line: 973, column: 44, scope: !4468, inlinedAt: !4548)
!4550 = !DILocation(line: 973, column: 58, scope: !4468, inlinedAt: !4548)
!4551 = !DILocation(line: 975, column: 3, scope: !4468, inlinedAt: !4548)
!4552 = !DILocation(line: 976, column: 13, scope: !4468, inlinedAt: !4548)
!4553 = !DILocation(line: 975, column: 26, scope: !4468, inlinedAt: !4548)
!4554 = !DILocation(line: 144, column: 43, scope: !2933, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 977, column: 3, scope: !4468, inlinedAt: !4548)
!4556 = !DILocation(line: 144, column: 51, scope: !2933, inlinedAt: !4555)
!4557 = !DILocation(line: 144, column: 58, scope: !2933, inlinedAt: !4555)
!4558 = !DILocation(line: 146, column: 17, scope: !2933, inlinedAt: !4555)
!4559 = !DILocation(line: 148, column: 57, scope: !2951, inlinedAt: !4555)
!4560 = !DILocation(line: 147, column: 17, scope: !2933, inlinedAt: !4555)
!4561 = !DILocation(line: 149, column: 7, scope: !2933, inlinedAt: !4555)
!4562 = !DILocation(line: 150, column: 12, scope: !2933, inlinedAt: !4555)
!4563 = !DILocation(line: 151, column: 6, scope: !2933, inlinedAt: !4555)
!4564 = !DILocation(line: 978, column: 10, scope: !4468, inlinedAt: !4548)
!4565 = !DILocation(line: 979, column: 1, scope: !4468, inlinedAt: !4548)
!4566 = !DILocation(line: 990, column: 3, scope: !4540)
!4567 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !136, file: !136, line: 994, type: !4327, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4568)
!4568 = !{!4569, !4570}
!4569 = !DILocalVariable(name: "arg", arg: 1, scope: !4567, file: !136, line: 994, type: !35)
!4570 = !DILocalVariable(name: "argsize", arg: 2, scope: !4567, file: !136, line: 994, type: !27)
!4571 = !DILocation(line: 994, column: 33, scope: !4567)
!4572 = !DILocation(line: 994, column: 45, scope: !4567)
!4573 = !DILocation(line: 973, column: 32, scope: !4468, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 996, column: 10, scope: !4567)
!4575 = !DILocation(line: 973, column: 44, scope: !4468, inlinedAt: !4574)
!4576 = !DILocation(line: 973, column: 58, scope: !4468, inlinedAt: !4574)
!4577 = !DILocation(line: 975, column: 3, scope: !4468, inlinedAt: !4574)
!4578 = !DILocation(line: 976, column: 13, scope: !4468, inlinedAt: !4574)
!4579 = !DILocation(line: 975, column: 26, scope: !4468, inlinedAt: !4574)
!4580 = !DILocation(line: 144, column: 43, scope: !2933, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 977, column: 3, scope: !4468, inlinedAt: !4574)
!4582 = !DILocation(line: 144, column: 51, scope: !2933, inlinedAt: !4581)
!4583 = !DILocation(line: 144, column: 58, scope: !2933, inlinedAt: !4581)
!4584 = !DILocation(line: 146, column: 17, scope: !2933, inlinedAt: !4581)
!4585 = !DILocation(line: 148, column: 57, scope: !2951, inlinedAt: !4581)
!4586 = !DILocation(line: 147, column: 17, scope: !2933, inlinedAt: !4581)
!4587 = !DILocation(line: 149, column: 7, scope: !2933, inlinedAt: !4581)
!4588 = !DILocation(line: 150, column: 12, scope: !2933, inlinedAt: !4581)
!4589 = !DILocation(line: 151, column: 6, scope: !2933, inlinedAt: !4581)
!4590 = !DILocation(line: 978, column: 10, scope: !4468, inlinedAt: !4574)
!4591 = !DILocation(line: 979, column: 1, scope: !4468, inlinedAt: !4574)
!4592 = !DILocation(line: 996, column: 3, scope: !4567)
!4593 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !136, file: !136, line: 1000, type: !4341, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4594)
!4594 = !{!4595, !4596, !4597, !4598}
!4595 = !DILocalVariable(name: "n", arg: 1, scope: !4593, file: !136, line: 1000, type: !40)
!4596 = !DILocalVariable(name: "s", arg: 2, scope: !4593, file: !136, line: 1000, type: !113)
!4597 = !DILocalVariable(name: "arg", arg: 3, scope: !4593, file: !136, line: 1000, type: !35)
!4598 = !DILocalVariable(name: "options", scope: !4593, file: !136, line: 1002, type: !143)
!4599 = !DILocation(line: 187, column: 26, scope: !4349, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 1003, column: 13, scope: !4593)
!4601 = !DILocation(line: 1000, column: 29, scope: !4593)
!4602 = !DILocation(line: 1000, column: 51, scope: !4593)
!4603 = !DILocation(line: 1000, column: 66, scope: !4593)
!4604 = !DILocation(line: 1002, column: 3, scope: !4593)
!4605 = !DILocation(line: 185, column: 48, scope: !4349, inlinedAt: !4600)
!4606 = !DILocation(line: 187, column: 3, scope: !4349, inlinedAt: !4600)
!4607 = !DILocation(line: 188, column: 13, scope: !4366, inlinedAt: !4600)
!4608 = !DILocation(line: 188, column: 7, scope: !4349, inlinedAt: !4600)
!4609 = !DILocation(line: 189, column: 5, scope: !4366, inlinedAt: !4600)
!4610 = !{!4611}
!4611 = distinct !{!4611, !4612, !"quoting_options_from_style: argument 0"}
!4612 = distinct !{!4612, !"quoting_options_from_style"}
!4613 = !DILocation(line: 191, column: 10, scope: !4349, inlinedAt: !4600)
!4614 = !DILocation(line: 192, column: 1, scope: !4349, inlinedAt: !4600)
!4615 = !DILocation(line: 1003, column: 13, scope: !4593)
!4616 = !DILocation(line: 1002, column: 26, scope: !4593)
!4617 = !DILocation(line: 144, column: 43, scope: !2933, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 1004, column: 3, scope: !4593)
!4619 = !DILocation(line: 144, column: 51, scope: !2933, inlinedAt: !4618)
!4620 = !DILocation(line: 144, column: 58, scope: !2933, inlinedAt: !4618)
!4621 = !DILocation(line: 146, column: 17, scope: !2933, inlinedAt: !4618)
!4622 = !DILocation(line: 148, column: 57, scope: !2951, inlinedAt: !4618)
!4623 = !DILocation(line: 147, column: 17, scope: !2933, inlinedAt: !4618)
!4624 = !DILocation(line: 149, column: 7, scope: !2933, inlinedAt: !4618)
!4625 = !DILocation(line: 150, column: 12, scope: !2933, inlinedAt: !4618)
!4626 = !DILocation(line: 151, column: 6, scope: !2933, inlinedAt: !4618)
!4627 = !DILocation(line: 1005, column: 10, scope: !4593)
!4628 = !DILocation(line: 1006, column: 1, scope: !4593)
!4629 = !DILocation(line: 1005, column: 3, scope: !4593)
!4630 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !136, file: !136, line: 1009, type: !4631, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4633)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!38, !40, !35, !35, !35}
!4633 = !{!4634, !4635, !4636, !4637}
!4634 = !DILocalVariable(name: "n", arg: 1, scope: !4630, file: !136, line: 1009, type: !40)
!4635 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4630, file: !136, line: 1009, type: !35)
!4636 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4630, file: !136, line: 1010, type: !35)
!4637 = !DILocalVariable(name: "arg", arg: 4, scope: !4630, file: !136, line: 1010, type: !35)
!4638 = !DILocation(line: 1009, column: 24, scope: !4630)
!4639 = !DILocation(line: 1009, column: 39, scope: !4630)
!4640 = !DILocation(line: 1010, column: 32, scope: !4630)
!4641 = !DILocation(line: 1010, column: 57, scope: !4630)
!4642 = !DILocalVariable(name: "n", arg: 1, scope: !4643, file: !136, line: 1017, type: !40)
!4643 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !136, file: !136, line: 1017, type: !4644, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4646)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!38, !40, !35, !35, !35, !27}
!4646 = !{!4642, !4647, !4648, !4649, !4650, !4651}
!4647 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4643, file: !136, line: 1017, type: !35)
!4648 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4643, file: !136, line: 1018, type: !35)
!4649 = !DILocalVariable(name: "arg", arg: 4, scope: !4643, file: !136, line: 1019, type: !35)
!4650 = !DILocalVariable(name: "argsize", arg: 5, scope: !4643, file: !136, line: 1019, type: !27)
!4651 = !DILocalVariable(name: "o", scope: !4643, file: !136, line: 1021, type: !143)
!4652 = !DILocation(line: 1017, column: 28, scope: !4643, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 1012, column: 10, scope: !4630)
!4654 = !DILocation(line: 1017, column: 43, scope: !4643, inlinedAt: !4653)
!4655 = !DILocation(line: 1018, column: 36, scope: !4643, inlinedAt: !4653)
!4656 = !DILocation(line: 1019, column: 36, scope: !4643, inlinedAt: !4653)
!4657 = !DILocation(line: 1019, column: 48, scope: !4643, inlinedAt: !4653)
!4658 = !DILocation(line: 1021, column: 3, scope: !4643, inlinedAt: !4653)
!4659 = !DILocation(line: 1021, column: 30, scope: !4643, inlinedAt: !4653)
!4660 = !DILocation(line: 1021, column: 26, scope: !4643, inlinedAt: !4653)
!4661 = !DILocation(line: 171, column: 45, scope: !2983, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 1022, column: 3, scope: !4643, inlinedAt: !4653)
!4663 = !DILocation(line: 172, column: 33, scope: !2983, inlinedAt: !4662)
!4664 = !DILocation(line: 172, column: 57, scope: !2983, inlinedAt: !4662)
!4665 = !DILocation(line: 176, column: 6, scope: !2983, inlinedAt: !4662)
!4666 = !DILocation(line: 176, column: 12, scope: !2983, inlinedAt: !4662)
!4667 = !DILocation(line: 177, column: 8, scope: !2999, inlinedAt: !4662)
!4668 = !DILocation(line: 177, column: 23, scope: !3001, inlinedAt: !4662)
!4669 = !DILocation(line: 177, column: 19, scope: !2999, inlinedAt: !4662)
!4670 = !DILocation(line: 178, column: 5, scope: !2999, inlinedAt: !4662)
!4671 = !DILocation(line: 179, column: 6, scope: !2983, inlinedAt: !4662)
!4672 = !DILocation(line: 179, column: 17, scope: !2983, inlinedAt: !4662)
!4673 = !DILocation(line: 180, column: 6, scope: !2983, inlinedAt: !4662)
!4674 = !DILocation(line: 180, column: 18, scope: !2983, inlinedAt: !4662)
!4675 = !DILocation(line: 1023, column: 10, scope: !4643, inlinedAt: !4653)
!4676 = !DILocation(line: 1024, column: 1, scope: !4643, inlinedAt: !4653)
!4677 = !DILocation(line: 1012, column: 3, scope: !4630)
!4678 = !DILocation(line: 1017, column: 28, scope: !4643)
!4679 = !DILocation(line: 1017, column: 43, scope: !4643)
!4680 = !DILocation(line: 1018, column: 36, scope: !4643)
!4681 = !DILocation(line: 1019, column: 36, scope: !4643)
!4682 = !DILocation(line: 1019, column: 48, scope: !4643)
!4683 = !DILocation(line: 1021, column: 3, scope: !4643)
!4684 = !DILocation(line: 1021, column: 30, scope: !4643)
!4685 = !DILocation(line: 1021, column: 26, scope: !4643)
!4686 = !DILocation(line: 171, column: 45, scope: !2983, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 1022, column: 3, scope: !4643)
!4688 = !DILocation(line: 172, column: 33, scope: !2983, inlinedAt: !4687)
!4689 = !DILocation(line: 172, column: 57, scope: !2983, inlinedAt: !4687)
!4690 = !DILocation(line: 176, column: 6, scope: !2983, inlinedAt: !4687)
!4691 = !DILocation(line: 176, column: 12, scope: !2983, inlinedAt: !4687)
!4692 = !DILocation(line: 177, column: 8, scope: !2999, inlinedAt: !4687)
!4693 = !DILocation(line: 177, column: 23, scope: !3001, inlinedAt: !4687)
!4694 = !DILocation(line: 177, column: 19, scope: !2999, inlinedAt: !4687)
!4695 = !DILocation(line: 178, column: 5, scope: !2999, inlinedAt: !4687)
!4696 = !DILocation(line: 179, column: 6, scope: !2983, inlinedAt: !4687)
!4697 = !DILocation(line: 179, column: 17, scope: !2983, inlinedAt: !4687)
!4698 = !DILocation(line: 180, column: 6, scope: !2983, inlinedAt: !4687)
!4699 = !DILocation(line: 180, column: 18, scope: !2983, inlinedAt: !4687)
!4700 = !DILocation(line: 1023, column: 10, scope: !4643)
!4701 = !DILocation(line: 1024, column: 1, scope: !4643)
!4702 = !DILocation(line: 1023, column: 3, scope: !4643)
!4703 = distinct !DISubprogram(name: "quotearg_custom", scope: !136, file: !136, line: 1027, type: !4704, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!38, !35, !35, !35}
!4706 = !{!4707, !4708, !4709}
!4707 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4703, file: !136, line: 1027, type: !35)
!4708 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4703, file: !136, line: 1027, type: !35)
!4709 = !DILocalVariable(name: "arg", arg: 3, scope: !4703, file: !136, line: 1028, type: !35)
!4710 = !DILocation(line: 1027, column: 30, scope: !4703)
!4711 = !DILocation(line: 1027, column: 54, scope: !4703)
!4712 = !DILocation(line: 1028, column: 30, scope: !4703)
!4713 = !DILocation(line: 1009, column: 24, scope: !4630, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 1030, column: 10, scope: !4703)
!4715 = !DILocation(line: 1009, column: 39, scope: !4630, inlinedAt: !4714)
!4716 = !DILocation(line: 1010, column: 32, scope: !4630, inlinedAt: !4714)
!4717 = !DILocation(line: 1010, column: 57, scope: !4630, inlinedAt: !4714)
!4718 = !DILocation(line: 1017, column: 28, scope: !4643, inlinedAt: !4719)
!4719 = distinct !DILocation(line: 1012, column: 10, scope: !4630, inlinedAt: !4714)
!4720 = !DILocation(line: 1017, column: 43, scope: !4643, inlinedAt: !4719)
!4721 = !DILocation(line: 1018, column: 36, scope: !4643, inlinedAt: !4719)
!4722 = !DILocation(line: 1019, column: 36, scope: !4643, inlinedAt: !4719)
!4723 = !DILocation(line: 1019, column: 48, scope: !4643, inlinedAt: !4719)
!4724 = !DILocation(line: 1021, column: 3, scope: !4643, inlinedAt: !4719)
!4725 = !DILocation(line: 1021, column: 30, scope: !4643, inlinedAt: !4719)
!4726 = !DILocation(line: 1021, column: 26, scope: !4643, inlinedAt: !4719)
!4727 = !DILocation(line: 171, column: 45, scope: !2983, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 1022, column: 3, scope: !4643, inlinedAt: !4719)
!4729 = !DILocation(line: 172, column: 33, scope: !2983, inlinedAt: !4728)
!4730 = !DILocation(line: 172, column: 57, scope: !2983, inlinedAt: !4728)
!4731 = !DILocation(line: 176, column: 6, scope: !2983, inlinedAt: !4728)
!4732 = !DILocation(line: 176, column: 12, scope: !2983, inlinedAt: !4728)
!4733 = !DILocation(line: 177, column: 8, scope: !2999, inlinedAt: !4728)
!4734 = !DILocation(line: 177, column: 23, scope: !3001, inlinedAt: !4728)
!4735 = !DILocation(line: 177, column: 19, scope: !2999, inlinedAt: !4728)
!4736 = !DILocation(line: 178, column: 5, scope: !2999, inlinedAt: !4728)
!4737 = !DILocation(line: 179, column: 6, scope: !2983, inlinedAt: !4728)
!4738 = !DILocation(line: 179, column: 17, scope: !2983, inlinedAt: !4728)
!4739 = !DILocation(line: 180, column: 6, scope: !2983, inlinedAt: !4728)
!4740 = !DILocation(line: 180, column: 18, scope: !2983, inlinedAt: !4728)
!4741 = !DILocation(line: 1023, column: 10, scope: !4643, inlinedAt: !4719)
!4742 = !DILocation(line: 1024, column: 1, scope: !4643, inlinedAt: !4719)
!4743 = !DILocation(line: 1030, column: 3, scope: !4703)
!4744 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !136, file: !136, line: 1034, type: !4745, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4747)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!38, !35, !35, !35, !27}
!4747 = !{!4748, !4749, !4750, !4751}
!4748 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4744, file: !136, line: 1034, type: !35)
!4749 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4744, file: !136, line: 1034, type: !35)
!4750 = !DILocalVariable(name: "arg", arg: 3, scope: !4744, file: !136, line: 1035, type: !35)
!4751 = !DILocalVariable(name: "argsize", arg: 4, scope: !4744, file: !136, line: 1035, type: !27)
!4752 = !DILocation(line: 1034, column: 34, scope: !4744)
!4753 = !DILocation(line: 1034, column: 58, scope: !4744)
!4754 = !DILocation(line: 1035, column: 34, scope: !4744)
!4755 = !DILocation(line: 1035, column: 46, scope: !4744)
!4756 = !DILocation(line: 1017, column: 28, scope: !4643, inlinedAt: !4757)
!4757 = distinct !DILocation(line: 1037, column: 10, scope: !4744)
!4758 = !DILocation(line: 1017, column: 43, scope: !4643, inlinedAt: !4757)
!4759 = !DILocation(line: 1018, column: 36, scope: !4643, inlinedAt: !4757)
!4760 = !DILocation(line: 1019, column: 36, scope: !4643, inlinedAt: !4757)
!4761 = !DILocation(line: 1019, column: 48, scope: !4643, inlinedAt: !4757)
!4762 = !DILocation(line: 1021, column: 3, scope: !4643, inlinedAt: !4757)
!4763 = !DILocation(line: 1021, column: 30, scope: !4643, inlinedAt: !4757)
!4764 = !DILocation(line: 1021, column: 26, scope: !4643, inlinedAt: !4757)
!4765 = !DILocation(line: 171, column: 45, scope: !2983, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 1022, column: 3, scope: !4643, inlinedAt: !4757)
!4767 = !DILocation(line: 172, column: 33, scope: !2983, inlinedAt: !4766)
!4768 = !DILocation(line: 172, column: 57, scope: !2983, inlinedAt: !4766)
!4769 = !DILocation(line: 176, column: 6, scope: !2983, inlinedAt: !4766)
!4770 = !DILocation(line: 176, column: 12, scope: !2983, inlinedAt: !4766)
!4771 = !DILocation(line: 177, column: 8, scope: !2999, inlinedAt: !4766)
!4772 = !DILocation(line: 177, column: 23, scope: !3001, inlinedAt: !4766)
!4773 = !DILocation(line: 177, column: 19, scope: !2999, inlinedAt: !4766)
!4774 = !DILocation(line: 178, column: 5, scope: !2999, inlinedAt: !4766)
!4775 = !DILocation(line: 179, column: 6, scope: !2983, inlinedAt: !4766)
!4776 = !DILocation(line: 179, column: 17, scope: !2983, inlinedAt: !4766)
!4777 = !DILocation(line: 180, column: 6, scope: !2983, inlinedAt: !4766)
!4778 = !DILocation(line: 180, column: 18, scope: !2983, inlinedAt: !4766)
!4779 = !DILocation(line: 1023, column: 10, scope: !4643, inlinedAt: !4757)
!4780 = !DILocation(line: 1024, column: 1, scope: !4643, inlinedAt: !4757)
!4781 = !DILocation(line: 1037, column: 3, scope: !4744)
!4782 = distinct !DISubprogram(name: "quote_n_mem", scope: !136, file: !136, line: 1052, type: !4783, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4785)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!35, !40, !35, !27}
!4785 = !{!4786, !4787, !4788}
!4786 = !DILocalVariable(name: "n", arg: 1, scope: !4782, file: !136, line: 1052, type: !40)
!4787 = !DILocalVariable(name: "arg", arg: 2, scope: !4782, file: !136, line: 1052, type: !35)
!4788 = !DILocalVariable(name: "argsize", arg: 3, scope: !4782, file: !136, line: 1052, type: !27)
!4789 = !DILocation(line: 1052, column: 18, scope: !4782)
!4790 = !DILocation(line: 1052, column: 33, scope: !4782)
!4791 = !DILocation(line: 1052, column: 45, scope: !4782)
!4792 = !DILocation(line: 1054, column: 10, scope: !4782)
!4793 = !DILocation(line: 1054, column: 3, scope: !4782)
!4794 = distinct !DISubprogram(name: "quote_mem", scope: !136, file: !136, line: 1058, type: !4795, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4797)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!35, !35, !27}
!4797 = !{!4798, !4799}
!4798 = !DILocalVariable(name: "arg", arg: 1, scope: !4794, file: !136, line: 1058, type: !35)
!4799 = !DILocalVariable(name: "argsize", arg: 2, scope: !4794, file: !136, line: 1058, type: !27)
!4800 = !DILocation(line: 1058, column: 24, scope: !4794)
!4801 = !DILocation(line: 1058, column: 36, scope: !4794)
!4802 = !DILocation(line: 1052, column: 18, scope: !4782, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 1060, column: 10, scope: !4794)
!4804 = !DILocation(line: 1052, column: 33, scope: !4782, inlinedAt: !4803)
!4805 = !DILocation(line: 1052, column: 45, scope: !4782, inlinedAt: !4803)
!4806 = !DILocation(line: 1054, column: 10, scope: !4782, inlinedAt: !4803)
!4807 = !DILocation(line: 1060, column: 3, scope: !4794)
!4808 = distinct !DISubprogram(name: "quote_n", scope: !136, file: !136, line: 1064, type: !4809, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4811)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!35, !40, !35}
!4811 = !{!4812, !4813}
!4812 = !DILocalVariable(name: "n", arg: 1, scope: !4808, file: !136, line: 1064, type: !40)
!4813 = !DILocalVariable(name: "arg", arg: 2, scope: !4808, file: !136, line: 1064, type: !35)
!4814 = !DILocation(line: 1064, column: 14, scope: !4808)
!4815 = !DILocation(line: 1064, column: 29, scope: !4808)
!4816 = !DILocation(line: 1052, column: 18, scope: !4782, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 1066, column: 10, scope: !4808)
!4818 = !DILocation(line: 1052, column: 33, scope: !4782, inlinedAt: !4817)
!4819 = !DILocation(line: 1052, column: 45, scope: !4782, inlinedAt: !4817)
!4820 = !DILocation(line: 1054, column: 10, scope: !4782, inlinedAt: !4817)
!4821 = !DILocation(line: 1066, column: 3, scope: !4808)
!4822 = distinct !DISubprogram(name: "quote", scope: !136, file: !136, line: 1070, type: !2712, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !4823)
!4823 = !{!4824}
!4824 = !DILocalVariable(name: "arg", arg: 1, scope: !4822, file: !136, line: 1070, type: !35)
!4825 = !DILocation(line: 1070, column: 20, scope: !4822)
!4826 = !DILocation(line: 1064, column: 14, scope: !4808, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 1072, column: 10, scope: !4822)
!4828 = !DILocation(line: 1064, column: 29, scope: !4808, inlinedAt: !4827)
!4829 = !DILocation(line: 1052, column: 18, scope: !4782, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 1066, column: 10, scope: !4808, inlinedAt: !4827)
!4831 = !DILocation(line: 1052, column: 33, scope: !4782, inlinedAt: !4830)
!4832 = !DILocation(line: 1052, column: 45, scope: !4782, inlinedAt: !4830)
!4833 = !DILocation(line: 1054, column: 10, scope: !4782, inlinedAt: !4830)
!4834 = !DILocation(line: 1072, column: 3, scope: !4822)
!4835 = distinct !DISubprogram(name: "strintcmp", scope: !4836, file: !4836, line: 29, type: !4837, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !4839)
!4836 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!40, !35, !35}
!4839 = !{!4840, !4841}
!4840 = !DILocalVariable(name: "a", arg: 1, scope: !4835, file: !4836, line: 29, type: !35)
!4841 = !DILocalVariable(name: "b", arg: 2, scope: !4835, file: !4836, line: 29, type: !35)
!4842 = !DILocation(line: 29, column: 24, scope: !4835)
!4843 = !DILocation(line: 29, column: 39, scope: !4835)
!4844 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4845, file: !4846, line: 115, type: !40)
!4845 = distinct !DISubprogram(name: "numcompare", scope: !4846, file: !4846, line: 114, type: !4847, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !4849)
!4846 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!40, !35, !35, !40, !40}
!4849 = !{!4850, !4851, !4844, !4852, !4853, !4854, !4855, !4856, !4857}
!4850 = !DILocalVariable(name: "a", arg: 1, scope: !4845, file: !4846, line: 114, type: !35)
!4851 = !DILocalVariable(name: "b", arg: 2, scope: !4845, file: !4846, line: 114, type: !35)
!4852 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4845, file: !4846, line: 115, type: !40)
!4853 = !DILocalVariable(name: "tmpa", scope: !4845, file: !4846, line: 117, type: !34)
!4854 = !DILocalVariable(name: "tmpb", scope: !4845, file: !4846, line: 118, type: !34)
!4855 = !DILocalVariable(name: "tmp", scope: !4845, file: !4846, line: 119, type: !40)
!4856 = !DILocalVariable(name: "log_a", scope: !4845, file: !4846, line: 120, type: !27)
!4857 = !DILocalVariable(name: "log_b", scope: !4845, file: !4846, line: 121, type: !27)
!4858 = !DILocation(line: 115, column: 17, scope: !4845, inlinedAt: !4859)
!4859 = distinct !DILocation(line: 31, column: 10, scope: !4835)
!4860 = !DILocation(line: 115, column: 36, scope: !4845, inlinedAt: !4859)
!4861 = !DILocation(line: 117, column: 24, scope: !4845, inlinedAt: !4859)
!4862 = !DILocation(line: 117, column: 17, scope: !4845, inlinedAt: !4859)
!4863 = !DILocation(line: 118, column: 24, scope: !4845, inlinedAt: !4859)
!4864 = !DILocation(line: 118, column: 17, scope: !4845, inlinedAt: !4859)
!4865 = !DILocation(line: 123, column: 12, scope: !4866, inlinedAt: !4859)
!4866 = distinct !DILexicalBlock(scope: !4845, file: !4846, line: 123, column: 7)
!4867 = !DILocation(line: 123, column: 7, scope: !4845, inlinedAt: !4859)
!4868 = distinct !{!4868, !4869, !4871}
!4869 = !DILocation(line: 125, column: 7, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4866, file: !4846, line: 124, column: 5)
!4871 = !DILocation(line: 127, column: 59, scope: !4870)
!4872 = !DILocation(line: 114, column: 25, scope: !4845, inlinedAt: !4859)
!4873 = !DILocation(line: 126, column: 17, scope: !4870, inlinedAt: !4859)
!4874 = !DILocation(line: 126, column: 16, scope: !4870, inlinedAt: !4859)
!4875 = !DILocation(line: 127, column: 19, scope: !4870, inlinedAt: !4859)
!4876 = !DILocation(line: 127, column: 35, scope: !4870, inlinedAt: !4859)
!4877 = !DILocation(line: 128, column: 16, scope: !4878, inlinedAt: !4859)
!4878 = distinct !DILexicalBlock(scope: !4870, file: !4846, line: 128, column: 11)
!4879 = !DILocation(line: 128, column: 11, scope: !4870, inlinedAt: !4859)
!4880 = distinct !{!4880, !4881, !4882}
!4881 = !DILocation(line: 144, column: 7, scope: !4870)
!4882 = !DILocation(line: 146, column: 59, scope: !4870)
!4883 = !DILocation(line: 114, column: 40, scope: !4845, inlinedAt: !4859)
!4884 = !DILocation(line: 134, column: 15, scope: !4885, inlinedAt: !4859)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !4846, line: 134, column: 15)
!4886 = distinct !DILexicalBlock(scope: !4878, file: !4846, line: 129, column: 9)
!4887 = !DILocation(line: 134, column: 15, scope: !4886, inlinedAt: !4859)
!4888 = !DILocation(line: 136, column: 23, scope: !4889, inlinedAt: !4859)
!4889 = !DILexicalBlockFile(scope: !4886, file: !4846, discriminator: 1)
!4890 = !DILocation(line: 136, column: 39, scope: !4889, inlinedAt: !4859)
!4891 = !DILocation(line: 137, column: 21, scope: !4886, inlinedAt: !4859)
!4892 = !DILocation(line: 137, column: 20, scope: !4886, inlinedAt: !4859)
!4893 = distinct !{!4893, !4894, !4895}
!4894 = !DILocation(line: 136, column: 11, scope: !4886)
!4895 = !DILocation(line: 137, column: 23, scope: !4886)
!4896 = !DILocation(line: 142, column: 20, scope: !4886, inlinedAt: !4859)
!4897 = !DILocation(line: 142, column: 18, scope: !4886, inlinedAt: !4859)
!4898 = !DILocation(line: 142, column: 11, scope: !4886, inlinedAt: !4859)
!4899 = !DILocation(line: 145, column: 17, scope: !4870, inlinedAt: !4859)
!4900 = !DILocation(line: 145, column: 16, scope: !4870, inlinedAt: !4859)
!4901 = !DILocation(line: 146, column: 19, scope: !4870, inlinedAt: !4859)
!4902 = !DILocation(line: 146, column: 35, scope: !4870, inlinedAt: !4859)
!4903 = !DILocation(line: 148, column: 14, scope: !4904, inlinedAt: !4859)
!4904 = !DILexicalBlockFile(scope: !4870, file: !4846, discriminator: 1)
!4905 = !DILocation(line: 148, column: 19, scope: !4904, inlinedAt: !4859)
!4906 = !DILocation(line: 148, column: 30, scope: !4907, inlinedAt: !4859)
!4907 = !DILexicalBlockFile(scope: !4870, file: !4846, discriminator: 2)
!4908 = !DILocation(line: 148, column: 27, scope: !4904, inlinedAt: !4859)
!4909 = distinct !{!4909, !4910, !4912}
!4910 = !DILocation(line: 150, column: 11, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4870, file: !4846, line: 149, column: 9)
!4912 = !DILocation(line: 152, column: 39, scope: !4911)
!4913 = !DILocation(line: 151, column: 21, scope: !4911, inlinedAt: !4859)
!4914 = !DILocation(line: 151, column: 20, scope: !4911, inlinedAt: !4859)
!4915 = !DILocation(line: 154, column: 21, scope: !4911, inlinedAt: !4859)
!4916 = !DILocation(line: 154, column: 20, scope: !4911, inlinedAt: !4859)
!4917 = !DILocation(line: 148, column: 22, scope: !4904, inlinedAt: !4859)
!4918 = !DILocation(line: 162, column: 18, scope: !4870, inlinedAt: !4859)
!4919 = !DILocation(line: 119, column: 7, scope: !4845, inlinedAt: !4859)
!4920 = !DILocation(line: 120, column: 10, scope: !4845, inlinedAt: !4859)
!4921 = !DILocation(line: 164, column: 23, scope: !4922, inlinedAt: !4859)
!4922 = !DILexicalBlockFile(scope: !4923, file: !4846, discriminator: 1)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !4846, line: 164, column: 7)
!4924 = distinct !DILexicalBlock(scope: !4870, file: !4846, line: 164, column: 7)
!4925 = !DILocation(line: 164, column: 7, scope: !4926, inlinedAt: !4859)
!4926 = !DILexicalBlockFile(scope: !4924, file: !4846, discriminator: 1)
!4927 = distinct !{!4927, !4928, !4929}
!4928 = !DILocation(line: 165, column: 9, scope: !4923)
!4929 = !DILocation(line: 167, column: 37, scope: !4923)
!4930 = !DILocation(line: 121, column: 10, scope: !4845, inlinedAt: !4859)
!4931 = !DILocation(line: 169, column: 23, scope: !4932, inlinedAt: !4859)
!4932 = !DILexicalBlockFile(scope: !4933, file: !4846, discriminator: 1)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !4846, line: 169, column: 7)
!4934 = distinct !DILexicalBlock(scope: !4870, file: !4846, line: 169, column: 7)
!4935 = !DILocation(line: 169, column: 7, scope: !4936, inlinedAt: !4859)
!4936 = !DILexicalBlockFile(scope: !4934, file: !4846, discriminator: 1)
!4937 = distinct !{!4937, !4938, !4939}
!4938 = !DILocation(line: 170, column: 9, scope: !4933)
!4939 = !DILocation(line: 172, column: 37, scope: !4933)
!4940 = !DILocation(line: 166, column: 19, scope: !4923, inlinedAt: !4859)
!4941 = !DILocation(line: 166, column: 18, scope: !4923, inlinedAt: !4859)
!4942 = !DILocation(line: 164, column: 39, scope: !4943, inlinedAt: !4859)
!4943 = !DILexicalBlockFile(scope: !4923, file: !4846, discriminator: 2)
!4944 = distinct !{!4944, !4945, !4946}
!4945 = !DILocation(line: 164, column: 7, scope: !4924)
!4946 = !DILocation(line: 167, column: 37, scope: !4924)
!4947 = !DILocation(line: 171, column: 19, scope: !4933, inlinedAt: !4859)
!4948 = !DILocation(line: 171, column: 18, scope: !4933, inlinedAt: !4859)
!4949 = !DILocation(line: 169, column: 39, scope: !4950, inlinedAt: !4859)
!4950 = !DILexicalBlockFile(scope: !4933, file: !4846, discriminator: 2)
!4951 = distinct !{!4951, !4952, !4953}
!4952 = !DILocation(line: 169, column: 7, scope: !4934)
!4953 = !DILocation(line: 172, column: 37, scope: !4934)
!4954 = !DILocation(line: 174, column: 17, scope: !4955, inlinedAt: !4859)
!4955 = distinct !DILexicalBlock(scope: !4870, file: !4846, line: 174, column: 11)
!4956 = !DILocation(line: 174, column: 11, scope: !4870, inlinedAt: !4859)
!4957 = !DILocation(line: 175, column: 22, scope: !4955, inlinedAt: !4859)
!4958 = !DILocation(line: 175, column: 16, scope: !4955, inlinedAt: !4859)
!4959 = !DILocation(line: 175, column: 9, scope: !4955, inlinedAt: !4859)
!4960 = !DILocation(line: 177, column: 12, scope: !4961, inlinedAt: !4859)
!4961 = distinct !DILexicalBlock(scope: !4870, file: !4846, line: 177, column: 11)
!4962 = !DILocation(line: 178, column: 9, scope: !4961, inlinedAt: !4859)
!4963 = !DILocation(line: 182, column: 17, scope: !4964, inlinedAt: !4859)
!4964 = distinct !DILexicalBlock(scope: !4866, file: !4846, line: 182, column: 12)
!4965 = !DILocation(line: 182, column: 12, scope: !4866, inlinedAt: !4859)
!4966 = distinct !{!4966, !4967, !4969}
!4967 = !DILocation(line: 184, column: 7, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4964, file: !4846, line: 183, column: 5)
!4969 = !DILocation(line: 186, column: 59, scope: !4968)
!4970 = !DILocation(line: 203, column: 19, scope: !4971, inlinedAt: !4859)
!4971 = !DILexicalBlockFile(scope: !4972, file: !4846, discriminator: 1)
!4972 = distinct !DILexicalBlock(scope: !4964, file: !4846, line: 202, column: 5)
!4973 = !DILocation(line: 203, column: 35, scope: !4971, inlinedAt: !4859)
!4974 = !DILocation(line: 204, column: 17, scope: !4972, inlinedAt: !4859)
!4975 = !DILocation(line: 185, column: 17, scope: !4968, inlinedAt: !4859)
!4976 = !DILocation(line: 185, column: 16, scope: !4968, inlinedAt: !4859)
!4977 = !DILocation(line: 186, column: 19, scope: !4968, inlinedAt: !4859)
!4978 = !DILocation(line: 186, column: 35, scope: !4968, inlinedAt: !4859)
!4979 = !DILocation(line: 191, column: 11, scope: !4980, inlinedAt: !4859)
!4980 = distinct !DILexicalBlock(scope: !4968, file: !4846, line: 191, column: 11)
!4981 = !DILocation(line: 191, column: 11, scope: !4968, inlinedAt: !4859)
!4982 = !DILocation(line: 193, column: 19, scope: !4983, inlinedAt: !4859)
!4983 = !DILexicalBlockFile(scope: !4968, file: !4846, discriminator: 1)
!4984 = !DILocation(line: 193, column: 35, scope: !4983, inlinedAt: !4859)
!4985 = !DILocation(line: 194, column: 17, scope: !4968, inlinedAt: !4859)
!4986 = !DILocation(line: 194, column: 16, scope: !4968, inlinedAt: !4859)
!4987 = distinct !{!4987, !4988, !4989}
!4988 = !DILocation(line: 193, column: 7, scope: !4968)
!4989 = !DILocation(line: 194, column: 19, scope: !4968)
!4990 = !DILocation(line: 199, column: 14, scope: !4968, inlinedAt: !4859)
!4991 = !DILocation(line: 199, column: 7, scope: !4968, inlinedAt: !4859)
!4992 = !DILocation(line: 205, column: 19, scope: !4971, inlinedAt: !4859)
!4993 = !DILocation(line: 205, column: 35, scope: !4971, inlinedAt: !4859)
!4994 = !DILocation(line: 206, column: 17, scope: !4972, inlinedAt: !4859)
!4995 = !DILocation(line: 204, column: 16, scope: !4972, inlinedAt: !4859)
!4996 = distinct !{!4996, !4997, !4998}
!4997 = !DILocation(line: 203, column: 7, scope: !4972)
!4998 = !DILocation(line: 204, column: 19, scope: !4972)
!4999 = !DILocation(line: 208, column: 14, scope: !4971, inlinedAt: !4859)
!5000 = !DILocation(line: 208, column: 19, scope: !4971, inlinedAt: !4859)
!5001 = !DILocation(line: 208, column: 30, scope: !5002, inlinedAt: !4859)
!5002 = !DILexicalBlockFile(scope: !4972, file: !4846, discriminator: 2)
!5003 = !DILocation(line: 208, column: 27, scope: !4971, inlinedAt: !4859)
!5004 = distinct !{!5004, !5005, !5007}
!5005 = !DILocation(line: 210, column: 11, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4972, file: !4846, line: 209, column: 9)
!5007 = !DILocation(line: 212, column: 39, scope: !5006)
!5008 = !DILocation(line: 206, column: 16, scope: !4972, inlinedAt: !4859)
!5009 = distinct !{!5009, !5010, !5011}
!5010 = !DILocation(line: 205, column: 7, scope: !4972)
!5011 = !DILocation(line: 206, column: 19, scope: !4972)
!5012 = !DILocation(line: 211, column: 21, scope: !5006, inlinedAt: !4859)
!5013 = !DILocation(line: 211, column: 20, scope: !5006, inlinedAt: !4859)
!5014 = !DILocation(line: 214, column: 21, scope: !5006, inlinedAt: !4859)
!5015 = !DILocation(line: 214, column: 20, scope: !5006, inlinedAt: !4859)
!5016 = !DILocation(line: 208, column: 22, scope: !4971, inlinedAt: !4859)
!5017 = !DILocation(line: 222, column: 18, scope: !4972, inlinedAt: !4859)
!5018 = !DILocation(line: 224, column: 23, scope: !5019, inlinedAt: !4859)
!5019 = !DILexicalBlockFile(scope: !5020, file: !4846, discriminator: 1)
!5020 = distinct !DILexicalBlock(scope: !5021, file: !4846, line: 224, column: 7)
!5021 = distinct !DILexicalBlock(scope: !4972, file: !4846, line: 224, column: 7)
!5022 = !DILocation(line: 224, column: 7, scope: !5023, inlinedAt: !4859)
!5023 = !DILexicalBlockFile(scope: !5021, file: !4846, discriminator: 1)
!5024 = distinct !{!5024, !5025, !5026}
!5025 = !DILocation(line: 225, column: 9, scope: !5020)
!5026 = !DILocation(line: 227, column: 37, scope: !5020)
!5027 = !DILocation(line: 229, column: 23, scope: !5028, inlinedAt: !4859)
!5028 = !DILexicalBlockFile(scope: !5029, file: !4846, discriminator: 1)
!5029 = distinct !DILexicalBlock(scope: !5030, file: !4846, line: 229, column: 7)
!5030 = distinct !DILexicalBlock(scope: !4972, file: !4846, line: 229, column: 7)
!5031 = !DILocation(line: 229, column: 7, scope: !5032, inlinedAt: !4859)
!5032 = !DILexicalBlockFile(scope: !5030, file: !4846, discriminator: 1)
!5033 = distinct !{!5033, !5034, !5035}
!5034 = !DILocation(line: 230, column: 9, scope: !5029)
!5035 = !DILocation(line: 232, column: 37, scope: !5029)
!5036 = !DILocation(line: 226, column: 19, scope: !5020, inlinedAt: !4859)
!5037 = !DILocation(line: 226, column: 18, scope: !5020, inlinedAt: !4859)
!5038 = !DILocation(line: 224, column: 39, scope: !5039, inlinedAt: !4859)
!5039 = !DILexicalBlockFile(scope: !5020, file: !4846, discriminator: 2)
!5040 = distinct !{!5040, !5041, !5042}
!5041 = !DILocation(line: 224, column: 7, scope: !5021)
!5042 = !DILocation(line: 227, column: 37, scope: !5021)
!5043 = !DILocation(line: 231, column: 19, scope: !5029, inlinedAt: !4859)
!5044 = !DILocation(line: 231, column: 18, scope: !5029, inlinedAt: !4859)
!5045 = !DILocation(line: 229, column: 39, scope: !5046, inlinedAt: !4859)
!5046 = !DILexicalBlockFile(scope: !5029, file: !4846, discriminator: 2)
!5047 = distinct !{!5047, !5048, !5049}
!5048 = !DILocation(line: 229, column: 7, scope: !5030)
!5049 = !DILocation(line: 232, column: 37, scope: !5030)
!5050 = !DILocation(line: 234, column: 17, scope: !5051, inlinedAt: !4859)
!5051 = distinct !DILexicalBlock(scope: !4972, file: !4846, line: 234, column: 11)
!5052 = !DILocation(line: 234, column: 11, scope: !4972, inlinedAt: !4859)
!5053 = !DILocation(line: 235, column: 22, scope: !5051, inlinedAt: !4859)
!5054 = !DILocation(line: 235, column: 16, scope: !5051, inlinedAt: !4859)
!5055 = !DILocation(line: 235, column: 9, scope: !5051, inlinedAt: !4859)
!5056 = !DILocation(line: 237, column: 12, scope: !5057, inlinedAt: !4859)
!5057 = distinct !DILexicalBlock(scope: !4972, file: !4846, line: 237, column: 11)
!5058 = !DILocation(line: 238, column: 9, scope: !5057, inlinedAt: !4859)
!5059 = !DILocation(line: 31, column: 3, scope: !4835)
!5060 = distinct !DISubprogram(name: "verror", scope: !5061, file: !5061, line: 43, type: !5062, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !5071)
!5061 = !DIFile(filename: "lib/verror.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5062 = !DISubroutineType(types: !5063)
!5063 = !{null, !40, !40, !35, !5064}
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !543, size: 192, elements: !5066)
!5066 = !{!5067, !5068, !5069, !5070}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5065, file: !543, baseType: !42, size: 32)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5065, file: !543, baseType: !42, size: 32, offset: 32)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5065, file: !543, baseType: !39, size: 64, offset: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5065, file: !543, baseType: !39, size: 64, offset: 128)
!5071 = !{!5072, !5073, !5074, !5075}
!5072 = !DILocalVariable(name: "status", arg: 1, scope: !5060, file: !5061, line: 43, type: !40)
!5073 = !DILocalVariable(name: "errnum", arg: 2, scope: !5060, file: !5061, line: 43, type: !40)
!5074 = !DILocalVariable(name: "format", arg: 3, scope: !5060, file: !5061, line: 43, type: !35)
!5075 = !DILocalVariable(name: "args", arg: 4, scope: !5060, file: !5061, line: 43, type: !5064)
!5076 = !DILocation(line: 43, column: 13, scope: !5060)
!5077 = !DILocation(line: 43, column: 25, scope: !5060)
!5078 = !DILocation(line: 43, column: 45, scope: !5060)
!5079 = !DILocation(line: 43, column: 61, scope: !5060)
!5080 = !DILocation(line: 45, column: 3, scope: !5060)
!5081 = !DILocation(line: 46, column: 1, scope: !5060)
!5082 = distinct !DISubprogram(name: "verror_at_line", scope: !5061, file: !5061, line: 55, type: !5083, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !5085)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{null, !40, !40, !35, !42, !35, !5064}
!5085 = !{!5086, !5087, !5088, !5089, !5090, !5091, !5092}
!5086 = !DILocalVariable(name: "status", arg: 1, scope: !5082, file: !5061, line: 55, type: !40)
!5087 = !DILocalVariable(name: "errnum", arg: 2, scope: !5082, file: !5061, line: 55, type: !40)
!5088 = !DILocalVariable(name: "file", arg: 3, scope: !5082, file: !5061, line: 55, type: !35)
!5089 = !DILocalVariable(name: "line_number", arg: 4, scope: !5082, file: !5061, line: 56, type: !42)
!5090 = !DILocalVariable(name: "format", arg: 5, scope: !5082, file: !5061, line: 56, type: !35)
!5091 = !DILocalVariable(name: "args", arg: 6, scope: !5082, file: !5061, line: 56, type: !5064)
!5092 = !DILocalVariable(name: "message", scope: !5082, file: !5061, line: 58, type: !38)
!5093 = !DILocation(line: 55, column: 21, scope: !5082)
!5094 = !DILocation(line: 55, column: 33, scope: !5082)
!5095 = !DILocation(line: 55, column: 53, scope: !5082)
!5096 = !DILocation(line: 56, column: 30, scope: !5082)
!5097 = !DILocation(line: 56, column: 55, scope: !5082)
!5098 = !DILocation(line: 56, column: 71, scope: !5082)
!5099 = !DILocation(line: 58, column: 19, scope: !5082)
!5100 = !DILocation(line: 58, column: 9, scope: !5082)
!5101 = !DILocation(line: 59, column: 7, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5082, file: !5061, line: 59, column: 7)
!5103 = !DILocation(line: 59, column: 7, scope: !5082)
!5104 = !DILocation(line: 64, column: 11, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !5061, line: 64, column: 11)
!5106 = distinct !DILexicalBlock(scope: !5102, file: !5061, line: 60, column: 5)
!5107 = !DILocation(line: 64, column: 11, scope: !5106)
!5108 = !DILocation(line: 65, column: 9, scope: !5105)
!5109 = !DILocation(line: 67, column: 9, scope: !5105)
!5110 = !DILocation(line: 73, column: 17, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5102, file: !5061, line: 70, column: 5)
!5112 = !DILocation(line: 73, column: 24, scope: !5113)
!5113 = !DILexicalBlockFile(scope: !5111, file: !5061, discriminator: 1)
!5114 = !DILocation(line: 73, column: 7, scope: !5115)
!5115 = !DILexicalBlockFile(scope: !5111, file: !5061, discriminator: 2)
!5116 = !DILocation(line: 74, column: 7, scope: !5111)
!5117 = !DILocation(line: 76, column: 3, scope: !5082)
!5118 = !DILocation(line: 77, column: 1, scope: !5082)
!5119 = distinct !DISubprogram(name: "version_etc_arn", scope: !548, file: !548, line: 62, type: !5120, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !5172)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{null, !5122, !35, !35, !35, !5171, !27}
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !802, line: 49, baseType: !5124)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5125, line: 241, size: 1728, elements: !5126)
!5125 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5126 = !{!5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5147, !5148, !5149, !5150, !5151, !5152, !5154, !5156, !5159, !5161, !5162, !5163, !5164, !5165, !5166, !5167}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5124, file: !5125, line: 242, baseType: !40, size: 32)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5124, file: !5125, line: 247, baseType: !38, size: 64, offset: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5124, file: !5125, line: 248, baseType: !38, size: 64, offset: 128)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5124, file: !5125, line: 249, baseType: !38, size: 64, offset: 192)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5124, file: !5125, line: 250, baseType: !38, size: 64, offset: 256)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5124, file: !5125, line: 251, baseType: !38, size: 64, offset: 320)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5124, file: !5125, line: 252, baseType: !38, size: 64, offset: 384)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5124, file: !5125, line: 253, baseType: !38, size: 64, offset: 448)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5124, file: !5125, line: 254, baseType: !38, size: 64, offset: 512)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5124, file: !5125, line: 256, baseType: !38, size: 64, offset: 576)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5124, file: !5125, line: 257, baseType: !38, size: 64, offset: 640)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5124, file: !5125, line: 258, baseType: !38, size: 64, offset: 704)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5124, file: !5125, line: 260, baseType: !5140, size: 64, offset: 768)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5125, line: 156, size: 192, elements: !5142)
!5142 = !{!5143, !5144, !5146}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5141, file: !5125, line: 157, baseType: !5140, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5141, file: !5125, line: 158, baseType: !5145, size: 64, offset: 64)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5141, file: !5125, line: 162, baseType: !40, size: 32, offset: 128)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5124, file: !5125, line: 262, baseType: !5145, size: 64, offset: 832)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5124, file: !5125, line: 264, baseType: !40, size: 32, offset: 896)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5124, file: !5125, line: 268, baseType: !40, size: 32, offset: 928)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5124, file: !5125, line: 270, baseType: !1928, size: 64, offset: 960)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5124, file: !5125, line: 274, baseType: !41, size: 16, offset: 1024)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5124, file: !5125, line: 275, baseType: !5153, size: 8, offset: 1040)
!5153 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5124, file: !5125, line: 276, baseType: !5155, size: 8, offset: 1048)
!5155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !813)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5124, file: !5125, line: 280, baseType: !5157, size: 64, offset: 1088)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !5125, line: 150, baseType: null)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5124, file: !5125, line: 289, baseType: !5160, size: 64, offset: 1152)
!5160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !538, line: 141, baseType: !1929)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5124, file: !5125, line: 297, baseType: !39, size: 64, offset: 1216)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5124, file: !5125, line: 298, baseType: !39, size: 64, offset: 1280)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5124, file: !5125, line: 299, baseType: !39, size: 64, offset: 1344)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5124, file: !5125, line: 300, baseType: !39, size: 64, offset: 1408)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5124, file: !5125, line: 302, baseType: !27, size: 64, offset: 1472)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5124, file: !5125, line: 303, baseType: !40, size: 32, offset: 1536)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5124, file: !5125, line: 305, baseType: !5168, size: 160, offset: 1568)
!5168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !5169)
!5169 = !{!5170}
!5170 = !DISubrange(count: 20)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!5172 = !{!5173, !5174, !5175, !5176, !5177, !5178}
!5173 = !DILocalVariable(name: "stream", arg: 1, scope: !5119, file: !548, line: 62, type: !5122)
!5174 = !DILocalVariable(name: "command_name", arg: 2, scope: !5119, file: !548, line: 63, type: !35)
!5175 = !DILocalVariable(name: "package", arg: 3, scope: !5119, file: !548, line: 63, type: !35)
!5176 = !DILocalVariable(name: "version", arg: 4, scope: !5119, file: !548, line: 64, type: !35)
!5177 = !DILocalVariable(name: "authors", arg: 5, scope: !5119, file: !548, line: 65, type: !5171)
!5178 = !DILocalVariable(name: "n_authors", arg: 6, scope: !5119, file: !548, line: 65, type: !27)
!5179 = !DILocation(line: 62, column: 24, scope: !5119)
!5180 = !DILocation(line: 63, column: 30, scope: !5119)
!5181 = !DILocation(line: 63, column: 56, scope: !5119)
!5182 = !DILocation(line: 64, column: 30, scope: !5119)
!5183 = !DILocation(line: 65, column: 39, scope: !5119)
!5184 = !DILocation(line: 65, column: 55, scope: !5119)
!5185 = !DILocation(line: 67, column: 7, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5119, file: !548, line: 67, column: 7)
!5187 = !DILocation(line: 67, column: 7, scope: !5119)
!5188 = !DILocation(line: 68, column: 5, scope: !5186)
!5189 = !DILocation(line: 70, column: 5, scope: !5186)
!5190 = !DILocation(line: 84, column: 3, scope: !5119)
!5191 = !DILocation(line: 84, column: 3, scope: !5192)
!5192 = !DILexicalBlockFile(scope: !5119, file: !548, discriminator: 1)
!5193 = !DILocation(line: 86, column: 3, scope: !5119)
!5194 = !DILocation(line: 86, column: 3, scope: !5192)
!5195 = !DILocation(line: 95, column: 3, scope: !5119)
!5196 = !DILocation(line: 99, column: 7, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5119, file: !548, line: 96, column: 5)
!5198 = !DILocation(line: 102, column: 7, scope: !5197)
!5199 = !DILocation(line: 102, column: 7, scope: !5200)
!5200 = !DILexicalBlockFile(scope: !5197, file: !548, discriminator: 1)
!5201 = !DILocation(line: 103, column: 7, scope: !5197)
!5202 = !DILocation(line: 106, column: 7, scope: !5197)
!5203 = !DILocation(line: 106, column: 7, scope: !5200)
!5204 = !DILocation(line: 107, column: 7, scope: !5197)
!5205 = !DILocation(line: 110, column: 7, scope: !5197)
!5206 = !DILocation(line: 110, column: 7, scope: !5200)
!5207 = !DILocation(line: 112, column: 7, scope: !5197)
!5208 = !DILocation(line: 117, column: 7, scope: !5197)
!5209 = !DILocation(line: 117, column: 7, scope: !5200)
!5210 = !DILocation(line: 119, column: 7, scope: !5197)
!5211 = !DILocation(line: 124, column: 7, scope: !5197)
!5212 = !DILocation(line: 124, column: 7, scope: !5200)
!5213 = !DILocation(line: 126, column: 7, scope: !5197)
!5214 = !DILocation(line: 131, column: 7, scope: !5197)
!5215 = !DILocation(line: 131, column: 7, scope: !5200)
!5216 = !DILocation(line: 134, column: 7, scope: !5197)
!5217 = !DILocation(line: 139, column: 7, scope: !5197)
!5218 = !DILocation(line: 139, column: 7, scope: !5200)
!5219 = !DILocation(line: 142, column: 7, scope: !5197)
!5220 = !DILocation(line: 147, column: 7, scope: !5197)
!5221 = !DILocation(line: 147, column: 7, scope: !5200)
!5222 = !DILocation(line: 151, column: 7, scope: !5197)
!5223 = !DILocation(line: 156, column: 7, scope: !5197)
!5224 = !DILocation(line: 156, column: 7, scope: !5200)
!5225 = !DILocation(line: 160, column: 7, scope: !5197)
!5226 = !DILocation(line: 167, column: 7, scope: !5197)
!5227 = !DILocation(line: 167, column: 7, scope: !5200)
!5228 = !DILocation(line: 171, column: 7, scope: !5197)
!5229 = !DILocation(line: 173, column: 1, scope: !5119)
!5230 = distinct !DISubprogram(name: "version_etc_ar", scope: !548, file: !548, line: 180, type: !5231, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !5233)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{null, !5122, !35, !35, !35, !5171}
!5233 = !{!5234, !5235, !5236, !5237, !5238, !5239}
!5234 = !DILocalVariable(name: "stream", arg: 1, scope: !5230, file: !548, line: 180, type: !5122)
!5235 = !DILocalVariable(name: "command_name", arg: 2, scope: !5230, file: !548, line: 181, type: !35)
!5236 = !DILocalVariable(name: "package", arg: 3, scope: !5230, file: !548, line: 181, type: !35)
!5237 = !DILocalVariable(name: "version", arg: 4, scope: !5230, file: !548, line: 182, type: !35)
!5238 = !DILocalVariable(name: "authors", arg: 5, scope: !5230, file: !548, line: 182, type: !5171)
!5239 = !DILocalVariable(name: "n_authors", scope: !5230, file: !548, line: 184, type: !27)
!5240 = !DILocation(line: 180, column: 23, scope: !5230)
!5241 = !DILocation(line: 181, column: 29, scope: !5230)
!5242 = !DILocation(line: 181, column: 55, scope: !5230)
!5243 = !DILocation(line: 182, column: 29, scope: !5230)
!5244 = !DILocation(line: 182, column: 59, scope: !5230)
!5245 = !DILocation(line: 184, column: 10, scope: !5230)
!5246 = !DILocation(line: 186, column: 8, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5230, file: !548, line: 186, column: 3)
!5248 = !DILocation(line: 186, column: 23, scope: !5249)
!5249 = !DILexicalBlockFile(scope: !5250, file: !548, discriminator: 1)
!5250 = distinct !DILexicalBlock(scope: !5247, file: !548, line: 186, column: 3)
!5251 = !DILocation(line: 186, column: 3, scope: !5252)
!5252 = !DILexicalBlockFile(scope: !5247, file: !548, discriminator: 1)
!5253 = !DILocation(line: 186, column: 52, scope: !5254)
!5254 = !DILexicalBlockFile(scope: !5250, file: !548, discriminator: 3)
!5255 = distinct !{!5255, !5256, !5257}
!5256 = !DILocation(line: 186, column: 3, scope: !5247)
!5257 = !DILocation(line: 187, column: 5, scope: !5247)
!5258 = !DILocation(line: 188, column: 3, scope: !5230)
!5259 = !DILocation(line: 189, column: 1, scope: !5230)
!5260 = distinct !DISubprogram(name: "version_etc_va", scope: !548, file: !548, line: 196, type: !5261, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !5270)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{null, !5122, !35, !35, !35, !5263}
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !545, line: 189, size: 192, elements: !5265)
!5265 = !{!5266, !5267, !5268, !5269}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5264, file: !545, line: 189, baseType: !42, size: 32)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5264, file: !545, line: 189, baseType: !42, size: 32, offset: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5264, file: !545, line: 189, baseType: !39, size: 64, offset: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5264, file: !545, line: 189, baseType: !39, size: 64, offset: 128)
!5270 = !{!5271, !5272, !5273, !5274, !5275, !5276, !5277}
!5271 = !DILocalVariable(name: "stream", arg: 1, scope: !5260, file: !548, line: 196, type: !5122)
!5272 = !DILocalVariable(name: "command_name", arg: 2, scope: !5260, file: !548, line: 197, type: !35)
!5273 = !DILocalVariable(name: "package", arg: 3, scope: !5260, file: !548, line: 197, type: !35)
!5274 = !DILocalVariable(name: "version", arg: 4, scope: !5260, file: !548, line: 198, type: !35)
!5275 = !DILocalVariable(name: "authors", arg: 5, scope: !5260, file: !548, line: 198, type: !5263)
!5276 = !DILocalVariable(name: "n_authors", scope: !5260, file: !548, line: 200, type: !27)
!5277 = !DILocalVariable(name: "authtab", scope: !5260, file: !548, line: 201, type: !5278)
!5278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !139)
!5279 = !DILocation(line: 196, column: 23, scope: !5260)
!5280 = !DILocation(line: 197, column: 29, scope: !5260)
!5281 = !DILocation(line: 197, column: 55, scope: !5260)
!5282 = !DILocation(line: 198, column: 29, scope: !5260)
!5283 = !DILocation(line: 198, column: 46, scope: !5260)
!5284 = !DILocation(line: 201, column: 3, scope: !5260)
!5285 = !DILocation(line: 201, column: 15, scope: !5260)
!5286 = !DILocation(line: 200, column: 10, scope: !5260)
!5287 = !DILocation(line: 205, column: 35, scope: !5288)
!5288 = !DILexicalBlockFile(scope: !5289, file: !548, discriminator: 1)
!5289 = distinct !DILexicalBlock(scope: !5290, file: !548, line: 203, column: 3)
!5290 = distinct !DILexicalBlock(scope: !5260, file: !548, line: 203, column: 3)
!5291 = !DILocation(line: 205, column: 35, scope: !5292)
!5292 = !DILexicalBlockFile(scope: !5289, file: !548, discriminator: 2)
!5293 = !DILocation(line: 205, column: 35, scope: !5294)
!5294 = !DILexicalBlockFile(scope: !5289, file: !548, discriminator: 3)
!5295 = !DILocation(line: 205, column: 35, scope: !5296)
!5296 = !DILexicalBlockFile(scope: !5289, file: !548, discriminator: 4)
!5297 = !DILocation(line: 205, column: 14, scope: !5296)
!5298 = !DILocation(line: 205, column: 33, scope: !5296)
!5299 = !DILocation(line: 205, column: 67, scope: !5296)
!5300 = !DILocation(line: 203, column: 3, scope: !5301)
!5301 = !DILexicalBlockFile(scope: !5290, file: !548, discriminator: 1)
!5302 = !DILocation(line: 208, column: 3, scope: !5260)
!5303 = !DILocation(line: 210, column: 1, scope: !5260)
!5304 = distinct !DISubprogram(name: "version_etc", scope: !548, file: !548, line: 227, type: !5305, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !5307)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{null, !5122, !35, !35, !35, null}
!5307 = !{!5308, !5309, !5310, !5311, !5312}
!5308 = !DILocalVariable(name: "stream", arg: 1, scope: !5304, file: !548, line: 227, type: !5122)
!5309 = !DILocalVariable(name: "command_name", arg: 2, scope: !5304, file: !548, line: 228, type: !35)
!5310 = !DILocalVariable(name: "package", arg: 3, scope: !5304, file: !548, line: 228, type: !35)
!5311 = !DILocalVariable(name: "version", arg: 4, scope: !5304, file: !548, line: 229, type: !35)
!5312 = !DILocalVariable(name: "authors", scope: !5304, file: !548, line: 231, type: !5313)
!5313 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !802, line: 80, baseType: !5314)
!5314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !804, line: 50, baseType: !5315)
!5315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !545, line: 231, baseType: !5316)
!5316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5264, size: 192, elements: !813)
!5317 = !DILocation(line: 227, column: 20, scope: !5304)
!5318 = !DILocation(line: 228, column: 26, scope: !5304)
!5319 = !DILocation(line: 228, column: 52, scope: !5304)
!5320 = !DILocation(line: 229, column: 26, scope: !5304)
!5321 = !DILocation(line: 231, column: 3, scope: !5304)
!5322 = !DILocation(line: 231, column: 11, scope: !5304)
!5323 = !DILocation(line: 233, column: 3, scope: !5304)
!5324 = !DILocation(line: 234, column: 3, scope: !5304)
!5325 = !DILocation(line: 235, column: 3, scope: !5304)
!5326 = !DILocation(line: 236, column: 1, scope: !5304)
!5327 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !548, file: !548, line: 239, type: !1327, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !83)
!5328 = !DILocation(line: 245, column: 3, scope: !5327)
!5329 = !DILocation(line: 245, column: 3, scope: !5330)
!5330 = !DILexicalBlockFile(scope: !5327, file: !548, discriminator: 1)
!5331 = !DILocation(line: 251, column: 3, scope: !5327)
!5332 = !DILocation(line: 251, column: 3, scope: !5330)
!5333 = !DILocation(line: 256, column: 3, scope: !5327)
!5334 = !DILocation(line: 256, column: 3, scope: !5330)
!5335 = !DILocation(line: 258, column: 1, scope: !5327)
!5336 = distinct !DISubprogram(name: "xnmalloc", scope: !556, file: !556, line: 105, type: !5337, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5339)
!5337 = !DISubroutineType(types: !5338)
!5338 = !{!39, !27, !27}
!5339 = !{!5340, !5341}
!5340 = !DILocalVariable(name: "n", arg: 1, scope: !5336, file: !556, line: 105, type: !27)
!5341 = !DILocalVariable(name: "s", arg: 2, scope: !5336, file: !556, line: 105, type: !27)
!5342 = !DILocation(line: 105, column: 18, scope: !5336)
!5343 = !DILocation(line: 105, column: 28, scope: !5336)
!5344 = !DILocation(line: 107, column: 7, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5336, file: !556, line: 107, column: 7)
!5346 = !DILocation(line: 107, column: 7, scope: !5336)
!5347 = !DILocation(line: 108, column: 5, scope: !5345)
!5348 = !DILocation(line: 109, column: 21, scope: !5336)
!5349 = !DILocalVariable(name: "n", arg: 1, scope: !5350, file: !5351, line: 39, type: !27)
!5350 = distinct !DISubprogram(name: "xmalloc", scope: !5351, file: !5351, line: 39, type: !5352, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5354)
!5351 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!39, !27}
!5354 = !{!5349, !5355}
!5355 = !DILocalVariable(name: "p", scope: !5350, file: !5351, line: 41, type: !39)
!5356 = !DILocation(line: 39, column: 17, scope: !5350, inlinedAt: !5357)
!5357 = distinct !DILocation(line: 109, column: 10, scope: !5336)
!5358 = !DILocation(line: 41, column: 13, scope: !5350, inlinedAt: !5357)
!5359 = !DILocation(line: 41, column: 9, scope: !5350, inlinedAt: !5357)
!5360 = !DILocation(line: 42, column: 8, scope: !5361, inlinedAt: !5357)
!5361 = distinct !DILexicalBlock(scope: !5350, file: !5351, line: 42, column: 7)
!5362 = !DILocation(line: 42, column: 15, scope: !5363, inlinedAt: !5357)
!5363 = !DILexicalBlockFile(scope: !5361, file: !5351, discriminator: 1)
!5364 = !DILocation(line: 42, column: 10, scope: !5361, inlinedAt: !5357)
!5365 = !DILocation(line: 43, column: 5, scope: !5361, inlinedAt: !5357)
!5366 = !DILocation(line: 109, column: 3, scope: !5336)
!5367 = !DILocation(line: 39, column: 17, scope: !5350)
!5368 = !DILocation(line: 41, column: 13, scope: !5350)
!5369 = !DILocation(line: 41, column: 9, scope: !5350)
!5370 = !DILocation(line: 42, column: 8, scope: !5361)
!5371 = !DILocation(line: 42, column: 15, scope: !5363)
!5372 = !DILocation(line: 42, column: 10, scope: !5361)
!5373 = !DILocation(line: 43, column: 5, scope: !5361)
!5374 = !DILocation(line: 44, column: 3, scope: !5350)
!5375 = distinct !DISubprogram(name: "xnrealloc", scope: !556, file: !556, line: 118, type: !5376, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5378)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!39, !39, !27, !27}
!5378 = !{!5379, !5380, !5381}
!5379 = !DILocalVariable(name: "p", arg: 1, scope: !5375, file: !556, line: 118, type: !39)
!5380 = !DILocalVariable(name: "n", arg: 2, scope: !5375, file: !556, line: 118, type: !27)
!5381 = !DILocalVariable(name: "s", arg: 3, scope: !5375, file: !556, line: 118, type: !27)
!5382 = !DILocation(line: 118, column: 18, scope: !5375)
!5383 = !DILocation(line: 118, column: 28, scope: !5375)
!5384 = !DILocation(line: 118, column: 38, scope: !5375)
!5385 = !DILocation(line: 120, column: 7, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5375, file: !556, line: 120, column: 7)
!5387 = !DILocation(line: 120, column: 7, scope: !5375)
!5388 = !DILocation(line: 121, column: 5, scope: !5386)
!5389 = !DILocation(line: 122, column: 25, scope: !5375)
!5390 = !DILocalVariable(name: "p", arg: 1, scope: !5391, file: !5351, line: 51, type: !39)
!5391 = distinct !DISubprogram(name: "xrealloc", scope: !5351, file: !5351, line: 51, type: !5392, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5394)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!39, !39, !27}
!5394 = !{!5390, !5395}
!5395 = !DILocalVariable(name: "n", arg: 2, scope: !5391, file: !5351, line: 51, type: !27)
!5396 = !DILocation(line: 51, column: 17, scope: !5391, inlinedAt: !5397)
!5397 = distinct !DILocation(line: 122, column: 10, scope: !5375)
!5398 = !DILocation(line: 51, column: 27, scope: !5391, inlinedAt: !5397)
!5399 = !DILocation(line: 53, column: 8, scope: !5400, inlinedAt: !5397)
!5400 = distinct !DILexicalBlock(scope: !5391, file: !5351, line: 53, column: 7)
!5401 = !DILocation(line: 53, column: 13, scope: !5402, inlinedAt: !5397)
!5402 = !DILexicalBlockFile(scope: !5400, file: !5351, discriminator: 1)
!5403 = !DILocation(line: 53, column: 10, scope: !5400, inlinedAt: !5397)
!5404 = !DILocation(line: 57, column: 7, scope: !5405, inlinedAt: !5397)
!5405 = distinct !DILexicalBlock(scope: !5400, file: !5351, line: 54, column: 5)
!5406 = !DILocation(line: 58, column: 7, scope: !5405, inlinedAt: !5397)
!5407 = !DILocation(line: 61, column: 7, scope: !5391, inlinedAt: !5397)
!5408 = !DILocation(line: 62, column: 8, scope: !5409, inlinedAt: !5397)
!5409 = distinct !DILexicalBlock(scope: !5391, file: !5351, line: 62, column: 7)
!5410 = !DILocation(line: 62, column: 13, scope: !5411, inlinedAt: !5397)
!5411 = !DILexicalBlockFile(scope: !5409, file: !5351, discriminator: 1)
!5412 = !DILocation(line: 62, column: 10, scope: !5409, inlinedAt: !5397)
!5413 = !DILocation(line: 63, column: 5, scope: !5409, inlinedAt: !5397)
!5414 = !DILocation(line: 122, column: 3, scope: !5375)
!5415 = !DILocation(line: 51, column: 17, scope: !5391)
!5416 = !DILocation(line: 51, column: 27, scope: !5391)
!5417 = !DILocation(line: 53, column: 8, scope: !5400)
!5418 = !DILocation(line: 53, column: 13, scope: !5402)
!5419 = !DILocation(line: 53, column: 10, scope: !5400)
!5420 = !DILocation(line: 57, column: 7, scope: !5405)
!5421 = !DILocation(line: 58, column: 7, scope: !5405)
!5422 = !DILocation(line: 61, column: 7, scope: !5391)
!5423 = !DILocation(line: 62, column: 8, scope: !5409)
!5424 = !DILocation(line: 62, column: 13, scope: !5411)
!5425 = !DILocation(line: 62, column: 10, scope: !5409)
!5426 = !DILocation(line: 63, column: 5, scope: !5409)
!5427 = !DILocation(line: 65, column: 1, scope: !5391)
!5428 = !DILocation(line: 180, column: 19, scope: !557)
!5429 = !DILocation(line: 180, column: 30, scope: !557)
!5430 = !DILocation(line: 180, column: 41, scope: !557)
!5431 = !DILocation(line: 182, column: 14, scope: !557)
!5432 = !DILocation(line: 182, column: 10, scope: !557)
!5433 = !DILocation(line: 184, column: 9, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !557, file: !556, line: 184, column: 7)
!5435 = !DILocation(line: 184, column: 7, scope: !557)
!5436 = !DILocation(line: 186, column: 13, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !556, line: 186, column: 11)
!5438 = distinct !DILexicalBlock(scope: !5434, file: !556, line: 185, column: 5)
!5439 = !DILocation(line: 186, column: 11, scope: !5438)
!5440 = !DILocation(line: 194, column: 30, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5437, file: !556, line: 187, column: 9)
!5442 = !DILocation(line: 195, column: 16, scope: !5441)
!5443 = !DILocation(line: 195, column: 13, scope: !5441)
!5444 = !DILocation(line: 196, column: 9, scope: !5441)
!5445 = !DILocation(line: 204, column: 69, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5447, file: !556, line: 204, column: 11)
!5447 = distinct !DILexicalBlock(scope: !5434, file: !556, line: 199, column: 5)
!5448 = !DILocation(line: 205, column: 11, scope: !5446)
!5449 = !DILocation(line: 204, column: 11, scope: !5447)
!5450 = !DILocation(line: 206, column: 9, scope: !5446)
!5451 = !DILocation(line: 210, column: 7, scope: !557)
!5452 = !DILocation(line: 211, column: 25, scope: !557)
!5453 = !DILocation(line: 51, column: 17, scope: !5391, inlinedAt: !5454)
!5454 = distinct !DILocation(line: 211, column: 10, scope: !557)
!5455 = !DILocation(line: 51, column: 27, scope: !5391, inlinedAt: !5454)
!5456 = !DILocation(line: 53, column: 10, scope: !5400, inlinedAt: !5454)
!5457 = !DILocation(line: 207, column: 14, scope: !5447)
!5458 = !DILocation(line: 207, column: 18, scope: !5447)
!5459 = !DILocation(line: 207, column: 9, scope: !5447)
!5460 = !DILocation(line: 53, column: 8, scope: !5400, inlinedAt: !5454)
!5461 = !DILocation(line: 57, column: 7, scope: !5405, inlinedAt: !5454)
!5462 = !DILocation(line: 58, column: 7, scope: !5405, inlinedAt: !5454)
!5463 = !DILocation(line: 61, column: 7, scope: !5391, inlinedAt: !5454)
!5464 = !DILocation(line: 62, column: 8, scope: !5409, inlinedAt: !5454)
!5465 = !DILocation(line: 62, column: 13, scope: !5411, inlinedAt: !5454)
!5466 = !DILocation(line: 62, column: 10, scope: !5409, inlinedAt: !5454)
!5467 = !DILocation(line: 63, column: 5, scope: !5409, inlinedAt: !5454)
!5468 = !DILocation(line: 211, column: 3, scope: !557)
!5469 = distinct !DISubprogram(name: "xcharalloc", scope: !556, file: !556, line: 220, type: !4110, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5470)
!5470 = !{!5471}
!5471 = !DILocalVariable(name: "n", arg: 1, scope: !5469, file: !556, line: 220, type: !27)
!5472 = !DILocation(line: 220, column: 20, scope: !5469)
!5473 = !DILocation(line: 39, column: 17, scope: !5350, inlinedAt: !5474)
!5474 = distinct !DILocation(line: 222, column: 10, scope: !5469)
!5475 = !DILocation(line: 41, column: 13, scope: !5350, inlinedAt: !5474)
!5476 = !DILocation(line: 41, column: 9, scope: !5350, inlinedAt: !5474)
!5477 = !DILocation(line: 42, column: 8, scope: !5361, inlinedAt: !5474)
!5478 = !DILocation(line: 42, column: 15, scope: !5363, inlinedAt: !5474)
!5479 = !DILocation(line: 42, column: 10, scope: !5361, inlinedAt: !5474)
!5480 = !DILocation(line: 43, column: 5, scope: !5361, inlinedAt: !5474)
!5481 = !DILocation(line: 222, column: 3, scope: !5469)
!5482 = distinct !DISubprogram(name: "x2realloc", scope: !5351, file: !5351, line: 74, type: !5483, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5485)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!39, !39, !560}
!5485 = !{!5486, !5487}
!5486 = !DILocalVariable(name: "p", arg: 1, scope: !5482, file: !5351, line: 74, type: !39)
!5487 = !DILocalVariable(name: "pn", arg: 2, scope: !5482, file: !5351, line: 74, type: !560)
!5488 = !DILocation(line: 74, column: 18, scope: !5482)
!5489 = !DILocation(line: 74, column: 29, scope: !5482)
!5490 = !DILocation(line: 180, column: 19, scope: !557, inlinedAt: !5491)
!5491 = distinct !DILocation(line: 76, column: 10, scope: !5482)
!5492 = !DILocation(line: 180, column: 30, scope: !557, inlinedAt: !5491)
!5493 = !DILocation(line: 180, column: 41, scope: !557, inlinedAt: !5491)
!5494 = !DILocation(line: 182, column: 14, scope: !557, inlinedAt: !5491)
!5495 = !DILocation(line: 182, column: 10, scope: !557, inlinedAt: !5491)
!5496 = !DILocation(line: 184, column: 9, scope: !5434, inlinedAt: !5491)
!5497 = !DILocation(line: 184, column: 7, scope: !557, inlinedAt: !5491)
!5498 = !DILocation(line: 186, column: 13, scope: !5437, inlinedAt: !5491)
!5499 = !DILocation(line: 186, column: 11, scope: !5438, inlinedAt: !5491)
!5500 = !DILocation(line: 210, column: 7, scope: !557, inlinedAt: !5491)
!5501 = !DILocation(line: 51, column: 17, scope: !5391, inlinedAt: !5502)
!5502 = distinct !DILocation(line: 211, column: 10, scope: !557, inlinedAt: !5491)
!5503 = !DILocation(line: 51, column: 27, scope: !5391, inlinedAt: !5502)
!5504 = !DILocation(line: 53, column: 10, scope: !5400, inlinedAt: !5502)
!5505 = !DILocation(line: 205, column: 11, scope: !5446, inlinedAt: !5491)
!5506 = !DILocation(line: 204, column: 11, scope: !5447, inlinedAt: !5491)
!5507 = !DILocation(line: 206, column: 9, scope: !5446, inlinedAt: !5491)
!5508 = !DILocation(line: 207, column: 14, scope: !5447, inlinedAt: !5491)
!5509 = !DILocation(line: 207, column: 18, scope: !5447, inlinedAt: !5491)
!5510 = !DILocation(line: 207, column: 9, scope: !5447, inlinedAt: !5491)
!5511 = !DILocation(line: 53, column: 8, scope: !5400, inlinedAt: !5502)
!5512 = !DILocation(line: 57, column: 7, scope: !5405, inlinedAt: !5502)
!5513 = !DILocation(line: 58, column: 7, scope: !5405, inlinedAt: !5502)
!5514 = !DILocation(line: 61, column: 7, scope: !5391, inlinedAt: !5502)
!5515 = !DILocation(line: 62, column: 8, scope: !5409, inlinedAt: !5502)
!5516 = !DILocation(line: 62, column: 13, scope: !5411, inlinedAt: !5502)
!5517 = !DILocation(line: 62, column: 10, scope: !5409, inlinedAt: !5502)
!5518 = !DILocation(line: 63, column: 5, scope: !5409, inlinedAt: !5502)
!5519 = !DILocation(line: 76, column: 3, scope: !5482)
!5520 = distinct !DISubprogram(name: "xzalloc", scope: !5351, file: !5351, line: 84, type: !5352, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5521)
!5521 = !{!5522}
!5522 = !DILocalVariable(name: "s", arg: 1, scope: !5520, file: !5351, line: 84, type: !27)
!5523 = !DILocation(line: 84, column: 17, scope: !5520)
!5524 = !DILocation(line: 39, column: 17, scope: !5350, inlinedAt: !5525)
!5525 = distinct !DILocation(line: 86, column: 18, scope: !5520)
!5526 = !DILocation(line: 41, column: 13, scope: !5350, inlinedAt: !5525)
!5527 = !DILocation(line: 41, column: 9, scope: !5350, inlinedAt: !5525)
!5528 = !DILocation(line: 42, column: 8, scope: !5361, inlinedAt: !5525)
!5529 = !DILocation(line: 42, column: 15, scope: !5363, inlinedAt: !5525)
!5530 = !DILocation(line: 42, column: 10, scope: !5361, inlinedAt: !5525)
!5531 = !DILocation(line: 43, column: 5, scope: !5361, inlinedAt: !5525)
!5532 = !DILocation(line: 86, column: 10, scope: !5520)
!5533 = !DILocation(line: 86, column: 3, scope: !5520)
!5534 = distinct !DISubprogram(name: "xcalloc", scope: !5351, file: !5351, line: 93, type: !5337, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5535)
!5535 = !{!5536, !5537, !5538}
!5536 = !DILocalVariable(name: "n", arg: 1, scope: !5534, file: !5351, line: 93, type: !27)
!5537 = !DILocalVariable(name: "s", arg: 2, scope: !5534, file: !5351, line: 93, type: !27)
!5538 = !DILocalVariable(name: "p", scope: !5534, file: !5351, line: 95, type: !39)
!5539 = !DILocation(line: 93, column: 17, scope: !5534)
!5540 = !DILocation(line: 93, column: 27, scope: !5534)
!5541 = !DILocation(line: 100, column: 7, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5534, file: !5351, line: 100, column: 7)
!5543 = !DILocation(line: 101, column: 7, scope: !5542)
!5544 = !DILocation(line: 101, column: 18, scope: !5545)
!5545 = !DILexicalBlockFile(scope: !5542, file: !5351, discriminator: 1)
!5546 = !DILocation(line: 95, column: 9, scope: !5534)
!5547 = !DILocation(line: 101, column: 16, scope: !5545)
!5548 = !DILocation(line: 100, column: 7, scope: !5549)
!5549 = !DILexicalBlockFile(scope: !5534, file: !5351, discriminator: 1)
!5550 = !DILocation(line: 102, column: 5, scope: !5542)
!5551 = !DILocation(line: 103, column: 3, scope: !5534)
!5552 = distinct !DISubprogram(name: "xmemdup", scope: !5351, file: !5351, line: 111, type: !5553, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5555)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!39, !30, !27}
!5555 = !{!5556, !5557}
!5556 = !DILocalVariable(name: "p", arg: 1, scope: !5552, file: !5351, line: 111, type: !30)
!5557 = !DILocalVariable(name: "s", arg: 2, scope: !5552, file: !5351, line: 111, type: !27)
!5558 = !DILocation(line: 111, column: 22, scope: !5552)
!5559 = !DILocation(line: 111, column: 32, scope: !5552)
!5560 = !DILocation(line: 39, column: 17, scope: !5350, inlinedAt: !5561)
!5561 = distinct !DILocation(line: 113, column: 18, scope: !5552)
!5562 = !DILocation(line: 41, column: 13, scope: !5350, inlinedAt: !5561)
!5563 = !DILocation(line: 41, column: 9, scope: !5350, inlinedAt: !5561)
!5564 = !DILocation(line: 42, column: 8, scope: !5361, inlinedAt: !5561)
!5565 = !DILocation(line: 42, column: 15, scope: !5363, inlinedAt: !5561)
!5566 = !DILocation(line: 42, column: 10, scope: !5361, inlinedAt: !5561)
!5567 = !DILocation(line: 43, column: 5, scope: !5361, inlinedAt: !5561)
!5568 = !DILocation(line: 113, column: 10, scope: !5552)
!5569 = !DILocation(line: 113, column: 3, scope: !5552)
!5570 = distinct !DISubprogram(name: "xstrdup", scope: !5351, file: !5351, line: 119, type: !4316, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !5571)
!5571 = !{!5572}
!5572 = !DILocalVariable(name: "string", arg: 1, scope: !5570, file: !5351, line: 119, type: !35)
!5573 = !DILocation(line: 119, column: 22, scope: !5570)
!5574 = !DILocation(line: 121, column: 27, scope: !5570)
!5575 = !DILocation(line: 121, column: 43, scope: !5570)
!5576 = !DILocation(line: 111, column: 22, scope: !5552, inlinedAt: !5577)
!5577 = distinct !DILocation(line: 121, column: 10, scope: !5578)
!5578 = !DILexicalBlockFile(scope: !5570, file: !5351, discriminator: 1)
!5579 = !DILocation(line: 111, column: 32, scope: !5552, inlinedAt: !5577)
!5580 = !DILocation(line: 39, column: 17, scope: !5350, inlinedAt: !5581)
!5581 = distinct !DILocation(line: 113, column: 18, scope: !5552, inlinedAt: !5577)
!5582 = !DILocation(line: 41, column: 13, scope: !5350, inlinedAt: !5581)
!5583 = !DILocation(line: 41, column: 9, scope: !5350, inlinedAt: !5581)
!5584 = !DILocation(line: 42, column: 8, scope: !5361, inlinedAt: !5581)
!5585 = !DILocation(line: 42, column: 15, scope: !5363, inlinedAt: !5581)
!5586 = !DILocation(line: 42, column: 10, scope: !5361, inlinedAt: !5581)
!5587 = !DILocation(line: 43, column: 5, scope: !5361, inlinedAt: !5581)
!5588 = !DILocation(line: 113, column: 10, scope: !5552, inlinedAt: !5577)
!5589 = !DILocation(line: 121, column: 3, scope: !5570)
!5590 = distinct !DISubprogram(name: "xalloc_die", scope: !5591, file: !5591, line: 32, type: !1327, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !569, variables: !83)
!5591 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5592 = !DILocation(line: 34, column: 10, scope: !5590)
!5593 = !DILocation(line: 34, column: 33, scope: !5590)
!5594 = !DILocation(line: 34, column: 3, scope: !5595)
!5595 = !DILexicalBlockFile(scope: !5590, file: !5591, discriminator: 1)
!5596 = !DILocation(line: 40, column: 3, scope: !5590)
!5597 = distinct !DISubprogram(name: "xvasprintf", scope: !5598, file: !5598, line: 76, type: !5599, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !5608)
!5598 = !DIFile(filename: "lib/xvasprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!38, !35, !5601}
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !572, size: 192, elements: !5603)
!5603 = !{!5604, !5605, !5606, !5607}
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5602, file: !572, baseType: !42, size: 32)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5602, file: !572, baseType: !42, size: 32, offset: 32)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5602, file: !572, baseType: !39, size: 64, offset: 64)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5602, file: !572, baseType: !39, size: 64, offset: 128)
!5608 = !{!5609, !5610, !5611, !5612, !5614}
!5609 = !DILocalVariable(name: "format", arg: 1, scope: !5597, file: !5598, line: 76, type: !35)
!5610 = !DILocalVariable(name: "args", arg: 2, scope: !5597, file: !5598, line: 76, type: !5601)
!5611 = !DILocalVariable(name: "result", scope: !5597, file: !5598, line: 78, type: !38)
!5612 = !DILocalVariable(name: "argcount", scope: !5613, file: !5598, line: 84, type: !27)
!5613 = distinct !DILexicalBlock(scope: !5597, file: !5598, line: 83, column: 3)
!5614 = !DILocalVariable(name: "f", scope: !5613, file: !5598, line: 85, type: !35)
!5615 = !DILocalVariable(name: "ap", scope: !5616, file: !5598, line: 36, type: !5635)
!5616 = distinct !DISubprogram(name: "xstrcat", scope: !5598, file: !5598, line: 33, type: !5617, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !5619)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{!38, !27, !5601}
!5619 = !{!5620, !5621, !5622, !5615, !5623, !5624, !5625, !5626, !5630, !5634}
!5620 = !DILocalVariable(name: "argcount", arg: 1, scope: !5616, file: !5598, line: 33, type: !27)
!5621 = !DILocalVariable(name: "args", arg: 2, scope: !5616, file: !5598, line: 33, type: !5601)
!5622 = !DILocalVariable(name: "result", scope: !5616, file: !5598, line: 35, type: !38)
!5623 = !DILocalVariable(name: "totalsize", scope: !5616, file: !5598, line: 37, type: !27)
!5624 = !DILocalVariable(name: "i", scope: !5616, file: !5598, line: 38, type: !27)
!5625 = !DILocalVariable(name: "p", scope: !5616, file: !5598, line: 39, type: !38)
!5626 = !DILocalVariable(name: "next", scope: !5627, file: !5598, line: 46, type: !35)
!5627 = distinct !DILexicalBlock(scope: !5628, file: !5598, line: 45, column: 5)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !5598, line: 44, column: 3)
!5629 = distinct !DILexicalBlock(scope: !5616, file: !5598, line: 44, column: 3)
!5630 = !DILocalVariable(name: "next", scope: !5631, file: !5598, line: 65, type: !35)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !5598, line: 64, column: 5)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !5598, line: 63, column: 3)
!5633 = distinct !DILexicalBlock(scope: !5616, file: !5598, line: 63, column: 3)
!5634 = !DILocalVariable(name: "len", scope: !5631, file: !5598, line: 66, type: !27)
!5635 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !802, line: 80, baseType: !5636)
!5636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !804, line: 50, baseType: !5637)
!5637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !572, line: 36, baseType: !5638)
!5638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5602, size: 192, elements: !813)
!5639 = !DILocation(line: 36, column: 11, scope: !5616, inlinedAt: !5640)
!5640 = distinct !DILocation(line: 91, column: 18, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5642, file: !5598, line: 89, column: 13)
!5642 = distinct !DILexicalBlock(scope: !5643, file: !5598, line: 88, column: 7)
!5643 = distinct !DILexicalBlock(scope: !5644, file: !5598, line: 87, column: 5)
!5644 = distinct !DILexicalBlock(scope: !5613, file: !5598, line: 87, column: 5)
!5645 = !DILocation(line: 76, column: 25, scope: !5597)
!5646 = !DILocation(line: 76, column: 41, scope: !5597)
!5647 = !DILocation(line: 78, column: 3, scope: !5597)
!5648 = !DILocation(line: 84, column: 12, scope: !5613)
!5649 = !DILocation(line: 85, column: 17, scope: !5613)
!5650 = !DILocation(line: 87, column: 10, scope: !5644)
!5651 = !DILocation(line: 89, column: 13, scope: !5641)
!5652 = !DILocation(line: 89, column: 13, scope: !5642)
!5653 = !DILocation(line: 33, column: 17, scope: !5616, inlinedAt: !5640)
!5654 = !DILocation(line: 33, column: 35, scope: !5616, inlinedAt: !5640)
!5655 = !DILocation(line: 36, column: 3, scope: !5616, inlinedAt: !5640)
!5656 = !DILocation(line: 37, column: 10, scope: !5616, inlinedAt: !5640)
!5657 = !DILocation(line: 43, column: 3, scope: !5616, inlinedAt: !5640)
!5658 = !DILocation(line: 38, column: 10, scope: !5616, inlinedAt: !5640)
!5659 = !DILocation(line: 44, column: 24, scope: !5660, inlinedAt: !5640)
!5660 = !DILexicalBlockFile(scope: !5628, file: !5598, discriminator: 1)
!5661 = !DILocation(line: 44, column: 3, scope: !5662, inlinedAt: !5640)
!5662 = !DILexicalBlockFile(scope: !5629, file: !5598, discriminator: 1)
!5663 = !DILocation(line: 49, column: 3, scope: !5616, inlinedAt: !5640)
!5664 = !DILocation(line: 61, column: 12, scope: !5616, inlinedAt: !5640)
!5665 = !DILocation(line: 35, column: 9, scope: !5616, inlinedAt: !5640)
!5666 = !DILocation(line: 39, column: 9, scope: !5616, inlinedAt: !5640)
!5667 = !DILocation(line: 63, column: 3, scope: !5668, inlinedAt: !5640)
!5668 = !DILexicalBlockFile(scope: !5633, file: !5598, discriminator: 1)
!5669 = !DILocation(line: 46, column: 26, scope: !5627, inlinedAt: !5640)
!5670 = !DILocation(line: 46, column: 26, scope: !5671, inlinedAt: !5640)
!5671 = !DILexicalBlockFile(scope: !5627, file: !5598, discriminator: 1)
!5672 = !DILocation(line: 46, column: 26, scope: !5673, inlinedAt: !5640)
!5673 = !DILexicalBlockFile(scope: !5627, file: !5598, discriminator: 2)
!5674 = !DILocation(line: 46, column: 26, scope: !5675, inlinedAt: !5640)
!5675 = !DILexicalBlockFile(scope: !5627, file: !5598, discriminator: 3)
!5676 = !DILocation(line: 46, column: 19, scope: !5627, inlinedAt: !5640)
!5677 = !DILocation(line: 47, column: 36, scope: !5627, inlinedAt: !5640)
!5678 = !DILocalVariable(name: "size1", arg: 1, scope: !5679, file: !5680, line: 63, type: !27)
!5679 = distinct !DISubprogram(name: "xsum", scope: !5680, file: !5680, line: 63, type: !5681, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !5683)
!5680 = !DIFile(filename: "./lib/xsize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!27, !27, !27}
!5683 = !{!5678, !5684, !5685}
!5684 = !DILocalVariable(name: "size2", arg: 2, scope: !5679, file: !5680, line: 63, type: !27)
!5685 = !DILocalVariable(name: "sum", scope: !5679, file: !5680, line: 65, type: !27)
!5686 = !DILocation(line: 63, column: 14, scope: !5679, inlinedAt: !5687)
!5687 = distinct !DILocation(line: 47, column: 19, scope: !5671, inlinedAt: !5640)
!5688 = !DILocation(line: 63, column: 28, scope: !5679, inlinedAt: !5687)
!5689 = !DILocation(line: 65, column: 22, scope: !5679, inlinedAt: !5687)
!5690 = !DILocation(line: 65, column: 10, scope: !5679, inlinedAt: !5687)
!5691 = !DILocation(line: 66, column: 15, scope: !5679, inlinedAt: !5687)
!5692 = !DILocation(line: 66, column: 11, scope: !5679, inlinedAt: !5687)
!5693 = !DILocation(line: 44, column: 30, scope: !5694, inlinedAt: !5640)
!5694 = !DILexicalBlockFile(scope: !5628, file: !5598, discriminator: 2)
!5695 = distinct !{!5695, !5696, !5697}
!5696 = !DILocation(line: 44, column: 3, scope: !5629)
!5697 = !DILocation(line: 48, column: 5, scope: !5629)
!5698 = !DILocation(line: 54, column: 42, scope: !5699, inlinedAt: !5640)
!5699 = !DILexicalBlockFile(scope: !5700, file: !5598, discriminator: 1)
!5700 = distinct !DILexicalBlock(scope: !5616, file: !5598, line: 54, column: 7)
!5701 = !DILocation(line: 54, column: 29, scope: !5700, inlinedAt: !5640)
!5702 = !DILocation(line: 56, column: 7, scope: !5703, inlinedAt: !5640)
!5703 = distinct !DILexicalBlock(scope: !5700, file: !5598, line: 55, column: 5)
!5704 = !DILocation(line: 56, column: 13, scope: !5703, inlinedAt: !5640)
!5705 = !DILocation(line: 57, column: 7, scope: !5703, inlinedAt: !5640)
!5706 = !DILocation(line: 65, column: 26, scope: !5631, inlinedAt: !5640)
!5707 = !DILocation(line: 65, column: 26, scope: !5708, inlinedAt: !5640)
!5708 = !DILexicalBlockFile(scope: !5631, file: !5598, discriminator: 1)
!5709 = !DILocation(line: 65, column: 26, scope: !5710, inlinedAt: !5640)
!5710 = !DILexicalBlockFile(scope: !5631, file: !5598, discriminator: 2)
!5711 = !DILocation(line: 65, column: 26, scope: !5712, inlinedAt: !5640)
!5712 = !DILexicalBlockFile(scope: !5631, file: !5598, discriminator: 3)
!5713 = !DILocation(line: 65, column: 19, scope: !5631, inlinedAt: !5640)
!5714 = !DILocation(line: 66, column: 20, scope: !5631, inlinedAt: !5640)
!5715 = !DILocation(line: 66, column: 14, scope: !5631, inlinedAt: !5640)
!5716 = !DILocation(line: 67, column: 7, scope: !5631, inlinedAt: !5640)
!5717 = !DILocation(line: 68, column: 9, scope: !5631, inlinedAt: !5640)
!5718 = !DILocation(line: 63, column: 30, scope: !5719, inlinedAt: !5640)
!5719 = !DILexicalBlockFile(scope: !5632, file: !5598, discriminator: 2)
!5720 = !DILocation(line: 63, column: 24, scope: !5721, inlinedAt: !5640)
!5721 = !DILexicalBlockFile(scope: !5632, file: !5598, discriminator: 1)
!5722 = distinct !{!5722, !5723, !5724}
!5723 = !DILocation(line: 63, column: 3, scope: !5633)
!5724 = !DILocation(line: 69, column: 5, scope: !5633)
!5725 = !DILocation(line: 70, column: 6, scope: !5616, inlinedAt: !5640)
!5726 = !DILocation(line: 72, column: 3, scope: !5616, inlinedAt: !5640)
!5727 = !DILocation(line: 94, column: 10, scope: !5642)
!5728 = !DILocation(line: 95, column: 13, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5642, file: !5598, line: 95, column: 13)
!5730 = !DILocation(line: 95, column: 16, scope: !5729)
!5731 = !DILocation(line: 95, column: 13, scope: !5642)
!5732 = !DILocation(line: 97, column: 10, scope: !5642)
!5733 = !DILocation(line: 98, column: 17, scope: !5642)
!5734 = !DILocation(line: 87, column: 5, scope: !5735)
!5735 = !DILexicalBlockFile(scope: !5643, file: !5598, discriminator: 1)
!5736 = distinct !{!5736, !5737, !5738}
!5737 = !DILocation(line: 87, column: 5, scope: !5644)
!5738 = !DILocation(line: 99, column: 7, scope: !5644)
!5739 = !DILocation(line: 73, column: 1, scope: !5616, inlinedAt: !5640)
!5740 = !DILocation(line: 78, column: 9, scope: !5597)
!5741 = !DILocalVariable(name: "__ptr", arg: 1, scope: !5742, file: !5743, line: 207, type: !5746)
!5742 = distinct !DISubprogram(name: "vasprintf", scope: !5743, file: !5743, line: 207, type: !5744, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !5748)
!5743 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!40, !5746, !5747, !5601}
!5746 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!5747 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!5748 = !{!5741, !5749, !5750}
!5749 = !DILocalVariable(name: "__fmt", arg: 2, scope: !5742, file: !5743, line: 207, type: !5747)
!5750 = !DILocalVariable(name: "__ap", arg: 3, scope: !5742, file: !5743, line: 207, type: !5601)
!5751 = !DILocation(line: 207, column: 1, scope: !5742, inlinedAt: !5752)
!5752 = distinct !DILocation(line: 102, column: 7, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5597, file: !5598, line: 102, column: 7)
!5754 = !DILocation(line: 210, column: 10, scope: !5742, inlinedAt: !5752)
!5755 = !DILocation(line: 102, column: 41, scope: !5753)
!5756 = !DILocation(line: 102, column: 7, scope: !5597)
!5757 = !DILocation(line: 104, column: 11, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !5598, line: 104, column: 11)
!5759 = distinct !DILexicalBlock(scope: !5753, file: !5598, line: 103, column: 5)
!5760 = !DILocation(line: 104, column: 17, scope: !5758)
!5761 = !DILocation(line: 104, column: 11, scope: !5759)
!5762 = !DILocation(line: 105, column: 9, scope: !5758)
!5763 = !DILocation(line: 109, column: 10, scope: !5597)
!5764 = !DILocation(line: 109, column: 3, scope: !5597)
!5765 = !DILocation(line: 110, column: 1, scope: !5597)
!5766 = distinct !DISubprogram(name: "rpl_calloc", scope: !5767, file: !5767, line: 42, type: !5337, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !5768)
!5767 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5768 = !{!5769, !5770, !5771, !5772}
!5769 = !DILocalVariable(name: "n", arg: 1, scope: !5766, file: !5767, line: 42, type: !27)
!5770 = !DILocalVariable(name: "s", arg: 2, scope: !5766, file: !5767, line: 42, type: !27)
!5771 = !DILocalVariable(name: "result", scope: !5766, file: !5767, line: 44, type: !39)
!5772 = !DILocalVariable(name: "bytes", scope: !5773, file: !5767, line: 56, type: !27)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !5767, line: 53, column: 5)
!5774 = distinct !DILexicalBlock(scope: !5766, file: !5767, line: 47, column: 7)
!5775 = !DILocation(line: 42, column: 20, scope: !5766)
!5776 = !DILocation(line: 42, column: 30, scope: !5766)
!5777 = !DILocation(line: 47, column: 9, scope: !5774)
!5778 = !DILocation(line: 47, column: 19, scope: !5779)
!5779 = !DILexicalBlockFile(scope: !5774, file: !5767, discriminator: 1)
!5780 = !DILocation(line: 47, column: 14, scope: !5774)
!5781 = !DILocation(line: 56, column: 24, scope: !5773)
!5782 = !DILocation(line: 56, column: 14, scope: !5773)
!5783 = !DILocation(line: 57, column: 17, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5773, file: !5767, line: 57, column: 11)
!5785 = !DILocation(line: 57, column: 21, scope: !5784)
!5786 = !DILocation(line: 57, column: 11, scope: !5773)
!5787 = !DILocation(line: 59, column: 11, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5784, file: !5767, line: 58, column: 9)
!5789 = !DILocation(line: 59, column: 17, scope: !5788)
!5790 = !DILocation(line: 65, column: 12, scope: !5766)
!5791 = !DILocation(line: 44, column: 9, scope: !5766)
!5792 = !DILocation(line: 72, column: 3, scope: !5766)
!5793 = !DILocation(line: 73, column: 1, scope: !5766)
!5794 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5795, file: !5795, line: 334, type: !5796, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !5810)
!5795 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5796 = !DISubroutineType(types: !5797)
!5797 = !{!27, !5798, !35, !27, !5799}
!5798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!5799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5800, size: 64)
!5800 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3083, line: 107, baseType: !5801)
!5801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3083, line: 95, baseType: !5802)
!5802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3083, line: 83, size: 64, elements: !5803)
!5803 = !{!5804, !5805}
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5802, file: !3083, line: 85, baseType: !40, size: 32)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5802, file: !3083, line: 94, baseType: !5806, size: 32, offset: 32)
!5806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5802, file: !3083, line: 86, size: 32, elements: !5807)
!5807 = !{!5808, !5809}
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5806, file: !3083, line: 89, baseType: !42, size: 32)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5806, file: !3083, line: 93, baseType: !3093, size: 32)
!5810 = !{!5811, !5812, !5813, !5814, !5815, !5816, !5817}
!5811 = !DILocalVariable(name: "pwc", arg: 1, scope: !5794, file: !5795, line: 334, type: !5798)
!5812 = !DILocalVariable(name: "s", arg: 2, scope: !5794, file: !5795, line: 334, type: !35)
!5813 = !DILocalVariable(name: "n", arg: 3, scope: !5794, file: !5795, line: 334, type: !27)
!5814 = !DILocalVariable(name: "ps", arg: 4, scope: !5794, file: !5795, line: 334, type: !5799)
!5815 = !DILocalVariable(name: "ret", scope: !5794, file: !5795, line: 336, type: !27)
!5816 = !DILocalVariable(name: "wc", scope: !5794, file: !5795, line: 337, type: !3098)
!5817 = !DILocalVariable(name: "uc", scope: !5818, file: !5795, line: 398, type: !34)
!5818 = distinct !DILexicalBlock(scope: !5819, file: !5795, line: 397, column: 5)
!5819 = distinct !DILexicalBlock(scope: !5794, file: !5795, line: 396, column: 7)
!5820 = !DILocation(line: 334, column: 23, scope: !5794)
!5821 = !DILocation(line: 334, column: 40, scope: !5794)
!5822 = !DILocation(line: 334, column: 50, scope: !5794)
!5823 = !DILocation(line: 334, column: 64, scope: !5794)
!5824 = !DILocation(line: 337, column: 3, scope: !5794)
!5825 = !DILocation(line: 353, column: 9, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5794, file: !5795, line: 353, column: 7)
!5827 = !DILocation(line: 353, column: 7, scope: !5794)
!5828 = !DILocation(line: 388, column: 9, scope: !5794)
!5829 = !DILocation(line: 336, column: 10, scope: !5794)
!5830 = !DILocation(line: 396, column: 19, scope: !5819)
!5831 = !DILocation(line: 396, column: 31, scope: !5832)
!5832 = !DILexicalBlockFile(scope: !5819, file: !5795, discriminator: 1)
!5833 = !DILocation(line: 396, column: 26, scope: !5819)
!5834 = !DILocation(line: 396, column: 41, scope: !5835)
!5835 = !DILexicalBlockFile(scope: !5819, file: !5795, discriminator: 2)
!5836 = !DILocation(line: 396, column: 7, scope: !5837)
!5837 = !DILexicalBlockFile(scope: !5794, file: !5795, discriminator: 2)
!5838 = !DILocation(line: 398, column: 26, scope: !5818)
!5839 = !DILocation(line: 398, column: 21, scope: !5818)
!5840 = !DILocation(line: 399, column: 14, scope: !5818)
!5841 = !DILocation(line: 399, column: 12, scope: !5818)
!5842 = !DILocation(line: 405, column: 1, scope: !5794)
!5843 = distinct !DISubprogram(name: "close_stream", scope: !5844, file: !5844, line: 56, type: !5845, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5887)
!5844 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5845 = !DISubroutineType(types: !5846)
!5846 = !{!40, !5847}
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !802, line: 49, baseType: !5849)
!5849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5125, line: 241, size: 1728, elements: !5850)
!5850 = !{!5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885, !5886}
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5849, file: !5125, line: 242, baseType: !40, size: 32)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5849, file: !5125, line: 247, baseType: !38, size: 64, offset: 64)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5849, file: !5125, line: 248, baseType: !38, size: 64, offset: 128)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5849, file: !5125, line: 249, baseType: !38, size: 64, offset: 192)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5849, file: !5125, line: 250, baseType: !38, size: 64, offset: 256)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5849, file: !5125, line: 251, baseType: !38, size: 64, offset: 320)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5849, file: !5125, line: 252, baseType: !38, size: 64, offset: 384)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5849, file: !5125, line: 253, baseType: !38, size: 64, offset: 448)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5849, file: !5125, line: 254, baseType: !38, size: 64, offset: 512)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5849, file: !5125, line: 256, baseType: !38, size: 64, offset: 576)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5849, file: !5125, line: 257, baseType: !38, size: 64, offset: 640)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5849, file: !5125, line: 258, baseType: !38, size: 64, offset: 704)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5849, file: !5125, line: 260, baseType: !5864, size: 64, offset: 768)
!5864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5865, size: 64)
!5865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5125, line: 156, size: 192, elements: !5866)
!5866 = !{!5867, !5868, !5870}
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5865, file: !5125, line: 157, baseType: !5864, size: 64)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5865, file: !5125, line: 158, baseType: !5869, size: 64, offset: 64)
!5869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5849, size: 64)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5865, file: !5125, line: 162, baseType: !40, size: 32, offset: 128)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5849, file: !5125, line: 262, baseType: !5869, size: 64, offset: 832)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5849, file: !5125, line: 264, baseType: !40, size: 32, offset: 896)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5849, file: !5125, line: 268, baseType: !40, size: 32, offset: 928)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5849, file: !5125, line: 270, baseType: !1928, size: 64, offset: 960)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5849, file: !5125, line: 274, baseType: !41, size: 16, offset: 1024)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5849, file: !5125, line: 275, baseType: !5153, size: 8, offset: 1040)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5849, file: !5125, line: 276, baseType: !5155, size: 8, offset: 1048)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5849, file: !5125, line: 280, baseType: !5157, size: 64, offset: 1088)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5849, file: !5125, line: 289, baseType: !5160, size: 64, offset: 1152)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5849, file: !5125, line: 297, baseType: !39, size: 64, offset: 1216)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5849, file: !5125, line: 298, baseType: !39, size: 64, offset: 1280)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5849, file: !5125, line: 299, baseType: !39, size: 64, offset: 1344)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5849, file: !5125, line: 300, baseType: !39, size: 64, offset: 1408)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5849, file: !5125, line: 302, baseType: !27, size: 64, offset: 1472)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5849, file: !5125, line: 303, baseType: !40, size: 32, offset: 1536)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5849, file: !5125, line: 305, baseType: !5168, size: 160, offset: 1568)
!5887 = !{!5888, !5889, !5891, !5892}
!5888 = !DILocalVariable(name: "stream", arg: 1, scope: !5843, file: !5844, line: 56, type: !5847)
!5889 = !DILocalVariable(name: "some_pending", scope: !5843, file: !5844, line: 58, type: !5890)
!5890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!5891 = !DILocalVariable(name: "prev_fail", scope: !5843, file: !5844, line: 59, type: !5890)
!5892 = !DILocalVariable(name: "fclose_fail", scope: !5843, file: !5844, line: 60, type: !5890)
!5893 = !DILocation(line: 56, column: 21, scope: !5843)
!5894 = !DILocation(line: 58, column: 30, scope: !5843)
!5895 = !DILocalVariable(name: "__stream", arg: 1, scope: !5896, file: !5897, line: 132, type: !5847)
!5896 = distinct !DISubprogram(name: "ferror_unlocked", scope: !5897, file: !5897, line: 132, type: !5845, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5898)
!5897 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5898 = !{!5895}
!5899 = !DILocation(line: 132, column: 1, scope: !5896, inlinedAt: !5900)
!5900 = distinct !DILocation(line: 59, column: 27, scope: !5843)
!5901 = !DILocation(line: 134, column: 10, scope: !5896, inlinedAt: !5900)
!5902 = !{!5903, !724, i64 0}
!5903 = !{!"_IO_FILE", !724, i64 0, !609, i64 8, !609, i64 16, !609, i64 24, !609, i64 32, !609, i64 40, !609, i64 48, !609, i64 56, !609, i64 64, !609, i64 72, !609, i64 80, !609, i64 88, !609, i64 96, !609, i64 104, !724, i64 112, !724, i64 116, !2236, i64 120, !2726, i64 128, !610, i64 130, !610, i64 131, !609, i64 136, !2236, i64 144, !609, i64 152, !609, i64 160, !609, i64 168, !609, i64 176, !2236, i64 184, !724, i64 192, !610, i64 196}
!5904 = !DILocation(line: 59, column: 43, scope: !5843)
!5905 = !DILocation(line: 60, column: 29, scope: !5843)
!5906 = !DILocation(line: 60, column: 45, scope: !5843)
!5907 = !DILocation(line: 70, column: 17, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5843, file: !5844, line: 70, column: 7)
!5909 = !DILocation(line: 70, column: 33, scope: !5910)
!5910 = !DILexicalBlockFile(scope: !5908, file: !5844, discriminator: 1)
!5911 = !DILocation(line: 70, column: 53, scope: !5912)
!5912 = !DILexicalBlockFile(scope: !5908, file: !5844, discriminator: 3)
!5913 = !DILocation(line: 70, column: 7, scope: !5914)
!5914 = !DILexicalBlockFile(scope: !5843, file: !5844, discriminator: 3)
!5915 = !DILocation(line: 72, column: 11, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5908, file: !5844, line: 71, column: 5)
!5917 = !DILocation(line: 73, column: 9, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5916, file: !5844, line: 72, column: 11)
!5919 = !DILocation(line: 73, column: 15, scope: !5918)
!5920 = !DILocation(line: 78, column: 1, scope: !5843)
!5921 = distinct !DISubprogram(name: "hard_locale", scope: !5922, file: !5922, line: 38, type: !822, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !5923)
!5922 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5923 = !{!5924, !5925, !5926, !5927, !5934, !5935, !5937, !5938, !5940, !5941, !5943}
!5924 = !DILocalVariable(name: "category", arg: 1, scope: !5921, file: !5922, line: 38, type: !40)
!5925 = !DILocalVariable(name: "hard", scope: !5921, file: !5922, line: 40, type: !93)
!5926 = !DILocalVariable(name: "p", scope: !5921, file: !5922, line: 41, type: !35)
!5927 = !DILocalVariable(name: "__s1_len", scope: !5928, file: !5922, line: 47, type: !27)
!5928 = distinct !DILexicalBlock(scope: !5929, file: !5922, line: 47, column: 15)
!5929 = distinct !DILexicalBlock(scope: !5930, file: !5922, line: 47, column: 15)
!5930 = distinct !DILexicalBlock(scope: !5931, file: !5922, line: 46, column: 9)
!5931 = distinct !DILexicalBlock(scope: !5932, file: !5922, line: 45, column: 11)
!5932 = distinct !DILexicalBlock(scope: !5933, file: !5922, line: 44, column: 5)
!5933 = distinct !DILexicalBlock(scope: !5921, file: !5922, line: 43, column: 7)
!5934 = !DILocalVariable(name: "__s2_len", scope: !5928, file: !5922, line: 47, type: !27)
!5935 = !DILocalVariable(name: "__s2", scope: !5936, file: !5922, line: 47, type: !32)
!5936 = distinct !DILexicalBlock(scope: !5928, file: !5922, line: 47, column: 15)
!5937 = !DILocalVariable(name: "__result", scope: !5936, file: !5922, line: 47, type: !40)
!5938 = !DILocalVariable(name: "__s1_len", scope: !5939, file: !5922, line: 47, type: !27)
!5939 = distinct !DILexicalBlock(scope: !5929, file: !5922, line: 47, column: 39)
!5940 = !DILocalVariable(name: "__s2_len", scope: !5939, file: !5922, line: 47, type: !27)
!5941 = !DILocalVariable(name: "__s2", scope: !5942, file: !5922, line: 47, type: !32)
!5942 = distinct !DILexicalBlock(scope: !5939, file: !5922, line: 47, column: 39)
!5943 = !DILocalVariable(name: "__result", scope: !5942, file: !5922, line: 47, type: !40)
!5944 = !DILocation(line: 38, column: 18, scope: !5921)
!5945 = !DILocation(line: 40, column: 8, scope: !5921)
!5946 = !DILocation(line: 41, column: 19, scope: !5921)
!5947 = !DILocation(line: 41, column: 15, scope: !5921)
!5948 = !DILocation(line: 43, column: 7, scope: !5933)
!5949 = !DILocation(line: 43, column: 7, scope: !5921)
!5950 = !DILocation(line: 47, column: 15, scope: !5928)
!5951 = !DILocation(line: 47, column: 15, scope: !5936)
!5952 = !DILocation(line: 47, column: 15, scope: !5953)
!5953 = !DILexicalBlockFile(scope: !5936, file: !5922, discriminator: 2)
!5954 = !DILocation(line: 47, column: 15, scope: !5955)
!5955 = !DILexicalBlockFile(scope: !5956, file: !5922, discriminator: 3)
!5956 = distinct !DILexicalBlock(scope: !5936, file: !5922, line: 47, column: 15)
!5957 = !DILocation(line: 47, column: 15, scope: !5958)
!5958 = !DILexicalBlockFile(scope: !5956, file: !5922, discriminator: 2)
!5959 = !DILocation(line: 47, column: 15, scope: !5960)
!5960 = !DILexicalBlockFile(scope: !5961, file: !5922, discriminator: 4)
!5961 = distinct !DILexicalBlock(scope: !5956, file: !5922, line: 47, column: 15)
!5962 = !DILocation(line: 47, column: 15, scope: !5963)
!5963 = !DILexicalBlockFile(scope: !5928, file: !5922, discriminator: 11)
!5964 = !DILocation(line: 47, column: 36, scope: !5965)
!5965 = !DILexicalBlockFile(scope: !5929, file: !5922, discriminator: 13)
!5966 = !DILocation(line: 47, column: 39, scope: !5939)
!5967 = !DILocation(line: 47, column: 39, scope: !5968)
!5968 = !DILexicalBlockFile(scope: !5939, file: !5922, discriminator: 26)
!5969 = !DILocation(line: 47, column: 59, scope: !5970)
!5970 = !DILexicalBlockFile(scope: !5929, file: !5922, discriminator: 27)
!5971 = !DILocation(line: 47, column: 15, scope: !5972)
!5972 = !DILexicalBlockFile(scope: !5930, file: !5922, discriminator: 27)
!5973 = !DILocation(line: 48, column: 13, scope: !5929)
!5974 = !DILocation(line: 71, column: 3, scope: !5921)
!5975 = distinct !DISubprogram(name: "locale_charset", scope: !530, file: !530, line: 393, type: !5976, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !5978)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!35}
!5978 = !{!5979, !5980, !5981, !5986}
!5979 = !DILocalVariable(name: "codeset", scope: !5975, file: !530, line: 395, type: !35)
!5980 = !DILocalVariable(name: "aliases", scope: !5975, file: !530, line: 396, type: !35)
!5981 = !DILocalVariable(name: "__s1_len", scope: !5982, file: !530, line: 592, type: !27)
!5982 = distinct !DILexicalBlock(scope: !5983, file: !530, line: 592, column: 9)
!5983 = distinct !DILexicalBlock(scope: !5984, file: !530, line: 592, column: 9)
!5984 = distinct !DILexicalBlock(scope: !5985, file: !530, line: 589, column: 3)
!5985 = distinct !DILexicalBlock(scope: !5975, file: !530, line: 589, column: 3)
!5986 = !DILocalVariable(name: "__s2_len", scope: !5982, file: !530, line: 592, type: !27)
!5987 = !DILocalVariable(name: "buf1", scope: !5988, file: !530, line: 196, type: !6055)
!5988 = distinct !DILexicalBlock(scope: !5989, file: !530, line: 194, column: 21)
!5989 = distinct !DILexicalBlock(scope: !5990, file: !530, line: 193, column: 19)
!5990 = distinct !DILexicalBlock(scope: !5991, file: !530, line: 193, column: 19)
!5991 = distinct !DILexicalBlock(scope: !5992, file: !530, line: 188, column: 17)
!5992 = distinct !DILexicalBlock(scope: !5993, file: !530, line: 181, column: 19)
!5993 = distinct !DILexicalBlock(scope: !5994, file: !530, line: 177, column: 13)
!5994 = distinct !DILexicalBlock(scope: !5995, file: !530, line: 173, column: 15)
!5995 = distinct !DILexicalBlock(scope: !5996, file: !530, line: 161, column: 9)
!5996 = distinct !DILexicalBlock(scope: !5997, file: !530, line: 157, column: 11)
!5997 = distinct !DILexicalBlock(scope: !5998, file: !530, line: 130, column: 5)
!5998 = distinct !DILexicalBlock(scope: !5999, file: !530, line: 129, column: 7)
!5999 = distinct !DISubprogram(name: "get_charset_aliases", scope: !530, file: !530, line: 124, type: !5976, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !6000)
!6000 = !{!6001, !6002, !6003, !6004, !6005, !6007, !6008, !6009, !6010, !6051, !6052, !6053, !5987, !6054, !6058, !6059, !6060}
!6001 = !DILocalVariable(name: "cp", scope: !5999, file: !530, line: 126, type: !35)
!6002 = !DILocalVariable(name: "dir", scope: !5997, file: !530, line: 132, type: !35)
!6003 = !DILocalVariable(name: "base", scope: !5997, file: !530, line: 133, type: !35)
!6004 = !DILocalVariable(name: "file_name", scope: !5997, file: !530, line: 134, type: !38)
!6005 = !DILocalVariable(name: "dir_len", scope: !6006, file: !530, line: 144, type: !27)
!6006 = distinct !DILexicalBlock(scope: !5997, file: !530, line: 143, column: 7)
!6007 = !DILocalVariable(name: "base_len", scope: !6006, file: !530, line: 145, type: !27)
!6008 = !DILocalVariable(name: "add_slash", scope: !6006, file: !530, line: 146, type: !40)
!6009 = !DILocalVariable(name: "fd", scope: !5995, file: !530, line: 162, type: !40)
!6010 = !DILocalVariable(name: "fp", scope: !5993, file: !530, line: 178, type: !6011)
!6011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6012, size: 64)
!6012 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !802, line: 49, baseType: !6013)
!6013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5125, line: 241, size: 1728, elements: !6014)
!6014 = !{!6015, !6016, !6017, !6018, !6019, !6020, !6021, !6022, !6023, !6024, !6025, !6026, !6027, !6035, !6036, !6037, !6038, !6039, !6040, !6041, !6042, !6043, !6044, !6045, !6046, !6047, !6048, !6049, !6050}
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6013, file: !5125, line: 242, baseType: !40, size: 32)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6013, file: !5125, line: 247, baseType: !38, size: 64, offset: 64)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6013, file: !5125, line: 248, baseType: !38, size: 64, offset: 128)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6013, file: !5125, line: 249, baseType: !38, size: 64, offset: 192)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6013, file: !5125, line: 250, baseType: !38, size: 64, offset: 256)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6013, file: !5125, line: 251, baseType: !38, size: 64, offset: 320)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6013, file: !5125, line: 252, baseType: !38, size: 64, offset: 384)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6013, file: !5125, line: 253, baseType: !38, size: 64, offset: 448)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6013, file: !5125, line: 254, baseType: !38, size: 64, offset: 512)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6013, file: !5125, line: 256, baseType: !38, size: 64, offset: 576)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6013, file: !5125, line: 257, baseType: !38, size: 64, offset: 640)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6013, file: !5125, line: 258, baseType: !38, size: 64, offset: 704)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6013, file: !5125, line: 260, baseType: !6028, size: 64, offset: 768)
!6028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6029, size: 64)
!6029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5125, line: 156, size: 192, elements: !6030)
!6030 = !{!6031, !6032, !6034}
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6029, file: !5125, line: 157, baseType: !6028, size: 64)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6029, file: !5125, line: 158, baseType: !6033, size: 64, offset: 64)
!6033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6013, size: 64)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6029, file: !5125, line: 162, baseType: !40, size: 32, offset: 128)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6013, file: !5125, line: 262, baseType: !6033, size: 64, offset: 832)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6013, file: !5125, line: 264, baseType: !40, size: 32, offset: 896)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6013, file: !5125, line: 268, baseType: !40, size: 32, offset: 928)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6013, file: !5125, line: 270, baseType: !1928, size: 64, offset: 960)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6013, file: !5125, line: 274, baseType: !41, size: 16, offset: 1024)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6013, file: !5125, line: 275, baseType: !5153, size: 8, offset: 1040)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6013, file: !5125, line: 276, baseType: !5155, size: 8, offset: 1048)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6013, file: !5125, line: 280, baseType: !5157, size: 64, offset: 1088)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6013, file: !5125, line: 289, baseType: !5160, size: 64, offset: 1152)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6013, file: !5125, line: 297, baseType: !39, size: 64, offset: 1216)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6013, file: !5125, line: 298, baseType: !39, size: 64, offset: 1280)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6013, file: !5125, line: 299, baseType: !39, size: 64, offset: 1344)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6013, file: !5125, line: 300, baseType: !39, size: 64, offset: 1408)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6013, file: !5125, line: 302, baseType: !27, size: 64, offset: 1472)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6013, file: !5125, line: 303, baseType: !40, size: 32, offset: 1536)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6013, file: !5125, line: 305, baseType: !5168, size: 160, offset: 1568)
!6051 = !DILocalVariable(name: "res_ptr", scope: !5991, file: !530, line: 190, type: !38)
!6052 = !DILocalVariable(name: "res_size", scope: !5991, file: !530, line: 191, type: !27)
!6053 = !DILocalVariable(name: "c", scope: !5988, file: !530, line: 195, type: !40)
!6054 = !DILocalVariable(name: "buf2", scope: !5988, file: !530, line: 197, type: !6055)
!6055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 408, elements: !6056)
!6056 = !{!6057}
!6057 = !DISubrange(count: 51)
!6058 = !DILocalVariable(name: "l1", scope: !5988, file: !530, line: 198, type: !27)
!6059 = !DILocalVariable(name: "l2", scope: !5988, file: !530, line: 198, type: !27)
!6060 = !DILocalVariable(name: "old_res_ptr", scope: !5988, file: !530, line: 199, type: !38)
!6061 = !DILocation(line: 196, column: 28, scope: !5988, inlinedAt: !6062)
!6062 = distinct !DILocation(line: 589, column: 18, scope: !5985)
!6063 = !DILocation(line: 197, column: 28, scope: !5988, inlinedAt: !6062)
!6064 = !DILocation(line: 403, column: 13, scope: !5975)
!6065 = !DILocation(line: 395, column: 15, scope: !5975)
!6066 = !DILocation(line: 584, column: 15, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !5975, file: !530, line: 584, column: 7)
!6068 = !DILocation(line: 584, column: 7, scope: !5975)
!6069 = !DILocation(line: 128, column: 8, scope: !5999, inlinedAt: !6062)
!6070 = !DILocation(line: 126, column: 15, scope: !5999, inlinedAt: !6062)
!6071 = !DILocation(line: 129, column: 10, scope: !5998, inlinedAt: !6062)
!6072 = !DILocation(line: 129, column: 7, scope: !5999, inlinedAt: !6062)
!6073 = !DILocation(line: 138, column: 13, scope: !5997, inlinedAt: !6062)
!6074 = !DILocation(line: 132, column: 19, scope: !5997, inlinedAt: !6062)
!6075 = !DILocation(line: 139, column: 15, scope: !6076, inlinedAt: !6062)
!6076 = distinct !DILexicalBlock(scope: !5997, file: !530, line: 139, column: 11)
!6077 = !DILocation(line: 139, column: 23, scope: !6076, inlinedAt: !6062)
!6078 = !DILocation(line: 139, column: 26, scope: !6079, inlinedAt: !6062)
!6079 = !DILexicalBlockFile(scope: !6076, file: !530, discriminator: 1)
!6080 = !DILocation(line: 139, column: 33, scope: !6079, inlinedAt: !6062)
!6081 = !DILocation(line: 139, column: 11, scope: !6082, inlinedAt: !6062)
!6082 = !DILexicalBlockFile(scope: !5997, file: !530, discriminator: 1)
!6083 = !DILocation(line: 140, column: 9, scope: !6076, inlinedAt: !6062)
!6084 = !DILocation(line: 144, column: 26, scope: !6006, inlinedAt: !6062)
!6085 = !DILocation(line: 144, column: 16, scope: !6006, inlinedAt: !6062)
!6086 = !DILocation(line: 145, column: 16, scope: !6006, inlinedAt: !6062)
!6087 = !DILocation(line: 146, column: 34, scope: !6006, inlinedAt: !6062)
!6088 = !DILocation(line: 146, column: 38, scope: !6006, inlinedAt: !6062)
!6089 = !DILocation(line: 146, column: 42, scope: !6090, inlinedAt: !6062)
!6090 = !DILexicalBlockFile(scope: !6006, file: !530, discriminator: 1)
!6091 = !DILocation(line: 146, column: 41, scope: !6090, inlinedAt: !6062)
!6092 = !DILocation(line: 147, column: 48, scope: !6006, inlinedAt: !6062)
!6093 = !DILocation(line: 147, column: 46, scope: !6006, inlinedAt: !6062)
!6094 = !DILocation(line: 147, column: 69, scope: !6006, inlinedAt: !6062)
!6095 = !DILocation(line: 147, column: 30, scope: !6006, inlinedAt: !6062)
!6096 = !DILocation(line: 134, column: 13, scope: !5997, inlinedAt: !6062)
!6097 = !DILocation(line: 148, column: 13, scope: !6006, inlinedAt: !6062)
!6098 = !DILocation(line: 150, column: 13, scope: !6099, inlinedAt: !6062)
!6099 = distinct !DILexicalBlock(scope: !6100, file: !530, line: 149, column: 11)
!6100 = distinct !DILexicalBlock(scope: !6006, file: !530, line: 148, column: 13)
!6101 = !DILocation(line: 151, column: 17, scope: !6099, inlinedAt: !6062)
!6102 = !DILocation(line: 152, column: 34, scope: !6103, inlinedAt: !6062)
!6103 = distinct !DILexicalBlock(scope: !6099, file: !530, line: 151, column: 17)
!6104 = !DILocation(line: 153, column: 41, scope: !6099, inlinedAt: !6062)
!6105 = !DILocation(line: 153, column: 13, scope: !6099, inlinedAt: !6062)
!6106 = !DILocation(line: 157, column: 11, scope: !5997, inlinedAt: !6062)
!6107 = !DILocation(line: 171, column: 16, scope: !5995, inlinedAt: !6062)
!6108 = !DILocation(line: 162, column: 15, scope: !5995, inlinedAt: !6062)
!6109 = !DILocation(line: 173, column: 18, scope: !5994, inlinedAt: !6062)
!6110 = !DILocation(line: 173, column: 15, scope: !5995, inlinedAt: !6062)
!6111 = !DILocation(line: 180, column: 20, scope: !5993, inlinedAt: !6062)
!6112 = !DILocation(line: 178, column: 21, scope: !5993, inlinedAt: !6062)
!6113 = !DILocation(line: 181, column: 22, scope: !5992, inlinedAt: !6062)
!6114 = !DILocation(line: 181, column: 19, scope: !5993, inlinedAt: !6062)
!6115 = !DILocation(line: 190, column: 25, scope: !5991, inlinedAt: !6062)
!6116 = !DILocation(line: 184, column: 19, scope: !6117, inlinedAt: !6062)
!6117 = distinct !DILexicalBlock(scope: !5992, file: !530, line: 182, column: 17)
!6118 = !DILocation(line: 186, column: 17, scope: !6117, inlinedAt: !6062)
!6119 = !DILocation(line: 191, column: 26, scope: !5991, inlinedAt: !6062)
!6120 = !DILocation(line: 196, column: 23, scope: !5988, inlinedAt: !6062)
!6121 = !DILocation(line: 197, column: 23, scope: !5988, inlinedAt: !6062)
!6122 = !DILocalVariable(name: "__fp", arg: 1, scope: !6123, file: !5897, line: 63, type: !6011)
!6123 = distinct !DISubprogram(name: "getc_unlocked", scope: !5897, file: !5897, line: 63, type: !6124, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !6126)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!40, !6011}
!6126 = !{!6122}
!6127 = !DILocation(line: 63, column: 22, scope: !6123, inlinedAt: !6128)
!6128 = distinct !DILocation(line: 201, column: 27, scope: !5988, inlinedAt: !6062)
!6129 = !DILocation(line: 65, column: 10, scope: !6123, inlinedAt: !6128)
!6130 = !{!5903, !609, i64 8}
!6131 = !{!5903, !609, i64 16}
!6132 = !{!"branch_weights", i32 2000, i32 1}
!6133 = !DILocation(line: 65, column: 10, scope: !6134, inlinedAt: !6128)
!6134 = !DILexicalBlockFile(scope: !6123, file: !5897, discriminator: 1)
!6135 = !DILocation(line: 65, column: 10, scope: !6136, inlinedAt: !6128)
!6136 = !DILexicalBlockFile(scope: !6123, file: !5897, discriminator: 2)
!6137 = !DILocation(line: 65, column: 10, scope: !6138, inlinedAt: !6128)
!6138 = !DILexicalBlockFile(scope: !6123, file: !5897, discriminator: 3)
!6139 = !DILocation(line: 195, column: 27, scope: !5988, inlinedAt: !6062)
!6140 = !DILocation(line: 202, column: 27, scope: !5988, inlinedAt: !6062)
!6141 = !DILocation(line: 63, column: 22, scope: !6123, inlinedAt: !6142)
!6142 = distinct !DILocation(line: 210, column: 33, scope: !6143, inlinedAt: !6062)
!6143 = distinct !DILexicalBlock(scope: !6144, file: !530, line: 207, column: 25)
!6144 = distinct !DILexicalBlock(scope: !5988, file: !530, line: 206, column: 27)
!6145 = !DILocation(line: 65, column: 10, scope: !6123, inlinedAt: !6142)
!6146 = !DILocation(line: 65, column: 10, scope: !6134, inlinedAt: !6142)
!6147 = !DILocation(line: 65, column: 10, scope: !6136, inlinedAt: !6142)
!6148 = !DILocation(line: 65, column: 10, scope: !6138, inlinedAt: !6142)
!6149 = !DILocation(line: 210, column: 29, scope: !6150, inlinedAt: !6062)
!6150 = !DILexicalBlockFile(scope: !6143, file: !530, discriminator: 1)
!6151 = distinct !{!6151, !6152, !6153}
!6152 = !DILocation(line: 193, column: 19, scope: !5990)
!6153 = !DILocation(line: 241, column: 21, scope: !5990)
!6154 = !DILocation(line: 216, column: 23, scope: !5988, inlinedAt: !6062)
!6155 = !DILocation(line: 217, column: 27, scope: !6156, inlinedAt: !6062)
!6156 = distinct !DILexicalBlock(scope: !5988, file: !530, line: 217, column: 27)
!6157 = !DILocation(line: 217, column: 64, scope: !6156, inlinedAt: !6062)
!6158 = !DILocation(line: 217, column: 27, scope: !5988, inlinedAt: !6062)
!6159 = !DILocation(line: 219, column: 28, scope: !5988, inlinedAt: !6062)
!6160 = !DILocation(line: 198, column: 30, scope: !5988, inlinedAt: !6062)
!6161 = !DILocation(line: 220, column: 28, scope: !5988, inlinedAt: !6062)
!6162 = !DILocation(line: 198, column: 34, scope: !5988, inlinedAt: !6062)
!6163 = !DILocation(line: 199, column: 29, scope: !5988, inlinedAt: !6062)
!6164 = !DILocation(line: 222, column: 36, scope: !6165, inlinedAt: !6062)
!6165 = distinct !DILexicalBlock(scope: !5988, file: !530, line: 222, column: 27)
!6166 = !DILocation(line: 222, column: 27, scope: !5988, inlinedAt: !6062)
!6167 = !DILocation(line: 225, column: 63, scope: !6168, inlinedAt: !6062)
!6168 = distinct !DILexicalBlock(scope: !6165, file: !530, line: 223, column: 25)
!6169 = !DILocation(line: 225, column: 46, scope: !6168, inlinedAt: !6062)
!6170 = !DILocation(line: 226, column: 25, scope: !6168, inlinedAt: !6062)
!6171 = !DILocation(line: 229, column: 36, scope: !6172, inlinedAt: !6062)
!6172 = distinct !DILexicalBlock(scope: !6165, file: !530, line: 228, column: 25)
!6173 = !DILocation(line: 230, column: 73, scope: !6172, inlinedAt: !6062)
!6174 = !DILocation(line: 230, column: 46, scope: !6172, inlinedAt: !6062)
!6175 = !DILocation(line: 232, column: 35, scope: !6176, inlinedAt: !6062)
!6176 = distinct !DILexicalBlock(scope: !5988, file: !530, line: 232, column: 27)
!6177 = !DILocation(line: 232, column: 27, scope: !5988, inlinedAt: !6062)
!6178 = !DILocation(line: 236, column: 27, scope: !6179, inlinedAt: !6062)
!6179 = distinct !DILexicalBlock(scope: !6176, file: !530, line: 233, column: 25)
!6180 = !DILocation(line: 237, column: 27, scope: !6179, inlinedAt: !6062)
!6181 = !DILocation(line: 239, column: 39, scope: !5988, inlinedAt: !6062)
!6182 = !DILocation(line: 239, column: 50, scope: !5988, inlinedAt: !6062)
!6183 = !DILocation(line: 239, column: 61, scope: !5988, inlinedAt: !6062)
!6184 = !DILocalVariable(name: "__dest", arg: 1, scope: !6185, file: !6186, line: 107, type: !6189)
!6185 = distinct !DISubprogram(name: "strcpy", scope: !6186, file: !6186, line: 107, type: !6187, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !186, variables: !6190)
!6186 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6187 = !DISubroutineType(types: !6188)
!6188 = !{!38, !6189, !5747}
!6189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!6190 = !{!6184, !6191}
!6191 = !DILocalVariable(name: "__src", arg: 2, scope: !6185, file: !6186, line: 107, type: !5747)
!6192 = !DILocation(line: 107, column: 1, scope: !6185, inlinedAt: !6193)
!6193 = distinct !DILocation(line: 239, column: 23, scope: !5988, inlinedAt: !6062)
!6194 = !DILocation(line: 109, column: 49, scope: !6185, inlinedAt: !6193)
!6195 = !DILocation(line: 109, column: 10, scope: !6185, inlinedAt: !6193)
!6196 = !DILocation(line: 107, column: 1, scope: !6185, inlinedAt: !6197)
!6197 = distinct !DILocation(line: 240, column: 23, scope: !5988, inlinedAt: !6062)
!6198 = !DILocation(line: 109, column: 49, scope: !6185, inlinedAt: !6197)
!6199 = !DILocation(line: 109, column: 10, scope: !6185, inlinedAt: !6197)
!6200 = !DILocation(line: 241, column: 21, scope: !5989, inlinedAt: !6062)
!6201 = !DILocation(line: 242, column: 19, scope: !5991, inlinedAt: !6062)
!6202 = !DILocation(line: 243, column: 32, scope: !6203, inlinedAt: !6062)
!6203 = distinct !DILexicalBlock(scope: !5991, file: !530, line: 243, column: 23)
!6204 = !DILocation(line: 243, column: 23, scope: !5991, inlinedAt: !6062)
!6205 = !DILocation(line: 247, column: 33, scope: !6206, inlinedAt: !6062)
!6206 = distinct !DILexicalBlock(scope: !6203, file: !530, line: 246, column: 21)
!6207 = !DILocation(line: 247, column: 45, scope: !6206, inlinedAt: !6062)
!6208 = !DILocation(line: 253, column: 11, scope: !5995, inlinedAt: !6062)
!6209 = !DILocation(line: 377, column: 23, scope: !5997, inlinedAt: !6062)
!6210 = !DILocation(line: 378, column: 5, scope: !5997, inlinedAt: !6062)
!6211 = !DILocation(line: 396, column: 15, scope: !5975)
!6212 = !DILocation(line: 590, column: 8, scope: !5984)
!6213 = !DILocation(line: 590, column: 17, scope: !5984)
!6214 = !DILocation(line: 589, column: 3, scope: !6215)
!6215 = !DILexicalBlockFile(scope: !5985, file: !530, discriminator: 1)
!6216 = !DILocation(line: 592, column: 9, scope: !5982)
!6217 = !DILocation(line: 592, column: 35, scope: !5983)
!6218 = !DILocation(line: 593, column: 9, scope: !5983)
!6219 = !DILocation(line: 593, column: 24, scope: !6220)
!6220 = !DILexicalBlockFile(scope: !5983, file: !530, discriminator: 1)
!6221 = !DILocation(line: 593, column: 31, scope: !6220)
!6222 = !DILocation(line: 593, column: 34, scope: !6223)
!6223 = !DILexicalBlockFile(scope: !5983, file: !530, discriminator: 2)
!6224 = !DILocation(line: 593, column: 45, scope: !6223)
!6225 = !DILocation(line: 592, column: 9, scope: !6226)
!6226 = !DILexicalBlockFile(scope: !5984, file: !530, discriminator: 1)
!6227 = !DILocation(line: 595, column: 29, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !5983, file: !530, line: 594, column: 7)
!6229 = !DILocation(line: 595, column: 27, scope: !6228)
!6230 = !DILocation(line: 595, column: 46, scope: !6228)
!6231 = !DILocation(line: 596, column: 9, scope: !6228)
!6232 = !DILocation(line: 591, column: 19, scope: !5984)
!6233 = !DILocation(line: 591, column: 36, scope: !5984)
!6234 = !DILocation(line: 591, column: 16, scope: !5984)
!6235 = !DILocation(line: 591, column: 52, scope: !6226)
!6236 = !DILocation(line: 591, column: 69, scope: !5984)
!6237 = !DILocation(line: 591, column: 49, scope: !5984)
!6238 = distinct !{!6238, !6239, !6240}
!6239 = !DILocation(line: 589, column: 3, scope: !5985)
!6240 = !DILocation(line: 597, column: 7, scope: !5985)
!6241 = !DILocation(line: 602, column: 7, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !5975, file: !530, line: 602, column: 7)
!6243 = !DILocation(line: 602, column: 18, scope: !6242)
!6244 = !DILocation(line: 602, column: 7, scope: !5975)
!6245 = !DILocation(line: 612, column: 3, scope: !5975)
!6246 = distinct !DISubprogram(name: "rpl_fclose", scope: !6247, file: !6247, line: 56, type: !6248, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !6290)
!6247 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!40, !6250}
!6250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6251, size: 64)
!6251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !802, line: 49, baseType: !6252)
!6252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5125, line: 241, size: 1728, elements: !6253)
!6253 = !{!6254, !6255, !6256, !6257, !6258, !6259, !6260, !6261, !6262, !6263, !6264, !6265, !6266, !6274, !6275, !6276, !6277, !6278, !6279, !6280, !6281, !6282, !6283, !6284, !6285, !6286, !6287, !6288, !6289}
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6252, file: !5125, line: 242, baseType: !40, size: 32)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6252, file: !5125, line: 247, baseType: !38, size: 64, offset: 64)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6252, file: !5125, line: 248, baseType: !38, size: 64, offset: 128)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6252, file: !5125, line: 249, baseType: !38, size: 64, offset: 192)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6252, file: !5125, line: 250, baseType: !38, size: 64, offset: 256)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6252, file: !5125, line: 251, baseType: !38, size: 64, offset: 320)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6252, file: !5125, line: 252, baseType: !38, size: 64, offset: 384)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6252, file: !5125, line: 253, baseType: !38, size: 64, offset: 448)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6252, file: !5125, line: 254, baseType: !38, size: 64, offset: 512)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6252, file: !5125, line: 256, baseType: !38, size: 64, offset: 576)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6252, file: !5125, line: 257, baseType: !38, size: 64, offset: 640)
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6252, file: !5125, line: 258, baseType: !38, size: 64, offset: 704)
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6252, file: !5125, line: 260, baseType: !6267, size: 64, offset: 768)
!6267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6268, size: 64)
!6268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5125, line: 156, size: 192, elements: !6269)
!6269 = !{!6270, !6271, !6273}
!6270 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6268, file: !5125, line: 157, baseType: !6267, size: 64)
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6268, file: !5125, line: 158, baseType: !6272, size: 64, offset: 64)
!6272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6252, size: 64)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6268, file: !5125, line: 162, baseType: !40, size: 32, offset: 128)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6252, file: !5125, line: 262, baseType: !6272, size: 64, offset: 832)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6252, file: !5125, line: 264, baseType: !40, size: 32, offset: 896)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6252, file: !5125, line: 268, baseType: !40, size: 32, offset: 928)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6252, file: !5125, line: 270, baseType: !1928, size: 64, offset: 960)
!6278 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6252, file: !5125, line: 274, baseType: !41, size: 16, offset: 1024)
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6252, file: !5125, line: 275, baseType: !5153, size: 8, offset: 1040)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6252, file: !5125, line: 276, baseType: !5155, size: 8, offset: 1048)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6252, file: !5125, line: 280, baseType: !5157, size: 64, offset: 1088)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6252, file: !5125, line: 289, baseType: !5160, size: 64, offset: 1152)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6252, file: !5125, line: 297, baseType: !39, size: 64, offset: 1216)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6252, file: !5125, line: 298, baseType: !39, size: 64, offset: 1280)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6252, file: !5125, line: 299, baseType: !39, size: 64, offset: 1344)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6252, file: !5125, line: 300, baseType: !39, size: 64, offset: 1408)
!6287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6252, file: !5125, line: 302, baseType: !27, size: 64, offset: 1472)
!6288 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6252, file: !5125, line: 303, baseType: !40, size: 32, offset: 1536)
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6252, file: !5125, line: 305, baseType: !5168, size: 160, offset: 1568)
!6290 = !{!6291, !6292, !6293, !6294}
!6291 = !DILocalVariable(name: "fp", arg: 1, scope: !6246, file: !6247, line: 56, type: !6250)
!6292 = !DILocalVariable(name: "saved_errno", scope: !6246, file: !6247, line: 58, type: !40)
!6293 = !DILocalVariable(name: "fd", scope: !6246, file: !6247, line: 59, type: !40)
!6294 = !DILocalVariable(name: "result", scope: !6246, file: !6247, line: 60, type: !40)
!6295 = !DILocation(line: 56, column: 19, scope: !6246)
!6296 = !DILocation(line: 58, column: 7, scope: !6246)
!6297 = !DILocation(line: 60, column: 7, scope: !6246)
!6298 = !DILocation(line: 63, column: 8, scope: !6246)
!6299 = !DILocation(line: 59, column: 7, scope: !6246)
!6300 = !DILocation(line: 64, column: 10, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6246, file: !6247, line: 64, column: 7)
!6302 = !DILocation(line: 64, column: 7, scope: !6246)
!6303 = !DILocation(line: 65, column: 12, scope: !6301)
!6304 = !DILocation(line: 65, column: 5, scope: !6301)
!6305 = !DILocation(line: 70, column: 9, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6246, file: !6247, line: 70, column: 7)
!6307 = !DILocation(line: 70, column: 23, scope: !6306)
!6308 = !DILocation(line: 70, column: 33, scope: !6309)
!6309 = !DILexicalBlockFile(scope: !6306, file: !6247, discriminator: 1)
!6310 = !DILocation(line: 70, column: 26, scope: !6311)
!6311 = !DILexicalBlockFile(scope: !6306, file: !6247, discriminator: 3)
!6312 = !DILocation(line: 70, column: 59, scope: !6309)
!6313 = !DILocation(line: 71, column: 7, scope: !6306)
!6314 = !DILocation(line: 71, column: 10, scope: !6309)
!6315 = !DILocation(line: 70, column: 7, scope: !6316)
!6316 = !DILexicalBlockFile(scope: !6246, file: !6247, discriminator: 2)
!6317 = !DILocation(line: 98, column: 12, scope: !6246)
!6318 = !DILocation(line: 103, column: 7, scope: !6246)
!6319 = !DILocation(line: 72, column: 19, scope: !6306)
!6320 = !DILocation(line: 103, column: 19, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6246, file: !6247, line: 103, column: 7)
!6322 = !DILocation(line: 105, column: 13, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6321, file: !6247, line: 104, column: 5)
!6324 = !DILocation(line: 107, column: 5, scope: !6323)
!6325 = !DILocation(line: 110, column: 1, scope: !6246)
!6326 = distinct !DISubprogram(name: "rpl_fflush", scope: !6327, file: !6327, line: 127, type: !6328, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !6370)
!6327 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6328 = !DISubroutineType(types: !6329)
!6329 = !{!40, !6330}
!6330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6331, size: 64)
!6331 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !802, line: 49, baseType: !6332)
!6332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5125, line: 241, size: 1728, elements: !6333)
!6333 = !{!6334, !6335, !6336, !6337, !6338, !6339, !6340, !6341, !6342, !6343, !6344, !6345, !6346, !6354, !6355, !6356, !6357, !6358, !6359, !6360, !6361, !6362, !6363, !6364, !6365, !6366, !6367, !6368, !6369}
!6334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6332, file: !5125, line: 242, baseType: !40, size: 32)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6332, file: !5125, line: 247, baseType: !38, size: 64, offset: 64)
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6332, file: !5125, line: 248, baseType: !38, size: 64, offset: 128)
!6337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6332, file: !5125, line: 249, baseType: !38, size: 64, offset: 192)
!6338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6332, file: !5125, line: 250, baseType: !38, size: 64, offset: 256)
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6332, file: !5125, line: 251, baseType: !38, size: 64, offset: 320)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6332, file: !5125, line: 252, baseType: !38, size: 64, offset: 384)
!6341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6332, file: !5125, line: 253, baseType: !38, size: 64, offset: 448)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6332, file: !5125, line: 254, baseType: !38, size: 64, offset: 512)
!6343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6332, file: !5125, line: 256, baseType: !38, size: 64, offset: 576)
!6344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6332, file: !5125, line: 257, baseType: !38, size: 64, offset: 640)
!6345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6332, file: !5125, line: 258, baseType: !38, size: 64, offset: 704)
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6332, file: !5125, line: 260, baseType: !6347, size: 64, offset: 768)
!6347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6348, size: 64)
!6348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5125, line: 156, size: 192, elements: !6349)
!6349 = !{!6350, !6351, !6353}
!6350 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6348, file: !5125, line: 157, baseType: !6347, size: 64)
!6351 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6348, file: !5125, line: 158, baseType: !6352, size: 64, offset: 64)
!6352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6332, size: 64)
!6353 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6348, file: !5125, line: 162, baseType: !40, size: 32, offset: 128)
!6354 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6332, file: !5125, line: 262, baseType: !6352, size: 64, offset: 832)
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6332, file: !5125, line: 264, baseType: !40, size: 32, offset: 896)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6332, file: !5125, line: 268, baseType: !40, size: 32, offset: 928)
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6332, file: !5125, line: 270, baseType: !1928, size: 64, offset: 960)
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6332, file: !5125, line: 274, baseType: !41, size: 16, offset: 1024)
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6332, file: !5125, line: 275, baseType: !5153, size: 8, offset: 1040)
!6360 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6332, file: !5125, line: 276, baseType: !5155, size: 8, offset: 1048)
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6332, file: !5125, line: 280, baseType: !5157, size: 64, offset: 1088)
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6332, file: !5125, line: 289, baseType: !5160, size: 64, offset: 1152)
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6332, file: !5125, line: 297, baseType: !39, size: 64, offset: 1216)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6332, file: !5125, line: 298, baseType: !39, size: 64, offset: 1280)
!6365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6332, file: !5125, line: 299, baseType: !39, size: 64, offset: 1344)
!6366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6332, file: !5125, line: 300, baseType: !39, size: 64, offset: 1408)
!6367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6332, file: !5125, line: 302, baseType: !27, size: 64, offset: 1472)
!6368 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6332, file: !5125, line: 303, baseType: !40, size: 32, offset: 1536)
!6369 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6332, file: !5125, line: 305, baseType: !5168, size: 160, offset: 1568)
!6370 = !{!6371}
!6371 = !DILocalVariable(name: "stream", arg: 1, scope: !6326, file: !6327, line: 127, type: !6330)
!6372 = !DILocation(line: 127, column: 19, scope: !6326)
!6373 = !DILocation(line: 148, column: 14, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6326, file: !6327, line: 148, column: 7)
!6375 = !DILocation(line: 148, column: 22, scope: !6374)
!6376 = !DILocation(line: 148, column: 27, scope: !6377)
!6377 = !DILexicalBlockFile(scope: !6374, file: !6327, discriminator: 1)
!6378 = !DILocation(line: 148, column: 7, scope: !6379)
!6379 = !DILexicalBlockFile(scope: !6326, file: !6327, discriminator: 1)
!6380 = !DILocation(line: 149, column: 12, scope: !6374)
!6381 = !DILocation(line: 149, column: 5, scope: !6374)
!6382 = !DILocalVariable(name: "fp", arg: 1, scope: !6383, file: !6327, line: 40, type: !6330)
!6383 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !6327, file: !6327, line: 40, type: !6384, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !6386)
!6384 = !DISubroutineType(types: !6385)
!6385 = !{null, !6330}
!6386 = !{!6382}
!6387 = !DILocation(line: 40, column: 48, scope: !6383, inlinedAt: !6388)
!6388 = distinct !DILocation(line: 153, column: 3, scope: !6326)
!6389 = !DILocation(line: 42, column: 11, scope: !6390, inlinedAt: !6388)
!6390 = distinct !DILexicalBlock(scope: !6383, file: !6327, line: 42, column: 7)
!6391 = !DILocation(line: 42, column: 18, scope: !6390, inlinedAt: !6388)
!6392 = !DILocation(line: 42, column: 7, scope: !6383, inlinedAt: !6388)
!6393 = !DILocation(line: 44, column: 5, scope: !6390, inlinedAt: !6388)
!6394 = !DILocation(line: 155, column: 10, scope: !6326)
!6395 = !DILocation(line: 155, column: 3, scope: !6326)
!6396 = !DILocation(line: 229, column: 1, scope: !6326)
!6397 = distinct !DISubprogram(name: "rpl_fseeko", scope: !6398, file: !6398, line: 28, type: !6399, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !6442)
!6398 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6399 = !DISubroutineType(types: !6400)
!6400 = !{!40, !6401, !6441, !40}
!6401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6402, size: 64)
!6402 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !802, line: 49, baseType: !6403)
!6403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !5125, line: 241, size: 1728, elements: !6404)
!6404 = !{!6405, !6406, !6407, !6408, !6409, !6410, !6411, !6412, !6413, !6414, !6415, !6416, !6417, !6425, !6426, !6427, !6428, !6429, !6430, !6431, !6432, !6433, !6434, !6435, !6436, !6437, !6438, !6439, !6440}
!6405 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6403, file: !5125, line: 242, baseType: !40, size: 32)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6403, file: !5125, line: 247, baseType: !38, size: 64, offset: 64)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6403, file: !5125, line: 248, baseType: !38, size: 64, offset: 128)
!6408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6403, file: !5125, line: 249, baseType: !38, size: 64, offset: 192)
!6409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6403, file: !5125, line: 250, baseType: !38, size: 64, offset: 256)
!6410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6403, file: !5125, line: 251, baseType: !38, size: 64, offset: 320)
!6411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6403, file: !5125, line: 252, baseType: !38, size: 64, offset: 384)
!6412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6403, file: !5125, line: 253, baseType: !38, size: 64, offset: 448)
!6413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6403, file: !5125, line: 254, baseType: !38, size: 64, offset: 512)
!6414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6403, file: !5125, line: 256, baseType: !38, size: 64, offset: 576)
!6415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6403, file: !5125, line: 257, baseType: !38, size: 64, offset: 640)
!6416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6403, file: !5125, line: 258, baseType: !38, size: 64, offset: 704)
!6417 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6403, file: !5125, line: 260, baseType: !6418, size: 64, offset: 768)
!6418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6419, size: 64)
!6419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !5125, line: 156, size: 192, elements: !6420)
!6420 = !{!6421, !6422, !6424}
!6421 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6419, file: !5125, line: 157, baseType: !6418, size: 64)
!6422 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6419, file: !5125, line: 158, baseType: !6423, size: 64, offset: 64)
!6423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6403, size: 64)
!6424 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6419, file: !5125, line: 162, baseType: !40, size: 32, offset: 128)
!6425 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6403, file: !5125, line: 262, baseType: !6423, size: 64, offset: 832)
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6403, file: !5125, line: 264, baseType: !40, size: 32, offset: 896)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6403, file: !5125, line: 268, baseType: !40, size: 32, offset: 928)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6403, file: !5125, line: 270, baseType: !1928, size: 64, offset: 960)
!6429 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6403, file: !5125, line: 274, baseType: !41, size: 16, offset: 1024)
!6430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6403, file: !5125, line: 275, baseType: !5153, size: 8, offset: 1040)
!6431 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6403, file: !5125, line: 276, baseType: !5155, size: 8, offset: 1048)
!6432 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6403, file: !5125, line: 280, baseType: !5157, size: 64, offset: 1088)
!6433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6403, file: !5125, line: 289, baseType: !5160, size: 64, offset: 1152)
!6434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6403, file: !5125, line: 297, baseType: !39, size: 64, offset: 1216)
!6435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6403, file: !5125, line: 298, baseType: !39, size: 64, offset: 1280)
!6436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6403, file: !5125, line: 299, baseType: !39, size: 64, offset: 1344)
!6437 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6403, file: !5125, line: 300, baseType: !39, size: 64, offset: 1408)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6403, file: !5125, line: 302, baseType: !27, size: 64, offset: 1472)
!6439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6403, file: !5125, line: 303, baseType: !40, size: 32, offset: 1536)
!6440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6403, file: !5125, line: 305, baseType: !5168, size: 160, offset: 1568)
!6441 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !802, line: 91, baseType: !1928)
!6442 = !{!6443, !6444, !6445, !6446}
!6443 = !DILocalVariable(name: "fp", arg: 1, scope: !6397, file: !6398, line: 28, type: !6401)
!6444 = !DILocalVariable(name: "offset", arg: 2, scope: !6397, file: !6398, line: 28, type: !6441)
!6445 = !DILocalVariable(name: "whence", arg: 3, scope: !6397, file: !6398, line: 28, type: !40)
!6446 = !DILocalVariable(name: "pos", scope: !6447, file: !6398, line: 116, type: !6441)
!6447 = distinct !DILexicalBlock(scope: !6448, file: !6398, line: 112, column: 5)
!6448 = distinct !DILexicalBlock(scope: !6397, file: !6398, line: 51, column: 7)
!6449 = !DILocation(line: 28, column: 15, scope: !6397)
!6450 = !DILocation(line: 28, column: 25, scope: !6397)
!6451 = !DILocation(line: 28, column: 37, scope: !6397)
!6452 = !DILocation(line: 51, column: 11, scope: !6448)
!6453 = !DILocation(line: 51, column: 31, scope: !6448)
!6454 = !DILocation(line: 51, column: 24, scope: !6448)
!6455 = !DILocation(line: 52, column: 7, scope: !6448)
!6456 = !DILocation(line: 52, column: 14, scope: !6457)
!6457 = !DILexicalBlockFile(scope: !6448, file: !6398, discriminator: 1)
!6458 = !{!5903, !609, i64 40}
!6459 = !DILocation(line: 52, column: 35, scope: !6457)
!6460 = !{!5903, !609, i64 32}
!6461 = !DILocation(line: 52, column: 28, scope: !6457)
!6462 = !DILocation(line: 53, column: 7, scope: !6448)
!6463 = !DILocation(line: 53, column: 14, scope: !6457)
!6464 = !{!5903, !609, i64 72}
!6465 = !DILocation(line: 53, column: 28, scope: !6457)
!6466 = !DILocation(line: 51, column: 7, scope: !6467)
!6467 = !DILexicalBlockFile(scope: !6397, file: !6398, discriminator: 1)
!6468 = !DILocation(line: 116, column: 26, scope: !6447)
!6469 = !DILocation(line: 116, column: 19, scope: !6470)
!6470 = !DILexicalBlockFile(scope: !6447, file: !6398, discriminator: 1)
!6471 = !DILocation(line: 116, column: 13, scope: !6447)
!6472 = !DILocation(line: 117, column: 15, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6447, file: !6398, line: 117, column: 11)
!6474 = !DILocation(line: 117, column: 11, scope: !6447)
!6475 = !DILocation(line: 127, column: 11, scope: !6447)
!6476 = !DILocation(line: 127, column: 18, scope: !6447)
!6477 = !DILocation(line: 128, column: 11, scope: !6447)
!6478 = !DILocation(line: 128, column: 19, scope: !6447)
!6479 = !{!5903, !2236, i64 144}
!6480 = !DILocation(line: 159, column: 7, scope: !6447)
!6481 = !DILocation(line: 161, column: 10, scope: !6397)
!6482 = !DILocation(line: 161, column: 3, scope: !6397)
!6483 = !DILocation(line: 162, column: 1, scope: !6397)
