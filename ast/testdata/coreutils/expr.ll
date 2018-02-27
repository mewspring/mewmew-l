; ModuleID = 'coreutils-8.27/src/expr.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.valinfo = type { i32, %union.anon }
%union.anon = type { [1 x %struct.__mpz_struct] }
%struct.__mpz_struct = type { i32, i32, i64* }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.re_registers = type { i32, i32*, i32* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon.6 }
%union.anon.6 = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s EXPRESSION\0A  or:  %s OPTION\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [274 x i8] c"\0APrint the value of EXPRESSION to standard output.  A blank line below\0Aseparates increasing precedence groups.  EXPRESSION may be:\0A\0A  ARG1 | ARG2       ARG1 if it is neither null nor 0, otherwise ARG2\0A\0A  ARG1 & ARG2       ARG1 if neither argument is null or 0, otherwise 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [290 x i8] c"\0A  ARG1 < ARG2       ARG1 is less than ARG2\0A  ARG1 <= ARG2      ARG1 is less than or equal to ARG2\0A  ARG1 = ARG2       ARG1 is equal to ARG2\0A  ARG1 != ARG2      ARG1 is unequal to ARG2\0A  ARG1 >= ARG2      ARG1 is greater than or equal to ARG2\0A  ARG1 > ARG2       ARG1 is greater than ARG2\0A\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"\0A  ARG1 + ARG2       arithmetic sum of ARG1 and ARG2\0A  ARG1 - ARG2       arithmetic difference of ARG1 and ARG2\0A\00", align 1
@.str.7 = private unnamed_addr constant [187 x i8] c"\0A  ARG1 * ARG2       arithmetic product of ARG1 and ARG2\0A  ARG1 / ARG2       arithmetic quotient of ARG1 divided by ARG2\0A  ARG1 % ARG2       arithmetic remainder of ARG1 divided by ARG2\0A\00", align 1
@.str.8 = private unnamed_addr constant [310 x i8] c"\0A  STRING : REGEXP   anchored pattern match of REGEXP in STRING\0A\0A  match STRING REGEXP        same as STRING : REGEXP\0A  substr STRING POS LENGTH   substring of STRING, POS counted from 1\0A  index STRING CHARS         index in STRING where any CHARS is found, or 0\0A  length STRING              length of STRING\0A\00", align 1
@.str.9 = private unnamed_addr constant [201 x i8] c"  + TOKEN                    interpret TOKEN as a string, even if it is a\0A                               keyword like 'match' or an operator like '/'\0A\0A  ( EXPRESSION )             value of EXPRESSION\0A\00", align 1
@.str.10 = private unnamed_addr constant [292 x i8] c"\0ABeware that many operators need to be escaped or quoted for shells.\0AComparisons are arithmetic if both ARGs are numbers, else lexicographical.\0APattern matches return the string matched between \5C( and \5C) or null; if\0A\5C( and \5C) are not used, they return the number of characters matched or 0.\0A\00", align 1
@.str.11 = private unnamed_addr constant [156 x i8] c"\0AExit status is 0 if EXPRESSION is neither null nor 0, 1 if EXPRESSION is null\0Aor 0, 2 if EXPRESSION is syntactically invalid, and 3 if an error occurred.\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@args = internal unnamed_addr global i8** null, align 8
@.str.38 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"non-integer argument\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c":\00", align 1
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"error in regular expression matcher\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"substr\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c")\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@opterr = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.29, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.30, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16
@optind = external local_unnamed_addr global i32, align 4
@.str.1.29 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.30 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.88 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.89 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.90 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.91 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.92 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.93 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.94 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.95 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.96 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.97 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.98 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.99 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.100 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.101 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.104 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.105 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.106 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.107 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.108 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.109 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.136 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.137 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.138 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.139 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.140 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10
  br label %68

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #10
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i64 0, i32 5
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i64 0, i32 6
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ult i8* %14, %16
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %8
  %19 = tail call i32 @__overflow(%struct._IO_FILE* %12, i32 10) #10
  br label %22

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %21, i8** %13, align 8
  store i8 10, i8* %14, align 1
  br label %22

; <label>:22:                                     ; preds = %18, %20
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #10
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #10
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #10
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #10
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.4, i64 0, i64 0), i32 5) #10
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #10
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str.5, i64 0, i64 0), i32 5) #10
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 5) #10
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36) #10
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.7, i64 0, i64 0), i32 5) #10
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = tail call i32 @fputs_unlocked(i8* %38, %struct._IO_FILE* %39) #10
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([310 x i8], [310 x i8]* @.str.8, i64 0, i64 0), i32 5) #10
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = tail call i32 @fputs_unlocked(i8* %41, %struct._IO_FILE* %42) #10
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.9, i64 0, i64 0), i32 5) #10
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %46 = tail call i32 @fputs_unlocked(i8* %44, %struct._IO_FILE* %45) #10
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([292 x i8], [292 x i8]* @.str.10, i64 0, i64 0), i32 5) #10
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = tail call i32 @fputs_unlocked(i8* %47, %struct._IO_FILE* %48) #10
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.11, i64 0, i64 0), i32 5) #10
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %52 = tail call i32 @fputs_unlocked(i8* %50, %struct._IO_FILE* %51) #10
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #10
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #10
  %55 = tail call i8* @setlocale(i32 5, i8* null) #10
  %56 = icmp eq i8* %55, null
  br i1 %56, label %63, label %57

; <label>:57:                                     ; preds = %22
  %58 = tail call i32 @strncmp(i8* nonnull %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 3) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

; <label>:60:                                     ; preds = %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0), i32 5) #10
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #10
  br label %63

; <label>:63:                                     ; preds = %22, %57, %60
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 5) #10
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #10
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 5) #10
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #10
  br label %68

; <label>:68:                                     ; preds = %63, %3
  tail call void @exit(i32 %0) #14
  unreachable
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 {
  %3 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %3) #10
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #10
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #10
  store volatile i32 3, i32* @exit_failure, align 4
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), void (i32)* nonnull @usage, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* null) #10
  %8 = icmp ugt i32 %0, 1
  br i1 %8, label %9, label %25

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 45
  br i1 %13, label %14, label %27

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %11, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 45
  br i1 %17, label %18, label %27

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i8, i8* %11, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %18
  %23 = add i32 %0, -1
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %2, %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %26) #10
  tail call void @usage(i32 2) #15
  unreachable

; <label>:27:                                     ; preds = %9, %14, %18, %22
  %28 = phi i8** [ %10, %22 ], [ %1, %18 ], [ %1, %14 ], [ %1, %9 ]
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8** %29, i8*** @args, align 8
  %30 = tail call fastcc %struct.valinfo* @eval(i1 zeroext true)
  %31 = load i8**, i8*** @args, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %27
  tail call fastcc void @syntax_error()
  unreachable

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %57 [
    i32 0, label %38
    i32 1, label %52
  ]

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1, i32 0, i64 0
  %41 = tail call i64 @__gmpz_out_str(%struct._IO_FILE* %39, i32 10, %struct.__mpz_struct* %40) #10
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %42, i64 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %42, i64 0, i32 6
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ult i8* %44, %46
  br i1 %47, label %50, label %48

; <label>:48:                                     ; preds = %38
  %49 = tail call i32 @__overflow(%struct._IO_FILE* %42, i32 10) #10
  br label %58

; <label>:50:                                     ; preds = %38
  %51 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %51, i8** %43, align 8
  store i8 10, i8* %44, align 1
  br label %58

; <label>:52:                                     ; preds = %35
  %53 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1
  %54 = bitcast %union.anon* %53 to i8**
  %55 = load i8*, i8** %54, align 8
  %56 = tail call i32 @puts(i8* %55) #10
  br label %58

; <label>:57:                                     ; preds = %35
  tail call void @abort() #14
  unreachable

; <label>:58:                                     ; preds = %48, %50, %52
  %59 = load i32, i32* %36, align 8
  switch i32 %59, label %83 [
    i32 0, label %60
    i32 1, label %64
  ]

; <label>:60:                                     ; preds = %58
  %61 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1, i32 0, i64 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br label %86

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1
  %66 = bitcast %union.anon* %65 to i8**
  %67 = load i8*, i8** %66, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %86, label %70

; <label>:70:                                     ; preds = %64
  %71 = icmp eq i8 %68, 45
  %72 = zext i1 %71 to i64
  %73 = getelementptr inbounds i8, i8* %67, i64 %72
  %74 = load i8, i8* %73, align 1
  br label %75

; <label>:75:                                     ; preds = %79, %70
  %76 = phi i8 [ %74, %70 ], [ %81, %79 ]
  %77 = phi i8* [ %73, %70 ], [ %80, %79 ]
  %78 = icmp eq i8 %76, 48
  br i1 %78, label %79, label %84

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds i8, i8* %77, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %84, label %75

; <label>:83:                                     ; preds = %58
  tail call void @abort() #14
  unreachable

; <label>:84:                                     ; preds = %79, %75
  %85 = phi i1 [ false, %75 ], [ true, %79 ]
  br label %86

; <label>:86:                                     ; preds = %84, %60, %64
  %87 = phi i1 [ %63, %60 ], [ true, %64 ], [ %85, %84 ]
  %88 = zext i1 %87 to i32
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval(i1 zeroext) unnamed_addr #6 {
  %2 = tail call fastcc %struct.valinfo* @eval1(i1 zeroext %0)
  %3 = load i8**, i8*** @args, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %147, label %6

; <label>:6:                                      ; preds = %1
  br label %7

; <label>:7:                                      ; preds = %6, %124
  %8 = phi i8* [ %127, %124 ], [ %4, %6 ]
  %9 = phi i8** [ %126, %124 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %125, %124 ], [ %2, %6 ]
  %11 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0
  %12 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  %14 = bitcast %union.anon* %13 to i8**
  br label %15

; <label>:15:                                     ; preds = %7, %140
  %16 = phi i8* [ %8, %7 ], [ %143, %140 ]
  %17 = phi i8** [ %9, %7 ], [ %142, %140 ]
  %18 = tail call i32 @strcmp(i8* nonnull %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #10
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  store i8** %21, i8*** @args, align 8
  br i1 %19, label %22, label %145

; <label>:22:                                     ; preds = %15
  br i1 %0, label %23, label %48

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %11, align 8
  switch i32 %24, label %45 [
    i32 0, label %25
    i32 1, label %28
  ]

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 0
  br label %48

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %14, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %48, label %32

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i8 %30, 45
  %34 = zext i1 %33 to i64
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  %36 = load i8, i8* %35, align 1
  br label %37

; <label>:37:                                     ; preds = %41, %32
  %38 = phi i8 [ %36, %32 ], [ %43, %41 ]
  %39 = phi i8* [ %35, %32 ], [ %42, %41 ]
  %40 = icmp eq i8 %38, 48
  br i1 %40, label %41, label %46

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %39, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %37

; <label>:45:                                     ; preds = %23
  tail call void @abort() #14
  unreachable

; <label>:46:                                     ; preds = %37, %41
  %47 = phi i1 [ false, %37 ], [ true, %41 ]
  br label %48

; <label>:48:                                     ; preds = %46, %28, %25, %22
  %49 = phi i1 [ false, %22 ], [ %27, %25 ], [ true, %28 ], [ %47, %46 ]
  %50 = tail call fastcc %struct.valinfo* @eval1(i1 zeroext %49)
  %51 = load i32, i32* %11, align 8
  switch i32 %51, label %69 [
    i32 0, label %70
    i32 1, label %52
  ]

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %14, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %75, label %56

; <label>:56:                                     ; preds = %52
  %57 = icmp eq i8 %54, 45
  %58 = zext i1 %57 to i64
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  %60 = load i8, i8* %59, align 1
  br label %61

; <label>:61:                                     ; preds = %65, %56
  %62 = phi i8 [ %60, %56 ], [ %67, %65 ]
  %63 = phi i8* [ %59, %56 ], [ %66, %65 ]
  %64 = icmp eq i8 %62, 48
  br i1 %64, label %65, label %129

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds i8, i8* %63, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %61

; <label>:69:                                     ; preds = %48
  tail call void @abort() #14
  unreachable

; <label>:70:                                     ; preds = %48
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %130

; <label>:73:                                     ; preds = %65
  %74 = icmp eq i32 %51, 1
  br i1 %74, label %76, label %79

; <label>:75:                                     ; preds = %52
  br label %76

; <label>:76:                                     ; preds = %75, %73
  %77 = load i8*, i8** %14, align 8
  tail call void @free(i8* %77) #10
  br label %81

; <label>:78:                                     ; preds = %70
  br label %79

; <label>:79:                                     ; preds = %78, %73
  %80 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %80) #10
  br label %81

; <label>:81:                                     ; preds = %76, %79
  %82 = bitcast %struct.valinfo* %10 to i8*
  tail call void @free(i8* %82) #10
  %83 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 0
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %104 [
    i32 0, label %105
    i32 1, label %85
  ]

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 1
  %87 = bitcast %union.anon* %86 to i8**
  %88 = load i8*, i8** %87, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %111, label %91

; <label>:91:                                     ; preds = %85
  %92 = icmp eq i8 %89, 45
  %93 = zext i1 %92 to i64
  %94 = getelementptr inbounds i8, i8* %88, i64 %93
  %95 = load i8, i8* %94, align 1
  br label %96

; <label>:96:                                     ; preds = %100, %91
  %97 = phi i8 [ %95, %91 ], [ %102, %100 ]
  %98 = phi i8* [ %94, %91 ], [ %101, %100 ]
  %99 = icmp eq i8 %97, 48
  br i1 %99, label %100, label %123

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds i8, i8* %98, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %109, label %96

; <label>:104:                                    ; preds = %81
  tail call void @abort() #14
  unreachable

; <label>:105:                                    ; preds = %81
  %106 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 1, i32 0, i64 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %124

; <label>:109:                                    ; preds = %100
  %110 = icmp eq i32 %84, 1
  br i1 %110, label %111, label %114

; <label>:111:                                    ; preds = %85, %109
  %112 = bitcast %union.anon* %86 to i8**
  %113 = load i8*, i8** %112, align 8
  tail call void @free(i8* %113) #10
  br label %116

; <label>:114:                                    ; preds = %105, %109
  %115 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 1, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %115) #10
  br label %116

; <label>:116:                                    ; preds = %111, %114
  %117 = bitcast %struct.valinfo* %50 to i8*
  tail call void @free(i8* %117) #10
  %118 = tail call noalias i8* @xmalloc(i64 24) #10
  %119 = bitcast i8* %118 to %struct.valinfo*
  %120 = bitcast i8* %118 to i32*
  store i32 0, i32* %120, align 8
  %121 = getelementptr inbounds i8, i8* %118, i64 8
  %122 = bitcast i8* %121 to %struct.__mpz_struct*
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %122, i64 0) #10
  br label %124

; <label>:123:                                    ; preds = %96
  br label %124

; <label>:124:                                    ; preds = %123, %116, %105
  %125 = phi %struct.valinfo* [ %50, %105 ], [ %119, %116 ], [ %50, %123 ]
  %126 = load i8**, i8*** @args, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %146, label %7

; <label>:129:                                    ; preds = %61
  br label %130

; <label>:130:                                    ; preds = %129, %70
  %131 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 1
  %134 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 1
  br i1 %133, label %135, label %138

; <label>:135:                                    ; preds = %130
  %136 = bitcast %union.anon* %134 to i8**
  %137 = load i8*, i8** %136, align 8
  tail call void @free(i8* %137) #10
  br label %140

; <label>:138:                                    ; preds = %130
  %139 = getelementptr inbounds %union.anon, %union.anon* %134, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %139) #10
  br label %140

; <label>:140:                                    ; preds = %135, %138
  %141 = bitcast %struct.valinfo* %50 to i8*
  tail call void @free(i8* %141) #10
  %142 = load i8**, i8*** @args, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %15

; <label>:145:                                    ; preds = %140, %15
  br label %147

; <label>:146:                                    ; preds = %124
  br label %147

; <label>:147:                                    ; preds = %146, %145, %1
  %148 = phi %struct.valinfo* [ %2, %1 ], [ %10, %145 ], [ %125, %146 ]
  ret %struct.valinfo* %148
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @syntax_error() unnamed_addr #0 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %1) #10
  unreachable
}

declare i64 @__gmpz_out_str(%struct._IO_FILE*, i32, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval1(i1 zeroext) unnamed_addr #6 {
  %2 = tail call fastcc %struct.valinfo* @eval2(i1 zeroext %0)
  %3 = load i8**, i8*** @args, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %150, label %6

; <label>:6:                                      ; preds = %1
  br label %7

; <label>:7:                                      ; preds = %6, %126
  %8 = phi i8* [ %134, %126 ], [ %4, %6 ]
  %9 = phi i8** [ %133, %126 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %129, %126 ], [ %2, %6 ]
  %11 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0
  %12 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  %14 = bitcast %union.anon* %13 to i8**
  br label %15

; <label>:15:                                     ; preds = %7, %143
  %16 = phi i8* [ %8, %7 ], [ %146, %143 ]
  %17 = phi i8** [ %9, %7 ], [ %145, %143 ]
  %18 = tail call i32 @strcmp(i8* nonnull %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  store i8** %21, i8*** @args, align 8
  br i1 %19, label %22, label %148

; <label>:22:                                     ; preds = %15
  br i1 %0, label %23, label %51

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %11, align 8
  switch i32 %24, label %45 [
    i32 0, label %25
    i32 1, label %28
  ]

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 0
  br label %48

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %14, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %48, label %32

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i8 %30, 45
  %34 = zext i1 %33 to i64
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  %36 = load i8, i8* %35, align 1
  br label %37

; <label>:37:                                     ; preds = %41, %32
  %38 = phi i8 [ %36, %32 ], [ %43, %41 ]
  %39 = phi i8* [ %35, %32 ], [ %42, %41 ]
  %40 = icmp eq i8 %38, 48
  br i1 %40, label %41, label %46

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %39, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %37

; <label>:45:                                     ; preds = %23
  tail call void @abort() #14
  unreachable

; <label>:46:                                     ; preds = %41, %37
  %47 = phi i1 [ false, %37 ], [ true, %41 ]
  br label %48

; <label>:48:                                     ; preds = %46, %25, %28
  %49 = phi i1 [ %27, %25 ], [ true, %28 ], [ %47, %46 ]
  %50 = xor i1 %49, true
  br label %51

; <label>:51:                                     ; preds = %48, %22
  %52 = phi i1 [ false, %22 ], [ %50, %48 ]
  %53 = tail call fastcc %struct.valinfo* @eval2(i1 zeroext %52)
  %54 = load i32, i32* %11, align 8
  switch i32 %54, label %72 [
    i32 0, label %73
    i32 1, label %55
  ]

; <label>:55:                                     ; preds = %51
  %56 = load i8*, i8** %14, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %109, label %59

; <label>:59:                                     ; preds = %55
  %60 = icmp eq i8 %57, 45
  %61 = zext i1 %60 to i64
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  %63 = load i8, i8* %62, align 1
  br label %64

; <label>:64:                                     ; preds = %68, %59
  %65 = phi i8 [ %63, %59 ], [ %70, %68 ]
  %66 = phi i8* [ %62, %59 ], [ %69, %68 ]
  %67 = icmp eq i8 %65, 48
  br i1 %67, label %68, label %76

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds i8, i8* %66, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %105, label %64

; <label>:72:                                     ; preds = %51
  tail call void @abort() #14
  unreachable

; <label>:73:                                     ; preds = %51
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %112, label %77

; <label>:76:                                     ; preds = %64
  br label %77

; <label>:77:                                     ; preds = %76, %73
  %78 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %99 [
    i32 0, label %100
    i32 1, label %80
  ]

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 1
  %82 = bitcast %union.anon* %81 to i8**
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %106, label %86

; <label>:86:                                     ; preds = %80
  %87 = icmp eq i8 %84, 45
  %88 = zext i1 %87 to i64
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  %90 = load i8, i8* %89, align 1
  br label %91

; <label>:91:                                     ; preds = %95, %86
  %92 = phi i8 [ %90, %86 ], [ %97, %95 ]
  %93 = phi i8* [ %89, %86 ], [ %96, %95 ]
  %94 = icmp eq i8 %92, 48
  br i1 %94, label %95, label %136

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds i8, i8* %93, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %104, label %91

; <label>:99:                                     ; preds = %77
  tail call void @abort() #14
  unreachable

; <label>:100:                                    ; preds = %77
  %101 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 1, i32 0, i64 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %141

; <label>:104:                                    ; preds = %95
  br label %107

; <label>:105:                                    ; preds = %68
  br label %107

; <label>:106:                                    ; preds = %100, %80
  br label %107

; <label>:107:                                    ; preds = %106, %105, %104
  %108 = icmp eq i32 %54, 1
  br i1 %108, label %110, label %113

; <label>:109:                                    ; preds = %55
  br label %110

; <label>:110:                                    ; preds = %109, %107
  %111 = load i8*, i8** %14, align 8
  tail call void @free(i8* %111) #10
  br label %115

; <label>:112:                                    ; preds = %73
  br label %113

; <label>:113:                                    ; preds = %112, %107
  %114 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %114) #10
  br label %115

; <label>:115:                                    ; preds = %110, %113
  %116 = bitcast %struct.valinfo* %10 to i8*
  tail call void @free(i8* %116) #10
  %117 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 1
  %120 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 1
  br i1 %119, label %121, label %124

; <label>:121:                                    ; preds = %115
  %122 = bitcast %union.anon* %120 to i8**
  %123 = load i8*, i8** %122, align 8
  tail call void @free(i8* %123) #10
  br label %126

; <label>:124:                                    ; preds = %115
  %125 = getelementptr inbounds %union.anon, %union.anon* %120, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %125) #10
  br label %126

; <label>:126:                                    ; preds = %121, %124
  %127 = bitcast %struct.valinfo* %53 to i8*
  tail call void @free(i8* %127) #10
  %128 = tail call noalias i8* @xmalloc(i64 24) #10
  %129 = bitcast i8* %128 to %struct.valinfo*
  %130 = bitcast i8* %128 to i32*
  store i32 0, i32* %130, align 8
  %131 = getelementptr inbounds i8, i8* %128, i64 8
  %132 = bitcast i8* %131 to %struct.__mpz_struct*
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %132, i64 0) #10
  %133 = load i8**, i8*** @args, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %149, label %7

; <label>:136:                                    ; preds = %91
  %137 = icmp eq i32 %79, 1
  br i1 %137, label %138, label %141

; <label>:138:                                    ; preds = %136
  %139 = bitcast %union.anon* %81 to i8**
  %140 = load i8*, i8** %139, align 8
  tail call void @free(i8* %140) #10
  br label %143

; <label>:141:                                    ; preds = %100, %136
  %142 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 1, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %142) #10
  br label %143

; <label>:143:                                    ; preds = %138, %141
  %144 = bitcast %struct.valinfo* %53 to i8*
  tail call void @free(i8* %144) #10
  %145 = load i8**, i8*** @args, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %15

; <label>:148:                                    ; preds = %143, %15
  br label %150

; <label>:149:                                    ; preds = %126
  br label %150

; <label>:150:                                    ; preds = %149, %148, %1
  %151 = phi %struct.valinfo* [ %2, %1 ], [ %10, %148 ], [ %129, %149 ]
  ret %struct.valinfo* %151
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare void @__gmpz_clear(%struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_init_set_ui(%struct.__mpz_struct*, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval2(i1 zeroext) unnamed_addr #6 {
  %2 = tail call fastcc %struct.valinfo* @eval3(i1 zeroext %0)
  %3 = load i8**, i8*** @args, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %191, label %6

; <label>:6:                                      ; preds = %1
  br label %7

; <label>:7:                                      ; preds = %6, %178
  %8 = phi i8* [ %187, %178 ], [ %4, %6 ]
  %9 = phi i8** [ %186, %178 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %182, %178 ], [ %2, %6 ]
  %11 = tail call i32 @strcmp(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #10
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %9, i64 %13
  store i8** %14, i8*** @args, align 8
  br i1 %12, label %63, label %15

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %14, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %189, label %18

; <label>:18:                                     ; preds = %15
  %19 = tail call i32 @strcmp(i8* nonnull %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #10
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %14, i64 %21
  store i8** %22, i8*** @args, align 8
  br i1 %20, label %63, label %23

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %22, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %189, label %26

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @strcmp(i8* nonnull %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #10
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %22, i64 %29
  store i8** %30, i8*** @args, align 8
  br i1 %28, label %63, label %31

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %30, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %189, label %34

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 @strcmp(i8* nonnull %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0)) #10
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %30, i64 %37
  store i8** %38, i8*** @args, align 8
  br i1 %36, label %63, label %39

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %38, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %189, label %42

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcmp(i8* nonnull %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #10
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %38, i64 %45
  store i8** %46, i8*** @args, align 8
  br i1 %44, label %63, label %47

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %46, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %189, label %50

; <label>:50:                                     ; preds = %47
  %51 = tail call i32 @strcmp(i8* nonnull %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #10
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %46, i64 %53
  store i8** %54, i8*** @args, align 8
  br i1 %52, label %63, label %55

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %54, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %189, label %58

; <label>:58:                                     ; preds = %55
  %59 = tail call i32 @strcmp(i8* nonnull %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #10
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %54, i64 %61
  store i8** %62, i8*** @args, align 8
  br i1 %60, label %63, label %189

; <label>:63:                                     ; preds = %58, %50, %42, %26, %34, %18, %7
  %64 = phi i3 [ 0, %7 ], [ 1, %18 ], [ 2, %34 ], [ 2, %26 ], [ 3, %42 ], [ -4, %50 ], [ -3, %58 ]
  %65 = tail call fastcc %struct.valinfo* @eval3(i1 zeroext %0)
  %66 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0
  br i1 %0, label %69, label %67

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  br label %157

; <label>:69:                                     ; preds = %63
  %70 = load i32, i32* %66, align 8
  switch i32 %70, label %76 [
    i32 0, label %71
    i32 1, label %77
  ]

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  %73 = getelementptr inbounds %union.anon, %union.anon* %72, i64 0, i32 0, i64 0
  %74 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %73) #10
  tail call void @__gmpz_clear(%struct.__mpz_struct* %73) #10
  %75 = bitcast %union.anon* %72 to i8**
  store i8* %74, i8** %75, align 8
  store i32 1, i32* %66, align 8
  br label %77

; <label>:76:                                     ; preds = %69
  tail call void @abort() #14
  unreachable

; <label>:77:                                     ; preds = %69, %71
  %78 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %85 [
    i32 0, label %80
    i32 1, label %86
  ]

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1
  %82 = getelementptr inbounds %union.anon, %union.anon* %81, i64 0, i32 0, i64 0
  %83 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %82) #10
  tail call void @__gmpz_clear(%struct.__mpz_struct* %82) #10
  %84 = bitcast %union.anon* %81 to i8**
  store i8* %83, i8** %84, align 8
  store i32 1, i32* %78, align 8
  br label %86

; <label>:85:                                     ; preds = %77
  tail call void @abort() #14
  unreachable

; <label>:86:                                     ; preds = %77, %80
  %87 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  %88 = bitcast %union.anon* %87 to i8**
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp eq i8 %90, 45
  %92 = zext i1 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  br label %95

; <label>:95:                                     ; preds = %101, %86
  %96 = phi i8 [ %94, %86 ], [ %103, %101 ]
  %97 = phi i8* [ %93, %86 ], [ %102, %101 ]
  %98 = sext i8 %96 to i32
  %99 = add nsw i32 %98, -48
  %100 = icmp ult i32 %99, 10
  br i1 %100, label %101, label %126

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds i8, i8* %97, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %95

; <label>:105:                                    ; preds = %101
  %106 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1
  %107 = bitcast %union.anon* %106 to i8**
  %108 = load i8*, i8** %107, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp eq i8 %109, 45
  %111 = zext i1 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  br label %114

; <label>:114:                                    ; preds = %120, %105
  %115 = phi i8 [ %113, %105 ], [ %122, %120 ]
  %116 = phi i8* [ %112, %105 ], [ %121, %120 ]
  %117 = sext i8 %115 to i32
  %118 = add nsw i32 %117, -48
  %119 = icmp ult i32 %118, 10
  br i1 %119, label %120, label %129

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds i8, i8* %116, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %114

; <label>:124:                                    ; preds = %120
  %125 = tail call i32 @strintcmp(i8* %89, i8* %108) #13
  br label %135

; <label>:126:                                    ; preds = %95
  %127 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1
  %128 = bitcast %union.anon* %127 to i8**
  br label %130

; <label>:129:                                    ; preds = %114
  br label %130

; <label>:130:                                    ; preds = %129, %126
  %131 = phi i8** [ %128, %126 ], [ %107, %129 ]
  %132 = tail call i32* @__errno_location() #1
  store i32 0, i32* %132, align 4
  %133 = load i8*, i8** %131, align 8
  %134 = tail call i32 @strcoll(i8* %89, i8* %133) #13
  br label %135

; <label>:135:                                    ; preds = %130, %124
  %136 = phi i32 [ %125, %124 ], [ %134, %130 ]
  switch i3 %64, label %156 [
    i3 0, label %137
    i3 1, label %140
    i3 2, label %143
    i3 3, label %146
    i3 -4, label %149
    i3 -3, label %153
  ]

; <label>:137:                                    ; preds = %135
  %138 = lshr i32 %136, 31
  %139 = zext i32 %138 to i64
  br label %157

; <label>:140:                                    ; preds = %135
  %141 = icmp slt i32 %136, 1
  %142 = zext i1 %141 to i64
  br label %157

; <label>:143:                                    ; preds = %135
  %144 = icmp eq i32 %136, 0
  %145 = zext i1 %144 to i64
  br label %157

; <label>:146:                                    ; preds = %135
  %147 = icmp ne i32 %136, 0
  %148 = zext i1 %147 to i64
  br label %157

; <label>:149:                                    ; preds = %135
  %150 = lshr i32 %136, 31
  %151 = xor i32 %150, 1
  %152 = zext i32 %151 to i64
  br label %157

; <label>:153:                                    ; preds = %135
  %154 = icmp sgt i32 %136, 0
  %155 = zext i1 %154 to i64
  br label %157

; <label>:156:                                    ; preds = %135
  tail call void @abort() #14
  unreachable

; <label>:157:                                    ; preds = %67, %137, %140, %143, %146, %149, %153
  %158 = phi %union.anon* [ %68, %67 ], [ %87, %137 ], [ %87, %140 ], [ %87, %143 ], [ %87, %146 ], [ %87, %149 ], [ %87, %153 ]
  %159 = phi i64 [ 0, %67 ], [ %139, %137 ], [ %142, %140 ], [ %145, %143 ], [ %148, %146 ], [ %152, %149 ], [ %155, %153 ]
  %160 = load i32, i32* %66, align 8
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %165

; <label>:162:                                    ; preds = %157
  %163 = bitcast %union.anon* %158 to i8**
  %164 = load i8*, i8** %163, align 8
  tail call void @free(i8* %164) #10
  br label %167

; <label>:165:                                    ; preds = %157
  %166 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %166) #10
  br label %167

; <label>:167:                                    ; preds = %162, %165
  %168 = bitcast %struct.valinfo* %10 to i8*
  tail call void @free(i8* %168) #10
  %169 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 1
  %172 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1
  br i1 %171, label %173, label %176

; <label>:173:                                    ; preds = %167
  %174 = bitcast %union.anon* %172 to i8**
  %175 = load i8*, i8** %174, align 8
  tail call void @free(i8* %175) #10
  br label %178

; <label>:176:                                    ; preds = %167
  %177 = getelementptr inbounds %union.anon, %union.anon* %172, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %177) #10
  br label %178

; <label>:178:                                    ; preds = %176, %173
  %179 = bitcast %struct.valinfo* %65 to i8*
  tail call void @free(i8* %179) #10
  %180 = and i64 %159, 1
  %181 = tail call noalias i8* @xmalloc(i64 24) #10
  %182 = bitcast i8* %181 to %struct.valinfo*
  %183 = bitcast i8* %181 to i32*
  store i32 0, i32* %183, align 8
  %184 = getelementptr inbounds i8, i8* %181, i64 8
  %185 = bitcast i8* %184 to %struct.__mpz_struct*
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %185, i64 %180) #10
  %186 = load i8**, i8*** @args, align 8
  %187 = load i8*, i8** %186, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %189, label %7

; <label>:189:                                    ; preds = %178, %15, %23, %31, %39, %47, %55, %58
  %190 = phi %struct.valinfo* [ %10, %58 ], [ %10, %55 ], [ %10, %47 ], [ %10, %39 ], [ %10, %31 ], [ %10, %23 ], [ %10, %15 ], [ %182, %178 ]
  br label %191

; <label>:191:                                    ; preds = %189, %1
  %192 = phi %struct.valinfo* [ %2, %1 ], [ %190, %189 ]
  ret %struct.valinfo* %192
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval3(i1 zeroext) unnamed_addr #6 {
  %2 = tail call fastcc %struct.valinfo* @eval4(i1 zeroext %0)
  %3 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 0
  %4 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1, i32 0, i64 0
  %5 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1
  %6 = bitcast %union.anon* %5 to i8**
  %7 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0, i64 0
  %8 = load i8**, i8*** @args, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %28, label %11

; <label>:11:                                     ; preds = %1
  br label %12

; <label>:12:                                     ; preds = %11, %100
  %13 = phi i8* [ %103, %100 ], [ %9, %11 ]
  %14 = phi i8** [ %102, %100 ], [ %8, %11 ]
  %15 = tail call i32 @strcmp(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #10
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17
  store i8** %18, i8*** @args, align 8
  br i1 %16, label %29, label %19

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %18, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #10
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %18, i64 %25
  store i8** %26, i8*** @args, align 8
  br i1 %24, label %29, label %27

; <label>:27:                                     ; preds = %100, %19, %22
  br label %28

; <label>:28:                                     ; preds = %27, %1
  ret %struct.valinfo* %2

; <label>:29:                                     ; preds = %22, %12
  %30 = phi i32 [ 0, %12 ], [ 1, %22 ]
  %31 = tail call fastcc %struct.valinfo* @eval4(i1 zeroext %0)
  br i1 %0, label %34, label %32

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 0
  br label %90

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %3, align 8
  switch i32 %35, label %55 [
    i32 0, label %56
    i32 1, label %36
  ]

; <label>:36:                                     ; preds = %34
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp eq i8 %38, 45
  %40 = zext i1 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  br label %43

; <label>:43:                                     ; preds = %49, %36
  %44 = phi i8 [ %42, %36 ], [ %51, %49 ]
  %45 = phi i8* [ %41, %36 ], [ %50, %49 ]
  %46 = sext i8 %44 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %83

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds i8, i8* %45, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %43

; <label>:53:                                     ; preds = %49
  %54 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %7, i8* %37, i32 10) #10
  tail call void @free(i8* %37) #10
  store i32 0, i32* %3, align 8
  br label %56

; <label>:55:                                     ; preds = %34
  tail call void @abort() #14
  unreachable

; <label>:56:                                     ; preds = %34, %53
  %57 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %81 [
    i32 0, label %86
    i32 1, label %59
  ]

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 1
  %61 = bitcast %union.anon* %60 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp eq i8 %63, 45
  %65 = zext i1 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  br label %68

; <label>:68:                                     ; preds = %74, %59
  %69 = phi i8 [ %67, %59 ], [ %76, %74 ]
  %70 = phi i8* [ %66, %59 ], [ %75, %74 ]
  %71 = sext i8 %69 to i32
  %72 = add nsw i32 %71, -48
  %73 = icmp ult i32 %72, 10
  br i1 %73, label %74, label %82

; <label>:74:                                     ; preds = %68
  %75 = getelementptr inbounds i8, i8* %70, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %68

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0, i64 0
  %80 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %79, i8* %62, i32 10) #10
  tail call void @free(i8* %62) #10
  store i32 0, i32* %57, align 8
  br label %86

; <label>:81:                                     ; preds = %56
  tail call void @abort() #14
  unreachable

; <label>:82:                                     ; preds = %68
  br label %84

; <label>:83:                                     ; preds = %43
  br label %84

; <label>:84:                                     ; preds = %83, %82
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %85) #10
  unreachable

; <label>:86:                                     ; preds = %56, %78
  %87 = icmp eq i32 %30, 0
  %88 = select i1 %87, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_add, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_sub
  %89 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 1, i32 0, i64 0
  tail call void %88(%struct.__mpz_struct* %4, %struct.__mpz_struct* %4, %struct.__mpz_struct* %89) #10
  br label %90

; <label>:90:                                     ; preds = %32, %86
  %91 = phi i32* [ %33, %32 ], [ %57, %86 ]
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  %94 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 1
  br i1 %93, label %95, label %98

; <label>:95:                                     ; preds = %90
  %96 = bitcast %union.anon* %94 to i8**
  %97 = load i8*, i8** %96, align 8
  tail call void @free(i8* %97) #10
  br label %100

; <label>:98:                                     ; preds = %90
  %99 = getelementptr inbounds %union.anon, %union.anon* %94, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %99) #10
  br label %100

; <label>:100:                                    ; preds = %95, %98
  %101 = bitcast %struct.valinfo* %31 to i8*
  tail call void @free(i8* %101) #10
  %102 = load i8**, i8*** @args, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %27, label %12
}

declare i8* @__gmpz_get_str(i8*, i32, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval4(i1 zeroext) unnamed_addr #6 {
  %2 = tail call fastcc %struct.valinfo* @eval5(i1 zeroext %0)
  %3 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 0
  %4 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1, i32 0, i64 0
  %5 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1
  %6 = bitcast %union.anon* %5 to i8**
  %7 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0, i64 0
  %8 = load i8**, i8*** @args, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %36, label %11

; <label>:11:                                     ; preds = %1
  br label %12

; <label>:12:                                     ; preds = %11, %118
  %13 = phi i8* [ %121, %118 ], [ %9, %11 ]
  %14 = phi i8** [ %120, %118 ], [ %8, %11 ]
  %15 = tail call i32 @strcmp(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #10
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17
  store i8** %18, i8*** @args, align 8
  br i1 %16, label %37, label %19

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %18, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %35, label %22

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0)) #10
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %18, i64 %25
  store i8** %26, i8*** @args, align 8
  br i1 %24, label %37, label %27

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %26, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %35, label %30

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @strcmp(i8* nonnull %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)) #10
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %26, i64 %33
  store i8** %34, i8*** @args, align 8
  br i1 %32, label %37, label %35

; <label>:35:                                     ; preds = %118, %19, %27, %30
  br label %36

; <label>:36:                                     ; preds = %35, %1
  ret %struct.valinfo* %2

; <label>:37:                                     ; preds = %30, %22, %12
  %38 = phi i32 [ 0, %12 ], [ 1, %22 ], [ 2, %30 ]
  %39 = tail call fastcc %struct.valinfo* @eval5(i1 zeroext %0)
  br i1 %0, label %42, label %40

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 0
  br label %108

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %3, align 8
  switch i32 %43, label %63 [
    i32 0, label %64
    i32 1, label %44
  ]

; <label>:44:                                     ; preds = %42
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 45
  %48 = zext i1 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  br label %51

; <label>:51:                                     ; preds = %57, %44
  %52 = phi i8 [ %50, %44 ], [ %59, %57 ]
  %53 = phi i8* [ %49, %44 ], [ %58, %57 ]
  %54 = sext i8 %52 to i32
  %55 = add nsw i32 %54, -48
  %56 = icmp ult i32 %55, 10
  br i1 %56, label %57, label %91

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds i8, i8* %53, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %51

; <label>:61:                                     ; preds = %57
  %62 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %7, i8* %45, i32 10) #10
  tail call void @free(i8* %45) #10
  store i32 0, i32* %3, align 8
  br label %64

; <label>:63:                                     ; preds = %42
  tail call void @abort() #14
  unreachable

; <label>:64:                                     ; preds = %42, %61
  %65 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %89 [
    i32 0, label %94
    i32 1, label %67
  ]

; <label>:67:                                     ; preds = %64
  %68 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 1
  %69 = bitcast %union.anon* %68 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 45
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1
  br label %76

; <label>:76:                                     ; preds = %82, %67
  %77 = phi i8 [ %75, %67 ], [ %84, %82 ]
  %78 = phi i8* [ %74, %67 ], [ %83, %82 ]
  %79 = sext i8 %77 to i32
  %80 = add nsw i32 %79, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %90

; <label>:82:                                     ; preds = %76
  %83 = getelementptr inbounds i8, i8* %78, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %76

; <label>:86:                                     ; preds = %82
  %87 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0, i64 0
  %88 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %87, i8* %70, i32 10) #10
  tail call void @free(i8* %70) #10
  store i32 0, i32* %65, align 8
  br label %94

; <label>:89:                                     ; preds = %64
  tail call void @abort() #14
  unreachable

; <label>:90:                                     ; preds = %76
  br label %92

; <label>:91:                                     ; preds = %51
  br label %92

; <label>:92:                                     ; preds = %91, %90
  %93 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %93) #10
  unreachable

; <label>:94:                                     ; preds = %64, %86
  %95 = icmp eq i32 %38, 0
  br i1 %95, label %105, label %96

; <label>:96:                                     ; preds = %94
  %97 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 1, i32 0, i64 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

; <label>:100:                                    ; preds = %96
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %101) #10
  unreachable

; <label>:102:                                    ; preds = %96
  %103 = icmp eq i32 %38, 1
  %104 = select i1 %103, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_q, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_r
  br label %105

; <label>:105:                                    ; preds = %94, %102
  %106 = phi void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* [ %104, %102 ], [ @__gmpz_mul, %94 ]
  %107 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 1, i32 0, i64 0
  tail call void %106(%struct.__mpz_struct* %4, %struct.__mpz_struct* %4, %struct.__mpz_struct* %107) #10
  br label %108

; <label>:108:                                    ; preds = %40, %105
  %109 = phi i32* [ %41, %40 ], [ %65, %105 ]
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 1
  %112 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 1
  br i1 %111, label %113, label %116

; <label>:113:                                    ; preds = %108
  %114 = bitcast %union.anon* %112 to i8**
  %115 = load i8*, i8** %114, align 8
  tail call void @free(i8* %115) #10
  br label %118

; <label>:116:                                    ; preds = %108
  %117 = getelementptr inbounds %union.anon, %union.anon* %112, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %117) #10
  br label %118

; <label>:118:                                    ; preds = %113, %116
  %119 = bitcast %struct.valinfo* %39 to i8*
  tail call void @free(i8* %119) #10
  %120 = load i8**, i8*** @args, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %35, label %12
}

declare i32 @__gmpz_init_set_str(%struct.__mpz_struct*, i8*, i32) local_unnamed_addr #3

declare void @__gmpz_add(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_sub(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval5(i1 zeroext) unnamed_addr #6 {
  %2 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  %3 = load i8**, i8*** @args, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %48, label %6

; <label>:6:                                      ; preds = %1
  br label %7

; <label>:7:                                      ; preds = %6, %41
  %8 = phi i8* [ %44, %41 ], [ %4, %6 ]
  %9 = phi i8** [ %43, %41 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %31, %41 ], [ %2, %6 ]
  %11 = tail call i32 @strcmp(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #10
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %9, i64 %13
  store i8** %14, i8*** @args, align 8
  br i1 %12, label %15, label %46

; <label>:15:                                     ; preds = %7
  %16 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  br i1 %0, label %17, label %30

; <label>:17:                                     ; preds = %15
  %18 = tail call fastcc %struct.valinfo* @docolon(%struct.valinfo* %10, %struct.valinfo* %16)
  %19 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  %22 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  br i1 %21, label %23, label %26

; <label>:23:                                     ; preds = %17
  %24 = bitcast %union.anon* %22 to i8**
  %25 = load i8*, i8** %24, align 8
  tail call void @free(i8* %25) #10
  br label %28

; <label>:26:                                     ; preds = %17
  %27 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %27) #10
  br label %28

; <label>:28:                                     ; preds = %23, %26
  %29 = bitcast %struct.valinfo* %10 to i8*
  tail call void @free(i8* %29) #10
  br label %30

; <label>:30:                                     ; preds = %28, %15
  %31 = phi %struct.valinfo* [ %18, %28 ], [ %10, %15 ]
  %32 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %16, i64 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  %35 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %16, i64 0, i32 1
  br i1 %34, label %36, label %39

; <label>:36:                                     ; preds = %30
  %37 = bitcast %union.anon* %35 to i8**
  %38 = load i8*, i8** %37, align 8
  tail call void @free(i8* %38) #10
  br label %41

; <label>:39:                                     ; preds = %30
  %40 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %40) #10
  br label %41

; <label>:41:                                     ; preds = %36, %39
  %42 = bitcast %struct.valinfo* %16 to i8*
  tail call void @free(i8* %42) #10
  %43 = load i8**, i8*** @args, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %7

; <label>:46:                                     ; preds = %41, %7
  %47 = phi %struct.valinfo* [ %31, %41 ], [ %10, %7 ]
  br label %48

; <label>:48:                                     ; preds = %46, %1
  %49 = phi %struct.valinfo* [ %2, %1 ], [ %47, %46 ]
  ret %struct.valinfo* %49
}

declare void @__gmpz_tdiv_q(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_tdiv_r(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_mul(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval6(i1 zeroext) unnamed_addr #6 {
  %2 = load i8**, i8*** @args, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %339, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @strcmp(i8* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #10
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = getelementptr inbounds i8*, i8** %2, i64 %8
  store i8** %9, i8*** @args, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %7, label %12, label %22

; <label>:12:                                     ; preds = %5
  br i1 %11, label %13, label %14

; <label>:13:                                     ; preds = %12
  tail call fastcc void @syntax_error()
  unreachable

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds i8*, i8** %9, i64 1
  store i8** %15, i8*** @args, align 8
  %16 = tail call noalias i8* @xmalloc(i64 24) #10
  %17 = bitcast i8* %16 to %struct.valinfo*
  %18 = bitcast i8* %16 to i32*
  store i32 1, i32* %18, align 8
  %19 = tail call noalias i8* @xstrdup(i8* nonnull %10) #10
  %20 = getelementptr inbounds i8, i8* %16, i64 8
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 8
  br label %375

; <label>:22:                                     ; preds = %5
  br i1 %11, label %339, label %23

; <label>:23:                                     ; preds = %22
  %24 = tail call i32 @strcmp(i8* nonnull %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)) #10
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %9, i64 %26
  store i8** %27, i8*** @args, align 8
  br i1 %25, label %28, label %59

; <label>:28:                                     ; preds = %23
  %29 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  %30 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %41 [
    i32 0, label %36
    i32 1, label %32
  ]

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1
  %34 = bitcast %union.anon* %33 to i8**
  %35 = load i8*, i8** %34, align 8
  br label %42

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1
  %38 = getelementptr inbounds %union.anon, %union.anon* %37, i64 0, i32 0, i64 0
  %39 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %38) #10
  tail call void @__gmpz_clear(%struct.__mpz_struct* %38) #10
  %40 = bitcast %union.anon* %37 to i8**
  store i8* %39, i8** %40, align 8
  store i32 1, i32* %30, align 8
  br label %42

; <label>:41:                                     ; preds = %28
  tail call void @abort() #14
  unreachable

; <label>:42:                                     ; preds = %32, %36
  %43 = phi i8** [ %34, %32 ], [ %40, %36 ]
  %44 = phi i8* [ %35, %32 ], [ %39, %36 ]
  %45 = tail call i64 @strlen(i8* %44) #13
  %46 = tail call noalias i8* @xmalloc(i64 24) #10
  %47 = bitcast i8* %46 to %struct.valinfo*
  %48 = bitcast i8* %46 to i32*
  store i32 0, i32* %48, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 8
  %50 = bitcast i8* %49 to %struct.__mpz_struct*
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %50, i64 %45) #10
  %51 = load i32, i32* %30, align 8
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %42
  %54 = load i8*, i8** %43, align 8
  tail call void @free(i8* %54) #10
  br label %57

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %56) #10
  br label %57

; <label>:57:                                     ; preds = %53, %55
  %58 = bitcast %struct.valinfo* %29 to i8*
  tail call void @free(i8* %58) #10
  br label %375

; <label>:59:                                     ; preds = %23
  %60 = load i8*, i8** %27, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %339, label %62

; <label>:62:                                     ; preds = %59
  %63 = tail call i32 @strcmp(i8* nonnull %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #10
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %27, i64 %65
  store i8** %66, i8*** @args, align 8
  br i1 %64, label %67, label %96

; <label>:67:                                     ; preds = %62
  %68 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  %69 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  br i1 %0, label %70, label %83

; <label>:70:                                     ; preds = %67
  %71 = tail call fastcc %struct.valinfo* @docolon(%struct.valinfo* %68, %struct.valinfo* %69)
  %72 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %68, i64 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  %75 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %68, i64 0, i32 1
  br i1 %74, label %76, label %79

; <label>:76:                                     ; preds = %70
  %77 = bitcast %union.anon* %75 to i8**
  %78 = load i8*, i8** %77, align 8
  tail call void @free(i8* %78) #10
  br label %81

; <label>:79:                                     ; preds = %70
  %80 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %80) #10
  br label %81

; <label>:81:                                     ; preds = %76, %79
  %82 = bitcast %struct.valinfo* %68 to i8*
  tail call void @free(i8* %82) #10
  br label %83

; <label>:83:                                     ; preds = %67, %81
  %84 = phi %struct.valinfo* [ %71, %81 ], [ %68, %67 ]
  %85 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %69, i64 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  %88 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %69, i64 0, i32 1
  br i1 %87, label %89, label %92

; <label>:89:                                     ; preds = %83
  %90 = bitcast %union.anon* %88 to i8**
  %91 = load i8*, i8** %90, align 8
  tail call void @free(i8* %91) #10
  br label %94

; <label>:92:                                     ; preds = %83
  %93 = getelementptr inbounds %union.anon, %union.anon* %88, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %93) #10
  br label %94

; <label>:94:                                     ; preds = %89, %92
  %95 = bitcast %struct.valinfo* %69 to i8*
  tail call void @free(i8* %95) #10
  br label %375

; <label>:96:                                     ; preds = %62
  %97 = load i8*, i8** %66, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %339, label %99

; <label>:99:                                     ; preds = %96
  %100 = tail call i32 @strcmp(i8* nonnull %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0)) #10
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %66, i64 %102
  store i8** %103, i8*** @args, align 8
  br i1 %101, label %104, label %161

; <label>:104:                                    ; preds = %99
  %105 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  %106 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  %107 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %105, i64 0, i32 0
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %114 [
    i32 0, label %109
    i32 1, label %115
  ]

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %105, i64 0, i32 1
  %111 = getelementptr inbounds %union.anon, %union.anon* %110, i64 0, i32 0, i64 0
  %112 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %111) #10
  tail call void @__gmpz_clear(%struct.__mpz_struct* %111) #10
  %113 = bitcast %union.anon* %110 to i8**
  store i8* %112, i8** %113, align 8
  store i32 1, i32* %107, align 8
  br label %115

; <label>:114:                                    ; preds = %104
  tail call void @abort() #14
  unreachable

; <label>:115:                                    ; preds = %104, %109
  %116 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %127 [
    i32 0, label %122
    i32 1, label %118
  ]

; <label>:118:                                    ; preds = %115
  %119 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 1
  %120 = bitcast %union.anon* %119 to i8**
  %121 = load i8*, i8** %120, align 8
  br label %128

; <label>:122:                                    ; preds = %115
  %123 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 1
  %124 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0, i64 0
  %125 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %124) #10
  tail call void @__gmpz_clear(%struct.__mpz_struct* %124) #10
  %126 = bitcast %union.anon* %123 to i8**
  store i8* %125, i8** %126, align 8
  store i32 1, i32* %116, align 8
  br label %128

; <label>:127:                                    ; preds = %115
  tail call void @abort() #14
  unreachable

; <label>:128:                                    ; preds = %118, %122
  %129 = phi i8** [ %120, %118 ], [ %126, %122 ]
  %130 = phi i8* [ %121, %118 ], [ %125, %122 ]
  %131 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %105, i64 0, i32 1
  %132 = bitcast %union.anon* %131 to i8**
  %133 = load i8*, i8** %132, align 8
  %134 = tail call i64 @strcspn(i8* %133, i8* %130) #10
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  %138 = add i64 %134, 1
  %139 = select i1 %137, i64 %138, i64 0
  %140 = tail call noalias i8* @xmalloc(i64 24) #10
  %141 = bitcast i8* %140 to %struct.valinfo*
  %142 = bitcast i8* %140 to i32*
  store i32 0, i32* %142, align 8
  %143 = getelementptr inbounds i8, i8* %140, i64 8
  %144 = bitcast i8* %143 to %struct.__mpz_struct*
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %144, i64 %139) #10
  %145 = load i32, i32* %107, align 8
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %149

; <label>:147:                                    ; preds = %128
  %148 = load i8*, i8** %132, align 8
  tail call void @free(i8* %148) #10
  br label %151

; <label>:149:                                    ; preds = %128
  %150 = getelementptr inbounds %union.anon, %union.anon* %131, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %150) #10
  br label %151

; <label>:151:                                    ; preds = %147, %149
  %152 = bitcast %struct.valinfo* %105 to i8*
  tail call void @free(i8* %152) #10
  %153 = load i32, i32* %116, align 8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %157

; <label>:155:                                    ; preds = %151
  %156 = load i8*, i8** %129, align 8
  tail call void @free(i8* %156) #10
  br label %159

; <label>:157:                                    ; preds = %151
  %158 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 1, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %158) #10
  br label %159

; <label>:159:                                    ; preds = %155, %157
  %160 = bitcast %struct.valinfo* %106 to i8*
  tail call void @free(i8* %160) #10
  br label %375

; <label>:161:                                    ; preds = %99
  %162 = load i8*, i8** %103, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %339, label %164

; <label>:164:                                    ; preds = %161
  %165 = tail call i32 @strcmp(i8* nonnull %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0)) #10
  %166 = icmp eq i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %103, i64 %167
  store i8** %168, i8*** @args, align 8
  br i1 %166, label %169, label %336

; <label>:169:                                    ; preds = %164
  %170 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  %171 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  %172 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0)
  %173 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 0
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %184 [
    i32 0, label %179
    i32 1, label %175
  ]

; <label>:175:                                    ; preds = %169
  %176 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 1
  %177 = bitcast %union.anon* %176 to i8**
  %178 = load i8*, i8** %177, align 8
  br label %185

; <label>:179:                                    ; preds = %169
  %180 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 1
  %181 = getelementptr inbounds %union.anon, %union.anon* %180, i64 0, i32 0, i64 0
  %182 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %181) #10
  tail call void @__gmpz_clear(%struct.__mpz_struct* %181) #10
  %183 = bitcast %union.anon* %180 to i8**
  store i8* %182, i8** %183, align 8
  store i32 1, i32* %173, align 8
  br label %185

; <label>:184:                                    ; preds = %169
  tail call void @abort() #14
  unreachable

; <label>:185:                                    ; preds = %175, %179
  %186 = phi i8** [ %177, %175 ], [ %183, %179 ]
  %187 = phi i8* [ %178, %175 ], [ %182, %179 ]
  %188 = tail call i64 @strlen(i8* %187) #13
  %189 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 0
  %190 = load i32, i32* %189, align 8
  switch i32 %190, label %213 [
    i32 0, label %214
    i32 1, label %191
  ]

; <label>:191:                                    ; preds = %185
  %192 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1
  %193 = bitcast %union.anon* %192 to i8**
  %194 = load i8*, i8** %193, align 8
  %195 = load i8, i8* %194, align 1
  %196 = icmp eq i8 %195, 45
  %197 = zext i1 %196 to i64
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = load i8, i8* %198, align 1
  br label %200

; <label>:200:                                    ; preds = %206, %191
  %201 = phi i8 [ %199, %191 ], [ %208, %206 ]
  %202 = phi i8* [ %198, %191 ], [ %207, %206 ]
  %203 = sext i8 %201 to i32
  %204 = add nsw i32 %203, -48
  %205 = icmp ult i32 %204, 10
  br i1 %205, label %206, label %241

; <label>:206:                                    ; preds = %200
  %207 = getelementptr inbounds i8, i8* %202, i64 1
  %208 = load i8, i8* %207, align 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %200

; <label>:210:                                    ; preds = %206
  %211 = getelementptr inbounds %union.anon, %union.anon* %192, i64 0, i32 0, i64 0
  %212 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %211, i8* %194, i32 10) #10
  tail call void @free(i8* %194) #10
  store i32 0, i32* %189, align 8
  br label %214

; <label>:213:                                    ; preds = %185
  tail call void @abort() #14
  unreachable

; <label>:214:                                    ; preds = %185, %210
  %215 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 0
  %216 = load i32, i32* %215, align 8
  switch i32 %216, label %239 [
    i32 0, label %248
    i32 1, label %217
  ]

; <label>:217:                                    ; preds = %214
  %218 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1
  %219 = bitcast %union.anon* %218 to i8**
  %220 = load i8*, i8** %219, align 8
  %221 = load i8, i8* %220, align 1
  %222 = icmp eq i8 %221, 45
  %223 = zext i1 %222 to i64
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  %225 = load i8, i8* %224, align 1
  br label %226

; <label>:226:                                    ; preds = %232, %217
  %227 = phi i8 [ %225, %217 ], [ %234, %232 ]
  %228 = phi i8* [ %224, %217 ], [ %233, %232 ]
  %229 = sext i8 %227 to i32
  %230 = add nsw i32 %229, -48
  %231 = icmp ult i32 %230, 10
  br i1 %231, label %232, label %240

; <label>:232:                                    ; preds = %226
  %233 = getelementptr inbounds i8, i8* %228, i64 1
  %234 = load i8, i8* %233, align 1
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %226

; <label>:236:                                    ; preds = %232
  %237 = getelementptr inbounds %union.anon, %union.anon* %218, i64 0, i32 0, i64 0
  %238 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %237, i8* %220, i32 10) #10
  tail call void @free(i8* %220) #10
  store i32 0, i32* %215, align 8
  br label %248

; <label>:239:                                    ; preds = %214
  tail call void @abort() #14
  unreachable

; <label>:240:                                    ; preds = %226
  br label %242

; <label>:241:                                    ; preds = %200
  br label %242

; <label>:242:                                    ; preds = %241, %240
  %243 = tail call noalias i8* @xmalloc(i64 24) #10
  %244 = bitcast i8* %243 to i32*
  store i32 1, i32* %244, align 8
  %245 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10
  %246 = getelementptr inbounds i8, i8* %243, i64 8
  %247 = bitcast i8* %246 to i8**
  store i8* %245, i8** %247, align 8
  br label %304

; <label>:248:                                    ; preds = %214, %236
  %249 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1, i32 0, i64 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %262, label %252

; <label>:252:                                    ; preds = %248
  %253 = icmp ult i32 %250, 2
  br i1 %253, label %254, label %261

; <label>:254:                                    ; preds = %252
  %255 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1, i32 0, i64 0, i32 2
  %256 = load i64*, i64** %255, align 8
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i32 %250, 0
  %259 = select i1 %258, i64 %257, i64 0
  %260 = icmp eq i64 %259, -1
  br i1 %260, label %261, label %262

; <label>:261:                                    ; preds = %254, %252
  br label %262

; <label>:262:                                    ; preds = %248, %254, %261
  %263 = phi i64 [ -2, %261 ], [ %259, %254 ], [ -1, %248 ]
  %264 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1, i32 0, i64 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %277, label %267

; <label>:267:                                    ; preds = %262
  %268 = icmp ult i32 %265, 2
  br i1 %268, label %269, label %276

; <label>:269:                                    ; preds = %267
  %270 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1, i32 0, i64 0, i32 2
  %271 = load i64*, i64** %270, align 8
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i32 %265, 0
  %274 = select i1 %273, i64 %272, i64 0
  %275 = icmp eq i64 %274, -1
  br i1 %275, label %276, label %277

; <label>:276:                                    ; preds = %269, %267
  br label %277

; <label>:277:                                    ; preds = %262, %269, %276
  %278 = phi i64 [ -2, %276 ], [ %274, %269 ], [ -1, %262 ]
  %279 = add i64 %263, -1
  %280 = icmp ult i64 %279, %188
  br i1 %280, label %281, label %282

; <label>:281:                                    ; preds = %277
  switch i64 %278, label %288 [
    i64 -1, label %282
    i64 0, label %282
  ]

; <label>:282:                                    ; preds = %277, %281, %281
  %283 = tail call noalias i8* @xmalloc(i64 24) #10
  %284 = bitcast i8* %283 to i32*
  store i32 1, i32* %284, align 8
  %285 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10
  %286 = getelementptr inbounds i8, i8* %283, i64 8
  %287 = bitcast i8* %286 to i8**
  store i8* %285, i8** %287, align 8
  br label %304

; <label>:288:                                    ; preds = %281
  %289 = sub i64 %188, %263
  %290 = add i64 %289, 1
  %291 = icmp ult i64 %278, %290
  %292 = select i1 %291, i64 %278, i64 %290
  %293 = tail call noalias i8* @xmalloc(i64 24) #10
  %294 = bitcast i8* %293 to i32*
  store i32 1, i32* %294, align 8
  %295 = add i64 %292, 1
  %296 = tail call noalias i8* @xmalloc(i64 %295) #10
  %297 = getelementptr inbounds i8, i8* %293, i64 8
  %298 = bitcast i8* %297 to i8**
  store i8* %296, i8** %298, align 8
  %299 = load i8*, i8** %186, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 %263
  %301 = getelementptr inbounds i8, i8* %300, i64 -1
  %302 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %296, i1 false) #10
  %303 = tail call i8* @__mempcpy_chk(i8* nonnull %296, i8* nonnull %301, i64 %292, i64 %302) #10
  store i8 0, i8* %303, align 1
  br label %304

; <label>:304:                                    ; preds = %282, %288, %242
  %305 = phi i8* [ %243, %242 ], [ %283, %282 ], [ %293, %288 ]
  %306 = bitcast i8* %305 to %struct.valinfo*
  %307 = load i32, i32* %173, align 8
  %308 = icmp eq i32 %307, 1
  br i1 %308, label %309, label %311

; <label>:309:                                    ; preds = %304
  %310 = load i8*, i8** %186, align 8
  tail call void @free(i8* %310) #10
  br label %313

; <label>:311:                                    ; preds = %304
  %312 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 1, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %312) #10
  br label %313

; <label>:313:                                    ; preds = %309, %311
  %314 = bitcast %struct.valinfo* %170 to i8*
  tail call void @free(i8* %314) #10
  %315 = load i32, i32* %189, align 8
  %316 = icmp eq i32 %315, 1
  %317 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1
  br i1 %316, label %318, label %321

; <label>:318:                                    ; preds = %313
  %319 = bitcast %union.anon* %317 to i8**
  %320 = load i8*, i8** %319, align 8
  tail call void @free(i8* %320) #10
  br label %323

; <label>:321:                                    ; preds = %313
  %322 = getelementptr inbounds %union.anon, %union.anon* %317, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %322) #10
  br label %323

; <label>:323:                                    ; preds = %318, %321
  %324 = bitcast %struct.valinfo* %171 to i8*
  tail call void @free(i8* %324) #10
  %325 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = icmp eq i32 %326, 1
  %328 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1
  br i1 %327, label %329, label %332

; <label>:329:                                    ; preds = %323
  %330 = bitcast %union.anon* %328 to i8**
  %331 = load i8*, i8** %330, align 8
  tail call void @free(i8* %331) #10
  br label %334

; <label>:332:                                    ; preds = %323
  %333 = getelementptr inbounds %union.anon, %union.anon* %328, i64 0, i32 0, i64 0
  tail call void @__gmpz_clear(%struct.__mpz_struct* %333) #10
  br label %334

; <label>:334:                                    ; preds = %329, %332
  %335 = bitcast %struct.valinfo* %172 to i8*
  tail call void @free(i8* %335) #10
  br label %375

; <label>:336:                                    ; preds = %164
  %337 = load i8*, i8** %168, align 8
  %338 = icmp eq i8* %337, null
  br i1 %338, label %339, label %340

; <label>:339:                                    ; preds = %1, %22, %59, %96, %161, %336
  tail call fastcc void @syntax_error() #10
  unreachable

; <label>:340:                                    ; preds = %336
  %341 = tail call i32 @strcmp(i8* nonnull %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #10
  %342 = icmp eq i32 %341, 0
  %343 = zext i1 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %168, i64 %343
  store i8** %344, i8*** @args, align 8
  br i1 %342, label %345, label %356

; <label>:345:                                    ; preds = %340
  %346 = tail call fastcc %struct.valinfo* @eval(i1 zeroext %0) #10
  %347 = load i8**, i8*** @args, align 8
  %348 = load i8*, i8** %347, align 8
  %349 = icmp eq i8* %348, null
  br i1 %349, label %355, label %350

; <label>:350:                                    ; preds = %345
  %351 = tail call i32 @strcmp(i8* nonnull %348, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10
  %352 = icmp eq i32 %351, 0
  %353 = zext i1 %352 to i64
  %354 = getelementptr inbounds i8*, i8** %347, i64 %353
  store i8** %354, i8*** @args, align 8
  br i1 %352, label %375, label %355

; <label>:355:                                    ; preds = %345, %350
  tail call fastcc void @syntax_error() #10
  unreachable

; <label>:356:                                    ; preds = %340
  %357 = load i8*, i8** %344, align 8
  %358 = icmp eq i8* %357, null
  br i1 %358, label %365, label %359

; <label>:359:                                    ; preds = %356
  %360 = tail call i32 @strcmp(i8* nonnull %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10
  %361 = icmp eq i32 %360, 0
  %362 = zext i1 %361 to i64
  %363 = getelementptr inbounds i8*, i8** %344, i64 %362
  store i8** %363, i8*** @args, align 8
  br i1 %361, label %364, label %365

; <label>:364:                                    ; preds = %359
  tail call fastcc void @syntax_error() #10
  unreachable

; <label>:365:                                    ; preds = %356, %359
  %366 = phi i8** [ %344, %356 ], [ %363, %359 ]
  %367 = getelementptr inbounds i8*, i8** %366, i64 1
  store i8** %367, i8*** @args, align 8
  %368 = load i8*, i8** %366, align 8
  %369 = tail call noalias i8* @xmalloc(i64 24) #10
  %370 = bitcast i8* %369 to %struct.valinfo*
  %371 = bitcast i8* %369 to i32*
  store i32 1, i32* %371, align 8
  %372 = tail call noalias i8* @xstrdup(i8* %368) #10
  %373 = getelementptr inbounds i8, i8* %369, i64 8
  %374 = bitcast i8* %373 to i8**
  store i8* %372, i8** %374, align 8
  br label %375

; <label>:375:                                    ; preds = %365, %350, %334, %159, %94, %57, %14
  %376 = phi %struct.valinfo* [ %17, %14 ], [ %47, %57 ], [ %84, %94 ], [ %141, %159 ], [ %306, %334 ], [ %370, %365 ], [ %346, %350 ]
  ret %struct.valinfo* %376
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @docolon(%struct.valinfo*, %struct.valinfo*) unnamed_addr #6 {
  %3 = alloca %struct.re_pattern_buffer, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.re_registers, align 8
  %6 = bitcast %struct.re_pattern_buffer* %3 to i8*
  call void @llvm.lifetime.start(i64 64, i8* nonnull %6) #10
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* nonnull %7) #10
  %8 = bitcast %struct.re_registers* %5 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %8) #10
  %9 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1, label %17
  ]

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 1
  %13 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0, i64 0
  %14 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %13) #10
  tail call void @__gmpz_clear(%struct.__mpz_struct* %13) #10
  %15 = bitcast %union.anon* %12 to i8**
  store i8* %14, i8** %15, align 8
  store i32 1, i32* %9, align 8
  br label %17

; <label>:16:                                     ; preds = %2
  tail call void @abort() #14
  unreachable

; <label>:17:                                     ; preds = %2, %11
  %18 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %29 [
    i32 0, label %24
    i32 1, label %20
  ]

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 1
  %22 = bitcast %union.anon* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  br label %30

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 1
  %26 = getelementptr inbounds %union.anon, %union.anon* %25, i64 0, i32 0, i64 0
  %27 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %26) #10
  tail call void @__gmpz_clear(%struct.__mpz_struct* %26) #10
  %28 = bitcast %union.anon* %25 to i8**
  store i8* %27, i8** %28, align 8
  store i32 1, i32* %18, align 8
  br label %30

; <label>:29:                                     ; preds = %17
  tail call void @abort() #14
  unreachable

; <label>:30:                                     ; preds = %20, %24
  %31 = phi i8* [ %23, %20 ], [ %27, %24 ]
  %32 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i64 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i64 0, i32 1
  %34 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i64 0, i32 2
  %35 = bitcast i32** %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 16, i32 8, i1 false)
  %36 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 4
  %37 = bitcast %struct.re_pattern_buffer* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %37, i8 0, i64 16, i32 8, i1 false)
  store i8* %7, i8** %36, align 8
  %38 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 5
  store i8* null, i8** %38, align 8
  store i64 710, i64* @re_syntax_options, align 8
  %39 = call i64 @strlen(i8* %31) #13
  %40 = call i8* @re_compile_pattern(i8* %31, i64 %39, %struct.re_pattern_buffer* nonnull %3) #10
  %41 = icmp eq i8* %40, null
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %30
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* nonnull %40) #10
  unreachable

; <label>:43:                                     ; preds = %30
  %44 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 7
  %45 = load i8, i8* %44, align 8
  %46 = and i8 %45, 127
  store i8 %46, i8* %44, align 8
  %47 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 1
  %48 = bitcast %union.anon* %47 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* %49) #13
  %51 = trunc i64 %50 to i32
  %52 = call i32 @re_match(%struct.re_pattern_buffer* nonnull %3, i8* %49, i32 %51, i32 0, %struct.re_registers* nonnull %5) #10
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %84

; <label>:54:                                     ; preds = %43
  %55 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %77, label %58

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %48, align 8
  %60 = load i32*, i32** %34, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %48, align 8
  %66 = load i32*, i32** %33, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = call noalias i8* @xmalloc(i64 24) #10
  %72 = bitcast i8* %71 to %struct.valinfo*
  %73 = bitcast i8* %71 to i32*
  store i32 1, i32* %73, align 8
  %74 = call noalias i8* @xstrdup(i8* %70) #10
  %75 = getelementptr inbounds i8, i8* %71, i64 8
  %76 = bitcast i8* %75 to i8**
  store i8* %74, i8** %76, align 8
  br label %105

; <label>:77:                                     ; preds = %54
  %78 = sext i32 %52 to i64
  %79 = call noalias i8* @xmalloc(i64 24) #10
  %80 = bitcast i8* %79 to %struct.valinfo*
  %81 = bitcast i8* %79 to i32*
  store i32 0, i32* %81, align 8
  %82 = getelementptr inbounds i8, i8* %79, i64 8
  %83 = bitcast i8* %82 to %struct.__mpz_struct*
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* %83, i64 %78) #10
  br label %105

; <label>:84:                                     ; preds = %43
  switch i32 %52, label %102 [
    i32 -1, label %85
    i32 -2, label %99
  ]

; <label>:85:                                     ; preds = %84
  %86 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  %89 = call noalias i8* @xmalloc(i64 24) #10
  %90 = bitcast i8* %89 to %struct.valinfo*
  %91 = bitcast i8* %89 to i32*
  br i1 %88, label %96, label %92

; <label>:92:                                     ; preds = %85
  store i32 1, i32* %91, align 8
  %93 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10
  %94 = getelementptr inbounds i8, i8* %89, i64 8
  %95 = bitcast i8* %94 to i8**
  store i8* %93, i8** %95, align 8
  br label %105

; <label>:96:                                     ; preds = %85
  store i32 0, i32* %91, align 8
  %97 = getelementptr inbounds i8, i8* %89, i64 8
  %98 = bitcast i8* %97 to %struct.__mpz_struct*
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* %98, i64 0) #10
  br label %105

; <label>:99:                                     ; preds = %84
  %100 = tail call i32* @__errno_location() #1
  %101 = load i32, i32* %100, align 4
  br label %102

; <label>:102:                                    ; preds = %84, %99
  %103 = phi i32 [ %101, %99 ], [ 75, %84 ]
  %104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 3, i32 %103, i8* %104) #10
  unreachable

; <label>:105:                                    ; preds = %96, %92, %58, %77
  %106 = phi %struct.valinfo* [ %72, %58 ], [ %80, %77 ], [ %90, %92 ], [ %90, %96 ]
  %107 = load i32, i32* %32, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

; <label>:109:                                    ; preds = %105
  %110 = bitcast i32** %33 to i8**
  %111 = load i8*, i8** %110, align 8
  call void @free(i8* %111) #10
  %112 = bitcast i32** %34 to i8**
  %113 = load i8*, i8** %112, align 8
  call void @free(i8* %113) #10
  br label %114

; <label>:114:                                    ; preds = %105, %109
  store i8* null, i8** %36, align 8
  call void @regfree(%struct.re_pattern_buffer* nonnull %3) #10
  call void @llvm.lifetime.end(i64 24, i8* nonnull %8) #10
  call void @llvm.lifetime.end(i64 256, i8* nonnull %7) #10
  call void @llvm.lifetime.end(i64 64, i8* nonnull %6) #10
  ret %struct.valinfo* %106
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

declare i32 @re_match(%struct.re_pattern_buffer*, i8*, i32, i32, %struct.re_registers*) local_unnamed_addr #3

declare void @regfree(%struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 {
  store i8* %0, i8** @file_name, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1
  %6 = icmp eq i8 %5, 0
  %7 = tail call i32* @__errno_location() #1
  br i1 %6, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %21, label %11

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 5) #10
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.22, i64 0, i64 0), i8* %17, i8* %12) #10
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.23, i64 0, i64 0), i8* %12) #10
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #14
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #14
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = load i32, i32* @opterr, align 4
  store i32 0, i32* @opterr, align 4
  %9 = icmp eq i32 %0, 2
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ]

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10
  br label %17

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10
  call void @exit(i32 0) #14
  unreachable

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4
  store i32 0, i32* @optind, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
  tail call void @abort() #14
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13
  %8 = icmp ne i8* %7, null
  %9 = getelementptr inbounds i8, i8* %7, i64 1
  %10 = select i1 %8, i8* %9, i8* %0
  %11 = ptrtoint i8* %10 to i64
  %12 = ptrtoint i8* %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 6
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3
  store i8* %23, i8** @program_invocation_short_name, align 8
  br label %24

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  store i8* %25, i8** @program_name, align 8
  store i8* %25, i8** @program_invocation_name, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = bitcast %struct.quoting_options* %0 to i8*
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 {
  %2 = icmp ne %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp ne %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %1, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 {
  %6 = icmp ne %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18)
  store i32 %9, i32* %8, align 4
  ret i64 %19
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10
  %14 = icmp eq i64 %13, 1
  %15 = lshr i32 %5, 1
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27

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
  ]

; <label>:41:                                     ; preds = %27
  br label %95

; <label>:42:                                     ; preds = %27
  %43 = and i8 %36, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %95

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0
  br i1 %46, label %95, label %47

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1
  br label %95

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %28)
  br label %51

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  %54 = and i8 %36, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %73

; <label>:56:                                     ; preds = %51
  %57 = load i8, i8* %52, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

; <label>:59:                                     ; preds = %56
  br label %60

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63
  store i8 %61, i8* %66, align 1
  br label %67

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1
  %69 = getelementptr inbounds i8, i8* %62, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %60

; <label>:72:                                     ; preds = %67
  br label %73

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  %75 = call i64 @strlen(i8* %53) #13
  br label %95

; <label>:76:                                     ; preds = %27
  br label %77

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  br label %79

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i8 1, i8 %80
  br label %85

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %95

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1
  br label %95

; <label>:93:                                     ; preds = %27
  br label %95

; <label>:94:                                     ; preds = %27
  call void @abort() #14
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
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
  br label %123

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  %132 = icmp eq i64 %127, -1
  br i1 %132, label %135, label %133

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127
  br i1 %134, label %597, label %139

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124
  %137 = load i8, i8* %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %597, label %139

; <label>:139:                                    ; preds = %133, %135
  br i1 %109, label %140, label %155

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101
  %142 = and i1 %110, %132
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13
  %151 = icmp ne i32 %150, 0
  %152 = or i1 %151, %112
  %153 = xor i1 %151, true
  %154 = zext i1 %153 to i8
  br i1 %152, label %155, label %644

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  %158 = getelementptr inbounds i8, i8* %2, i64 %124
  %159 = load i8, i8* %158, align 1
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
  ]

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644

; <label>:162:                                    ; preds = %161
  %163 = and i8 %128, 1
  %164 = icmp eq i8 %163, 0
  %165 = and i1 %114, %164
  br i1 %165, label %166, label %182

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131
  br i1 %167, label %168, label %170

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %169, align 1
  br label %170

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1
  %172 = icmp ult i64 %171, %131
  br i1 %172, label %173, label %175

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171
  store i8 36, i8* %174, align 1
  br label %175

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2
  %177 = icmp ult i64 %176, %131
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176
  store i8 39, i8* %179, align 1
  br label %180

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3
  br label %182

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  %185 = icmp ult i64 %183, %131
  br i1 %185, label %186, label %188

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183
  store i8 92, i8* %187, align 1
  br label %188

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1
  br i1 %106, label %190, label %476

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1
  %192 = icmp ult i64 %191, %156
  br i1 %192, label %193, label %476

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191
  %195 = load i8, i8* %194, align 1
  %196 = add i8 %195, -48
  %197 = icmp ult i8 %196, 10
  br i1 %197, label %198, label %476

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189
  store i8 48, i8* %201, align 1
  br label %202

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2
  %204 = icmp ult i64 %203, %131
  br i1 %204, label %205, label %207

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203
  store i8 48, i8* %206, align 1
  br label %207

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3
  br label %476

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ]

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2
  %215 = icmp ult i64 %214, %156
  br i1 %215, label %216, label %476

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1
  %218 = getelementptr inbounds i8, i8* %2, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = icmp eq i8 %219, 63
  br i1 %220, label %221, label %476

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
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
  ]

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644

; <label>:226:                                    ; preds = %225
  %227 = icmp ult i64 %125, %131
  br i1 %227, label %228, label %230

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 63, i8* %229, align 1
  br label %230

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1
  %232 = icmp ult i64 %231, %131
  br i1 %232, label %233, label %235

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231
  store i8 34, i8* %234, align 1
  br label %235

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2
  %237 = icmp ult i64 %236, %131
  br i1 %237, label %238, label %240

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1
  br label %240

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3
  %242 = icmp ult i64 %241, %131
  br i1 %242, label %243, label %245

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 63, i8* %244, align 1
  br label %245

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4
  br label %476

; <label>:247:                                    ; preds = %155
  br label %257

; <label>:248:                                    ; preds = %155
  br label %257

; <label>:249:                                    ; preds = %155
  br label %255

; <label>:250:                                    ; preds = %155
  br label %255

; <label>:251:                                    ; preds = %155
  br label %257

; <label>:252:                                    ; preds = %155
  br i1 %114, label %253, label %254

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  br i1 %118, label %257, label %644

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  br i1 %105, label %503, label %476

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1
  br i1 %260, label %261, label %266

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1
  %263 = icmp ne i8 %262, 0
  %264 = icmp ne i64 %124, 0
  %265 = or i1 %264, %263
  br i1 %265, label %476, label %272

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1
  %268 = icmp ne i64 %124, 0
  %269 = or i1 %268, %267
  br i1 %269, label %476, label %272

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0
  br i1 %271, label %272, label %476

; <label>:272:                                    ; preds = %270, %266, %261, %155
  br label %273

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  br i1 %118, label %476, label %644

; <label>:275:                                    ; preds = %155
  br i1 %114, label %276, label %476

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0
  %279 = icmp ne i64 %126, 0
  %280 = or i1 %279, %278
  %281 = select i1 %280, i64 %126, i64 %131
  %282 = select i1 %280, i64 %131, i64 0
  %283 = icmp ult i64 %125, %282
  br i1 %283, label %284, label %286

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %285, align 1
  br label %286

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1
  br label %296

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3
  br label %476

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308

; <label>:299:                                    ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #1
  %301 = load i16*, i16** %300, align 8
  %302 = zext i8 %159 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2
  %305 = lshr i16 %304, 14
  %306 = trunc i16 %305 to i8
  %307 = and i8 %306, 1
  br label %368

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10
  store i64 0, i64* %10, align 8
  %309 = icmp eq i64 %156, -1
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ]

; <label>:321:                                    ; preds = %314
  %322 = icmp ugt i64 %313, %317
  br i1 %322, label %323, label %351

; <label>:323:                                    ; preds = %321
  br label %324

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325
  %328 = load i8, i8* %327, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %348, label %330

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1
  %332 = add i64 %331, %124
  %333 = icmp ult i64 %332, %313
  br i1 %333, label %324, label %348

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1
  %336 = and i1 %116, %335
  br i1 %336, label %337, label %355

; <label>:337:                                    ; preds = %334
  br label %338

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317
  %341 = getelementptr inbounds i8, i8* %2, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ]

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1
  %346 = icmp ult i64 %345, %320
  br i1 %346, label %338, label %354

; <label>:347:                                    ; preds = %314
  br label %351

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351

; <label>:350:                                    ; preds = %314
  br label %351

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #10
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  %372 = and i8 %371, 1
  %373 = icmp ne i8 %372, 0
  %374 = icmp ult i64 %370, 2
  %375 = or i1 %373, %113
  %376 = and i1 %374, %375
  br i1 %376, label %476, label %377

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124
  br label %379

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  br i1 %375, label %432, label %386

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643

; <label>:387:                                    ; preds = %386
  %388 = and i8 %382, 1
  %389 = icmp eq i8 %388, 0
  %390 = and i1 %114, %389
  br i1 %390, label %391, label %407

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131
  br i1 %392, label %393, label %395

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 39, i8* %394, align 1
  br label %395

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1
  %397 = icmp ult i64 %396, %131
  br i1 %397, label %398, label %400

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 36, i8* %399, align 1
  br label %400

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2
  %402 = icmp ult i64 %401, %131
  br i1 %402, label %403, label %405

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401
  store i8 39, i8* %404, align 1
  br label %405

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3
  br label %407

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  %410 = icmp ult i64 %408, %131
  br i1 %410, label %411, label %413

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408
  store i8 92, i8* %412, align 1
  br label %413

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1
  %415 = icmp ult i64 %414, %131
  br i1 %415, label %416, label %420

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6
  %418 = or i8 %417, 48
  %419 = getelementptr inbounds i8, i8* %0, i64 %414
  store i8 %418, i8* %419, align 1
  br label %420

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2
  %422 = icmp ult i64 %421, %131
  br i1 %422, label %423, label %428

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3
  %425 = and i8 %424, 7
  %426 = or i8 %425, 48
  %427 = getelementptr inbounds i8, i8* %0, i64 %421
  store i8 %426, i8* %427, align 1
  br label %428

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3
  %430 = and i8 %383, 7
  %431 = or i8 %430, 48
  br label %441

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %441, label %435

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131
  br i1 %436, label %437, label %439

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 92, i8* %438, align 1
  br label %439

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1
  br label %441

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  %447 = add i64 %380, 1
  %448 = icmp ugt i64 %378, %447
  br i1 %448, label %449, label %541

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1
  %451 = icmp ne i8 %450, 0
  %452 = and i8 %446, 1
  %453 = icmp eq i8 %452, 0
  %454 = and i1 %451, %453
  br i1 %454, label %455, label %466

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131
  br i1 %456, label %457, label %459

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442
  store i8 39, i8* %458, align 1
  br label %459

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1
  %461 = icmp ult i64 %460, %131
  br i1 %461, label %462, label %464

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460
  store i8 39, i8* %463, align 1
  br label %464

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2
  br label %466

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  %469 = icmp ult i64 %467, %131
  br i1 %469, label %470, label %472

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467
  store i8 %444, i8* %471, align 1
  br label %472

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1
  %474 = getelementptr inbounds i8, i8* %2, i64 %447
  %475 = load i8, i8* %474, align 1
  br label %379

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
  br i1 %107, label %488, label %487

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds i32, i32* %6, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = and i8 %483, 31
  %495 = zext i8 %494 to i32
  %496 = shl i32 1, %495
  %497 = and i32 %493, %496
  %498 = icmp eq i32 %497, 0
  %499 = icmp eq i8 %157, 0
  %500 = and i1 %499, %498
  br i1 %500, label %542, label %503

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0
  br i1 %502, label %542, label %503

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
  br i1 %112, label %513, label %644

; <label>:513:                                    ; preds = %503
  %514 = and i8 %508, 1
  %515 = icmp eq i8 %514, 0
  %516 = and i1 %114, %515
  br i1 %516, label %517, label %533

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512
  br i1 %518, label %519, label %521

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505
  store i8 39, i8* %520, align 1
  br label %521

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1
  %523 = icmp ult i64 %522, %512
  br i1 %523, label %524, label %526

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522
  store i8 36, i8* %525, align 1
  br label %526

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2
  %528 = icmp ult i64 %527, %512
  br i1 %528, label %529, label %531

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 39, i8* %530, align 1
  br label %531

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3
  br label %533

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  %536 = icmp ult i64 %534, %512
  br i1 %536, label %537, label %539

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534
  store i8 92, i8* %538, align 1
  br label %539

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1
  br label %569

; <label>:541:                                    ; preds = %441
  br label %542

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
  %553 = and i8 %547, 1
  %554 = icmp ne i8 %553, 0
  %555 = and i8 %550, 1
  %556 = icmp eq i8 %555, 0
  %557 = and i1 %554, %556
  br i1 %557, label %558, label %569

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552
  br i1 %559, label %560, label %562

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544
  store i8 39, i8* %561, align 1
  br label %562

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1
  %564 = icmp ult i64 %563, %552
  br i1 %564, label %565, label %567

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563
  store i8 39, i8* %566, align 1
  br label %567

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2
  br label %569

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
  %579 = icmp ult i64 %577, %570
  br i1 %579, label %580, label %582

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577
  store i8 %572, i8* %581, align 1
  br label %582

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1
  %584 = and i8 %571, 1
  %585 = icmp eq i8 %584, 0
  %586 = select i1 %585, i8 0, i8 %130
  br label %587

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1
  br label %123

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0
  %600 = and i1 %114, %599
  %601 = xor i1 %600, true
  %602 = or i1 %112, %601
  br i1 %602, label %603, label %648

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112
  %605 = xor i1 %604, true
  %606 = and i8 %129, 1
  %607 = icmp eq i8 %606, 0
  %608 = or i1 %607, %605
  br i1 %608, label %618, label %609

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %614, label %612

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98)
  br label %659

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0
  %616 = icmp ne i64 %126, 0
  %617 = and i1 %616, %615
  br i1 %617, label %27, label %618

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null
  %620 = and i1 %619, %112
  br i1 %620, label %621, label %638

; <label>:621:                                    ; preds = %618
  %622 = load i8, i8* %100, align 1
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %638, label %624

; <label>:624:                                    ; preds = %621
  br label %625

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131
  br i1 %629, label %630, label %632

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628
  store i8 %626, i8* %631, align 1
  br label %632

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1
  %634 = getelementptr inbounds i8, i8* %627, i64 1
  %635 = load i8, i8* %634, align 1
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %637, label %625

; <label>:637:                                    ; preds = %632
  br label %638

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  %640 = icmp ult i64 %639, %131
  br i1 %640, label %641, label %659

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639
  store i8 0, i8* %642, align 1
  br label %659

; <label>:643:                                    ; preds = %386
  br label %649

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649

; <label>:648:                                    ; preds = %597
  br label %649

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  %653 = icmp ne i32 %650, 2
  %654 = icmp eq i8 %104, 0
  %655 = or i1 %653, %654
  %656 = select i1 %655, i32 %650, i32 4
  %657 = and i32 %5, -3
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98)
  br label %659

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ]

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33
  %15 = icmp eq i32 %14, 84
  br i1 %15, label %16, label %72

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33
  %21 = icmp eq i32 %20, 70
  br i1 %21, label %22, label %72

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %26, label %72

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1
  %29 = icmp eq i8 %28, 56
  br i1 %29, label %30, label %72

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %72

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1
  %36 = icmp eq i8 %35, 96
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0)
  br label %75

; <label>:38:                                     ; preds = %5
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33
  %43 = icmp eq i32 %42, 66
  br i1 %43, label %44, label %72

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 49
  br i1 %47, label %48, label %72

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 56
  br i1 %51, label %52, label %72

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 48
  br i1 %55, label %56, label %72

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 51
  br i1 %59, label %60, label %72

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1
  %63 = icmp eq i8 %62, 48
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1
  %70 = icmp eq i8 %69, 96
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10
  store i32 %7, i32* %6, align 4
  ret i8* %20
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 {
  %5 = icmp ne %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i64* %2, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = or i32 %10, %13
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21)
  %23 = add i64 %22, 1
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10
  %25 = load i32, i32* %15, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27)
  store i32 %8, i32* %7, align 4
  br i1 %11, label %29, label %30

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %2 = load i32, i32* @nslots, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %0
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1
  %8 = load i8*, i8** %7, align 8
  tail call void @free(i8* %8) #10
  %9 = add nuw i64 %6, 1
  %10 = load i32, i32* @nslots, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %5, label %13

; <label>:13:                                     ; preds = %5
  br label %14

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #10
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 {
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4
  %12 = icmp sgt i32 %11, %0
  br i1 %12, label %34, label %13

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0
  %15 = icmp ugt i32 %0, 2147483646
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8
  br i1 %14, label %25, label %26

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false)
  br label %26

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = sub nsw i32 %20, %27
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false)
  store i32 %20, i32* @nslots, align 4
  br label %34

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 1
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50)
  %52 = icmp ugt i64 %38, %51
  br i1 %52, label %63, label %53

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1
  store i64 %54, i64* %37, align 8
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10
  store i8* %58, i8** %39, align 8
  %59 = load i32, i32* %44, align 8
  %60 = load i8*, i8** %47, align 8
  %61 = load i8*, i8** %49, align 8
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61)
  br label %63

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  store i32 %6, i32* %5, align 4
  ret i8* %64
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %1, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6)
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false)
  %7 = icmp eq i32 %0, 10
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %0, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false)
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %15 = bitcast i32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false)
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 67108864
  store i32 %18, i32* %16, align 4
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #11 {
  %3 = load i8, i8* %0, align 1
  %4 = load i8, i8* %1, align 1
  %5 = icmp eq i8 %3, 45
  br i1 %5, label %6, label %105

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i8* [ %9, %7 ], [ %0, %6 ]
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = icmp eq i8 %10, 48
  br i1 %11, label %7, label %12

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %4, 45
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %12
  br label %34

; <label>:15:                                     ; preds = %12
  %16 = zext i8 %10 to i32
  %17 = add nsw i32 %16, -48
  %18 = icmp ult i32 %17, 10
  br i1 %18, label %220, label %19

; <label>:19:                                     ; preds = %15
  %20 = icmp eq i8 %4, 48
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %19
  br label %22

; <label>:22:                                     ; preds = %21, %22
  %23 = phi i8* [ %24, %22 ], [ %1, %21 ]
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = icmp eq i8 %25, 48
  br i1 %26, label %22, label %27

; <label>:27:                                     ; preds = %22
  br label %28

; <label>:28:                                     ; preds = %27, %19
  %29 = phi i8 [ %4, %19 ], [ %25, %27 ]
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, -48
  %32 = icmp ult i32 %31, 10
  %33 = sext i1 %32 to i32
  br label %220

; <label>:34:                                     ; preds = %14, %34
  %35 = phi i8* [ %36, %34 ], [ %1, %14 ]
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = icmp eq i8 %37, 48
  br i1 %38, label %34, label %39

; <label>:39:                                     ; preds = %34
  %40 = zext i8 %10 to i32
  %41 = icmp eq i8 %37, %10
  %42 = add nsw i32 %40, -48
  %43 = icmp ult i32 %42, 10
  %44 = and i1 %43, %41
  br i1 %44, label %45, label %59

; <label>:45:                                     ; preds = %39
  br label %46

; <label>:46:                                     ; preds = %45, %46
  %47 = phi i8* [ %49, %46 ], [ %9, %45 ]
  %48 = phi i8* [ %51, %46 ], [ %36, %45 ]
  %49 = getelementptr inbounds i8, i8* %47, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = getelementptr inbounds i8, i8* %48, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %50 to i32
  %54 = icmp eq i8 %52, %50
  %55 = add nsw i32 %53, -48
  %56 = icmp ult i32 %55, 10
  %57 = and i1 %54, %56
  br i1 %57, label %46, label %58

; <label>:58:                                     ; preds = %46
  br label %59

; <label>:59:                                     ; preds = %58, %39
  %60 = phi i8* [ %36, %39 ], [ %51, %58 ]
  %61 = phi i8* [ %9, %39 ], [ %49, %58 ]
  %62 = phi i8 [ %10, %39 ], [ %50, %58 ]
  %63 = phi i8 [ %37, %39 ], [ %52, %58 ]
  %64 = phi i32 [ %40, %39 ], [ %53, %58 ]
  %65 = zext i8 %63 to i32
  %66 = sub nsw i32 %65, %64
  %67 = zext i8 %62 to i32
  %68 = add nsw i32 %67, -48
  %69 = icmp ult i32 %68, 10
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %59
  br label %77

; <label>:71:                                     ; preds = %77
  br label %72

; <label>:72:                                     ; preds = %71, %59
  %73 = phi i64 [ 0, %59 ], [ %82, %71 ]
  %74 = add nsw i32 %65, -48
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %76, label %96

; <label>:76:                                     ; preds = %72
  br label %86

; <label>:77:                                     ; preds = %70, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %70 ]
  %79 = phi i8* [ %80, %77 ], [ %61, %70 ]
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = add i64 %78, 1
  %83 = zext i8 %81 to i32
  %84 = add nsw i32 %83, -48
  %85 = icmp ult i32 %84, 10
  br i1 %85, label %77, label %71

; <label>:86:                                     ; preds = %76, %86
  %87 = phi i64 [ %91, %86 ], [ 0, %76 ]
  %88 = phi i8* [ %89, %86 ], [ %60, %76 ]
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = add i64 %87, 1
  %92 = zext i8 %90 to i32
  %93 = add nsw i32 %92, -48
  %94 = icmp ult i32 %93, 10
  br i1 %94, label %86, label %95

; <label>:95:                                     ; preds = %86
  br label %96

; <label>:96:                                     ; preds = %95, %72
  %97 = phi i64 [ 0, %72 ], [ %91, %95 ]
  %98 = icmp eq i64 %73, %97
  br i1 %98, label %102, label %99

; <label>:99:                                     ; preds = %96
  %100 = icmp ult i64 %73, %97
  %101 = select i1 %100, i32 1, i32 -1
  br label %220

; <label>:102:                                    ; preds = %96
  %103 = icmp eq i64 %73, 0
  %104 = select i1 %103, i32 0, i32 %66
  br label %220

; <label>:105:                                    ; preds = %2
  %106 = icmp eq i8 %4, 45
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %105
  br label %111

; <label>:108:                                    ; preds = %105
  %109 = icmp eq i8 %3, 48
  br i1 %109, label %110, label %136

; <label>:110:                                    ; preds = %108
  br label %141

; <label>:111:                                    ; preds = %107, %111
  %112 = phi i8* [ %113, %111 ], [ %1, %107 ]
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = icmp eq i8 %114, 48
  br i1 %115, label %111, label %116

; <label>:116:                                    ; preds = %111
  %117 = zext i8 %114 to i32
  %118 = add nsw i32 %117, -48
  %119 = icmp ult i32 %118, 10
  br i1 %119, label %220, label %120

; <label>:120:                                    ; preds = %116
  %121 = icmp eq i8 %3, 48
  br i1 %121, label %122, label %129

; <label>:122:                                    ; preds = %120
  br label %123

; <label>:123:                                    ; preds = %122, %123
  %124 = phi i8* [ %125, %123 ], [ %0, %122 ]
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = icmp eq i8 %126, 48
  br i1 %127, label %123, label %128

; <label>:128:                                    ; preds = %123
  br label %129

; <label>:129:                                    ; preds = %128, %120
  %130 = phi i8 [ %3, %120 ], [ %126, %128 ]
  %131 = zext i8 %130 to i32
  %132 = add nsw i32 %131, -48
  %133 = icmp ult i32 %132, 10
  %134 = zext i1 %133 to i32
  br label %220

; <label>:135:                                    ; preds = %141
  br label %136

; <label>:136:                                    ; preds = %135, %108
  %137 = phi i8* [ %0, %108 ], [ %143, %135 ]
  %138 = phi i8 [ %3, %108 ], [ %144, %135 ]
  %139 = icmp eq i8 %4, 48
  br i1 %139, label %140, label %147

; <label>:140:                                    ; preds = %136
  br label %156

; <label>:141:                                    ; preds = %110, %141
  %142 = phi i8* [ %143, %141 ], [ %0, %110 ]
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = icmp eq i8 %144, 48
  br i1 %145, label %141, label %135

; <label>:146:                                    ; preds = %156
  br label %147

; <label>:147:                                    ; preds = %146, %136
  %148 = phi i8* [ %1, %136 ], [ %158, %146 ]
  %149 = phi i8 [ %4, %136 ], [ %159, %146 ]
  %150 = zext i8 %138 to i32
  %151 = icmp eq i8 %138, %149
  %152 = add nsw i32 %150, -48
  %153 = icmp ult i32 %152, 10
  %154 = and i1 %153, %151
  br i1 %154, label %155, label %174

; <label>:155:                                    ; preds = %147
  br label %161

; <label>:156:                                    ; preds = %140, %156
  %157 = phi i8* [ %158, %156 ], [ %1, %140 ]
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 48
  br i1 %160, label %156, label %146

; <label>:161:                                    ; preds = %155, %161
  %162 = phi i8* [ %164, %161 ], [ %137, %155 ]
  %163 = phi i8* [ %166, %161 ], [ %148, %155 ]
  %164 = getelementptr inbounds i8, i8* %162, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = getelementptr inbounds i8, i8* %163, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %165 to i32
  %169 = icmp eq i8 %165, %167
  %170 = add nsw i32 %168, -48
  %171 = icmp ult i32 %170, 10
  %172 = and i1 %169, %171
  br i1 %172, label %161, label %173

; <label>:173:                                    ; preds = %161
  br label %174

; <label>:174:                                    ; preds = %173, %147
  %175 = phi i8* [ %148, %147 ], [ %166, %173 ]
  %176 = phi i8* [ %137, %147 ], [ %164, %173 ]
  %177 = phi i8 [ %138, %147 ], [ %165, %173 ]
  %178 = phi i8 [ %149, %147 ], [ %167, %173 ]
  %179 = phi i32 [ %150, %147 ], [ %168, %173 ]
  %180 = zext i8 %178 to i32
  %181 = sub nsw i32 %179, %180
  %182 = zext i8 %177 to i32
  %183 = add nsw i32 %182, -48
  %184 = icmp ult i32 %183, 10
  br i1 %184, label %185, label %187

; <label>:185:                                    ; preds = %174
  br label %192

; <label>:186:                                    ; preds = %192
  br label %187

; <label>:187:                                    ; preds = %186, %174
  %188 = phi i64 [ 0, %174 ], [ %197, %186 ]
  %189 = add nsw i32 %180, -48
  %190 = icmp ult i32 %189, 10
  br i1 %190, label %191, label %211

; <label>:191:                                    ; preds = %187
  br label %201

; <label>:192:                                    ; preds = %185, %192
  %193 = phi i64 [ %197, %192 ], [ 0, %185 ]
  %194 = phi i8* [ %195, %192 ], [ %176, %185 ]
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = add i64 %193, 1
  %198 = zext i8 %196 to i32
  %199 = add nsw i32 %198, -48
  %200 = icmp ult i32 %199, 10
  br i1 %200, label %192, label %186

; <label>:201:                                    ; preds = %191, %201
  %202 = phi i64 [ %206, %201 ], [ 0, %191 ]
  %203 = phi i8* [ %204, %201 ], [ %175, %191 ]
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load i8, i8* %204, align 1
  %206 = add i64 %202, 1
  %207 = zext i8 %205 to i32
  %208 = add nsw i32 %207, -48
  %209 = icmp ult i32 %208, 10
  br i1 %209, label %201, label %210

; <label>:210:                                    ; preds = %201
  br label %211

; <label>:211:                                    ; preds = %210, %187
  %212 = phi i64 [ 0, %187 ], [ %206, %210 ]
  %213 = icmp eq i64 %188, %212
  br i1 %213, label %217, label %214

; <label>:214:                                    ; preds = %211
  %215 = icmp ult i64 %188, %212
  %216 = select i1 %215, i32 -1, i32 1
  br label %220

; <label>:217:                                    ; preds = %211
  %218 = icmp eq i64 %188, 0
  %219 = select i1 %218, i32 0, i32 %181
  br label %220

; <label>:220:                                    ; preds = %15, %28, %99, %102, %116, %129, %214, %217
  %221 = phi i32 [ %33, %28 ], [ %101, %99 ], [ %134, %129 ], [ %216, %214 ], [ -1, %15 ], [ %104, %102 ], [ 1, %116 ], [ %219, %217 ]
  ret i32 %221
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.89, i64 0, i64 0), i8* %2, i8* %3) #10
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.90, i64 0, i64 0), i32 5) #10
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.91, i64 0, i64 0), i32 5) #10
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10
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
  ]

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.92, i64 0, i64 0), i32 5) #10
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.93, i64 0, i64 0), i32 5) #10
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.94, i64 0, i64 0), i32 5) #10
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.95, i64 0, i64 0), i32 5) #10
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.96, i64 0, i64 0), i32 5) #10
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.97, i64 0, i64 0), i32 5) #10
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %4, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %4, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %4, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %4, i64 4
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %4, i64 5
  %70 = load i8*, i8** %69, align 8
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.98, i64 0, i64 0), i32 5) #10
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8*, i8** %4, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %4, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %4, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %4, i64 4
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %4, i64 5
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %4, i64 6
  %86 = load i8*, i8** %85, align 8
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.99, i64 0, i64 0), i32 5) #10
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %4, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %4, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %4, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %4, i64 4
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %4, i64 5
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %4, i64 6
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %4, i64 7
  %104 = load i8*, i8** %103, align 8
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.100, i64 0, i64 0), i32 5) #10
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8*, i8** %4, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %4, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %4, i64 3
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %4, i64 4
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %4, i64 5
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %4, i64 6
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %4, i64 7
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %4, i64 8
  %124 = load i8*, i8** %123, align 8
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.101, i64 0, i64 0), i32 5) #10
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8*, i8** %4, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %4, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %4, i64 3
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %4, i64 4
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %4, i64 5
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %4, i64 6
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %4, i64 7
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %4, i64 8
  %144 = load i8*, i8** %143, align 8
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10
  br label %146

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 {
  br label %6

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 {
  %6 = alloca [10 x i8*], align 16
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8
  %15 = sext i32 %11 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %11, 8
  store i32 %17, i32* %8, align 8
  br label %21

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %10, align 8
  br label %21

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %25, i8** %26, align 16
  %27 = icmp eq i8* %25, null
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %21
  %29 = icmp ult i32 %22, 41
  br i1 %29, label %35, label %32

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31)
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10
  ret void

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %10, align 8
  br label %40

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8
  %37 = sext i32 %22 to i64
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = add i32 %22, 8
  store i32 %39, i32* %8, align 8
  br label %40

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %44, i8** %45, align 8
  %46 = icmp eq i8* %44, null
  br i1 %46, label %30, label %47

; <label>:47:                                     ; preds = %40
  %48 = icmp ult i32 %41, 41
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %10, align 8
  br label %57

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = sext i32 %41 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = add i32 %41, 8
  store i32 %56, i32* %8, align 8
  br label %57

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %61, i8** %62, align 16
  %63 = icmp eq i8* %61, null
  br i1 %63, label %30, label %64

; <label>:64:                                     ; preds = %57
  %65 = icmp ult i32 %58, 41
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr i8, i8* %67, i64 8
  store i8* %68, i8** %10, align 8
  br label %74

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = sext i32 %58 to i64
  %72 = getelementptr i8, i8* %70, i64 %71
  %73 = add i32 %58, 8
  store i32 %73, i32* %8, align 8
  br label %74

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %78, i8** %79, align 8
  %80 = icmp eq i8* %78, null
  br i1 %80, label %30, label %81

; <label>:81:                                     ; preds = %74
  %82 = icmp ult i32 %75, 41
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr i8, i8* %84, i64 8
  store i8* %85, i8** %10, align 8
  br label %91

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = sext i32 %75 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = add i32 %75, 8
  store i32 %90, i32* %8, align 8
  br label %91

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %95, i8** %96, align 16
  %97 = icmp eq i8* %95, null
  br i1 %97, label %30, label %98

; <label>:98:                                     ; preds = %91
  %99 = icmp ult i32 %92, 41
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %10, align 8
  br label %108

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8
  %105 = sext i32 %92 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = add i32 %92, 8
  store i32 %107, i32* %8, align 8
  br label %108

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %111, i8** %112, align 8
  %113 = icmp eq i8* %111, null
  br i1 %113, label %30, label %114

; <label>:114:                                    ; preds = %108
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr i8, i8* %115, i64 8
  store i8* %116, i8** %10, align 8
  %117 = bitcast i8* %115 to i8**
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %118, i8** %119, align 16
  %120 = icmp eq i8* %118, null
  br i1 %120, label %30, label %121

; <label>:121:                                    ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr i8, i8* %122, i64 8
  store i8* %123, i8** %10, align 8
  %124 = bitcast i8* %122 to i8**
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %125, i8** %126, align 8
  %127 = icmp eq i8* %125, null
  br i1 %127, label %30, label %128

; <label>:128:                                    ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr i8, i8* %129, i64 8
  store i8* %130, i8** %10, align 8
  %131 = bitcast i8* %129 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %132, i8** %133, align 16
  %134 = icmp eq i8* %132, null
  br i1 %134, label %30, label %135

; <label>:135:                                    ; preds = %128
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr i8, i8* %136, i64 8
  store i8* %137, i8** %10, align 8
  %138 = bitcast i8* %136 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9
  store i8* %139, i8** %140, align 8
  %141 = icmp eq i8* %139, null
  %142 = select i1 %141, i64 9, i64 10
  br label %30
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.104, i64 0, i64 0), i32 5) #10
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.105, i64 0, i64 0)) #10
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.106, i64 0, i64 0), i32 5) #10
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.107, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.108, i64 0, i64 0)) #10
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.109, i64 0, i64 0), i32 5) #10
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #10
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %6
  ret i8* %8
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 {
  %4 = udiv i64 9223372036854775807, %2
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1
  %9 = icmp eq i64 %8, 0
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 {
  %4 = load i64, i64* %1, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2
  %10 = icmp ugt i64 %2, 128
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  br label %17

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2
  %15 = icmp ugt i64 %14, %4
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  store i64 %18, i64* %1, align 8
  %19 = mul i64 %18, %2
  br label %27

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1
  %22 = add i64 %4, 1
  %23 = add i64 %22, %21
  store i64 %23, i64* %1, align 8
  %24 = mul i64 %23, %2
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10
  %30 = icmp eq i8* %29, null
  %31 = icmp ne i64 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 {
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  store i64 %7, i64* %1, align 8
  br label %17

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1
  %13 = add i64 %3, 1
  %14 = add i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10
  %20 = icmp eq i8* %19, null
  %21 = icmp ne i64 %18, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14
  unreachable

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false)
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @malloc(i64 %1) #10
  %4 = icmp eq i8* %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #13
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #10
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.122, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), i8* %2) #10
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = udiv i64 %7, %1
  %9 = icmp eq i64 %8, %0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1
  store i32 12, i32* %11, align 4
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10
  %8 = icmp ne i32 %7, 0
  br i1 %6, label %9, label %19

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true
  %11 = icmp ne i64 %2, 0
  %12 = or i1 %11, %10
  %13 = sext i1 %8 to i32
  br i1 %12, label %22, label %14

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1
  store i32 0, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 {
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10
  %3 = icmp eq i8* %2, null
  br i1 %3, label %15, label %4

; <label>:4:                                      ; preds = %1
  %5 = load i8, i8* %2, align 1
  %6 = icmp eq i8 %5, 67
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0)) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #10
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.136, i64 0, i64 0)) #10
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.137, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #13
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 47
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64
  %27 = add i64 %17, 14
  %28 = add i64 %27, %26
  %29 = tail call noalias i8* @malloc(i64 %28) #10
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.139, i64 0, i64 0)) #10
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
  br label %62

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %59, i8** %46, align 8
  %60 = load i8, i8* %53, align 1
  %61 = zext i8 %60 to i32
  br label %62

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ]
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ]

; <label>:64:                                     ; preds = %62
  br label %65

; <label>:65:                                     ; preds = %64, %75
  %66 = load i8*, i8** %46, align 8
  %67 = load i8*, i8** %47, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %71, label %69

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
  br label %75

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %72, i8** %46, align 8
  %73 = load i8, i8* %66, align 1
  %74 = zext i8 %73 to i32
  br label %75

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ]
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ]

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.140, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13
  %83 = call i64 @strlen(i8* nonnull %45) #13
  %84 = icmp eq i64 %51, 0
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91

; <label>:88:                                     ; preds = %81
  %89 = add i64 %86, 2
  %90 = call noalias i8* @malloc(i64 %89) #10
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #10
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #10
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #10
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %24 ]
  store volatile i8* %126, i8** @charset_aliases, align 8
  br label %127

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %157, label %131

; <label>:131:                                    ; preds = %127
  br label %132

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42
  br i1 %138, label %139, label %147

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %147

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #13
  %152 = add i64 %151, 1
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %132

; <label>:156:                                    ; preds = %147
  br label %157

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i8* %158
  ret i8* %161
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

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1
  %20 = load i32, i32* %19, align 4
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4
  br label %24

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0)
  br label %17

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0)
  br label %17

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8
  br label %30

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2)
  br label %30

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
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
