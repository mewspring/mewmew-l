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
@args = internal unnamed_addr global i8** null, align 8, !dbg !0
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
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !142
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !148
@.str.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !151
@opterr = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.29, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.30, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !158
@optind = external local_unnamed_addr global i32, align 4
@.str.1.29 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.30 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !176
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !183
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !211
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !218
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !230
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !237
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !244
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !232
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !246
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !252
@.str.1.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !261
@.str.3.136 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.137 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.138 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.139 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.140 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !660 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !664, metadata !665), !dbg !666
  %2 = icmp eq i32 %0, 0, !dbg !667
  br i1 %2, label %8, label %3, !dbg !669

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !670, !tbaa !673
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !670
  %6 = load i8*, i8** @program_name, align 8, !dbg !670, !tbaa !673
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !677
  br label %68, !dbg !679

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !681
  %10 = load i8*, i8** @program_name, align 8, !dbg !681, !tbaa !673
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !683
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !685, metadata !665) #10, !dbg !691
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !693, !tbaa !673
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i64 0, i32 5, !dbg !693
  %14 = load i8*, i8** %13, align 8, !dbg !693, !tbaa !694
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i64 0, i32 6, !dbg !693
  %16 = load i8*, i8** %15, align 8, !dbg !693, !tbaa !699
  %17 = icmp ult i8* %14, %16, !dbg !693
  br i1 %17, label %20, label %18, !dbg !693, !prof !700

; <label>:18:                                     ; preds = %8
  %19 = tail call i32 @__overflow(%struct._IO_FILE* %12, i32 10) #10, !dbg !701
  br label %22, !dbg !701

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !703
  store i8* %21, i8** %13, align 8, !dbg !703, !tbaa !694
  store i8 10, i8* %14, align 1, !dbg !703, !tbaa !705
  br label %22, !dbg !703

; <label>:22:                                     ; preds = %18, %20
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !706
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706, !tbaa !673
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #10, !dbg !707
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !708
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !673
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #10, !dbg !709
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !710
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !673
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #10, !dbg !711
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !712
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !673
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !713
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !714
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !673
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36) #10, !dbg !715
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !716
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !673
  %40 = tail call i32 @fputs_unlocked(i8* %38, %struct._IO_FILE* %39) #10, !dbg !717
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([310 x i8], [310 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !718
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718, !tbaa !673
  %43 = tail call i32 @fputs_unlocked(i8* %41, %struct._IO_FILE* %42) #10, !dbg !719
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !720
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !720, !tbaa !673
  %46 = tail call i32 @fputs_unlocked(i8* %44, %struct._IO_FILE* %45) #10, !dbg !721
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([292 x i8], [292 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !722
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !673
  %49 = tail call i32 @fputs_unlocked(i8* %47, %struct._IO_FILE* %48) #10, !dbg !723
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !724
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !673
  %52 = tail call i32 @fputs_unlocked(i8* %50, %struct._IO_FILE* %51) #10, !dbg !725
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !119, metadata !665) #10, !dbg !726
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 0, metadata !119, metadata !665) #10, !dbg !726
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !728
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !729
  %55 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !731
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !130, metadata !665) #10, !dbg !732
  %56 = icmp eq i8* %55, null, !dbg !733
  br i1 %56, label %63, label %57, !dbg !734

; <label>:57:                                     ; preds = %22
  %58 = tail call i32 @strncmp(i8* nonnull %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 3) #13, !dbg !735
  %59 = icmp eq i32 %58, 0, !dbg !735
  br i1 %59, label %63, label %60, !dbg !737

; <label>:60:                                     ; preds = %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !739
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !741
  br label %63, !dbg !743

; <label>:63:                                     ; preds = %22, %57, %60
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !744
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !745
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !746
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !747
  br label %68

; <label>:68:                                     ; preds = %63, %3
  tail call void @exit(i32 %0) #14, !dbg !748
  unreachable, !dbg !748
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !749 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !753, metadata !665), !dbg !764
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !754, metadata !665), !dbg !765
  %3 = load i8*, i8** %1, align 8, !dbg !766, !tbaa !673
  tail call void @set_program_name(i8* %3) #10, !dbg !767
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !768
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !769
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !770
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !771, metadata !665), !dbg !774
  store volatile i32 3, i32* @exit_failure, align 4, !dbg !776, !tbaa !778
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !779
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), void (i32)* nonnull @usage, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* null) #10, !dbg !780
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !756, metadata !665), !dbg !781
  %8 = icmp ugt i32 %0, 1, !dbg !782
  br i1 %8, label %9, label %25, !dbg !783

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !760, metadata !665), !dbg !784
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !785
  %11 = load i8*, i8** %10, align 8, !dbg !785, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !761, metadata !665), !dbg !787
  %12 = load i8, i8* %11, align 1, !dbg !785, !tbaa !705
  %13 = icmp eq i8 %12, 45, !dbg !788
  br i1 %13, label %14, label %27, !dbg !791

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !793
  %16 = load i8, i8* %15, align 1, !dbg !793, !tbaa !705
  %17 = icmp eq i8 %16, 45, !dbg !796
  br i1 %17, label %18, label %27, !dbg !799

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !801
  %20 = load i8, i8* %19, align 1, !dbg !801, !tbaa !705
  %21 = icmp eq i8 %20, 0, !dbg !804
  br i1 %21, label %22, label %27, !dbg !806

; <label>:22:                                     ; preds = %18
  %23 = add i32 %0, -1, !dbg !808
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !756, metadata !665), !dbg !781
  tail call void @llvm.dbg.value(metadata i8** %10, i64 0, metadata !754, metadata !665), !dbg !765
  tail call void @llvm.dbg.value(metadata i8** %10, i64 0, metadata !754, metadata !665), !dbg !765
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !756, metadata !665), !dbg !781
  %24 = icmp ult i32 %23, 2, !dbg !810
  br i1 %24, label %25, label %27, !dbg !812

; <label>:25:                                     ; preds = %2, %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !813
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %26) #10, !dbg !815
  tail call void @usage(i32 2) #15, !dbg !817
  unreachable, !dbg !817

; <label>:27:                                     ; preds = %9, %14, %18, %22
  %28 = phi i8** [ %10, %22 ], [ %1, %18 ], [ %1, %14 ], [ %1, %9 ]
  %29 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !818
  store i8** %29, i8*** @args, align 8, !dbg !819, !tbaa !673
  %30 = tail call fastcc %struct.valinfo* @eval(i1 zeroext true), !dbg !820
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %30, i64 0, metadata !755, metadata !665), !dbg !821
  %31 = load i8**, i8*** @args, align 8, !dbg !822, !tbaa !673
  %32 = load i8*, i8** %31, align 8, !dbg !828, !tbaa !673
  %33 = icmp eq i8* %32, null, !dbg !829
  br i1 %33, label %35, label %34, !dbg !830

; <label>:34:                                     ; preds = %27
  tail call fastcc void @syntax_error(), !dbg !831
  unreachable

; <label>:35:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %30, i64 0, metadata !832, metadata !665) #10, !dbg !837
  %36 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 0, !dbg !839
  %37 = load i32, i32* %36, align 8, !dbg !839, !tbaa !840
  switch i32 %37, label %57 [
    i32 0, label %38
    i32 1, label %52
  ], !dbg !842

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !843, !tbaa !673
  %40 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1, i32 0, i64 0, !dbg !845
  %41 = tail call i64 @__gmpz_out_str(%struct._IO_FILE* %39, i32 10, %struct.__mpz_struct* %40) #10, !dbg !846
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !685, metadata !665) #10, !dbg !847
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !849, !tbaa !673
  %43 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %42, i64 0, i32 5, !dbg !849
  %44 = load i8*, i8** %43, align 8, !dbg !849, !tbaa !694
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %42, i64 0, i32 6, !dbg !849
  %46 = load i8*, i8** %45, align 8, !dbg !849, !tbaa !699
  %47 = icmp ult i8* %44, %46, !dbg !849
  br i1 %47, label %50, label %48, !dbg !849, !prof !700

; <label>:48:                                     ; preds = %38
  %49 = tail call i32 @__overflow(%struct._IO_FILE* %42, i32 10) #10, !dbg !850
  br label %58, !dbg !850

; <label>:50:                                     ; preds = %38
  %51 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !851
  store i8* %51, i8** %43, align 8, !dbg !851, !tbaa !694
  store i8 10, i8* %44, align 1, !dbg !851, !tbaa !705
  br label %58, !dbg !851

; <label>:52:                                     ; preds = %35
  %53 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1, !dbg !852
  %54 = bitcast %union.anon* %53 to i8**, !dbg !853
  %55 = load i8*, i8** %54, align 8, !dbg !853, !tbaa !673
  %56 = tail call i32 @puts(i8* %55) #10, !dbg !854
  br label %58, !dbg !855

; <label>:57:                                     ; preds = %35
  tail call void @abort() #14, !dbg !856
  unreachable, !dbg !856

; <label>:58:                                     ; preds = %48, %50, %52
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %30, i64 0, metadata !857, metadata !665) #10, !dbg !865
  %59 = load i32, i32* %36, align 8, !dbg !867, !tbaa !840
  switch i32 %59, label %83 [
    i32 0, label %60
    i32 1, label %64
  ], !dbg !868

; <label>:60:                                     ; preds = %58
  %61 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !869
  %62 = load i32, i32* %61, align 4, !dbg !869, !tbaa !870
  %63 = icmp eq i32 %62, 0, !dbg !872
  br label %86, !dbg !874

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %30, i64 0, i32 1, !dbg !876
  %66 = bitcast %union.anon* %65 to i8**, !dbg !877
  %67 = load i8*, i8** %66, align 8, !dbg !877, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !862, metadata !665) #10, !dbg !878
  %68 = load i8, i8* %67, align 1, !dbg !879, !tbaa !705
  %69 = icmp eq i8 %68, 0, !dbg !881
  br i1 %69, label %86, label %70, !dbg !882

; <label>:70:                                     ; preds = %64
  %71 = icmp eq i8 %68, 45, !dbg !883
  %72 = zext i1 %71 to i64, !dbg !884
  %73 = getelementptr inbounds i8, i8* %67, i64 %72, !dbg !884
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !862, metadata !665) #10, !dbg !878
  %74 = load i8, i8* %73, align 1, !tbaa !705
  br label %75, !dbg !885, !llvm.loop !886

; <label>:75:                                     ; preds = %79, %70
  %76 = phi i8 [ %74, %70 ], [ %81, %79 ], !dbg !889
  %77 = phi i8* [ %73, %70 ], [ %80, %79 ]
  tail call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !862, metadata !665) #10, !dbg !878
  %78 = icmp eq i8 %76, 48, !dbg !892
  br i1 %78, label %79, label %84, !dbg !893

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !894
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !862, metadata !665) #10, !dbg !878
  %81 = load i8, i8* %80, align 1, !dbg !895, !tbaa !705
  %82 = icmp eq i8 %81, 0, !dbg !896
  br i1 %82, label %84, label %75, !dbg !896, !llvm.loop !886

; <label>:83:                                     ; preds = %58
  tail call void @abort() #14, !dbg !898
  unreachable, !dbg !898

; <label>:84:                                     ; preds = %79, %75
  %85 = phi i1 [ false, %75 ], [ true, %79 ]
  br label %86, !dbg !899

; <label>:86:                                     ; preds = %84, %60, %64
  %87 = phi i1 [ %63, %60 ], [ true, %64 ], [ %85, %84 ]
  %88 = zext i1 %87 to i32, !dbg !899
  ret i32 %88, !dbg !900
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval(i1 zeroext) unnamed_addr #6 !dbg !901 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !903, metadata !906), !dbg !907
  %2 = tail call fastcc %struct.valinfo* @eval1(i1 zeroext %0), !dbg !908
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !904, metadata !665), !dbg !909
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !904, metadata !665), !dbg !909
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !921
  %3 = load i8**, i8*** @args, align 8, !dbg !925, !tbaa !673
  %4 = load i8*, i8** %3, align 8, !dbg !926, !tbaa !673
  %5 = icmp eq i8* %4, null, !dbg !927
  br i1 %5, label %147, label %6, !dbg !928

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
  br label %15, !dbg !928

; <label>:15:                                     ; preds = %7, %140
  %16 = phi i8* [ %8, %7 ], [ %143, %140 ]
  %17 = phi i8** [ %9, %7 ], [ %142, %140 ]
  %18 = tail call i32 @strcmp(i8* nonnull %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #10, !dbg !929
  %19 = icmp eq i32 %18, 0, !dbg !930
  %20 = zext i1 %19 to i64, !dbg !931
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20, !dbg !931
  store i8** %21, i8*** @args, align 8, !dbg !931, !tbaa !673
  br i1 %19, label %22, label %145, !dbg !932

; <label>:22:                                     ; preds = %15
  br i1 %0, label %23, label %48, !dbg !933

; <label>:23:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata %struct.valinfo* undef, i64 0, metadata !857, metadata !665) #10, !dbg !935
  %24 = load i32, i32* %11, align 8, !dbg !938, !tbaa !840
  switch i32 %24, label %45 [
    i32 0, label %25
    i32 1, label %28
  ], !dbg !939

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %12, align 4, !dbg !940, !tbaa !870
  %27 = icmp eq i32 %26, 0, !dbg !941
  br label %48, !dbg !942

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %14, align 8, !dbg !943, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !862, metadata !665) #10, !dbg !944
  %30 = load i8, i8* %29, align 1, !dbg !945, !tbaa !705
  %31 = icmp eq i8 %30, 0, !dbg !946
  br i1 %31, label %48, label %32, !dbg !947

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i8 %30, 45, !dbg !948
  %34 = zext i1 %33 to i64, !dbg !949
  %35 = getelementptr inbounds i8, i8* %29, i64 %34, !dbg !949
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !862, metadata !665) #10, !dbg !944
  %36 = load i8, i8* %35, align 1, !tbaa !705
  br label %37, !dbg !950, !llvm.loop !886

; <label>:37:                                     ; preds = %41, %32
  %38 = phi i8 [ %36, %32 ], [ %43, %41 ], !dbg !951
  %39 = phi i8* [ %35, %32 ], [ %42, %41 ]
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !862, metadata !665) #10, !dbg !944
  %40 = icmp eq i8 %38, 48, !dbg !952
  br i1 %40, label %41, label %46, !dbg !953

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !954
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !862, metadata !665) #10, !dbg !944
  %43 = load i8, i8* %42, align 1, !dbg !955, !tbaa !705
  %44 = icmp eq i8 %43, 0, !dbg !956
  br i1 %44, label %46, label %37, !dbg !956, !llvm.loop !886

; <label>:45:                                     ; preds = %23
  tail call void @abort() #14, !dbg !957
  unreachable, !dbg !957

; <label>:46:                                     ; preds = %37, %41
  %47 = phi i1 [ false, %37 ], [ true, %41 ]
  br label %48, !dbg !958

; <label>:48:                                     ; preds = %46, %28, %25, %22
  %49 = phi i1 [ false, %22 ], [ %27, %25 ], [ true, %28 ], [ %47, %46 ]
  %50 = tail call fastcc %struct.valinfo* @eval1(i1 zeroext %49), !dbg !958
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %50, i64 0, metadata !905, metadata !665), !dbg !960
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !857, metadata !665) #10, !dbg !961
  %51 = load i32, i32* %11, align 8, !dbg !964, !tbaa !840
  switch i32 %51, label %69 [
    i32 0, label %70
    i32 1, label %52
  ], !dbg !965

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %14, align 8, !dbg !966, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !862, metadata !665) #10, !dbg !967
  %54 = load i8, i8* %53, align 1, !dbg !968, !tbaa !705
  %55 = icmp eq i8 %54, 0, !dbg !969
  br i1 %55, label %75, label %56, !dbg !970

; <label>:56:                                     ; preds = %52
  %57 = icmp eq i8 %54, 45, !dbg !971
  %58 = zext i1 %57 to i64, !dbg !972
  %59 = getelementptr inbounds i8, i8* %53, i64 %58, !dbg !972
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !862, metadata !665) #10, !dbg !967
  %60 = load i8, i8* %59, align 1, !tbaa !705
  br label %61, !dbg !973, !llvm.loop !886

; <label>:61:                                     ; preds = %65, %56
  %62 = phi i8 [ %60, %56 ], [ %67, %65 ], !dbg !974
  %63 = phi i8* [ %59, %56 ], [ %66, %65 ]
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !862, metadata !665) #10, !dbg !967
  %64 = icmp eq i8 %62, 48, !dbg !975
  br i1 %64, label %65, label %129, !dbg !976

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !977
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !862, metadata !665) #10, !dbg !967
  %67 = load i8, i8* %66, align 1, !dbg !978, !tbaa !705
  %68 = icmp eq i8 %67, 0, !dbg !979
  br i1 %68, label %73, label %61, !dbg !979, !llvm.loop !886

; <label>:69:                                     ; preds = %48
  tail call void @abort() #14, !dbg !980
  unreachable, !dbg !980

; <label>:70:                                     ; preds = %48
  %71 = load i32, i32* %12, align 4, !dbg !981, !tbaa !870
  %72 = icmp eq i32 %71, 0, !dbg !982
  br i1 %72, label %78, label %130, !dbg !983

; <label>:73:                                     ; preds = %65
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !984, metadata !665) #10, !dbg !987
  %74 = icmp eq i32 %51, 1, !dbg !990
  br i1 %74, label %76, label %79, !dbg !992

; <label>:75:                                     ; preds = %52
  br label %76, !dbg !993

; <label>:76:                                     ; preds = %75, %73
  %77 = load i8*, i8** %14, align 8, !dbg !993, !tbaa !673
  tail call void @free(i8* %77) #10, !dbg !994
  br label %81, !dbg !994

; <label>:78:                                     ; preds = %70
  br label %79, !dbg !995

; <label>:79:                                     ; preds = %78, %73
  %80 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0, i64 0, !dbg !995
  tail call void @__gmpz_clear(%struct.__mpz_struct* %80) #10, !dbg !996
  br label %81

; <label>:81:                                     ; preds = %76, %79
  %82 = bitcast %struct.valinfo* %10 to i8*, !dbg !997
  tail call void @free(i8* %82) #10, !dbg !998
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %50, i64 0, metadata !904, metadata !665), !dbg !909
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %50, i64 0, metadata !857, metadata !665) #10, !dbg !999
  %83 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 0, !dbg !1002
  %84 = load i32, i32* %83, align 8, !dbg !1002, !tbaa !840
  switch i32 %84, label %104 [
    i32 0, label %105
    i32 1, label %85
  ], !dbg !1003

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 1, !dbg !1004
  %87 = bitcast %union.anon* %86 to i8**, !dbg !1005
  %88 = load i8*, i8** %87, align 8, !dbg !1005, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !862, metadata !665) #10, !dbg !1006
  %89 = load i8, i8* %88, align 1, !dbg !1007, !tbaa !705
  %90 = icmp eq i8 %89, 0, !dbg !1008
  br i1 %90, label %111, label %91, !dbg !1009

; <label>:91:                                     ; preds = %85
  %92 = icmp eq i8 %89, 45, !dbg !1010
  %93 = zext i1 %92 to i64, !dbg !1011
  %94 = getelementptr inbounds i8, i8* %88, i64 %93, !dbg !1011
  tail call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !862, metadata !665) #10, !dbg !1006
  %95 = load i8, i8* %94, align 1, !tbaa !705
  br label %96, !dbg !1012, !llvm.loop !886

; <label>:96:                                     ; preds = %100, %91
  %97 = phi i8 [ %95, %91 ], [ %102, %100 ], !dbg !1013
  %98 = phi i8* [ %94, %91 ], [ %101, %100 ]
  tail call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !862, metadata !665) #10, !dbg !1006
  %99 = icmp eq i8 %97, 48, !dbg !1014
  br i1 %99, label %100, label %123, !dbg !1015

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !1016
  tail call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !862, metadata !665) #10, !dbg !1006
  %102 = load i8, i8* %101, align 1, !dbg !1017, !tbaa !705
  %103 = icmp eq i8 %102, 0, !dbg !1018
  br i1 %103, label %109, label %96, !dbg !1018, !llvm.loop !886

; <label>:104:                                    ; preds = %81
  tail call void @abort() #14, !dbg !1019
  unreachable, !dbg !1019

; <label>:105:                                    ; preds = %81
  %106 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1020
  %107 = load i32, i32* %106, align 4, !dbg !1020, !tbaa !870
  %108 = icmp eq i32 %107, 0, !dbg !1021
  br i1 %108, label %114, label %124, !dbg !1022

; <label>:109:                                    ; preds = %100
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %50, i64 0, metadata !984, metadata !665) #10, !dbg !1023
  %110 = icmp eq i32 %84, 1, !dbg !1026
  br i1 %110, label %111, label %114, !dbg !1027

; <label>:111:                                    ; preds = %85, %109
  %112 = bitcast %union.anon* %86 to i8**, !dbg !1028
  %113 = load i8*, i8** %112, align 8, !dbg !1028, !tbaa !673
  tail call void @free(i8* %113) #10, !dbg !1029
  br label %116, !dbg !1029

; <label>:114:                                    ; preds = %105, %109
  %115 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 1, i32 0, i64 0, !dbg !1030
  tail call void @__gmpz_clear(%struct.__mpz_struct* %115) #10, !dbg !1031
  br label %116

; <label>:116:                                    ; preds = %111, %114
  %117 = bitcast %struct.valinfo* %50 to i8*, !dbg !1032
  tail call void @free(i8* %117) #10, !dbg !1033
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1034, metadata !665) #10, !dbg !1040
  %118 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !1042
  %119 = bitcast i8* %118 to %struct.valinfo*, !dbg !1042
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %119, i64 0, metadata !1039, metadata !665) #10, !dbg !1043
  %120 = bitcast i8* %118 to i32*, !dbg !1044
  store i32 0, i32* %120, align 8, !dbg !1045, !tbaa !840
  %121 = getelementptr inbounds i8, i8* %118, i64 8, !dbg !1046
  %122 = bitcast i8* %121 to %struct.__mpz_struct*, !dbg !1047
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %122, i64 0) #10, !dbg !1048
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %119, i64 0, metadata !904, metadata !665), !dbg !909
  br label %124, !dbg !1049

; <label>:123:                                    ; preds = %96
  br label %124, !dbg !909

; <label>:124:                                    ; preds = %123, %116, %105
  %125 = phi %struct.valinfo* [ %50, %105 ], [ %119, %116 ], [ %50, %123 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %125, i64 0, metadata !904, metadata !665), !dbg !909
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !921
  %126 = load i8**, i8*** @args, align 8, !dbg !925, !tbaa !673
  %127 = load i8*, i8** %126, align 8, !dbg !926, !tbaa !673
  %128 = icmp eq i8* %127, null, !dbg !927
  br i1 %128, label %146, label %7, !dbg !928, !llvm.loop !1050

; <label>:129:                                    ; preds = %61
  br label %130, !dbg !1053

; <label>:130:                                    ; preds = %129, %70
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %50, i64 0, metadata !984, metadata !665) #10, !dbg !1053
  %131 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 0, !dbg !1055
  %132 = load i32, i32* %131, align 8, !dbg !1055, !tbaa !840
  %133 = icmp eq i32 %132, 1, !dbg !1056
  %134 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %50, i64 0, i32 1
  br i1 %133, label %135, label %138, !dbg !1057

; <label>:135:                                    ; preds = %130
  %136 = bitcast %union.anon* %134 to i8**, !dbg !1058
  %137 = load i8*, i8** %136, align 8, !dbg !1058, !tbaa !673
  tail call void @free(i8* %137) #10, !dbg !1059
  br label %140, !dbg !1059

; <label>:138:                                    ; preds = %130
  %139 = getelementptr inbounds %union.anon, %union.anon* %134, i64 0, i32 0, i64 0, !dbg !1060
  tail call void @__gmpz_clear(%struct.__mpz_struct* %139) #10, !dbg !1061
  br label %140

; <label>:140:                                    ; preds = %135, %138
  %141 = bitcast %struct.valinfo* %50 to i8*, !dbg !1062
  tail call void @free(i8* %141) #10, !dbg !1063
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !904, metadata !665), !dbg !909
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !921
  %142 = load i8**, i8*** @args, align 8, !dbg !925, !tbaa !673
  %143 = load i8*, i8** %142, align 8, !dbg !926, !tbaa !673
  %144 = icmp eq i8* %143, null, !dbg !927
  br i1 %144, label %145, label %15, !dbg !928, !llvm.loop !1050

; <label>:145:                                    ; preds = %140, %15
  br label %147, !dbg !1064

; <label>:146:                                    ; preds = %124
  br label %147, !dbg !1064

; <label>:147:                                    ; preds = %146, %145, %1
  %148 = phi %struct.valinfo* [ %2, %1 ], [ %10, %145 ], [ %125, %146 ]
  ret %struct.valinfo* %148, !dbg !1064
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @syntax_error() unnamed_addr #0 !dbg !1065 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i32 5) #10, !dbg !1068
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %1) #10, !dbg !1069
  unreachable, !dbg !1068
}

declare i64 @__gmpz_out_str(%struct._IO_FILE*, i32, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval1(i1 zeroext) unnamed_addr #6 !dbg !1071 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1073, metadata !906), !dbg !1076
  %2 = tail call fastcc %struct.valinfo* @eval2(i1 zeroext %0), !dbg !1077
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1074, metadata !665), !dbg !1078
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1074, metadata !665), !dbg !1078
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1079
  %3 = load i8**, i8*** @args, align 8, !dbg !1083, !tbaa !673
  %4 = load i8*, i8** %3, align 8, !dbg !1084, !tbaa !673
  %5 = icmp eq i8* %4, null, !dbg !1085
  br i1 %5, label %150, label %6, !dbg !1086

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
  br label %15, !dbg !1086

; <label>:15:                                     ; preds = %7, %143
  %16 = phi i8* [ %8, %7 ], [ %146, %143 ]
  %17 = phi i8** [ %9, %7 ], [ %145, %143 ]
  %18 = tail call i32 @strcmp(i8* nonnull %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !1087
  %19 = icmp eq i32 %18, 0, !dbg !1088
  %20 = zext i1 %19 to i64, !dbg !1089
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20, !dbg !1089
  store i8** %21, i8*** @args, align 8, !dbg !1089, !tbaa !673
  br i1 %19, label %22, label %148, !dbg !1090

; <label>:22:                                     ; preds = %15
  br i1 %0, label %23, label %51, !dbg !1091

; <label>:23:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata %struct.valinfo* undef, i64 0, metadata !857, metadata !665) #10, !dbg !1093
  %24 = load i32, i32* %11, align 8, !dbg !1096, !tbaa !840
  switch i32 %24, label %45 [
    i32 0, label %25
    i32 1, label %28
  ], !dbg !1097

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %12, align 4, !dbg !1098, !tbaa !870
  %27 = icmp eq i32 %26, 0, !dbg !1099
  br label %48, !dbg !1100

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %14, align 8, !dbg !1101, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !862, metadata !665) #10, !dbg !1102
  %30 = load i8, i8* %29, align 1, !dbg !1103, !tbaa !705
  %31 = icmp eq i8 %30, 0, !dbg !1104
  br i1 %31, label %48, label %32, !dbg !1105

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i8 %30, 45, !dbg !1106
  %34 = zext i1 %33 to i64, !dbg !1107
  %35 = getelementptr inbounds i8, i8* %29, i64 %34, !dbg !1107
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !862, metadata !665) #10, !dbg !1102
  %36 = load i8, i8* %35, align 1, !tbaa !705
  br label %37, !dbg !1108, !llvm.loop !886

; <label>:37:                                     ; preds = %41, %32
  %38 = phi i8 [ %36, %32 ], [ %43, %41 ], !dbg !1109
  %39 = phi i8* [ %35, %32 ], [ %42, %41 ]
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !862, metadata !665) #10, !dbg !1102
  %40 = icmp eq i8 %38, 48, !dbg !1110
  br i1 %40, label %41, label %46, !dbg !1111

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1112
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !862, metadata !665) #10, !dbg !1102
  %43 = load i8, i8* %42, align 1, !dbg !1113, !tbaa !705
  %44 = icmp eq i8 %43, 0, !dbg !1114
  br i1 %44, label %46, label %37, !dbg !1114, !llvm.loop !886

; <label>:45:                                     ; preds = %23
  tail call void @abort() #14, !dbg !1115
  unreachable, !dbg !1115

; <label>:46:                                     ; preds = %41, %37
  %47 = phi i1 [ false, %37 ], [ true, %41 ]
  br label %48, !dbg !1116

; <label>:48:                                     ; preds = %46, %25, %28
  %49 = phi i1 [ %27, %25 ], [ true, %28 ], [ %47, %46 ]
  %50 = xor i1 %49, true, !dbg !1116
  br label %51

; <label>:51:                                     ; preds = %48, %22
  %52 = phi i1 [ false, %22 ], [ %50, %48 ]
  %53 = tail call fastcc %struct.valinfo* @eval2(i1 zeroext %52), !dbg !1117
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %53, i64 0, metadata !1075, metadata !665), !dbg !1119
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !857, metadata !665) #10, !dbg !1120
  %54 = load i32, i32* %11, align 8, !dbg !1123, !tbaa !840
  switch i32 %54, label %72 [
    i32 0, label %73
    i32 1, label %55
  ], !dbg !1124

; <label>:55:                                     ; preds = %51
  %56 = load i8*, i8** %14, align 8, !dbg !1125, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !862, metadata !665) #10, !dbg !1126
  %57 = load i8, i8* %56, align 1, !dbg !1127, !tbaa !705
  %58 = icmp eq i8 %57, 0, !dbg !1128
  br i1 %58, label %109, label %59, !dbg !1129

; <label>:59:                                     ; preds = %55
  %60 = icmp eq i8 %57, 45, !dbg !1130
  %61 = zext i1 %60 to i64, !dbg !1131
  %62 = getelementptr inbounds i8, i8* %56, i64 %61, !dbg !1131
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !862, metadata !665) #10, !dbg !1126
  %63 = load i8, i8* %62, align 1, !tbaa !705
  br label %64, !dbg !1132, !llvm.loop !886

; <label>:64:                                     ; preds = %68, %59
  %65 = phi i8 [ %63, %59 ], [ %70, %68 ], !dbg !1133
  %66 = phi i8* [ %62, %59 ], [ %69, %68 ]
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !862, metadata !665) #10, !dbg !1126
  %67 = icmp eq i8 %65, 48, !dbg !1134
  br i1 %67, label %68, label %76, !dbg !1135

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1136
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !862, metadata !665) #10, !dbg !1126
  %70 = load i8, i8* %69, align 1, !dbg !1137, !tbaa !705
  %71 = icmp eq i8 %70, 0, !dbg !1138
  br i1 %71, label %105, label %64, !dbg !1138, !llvm.loop !886

; <label>:72:                                     ; preds = %51
  tail call void @abort() #14, !dbg !1139
  unreachable, !dbg !1139

; <label>:73:                                     ; preds = %51
  %74 = load i32, i32* %12, align 4, !dbg !1140, !tbaa !870
  %75 = icmp eq i32 %74, 0, !dbg !1141
  br i1 %75, label %112, label %77, !dbg !1142

; <label>:76:                                     ; preds = %64
  br label %77, !dbg !1143

; <label>:77:                                     ; preds = %76, %73
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %53, i64 0, metadata !857, metadata !665) #10, !dbg !1143
  %78 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 0, !dbg !1146
  %79 = load i32, i32* %78, align 8, !dbg !1146, !tbaa !840
  switch i32 %79, label %99 [
    i32 0, label %100
    i32 1, label %80
  ], !dbg !1147

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 1, !dbg !1148
  %82 = bitcast %union.anon* %81 to i8**, !dbg !1149
  %83 = load i8*, i8** %82, align 8, !dbg !1149, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !862, metadata !665) #10, !dbg !1150
  %84 = load i8, i8* %83, align 1, !dbg !1151, !tbaa !705
  %85 = icmp eq i8 %84, 0, !dbg !1152
  br i1 %85, label %106, label %86, !dbg !1153

; <label>:86:                                     ; preds = %80
  %87 = icmp eq i8 %84, 45, !dbg !1154
  %88 = zext i1 %87 to i64, !dbg !1155
  %89 = getelementptr inbounds i8, i8* %83, i64 %88, !dbg !1155
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !862, metadata !665) #10, !dbg !1150
  %90 = load i8, i8* %89, align 1, !tbaa !705
  br label %91, !dbg !1156, !llvm.loop !886

; <label>:91:                                     ; preds = %95, %86
  %92 = phi i8 [ %90, %86 ], [ %97, %95 ], !dbg !1157
  %93 = phi i8* [ %89, %86 ], [ %96, %95 ]
  tail call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !862, metadata !665) #10, !dbg !1150
  %94 = icmp eq i8 %92, 48, !dbg !1158
  br i1 %94, label %95, label %136, !dbg !1159

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !1160
  tail call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !862, metadata !665) #10, !dbg !1150
  %97 = load i8, i8* %96, align 1, !dbg !1161, !tbaa !705
  %98 = icmp eq i8 %97, 0, !dbg !1162
  br i1 %98, label %104, label %91, !dbg !1162, !llvm.loop !886

; <label>:99:                                     ; preds = %77
  tail call void @abort() #14, !dbg !1163
  unreachable, !dbg !1163

; <label>:100:                                    ; preds = %77
  %101 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1164
  %102 = load i32, i32* %101, align 4, !dbg !1164, !tbaa !870
  %103 = icmp eq i32 %102, 0, !dbg !1165
  br i1 %103, label %106, label %141, !dbg !1166

; <label>:104:                                    ; preds = %95
  br label %107, !dbg !1167

; <label>:105:                                    ; preds = %68
  br label %107, !dbg !1167

; <label>:106:                                    ; preds = %100, %80
  br label %107, !dbg !1167

; <label>:107:                                    ; preds = %106, %105, %104
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !984, metadata !665) #10, !dbg !1167
  %108 = icmp eq i32 %54, 1, !dbg !1170
  br i1 %108, label %110, label %113, !dbg !1171

; <label>:109:                                    ; preds = %55
  br label %110, !dbg !1172

; <label>:110:                                    ; preds = %109, %107
  %111 = load i8*, i8** %14, align 8, !dbg !1172, !tbaa !673
  tail call void @free(i8* %111) #10, !dbg !1173
  br label %115, !dbg !1173

; <label>:112:                                    ; preds = %73
  br label %113, !dbg !1174

; <label>:113:                                    ; preds = %112, %107
  %114 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0, i64 0, !dbg !1174
  tail call void @__gmpz_clear(%struct.__mpz_struct* %114) #10, !dbg !1175
  br label %115

; <label>:115:                                    ; preds = %110, %113
  %116 = bitcast %struct.valinfo* %10 to i8*, !dbg !1176
  tail call void @free(i8* %116) #10, !dbg !1177
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %53, i64 0, metadata !984, metadata !665) #10, !dbg !1178
  %117 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 0, !dbg !1180
  %118 = load i32, i32* %117, align 8, !dbg !1180, !tbaa !840
  %119 = icmp eq i32 %118, 1, !dbg !1181
  %120 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 1
  br i1 %119, label %121, label %124, !dbg !1182

; <label>:121:                                    ; preds = %115
  %122 = bitcast %union.anon* %120 to i8**, !dbg !1183
  %123 = load i8*, i8** %122, align 8, !dbg !1183, !tbaa !673
  tail call void @free(i8* %123) #10, !dbg !1184
  br label %126, !dbg !1184

; <label>:124:                                    ; preds = %115
  %125 = getelementptr inbounds %union.anon, %union.anon* %120, i64 0, i32 0, i64 0, !dbg !1185
  tail call void @__gmpz_clear(%struct.__mpz_struct* %125) #10, !dbg !1186
  br label %126

; <label>:126:                                    ; preds = %121, %124
  %127 = bitcast %struct.valinfo* %53 to i8*, !dbg !1187
  tail call void @free(i8* %127) #10, !dbg !1188
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1034, metadata !665) #10, !dbg !1189
  %128 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !1191
  %129 = bitcast i8* %128 to %struct.valinfo*, !dbg !1191
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %129, i64 0, metadata !1039, metadata !665) #10, !dbg !1192
  %130 = bitcast i8* %128 to i32*, !dbg !1193
  store i32 0, i32* %130, align 8, !dbg !1194, !tbaa !840
  %131 = getelementptr inbounds i8, i8* %128, i64 8, !dbg !1195
  %132 = bitcast i8* %131 to %struct.__mpz_struct*, !dbg !1196
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %132, i64 0) #10, !dbg !1197
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %129, i64 0, metadata !1074, metadata !665), !dbg !1078
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %129, i64 0, metadata !1074, metadata !665), !dbg !1078
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1079
  %133 = load i8**, i8*** @args, align 8, !dbg !1083, !tbaa !673
  %134 = load i8*, i8** %133, align 8, !dbg !1084, !tbaa !673
  %135 = icmp eq i8* %134, null, !dbg !1085
  br i1 %135, label %149, label %7, !dbg !1086, !llvm.loop !1198

; <label>:136:                                    ; preds = %91
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %53, i64 0, metadata !984, metadata !665) #10, !dbg !1201
  %137 = icmp eq i32 %79, 1, !dbg !1203
  br i1 %137, label %138, label %141, !dbg !1204

; <label>:138:                                    ; preds = %136
  %139 = bitcast %union.anon* %81 to i8**, !dbg !1205
  %140 = load i8*, i8** %139, align 8, !dbg !1205, !tbaa !673
  tail call void @free(i8* %140) #10, !dbg !1206
  br label %143, !dbg !1206

; <label>:141:                                    ; preds = %100, %136
  %142 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %53, i64 0, i32 1, i32 0, i64 0, !dbg !1207
  tail call void @__gmpz_clear(%struct.__mpz_struct* %142) #10, !dbg !1208
  br label %143

; <label>:143:                                    ; preds = %138, %141
  %144 = bitcast %struct.valinfo* %53 to i8*, !dbg !1209
  tail call void @free(i8* %144) #10, !dbg !1210
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !1074, metadata !665), !dbg !1078
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1079
  %145 = load i8**, i8*** @args, align 8, !dbg !1083, !tbaa !673
  %146 = load i8*, i8** %145, align 8, !dbg !1084, !tbaa !673
  %147 = icmp eq i8* %146, null, !dbg !1085
  br i1 %147, label %148, label %15, !dbg !1086, !llvm.loop !1198

; <label>:148:                                    ; preds = %143, %15
  br label %150, !dbg !1211

; <label>:149:                                    ; preds = %126
  br label %150, !dbg !1211

; <label>:150:                                    ; preds = %149, %148, %1
  %151 = phi %struct.valinfo* [ %2, %1 ], [ %10, %148 ], [ %129, %149 ]
  ret %struct.valinfo* %151, !dbg !1211
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare void @__gmpz_clear(%struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_init_set_ui(%struct.__mpz_struct*, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval2(i1 zeroext) unnamed_addr #6 !dbg !14 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !47, metadata !906), !dbg !1212
  %2 = tail call fastcc %struct.valinfo* @eval3(i1 zeroext %0), !dbg !1213
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !48, metadata !665), !dbg !1214
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !48, metadata !665), !dbg !1214
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !52, metadata !665), !dbg !1215
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1216
  %3 = load i8**, i8*** @args, align 8, !dbg !1219, !tbaa !673
  %4 = load i8*, i8** %3, align 8, !dbg !1220, !tbaa !673
  %5 = icmp eq i8* %4, null, !dbg !1221
  br i1 %5, label %191, label %6, !dbg !1222

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !1223

; <label>:7:                                      ; preds = %6, %178
  %8 = phi i8* [ %187, %178 ], [ %4, %6 ]
  %9 = phi i8** [ %186, %178 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %182, %178 ], [ %2, %6 ]
  %11 = tail call i32 @strcmp(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #10, !dbg !1223
  %12 = icmp eq i32 %11, 0, !dbg !1224
  %13 = zext i1 %12 to i64, !dbg !1225
  %14 = getelementptr inbounds i8*, i8** %9, i64 %13, !dbg !1225
  store i8** %14, i8*** @args, align 8, !dbg !1225, !tbaa !673
  br i1 %12, label %63, label %15, !dbg !1226

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %14, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1227
  %17 = icmp eq i8* %16, null, !dbg !1230
  br i1 %17, label %189, label %18, !dbg !1231

; <label>:18:                                     ; preds = %15
  %19 = tail call i32 @strcmp(i8* nonnull %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !1232
  %20 = icmp eq i32 %19, 0, !dbg !1233
  %21 = zext i1 %20 to i64, !dbg !1234
  %22 = getelementptr inbounds i8*, i8** %14, i64 %21, !dbg !1234
  store i8** %22, i8*** @args, align 8, !dbg !1234, !tbaa !673
  br i1 %20, label %63, label %23, !dbg !1235

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %22, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1236
  %25 = icmp eq i8* %24, null, !dbg !1239
  br i1 %25, label %189, label %26, !dbg !1240

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @strcmp(i8* nonnull %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #10, !dbg !1241
  %28 = icmp eq i32 %27, 0, !dbg !1242
  %29 = zext i1 %28 to i64, !dbg !1243
  %30 = getelementptr inbounds i8*, i8** %22, i64 %29, !dbg !1243
  store i8** %30, i8*** @args, align 8, !dbg !1243, !tbaa !673
  br i1 %28, label %63, label %31, !dbg !1244

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %30, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1245
  %33 = icmp eq i8* %32, null, !dbg !1248
  br i1 %33, label %189, label %34, !dbg !1249

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 @strcmp(i8* nonnull %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !1250
  %36 = icmp eq i32 %35, 0, !dbg !1251
  %37 = zext i1 %36 to i64, !dbg !1252
  %38 = getelementptr inbounds i8*, i8** %30, i64 %37, !dbg !1252
  store i8** %38, i8*** @args, align 8, !dbg !1252, !tbaa !673
  br i1 %36, label %63, label %39, !dbg !1253

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %38, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1255
  %41 = icmp eq i8* %40, null, !dbg !1258
  br i1 %41, label %189, label %42, !dbg !1259

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcmp(i8* nonnull %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #10, !dbg !1260
  %44 = icmp eq i32 %43, 0, !dbg !1261
  %45 = zext i1 %44 to i64, !dbg !1262
  %46 = getelementptr inbounds i8*, i8** %38, i64 %45, !dbg !1262
  store i8** %46, i8*** @args, align 8, !dbg !1262, !tbaa !673
  br i1 %44, label %63, label %47, !dbg !1263

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %46, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1264
  %49 = icmp eq i8* %48, null, !dbg !1267
  br i1 %49, label %189, label %50, !dbg !1268

; <label>:50:                                     ; preds = %47
  %51 = tail call i32 @strcmp(i8* nonnull %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0)) #10, !dbg !1269
  %52 = icmp eq i32 %51, 0, !dbg !1270
  %53 = zext i1 %52 to i64, !dbg !1271
  %54 = getelementptr inbounds i8*, i8** %46, i64 %53, !dbg !1271
  store i8** %54, i8*** @args, align 8, !dbg !1271, !tbaa !673
  br i1 %52, label %63, label %55, !dbg !1272

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %54, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1273
  %57 = icmp eq i8* %56, null, !dbg !1276
  br i1 %57, label %189, label %58, !dbg !1277

; <label>:58:                                     ; preds = %55
  %59 = tail call i32 @strcmp(i8* nonnull %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !1278
  %60 = icmp eq i32 %59, 0, !dbg !1279
  %61 = zext i1 %60 to i64, !dbg !1280
  %62 = getelementptr inbounds i8*, i8** %54, i64 %61, !dbg !1280
  store i8** %62, i8*** @args, align 8, !dbg !1280, !tbaa !673
  br i1 %60, label %63, label %189, !dbg !1281

; <label>:63:                                     ; preds = %58, %50, %42, %26, %34, %18, %7
  %64 = phi i3 [ 0, %7 ], [ 1, %18 ], [ 2, %34 ], [ 2, %26 ], [ 3, %42 ], [ -4, %50 ], [ -3, %58 ]
  %65 = tail call fastcc %struct.valinfo* @eval3(i1 zeroext %0), !dbg !1282
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %65, i64 0, metadata !49, metadata !665), !dbg !1283
  %66 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0
  br i1 %0, label %69, label %67, !dbg !1284

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  br label %157, !dbg !1284

; <label>:69:                                     ; preds = %63
  tail call void @llvm.dbg.value(metadata %struct.valinfo* undef, i64 0, metadata !1285, metadata !665) #10, !dbg !1291
  %70 = load i32, i32* %66, align 8, !dbg !1293, !tbaa !840
  switch i32 %70, label %76 [
    i32 0, label %71
    i32 1, label %77
  ], !dbg !1294

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, !dbg !1295
  %73 = getelementptr inbounds %union.anon, %union.anon* %72, i64 0, i32 0, i64 0, !dbg !1296
  %74 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %73) #10, !dbg !1297
  tail call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !1288, metadata !665) #10, !dbg !1298
  tail call void @__gmpz_clear(%struct.__mpz_struct* %73) #10, !dbg !1299
  %75 = bitcast %union.anon* %72 to i8**, !dbg !1300
  store i8* %74, i8** %75, align 8, !dbg !1301, !tbaa !673
  store i32 1, i32* %66, align 8, !dbg !1302, !tbaa !840
  br label %77, !dbg !1303

; <label>:76:                                     ; preds = %69
  tail call void @abort() #14, !dbg !1304
  unreachable, !dbg !1304

; <label>:77:                                     ; preds = %69, %71
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %65, i64 0, metadata !1285, metadata !665) #10, !dbg !1305
  %78 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 0, !dbg !1307
  %79 = load i32, i32* %78, align 8, !dbg !1307, !tbaa !840
  switch i32 %79, label %85 [
    i32 0, label %80
    i32 1, label %86
  ], !dbg !1308

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1, !dbg !1309
  %82 = getelementptr inbounds %union.anon, %union.anon* %81, i64 0, i32 0, i64 0, !dbg !1310
  %83 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %82) #10, !dbg !1311
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !1288, metadata !665) #10, !dbg !1312
  tail call void @__gmpz_clear(%struct.__mpz_struct* %82) #10, !dbg !1313
  %84 = bitcast %union.anon* %81 to i8**, !dbg !1314
  store i8* %83, i8** %84, align 8, !dbg !1315, !tbaa !673
  store i32 1, i32* %78, align 8, !dbg !1316, !tbaa !840
  br label %86, !dbg !1317

; <label>:85:                                     ; preds = %77
  tail call void @abort() #14, !dbg !1318
  unreachable, !dbg !1318

; <label>:86:                                     ; preds = %77, %80
  %87 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, !dbg !1319
  %88 = bitcast %union.anon* %87 to i8**, !dbg !1321
  %89 = load i8*, i8** %88, align 8, !dbg !1321, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1322, metadata !665), !dbg !1325
  %90 = load i8, i8* %89, align 1, !dbg !1327, !tbaa !705
  %91 = icmp eq i8 %90, 45, !dbg !1328
  %92 = zext i1 %91 to i64, !dbg !1329
  %93 = getelementptr inbounds i8, i8* %89, i64 %92, !dbg !1329
  tail call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !1322, metadata !665), !dbg !1325
  %94 = load i8, i8* %93, align 1, !tbaa !705
  br label %95, !dbg !1330, !llvm.loop !1331

; <label>:95:                                     ; preds = %101, %86
  %96 = phi i8 [ %94, %86 ], [ %103, %101 ], !dbg !1334
  %97 = phi i8* [ %93, %86 ], [ %102, %101 ]
  tail call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1322, metadata !665), !dbg !1325
  %98 = sext i8 %96 to i32, !dbg !1334
  %99 = add nsw i32 %98, -48, !dbg !1334
  %100 = icmp ult i32 %99, 10, !dbg !1334
  br i1 %100, label %101, label %126, !dbg !1336

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !1337
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !1322, metadata !665), !dbg !1325
  %103 = load i8, i8* %102, align 1, !dbg !1338, !tbaa !705
  %104 = icmp eq i8 %103, 0, !dbg !1339
  br i1 %104, label %105, label %95, !dbg !1339, !llvm.loop !1331

; <label>:105:                                    ; preds = %101
  %106 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1, !dbg !1341
  %107 = bitcast %union.anon* %106 to i8**, !dbg !1343
  %108 = load i8*, i8** %107, align 8, !dbg !1343, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !1322, metadata !665), !dbg !1344
  %109 = load i8, i8* %108, align 1, !dbg !1346, !tbaa !705
  %110 = icmp eq i8 %109, 45, !dbg !1347
  %111 = zext i1 %110 to i64, !dbg !1348
  %112 = getelementptr inbounds i8, i8* %108, i64 %111, !dbg !1348
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !1322, metadata !665), !dbg !1344
  %113 = load i8, i8* %112, align 1, !tbaa !705
  br label %114, !dbg !1349, !llvm.loop !1331

; <label>:114:                                    ; preds = %120, %105
  %115 = phi i8 [ %113, %105 ], [ %122, %120 ], !dbg !1350
  %116 = phi i8* [ %112, %105 ], [ %121, %120 ]
  tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !1322, metadata !665), !dbg !1344
  %117 = sext i8 %115 to i32, !dbg !1350
  %118 = add nsw i32 %117, -48, !dbg !1350
  %119 = icmp ult i32 %118, 10, !dbg !1350
  br i1 %119, label %120, label %129, !dbg !1351

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !1352
  tail call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !1322, metadata !665), !dbg !1344
  %122 = load i8, i8* %121, align 1, !dbg !1353, !tbaa !705
  %123 = icmp eq i8 %122, 0, !dbg !1354
  br i1 %123, label %124, label %114, !dbg !1354, !llvm.loop !1331

; <label>:124:                                    ; preds = %120
  %125 = tail call i32 @strintcmp(i8* %89, i8* %108) #13, !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !53, metadata !665), !dbg !1356
  br label %135, !dbg !1357

; <label>:126:                                    ; preds = %95
  %127 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1, !dbg !1358
  %128 = bitcast %union.anon* %127 to i8**, !dbg !1360
  br label %130, !dbg !1361

; <label>:129:                                    ; preds = %114
  br label %130, !dbg !1361

; <label>:130:                                    ; preds = %129, %126
  %131 = phi i8** [ %128, %126 ], [ %107, %129 ], !dbg !1360
  %132 = tail call i32* @__errno_location() #1, !dbg !1361
  store i32 0, i32* %132, align 4, !dbg !1362, !tbaa !778
  %133 = load i8*, i8** %131, align 8, !dbg !1360, !tbaa !673
  %134 = tail call i32 @strcoll(i8* %89, i8* %133) #13, !dbg !1363
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !53, metadata !665), !dbg !1356
  br label %135, !dbg !1364

; <label>:135:                                    ; preds = %130, %124
  %136 = phi i32 [ %125, %124 ], [ %134, %130 ]
  tail call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !53, metadata !665), !dbg !1356
  switch i3 %64, label %156 [
    i3 0, label %137
    i3 1, label %140
    i3 2, label %143
    i3 3, label %146
    i3 -4, label %149
    i3 -3, label %153
  ], !dbg !1365

; <label>:137:                                    ; preds = %135
  %138 = lshr i32 %136, 31, !dbg !1366
  %139 = zext i32 %138 to i64, !dbg !1366
  br label %157, !dbg !1368

; <label>:140:                                    ; preds = %135
  %141 = icmp slt i32 %136, 1, !dbg !1369
  %142 = zext i1 %141 to i64, !dbg !1370
  br label %157, !dbg !1371

; <label>:143:                                    ; preds = %135
  %144 = icmp eq i32 %136, 0, !dbg !1372
  %145 = zext i1 %144 to i64, !dbg !1373
  br label %157, !dbg !1374

; <label>:146:                                    ; preds = %135
  %147 = icmp ne i32 %136, 0, !dbg !1375
  %148 = zext i1 %147 to i64, !dbg !1376
  br label %157, !dbg !1377

; <label>:149:                                    ; preds = %135
  %150 = lshr i32 %136, 31, !dbg !1378
  %151 = xor i32 %150, 1, !dbg !1378
  %152 = zext i32 %151 to i64, !dbg !1378
  br label %157, !dbg !1379

; <label>:153:                                    ; preds = %135
  %154 = icmp sgt i32 %136, 0, !dbg !1380
  %155 = zext i1 %154 to i64, !dbg !1381
  br label %157, !dbg !1382

; <label>:156:                                    ; preds = %135
  tail call void @abort() #14, !dbg !1383
  unreachable, !dbg !1383

; <label>:157:                                    ; preds = %67, %137, %140, %143, %146, %149, %153
  %158 = phi %union.anon* [ %68, %67 ], [ %87, %137 ], [ %87, %140 ], [ %87, %143 ], [ %87, %146 ], [ %87, %149 ], [ %87, %153 ]
  %159 = phi i64 [ 0, %67 ], [ %139, %137 ], [ %142, %140 ], [ %145, %143 ], [ %148, %146 ], [ %152, %149 ], [ %155, %153 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !984, metadata !665) #10, !dbg !1384
  %160 = load i32, i32* %66, align 8, !dbg !1386, !tbaa !840
  %161 = icmp eq i32 %160, 1, !dbg !1387
  br i1 %161, label %162, label %165, !dbg !1388

; <label>:162:                                    ; preds = %157
  %163 = bitcast %union.anon* %158 to i8**, !dbg !1389
  %164 = load i8*, i8** %163, align 8, !dbg !1389, !tbaa !673
  tail call void @free(i8* %164) #10, !dbg !1390
  br label %167, !dbg !1390

; <label>:165:                                    ; preds = %157
  %166 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1, i32 0, i64 0, !dbg !1391
  tail call void @__gmpz_clear(%struct.__mpz_struct* %166) #10, !dbg !1392
  br label %167

; <label>:167:                                    ; preds = %162, %165
  %168 = bitcast %struct.valinfo* %10 to i8*, !dbg !1393
  tail call void @free(i8* %168) #10, !dbg !1394
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %65, i64 0, metadata !984, metadata !665) #10, !dbg !1395
  %169 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 0, !dbg !1397
  %170 = load i32, i32* %169, align 8, !dbg !1397, !tbaa !840
  %171 = icmp eq i32 %170, 1, !dbg !1398
  %172 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %65, i64 0, i32 1
  br i1 %171, label %173, label %176, !dbg !1399

; <label>:173:                                    ; preds = %167
  %174 = bitcast %union.anon* %172 to i8**, !dbg !1400
  %175 = load i8*, i8** %174, align 8, !dbg !1400, !tbaa !673
  tail call void @free(i8* %175) #10, !dbg !1401
  br label %178, !dbg !1401

; <label>:176:                                    ; preds = %167
  %177 = getelementptr inbounds %union.anon, %union.anon* %172, i64 0, i32 0, i64 0, !dbg !1402
  tail call void @__gmpz_clear(%struct.__mpz_struct* %177) #10, !dbg !1403
  br label %178

; <label>:178:                                    ; preds = %176, %173
  %179 = bitcast %struct.valinfo* %65 to i8*, !dbg !1404
  tail call void @free(i8* %179) #10, !dbg !1405
  %180 = and i64 %159, 1, !dbg !1406
  tail call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1034, metadata !665) #10, !dbg !1407
  %181 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !1409
  %182 = bitcast i8* %181 to %struct.valinfo*, !dbg !1409
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %182, i64 0, metadata !1039, metadata !665) #10, !dbg !1410
  %183 = bitcast i8* %181 to i32*, !dbg !1411
  store i32 0, i32* %183, align 8, !dbg !1412, !tbaa !840
  %184 = getelementptr inbounds i8, i8* %181, i64 8, !dbg !1413
  %185 = bitcast i8* %184 to %struct.__mpz_struct*, !dbg !1414
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %185, i64 %180) #10, !dbg !1415
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %182, i64 0, metadata !48, metadata !665), !dbg !1214
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %182, i64 0, metadata !48, metadata !665), !dbg !1214
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %182, i64 0, metadata !48, metadata !665), !dbg !1214
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !52, metadata !665), !dbg !1215
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1216
  %186 = load i8**, i8*** @args, align 8, !dbg !1219, !tbaa !673
  %187 = load i8*, i8** %186, align 8, !dbg !1220, !tbaa !673
  %188 = icmp eq i8* %187, null, !dbg !1221
  br i1 %188, label %189, label %7, !dbg !1222

; <label>:189:                                    ; preds = %178, %15, %23, %31, %39, %47, %55, %58
  %190 = phi %struct.valinfo* [ %10, %58 ], [ %10, %55 ], [ %10, %47 ], [ %10, %39 ], [ %10, %31 ], [ %10, %23 ], [ %10, %15 ], [ %182, %178 ]
  br label %191, !dbg !1214

; <label>:191:                                    ; preds = %189, %1
  %192 = phi %struct.valinfo* [ %2, %1 ], [ %190, %189 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %182, i64 0, metadata !48, metadata !665), !dbg !1214
  ret %struct.valinfo* %192, !dbg !1416
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval3(i1 zeroext) unnamed_addr #6 !dbg !78 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !80, metadata !906), !dbg !1417
  %2 = tail call fastcc %struct.valinfo* @eval4(i1 zeroext %0), !dbg !1418
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !81, metadata !665), !dbg !1419
  %3 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 0
  %4 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1, i32 0, i64 0
  %5 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1
  %6 = bitcast %union.anon* %5 to i8**
  %7 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0, i64 0
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1420
  %8 = load i8**, i8*** @args, align 8, !dbg !1424, !tbaa !673
  %9 = load i8*, i8** %8, align 8, !dbg !1425, !tbaa !673
  %10 = icmp eq i8* %9, null, !dbg !1426
  br i1 %10, label %28, label %11, !dbg !1427

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !1428

; <label>:12:                                     ; preds = %11, %100
  %13 = phi i8* [ %103, %100 ], [ %9, %11 ]
  %14 = phi i8** [ %102, %100 ], [ %8, %11 ]
  %15 = tail call i32 @strcmp(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #10, !dbg !1428
  %16 = icmp eq i32 %15, 0, !dbg !1429
  %17 = zext i1 %16 to i64, !dbg !1430
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17, !dbg !1430
  store i8** %18, i8*** @args, align 8, !dbg !1430, !tbaa !673
  br i1 %16, label %29, label %19, !dbg !1431

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %18, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1432
  %21 = icmp eq i8* %20, null, !dbg !1435
  br i1 %21, label %27, label %22, !dbg !1436

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #10, !dbg !1437
  %24 = icmp eq i32 %23, 0, !dbg !1438
  %25 = zext i1 %24 to i64, !dbg !1439
  %26 = getelementptr inbounds i8*, i8** %18, i64 %25, !dbg !1439
  store i8** %26, i8*** @args, align 8, !dbg !1439, !tbaa !673
  br i1 %24, label %29, label %27, !dbg !1440

; <label>:27:                                     ; preds = %100, %19, %22
  br label %28, !dbg !1441

; <label>:28:                                     ; preds = %27, %1
  ret %struct.valinfo* %2, !dbg !1441

; <label>:29:                                     ; preds = %22, %12
  %30 = phi i32 [ 0, %12 ], [ 1, %22 ]
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !83, metadata !665), !dbg !1442
  %31 = tail call fastcc %struct.valinfo* @eval4(i1 zeroext %0), !dbg !1443
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %31, i64 0, metadata !82, metadata !665), !dbg !1444
  br i1 %0, label %34, label %32, !dbg !1445

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 0, !dbg !1446
  br label %90, !dbg !1445

; <label>:34:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1448, metadata !665) #10, !dbg !1454
  %35 = load i32, i32* %3, align 8, !dbg !1459, !tbaa !840
  switch i32 %35, label %55 [
    i32 0, label %56
    i32 1, label %36
  ], !dbg !1460

; <label>:36:                                     ; preds = %34
  %37 = load i8*, i8** %6, align 8, !dbg !1461, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1451, metadata !665) #10, !dbg !1462
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !1322, metadata !665) #10, !dbg !1463
  %38 = load i8, i8* %37, align 1, !dbg !1466, !tbaa !705
  %39 = icmp eq i8 %38, 45, !dbg !1467
  %40 = zext i1 %39 to i64, !dbg !1468
  %41 = getelementptr inbounds i8, i8* %37, i64 %40, !dbg !1468
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1322, metadata !665) #10, !dbg !1463
  %42 = load i8, i8* %41, align 1, !tbaa !705
  br label %43, !dbg !1469, !llvm.loop !1331

; <label>:43:                                     ; preds = %49, %36
  %44 = phi i8 [ %42, %36 ], [ %51, %49 ], !dbg !1470
  %45 = phi i8* [ %41, %36 ], [ %50, %49 ]
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !1322, metadata !665) #10, !dbg !1463
  %46 = sext i8 %44 to i32, !dbg !1470
  %47 = add nsw i32 %46, -48, !dbg !1470
  %48 = icmp ult i32 %47, 10, !dbg !1470
  br i1 %48, label %49, label %83, !dbg !1471

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !1472
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1322, metadata !665) #10, !dbg !1463
  %51 = load i8, i8* %50, align 1, !dbg !1473, !tbaa !705
  %52 = icmp eq i8 %51, 0, !dbg !1474
  br i1 %52, label %53, label %43, !dbg !1474, !llvm.loop !1331

; <label>:53:                                     ; preds = %49
  %54 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %7, i8* %37, i32 10) #10, !dbg !1475
  tail call void @free(i8* %37) #10, !dbg !1477
  store i32 0, i32* %3, align 8, !dbg !1478, !tbaa !840
  br label %56, !dbg !1479

; <label>:55:                                     ; preds = %34
  tail call void @abort() #14, !dbg !1480
  unreachable, !dbg !1480

; <label>:56:                                     ; preds = %34, %53
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %31, i64 0, metadata !1448, metadata !665) #10, !dbg !1481
  %57 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 0, !dbg !1484
  %58 = load i32, i32* %57, align 8, !dbg !1484, !tbaa !840
  switch i32 %58, label %81 [
    i32 0, label %86
    i32 1, label %59
  ], !dbg !1485

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 1, !dbg !1486
  %61 = bitcast %union.anon* %60 to i8**, !dbg !1487
  %62 = load i8*, i8** %61, align 8, !dbg !1487, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1451, metadata !665) #10, !dbg !1488
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1322, metadata !665) #10, !dbg !1489
  %63 = load i8, i8* %62, align 1, !dbg !1491, !tbaa !705
  %64 = icmp eq i8 %63, 45, !dbg !1492
  %65 = zext i1 %64 to i64, !dbg !1493
  %66 = getelementptr inbounds i8, i8* %62, i64 %65, !dbg !1493
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1322, metadata !665) #10, !dbg !1489
  %67 = load i8, i8* %66, align 1, !tbaa !705
  br label %68, !dbg !1494, !llvm.loop !1331

; <label>:68:                                     ; preds = %74, %59
  %69 = phi i8 [ %67, %59 ], [ %76, %74 ], !dbg !1495
  %70 = phi i8* [ %66, %59 ], [ %75, %74 ]
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1322, metadata !665) #10, !dbg !1489
  %71 = sext i8 %69 to i32, !dbg !1495
  %72 = add nsw i32 %71, -48, !dbg !1495
  %73 = icmp ult i32 %72, 10, !dbg !1495
  br i1 %73, label %74, label %82, !dbg !1496

; <label>:74:                                     ; preds = %68
  %75 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !1497
  tail call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !1322, metadata !665) #10, !dbg !1489
  %76 = load i8, i8* %75, align 1, !dbg !1498, !tbaa !705
  %77 = icmp eq i8 %76, 0, !dbg !1499
  br i1 %77, label %78, label %68, !dbg !1499, !llvm.loop !1331

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0, i64 0, !dbg !1500
  %80 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %79, i8* %62, i32 10) #10, !dbg !1501
  tail call void @free(i8* %62) #10, !dbg !1502
  store i32 0, i32* %57, align 8, !dbg !1503, !tbaa !840
  br label %86, !dbg !1504

; <label>:81:                                     ; preds = %56
  tail call void @abort() #14, !dbg !1505
  unreachable, !dbg !1505

; <label>:82:                                     ; preds = %68
  br label %84, !dbg !1506

; <label>:83:                                     ; preds = %43
  br label %84, !dbg !1506

; <label>:84:                                     ; preds = %83, %82
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1506
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %85) #10, !dbg !1507
  unreachable, !dbg !1506

; <label>:86:                                     ; preds = %56, %78
  %87 = icmp eq i32 %30, 0, !dbg !1508
  %88 = select i1 %87, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_add, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_sub, !dbg !1509
  %89 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 1, i32 0, i64 0, !dbg !1510
  tail call void %88(%struct.__mpz_struct* %4, %struct.__mpz_struct* %4, %struct.__mpz_struct* %89) #10, !dbg !1511
  br label %90, !dbg !1512

; <label>:90:                                     ; preds = %32, %86
  %91 = phi i32* [ %33, %32 ], [ %57, %86 ], !dbg !1446
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %31, i64 0, metadata !984, metadata !665) #10, !dbg !1513
  %92 = load i32, i32* %91, align 8, !dbg !1446, !tbaa !840
  %93 = icmp eq i32 %92, 1, !dbg !1514
  %94 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %31, i64 0, i32 1
  br i1 %93, label %95, label %98, !dbg !1515

; <label>:95:                                     ; preds = %90
  %96 = bitcast %union.anon* %94 to i8**, !dbg !1516
  %97 = load i8*, i8** %96, align 8, !dbg !1516, !tbaa !673
  tail call void @free(i8* %97) #10, !dbg !1517
  br label %100, !dbg !1517

; <label>:98:                                     ; preds = %90
  %99 = getelementptr inbounds %union.anon, %union.anon* %94, i64 0, i32 0, i64 0, !dbg !1518
  tail call void @__gmpz_clear(%struct.__mpz_struct* %99) #10, !dbg !1519
  br label %100

; <label>:100:                                    ; preds = %95, %98
  %101 = bitcast %struct.valinfo* %31 to i8*, !dbg !1520
  tail call void @free(i8* %101) #10, !dbg !1521
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1420
  %102 = load i8**, i8*** @args, align 8, !dbg !1424, !tbaa !673
  %103 = load i8*, i8** %102, align 8, !dbg !1425, !tbaa !673
  %104 = icmp eq i8* %103, null, !dbg !1426
  br i1 %104, label %27, label %12, !dbg !1427, !llvm.loop !1522
}

declare i8* @__gmpz_get_str(i8*, i32, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval4(i1 zeroext) unnamed_addr #6 !dbg !88 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !90, metadata !906), !dbg !1525
  %2 = tail call fastcc %struct.valinfo* @eval5(i1 zeroext %0), !dbg !1526
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !91, metadata !665), !dbg !1527
  %3 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 0
  %4 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1, i32 0, i64 0
  %5 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %2, i64 0, i32 1
  %6 = bitcast %union.anon* %5 to i8**
  %7 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0, i64 0
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1528
  %8 = load i8**, i8*** @args, align 8, !dbg !1532, !tbaa !673
  %9 = load i8*, i8** %8, align 8, !dbg !1533, !tbaa !673
  %10 = icmp eq i8* %9, null, !dbg !1534
  br i1 %10, label %36, label %11, !dbg !1535

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !1536

; <label>:12:                                     ; preds = %11, %118
  %13 = phi i8* [ %121, %118 ], [ %9, %11 ]
  %14 = phi i8** [ %120, %118 ], [ %8, %11 ]
  %15 = tail call i32 @strcmp(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #10, !dbg !1536
  %16 = icmp eq i32 %15, 0, !dbg !1537
  %17 = zext i1 %16 to i64, !dbg !1538
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17, !dbg !1538
  store i8** %18, i8*** @args, align 8, !dbg !1538, !tbaa !673
  br i1 %16, label %37, label %19, !dbg !1539

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %18, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1540
  %21 = icmp eq i8* %20, null, !dbg !1543
  br i1 %21, label %35, label %22, !dbg !1544

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 @strcmp(i8* nonnull %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0)) #10, !dbg !1545
  %24 = icmp eq i32 %23, 0, !dbg !1546
  %25 = zext i1 %24 to i64, !dbg !1547
  %26 = getelementptr inbounds i8*, i8** %18, i64 %25, !dbg !1547
  store i8** %26, i8*** @args, align 8, !dbg !1547, !tbaa !673
  br i1 %24, label %37, label %27, !dbg !1548

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %26, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1549
  %29 = icmp eq i8* %28, null, !dbg !1552
  br i1 %29, label %35, label %30, !dbg !1553

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @strcmp(i8* nonnull %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)) #10, !dbg !1554
  %32 = icmp eq i32 %31, 0, !dbg !1555
  %33 = zext i1 %32 to i64, !dbg !1556
  %34 = getelementptr inbounds i8*, i8** %26, i64 %33, !dbg !1556
  store i8** %34, i8*** @args, align 8, !dbg !1556, !tbaa !673
  br i1 %32, label %37, label %35, !dbg !1557

; <label>:35:                                     ; preds = %118, %19, %27, %30
  br label %36, !dbg !1558

; <label>:36:                                     ; preds = %35, %1
  ret %struct.valinfo* %2, !dbg !1558

; <label>:37:                                     ; preds = %30, %22, %12
  %38 = phi i32 [ 0, %12 ], [ 1, %22 ], [ 2, %30 ]
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !93, metadata !665), !dbg !1559
  %39 = tail call fastcc %struct.valinfo* @eval5(i1 zeroext %0), !dbg !1560
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %39, i64 0, metadata !92, metadata !665), !dbg !1561
  br i1 %0, label %42, label %40, !dbg !1562

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 0, !dbg !1563
  br label %108, !dbg !1562

; <label>:42:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1448, metadata !665) #10, !dbg !1565
  %43 = load i32, i32* %3, align 8, !dbg !1570, !tbaa !840
  switch i32 %43, label %63 [
    i32 0, label %64
    i32 1, label %44
  ], !dbg !1571

; <label>:44:                                     ; preds = %42
  %45 = load i8*, i8** %6, align 8, !dbg !1572, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !1451, metadata !665) #10, !dbg !1573
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !1322, metadata !665) #10, !dbg !1574
  %46 = load i8, i8* %45, align 1, !dbg !1576, !tbaa !705
  %47 = icmp eq i8 %46, 45, !dbg !1577
  %48 = zext i1 %47 to i64, !dbg !1578
  %49 = getelementptr inbounds i8, i8* %45, i64 %48, !dbg !1578
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1322, metadata !665) #10, !dbg !1574
  %50 = load i8, i8* %49, align 1, !tbaa !705
  br label %51, !dbg !1579, !llvm.loop !1331

; <label>:51:                                     ; preds = %57, %44
  %52 = phi i8 [ %50, %44 ], [ %59, %57 ], !dbg !1580
  %53 = phi i8* [ %49, %44 ], [ %58, %57 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1322, metadata !665) #10, !dbg !1574
  %54 = sext i8 %52 to i32, !dbg !1580
  %55 = add nsw i32 %54, -48, !dbg !1580
  %56 = icmp ult i32 %55, 10, !dbg !1580
  br i1 %56, label %57, label %91, !dbg !1581

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1582
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1322, metadata !665) #10, !dbg !1574
  %59 = load i8, i8* %58, align 1, !dbg !1583, !tbaa !705
  %60 = icmp eq i8 %59, 0, !dbg !1584
  br i1 %60, label %61, label %51, !dbg !1584, !llvm.loop !1331

; <label>:61:                                     ; preds = %57
  %62 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %7, i8* %45, i32 10) #10, !dbg !1585
  tail call void @free(i8* %45) #10, !dbg !1586
  store i32 0, i32* %3, align 8, !dbg !1587, !tbaa !840
  br label %64, !dbg !1588

; <label>:63:                                     ; preds = %42
  tail call void @abort() #14, !dbg !1589
  unreachable, !dbg !1589

; <label>:64:                                     ; preds = %42, %61
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %39, i64 0, metadata !1448, metadata !665) #10, !dbg !1590
  %65 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 0, !dbg !1593
  %66 = load i32, i32* %65, align 8, !dbg !1593, !tbaa !840
  switch i32 %66, label %89 [
    i32 0, label %94
    i32 1, label %67
  ], !dbg !1594

; <label>:67:                                     ; preds = %64
  %68 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 1, !dbg !1595
  %69 = bitcast %union.anon* %68 to i8**, !dbg !1596
  %70 = load i8*, i8** %69, align 8, !dbg !1596, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1451, metadata !665) #10, !dbg !1597
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1322, metadata !665) #10, !dbg !1598
  %71 = load i8, i8* %70, align 1, !dbg !1600, !tbaa !705
  %72 = icmp eq i8 %71, 45, !dbg !1601
  %73 = zext i1 %72 to i64, !dbg !1602
  %74 = getelementptr inbounds i8, i8* %70, i64 %73, !dbg !1602
  tail call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !1322, metadata !665) #10, !dbg !1598
  %75 = load i8, i8* %74, align 1, !tbaa !705
  br label %76, !dbg !1603, !llvm.loop !1331

; <label>:76:                                     ; preds = %82, %67
  %77 = phi i8 [ %75, %67 ], [ %84, %82 ], !dbg !1604
  %78 = phi i8* [ %74, %67 ], [ %83, %82 ]
  tail call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !1322, metadata !665) #10, !dbg !1598
  %79 = sext i8 %77 to i32, !dbg !1604
  %80 = add nsw i32 %79, -48, !dbg !1604
  %81 = icmp ult i32 %80, 10, !dbg !1604
  br i1 %81, label %82, label %90, !dbg !1605

; <label>:82:                                     ; preds = %76
  %83 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1606
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !1322, metadata !665) #10, !dbg !1598
  %84 = load i8, i8* %83, align 1, !dbg !1607, !tbaa !705
  %85 = icmp eq i8 %84, 0, !dbg !1608
  br i1 %85, label %86, label %76, !dbg !1608, !llvm.loop !1331

; <label>:86:                                     ; preds = %82
  %87 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0, i64 0, !dbg !1609
  %88 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %87, i8* %70, i32 10) #10, !dbg !1610
  tail call void @free(i8* %70) #10, !dbg !1611
  store i32 0, i32* %65, align 8, !dbg !1612, !tbaa !840
  br label %94, !dbg !1613

; <label>:89:                                     ; preds = %64
  tail call void @abort() #14, !dbg !1614
  unreachable, !dbg !1614

; <label>:90:                                     ; preds = %76
  br label %92, !dbg !1615

; <label>:91:                                     ; preds = %51
  br label %92, !dbg !1615

; <label>:92:                                     ; preds = %91, %90
  %93 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1615
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %93) #10, !dbg !1616
  unreachable, !dbg !1615

; <label>:94:                                     ; preds = %64, %86
  %95 = icmp eq i32 %38, 0, !dbg !1617
  br i1 %95, label %105, label %96, !dbg !1617

; <label>:96:                                     ; preds = %94
  %97 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !1619
  %98 = load i32, i32* %97, align 4, !dbg !1619, !tbaa !870
  %99 = icmp eq i32 %98, 0, !dbg !1621
  br i1 %99, label %100, label %102, !dbg !1623

; <label>:100:                                    ; preds = %96
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1625
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %101) #10, !dbg !1626
  unreachable, !dbg !1625

; <label>:102:                                    ; preds = %96
  %103 = icmp eq i32 %38, 1, !dbg !1627
  %104 = select i1 %103, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_q, void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* @__gmpz_tdiv_r, !dbg !1628
  br label %105, !dbg !1629

; <label>:105:                                    ; preds = %94, %102
  %106 = phi void (%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*)* [ %104, %102 ], [ @__gmpz_mul, %94 ], !dbg !1631
  %107 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 1, i32 0, i64 0, !dbg !1633
  tail call void %106(%struct.__mpz_struct* %4, %struct.__mpz_struct* %4, %struct.__mpz_struct* %107) #10, !dbg !1634
  br label %108, !dbg !1635

; <label>:108:                                    ; preds = %40, %105
  %109 = phi i32* [ %41, %40 ], [ %65, %105 ], !dbg !1563
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %39, i64 0, metadata !984, metadata !665) #10, !dbg !1636
  %110 = load i32, i32* %109, align 8, !dbg !1563, !tbaa !840
  %111 = icmp eq i32 %110, 1, !dbg !1637
  %112 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %39, i64 0, i32 1
  br i1 %111, label %113, label %116, !dbg !1638

; <label>:113:                                    ; preds = %108
  %114 = bitcast %union.anon* %112 to i8**, !dbg !1639
  %115 = load i8*, i8** %114, align 8, !dbg !1639, !tbaa !673
  tail call void @free(i8* %115) #10, !dbg !1640
  br label %118, !dbg !1640

; <label>:116:                                    ; preds = %108
  %117 = getelementptr inbounds %union.anon, %union.anon* %112, i64 0, i32 0, i64 0, !dbg !1641
  tail call void @__gmpz_clear(%struct.__mpz_struct* %117) #10, !dbg !1642
  br label %118

; <label>:118:                                    ; preds = %113, %116
  %119 = bitcast %struct.valinfo* %39 to i8*, !dbg !1643
  tail call void @free(i8* %119) #10, !dbg !1644
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1528
  %120 = load i8**, i8*** @args, align 8, !dbg !1532, !tbaa !673
  %121 = load i8*, i8** %120, align 8, !dbg !1533, !tbaa !673
  %122 = icmp eq i8* %121, null, !dbg !1534
  br i1 %122, label %35, label %12, !dbg !1535, !llvm.loop !1645
}

declare i32 @__gmpz_init_set_str(%struct.__mpz_struct*, i8*, i32) local_unnamed_addr #3

declare void @__gmpz_add(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_sub(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval5(i1 zeroext) unnamed_addr #6 !dbg !1648 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1650, metadata !906), !dbg !1654
  %2 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1655
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1651, metadata !665), !dbg !1656
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %2, i64 0, metadata !1651, metadata !665), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1657
  %3 = load i8**, i8*** @args, align 8, !dbg !1661, !tbaa !673
  %4 = load i8*, i8** %3, align 8, !dbg !1662, !tbaa !673
  %5 = icmp eq i8* %4, null, !dbg !1663
  br i1 %5, label %48, label %6, !dbg !1664

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !1665

; <label>:7:                                      ; preds = %6, %41
  %8 = phi i8* [ %44, %41 ], [ %4, %6 ]
  %9 = phi i8** [ %43, %41 ], [ %3, %6 ]
  %10 = phi %struct.valinfo* [ %31, %41 ], [ %2, %6 ]
  %11 = tail call i32 @strcmp(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #10, !dbg !1665
  %12 = icmp eq i32 %11, 0, !dbg !1666
  %13 = zext i1 %12 to i64, !dbg !1667
  %14 = getelementptr inbounds i8*, i8** %9, i64 %13, !dbg !1667
  store i8** %14, i8*** @args, align 8, !dbg !1667, !tbaa !673
  br i1 %12, label %15, label %46, !dbg !1668

; <label>:15:                                     ; preds = %7
  %16 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1669
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %16, i64 0, metadata !1652, metadata !665), !dbg !1671
  br i1 %0, label %17, label %30, !dbg !1672

; <label>:17:                                     ; preds = %15
  %18 = tail call fastcc %struct.valinfo* @docolon(%struct.valinfo* %10, %struct.valinfo* %16), !dbg !1673
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %18, i64 0, metadata !1653, metadata !665), !dbg !1676
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %10, i64 0, metadata !984, metadata !665) #10, !dbg !1677
  %19 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 0, !dbg !1679
  %20 = load i32, i32* %19, align 8, !dbg !1679, !tbaa !840
  %21 = icmp eq i32 %20, 1, !dbg !1680
  %22 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %10, i64 0, i32 1
  br i1 %21, label %23, label %26, !dbg !1681

; <label>:23:                                     ; preds = %17
  %24 = bitcast %union.anon* %22 to i8**, !dbg !1682
  %25 = load i8*, i8** %24, align 8, !dbg !1682, !tbaa !673
  tail call void @free(i8* %25) #10, !dbg !1683
  br label %28, !dbg !1683

; <label>:26:                                     ; preds = %17
  %27 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0, i64 0, !dbg !1684
  tail call void @__gmpz_clear(%struct.__mpz_struct* %27) #10, !dbg !1685
  br label %28

; <label>:28:                                     ; preds = %23, %26
  %29 = bitcast %struct.valinfo* %10 to i8*, !dbg !1686
  tail call void @free(i8* %29) #10, !dbg !1687
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %18, i64 0, metadata !1651, metadata !665), !dbg !1656
  br label %30, !dbg !1688

; <label>:30:                                     ; preds = %28, %15
  %31 = phi %struct.valinfo* [ %18, %28 ], [ %10, %15 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %31, i64 0, metadata !1651, metadata !665), !dbg !1656
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %16, i64 0, metadata !984, metadata !665) #10, !dbg !1689
  %32 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %16, i64 0, i32 0, !dbg !1691
  %33 = load i32, i32* %32, align 8, !dbg !1691, !tbaa !840
  %34 = icmp eq i32 %33, 1, !dbg !1692
  %35 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %16, i64 0, i32 1
  br i1 %34, label %36, label %39, !dbg !1693

; <label>:36:                                     ; preds = %30
  %37 = bitcast %union.anon* %35 to i8**, !dbg !1694
  %38 = load i8*, i8** %37, align 8, !dbg !1694, !tbaa !673
  tail call void @free(i8* %38) #10, !dbg !1695
  br label %41, !dbg !1695

; <label>:39:                                     ; preds = %30
  %40 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0, i64 0, !dbg !1696
  tail call void @__gmpz_clear(%struct.__mpz_struct* %40) #10, !dbg !1697
  br label %41

; <label>:41:                                     ; preds = %36, %39
  %42 = bitcast %struct.valinfo* %16 to i8*, !dbg !1698
  tail call void @free(i8* %42) #10, !dbg !1699
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %31, i64 0, metadata !1651, metadata !665), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1657
  %43 = load i8**, i8*** @args, align 8, !dbg !1661, !tbaa !673
  %44 = load i8*, i8** %43, align 8, !dbg !1662, !tbaa !673
  %45 = icmp eq i8* %44, null, !dbg !1663
  br i1 %45, label %46, label %7, !dbg !1664, !llvm.loop !1700

; <label>:46:                                     ; preds = %41, %7
  %47 = phi %struct.valinfo* [ %31, %41 ], [ %10, %7 ]
  br label %48, !dbg !1703

; <label>:48:                                     ; preds = %46, %1
  %49 = phi %struct.valinfo* [ %2, %1 ], [ %47, %46 ]
  ret %struct.valinfo* %49, !dbg !1703
}

declare void @__gmpz_tdiv_q(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_tdiv_r(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

declare void @__gmpz_mul(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @eval6(i1 zeroext) unnamed_addr #6 !dbg !1704 {
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1706, metadata !906), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1730
  %2 = load i8**, i8*** @args, align 8, !dbg !1732, !tbaa !673
  %3 = load i8*, i8** %2, align 8, !dbg !1733, !tbaa !673
  %4 = icmp eq i8* %3, null, !dbg !1734
  br i1 %4, label %339, label %5, !dbg !1735

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @strcmp(i8* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #10, !dbg !1736
  %7 = icmp eq i32 %6, 0, !dbg !1737
  %8 = zext i1 %7 to i64, !dbg !1738
  %9 = getelementptr inbounds i8*, i8** %2, i64 %8, !dbg !1738
  store i8** %9, i8*** @args, align 8, !dbg !1738, !tbaa !673
  %10 = load i8*, i8** %9, align 8, !tbaa !673
  %11 = icmp eq i8* %10, null
  br i1 %7, label %12, label %22, !dbg !1739

; <label>:12:                                     ; preds = %5
  br i1 %11, label %13, label %14, !dbg !1740

; <label>:13:                                     ; preds = %12
  tail call fastcc void @syntax_error(), !dbg !1742
  unreachable

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds i8*, i8** %9, i64 1, !dbg !1744
  store i8** %15, i8*** @args, align 8, !dbg !1744, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1745, metadata !665) #10, !dbg !1751
  %16 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !1753
  %17 = bitcast i8* %16 to %struct.valinfo*, !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %17, i64 0, metadata !1750, metadata !665) #10, !dbg !1754
  %18 = bitcast i8* %16 to i32*, !dbg !1755
  store i32 1, i32* %18, align 8, !dbg !1756, !tbaa !840
  %19 = tail call noalias i8* @xstrdup(i8* nonnull %10) #10, !dbg !1757
  %20 = getelementptr inbounds i8, i8* %16, i64 8, !dbg !1758
  %21 = bitcast i8* %20 to i8**, !dbg !1759
  store i8* %19, i8** %21, align 8, !dbg !1760, !tbaa !673
  br label %375, !dbg !1761

; <label>:22:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1762
  br i1 %11, label %339, label %23, !dbg !1764

; <label>:23:                                     ; preds = %22
  %24 = tail call i32 @strcmp(i8* nonnull %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)) #10, !dbg !1765
  %25 = icmp eq i32 %24, 0, !dbg !1766
  %26 = zext i1 %25 to i64, !dbg !1767
  %27 = getelementptr inbounds i8*, i8** %9, i64 %26, !dbg !1767
  store i8** %27, i8*** @args, align 8, !dbg !1767, !tbaa !673
  br i1 %25, label %28, label %59, !dbg !1768

; <label>:28:                                     ; preds = %23
  %29 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1769
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %29, i64 0, metadata !1708, metadata !665), !dbg !1771
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %29, i64 0, metadata !1285, metadata !665) #10, !dbg !1772
  %30 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 0, !dbg !1774
  %31 = load i32, i32* %30, align 8, !dbg !1774, !tbaa !840
  switch i32 %31, label %41 [
    i32 0, label %36
    i32 1, label %32
  ], !dbg !1775

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1
  %34 = bitcast %union.anon* %33 to i8**
  %35 = load i8*, i8** %34, align 8, !tbaa !673
  br label %42, !dbg !1775

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1, !dbg !1776
  %38 = getelementptr inbounds %union.anon, %union.anon* %37, i64 0, i32 0, i64 0, !dbg !1777
  %39 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %38) #10, !dbg !1778
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !1288, metadata !665) #10, !dbg !1779
  tail call void @__gmpz_clear(%struct.__mpz_struct* %38) #10, !dbg !1780
  %40 = bitcast %union.anon* %37 to i8**, !dbg !1781
  store i8* %39, i8** %40, align 8, !dbg !1782, !tbaa !673
  store i32 1, i32* %30, align 8, !dbg !1783, !tbaa !840
  br label %42, !dbg !1784

; <label>:41:                                     ; preds = %28
  tail call void @abort() #14, !dbg !1785
  unreachable, !dbg !1785

; <label>:42:                                     ; preds = %32, %36
  %43 = phi i8** [ %34, %32 ], [ %40, %36 ], !dbg !1786
  %44 = phi i8* [ %35, %32 ], [ %39, %36 ], !dbg !1786
  %45 = tail call i64 @strlen(i8* %44) #13, !dbg !1787
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1034, metadata !665) #10, !dbg !1788
  %46 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !1791
  %47 = bitcast i8* %46 to %struct.valinfo*, !dbg !1791
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %47, i64 0, metadata !1039, metadata !665) #10, !dbg !1792
  %48 = bitcast i8* %46 to i32*, !dbg !1793
  store i32 0, i32* %48, align 8, !dbg !1794, !tbaa !840
  %49 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1795
  %50 = bitcast i8* %49 to %struct.__mpz_struct*, !dbg !1796
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %50, i64 %45) #10, !dbg !1797
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %47, i64 0, metadata !1709, metadata !665), !dbg !1798
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %29, i64 0, metadata !984, metadata !665) #10, !dbg !1799
  %51 = load i32, i32* %30, align 8, !dbg !1801, !tbaa !840
  %52 = icmp eq i32 %51, 1, !dbg !1802
  br i1 %52, label %53, label %55, !dbg !1803

; <label>:53:                                     ; preds = %42
  %54 = load i8*, i8** %43, align 8, !dbg !1804, !tbaa !673
  tail call void @free(i8* %54) #10, !dbg !1805
  br label %57, !dbg !1805

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %29, i64 0, i32 1, i32 0, i64 0, !dbg !1806
  tail call void @__gmpz_clear(%struct.__mpz_struct* %56) #10, !dbg !1807
  br label %57

; <label>:57:                                     ; preds = %53, %55
  %58 = bitcast %struct.valinfo* %29 to i8*, !dbg !1808
  tail call void @free(i8* %58) #10, !dbg !1809
  br label %375, !dbg !1810

; <label>:59:                                     ; preds = %23
  %60 = load i8*, i8** %27, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1811
  %61 = icmp eq i8* %60, null, !dbg !1813
  br i1 %61, label %339, label %62, !dbg !1814

; <label>:62:                                     ; preds = %59
  %63 = tail call i32 @strcmp(i8* nonnull %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #10, !dbg !1815
  %64 = icmp eq i32 %63, 0, !dbg !1816
  %65 = zext i1 %64 to i64, !dbg !1817
  %66 = getelementptr inbounds i8*, i8** %27, i64 %65, !dbg !1817
  store i8** %66, i8*** @args, align 8, !dbg !1817, !tbaa !673
  br i1 %64, label %67, label %96, !dbg !1818

; <label>:67:                                     ; preds = %62
  %68 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1819
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %68, i64 0, metadata !1707, metadata !665), !dbg !1821
  %69 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1822
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %69, i64 0, metadata !1708, metadata !665), !dbg !1771
  br i1 %0, label %70, label %83, !dbg !1823

; <label>:70:                                     ; preds = %67
  %71 = tail call fastcc %struct.valinfo* @docolon(%struct.valinfo* %68, %struct.valinfo* %69), !dbg !1824
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %71, i64 0, metadata !1709, metadata !665), !dbg !1798
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %68, i64 0, metadata !984, metadata !665) #10, !dbg !1827
  %72 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %68, i64 0, i32 0, !dbg !1829
  %73 = load i32, i32* %72, align 8, !dbg !1829, !tbaa !840
  %74 = icmp eq i32 %73, 1, !dbg !1830
  %75 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %68, i64 0, i32 1
  br i1 %74, label %76, label %79, !dbg !1831

; <label>:76:                                     ; preds = %70
  %77 = bitcast %union.anon* %75 to i8**, !dbg !1832
  %78 = load i8*, i8** %77, align 8, !dbg !1832, !tbaa !673
  tail call void @free(i8* %78) #10, !dbg !1833
  br label %81, !dbg !1833

; <label>:79:                                     ; preds = %70
  %80 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0, i64 0, !dbg !1834
  tail call void @__gmpz_clear(%struct.__mpz_struct* %80) #10, !dbg !1835
  br label %81

; <label>:81:                                     ; preds = %76, %79
  %82 = bitcast %struct.valinfo* %68 to i8*, !dbg !1836
  tail call void @free(i8* %82) #10, !dbg !1837
  br label %83, !dbg !1838

; <label>:83:                                     ; preds = %67, %81
  %84 = phi %struct.valinfo* [ %71, %81 ], [ %68, %67 ]
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %84, i64 0, metadata !1709, metadata !665), !dbg !1798
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %69, i64 0, metadata !984, metadata !665) #10, !dbg !1839
  %85 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %69, i64 0, i32 0, !dbg !1841
  %86 = load i32, i32* %85, align 8, !dbg !1841, !tbaa !840
  %87 = icmp eq i32 %86, 1, !dbg !1842
  %88 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %69, i64 0, i32 1
  br i1 %87, label %89, label %92, !dbg !1843

; <label>:89:                                     ; preds = %83
  %90 = bitcast %union.anon* %88 to i8**, !dbg !1844
  %91 = load i8*, i8** %90, align 8, !dbg !1844, !tbaa !673
  tail call void @free(i8* %91) #10, !dbg !1845
  br label %94, !dbg !1845

; <label>:92:                                     ; preds = %83
  %93 = getelementptr inbounds %union.anon, %union.anon* %88, i64 0, i32 0, i64 0, !dbg !1846
  tail call void @__gmpz_clear(%struct.__mpz_struct* %93) #10, !dbg !1847
  br label %94

; <label>:94:                                     ; preds = %89, %92
  %95 = bitcast %struct.valinfo* %69 to i8*, !dbg !1848
  tail call void @free(i8* %95) #10, !dbg !1849
  br label %375, !dbg !1850

; <label>:96:                                     ; preds = %62
  %97 = load i8*, i8** %66, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1851
  %98 = icmp eq i8* %97, null, !dbg !1853
  br i1 %98, label %339, label %99, !dbg !1854

; <label>:99:                                     ; preds = %96
  %100 = tail call i32 @strcmp(i8* nonnull %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !1855
  %101 = icmp eq i32 %100, 0, !dbg !1856
  %102 = zext i1 %101 to i64, !dbg !1857
  %103 = getelementptr inbounds i8*, i8** %66, i64 %102, !dbg !1857
  store i8** %103, i8*** @args, align 8, !dbg !1857, !tbaa !673
  br i1 %101, label %104, label %161, !dbg !1858

; <label>:104:                                    ; preds = %99
  %105 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1859
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %105, i64 0, metadata !1707, metadata !665), !dbg !1821
  %106 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1860
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %106, i64 0, metadata !1708, metadata !665), !dbg !1771
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %105, i64 0, metadata !1285, metadata !665) #10, !dbg !1861
  %107 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %105, i64 0, i32 0, !dbg !1863
  %108 = load i32, i32* %107, align 8, !dbg !1863, !tbaa !840
  switch i32 %108, label %114 [
    i32 0, label %109
    i32 1, label %115
  ], !dbg !1864

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %105, i64 0, i32 1, !dbg !1865
  %111 = getelementptr inbounds %union.anon, %union.anon* %110, i64 0, i32 0, i64 0, !dbg !1866
  %112 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %111) #10, !dbg !1867
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !1288, metadata !665) #10, !dbg !1868
  tail call void @__gmpz_clear(%struct.__mpz_struct* %111) #10, !dbg !1869
  %113 = bitcast %union.anon* %110 to i8**, !dbg !1870
  store i8* %112, i8** %113, align 8, !dbg !1871, !tbaa !673
  store i32 1, i32* %107, align 8, !dbg !1872, !tbaa !840
  br label %115, !dbg !1873

; <label>:114:                                    ; preds = %104
  tail call void @abort() #14, !dbg !1874
  unreachable, !dbg !1874

; <label>:115:                                    ; preds = %104, %109
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %106, i64 0, metadata !1285, metadata !665) #10, !dbg !1875
  %116 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 0, !dbg !1877
  %117 = load i32, i32* %116, align 8, !dbg !1877, !tbaa !840
  switch i32 %117, label %127 [
    i32 0, label %122
    i32 1, label %118
  ], !dbg !1878

; <label>:118:                                    ; preds = %115
  %119 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 1
  %120 = bitcast %union.anon* %119 to i8**
  %121 = load i8*, i8** %120, align 8, !tbaa !673
  br label %128, !dbg !1878

; <label>:122:                                    ; preds = %115
  %123 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 1, !dbg !1879
  %124 = getelementptr inbounds %union.anon, %union.anon* %123, i64 0, i32 0, i64 0, !dbg !1880
  %125 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %124) #10, !dbg !1881
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !1288, metadata !665) #10, !dbg !1882
  tail call void @__gmpz_clear(%struct.__mpz_struct* %124) #10, !dbg !1883
  %126 = bitcast %union.anon* %123 to i8**, !dbg !1884
  store i8* %125, i8** %126, align 8, !dbg !1885, !tbaa !673
  store i32 1, i32* %116, align 8, !dbg !1886, !tbaa !840
  br label %128, !dbg !1887

; <label>:127:                                    ; preds = %115
  tail call void @abort() #14, !dbg !1888
  unreachable, !dbg !1888

; <label>:128:                                    ; preds = %118, %122
  %129 = phi i8** [ %120, %118 ], [ %126, %122 ], !dbg !1889
  %130 = phi i8* [ %121, %118 ], [ %125, %122 ], !dbg !1889
  %131 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %105, i64 0, i32 1, !dbg !1889
  %132 = bitcast %union.anon* %131 to i8**, !dbg !1889
  %133 = load i8*, i8** %132, align 8, !dbg !1889, !tbaa !673
  %134 = tail call i64 @strcspn(i8* %133, i8* %130) #10, !dbg !1889
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !1712, metadata !665), !dbg !1890
  %135 = getelementptr inbounds i8, i8* %133, i64 %134, !dbg !1891
  %136 = load i8, i8* %135, align 1, !dbg !1891, !tbaa !705
  %137 = icmp ne i8 %136, 0, !dbg !1891
  %138 = add i64 %134, 1, !dbg !1892
  %139 = select i1 %137, i64 %138, i64 0, !dbg !1891
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !1034, metadata !665) #10, !dbg !1894
  %140 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !1897
  %141 = bitcast i8* %140 to %struct.valinfo*, !dbg !1897
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %141, i64 0, metadata !1039, metadata !665) #10, !dbg !1898
  %142 = bitcast i8* %140 to i32*, !dbg !1899
  store i32 0, i32* %142, align 8, !dbg !1900, !tbaa !840
  %143 = getelementptr inbounds i8, i8* %140, i64 8, !dbg !1901
  %144 = bitcast i8* %143 to %struct.__mpz_struct*, !dbg !1902
  tail call void @__gmpz_init_set_ui(%struct.__mpz_struct* %144, i64 %139) #10, !dbg !1903
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %141, i64 0, metadata !1709, metadata !665), !dbg !1798
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %105, i64 0, metadata !984, metadata !665) #10, !dbg !1904
  %145 = load i32, i32* %107, align 8, !dbg !1906, !tbaa !840
  %146 = icmp eq i32 %145, 1, !dbg !1907
  br i1 %146, label %147, label %149, !dbg !1908

; <label>:147:                                    ; preds = %128
  %148 = load i8*, i8** %132, align 8, !dbg !1909, !tbaa !673
  tail call void @free(i8* %148) #10, !dbg !1910
  br label %151, !dbg !1910

; <label>:149:                                    ; preds = %128
  %150 = getelementptr inbounds %union.anon, %union.anon* %131, i64 0, i32 0, i64 0, !dbg !1911
  tail call void @__gmpz_clear(%struct.__mpz_struct* %150) #10, !dbg !1912
  br label %151

; <label>:151:                                    ; preds = %147, %149
  %152 = bitcast %struct.valinfo* %105 to i8*, !dbg !1913
  tail call void @free(i8* %152) #10, !dbg !1914
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %106, i64 0, metadata !984, metadata !665) #10, !dbg !1915
  %153 = load i32, i32* %116, align 8, !dbg !1917, !tbaa !840
  %154 = icmp eq i32 %153, 1, !dbg !1918
  br i1 %154, label %155, label %157, !dbg !1919

; <label>:155:                                    ; preds = %151
  %156 = load i8*, i8** %129, align 8, !dbg !1920, !tbaa !673
  tail call void @free(i8* %156) #10, !dbg !1921
  br label %159, !dbg !1921

; <label>:157:                                    ; preds = %151
  %158 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %106, i64 0, i32 1, i32 0, i64 0, !dbg !1922
  tail call void @__gmpz_clear(%struct.__mpz_struct* %158) #10, !dbg !1923
  br label %159

; <label>:159:                                    ; preds = %155, %157
  %160 = bitcast %struct.valinfo* %106 to i8*, !dbg !1924
  tail call void @free(i8* %160) #10, !dbg !1925
  br label %375

; <label>:161:                                    ; preds = %99
  %162 = load i8*, i8** %103, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !1926
  %163 = icmp eq i8* %162, null, !dbg !1928
  br i1 %163, label %339, label %164, !dbg !1929

; <label>:164:                                    ; preds = %161
  %165 = tail call i32 @strcmp(i8* nonnull %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0)) #10, !dbg !1930
  %166 = icmp eq i32 %165, 0, !dbg !1931
  %167 = zext i1 %166 to i64, !dbg !1932
  %168 = getelementptr inbounds i8*, i8** %103, i64 %167, !dbg !1932
  store i8** %168, i8*** @args, align 8, !dbg !1932, !tbaa !673
  br i1 %166, label %169, label %336, !dbg !1933

; <label>:169:                                    ; preds = %164
  %170 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1934
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %170, i64 0, metadata !1707, metadata !665), !dbg !1821
  %171 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1935
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !1710, metadata !665), !dbg !1936
  %172 = tail call fastcc %struct.valinfo* @eval6(i1 zeroext %0), !dbg !1937
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !1711, metadata !665), !dbg !1938
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %170, i64 0, metadata !1285, metadata !665) #10, !dbg !1939
  %173 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 0, !dbg !1941
  %174 = load i32, i32* %173, align 8, !dbg !1941, !tbaa !840
  switch i32 %174, label %184 [
    i32 0, label %179
    i32 1, label %175
  ], !dbg !1942

; <label>:175:                                    ; preds = %169
  %176 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 1
  %177 = bitcast %union.anon* %176 to i8**
  %178 = load i8*, i8** %177, align 8, !tbaa !673
  br label %185, !dbg !1942

; <label>:179:                                    ; preds = %169
  %180 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 1, !dbg !1943
  %181 = getelementptr inbounds %union.anon, %union.anon* %180, i64 0, i32 0, i64 0, !dbg !1944
  %182 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %181) #10, !dbg !1945
  tail call void @llvm.dbg.value(metadata i8* %182, i64 0, metadata !1288, metadata !665) #10, !dbg !1946
  tail call void @__gmpz_clear(%struct.__mpz_struct* %181) #10, !dbg !1947
  %183 = bitcast %union.anon* %180 to i8**, !dbg !1948
  store i8* %182, i8** %183, align 8, !dbg !1949, !tbaa !673
  store i32 1, i32* %173, align 8, !dbg !1950, !tbaa !840
  br label %185, !dbg !1951

; <label>:184:                                    ; preds = %169
  tail call void @abort() #14, !dbg !1952
  unreachable, !dbg !1952

; <label>:185:                                    ; preds = %175, %179
  %186 = phi i8** [ %177, %175 ], [ %183, %179 ], !dbg !1953
  %187 = phi i8* [ %178, %175 ], [ %182, %179 ], !dbg !1953
  %188 = tail call i64 @strlen(i8* %187) #13, !dbg !1954
  tail call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1718, metadata !665), !dbg !1955
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !1448, metadata !665) #10, !dbg !1956
  %189 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 0, !dbg !1958
  %190 = load i32, i32* %189, align 8, !dbg !1958, !tbaa !840
  switch i32 %190, label %213 [
    i32 0, label %214
    i32 1, label %191
  ], !dbg !1959

; <label>:191:                                    ; preds = %185
  %192 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1, !dbg !1960
  %193 = bitcast %union.anon* %192 to i8**, !dbg !1961
  %194 = load i8*, i8** %193, align 8, !dbg !1961, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1451, metadata !665) #10, !dbg !1962
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1322, metadata !665) #10, !dbg !1963
  %195 = load i8, i8* %194, align 1, !dbg !1965, !tbaa !705
  %196 = icmp eq i8 %195, 45, !dbg !1966
  %197 = zext i1 %196 to i64, !dbg !1967
  %198 = getelementptr inbounds i8, i8* %194, i64 %197, !dbg !1967
  tail call void @llvm.dbg.value(metadata i8* %198, i64 0, metadata !1322, metadata !665) #10, !dbg !1963
  %199 = load i8, i8* %198, align 1, !tbaa !705
  br label %200, !dbg !1968, !llvm.loop !1331

; <label>:200:                                    ; preds = %206, %191
  %201 = phi i8 [ %199, %191 ], [ %208, %206 ], !dbg !1969
  %202 = phi i8* [ %198, %191 ], [ %207, %206 ]
  tail call void @llvm.dbg.value(metadata i8* %202, i64 0, metadata !1322, metadata !665) #10, !dbg !1963
  %203 = sext i8 %201 to i32, !dbg !1969
  %204 = add nsw i32 %203, -48, !dbg !1969
  %205 = icmp ult i32 %204, 10, !dbg !1969
  br i1 %205, label %206, label %241, !dbg !1970

; <label>:206:                                    ; preds = %200
  %207 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !1971
  tail call void @llvm.dbg.value(metadata i8* %207, i64 0, metadata !1322, metadata !665) #10, !dbg !1963
  %208 = load i8, i8* %207, align 1, !dbg !1972, !tbaa !705
  %209 = icmp eq i8 %208, 0, !dbg !1973
  br i1 %209, label %210, label %200, !dbg !1973, !llvm.loop !1331

; <label>:210:                                    ; preds = %206
  %211 = getelementptr inbounds %union.anon, %union.anon* %192, i64 0, i32 0, i64 0, !dbg !1974
  %212 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %211, i8* %194, i32 10) #10, !dbg !1975
  tail call void @free(i8* %194) #10, !dbg !1976
  store i32 0, i32* %189, align 8, !dbg !1977, !tbaa !840
  br label %214, !dbg !1978

; <label>:213:                                    ; preds = %185
  tail call void @abort() #14, !dbg !1979
  unreachable, !dbg !1979

; <label>:214:                                    ; preds = %185, %210
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !1448, metadata !665) #10, !dbg !1980
  %215 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 0, !dbg !1983
  %216 = load i32, i32* %215, align 8, !dbg !1983, !tbaa !840
  switch i32 %216, label %239 [
    i32 0, label %248
    i32 1, label %217
  ], !dbg !1984

; <label>:217:                                    ; preds = %214
  %218 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1, !dbg !1985
  %219 = bitcast %union.anon* %218 to i8**, !dbg !1986
  %220 = load i8*, i8** %219, align 8, !dbg !1986, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %220, i64 0, metadata !1451, metadata !665) #10, !dbg !1987
  tail call void @llvm.dbg.value(metadata i8* %220, i64 0, metadata !1322, metadata !665) #10, !dbg !1988
  %221 = load i8, i8* %220, align 1, !dbg !1990, !tbaa !705
  %222 = icmp eq i8 %221, 45, !dbg !1991
  %223 = zext i1 %222 to i64, !dbg !1992
  %224 = getelementptr inbounds i8, i8* %220, i64 %223, !dbg !1992
  tail call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !1322, metadata !665) #10, !dbg !1988
  %225 = load i8, i8* %224, align 1, !tbaa !705
  br label %226, !dbg !1993, !llvm.loop !1331

; <label>:226:                                    ; preds = %232, %217
  %227 = phi i8 [ %225, %217 ], [ %234, %232 ], !dbg !1994
  %228 = phi i8* [ %224, %217 ], [ %233, %232 ]
  tail call void @llvm.dbg.value(metadata i8* %228, i64 0, metadata !1322, metadata !665) #10, !dbg !1988
  %229 = sext i8 %227 to i32, !dbg !1994
  %230 = add nsw i32 %229, -48, !dbg !1994
  %231 = icmp ult i32 %230, 10, !dbg !1994
  br i1 %231, label %232, label %240, !dbg !1995

; <label>:232:                                    ; preds = %226
  %233 = getelementptr inbounds i8, i8* %228, i64 1, !dbg !1996
  tail call void @llvm.dbg.value(metadata i8* %233, i64 0, metadata !1322, metadata !665) #10, !dbg !1988
  %234 = load i8, i8* %233, align 1, !dbg !1997, !tbaa !705
  %235 = icmp eq i8 %234, 0, !dbg !1998
  br i1 %235, label %236, label %226, !dbg !1998, !llvm.loop !1331

; <label>:236:                                    ; preds = %232
  %237 = getelementptr inbounds %union.anon, %union.anon* %218, i64 0, i32 0, i64 0, !dbg !1999
  %238 = tail call i32 @__gmpz_init_set_str(%struct.__mpz_struct* %237, i8* %220, i32 10) #10, !dbg !2000
  tail call void @free(i8* %220) #10, !dbg !2001
  store i32 0, i32* %215, align 8, !dbg !2002, !tbaa !840
  br label %248, !dbg !2003

; <label>:239:                                    ; preds = %214
  tail call void @abort() #14, !dbg !2004
  unreachable, !dbg !2004

; <label>:240:                                    ; preds = %226
  br label %242, !dbg !2005

; <label>:241:                                    ; preds = %200
  br label %242, !dbg !2005

; <label>:242:                                    ; preds = %241, %240
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !1745, metadata !665) #10, !dbg !2005
  %243 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !2007
  %244 = bitcast i8* %243 to i32*, !dbg !2008
  store i32 1, i32* %244, align 8, !dbg !2009, !tbaa !840
  %245 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !2010
  %246 = getelementptr inbounds i8, i8* %243, i64 8, !dbg !2011
  %247 = bitcast i8* %246 to i8**, !dbg !2012
  store i8* %245, i8** %247, align 8, !dbg !2013, !tbaa !673
  br label %304, !dbg !2014

; <label>:248:                                    ; preds = %214, %236
  %249 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !2015
  %250 = load i32, i32* %249, align 4, !dbg !2015, !tbaa !870
  %251 = icmp slt i32 %250, 0, !dbg !2015
  br i1 %251, label %262, label %252, !dbg !2027

; <label>:252:                                    ; preds = %248
  %253 = icmp ult i32 %250, 2, !dbg !2029
  br i1 %253, label %254, label %261, !dbg !2044

; <label>:254:                                    ; preds = %252
  %255 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1, i32 0, i64 0, i32 2, !dbg !2045
  %256 = load i64*, i64** %255, align 8, !dbg !2045, !tbaa !2055
  tail call void @llvm.dbg.value(metadata i64* %256, i64 0, metadata !2051, metadata !665), !dbg !2056
  %257 = load i64, i64* %256, align 8, !dbg !2057, !tbaa !2058
  tail call void @llvm.dbg.value(metadata i64 %257, i64 0, metadata !2053, metadata !665), !dbg !2059
  %258 = icmp ne i32 %250, 0, !dbg !2060
  %259 = select i1 %258, i64 %257, i64 0, !dbg !2061
  tail call void @llvm.dbg.value(metadata i64 %259, i64 0, metadata !2023, metadata !665), !dbg !2062
  %260 = icmp eq i64 %259, -1, !dbg !2063
  br i1 %260, label %261, label %262

; <label>:261:                                    ; preds = %254, %252
  br label %262, !dbg !2065

; <label>:262:                                    ; preds = %248, %254, %261
  %263 = phi i64 [ -2, %261 ], [ %259, %254 ], [ -1, %248 ]
  tail call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !1721, metadata !665), !dbg !2066
  %264 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1, i32 0, i64 0, i32 1, !dbg !2067
  %265 = load i32, i32* %264, align 4, !dbg !2067, !tbaa !870
  %266 = icmp slt i32 %265, 0, !dbg !2067
  br i1 %266, label %277, label %267, !dbg !2069

; <label>:267:                                    ; preds = %262
  %268 = icmp ult i32 %265, 2, !dbg !2070
  br i1 %268, label %269, label %276, !dbg !2072

; <label>:269:                                    ; preds = %267
  %270 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1, i32 0, i64 0, i32 2, !dbg !2073
  %271 = load i64*, i64** %270, align 8, !dbg !2073, !tbaa !2055
  tail call void @llvm.dbg.value(metadata i64* %271, i64 0, metadata !2051, metadata !665), !dbg !2075
  %272 = load i64, i64* %271, align 8, !dbg !2076, !tbaa !2058
  tail call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !2053, metadata !665), !dbg !2077
  %273 = icmp ne i32 %265, 0, !dbg !2078
  %274 = select i1 %273, i64 %272, i64 0, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %274, i64 0, metadata !2023, metadata !665), !dbg !2080
  %275 = icmp eq i64 %274, -1, !dbg !2081
  br i1 %275, label %276, label %277

; <label>:276:                                    ; preds = %269, %267
  br label %277, !dbg !2082

; <label>:277:                                    ; preds = %262, %269, %276
  %278 = phi i64 [ -2, %276 ], [ %274, %269 ], [ -1, %262 ]
  tail call void @llvm.dbg.value(metadata i64 %278, i64 0, metadata !1724, metadata !665), !dbg !2083
  %279 = add i64 %263, -1, !dbg !2084
  %280 = icmp ult i64 %279, %188, !dbg !2084
  br i1 %280, label %281, label %282, !dbg !2084

; <label>:281:                                    ; preds = %277
  switch i64 %278, label %288 [
    i64 -1, label %282
    i64 0, label %282
  ], !dbg !2084

; <label>:282:                                    ; preds = %277, %281, %281
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !1745, metadata !665) #10, !dbg !2085
  %283 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !2087
  %284 = bitcast i8* %283 to i32*, !dbg !2088
  store i32 1, i32* %284, align 8, !dbg !2089, !tbaa !840
  %285 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !2090
  %286 = getelementptr inbounds i8, i8* %283, i64 8, !dbg !2091
  %287 = bitcast i8* %286 to i8**, !dbg !2092
  store i8* %285, i8** %287, align 8, !dbg !2093, !tbaa !673
  br label %304, !dbg !2094

; <label>:288:                                    ; preds = %281
  %289 = sub i64 %188, %263, !dbg !2095
  %290 = add i64 %289, 1, !dbg !2095
  %291 = icmp ult i64 %278, %290, !dbg !2095
  %292 = select i1 %291, i64 %278, i64 %290, !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1725, metadata !665), !dbg !2098
  %293 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !2099
  %294 = bitcast i8* %293 to i32*, !dbg !2100
  store i32 1, i32* %294, align 8, !dbg !2101, !tbaa !840
  %295 = add i64 %292, 1, !dbg !2102
  %296 = tail call noalias i8* @xmalloc(i64 %295) #10, !dbg !2103
  %297 = getelementptr inbounds i8, i8* %293, i64 8, !dbg !2104
  %298 = bitcast i8* %297 to i8**, !dbg !2105
  store i8* %296, i8** %298, align 8, !dbg !2106, !tbaa !673
  %299 = load i8*, i8** %186, align 8, !dbg !2107, !tbaa !673
  %300 = getelementptr inbounds i8, i8* %299, i64 %263, !dbg !2108
  %301 = getelementptr inbounds i8, i8* %300, i64 -1, !dbg !2109
  tail call void @llvm.dbg.value(metadata i8* %296, i64 0, metadata !2110, metadata !665) #10, !dbg !2120
  tail call void @llvm.dbg.value(metadata i8* %301, i64 0, metadata !2118, metadata !665) #10, !dbg !2120
  tail call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2119, metadata !665) #10, !dbg !2120
  %302 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %296, i1 false) #10, !dbg !2122
  %303 = tail call i8* @__mempcpy_chk(i8* nonnull %296, i8* nonnull %301, i64 %292, i64 %302) #10, !dbg !2123
  tail call void @llvm.dbg.value(metadata i8* %303, i64 0, metadata !1728, metadata !665), !dbg !2124
  store i8 0, i8* %303, align 1, !dbg !2125, !tbaa !705
  br label %304

; <label>:304:                                    ; preds = %282, %288, %242
  %305 = phi i8* [ %243, %242 ], [ %283, %282 ], [ %293, %288 ]
  %306 = bitcast i8* %305 to %struct.valinfo*
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %306, i64 0, metadata !1709, metadata !665), !dbg !1798
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %170, i64 0, metadata !984, metadata !665) #10, !dbg !2126
  %307 = load i32, i32* %173, align 8, !dbg !2128, !tbaa !840
  %308 = icmp eq i32 %307, 1, !dbg !2129
  br i1 %308, label %309, label %311, !dbg !2130

; <label>:309:                                    ; preds = %304
  %310 = load i8*, i8** %186, align 8, !dbg !2131, !tbaa !673
  tail call void @free(i8* %310) #10, !dbg !2132
  br label %313, !dbg !2132

; <label>:311:                                    ; preds = %304
  %312 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %170, i64 0, i32 1, i32 0, i64 0, !dbg !2133
  tail call void @__gmpz_clear(%struct.__mpz_struct* %312) #10, !dbg !2134
  br label %313

; <label>:313:                                    ; preds = %309, %311
  %314 = bitcast %struct.valinfo* %170 to i8*, !dbg !2135
  tail call void @free(i8* %314) #10, !dbg !2136
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %171, i64 0, metadata !984, metadata !665) #10, !dbg !2137
  %315 = load i32, i32* %189, align 8, !dbg !2139, !tbaa !840
  %316 = icmp eq i32 %315, 1, !dbg !2140
  %317 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %171, i64 0, i32 1
  br i1 %316, label %318, label %321, !dbg !2141

; <label>:318:                                    ; preds = %313
  %319 = bitcast %union.anon* %317 to i8**, !dbg !2142
  %320 = load i8*, i8** %319, align 8, !dbg !2142, !tbaa !673
  tail call void @free(i8* %320) #10, !dbg !2143
  br label %323, !dbg !2143

; <label>:321:                                    ; preds = %313
  %322 = getelementptr inbounds %union.anon, %union.anon* %317, i64 0, i32 0, i64 0, !dbg !2144
  tail call void @__gmpz_clear(%struct.__mpz_struct* %322) #10, !dbg !2145
  br label %323

; <label>:323:                                    ; preds = %318, %321
  %324 = bitcast %struct.valinfo* %171 to i8*, !dbg !2146
  tail call void @free(i8* %324) #10, !dbg !2147
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %172, i64 0, metadata !984, metadata !665) #10, !dbg !2148
  %325 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 0, !dbg !2150
  %326 = load i32, i32* %325, align 8, !dbg !2150, !tbaa !840
  %327 = icmp eq i32 %326, 1, !dbg !2151
  %328 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %172, i64 0, i32 1
  br i1 %327, label %329, label %332, !dbg !2152

; <label>:329:                                    ; preds = %323
  %330 = bitcast %union.anon* %328 to i8**, !dbg !2153
  %331 = load i8*, i8** %330, align 8, !dbg !2153, !tbaa !673
  tail call void @free(i8* %331) #10, !dbg !2154
  br label %334, !dbg !2154

; <label>:332:                                    ; preds = %323
  %333 = getelementptr inbounds %union.anon, %union.anon* %328, i64 0, i32 0, i64 0, !dbg !2155
  tail call void @__gmpz_clear(%struct.__mpz_struct* %333) #10, !dbg !2156
  br label %334

; <label>:334:                                    ; preds = %329, %332
  %335 = bitcast %struct.valinfo* %172 to i8*, !dbg !2157
  tail call void @free(i8* %335) #10, !dbg !2158
  br label %375

; <label>:336:                                    ; preds = %164
  %337 = load i8*, i8** %168, align 8, !tbaa !673
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2159, metadata !906) #10, !dbg !2163
  %338 = icmp eq i8* %337, null, !dbg !2165
  br i1 %338, label %339, label %340, !dbg !2168

; <label>:339:                                    ; preds = %1, %22, %59, %96, %161, %336
  tail call fastcc void @syntax_error() #10, !dbg !2169
  unreachable

; <label>:340:                                    ; preds = %336
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !2170
  %341 = tail call i32 @strcmp(i8* nonnull %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #10, !dbg !2173
  %342 = icmp eq i32 %341, 0, !dbg !2174
  %343 = zext i1 %342 to i64, !dbg !2175
  %344 = getelementptr inbounds i8*, i8** %168, i64 %343, !dbg !2175
  store i8** %344, i8*** @args, align 8, !dbg !2175, !tbaa !673
  br i1 %342, label %345, label %356, !dbg !2176

; <label>:345:                                    ; preds = %340
  %346 = tail call fastcc %struct.valinfo* @eval(i1 zeroext %0) #10, !dbg !2177
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %346, i64 0, metadata !2162, metadata !665) #10, !dbg !2179
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !2180
  %347 = load i8**, i8*** @args, align 8, !dbg !2183, !tbaa !673
  %348 = load i8*, i8** %347, align 8, !dbg !2184, !tbaa !673
  %349 = icmp eq i8* %348, null, !dbg !2185
  br i1 %349, label %355, label %350, !dbg !2186

; <label>:350:                                    ; preds = %345
  %351 = tail call i32 @strcmp(i8* nonnull %348, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10, !dbg !2187
  %352 = icmp eq i32 %351, 0, !dbg !2188
  %353 = zext i1 %352 to i64, !dbg !2189
  %354 = getelementptr inbounds i8*, i8** %347, i64 %353, !dbg !2189
  store i8** %354, i8*** @args, align 8, !dbg !2189, !tbaa !673
  br i1 %352, label %375, label %355, !dbg !2190

; <label>:355:                                    ; preds = %345, %350
  tail call fastcc void @syntax_error() #10, !dbg !2191
  unreachable

; <label>:356:                                    ; preds = %340
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), i64 0, metadata !910, metadata !665) #10, !dbg !2192
  %357 = load i8*, i8** %344, align 8, !dbg !2195, !tbaa !673
  %358 = icmp eq i8* %357, null, !dbg !2196
  br i1 %358, label %365, label %359, !dbg !2197

; <label>:359:                                    ; preds = %356
  %360 = tail call i32 @strcmp(i8* nonnull %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10, !dbg !2198
  %361 = icmp eq i32 %360, 0, !dbg !2199
  %362 = zext i1 %361 to i64, !dbg !2200
  %363 = getelementptr inbounds i8*, i8** %344, i64 %362, !dbg !2200
  store i8** %363, i8*** @args, align 8, !dbg !2200, !tbaa !673
  br i1 %361, label %364, label %365, !dbg !2201

; <label>:364:                                    ; preds = %359
  tail call fastcc void @syntax_error() #10, !dbg !2202
  unreachable

; <label>:365:                                    ; preds = %356, %359
  %366 = phi i8** [ %344, %356 ], [ %363, %359 ], !dbg !2203
  %367 = getelementptr inbounds i8*, i8** %366, i64 1, !dbg !2203
  store i8** %367, i8*** @args, align 8, !dbg !2203, !tbaa !673
  %368 = load i8*, i8** %366, align 8, !dbg !2204, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %368, i64 0, metadata !1745, metadata !665) #10, !dbg !2205
  %369 = tail call noalias i8* @xmalloc(i64 24) #10, !dbg !2207
  %370 = bitcast i8* %369 to %struct.valinfo*, !dbg !2207
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %370, i64 0, metadata !1750, metadata !665) #10, !dbg !2208
  %371 = bitcast i8* %369 to i32*, !dbg !2209
  store i32 1, i32* %371, align 8, !dbg !2210, !tbaa !840
  %372 = tail call noalias i8* @xstrdup(i8* %368) #10, !dbg !2211
  %373 = getelementptr inbounds i8, i8* %369, i64 8, !dbg !2212
  %374 = bitcast i8* %373 to i8**, !dbg !2213
  store i8* %372, i8** %374, align 8, !dbg !2214, !tbaa !673
  br label %375, !dbg !2215

; <label>:375:                                    ; preds = %365, %350, %334, %159, %94, %57, %14
  %376 = phi %struct.valinfo* [ %17, %14 ], [ %47, %57 ], [ %84, %94 ], [ %141, %159 ], [ %306, %334 ], [ %370, %365 ], [ %346, %350 ]
  ret %struct.valinfo* %376, !dbg !2216
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.valinfo* @docolon(%struct.valinfo*, %struct.valinfo*) unnamed_addr #6 !dbg !2217 {
  %3 = alloca %struct.re_pattern_buffer, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.re_registers, align 8
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %0, i64 0, metadata !2221, metadata !665), !dbg !2258
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %1, i64 0, metadata !2222, metadata !665), !dbg !2259
  %6 = bitcast %struct.re_pattern_buffer* %3 to i8*, !dbg !2260
  call void @llvm.lifetime.start(i64 64, i8* nonnull %6) #10, !dbg !2260
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !2261
  call void @llvm.lifetime.start(i64 256, i8* nonnull %7) #10, !dbg !2261
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !2247, metadata !665), !dbg !2262
  %8 = bitcast %struct.re_registers* %5 to i8*, !dbg !2263
  call void @llvm.lifetime.start(i64 24, i8* nonnull %8) #10, !dbg !2263
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %0, i64 0, metadata !1285, metadata !665) #10, !dbg !2264
  %9 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 0, !dbg !2266
  %10 = load i32, i32* %9, align 8, !dbg !2266, !tbaa !840
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1, label %17
  ], !dbg !2267

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 1, !dbg !2268
  %13 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0, i64 0, !dbg !2269
  %14 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %13) #10, !dbg !2270
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1288, metadata !665) #10, !dbg !2271
  tail call void @__gmpz_clear(%struct.__mpz_struct* %13) #10, !dbg !2272
  %15 = bitcast %union.anon* %12 to i8**, !dbg !2273
  store i8* %14, i8** %15, align 8, !dbg !2274, !tbaa !673
  store i32 1, i32* %9, align 8, !dbg !2275, !tbaa !840
  br label %17, !dbg !2276

; <label>:16:                                     ; preds = %2
  tail call void @abort() #14, !dbg !2277
  unreachable, !dbg !2277

; <label>:17:                                     ; preds = %2, %11
  tail call void @llvm.dbg.value(metadata %struct.valinfo* %1, i64 0, metadata !1285, metadata !665) #10, !dbg !2278
  %18 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 0, !dbg !2280
  %19 = load i32, i32* %18, align 8, !dbg !2280, !tbaa !840
  switch i32 %19, label %29 [
    i32 0, label %24
    i32 1, label %20
  ], !dbg !2281

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 1
  %22 = bitcast %union.anon* %21 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !673
  br label %30, !dbg !2281

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %1, i64 0, i32 1, !dbg !2282
  %26 = getelementptr inbounds %union.anon, %union.anon* %25, i64 0, i32 0, i64 0, !dbg !2283
  %27 = tail call i8* @__gmpz_get_str(i8* null, i32 10, %struct.__mpz_struct* %26) #10, !dbg !2284
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1288, metadata !665) #10, !dbg !2285
  tail call void @__gmpz_clear(%struct.__mpz_struct* %26) #10, !dbg !2286
  %28 = bitcast %union.anon* %25 to i8**, !dbg !2287
  store i8* %27, i8** %28, align 8, !dbg !2288, !tbaa !673
  store i32 1, i32* %18, align 8, !dbg !2289, !tbaa !840
  br label %30, !dbg !2290

; <label>:29:                                     ; preds = %17
  tail call void @abort() #14, !dbg !2291
  unreachable, !dbg !2291

; <label>:30:                                     ; preds = %20, %24
  %31 = phi i8* [ %23, %20 ], [ %27, %24 ], !dbg !2292
  %32 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i64 0, i32 0, !dbg !2293
  store i32 0, i32* %32, align 8, !dbg !2294, !tbaa !2295
  %33 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i64 0, i32 1, !dbg !2297
  %34 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %5, i64 0, i32 2, !dbg !2298
  %35 = bitcast i32** %33 to i8*, !dbg !2299
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 16, i32 8, i1 false), !dbg !2300
  %36 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 4, !dbg !2301
  %37 = bitcast %struct.re_pattern_buffer* %3 to i8*, !dbg !2302
  call void @llvm.memset.p0i8.i64(i8* nonnull %37, i8 0, i64 16, i32 8, i1 false), !dbg !2303
  store i8* %7, i8** %36, align 8, !dbg !2302, !tbaa !2304
  %38 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 5, !dbg !2306
  store i8* null, i8** %38, align 8, !dbg !2307, !tbaa !2308
  store i64 710, i64* @re_syntax_options, align 8, !dbg !2309, !tbaa !2058
  %39 = call i64 @strlen(i8* %31) #13, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %3, i64 0, metadata !2225, metadata !2311), !dbg !2312
  %40 = call i8* @re_compile_pattern(i8* %31, i64 %39, %struct.re_pattern_buffer* nonnull %3) #10, !dbg !2313
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2224, metadata !665), !dbg !2315
  %41 = icmp eq i8* %40, null, !dbg !2316
  br i1 %41, label %43, label %42, !dbg !2318

; <label>:42:                                     ; preds = %30
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* nonnull %40) #10, !dbg !2319
  unreachable, !dbg !2319

; <label>:43:                                     ; preds = %30
  %44 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 7, !dbg !2320
  %45 = load i8, i8* %44, align 8, !dbg !2321
  %46 = and i8 %45, 127, !dbg !2321
  store i8 %46, i8* %44, align 8, !dbg !2321
  %47 = getelementptr inbounds %struct.valinfo, %struct.valinfo* %0, i64 0, i32 1, !dbg !2322
  %48 = bitcast %union.anon* %47 to i8**, !dbg !2323
  %49 = load i8*, i8** %48, align 8, !dbg !2323, !tbaa !673
  %50 = call i64 @strlen(i8* %49) #13, !dbg !2324
  %51 = trunc i64 %50 to i32, !dbg !2324
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %3, i64 0, metadata !2225, metadata !2311), !dbg !2312
  call void @llvm.dbg.value(metadata %struct.re_registers* %5, i64 0, metadata !2248, metadata !2311), !dbg !2325
  %52 = call i32 @re_match(%struct.re_pattern_buffer* nonnull %3, i8* %49, i32 %51, i32 0, %struct.re_registers* nonnull %5) #10, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !2257, metadata !665), !dbg !2327
  %53 = icmp sgt i32 %52, -1, !dbg !2328
  br i1 %53, label %54, label %84, !dbg !2330

; <label>:54:                                     ; preds = %43
  %55 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 6, !dbg !2331
  %56 = load i64, i64* %55, align 8, !dbg !2331, !tbaa !2334
  %57 = icmp eq i64 %56, 0, !dbg !2335
  br i1 %57, label %77, label %58, !dbg !2336

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %48, align 8, !dbg !2337, !tbaa !673
  %60 = load i32*, i32** %34, align 8, !dbg !2339, !tbaa !2340
  %61 = getelementptr inbounds i32, i32* %60, i64 1, !dbg !2341
  %62 = load i32, i32* %61, align 4, !dbg !2341, !tbaa !778
  %63 = sext i32 %62 to i64, !dbg !2342
  %64 = getelementptr inbounds i8, i8* %59, i64 %63, !dbg !2342
  store i8 0, i8* %64, align 1, !dbg !2343, !tbaa !705
  %65 = load i8*, i8** %48, align 8, !dbg !2344, !tbaa !673
  %66 = load i32*, i32** %33, align 8, !dbg !2345, !tbaa !2346
  %67 = getelementptr inbounds i32, i32* %66, i64 1, !dbg !2347
  %68 = load i32, i32* %67, align 4, !dbg !2347, !tbaa !778
  %69 = sext i32 %68 to i64, !dbg !2348
  %70 = getelementptr inbounds i8, i8* %65, i64 %69, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !1745, metadata !665) #10, !dbg !2349
  %71 = call noalias i8* @xmalloc(i64 24) #10, !dbg !2351
  %72 = bitcast i8* %71 to %struct.valinfo*, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.valinfo* %72, i64 0, metadata !1750, metadata !665) #10, !dbg !2352
  %73 = bitcast i8* %71 to i32*, !dbg !2353
  store i32 1, i32* %73, align 8, !dbg !2354, !tbaa !840
  %74 = call noalias i8* @xstrdup(i8* %70) #10, !dbg !2355
  %75 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !2356
  %76 = bitcast i8* %75 to i8**, !dbg !2357
  store i8* %74, i8** %76, align 8, !dbg !2358, !tbaa !673
  call void @llvm.dbg.value(metadata %struct.valinfo* %72, i64 0, metadata !2223, metadata !665), !dbg !2359
  br label %105, !dbg !2360

; <label>:77:                                     ; preds = %54
  %78 = sext i32 %52 to i64, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !1034, metadata !665) #10, !dbg !2362
  %79 = call noalias i8* @xmalloc(i64 24) #10, !dbg !2364
  %80 = bitcast i8* %79 to %struct.valinfo*, !dbg !2364
  call void @llvm.dbg.value(metadata %struct.valinfo* %80, i64 0, metadata !1039, metadata !665) #10, !dbg !2365
  %81 = bitcast i8* %79 to i32*, !dbg !2366
  store i32 0, i32* %81, align 8, !dbg !2367, !tbaa !840
  %82 = getelementptr inbounds i8, i8* %79, i64 8, !dbg !2368
  %83 = bitcast i8* %82 to %struct.__mpz_struct*, !dbg !2369
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* %83, i64 %78) #10, !dbg !2370
  call void @llvm.dbg.value(metadata %struct.valinfo* %80, i64 0, metadata !2223, metadata !665), !dbg !2359
  br label %105

; <label>:84:                                     ; preds = %43
  switch i32 %52, label %102 [
    i32 -1, label %85
    i32 -2, label %99
  ], !dbg !2371

; <label>:85:                                     ; preds = %84
  %86 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %3, i64 0, i32 6, !dbg !2372
  %87 = load i64, i64* %86, align 8, !dbg !2372, !tbaa !2334
  %88 = icmp eq i64 %87, 0, !dbg !2376
  %89 = call noalias i8* @xmalloc(i64 24) #10, !dbg !2377
  %90 = bitcast i8* %89 to %struct.valinfo*
  %91 = bitcast i8* %89 to i32*
  br i1 %88, label %96, label %92, !dbg !2379

; <label>:92:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i64 0, metadata !1745, metadata !665) #10, !dbg !2380
  call void @llvm.dbg.value(metadata %struct.valinfo* %90, i64 0, metadata !1750, metadata !665) #10, !dbg !2382
  store i32 1, i32* %91, align 8, !dbg !2383, !tbaa !840
  %93 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !2384
  %94 = getelementptr inbounds i8, i8* %89, i64 8, !dbg !2385
  %95 = bitcast i8* %94 to i8**, !dbg !2386
  store i8* %93, i8** %95, align 8, !dbg !2387, !tbaa !673
  call void @llvm.dbg.value(metadata %struct.valinfo* %90, i64 0, metadata !2223, metadata !665), !dbg !2359
  br label %105, !dbg !2388

; <label>:96:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1034, metadata !665) #10, !dbg !2389
  call void @llvm.dbg.value(metadata %struct.valinfo* %90, i64 0, metadata !1039, metadata !665) #10, !dbg !2390
  store i32 0, i32* %91, align 8, !dbg !2391, !tbaa !840
  %97 = getelementptr inbounds i8, i8* %89, i64 8, !dbg !2392
  %98 = bitcast i8* %97 to %struct.__mpz_struct*, !dbg !2393
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* %98, i64 0) #10, !dbg !2394
  call void @llvm.dbg.value(metadata %struct.valinfo* %90, i64 0, metadata !2223, metadata !665), !dbg !2359
  br label %105

; <label>:99:                                     ; preds = %84
  %100 = tail call i32* @__errno_location() #1, !dbg !2395
  %101 = load i32, i32* %100, align 4, !dbg !2395, !tbaa !778
  br label %102, !dbg !2395

; <label>:102:                                    ; preds = %84, %99
  %103 = phi i32 [ %101, %99 ], [ 75, %84 ], !dbg !2397
  %104 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !2397
  call void (i32, i32, i8*, ...) @error(i32 3, i32 %103, i8* %104) #10, !dbg !2399
  unreachable, !dbg !2397

; <label>:105:                                    ; preds = %96, %92, %58, %77
  %106 = phi %struct.valinfo* [ %72, %58 ], [ %80, %77 ], [ %90, %92 ], [ %90, %96 ]
  call void @llvm.dbg.value(metadata %struct.valinfo* %106, i64 0, metadata !2223, metadata !665), !dbg !2359
  %107 = load i32, i32* %32, align 8, !dbg !2401, !tbaa !2295
  %108 = icmp eq i32 %107, 0, !dbg !2403
  br i1 %108, label %114, label %109, !dbg !2404

; <label>:109:                                    ; preds = %105
  %110 = bitcast i32** %33 to i8**, !dbg !2405
  %111 = load i8*, i8** %110, align 8, !dbg !2405, !tbaa !2346
  call void @free(i8* %111) #10, !dbg !2407
  %112 = bitcast i32** %34 to i8**, !dbg !2408
  %113 = load i8*, i8** %112, align 8, !dbg !2408, !tbaa !2340
  call void @free(i8* %113) #10, !dbg !2409
  br label %114, !dbg !2410

; <label>:114:                                    ; preds = %105, %109
  store i8* null, i8** %36, align 8, !dbg !2411, !tbaa !2304
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %3, i64 0, metadata !2225, metadata !2311), !dbg !2312
  call void @regfree(%struct.re_pattern_buffer* nonnull %3) #10, !dbg !2412
  call void @llvm.lifetime.end(i64 24, i8* nonnull %8) #10, !dbg !2413
  call void @llvm.lifetime.end(i64 256, i8* nonnull %7) #10, !dbg !2413
  call void @llvm.lifetime.end(i64 64, i8* nonnull %6) #10, !dbg !2413
  ret %struct.valinfo* %106, !dbg !2414
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
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !2415 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2417, metadata !665), !dbg !2418
  store i8* %0, i8** @file_name, align 8, !dbg !2419, !tbaa !673
  ret void, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !2421 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2425, metadata !906), !dbg !2426
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2427, !tbaa !2428
  ret void, !dbg !2430
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !2431 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2436, !tbaa !673
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !2437
  %3 = icmp eq i32 %2, 0, !dbg !2438
  br i1 %3, label %21, label %4, !dbg !2439

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2440, !tbaa !2428, !range !2442
  %6 = icmp eq i8 %5, 0, !dbg !2440
  %7 = tail call i32* @__errno_location() #1, !dbg !2443
  br i1 %6, label %11, label %8, !dbg !2445

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !2446, !tbaa !778
  %10 = icmp eq i32 %9, 32, !dbg !2448
  br i1 %10, label %21, label %11, !dbg !2449

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !2451
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2433, metadata !665), !dbg !2452
  %13 = load i8*, i8** @file_name, align 8, !dbg !2453, !tbaa !673
  %14 = icmp eq i8* %13, null, !dbg !2453
  %15 = load i32, i32* %7, align 4, !tbaa !778
  br i1 %14, label %18, label %16, !dbg !2454

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !2455
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.22, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !2457
  br label %19, !dbg !2459

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.23, i64 0, i64 0), i8* %12) #10, !dbg !2460
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2461, !tbaa !778
  tail call void @_exit(i32 %20) #14, !dbg !2462
  unreachable, !dbg !2462

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2463, !tbaa !673
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !2465
  %24 = icmp eq i32 %23, 0, !dbg !2466
  br i1 %24, label %27, label %25, !dbg !2467

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2468, !tbaa !778
  tail call void @_exit(i32 %26) #14, !dbg !2469
  unreachable, !dbg !2469

; <label>:27:                                     ; preds = %21
  ret void, !dbg !2470
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !2471 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2476, metadata !665), !dbg !2501
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !2477, metadata !665), !dbg !2502
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2478, metadata !665), !dbg !2503
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2479, metadata !665), !dbg !2504
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2480, metadata !665), !dbg !2505
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !2481, metadata !665), !dbg !2506
  %8 = load i32, i32* @opterr, align 4, !dbg !2507, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2483, metadata !665), !dbg !2508
  store i32 0, i32* @opterr, align 4, !dbg !2509, !tbaa !778
  %9 = icmp eq i32 %0, 2, !dbg !2510
  br i1 %9, label %10, label %17, !dbg !2511

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !2512
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !2482, metadata !665), !dbg !2514
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !2515

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !2517
  br label %17, !dbg !2518

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !2519
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !2519
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !2484, metadata !665), !dbg !2520
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !2521
  call void @llvm.va_start(i8* nonnull %14), !dbg !2521
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2522, !tbaa !673
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !2523
  call void @exit(i32 0) #14, !dbg !2524
  unreachable, !dbg !2524

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !2525, !tbaa !778
  store i32 0, i32* @optind, align 4, !dbg !2526, !tbaa !778
  ret void, !dbg !2527
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2528 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2530, metadata !665), !dbg !2533
  %2 = icmp eq i8* %0, null, !dbg !2534
  br i1 %2, label %3, label %6, !dbg !2536

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2537, !tbaa !673
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2539
  tail call void @abort() #14, !dbg !2540
  unreachable, !dbg !2540

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !2541
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2531, metadata !665), !dbg !2542
  %8 = icmp ne i8* %7, null, !dbg !2543
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2544
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2546
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2532, metadata !665), !dbg !2547
  %11 = ptrtoint i8* %10 to i64, !dbg !2548
  %12 = ptrtoint i8* %0 to i64, !dbg !2548
  %13 = sub i64 %11, %12, !dbg !2548
  %14 = icmp sgt i64 %13, 6, !dbg !2550
  br i1 %14, label %15, label %24, !dbg !2551

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2552
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #13, !dbg !2552
  %18 = icmp eq i32 %17, 0, !dbg !2554
  br i1 %18, label %19, label %24, !dbg !2555

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2530, metadata !665), !dbg !2533
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #13, !dbg !2556
  %21 = icmp eq i32 %20, 0, !dbg !2559
  br i1 %21, label %22, label %24, !dbg !2560

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2561
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2530, metadata !665), !dbg !2533
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2563, !tbaa !673
  br label %24, !dbg !2564

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2530, metadata !665), !dbg !2533
  store i8* %25, i8** @program_name, align 8, !dbg !2565, !tbaa !673
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2566, !tbaa !673
  ret void, !dbg !2567
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2568 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2573, metadata !665), !dbg !2576
  %2 = tail call i32* @__errno_location() #1, !dbg !2577
  %3 = load i32, i32* %2, align 4, !dbg !2577, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2574, metadata !665), !dbg !2578
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2579
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2580
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2580
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2582
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2575, metadata !665), !dbg !2583
  store i32 %3, i32* %2, align 4, !dbg !2584, !tbaa !778
  ret %struct.quoting_options* %8, !dbg !2585
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2586 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2592, metadata !665), !dbg !2593
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2594
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2594
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2595
  %5 = load i32, i32* %4, align 8, !dbg !2595, !tbaa !2597
  ret i32 %5, !dbg !2599
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2600 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2604, metadata !665), !dbg !2606
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2605, metadata !665), !dbg !2607
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2608
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2608
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2609
  store i32 %1, i32* %5, align 8, !dbg !2611, !tbaa !2597
  ret void, !dbg !2612
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2613 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2617, metadata !665), !dbg !2625
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2618, metadata !665), !dbg !2626
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2619, metadata !665), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2620, metadata !665), !dbg !2628
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2629
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2629
  %6 = lshr i8 %1, 5, !dbg !2630
  %7 = zext i8 %6 to i64, !dbg !2630
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2632
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2621, metadata !665), !dbg !2633
  %9 = and i8 %1, 31, !dbg !2634
  %10 = zext i8 %9 to i32, !dbg !2635
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2623, metadata !665), !dbg !2636
  %11 = load i32, i32* %8, align 4, !dbg !2637, !tbaa !778
  %12 = lshr i32 %11, %10, !dbg !2638
  %13 = and i32 %12, 1, !dbg !2639
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2624, metadata !665), !dbg !2640
  %14 = and i32 %2, 1, !dbg !2641
  %15 = xor i32 %13, %14, !dbg !2642
  %16 = shl i32 %15, %10, !dbg !2643
  %17 = xor i32 %16, %11, !dbg !2644
  store i32 %17, i32* %8, align 4, !dbg !2644, !tbaa !778
  ret i32 %13, !dbg !2645
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2646 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2650, metadata !665), !dbg !2653
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2651, metadata !665), !dbg !2654
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2650, metadata !665), !dbg !2653
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2650, metadata !665), !dbg !2653
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2658
  %6 = load i32, i32* %5, align 4, !dbg !2658, !tbaa !2659
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2652, metadata !665), !dbg !2660
  store i32 %1, i32* %5, align 4, !dbg !2661, !tbaa !2659
  ret i32 %6, !dbg !2662
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2663 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2667, metadata !665), !dbg !2670
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2668, metadata !665), !dbg !2671
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2669, metadata !665), !dbg !2672
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2673
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2667, metadata !665), !dbg !2670
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2675
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2667, metadata !665), !dbg !2670
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2676
  store i32 10, i32* %6, align 8, !dbg !2677, !tbaa !2597
  %7 = icmp ne i8* %1, null, !dbg !2678
  %8 = icmp ne i8* %2, null, !dbg !2680
  %9 = and i1 %7, %8, !dbg !2682
  br i1 %9, label %11, label %10, !dbg !2682

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2683
  unreachable, !dbg !2683

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2684
  store i8* %1, i8** %12, align 8, !dbg !2685, !tbaa !2686
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2687
  store i8* %2, i8** %13, align 8, !dbg !2688, !tbaa !2689
  ret void, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2691 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2695, metadata !665), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2696, metadata !665), !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2697, metadata !665), !dbg !2705
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2698, metadata !665), !dbg !2706
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2699, metadata !665), !dbg !2707
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2708
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2700, metadata !665), !dbg !2709
  %8 = tail call i32* @__errno_location() #1, !dbg !2710
  %9 = load i32, i32* %8, align 4, !dbg !2710, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2701, metadata !665), !dbg !2711
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2712
  %11 = load i32, i32* %10, align 8, !dbg !2712, !tbaa !2597
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2713
  %13 = load i32, i32* %12, align 4, !dbg !2713, !tbaa !2659
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2714
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2715
  %16 = load i8*, i8** %15, align 8, !dbg !2715, !tbaa !2686
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2716
  %18 = load i8*, i8** %17, align 8, !dbg !2716, !tbaa !2689
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2717
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2702, metadata !665), !dbg !2718
  store i32 %9, i32* %8, align 4, !dbg !2719, !tbaa !778
  ret i64 %19, !dbg !2720
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2721 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2727, metadata !665), !dbg !2790
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2728, metadata !665), !dbg !2791
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2729, metadata !665), !dbg !2792
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2730, metadata !665), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2731, metadata !665), !dbg !2794
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2732, metadata !665), !dbg !2795
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2733, metadata !665), !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2734, metadata !665), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2735, metadata !665), !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !665), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2738, metadata !665), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2739, metadata !665), !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2740, metadata !665), !dbg !2802
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2741, metadata !665), !dbg !2803
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2804
  %14 = icmp eq i64 %13, 1, !dbg !2805
  %15 = lshr i32 %5, 1, !dbg !2806
  %16 = trunc i32 %15 to i8, !dbg !2806
  %17 = and i8 %16, 1, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2743, metadata !665), !dbg !2806
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2744, metadata !665), !dbg !2807
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2745, metadata !665), !dbg !2808
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2746, metadata !665), !dbg !2809
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2810

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2728, metadata !665), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2746, metadata !665), !dbg !2809
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2745, metadata !665), !dbg !2808
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2743, metadata !665), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2730, metadata !665), !dbg !2793
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2741, metadata !665), !dbg !2803
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2740, metadata !665), !dbg !2802
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2739, metadata !665), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2738, metadata !665), !dbg !2800
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2735, metadata !665), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2734, metadata !665), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2731, metadata !665), !dbg !2794
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
  ], !dbg !2811

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2731, metadata !665), !dbg !2794
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2743, metadata !665), !dbg !2806
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2743, metadata !665), !dbg !2806
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2731, metadata !665), !dbg !2794
  br label %95, !dbg !2812

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2743, metadata !665), !dbg !2806
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2731, metadata !665), !dbg !2794
  %43 = and i8 %36, 1, !dbg !2814
  %44 = icmp eq i8 %43, 0, !dbg !2814
  br i1 %44, label %45, label %95, !dbg !2812

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2816
  br i1 %46, label %95, label %47, !dbg !2820

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2822, !tbaa !705
  br label %95, !dbg !2822

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %28), !dbg !2824
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2734, metadata !665), !dbg !2797
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %28), !dbg !2828
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2735, metadata !665), !dbg !2798
  br label %51, !dbg !2829

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2735, metadata !665), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2734, metadata !665), !dbg !2797
  %54 = and i8 %36, 1, !dbg !2830
  %55 = icmp eq i8 %54, 0, !dbg !2830
  br i1 %55, label %56, label %73, !dbg !2832

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2739, metadata !665), !dbg !2801
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2737, metadata !665), !dbg !2799
  %57 = load i8, i8* %52, align 1, !dbg !2833, !tbaa !705
  %58 = icmp eq i8 %57, 0, !dbg !2837
  br i1 %58, label %73, label %59, !dbg !2837

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2839

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2839
  br i1 %64, label %65, label %67, !dbg !2843

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2845
  store i8 %61, i8* %66, align 1, !dbg !2845, !tbaa !705
  br label %67, !dbg !2845

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2737, metadata !665), !dbg !2799
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2739, metadata !665), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2739, metadata !665), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2737, metadata !665), !dbg !2799
  %70 = load i8, i8* %69, align 1, !dbg !2833, !tbaa !705
  %71 = icmp eq i8 %70, 0, !dbg !2837
  br i1 %71, label %72, label %60, !dbg !2837, !llvm.loop !2851

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2799

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2741, metadata !665), !dbg !2803
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2739, metadata !665), !dbg !2801
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2740, metadata !665), !dbg !2802
  br label %95, !dbg !2855

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2741, metadata !665), !dbg !2803
  br label %77, !dbg !2856

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2741, metadata !665), !dbg !2803
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2743, metadata !665), !dbg !2806
  br label %79, !dbg !2857

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2743, metadata !665), !dbg !2806
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2741, metadata !665), !dbg !2803
  %82 = and i8 %81, 1, !dbg !2858
  %83 = icmp eq i8 %82, 0, !dbg !2858
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2741, metadata !665), !dbg !2803
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2860
  br label %85, !dbg !2860

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2743, metadata !665), !dbg !2806
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2741, metadata !665), !dbg !2803
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2731, metadata !665), !dbg !2794
  %88 = and i8 %87, 1, !dbg !2861
  %89 = icmp eq i8 %88, 0, !dbg !2861
  br i1 %89, label %90, label %95, !dbg !2863

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2864
  br i1 %91, label %95, label %92, !dbg !2868

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2870, !tbaa !705
  br label %95, !dbg !2870

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2743, metadata !665), !dbg !2806
  br label %95, !dbg !2872

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2873
  unreachable, !dbg !2873

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2743, metadata !665), !dbg !2806
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2741, metadata !665), !dbg !2803
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2740, metadata !665), !dbg !2802
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2739, metadata !665), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2735, metadata !665), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2734, metadata !665), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2731, metadata !665), !dbg !2794
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2736, metadata !665), !dbg !2874
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
  br label %123, !dbg !2875

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2728, metadata !665), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2746, metadata !665), !dbg !2809
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2745, metadata !665), !dbg !2808
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2730, metadata !665), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2738, metadata !665), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2736, metadata !665), !dbg !2874
  %132 = icmp eq i64 %127, -1, !dbg !2876
  br i1 %132, label %135, label %133, !dbg !2878

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2879
  br i1 %134, label %597, label %139, !dbg !2881

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2883
  %137 = load i8, i8* %136, align 1, !dbg !2883, !tbaa !705
  %138 = icmp eq i8 %137, 0, !dbg !2885
  br i1 %138, label %597, label %139, !dbg !2881

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2752, metadata !665), !dbg !2886
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2753, metadata !665), !dbg !2887
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2754, metadata !665), !dbg !2888
  br i1 %109, label %140, label %155, !dbg !2889

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2891
  %142 = and i1 %110, %132, !dbg !2893
  br i1 %142, label %143, label %145, !dbg !2893

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2730, metadata !665), !dbg !2793
  br label %145, !dbg !2895

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2730, metadata !665), !dbg !2793
  %147 = icmp ugt i64 %141, %146, !dbg !2897
  br i1 %147, label %155, label %148, !dbg !2899

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2900
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2901
  %151 = icmp ne i32 %150, 0, !dbg !2902
  %152 = or i1 %151, %112, !dbg !2902
  %153 = xor i1 %151, true, !dbg !2902
  %154 = zext i1 %153 to i8, !dbg !2902
  br i1 %152, label %155, label %644, !dbg !2902

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2752, metadata !665), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2730, metadata !665), !dbg !2793
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2904
  %159 = load i8, i8* %158, align 1, !dbg !2904, !tbaa !705
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2747, metadata !665), !dbg !2905
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
  ], !dbg !2906

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2907

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2908

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2753, metadata !665), !dbg !2887
  %163 = and i8 %128, 1, !dbg !2913
  %164 = icmp eq i8 %163, 0, !dbg !2913
  %165 = and i1 %114, %164, !dbg !2916
  br i1 %165, label %166, label %182, !dbg !2916

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2918
  br i1 %167, label %168, label %170, !dbg !2923

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2925
  store i8 39, i8* %169, align 1, !dbg !2925, !tbaa !705
  br label %170, !dbg !2925

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2737, metadata !665), !dbg !2799
  %172 = icmp ult i64 %171, %131, !dbg !2929
  br i1 %172, label %173, label %175, !dbg !2933

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2935
  store i8 36, i8* %174, align 1, !dbg !2935, !tbaa !705
  br label %175, !dbg !2935

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2737, metadata !665), !dbg !2799
  %177 = icmp ult i64 %176, %131, !dbg !2939
  br i1 %177, label %178, label %180, !dbg !2943

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2945
  store i8 39, i8* %179, align 1, !dbg !2945, !tbaa !705
  br label %180, !dbg !2945

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2947
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2744, metadata !665), !dbg !2807
  br label %182, !dbg !2949

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2737, metadata !665), !dbg !2799
  %185 = icmp ult i64 %183, %131, !dbg !2951
  br i1 %185, label %186, label %188, !dbg !2955

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2957
  store i8 92, i8* %187, align 1, !dbg !2957, !tbaa !705
  br label %188, !dbg !2957

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2737, metadata !665), !dbg !2799
  br i1 %106, label %190, label %476, !dbg !2961

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2963
  %192 = icmp ult i64 %191, %156, !dbg !2965
  br i1 %192, label %193, label %476, !dbg !2966

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2967
  %195 = load i8, i8* %194, align 1, !dbg !2967, !tbaa !705
  %196 = add i8 %195, -48, !dbg !2969
  %197 = icmp ult i8 %196, 10, !dbg !2969
  br i1 %197, label %198, label %476, !dbg !2969

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2970
  br i1 %199, label %200, label %202, !dbg !2975

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2977
  store i8 48, i8* %201, align 1, !dbg !2977, !tbaa !705
  br label %202, !dbg !2977

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2737, metadata !665), !dbg !2799
  %204 = icmp ult i64 %203, %131, !dbg !2981
  br i1 %204, label %205, label %207, !dbg !2985

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2987
  store i8 48, i8* %206, align 1, !dbg !2987, !tbaa !705
  br label %207, !dbg !2987

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2737, metadata !665), !dbg !2799
  br label %476, !dbg !2991

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2992

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2993

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2994

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2996

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2998
  %215 = icmp ult i64 %214, %156, !dbg !3000
  br i1 %215, label %216, label %476, !dbg !3001

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !3002
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3004
  %219 = load i8, i8* %218, align 1, !dbg !3004, !tbaa !705
  %220 = icmp eq i8 %219, 63, !dbg !3005
  br i1 %220, label %221, label %476, !dbg !3006

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3008
  %223 = load i8, i8* %222, align 1, !dbg !3008, !tbaa !705
  %224 = sext i8 %223 to i32, !dbg !3008
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
  ], !dbg !3009

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !3010

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2747, metadata !665), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2736, metadata !665), !dbg !2874
  %227 = icmp ult i64 %125, %131, !dbg !3012
  br i1 %227, label %228, label %230, !dbg !3016

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3018
  store i8 63, i8* %229, align 1, !dbg !3018, !tbaa !705
  br label %230, !dbg !3018

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2737, metadata !665), !dbg !2799
  %232 = icmp ult i64 %231, %131, !dbg !3022
  br i1 %232, label %233, label %235, !dbg !3026

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3028
  store i8 34, i8* %234, align 1, !dbg !3028, !tbaa !705
  br label %235, !dbg !3028

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2737, metadata !665), !dbg !2799
  %237 = icmp ult i64 %236, %131, !dbg !3032
  br i1 %237, label %238, label %240, !dbg !3036

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3038
  store i8 34, i8* %239, align 1, !dbg !3038, !tbaa !705
  br label %240, !dbg !3038

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2737, metadata !665), !dbg !2799
  %242 = icmp ult i64 %241, %131, !dbg !3042
  br i1 %242, label %243, label %245, !dbg !3046

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3048
  store i8 63, i8* %244, align 1, !dbg !3048, !tbaa !705
  br label %245, !dbg !3048

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2737, metadata !665), !dbg !2799
  br label %476, !dbg !3052

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2751, metadata !665), !dbg !3053
  br label %257, !dbg !3054

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2751, metadata !665), !dbg !3053
  br label %257, !dbg !3055

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2751, metadata !665), !dbg !3053
  br label %255, !dbg !3056

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2751, metadata !665), !dbg !3053
  br label %255, !dbg !3057

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2751, metadata !665), !dbg !3053
  br label %257, !dbg !3058

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2751, metadata !665), !dbg !3053
  br i1 %114, label %253, label %254, !dbg !3059

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !3060

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !3063

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2751, metadata !665), !dbg !3053
  br i1 %118, label %257, label %644, !dbg !3065

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2751, metadata !665), !dbg !3053
  br i1 %105, label %503, label %476, !dbg !3067

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !3068
  br i1 %260, label %261, label %266, !dbg !3070

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !3071, !tbaa !705
  %263 = icmp ne i8 %262, 0, !dbg !3073
  %264 = icmp ne i64 %124, 0, !dbg !3074
  %265 = or i1 %264, %263, !dbg !3076
  br i1 %265, label %476, label %272, !dbg !3076

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !3077
  %268 = icmp ne i64 %124, 0, !dbg !3074
  %269 = or i1 %268, %267, !dbg !3079
  br i1 %269, label %476, label %272, !dbg !3079

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !3074
  br i1 %271, label %272, label %476, !dbg !3081

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2754, metadata !665), !dbg !2888
  br label %273, !dbg !3082

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2754, metadata !665), !dbg !2888
  br i1 %118, label %476, label %644, !dbg !3083

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2745, metadata !665), !dbg !2808
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2754, metadata !665), !dbg !2888
  br i1 %114, label %276, label %476, !dbg !3085

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !3086

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !3089
  %279 = icmp ne i64 %126, 0, !dbg !3091
  %280 = or i1 %279, %278, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2738, metadata !665), !dbg !2800
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2728, metadata !665), !dbg !2791
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !3093
  %282 = select i1 %280, i64 %131, i64 0, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2728, metadata !665), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2738, metadata !665), !dbg !2800
  %283 = icmp ult i64 %125, %282, !dbg !3094
  br i1 %283, label %284, label %286, !dbg !3098

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3100
  store i8 39, i8* %285, align 1, !dbg !3100, !tbaa !705
  br label %286, !dbg !3100

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2737, metadata !665), !dbg !2799
  %288 = icmp ult i64 %287, %282, !dbg !3104
  br i1 %288, label %289, label %291, !dbg !3108

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3110
  store i8 92, i8* %290, align 1, !dbg !3110, !tbaa !705
  br label %291, !dbg !3110

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2737, metadata !665), !dbg !2799
  %293 = icmp ult i64 %292, %282, !dbg !3114
  br i1 %293, label %294, label %296, !dbg !3118

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3120
  store i8 39, i8* %295, align 1, !dbg !3120, !tbaa !705
  br label %296, !dbg !3120

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2744, metadata !665), !dbg !2807
  br label %476, !dbg !3124

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !3125

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2755, metadata !665), !dbg !3126
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !3127
  %301 = load i16*, i16** %300, align 8, !dbg !3127, !tbaa !673
  %302 = zext i8 %159 to i64, !dbg !3127
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3127
  %304 = load i16, i16* %303, align 2, !dbg !3127, !tbaa !3129
  %305 = lshr i16 %304, 14, !dbg !3130
  %306 = trunc i16 %305 to i8, !dbg !3130
  %307 = and i8 %306, 1, !dbg !3130
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2758, metadata !665), !dbg !3131
  br label %368, !dbg !3132

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !3133
  store i64 0, i64* %10, align 8, !dbg !3134
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2755, metadata !665), !dbg !3126
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2758, metadata !665), !dbg !3131
  %309 = icmp eq i64 %156, -1, !dbg !3135
  br i1 %309, label %310, label %312, !dbg !3137, !llvm.loop !3138

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2730, metadata !665), !dbg !2793
  br label %312, !dbg !3142, !llvm.loop !3138

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !3131

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2758, metadata !665), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2755, metadata !665), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2730, metadata !665), !dbg !2793
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !3143
  %317 = add i64 %315, %124, !dbg !3144
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3145
  %319 = sub i64 %313, %317, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2759, metadata !2311), !dbg !3147
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2776, metadata !2311), !dbg !3148
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2779, metadata !665), !dbg !3150
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !3151

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2755, metadata !665), !dbg !3126
  %322 = icmp ugt i64 %313, %317, !dbg !3152
  br i1 %322, label %323, label %351, !dbg !3155

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !3156

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3156
  %328 = load i8, i8* %327, align 1, !dbg !3156, !tbaa !705
  %329 = icmp eq i8 %328, 0, !dbg !3158
  br i1 %329, label %348, label %330, !dbg !3159

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2755, metadata !665), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2755, metadata !665), !dbg !3126
  %332 = add i64 %331, %124, !dbg !3162
  %333 = icmp ult i64 %332, %313, !dbg !3152
  br i1 %333, label %324, label %348, !dbg !3155, !llvm.loop !3163

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !3165
  %336 = and i1 %116, %335, !dbg !3169
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2780, metadata !665), !dbg !3170
  br i1 %336, label %337, label %355, !dbg !3169

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !3171

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !3171
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3172
  %342 = load i8, i8* %341, align 1, !dbg !3172, !tbaa !705
  %343 = sext i8 %342 to i32, !dbg !3172
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !3173

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2780, metadata !665), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2780, metadata !665), !dbg !3170
  %346 = icmp ult i64 %345, %320, !dbg !3165
  br i1 %346, label %338, label %354, !dbg !3176, !llvm.loop !3178

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !3131

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !3131

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !3131

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2758, metadata !665), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2755, metadata !665), !dbg !3126
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3181
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !3182

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !3182, !tbaa !778
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2776, metadata !665), !dbg !3148
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !3184
  %358 = icmp eq i32 %357, 0, !dbg !3184
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2758, metadata !665), !dbg !3131
  %359 = select i1 %358, i8 0, i8 %316, !dbg !3185
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2758, metadata !665), !dbg !3131
  %360 = add i64 %320, %315, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2755, metadata !665), !dbg !3126
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2758, metadata !665), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2755, metadata !665), !dbg !3126
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3181
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2759, metadata !2311), !dbg !3147
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !3187
  %362 = icmp eq i32 %361, 0, !dbg !3188
  br i1 %362, label %314, label %363, !dbg !3189, !llvm.loop !3138

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !3191

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3191
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2758, metadata !665), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2755, metadata !665), !dbg !3126
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3181
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3191
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2758, metadata !665), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2755, metadata !665), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2730, metadata !665), !dbg !2793
  %372 = and i8 %371, 1, !dbg !3192
  %373 = icmp ne i8 %372, 0, !dbg !3192
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2754, metadata !665), !dbg !2888
  %374 = icmp ult i64 %370, 2, !dbg !3193
  %375 = or i1 %373, %113, !dbg !3194
  %376 = and i1 %374, %375, !dbg !3196
  br i1 %376, label %476, label %377, !dbg !3196

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2787, metadata !665), !dbg !3198
  br label %379, !dbg !3199

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2753, metadata !665), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2752, metadata !665), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2747, metadata !665), !dbg !2905
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2736, metadata !665), !dbg !2874
  br i1 %375, label %432, label %386, !dbg !3200

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !3205

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2753, metadata !665), !dbg !2887
  %388 = and i8 %382, 1, !dbg !3209
  %389 = icmp eq i8 %388, 0, !dbg !3209
  %390 = and i1 %114, %389, !dbg !3212
  br i1 %390, label %391, label %407, !dbg !3212

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !3214
  br i1 %392, label %393, label %395, !dbg !3219

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3221
  store i8 39, i8* %394, align 1, !dbg !3221, !tbaa !705
  br label %395, !dbg !3221

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2737, metadata !665), !dbg !2799
  %397 = icmp ult i64 %396, %131, !dbg !3225
  br i1 %397, label %398, label %400, !dbg !3229

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3231
  store i8 36, i8* %399, align 1, !dbg !3231, !tbaa !705
  br label %400, !dbg !3231

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2737, metadata !665), !dbg !2799
  %402 = icmp ult i64 %401, %131, !dbg !3235
  br i1 %402, label %403, label %405, !dbg !3239

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3241
  store i8 39, i8* %404, align 1, !dbg !3241, !tbaa !705
  br label %405, !dbg !3241

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !3243
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2744, metadata !665), !dbg !2807
  br label %407, !dbg !3245

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2737, metadata !665), !dbg !2799
  %410 = icmp ult i64 %408, %131, !dbg !3247
  br i1 %410, label %411, label %413, !dbg !3251

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3253
  store i8 92, i8* %412, align 1, !dbg !3253, !tbaa !705
  br label %413, !dbg !3253

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2737, metadata !665), !dbg !2799
  %415 = icmp ult i64 %414, %131, !dbg !3257
  br i1 %415, label %416, label %420, !dbg !3261

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !3263
  %418 = or i8 %417, 48, !dbg !3263
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3263
  store i8 %418, i8* %419, align 1, !dbg !3263, !tbaa !705
  br label %420, !dbg !3263

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2737, metadata !665), !dbg !2799
  %422 = icmp ult i64 %421, %131, !dbg !3267
  br i1 %422, label %423, label %428, !dbg !3271

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !3273
  %425 = and i8 %424, 7, !dbg !3273
  %426 = or i8 %425, 48, !dbg !3273
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3273
  store i8 %426, i8* %427, align 1, !dbg !3273, !tbaa !705
  br label %428, !dbg !3273

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2737, metadata !665), !dbg !2799
  %430 = and i8 %383, 7, !dbg !3277
  %431 = or i8 %430, 48, !dbg !3278
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2747, metadata !665), !dbg !2905
  br label %441, !dbg !3279

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !3280
  %434 = icmp eq i8 %433, 0, !dbg !3280
  br i1 %434, label %441, label %435, !dbg !3282

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !3283
  br i1 %436, label %437, label %439, !dbg !3288

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3290
  store i8 92, i8* %438, align 1, !dbg !3290, !tbaa !705
  br label %439, !dbg !3290

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2752, metadata !665), !dbg !2886
  br label %441, !dbg !3294

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2753, metadata !665), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2752, metadata !665), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2747, metadata !665), !dbg !2905
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2737, metadata !665), !dbg !2799
  %447 = add i64 %380, 1, !dbg !3295
  %448 = icmp ugt i64 %378, %447, !dbg !3297
  br i1 %448, label %449, label %541, !dbg !3298

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !3299
  %451 = icmp ne i8 %450, 0, !dbg !3299
  %452 = and i8 %446, 1, !dbg !3303
  %453 = icmp eq i8 %452, 0, !dbg !3303
  %454 = and i1 %451, %453, !dbg !3299
  br i1 %454, label %455, label %466, !dbg !3299

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !3305
  br i1 %456, label %457, label %459, !dbg !3310

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3312
  store i8 39, i8* %458, align 1, !dbg !3312, !tbaa !705
  br label %459, !dbg !3312

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !3314
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2737, metadata !665), !dbg !2799
  %461 = icmp ult i64 %460, %131, !dbg !3316
  br i1 %461, label %462, label %464, !dbg !3320

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3322
  store i8 39, i8* %463, align 1, !dbg !3322, !tbaa !705
  br label %464, !dbg !3322

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2744, metadata !665), !dbg !2807
  br label %466, !dbg !3326

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2737, metadata !665), !dbg !2799
  %469 = icmp ult i64 %467, %131, !dbg !3328
  br i1 %469, label %470, label %472, !dbg !3332

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3334
  store i8 %444, i8* %471, align 1, !dbg !3334, !tbaa !705
  br label %472, !dbg !3334

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !3336
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2736, metadata !665), !dbg !2874
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3338
  %475 = load i8, i8* %474, align 1, !dbg !3338, !tbaa !705
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2747, metadata !665), !dbg !2905
  br label %379, !dbg !3339, !llvm.loop !3341

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2728, metadata !665), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2754, metadata !665), !dbg !2888
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2753, metadata !665), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2752, metadata !665), !dbg !2886
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2747, metadata !665), !dbg !2905
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2745, metadata !665), !dbg !2808
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2730, metadata !665), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2738, metadata !665), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2736, metadata !665), !dbg !2874
  br i1 %107, label %488, label %487, !dbg !3344

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !3346

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !3347

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !3348
  %491 = zext i8 %490 to i64, !dbg !3348
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3350
  %493 = load i32, i32* %492, align 4, !dbg !3350, !tbaa !778
  %494 = and i8 %483, 31, !dbg !3351
  %495 = zext i8 %494 to i32, !dbg !3352
  %496 = shl i32 1, %495, !dbg !3353
  %497 = and i32 %493, %496, !dbg !3353
  %498 = icmp eq i32 %497, 0, !dbg !3353
  %499 = icmp eq i8 %157, 0, !dbg !3354
  %500 = and i1 %499, %498, !dbg !3355
  br i1 %500, label %542, label %503, !dbg !3355

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !3354
  br i1 %502, label %542, label %503, !dbg !3356

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2728, metadata !665), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2754, metadata !665), !dbg !2888
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2747, metadata !665), !dbg !2905
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2745, metadata !665), !dbg !2808
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2730, metadata !665), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2738, metadata !665), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2736, metadata !665), !dbg !2874
  br i1 %112, label %513, label %644, !dbg !3358

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2753, metadata !665), !dbg !2887
  %514 = and i8 %508, 1, !dbg !3361
  %515 = icmp eq i8 %514, 0, !dbg !3361
  %516 = and i1 %114, %515, !dbg !3364
  br i1 %516, label %517, label %533, !dbg !3364

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !3366
  br i1 %518, label %519, label %521, !dbg !3371

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3373
  store i8 39, i8* %520, align 1, !dbg !3373, !tbaa !705
  br label %521, !dbg !3373

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2737, metadata !665), !dbg !2799
  %523 = icmp ult i64 %522, %512, !dbg !3377
  br i1 %523, label %524, label %526, !dbg !3381

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3383
  store i8 36, i8* %525, align 1, !dbg !3383, !tbaa !705
  br label %526, !dbg !3383

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2737, metadata !665), !dbg !2799
  %528 = icmp ult i64 %527, %512, !dbg !3387
  br i1 %528, label %529, label %531, !dbg !3391

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3393
  store i8 39, i8* %530, align 1, !dbg !3393, !tbaa !705
  br label %531, !dbg !3393

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2744, metadata !665), !dbg !2807
  br label %533, !dbg !3397

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2737, metadata !665), !dbg !2799
  %536 = icmp ult i64 %534, %512, !dbg !3399
  br i1 %536, label %537, label %539, !dbg !3403

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3405
  store i8 92, i8* %538, align 1, !dbg !3405, !tbaa !705
  br label %539, !dbg !3405

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2728, metadata !665), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2754, metadata !665), !dbg !2888
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2753, metadata !665), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2747, metadata !665), !dbg !2905
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2745, metadata !665), !dbg !2808
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2730, metadata !665), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2738, metadata !665), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2736, metadata !665), !dbg !2874
  br label %569, !dbg !3409

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2791

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2728, metadata !665), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2754, metadata !665), !dbg !2888
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2753, metadata !665), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2747, metadata !665), !dbg !2905
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2745, metadata !665), !dbg !2808
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2730, metadata !665), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2738, metadata !665), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2736, metadata !665), !dbg !2874
  %553 = and i8 %547, 1, !dbg !3409
  %554 = icmp ne i8 %553, 0, !dbg !3409
  %555 = and i8 %550, 1, !dbg !3413
  %556 = icmp eq i8 %555, 0, !dbg !3413
  %557 = and i1 %554, %556, !dbg !3409
  br i1 %557, label %558, label %569, !dbg !3409

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !3415
  br i1 %559, label %560, label %562, !dbg !3420

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3422
  store i8 39, i8* %561, align 1, !dbg !3422, !tbaa !705
  br label %562, !dbg !3422

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2737, metadata !665), !dbg !2799
  %564 = icmp ult i64 %563, %552, !dbg !3426
  br i1 %564, label %565, label %567, !dbg !3430

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3432
  store i8 39, i8* %566, align 1, !dbg !3432, !tbaa !705
  br label %567, !dbg !3432

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2737, metadata !665), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2744, metadata !665), !dbg !2807
  br label %569, !dbg !3436

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2744, metadata !665), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2737, metadata !665), !dbg !2799
  %579 = icmp ult i64 %577, %570, !dbg !3438
  br i1 %579, label %580, label %582, !dbg !3442

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3444
  store i8 %572, i8* %581, align 1, !dbg !3444, !tbaa !705
  br label %582, !dbg !3444

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2737, metadata !665), !dbg !2799
  %584 = and i8 %571, 1, !dbg !3448
  %585 = icmp eq i8 %584, 0, !dbg !3448
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2746, metadata !665), !dbg !2809
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3450
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2746, metadata !665), !dbg !2809
  br label %587, !dbg !3451

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2736, metadata !665), !dbg !2874
  br label %123, !dbg !3454, !llvm.loop !3455

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3458
  %600 = and i1 %114, %599, !dbg !3460
  %601 = xor i1 %600, true, !dbg !3460
  %602 = or i1 %112, %601, !dbg !3460
  br i1 %602, label %603, label %648, !dbg !3460

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3461
  %605 = xor i1 %604, true, !dbg !3461
  %606 = and i8 %129, 1, !dbg !3463
  %607 = icmp eq i8 %606, 0, !dbg !3463
  %608 = or i1 %607, %605, !dbg !3461
  br i1 %608, label %618, label %609, !dbg !3461

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3465
  %611 = icmp eq i8 %610, 0, !dbg !3465
  br i1 %611, label %614, label %612, !dbg !3468

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3469
  br label %659, !dbg !3470

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3471
  %616 = icmp ne i64 %126, 0, !dbg !3473
  %617 = and i1 %616, %615, !dbg !3475
  br i1 %617, label %27, label %618, !dbg !3475

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3476
  %620 = and i1 %619, %112, !dbg !3478
  br i1 %620, label %621, label %638, !dbg !3478

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2739, metadata !665), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2737, metadata !665), !dbg !2799
  %622 = load i8, i8* %100, align 1, !dbg !3479, !tbaa !705
  %623 = icmp eq i8 %622, 0, !dbg !3483
  br i1 %623, label %638, label %624, !dbg !3483

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3485

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3485
  br i1 %629, label %630, label %632, !dbg !3489

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3491
  store i8 %626, i8* %631, align 1, !dbg !3491, !tbaa !705
  br label %632, !dbg !3491

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2737, metadata !665), !dbg !2799
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2739, metadata !665), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2739, metadata !665), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2737, metadata !665), !dbg !2799
  %635 = load i8, i8* %634, align 1, !dbg !3479, !tbaa !705
  %636 = icmp eq i8 %635, 0, !dbg !3483
  br i1 %636, label %637, label %625, !dbg !3483, !llvm.loop !3497

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2799

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2737, metadata !665), !dbg !2799
  %640 = icmp ult i64 %639, %131, !dbg !3500
  br i1 %640, label %641, label %659, !dbg !3502

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3503
  store i8 0, i8* %642, align 1, !dbg !3504, !tbaa !705
  br label %659, !dbg !3503

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2791

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2791

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2791

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2728, metadata !665), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2730, metadata !665), !dbg !2793
  %653 = icmp ne i32 %650, 2, !dbg !3505
  %654 = icmp eq i8 %104, 0, !dbg !3507
  %655 = or i1 %653, %654, !dbg !3509
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2731, metadata !665), !dbg !2794
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2731, metadata !665), !dbg !2794
  %657 = and i32 %5, -3, !dbg !3510
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3511
  br label %659, !dbg !3512

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3513
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3514 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3518, metadata !665), !dbg !3522
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3519, metadata !665), !dbg !3523
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3524
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3520, metadata !665), !dbg !3525
  %4 = icmp eq i8* %3, %0, !dbg !3526
  br i1 %4, label %5, label %75, !dbg !3528

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3529
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3521, metadata !665), !dbg !3530
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3531, metadata !665), !dbg !3547
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3545, metadata !665), !dbg !3550
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3546, metadata !665), !dbg !3551
  %7 = load i8, i8* %6, align 1, !tbaa !705
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3552
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3552

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3555, metadata !665), !dbg !3569
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3567, metadata !665), !dbg !3573
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3568, metadata !665), !dbg !3574
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !705
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3575
  %15 = icmp eq i32 %14, 84, !dbg !3575
  br i1 %15, label %16, label %72, !dbg !3575

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3578, metadata !665), !dbg !3591
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3589, metadata !665), !dbg !3595
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3590, metadata !665), !dbg !3596
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !705
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3597
  %21 = icmp eq i32 %20, 70, !dbg !3597
  br i1 %21, label %22, label %72, !dbg !3597

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3600, metadata !665), !dbg !3612
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3610, metadata !665), !dbg !3616
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3611, metadata !665), !dbg !3617
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !705
  %25 = icmp eq i8 %24, 45, !dbg !3618
  br i1 %25, label %26, label %72, !dbg !3621

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3623, metadata !665), !dbg !3634
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3632, metadata !665), !dbg !3638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3633, metadata !665), !dbg !3639
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !705
  %29 = icmp eq i8 %28, 56, !dbg !3640
  br i1 %29, label %30, label %72, !dbg !3643

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3645, metadata !665), !dbg !3655
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3653, metadata !665), !dbg !3659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3654, metadata !665), !dbg !3660
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !705
  %33 = icmp eq i8 %32, 0, !dbg !3661
  br i1 %33, label %34, label %72, !dbg !3664

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3666, !tbaa !705
  %36 = icmp eq i8 %35, 96, !dbg !3667
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !3666
  br label %75, !dbg !3668

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3555, metadata !665), !dbg !3669
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3567, metadata !665), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3568, metadata !665), !dbg !3674
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !705
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3675
  %43 = icmp eq i32 %42, 66, !dbg !3675
  br i1 %43, label %44, label %72, !dbg !3675

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3578, metadata !665), !dbg !3676
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3589, metadata !665), !dbg !3678
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3590, metadata !665), !dbg !3679
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !705
  %47 = icmp eq i8 %46, 49, !dbg !3680
  br i1 %47, label %48, label %72, !dbg !3682

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3600, metadata !665), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3610, metadata !665), !dbg !3686
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3611, metadata !665), !dbg !3687
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !705
  %51 = icmp eq i8 %50, 56, !dbg !3688
  br i1 %51, label %52, label %72, !dbg !3689

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3623, metadata !665), !dbg !3690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3632, metadata !665), !dbg !3692
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3633, metadata !665), !dbg !3693
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !705
  %55 = icmp eq i8 %54, 48, !dbg !3694
  br i1 %55, label %56, label %72, !dbg !3695

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3645, metadata !665), !dbg !3696
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3653, metadata !665), !dbg !3698
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3654, metadata !665), !dbg !3699
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !705
  %59 = icmp eq i8 %58, 51, !dbg !3700
  br i1 %59, label %60, label %72, !dbg !3701

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3702, metadata !665), !dbg !3711
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3709, metadata !665), !dbg !3715
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3710, metadata !665), !dbg !3716
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !705
  %63 = icmp eq i8 %62, 48, !dbg !3717
  br i1 %63, label %64, label %72, !dbg !3720

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3722, metadata !665), !dbg !3730
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3728, metadata !665), !dbg !3734
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3729, metadata !665), !dbg !3735
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !705
  %67 = icmp eq i8 %66, 0, !dbg !3736
  br i1 %67, label %68, label %72, !dbg !3739

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3740, !tbaa !705
  %70 = icmp eq i8 %69, 96, !dbg !3741
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !3740
  br label %75, !dbg !3742

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3743
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !3744
  br label %75, !dbg !3745

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3746
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3747 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3751, metadata !665), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3752, metadata !665), !dbg !3755
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3753, metadata !665), !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3757, metadata !665) #10, !dbg !3770
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3762, metadata !665) #10, !dbg !3772
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3763, metadata !665) #10, !dbg !3773
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3764, metadata !665) #10, !dbg !3774
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3775
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3775
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3765, metadata !665) #10, !dbg !3776
  %6 = tail call i32* @__errno_location() #1, !dbg !3777
  %7 = load i32, i32* %6, align 4, !dbg !3777, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3766, metadata !665) #10, !dbg !3778
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3779
  %9 = load i32, i32* %8, align 4, !dbg !3779, !tbaa !2659
  %10 = or i32 %9, 1, !dbg !3780
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3767, metadata !665) #10, !dbg !3781
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3782
  %12 = load i32, i32* %11, align 8, !dbg !3782, !tbaa !2597
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3783
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3784
  %15 = load i8*, i8** %14, align 8, !dbg !3784, !tbaa !2686
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3785
  %17 = load i8*, i8** %16, align 8, !dbg !3785, !tbaa !2689
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3786
  %19 = add i64 %18, 1, !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3768, metadata !665) #10, !dbg !3788
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3789, metadata !665) #10, !dbg !3794
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3796
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3769, metadata !665) #10, !dbg !3797
  %21 = load i32, i32* %11, align 8, !dbg !3798, !tbaa !2597
  %22 = load i8*, i8** %14, align 8, !dbg !3799, !tbaa !2686
  %23 = load i8*, i8** %16, align 8, !dbg !3800, !tbaa !2689
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3801
  store i32 %7, i32* %6, align 4, !dbg !3802, !tbaa !778
  ret i8* %20, !dbg !3803
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3758 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3757, metadata !665), !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3762, metadata !665), !dbg !3805
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3763, metadata !665), !dbg !3806
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3764, metadata !665), !dbg !3807
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3808
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3808
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3765, metadata !665), !dbg !3809
  %7 = tail call i32* @__errno_location() #1, !dbg !3810
  %8 = load i32, i32* %7, align 4, !dbg !3810, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3766, metadata !665), !dbg !3811
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3812
  %10 = load i32, i32* %9, align 4, !dbg !3812, !tbaa !2659
  %11 = icmp ne i64* %2, null, !dbg !3813
  %12 = xor i1 %11, true, !dbg !3813
  %13 = zext i1 %12 to i32, !dbg !3813
  %14 = or i32 %10, %13, !dbg !3814
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3767, metadata !665), !dbg !3815
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3816
  %16 = load i32, i32* %15, align 8, !dbg !3816, !tbaa !2597
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3817
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3818
  %19 = load i8*, i8** %18, align 8, !dbg !3818, !tbaa !2686
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3819
  %21 = load i8*, i8** %20, align 8, !dbg !3819, !tbaa !2689
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3820
  %23 = add i64 %22, 1, !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3768, metadata !665), !dbg !3822
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3789, metadata !665) #10, !dbg !3823
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3825
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3769, metadata !665), !dbg !3826
  %25 = load i32, i32* %15, align 8, !dbg !3827, !tbaa !2597
  %26 = load i8*, i8** %18, align 8, !dbg !3828, !tbaa !2686
  %27 = load i8*, i8** %20, align 8, !dbg !3829, !tbaa !2689
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3830
  store i32 %8, i32* %7, align 4, !dbg !3831, !tbaa !778
  br i1 %11, label %29, label %30, !dbg !3832

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3833, !tbaa !2058
  br label %30, !dbg !3835

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3836
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3837 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3841, !tbaa !673
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3839, metadata !665), !dbg !3842
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3840, metadata !665), !dbg !3843
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3840, metadata !665), !dbg !3843
  %2 = load i32, i32* @nslots, align 4, !dbg !3844, !tbaa !778
  %3 = icmp sgt i32 %2, 1, !dbg !3848
  br i1 %3, label %4, label %14, !dbg !3849

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3851

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3851
  %8 = load i8*, i8** %7, align 8, !dbg !3851, !tbaa !3852
  tail call void @free(i8* %8) #10, !dbg !3854
  %9 = add nuw i64 %6, 1, !dbg !3855
  %10 = load i32, i32* @nslots, align 4, !dbg !3844, !tbaa !778
  %11 = sext i32 %10 to i64, !dbg !3848
  %12 = icmp slt i64 %9, %11, !dbg !3848
  br i1 %12, label %5, label %13, !dbg !3849, !llvm.loop !3857

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3860

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3860
  %16 = load i8*, i8** %15, align 8, !dbg !3860, !tbaa !3852
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3862
  br i1 %17, label %19, label %18, !dbg !3863

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3864
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3866, !tbaa !3867
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3868, !tbaa !3852
  br label %19, !dbg !3869

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3870
  br i1 %20, label %23, label %21, !dbg !3872

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3873
  tail call void @free(i8* %22) #10, !dbg !3875
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3876, !tbaa !673
  br label %23, !dbg !3877

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3878, !tbaa !778
  ret void, !dbg !3879
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3880 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3884, metadata !665), !dbg !3886
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3885, metadata !665), !dbg !3887
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3888
  ret i8* %3, !dbg !3889
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3890 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3894, metadata !665), !dbg !3908
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3895, metadata !665), !dbg !3909
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3896, metadata !665), !dbg !3910
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3897, metadata !665), !dbg !3911
  %5 = tail call i32* @__errno_location() #1, !dbg !3912
  %6 = load i32, i32* %5, align 4, !dbg !3912, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3898, metadata !665), !dbg !3913
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3914, !tbaa !673
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3899, metadata !665), !dbg !3915
  %8 = icmp slt i32 %0, 0, !dbg !3916
  br i1 %8, label %9, label %10, !dbg !3918

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3919
  unreachable, !dbg !3919

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3920, !tbaa !778
  %12 = icmp sgt i32 %11, %0, !dbg !3921
  br i1 %12, label %34, label %13, !dbg !3922

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3923
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3924
  br i1 %15, label %16, label %17, !dbg !3926

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3927
  unreachable, !dbg !3927

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3928
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3928
  %20 = add nsw i32 %0, 1, !dbg !3930
  %21 = sext i32 %20 to i64, !dbg !3931
  %22 = shl nsw i64 %21, 4, !dbg !3932
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3933
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3933
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3899, metadata !665), !dbg !3915
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3934, !tbaa !673
  br i1 %14, label %25, label %26, !dbg !3935

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3936, !tbaa.struct !3938
  br label %26, !dbg !3939

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3940, !tbaa !778
  %28 = sext i32 %27 to i64, !dbg !3941
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3941
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3942
  %31 = sub nsw i32 %20, %27, !dbg !3943
  %32 = sext i32 %31 to i64, !dbg !3944
  %33 = shl nsw i64 %32, 4, !dbg !3945
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3942
  store i32 %20, i32* @nslots, align 4, !dbg !3946, !tbaa !778
  br label %34, !dbg !3947

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3899, metadata !665), !dbg !3915
  %36 = sext i32 %0 to i64, !dbg !3948
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3949
  %38 = load i64, i64* %37, align 8, !dbg !3949, !tbaa !3867
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3903, metadata !665), !dbg !3950
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3951
  %40 = load i8*, i8** %39, align 8, !dbg !3951, !tbaa !3852
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3905, metadata !665), !dbg !3952
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3953
  %42 = load i32, i32* %41, align 4, !dbg !3953, !tbaa !2659
  %43 = or i32 %42, 1, !dbg !3954
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3906, metadata !665), !dbg !3955
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3956
  %45 = load i32, i32* %44, align 8, !dbg !3956, !tbaa !2597
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3957
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3958
  %48 = load i8*, i8** %47, align 8, !dbg !3958, !tbaa !2686
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3959
  %50 = load i8*, i8** %49, align 8, !dbg !3959, !tbaa !2689
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3907, metadata !665), !dbg !3961
  %52 = icmp ugt i64 %38, %51, !dbg !3962
  br i1 %52, label %63, label %53, !dbg !3964

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3965
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3903, metadata !665), !dbg !3950
  store i64 %54, i64* %37, align 8, !dbg !3967, !tbaa !3867
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3968
  br i1 %55, label %57, label %56, !dbg !3970

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3971
  br label %57, !dbg !3971

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3789, metadata !665) #10, !dbg !3972
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3974
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3905, metadata !665), !dbg !3952
  store i8* %58, i8** %39, align 8, !dbg !3975, !tbaa !3852
  %59 = load i32, i32* %44, align 8, !dbg !3976, !tbaa !2597
  %60 = load i8*, i8** %47, align 8, !dbg !3977, !tbaa !2686
  %61 = load i8*, i8** %49, align 8, !dbg !3978, !tbaa !2689
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3979
  br label %63, !dbg !3980

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3905, metadata !665), !dbg !3952
  store i32 %6, i32* %5, align 4, !dbg !3981, !tbaa !778
  ret i8* %64, !dbg !3982
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3983 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3987, metadata !665), !dbg !3990
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3988, metadata !665), !dbg !3991
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3989, metadata !665), !dbg !3992
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3993
  ret i8* %4, !dbg !3994
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3995 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3999, metadata !665), !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3884, metadata !665) #10, !dbg !4001
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3885, metadata !665) #10, !dbg !4003
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4004
  ret i8* %2, !dbg !4005
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4006 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4010, metadata !665), !dbg !4012
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4011, metadata !665), !dbg !4013
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3987, metadata !665) #10, !dbg !4014
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3988, metadata !665) #10, !dbg !4016
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3989, metadata !665) #10, !dbg !4017
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4018
  ret i8* %3, !dbg !4019
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4020 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4028, metadata !4034), !dbg !4035
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4024, metadata !665), !dbg !4037
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4025, metadata !665), !dbg !4038
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4026, metadata !665), !dbg !4039
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4040
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4040
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4027, metadata !2311), !dbg !4041
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4033, metadata !665) #10, !dbg !4042
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4043
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4043
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4028, metadata !665) #10, !dbg !4035
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4028, metadata !4044) #10, !dbg !4035
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4035
  %8 = icmp eq i32 %1, 10, !dbg !4045
  br i1 %8, label %9, label %10, !dbg !4047

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4048, !noalias !4049
  unreachable, !dbg !4048

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4028, metadata !4044) #10, !dbg !4035
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4052
  store i32 %1, i32* %11, align 8, !dbg !4052, !alias.scope !4049
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4052
  %13 = bitcast i32* %12 to i8*, !dbg !4052
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4052
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4027, metadata !2311), !dbg !4041
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4054
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4055
  ret i8* %14, !dbg !4056
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4057 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4028, metadata !4034), !dbg !4066
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4061, metadata !665), !dbg !4068
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4062, metadata !665), !dbg !4069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4063, metadata !665), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4064, metadata !665), !dbg !4071
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4072
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4065, metadata !2311), !dbg !4073
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4033, metadata !665) #10, !dbg !4074
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4075
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4075
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4028, metadata !665) #10, !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4028, metadata !4044) #10, !dbg !4066
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4066
  %9 = icmp eq i32 %1, 10, !dbg !4076
  br i1 %9, label %10, label %11, !dbg !4077

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4078, !noalias !4079
  unreachable, !dbg !4078

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4028, metadata !4044) #10, !dbg !4066
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4082
  store i32 %1, i32* %12, align 8, !dbg !4082, !alias.scope !4079
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4082
  %14 = bitcast i32* %13 to i8*, !dbg !4082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !4082
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4065, metadata !2311), !dbg !4073
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4084
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4085
  ret i8* %15, !dbg !4086
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4087 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4028, metadata !4034), !dbg !4093
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4091, metadata !665), !dbg !4096
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4092, metadata !665), !dbg !4097
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4024, metadata !665) #10, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4025, metadata !665) #10, !dbg !4099
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4026, metadata !665) #10, !dbg !4100
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4101
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4101
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4027, metadata !2311) #10, !dbg !4102
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4033, metadata !665) #10, !dbg !4103
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4104
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4104
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4028, metadata !665) #10, !dbg !4093
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4028, metadata !4044) #10, !dbg !4093
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4093
  %7 = icmp eq i32 %0, 10, !dbg !4105
  br i1 %7, label %8, label %9, !dbg !4106

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !4107, !noalias !4108
  unreachable, !dbg !4107

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4028, metadata !4044) #10, !dbg !4093
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4111
  store i32 %0, i32* %10, align 8, !dbg !4111, !alias.scope !4108
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4111
  %12 = bitcast i32* %11 to i8*, !dbg !4111
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !4111
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4112
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4027, metadata !2311) #10, !dbg !4102
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4113
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4114
  ret i8* %13, !dbg !4115
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4116 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4028, metadata !4034), !dbg !4123
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4120, metadata !665), !dbg !4126
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4121, metadata !665), !dbg !4127
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4122, metadata !665), !dbg !4128
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4061, metadata !665) #10, !dbg !4129
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4062, metadata !665) #10, !dbg !4130
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4063, metadata !665) #10, !dbg !4131
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4064, metadata !665) #10, !dbg !4132
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4133
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4065, metadata !2311) #10, !dbg !4134
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4033, metadata !665) #10, !dbg !4135
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4136
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4136
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4028, metadata !665) #10, !dbg !4123
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4028, metadata !4044) #10, !dbg !4123
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4123
  %8 = icmp eq i32 %0, 10, !dbg !4137
  br i1 %8, label %9, label %10, !dbg !4138

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4139, !noalias !4140
  unreachable, !dbg !4139

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4028, metadata !4044) #10, !dbg !4123
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4143
  store i32 %0, i32* %11, align 8, !dbg !4143, !alias.scope !4140
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4143
  %13 = bitcast i32* %12 to i8*, !dbg !4143
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4143
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4144
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4065, metadata !2311) #10, !dbg !4134
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !4145
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4146
  ret i8* %14, !dbg !4147
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4148 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4152, metadata !665), !dbg !4156
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4153, metadata !665), !dbg !4157
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4154, metadata !665), !dbg !4158
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4159
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4160, !tbaa.struct !4161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4155, metadata !2311), !dbg !4162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2617, metadata !665), !dbg !4163
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2618, metadata !665), !dbg !4165
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2619, metadata !665), !dbg !4166
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2620, metadata !665), !dbg !4167
  %6 = lshr i8 %2, 5, !dbg !4168
  %7 = zext i8 %6 to i64, !dbg !4168
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4169
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2621, metadata !665), !dbg !4170
  %9 = and i8 %2, 31, !dbg !4171
  %10 = zext i8 %9 to i32, !dbg !4172
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2623, metadata !665), !dbg !4173
  %11 = load i32, i32* %8, align 4, !dbg !4174, !tbaa !778
  %12 = lshr i32 %11, %10, !dbg !4175
  %13 = and i32 %12, 1, !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2624, metadata !665), !dbg !4177
  %14 = xor i32 %13, 1, !dbg !4178
  %15 = shl i32 %14, %10, !dbg !4179
  %16 = xor i32 %15, %11, !dbg !4180
  store i32 %16, i32* %8, align 4, !dbg !4180, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4155, metadata !2311), !dbg !4162
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4181
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4182
  ret i8* %17, !dbg !4183
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4184 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4188, metadata !665), !dbg !4190
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4189, metadata !665), !dbg !4191
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4152, metadata !665) #10, !dbg !4192
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4153, metadata !665) #10, !dbg !4194
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4154, metadata !665) #10, !dbg !4195
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4196
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4197, !tbaa.struct !4161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4155, metadata !2311) #10, !dbg !4198
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2617, metadata !665) #10, !dbg !4199
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2618, metadata !665) #10, !dbg !4201
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2619, metadata !665) #10, !dbg !4202
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2620, metadata !665) #10, !dbg !4203
  %5 = lshr i8 %1, 5, !dbg !4204
  %6 = zext i8 %5 to i64, !dbg !4204
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2621, metadata !665) #10, !dbg !4206
  %8 = and i8 %1, 31, !dbg !4207
  %9 = zext i8 %8 to i32, !dbg !4208
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2623, metadata !665) #10, !dbg !4209
  %10 = load i32, i32* %7, align 4, !dbg !4210, !tbaa !778
  %11 = lshr i32 %10, %9, !dbg !4211
  %12 = and i32 %11, 1, !dbg !4212
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2624, metadata !665) #10, !dbg !4213
  %13 = xor i32 %12, 1, !dbg !4214
  %14 = shl i32 %13, %9, !dbg !4215
  %15 = xor i32 %14, %10, !dbg !4216
  store i32 %15, i32* %7, align 4, !dbg !4216, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4155, metadata !2311) #10, !dbg !4198
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !4217
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4218
  ret i8* %16, !dbg !4219
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4220 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4222, metadata !665), !dbg !4223
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4188, metadata !665) #10, !dbg !4224
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4189, metadata !665) #10, !dbg !4226
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4152, metadata !665) #10, !dbg !4227
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4153, metadata !665) #10, !dbg !4229
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4154, metadata !665) #10, !dbg !4230
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4231
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !4231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4232, !tbaa.struct !4161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4155, metadata !2311) #10, !dbg !4233
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2617, metadata !665) #10, !dbg !4234
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2618, metadata !665) #10, !dbg !4236
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2619, metadata !665) #10, !dbg !4237
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2620, metadata !665) #10, !dbg !4238
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4239
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2621, metadata !665) #10, !dbg !4240
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2623, metadata !665) #10, !dbg !4241
  %5 = load i32, i32* %4, align 4, !dbg !4242, !tbaa !778
  %6 = or i32 %5, 67108864, !dbg !4243
  store i32 %6, i32* %4, align 4, !dbg !4243, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4155, metadata !2311) #10, !dbg !4233
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !4244
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !4245
  ret i8* %7, !dbg !4246
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4247 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4249, metadata !665), !dbg !4251
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4250, metadata !665), !dbg !4252
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4152, metadata !665) #10, !dbg !4253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4153, metadata !665) #10, !dbg !4255
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4154, metadata !665) #10, !dbg !4256
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4257
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4258, !tbaa.struct !4161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4155, metadata !2311) #10, !dbg !4259
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2617, metadata !665) #10, !dbg !4260
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2618, metadata !665) #10, !dbg !4262
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2619, metadata !665) #10, !dbg !4263
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2620, metadata !665) #10, !dbg !4264
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4265
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2621, metadata !665) #10, !dbg !4266
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2623, metadata !665) #10, !dbg !4267
  %6 = load i32, i32* %5, align 4, !dbg !4268, !tbaa !778
  %7 = or i32 %6, 67108864, !dbg !4269
  store i32 %7, i32* %5, align 4, !dbg !4269, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4155, metadata !2311) #10, !dbg !4259
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !4270
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4271
  ret i8* %8, !dbg !4272
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4273 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4028, metadata !4034), !dbg !4279
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4275, metadata !665), !dbg !4281
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4276, metadata !665), !dbg !4282
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4277, metadata !665), !dbg !4283
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4284
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4284
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4033, metadata !665) #10, !dbg !4285
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4286
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4286
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4028, metadata !665) #10, !dbg !4279
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4028, metadata !4044) #10, !dbg !4279
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4279
  %9 = icmp eq i32 %1, 10, !dbg !4287
  br i1 %9, label %10, label %11, !dbg !4288

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4289, !noalias !4290
  unreachable, !dbg !4289

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4028, metadata !4044) #10, !dbg !4279
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4293
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4293
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4294
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4295
  store i32 %1, i32* %13, align 8, !dbg !4295
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4295
  %15 = bitcast i32* %14 to i8*, !dbg !4295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4295
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4278, metadata !2311), !dbg !4296
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2617, metadata !665), !dbg !4297
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2618, metadata !665), !dbg !4299
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2619, metadata !665), !dbg !4300
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2620, metadata !665), !dbg !4301
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4302
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2621, metadata !665), !dbg !4303
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2623, metadata !665), !dbg !4304
  %17 = load i32, i32* %16, align 4, !dbg !4305, !tbaa !778
  %18 = or i32 %17, 67108864, !dbg !4306
  store i32 %18, i32* %16, align 4, !dbg !4306, !tbaa !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4278, metadata !2311), !dbg !4296
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4307
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4308
  ret i8* %19, !dbg !4309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4310 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4314, metadata !665), !dbg !4318
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4315, metadata !665), !dbg !4319
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4316, metadata !665), !dbg !4320
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4317, metadata !665), !dbg !4321
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4322, metadata !665) #10, !dbg !4332
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4327, metadata !665) #10, !dbg !4334
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4328, metadata !665) #10, !dbg !4335
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4329, metadata !665) #10, !dbg !4336
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4330, metadata !665) #10, !dbg !4337
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4338
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4339, !tbaa.struct !4161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4331, metadata !2311) #10, !dbg !4340
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2667, metadata !665) #10, !dbg !4341
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2668, metadata !665) #10, !dbg !4343
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2669, metadata !665) #10, !dbg !4344
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2667, metadata !665) #10, !dbg !4341
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2667, metadata !665) #10, !dbg !4341
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4345
  store i32 10, i32* %7, align 8, !dbg !4346, !tbaa !2597
  %8 = icmp ne i8* %1, null, !dbg !4347
  %9 = icmp ne i8* %2, null, !dbg !4348
  %10 = and i1 %8, %9, !dbg !4349
  br i1 %10, label %12, label %11, !dbg !4349

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4350
  unreachable, !dbg !4350

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4351
  store i8* %1, i8** %13, align 8, !dbg !4352, !tbaa !2686
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4353
  store i8* %2, i8** %14, align 8, !dbg !4354, !tbaa !2689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4331, metadata !2311) #10, !dbg !4340
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4355
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4356
  ret i8* %15, !dbg !4357
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4323 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4322, metadata !665), !dbg !4358
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4327, metadata !665), !dbg !4359
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4328, metadata !665), !dbg !4360
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4329, metadata !665), !dbg !4361
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4330, metadata !665), !dbg !4362
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4363
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4364, !tbaa.struct !4161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4331, metadata !2311), !dbg !4365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2667, metadata !665) #10, !dbg !4366
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2668, metadata !665) #10, !dbg !4368
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2669, metadata !665) #10, !dbg !4369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2667, metadata !665) #10, !dbg !4366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2667, metadata !665) #10, !dbg !4366
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4370
  store i32 10, i32* %8, align 8, !dbg !4371, !tbaa !2597
  %9 = icmp ne i8* %1, null, !dbg !4372
  %10 = icmp ne i8* %2, null, !dbg !4373
  %11 = and i1 %9, %10, !dbg !4374
  br i1 %11, label %13, label %12, !dbg !4374

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !4375
  unreachable, !dbg !4375

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4376
  store i8* %1, i8** %14, align 8, !dbg !4377, !tbaa !2686
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4378
  store i8* %2, i8** %15, align 8, !dbg !4379, !tbaa !2689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4331, metadata !2311), !dbg !4365
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4380
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4381
  ret i8* %16, !dbg !4382
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4383 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4387, metadata !665), !dbg !4390
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4388, metadata !665), !dbg !4391
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4389, metadata !665), !dbg !4392
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4314, metadata !665) #10, !dbg !4393
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4315, metadata !665) #10, !dbg !4395
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4316, metadata !665) #10, !dbg !4396
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4317, metadata !665) #10, !dbg !4397
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4322, metadata !665) #10, !dbg !4398
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4327, metadata !665) #10, !dbg !4400
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4328, metadata !665) #10, !dbg !4401
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4329, metadata !665) #10, !dbg !4402
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4330, metadata !665) #10, !dbg !4403
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4404
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4405, !tbaa.struct !4161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4331, metadata !2311) #10, !dbg !4406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2667, metadata !665) #10, !dbg !4407
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2668, metadata !665) #10, !dbg !4409
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2669, metadata !665) #10, !dbg !4410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2667, metadata !665) #10, !dbg !4407
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2667, metadata !665) #10, !dbg !4407
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4411
  store i32 10, i32* %6, align 8, !dbg !4412, !tbaa !2597
  %7 = icmp ne i8* %0, null, !dbg !4413
  %8 = icmp ne i8* %1, null, !dbg !4414
  %9 = and i1 %7, %8, !dbg !4415
  br i1 %9, label %11, label %10, !dbg !4415

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4416
  unreachable, !dbg !4416

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4417
  store i8* %0, i8** %12, align 8, !dbg !4418, !tbaa !2686
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4419
  store i8* %1, i8** %13, align 8, !dbg !4420, !tbaa !2689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4331, metadata !2311) #10, !dbg !4406
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4421
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4422
  ret i8* %14, !dbg !4423
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4424 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4428, metadata !665), !dbg !4432
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4429, metadata !665), !dbg !4433
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4430, metadata !665), !dbg !4434
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4431, metadata !665), !dbg !4435
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4322, metadata !665) #10, !dbg !4436
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4327, metadata !665) #10, !dbg !4438
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4328, metadata !665) #10, !dbg !4439
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4329, metadata !665) #10, !dbg !4440
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4330, metadata !665) #10, !dbg !4441
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4442
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4442
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4443, !tbaa.struct !4161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4331, metadata !2311) #10, !dbg !4444
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2667, metadata !665) #10, !dbg !4445
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2668, metadata !665) #10, !dbg !4447
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2669, metadata !665) #10, !dbg !4448
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2667, metadata !665) #10, !dbg !4445
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2667, metadata !665) #10, !dbg !4445
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4449
  store i32 10, i32* %7, align 8, !dbg !4450, !tbaa !2597
  %8 = icmp ne i8* %0, null, !dbg !4451
  %9 = icmp ne i8* %1, null, !dbg !4452
  %10 = and i1 %8, %9, !dbg !4453
  br i1 %10, label %12, label %11, !dbg !4453

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4454
  unreachable, !dbg !4454

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4455
  store i8* %0, i8** %13, align 8, !dbg !4456, !tbaa !2686
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4457
  store i8* %1, i8** %14, align 8, !dbg !4458, !tbaa !2689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4331, metadata !2311) #10, !dbg !4444
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !4459
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4460
  ret i8* %15, !dbg !4461
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4462 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4466, metadata !665), !dbg !4469
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4467, metadata !665), !dbg !4470
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4468, metadata !665), !dbg !4471
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4472
  ret i8* %4, !dbg !4473
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4474 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4478, metadata !665), !dbg !4480
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4479, metadata !665), !dbg !4481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4466, metadata !665) #10, !dbg !4482
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4467, metadata !665) #10, !dbg !4484
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4468, metadata !665) #10, !dbg !4485
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4486
  ret i8* %3, !dbg !4487
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4488 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4492, metadata !665), !dbg !4494
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4493, metadata !665), !dbg !4495
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4466, metadata !665) #10, !dbg !4496
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4467, metadata !665) #10, !dbg !4498
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4468, metadata !665) #10, !dbg !4499
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4500
  ret i8* %3, !dbg !4501
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4502 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4506, metadata !665), !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4492, metadata !665) #10, !dbg !4508
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4493, metadata !665) #10, !dbg !4510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4466, metadata !665) #10, !dbg !4511
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4467, metadata !665) #10, !dbg !4513
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4468, metadata !665) #10, !dbg !4514
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4515
  ret i8* %2, !dbg !4516
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @strintcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #11 !dbg !4517 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4522, metadata !665), !dbg !4524
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4523, metadata !665), !dbg !4525
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4526, metadata !665), !dbg !4540
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4534, metadata !665), !dbg !4542
  %3 = load i8, i8* %0, align 1, !dbg !4543, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4535, metadata !665), !dbg !4544
  %4 = load i8, i8* %1, align 1, !dbg !4545, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4536, metadata !665), !dbg !4546
  %5 = icmp eq i8 %3, 45, !dbg !4547
  br i1 %5, label %6, label %105, !dbg !4549, !llvm.loop !4550

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !4554

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i8* [ %9, %7 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4532, metadata !665), !dbg !4554
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4555
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4532, metadata !665), !dbg !4554
  %10 = load i8, i8* %9, align 1, !dbg !4556, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4535, metadata !665), !dbg !4544
  %11 = icmp eq i8 %10, 48, !dbg !4557
  br i1 %11, label %7, label %12, !dbg !4558

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %4, 45, !dbg !4559
  br i1 %13, label %14, label %15, !dbg !4561, !llvm.loop !4562

; <label>:14:                                     ; preds = %12
  br label %34, !dbg !4565

; <label>:15:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4535, metadata !665), !dbg !4544
  %16 = zext i8 %10 to i32, !dbg !4566
  %17 = add nsw i32 %16, -48, !dbg !4566
  %18 = icmp ult i32 %17, 10, !dbg !4566
  br i1 %18, label %220, label %19, !dbg !4569

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4533, metadata !665), !dbg !4565
  %20 = icmp eq i8 %4, 48, !dbg !4570
  br i1 %20, label %21, label %28, !dbg !4572

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !4573

; <label>:22:                                     ; preds = %21, %22
  %23 = phi i8* [ %24, %22 ], [ %1, %21 ]
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !4573
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4533, metadata !665), !dbg !4565
  %25 = load i8, i8* %24, align 1, !dbg !4574, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4533, metadata !665), !dbg !4565
  %26 = icmp eq i8 %25, 48, !dbg !4570
  br i1 %26, label %22, label %27, !dbg !4572, !llvm.loop !4575

; <label>:27:                                     ; preds = %22
  br label %28, !dbg !4546

; <label>:28:                                     ; preds = %27, %19
  %29 = phi i8 [ %4, %19 ], [ %25, %27 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !4536, metadata !665), !dbg !4546
  %30 = zext i8 %29 to i32, !dbg !4578
  %31 = add nsw i32 %30, -48, !dbg !4578
  %32 = icmp ult i32 %31, 10, !dbg !4578
  %33 = sext i1 %32 to i32, !dbg !4579
  br label %220, !dbg !4580

; <label>:34:                                     ; preds = %14, %34
  %35 = phi i8* [ %36, %34 ], [ %1, %14 ]
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !4533, metadata !665), !dbg !4565
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !4581
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !4533, metadata !665), !dbg !4565
  %37 = load i8, i8* %36, align 1, !dbg !4582, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !4536, metadata !665), !dbg !4546
  %38 = icmp eq i8 %37, 48, !dbg !4583
  br i1 %38, label %34, label %39, !dbg !4584

; <label>:39:                                     ; preds = %34
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4532, metadata !665), !dbg !4554
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !4533, metadata !665), !dbg !4565
  %40 = zext i8 %10 to i32, !dbg !4585
  %41 = icmp eq i8 %37, %10, !dbg !4587
  %42 = add nsw i32 %40, -48, !dbg !4588
  %43 = icmp ult i32 %42, 10, !dbg !4588
  %44 = and i1 %43, %41, !dbg !4590
  br i1 %44, label %45, label %59, !dbg !4590, !llvm.loop !4591

; <label>:45:                                     ; preds = %39
  br label %46, !dbg !4554

; <label>:46:                                     ; preds = %45, %46
  %47 = phi i8* [ %49, %46 ], [ %9, %45 ]
  %48 = phi i8* [ %51, %46 ], [ %36, %45 ]
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !4532, metadata !665), !dbg !4554
  %49 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !4595
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !4532, metadata !665), !dbg !4554
  %50 = load i8, i8* %49, align 1, !dbg !4596, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %50, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !4533, metadata !665), !dbg !4565
  %51 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !4597
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4533, metadata !665), !dbg !4565
  %52 = load i8, i8* %51, align 1, !dbg !4598, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %52, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8 %52, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8 %50, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !4532, metadata !665), !dbg !4554
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4533, metadata !665), !dbg !4565
  %53 = zext i8 %50 to i32, !dbg !4585
  %54 = icmp eq i8 %52, %50, !dbg !4587
  %55 = add nsw i32 %53, -48, !dbg !4588
  %56 = icmp ult i32 %55, 10, !dbg !4588
  %57 = and i1 %54, %56, !dbg !4590
  br i1 %57, label %46, label %58, !dbg !4590, !llvm.loop !4591

; <label>:58:                                     ; preds = %46
  br label %59, !dbg !4599

; <label>:59:                                     ; preds = %58, %39
  %60 = phi i8* [ %36, %39 ], [ %51, %58 ]
  %61 = phi i8* [ %9, %39 ], [ %49, %58 ]
  %62 = phi i8 [ %10, %39 ], [ %50, %58 ]
  %63 = phi i8 [ %37, %39 ], [ %52, %58 ]
  %64 = phi i32 [ %40, %39 ], [ %53, %58 ]
  %65 = zext i8 %63 to i32, !dbg !4599
  %66 = sub nsw i32 %65, %64, !dbg !4600
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !4537, metadata !665), !dbg !4601
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4538, metadata !665), !dbg !4602
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4538, metadata !665), !dbg !4602
  tail call void @llvm.dbg.value(metadata i8 %62, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !4532, metadata !665), !dbg !4554
  %67 = zext i8 %62 to i32, !dbg !4603
  %68 = add nsw i32 %67, -48, !dbg !4603
  %69 = icmp ult i32 %68, 10, !dbg !4603
  br i1 %69, label %70, label %72, !dbg !4607, !llvm.loop !4609

; <label>:70:                                     ; preds = %59
  br label %77, !dbg !4554

; <label>:71:                                     ; preds = %77
  br label %72, !dbg !4612

; <label>:72:                                     ; preds = %71, %59
  %73 = phi i64 [ 0, %59 ], [ %82, %71 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4539, metadata !665), !dbg !4612
  tail call void @llvm.dbg.value(metadata i8 %63, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !4533, metadata !665), !dbg !4565
  %74 = add nsw i32 %65, -48, !dbg !4613
  %75 = icmp ult i32 %74, 10, !dbg !4613
  br i1 %75, label %76, label %96, !dbg !4617, !llvm.loop !4619

; <label>:76:                                     ; preds = %72
  br label %86, !dbg !4565

; <label>:77:                                     ; preds = %70, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %70 ]
  %79 = phi i8* [ %80, %77 ], [ %61, %70 ]
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !4532, metadata !665), !dbg !4554
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !4622
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !4532, metadata !665), !dbg !4554
  %81 = load i8, i8* %80, align 1, !dbg !4623, !tbaa !705
  %82 = add i64 %78, 1, !dbg !4624
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4538, metadata !665), !dbg !4602
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4538, metadata !665), !dbg !4602
  tail call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !4532, metadata !665), !dbg !4554
  %83 = zext i8 %81 to i32, !dbg !4603
  %84 = add nsw i32 %83, -48, !dbg !4603
  %85 = icmp ult i32 %84, 10, !dbg !4603
  br i1 %85, label %77, label %71, !dbg !4607, !llvm.loop !4626

; <label>:86:                                     ; preds = %76, %86
  %87 = phi i64 [ %91, %86 ], [ 0, %76 ]
  %88 = phi i8* [ %89, %86 ], [ %60, %76 ]
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !4533, metadata !665), !dbg !4565
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !4629
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !4533, metadata !665), !dbg !4565
  %90 = load i8, i8* %89, align 1, !dbg !4630, !tbaa !705
  %91 = add i64 %87, 1, !dbg !4631
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !4539, metadata !665), !dbg !4612
  tail call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !4539, metadata !665), !dbg !4612
  tail call void @llvm.dbg.value(metadata i8 %90, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !4533, metadata !665), !dbg !4565
  %92 = zext i8 %90 to i32, !dbg !4613
  %93 = add nsw i32 %92, -48, !dbg !4613
  %94 = icmp ult i32 %93, 10, !dbg !4613
  br i1 %94, label %86, label %95, !dbg !4617, !llvm.loop !4633

; <label>:95:                                     ; preds = %86
  br label %96, !dbg !4636

; <label>:96:                                     ; preds = %95, %72
  %97 = phi i64 [ 0, %72 ], [ %91, %95 ]
  %98 = icmp eq i64 %73, %97, !dbg !4636
  br i1 %98, label %102, label %99, !dbg !4638

; <label>:99:                                     ; preds = %96
  %100 = icmp ult i64 %73, %97, !dbg !4639
  %101 = select i1 %100, i32 1, i32 -1, !dbg !4640
  br label %220, !dbg !4641

; <label>:102:                                    ; preds = %96
  %103 = icmp eq i64 %73, 0, !dbg !4642
  %104 = select i1 %103, i32 0, i32 %66, !dbg !4644
  br label %220, !dbg !4644

; <label>:105:                                    ; preds = %2
  %106 = icmp eq i8 %4, 45, !dbg !4645
  br i1 %106, label %107, label %108, !dbg !4647, !llvm.loop !4648

; <label>:107:                                    ; preds = %105
  br label %111, !dbg !4565

; <label>:108:                                    ; preds = %105
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4532, metadata !665), !dbg !4554
  %109 = icmp eq i8 %3, 48, !dbg !4652
  br i1 %109, label %110, label %136, !dbg !4655

; <label>:110:                                    ; preds = %108
  br label %141, !dbg !4656

; <label>:111:                                    ; preds = %107, %111
  %112 = phi i8* [ %113, %111 ], [ %1, %107 ]
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !4533, metadata !665), !dbg !4565
  %113 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !4657
  tail call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4533, metadata !665), !dbg !4565
  %114 = load i8, i8* %113, align 1, !dbg !4658, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %114, i64 0, metadata !4536, metadata !665), !dbg !4546
  %115 = icmp eq i8 %114, 48, !dbg !4659
  br i1 %115, label %111, label %116, !dbg !4660

; <label>:116:                                    ; preds = %111
  tail call void @llvm.dbg.value(metadata i8 %114, i64 0, metadata !4536, metadata !665), !dbg !4546
  %117 = zext i8 %114 to i32, !dbg !4661
  %118 = add nsw i32 %117, -48, !dbg !4661
  %119 = icmp ult i32 %118, 10, !dbg !4661
  br i1 %119, label %220, label %120, !dbg !4663

; <label>:120:                                    ; preds = %116
  tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4532, metadata !665), !dbg !4554
  %121 = icmp eq i8 %3, 48, !dbg !4664
  br i1 %121, label %122, label %129, !dbg !4666

; <label>:122:                                    ; preds = %120
  br label %123, !dbg !4667

; <label>:123:                                    ; preds = %122, %123
  %124 = phi i8* [ %125, %123 ], [ %0, %122 ]
  %125 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !4667
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !4532, metadata !665), !dbg !4554
  %126 = load i8, i8* %125, align 1, !dbg !4668, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %126, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8 %126, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !4532, metadata !665), !dbg !4554
  %127 = icmp eq i8 %126, 48, !dbg !4664
  br i1 %127, label %123, label %128, !dbg !4666, !llvm.loop !4669

; <label>:128:                                    ; preds = %123
  br label %129, !dbg !4544

; <label>:129:                                    ; preds = %128, %120
  %130 = phi i8 [ %3, %120 ], [ %126, %128 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !4535, metadata !665), !dbg !4544
  %131 = zext i8 %130 to i32, !dbg !4672
  %132 = add nsw i32 %131, -48, !dbg !4672
  %133 = icmp ult i32 %132, 10, !dbg !4672
  %134 = zext i1 %133 to i32, !dbg !4672
  br label %220, !dbg !4673

; <label>:135:                                    ; preds = %141
  br label %136, !dbg !4546

; <label>:136:                                    ; preds = %135, %108
  %137 = phi i8* [ %0, %108 ], [ %143, %135 ]
  %138 = phi i8 [ %3, %108 ], [ %144, %135 ]
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4533, metadata !665), !dbg !4565
  %139 = icmp eq i8 %4, 48, !dbg !4674
  br i1 %139, label %140, label %147, !dbg !4675

; <label>:140:                                    ; preds = %136
  br label %156, !dbg !4676

; <label>:141:                                    ; preds = %110, %141
  %142 = phi i8* [ %143, %141 ], [ %0, %110 ]
  %143 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !4656
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !4532, metadata !665), !dbg !4554
  %144 = load i8, i8* %143, align 1, !dbg !4677, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8 %144, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !4532, metadata !665), !dbg !4554
  %145 = icmp eq i8 %144, 48, !dbg !4652
  br i1 %145, label %141, label %135, !dbg !4655, !llvm.loop !4678

; <label>:146:                                    ; preds = %156
  br label %147, !dbg !4546

; <label>:147:                                    ; preds = %146, %136
  %148 = phi i8* [ %1, %136 ], [ %158, %146 ]
  %149 = phi i8 [ %4, %136 ], [ %159, %146 ]
  tail call void @llvm.dbg.value(metadata i8 %149, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8 %138, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !4532, metadata !665), !dbg !4554
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !4533, metadata !665), !dbg !4565
  %150 = zext i8 %138 to i32, !dbg !4681
  %151 = icmp eq i8 %138, %149, !dbg !4682
  %152 = add nsw i32 %150, -48, !dbg !4683
  %153 = icmp ult i32 %152, 10, !dbg !4683
  %154 = and i1 %153, %151, !dbg !4685
  br i1 %154, label %155, label %174, !dbg !4685, !llvm.loop !4686

; <label>:155:                                    ; preds = %147
  br label %161, !dbg !4554

; <label>:156:                                    ; preds = %140, %156
  %157 = phi i8* [ %158, %156 ], [ %1, %140 ]
  %158 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !4676
  tail call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4533, metadata !665), !dbg !4565
  %159 = load i8, i8* %158, align 1, !dbg !4690, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4533, metadata !665), !dbg !4565
  %160 = icmp eq i8 %159, 48, !dbg !4674
  br i1 %160, label %156, label %146, !dbg !4675, !llvm.loop !4691

; <label>:161:                                    ; preds = %155, %161
  %162 = phi i8* [ %164, %161 ], [ %137, %155 ]
  %163 = phi i8* [ %166, %161 ], [ %148, %155 ]
  tail call void @llvm.dbg.value(metadata i8* %162, i64 0, metadata !4532, metadata !665), !dbg !4554
  %164 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !4694
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !4532, metadata !665), !dbg !4554
  %165 = load i8, i8* %164, align 1, !dbg !4695, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %165, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !4533, metadata !665), !dbg !4565
  %166 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !4696
  tail call void @llvm.dbg.value(metadata i8* %166, i64 0, metadata !4533, metadata !665), !dbg !4565
  %167 = load i8, i8* %166, align 1, !dbg !4697, !tbaa !705
  tail call void @llvm.dbg.value(metadata i8 %167, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8 %167, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8 %165, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %164, i64 0, metadata !4532, metadata !665), !dbg !4554
  tail call void @llvm.dbg.value(metadata i8* %166, i64 0, metadata !4533, metadata !665), !dbg !4565
  %168 = zext i8 %165 to i32, !dbg !4681
  %169 = icmp eq i8 %165, %167, !dbg !4682
  %170 = add nsw i32 %168, -48, !dbg !4683
  %171 = icmp ult i32 %170, 10, !dbg !4683
  %172 = and i1 %169, %171, !dbg !4685
  br i1 %172, label %161, label %173, !dbg !4685, !llvm.loop !4686

; <label>:173:                                    ; preds = %161
  br label %174, !dbg !4698

; <label>:174:                                    ; preds = %173, %147
  %175 = phi i8* [ %148, %147 ], [ %166, %173 ]
  %176 = phi i8* [ %137, %147 ], [ %164, %173 ]
  %177 = phi i8 [ %138, %147 ], [ %165, %173 ]
  %178 = phi i8 [ %149, %147 ], [ %167, %173 ]
  %179 = phi i32 [ %150, %147 ], [ %168, %173 ]
  %180 = zext i8 %178 to i32, !dbg !4698
  %181 = sub nsw i32 %179, %180, !dbg !4699
  tail call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !4537, metadata !665), !dbg !4601
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4538, metadata !665), !dbg !4602
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4538, metadata !665), !dbg !4602
  tail call void @llvm.dbg.value(metadata i8 %177, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !4532, metadata !665), !dbg !4554
  %182 = zext i8 %177 to i32, !dbg !4700
  %183 = add nsw i32 %182, -48, !dbg !4700
  %184 = icmp ult i32 %183, 10, !dbg !4700
  br i1 %184, label %185, label %187, !dbg !4704, !llvm.loop !4706

; <label>:185:                                    ; preds = %174
  br label %192, !dbg !4554

; <label>:186:                                    ; preds = %192
  br label %187, !dbg !4612

; <label>:187:                                    ; preds = %186, %174
  %188 = phi i64 [ 0, %174 ], [ %197, %186 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4539, metadata !665), !dbg !4612
  tail call void @llvm.dbg.value(metadata i8 %178, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %175, i64 0, metadata !4533, metadata !665), !dbg !4565
  %189 = add nsw i32 %180, -48, !dbg !4709
  %190 = icmp ult i32 %189, 10, !dbg !4709
  br i1 %190, label %191, label %211, !dbg !4713, !llvm.loop !4715

; <label>:191:                                    ; preds = %187
  br label %201, !dbg !4565

; <label>:192:                                    ; preds = %185, %192
  %193 = phi i64 [ %197, %192 ], [ 0, %185 ]
  %194 = phi i8* [ %195, %192 ], [ %176, %185 ]
  tail call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !4532, metadata !665), !dbg !4554
  %195 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !4718
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !4532, metadata !665), !dbg !4554
  %196 = load i8, i8* %195, align 1, !dbg !4719, !tbaa !705
  %197 = add i64 %193, 1, !dbg !4720
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !4538, metadata !665), !dbg !4602
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !4538, metadata !665), !dbg !4602
  tail call void @llvm.dbg.value(metadata i8 %196, i64 0, metadata !4535, metadata !665), !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !4532, metadata !665), !dbg !4554
  %198 = zext i8 %196 to i32, !dbg !4700
  %199 = add nsw i32 %198, -48, !dbg !4700
  %200 = icmp ult i32 %199, 10, !dbg !4700
  br i1 %200, label %192, label %186, !dbg !4704, !llvm.loop !4722

; <label>:201:                                    ; preds = %191, %201
  %202 = phi i64 [ %206, %201 ], [ 0, %191 ]
  %203 = phi i8* [ %204, %201 ], [ %175, %191 ]
  tail call void @llvm.dbg.value(metadata i8* %203, i64 0, metadata !4533, metadata !665), !dbg !4565
  %204 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !4725
  tail call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !4533, metadata !665), !dbg !4565
  %205 = load i8, i8* %204, align 1, !dbg !4726, !tbaa !705
  %206 = add i64 %202, 1, !dbg !4727
  tail call void @llvm.dbg.value(metadata i64 %206, i64 0, metadata !4539, metadata !665), !dbg !4612
  tail call void @llvm.dbg.value(metadata i64 %206, i64 0, metadata !4539, metadata !665), !dbg !4612
  tail call void @llvm.dbg.value(metadata i8 %205, i64 0, metadata !4536, metadata !665), !dbg !4546
  tail call void @llvm.dbg.value(metadata i8* %204, i64 0, metadata !4533, metadata !665), !dbg !4565
  %207 = zext i8 %205 to i32, !dbg !4709
  %208 = add nsw i32 %207, -48, !dbg !4709
  %209 = icmp ult i32 %208, 10, !dbg !4709
  br i1 %209, label %201, label %210, !dbg !4713, !llvm.loop !4729

; <label>:210:                                    ; preds = %201
  br label %211, !dbg !4732

; <label>:211:                                    ; preds = %210, %187
  %212 = phi i64 [ 0, %187 ], [ %206, %210 ]
  %213 = icmp eq i64 %188, %212, !dbg !4732
  br i1 %213, label %217, label %214, !dbg !4734

; <label>:214:                                    ; preds = %211
  %215 = icmp ult i64 %188, %212, !dbg !4735
  %216 = select i1 %215, i32 -1, i32 1, !dbg !4736
  br label %220, !dbg !4737

; <label>:217:                                    ; preds = %211
  %218 = icmp eq i64 %188, 0, !dbg !4738
  %219 = select i1 %218, i32 0, i32 %181, !dbg !4740
  br label %220, !dbg !4740

; <label>:220:                                    ; preds = %15, %28, %99, %102, %116, %129, %214, %217
  %221 = phi i32 [ %33, %28 ], [ %101, %99 ], [ %134, %129 ], [ %216, %214 ], [ -1, %15 ], [ %104, %102 ], [ 1, %116 ], [ %219, %217 ]
  ret i32 %221, !dbg !4741
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4742 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4798, metadata !665), !dbg !4804
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4799, metadata !665), !dbg !4805
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4800, metadata !665), !dbg !4806
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4801, metadata !665), !dbg !4807
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4802, metadata !665), !dbg !4808
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4803, metadata !665), !dbg !4809
  %7 = icmp eq i8* %1, null, !dbg !4810
  br i1 %7, label %10, label %8, !dbg !4812

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4813
  br label %12, !dbg !4813

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.89, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4814
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.90, i64 0, i64 0), i32 5) #10, !dbg !4815
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !4816
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.91, i64 0, i64 0), i32 5) #10, !dbg !4818
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !4819
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
  ], !dbg !4820

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4821
  unreachable, !dbg !4821

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.92, i64 0, i64 0), i32 5) #10, !dbg !4823
  %20 = load i8*, i8** %4, align 8, !dbg !4823, !tbaa !673
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4824
  br label %146, !dbg !4826

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.93, i64 0, i64 0), i32 5) #10, !dbg !4827
  %24 = load i8*, i8** %4, align 8, !dbg !4827, !tbaa !673
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4827
  %26 = load i8*, i8** %25, align 8, !dbg !4827, !tbaa !673
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4828
  br label %146, !dbg !4829

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.94, i64 0, i64 0), i32 5) #10, !dbg !4830
  %30 = load i8*, i8** %4, align 8, !dbg !4830, !tbaa !673
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4830
  %32 = load i8*, i8** %31, align 8, !dbg !4830, !tbaa !673
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4830
  %34 = load i8*, i8** %33, align 8, !dbg !4830, !tbaa !673
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4831
  br label %146, !dbg !4832

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.95, i64 0, i64 0), i32 5) #10, !dbg !4833
  %38 = load i8*, i8** %4, align 8, !dbg !4833, !tbaa !673
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4833
  %40 = load i8*, i8** %39, align 8, !dbg !4833, !tbaa !673
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4833
  %42 = load i8*, i8** %41, align 8, !dbg !4833, !tbaa !673
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4833
  %44 = load i8*, i8** %43, align 8, !dbg !4833, !tbaa !673
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4834
  br label %146, !dbg !4835

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.96, i64 0, i64 0), i32 5) #10, !dbg !4836
  %48 = load i8*, i8** %4, align 8, !dbg !4836, !tbaa !673
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4836
  %50 = load i8*, i8** %49, align 8, !dbg !4836, !tbaa !673
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4836
  %52 = load i8*, i8** %51, align 8, !dbg !4836, !tbaa !673
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4836
  %54 = load i8*, i8** %53, align 8, !dbg !4836, !tbaa !673
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4836
  %56 = load i8*, i8** %55, align 8, !dbg !4836, !tbaa !673
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4837
  br label %146, !dbg !4838

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.97, i64 0, i64 0), i32 5) #10, !dbg !4839
  %60 = load i8*, i8** %4, align 8, !dbg !4839, !tbaa !673
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4839
  %62 = load i8*, i8** %61, align 8, !dbg !4839, !tbaa !673
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4839
  %64 = load i8*, i8** %63, align 8, !dbg !4839, !tbaa !673
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4839
  %66 = load i8*, i8** %65, align 8, !dbg !4839, !tbaa !673
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4839
  %68 = load i8*, i8** %67, align 8, !dbg !4839, !tbaa !673
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4839
  %70 = load i8*, i8** %69, align 8, !dbg !4839, !tbaa !673
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4840
  br label %146, !dbg !4841

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.98, i64 0, i64 0), i32 5) #10, !dbg !4842
  %74 = load i8*, i8** %4, align 8, !dbg !4842, !tbaa !673
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4842
  %76 = load i8*, i8** %75, align 8, !dbg !4842, !tbaa !673
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4842
  %78 = load i8*, i8** %77, align 8, !dbg !4842, !tbaa !673
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4842
  %80 = load i8*, i8** %79, align 8, !dbg !4842, !tbaa !673
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4842
  %82 = load i8*, i8** %81, align 8, !dbg !4842, !tbaa !673
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4842
  %84 = load i8*, i8** %83, align 8, !dbg !4842, !tbaa !673
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4842
  %86 = load i8*, i8** %85, align 8, !dbg !4842, !tbaa !673
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4843
  br label %146, !dbg !4844

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.99, i64 0, i64 0), i32 5) #10, !dbg !4845
  %90 = load i8*, i8** %4, align 8, !dbg !4845, !tbaa !673
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4845
  %92 = load i8*, i8** %91, align 8, !dbg !4845, !tbaa !673
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4845
  %94 = load i8*, i8** %93, align 8, !dbg !4845, !tbaa !673
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4845
  %96 = load i8*, i8** %95, align 8, !dbg !4845, !tbaa !673
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4845
  %98 = load i8*, i8** %97, align 8, !dbg !4845, !tbaa !673
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4845
  %100 = load i8*, i8** %99, align 8, !dbg !4845, !tbaa !673
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4845
  %102 = load i8*, i8** %101, align 8, !dbg !4845, !tbaa !673
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4845
  %104 = load i8*, i8** %103, align 8, !dbg !4845, !tbaa !673
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4846
  br label %146, !dbg !4847

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.100, i64 0, i64 0), i32 5) #10, !dbg !4848
  %108 = load i8*, i8** %4, align 8, !dbg !4848, !tbaa !673
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4848
  %110 = load i8*, i8** %109, align 8, !dbg !4848, !tbaa !673
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4848
  %112 = load i8*, i8** %111, align 8, !dbg !4848, !tbaa !673
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4848
  %114 = load i8*, i8** %113, align 8, !dbg !4848, !tbaa !673
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4848
  %116 = load i8*, i8** %115, align 8, !dbg !4848, !tbaa !673
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4848
  %118 = load i8*, i8** %117, align 8, !dbg !4848, !tbaa !673
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4848
  %120 = load i8*, i8** %119, align 8, !dbg !4848, !tbaa !673
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4848
  %122 = load i8*, i8** %121, align 8, !dbg !4848, !tbaa !673
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4848
  %124 = load i8*, i8** %123, align 8, !dbg !4848, !tbaa !673
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4849
  br label %146, !dbg !4850

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.101, i64 0, i64 0), i32 5) #10, !dbg !4851
  %128 = load i8*, i8** %4, align 8, !dbg !4851, !tbaa !673
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4851
  %130 = load i8*, i8** %129, align 8, !dbg !4851, !tbaa !673
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4851
  %132 = load i8*, i8** %131, align 8, !dbg !4851, !tbaa !673
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4851
  %134 = load i8*, i8** %133, align 8, !dbg !4851, !tbaa !673
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4851
  %136 = load i8*, i8** %135, align 8, !dbg !4851, !tbaa !673
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4851
  %138 = load i8*, i8** %137, align 8, !dbg !4851, !tbaa !673
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4851
  %140 = load i8*, i8** %139, align 8, !dbg !4851, !tbaa !673
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4851
  %142 = load i8*, i8** %141, align 8, !dbg !4851, !tbaa !673
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4851
  %144 = load i8*, i8** %143, align 8, !dbg !4851, !tbaa !673
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4852
  br label %146, !dbg !4853

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4854
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4855 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4859, metadata !665), !dbg !4865
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4860, metadata !665), !dbg !4866
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4861, metadata !665), !dbg !4867
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4862, metadata !665), !dbg !4868
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4863, metadata !665), !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4864, metadata !665), !dbg !4870
  br label %6, !dbg !4871

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4864, metadata !665), !dbg !4870
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4873
  %9 = load i8*, i8** %8, align 8, !dbg !4873, !tbaa !673
  %10 = icmp eq i8* %9, null, !dbg !4876
  %11 = add i64 %7, 1, !dbg !4878
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4864, metadata !665), !dbg !4870
  br i1 %10, label %12, label %6, !dbg !4876, !llvm.loop !4880

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4883
  ret void, !dbg !4884
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4885 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4896, metadata !665), !dbg !4904
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4897, metadata !665), !dbg !4905
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4898, metadata !665), !dbg !4906
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4899, metadata !665), !dbg !4907
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4900, metadata !665), !dbg !4908
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4909
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4909
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4902, metadata !665), !dbg !4910
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4901, metadata !665), !dbg !4911
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4912
  %12 = icmp ult i32 %11, 41, !dbg !4912
  br i1 %12, label %13, label %18, !dbg !4912

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4916
  %15 = sext i32 %11 to i64, !dbg !4916
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4916
  %17 = add i32 %11, 8, !dbg !4916
  store i32 %17, i32* %8, align 8, !dbg !4916
  br label %21, !dbg !4916

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4918
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4918
  store i8* %20, i8** %10, align 8, !dbg !4918
  br label %21, !dbg !4918

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4912
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4920
  %25 = load i8*, i8** %24, align 8, !dbg !4920
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4922
  store i8* %25, i8** %26, align 16, !dbg !4923, !tbaa !673
  %27 = icmp eq i8* %25, null, !dbg !4924
  br i1 %27, label %30, label %28, !dbg !4925

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %29 = icmp ult i32 %22, 41, !dbg !4912
  br i1 %29, label %35, label %32, !dbg !4912

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4927
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4928
  ret void, !dbg !4928

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4918
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4918
  store i8* %34, i8** %10, align 8, !dbg !4918
  br label %40, !dbg !4918

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4916
  %37 = sext i32 %22 to i64, !dbg !4916
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4916
  %39 = add i32 %22, 8, !dbg !4916
  store i32 %39, i32* %8, align 8, !dbg !4916
  br label %40, !dbg !4916

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4912
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4920
  %44 = load i8*, i8** %43, align 8, !dbg !4920
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4922
  store i8* %44, i8** %45, align 8, !dbg !4923, !tbaa !673
  %46 = icmp eq i8* %44, null, !dbg !4924
  br i1 %46, label %30, label %47, !dbg !4925

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %48 = icmp ult i32 %41, 41, !dbg !4912
  br i1 %48, label %52, label %49, !dbg !4912

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4918
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4918
  store i8* %51, i8** %10, align 8, !dbg !4918
  br label %57, !dbg !4918

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4916
  %54 = sext i32 %41 to i64, !dbg !4916
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4916
  %56 = add i32 %41, 8, !dbg !4916
  store i32 %56, i32* %8, align 8, !dbg !4916
  br label %57, !dbg !4916

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4912
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4920
  %61 = load i8*, i8** %60, align 8, !dbg !4920
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4922
  store i8* %61, i8** %62, align 16, !dbg !4923, !tbaa !673
  %63 = icmp eq i8* %61, null, !dbg !4924
  br i1 %63, label %30, label %64, !dbg !4925

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %65 = icmp ult i32 %58, 41, !dbg !4912
  br i1 %65, label %69, label %66, !dbg !4912

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4918
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4918
  store i8* %68, i8** %10, align 8, !dbg !4918
  br label %74, !dbg !4918

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4916
  %71 = sext i32 %58 to i64, !dbg !4916
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4916
  %73 = add i32 %58, 8, !dbg !4916
  store i32 %73, i32* %8, align 8, !dbg !4916
  br label %74, !dbg !4916

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4912
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4920
  %78 = load i8*, i8** %77, align 8, !dbg !4920
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4922
  store i8* %78, i8** %79, align 8, !dbg !4923, !tbaa !673
  %80 = icmp eq i8* %78, null, !dbg !4924
  br i1 %80, label %30, label %81, !dbg !4925

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %82 = icmp ult i32 %75, 41, !dbg !4912
  br i1 %82, label %86, label %83, !dbg !4912

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4918
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4918
  store i8* %85, i8** %10, align 8, !dbg !4918
  br label %91, !dbg !4918

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4916
  %88 = sext i32 %75 to i64, !dbg !4916
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4916
  %90 = add i32 %75, 8, !dbg !4916
  store i32 %90, i32* %8, align 8, !dbg !4916
  br label %91, !dbg !4916

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4912
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4920
  %95 = load i8*, i8** %94, align 8, !dbg !4920
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4922
  store i8* %95, i8** %96, align 16, !dbg !4923, !tbaa !673
  %97 = icmp eq i8* %95, null, !dbg !4924
  br i1 %97, label %30, label %98, !dbg !4925

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %99 = icmp ult i32 %92, 41, !dbg !4912
  br i1 %99, label %103, label %100, !dbg !4912

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4918
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4918
  store i8* %102, i8** %10, align 8, !dbg !4918
  br label %108, !dbg !4918

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4916
  %105 = sext i32 %92 to i64, !dbg !4916
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4916
  %107 = add i32 %92, 8, !dbg !4916
  store i32 %107, i32* %8, align 8, !dbg !4916
  br label %108, !dbg !4916

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4920
  %111 = load i8*, i8** %110, align 8, !dbg !4920
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4922
  store i8* %111, i8** %112, align 8, !dbg !4923, !tbaa !673
  %113 = icmp eq i8* %111, null, !dbg !4924
  br i1 %113, label %30, label %114, !dbg !4925

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %115 = load i8*, i8** %10, align 8, !dbg !4918
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4918
  store i8* %116, i8** %10, align 8, !dbg !4918
  %117 = bitcast i8* %115 to i8**, !dbg !4920
  %118 = load i8*, i8** %117, align 8, !dbg !4920
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4922
  store i8* %118, i8** %119, align 16, !dbg !4923, !tbaa !673
  %120 = icmp eq i8* %118, null, !dbg !4924
  br i1 %120, label %30, label %121, !dbg !4925

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %122 = load i8*, i8** %10, align 8, !dbg !4918
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4918
  store i8* %123, i8** %10, align 8, !dbg !4918
  %124 = bitcast i8* %122 to i8**, !dbg !4920
  %125 = load i8*, i8** %124, align 8, !dbg !4920
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4922
  store i8* %125, i8** %126, align 8, !dbg !4923, !tbaa !673
  %127 = icmp eq i8* %125, null, !dbg !4924
  br i1 %127, label %30, label %128, !dbg !4925

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %129 = load i8*, i8** %10, align 8, !dbg !4918
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4918
  store i8* %130, i8** %10, align 8, !dbg !4918
  %131 = bitcast i8* %129 to i8**, !dbg !4920
  %132 = load i8*, i8** %131, align 8, !dbg !4920
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4922
  store i8* %132, i8** %133, align 16, !dbg !4923, !tbaa !673
  %134 = icmp eq i8* %132, null, !dbg !4924
  br i1 %134, label %30, label %135, !dbg !4925

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %136 = load i8*, i8** %10, align 8, !dbg !4918
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4918
  store i8* %137, i8** %10, align 8, !dbg !4918
  %138 = bitcast i8* %136 to i8**, !dbg !4920
  %139 = load i8*, i8** %138, align 8, !dbg !4920
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4922
  store i8* %139, i8** %140, align 8, !dbg !4923, !tbaa !673
  %141 = icmp eq i8* %139, null, !dbg !4924
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4901, metadata !665), !dbg !4911
  %142 = select i1 %141, i64 9, i64 10, !dbg !4925
  br label %30, !dbg !4925
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4929 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4933, metadata !665), !dbg !4942
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4934, metadata !665), !dbg !4943
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4935, metadata !665), !dbg !4944
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4936, metadata !665), !dbg !4945
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4946
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4946
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4937, metadata !665), !dbg !4947
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4948
  call void @llvm.va_start(i8* nonnull %6), !dbg !4948
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4949
  call void @llvm.va_end(i8* nonnull %6), !dbg !4950
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4951
  ret void, !dbg !4951
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4952 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.104, i64 0, i64 0), i32 5) #10, !dbg !4953
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.105, i64 0, i64 0)) #10, !dbg !4954
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.106, i64 0, i64 0), i32 5) #10, !dbg !4956
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.107, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.108, i64 0, i64 0)) #10, !dbg !4957
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.109, i64 0, i64 0), i32 5) #10, !dbg !4958
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4958, !tbaa !673
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4959
  ret void, !dbg !4960
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4961 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4965, metadata !665), !dbg !4967
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4966, metadata !665), !dbg !4968
  %3 = udiv i64 9223372036854775807, %1, !dbg !4969
  %4 = icmp ult i64 %3, %0, !dbg !4969
  br i1 %4, label %5, label %6, !dbg !4971

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4972
  unreachable, !dbg !4972

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4973
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4974, metadata !665) #10, !dbg !4981
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4983
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4980, metadata !665) #10, !dbg !4984
  %9 = icmp eq i8* %8, null, !dbg !4985
  %10 = icmp ne i64 %7, 0, !dbg !4987
  %11 = and i1 %10, %9, !dbg !4989
  br i1 %11, label %12, label %13, !dbg !4989

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4990
  unreachable, !dbg !4990

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4991
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4975 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4974, metadata !665), !dbg !4992
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4993
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4980, metadata !665), !dbg !4994
  %3 = icmp eq i8* %2, null, !dbg !4995
  %4 = icmp ne i64 %0, 0, !dbg !4996
  %5 = and i1 %4, %3, !dbg !4997
  br i1 %5, label %6, label %7, !dbg !4997

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4998
  unreachable, !dbg !4998

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4999
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !5000 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5004, metadata !665), !dbg !5007
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5005, metadata !665), !dbg !5008
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5006, metadata !665), !dbg !5009
  %4 = udiv i64 9223372036854775807, %2, !dbg !5010
  %5 = icmp ult i64 %4, %1, !dbg !5010
  br i1 %5, label %6, label %7, !dbg !5012

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !5013
  unreachable, !dbg !5013

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !5014
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5015, metadata !665) #10, !dbg !5021
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5020, metadata !665) #10, !dbg !5023
  %9 = icmp eq i64 %8, 0, !dbg !5024
  %10 = icmp ne i8* %0, null, !dbg !5026
  %11 = and i1 %10, %9, !dbg !5028
  br i1 %11, label %12, label %13, !dbg !5028

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !5029
  br label %19, !dbg !5031

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !5032
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5015, metadata !665) #10, !dbg !5021
  %15 = icmp eq i8* %14, null, !dbg !5033
  %16 = icmp ne i64 %8, 0, !dbg !5035
  %17 = and i1 %16, %15, !dbg !5037
  br i1 %17, label %18, label %19, !dbg !5037

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !5038
  unreachable, !dbg !5038

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !5039
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !5016 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5015, metadata !665), !dbg !5040
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5020, metadata !665), !dbg !5041
  %3 = icmp eq i64 %1, 0, !dbg !5042
  %4 = icmp ne i8* %0, null, !dbg !5043
  %5 = and i1 %4, %3, !dbg !5044
  br i1 %5, label %6, label %7, !dbg !5044

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !5045
  br label %13, !dbg !5046

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !5047
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5015, metadata !665), !dbg !5040
  %9 = icmp eq i8* %8, null, !dbg !5048
  %10 = icmp ne i64 %1, 0, !dbg !5049
  %11 = and i1 %10, %9, !dbg !5050
  br i1 %11, label %12, label %13, !dbg !5050

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !5051
  unreachable, !dbg !5051

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !5052
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !625 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !630, metadata !665), !dbg !5053
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !631, metadata !665), !dbg !5054
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !632, metadata !665), !dbg !5055
  %4 = load i64, i64* %1, align 8, !dbg !5056, !tbaa !2058
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !633, metadata !665), !dbg !5057
  %5 = icmp eq i8* %0, null, !dbg !5058
  br i1 %5, label %6, label %13, !dbg !5060

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !5061
  br i1 %7, label %8, label %17, !dbg !5064

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !5065
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !633, metadata !665), !dbg !5057
  %10 = icmp ugt i64 %2, 128, !dbg !5067
  %11 = zext i1 %10 to i64, !dbg !5067
  %12 = add nuw nsw i64 %9, %11, !dbg !5068
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !633, metadata !665), !dbg !5057
  br label %17, !dbg !5069

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !5070
  %15 = icmp ugt i64 %14, %4, !dbg !5073
  br i1 %15, label %20, label %16, !dbg !5074

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !5075
  unreachable, !dbg !5075

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !633, metadata !665), !dbg !5057
  store i64 %18, i64* %1, align 8, !dbg !5076, !tbaa !2058
  %19 = mul i64 %18, %2, !dbg !5077
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5015, metadata !665) #10, !dbg !5078
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5020, metadata !665) #10, !dbg !5080
  br label %27, !dbg !5081

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !5082
  %22 = add i64 %4, 1, !dbg !5083
  %23 = add i64 %22, %21, !dbg !5084
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !633, metadata !665), !dbg !5057
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !633, metadata !665), !dbg !5057
  store i64 %23, i64* %1, align 8, !dbg !5076, !tbaa !2058
  %24 = mul i64 %23, %2, !dbg !5077
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5015, metadata !665) #10, !dbg !5078
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5020, metadata !665) #10, !dbg !5080
  %25 = icmp eq i64 %24, 0, !dbg !5085
  br i1 %25, label %26, label %27, !dbg !5081

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !5086
  br label %34, !dbg !5087

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !5088
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5015, metadata !665) #10, !dbg !5078
  %30 = icmp eq i8* %29, null, !dbg !5089
  %31 = icmp ne i64 %28, 0, !dbg !5090
  %32 = and i1 %31, %30, !dbg !5091
  br i1 %32, label %33, label %34, !dbg !5091

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !5092
  unreachable, !dbg !5092

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !5093
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !5094 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5096, metadata !665), !dbg !5097
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4974, metadata !665) #10, !dbg !5098
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5100
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4980, metadata !665) #10, !dbg !5101
  %3 = icmp eq i8* %2, null, !dbg !5102
  %4 = icmp ne i64 %0, 0, !dbg !5103
  %5 = and i1 %4, %3, !dbg !5104
  br i1 %5, label %6, label %7, !dbg !5104

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5105
  unreachable, !dbg !5105

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !5106
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5107 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5111, metadata !665), !dbg !5113
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5112, metadata !665), !dbg !5114
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !630, metadata !665) #10, !dbg !5115
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !631, metadata !665) #10, !dbg !5117
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !632, metadata !665) #10, !dbg !5118
  %3 = load i64, i64* %1, align 8, !dbg !5119, !tbaa !2058
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !633, metadata !665) #10, !dbg !5120
  %4 = icmp eq i8* %0, null, !dbg !5121
  br i1 %4, label %5, label %8, !dbg !5122

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !5123
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !633, metadata !665) #10, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !633, metadata !665) #10, !dbg !5120
  %7 = select i1 %6, i64 128, i64 %3, !dbg !5124
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !633, metadata !665) #10, !dbg !5120
  store i64 %7, i64* %1, align 8, !dbg !5125, !tbaa !2058
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5015, metadata !665) #10, !dbg !5126
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5020, metadata !665) #10, !dbg !5128
  br label %17, !dbg !5129

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !5130
  br i1 %9, label %11, label %10, !dbg !5131

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !5132
  unreachable, !dbg !5132

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !5133
  %13 = add i64 %3, 1, !dbg !5134
  %14 = add i64 %13, %12, !dbg !5135
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !633, metadata !665) #10, !dbg !5120
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !633, metadata !665) #10, !dbg !5120
  store i64 %14, i64* %1, align 8, !dbg !5125, !tbaa !2058
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5015, metadata !665) #10, !dbg !5126
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5020, metadata !665) #10, !dbg !5128
  %15 = icmp eq i64 %14, 0, !dbg !5136
  br i1 %15, label %16, label %17, !dbg !5129

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !5137
  br label %24, !dbg !5138

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !5139
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5015, metadata !665) #10, !dbg !5126
  %20 = icmp eq i8* %19, null, !dbg !5140
  %21 = icmp ne i64 %18, 0, !dbg !5141
  %22 = and i1 %21, %20, !dbg !5142
  br i1 %22, label %23, label %24, !dbg !5142

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !5143
  unreachable, !dbg !5143

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !5144
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5145 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5147, metadata !665), !dbg !5148
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4974, metadata !665) #10, !dbg !5149
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5151
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4980, metadata !665) #10, !dbg !5152
  %3 = icmp eq i8* %2, null, !dbg !5153
  %4 = icmp ne i64 %0, 0, !dbg !5154
  %5 = and i1 %4, %3, !dbg !5155
  br i1 %5, label %6, label %7, !dbg !5155

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5156
  unreachable, !dbg !5156

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5157
  ret i8* %2, !dbg !5158
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5159 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5161, metadata !665), !dbg !5164
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5162, metadata !665), !dbg !5165
  %3 = udiv i64 9223372036854775807, %1, !dbg !5166
  %4 = icmp ult i64 %3, %0, !dbg !5166
  br i1 %4, label %8, label %5, !dbg !5168

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !5169
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5163, metadata !665), !dbg !5171
  %7 = icmp eq i8* %6, null, !dbg !5172
  br i1 %7, label %8, label %9, !dbg !5173

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !5175
  unreachable, !dbg !5175

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !5176
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5177 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5181, metadata !665), !dbg !5183
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5182, metadata !665), !dbg !5184
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4974, metadata !665) #10, !dbg !5185
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !5187
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4980, metadata !665) #10, !dbg !5188
  %4 = icmp eq i8* %3, null, !dbg !5189
  %5 = icmp ne i64 %1, 0, !dbg !5190
  %6 = and i1 %5, %4, !dbg !5191
  br i1 %6, label %7, label %8, !dbg !5191

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !5192
  unreachable, !dbg !5192

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5193
  ret i8* %3, !dbg !5194
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5195 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5197, metadata !665), !dbg !5198
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !5199
  %3 = add i64 %2, 1, !dbg !5200
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5181, metadata !665) #10, !dbg !5201
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5182, metadata !665) #10, !dbg !5204
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4974, metadata !665) #10, !dbg !5205
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !5207
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4980, metadata !665) #10, !dbg !5208
  %5 = icmp eq i8* %4, null, !dbg !5209
  %6 = icmp ne i64 %3, 0, !dbg !5210
  %7 = and i1 %6, %5, !dbg !5211
  br i1 %7, label %8, label %9, !dbg !5211

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !5212
  unreachable, !dbg !5212

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !5213
  ret i8* %4, !dbg !5214
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !5215 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5217, !tbaa !778
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.122, i64 0, i64 0), i32 5) #10, !dbg !5218
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), i8* %2) #10, !dbg !5219
  tail call void @abort() #14, !dbg !5221
  unreachable, !dbg !5221
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5222 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5225, metadata !665), !dbg !5231
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5226, metadata !665), !dbg !5232
  %3 = icmp eq i64 %0, 0, !dbg !5233
  %4 = icmp eq i64 %1, 0, !dbg !5234
  %5 = or i1 %3, %4, !dbg !5236
  br i1 %5, label %12, label %6, !dbg !5236

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5237
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5228, metadata !665), !dbg !5238
  %8 = udiv i64 %7, %1, !dbg !5239
  %9 = icmp eq i64 %8, %0, !dbg !5241
  br i1 %9, label %12, label %10, !dbg !5242

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !5243
  store i32 12, i32* %11, align 4, !dbg !5245, !tbaa !778
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5225, metadata !665), !dbg !5231
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5226, metadata !665), !dbg !5232
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !5246
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5227, metadata !665), !dbg !5247
  br label %16, !dbg !5248

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5249
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5250 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5267, metadata !665), !dbg !5276
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5268, metadata !665), !dbg !5277
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5269, metadata !665), !dbg !5278
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5270, metadata !665), !dbg !5279
  %6 = bitcast i32* %5 to i8*, !dbg !5280
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !5280
  %7 = icmp eq i32* %0, null, !dbg !5281
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5267, metadata !665), !dbg !5276
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5283
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5267, metadata !665), !dbg !5276
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !5284
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5271, metadata !665), !dbg !5285
  %10 = icmp ugt i64 %9, -3, !dbg !5286
  %11 = icmp ne i64 %2, 0, !dbg !5287
  %12 = and i1 %11, %10, !dbg !5289
  br i1 %12, label %13, label %18, !dbg !5289

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !5290
  br i1 %14, label %18, label %15, !dbg !5292

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5294, !tbaa !705
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5273, metadata !665), !dbg !5295
  %17 = zext i8 %16 to i32, !dbg !5296
  store i32 %17, i32* %8, align 4, !dbg !5297, !tbaa !778
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !5298
  ret i64 %19, !dbg !5298
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5299 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5344, metadata !665), !dbg !5349
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5350
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5351, metadata !665), !dbg !5354
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5356
  %4 = load i32, i32* %3, align 8, !dbg !5356, !tbaa !5357
  %5 = and i32 %4, 32, !dbg !5356
  %6 = icmp eq i32 %5, 0, !dbg !5358
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5359
  %8 = icmp ne i32 %7, 0, !dbg !5360
  br i1 %6, label %9, label %19, !dbg !5361

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5363
  %11 = icmp ne i64 %2, 0, !dbg !5363
  %12 = or i1 %11, %10, !dbg !5363
  %13 = sext i1 %8 to i32, !dbg !5363
  br i1 %12, label %22, label %14, !dbg !5363

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5365
  %16 = load i32, i32* %15, align 4, !dbg !5365, !tbaa !778
  %17 = icmp ne i32 %16, 9, !dbg !5367
  %18 = sext i1 %17 to i32, !dbg !5367
  br label %22, !dbg !5367

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5369

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5371
  store i32 0, i32* %21, align 4, !dbg !5373, !tbaa !778
  br label %22, !dbg !5371

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5374
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5375 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5380, metadata !665), !dbg !5400
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5381, metadata !665), !dbg !5401
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5402
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5382, metadata !665), !dbg !5403
  %3 = icmp eq i8* %2, null, !dbg !5404
  br i1 %3, label %15, label %4, !dbg !5405

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5390, metadata !665), !dbg !5406
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5391, metadata !665), !dbg !5407
  %5 = load i8, i8* %2, align 1, !dbg !5408, !tbaa !705
  %6 = icmp eq i8 %5, 67, !dbg !5410
  br i1 %6, label %7, label %11, !dbg !5413

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5415
  %9 = load i8, i8* %8, align 1, !dbg !5415, !tbaa !705
  %10 = icmp eq i8 %9, 0, !dbg !5418
  br i1 %10, label %14, label %11, !dbg !5420

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5396, metadata !665), !dbg !5422
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0)) #10, !dbg !5423
  %13 = icmp eq i32 %12, 0, !dbg !5425
  br i1 %13, label %14, label %15, !dbg !5427

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5381, metadata !665), !dbg !5401
  br label %15, !dbg !5429

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5430
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5431 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5443, metadata !665), !dbg !5517
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5510, metadata !665), !dbg !5519
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5520
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5435, metadata !665), !dbg !5521
  %4 = icmp eq i8* %3, null, !dbg !5522
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %3, !dbg !5524
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5435, metadata !665), !dbg !5521
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5525, !tbaa !673
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5457, metadata !665) #10, !dbg !5526
  %7 = icmp eq i8* %6, null, !dbg !5527
  br i1 %7, label %8, label %127, !dbg !5528

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.136, i64 0, i64 0)) #10, !dbg !5529
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5458, metadata !665) #10, !dbg !5530
  %10 = icmp eq i8* %9, null, !dbg !5531
  br i1 %10, label %14, label %11, !dbg !5533

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5534, !tbaa !705
  %13 = icmp eq i8 %12, 0, !dbg !5536
  br i1 %13, label %14, label %15, !dbg !5537

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5539

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.137, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5458, metadata !665) #10, !dbg !5530
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5540
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5461, metadata !665) #10, !dbg !5541
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5463, metadata !665) #10, !dbg !5542
  %18 = icmp eq i64 %17, 0, !dbg !5543
  br i1 %18, label %24, label %19, !dbg !5544

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5545
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5545
  %22 = load i8, i8* %21, align 1, !dbg !5545, !tbaa !705
  %23 = icmp ne i8 %22, 47, !dbg !5547
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5548
  %27 = add i64 %17, 14, !dbg !5549
  %28 = add i64 %27, %26, !dbg !5550
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5551
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5460, metadata !665) #10, !dbg !5552
  %30 = icmp eq i8* %29, null, !dbg !5553
  br i1 %30, label %125, label %31, !dbg !5553

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5554
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5557

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5558, !tbaa !705
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5560
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5561
  br label %37, !dbg !5562

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5560
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.138, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5561
  br label %37, !dbg !5562

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5563
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5465, metadata !665) #10, !dbg !5564
  %39 = icmp slt i32 %38, 0, !dbg !5565
  br i1 %39, label %123, label %40, !dbg !5566

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.139, i64 0, i64 0)) #10, !dbg !5567
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5466, metadata !665) #10, !dbg !5568
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5569
  br i1 %42, label %48, label %43, !dbg !5570

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5571

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !5572
  br label %123, !dbg !5574

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5507, metadata !665) #10, !dbg !5571
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5508, metadata !665) #10, !dbg !5575
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !5576
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !5577
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5578, metadata !665) #10, !dbg !5583
  %53 = load i8*, i8** %46, align 8, !dbg !5585, !tbaa !5586
  %54 = load i8*, i8** %47, align 8, !dbg !5585, !tbaa !5587
  %55 = icmp ult i8* %53, %54, !dbg !5585
  br i1 %55, label %58, label %56, !dbg !5585, !prof !700

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5588
  br label %62, !dbg !5588

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5590
  store i8* %59, i8** %46, align 8, !dbg !5590, !tbaa !5586
  %60 = load i8, i8* %53, align 1, !dbg !5590, !tbaa !705
  %61 = zext i8 %60 to i32, !dbg !5590
  br label %62, !dbg !5590

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5592
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5509, metadata !665) #10, !dbg !5594
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5595

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5596

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5578, metadata !665) #10, !dbg !5596
  %66 = load i8*, i8** %46, align 8, !dbg !5600, !tbaa !5586
  %67 = load i8*, i8** %47, align 8, !dbg !5600, !tbaa !5587
  %68 = icmp ult i8* %66, %67, !dbg !5600
  br i1 %68, label %71, label %69, !dbg !5600, !prof !700

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5601
  br label %75, !dbg !5601

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5602
  store i8* %72, i8** %46, align 8, !dbg !5602, !tbaa !5586
  %73 = load i8, i8* %66, align 1, !dbg !5602, !tbaa !705
  %74 = zext i8 %73 to i32, !dbg !5602
  br label %75, !dbg !5602

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5603
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5509, metadata !665) #10, !dbg !5594
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5604, !llvm.loop !5606

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !5609
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.140, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !5610
  %80 = icmp slt i32 %79, 2, !dbg !5612
  br i1 %80, label %115, label %81, !dbg !5613

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5614
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5514, metadata !665) #10, !dbg !5615
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5616
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5515, metadata !665) #10, !dbg !5617
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5516, metadata !665) #10, !dbg !5618
  %84 = icmp eq i64 %51, 0, !dbg !5619
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5621

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5508, metadata !665) #10, !dbg !5575
  %89 = add i64 %86, 2, !dbg !5622
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !5624
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5507, metadata !665) #10, !dbg !5571
  br label %95, !dbg !5625

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5626
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5508, metadata !665) #10, !dbg !5575
  %93 = add i64 %92, 1, !dbg !5628
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !5629
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5507, metadata !665) #10, !dbg !5571
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5507, metadata !665) #10, !dbg !5571
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5508, metadata !665) #10, !dbg !5575
  %98 = icmp eq i8* %97, null, !dbg !5630
  br i1 %98, label %99, label %100, !dbg !5632

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5508, metadata !665) #10, !dbg !5575
  call void @free(i8* %52) #10, !dbg !5633
  br label %116, !dbg !5635

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5636
  %102 = xor i64 %83, -1, !dbg !5637
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5637
  %104 = xor i64 %82, -1, !dbg !5638
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5638
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5639, metadata !665) #10, !dbg !5647
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5646, metadata !665) #10, !dbg !5647
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !5649
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !5650
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5639, metadata !665) #10, !dbg !5651
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5646, metadata !665) #10, !dbg !5651
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !5653
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !5654
  br label %111, !dbg !5655

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5571

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5507, metadata !665) #10, !dbg !5571
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5508, metadata !665) #10, !dbg !5575
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5655
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5655
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5571

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5571

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5507, metadata !665) #10, !dbg !5571
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5508, metadata !665) #10, !dbg !5575
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5655
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5655
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5656
  %120 = icmp eq i64 %117, 0, !dbg !5657
  br i1 %120, label %123, label %121, !dbg !5659

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5660
  store i8 0, i8* %122, align 1, !dbg !5662, !tbaa !705
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5457, metadata !665) #10, !dbg !5526
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5457, metadata !665) #10, !dbg !5526
  call void @free(i8* %29) #10, !dbg !5663
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5457, metadata !665) #10, !dbg !5526
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5664, !tbaa !673
  br label %127, !dbg !5665

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5436, metadata !665), !dbg !5666
  %129 = load i8, i8* %128, align 1, !dbg !5667, !tbaa !705
  %130 = icmp eq i8 %129, 0, !dbg !5668
  br i1 %130, label %157, label %131, !dbg !5669

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5671

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !5671
  %136 = icmp eq i32 %135, 0, !dbg !5672
  br i1 %136, label %143, label %137, !dbg !5673

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5674
  br i1 %138, label %139, label %147, !dbg !5676

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5677
  %141 = load i8, i8* %140, align 1, !dbg !5677, !tbaa !705
  %142 = icmp eq i8 %141, 0, !dbg !5679
  br i1 %142, label %143, label %147, !dbg !5680

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5682
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5684
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5685
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5435, metadata !665), !dbg !5521
  br label %157, !dbg !5686

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5687
  %149 = add i64 %148, 1, !dbg !5688
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5689
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5436, metadata !665), !dbg !5666
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5690
  %152 = add i64 %151, 1, !dbg !5691
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5692
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5436, metadata !665), !dbg !5666
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5436, metadata !665), !dbg !5666
  %154 = load i8, i8* %153, align 1, !dbg !5667, !tbaa !705
  %155 = icmp eq i8 %154, 0, !dbg !5668
  br i1 %155, label %156, label %132, !dbg !5669, !llvm.loop !5693

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5521

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5435, metadata !665), !dbg !5521
  %159 = load i8, i8* %158, align 1, !dbg !5696, !tbaa !705
  %160 = icmp eq i8 %159, 0, !dbg !5698
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i8* %158, !dbg !5699
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5435, metadata !665), !dbg !5521
  ret i8* %161, !dbg !5700
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5701 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5746, metadata !665), !dbg !5750
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5747, metadata !665), !dbg !5751
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5749, metadata !665), !dbg !5752
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5753
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5748, metadata !665), !dbg !5754
  %3 = icmp slt i32 %2, 0, !dbg !5755
  br i1 %3, label %4, label %6, !dbg !5757

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5758
  br label %24, !dbg !5759

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5760
  %8 = icmp eq i32 %7, 0, !dbg !5760
  br i1 %8, label %13, label %9, !dbg !5762

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5763
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !5765
  %12 = icmp eq i64 %11, -1, !dbg !5767
  br i1 %12, label %16, label %13, !dbg !5768

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !5769
  %15 = icmp eq i32 %14, 0, !dbg !5769
  br i1 %15, label %16, label %18, !dbg !5770

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5747, metadata !665), !dbg !5751
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5772
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5749, metadata !665), !dbg !5752
  br label %24, !dbg !5773

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5774
  %20 = load i32, i32* %19, align 4, !dbg !5774, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5747, metadata !665), !dbg !5751
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5747, metadata !665), !dbg !5751
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5772
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5749, metadata !665), !dbg !5752
  %22 = icmp eq i32 %20, 0, !dbg !5775
  br i1 %22, label %24, label %23, !dbg !5773

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5777, !tbaa !778
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5749, metadata !665), !dbg !5752
  br label %24, !dbg !5779

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5780
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5781 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5826, metadata !665), !dbg !5827
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5828
  br i1 %2, label %6, label %3, !dbg !5830

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5831
  %5 = icmp eq i32 %4, 0, !dbg !5831
  br i1 %5, label %6, label %8, !dbg !5833

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5835
  br label %17, !dbg !5836

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5837, metadata !665) #10, !dbg !5842
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5844
  %10 = load i32, i32* %9, align 8, !dbg !5844, !tbaa !5357
  %11 = and i32 %10, 256, !dbg !5846
  %12 = icmp eq i32 %11, 0, !dbg !5846
  br i1 %12, label %15, label %13, !dbg !5847

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5848
  br label %15, !dbg !5848

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5849
  br label %17, !dbg !5850

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5851
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5852 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5898, metadata !665), !dbg !5904
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5899, metadata !665), !dbg !5905
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5900, metadata !665), !dbg !5906
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5907
  %5 = load i8*, i8** %4, align 8, !dbg !5907, !tbaa !5587
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5908
  %7 = load i8*, i8** %6, align 8, !dbg !5908, !tbaa !5586
  %8 = icmp eq i8* %5, %7, !dbg !5909
  br i1 %8, label %9, label %28, !dbg !5910

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5911
  %11 = load i8*, i8** %10, align 8, !dbg !5911, !tbaa !694
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5913
  %13 = load i8*, i8** %12, align 8, !dbg !5913, !tbaa !5914
  %14 = icmp eq i8* %11, %13, !dbg !5915
  br i1 %14, label %15, label %28, !dbg !5916

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5917
  %17 = load i8*, i8** %16, align 8, !dbg !5917, !tbaa !5918
  %18 = icmp eq i8* %17, null, !dbg !5919
  br i1 %18, label %19, label %28, !dbg !5920

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5922
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5923
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5901, metadata !665), !dbg !5925
  %22 = icmp eq i64 %21, -1, !dbg !5926
  br i1 %22, label %30, label %23, !dbg !5928

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5929
  %25 = load i32, i32* %24, align 8, !dbg !5930, !tbaa !5357
  %26 = and i32 %25, -17, !dbg !5930
  store i32 %26, i32* %24, align 8, !dbg !5930, !tbaa !5357
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5931
  store i64 %21, i64* %27, align 8, !dbg !5932, !tbaa !5933
  br label %30, !dbg !5934

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5935
  br label %30, !dbg !5936

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5937
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

!llvm.dbg.cu = !{!2, !144, !153, !160, !178, !185, !609, !612, !254, !620, !637, !639, !641, !644, !646, !263, !649, !651, !653}
!llvm.ident = !{!655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655, !655}
!llvm.module.flags = !{!656, !657, !658, !659}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "args", scope: !2, file: !3, line: 188, type: !141, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !110)
!3 = !DIFile(filename: "src/expr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !9, !13, !63, !77, !87}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "valtype", file: !3, line: 168, size: 32, elements: !6)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "integer", value: 0)
!8 = !DIEnumerator(name: "string", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 155, size: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "EXPR_INVALID", value: 2)
!12 = !DIEnumerator(name: "EXPR_FAILURE", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !14, file: !3, line: 840, size: 32, elements: !56)
!14 = distinct !DISubprogram(name: "eval2", scope: !3, file: !3, line: 829, type: !15, isLocal: true, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !46)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !45}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "VALUE", file: !3, line: 185, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "valinfo", file: !3, line: 176, size: 192, elements: !20)
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !3, line: 178, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "TYPE", file: !3, line: 173, baseType: !5)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !19, file: !3, line: 183, baseType: !24, size: 128, offset: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !19, file: !3, line: 179, size: 128, elements: !25)
!25 = !{!26, !42}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !24, file: !3, line: 181, baseType: !27, size: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_t", file: !28, line: 164, baseType: !29)
!28 = !DIFile(filename: "/usr/include/gmp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !40)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mpz_struct", file: !28, line: 158, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 150, size: 128, elements: !32)
!32 = !{!33, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_alloc", scope: !31, file: !28, line: 152, baseType: !34, size: 32)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_size", scope: !31, file: !28, line: 154, baseType: !34, size: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_d", scope: !31, file: !28, line: 157, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_limb_t", file: !28, line: 141, baseType: !39)
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !{!41}
!41 = !DISubrange(count: 1)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !24, file: !3, line: 182, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !{!47, !48, !49, !51, !52, !53}
!47 = !DILocalVariable(name: "evaluate", arg: 1, scope: !14, file: !3, line: 829, type: !45)
!48 = !DILocalVariable(name: "l", scope: !14, file: !3, line: 831, type: !17)
!49 = !DILocalVariable(name: "r", scope: !50, file: !3, line: 839, type: !17)
!50 = distinct !DILexicalBlock(scope: !14, file: !3, line: 838, column: 5)
!51 = !DILocalVariable(name: "fxn", scope: !50, file: !3, line: 843, type: !13)
!52 = !DILocalVariable(name: "val", scope: !50, file: !3, line: 844, type: !45)
!53 = !DILocalVariable(name: "cmp", scope: !54, file: !3, line: 864, type: !34)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 863, column: 9)
!55 = distinct !DILexicalBlock(scope: !50, file: !3, line: 862, column: 11)
!56 = !{!57, !58, !59, !60, !61, !62}
!57 = !DIEnumerator(name: "less_than", value: 0)
!58 = !DIEnumerator(name: "less_equal", value: 1)
!59 = !DIEnumerator(name: "equal", value: 2)
!60 = !DIEnumerator(name: "not_equal", value: 3)
!61 = !DIEnumerator(name: "greater_equal", value: 4)
!62 = !DIEnumerator(name: "greater_than", value: 5)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !64, line: 32, size: 32, elements: !65)
!64 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!66 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!67 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!68 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!69 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!70 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!71 = !DIEnumerator(name: "c_quoting_style", value: 5)
!72 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!73 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!74 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!75 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!76 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !78, file: !3, line: 801, size: 32, elements: !84)
!78 = distinct !DISubprogram(name: "eval3", scope: !3, file: !3, line: 797, type: !15, isLocal: true, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DILocalVariable(name: "evaluate", arg: 1, scope: !78, file: !3, line: 797, type: !45)
!81 = !DILocalVariable(name: "l", scope: !78, file: !3, line: 799, type: !17)
!82 = !DILocalVariable(name: "r", scope: !78, file: !3, line: 800, type: !17)
!83 = !DILocalVariable(name: "fxn", scope: !78, file: !3, line: 801, type: !77)
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "plus", value: 0)
!86 = !DIEnumerator(name: "minus", value: 1)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !88, file: !3, line: 762, size: 32, elements: !94)
!88 = distinct !DISubprogram(name: "eval4", scope: !3, file: !3, line: 758, type: !15, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !89)
!89 = !{!90, !91, !92, !93}
!90 = !DILocalVariable(name: "evaluate", arg: 1, scope: !88, file: !3, line: 758, type: !45)
!91 = !DILocalVariable(name: "l", scope: !88, file: !3, line: 760, type: !17)
!92 = !DILocalVariable(name: "r", scope: !88, file: !3, line: 761, type: !17)
!93 = !DILocalVariable(name: "fxn", scope: !88, file: !3, line: 762, type: !87)
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "multiply", value: 0)
!96 = !DIEnumerator(name: "divide", value: 1)
!97 = !DIEnumerator(name: "mod", value: 2)
!98 = !{!99, !101, !102, !104, !106, !108, !39, !109}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 62, baseType: !39)
!103 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !{!0, !111}
!111 = !DIGlobalVariableExpression(var: !112)
!112 = distinct !DIGlobalVariable(name: "infomap", scope: !113, file: !114, line: 632, type: !138, isLocal: true, isDefinition: true)
!113 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !114, file: !114, line: 630, type: !115, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !117)
!114 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = !DISubroutineType(types: !116)
!116 = !{null, !99}
!117 = !{!118, !119, !120, !127, !129, !130, !131, !134, !135, !137}
!118 = !DILocalVariable(name: "program", arg: 1, scope: !113, file: !114, line: 630, type: !99)
!119 = !DILocalVariable(name: "node", scope: !113, file: !114, line: 642, type: !99)
!120 = !DILocalVariable(name: "map_prog", scope: !113, file: !114, line: 643, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !113, file: !114, line: 632, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !123, file: !114, line: 632, baseType: !99, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !114, line: 632, baseType: !99, size: 64, offset: 64)
!127 = !DILocalVariable(name: "__s1_len", scope: !128, file: !114, line: 645, type: !102)
!128 = distinct !DILexicalBlock(scope: !113, file: !114, line: 645, column: 33)
!129 = !DILocalVariable(name: "__s2_len", scope: !128, file: !114, line: 645, type: !102)
!130 = !DILocalVariable(name: "lc_messages", scope: !113, file: !114, line: 655, type: !99)
!131 = !DILocalVariable(name: "__s1_len", scope: !132, file: !114, line: 656, type: !102)
!132 = distinct !DILexicalBlock(scope: !133, file: !114, line: 656, column: 22)
!133 = distinct !DILexicalBlock(scope: !113, file: !114, line: 656, column: 7)
!134 = !DILocalVariable(name: "__s2_len", scope: !132, file: !114, line: 656, type: !102)
!135 = !DILocalVariable(name: "__s2", scope: !136, file: !114, line: 656, type: !106)
!136 = distinct !DILexicalBlock(scope: !132, file: !114, line: 656, column: 22)
!137 = !DILocalVariable(name: "__result", scope: !136, file: !114, line: 656, type: !34)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 896, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 7)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!142 = !DIGlobalVariableExpression(var: !143)
!143 = distinct !DIGlobalVariable(name: "file_name", scope: !144, file: !150, line: 36, type: !99, isLocal: true, isDefinition: true)
!144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !145, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, globals: !147)
!145 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !{}
!147 = !{!142, !148}
!148 = !DIGlobalVariableExpression(var: !149)
!149 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !144, file: !150, line: 46, type: !45, isLocal: true, isDefinition: true)
!150 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!151 = !DIGlobalVariableExpression(var: !152)
!152 = distinct !DIGlobalVariable(name: "exit_failure", scope: !153, file: !156, line: 24, type: !157, isLocal: false, isDefinition: true)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, globals: !155)
!154 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!155 = !{!151}
!156 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!157 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "long_options", scope: !160, file: !163, line: 33, type: !164, isLocal: true, isDefinition: true)
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, globals: !162)
!161 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!162 = !{!158}
!163 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 768, elements: !174)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !167, line: 104, size: 256, elements: !168)
!167 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!168 = !{!169, !170, !171, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !167, line: 106, baseType: !99, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !166, file: !167, line: 109, baseType: !34, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !166, file: !167, line: 110, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !166, file: !167, line: 111, baseType: !34, size: 32, offset: 192)
!174 = !{!175}
!175 = !DISubrange(count: 3)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "program_name", scope: !178, file: !182, line: 33, type: !99, isLocal: false, isDefinition: true)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !180, globals: !181)
!179 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!180 = !{!101, !43}
!181 = !{!176}
!182 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !185, file: !213, line: 77, type: !248, isLocal: false, isDefinition: true)
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !187, retainedTypes: !208, globals: !210)
!186 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!187 = !{!63, !188, !193}
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !64, line: 242, size: 32, elements: !189)
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!191 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!192 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !194, line: 46, size: 32, elements: !195)
!194 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!196 = !DIEnumerator(name: "_ISupper", value: 256)
!197 = !DIEnumerator(name: "_ISlower", value: 512)
!198 = !DIEnumerator(name: "_ISalpha", value: 1024)
!199 = !DIEnumerator(name: "_ISdigit", value: 2048)
!200 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!201 = !DIEnumerator(name: "_ISspace", value: 8192)
!202 = !DIEnumerator(name: "_ISprint", value: 16384)
!203 = !DIEnumerator(name: "_ISgraph", value: 32768)
!204 = !DIEnumerator(name: "_ISblank", value: 1)
!205 = !DIEnumerator(name: "_IScntrl", value: 2)
!206 = !DIEnumerator(name: "_ISpunct", value: 4)
!207 = !DIEnumerator(name: "_ISalnum", value: 8)
!208 = !{!34, !209, !102, !43}
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !{!183, !211, !218, !230, !232, !237, !244, !246}
!211 = !DIGlobalVariableExpression(var: !212)
!212 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !185, file: !213, line: 93, type: !214, isLocal: false, isDefinition: true)
!213 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 320, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!216 = !{!217}
!217 = !DISubrange(count: 10)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !185, file: !213, line: 1043, type: !220, isLocal: false, isDefinition: true)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !213, line: 57, size: 448, elements: !221)
!221 = !{!222, !223, !224, !228, !229}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !220, file: !213, line: 60, baseType: !63, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !213, line: 63, baseType: !34, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !220, file: !213, line: 67, baseType: !225, size: 256, offset: 64)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 8)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !220, file: !213, line: 70, baseType: !99, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !220, file: !213, line: 73, baseType: !99, size: 64, offset: 384)
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !185, file: !213, line: 108, type: !220, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233)
!233 = distinct !DIGlobalVariable(name: "slot0", scope: !185, file: !213, line: 834, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 256)
!237 = !DIGlobalVariableExpression(var: !238)
!238 = distinct !DIGlobalVariable(name: "slotvec", scope: !185, file: !213, line: 837, type: !239, isLocal: true, isDefinition: true)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !213, line: 826, size: 128, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !240, file: !213, line: 828, baseType: !102, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !240, file: !213, line: 829, baseType: !43, size: 64, offset: 64)
!244 = !DIGlobalVariableExpression(var: !245)
!245 = distinct !DIGlobalVariable(name: "nslots", scope: !185, file: !213, line: 835, type: !34, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247)
!247 = distinct !DIGlobalVariable(name: "slotvec0", scope: !185, file: !213, line: 836, type: !240, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 704, elements: !250)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!250 = !{!251}
!251 = !DISubrange(count: 11)
!252 = !DIGlobalVariableExpression(var: !253)
!253 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !254, file: !257, line: 26, type: !258, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, globals: !256)
!255 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!256 = !{!252}
!257 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 376, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 47)
!261 = !DIGlobalVariableExpression(var: !262)
!262 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !263, file: !607, line: 120, type: !608, isLocal: true, isDefinition: true)
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !265, retainedTypes: !604, globals: !606)
!264 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!265 = !{!266}
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !267, line: 41, size: 32, elements: !268)
!267 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!269 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!270 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!271 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!272 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!273 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!274 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!275 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!276 = !DIEnumerator(name: "DAY_1", value: 131079)
!277 = !DIEnumerator(name: "DAY_2", value: 131080)
!278 = !DIEnumerator(name: "DAY_3", value: 131081)
!279 = !DIEnumerator(name: "DAY_4", value: 131082)
!280 = !DIEnumerator(name: "DAY_5", value: 131083)
!281 = !DIEnumerator(name: "DAY_6", value: 131084)
!282 = !DIEnumerator(name: "DAY_7", value: 131085)
!283 = !DIEnumerator(name: "ABMON_1", value: 131086)
!284 = !DIEnumerator(name: "ABMON_2", value: 131087)
!285 = !DIEnumerator(name: "ABMON_3", value: 131088)
!286 = !DIEnumerator(name: "ABMON_4", value: 131089)
!287 = !DIEnumerator(name: "ABMON_5", value: 131090)
!288 = !DIEnumerator(name: "ABMON_6", value: 131091)
!289 = !DIEnumerator(name: "ABMON_7", value: 131092)
!290 = !DIEnumerator(name: "ABMON_8", value: 131093)
!291 = !DIEnumerator(name: "ABMON_9", value: 131094)
!292 = !DIEnumerator(name: "ABMON_10", value: 131095)
!293 = !DIEnumerator(name: "ABMON_11", value: 131096)
!294 = !DIEnumerator(name: "ABMON_12", value: 131097)
!295 = !DIEnumerator(name: "MON_1", value: 131098)
!296 = !DIEnumerator(name: "MON_2", value: 131099)
!297 = !DIEnumerator(name: "MON_3", value: 131100)
!298 = !DIEnumerator(name: "MON_4", value: 131101)
!299 = !DIEnumerator(name: "MON_5", value: 131102)
!300 = !DIEnumerator(name: "MON_6", value: 131103)
!301 = !DIEnumerator(name: "MON_7", value: 131104)
!302 = !DIEnumerator(name: "MON_8", value: 131105)
!303 = !DIEnumerator(name: "MON_9", value: 131106)
!304 = !DIEnumerator(name: "MON_10", value: 131107)
!305 = !DIEnumerator(name: "MON_11", value: 131108)
!306 = !DIEnumerator(name: "MON_12", value: 131109)
!307 = !DIEnumerator(name: "AM_STR", value: 131110)
!308 = !DIEnumerator(name: "PM_STR", value: 131111)
!309 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!310 = !DIEnumerator(name: "D_FMT", value: 131113)
!311 = !DIEnumerator(name: "T_FMT", value: 131114)
!312 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!313 = !DIEnumerator(name: "ERA", value: 131116)
!314 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!315 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!316 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!317 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!318 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!319 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!320 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!321 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!322 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!323 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!324 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!325 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!326 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!327 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!328 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!329 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!330 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!331 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!332 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!333 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!334 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!335 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!336 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!337 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!338 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!339 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!340 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!341 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!342 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!343 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!344 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!345 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!346 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!347 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!348 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!349 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!350 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!351 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!352 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!353 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!354 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!355 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!356 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!357 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!358 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!359 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!360 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!361 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!362 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!363 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!364 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!365 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!366 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!367 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!368 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!369 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!370 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!371 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!372 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!373 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!374 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!375 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!376 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!377 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!378 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!379 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!380 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!381 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!382 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!383 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!384 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!385 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!386 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!387 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!388 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!389 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!390 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!391 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!392 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!393 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!394 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!395 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!396 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!397 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!398 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!399 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!400 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!401 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!402 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!403 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!404 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!405 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!406 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!407 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!408 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!409 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!410 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!411 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!412 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!413 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!414 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!415 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!416 = !DIEnumerator(name: "CODESET", value: 14)
!417 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!418 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!419 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!420 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!472 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!473 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!488 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!489 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!490 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!491 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!492 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!493 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!494 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!495 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!496 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!497 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!498 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!499 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!500 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!501 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!502 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!503 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!504 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!505 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!506 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!507 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!508 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!509 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!510 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!527 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!528 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!531 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!532 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!533 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!534 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!535 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!536 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!537 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!538 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!539 = !DIEnumerator(name: "THOUSEP", value: 65537)
!540 = !DIEnumerator(name: "__GROUPING", value: 65538)
!541 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!542 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!543 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!544 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!545 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!546 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!547 = !DIEnumerator(name: "__YESSTR", value: 327682)
!548 = !DIEnumerator(name: "__NOSTR", value: 327683)
!549 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!550 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!551 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!552 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!553 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!554 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!555 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!556 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!557 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!558 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!559 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!560 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!561 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!562 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!563 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!564 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!566 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!567 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!568 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!569 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!570 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!571 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!572 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!573 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!574 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!575 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!576 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!577 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!578 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!579 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!580 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!581 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!582 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!583 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!584 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!585 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!602 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!603 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!604 = !{!101, !43, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!606 = !{!261}
!607 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !611)
!610 = !DIFile(filename: "./lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = !{!109}
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !614, retainedTypes: !619)
!613 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = !{!615}
!615 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !616, line: 41, size: 32, elements: !617)
!616 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = !{!618}
!618 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!619 = !{!101}
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !622, retainedTypes: !636)
!621 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = !{!623}
!623 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !625, file: !624, line: 192, size: 32, elements: !634)
!624 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!625 = distinct !DISubprogram(name: "x2nrealloc", scope: !624, file: !624, line: 180, type: !626, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !629)
!626 = !DISubroutineType(types: !627)
!627 = !{!101, !101, !628, !102}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!629 = !{!630, !631, !632, !633}
!630 = !DILocalVariable(name: "p", arg: 1, scope: !625, file: !624, line: 180, type: !101)
!631 = !DILocalVariable(name: "pn", arg: 2, scope: !625, file: !624, line: 180, type: !628)
!632 = !DILocalVariable(name: "s", arg: 3, scope: !625, file: !624, line: 180, type: !102)
!633 = !DILocalVariable(name: "n", scope: !625, file: !624, line: 182, type: !102)
!634 = !{!635}
!635 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!636 = !{!102, !43, !101}
!637 = distinct !DICompileUnit(language: DW_LANG_C99, file: !638, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146)
!638 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !619)
!640 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !643)
!642 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!643 = !{!102}
!644 = distinct !DICompileUnit(language: DW_LANG_C99, file: !645, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146)
!645 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !648)
!647 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!648 = !{!102, !104, !106, !99}
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146)
!650 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !619)
!652 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !146, retainedTypes: !619)
!654 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!655 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!656 = !{i32 2, !"Dwarf Version", i32 4}
!657 = !{i32 2, !"Debug Info Version", i32 3}
!658 = !{i32 1, !"PIC Level", i32 2}
!659 = !{i32 1, !"PIE Level", i32 2}
!660 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 196, type: !661, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !34}
!663 = !{!664}
!664 = !DILocalVariable(name: "status", arg: 1, scope: !660, file: !3, line: 196, type: !34)
!665 = !DIExpression()
!666 = !DILocation(line: 196, column: 12, scope: !660)
!667 = !DILocation(line: 198, column: 14, scope: !668)
!668 = distinct !DILexicalBlock(scope: !660, file: !3, line: 198, column: 7)
!669 = !DILocation(line: 198, column: 7, scope: !660)
!670 = !DILocation(line: 199, column: 5, scope: !671)
!671 = !DILexicalBlockFile(scope: !672, file: !3, discriminator: 1)
!672 = distinct !DILexicalBlock(scope: !668, file: !3, line: 199, column: 5)
!673 = !{!674, !674, i64 0}
!674 = !{!"any pointer", !675, i64 0}
!675 = !{!"omnipotent char", !676, i64 0}
!676 = !{!"Simple C/C++ TBAA"}
!677 = !DILocation(line: 199, column: 5, scope: !678)
!678 = !DILexicalBlockFile(scope: !672, file: !3, discriminator: 3)
!679 = !DILocation(line: 199, column: 5, scope: !680)
!680 = !DILexicalBlockFile(scope: !672, file: !3, discriminator: 2)
!681 = !DILocation(line: 202, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !668, file: !3, line: 201, column: 5)
!683 = !DILocation(line: 202, column: 7, scope: !684)
!684 = !DILexicalBlockFile(scope: !682, file: !3, discriminator: 1)
!685 = !DILocalVariable(name: "__c", arg: 1, scope: !686, file: !687, line: 105, type: !34)
!686 = distinct !DISubprogram(name: "putchar_unlocked", scope: !687, file: !687, line: 105, type: !688, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !690)
!687 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!688 = !DISubroutineType(types: !689)
!689 = !{!34, !34}
!690 = !{!685}
!691 = !DILocation(line: 105, column: 23, scope: !686, inlinedAt: !692)
!692 = distinct !DILocation(line: 207, column: 7, scope: !682)
!693 = !DILocation(line: 107, column: 10, scope: !686, inlinedAt: !692)
!694 = !{!695, !674, i64 40}
!695 = !{!"_IO_FILE", !696, i64 0, !674, i64 8, !674, i64 16, !674, i64 24, !674, i64 32, !674, i64 40, !674, i64 48, !674, i64 56, !674, i64 64, !674, i64 72, !674, i64 80, !674, i64 88, !674, i64 96, !674, i64 104, !696, i64 112, !696, i64 116, !697, i64 120, !698, i64 128, !675, i64 130, !675, i64 131, !674, i64 136, !697, i64 144, !674, i64 152, !674, i64 160, !674, i64 168, !674, i64 176, !697, i64 184, !696, i64 192, !675, i64 196}
!696 = !{!"int", !675, i64 0}
!697 = !{!"long", !675, i64 0}
!698 = !{!"short", !675, i64 0}
!699 = !{!695, !674, i64 48}
!700 = !{!"branch_weights", i32 2000, i32 1}
!701 = !DILocation(line: 107, column: 10, scope: !702, inlinedAt: !692)
!702 = !DILexicalBlockFile(scope: !686, file: !687, discriminator: 1)
!703 = !DILocation(line: 107, column: 10, scope: !704, inlinedAt: !692)
!704 = !DILexicalBlockFile(scope: !686, file: !687, discriminator: 2)
!705 = !{!675, !675, i64 0}
!706 = !DILocation(line: 208, column: 7, scope: !682)
!707 = !DILocation(line: 208, column: 7, scope: !684)
!708 = !DILocation(line: 209, column: 7, scope: !682)
!709 = !DILocation(line: 209, column: 7, scope: !684)
!710 = !DILocation(line: 210, column: 7, scope: !682)
!711 = !DILocation(line: 210, column: 7, scope: !684)
!712 = !DILocation(line: 219, column: 7, scope: !682)
!713 = !DILocation(line: 219, column: 7, scope: !684)
!714 = !DILocation(line: 228, column: 7, scope: !682)
!715 = !DILocation(line: 228, column: 7, scope: !684)
!716 = !DILocation(line: 235, column: 7, scope: !682)
!717 = !DILocation(line: 235, column: 7, scope: !684)
!718 = !DILocation(line: 241, column: 7, scope: !682)
!719 = !DILocation(line: 241, column: 7, scope: !684)
!720 = !DILocation(line: 250, column: 7, scope: !682)
!721 = !DILocation(line: 250, column: 7, scope: !684)
!722 = !DILocation(line: 256, column: 7, scope: !682)
!723 = !DILocation(line: 256, column: 7, scope: !684)
!724 = !DILocation(line: 263, column: 7, scope: !682)
!725 = !DILocation(line: 263, column: 7, scope: !684)
!726 = !DILocation(line: 642, column: 15, scope: !113, inlinedAt: !727)
!727 = distinct !DILocation(line: 268, column: 7, scope: !682)
!728 = !DILocation(line: 651, column: 3, scope: !113, inlinedAt: !727)
!729 = !DILocation(line: 651, column: 3, scope: !730, inlinedAt: !727)
!730 = !DILexicalBlockFile(scope: !113, file: !114, discriminator: 1)
!731 = !DILocation(line: 655, column: 29, scope: !113, inlinedAt: !727)
!732 = !DILocation(line: 655, column: 15, scope: !113, inlinedAt: !727)
!733 = !DILocation(line: 656, column: 7, scope: !133, inlinedAt: !727)
!734 = !DILocation(line: 656, column: 19, scope: !133, inlinedAt: !727)
!735 = !DILocation(line: 656, column: 22, scope: !736, inlinedAt: !727)
!736 = !DILexicalBlockFile(scope: !133, file: !114, discriminator: 16)
!737 = !DILocation(line: 656, column: 7, scope: !738, inlinedAt: !727)
!738 = !DILexicalBlockFile(scope: !113, file: !114, discriminator: 16)
!739 = !DILocation(line: 662, column: 7, scope: !740, inlinedAt: !727)
!740 = distinct !DILexicalBlock(scope: !133, file: !114, line: 657, column: 5)
!741 = !DILocation(line: 662, column: 7, scope: !742, inlinedAt: !727)
!742 = !DILexicalBlockFile(scope: !740, file: !114, discriminator: 1)
!743 = !DILocation(line: 664, column: 5, scope: !740, inlinedAt: !727)
!744 = !DILocation(line: 665, column: 3, scope: !113, inlinedAt: !727)
!745 = !DILocation(line: 665, column: 3, scope: !730, inlinedAt: !727)
!746 = !DILocation(line: 667, column: 3, scope: !113, inlinedAt: !727)
!747 = !DILocation(line: 667, column: 3, scope: !730, inlinedAt: !727)
!748 = !DILocation(line: 270, column: 3, scope: !660)
!749 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 290, type: !750, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{!34, !34, !141}
!752 = !{!753, !754, !755, !756, !757, !760, !761, !763}
!753 = !DILocalVariable(name: "argc", arg: 1, scope: !749, file: !3, line: 290, type: !34)
!754 = !DILocalVariable(name: "argv", arg: 2, scope: !749, file: !3, line: 290, type: !141)
!755 = !DILocalVariable(name: "v", scope: !749, file: !3, line: 292, type: !17)
!756 = !DILocalVariable(name: "u_argc", scope: !749, file: !3, line: 308, type: !109)
!757 = !DILocalVariable(name: "__s1_len", scope: !758, file: !3, line: 309, type: !102)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 309, column: 21)
!759 = distinct !DILexicalBlock(scope: !749, file: !3, line: 309, column: 7)
!760 = !DILocalVariable(name: "__s2_len", scope: !758, file: !3, line: 309, type: !102)
!761 = !DILocalVariable(name: "__s2", scope: !762, file: !3, line: 309, type: !106)
!762 = distinct !DILexicalBlock(scope: !758, file: !3, line: 309, column: 21)
!763 = !DILocalVariable(name: "__result", scope: !762, file: !3, line: 309, type: !34)
!764 = !DILocation(line: 290, column: 11, scope: !749)
!765 = !DILocation(line: 290, column: 24, scope: !749)
!766 = !DILocation(line: 295, column: 21, scope: !749)
!767 = !DILocation(line: 295, column: 3, scope: !749)
!768 = !DILocation(line: 296, column: 3, scope: !749)
!769 = !DILocation(line: 297, column: 3, scope: !749)
!770 = !DILocation(line: 298, column: 3, scope: !749)
!771 = !DILocalVariable(name: "status", arg: 1, scope: !772, file: !114, line: 99, type: !34)
!772 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !114, file: !114, line: 99, type: !661, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !773)
!773 = !{!771}
!774 = !DILocation(line: 99, column: 30, scope: !772, inlinedAt: !775)
!775 = distinct !DILocation(line: 300, column: 3, scope: !749)
!776 = !DILocation(line: 102, column: 18, scope: !777, inlinedAt: !775)
!777 = distinct !DILexicalBlock(scope: !772, file: !114, line: 101, column: 7)
!778 = !{!696, !696, i64 0}
!779 = !DILocation(line: 301, column: 3, scope: !749)
!780 = !DILocation(line: 303, column: 3, scope: !749)
!781 = !DILocation(line: 308, column: 16, scope: !749)
!782 = !DILocation(line: 309, column: 9, scope: !759)
!783 = !DILocation(line: 309, column: 18, scope: !759)
!784 = !DILocation(line: 309, column: 21, scope: !758)
!785 = !DILocation(line: 309, column: 21, scope: !786)
!786 = !DILexicalBlockFile(scope: !762, file: !3, discriminator: 3)
!787 = !DILocation(line: 309, column: 21, scope: !762)
!788 = !DILocation(line: 309, column: 21, scope: !789)
!789 = !DILexicalBlockFile(scope: !790, file: !3, discriminator: 4)
!790 = distinct !DILexicalBlock(scope: !762, file: !3, line: 309, column: 21)
!791 = !DILocation(line: 309, column: 21, scope: !792)
!792 = !DILexicalBlockFile(scope: !790, file: !3, discriminator: 3)
!793 = !DILocation(line: 309, column: 21, scope: !794)
!794 = !DILexicalBlockFile(scope: !795, file: !3, discriminator: 5)
!795 = distinct !DILexicalBlock(scope: !790, file: !3, line: 309, column: 21)
!796 = !DILocation(line: 309, column: 21, scope: !797)
!797 = !DILexicalBlockFile(scope: !798, file: !3, discriminator: 6)
!798 = distinct !DILexicalBlock(scope: !795, file: !3, line: 309, column: 21)
!799 = !DILocation(line: 309, column: 21, scope: !800)
!800 = !DILexicalBlockFile(scope: !798, file: !3, discriminator: 5)
!801 = !DILocation(line: 309, column: 21, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !3, discriminator: 7)
!803 = distinct !DILexicalBlock(scope: !798, file: !3, line: 309, column: 21)
!804 = !DILocation(line: 309, column: 21, scope: !805)
!805 = !DILexicalBlockFile(scope: !758, file: !3, discriminator: 12)
!806 = !DILocation(line: 309, column: 7, scope: !807)
!807 = !DILexicalBlockFile(scope: !749, file: !3, discriminator: 14)
!808 = !DILocation(line: 311, column: 7, scope: !809)
!809 = distinct !DILexicalBlock(scope: !759, file: !3, line: 310, column: 5)
!810 = !DILocation(line: 315, column: 14, scope: !811)
!811 = distinct !DILexicalBlock(scope: !749, file: !3, line: 315, column: 7)
!812 = !DILocation(line: 315, column: 7, scope: !749)
!813 = !DILocation(line: 317, column: 20, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !3, line: 316, column: 5)
!815 = !DILocation(line: 317, column: 7, scope: !816)
!816 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 1)
!817 = !DILocation(line: 318, column: 7, scope: !814)
!818 = !DILocation(line: 321, column: 15, scope: !749)
!819 = !DILocation(line: 321, column: 8, scope: !749)
!820 = !DILocation(line: 323, column: 7, scope: !749)
!821 = !DILocation(line: 292, column: 10, scope: !749)
!822 = !DILocation(line: 516, column: 11, scope: !823, inlinedAt: !826)
!823 = distinct !DISubprogram(name: "nomoreargs", scope: !3, file: !3, line: 514, type: !824, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !146)
!824 = !DISubroutineType(types: !825)
!825 = !{!45}
!826 = distinct !DILocation(line: 324, column: 8, scope: !827)
!827 = distinct !DILexicalBlock(scope: !749, file: !3, line: 324, column: 7)
!828 = !DILocation(line: 516, column: 10, scope: !823, inlinedAt: !826)
!829 = !DILocation(line: 516, column: 16, scope: !823, inlinedAt: !826)
!830 = !DILocation(line: 324, column: 7, scope: !749)
!831 = !DILocation(line: 325, column: 5, scope: !827)
!832 = !DILocalVariable(name: "v", arg: 1, scope: !833, file: !3, line: 368, type: !17)
!833 = distinct !DISubprogram(name: "printv", scope: !3, file: !3, line: 368, type: !834, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !17}
!836 = !{!832}
!837 = !DILocation(line: 368, column: 16, scope: !833, inlinedAt: !838)
!838 = distinct !DILocation(line: 326, column: 3, scope: !749)
!839 = !DILocation(line: 370, column: 14, scope: !833, inlinedAt: !838)
!840 = !{!841, !675, i64 0}
!841 = !{!"valinfo", !675, i64 0, !675, i64 8}
!842 = !DILocation(line: 370, column: 3, scope: !833, inlinedAt: !838)
!843 = !DILocation(line: 373, column: 20, scope: !844, inlinedAt: !838)
!844 = distinct !DILexicalBlock(scope: !833, file: !3, line: 371, column: 5)
!845 = !DILocation(line: 373, column: 32, scope: !844, inlinedAt: !838)
!846 = !DILocation(line: 373, column: 7, scope: !844, inlinedAt: !838)
!847 = !DILocation(line: 105, column: 23, scope: !686, inlinedAt: !848)
!848 = distinct !DILocation(line: 374, column: 7, scope: !844, inlinedAt: !838)
!849 = !DILocation(line: 107, column: 10, scope: !686, inlinedAt: !848)
!850 = !DILocation(line: 107, column: 10, scope: !702, inlinedAt: !848)
!851 = !DILocation(line: 107, column: 10, scope: !704, inlinedAt: !848)
!852 = !DILocation(line: 377, column: 16, scope: !844, inlinedAt: !838)
!853 = !DILocation(line: 377, column: 18, scope: !844, inlinedAt: !838)
!854 = !DILocation(line: 377, column: 7, scope: !844, inlinedAt: !838)
!855 = !DILocation(line: 378, column: 7, scope: !844, inlinedAt: !838)
!856 = !DILocation(line: 380, column: 7, scope: !844, inlinedAt: !838)
!857 = !DILocalVariable(name: "v", arg: 1, scope: !858, file: !3, line: 387, type: !17)
!858 = distinct !DISubprogram(name: "null", scope: !3, file: !3, line: 387, type: !859, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!45, !17}
!861 = !{!857, !862}
!862 = !DILocalVariable(name: "cp", scope: !863, file: !3, line: 395, type: !99)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 394, column: 7)
!864 = distinct !DILexicalBlock(scope: !858, file: !3, line: 390, column: 5)
!865 = !DILocation(line: 387, column: 14, scope: !858, inlinedAt: !866)
!866 = distinct !DILocation(line: 328, column: 10, scope: !749)
!867 = !DILocation(line: 389, column: 14, scope: !858, inlinedAt: !866)
!868 = !DILocation(line: 389, column: 3, scope: !858, inlinedAt: !866)
!869 = !DILocation(line: 392, column: 14, scope: !864, inlinedAt: !866)
!870 = !{!871, !696, i64 4}
!871 = !{!"", !696, i64 0, !696, i64 4, !674, i64 8}
!872 = !DILocation(line: 392, column: 14, scope: !873, inlinedAt: !866)
!873 = !DILexicalBlockFile(scope: !864, file: !3, discriminator: 2)
!874 = !DILocation(line: 392, column: 7, scope: !875, inlinedAt: !866)
!875 = !DILexicalBlockFile(scope: !864, file: !3, discriminator: 3)
!876 = !DILocation(line: 395, column: 29, scope: !863, inlinedAt: !866)
!877 = !DILocation(line: 395, column: 31, scope: !863, inlinedAt: !866)
!878 = !DILocation(line: 395, column: 21, scope: !863, inlinedAt: !866)
!879 = !DILocation(line: 396, column: 13, scope: !880, inlinedAt: !866)
!880 = distinct !DILexicalBlock(scope: !863, file: !3, line: 396, column: 13)
!881 = !DILocation(line: 396, column: 17, scope: !880, inlinedAt: !866)
!882 = !DILocation(line: 396, column: 13, scope: !863, inlinedAt: !866)
!883 = !DILocation(line: 399, column: 20, scope: !863, inlinedAt: !866)
!884 = !DILocation(line: 399, column: 12, scope: !863, inlinedAt: !866)
!885 = !DILocation(line: 401, column: 9, scope: !863, inlinedAt: !866)
!886 = distinct !{!886, !887, !888}
!887 = !DILocation(line: 401, column: 9, scope: !863)
!888 = !DILocation(line: 406, column: 21, scope: !863)
!889 = !DILocation(line: 403, column: 17, scope: !890, inlinedAt: !866)
!890 = distinct !DILexicalBlock(scope: !891, file: !3, line: 403, column: 17)
!891 = distinct !DILexicalBlock(scope: !863, file: !3, line: 402, column: 11)
!892 = !DILocation(line: 403, column: 21, scope: !890, inlinedAt: !866)
!893 = !DILocation(line: 403, column: 17, scope: !891, inlinedAt: !866)
!894 = !DILocation(line: 406, column: 17, scope: !863, inlinedAt: !866)
!895 = !DILocation(line: 406, column: 16, scope: !863, inlinedAt: !866)
!896 = !DILocation(line: 405, column: 11, scope: !897, inlinedAt: !866)
!897 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 1)
!898 = !DILocation(line: 411, column: 7, scope: !864, inlinedAt: !866)
!899 = !DILocation(line: 328, column: 10, scope: !749)
!900 = !DILocation(line: 328, column: 3, scope: !749)
!901 = distinct !DISubprogram(name: "eval", scope: !3, file: !3, line: 938, type: !15, isLocal: true, isDefinition: true, scopeLine: 939, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !902)
!902 = !{!903, !904, !905}
!903 = !DILocalVariable(name: "evaluate", arg: 1, scope: !901, file: !3, line: 938, type: !45)
!904 = !DILocalVariable(name: "l", scope: !901, file: !3, line: 940, type: !17)
!905 = !DILocalVariable(name: "r", scope: !901, file: !3, line: 941, type: !17)
!906 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!907 = !DILocation(line: 938, column: 12, scope: !901)
!908 = !DILocation(line: 946, column: 7, scope: !901)
!909 = !DILocation(line: 940, column: 10, scope: !901)
!910 = !DILocalVariable(name: "str", arg: 1, scope: !911, file: !3, line: 499, type: !99)
!911 = distinct !DISubprogram(name: "nextarg", scope: !3, file: !3, line: 499, type: !912, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{!45, !99}
!914 = !{!910, !915, !918, !920}
!915 = !DILocalVariable(name: "r", scope: !916, file: !3, line: 505, type: !45)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 504, column: 5)
!917 = distinct !DILexicalBlock(scope: !911, file: !3, line: 501, column: 7)
!918 = !DILocalVariable(name: "__s1_len", scope: !919, file: !3, line: 505, type: !102)
!919 = distinct !DILexicalBlock(scope: !916, file: !3, line: 505, column: 16)
!920 = !DILocalVariable(name: "__s2_len", scope: !919, file: !3, line: 505, type: !102)
!921 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !922)
!922 = distinct !DILocation(line: 949, column: 11, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 949, column: 11)
!924 = distinct !DILexicalBlock(scope: !901, file: !3, line: 948, column: 5)
!925 = !DILocation(line: 501, column: 8, scope: !917, inlinedAt: !922)
!926 = !DILocation(line: 501, column: 7, scope: !917, inlinedAt: !922)
!927 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !922)
!928 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !922)
!929 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !922)
!930 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !922)
!931 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !922)
!932 = !DILocation(line: 949, column: 11, scope: !924)
!933 = !DILocation(line: 951, column: 31, scope: !934)
!934 = distinct !DILexicalBlock(scope: !923, file: !3, line: 950, column: 9)
!935 = !DILocation(line: 387, column: 14, scope: !858, inlinedAt: !936)
!936 = distinct !DILocation(line: 951, column: 34, scope: !937)
!937 = !DILexicalBlockFile(scope: !934, file: !3, discriminator: 1)
!938 = !DILocation(line: 389, column: 14, scope: !858, inlinedAt: !936)
!939 = !DILocation(line: 389, column: 3, scope: !858, inlinedAt: !936)
!940 = !DILocation(line: 392, column: 14, scope: !864, inlinedAt: !936)
!941 = !DILocation(line: 392, column: 14, scope: !873, inlinedAt: !936)
!942 = !DILocation(line: 392, column: 7, scope: !875, inlinedAt: !936)
!943 = !DILocation(line: 395, column: 31, scope: !863, inlinedAt: !936)
!944 = !DILocation(line: 395, column: 21, scope: !863, inlinedAt: !936)
!945 = !DILocation(line: 396, column: 13, scope: !880, inlinedAt: !936)
!946 = !DILocation(line: 396, column: 17, scope: !880, inlinedAt: !936)
!947 = !DILocation(line: 396, column: 13, scope: !863, inlinedAt: !936)
!948 = !DILocation(line: 399, column: 20, scope: !863, inlinedAt: !936)
!949 = !DILocation(line: 399, column: 12, scope: !863, inlinedAt: !936)
!950 = !DILocation(line: 401, column: 9, scope: !863, inlinedAt: !936)
!951 = !DILocation(line: 403, column: 17, scope: !890, inlinedAt: !936)
!952 = !DILocation(line: 403, column: 21, scope: !890, inlinedAt: !936)
!953 = !DILocation(line: 403, column: 17, scope: !891, inlinedAt: !936)
!954 = !DILocation(line: 406, column: 17, scope: !863, inlinedAt: !936)
!955 = !DILocation(line: 406, column: 16, scope: !863, inlinedAt: !936)
!956 = !DILocation(line: 405, column: 11, scope: !897, inlinedAt: !936)
!957 = !DILocation(line: 411, column: 7, scope: !864, inlinedAt: !936)
!958 = !DILocation(line: 951, column: 15, scope: !959)
!959 = !DILexicalBlockFile(scope: !934, file: !3, discriminator: 2)
!960 = !DILocation(line: 941, column: 10, scope: !901)
!961 = !DILocation(line: 387, column: 14, scope: !858, inlinedAt: !962)
!962 = distinct !DILocation(line: 952, column: 15, scope: !963)
!963 = distinct !DILexicalBlock(scope: !934, file: !3, line: 952, column: 15)
!964 = !DILocation(line: 389, column: 14, scope: !858, inlinedAt: !962)
!965 = !DILocation(line: 389, column: 3, scope: !858, inlinedAt: !962)
!966 = !DILocation(line: 395, column: 31, scope: !863, inlinedAt: !962)
!967 = !DILocation(line: 395, column: 21, scope: !863, inlinedAt: !962)
!968 = !DILocation(line: 396, column: 13, scope: !880, inlinedAt: !962)
!969 = !DILocation(line: 396, column: 17, scope: !880, inlinedAt: !962)
!970 = !DILocation(line: 396, column: 13, scope: !863, inlinedAt: !962)
!971 = !DILocation(line: 399, column: 20, scope: !863, inlinedAt: !962)
!972 = !DILocation(line: 399, column: 12, scope: !863, inlinedAt: !962)
!973 = !DILocation(line: 401, column: 9, scope: !863, inlinedAt: !962)
!974 = !DILocation(line: 403, column: 17, scope: !890, inlinedAt: !962)
!975 = !DILocation(line: 403, column: 21, scope: !890, inlinedAt: !962)
!976 = !DILocation(line: 403, column: 17, scope: !891, inlinedAt: !962)
!977 = !DILocation(line: 406, column: 17, scope: !863, inlinedAt: !962)
!978 = !DILocation(line: 406, column: 16, scope: !863, inlinedAt: !962)
!979 = !DILocation(line: 405, column: 11, scope: !897, inlinedAt: !962)
!980 = !DILocation(line: 411, column: 7, scope: !864, inlinedAt: !962)
!981 = !DILocation(line: 392, column: 14, scope: !864, inlinedAt: !962)
!982 = !DILocation(line: 392, column: 14, scope: !873, inlinedAt: !962)
!983 = !DILocation(line: 952, column: 15, scope: !934)
!984 = !DILocalVariable(name: "v", arg: 1, scope: !985, file: !3, line: 356, type: !17)
!985 = distinct !DISubprogram(name: "freev", scope: !3, file: !3, line: 356, type: !834, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !986)
!986 = !{!984}
!987 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !988)
!988 = distinct !DILocation(line: 954, column: 15, scope: !989)
!989 = distinct !DILexicalBlock(scope: !963, file: !3, line: 953, column: 13)
!990 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !988)
!991 = distinct !DILexicalBlock(scope: !985, file: !3, line: 358, column: 7)
!992 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !988)
!993 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !988)
!994 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !988)
!995 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !988)
!996 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !988)
!997 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !988)
!998 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !988)
!999 = !DILocation(line: 387, column: 14, scope: !858, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 956, column: 19, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !989, file: !3, line: 956, column: 19)
!1002 = !DILocation(line: 389, column: 14, scope: !858, inlinedAt: !1000)
!1003 = !DILocation(line: 389, column: 3, scope: !858, inlinedAt: !1000)
!1004 = !DILocation(line: 395, column: 29, scope: !863, inlinedAt: !1000)
!1005 = !DILocation(line: 395, column: 31, scope: !863, inlinedAt: !1000)
!1006 = !DILocation(line: 395, column: 21, scope: !863, inlinedAt: !1000)
!1007 = !DILocation(line: 396, column: 13, scope: !880, inlinedAt: !1000)
!1008 = !DILocation(line: 396, column: 17, scope: !880, inlinedAt: !1000)
!1009 = !DILocation(line: 396, column: 13, scope: !863, inlinedAt: !1000)
!1010 = !DILocation(line: 399, column: 20, scope: !863, inlinedAt: !1000)
!1011 = !DILocation(line: 399, column: 12, scope: !863, inlinedAt: !1000)
!1012 = !DILocation(line: 401, column: 9, scope: !863, inlinedAt: !1000)
!1013 = !DILocation(line: 403, column: 17, scope: !890, inlinedAt: !1000)
!1014 = !DILocation(line: 403, column: 21, scope: !890, inlinedAt: !1000)
!1015 = !DILocation(line: 403, column: 17, scope: !891, inlinedAt: !1000)
!1016 = !DILocation(line: 406, column: 17, scope: !863, inlinedAt: !1000)
!1017 = !DILocation(line: 406, column: 16, scope: !863, inlinedAt: !1000)
!1018 = !DILocation(line: 405, column: 11, scope: !897, inlinedAt: !1000)
!1019 = !DILocation(line: 411, column: 7, scope: !864, inlinedAt: !1000)
!1020 = !DILocation(line: 392, column: 14, scope: !864, inlinedAt: !1000)
!1021 = !DILocation(line: 392, column: 14, scope: !873, inlinedAt: !1000)
!1022 = !DILocation(line: 956, column: 19, scope: !989)
!1023 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 958, column: 19, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 957, column: 17)
!1026 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1024)
!1027 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1024)
!1028 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1024)
!1029 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1024)
!1030 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1024)
!1031 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1024)
!1032 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1024)
!1033 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1024)
!1034 = !DILocalVariable(name: "i", arg: 1, scope: !1035, file: !3, line: 334, type: !39)
!1035 = distinct !DISubprogram(name: "int_value", scope: !3, file: !3, line: 334, type: !1036, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1038)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!17, !39}
!1038 = !{!1034, !1039}
!1039 = !DILocalVariable(name: "v", scope: !1035, file: !3, line: 336, type: !17)
!1040 = !DILocation(line: 334, column: 30, scope: !1035, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 959, column: 23, scope: !1025)
!1042 = !DILocation(line: 336, column: 14, scope: !1035, inlinedAt: !1041)
!1043 = !DILocation(line: 336, column: 10, scope: !1035, inlinedAt: !1041)
!1044 = !DILocation(line: 337, column: 6, scope: !1035, inlinedAt: !1041)
!1045 = !DILocation(line: 337, column: 11, scope: !1035, inlinedAt: !1041)
!1046 = !DILocation(line: 338, column: 23, scope: !1035, inlinedAt: !1041)
!1047 = !DILocation(line: 338, column: 20, scope: !1035, inlinedAt: !1041)
!1048 = !DILocation(line: 338, column: 3, scope: !1035, inlinedAt: !1041)
!1049 = !DILocation(line: 960, column: 17, scope: !1025)
!1050 = distinct !{!1050, !1051, !1052}
!1051 = !DILocation(line: 947, column: 3, scope: !901)
!1052 = !DILocation(line: 967, column: 5, scope: !901)
!1053 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 963, column: 13, scope: !963)
!1055 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1054)
!1056 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1054)
!1057 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1054)
!1058 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1054)
!1059 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1054)
!1060 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1054)
!1061 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1054)
!1062 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1054)
!1063 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1054)
!1064 = !DILocation(line: 966, column: 9, scope: !923)
!1065 = distinct !DISubprogram(name: "syntax_error", scope: !3, file: !3, line: 275, type: !1066, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !146)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null}
!1068 = !DILocation(line: 277, column: 3, scope: !1065)
!1069 = !DILocation(line: 277, column: 3, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1065, file: !3, discriminator: 1)
!1071 = distinct !DISubprogram(name: "eval1", scope: !3, file: !3, line: 907, type: !15, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1071, file: !3, line: 907, type: !45)
!1074 = !DILocalVariable(name: "l", scope: !1071, file: !3, line: 909, type: !17)
!1075 = !DILocalVariable(name: "r", scope: !1071, file: !3, line: 910, type: !17)
!1076 = !DILocation(line: 907, column: 13, scope: !1071)
!1077 = !DILocation(line: 915, column: 7, scope: !1071)
!1078 = !DILocation(line: 909, column: 10, scope: !1071)
!1079 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 918, column: 11, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 918, column: 11)
!1082 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 917, column: 5)
!1083 = !DILocation(line: 501, column: 8, scope: !917, inlinedAt: !1080)
!1084 = !DILocation(line: 501, column: 7, scope: !917, inlinedAt: !1080)
!1085 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1080)
!1086 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1080)
!1087 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1080)
!1088 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1080)
!1089 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1080)
!1090 = !DILocation(line: 918, column: 11, scope: !1082)
!1091 = !DILocation(line: 920, column: 31, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 919, column: 9)
!1093 = !DILocation(line: 387, column: 14, scope: !858, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 920, column: 35, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1092, file: !3, discriminator: 1)
!1096 = !DILocation(line: 389, column: 14, scope: !858, inlinedAt: !1094)
!1097 = !DILocation(line: 389, column: 3, scope: !858, inlinedAt: !1094)
!1098 = !DILocation(line: 392, column: 14, scope: !864, inlinedAt: !1094)
!1099 = !DILocation(line: 392, column: 14, scope: !873, inlinedAt: !1094)
!1100 = !DILocation(line: 392, column: 7, scope: !875, inlinedAt: !1094)
!1101 = !DILocation(line: 395, column: 31, scope: !863, inlinedAt: !1094)
!1102 = !DILocation(line: 395, column: 21, scope: !863, inlinedAt: !1094)
!1103 = !DILocation(line: 396, column: 13, scope: !880, inlinedAt: !1094)
!1104 = !DILocation(line: 396, column: 17, scope: !880, inlinedAt: !1094)
!1105 = !DILocation(line: 396, column: 13, scope: !863, inlinedAt: !1094)
!1106 = !DILocation(line: 399, column: 20, scope: !863, inlinedAt: !1094)
!1107 = !DILocation(line: 399, column: 12, scope: !863, inlinedAt: !1094)
!1108 = !DILocation(line: 401, column: 9, scope: !863, inlinedAt: !1094)
!1109 = !DILocation(line: 403, column: 17, scope: !890, inlinedAt: !1094)
!1110 = !DILocation(line: 403, column: 21, scope: !890, inlinedAt: !1094)
!1111 = !DILocation(line: 403, column: 17, scope: !891, inlinedAt: !1094)
!1112 = !DILocation(line: 406, column: 17, scope: !863, inlinedAt: !1094)
!1113 = !DILocation(line: 406, column: 16, scope: !863, inlinedAt: !1094)
!1114 = !DILocation(line: 405, column: 11, scope: !897, inlinedAt: !1094)
!1115 = !DILocation(line: 411, column: 7, scope: !864, inlinedAt: !1094)
!1116 = !DILocation(line: 920, column: 34, scope: !1095)
!1117 = !DILocation(line: 920, column: 15, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1092, file: !3, discriminator: 2)
!1119 = !DILocation(line: 910, column: 10, scope: !1071)
!1120 = !DILocation(line: 387, column: 14, scope: !858, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 921, column: 15, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 921, column: 15)
!1123 = !DILocation(line: 389, column: 14, scope: !858, inlinedAt: !1121)
!1124 = !DILocation(line: 389, column: 3, scope: !858, inlinedAt: !1121)
!1125 = !DILocation(line: 395, column: 31, scope: !863, inlinedAt: !1121)
!1126 = !DILocation(line: 395, column: 21, scope: !863, inlinedAt: !1121)
!1127 = !DILocation(line: 396, column: 13, scope: !880, inlinedAt: !1121)
!1128 = !DILocation(line: 396, column: 17, scope: !880, inlinedAt: !1121)
!1129 = !DILocation(line: 396, column: 13, scope: !863, inlinedAt: !1121)
!1130 = !DILocation(line: 399, column: 20, scope: !863, inlinedAt: !1121)
!1131 = !DILocation(line: 399, column: 12, scope: !863, inlinedAt: !1121)
!1132 = !DILocation(line: 401, column: 9, scope: !863, inlinedAt: !1121)
!1133 = !DILocation(line: 403, column: 17, scope: !890, inlinedAt: !1121)
!1134 = !DILocation(line: 403, column: 21, scope: !890, inlinedAt: !1121)
!1135 = !DILocation(line: 403, column: 17, scope: !891, inlinedAt: !1121)
!1136 = !DILocation(line: 406, column: 17, scope: !863, inlinedAt: !1121)
!1137 = !DILocation(line: 406, column: 16, scope: !863, inlinedAt: !1121)
!1138 = !DILocation(line: 405, column: 11, scope: !897, inlinedAt: !1121)
!1139 = !DILocation(line: 411, column: 7, scope: !864, inlinedAt: !1121)
!1140 = !DILocation(line: 392, column: 14, scope: !864, inlinedAt: !1121)
!1141 = !DILocation(line: 392, column: 14, scope: !873, inlinedAt: !1121)
!1142 = !DILocation(line: 921, column: 24, scope: !1122)
!1143 = !DILocation(line: 387, column: 14, scope: !858, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 921, column: 27, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1122, file: !3, discriminator: 1)
!1146 = !DILocation(line: 389, column: 14, scope: !858, inlinedAt: !1144)
!1147 = !DILocation(line: 389, column: 3, scope: !858, inlinedAt: !1144)
!1148 = !DILocation(line: 395, column: 29, scope: !863, inlinedAt: !1144)
!1149 = !DILocation(line: 395, column: 31, scope: !863, inlinedAt: !1144)
!1150 = !DILocation(line: 395, column: 21, scope: !863, inlinedAt: !1144)
!1151 = !DILocation(line: 396, column: 13, scope: !880, inlinedAt: !1144)
!1152 = !DILocation(line: 396, column: 17, scope: !880, inlinedAt: !1144)
!1153 = !DILocation(line: 396, column: 13, scope: !863, inlinedAt: !1144)
!1154 = !DILocation(line: 399, column: 20, scope: !863, inlinedAt: !1144)
!1155 = !DILocation(line: 399, column: 12, scope: !863, inlinedAt: !1144)
!1156 = !DILocation(line: 401, column: 9, scope: !863, inlinedAt: !1144)
!1157 = !DILocation(line: 403, column: 17, scope: !890, inlinedAt: !1144)
!1158 = !DILocation(line: 403, column: 21, scope: !890, inlinedAt: !1144)
!1159 = !DILocation(line: 403, column: 17, scope: !891, inlinedAt: !1144)
!1160 = !DILocation(line: 406, column: 17, scope: !863, inlinedAt: !1144)
!1161 = !DILocation(line: 406, column: 16, scope: !863, inlinedAt: !1144)
!1162 = !DILocation(line: 405, column: 11, scope: !897, inlinedAt: !1144)
!1163 = !DILocation(line: 411, column: 7, scope: !864, inlinedAt: !1144)
!1164 = !DILocation(line: 392, column: 14, scope: !864, inlinedAt: !1144)
!1165 = !DILocation(line: 392, column: 14, scope: !873, inlinedAt: !1144)
!1166 = !DILocation(line: 921, column: 15, scope: !1095)
!1167 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 923, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 922, column: 13)
!1170 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1168)
!1171 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1168)
!1172 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1168)
!1173 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1168)
!1174 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1168)
!1175 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1168)
!1176 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1168)
!1177 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1168)
!1178 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 924, column: 15, scope: !1169)
!1180 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1179)
!1181 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1179)
!1182 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1179)
!1183 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1179)
!1184 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1179)
!1185 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1179)
!1186 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1179)
!1187 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1179)
!1188 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1179)
!1189 = !DILocation(line: 334, column: 30, scope: !1035, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 925, column: 19, scope: !1169)
!1191 = !DILocation(line: 336, column: 14, scope: !1035, inlinedAt: !1190)
!1192 = !DILocation(line: 336, column: 10, scope: !1035, inlinedAt: !1190)
!1193 = !DILocation(line: 337, column: 6, scope: !1035, inlinedAt: !1190)
!1194 = !DILocation(line: 337, column: 11, scope: !1035, inlinedAt: !1190)
!1195 = !DILocation(line: 338, column: 23, scope: !1035, inlinedAt: !1190)
!1196 = !DILocation(line: 338, column: 20, scope: !1035, inlinedAt: !1190)
!1197 = !DILocation(line: 338, column: 3, scope: !1035, inlinedAt: !1190)
!1198 = distinct !{!1198, !1199, !1200}
!1199 = !DILocation(line: 916, column: 3, scope: !1071)
!1200 = !DILocation(line: 932, column: 5, scope: !1071)
!1201 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 928, column: 13, scope: !1122)
!1203 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1202)
!1204 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1202)
!1205 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1202)
!1206 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1202)
!1207 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1202)
!1208 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1202)
!1209 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1202)
!1210 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1202)
!1211 = !DILocation(line: 931, column: 9, scope: !1081)
!1212 = !DILocation(line: 829, column: 13, scope: !14)
!1213 = !DILocation(line: 836, column: 7, scope: !14)
!1214 = !DILocation(line: 831, column: 10, scope: !14)
!1215 = !DILocation(line: 844, column: 12, scope: !50)
!1216 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 846, column: 11, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !50, file: !3, line: 846, column: 11)
!1219 = !DILocation(line: 501, column: 8, scope: !917, inlinedAt: !1217)
!1220 = !DILocation(line: 501, column: 7, scope: !917, inlinedAt: !1217)
!1221 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1217)
!1222 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1217)
!1223 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1217)
!1224 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1217)
!1225 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1217)
!1226 = !DILocation(line: 846, column: 11, scope: !50)
!1227 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 848, column: 16, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 848, column: 16)
!1230 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1228)
!1231 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1228)
!1232 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1228)
!1233 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1228)
!1234 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1228)
!1235 = !DILocation(line: 848, column: 16, scope: !1218)
!1236 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 850, column: 16, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 850, column: 16)
!1239 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1237)
!1240 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1237)
!1241 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1237)
!1242 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1237)
!1243 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1237)
!1244 = !DILocation(line: 850, column: 30, scope: !1238)
!1245 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 850, column: 33, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1238, file: !3, discriminator: 1)
!1248 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1246)
!1249 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1246)
!1250 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1246)
!1251 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1246)
!1252 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1246)
!1253 = !DILocation(line: 850, column: 16, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1229, file: !3, discriminator: 1)
!1255 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 852, column: 16, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 852, column: 16)
!1258 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1256)
!1259 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1256)
!1260 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1256)
!1261 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1256)
!1262 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1256)
!1263 = !DILocation(line: 852, column: 16, scope: !1238)
!1264 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 854, column: 16, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 854, column: 16)
!1267 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1265)
!1268 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1265)
!1269 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1265)
!1270 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1265)
!1271 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1265)
!1272 = !DILocation(line: 854, column: 16, scope: !1257)
!1273 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 856, column: 16, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 856, column: 16)
!1276 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1274)
!1277 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1274)
!1278 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1274)
!1279 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1274)
!1280 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1274)
!1281 = !DILocation(line: 856, column: 16, scope: !1266)
!1282 = !DILocation(line: 860, column: 11, scope: !50)
!1283 = !DILocation(line: 839, column: 14, scope: !50)
!1284 = !DILocation(line: 862, column: 11, scope: !50)
!1285 = !DILocalVariable(name: "v", arg: 1, scope: !1286, file: !3, line: 433, type: !17)
!1286 = distinct !DISubprogram(name: "tostring", scope: !3, file: !3, line: 433, type: !834, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1287)
!1287 = !{!1285, !1288}
!1288 = !DILocalVariable(name: "s", scope: !1289, file: !3, line: 439, type: !43)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 438, column: 7)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 436, column: 5)
!1291 = !DILocation(line: 433, column: 18, scope: !1286, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 865, column: 11, scope: !54)
!1293 = !DILocation(line: 435, column: 14, scope: !1286, inlinedAt: !1292)
!1294 = !DILocation(line: 435, column: 3, scope: !1286, inlinedAt: !1292)
!1295 = !DILocation(line: 439, column: 45, scope: !1289, inlinedAt: !1292)
!1296 = !DILocation(line: 439, column: 42, scope: !1289, inlinedAt: !1292)
!1297 = !DILocation(line: 439, column: 19, scope: !1289, inlinedAt: !1292)
!1298 = !DILocation(line: 439, column: 15, scope: !1289, inlinedAt: !1292)
!1299 = !DILocation(line: 440, column: 9, scope: !1289, inlinedAt: !1292)
!1300 = !DILocation(line: 441, column: 14, scope: !1289, inlinedAt: !1292)
!1301 = !DILocation(line: 441, column: 16, scope: !1289, inlinedAt: !1292)
!1302 = !DILocation(line: 442, column: 17, scope: !1289, inlinedAt: !1292)
!1303 = !DILocation(line: 444, column: 7, scope: !1290, inlinedAt: !1292)
!1304 = !DILocation(line: 448, column: 7, scope: !1290, inlinedAt: !1292)
!1305 = !DILocation(line: 433, column: 18, scope: !1286, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 866, column: 11, scope: !54)
!1307 = !DILocation(line: 435, column: 14, scope: !1286, inlinedAt: !1306)
!1308 = !DILocation(line: 435, column: 3, scope: !1286, inlinedAt: !1306)
!1309 = !DILocation(line: 439, column: 45, scope: !1289, inlinedAt: !1306)
!1310 = !DILocation(line: 439, column: 42, scope: !1289, inlinedAt: !1306)
!1311 = !DILocation(line: 439, column: 19, scope: !1289, inlinedAt: !1306)
!1312 = !DILocation(line: 439, column: 15, scope: !1289, inlinedAt: !1306)
!1313 = !DILocation(line: 440, column: 9, scope: !1289, inlinedAt: !1306)
!1314 = !DILocation(line: 441, column: 14, scope: !1289, inlinedAt: !1306)
!1315 = !DILocation(line: 441, column: 16, scope: !1289, inlinedAt: !1306)
!1316 = !DILocation(line: 442, column: 17, scope: !1289, inlinedAt: !1306)
!1317 = !DILocation(line: 444, column: 7, scope: !1290, inlinedAt: !1306)
!1318 = !DILocation(line: 448, column: 7, scope: !1290, inlinedAt: !1306)
!1319 = !DILocation(line: 868, column: 38, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !54, file: !3, line: 868, column: 15)
!1321 = !DILocation(line: 868, column: 40, scope: !1320)
!1322 = !DILocalVariable(name: "cp", arg: 1, scope: !1323, file: !3, line: 418, type: !99)
!1323 = distinct !DISubprogram(name: "looks_like_integer", scope: !3, file: !3, line: 418, type: !912, isLocal: true, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1324)
!1324 = !{!1322}
!1325 = !DILocation(line: 418, column: 33, scope: !1323, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 868, column: 15, scope: !1320)
!1327 = !DILocation(line: 420, column: 10, scope: !1323, inlinedAt: !1326)
!1328 = !DILocation(line: 420, column: 14, scope: !1323, inlinedAt: !1326)
!1329 = !DILocation(line: 420, column: 6, scope: !1323, inlinedAt: !1326)
!1330 = !DILocation(line: 422, column: 3, scope: !1323, inlinedAt: !1326)
!1331 = distinct !{!1331, !1332, !1333}
!1332 = !DILocation(line: 422, column: 3, scope: !1323)
!1333 = !DILocation(line: 425, column: 15, scope: !1323)
!1334 = !DILocation(line: 423, column: 11, scope: !1335, inlinedAt: !1326)
!1335 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 423, column: 9)
!1336 = !DILocation(line: 423, column: 9, scope: !1323, inlinedAt: !1326)
!1337 = !DILocation(line: 425, column: 11, scope: !1323, inlinedAt: !1326)
!1338 = !DILocation(line: 425, column: 10, scope: !1323, inlinedAt: !1326)
!1339 = !DILocation(line: 423, column: 11, scope: !1340, inlinedAt: !1326)
!1340 = !DILexicalBlockFile(scope: !1335, file: !3, discriminator: 2)
!1341 = !DILocation(line: 868, column: 69, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1320, file: !3, discriminator: 1)
!1343 = !DILocation(line: 868, column: 71, scope: !1342)
!1344 = !DILocation(line: 418, column: 33, scope: !1323, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 868, column: 46, scope: !1342)
!1346 = !DILocation(line: 420, column: 10, scope: !1323, inlinedAt: !1345)
!1347 = !DILocation(line: 420, column: 14, scope: !1323, inlinedAt: !1345)
!1348 = !DILocation(line: 420, column: 6, scope: !1323, inlinedAt: !1345)
!1349 = !DILocation(line: 422, column: 3, scope: !1323, inlinedAt: !1345)
!1350 = !DILocation(line: 423, column: 11, scope: !1335, inlinedAt: !1345)
!1351 = !DILocation(line: 423, column: 9, scope: !1323, inlinedAt: !1345)
!1352 = !DILocation(line: 425, column: 11, scope: !1323, inlinedAt: !1345)
!1353 = !DILocation(line: 425, column: 10, scope: !1323, inlinedAt: !1345)
!1354 = !DILocation(line: 423, column: 11, scope: !1340, inlinedAt: !1345)
!1355 = !DILocation(line: 869, column: 19, scope: !1320)
!1356 = !DILocation(line: 864, column: 15, scope: !54)
!1357 = !DILocation(line: 869, column: 13, scope: !1320)
!1358 = !DILocation(line: 873, column: 41, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 871, column: 13)
!1360 = !DILocation(line: 873, column: 43, scope: !1359)
!1361 = !DILocation(line: 872, column: 15, scope: !1359)
!1362 = !DILocation(line: 872, column: 21, scope: !1359)
!1363 = !DILocation(line: 873, column: 21, scope: !1359)
!1364 = !DILocation(line: 875, column: 19, scope: !1359)
!1365 = !DILocation(line: 886, column: 11, scope: !54)
!1366 = !DILocation(line: 888, column: 37, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !54, file: !3, line: 887, column: 13)
!1368 = !DILocation(line: 888, column: 51, scope: !1367)
!1369 = !DILocation(line: 889, column: 44, scope: !1367)
!1370 = !DILocation(line: 889, column: 37, scope: !1367)
!1371 = !DILocation(line: 889, column: 51, scope: !1367)
!1372 = !DILocation(line: 890, column: 44, scope: !1367)
!1373 = !DILocation(line: 890, column: 37, scope: !1367)
!1374 = !DILocation(line: 890, column: 51, scope: !1367)
!1375 = !DILocation(line: 891, column: 44, scope: !1367)
!1376 = !DILocation(line: 891, column: 37, scope: !1367)
!1377 = !DILocation(line: 891, column: 51, scope: !1367)
!1378 = !DILocation(line: 892, column: 37, scope: !1367)
!1379 = !DILocation(line: 892, column: 51, scope: !1367)
!1380 = !DILocation(line: 893, column: 44, scope: !1367)
!1381 = !DILocation(line: 893, column: 37, scope: !1367)
!1382 = !DILocation(line: 893, column: 51, scope: !1367)
!1383 = !DILocation(line: 894, column: 22, scope: !1367)
!1384 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 898, column: 7, scope: !50)
!1386 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1385)
!1387 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1385)
!1388 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1385)
!1389 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1385)
!1390 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1385)
!1391 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1385)
!1392 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1385)
!1393 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1385)
!1394 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1385)
!1395 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 899, column: 7, scope: !50)
!1397 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1396)
!1398 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1396)
!1399 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1396)
!1400 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1396)
!1401 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1396)
!1402 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1396)
!1403 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1396)
!1404 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1396)
!1405 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1396)
!1406 = !DILocation(line: 900, column: 22, scope: !50)
!1407 = !DILocation(line: 334, column: 30, scope: !1035, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 900, column: 11, scope: !50)
!1409 = !DILocation(line: 336, column: 14, scope: !1035, inlinedAt: !1408)
!1410 = !DILocation(line: 336, column: 10, scope: !1035, inlinedAt: !1408)
!1411 = !DILocation(line: 337, column: 6, scope: !1035, inlinedAt: !1408)
!1412 = !DILocation(line: 337, column: 11, scope: !1035, inlinedAt: !1408)
!1413 = !DILocation(line: 338, column: 23, scope: !1035, inlinedAt: !1408)
!1414 = !DILocation(line: 338, column: 20, scope: !1035, inlinedAt: !1408)
!1415 = !DILocation(line: 338, column: 3, scope: !1035, inlinedAt: !1408)
!1416 = !DILocation(line: 902, column: 1, scope: !14)
!1417 = !DILocation(line: 797, column: 13, scope: !78)
!1418 = !DILocation(line: 806, column: 7, scope: !78)
!1419 = !DILocation(line: 799, column: 10, scope: !78)
!1420 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 809, column: 11, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 809, column: 11)
!1423 = distinct !DILexicalBlock(scope: !78, file: !3, line: 808, column: 5)
!1424 = !DILocation(line: 501, column: 8, scope: !917, inlinedAt: !1421)
!1425 = !DILocation(line: 501, column: 7, scope: !917, inlinedAt: !1421)
!1426 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1421)
!1427 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1421)
!1428 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1421)
!1429 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1421)
!1430 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1421)
!1431 = !DILocation(line: 809, column: 11, scope: !1423)
!1432 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 811, column: 16, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 811, column: 16)
!1435 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1433)
!1436 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1433)
!1437 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1433)
!1438 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1433)
!1439 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1433)
!1440 = !DILocation(line: 811, column: 16, scope: !1422)
!1441 = !DILocation(line: 814, column: 9, scope: !1434)
!1442 = !DILocation(line: 801, column: 24, scope: !78)
!1443 = !DILocation(line: 815, column: 11, scope: !1423)
!1444 = !DILocation(line: 800, column: 10, scope: !78)
!1445 = !DILocation(line: 816, column: 11, scope: !1423)
!1446 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 822, column: 7, scope: !1423)
!1448 = !DILocalVariable(name: "v", arg: 1, scope: !1449, file: !3, line: 455, type: !17)
!1449 = distinct !DISubprogram(name: "toarith", scope: !3, file: !3, line: 455, type: !859, isLocal: true, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1450)
!1450 = !{!1448, !1451}
!1451 = !DILocalVariable(name: "s", scope: !1452, file: !3, line: 463, type: !43)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 462, column: 7)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 458, column: 5)
!1454 = !DILocation(line: 455, column: 17, scope: !1449, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 818, column: 16, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 818, column: 15)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 817, column: 9)
!1458 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 816, column: 11)
!1459 = !DILocation(line: 457, column: 14, scope: !1449, inlinedAt: !1455)
!1460 = !DILocation(line: 457, column: 3, scope: !1449, inlinedAt: !1455)
!1461 = !DILocation(line: 463, column: 24, scope: !1452, inlinedAt: !1455)
!1462 = !DILocation(line: 463, column: 15, scope: !1452, inlinedAt: !1455)
!1463 = !DILocation(line: 418, column: 33, scope: !1323, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 465, column: 15, scope: !1465, inlinedAt: !1455)
!1465 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 465, column: 13)
!1466 = !DILocation(line: 420, column: 10, scope: !1323, inlinedAt: !1464)
!1467 = !DILocation(line: 420, column: 14, scope: !1323, inlinedAt: !1464)
!1468 = !DILocation(line: 420, column: 6, scope: !1323, inlinedAt: !1464)
!1469 = !DILocation(line: 422, column: 3, scope: !1323, inlinedAt: !1464)
!1470 = !DILocation(line: 423, column: 11, scope: !1335, inlinedAt: !1464)
!1471 = !DILocation(line: 423, column: 9, scope: !1323, inlinedAt: !1464)
!1472 = !DILocation(line: 425, column: 11, scope: !1323, inlinedAt: !1464)
!1473 = !DILocation(line: 425, column: 10, scope: !1323, inlinedAt: !1464)
!1474 = !DILocation(line: 423, column: 11, scope: !1340, inlinedAt: !1464)
!1475 = !DILocation(line: 467, column: 13, scope: !1476, inlinedAt: !1455)
!1476 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 467, column: 13)
!1477 = !DILocation(line: 469, column: 9, scope: !1452, inlinedAt: !1455)
!1478 = !DILocation(line: 470, column: 17, scope: !1452, inlinedAt: !1455)
!1479 = !DILocation(line: 471, column: 9, scope: !1452, inlinedAt: !1455)
!1480 = !DILocation(line: 474, column: 7, scope: !1453, inlinedAt: !1455)
!1481 = !DILocation(line: 455, column: 17, scope: !1449, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 818, column: 32, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1456, file: !3, discriminator: 1)
!1484 = !DILocation(line: 457, column: 14, scope: !1449, inlinedAt: !1482)
!1485 = !DILocation(line: 457, column: 3, scope: !1449, inlinedAt: !1482)
!1486 = !DILocation(line: 463, column: 22, scope: !1452, inlinedAt: !1482)
!1487 = !DILocation(line: 463, column: 24, scope: !1452, inlinedAt: !1482)
!1488 = !DILocation(line: 463, column: 15, scope: !1452, inlinedAt: !1482)
!1489 = !DILocation(line: 418, column: 33, scope: !1323, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 465, column: 15, scope: !1465, inlinedAt: !1482)
!1491 = !DILocation(line: 420, column: 10, scope: !1323, inlinedAt: !1490)
!1492 = !DILocation(line: 420, column: 14, scope: !1323, inlinedAt: !1490)
!1493 = !DILocation(line: 420, column: 6, scope: !1323, inlinedAt: !1490)
!1494 = !DILocation(line: 422, column: 3, scope: !1323, inlinedAt: !1490)
!1495 = !DILocation(line: 423, column: 11, scope: !1335, inlinedAt: !1490)
!1496 = !DILocation(line: 423, column: 9, scope: !1323, inlinedAt: !1490)
!1497 = !DILocation(line: 425, column: 11, scope: !1323, inlinedAt: !1490)
!1498 = !DILocation(line: 425, column: 10, scope: !1323, inlinedAt: !1490)
!1499 = !DILocation(line: 423, column: 11, scope: !1340, inlinedAt: !1490)
!1500 = !DILocation(line: 467, column: 31, scope: !1476, inlinedAt: !1482)
!1501 = !DILocation(line: 467, column: 13, scope: !1476, inlinedAt: !1482)
!1502 = !DILocation(line: 469, column: 9, scope: !1452, inlinedAt: !1482)
!1503 = !DILocation(line: 470, column: 17, scope: !1452, inlinedAt: !1482)
!1504 = !DILocation(line: 471, column: 9, scope: !1452, inlinedAt: !1482)
!1505 = !DILocation(line: 474, column: 7, scope: !1453, inlinedAt: !1482)
!1506 = !DILocation(line: 819, column: 13, scope: !1456)
!1507 = !DILocation(line: 819, column: 13, scope: !1483)
!1508 = !DILocation(line: 820, column: 16, scope: !1457)
!1509 = !DILocation(line: 820, column: 12, scope: !1457)
!1510 = !DILocation(line: 820, column: 62, scope: !1457)
!1511 = !DILocation(line: 820, column: 11, scope: !1457)
!1512 = !DILocation(line: 821, column: 9, scope: !1457)
!1513 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1447)
!1514 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1447)
!1515 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1447)
!1516 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1447)
!1517 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1447)
!1518 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1447)
!1519 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1447)
!1520 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1447)
!1521 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1447)
!1522 = distinct !{!1522, !1523, !1524}
!1523 = !DILocation(line: 807, column: 3, scope: !78)
!1524 = !DILocation(line: 823, column: 5, scope: !78)
!1525 = !DILocation(line: 758, column: 13, scope: !88)
!1526 = !DILocation(line: 767, column: 7, scope: !88)
!1527 = !DILocation(line: 760, column: 10, scope: !88)
!1528 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 770, column: 11, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 770, column: 11)
!1531 = distinct !DILexicalBlock(scope: !88, file: !3, line: 769, column: 5)
!1532 = !DILocation(line: 501, column: 8, scope: !917, inlinedAt: !1529)
!1533 = !DILocation(line: 501, column: 7, scope: !917, inlinedAt: !1529)
!1534 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1529)
!1535 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1529)
!1536 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1529)
!1537 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1529)
!1538 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1529)
!1539 = !DILocation(line: 770, column: 11, scope: !1531)
!1540 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 772, column: 16, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 772, column: 16)
!1543 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1541)
!1544 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1541)
!1545 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1541)
!1546 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1541)
!1547 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1541)
!1548 = !DILocation(line: 772, column: 16, scope: !1530)
!1549 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 774, column: 16, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 774, column: 16)
!1552 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1550)
!1553 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1550)
!1554 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1550)
!1555 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1550)
!1556 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1550)
!1557 = !DILocation(line: 774, column: 16, scope: !1542)
!1558 = !DILocation(line: 777, column: 9, scope: !1551)
!1559 = !DILocation(line: 762, column: 34, scope: !88)
!1560 = !DILocation(line: 778, column: 11, scope: !1531)
!1561 = !DILocation(line: 761, column: 10, scope: !88)
!1562 = !DILocation(line: 779, column: 11, scope: !1531)
!1563 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 790, column: 7, scope: !1531)
!1565 = !DILocation(line: 455, column: 17, scope: !1449, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 781, column: 16, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 781, column: 15)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 780, column: 9)
!1569 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 779, column: 11)
!1570 = !DILocation(line: 457, column: 14, scope: !1449, inlinedAt: !1566)
!1571 = !DILocation(line: 457, column: 3, scope: !1449, inlinedAt: !1566)
!1572 = !DILocation(line: 463, column: 24, scope: !1452, inlinedAt: !1566)
!1573 = !DILocation(line: 463, column: 15, scope: !1452, inlinedAt: !1566)
!1574 = !DILocation(line: 418, column: 33, scope: !1323, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 465, column: 15, scope: !1465, inlinedAt: !1566)
!1576 = !DILocation(line: 420, column: 10, scope: !1323, inlinedAt: !1575)
!1577 = !DILocation(line: 420, column: 14, scope: !1323, inlinedAt: !1575)
!1578 = !DILocation(line: 420, column: 6, scope: !1323, inlinedAt: !1575)
!1579 = !DILocation(line: 422, column: 3, scope: !1323, inlinedAt: !1575)
!1580 = !DILocation(line: 423, column: 11, scope: !1335, inlinedAt: !1575)
!1581 = !DILocation(line: 423, column: 9, scope: !1323, inlinedAt: !1575)
!1582 = !DILocation(line: 425, column: 11, scope: !1323, inlinedAt: !1575)
!1583 = !DILocation(line: 425, column: 10, scope: !1323, inlinedAt: !1575)
!1584 = !DILocation(line: 423, column: 11, scope: !1340, inlinedAt: !1575)
!1585 = !DILocation(line: 467, column: 13, scope: !1476, inlinedAt: !1566)
!1586 = !DILocation(line: 469, column: 9, scope: !1452, inlinedAt: !1566)
!1587 = !DILocation(line: 470, column: 17, scope: !1452, inlinedAt: !1566)
!1588 = !DILocation(line: 471, column: 9, scope: !1452, inlinedAt: !1566)
!1589 = !DILocation(line: 474, column: 7, scope: !1453, inlinedAt: !1566)
!1590 = !DILocation(line: 455, column: 17, scope: !1449, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 781, column: 32, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1567, file: !3, discriminator: 1)
!1593 = !DILocation(line: 457, column: 14, scope: !1449, inlinedAt: !1591)
!1594 = !DILocation(line: 457, column: 3, scope: !1449, inlinedAt: !1591)
!1595 = !DILocation(line: 463, column: 22, scope: !1452, inlinedAt: !1591)
!1596 = !DILocation(line: 463, column: 24, scope: !1452, inlinedAt: !1591)
!1597 = !DILocation(line: 463, column: 15, scope: !1452, inlinedAt: !1591)
!1598 = !DILocation(line: 418, column: 33, scope: !1323, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 465, column: 15, scope: !1465, inlinedAt: !1591)
!1600 = !DILocation(line: 420, column: 10, scope: !1323, inlinedAt: !1599)
!1601 = !DILocation(line: 420, column: 14, scope: !1323, inlinedAt: !1599)
!1602 = !DILocation(line: 420, column: 6, scope: !1323, inlinedAt: !1599)
!1603 = !DILocation(line: 422, column: 3, scope: !1323, inlinedAt: !1599)
!1604 = !DILocation(line: 423, column: 11, scope: !1335, inlinedAt: !1599)
!1605 = !DILocation(line: 423, column: 9, scope: !1323, inlinedAt: !1599)
!1606 = !DILocation(line: 425, column: 11, scope: !1323, inlinedAt: !1599)
!1607 = !DILocation(line: 425, column: 10, scope: !1323, inlinedAt: !1599)
!1608 = !DILocation(line: 423, column: 11, scope: !1340, inlinedAt: !1599)
!1609 = !DILocation(line: 467, column: 31, scope: !1476, inlinedAt: !1591)
!1610 = !DILocation(line: 467, column: 13, scope: !1476, inlinedAt: !1591)
!1611 = !DILocation(line: 469, column: 9, scope: !1452, inlinedAt: !1591)
!1612 = !DILocation(line: 470, column: 17, scope: !1452, inlinedAt: !1591)
!1613 = !DILocation(line: 471, column: 9, scope: !1452, inlinedAt: !1591)
!1614 = !DILocation(line: 474, column: 7, scope: !1453, inlinedAt: !1591)
!1615 = !DILocation(line: 782, column: 13, scope: !1567)
!1616 = !DILocation(line: 782, column: 13, scope: !1592)
!1617 = !DILocation(line: 783, column: 31, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 783, column: 15)
!1619 = !DILocation(line: 783, column: 34, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1618, file: !3, discriminator: 1)
!1621 = !DILocation(line: 783, column: 51, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1618, file: !3, discriminator: 4)
!1623 = !DILocation(line: 783, column: 15, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1568, file: !3, discriminator: 4)
!1625 = !DILocation(line: 784, column: 13, scope: !1618)
!1626 = !DILocation(line: 784, column: 13, scope: !1620)
!1627 = !DILocation(line: 786, column: 19, scope: !1568)
!1628 = !DILocation(line: 786, column: 15, scope: !1568)
!1629 = !DILocation(line: 785, column: 13, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1568, file: !3, discriminator: 2)
!1631 = !DILocation(line: 785, column: 13, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1568, file: !3, discriminator: 3)
!1633 = !DILocation(line: 788, column: 29, scope: !1568)
!1634 = !DILocation(line: 785, column: 12, scope: !1632)
!1635 = !DILocation(line: 789, column: 9, scope: !1568)
!1636 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1564)
!1637 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1564)
!1638 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1564)
!1639 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1564)
!1640 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1564)
!1641 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1564)
!1642 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1564)
!1643 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1564)
!1644 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1564)
!1645 = distinct !{!1645, !1646, !1647}
!1646 = !DILocation(line: 768, column: 3, scope: !88)
!1647 = !DILocation(line: 791, column: 5, scope: !88)
!1648 = distinct !DISubprogram(name: "eval5", scope: !3, file: !3, line: 727, type: !15, isLocal: true, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1649)
!1649 = !{!1650, !1651, !1652, !1653}
!1650 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1648, file: !3, line: 727, type: !45)
!1651 = !DILocalVariable(name: "l", scope: !1648, file: !3, line: 729, type: !17)
!1652 = !DILocalVariable(name: "r", scope: !1648, file: !3, line: 730, type: !17)
!1653 = !DILocalVariable(name: "v", scope: !1648, file: !3, line: 731, type: !17)
!1654 = !DILocation(line: 727, column: 13, scope: !1648)
!1655 = !DILocation(line: 736, column: 7, scope: !1648)
!1656 = !DILocation(line: 729, column: 10, scope: !1648)
!1657 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 739, column: 11, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 739, column: 11)
!1660 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 738, column: 5)
!1661 = !DILocation(line: 501, column: 8, scope: !917, inlinedAt: !1658)
!1662 = !DILocation(line: 501, column: 7, scope: !917, inlinedAt: !1658)
!1663 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1658)
!1664 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1658)
!1665 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1658)
!1666 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1658)
!1667 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1658)
!1668 = !DILocation(line: 739, column: 11, scope: !1660)
!1669 = !DILocation(line: 741, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 740, column: 9)
!1671 = !DILocation(line: 730, column: 10, scope: !1648)
!1672 = !DILocation(line: 742, column: 15, scope: !1670)
!1673 = !DILocation(line: 744, column: 19, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 743, column: 13)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 742, column: 15)
!1676 = !DILocation(line: 731, column: 10, scope: !1648)
!1677 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 745, column: 15, scope: !1674)
!1679 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1678)
!1680 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1678)
!1681 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1678)
!1682 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1678)
!1683 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1678)
!1684 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1678)
!1685 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1678)
!1686 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1678)
!1687 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1678)
!1688 = !DILocation(line: 747, column: 13, scope: !1674)
!1689 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 748, column: 11, scope: !1670)
!1691 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1690)
!1692 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1690)
!1693 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1690)
!1694 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1690)
!1695 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1690)
!1696 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1690)
!1697 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1690)
!1698 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1690)
!1699 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1690)
!1700 = distinct !{!1700, !1701, !1702}
!1701 = !DILocation(line: 737, column: 3, scope: !1648)
!1702 = !DILocation(line: 752, column: 5, scope: !1648)
!1703 = !DILocation(line: 751, column: 9, scope: !1659)
!1704 = distinct !DISubprogram(name: "eval6", scope: !3, file: !3, line: 632, type: !15, isLocal: true, isDefinition: true, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1718, !1721, !1724, !1725, !1728}
!1706 = !DILocalVariable(name: "evaluate", arg: 1, scope: !1704, file: !3, line: 632, type: !45)
!1707 = !DILocalVariable(name: "l", scope: !1704, file: !3, line: 634, type: !17)
!1708 = !DILocalVariable(name: "r", scope: !1704, file: !3, line: 635, type: !17)
!1709 = !DILocalVariable(name: "v", scope: !1704, file: !3, line: 636, type: !17)
!1710 = !DILocalVariable(name: "i1", scope: !1704, file: !3, line: 637, type: !17)
!1711 = !DILocalVariable(name: "i2", scope: !1704, file: !3, line: 638, type: !17)
!1712 = !DILocalVariable(name: "pos", scope: !1713, file: !3, line: 673, type: !102)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 672, column: 5)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 671, column: 12)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 657, column: 12)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 649, column: 12)
!1717 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 643, column: 7)
!1718 = !DILocalVariable(name: "llen", scope: !1719, file: !3, line: 687, type: !102)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 686, column: 5)
!1720 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 685, column: 12)
!1721 = !DILocalVariable(name: "pos", scope: !1722, file: !3, line: 698, type: !102)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 697, column: 9)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 694, column: 11)
!1724 = !DILocalVariable(name: "len", scope: !1722, file: !3, line: 699, type: !102)
!1725 = !DILocalVariable(name: "vlen", scope: !1726, file: !3, line: 705, type: !102)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 704, column: 13)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 701, column: 15)
!1728 = !DILocalVariable(name: "vlim", scope: !1726, file: !3, line: 706, type: !43)
!1729 = !DILocation(line: 632, column: 13, scope: !1704)
!1730 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 643, column: 7, scope: !1717)
!1732 = !DILocation(line: 501, column: 8, scope: !917, inlinedAt: !1731)
!1733 = !DILocation(line: 501, column: 7, scope: !917, inlinedAt: !1731)
!1734 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1731)
!1735 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1731)
!1736 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1731)
!1737 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1731)
!1738 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1731)
!1739 = !DILocation(line: 643, column: 7, scope: !1704)
!1740 = !DILocation(line: 645, column: 11, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 644, column: 5)
!1742 = !DILocation(line: 646, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 645, column: 11)
!1744 = !DILocation(line: 647, column: 30, scope: !1741)
!1745 = !DILocalVariable(name: "s", arg: 1, scope: !1746, file: !3, line: 345, type: !99)
!1746 = distinct !DISubprogram(name: "str_value", scope: !3, file: !3, line: 345, type: !1747, isLocal: true, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1749)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!17, !99}
!1749 = !{!1745, !1750}
!1750 = !DILocalVariable(name: "v", scope: !1746, file: !3, line: 347, type: !17)
!1751 = !DILocation(line: 345, column: 24, scope: !1746, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 647, column: 14, scope: !1741)
!1753 = !DILocation(line: 347, column: 14, scope: !1746, inlinedAt: !1752)
!1754 = !DILocation(line: 347, column: 10, scope: !1746, inlinedAt: !1752)
!1755 = !DILocation(line: 348, column: 6, scope: !1746, inlinedAt: !1752)
!1756 = !DILocation(line: 348, column: 11, scope: !1746, inlinedAt: !1752)
!1757 = !DILocation(line: 349, column: 12, scope: !1746, inlinedAt: !1752)
!1758 = !DILocation(line: 349, column: 6, scope: !1746, inlinedAt: !1752)
!1759 = !DILocation(line: 349, column: 8, scope: !1746, inlinedAt: !1752)
!1760 = !DILocation(line: 349, column: 10, scope: !1746, inlinedAt: !1752)
!1761 = !DILocation(line: 647, column: 7, scope: !1741)
!1762 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 649, column: 12, scope: !1716)
!1764 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1763)
!1765 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1763)
!1766 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1763)
!1767 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1763)
!1768 = !DILocation(line: 649, column: 12, scope: !1717)
!1769 = !DILocation(line: 651, column: 11, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 650, column: 5)
!1771 = !DILocation(line: 635, column: 10, scope: !1704)
!1772 = !DILocation(line: 433, column: 18, scope: !1286, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 652, column: 7, scope: !1770)
!1774 = !DILocation(line: 435, column: 14, scope: !1286, inlinedAt: !1773)
!1775 = !DILocation(line: 435, column: 3, scope: !1286, inlinedAt: !1773)
!1776 = !DILocation(line: 439, column: 45, scope: !1289, inlinedAt: !1773)
!1777 = !DILocation(line: 439, column: 42, scope: !1289, inlinedAt: !1773)
!1778 = !DILocation(line: 439, column: 19, scope: !1289, inlinedAt: !1773)
!1779 = !DILocation(line: 439, column: 15, scope: !1289, inlinedAt: !1773)
!1780 = !DILocation(line: 440, column: 9, scope: !1289, inlinedAt: !1773)
!1781 = !DILocation(line: 441, column: 14, scope: !1289, inlinedAt: !1773)
!1782 = !DILocation(line: 441, column: 16, scope: !1289, inlinedAt: !1773)
!1783 = !DILocation(line: 442, column: 17, scope: !1289, inlinedAt: !1773)
!1784 = !DILocation(line: 444, column: 7, scope: !1290, inlinedAt: !1773)
!1785 = !DILocation(line: 448, column: 7, scope: !1290, inlinedAt: !1773)
!1786 = !DILocation(line: 653, column: 35, scope: !1770)
!1787 = !DILocation(line: 653, column: 22, scope: !1770)
!1788 = !DILocation(line: 334, column: 30, scope: !1035, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 653, column: 11, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1770, file: !3, discriminator: 1)
!1791 = !DILocation(line: 336, column: 14, scope: !1035, inlinedAt: !1789)
!1792 = !DILocation(line: 336, column: 10, scope: !1035, inlinedAt: !1789)
!1793 = !DILocation(line: 337, column: 6, scope: !1035, inlinedAt: !1789)
!1794 = !DILocation(line: 337, column: 11, scope: !1035, inlinedAt: !1789)
!1795 = !DILocation(line: 338, column: 23, scope: !1035, inlinedAt: !1789)
!1796 = !DILocation(line: 338, column: 20, scope: !1035, inlinedAt: !1789)
!1797 = !DILocation(line: 338, column: 3, scope: !1035, inlinedAt: !1789)
!1798 = !DILocation(line: 636, column: 10, scope: !1704)
!1799 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 654, column: 7, scope: !1770)
!1801 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1800)
!1802 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1800)
!1803 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1800)
!1804 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1800)
!1805 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1800)
!1806 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1800)
!1807 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1800)
!1808 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1800)
!1809 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1800)
!1810 = !DILocation(line: 655, column: 7, scope: !1770)
!1811 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 657, column: 12, scope: !1715)
!1813 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1812)
!1814 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1812)
!1815 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1812)
!1816 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1812)
!1817 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1812)
!1818 = !DILocation(line: 657, column: 12, scope: !1716)
!1819 = !DILocation(line: 659, column: 11, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 658, column: 5)
!1821 = !DILocation(line: 634, column: 10, scope: !1704)
!1822 = !DILocation(line: 660, column: 11, scope: !1820)
!1823 = !DILocation(line: 661, column: 11, scope: !1820)
!1824 = !DILocation(line: 663, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 662, column: 9)
!1826 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 661, column: 11)
!1827 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 664, column: 11, scope: !1825)
!1829 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1828)
!1830 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1828)
!1831 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1828)
!1832 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1828)
!1833 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1828)
!1834 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1828)
!1835 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1828)
!1836 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1828)
!1837 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1828)
!1838 = !DILocation(line: 665, column: 9, scope: !1825)
!1839 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 668, column: 7, scope: !1820)
!1841 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1840)
!1842 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1840)
!1843 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1840)
!1844 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1840)
!1845 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1840)
!1846 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1840)
!1847 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1840)
!1848 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1840)
!1849 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1840)
!1850 = !DILocation(line: 669, column: 7, scope: !1820)
!1851 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 671, column: 12, scope: !1714)
!1853 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1852)
!1854 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1852)
!1855 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1852)
!1856 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1852)
!1857 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1852)
!1858 = !DILocation(line: 671, column: 12, scope: !1715)
!1859 = !DILocation(line: 675, column: 11, scope: !1713)
!1860 = !DILocation(line: 676, column: 11, scope: !1713)
!1861 = !DILocation(line: 433, column: 18, scope: !1286, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 677, column: 7, scope: !1713)
!1863 = !DILocation(line: 435, column: 14, scope: !1286, inlinedAt: !1862)
!1864 = !DILocation(line: 435, column: 3, scope: !1286, inlinedAt: !1862)
!1865 = !DILocation(line: 439, column: 45, scope: !1289, inlinedAt: !1862)
!1866 = !DILocation(line: 439, column: 42, scope: !1289, inlinedAt: !1862)
!1867 = !DILocation(line: 439, column: 19, scope: !1289, inlinedAt: !1862)
!1868 = !DILocation(line: 439, column: 15, scope: !1289, inlinedAt: !1862)
!1869 = !DILocation(line: 440, column: 9, scope: !1289, inlinedAt: !1862)
!1870 = !DILocation(line: 441, column: 14, scope: !1289, inlinedAt: !1862)
!1871 = !DILocation(line: 441, column: 16, scope: !1289, inlinedAt: !1862)
!1872 = !DILocation(line: 442, column: 17, scope: !1289, inlinedAt: !1862)
!1873 = !DILocation(line: 444, column: 7, scope: !1290, inlinedAt: !1862)
!1874 = !DILocation(line: 448, column: 7, scope: !1290, inlinedAt: !1862)
!1875 = !DILocation(line: 433, column: 18, scope: !1286, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 678, column: 7, scope: !1713)
!1877 = !DILocation(line: 435, column: 14, scope: !1286, inlinedAt: !1876)
!1878 = !DILocation(line: 435, column: 3, scope: !1286, inlinedAt: !1876)
!1879 = !DILocation(line: 439, column: 45, scope: !1289, inlinedAt: !1876)
!1880 = !DILocation(line: 439, column: 42, scope: !1289, inlinedAt: !1876)
!1881 = !DILocation(line: 439, column: 19, scope: !1289, inlinedAt: !1876)
!1882 = !DILocation(line: 439, column: 15, scope: !1289, inlinedAt: !1876)
!1883 = !DILocation(line: 440, column: 9, scope: !1289, inlinedAt: !1876)
!1884 = !DILocation(line: 441, column: 14, scope: !1289, inlinedAt: !1876)
!1885 = !DILocation(line: 441, column: 16, scope: !1289, inlinedAt: !1876)
!1886 = !DILocation(line: 442, column: 17, scope: !1289, inlinedAt: !1876)
!1887 = !DILocation(line: 444, column: 7, scope: !1290, inlinedAt: !1876)
!1888 = !DILocation(line: 448, column: 7, scope: !1290, inlinedAt: !1876)
!1889 = !DILocation(line: 679, column: 13, scope: !1713)
!1890 = !DILocation(line: 673, column: 14, scope: !1713)
!1891 = !DILocation(line: 680, column: 22, scope: !1713)
!1892 = !DILocation(line: 680, column: 40, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1713, file: !3, discriminator: 1)
!1894 = !DILocation(line: 334, column: 30, scope: !1035, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 680, column: 11, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1713, file: !3, discriminator: 3)
!1897 = !DILocation(line: 336, column: 14, scope: !1035, inlinedAt: !1895)
!1898 = !DILocation(line: 336, column: 10, scope: !1035, inlinedAt: !1895)
!1899 = !DILocation(line: 337, column: 6, scope: !1035, inlinedAt: !1895)
!1900 = !DILocation(line: 337, column: 11, scope: !1035, inlinedAt: !1895)
!1901 = !DILocation(line: 338, column: 23, scope: !1035, inlinedAt: !1895)
!1902 = !DILocation(line: 338, column: 20, scope: !1035, inlinedAt: !1895)
!1903 = !DILocation(line: 338, column: 3, scope: !1035, inlinedAt: !1895)
!1904 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 681, column: 7, scope: !1713)
!1906 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1905)
!1907 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1905)
!1908 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1905)
!1909 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1905)
!1910 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1905)
!1911 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1905)
!1912 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1905)
!1913 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1905)
!1914 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1905)
!1915 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 682, column: 7, scope: !1713)
!1917 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !1916)
!1918 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !1916)
!1919 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !1916)
!1920 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !1916)
!1921 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !1916)
!1922 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !1916)
!1923 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !1916)
!1924 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !1916)
!1925 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !1916)
!1926 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 685, column: 12, scope: !1720)
!1928 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !1927)
!1929 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !1927)
!1930 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !1927)
!1931 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !1927)
!1932 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !1927)
!1933 = !DILocation(line: 685, column: 12, scope: !1714)
!1934 = !DILocation(line: 688, column: 11, scope: !1719)
!1935 = !DILocation(line: 689, column: 12, scope: !1719)
!1936 = !DILocation(line: 637, column: 10, scope: !1704)
!1937 = !DILocation(line: 690, column: 12, scope: !1719)
!1938 = !DILocation(line: 638, column: 10, scope: !1704)
!1939 = !DILocation(line: 433, column: 18, scope: !1286, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 691, column: 7, scope: !1719)
!1941 = !DILocation(line: 435, column: 14, scope: !1286, inlinedAt: !1940)
!1942 = !DILocation(line: 435, column: 3, scope: !1286, inlinedAt: !1940)
!1943 = !DILocation(line: 439, column: 45, scope: !1289, inlinedAt: !1940)
!1944 = !DILocation(line: 439, column: 42, scope: !1289, inlinedAt: !1940)
!1945 = !DILocation(line: 439, column: 19, scope: !1289, inlinedAt: !1940)
!1946 = !DILocation(line: 439, column: 15, scope: !1289, inlinedAt: !1940)
!1947 = !DILocation(line: 440, column: 9, scope: !1289, inlinedAt: !1940)
!1948 = !DILocation(line: 441, column: 14, scope: !1289, inlinedAt: !1940)
!1949 = !DILocation(line: 441, column: 16, scope: !1289, inlinedAt: !1940)
!1950 = !DILocation(line: 442, column: 17, scope: !1289, inlinedAt: !1940)
!1951 = !DILocation(line: 444, column: 7, scope: !1290, inlinedAt: !1940)
!1952 = !DILocation(line: 448, column: 7, scope: !1290, inlinedAt: !1940)
!1953 = !DILocation(line: 692, column: 27, scope: !1719)
!1954 = !DILocation(line: 692, column: 14, scope: !1719)
!1955 = !DILocation(line: 687, column: 14, scope: !1719)
!1956 = !DILocation(line: 455, column: 17, scope: !1449, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 694, column: 12, scope: !1723)
!1958 = !DILocation(line: 457, column: 14, scope: !1449, inlinedAt: !1957)
!1959 = !DILocation(line: 457, column: 3, scope: !1449, inlinedAt: !1957)
!1960 = !DILocation(line: 463, column: 22, scope: !1452, inlinedAt: !1957)
!1961 = !DILocation(line: 463, column: 24, scope: !1452, inlinedAt: !1957)
!1962 = !DILocation(line: 463, column: 15, scope: !1452, inlinedAt: !1957)
!1963 = !DILocation(line: 418, column: 33, scope: !1323, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 465, column: 15, scope: !1465, inlinedAt: !1957)
!1965 = !DILocation(line: 420, column: 10, scope: !1323, inlinedAt: !1964)
!1966 = !DILocation(line: 420, column: 14, scope: !1323, inlinedAt: !1964)
!1967 = !DILocation(line: 420, column: 6, scope: !1323, inlinedAt: !1964)
!1968 = !DILocation(line: 422, column: 3, scope: !1323, inlinedAt: !1964)
!1969 = !DILocation(line: 423, column: 11, scope: !1335, inlinedAt: !1964)
!1970 = !DILocation(line: 423, column: 9, scope: !1323, inlinedAt: !1964)
!1971 = !DILocation(line: 425, column: 11, scope: !1323, inlinedAt: !1964)
!1972 = !DILocation(line: 425, column: 10, scope: !1323, inlinedAt: !1964)
!1973 = !DILocation(line: 423, column: 11, scope: !1340, inlinedAt: !1964)
!1974 = !DILocation(line: 467, column: 31, scope: !1476, inlinedAt: !1957)
!1975 = !DILocation(line: 467, column: 13, scope: !1476, inlinedAt: !1957)
!1976 = !DILocation(line: 469, column: 9, scope: !1452, inlinedAt: !1957)
!1977 = !DILocation(line: 470, column: 17, scope: !1452, inlinedAt: !1957)
!1978 = !DILocation(line: 471, column: 9, scope: !1452, inlinedAt: !1957)
!1979 = !DILocation(line: 474, column: 7, scope: !1453, inlinedAt: !1957)
!1980 = !DILocation(line: 455, column: 17, scope: !1449, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 694, column: 29, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1723, file: !3, discriminator: 1)
!1983 = !DILocation(line: 457, column: 14, scope: !1449, inlinedAt: !1981)
!1984 = !DILocation(line: 457, column: 3, scope: !1449, inlinedAt: !1981)
!1985 = !DILocation(line: 463, column: 22, scope: !1452, inlinedAt: !1981)
!1986 = !DILocation(line: 463, column: 24, scope: !1452, inlinedAt: !1981)
!1987 = !DILocation(line: 463, column: 15, scope: !1452, inlinedAt: !1981)
!1988 = !DILocation(line: 418, column: 33, scope: !1323, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 465, column: 15, scope: !1465, inlinedAt: !1981)
!1990 = !DILocation(line: 420, column: 10, scope: !1323, inlinedAt: !1989)
!1991 = !DILocation(line: 420, column: 14, scope: !1323, inlinedAt: !1989)
!1992 = !DILocation(line: 420, column: 6, scope: !1323, inlinedAt: !1989)
!1993 = !DILocation(line: 422, column: 3, scope: !1323, inlinedAt: !1989)
!1994 = !DILocation(line: 423, column: 11, scope: !1335, inlinedAt: !1989)
!1995 = !DILocation(line: 423, column: 9, scope: !1323, inlinedAt: !1989)
!1996 = !DILocation(line: 425, column: 11, scope: !1323, inlinedAt: !1989)
!1997 = !DILocation(line: 425, column: 10, scope: !1323, inlinedAt: !1989)
!1998 = !DILocation(line: 423, column: 11, scope: !1340, inlinedAt: !1989)
!1999 = !DILocation(line: 467, column: 31, scope: !1476, inlinedAt: !1981)
!2000 = !DILocation(line: 467, column: 13, scope: !1476, inlinedAt: !1981)
!2001 = !DILocation(line: 469, column: 9, scope: !1452, inlinedAt: !1981)
!2002 = !DILocation(line: 470, column: 17, scope: !1452, inlinedAt: !1981)
!2003 = !DILocation(line: 471, column: 9, scope: !1452, inlinedAt: !1981)
!2004 = !DILocation(line: 474, column: 7, scope: !1453, inlinedAt: !1981)
!2005 = !DILocation(line: 345, column: 24, scope: !1746, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 695, column: 13, scope: !1723)
!2007 = !DILocation(line: 347, column: 14, scope: !1746, inlinedAt: !2006)
!2008 = !DILocation(line: 348, column: 6, scope: !1746, inlinedAt: !2006)
!2009 = !DILocation(line: 348, column: 11, scope: !1746, inlinedAt: !2006)
!2010 = !DILocation(line: 349, column: 12, scope: !1746, inlinedAt: !2006)
!2011 = !DILocation(line: 349, column: 6, scope: !1746, inlinedAt: !2006)
!2012 = !DILocation(line: 349, column: 8, scope: !1746, inlinedAt: !2006)
!2013 = !DILocation(line: 349, column: 10, scope: !1746, inlinedAt: !2006)
!2014 = !DILocation(line: 695, column: 9, scope: !1723)
!2015 = !DILocation(line: 484, column: 7, scope: !2016, inlinedAt: !2026)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 484, column: 7)
!2017 = distinct !DISubprogram(name: "getsize", scope: !3, file: !3, line: 482, type: !2018, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2021)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!102, !2020}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2021 = !{!2022, !2023}
!2022 = !DILocalVariable(name: "i", arg: 1, scope: !2017, file: !3, line: 482, type: !2020)
!2023 = !DILocalVariable(name: "ul", scope: !2024, file: !3, line: 488, type: !39)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 487, column: 5)
!2025 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 486, column: 7)
!2026 = distinct !DILocation(line: 698, column: 24, scope: !1722)
!2027 = !DILocation(line: 484, column: 7, scope: !2028, inlinedAt: !2026)
!2028 = !DILexicalBlockFile(scope: !2017, file: !3, discriminator: 3)
!2029 = !DILocation(line: 1747, column: 3, scope: !2030, inlinedAt: !2043)
!2030 = distinct !DISubprogram(name: "__gmpz_fits_ulong_p", scope: !28, file: !28, line: 1745, type: !2031, isLocal: false, isDefinition: true, scopeLine: 1746, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2036)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!34, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_srcptr", file: !28, line: 224, baseType: !2034)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!2036 = !{!2037, !2038, !2041}
!2037 = !DILocalVariable(name: "__gmp_z", arg: 1, scope: !2030, file: !28, line: 1745, type: !2033)
!2038 = !DILocalVariable(name: "__gmp_n", scope: !2030, file: !28, line: 1747, type: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_size_t", file: !28, line: 175, baseType: !2040)
!2040 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2041 = !DILocalVariable(name: "__gmp_p", scope: !2030, file: !28, line: 1747, type: !2042)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_ptr", file: !28, line: 166, baseType: !37)
!2043 = distinct !DILocation(line: 486, column: 7, scope: !2025, inlinedAt: !2026)
!2044 = !DILocation(line: 486, column: 7, scope: !2017, inlinedAt: !2026)
!2045 = !DILocation(line: 1769, column: 29, scope: !2046, inlinedAt: !2054)
!2046 = distinct !DISubprogram(name: "__gmpz_get_ui", scope: !28, file: !28, line: 1767, type: !2047, isLocal: false, isDefinition: true, scopeLine: 1768, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!39, !2033}
!2049 = !{!2050, !2051, !2052, !2053}
!2050 = !DILocalVariable(name: "__gmp_z", arg: 1, scope: !2046, file: !28, line: 1767, type: !2033)
!2051 = !DILocalVariable(name: "__gmp_p", scope: !2046, file: !28, line: 1769, type: !2042)
!2052 = !DILocalVariable(name: "__gmp_n", scope: !2046, file: !28, line: 1770, type: !2039)
!2053 = !DILocalVariable(name: "__gmp_l", scope: !2046, file: !28, line: 1771, type: !38)
!2054 = distinct !DILocation(line: 488, column: 30, scope: !2024, inlinedAt: !2026)
!2055 = !{!871, !674, i64 8}
!2056 = !DILocation(line: 1769, column: 10, scope: !2046, inlinedAt: !2054)
!2057 = !DILocation(line: 1771, column: 23, scope: !2046, inlinedAt: !2054)
!2058 = !{!697, !697, i64 0}
!2059 = !DILocation(line: 1771, column: 13, scope: !2046, inlinedAt: !2054)
!2060 = !DILocation(line: 1778, column: 19, scope: !2046, inlinedAt: !2054)
!2061 = !DILocation(line: 1778, column: 11, scope: !2046, inlinedAt: !2054)
!2062 = !DILocation(line: 488, column: 25, scope: !2024, inlinedAt: !2026)
!2063 = !DILocation(line: 489, column: 14, scope: !2064, inlinedAt: !2026)
!2064 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 489, column: 11)
!2065 = !DILocation(line: 492, column: 3, scope: !2017, inlinedAt: !2026)
!2066 = !DILocation(line: 698, column: 18, scope: !1722)
!2067 = !DILocation(line: 484, column: 7, scope: !2016, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 699, column: 24, scope: !1722)
!2069 = !DILocation(line: 484, column: 7, scope: !2028, inlinedAt: !2068)
!2070 = !DILocation(line: 1747, column: 3, scope: !2030, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 486, column: 7, scope: !2025, inlinedAt: !2068)
!2072 = !DILocation(line: 486, column: 7, scope: !2017, inlinedAt: !2068)
!2073 = !DILocation(line: 1769, column: 29, scope: !2046, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 488, column: 30, scope: !2024, inlinedAt: !2068)
!2075 = !DILocation(line: 1769, column: 10, scope: !2046, inlinedAt: !2074)
!2076 = !DILocation(line: 1771, column: 23, scope: !2046, inlinedAt: !2074)
!2077 = !DILocation(line: 1771, column: 13, scope: !2046, inlinedAt: !2074)
!2078 = !DILocation(line: 1778, column: 19, scope: !2046, inlinedAt: !2074)
!2079 = !DILocation(line: 1778, column: 11, scope: !2046, inlinedAt: !2074)
!2080 = !DILocation(line: 488, column: 25, scope: !2024, inlinedAt: !2068)
!2081 = !DILocation(line: 489, column: 14, scope: !2064, inlinedAt: !2068)
!2082 = !DILocation(line: 492, column: 3, scope: !2017, inlinedAt: !2068)
!2083 = !DILocation(line: 699, column: 18, scope: !1722)
!2084 = !DILocation(line: 701, column: 26, scope: !1727)
!2085 = !DILocation(line: 345, column: 24, scope: !1746, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 702, column: 17, scope: !1727)
!2087 = !DILocation(line: 347, column: 14, scope: !1746, inlinedAt: !2086)
!2088 = !DILocation(line: 348, column: 6, scope: !1746, inlinedAt: !2086)
!2089 = !DILocation(line: 348, column: 11, scope: !1746, inlinedAt: !2086)
!2090 = !DILocation(line: 349, column: 12, scope: !1746, inlinedAt: !2086)
!2091 = !DILocation(line: 349, column: 6, scope: !1746, inlinedAt: !2086)
!2092 = !DILocation(line: 349, column: 8, scope: !1746, inlinedAt: !2086)
!2093 = !DILocation(line: 349, column: 10, scope: !1746, inlinedAt: !2086)
!2094 = !DILocation(line: 702, column: 13, scope: !1727)
!2095 = !DILocation(line: 705, column: 29, scope: !1726)
!2096 = !DILocation(line: 705, column: 29, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !1726, file: !3, discriminator: 1)
!2098 = !DILocation(line: 705, column: 22, scope: !1726)
!2099 = !DILocation(line: 707, column: 19, scope: !1726)
!2100 = !DILocation(line: 708, column: 18, scope: !1726)
!2101 = !DILocation(line: 708, column: 23, scope: !1726)
!2102 = !DILocation(line: 709, column: 38, scope: !1726)
!2103 = !DILocation(line: 709, column: 24, scope: !1726)
!2104 = !DILocation(line: 709, column: 18, scope: !1726)
!2105 = !DILocation(line: 709, column: 20, scope: !1726)
!2106 = !DILocation(line: 709, column: 22, scope: !1726)
!2107 = !DILocation(line: 710, column: 44, scope: !1726)
!2108 = !DILocation(line: 710, column: 46, scope: !1726)
!2109 = !DILocation(line: 710, column: 52, scope: !1726)
!2110 = !DILocalVariable(name: "__dest", arg: 1, scope: !2111, file: !2112, line: 64, type: !2115)
!2111 = distinct !DISubprogram(name: "mempcpy", scope: !2112, file: !2112, line: 64, type: !2113, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2117)
!2112 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!101, !2115, !2116, !102}
!2115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!2116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !104)
!2117 = !{!2110, !2118, !2119}
!2118 = !DILocalVariable(name: "__src", arg: 2, scope: !2111, file: !2112, line: 64, type: !2116)
!2119 = !DILocalVariable(name: "__len", arg: 3, scope: !2111, file: !2112, line: 64, type: !102)
!2120 = !DILocation(line: 64, column: 1, scope: !2111, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 710, column: 22, scope: !1726)
!2122 = !DILocation(line: 67, column: 57, scope: !2111, inlinedAt: !2121)
!2123 = !DILocation(line: 67, column: 10, scope: !2111, inlinedAt: !2121)
!2124 = !DILocation(line: 706, column: 21, scope: !1726)
!2125 = !DILocation(line: 711, column: 21, scope: !1726)
!2126 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 714, column: 7, scope: !1719)
!2128 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !2127)
!2129 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !2127)
!2130 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !2127)
!2131 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !2127)
!2132 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !2127)
!2133 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !2127)
!2134 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !2127)
!2135 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !2127)
!2136 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !2127)
!2137 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 715, column: 7, scope: !1719)
!2139 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !2138)
!2140 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !2138)
!2141 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !2138)
!2142 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !2138)
!2143 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !2138)
!2144 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !2138)
!2145 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !2138)
!2146 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !2138)
!2147 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !2138)
!2148 = !DILocation(line: 356, column: 15, scope: !985, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 716, column: 7, scope: !1719)
!2150 = !DILocation(line: 358, column: 10, scope: !991, inlinedAt: !2149)
!2151 = !DILocation(line: 358, column: 15, scope: !991, inlinedAt: !2149)
!2152 = !DILocation(line: 358, column: 7, scope: !985, inlinedAt: !2149)
!2153 = !DILocation(line: 359, column: 16, scope: !991, inlinedAt: !2149)
!2154 = !DILocation(line: 359, column: 5, scope: !991, inlinedAt: !2149)
!2155 = !DILocation(line: 361, column: 16, scope: !991, inlinedAt: !2149)
!2156 = !DILocation(line: 361, column: 5, scope: !991, inlinedAt: !2149)
!2157 = !DILocation(line: 362, column: 9, scope: !985, inlinedAt: !2149)
!2158 = !DILocation(line: 362, column: 3, scope: !985, inlinedAt: !2149)
!2159 = !DILocalVariable(name: "evaluate", arg: 1, scope: !2160, file: !3, line: 605, type: !45)
!2160 = distinct !DISubprogram(name: "eval7", scope: !3, file: !3, line: 605, type: !15, isLocal: true, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2161)
!2161 = !{!2159, !2162}
!2162 = !DILocalVariable(name: "v", scope: !2160, file: !3, line: 607, type: !17)
!2163 = !DILocation(line: 605, column: 13, scope: !2160, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 720, column: 12, scope: !1720)
!2165 = !DILocation(line: 516, column: 16, scope: !823, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 612, column: 7, scope: !2167, inlinedAt: !2164)
!2167 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 612, column: 7)
!2168 = !DILocation(line: 612, column: 7, scope: !2160, inlinedAt: !2164)
!2169 = !DILocation(line: 613, column: 5, scope: !2167, inlinedAt: !2164)
!2170 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 615, column: 7, scope: !2172, inlinedAt: !2164)
!2172 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 615, column: 7)
!2173 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !2171)
!2174 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !2171)
!2175 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !2171)
!2176 = !DILocation(line: 615, column: 7, scope: !2160, inlinedAt: !2164)
!2177 = !DILocation(line: 617, column: 11, scope: !2178, inlinedAt: !2164)
!2178 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 616, column: 5)
!2179 = !DILocation(line: 607, column: 10, scope: !2160, inlinedAt: !2164)
!2180 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 618, column: 12, scope: !2182, inlinedAt: !2164)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 618, column: 11)
!2183 = !DILocation(line: 501, column: 8, scope: !917, inlinedAt: !2181)
!2184 = !DILocation(line: 501, column: 7, scope: !917, inlinedAt: !2181)
!2185 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !2181)
!2186 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !2181)
!2187 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !2181)
!2188 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !2181)
!2189 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !2181)
!2190 = !DILocation(line: 618, column: 11, scope: !2178, inlinedAt: !2164)
!2191 = !DILocation(line: 619, column: 9, scope: !2182, inlinedAt: !2164)
!2192 = !DILocation(line: 499, column: 22, scope: !911, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 623, column: 7, scope: !2194, inlinedAt: !2164)
!2194 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 623, column: 7)
!2195 = !DILocation(line: 501, column: 7, scope: !917, inlinedAt: !2193)
!2196 = !DILocation(line: 501, column: 13, scope: !917, inlinedAt: !2193)
!2197 = !DILocation(line: 501, column: 7, scope: !911, inlinedAt: !2193)
!2198 = !DILocation(line: 505, column: 16, scope: !919, inlinedAt: !2193)
!2199 = !DILocation(line: 505, column: 16, scope: !916, inlinedAt: !2193)
!2200 = !DILocation(line: 506, column: 12, scope: !916, inlinedAt: !2193)
!2201 = !DILocation(line: 623, column: 7, scope: !2160, inlinedAt: !2164)
!2202 = !DILocation(line: 624, column: 5, scope: !2194, inlinedAt: !2164)
!2203 = !DILocation(line: 626, column: 26, scope: !2160, inlinedAt: !2164)
!2204 = !DILocation(line: 626, column: 21, scope: !2160, inlinedAt: !2164)
!2205 = !DILocation(line: 345, column: 24, scope: !1746, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 626, column: 10, scope: !2160, inlinedAt: !2164)
!2207 = !DILocation(line: 347, column: 14, scope: !1746, inlinedAt: !2206)
!2208 = !DILocation(line: 347, column: 10, scope: !1746, inlinedAt: !2206)
!2209 = !DILocation(line: 348, column: 6, scope: !1746, inlinedAt: !2206)
!2210 = !DILocation(line: 348, column: 11, scope: !1746, inlinedAt: !2206)
!2211 = !DILocation(line: 349, column: 12, scope: !1746, inlinedAt: !2206)
!2212 = !DILocation(line: 349, column: 6, scope: !1746, inlinedAt: !2206)
!2213 = !DILocation(line: 349, column: 8, scope: !1746, inlinedAt: !2206)
!2214 = !DILocation(line: 349, column: 10, scope: !1746, inlinedAt: !2206)
!2215 = !DILocation(line: 626, column: 3, scope: !2160, inlinedAt: !2164)
!2216 = !DILocation(line: 721, column: 1, scope: !1704)
!2217 = distinct !DISubprogram(name: "docolon", scope: !3, file: !3, line: 540, type: !2218, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!17, !17, !17}
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2247, !2248, !2257}
!2221 = !DILocalVariable(name: "sv", arg: 1, scope: !2217, file: !3, line: 540, type: !17)
!2222 = !DILocalVariable(name: "pv", arg: 2, scope: !2217, file: !3, line: 540, type: !17)
!2223 = !DILocalVariable(name: "v", scope: !2217, file: !3, line: 542, type: !17)
!2224 = !DILocalVariable(name: "errmsg", scope: !2217, file: !3, line: 543, type: !99)
!2225 = !DILocalVariable(name: "re_buffer", scope: !2217, file: !3, line: 544, type: !2226)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !2227, line: 414, size: 512, elements: !2228)
!2227 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2228 = !{!2229, !2232, !2234, !2235, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2226, file: !2227, line: 418, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !2227, line: 418, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !2226, file: !2227, line: 421, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !2227, line: 57, baseType: !39)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2226, file: !2227, line: 424, baseType: !2233, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !2226, file: !2227, line: 427, baseType: !2236, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !2227, line: 73, baseType: !39)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !2226, file: !2227, line: 432, baseType: !43, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2226, file: !2227, line: 438, baseType: !605, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !2226, file: !2227, line: 441, baseType: !102, size: 64, offset: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !2226, file: !2227, line: 447, baseType: !109, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !2226, file: !2227, line: 458, baseType: !109, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !2226, file: !2227, line: 462, baseType: !109, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !2226, file: !2227, line: 466, baseType: !109, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !2226, file: !2227, line: 470, baseType: !109, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !2226, file: !2227, line: 473, baseType: !109, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !2226, file: !2227, line: 476, baseType: !109, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!2247 = !DILocalVariable(name: "fastmap", scope: !2217, file: !3, line: 545, type: !234)
!2248 = !DILocalVariable(name: "re_regs", scope: !2217, file: !3, line: 546, type: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !2227, line: 498, size: 192, elements: !2250)
!2250 = !{!2251, !2253, !2256}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !2249, file: !2227, line: 500, baseType: !2252, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !2227, line: 56, baseType: !109)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2249, file: !2227, line: 501, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !2227, line: 491, baseType: !34)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2249, file: !2227, line: 502, baseType: !2254, size: 64, offset: 128)
!2257 = !DILocalVariable(name: "matchlen", scope: !2217, file: !3, line: 547, type: !2255)
!2258 = !DILocation(line: 540, column: 17, scope: !2217)
!2259 = !DILocation(line: 540, column: 28, scope: !2217)
!2260 = !DILocation(line: 544, column: 3, scope: !2217)
!2261 = !DILocation(line: 545, column: 3, scope: !2217)
!2262 = !DILocation(line: 545, column: 8, scope: !2217)
!2263 = !DILocation(line: 546, column: 3, scope: !2217)
!2264 = !DILocation(line: 433, column: 18, scope: !1286, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 549, column: 3, scope: !2217)
!2266 = !DILocation(line: 435, column: 14, scope: !1286, inlinedAt: !2265)
!2267 = !DILocation(line: 435, column: 3, scope: !1286, inlinedAt: !2265)
!2268 = !DILocation(line: 439, column: 45, scope: !1289, inlinedAt: !2265)
!2269 = !DILocation(line: 439, column: 42, scope: !1289, inlinedAt: !2265)
!2270 = !DILocation(line: 439, column: 19, scope: !1289, inlinedAt: !2265)
!2271 = !DILocation(line: 439, column: 15, scope: !1289, inlinedAt: !2265)
!2272 = !DILocation(line: 440, column: 9, scope: !1289, inlinedAt: !2265)
!2273 = !DILocation(line: 441, column: 14, scope: !1289, inlinedAt: !2265)
!2274 = !DILocation(line: 441, column: 16, scope: !1289, inlinedAt: !2265)
!2275 = !DILocation(line: 442, column: 17, scope: !1289, inlinedAt: !2265)
!2276 = !DILocation(line: 444, column: 7, scope: !1290, inlinedAt: !2265)
!2277 = !DILocation(line: 448, column: 7, scope: !1290, inlinedAt: !2265)
!2278 = !DILocation(line: 433, column: 18, scope: !1286, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 550, column: 3, scope: !2217)
!2280 = !DILocation(line: 435, column: 14, scope: !1286, inlinedAt: !2279)
!2281 = !DILocation(line: 435, column: 3, scope: !1286, inlinedAt: !2279)
!2282 = !DILocation(line: 439, column: 45, scope: !1289, inlinedAt: !2279)
!2283 = !DILocation(line: 439, column: 42, scope: !1289, inlinedAt: !2279)
!2284 = !DILocation(line: 439, column: 19, scope: !1289, inlinedAt: !2279)
!2285 = !DILocation(line: 439, column: 15, scope: !1289, inlinedAt: !2279)
!2286 = !DILocation(line: 440, column: 9, scope: !1289, inlinedAt: !2279)
!2287 = !DILocation(line: 441, column: 14, scope: !1289, inlinedAt: !2279)
!2288 = !DILocation(line: 441, column: 16, scope: !1289, inlinedAt: !2279)
!2289 = !DILocation(line: 442, column: 17, scope: !1289, inlinedAt: !2279)
!2290 = !DILocation(line: 444, column: 7, scope: !1290, inlinedAt: !2279)
!2291 = !DILocation(line: 448, column: 7, scope: !1290, inlinedAt: !2279)
!2292 = !DILocation(line: 562, column: 38, scope: !2217)
!2293 = !DILocation(line: 552, column: 11, scope: !2217)
!2294 = !DILocation(line: 552, column: 20, scope: !2217)
!2295 = !{!2296, !696, i64 0}
!2296 = !{!"re_registers", !696, i64 0, !674, i64 8, !674, i64 16}
!2297 = !DILocation(line: 553, column: 11, scope: !2217)
!2298 = !DILocation(line: 554, column: 11, scope: !2217)
!2299 = !DILocation(line: 556, column: 20, scope: !2217)
!2300 = !DILocation(line: 553, column: 17, scope: !2217)
!2301 = !DILocation(line: 558, column: 13, scope: !2217)
!2302 = !DILocation(line: 558, column: 21, scope: !2217)
!2303 = !DILocation(line: 557, column: 23, scope: !2217)
!2304 = !{!2305, !674, i64 32}
!2305 = !{!"re_pattern_buffer", !674, i64 0, !697, i64 8, !697, i64 16, !697, i64 24, !674, i64 32, !674, i64 40, !697, i64 48, !696, i64 56, !696, i64 56, !696, i64 56, !696, i64 56, !696, i64 56, !696, i64 56, !696, i64 56}
!2306 = !DILocation(line: 559, column: 13, scope: !2217)
!2307 = !DILocation(line: 559, column: 23, scope: !2217)
!2308 = !{!2305, !674, i64 40}
!2309 = !DILocation(line: 560, column: 21, scope: !2217)
!2310 = !DILocation(line: 562, column: 41, scope: !2217)
!2311 = !DIExpression(DW_OP_deref)
!2312 = !DILocation(line: 544, column: 28, scope: !2217)
!2313 = !DILocation(line: 562, column: 12, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2217, file: !3, discriminator: 1)
!2315 = !DILocation(line: 543, column: 15, scope: !2217)
!2316 = !DILocation(line: 563, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 563, column: 7)
!2318 = !DILocation(line: 563, column: 7, scope: !2217)
!2319 = !DILocation(line: 564, column: 5, scope: !2317)
!2320 = !DILocation(line: 565, column: 13, scope: !2217)
!2321 = !DILocation(line: 565, column: 28, scope: !2217)
!2322 = !DILocation(line: 567, column: 40, scope: !2217)
!2323 = !DILocation(line: 567, column: 42, scope: !2217)
!2324 = !DILocation(line: 567, column: 45, scope: !2217)
!2325 = !DILocation(line: 546, column: 23, scope: !2217)
!2326 = !DILocation(line: 567, column: 14, scope: !2314)
!2327 = !DILocation(line: 547, column: 12, scope: !2217)
!2328 = !DILocation(line: 568, column: 9, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 568, column: 7)
!2330 = !DILocation(line: 568, column: 7, scope: !2217)
!2331 = !DILocation(line: 571, column: 21, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 571, column: 11)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 569, column: 5)
!2334 = !{!2305, !697, i64 48}
!2335 = !DILocation(line: 571, column: 29, scope: !2332)
!2336 = !DILocation(line: 571, column: 11, scope: !2333)
!2337 = !DILocation(line: 573, column: 17, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 572, column: 9)
!2339 = !DILocation(line: 573, column: 27, scope: !2338)
!2340 = !{!2296, !674, i64 16}
!2341 = !DILocation(line: 573, column: 19, scope: !2338)
!2342 = !DILocation(line: 573, column: 11, scope: !2338)
!2343 = !DILocation(line: 573, column: 35, scope: !2338)
!2344 = !DILocation(line: 574, column: 32, scope: !2338)
!2345 = !DILocation(line: 574, column: 44, scope: !2338)
!2346 = !{!2296, !674, i64 8}
!2347 = !DILocation(line: 574, column: 36, scope: !2338)
!2348 = !DILocation(line: 574, column: 34, scope: !2338)
!2349 = !DILocation(line: 345, column: 24, scope: !1746, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 574, column: 15, scope: !2338)
!2351 = !DILocation(line: 347, column: 14, scope: !1746, inlinedAt: !2350)
!2352 = !DILocation(line: 347, column: 10, scope: !1746, inlinedAt: !2350)
!2353 = !DILocation(line: 348, column: 6, scope: !1746, inlinedAt: !2350)
!2354 = !DILocation(line: 348, column: 11, scope: !1746, inlinedAt: !2350)
!2355 = !DILocation(line: 349, column: 12, scope: !1746, inlinedAt: !2350)
!2356 = !DILocation(line: 349, column: 6, scope: !1746, inlinedAt: !2350)
!2357 = !DILocation(line: 349, column: 8, scope: !1746, inlinedAt: !2350)
!2358 = !DILocation(line: 349, column: 10, scope: !1746, inlinedAt: !2350)
!2359 = !DILocation(line: 542, column: 10, scope: !2217)
!2360 = !DILocation(line: 575, column: 9, scope: !2338)
!2361 = !DILocation(line: 577, column: 24, scope: !2332)
!2362 = !DILocation(line: 334, column: 30, scope: !1035, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 577, column: 13, scope: !2332)
!2364 = !DILocation(line: 336, column: 14, scope: !1035, inlinedAt: !2363)
!2365 = !DILocation(line: 336, column: 10, scope: !1035, inlinedAt: !2363)
!2366 = !DILocation(line: 337, column: 6, scope: !1035, inlinedAt: !2363)
!2367 = !DILocation(line: 337, column: 11, scope: !1035, inlinedAt: !2363)
!2368 = !DILocation(line: 338, column: 23, scope: !1035, inlinedAt: !2363)
!2369 = !DILocation(line: 338, column: 20, scope: !1035, inlinedAt: !2363)
!2370 = !DILocation(line: 338, column: 3, scope: !1035, inlinedAt: !2363)
!2371 = !DILocation(line: 579, column: 12, scope: !2329)
!2372 = !DILocation(line: 582, column: 21, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 582, column: 11)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 580, column: 5)
!2375 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 579, column: 12)
!2376 = !DILocation(line: 582, column: 29, scope: !2373)
!2377 = !DILocation(line: 336, column: 14, scope: !1035, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 585, column: 13, scope: !2373)
!2379 = !DILocation(line: 582, column: 11, scope: !2374)
!2380 = !DILocation(line: 345, column: 24, scope: !1746, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 583, column: 13, scope: !2373)
!2382 = !DILocation(line: 347, column: 10, scope: !1746, inlinedAt: !2381)
!2383 = !DILocation(line: 348, column: 11, scope: !1746, inlinedAt: !2381)
!2384 = !DILocation(line: 349, column: 12, scope: !1746, inlinedAt: !2381)
!2385 = !DILocation(line: 349, column: 6, scope: !1746, inlinedAt: !2381)
!2386 = !DILocation(line: 349, column: 8, scope: !1746, inlinedAt: !2381)
!2387 = !DILocation(line: 349, column: 10, scope: !1746, inlinedAt: !2381)
!2388 = !DILocation(line: 583, column: 9, scope: !2373)
!2389 = !DILocation(line: 334, column: 30, scope: !1035, inlinedAt: !2378)
!2390 = !DILocation(line: 336, column: 10, scope: !1035, inlinedAt: !2378)
!2391 = !DILocation(line: 337, column: 11, scope: !1035, inlinedAt: !2378)
!2392 = !DILocation(line: 338, column: 23, scope: !1035, inlinedAt: !2378)
!2393 = !DILocation(line: 338, column: 20, scope: !1035, inlinedAt: !2378)
!2394 = !DILocation(line: 338, column: 3, scope: !1035, inlinedAt: !2378)
!2395 = !DILocation(line: 588, column: 5, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2375, file: !3, discriminator: 1)
!2397 = !DILocation(line: 588, column: 5, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2375, file: !3, discriminator: 3)
!2399 = !DILocation(line: 588, column: 5, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2375, file: !3, discriminator: 4)
!2401 = !DILocation(line: 592, column: 19, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 592, column: 7)
!2403 = !DILocation(line: 592, column: 9, scope: !2402)
!2404 = !DILocation(line: 592, column: 7, scope: !2217)
!2405 = !DILocation(line: 594, column: 21, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 593, column: 5)
!2407 = !DILocation(line: 594, column: 7, scope: !2406)
!2408 = !DILocation(line: 595, column: 21, scope: !2406)
!2409 = !DILocation(line: 595, column: 7, scope: !2406)
!2410 = !DILocation(line: 596, column: 5, scope: !2406)
!2411 = !DILocation(line: 597, column: 21, scope: !2217)
!2412 = !DILocation(line: 598, column: 3, scope: !2217)
!2413 = !DILocation(line: 600, column: 1, scope: !2217)
!2414 = !DILocation(line: 599, column: 3, scope: !2217)
!2415 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !150, file: !150, line: 41, type: !115, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2416)
!2416 = !{!2417}
!2417 = !DILocalVariable(name: "file", arg: 1, scope: !2415, file: !150, line: 41, type: !99)
!2418 = !DILocation(line: 41, column: 41, scope: !2415)
!2419 = !DILocation(line: 43, column: 13, scope: !2415)
!2420 = !DILocation(line: 44, column: 1, scope: !2415)
!2421 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !150, file: !150, line: 78, type: !2422, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !45}
!2424 = !{!2425}
!2425 = !DILocalVariable(name: "ignore", arg: 1, scope: !2421, file: !150, line: 78, type: !45)
!2426 = !DILocation(line: 78, column: 37, scope: !2421)
!2427 = !DILocation(line: 80, column: 16, scope: !2421)
!2428 = !{!2429, !2429, i64 0}
!2429 = !{!"_Bool", !675, i64 0}
!2430 = !DILocation(line: 81, column: 1, scope: !2421)
!2431 = distinct !DISubprogram(name: "close_stdout", scope: !150, file: !150, line: 107, type: !1066, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !144, variables: !2432)
!2432 = !{!2433}
!2433 = !DILocalVariable(name: "write_error", scope: !2434, file: !150, line: 112, type: !99)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !150, line: 111, column: 5)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !150, line: 109, column: 7)
!2436 = !DILocation(line: 109, column: 21, scope: !2435)
!2437 = !DILocation(line: 109, column: 7, scope: !2435)
!2438 = !DILocation(line: 109, column: 29, scope: !2435)
!2439 = !DILocation(line: 110, column: 7, scope: !2435)
!2440 = !DILocation(line: 110, column: 12, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2435, file: !150, discriminator: 1)
!2442 = !{i8 0, i8 2}
!2443 = !DILocation(line: 114, column: 19, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2434, file: !150, line: 113, column: 11)
!2445 = !DILocation(line: 110, column: 25, scope: !2441)
!2446 = !DILocation(line: 110, column: 28, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2435, file: !150, discriminator: 2)
!2448 = !DILocation(line: 110, column: 34, scope: !2447)
!2449 = !DILocation(line: 109, column: 7, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2431, file: !150, discriminator: 1)
!2451 = !DILocation(line: 112, column: 33, scope: !2434)
!2452 = !DILocation(line: 112, column: 19, scope: !2434)
!2453 = !DILocation(line: 113, column: 11, scope: !2444)
!2454 = !DILocation(line: 113, column: 11, scope: !2434)
!2455 = !DILocation(line: 114, column: 36, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2444, file: !150, discriminator: 1)
!2457 = !DILocation(line: 114, column: 9, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2444, file: !150, discriminator: 2)
!2459 = !DILocation(line: 114, column: 9, scope: !2444)
!2460 = !DILocation(line: 117, column: 9, scope: !2456)
!2461 = !DILocation(line: 119, column: 14, scope: !2434)
!2462 = !DILocation(line: 119, column: 7, scope: !2434)
!2463 = !DILocation(line: 122, column: 22, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2431, file: !150, line: 122, column: 8)
!2465 = !DILocation(line: 122, column: 8, scope: !2464)
!2466 = !DILocation(line: 122, column: 30, scope: !2464)
!2467 = !DILocation(line: 122, column: 8, scope: !2431)
!2468 = !DILocation(line: 123, column: 13, scope: !2464)
!2469 = !DILocation(line: 123, column: 6, scope: !2464)
!2470 = !DILocation(line: 124, column: 1, scope: !2431)
!2471 = distinct !DISubprogram(name: "parse_long_options", scope: !163, file: !163, line: 44, type: !2472, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !160, variables: !2475)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !34, !141, !99, !99, !99, !2474, null}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484}
!2476 = !DILocalVariable(name: "argc", arg: 1, scope: !2471, file: !163, line: 44, type: !34)
!2477 = !DILocalVariable(name: "argv", arg: 2, scope: !2471, file: !163, line: 45, type: !141)
!2478 = !DILocalVariable(name: "command_name", arg: 3, scope: !2471, file: !163, line: 46, type: !99)
!2479 = !DILocalVariable(name: "package", arg: 4, scope: !2471, file: !163, line: 47, type: !99)
!2480 = !DILocalVariable(name: "version", arg: 5, scope: !2471, file: !163, line: 48, type: !99)
!2481 = !DILocalVariable(name: "usage_func", arg: 6, scope: !2471, file: !163, line: 49, type: !2474)
!2482 = !DILocalVariable(name: "c", scope: !2471, file: !163, line: 52, type: !34)
!2483 = !DILocalVariable(name: "saved_opterr", scope: !2471, file: !163, line: 53, type: !34)
!2484 = !DILocalVariable(name: "authors", scope: !2485, file: !163, line: 71, type: !2489)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !163, line: 70, column: 11)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !163, line: 64, column: 9)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !163, line: 62, column: 5)
!2488 = distinct !DILexicalBlock(scope: !2471, file: !163, line: 60, column: 7)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2490, line: 80, baseType: !2491)
!2490 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2492, line: 50, baseType: !2493)
!2492 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !161, line: 71, baseType: !2494)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2495, size: 192, elements: !40)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !161, line: 71, size: 192, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2495, file: !161, line: 71, baseType: !109, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2495, file: !161, line: 71, baseType: !109, size: 32, offset: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2495, file: !161, line: 71, baseType: !101, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2495, file: !161, line: 71, baseType: !101, size: 64, offset: 128)
!2501 = !DILocation(line: 44, column: 25, scope: !2471)
!2502 = !DILocation(line: 45, column: 28, scope: !2471)
!2503 = !DILocation(line: 46, column: 33, scope: !2471)
!2504 = !DILocation(line: 47, column: 33, scope: !2471)
!2505 = !DILocation(line: 48, column: 33, scope: !2471)
!2506 = !DILocation(line: 49, column: 28, scope: !2471)
!2507 = !DILocation(line: 55, column: 18, scope: !2471)
!2508 = !DILocation(line: 53, column: 7, scope: !2471)
!2509 = !DILocation(line: 58, column: 10, scope: !2471)
!2510 = !DILocation(line: 60, column: 12, scope: !2488)
!2511 = !DILocation(line: 61, column: 7, scope: !2488)
!2512 = !DILocation(line: 61, column: 15, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2488, file: !163, discriminator: 1)
!2514 = !DILocation(line: 52, column: 7, scope: !2471)
!2515 = !DILocation(line: 60, column: 7, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2471, file: !163, discriminator: 1)
!2517 = !DILocation(line: 66, column: 11, scope: !2486)
!2518 = !DILocation(line: 67, column: 11, scope: !2486)
!2519 = !DILocation(line: 71, column: 13, scope: !2485)
!2520 = !DILocation(line: 71, column: 21, scope: !2485)
!2521 = !DILocation(line: 72, column: 13, scope: !2485)
!2522 = !DILocation(line: 73, column: 29, scope: !2485)
!2523 = !DILocation(line: 73, column: 13, scope: !2485)
!2524 = !DILocation(line: 74, column: 13, scope: !2485)
!2525 = !DILocation(line: 84, column: 10, scope: !2471)
!2526 = !DILocation(line: 88, column: 10, scope: !2471)
!2527 = !DILocation(line: 89, column: 1, scope: !2471)
!2528 = distinct !DISubprogram(name: "set_program_name", scope: !182, file: !182, line: 39, type: !115, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !178, variables: !2529)
!2529 = !{!2530, !2531, !2532}
!2530 = !DILocalVariable(name: "argv0", arg: 1, scope: !2528, file: !182, line: 39, type: !99)
!2531 = !DILocalVariable(name: "slash", scope: !2528, file: !182, line: 46, type: !99)
!2532 = !DILocalVariable(name: "base", scope: !2528, file: !182, line: 47, type: !99)
!2533 = !DILocation(line: 39, column: 31, scope: !2528)
!2534 = !DILocation(line: 51, column: 13, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2528, file: !182, line: 51, column: 7)
!2536 = !DILocation(line: 51, column: 7, scope: !2528)
!2537 = !DILocation(line: 55, column: 14, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !182, line: 52, column: 5)
!2539 = !DILocation(line: 54, column: 7, scope: !2538)
!2540 = !DILocation(line: 56, column: 7, scope: !2538)
!2541 = !DILocation(line: 59, column: 11, scope: !2528)
!2542 = !DILocation(line: 46, column: 15, scope: !2528)
!2543 = !DILocation(line: 60, column: 17, scope: !2528)
!2544 = !DILocation(line: 60, column: 33, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2528, file: !182, discriminator: 1)
!2546 = !DILocation(line: 60, column: 11, scope: !2528)
!2547 = !DILocation(line: 47, column: 15, scope: !2528)
!2548 = !DILocation(line: 61, column: 12, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2528, file: !182, line: 61, column: 7)
!2550 = !DILocation(line: 61, column: 20, scope: !2549)
!2551 = !DILocation(line: 61, column: 25, scope: !2549)
!2552 = !DILocation(line: 61, column: 28, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2549, file: !182, discriminator: 1)
!2554 = !DILocation(line: 61, column: 61, scope: !2553)
!2555 = !DILocation(line: 61, column: 7, scope: !2545)
!2556 = !DILocation(line: 64, column: 11, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !182, line: 64, column: 11)
!2558 = distinct !DILexicalBlock(scope: !2549, file: !182, line: 62, column: 5)
!2559 = !DILocation(line: 64, column: 36, scope: !2557)
!2560 = !DILocation(line: 64, column: 11, scope: !2558)
!2561 = !DILocation(line: 66, column: 24, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !182, line: 65, column: 9)
!2563 = !DILocation(line: 70, column: 41, scope: !2562)
!2564 = !DILocation(line: 72, column: 9, scope: !2562)
!2565 = !DILocation(line: 84, column: 16, scope: !2528)
!2566 = !DILocation(line: 90, column: 27, scope: !2528)
!2567 = !DILocation(line: 92, column: 1, scope: !2528)
!2568 = distinct !DISubprogram(name: "clone_quoting_options", scope: !213, file: !213, line: 114, type: !2569, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !2572)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!2571, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2572 = !{!2573, !2574, !2575}
!2573 = !DILocalVariable(name: "o", arg: 1, scope: !2568, file: !213, line: 114, type: !2571)
!2574 = !DILocalVariable(name: "e", scope: !2568, file: !213, line: 116, type: !34)
!2575 = !DILocalVariable(name: "p", scope: !2568, file: !213, line: 117, type: !2571)
!2576 = !DILocation(line: 114, column: 48, scope: !2568)
!2577 = !DILocation(line: 116, column: 11, scope: !2568)
!2578 = !DILocation(line: 116, column: 7, scope: !2568)
!2579 = !DILocation(line: 117, column: 40, scope: !2568)
!2580 = !DILocation(line: 117, column: 40, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2568, file: !213, discriminator: 3)
!2582 = !DILocation(line: 117, column: 31, scope: !2581)
!2583 = !DILocation(line: 117, column: 27, scope: !2568)
!2584 = !DILocation(line: 119, column: 9, scope: !2568)
!2585 = !DILocation(line: 120, column: 3, scope: !2568)
!2586 = distinct !DISubprogram(name: "get_quoting_style", scope: !213, file: !213, line: 125, type: !2587, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !2591)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!63, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!2591 = !{!2592}
!2592 = !DILocalVariable(name: "o", arg: 1, scope: !2586, file: !213, line: 125, type: !2589)
!2593 = !DILocation(line: 125, column: 50, scope: !2586)
!2594 = !DILocation(line: 127, column: 11, scope: !2586)
!2595 = !DILocation(line: 127, column: 46, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2586, file: !213, discriminator: 3)
!2597 = !{!2598, !675, i64 0}
!2598 = !{!"quoting_options", !675, i64 0, !696, i64 4, !675, i64 8, !674, i64 40, !674, i64 48}
!2599 = !DILocation(line: 127, column: 3, scope: !2596)
!2600 = distinct !DISubprogram(name: "set_quoting_style", scope: !213, file: !213, line: 133, type: !2601, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !2571, !63}
!2603 = !{!2604, !2605}
!2604 = !DILocalVariable(name: "o", arg: 1, scope: !2600, file: !213, line: 133, type: !2571)
!2605 = !DILocalVariable(name: "s", arg: 2, scope: !2600, file: !213, line: 133, type: !63)
!2606 = !DILocation(line: 133, column: 44, scope: !2600)
!2607 = !DILocation(line: 133, column: 66, scope: !2600)
!2608 = !DILocation(line: 135, column: 4, scope: !2600)
!2609 = !DILocation(line: 135, column: 39, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !2600, file: !213, discriminator: 3)
!2611 = !DILocation(line: 135, column: 45, scope: !2610)
!2612 = !DILocation(line: 136, column: 1, scope: !2600)
!2613 = distinct !DISubprogram(name: "set_char_quoting", scope: !213, file: !213, line: 144, type: !2614, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!34, !2571, !44, !34}
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2623, !2624}
!2617 = !DILocalVariable(name: "o", arg: 1, scope: !2613, file: !213, line: 144, type: !2571)
!2618 = !DILocalVariable(name: "c", arg: 2, scope: !2613, file: !213, line: 144, type: !44)
!2619 = !DILocalVariable(name: "i", arg: 3, scope: !2613, file: !213, line: 144, type: !34)
!2620 = !DILocalVariable(name: "uc", scope: !2613, file: !213, line: 146, type: !108)
!2621 = !DILocalVariable(name: "p", scope: !2613, file: !213, line: 147, type: !2622)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2623 = !DILocalVariable(name: "shift", scope: !2613, file: !213, line: 149, type: !34)
!2624 = !DILocalVariable(name: "r", scope: !2613, file: !213, line: 150, type: !34)
!2625 = !DILocation(line: 144, column: 43, scope: !2613)
!2626 = !DILocation(line: 144, column: 51, scope: !2613)
!2627 = !DILocation(line: 144, column: 58, scope: !2613)
!2628 = !DILocation(line: 146, column: 17, scope: !2613)
!2629 = !DILocation(line: 148, column: 6, scope: !2613)
!2630 = !DILocation(line: 148, column: 62, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2613, file: !213, discriminator: 3)
!2632 = !DILocation(line: 148, column: 57, scope: !2631)
!2633 = !DILocation(line: 147, column: 17, scope: !2613)
!2634 = !DILocation(line: 149, column: 18, scope: !2613)
!2635 = !DILocation(line: 149, column: 15, scope: !2613)
!2636 = !DILocation(line: 149, column: 7, scope: !2613)
!2637 = !DILocation(line: 150, column: 12, scope: !2613)
!2638 = !DILocation(line: 150, column: 15, scope: !2613)
!2639 = !DILocation(line: 150, column: 25, scope: !2613)
!2640 = !DILocation(line: 150, column: 7, scope: !2613)
!2641 = !DILocation(line: 151, column: 13, scope: !2613)
!2642 = !DILocation(line: 151, column: 18, scope: !2613)
!2643 = !DILocation(line: 151, column: 23, scope: !2613)
!2644 = !DILocation(line: 151, column: 6, scope: !2613)
!2645 = !DILocation(line: 152, column: 3, scope: !2613)
!2646 = distinct !DISubprogram(name: "set_quoting_flags", scope: !213, file: !213, line: 160, type: !2647, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!34, !2571, !34}
!2649 = !{!2650, !2651, !2652}
!2650 = !DILocalVariable(name: "o", arg: 1, scope: !2646, file: !213, line: 160, type: !2571)
!2651 = !DILocalVariable(name: "i", arg: 2, scope: !2646, file: !213, line: 160, type: !34)
!2652 = !DILocalVariable(name: "r", scope: !2646, file: !213, line: 162, type: !34)
!2653 = !DILocation(line: 160, column: 44, scope: !2646)
!2654 = !DILocation(line: 160, column: 51, scope: !2646)
!2655 = !DILocation(line: 163, column: 8, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2646, file: !213, line: 163, column: 7)
!2657 = !DILocation(line: 163, column: 7, scope: !2646)
!2658 = !DILocation(line: 165, column: 10, scope: !2646)
!2659 = !{!2598, !696, i64 4}
!2660 = !DILocation(line: 162, column: 7, scope: !2646)
!2661 = !DILocation(line: 166, column: 12, scope: !2646)
!2662 = !DILocation(line: 167, column: 3, scope: !2646)
!2663 = distinct !DISubprogram(name: "set_custom_quoting", scope: !213, file: !213, line: 171, type: !2664, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !2571, !99, !99}
!2666 = !{!2667, !2668, !2669}
!2667 = !DILocalVariable(name: "o", arg: 1, scope: !2663, file: !213, line: 171, type: !2571)
!2668 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2663, file: !213, line: 172, type: !99)
!2669 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2663, file: !213, line: 172, type: !99)
!2670 = !DILocation(line: 171, column: 45, scope: !2663)
!2671 = !DILocation(line: 172, column: 33, scope: !2663)
!2672 = !DILocation(line: 172, column: 57, scope: !2663)
!2673 = !DILocation(line: 174, column: 8, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2663, file: !213, line: 174, column: 7)
!2675 = !DILocation(line: 174, column: 7, scope: !2663)
!2676 = !DILocation(line: 176, column: 6, scope: !2663)
!2677 = !DILocation(line: 176, column: 12, scope: !2663)
!2678 = !DILocation(line: 177, column: 8, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2663, file: !213, line: 177, column: 7)
!2680 = !DILocation(line: 177, column: 23, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2679, file: !213, discriminator: 1)
!2682 = !DILocation(line: 177, column: 19, scope: !2679)
!2683 = !DILocation(line: 178, column: 5, scope: !2679)
!2684 = !DILocation(line: 179, column: 6, scope: !2663)
!2685 = !DILocation(line: 179, column: 17, scope: !2663)
!2686 = !{!2598, !674, i64 40}
!2687 = !DILocation(line: 180, column: 6, scope: !2663)
!2688 = !DILocation(line: 180, column: 18, scope: !2663)
!2689 = !{!2598, !674, i64 48}
!2690 = !DILocation(line: 181, column: 1, scope: !2663)
!2691 = distinct !DISubprogram(name: "quotearg_buffer", scope: !213, file: !213, line: 776, type: !2692, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!102, !43, !102, !99, !102, !2589}
!2694 = !{!2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702}
!2695 = !DILocalVariable(name: "buffer", arg: 1, scope: !2691, file: !213, line: 776, type: !43)
!2696 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2691, file: !213, line: 776, type: !102)
!2697 = !DILocalVariable(name: "arg", arg: 3, scope: !2691, file: !213, line: 777, type: !99)
!2698 = !DILocalVariable(name: "argsize", arg: 4, scope: !2691, file: !213, line: 777, type: !102)
!2699 = !DILocalVariable(name: "o", arg: 5, scope: !2691, file: !213, line: 778, type: !2589)
!2700 = !DILocalVariable(name: "p", scope: !2691, file: !213, line: 780, type: !2589)
!2701 = !DILocalVariable(name: "e", scope: !2691, file: !213, line: 781, type: !34)
!2702 = !DILocalVariable(name: "r", scope: !2691, file: !213, line: 782, type: !102)
!2703 = !DILocation(line: 776, column: 24, scope: !2691)
!2704 = !DILocation(line: 776, column: 39, scope: !2691)
!2705 = !DILocation(line: 777, column: 30, scope: !2691)
!2706 = !DILocation(line: 777, column: 42, scope: !2691)
!2707 = !DILocation(line: 778, column: 48, scope: !2691)
!2708 = !DILocation(line: 780, column: 37, scope: !2691)
!2709 = !DILocation(line: 780, column: 33, scope: !2691)
!2710 = !DILocation(line: 781, column: 11, scope: !2691)
!2711 = !DILocation(line: 781, column: 7, scope: !2691)
!2712 = !DILocation(line: 783, column: 43, scope: !2691)
!2713 = !DILocation(line: 783, column: 53, scope: !2691)
!2714 = !DILocation(line: 783, column: 60, scope: !2691)
!2715 = !DILocation(line: 784, column: 43, scope: !2691)
!2716 = !DILocation(line: 784, column: 58, scope: !2691)
!2717 = !DILocation(line: 782, column: 14, scope: !2691)
!2718 = !DILocation(line: 782, column: 10, scope: !2691)
!2719 = !DILocation(line: 785, column: 9, scope: !2691)
!2720 = !DILocation(line: 786, column: 3, scope: !2691)
!2721 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !213, file: !213, line: 248, type: !2722, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !2726)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!102, !43, !102, !99, !102, !63, !34, !2724, !99, !99}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2751, !2752, !2753, !2754, !2755, !2758, !2759, !2776, !2779, !2780, !2787}
!2727 = !DILocalVariable(name: "buffer", arg: 1, scope: !2721, file: !213, line: 248, type: !43)
!2728 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2721, file: !213, line: 248, type: !102)
!2729 = !DILocalVariable(name: "arg", arg: 3, scope: !2721, file: !213, line: 249, type: !99)
!2730 = !DILocalVariable(name: "argsize", arg: 4, scope: !2721, file: !213, line: 249, type: !102)
!2731 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2721, file: !213, line: 250, type: !63)
!2732 = !DILocalVariable(name: "flags", arg: 6, scope: !2721, file: !213, line: 250, type: !34)
!2733 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2721, file: !213, line: 251, type: !2724)
!2734 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2721, file: !213, line: 252, type: !99)
!2735 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2721, file: !213, line: 253, type: !99)
!2736 = !DILocalVariable(name: "i", scope: !2721, file: !213, line: 255, type: !102)
!2737 = !DILocalVariable(name: "len", scope: !2721, file: !213, line: 256, type: !102)
!2738 = !DILocalVariable(name: "orig_buffersize", scope: !2721, file: !213, line: 257, type: !102)
!2739 = !DILocalVariable(name: "quote_string", scope: !2721, file: !213, line: 258, type: !99)
!2740 = !DILocalVariable(name: "quote_string_len", scope: !2721, file: !213, line: 259, type: !102)
!2741 = !DILocalVariable(name: "backslash_escapes", scope: !2721, file: !213, line: 260, type: !45)
!2742 = !DILocalVariable(name: "unibyte_locale", scope: !2721, file: !213, line: 261, type: !45)
!2743 = !DILocalVariable(name: "elide_outer_quotes", scope: !2721, file: !213, line: 262, type: !45)
!2744 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2721, file: !213, line: 263, type: !45)
!2745 = !DILocalVariable(name: "encountered_single_quote", scope: !2721, file: !213, line: 264, type: !45)
!2746 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2721, file: !213, line: 265, type: !45)
!2747 = !DILocalVariable(name: "c", scope: !2748, file: !213, line: 394, type: !108)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !213, line: 393, column: 5)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !213, line: 392, column: 3)
!2750 = distinct !DILexicalBlock(scope: !2721, file: !213, line: 392, column: 3)
!2751 = !DILocalVariable(name: "esc", scope: !2748, file: !213, line: 395, type: !108)
!2752 = !DILocalVariable(name: "is_right_quote", scope: !2748, file: !213, line: 396, type: !45)
!2753 = !DILocalVariable(name: "escaping", scope: !2748, file: !213, line: 397, type: !45)
!2754 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2748, file: !213, line: 398, type: !45)
!2755 = !DILocalVariable(name: "m", scope: !2756, file: !213, line: 602, type: !102)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 600, column: 11)
!2757 = distinct !DILexicalBlock(scope: !2748, file: !213, line: 418, column: 9)
!2758 = !DILocalVariable(name: "printable", scope: !2756, file: !213, line: 604, type: !45)
!2759 = !DILocalVariable(name: "mbstate", scope: !2760, file: !213, line: 613, type: !2762)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !213, line: 612, column: 15)
!2761 = distinct !DILexicalBlock(scope: !2756, file: !213, line: 606, column: 17)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2763, line: 107, baseType: !2764)
!2763 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2763, line: 95, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2763, line: 83, size: 64, elements: !2766)
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2765, file: !2763, line: 85, baseType: !34, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2765, file: !2763, line: 94, baseType: !2769, size: 32, offset: 32)
!2769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2765, file: !2763, line: 86, size: 32, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2769, file: !2763, line: 89, baseType: !109, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2769, file: !2763, line: 93, baseType: !2773, size: 32)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !2774)
!2774 = !{!2775}
!2775 = !DISubrange(count: 4)
!2776 = !DILocalVariable(name: "w", scope: !2777, file: !213, line: 623, type: !2778)
!2777 = distinct !DILexicalBlock(scope: !2760, file: !213, line: 622, column: 19)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !103, line: 90, baseType: !34)
!2779 = !DILocalVariable(name: "bytes", scope: !2777, file: !213, line: 624, type: !102)
!2780 = !DILocalVariable(name: "j", scope: !2781, file: !213, line: 649, type: !102)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !213, line: 648, column: 27)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !213, line: 646, column: 29)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !213, line: 641, column: 23)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !213, line: 633, column: 30)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !213, line: 628, column: 30)
!2786 = distinct !DILexicalBlock(scope: !2777, file: !213, line: 626, column: 25)
!2787 = !DILocalVariable(name: "ilim", scope: !2788, file: !213, line: 676, type: !102)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !213, line: 673, column: 15)
!2789 = distinct !DILexicalBlock(scope: !2756, file: !213, line: 672, column: 17)
!2790 = !DILocation(line: 248, column: 33, scope: !2721)
!2791 = !DILocation(line: 248, column: 48, scope: !2721)
!2792 = !DILocation(line: 249, column: 39, scope: !2721)
!2793 = !DILocation(line: 249, column: 51, scope: !2721)
!2794 = !DILocation(line: 250, column: 46, scope: !2721)
!2795 = !DILocation(line: 250, column: 65, scope: !2721)
!2796 = !DILocation(line: 251, column: 47, scope: !2721)
!2797 = !DILocation(line: 252, column: 39, scope: !2721)
!2798 = !DILocation(line: 253, column: 39, scope: !2721)
!2799 = !DILocation(line: 256, column: 10, scope: !2721)
!2800 = !DILocation(line: 257, column: 10, scope: !2721)
!2801 = !DILocation(line: 258, column: 15, scope: !2721)
!2802 = !DILocation(line: 259, column: 10, scope: !2721)
!2803 = !DILocation(line: 260, column: 8, scope: !2721)
!2804 = !DILocation(line: 261, column: 25, scope: !2721)
!2805 = !DILocation(line: 261, column: 36, scope: !2721)
!2806 = !DILocation(line: 262, column: 8, scope: !2721)
!2807 = !DILocation(line: 263, column: 8, scope: !2721)
!2808 = !DILocation(line: 264, column: 8, scope: !2721)
!2809 = !DILocation(line: 265, column: 8, scope: !2721)
!2810 = !DILocation(line: 265, column: 3, scope: !2721)
!2811 = !DILocation(line: 308, column: 3, scope: !2721)
!2812 = !DILocation(line: 315, column: 11, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2721, file: !213, line: 309, column: 5)
!2814 = !DILocation(line: 315, column: 12, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2813, file: !213, line: 315, column: 11)
!2816 = !DILocation(line: 316, column: 9, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2818, file: !213, discriminator: 1)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !213, line: 316, column: 9)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !213, line: 316, column: 9)
!2820 = !DILocation(line: 316, column: 9, scope: !2821)
!2821 = !DILexicalBlockFile(scope: !2819, file: !213, discriminator: 1)
!2822 = !DILocation(line: 316, column: 9, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2818, file: !213, discriminator: 2)
!2824 = !DILocation(line: 354, column: 26, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !213, line: 332, column: 11)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !213, line: 331, column: 13)
!2827 = distinct !DILexicalBlock(scope: !2813, file: !213, line: 330, column: 7)
!2828 = !DILocation(line: 355, column: 27, scope: !2825)
!2829 = !DILocation(line: 356, column: 11, scope: !2825)
!2830 = !DILocation(line: 357, column: 14, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !213, line: 357, column: 13)
!2832 = !DILocation(line: 357, column: 13, scope: !2827)
!2833 = !DILocation(line: 358, column: 43, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2835, file: !213, discriminator: 1)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !213, line: 358, column: 11)
!2836 = distinct !DILexicalBlock(scope: !2831, file: !213, line: 358, column: 11)
!2837 = !DILocation(line: 358, column: 11, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2836, file: !213, discriminator: 1)
!2839 = !DILocation(line: 359, column: 13, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2841, file: !213, discriminator: 1)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !213, line: 359, column: 13)
!2842 = distinct !DILexicalBlock(scope: !2835, file: !213, line: 359, column: 13)
!2843 = !DILocation(line: 359, column: 13, scope: !2844)
!2844 = !DILexicalBlockFile(scope: !2842, file: !213, discriminator: 1)
!2845 = !DILocation(line: 359, column: 13, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !2841, file: !213, discriminator: 2)
!2847 = !DILocation(line: 359, column: 13, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2842, file: !213, discriminator: 3)
!2849 = !DILocation(line: 358, column: 70, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2835, file: !213, discriminator: 2)
!2851 = distinct !{!2851, !2852, !2853}
!2852 = !DILocation(line: 358, column: 11, scope: !2836)
!2853 = !DILocation(line: 359, column: 13, scope: !2836)
!2854 = !DILocation(line: 362, column: 28, scope: !2827)
!2855 = !DILocation(line: 364, column: 7, scope: !2813)
!2856 = !DILocation(line: 367, column: 7, scope: !2813)
!2857 = !DILocation(line: 370, column: 7, scope: !2813)
!2858 = !DILocation(line: 373, column: 12, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2813, file: !213, line: 373, column: 11)
!2860 = !DILocation(line: 373, column: 11, scope: !2813)
!2861 = !DILocation(line: 378, column: 12, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2813, file: !213, line: 378, column: 11)
!2863 = !DILocation(line: 378, column: 11, scope: !2813)
!2864 = !DILocation(line: 379, column: 9, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2866, file: !213, discriminator: 1)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !213, line: 379, column: 9)
!2867 = distinct !DILexicalBlock(scope: !2862, file: !213, line: 379, column: 9)
!2868 = !DILocation(line: 379, column: 9, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2867, file: !213, discriminator: 1)
!2870 = !DILocation(line: 379, column: 9, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2866, file: !213, discriminator: 2)
!2872 = !DILocation(line: 386, column: 7, scope: !2813)
!2873 = !DILocation(line: 389, column: 7, scope: !2813)
!2874 = !DILocation(line: 255, column: 10, scope: !2721)
!2875 = !DILocation(line: 392, column: 8, scope: !2750)
!2876 = !DILocation(line: 392, column: 27, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2749, file: !213, discriminator: 1)
!2878 = !DILocation(line: 392, column: 19, scope: !2877)
!2879 = !DILocation(line: 392, column: 60, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2749, file: !213, discriminator: 3)
!2881 = !DILocation(line: 392, column: 3, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !2750, file: !213, discriminator: 4)
!2883 = !DILocation(line: 392, column: 41, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !2749, file: !213, discriminator: 2)
!2885 = !DILocation(line: 392, column: 48, scope: !2884)
!2886 = !DILocation(line: 396, column: 12, scope: !2748)
!2887 = !DILocation(line: 397, column: 12, scope: !2748)
!2888 = !DILocation(line: 398, column: 12, scope: !2748)
!2889 = !DILocation(line: 401, column: 11, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2748, file: !213, line: 400, column: 11)
!2891 = !DILocation(line: 403, column: 17, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2890, file: !213, discriminator: 1)
!2893 = !DILocation(line: 404, column: 39, scope: !2890)
!2894 = !DILocation(line: 408, column: 32, scope: !2890)
!2895 = !DILocation(line: 404, column: 19, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !2890, file: !213, discriminator: 2)
!2897 = !DILocation(line: 404, column: 15, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2890, file: !213, discriminator: 4)
!2899 = !DILocation(line: 409, column: 11, scope: !2890)
!2900 = !DILocation(line: 409, column: 26, scope: !2892)
!2901 = !DILocation(line: 409, column: 14, scope: !2892)
!2902 = !DILocation(line: 400, column: 11, scope: !2903)
!2903 = !DILexicalBlockFile(scope: !2748, file: !213, discriminator: 1)
!2904 = !DILocation(line: 416, column: 11, scope: !2748)
!2905 = !DILocation(line: 394, column: 21, scope: !2748)
!2906 = !DILocation(line: 417, column: 7, scope: !2748)
!2907 = !DILocation(line: 420, column: 15, scope: !2757)
!2908 = !DILocation(line: 422, column: 15, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !2910, file: !213, discriminator: 1)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !213, line: 422, column: 15)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !213, line: 421, column: 13)
!2912 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 420, column: 15)
!2913 = !DILocation(line: 422, column: 15, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !2915, file: !213, discriminator: 4)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !213, line: 422, column: 15)
!2916 = !DILocation(line: 422, column: 15, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2915, file: !213, discriminator: 3)
!2918 = !DILocation(line: 422, column: 15, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2920, file: !213, discriminator: 6)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !213, line: 422, column: 15)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !213, line: 422, column: 15)
!2922 = distinct !DILexicalBlock(scope: !2915, file: !213, line: 422, column: 15)
!2923 = !DILocation(line: 422, column: 15, scope: !2924)
!2924 = !DILexicalBlockFile(scope: !2921, file: !213, discriminator: 6)
!2925 = !DILocation(line: 422, column: 15, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !2920, file: !213, discriminator: 7)
!2927 = !DILocation(line: 422, column: 15, scope: !2928)
!2928 = !DILexicalBlockFile(scope: !2921, file: !213, discriminator: 8)
!2929 = !DILocation(line: 422, column: 15, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2931, file: !213, discriminator: 11)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !213, line: 422, column: 15)
!2932 = distinct !DILexicalBlock(scope: !2922, file: !213, line: 422, column: 15)
!2933 = !DILocation(line: 422, column: 15, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2932, file: !213, discriminator: 11)
!2935 = !DILocation(line: 422, column: 15, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2931, file: !213, discriminator: 12)
!2937 = !DILocation(line: 422, column: 15, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2932, file: !213, discriminator: 13)
!2939 = !DILocation(line: 422, column: 15, scope: !2940)
!2940 = !DILexicalBlockFile(scope: !2941, file: !213, discriminator: 16)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !213, line: 422, column: 15)
!2942 = distinct !DILexicalBlock(scope: !2922, file: !213, line: 422, column: 15)
!2943 = !DILocation(line: 422, column: 15, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2942, file: !213, discriminator: 16)
!2945 = !DILocation(line: 422, column: 15, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2941, file: !213, discriminator: 17)
!2947 = !DILocation(line: 422, column: 15, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2942, file: !213, discriminator: 18)
!2949 = !DILocation(line: 422, column: 15, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2922, file: !213, discriminator: 20)
!2951 = !DILocation(line: 422, column: 15, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2953, file: !213, discriminator: 22)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !213, line: 422, column: 15)
!2954 = distinct !DILexicalBlock(scope: !2910, file: !213, line: 422, column: 15)
!2955 = !DILocation(line: 422, column: 15, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !2954, file: !213, discriminator: 22)
!2957 = !DILocation(line: 422, column: 15, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !2953, file: !213, discriminator: 23)
!2959 = !DILocation(line: 422, column: 15, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !2954, file: !213, discriminator: 24)
!2961 = !DILocation(line: 430, column: 19, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2911, file: !213, line: 429, column: 19)
!2963 = !DILocation(line: 430, column: 24, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !2962, file: !213, discriminator: 1)
!2965 = !DILocation(line: 430, column: 28, scope: !2964)
!2966 = !DILocation(line: 430, column: 38, scope: !2964)
!2967 = !DILocation(line: 430, column: 48, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2962, file: !213, discriminator: 2)
!2969 = !DILocation(line: 430, column: 59, scope: !2968)
!2970 = !DILocation(line: 432, column: 19, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2972, file: !213, discriminator: 1)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !213, line: 432, column: 19)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !213, line: 432, column: 19)
!2974 = distinct !DILexicalBlock(scope: !2962, file: !213, line: 431, column: 17)
!2975 = !DILocation(line: 432, column: 19, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2973, file: !213, discriminator: 1)
!2977 = !DILocation(line: 432, column: 19, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2972, file: !213, discriminator: 2)
!2979 = !DILocation(line: 432, column: 19, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2973, file: !213, discriminator: 3)
!2981 = !DILocation(line: 433, column: 19, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !2983, file: !213, discriminator: 1)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !213, line: 433, column: 19)
!2984 = distinct !DILexicalBlock(scope: !2974, file: !213, line: 433, column: 19)
!2985 = !DILocation(line: 433, column: 19, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2984, file: !213, discriminator: 1)
!2987 = !DILocation(line: 433, column: 19, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2983, file: !213, discriminator: 2)
!2989 = !DILocation(line: 433, column: 19, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !2984, file: !213, discriminator: 3)
!2991 = !DILocation(line: 434, column: 17, scope: !2974)
!2992 = !DILocation(line: 441, column: 20, scope: !2912)
!2993 = !DILocation(line: 446, column: 11, scope: !2757)
!2994 = !DILocation(line: 449, column: 19, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 447, column: 13)
!2996 = !DILocation(line: 455, column: 19, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2995, file: !213, line: 454, column: 19)
!2998 = !DILocation(line: 455, column: 24, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !2997, file: !213, discriminator: 1)
!3000 = !DILocation(line: 455, column: 28, scope: !2999)
!3001 = !DILocation(line: 455, column: 38, scope: !2999)
!3002 = !DILocation(line: 455, column: 47, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !2997, file: !213, discriminator: 2)
!3004 = !DILocation(line: 455, column: 41, scope: !3003)
!3005 = !DILocation(line: 455, column: 52, scope: !3003)
!3006 = !DILocation(line: 454, column: 19, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !2995, file: !213, discriminator: 1)
!3008 = !DILocation(line: 456, column: 25, scope: !2997)
!3009 = !DILocation(line: 456, column: 17, scope: !2997)
!3010 = !DILocation(line: 463, column: 25, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2997, file: !213, line: 457, column: 19)
!3012 = !DILocation(line: 467, column: 21, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !3014, file: !213, discriminator: 1)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !213, line: 467, column: 21)
!3015 = distinct !DILexicalBlock(scope: !3011, file: !213, line: 467, column: 21)
!3016 = !DILocation(line: 467, column: 21, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3015, file: !213, discriminator: 1)
!3018 = !DILocation(line: 467, column: 21, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3014, file: !213, discriminator: 2)
!3020 = !DILocation(line: 467, column: 21, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !3015, file: !213, discriminator: 3)
!3022 = !DILocation(line: 468, column: 21, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !3024, file: !213, discriminator: 1)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !213, line: 468, column: 21)
!3025 = distinct !DILexicalBlock(scope: !3011, file: !213, line: 468, column: 21)
!3026 = !DILocation(line: 468, column: 21, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !3025, file: !213, discriminator: 1)
!3028 = !DILocation(line: 468, column: 21, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !3024, file: !213, discriminator: 2)
!3030 = !DILocation(line: 468, column: 21, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !3025, file: !213, discriminator: 3)
!3032 = !DILocation(line: 469, column: 21, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !3034, file: !213, discriminator: 1)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !213, line: 469, column: 21)
!3035 = distinct !DILexicalBlock(scope: !3011, file: !213, line: 469, column: 21)
!3036 = !DILocation(line: 469, column: 21, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !3035, file: !213, discriminator: 1)
!3038 = !DILocation(line: 469, column: 21, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !3034, file: !213, discriminator: 2)
!3040 = !DILocation(line: 469, column: 21, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3035, file: !213, discriminator: 3)
!3042 = !DILocation(line: 470, column: 21, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !3044, file: !213, discriminator: 1)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !213, line: 470, column: 21)
!3045 = distinct !DILexicalBlock(scope: !3011, file: !213, line: 470, column: 21)
!3046 = !DILocation(line: 470, column: 21, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !3045, file: !213, discriminator: 1)
!3048 = !DILocation(line: 470, column: 21, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3044, file: !213, discriminator: 2)
!3050 = !DILocation(line: 470, column: 21, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !3045, file: !213, discriminator: 3)
!3052 = !DILocation(line: 471, column: 21, scope: !3011)
!3053 = !DILocation(line: 395, column: 21, scope: !2748)
!3054 = !DILocation(line: 484, column: 31, scope: !2757)
!3055 = !DILocation(line: 485, column: 31, scope: !2757)
!3056 = !DILocation(line: 487, column: 31, scope: !2757)
!3057 = !DILocation(line: 488, column: 31, scope: !2757)
!3058 = !DILocation(line: 489, column: 31, scope: !2757)
!3059 = !DILocation(line: 492, column: 15, scope: !2757)
!3060 = !DILocation(line: 494, column: 19, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !213, line: 493, column: 13)
!3062 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 492, column: 15)
!3063 = !DILocation(line: 501, column: 33, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 501, column: 15)
!3065 = !DILocation(line: 506, column: 15, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 505, column: 15)
!3067 = !DILocation(line: 510, column: 15, scope: !2757)
!3068 = !DILocation(line: 518, column: 26, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 518, column: 15)
!3070 = !DILocation(line: 518, column: 15, scope: !2757)
!3071 = !DILocation(line: 518, column: 40, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !3069, file: !213, discriminator: 1)
!3073 = !DILocation(line: 518, column: 47, scope: !3072)
!3074 = !DILocation(line: 522, column: 17, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 522, column: 15)
!3076 = !DILocation(line: 518, column: 18, scope: !3072)
!3077 = !DILocation(line: 518, column: 65, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3069, file: !213, discriminator: 2)
!3079 = !DILocation(line: 518, column: 15, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !2757, file: !213, discriminator: 2)
!3081 = !DILocation(line: 522, column: 15, scope: !2757)
!3082 = !DILocation(line: 526, column: 11, scope: !2757)
!3083 = !DILocation(line: 541, column: 15, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 540, column: 15)
!3085 = !DILocation(line: 548, column: 15, scope: !2757)
!3086 = !DILocation(line: 550, column: 19, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !213, line: 549, column: 13)
!3088 = distinct !DILexicalBlock(scope: !2757, file: !213, line: 548, column: 15)
!3089 = !DILocation(line: 553, column: 19, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !213, line: 553, column: 19)
!3091 = !DILocation(line: 553, column: 35, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !3090, file: !213, discriminator: 1)
!3093 = !DILocation(line: 553, column: 30, scope: !3090)
!3094 = !DILocation(line: 562, column: 15, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3096, file: !213, discriminator: 1)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !213, line: 562, column: 15)
!3097 = distinct !DILexicalBlock(scope: !3087, file: !213, line: 562, column: 15)
!3098 = !DILocation(line: 562, column: 15, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3097, file: !213, discriminator: 1)
!3100 = !DILocation(line: 562, column: 15, scope: !3101)
!3101 = !DILexicalBlockFile(scope: !3096, file: !213, discriminator: 2)
!3102 = !DILocation(line: 562, column: 15, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !3097, file: !213, discriminator: 3)
!3104 = !DILocation(line: 563, column: 15, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !3106, file: !213, discriminator: 1)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !213, line: 563, column: 15)
!3107 = distinct !DILexicalBlock(scope: !3087, file: !213, line: 563, column: 15)
!3108 = !DILocation(line: 563, column: 15, scope: !3109)
!3109 = !DILexicalBlockFile(scope: !3107, file: !213, discriminator: 1)
!3110 = !DILocation(line: 563, column: 15, scope: !3111)
!3111 = !DILexicalBlockFile(scope: !3106, file: !213, discriminator: 2)
!3112 = !DILocation(line: 563, column: 15, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !3107, file: !213, discriminator: 3)
!3114 = !DILocation(line: 564, column: 15, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !3116, file: !213, discriminator: 1)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !213, line: 564, column: 15)
!3117 = distinct !DILexicalBlock(scope: !3087, file: !213, line: 564, column: 15)
!3118 = !DILocation(line: 564, column: 15, scope: !3119)
!3119 = !DILexicalBlockFile(scope: !3117, file: !213, discriminator: 1)
!3120 = !DILocation(line: 564, column: 15, scope: !3121)
!3121 = !DILexicalBlockFile(scope: !3116, file: !213, discriminator: 2)
!3122 = !DILocation(line: 564, column: 15, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3117, file: !213, discriminator: 3)
!3124 = !DILocation(line: 566, column: 13, scope: !3087)
!3125 = !DILocation(line: 606, column: 17, scope: !2756)
!3126 = !DILocation(line: 602, column: 20, scope: !2756)
!3127 = !DILocation(line: 609, column: 29, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !2761, file: !213, line: 607, column: 15)
!3129 = !{!698, !698, i64 0}
!3130 = !DILocation(line: 609, column: 27, scope: !3128)
!3131 = !DILocation(line: 604, column: 18, scope: !2756)
!3132 = !DILocation(line: 610, column: 15, scope: !3128)
!3133 = !DILocation(line: 613, column: 17, scope: !2760)
!3134 = !DILocation(line: 614, column: 17, scope: !2760)
!3135 = !DILocation(line: 618, column: 29, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !2760, file: !213, line: 618, column: 21)
!3137 = !DILocation(line: 618, column: 21, scope: !2760)
!3138 = distinct !{!3138, !3139, !3140}
!3139 = !DILocation(line: 621, column: 17, scope: !2760)
!3140 = !DILocation(line: 667, column: 44, scope: !2760)
!3141 = !DILocation(line: 619, column: 29, scope: !3136)
!3142 = !DILocation(line: 619, column: 19, scope: !3136)
!3143 = !DILocation(line: 623, column: 21, scope: !2777)
!3144 = !DILocation(line: 624, column: 56, scope: !2777)
!3145 = !DILocation(line: 624, column: 50, scope: !2777)
!3146 = !DILocation(line: 625, column: 53, scope: !2777)
!3147 = !DILocation(line: 613, column: 27, scope: !2760)
!3148 = !DILocation(line: 623, column: 29, scope: !2777)
!3149 = !DILocation(line: 624, column: 36, scope: !2777)
!3150 = !DILocation(line: 624, column: 28, scope: !2777)
!3151 = !DILocation(line: 626, column: 25, scope: !2777)
!3152 = !DILocation(line: 636, column: 38, scope: !3153)
!3153 = !DILexicalBlockFile(scope: !3154, file: !213, discriminator: 1)
!3154 = distinct !DILexicalBlock(scope: !2784, file: !213, line: 634, column: 23)
!3155 = !DILocation(line: 636, column: 48, scope: !3153)
!3156 = !DILocation(line: 636, column: 51, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3154, file: !213, discriminator: 2)
!3158 = !DILocation(line: 636, column: 48, scope: !3157)
!3159 = !DILocation(line: 636, column: 25, scope: !3160)
!3160 = !DILexicalBlockFile(scope: !3154, file: !213, discriminator: 3)
!3161 = !DILocation(line: 637, column: 28, scope: !3154)
!3162 = !DILocation(line: 636, column: 34, scope: !3153)
!3163 = distinct !{!3163, !3164, !3161}
!3164 = !DILocation(line: 636, column: 25, scope: !3154)
!3165 = !DILocation(line: 650, column: 43, scope: !3166)
!3166 = !DILexicalBlockFile(scope: !3167, file: !213, discriminator: 1)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !213, line: 650, column: 29)
!3168 = distinct !DILexicalBlock(scope: !2781, file: !213, line: 650, column: 29)
!3169 = !DILocation(line: 647, column: 29, scope: !2782)
!3170 = !DILocation(line: 649, column: 36, scope: !2781)
!3171 = !DILocation(line: 651, column: 49, scope: !3167)
!3172 = !DILocation(line: 651, column: 39, scope: !3167)
!3173 = !DILocation(line: 651, column: 31, scope: !3167)
!3174 = !DILocation(line: 650, column: 53, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3167, file: !213, discriminator: 2)
!3176 = !DILocation(line: 650, column: 29, scope: !3177)
!3177 = !DILexicalBlockFile(scope: !3168, file: !213, discriminator: 1)
!3178 = distinct !{!3178, !3179, !3180}
!3179 = !DILocation(line: 650, column: 29, scope: !3168)
!3180 = !DILocation(line: 659, column: 33, scope: !3168)
!3181 = !DILocation(line: 666, column: 19, scope: !2760)
!3182 = !DILocation(line: 662, column: 41, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !2783, file: !213, line: 662, column: 29)
!3184 = !DILocation(line: 662, column: 31, scope: !3183)
!3185 = !DILocation(line: 662, column: 29, scope: !2783)
!3186 = !DILocation(line: 664, column: 27, scope: !2783)
!3187 = !DILocation(line: 667, column: 26, scope: !2760)
!3188 = !DILocation(line: 667, column: 24, scope: !2760)
!3189 = !DILocation(line: 666, column: 19, scope: !3190)
!3190 = !DILexicalBlockFile(scope: !2777, file: !213, discriminator: 3)
!3191 = !DILocation(line: 668, column: 15, scope: !2761)
!3192 = !DILocation(line: 670, column: 40, scope: !2756)
!3193 = !DILocation(line: 672, column: 19, scope: !2789)
!3194 = !DILocation(line: 672, column: 45, scope: !3195)
!3195 = !DILexicalBlockFile(scope: !2789, file: !213, discriminator: 1)
!3196 = !DILocation(line: 672, column: 23, scope: !2789)
!3197 = !DILocation(line: 676, column: 33, scope: !2788)
!3198 = !DILocation(line: 676, column: 24, scope: !2788)
!3199 = !DILocation(line: 678, column: 17, scope: !2788)
!3200 = !DILocation(line: 680, column: 43, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !213, line: 680, column: 25)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !213, line: 679, column: 19)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !213, line: 678, column: 17)
!3204 = distinct !DILexicalBlock(scope: !2788, file: !213, line: 678, column: 17)
!3205 = !DILocation(line: 682, column: 25, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3207, file: !213, discriminator: 1)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !213, line: 682, column: 25)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !213, line: 681, column: 23)
!3209 = !DILocation(line: 682, column: 25, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3211, file: !213, discriminator: 4)
!3211 = distinct !DILexicalBlock(scope: !3207, file: !213, line: 682, column: 25)
!3212 = !DILocation(line: 682, column: 25, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !3211, file: !213, discriminator: 3)
!3214 = !DILocation(line: 682, column: 25, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !3216, file: !213, discriminator: 6)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !213, line: 682, column: 25)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !213, line: 682, column: 25)
!3218 = distinct !DILexicalBlock(scope: !3211, file: !213, line: 682, column: 25)
!3219 = !DILocation(line: 682, column: 25, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !3217, file: !213, discriminator: 6)
!3221 = !DILocation(line: 682, column: 25, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3216, file: !213, discriminator: 7)
!3223 = !DILocation(line: 682, column: 25, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !3217, file: !213, discriminator: 8)
!3225 = !DILocation(line: 682, column: 25, scope: !3226)
!3226 = !DILexicalBlockFile(scope: !3227, file: !213, discriminator: 11)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !213, line: 682, column: 25)
!3228 = distinct !DILexicalBlock(scope: !3218, file: !213, line: 682, column: 25)
!3229 = !DILocation(line: 682, column: 25, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3228, file: !213, discriminator: 11)
!3231 = !DILocation(line: 682, column: 25, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3227, file: !213, discriminator: 12)
!3233 = !DILocation(line: 682, column: 25, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3228, file: !213, discriminator: 13)
!3235 = !DILocation(line: 682, column: 25, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3237, file: !213, discriminator: 16)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !213, line: 682, column: 25)
!3238 = distinct !DILexicalBlock(scope: !3218, file: !213, line: 682, column: 25)
!3239 = !DILocation(line: 682, column: 25, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3238, file: !213, discriminator: 16)
!3241 = !DILocation(line: 682, column: 25, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3237, file: !213, discriminator: 17)
!3243 = !DILocation(line: 682, column: 25, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3238, file: !213, discriminator: 18)
!3245 = !DILocation(line: 682, column: 25, scope: !3246)
!3246 = !DILexicalBlockFile(scope: !3218, file: !213, discriminator: 20)
!3247 = !DILocation(line: 682, column: 25, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !3249, file: !213, discriminator: 22)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !213, line: 682, column: 25)
!3250 = distinct !DILexicalBlock(scope: !3207, file: !213, line: 682, column: 25)
!3251 = !DILocation(line: 682, column: 25, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !3250, file: !213, discriminator: 22)
!3253 = !DILocation(line: 682, column: 25, scope: !3254)
!3254 = !DILexicalBlockFile(scope: !3249, file: !213, discriminator: 23)
!3255 = !DILocation(line: 682, column: 25, scope: !3256)
!3256 = !DILexicalBlockFile(scope: !3250, file: !213, discriminator: 24)
!3257 = !DILocation(line: 683, column: 25, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3259, file: !213, discriminator: 1)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !213, line: 683, column: 25)
!3260 = distinct !DILexicalBlock(scope: !3208, file: !213, line: 683, column: 25)
!3261 = !DILocation(line: 683, column: 25, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !3260, file: !213, discriminator: 1)
!3263 = !DILocation(line: 683, column: 25, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3259, file: !213, discriminator: 2)
!3265 = !DILocation(line: 683, column: 25, scope: !3266)
!3266 = !DILexicalBlockFile(scope: !3260, file: !213, discriminator: 3)
!3267 = !DILocation(line: 684, column: 25, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3269, file: !213, discriminator: 1)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !213, line: 684, column: 25)
!3270 = distinct !DILexicalBlock(scope: !3208, file: !213, line: 684, column: 25)
!3271 = !DILocation(line: 684, column: 25, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3270, file: !213, discriminator: 1)
!3273 = !DILocation(line: 684, column: 25, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3269, file: !213, discriminator: 2)
!3275 = !DILocation(line: 684, column: 25, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3270, file: !213, discriminator: 3)
!3277 = !DILocation(line: 685, column: 38, scope: !3208)
!3278 = !DILocation(line: 685, column: 33, scope: !3208)
!3279 = !DILocation(line: 686, column: 23, scope: !3208)
!3280 = !DILocation(line: 687, column: 30, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3201, file: !213, line: 687, column: 30)
!3282 = !DILocation(line: 687, column: 30, scope: !3201)
!3283 = !DILocation(line: 689, column: 25, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3285, file: !213, discriminator: 1)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !213, line: 689, column: 25)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !213, line: 689, column: 25)
!3287 = distinct !DILexicalBlock(scope: !3281, file: !213, line: 688, column: 23)
!3288 = !DILocation(line: 689, column: 25, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !3286, file: !213, discriminator: 1)
!3290 = !DILocation(line: 689, column: 25, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3285, file: !213, discriminator: 2)
!3292 = !DILocation(line: 689, column: 25, scope: !3293)
!3293 = !DILexicalBlockFile(scope: !3286, file: !213, discriminator: 3)
!3294 = !DILocation(line: 691, column: 23, scope: !3287)
!3295 = !DILocation(line: 692, column: 35, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3202, file: !213, line: 692, column: 25)
!3297 = !DILocation(line: 692, column: 30, scope: !3296)
!3298 = !DILocation(line: 692, column: 25, scope: !3202)
!3299 = !DILocation(line: 694, column: 21, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !3301, file: !213, discriminator: 1)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !213, line: 694, column: 21)
!3302 = distinct !DILexicalBlock(scope: !3202, file: !213, line: 694, column: 21)
!3303 = !DILocation(line: 694, column: 21, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3301, file: !213, discriminator: 2)
!3305 = !DILocation(line: 694, column: 21, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !3307, file: !213, discriminator: 4)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !213, line: 694, column: 21)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !213, line: 694, column: 21)
!3309 = distinct !DILexicalBlock(scope: !3301, file: !213, line: 694, column: 21)
!3310 = !DILocation(line: 694, column: 21, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !3308, file: !213, discriminator: 4)
!3312 = !DILocation(line: 694, column: 21, scope: !3313)
!3313 = !DILexicalBlockFile(scope: !3307, file: !213, discriminator: 5)
!3314 = !DILocation(line: 694, column: 21, scope: !3315)
!3315 = !DILexicalBlockFile(scope: !3308, file: !213, discriminator: 6)
!3316 = !DILocation(line: 694, column: 21, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !3318, file: !213, discriminator: 9)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !213, line: 694, column: 21)
!3319 = distinct !DILexicalBlock(scope: !3309, file: !213, line: 694, column: 21)
!3320 = !DILocation(line: 694, column: 21, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3319, file: !213, discriminator: 9)
!3322 = !DILocation(line: 694, column: 21, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3318, file: !213, discriminator: 10)
!3324 = !DILocation(line: 694, column: 21, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !3319, file: !213, discriminator: 11)
!3326 = !DILocation(line: 694, column: 21, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !3309, file: !213, discriminator: 13)
!3328 = !DILocation(line: 695, column: 21, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !3330, file: !213, discriminator: 1)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !213, line: 695, column: 21)
!3331 = distinct !DILexicalBlock(scope: !3202, file: !213, line: 695, column: 21)
!3332 = !DILocation(line: 695, column: 21, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3331, file: !213, discriminator: 1)
!3334 = !DILocation(line: 695, column: 21, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3330, file: !213, discriminator: 2)
!3336 = !DILocation(line: 695, column: 21, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3331, file: !213, discriminator: 3)
!3338 = !DILocation(line: 696, column: 25, scope: !3202)
!3339 = !DILocation(line: 678, column: 17, scope: !3340)
!3340 = !DILexicalBlockFile(scope: !3203, file: !213, discriminator: 1)
!3341 = distinct !{!3341, !3342, !3343}
!3342 = !DILocation(line: 678, column: 17, scope: !3204)
!3343 = !DILocation(line: 697, column: 19, scope: !3204)
!3344 = !DILocation(line: 704, column: 34, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !2748, file: !213, line: 704, column: 11)
!3346 = !DILocation(line: 706, column: 14, scope: !3345)
!3347 = !DILocation(line: 707, column: 14, scope: !3345)
!3348 = !DILocation(line: 707, column: 35, scope: !3349)
!3349 = !DILexicalBlockFile(scope: !3345, file: !213, discriminator: 1)
!3350 = !DILocation(line: 707, column: 17, scope: !3349)
!3351 = !DILocation(line: 707, column: 53, scope: !3349)
!3352 = !DILocation(line: 707, column: 47, scope: !3349)
!3353 = !DILocation(line: 707, column: 65, scope: !3349)
!3354 = !DILocation(line: 708, column: 15, scope: !3349)
!3355 = !DILocation(line: 708, column: 11, scope: !3345)
!3356 = !DILocation(line: 704, column: 11, scope: !3357)
!3357 = !DILexicalBlockFile(scope: !2748, file: !213, discriminator: 2)
!3358 = !DILocation(line: 712, column: 7, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3360, file: !213, discriminator: 1)
!3360 = distinct !DILexicalBlock(scope: !2748, file: !213, line: 712, column: 7)
!3361 = !DILocation(line: 712, column: 7, scope: !3362)
!3362 = !DILexicalBlockFile(scope: !3363, file: !213, discriminator: 4)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !213, line: 712, column: 7)
!3364 = !DILocation(line: 712, column: 7, scope: !3365)
!3365 = !DILexicalBlockFile(scope: !3363, file: !213, discriminator: 3)
!3366 = !DILocation(line: 712, column: 7, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !3368, file: !213, discriminator: 6)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !213, line: 712, column: 7)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !213, line: 712, column: 7)
!3370 = distinct !DILexicalBlock(scope: !3363, file: !213, line: 712, column: 7)
!3371 = !DILocation(line: 712, column: 7, scope: !3372)
!3372 = !DILexicalBlockFile(scope: !3369, file: !213, discriminator: 6)
!3373 = !DILocation(line: 712, column: 7, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !3368, file: !213, discriminator: 7)
!3375 = !DILocation(line: 712, column: 7, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !3369, file: !213, discriminator: 8)
!3377 = !DILocation(line: 712, column: 7, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3379, file: !213, discriminator: 11)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !213, line: 712, column: 7)
!3380 = distinct !DILexicalBlock(scope: !3370, file: !213, line: 712, column: 7)
!3381 = !DILocation(line: 712, column: 7, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !3380, file: !213, discriminator: 11)
!3383 = !DILocation(line: 712, column: 7, scope: !3384)
!3384 = !DILexicalBlockFile(scope: !3379, file: !213, discriminator: 12)
!3385 = !DILocation(line: 712, column: 7, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3380, file: !213, discriminator: 13)
!3387 = !DILocation(line: 712, column: 7, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !3389, file: !213, discriminator: 16)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !213, line: 712, column: 7)
!3390 = distinct !DILexicalBlock(scope: !3370, file: !213, line: 712, column: 7)
!3391 = !DILocation(line: 712, column: 7, scope: !3392)
!3392 = !DILexicalBlockFile(scope: !3390, file: !213, discriminator: 16)
!3393 = !DILocation(line: 712, column: 7, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !3389, file: !213, discriminator: 17)
!3395 = !DILocation(line: 712, column: 7, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3390, file: !213, discriminator: 18)
!3397 = !DILocation(line: 712, column: 7, scope: !3398)
!3398 = !DILexicalBlockFile(scope: !3370, file: !213, discriminator: 20)
!3399 = !DILocation(line: 712, column: 7, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3401, file: !213, discriminator: 22)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !213, line: 712, column: 7)
!3402 = distinct !DILexicalBlock(scope: !3360, file: !213, line: 712, column: 7)
!3403 = !DILocation(line: 712, column: 7, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !3402, file: !213, discriminator: 22)
!3405 = !DILocation(line: 712, column: 7, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !3401, file: !213, discriminator: 23)
!3407 = !DILocation(line: 712, column: 7, scope: !3408)
!3408 = !DILexicalBlockFile(scope: !3402, file: !213, discriminator: 24)
!3409 = !DILocation(line: 715, column: 7, scope: !3410)
!3410 = !DILexicalBlockFile(scope: !3411, file: !213, discriminator: 1)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !213, line: 715, column: 7)
!3412 = distinct !DILexicalBlock(scope: !2748, file: !213, line: 715, column: 7)
!3413 = !DILocation(line: 715, column: 7, scope: !3414)
!3414 = !DILexicalBlockFile(scope: !3411, file: !213, discriminator: 2)
!3415 = !DILocation(line: 715, column: 7, scope: !3416)
!3416 = !DILexicalBlockFile(scope: !3417, file: !213, discriminator: 4)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !213, line: 715, column: 7)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !213, line: 715, column: 7)
!3419 = distinct !DILexicalBlock(scope: !3411, file: !213, line: 715, column: 7)
!3420 = !DILocation(line: 715, column: 7, scope: !3421)
!3421 = !DILexicalBlockFile(scope: !3418, file: !213, discriminator: 4)
!3422 = !DILocation(line: 715, column: 7, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3417, file: !213, discriminator: 5)
!3424 = !DILocation(line: 715, column: 7, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3418, file: !213, discriminator: 6)
!3426 = !DILocation(line: 715, column: 7, scope: !3427)
!3427 = !DILexicalBlockFile(scope: !3428, file: !213, discriminator: 9)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !213, line: 715, column: 7)
!3429 = distinct !DILexicalBlock(scope: !3419, file: !213, line: 715, column: 7)
!3430 = !DILocation(line: 715, column: 7, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3429, file: !213, discriminator: 9)
!3432 = !DILocation(line: 715, column: 7, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3428, file: !213, discriminator: 10)
!3434 = !DILocation(line: 715, column: 7, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !3429, file: !213, discriminator: 11)
!3436 = !DILocation(line: 715, column: 7, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3419, file: !213, discriminator: 13)
!3438 = !DILocation(line: 716, column: 7, scope: !3439)
!3439 = !DILexicalBlockFile(scope: !3440, file: !213, discriminator: 1)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !213, line: 716, column: 7)
!3441 = distinct !DILexicalBlock(scope: !2748, file: !213, line: 716, column: 7)
!3442 = !DILocation(line: 716, column: 7, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !3441, file: !213, discriminator: 1)
!3444 = !DILocation(line: 716, column: 7, scope: !3445)
!3445 = !DILexicalBlockFile(scope: !3440, file: !213, discriminator: 2)
!3446 = !DILocation(line: 716, column: 7, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3441, file: !213, discriminator: 3)
!3448 = !DILocation(line: 718, column: 13, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !2748, file: !213, line: 718, column: 11)
!3450 = !DILocation(line: 718, column: 11, scope: !2748)
!3451 = !DILocation(line: 720, column: 5, scope: !2749)
!3452 = !DILocation(line: 392, column: 75, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !2749, file: !213, discriminator: 5)
!3454 = !DILocation(line: 392, column: 3, scope: !3453)
!3455 = distinct !{!3455, !3456, !3457}
!3456 = !DILocation(line: 392, column: 3, scope: !2750)
!3457 = !DILocation(line: 720, column: 5, scope: !2750)
!3458 = !DILocation(line: 722, column: 11, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !2721, file: !213, line: 722, column: 7)
!3460 = !DILocation(line: 722, column: 16, scope: !3459)
!3461 = !DILocation(line: 730, column: 51, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !2721, file: !213, line: 730, column: 7)
!3463 = !DILocation(line: 731, column: 10, scope: !3464)
!3464 = !DILexicalBlockFile(scope: !3462, file: !213, discriminator: 1)
!3465 = !DILocation(line: 733, column: 11, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !213, line: 733, column: 11)
!3467 = distinct !DILexicalBlock(scope: !3462, file: !213, line: 732, column: 5)
!3468 = !DILocation(line: 733, column: 11, scope: !3467)
!3469 = !DILocation(line: 734, column: 16, scope: !3466)
!3470 = !DILocation(line: 734, column: 9, scope: !3466)
!3471 = !DILocation(line: 738, column: 18, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3466, file: !213, line: 738, column: 16)
!3473 = !DILocation(line: 738, column: 32, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3472, file: !213, discriminator: 1)
!3475 = !DILocation(line: 738, column: 29, scope: !3472)
!3476 = !DILocation(line: 747, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !2721, file: !213, line: 747, column: 7)
!3478 = !DILocation(line: 747, column: 20, scope: !3477)
!3479 = !DILocation(line: 748, column: 12, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !3481, file: !213, discriminator: 1)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !213, line: 748, column: 5)
!3482 = distinct !DILexicalBlock(scope: !3477, file: !213, line: 748, column: 5)
!3483 = !DILocation(line: 748, column: 5, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3482, file: !213, discriminator: 1)
!3485 = !DILocation(line: 749, column: 7, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !3487, file: !213, discriminator: 1)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !213, line: 749, column: 7)
!3488 = distinct !DILexicalBlock(scope: !3481, file: !213, line: 749, column: 7)
!3489 = !DILocation(line: 749, column: 7, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3488, file: !213, discriminator: 1)
!3491 = !DILocation(line: 749, column: 7, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3487, file: !213, discriminator: 2)
!3493 = !DILocation(line: 749, column: 7, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3488, file: !213, discriminator: 3)
!3495 = !DILocation(line: 748, column: 39, scope: !3496)
!3496 = !DILexicalBlockFile(scope: !3481, file: !213, discriminator: 2)
!3497 = distinct !{!3497, !3498, !3499}
!3498 = !DILocation(line: 748, column: 5, scope: !3482)
!3499 = !DILocation(line: 749, column: 7, scope: !3482)
!3500 = !DILocation(line: 751, column: 11, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !2721, file: !213, line: 751, column: 7)
!3502 = !DILocation(line: 751, column: 7, scope: !2721)
!3503 = !DILocation(line: 752, column: 5, scope: !3501)
!3504 = !DILocation(line: 752, column: 17, scope: !3501)
!3505 = !DILocation(line: 758, column: 21, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !2721, file: !213, line: 758, column: 7)
!3507 = !DILocation(line: 758, column: 54, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !3506, file: !213, discriminator: 1)
!3509 = !DILocation(line: 758, column: 51, scope: !3506)
!3510 = !DILocation(line: 762, column: 42, scope: !2721)
!3511 = !DILocation(line: 760, column: 10, scope: !2721)
!3512 = !DILocation(line: 760, column: 3, scope: !2721)
!3513 = !DILocation(line: 764, column: 1, scope: !2721)
!3514 = distinct !DISubprogram(name: "gettext_quote", scope: !213, file: !213, line: 199, type: !3515, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!99, !99, !63}
!3517 = !{!3518, !3519, !3520, !3521}
!3518 = !DILocalVariable(name: "msgid", arg: 1, scope: !3514, file: !213, line: 199, type: !99)
!3519 = !DILocalVariable(name: "s", arg: 2, scope: !3514, file: !213, line: 199, type: !63)
!3520 = !DILocalVariable(name: "translation", scope: !3514, file: !213, line: 201, type: !99)
!3521 = !DILocalVariable(name: "locale_code", scope: !3514, file: !213, line: 202, type: !99)
!3522 = !DILocation(line: 199, column: 28, scope: !3514)
!3523 = !DILocation(line: 199, column: 54, scope: !3514)
!3524 = !DILocation(line: 201, column: 29, scope: !3514)
!3525 = !DILocation(line: 201, column: 15, scope: !3514)
!3526 = !DILocation(line: 204, column: 19, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3514, file: !213, line: 204, column: 7)
!3528 = !DILocation(line: 204, column: 7, scope: !3514)
!3529 = !DILocation(line: 225, column: 17, scope: !3514)
!3530 = !DILocation(line: 202, column: 15, scope: !3514)
!3531 = !DILocalVariable(name: "s2", arg: 2, scope: !3532, file: !3533, line: 160, type: !99)
!3532 = distinct !DISubprogram(name: "strcaseeq0", scope: !3533, file: !3533, line: 160, type: !3534, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3536)
!3533 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!34, !99, !99, !44, !44, !44, !44, !44, !44, !44, !44, !44}
!3536 = !{!3537, !3531, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546}
!3537 = !DILocalVariable(name: "s1", arg: 1, scope: !3532, file: !3533, line: 160, type: !99)
!3538 = !DILocalVariable(name: "s20", arg: 3, scope: !3532, file: !3533, line: 160, type: !44)
!3539 = !DILocalVariable(name: "s21", arg: 4, scope: !3532, file: !3533, line: 160, type: !44)
!3540 = !DILocalVariable(name: "s22", arg: 5, scope: !3532, file: !3533, line: 160, type: !44)
!3541 = !DILocalVariable(name: "s23", arg: 6, scope: !3532, file: !3533, line: 160, type: !44)
!3542 = !DILocalVariable(name: "s24", arg: 7, scope: !3532, file: !3533, line: 160, type: !44)
!3543 = !DILocalVariable(name: "s25", arg: 8, scope: !3532, file: !3533, line: 160, type: !44)
!3544 = !DILocalVariable(name: "s26", arg: 9, scope: !3532, file: !3533, line: 160, type: !44)
!3545 = !DILocalVariable(name: "s27", arg: 10, scope: !3532, file: !3533, line: 160, type: !44)
!3546 = !DILocalVariable(name: "s28", arg: 11, scope: !3532, file: !3533, line: 160, type: !44)
!3547 = !DILocation(line: 160, column: 41, scope: !3532, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 226, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3514, file: !213, line: 226, column: 7)
!3550 = !DILocation(line: 160, column: 120, scope: !3532, inlinedAt: !3548)
!3551 = !DILocation(line: 160, column: 130, scope: !3532, inlinedAt: !3548)
!3552 = !DILocation(line: 162, column: 7, scope: !3553, inlinedAt: !3548)
!3553 = !DILexicalBlockFile(scope: !3554, file: !3533, discriminator: 1)
!3554 = distinct !DILexicalBlock(scope: !3532, file: !3533, line: 162, column: 7)
!3555 = !DILocalVariable(name: "s2", arg: 2, scope: !3556, file: !3533, line: 146, type: !99)
!3556 = distinct !DISubprogram(name: "strcaseeq1", scope: !3533, file: !3533, line: 146, type: !3557, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!34, !99, !99, !44, !44, !44, !44, !44, !44, !44, !44}
!3559 = !{!3560, !3555, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568}
!3560 = !DILocalVariable(name: "s1", arg: 1, scope: !3556, file: !3533, line: 146, type: !99)
!3561 = !DILocalVariable(name: "s21", arg: 3, scope: !3556, file: !3533, line: 146, type: !44)
!3562 = !DILocalVariable(name: "s22", arg: 4, scope: !3556, file: !3533, line: 146, type: !44)
!3563 = !DILocalVariable(name: "s23", arg: 5, scope: !3556, file: !3533, line: 146, type: !44)
!3564 = !DILocalVariable(name: "s24", arg: 6, scope: !3556, file: !3533, line: 146, type: !44)
!3565 = !DILocalVariable(name: "s25", arg: 7, scope: !3556, file: !3533, line: 146, type: !44)
!3566 = !DILocalVariable(name: "s26", arg: 8, scope: !3556, file: !3533, line: 146, type: !44)
!3567 = !DILocalVariable(name: "s27", arg: 9, scope: !3556, file: !3533, line: 146, type: !44)
!3568 = !DILocalVariable(name: "s28", arg: 10, scope: !3556, file: !3533, line: 146, type: !44)
!3569 = !DILocation(line: 146, column: 41, scope: !3556, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 167, column: 16, scope: !3571, inlinedAt: !3548)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !3533, line: 164, column: 11)
!3572 = distinct !DILexicalBlock(scope: !3554, file: !3533, line: 163, column: 5)
!3573 = !DILocation(line: 146, column: 110, scope: !3556, inlinedAt: !3570)
!3574 = !DILocation(line: 146, column: 120, scope: !3556, inlinedAt: !3570)
!3575 = !DILocation(line: 148, column: 7, scope: !3576, inlinedAt: !3570)
!3576 = !DILexicalBlockFile(scope: !3577, file: !3533, discriminator: 1)
!3577 = distinct !DILexicalBlock(scope: !3556, file: !3533, line: 148, column: 7)
!3578 = !DILocalVariable(name: "s2", arg: 2, scope: !3579, file: !3533, line: 132, type: !99)
!3579 = distinct !DISubprogram(name: "strcaseeq2", scope: !3533, file: !3533, line: 132, type: !3580, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!34, !99, !99, !44, !44, !44, !44, !44, !44, !44}
!3582 = !{!3583, !3578, !3584, !3585, !3586, !3587, !3588, !3589, !3590}
!3583 = !DILocalVariable(name: "s1", arg: 1, scope: !3579, file: !3533, line: 132, type: !99)
!3584 = !DILocalVariable(name: "s22", arg: 3, scope: !3579, file: !3533, line: 132, type: !44)
!3585 = !DILocalVariable(name: "s23", arg: 4, scope: !3579, file: !3533, line: 132, type: !44)
!3586 = !DILocalVariable(name: "s24", arg: 5, scope: !3579, file: !3533, line: 132, type: !44)
!3587 = !DILocalVariable(name: "s25", arg: 6, scope: !3579, file: !3533, line: 132, type: !44)
!3588 = !DILocalVariable(name: "s26", arg: 7, scope: !3579, file: !3533, line: 132, type: !44)
!3589 = !DILocalVariable(name: "s27", arg: 8, scope: !3579, file: !3533, line: 132, type: !44)
!3590 = !DILocalVariable(name: "s28", arg: 9, scope: !3579, file: !3533, line: 132, type: !44)
!3591 = !DILocation(line: 132, column: 41, scope: !3579, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 153, column: 16, scope: !3593, inlinedAt: !3570)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3533, line: 150, column: 11)
!3594 = distinct !DILexicalBlock(scope: !3577, file: !3533, line: 149, column: 5)
!3595 = !DILocation(line: 132, column: 100, scope: !3579, inlinedAt: !3592)
!3596 = !DILocation(line: 132, column: 110, scope: !3579, inlinedAt: !3592)
!3597 = !DILocation(line: 134, column: 7, scope: !3598, inlinedAt: !3592)
!3598 = !DILexicalBlockFile(scope: !3599, file: !3533, discriminator: 1)
!3599 = distinct !DILexicalBlock(scope: !3579, file: !3533, line: 134, column: 7)
!3600 = !DILocalVariable(name: "s2", arg: 2, scope: !3601, file: !3533, line: 118, type: !99)
!3601 = distinct !DISubprogram(name: "strcaseeq3", scope: !3533, file: !3533, line: 118, type: !3602, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!34, !99, !99, !44, !44, !44, !44, !44, !44}
!3604 = !{!3605, !3600, !3606, !3607, !3608, !3609, !3610, !3611}
!3605 = !DILocalVariable(name: "s1", arg: 1, scope: !3601, file: !3533, line: 118, type: !99)
!3606 = !DILocalVariable(name: "s23", arg: 3, scope: !3601, file: !3533, line: 118, type: !44)
!3607 = !DILocalVariable(name: "s24", arg: 4, scope: !3601, file: !3533, line: 118, type: !44)
!3608 = !DILocalVariable(name: "s25", arg: 5, scope: !3601, file: !3533, line: 118, type: !44)
!3609 = !DILocalVariable(name: "s26", arg: 6, scope: !3601, file: !3533, line: 118, type: !44)
!3610 = !DILocalVariable(name: "s27", arg: 7, scope: !3601, file: !3533, line: 118, type: !44)
!3611 = !DILocalVariable(name: "s28", arg: 8, scope: !3601, file: !3533, line: 118, type: !44)
!3612 = !DILocation(line: 118, column: 41, scope: !3601, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 139, column: 16, scope: !3614, inlinedAt: !3592)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3533, line: 136, column: 11)
!3615 = distinct !DILexicalBlock(scope: !3599, file: !3533, line: 135, column: 5)
!3616 = !DILocation(line: 118, column: 90, scope: !3601, inlinedAt: !3613)
!3617 = !DILocation(line: 118, column: 100, scope: !3601, inlinedAt: !3613)
!3618 = !DILocation(line: 120, column: 7, scope: !3619, inlinedAt: !3613)
!3619 = !DILexicalBlockFile(scope: !3620, file: !3533, discriminator: 2)
!3620 = distinct !DILexicalBlock(scope: !3601, file: !3533, line: 120, column: 7)
!3621 = !DILocation(line: 120, column: 7, scope: !3622, inlinedAt: !3613)
!3622 = !DILexicalBlockFile(scope: !3601, file: !3533, discriminator: 2)
!3623 = !DILocalVariable(name: "s2", arg: 2, scope: !3624, file: !3533, line: 104, type: !99)
!3624 = distinct !DISubprogram(name: "strcaseeq4", scope: !3533, file: !3533, line: 104, type: !3625, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!34, !99, !99, !44, !44, !44, !44, !44}
!3627 = !{!3628, !3623, !3629, !3630, !3631, !3632, !3633}
!3628 = !DILocalVariable(name: "s1", arg: 1, scope: !3624, file: !3533, line: 104, type: !99)
!3629 = !DILocalVariable(name: "s24", arg: 3, scope: !3624, file: !3533, line: 104, type: !44)
!3630 = !DILocalVariable(name: "s25", arg: 4, scope: !3624, file: !3533, line: 104, type: !44)
!3631 = !DILocalVariable(name: "s26", arg: 5, scope: !3624, file: !3533, line: 104, type: !44)
!3632 = !DILocalVariable(name: "s27", arg: 6, scope: !3624, file: !3533, line: 104, type: !44)
!3633 = !DILocalVariable(name: "s28", arg: 7, scope: !3624, file: !3533, line: 104, type: !44)
!3634 = !DILocation(line: 104, column: 41, scope: !3624, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 125, column: 16, scope: !3636, inlinedAt: !3613)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !3533, line: 122, column: 11)
!3637 = distinct !DILexicalBlock(scope: !3620, file: !3533, line: 121, column: 5)
!3638 = !DILocation(line: 104, column: 80, scope: !3624, inlinedAt: !3635)
!3639 = !DILocation(line: 104, column: 90, scope: !3624, inlinedAt: !3635)
!3640 = !DILocation(line: 106, column: 7, scope: !3641, inlinedAt: !3635)
!3641 = !DILexicalBlockFile(scope: !3642, file: !3533, discriminator: 2)
!3642 = distinct !DILexicalBlock(scope: !3624, file: !3533, line: 106, column: 7)
!3643 = !DILocation(line: 106, column: 7, scope: !3644, inlinedAt: !3635)
!3644 = !DILexicalBlockFile(scope: !3624, file: !3533, discriminator: 2)
!3645 = !DILocalVariable(name: "s2", arg: 2, scope: !3646, file: !3533, line: 90, type: !99)
!3646 = distinct !DISubprogram(name: "strcaseeq5", scope: !3533, file: !3533, line: 90, type: !3647, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!34, !99, !99, !44, !44, !44, !44}
!3649 = !{!3650, !3645, !3651, !3652, !3653, !3654}
!3650 = !DILocalVariable(name: "s1", arg: 1, scope: !3646, file: !3533, line: 90, type: !99)
!3651 = !DILocalVariable(name: "s25", arg: 3, scope: !3646, file: !3533, line: 90, type: !44)
!3652 = !DILocalVariable(name: "s26", arg: 4, scope: !3646, file: !3533, line: 90, type: !44)
!3653 = !DILocalVariable(name: "s27", arg: 5, scope: !3646, file: !3533, line: 90, type: !44)
!3654 = !DILocalVariable(name: "s28", arg: 6, scope: !3646, file: !3533, line: 90, type: !44)
!3655 = !DILocation(line: 90, column: 41, scope: !3646, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 111, column: 16, scope: !3657, inlinedAt: !3635)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !3533, line: 108, column: 11)
!3658 = distinct !DILexicalBlock(scope: !3642, file: !3533, line: 107, column: 5)
!3659 = !DILocation(line: 90, column: 70, scope: !3646, inlinedAt: !3656)
!3660 = !DILocation(line: 90, column: 80, scope: !3646, inlinedAt: !3656)
!3661 = !DILocation(line: 92, column: 7, scope: !3662, inlinedAt: !3656)
!3662 = !DILexicalBlockFile(scope: !3663, file: !3533, discriminator: 2)
!3663 = distinct !DILexicalBlock(scope: !3646, file: !3533, line: 92, column: 7)
!3664 = !DILocation(line: 92, column: 7, scope: !3665, inlinedAt: !3656)
!3665 = !DILexicalBlockFile(scope: !3646, file: !3533, discriminator: 2)
!3666 = !DILocation(line: 227, column: 12, scope: !3549)
!3667 = !DILocation(line: 227, column: 21, scope: !3549)
!3668 = !DILocation(line: 227, column: 5, scope: !3549)
!3669 = !DILocation(line: 146, column: 41, scope: !3556, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 167, column: 16, scope: !3571, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 228, column: 7, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3514, file: !213, line: 228, column: 7)
!3673 = !DILocation(line: 146, column: 110, scope: !3556, inlinedAt: !3670)
!3674 = !DILocation(line: 146, column: 120, scope: !3556, inlinedAt: !3670)
!3675 = !DILocation(line: 148, column: 7, scope: !3576, inlinedAt: !3670)
!3676 = !DILocation(line: 132, column: 41, scope: !3579, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 153, column: 16, scope: !3593, inlinedAt: !3670)
!3678 = !DILocation(line: 132, column: 100, scope: !3579, inlinedAt: !3677)
!3679 = !DILocation(line: 132, column: 110, scope: !3579, inlinedAt: !3677)
!3680 = !DILocation(line: 134, column: 7, scope: !3681, inlinedAt: !3677)
!3681 = !DILexicalBlockFile(scope: !3599, file: !3533, discriminator: 2)
!3682 = !DILocation(line: 134, column: 7, scope: !3683, inlinedAt: !3677)
!3683 = !DILexicalBlockFile(scope: !3579, file: !3533, discriminator: 2)
!3684 = !DILocation(line: 118, column: 41, scope: !3601, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 139, column: 16, scope: !3614, inlinedAt: !3677)
!3686 = !DILocation(line: 118, column: 90, scope: !3601, inlinedAt: !3685)
!3687 = !DILocation(line: 118, column: 100, scope: !3601, inlinedAt: !3685)
!3688 = !DILocation(line: 120, column: 7, scope: !3619, inlinedAt: !3685)
!3689 = !DILocation(line: 120, column: 7, scope: !3622, inlinedAt: !3685)
!3690 = !DILocation(line: 104, column: 41, scope: !3624, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 125, column: 16, scope: !3636, inlinedAt: !3685)
!3692 = !DILocation(line: 104, column: 80, scope: !3624, inlinedAt: !3691)
!3693 = !DILocation(line: 104, column: 90, scope: !3624, inlinedAt: !3691)
!3694 = !DILocation(line: 106, column: 7, scope: !3641, inlinedAt: !3691)
!3695 = !DILocation(line: 106, column: 7, scope: !3644, inlinedAt: !3691)
!3696 = !DILocation(line: 90, column: 41, scope: !3646, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 111, column: 16, scope: !3657, inlinedAt: !3691)
!3698 = !DILocation(line: 90, column: 70, scope: !3646, inlinedAt: !3697)
!3699 = !DILocation(line: 90, column: 80, scope: !3646, inlinedAt: !3697)
!3700 = !DILocation(line: 92, column: 7, scope: !3662, inlinedAt: !3697)
!3701 = !DILocation(line: 92, column: 7, scope: !3665, inlinedAt: !3697)
!3702 = !DILocalVariable(name: "s2", arg: 2, scope: !3703, file: !3533, line: 76, type: !99)
!3703 = distinct !DISubprogram(name: "strcaseeq6", scope: !3533, file: !3533, line: 76, type: !3704, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!34, !99, !99, !44, !44, !44}
!3706 = !{!3707, !3702, !3708, !3709, !3710}
!3707 = !DILocalVariable(name: "s1", arg: 1, scope: !3703, file: !3533, line: 76, type: !99)
!3708 = !DILocalVariable(name: "s26", arg: 3, scope: !3703, file: !3533, line: 76, type: !44)
!3709 = !DILocalVariable(name: "s27", arg: 4, scope: !3703, file: !3533, line: 76, type: !44)
!3710 = !DILocalVariable(name: "s28", arg: 5, scope: !3703, file: !3533, line: 76, type: !44)
!3711 = !DILocation(line: 76, column: 41, scope: !3703, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 97, column: 16, scope: !3713, inlinedAt: !3697)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3533, line: 94, column: 11)
!3714 = distinct !DILexicalBlock(scope: !3663, file: !3533, line: 93, column: 5)
!3715 = !DILocation(line: 76, column: 60, scope: !3703, inlinedAt: !3712)
!3716 = !DILocation(line: 76, column: 70, scope: !3703, inlinedAt: !3712)
!3717 = !DILocation(line: 78, column: 7, scope: !3718, inlinedAt: !3712)
!3718 = !DILexicalBlockFile(scope: !3719, file: !3533, discriminator: 2)
!3719 = distinct !DILexicalBlock(scope: !3703, file: !3533, line: 78, column: 7)
!3720 = !DILocation(line: 78, column: 7, scope: !3721, inlinedAt: !3712)
!3721 = !DILexicalBlockFile(scope: !3703, file: !3533, discriminator: 2)
!3722 = !DILocalVariable(name: "s2", arg: 2, scope: !3723, file: !3533, line: 62, type: !99)
!3723 = distinct !DISubprogram(name: "strcaseeq7", scope: !3533, file: !3533, line: 62, type: !3724, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!34, !99, !99, !44, !44}
!3726 = !{!3727, !3722, !3728, !3729}
!3727 = !DILocalVariable(name: "s1", arg: 1, scope: !3723, file: !3533, line: 62, type: !99)
!3728 = !DILocalVariable(name: "s27", arg: 3, scope: !3723, file: !3533, line: 62, type: !44)
!3729 = !DILocalVariable(name: "s28", arg: 4, scope: !3723, file: !3533, line: 62, type: !44)
!3730 = !DILocation(line: 62, column: 41, scope: !3723, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 83, column: 16, scope: !3732, inlinedAt: !3712)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !3533, line: 80, column: 11)
!3733 = distinct !DILexicalBlock(scope: !3719, file: !3533, line: 79, column: 5)
!3734 = !DILocation(line: 62, column: 50, scope: !3723, inlinedAt: !3731)
!3735 = !DILocation(line: 62, column: 60, scope: !3723, inlinedAt: !3731)
!3736 = !DILocation(line: 64, column: 7, scope: !3737, inlinedAt: !3731)
!3737 = !DILexicalBlockFile(scope: !3738, file: !3533, discriminator: 2)
!3738 = distinct !DILexicalBlock(scope: !3723, file: !3533, line: 64, column: 7)
!3739 = !DILocation(line: 228, column: 7, scope: !3514)
!3740 = !DILocation(line: 229, column: 12, scope: !3672)
!3741 = !DILocation(line: 229, column: 21, scope: !3672)
!3742 = !DILocation(line: 229, column: 5, scope: !3672)
!3743 = !DILocation(line: 231, column: 13, scope: !3514)
!3744 = !DILocation(line: 231, column: 11, scope: !3514)
!3745 = !DILocation(line: 231, column: 3, scope: !3514)
!3746 = !DILocation(line: 232, column: 1, scope: !3514)
!3747 = distinct !DISubprogram(name: "quotearg_alloc", scope: !213, file: !213, line: 791, type: !3748, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!43, !99, !102, !2589}
!3750 = !{!3751, !3752, !3753}
!3751 = !DILocalVariable(name: "arg", arg: 1, scope: !3747, file: !213, line: 791, type: !99)
!3752 = !DILocalVariable(name: "argsize", arg: 2, scope: !3747, file: !213, line: 791, type: !102)
!3753 = !DILocalVariable(name: "o", arg: 3, scope: !3747, file: !213, line: 792, type: !2589)
!3754 = !DILocation(line: 791, column: 29, scope: !3747)
!3755 = !DILocation(line: 791, column: 41, scope: !3747)
!3756 = !DILocation(line: 792, column: 47, scope: !3747)
!3757 = !DILocalVariable(name: "arg", arg: 1, scope: !3758, file: !213, line: 804, type: !99)
!3758 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !213, file: !213, line: 804, type: !3759, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!43, !99, !102, !628, !2589}
!3761 = !{!3757, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769}
!3762 = !DILocalVariable(name: "argsize", arg: 2, scope: !3758, file: !213, line: 804, type: !102)
!3763 = !DILocalVariable(name: "size", arg: 3, scope: !3758, file: !213, line: 804, type: !628)
!3764 = !DILocalVariable(name: "o", arg: 4, scope: !3758, file: !213, line: 805, type: !2589)
!3765 = !DILocalVariable(name: "p", scope: !3758, file: !213, line: 807, type: !2589)
!3766 = !DILocalVariable(name: "e", scope: !3758, file: !213, line: 808, type: !34)
!3767 = !DILocalVariable(name: "flags", scope: !3758, file: !213, line: 810, type: !34)
!3768 = !DILocalVariable(name: "bufsize", scope: !3758, file: !213, line: 811, type: !102)
!3769 = !DILocalVariable(name: "buf", scope: !3758, file: !213, line: 815, type: !43)
!3770 = !DILocation(line: 804, column: 33, scope: !3758, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 794, column: 10, scope: !3747)
!3772 = !DILocation(line: 804, column: 45, scope: !3758, inlinedAt: !3771)
!3773 = !DILocation(line: 804, column: 62, scope: !3758, inlinedAt: !3771)
!3774 = !DILocation(line: 805, column: 51, scope: !3758, inlinedAt: !3771)
!3775 = !DILocation(line: 807, column: 37, scope: !3758, inlinedAt: !3771)
!3776 = !DILocation(line: 807, column: 33, scope: !3758, inlinedAt: !3771)
!3777 = !DILocation(line: 808, column: 11, scope: !3758, inlinedAt: !3771)
!3778 = !DILocation(line: 808, column: 7, scope: !3758, inlinedAt: !3771)
!3779 = !DILocation(line: 810, column: 18, scope: !3758, inlinedAt: !3771)
!3780 = !DILocation(line: 810, column: 24, scope: !3758, inlinedAt: !3771)
!3781 = !DILocation(line: 810, column: 7, scope: !3758, inlinedAt: !3771)
!3782 = !DILocation(line: 811, column: 69, scope: !3758, inlinedAt: !3771)
!3783 = !DILocation(line: 812, column: 53, scope: !3758, inlinedAt: !3771)
!3784 = !DILocation(line: 813, column: 49, scope: !3758, inlinedAt: !3771)
!3785 = !DILocation(line: 814, column: 49, scope: !3758, inlinedAt: !3771)
!3786 = !DILocation(line: 811, column: 20, scope: !3758, inlinedAt: !3771)
!3787 = !DILocation(line: 814, column: 62, scope: !3758, inlinedAt: !3771)
!3788 = !DILocation(line: 811, column: 10, scope: !3758, inlinedAt: !3771)
!3789 = !DILocalVariable(name: "n", arg: 1, scope: !3790, file: !624, line: 220, type: !102)
!3790 = distinct !DISubprogram(name: "xcharalloc", scope: !624, file: !624, line: 220, type: !3791, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!43, !102}
!3793 = !{!3789}
!3794 = !DILocation(line: 220, column: 20, scope: !3790, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 815, column: 15, scope: !3758, inlinedAt: !3771)
!3796 = !DILocation(line: 222, column: 10, scope: !3790, inlinedAt: !3795)
!3797 = !DILocation(line: 815, column: 9, scope: !3758, inlinedAt: !3771)
!3798 = !DILocation(line: 816, column: 60, scope: !3758, inlinedAt: !3771)
!3799 = !DILocation(line: 818, column: 32, scope: !3758, inlinedAt: !3771)
!3800 = !DILocation(line: 818, column: 47, scope: !3758, inlinedAt: !3771)
!3801 = !DILocation(line: 816, column: 3, scope: !3758, inlinedAt: !3771)
!3802 = !DILocation(line: 819, column: 9, scope: !3758, inlinedAt: !3771)
!3803 = !DILocation(line: 794, column: 3, scope: !3747)
!3804 = !DILocation(line: 804, column: 33, scope: !3758)
!3805 = !DILocation(line: 804, column: 45, scope: !3758)
!3806 = !DILocation(line: 804, column: 62, scope: !3758)
!3807 = !DILocation(line: 805, column: 51, scope: !3758)
!3808 = !DILocation(line: 807, column: 37, scope: !3758)
!3809 = !DILocation(line: 807, column: 33, scope: !3758)
!3810 = !DILocation(line: 808, column: 11, scope: !3758)
!3811 = !DILocation(line: 808, column: 7, scope: !3758)
!3812 = !DILocation(line: 810, column: 18, scope: !3758)
!3813 = !DILocation(line: 810, column: 27, scope: !3758)
!3814 = !DILocation(line: 810, column: 24, scope: !3758)
!3815 = !DILocation(line: 810, column: 7, scope: !3758)
!3816 = !DILocation(line: 811, column: 69, scope: !3758)
!3817 = !DILocation(line: 812, column: 53, scope: !3758)
!3818 = !DILocation(line: 813, column: 49, scope: !3758)
!3819 = !DILocation(line: 814, column: 49, scope: !3758)
!3820 = !DILocation(line: 811, column: 20, scope: !3758)
!3821 = !DILocation(line: 814, column: 62, scope: !3758)
!3822 = !DILocation(line: 811, column: 10, scope: !3758)
!3823 = !DILocation(line: 220, column: 20, scope: !3790, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 815, column: 15, scope: !3758)
!3825 = !DILocation(line: 222, column: 10, scope: !3790, inlinedAt: !3824)
!3826 = !DILocation(line: 815, column: 9, scope: !3758)
!3827 = !DILocation(line: 816, column: 60, scope: !3758)
!3828 = !DILocation(line: 818, column: 32, scope: !3758)
!3829 = !DILocation(line: 818, column: 47, scope: !3758)
!3830 = !DILocation(line: 816, column: 3, scope: !3758)
!3831 = !DILocation(line: 819, column: 9, scope: !3758)
!3832 = !DILocation(line: 820, column: 7, scope: !3758)
!3833 = !DILocation(line: 821, column: 11, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3758, file: !213, line: 820, column: 7)
!3835 = !DILocation(line: 821, column: 5, scope: !3834)
!3836 = !DILocation(line: 822, column: 3, scope: !3758)
!3837 = distinct !DISubprogram(name: "quotearg_free", scope: !213, file: !213, line: 840, type: !1066, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3838)
!3838 = !{!3839, !3840}
!3839 = !DILocalVariable(name: "sv", scope: !3837, file: !213, line: 842, type: !239)
!3840 = !DILocalVariable(name: "i", scope: !3837, file: !213, line: 843, type: !34)
!3841 = !DILocation(line: 842, column: 24, scope: !3837)
!3842 = !DILocation(line: 842, column: 19, scope: !3837)
!3843 = !DILocation(line: 843, column: 7, scope: !3837)
!3844 = !DILocation(line: 844, column: 19, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3846, file: !213, discriminator: 1)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !213, line: 844, column: 3)
!3847 = distinct !DILexicalBlock(scope: !3837, file: !213, line: 844, column: 3)
!3848 = !DILocation(line: 844, column: 17, scope: !3845)
!3849 = !DILocation(line: 844, column: 3, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !3847, file: !213, discriminator: 1)
!3851 = !DILocation(line: 845, column: 17, scope: !3846)
!3852 = !{!3853, !674, i64 8}
!3853 = !{!"slotvec", !697, i64 0, !674, i64 8}
!3854 = !DILocation(line: 845, column: 5, scope: !3846)
!3855 = !DILocation(line: 844, column: 28, scope: !3856)
!3856 = !DILexicalBlockFile(scope: !3846, file: !213, discriminator: 2)
!3857 = distinct !{!3857, !3858, !3859}
!3858 = !DILocation(line: 844, column: 3, scope: !3847)
!3859 = !DILocation(line: 845, column: 20, scope: !3847)
!3860 = !DILocation(line: 846, column: 13, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3837, file: !213, line: 846, column: 7)
!3862 = !DILocation(line: 846, column: 17, scope: !3861)
!3863 = !DILocation(line: 846, column: 7, scope: !3837)
!3864 = !DILocation(line: 848, column: 7, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3861, file: !213, line: 847, column: 5)
!3866 = !DILocation(line: 849, column: 21, scope: !3865)
!3867 = !{!3853, !697, i64 0}
!3868 = !DILocation(line: 850, column: 20, scope: !3865)
!3869 = !DILocation(line: 851, column: 5, scope: !3865)
!3870 = !DILocation(line: 852, column: 10, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3837, file: !213, line: 852, column: 7)
!3872 = !DILocation(line: 852, column: 7, scope: !3837)
!3873 = !DILocation(line: 854, column: 13, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3871, file: !213, line: 853, column: 5)
!3875 = !DILocation(line: 854, column: 7, scope: !3874)
!3876 = !DILocation(line: 855, column: 15, scope: !3874)
!3877 = !DILocation(line: 856, column: 5, scope: !3874)
!3878 = !DILocation(line: 857, column: 10, scope: !3837)
!3879 = !DILocation(line: 858, column: 1, scope: !3837)
!3880 = distinct !DISubprogram(name: "quotearg_n", scope: !213, file: !213, line: 922, type: !3881, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!43, !34, !99}
!3883 = !{!3884, !3885}
!3884 = !DILocalVariable(name: "n", arg: 1, scope: !3880, file: !213, line: 922, type: !34)
!3885 = !DILocalVariable(name: "arg", arg: 2, scope: !3880, file: !213, line: 922, type: !99)
!3886 = !DILocation(line: 922, column: 17, scope: !3880)
!3887 = !DILocation(line: 922, column: 32, scope: !3880)
!3888 = !DILocation(line: 924, column: 10, scope: !3880)
!3889 = !DILocation(line: 924, column: 3, scope: !3880)
!3890 = distinct !DISubprogram(name: "quotearg_n_options", scope: !213, file: !213, line: 869, type: !3891, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!43, !34, !99, !102, !2589}
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899, !3900, !3903, !3905, !3906, !3907}
!3894 = !DILocalVariable(name: "n", arg: 1, scope: !3890, file: !213, line: 869, type: !34)
!3895 = !DILocalVariable(name: "arg", arg: 2, scope: !3890, file: !213, line: 869, type: !99)
!3896 = !DILocalVariable(name: "argsize", arg: 3, scope: !3890, file: !213, line: 869, type: !102)
!3897 = !DILocalVariable(name: "options", arg: 4, scope: !3890, file: !213, line: 870, type: !2589)
!3898 = !DILocalVariable(name: "e", scope: !3890, file: !213, line: 872, type: !34)
!3899 = !DILocalVariable(name: "sv", scope: !3890, file: !213, line: 874, type: !239)
!3900 = !DILocalVariable(name: "preallocated", scope: !3901, file: !213, line: 881, type: !45)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !213, line: 880, column: 5)
!3902 = distinct !DILexicalBlock(scope: !3890, file: !213, line: 879, column: 7)
!3903 = !DILocalVariable(name: "size", scope: !3904, file: !213, line: 894, type: !102)
!3904 = distinct !DILexicalBlock(scope: !3890, file: !213, line: 893, column: 3)
!3905 = !DILocalVariable(name: "val", scope: !3904, file: !213, line: 895, type: !43)
!3906 = !DILocalVariable(name: "flags", scope: !3904, file: !213, line: 897, type: !34)
!3907 = !DILocalVariable(name: "qsize", scope: !3904, file: !213, line: 898, type: !102)
!3908 = !DILocation(line: 869, column: 25, scope: !3890)
!3909 = !DILocation(line: 869, column: 40, scope: !3890)
!3910 = !DILocation(line: 869, column: 52, scope: !3890)
!3911 = !DILocation(line: 870, column: 51, scope: !3890)
!3912 = !DILocation(line: 872, column: 11, scope: !3890)
!3913 = !DILocation(line: 872, column: 7, scope: !3890)
!3914 = !DILocation(line: 874, column: 24, scope: !3890)
!3915 = !DILocation(line: 874, column: 19, scope: !3890)
!3916 = !DILocation(line: 876, column: 9, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3890, file: !213, line: 876, column: 7)
!3918 = !DILocation(line: 876, column: 7, scope: !3890)
!3919 = !DILocation(line: 877, column: 5, scope: !3917)
!3920 = !DILocation(line: 879, column: 7, scope: !3902)
!3921 = !DILocation(line: 879, column: 14, scope: !3902)
!3922 = !DILocation(line: 879, column: 7, scope: !3890)
!3923 = !DILocation(line: 881, column: 31, scope: !3901)
!3924 = !DILocation(line: 883, column: 67, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3901, file: !213, line: 883, column: 11)
!3926 = !DILocation(line: 883, column: 11, scope: !3901)
!3927 = !DILocation(line: 884, column: 9, scope: !3925)
!3928 = !DILocation(line: 886, column: 32, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3901, file: !213, discriminator: 3)
!3930 = !DILocation(line: 886, column: 61, scope: !3929)
!3931 = !DILocation(line: 886, column: 58, scope: !3929)
!3932 = !DILocation(line: 886, column: 66, scope: !3929)
!3933 = !DILocation(line: 886, column: 22, scope: !3929)
!3934 = !DILocation(line: 886, column: 15, scope: !3929)
!3935 = !DILocation(line: 887, column: 11, scope: !3901)
!3936 = !DILocation(line: 888, column: 15, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3901, file: !213, line: 887, column: 11)
!3938 = !{i64 0, i64 8, !2058, i64 8, i64 8, !673}
!3939 = !DILocation(line: 888, column: 9, scope: !3937)
!3940 = !DILocation(line: 889, column: 20, scope: !3901)
!3941 = !DILocation(line: 889, column: 18, scope: !3901)
!3942 = !DILocation(line: 889, column: 7, scope: !3901)
!3943 = !DILocation(line: 889, column: 38, scope: !3901)
!3944 = !DILocation(line: 889, column: 31, scope: !3901)
!3945 = !DILocation(line: 889, column: 48, scope: !3901)
!3946 = !DILocation(line: 890, column: 14, scope: !3901)
!3947 = !DILocation(line: 891, column: 5, scope: !3901)
!3948 = !DILocation(line: 894, column: 19, scope: !3904)
!3949 = !DILocation(line: 894, column: 25, scope: !3904)
!3950 = !DILocation(line: 894, column: 12, scope: !3904)
!3951 = !DILocation(line: 895, column: 23, scope: !3904)
!3952 = !DILocation(line: 895, column: 11, scope: !3904)
!3953 = !DILocation(line: 897, column: 26, scope: !3904)
!3954 = !DILocation(line: 897, column: 32, scope: !3904)
!3955 = !DILocation(line: 897, column: 9, scope: !3904)
!3956 = !DILocation(line: 899, column: 55, scope: !3904)
!3957 = !DILocation(line: 900, column: 46, scope: !3904)
!3958 = !DILocation(line: 901, column: 55, scope: !3904)
!3959 = !DILocation(line: 902, column: 55, scope: !3904)
!3960 = !DILocation(line: 898, column: 20, scope: !3904)
!3961 = !DILocation(line: 898, column: 12, scope: !3904)
!3962 = !DILocation(line: 904, column: 14, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3904, file: !213, line: 904, column: 9)
!3964 = !DILocation(line: 904, column: 9, scope: !3904)
!3965 = !DILocation(line: 906, column: 35, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !213, line: 905, column: 7)
!3967 = !DILocation(line: 906, column: 20, scope: !3966)
!3968 = !DILocation(line: 907, column: 17, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3966, file: !213, line: 907, column: 13)
!3970 = !DILocation(line: 907, column: 13, scope: !3966)
!3971 = !DILocation(line: 908, column: 11, scope: !3969)
!3972 = !DILocation(line: 220, column: 20, scope: !3790, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 909, column: 27, scope: !3966)
!3974 = !DILocation(line: 222, column: 10, scope: !3790, inlinedAt: !3973)
!3975 = !DILocation(line: 909, column: 19, scope: !3966)
!3976 = !DILocation(line: 910, column: 69, scope: !3966)
!3977 = !DILocation(line: 912, column: 44, scope: !3966)
!3978 = !DILocation(line: 913, column: 44, scope: !3966)
!3979 = !DILocation(line: 910, column: 9, scope: !3966)
!3980 = !DILocation(line: 914, column: 7, scope: !3966)
!3981 = !DILocation(line: 916, column: 11, scope: !3904)
!3982 = !DILocation(line: 917, column: 5, scope: !3904)
!3983 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !213, file: !213, line: 928, type: !3984, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!43, !34, !99, !102}
!3986 = !{!3987, !3988, !3989}
!3987 = !DILocalVariable(name: "n", arg: 1, scope: !3983, file: !213, line: 928, type: !34)
!3988 = !DILocalVariable(name: "arg", arg: 2, scope: !3983, file: !213, line: 928, type: !99)
!3989 = !DILocalVariable(name: "argsize", arg: 3, scope: !3983, file: !213, line: 928, type: !102)
!3990 = !DILocation(line: 928, column: 21, scope: !3983)
!3991 = !DILocation(line: 928, column: 36, scope: !3983)
!3992 = !DILocation(line: 928, column: 48, scope: !3983)
!3993 = !DILocation(line: 930, column: 10, scope: !3983)
!3994 = !DILocation(line: 930, column: 3, scope: !3983)
!3995 = distinct !DISubprogram(name: "quotearg", scope: !213, file: !213, line: 934, type: !3996, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!43, !99}
!3998 = !{!3999}
!3999 = !DILocalVariable(name: "arg", arg: 1, scope: !3995, file: !213, line: 934, type: !99)
!4000 = !DILocation(line: 934, column: 23, scope: !3995)
!4001 = !DILocation(line: 922, column: 17, scope: !3880, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 936, column: 10, scope: !3995)
!4003 = !DILocation(line: 922, column: 32, scope: !3880, inlinedAt: !4002)
!4004 = !DILocation(line: 924, column: 10, scope: !3880, inlinedAt: !4002)
!4005 = !DILocation(line: 936, column: 3, scope: !3995)
!4006 = distinct !DISubprogram(name: "quotearg_mem", scope: !213, file: !213, line: 940, type: !4007, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4009)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!43, !99, !102}
!4009 = !{!4010, !4011}
!4010 = !DILocalVariable(name: "arg", arg: 1, scope: !4006, file: !213, line: 940, type: !99)
!4011 = !DILocalVariable(name: "argsize", arg: 2, scope: !4006, file: !213, line: 940, type: !102)
!4012 = !DILocation(line: 940, column: 27, scope: !4006)
!4013 = !DILocation(line: 940, column: 39, scope: !4006)
!4014 = !DILocation(line: 928, column: 21, scope: !3983, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 942, column: 10, scope: !4006)
!4016 = !DILocation(line: 928, column: 36, scope: !3983, inlinedAt: !4015)
!4017 = !DILocation(line: 928, column: 48, scope: !3983, inlinedAt: !4015)
!4018 = !DILocation(line: 930, column: 10, scope: !3983, inlinedAt: !4015)
!4019 = !DILocation(line: 942, column: 3, scope: !4006)
!4020 = distinct !DISubprogram(name: "quotearg_n_style", scope: !213, file: !213, line: 946, type: !4021, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4023)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!43, !34, !63, !99}
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DILocalVariable(name: "n", arg: 1, scope: !4020, file: !213, line: 946, type: !34)
!4025 = !DILocalVariable(name: "s", arg: 2, scope: !4020, file: !213, line: 946, type: !63)
!4026 = !DILocalVariable(name: "arg", arg: 3, scope: !4020, file: !213, line: 946, type: !99)
!4027 = !DILocalVariable(name: "o", scope: !4020, file: !213, line: 948, type: !2590)
!4028 = !DILocalVariable(name: "o", scope: !4029, file: !213, line: 187, type: !220)
!4029 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !213, file: !213, line: 185, type: !4030, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!220, !63}
!4032 = !{!4033, !4028}
!4033 = !DILocalVariable(name: "style", arg: 1, scope: !4029, file: !213, line: 185, type: !63)
!4034 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4035 = !DILocation(line: 187, column: 26, scope: !4029, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 948, column: 36, scope: !4020)
!4037 = !DILocation(line: 946, column: 23, scope: !4020)
!4038 = !DILocation(line: 946, column: 45, scope: !4020)
!4039 = !DILocation(line: 946, column: 60, scope: !4020)
!4040 = !DILocation(line: 948, column: 3, scope: !4020)
!4041 = !DILocation(line: 948, column: 32, scope: !4020)
!4042 = !DILocation(line: 185, column: 48, scope: !4029, inlinedAt: !4036)
!4043 = !DILocation(line: 187, column: 3, scope: !4029, inlinedAt: !4036)
!4044 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4045 = !DILocation(line: 188, column: 13, scope: !4046, inlinedAt: !4036)
!4046 = distinct !DILexicalBlock(scope: !4029, file: !213, line: 188, column: 7)
!4047 = !DILocation(line: 188, column: 7, scope: !4029, inlinedAt: !4036)
!4048 = !DILocation(line: 189, column: 5, scope: !4046, inlinedAt: !4036)
!4049 = !{!4050}
!4050 = distinct !{!4050, !4051, !"quoting_options_from_style: argument 0"}
!4051 = distinct !{!4051, !"quoting_options_from_style"}
!4052 = !DILocation(line: 191, column: 10, scope: !4029, inlinedAt: !4036)
!4053 = !DILocation(line: 192, column: 1, scope: !4029, inlinedAt: !4036)
!4054 = !DILocation(line: 949, column: 10, scope: !4020)
!4055 = !DILocation(line: 950, column: 1, scope: !4020)
!4056 = !DILocation(line: 949, column: 3, scope: !4020)
!4057 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !213, file: !213, line: 953, type: !4058, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!43, !34, !63, !99, !102}
!4060 = !{!4061, !4062, !4063, !4064, !4065}
!4061 = !DILocalVariable(name: "n", arg: 1, scope: !4057, file: !213, line: 953, type: !34)
!4062 = !DILocalVariable(name: "s", arg: 2, scope: !4057, file: !213, line: 953, type: !63)
!4063 = !DILocalVariable(name: "arg", arg: 3, scope: !4057, file: !213, line: 954, type: !99)
!4064 = !DILocalVariable(name: "argsize", arg: 4, scope: !4057, file: !213, line: 954, type: !102)
!4065 = !DILocalVariable(name: "o", scope: !4057, file: !213, line: 956, type: !2590)
!4066 = !DILocation(line: 187, column: 26, scope: !4029, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 956, column: 36, scope: !4057)
!4068 = !DILocation(line: 953, column: 27, scope: !4057)
!4069 = !DILocation(line: 953, column: 49, scope: !4057)
!4070 = !DILocation(line: 954, column: 35, scope: !4057)
!4071 = !DILocation(line: 954, column: 47, scope: !4057)
!4072 = !DILocation(line: 956, column: 3, scope: !4057)
!4073 = !DILocation(line: 956, column: 32, scope: !4057)
!4074 = !DILocation(line: 185, column: 48, scope: !4029, inlinedAt: !4067)
!4075 = !DILocation(line: 187, column: 3, scope: !4029, inlinedAt: !4067)
!4076 = !DILocation(line: 188, column: 13, scope: !4046, inlinedAt: !4067)
!4077 = !DILocation(line: 188, column: 7, scope: !4029, inlinedAt: !4067)
!4078 = !DILocation(line: 189, column: 5, scope: !4046, inlinedAt: !4067)
!4079 = !{!4080}
!4080 = distinct !{!4080, !4081, !"quoting_options_from_style: argument 0"}
!4081 = distinct !{!4081, !"quoting_options_from_style"}
!4082 = !DILocation(line: 191, column: 10, scope: !4029, inlinedAt: !4067)
!4083 = !DILocation(line: 192, column: 1, scope: !4029, inlinedAt: !4067)
!4084 = !DILocation(line: 957, column: 10, scope: !4057)
!4085 = !DILocation(line: 958, column: 1, scope: !4057)
!4086 = !DILocation(line: 957, column: 3, scope: !4057)
!4087 = distinct !DISubprogram(name: "quotearg_style", scope: !213, file: !213, line: 961, type: !4088, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4090)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!43, !63, !99}
!4090 = !{!4091, !4092}
!4091 = !DILocalVariable(name: "s", arg: 1, scope: !4087, file: !213, line: 961, type: !63)
!4092 = !DILocalVariable(name: "arg", arg: 2, scope: !4087, file: !213, line: 961, type: !99)
!4093 = !DILocation(line: 187, column: 26, scope: !4029, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 948, column: 36, scope: !4020, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 963, column: 10, scope: !4087)
!4096 = !DILocation(line: 961, column: 36, scope: !4087)
!4097 = !DILocation(line: 961, column: 51, scope: !4087)
!4098 = !DILocation(line: 946, column: 23, scope: !4020, inlinedAt: !4095)
!4099 = !DILocation(line: 946, column: 45, scope: !4020, inlinedAt: !4095)
!4100 = !DILocation(line: 946, column: 60, scope: !4020, inlinedAt: !4095)
!4101 = !DILocation(line: 948, column: 3, scope: !4020, inlinedAt: !4095)
!4102 = !DILocation(line: 948, column: 32, scope: !4020, inlinedAt: !4095)
!4103 = !DILocation(line: 185, column: 48, scope: !4029, inlinedAt: !4094)
!4104 = !DILocation(line: 187, column: 3, scope: !4029, inlinedAt: !4094)
!4105 = !DILocation(line: 188, column: 13, scope: !4046, inlinedAt: !4094)
!4106 = !DILocation(line: 188, column: 7, scope: !4029, inlinedAt: !4094)
!4107 = !DILocation(line: 189, column: 5, scope: !4046, inlinedAt: !4094)
!4108 = !{!4109}
!4109 = distinct !{!4109, !4110, !"quoting_options_from_style: argument 0"}
!4110 = distinct !{!4110, !"quoting_options_from_style"}
!4111 = !DILocation(line: 191, column: 10, scope: !4029, inlinedAt: !4094)
!4112 = !DILocation(line: 192, column: 1, scope: !4029, inlinedAt: !4094)
!4113 = !DILocation(line: 949, column: 10, scope: !4020, inlinedAt: !4095)
!4114 = !DILocation(line: 950, column: 1, scope: !4020, inlinedAt: !4095)
!4115 = !DILocation(line: 963, column: 3, scope: !4087)
!4116 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !213, file: !213, line: 967, type: !4117, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!43, !63, !99, !102}
!4119 = !{!4120, !4121, !4122}
!4120 = !DILocalVariable(name: "s", arg: 1, scope: !4116, file: !213, line: 967, type: !63)
!4121 = !DILocalVariable(name: "arg", arg: 2, scope: !4116, file: !213, line: 967, type: !99)
!4122 = !DILocalVariable(name: "argsize", arg: 3, scope: !4116, file: !213, line: 967, type: !102)
!4123 = !DILocation(line: 187, column: 26, scope: !4029, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 956, column: 36, scope: !4057, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 969, column: 10, scope: !4116)
!4126 = !DILocation(line: 967, column: 40, scope: !4116)
!4127 = !DILocation(line: 967, column: 55, scope: !4116)
!4128 = !DILocation(line: 967, column: 67, scope: !4116)
!4129 = !DILocation(line: 953, column: 27, scope: !4057, inlinedAt: !4125)
!4130 = !DILocation(line: 953, column: 49, scope: !4057, inlinedAt: !4125)
!4131 = !DILocation(line: 954, column: 35, scope: !4057, inlinedAt: !4125)
!4132 = !DILocation(line: 954, column: 47, scope: !4057, inlinedAt: !4125)
!4133 = !DILocation(line: 956, column: 3, scope: !4057, inlinedAt: !4125)
!4134 = !DILocation(line: 956, column: 32, scope: !4057, inlinedAt: !4125)
!4135 = !DILocation(line: 185, column: 48, scope: !4029, inlinedAt: !4124)
!4136 = !DILocation(line: 187, column: 3, scope: !4029, inlinedAt: !4124)
!4137 = !DILocation(line: 188, column: 13, scope: !4046, inlinedAt: !4124)
!4138 = !DILocation(line: 188, column: 7, scope: !4029, inlinedAt: !4124)
!4139 = !DILocation(line: 189, column: 5, scope: !4046, inlinedAt: !4124)
!4140 = !{!4141}
!4141 = distinct !{!4141, !4142, !"quoting_options_from_style: argument 0"}
!4142 = distinct !{!4142, !"quoting_options_from_style"}
!4143 = !DILocation(line: 191, column: 10, scope: !4029, inlinedAt: !4124)
!4144 = !DILocation(line: 192, column: 1, scope: !4029, inlinedAt: !4124)
!4145 = !DILocation(line: 957, column: 10, scope: !4057, inlinedAt: !4125)
!4146 = !DILocation(line: 958, column: 1, scope: !4057, inlinedAt: !4125)
!4147 = !DILocation(line: 969, column: 3, scope: !4116)
!4148 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !213, file: !213, line: 973, type: !4149, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!43, !99, !102, !44}
!4151 = !{!4152, !4153, !4154, !4155}
!4152 = !DILocalVariable(name: "arg", arg: 1, scope: !4148, file: !213, line: 973, type: !99)
!4153 = !DILocalVariable(name: "argsize", arg: 2, scope: !4148, file: !213, line: 973, type: !102)
!4154 = !DILocalVariable(name: "ch", arg: 3, scope: !4148, file: !213, line: 973, type: !44)
!4155 = !DILocalVariable(name: "options", scope: !4148, file: !213, line: 975, type: !220)
!4156 = !DILocation(line: 973, column: 32, scope: !4148)
!4157 = !DILocation(line: 973, column: 44, scope: !4148)
!4158 = !DILocation(line: 973, column: 58, scope: !4148)
!4159 = !DILocation(line: 975, column: 3, scope: !4148)
!4160 = !DILocation(line: 976, column: 13, scope: !4148)
!4161 = !{i64 0, i64 4, !705, i64 4, i64 4, !778, i64 8, i64 32, !705, i64 40, i64 8, !673, i64 48, i64 8, !673}
!4162 = !DILocation(line: 975, column: 26, scope: !4148)
!4163 = !DILocation(line: 144, column: 43, scope: !2613, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 977, column: 3, scope: !4148)
!4165 = !DILocation(line: 144, column: 51, scope: !2613, inlinedAt: !4164)
!4166 = !DILocation(line: 144, column: 58, scope: !2613, inlinedAt: !4164)
!4167 = !DILocation(line: 146, column: 17, scope: !2613, inlinedAt: !4164)
!4168 = !DILocation(line: 148, column: 62, scope: !2631, inlinedAt: !4164)
!4169 = !DILocation(line: 148, column: 57, scope: !2631, inlinedAt: !4164)
!4170 = !DILocation(line: 147, column: 17, scope: !2613, inlinedAt: !4164)
!4171 = !DILocation(line: 149, column: 18, scope: !2613, inlinedAt: !4164)
!4172 = !DILocation(line: 149, column: 15, scope: !2613, inlinedAt: !4164)
!4173 = !DILocation(line: 149, column: 7, scope: !2613, inlinedAt: !4164)
!4174 = !DILocation(line: 150, column: 12, scope: !2613, inlinedAt: !4164)
!4175 = !DILocation(line: 150, column: 15, scope: !2613, inlinedAt: !4164)
!4176 = !DILocation(line: 150, column: 25, scope: !2613, inlinedAt: !4164)
!4177 = !DILocation(line: 150, column: 7, scope: !2613, inlinedAt: !4164)
!4178 = !DILocation(line: 151, column: 18, scope: !2613, inlinedAt: !4164)
!4179 = !DILocation(line: 151, column: 23, scope: !2613, inlinedAt: !4164)
!4180 = !DILocation(line: 151, column: 6, scope: !2613, inlinedAt: !4164)
!4181 = !DILocation(line: 978, column: 10, scope: !4148)
!4182 = !DILocation(line: 979, column: 1, scope: !4148)
!4183 = !DILocation(line: 978, column: 3, scope: !4148)
!4184 = distinct !DISubprogram(name: "quotearg_char", scope: !213, file: !213, line: 982, type: !4185, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4187)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!43, !99, !44}
!4187 = !{!4188, !4189}
!4188 = !DILocalVariable(name: "arg", arg: 1, scope: !4184, file: !213, line: 982, type: !99)
!4189 = !DILocalVariable(name: "ch", arg: 2, scope: !4184, file: !213, line: 982, type: !44)
!4190 = !DILocation(line: 982, column: 28, scope: !4184)
!4191 = !DILocation(line: 982, column: 38, scope: !4184)
!4192 = !DILocation(line: 973, column: 32, scope: !4148, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 984, column: 10, scope: !4184)
!4194 = !DILocation(line: 973, column: 44, scope: !4148, inlinedAt: !4193)
!4195 = !DILocation(line: 973, column: 58, scope: !4148, inlinedAt: !4193)
!4196 = !DILocation(line: 975, column: 3, scope: !4148, inlinedAt: !4193)
!4197 = !DILocation(line: 976, column: 13, scope: !4148, inlinedAt: !4193)
!4198 = !DILocation(line: 975, column: 26, scope: !4148, inlinedAt: !4193)
!4199 = !DILocation(line: 144, column: 43, scope: !2613, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 977, column: 3, scope: !4148, inlinedAt: !4193)
!4201 = !DILocation(line: 144, column: 51, scope: !2613, inlinedAt: !4200)
!4202 = !DILocation(line: 144, column: 58, scope: !2613, inlinedAt: !4200)
!4203 = !DILocation(line: 146, column: 17, scope: !2613, inlinedAt: !4200)
!4204 = !DILocation(line: 148, column: 62, scope: !2631, inlinedAt: !4200)
!4205 = !DILocation(line: 148, column: 57, scope: !2631, inlinedAt: !4200)
!4206 = !DILocation(line: 147, column: 17, scope: !2613, inlinedAt: !4200)
!4207 = !DILocation(line: 149, column: 18, scope: !2613, inlinedAt: !4200)
!4208 = !DILocation(line: 149, column: 15, scope: !2613, inlinedAt: !4200)
!4209 = !DILocation(line: 149, column: 7, scope: !2613, inlinedAt: !4200)
!4210 = !DILocation(line: 150, column: 12, scope: !2613, inlinedAt: !4200)
!4211 = !DILocation(line: 150, column: 15, scope: !2613, inlinedAt: !4200)
!4212 = !DILocation(line: 150, column: 25, scope: !2613, inlinedAt: !4200)
!4213 = !DILocation(line: 150, column: 7, scope: !2613, inlinedAt: !4200)
!4214 = !DILocation(line: 151, column: 18, scope: !2613, inlinedAt: !4200)
!4215 = !DILocation(line: 151, column: 23, scope: !2613, inlinedAt: !4200)
!4216 = !DILocation(line: 151, column: 6, scope: !2613, inlinedAt: !4200)
!4217 = !DILocation(line: 978, column: 10, scope: !4148, inlinedAt: !4193)
!4218 = !DILocation(line: 979, column: 1, scope: !4148, inlinedAt: !4193)
!4219 = !DILocation(line: 984, column: 3, scope: !4184)
!4220 = distinct !DISubprogram(name: "quotearg_colon", scope: !213, file: !213, line: 988, type: !3996, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4221)
!4221 = !{!4222}
!4222 = !DILocalVariable(name: "arg", arg: 1, scope: !4220, file: !213, line: 988, type: !99)
!4223 = !DILocation(line: 988, column: 29, scope: !4220)
!4224 = !DILocation(line: 982, column: 28, scope: !4184, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 990, column: 10, scope: !4220)
!4226 = !DILocation(line: 982, column: 38, scope: !4184, inlinedAt: !4225)
!4227 = !DILocation(line: 973, column: 32, scope: !4148, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 984, column: 10, scope: !4184, inlinedAt: !4225)
!4229 = !DILocation(line: 973, column: 44, scope: !4148, inlinedAt: !4228)
!4230 = !DILocation(line: 973, column: 58, scope: !4148, inlinedAt: !4228)
!4231 = !DILocation(line: 975, column: 3, scope: !4148, inlinedAt: !4228)
!4232 = !DILocation(line: 976, column: 13, scope: !4148, inlinedAt: !4228)
!4233 = !DILocation(line: 975, column: 26, scope: !4148, inlinedAt: !4228)
!4234 = !DILocation(line: 144, column: 43, scope: !2613, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 977, column: 3, scope: !4148, inlinedAt: !4228)
!4236 = !DILocation(line: 144, column: 51, scope: !2613, inlinedAt: !4235)
!4237 = !DILocation(line: 144, column: 58, scope: !2613, inlinedAt: !4235)
!4238 = !DILocation(line: 146, column: 17, scope: !2613, inlinedAt: !4235)
!4239 = !DILocation(line: 148, column: 57, scope: !2631, inlinedAt: !4235)
!4240 = !DILocation(line: 147, column: 17, scope: !2613, inlinedAt: !4235)
!4241 = !DILocation(line: 149, column: 7, scope: !2613, inlinedAt: !4235)
!4242 = !DILocation(line: 150, column: 12, scope: !2613, inlinedAt: !4235)
!4243 = !DILocation(line: 151, column: 6, scope: !2613, inlinedAt: !4235)
!4244 = !DILocation(line: 978, column: 10, scope: !4148, inlinedAt: !4228)
!4245 = !DILocation(line: 979, column: 1, scope: !4148, inlinedAt: !4228)
!4246 = !DILocation(line: 990, column: 3, scope: !4220)
!4247 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !213, file: !213, line: 994, type: !4007, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4248)
!4248 = !{!4249, !4250}
!4249 = !DILocalVariable(name: "arg", arg: 1, scope: !4247, file: !213, line: 994, type: !99)
!4250 = !DILocalVariable(name: "argsize", arg: 2, scope: !4247, file: !213, line: 994, type: !102)
!4251 = !DILocation(line: 994, column: 33, scope: !4247)
!4252 = !DILocation(line: 994, column: 45, scope: !4247)
!4253 = !DILocation(line: 973, column: 32, scope: !4148, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 996, column: 10, scope: !4247)
!4255 = !DILocation(line: 973, column: 44, scope: !4148, inlinedAt: !4254)
!4256 = !DILocation(line: 973, column: 58, scope: !4148, inlinedAt: !4254)
!4257 = !DILocation(line: 975, column: 3, scope: !4148, inlinedAt: !4254)
!4258 = !DILocation(line: 976, column: 13, scope: !4148, inlinedAt: !4254)
!4259 = !DILocation(line: 975, column: 26, scope: !4148, inlinedAt: !4254)
!4260 = !DILocation(line: 144, column: 43, scope: !2613, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 977, column: 3, scope: !4148, inlinedAt: !4254)
!4262 = !DILocation(line: 144, column: 51, scope: !2613, inlinedAt: !4261)
!4263 = !DILocation(line: 144, column: 58, scope: !2613, inlinedAt: !4261)
!4264 = !DILocation(line: 146, column: 17, scope: !2613, inlinedAt: !4261)
!4265 = !DILocation(line: 148, column: 57, scope: !2631, inlinedAt: !4261)
!4266 = !DILocation(line: 147, column: 17, scope: !2613, inlinedAt: !4261)
!4267 = !DILocation(line: 149, column: 7, scope: !2613, inlinedAt: !4261)
!4268 = !DILocation(line: 150, column: 12, scope: !2613, inlinedAt: !4261)
!4269 = !DILocation(line: 151, column: 6, scope: !2613, inlinedAt: !4261)
!4270 = !DILocation(line: 978, column: 10, scope: !4148, inlinedAt: !4254)
!4271 = !DILocation(line: 979, column: 1, scope: !4148, inlinedAt: !4254)
!4272 = !DILocation(line: 996, column: 3, scope: !4247)
!4273 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !213, file: !213, line: 1000, type: !4021, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4274)
!4274 = !{!4275, !4276, !4277, !4278}
!4275 = !DILocalVariable(name: "n", arg: 1, scope: !4273, file: !213, line: 1000, type: !34)
!4276 = !DILocalVariable(name: "s", arg: 2, scope: !4273, file: !213, line: 1000, type: !63)
!4277 = !DILocalVariable(name: "arg", arg: 3, scope: !4273, file: !213, line: 1000, type: !99)
!4278 = !DILocalVariable(name: "options", scope: !4273, file: !213, line: 1002, type: !220)
!4279 = !DILocation(line: 187, column: 26, scope: !4029, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 1003, column: 13, scope: !4273)
!4281 = !DILocation(line: 1000, column: 29, scope: !4273)
!4282 = !DILocation(line: 1000, column: 51, scope: !4273)
!4283 = !DILocation(line: 1000, column: 66, scope: !4273)
!4284 = !DILocation(line: 1002, column: 3, scope: !4273)
!4285 = !DILocation(line: 185, column: 48, scope: !4029, inlinedAt: !4280)
!4286 = !DILocation(line: 187, column: 3, scope: !4029, inlinedAt: !4280)
!4287 = !DILocation(line: 188, column: 13, scope: !4046, inlinedAt: !4280)
!4288 = !DILocation(line: 188, column: 7, scope: !4029, inlinedAt: !4280)
!4289 = !DILocation(line: 189, column: 5, scope: !4046, inlinedAt: !4280)
!4290 = !{!4291}
!4291 = distinct !{!4291, !4292, !"quoting_options_from_style: argument 0"}
!4292 = distinct !{!4292, !"quoting_options_from_style"}
!4293 = !DILocation(line: 191, column: 10, scope: !4029, inlinedAt: !4280)
!4294 = !DILocation(line: 192, column: 1, scope: !4029, inlinedAt: !4280)
!4295 = !DILocation(line: 1003, column: 13, scope: !4273)
!4296 = !DILocation(line: 1002, column: 26, scope: !4273)
!4297 = !DILocation(line: 144, column: 43, scope: !2613, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 1004, column: 3, scope: !4273)
!4299 = !DILocation(line: 144, column: 51, scope: !2613, inlinedAt: !4298)
!4300 = !DILocation(line: 144, column: 58, scope: !2613, inlinedAt: !4298)
!4301 = !DILocation(line: 146, column: 17, scope: !2613, inlinedAt: !4298)
!4302 = !DILocation(line: 148, column: 57, scope: !2631, inlinedAt: !4298)
!4303 = !DILocation(line: 147, column: 17, scope: !2613, inlinedAt: !4298)
!4304 = !DILocation(line: 149, column: 7, scope: !2613, inlinedAt: !4298)
!4305 = !DILocation(line: 150, column: 12, scope: !2613, inlinedAt: !4298)
!4306 = !DILocation(line: 151, column: 6, scope: !2613, inlinedAt: !4298)
!4307 = !DILocation(line: 1005, column: 10, scope: !4273)
!4308 = !DILocation(line: 1006, column: 1, scope: !4273)
!4309 = !DILocation(line: 1005, column: 3, scope: !4273)
!4310 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !213, file: !213, line: 1009, type: !4311, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!43, !34, !99, !99, !99}
!4313 = !{!4314, !4315, !4316, !4317}
!4314 = !DILocalVariable(name: "n", arg: 1, scope: !4310, file: !213, line: 1009, type: !34)
!4315 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4310, file: !213, line: 1009, type: !99)
!4316 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4310, file: !213, line: 1010, type: !99)
!4317 = !DILocalVariable(name: "arg", arg: 4, scope: !4310, file: !213, line: 1010, type: !99)
!4318 = !DILocation(line: 1009, column: 24, scope: !4310)
!4319 = !DILocation(line: 1009, column: 39, scope: !4310)
!4320 = !DILocation(line: 1010, column: 32, scope: !4310)
!4321 = !DILocation(line: 1010, column: 57, scope: !4310)
!4322 = !DILocalVariable(name: "n", arg: 1, scope: !4323, file: !213, line: 1017, type: !34)
!4323 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !213, file: !213, line: 1017, type: !4324, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4326)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!43, !34, !99, !99, !99, !102}
!4326 = !{!4322, !4327, !4328, !4329, !4330, !4331}
!4327 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4323, file: !213, line: 1017, type: !99)
!4328 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4323, file: !213, line: 1018, type: !99)
!4329 = !DILocalVariable(name: "arg", arg: 4, scope: !4323, file: !213, line: 1019, type: !99)
!4330 = !DILocalVariable(name: "argsize", arg: 5, scope: !4323, file: !213, line: 1019, type: !102)
!4331 = !DILocalVariable(name: "o", scope: !4323, file: !213, line: 1021, type: !220)
!4332 = !DILocation(line: 1017, column: 28, scope: !4323, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 1012, column: 10, scope: !4310)
!4334 = !DILocation(line: 1017, column: 43, scope: !4323, inlinedAt: !4333)
!4335 = !DILocation(line: 1018, column: 36, scope: !4323, inlinedAt: !4333)
!4336 = !DILocation(line: 1019, column: 36, scope: !4323, inlinedAt: !4333)
!4337 = !DILocation(line: 1019, column: 48, scope: !4323, inlinedAt: !4333)
!4338 = !DILocation(line: 1021, column: 3, scope: !4323, inlinedAt: !4333)
!4339 = !DILocation(line: 1021, column: 30, scope: !4323, inlinedAt: !4333)
!4340 = !DILocation(line: 1021, column: 26, scope: !4323, inlinedAt: !4333)
!4341 = !DILocation(line: 171, column: 45, scope: !2663, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 1022, column: 3, scope: !4323, inlinedAt: !4333)
!4343 = !DILocation(line: 172, column: 33, scope: !2663, inlinedAt: !4342)
!4344 = !DILocation(line: 172, column: 57, scope: !2663, inlinedAt: !4342)
!4345 = !DILocation(line: 176, column: 6, scope: !2663, inlinedAt: !4342)
!4346 = !DILocation(line: 176, column: 12, scope: !2663, inlinedAt: !4342)
!4347 = !DILocation(line: 177, column: 8, scope: !2679, inlinedAt: !4342)
!4348 = !DILocation(line: 177, column: 23, scope: !2681, inlinedAt: !4342)
!4349 = !DILocation(line: 177, column: 19, scope: !2679, inlinedAt: !4342)
!4350 = !DILocation(line: 178, column: 5, scope: !2679, inlinedAt: !4342)
!4351 = !DILocation(line: 179, column: 6, scope: !2663, inlinedAt: !4342)
!4352 = !DILocation(line: 179, column: 17, scope: !2663, inlinedAt: !4342)
!4353 = !DILocation(line: 180, column: 6, scope: !2663, inlinedAt: !4342)
!4354 = !DILocation(line: 180, column: 18, scope: !2663, inlinedAt: !4342)
!4355 = !DILocation(line: 1023, column: 10, scope: !4323, inlinedAt: !4333)
!4356 = !DILocation(line: 1024, column: 1, scope: !4323, inlinedAt: !4333)
!4357 = !DILocation(line: 1012, column: 3, scope: !4310)
!4358 = !DILocation(line: 1017, column: 28, scope: !4323)
!4359 = !DILocation(line: 1017, column: 43, scope: !4323)
!4360 = !DILocation(line: 1018, column: 36, scope: !4323)
!4361 = !DILocation(line: 1019, column: 36, scope: !4323)
!4362 = !DILocation(line: 1019, column: 48, scope: !4323)
!4363 = !DILocation(line: 1021, column: 3, scope: !4323)
!4364 = !DILocation(line: 1021, column: 30, scope: !4323)
!4365 = !DILocation(line: 1021, column: 26, scope: !4323)
!4366 = !DILocation(line: 171, column: 45, scope: !2663, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 1022, column: 3, scope: !4323)
!4368 = !DILocation(line: 172, column: 33, scope: !2663, inlinedAt: !4367)
!4369 = !DILocation(line: 172, column: 57, scope: !2663, inlinedAt: !4367)
!4370 = !DILocation(line: 176, column: 6, scope: !2663, inlinedAt: !4367)
!4371 = !DILocation(line: 176, column: 12, scope: !2663, inlinedAt: !4367)
!4372 = !DILocation(line: 177, column: 8, scope: !2679, inlinedAt: !4367)
!4373 = !DILocation(line: 177, column: 23, scope: !2681, inlinedAt: !4367)
!4374 = !DILocation(line: 177, column: 19, scope: !2679, inlinedAt: !4367)
!4375 = !DILocation(line: 178, column: 5, scope: !2679, inlinedAt: !4367)
!4376 = !DILocation(line: 179, column: 6, scope: !2663, inlinedAt: !4367)
!4377 = !DILocation(line: 179, column: 17, scope: !2663, inlinedAt: !4367)
!4378 = !DILocation(line: 180, column: 6, scope: !2663, inlinedAt: !4367)
!4379 = !DILocation(line: 180, column: 18, scope: !2663, inlinedAt: !4367)
!4380 = !DILocation(line: 1023, column: 10, scope: !4323)
!4381 = !DILocation(line: 1024, column: 1, scope: !4323)
!4382 = !DILocation(line: 1023, column: 3, scope: !4323)
!4383 = distinct !DISubprogram(name: "quotearg_custom", scope: !213, file: !213, line: 1027, type: !4384, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4386)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!43, !99, !99, !99}
!4386 = !{!4387, !4388, !4389}
!4387 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4383, file: !213, line: 1027, type: !99)
!4388 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4383, file: !213, line: 1027, type: !99)
!4389 = !DILocalVariable(name: "arg", arg: 3, scope: !4383, file: !213, line: 1028, type: !99)
!4390 = !DILocation(line: 1027, column: 30, scope: !4383)
!4391 = !DILocation(line: 1027, column: 54, scope: !4383)
!4392 = !DILocation(line: 1028, column: 30, scope: !4383)
!4393 = !DILocation(line: 1009, column: 24, scope: !4310, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 1030, column: 10, scope: !4383)
!4395 = !DILocation(line: 1009, column: 39, scope: !4310, inlinedAt: !4394)
!4396 = !DILocation(line: 1010, column: 32, scope: !4310, inlinedAt: !4394)
!4397 = !DILocation(line: 1010, column: 57, scope: !4310, inlinedAt: !4394)
!4398 = !DILocation(line: 1017, column: 28, scope: !4323, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 1012, column: 10, scope: !4310, inlinedAt: !4394)
!4400 = !DILocation(line: 1017, column: 43, scope: !4323, inlinedAt: !4399)
!4401 = !DILocation(line: 1018, column: 36, scope: !4323, inlinedAt: !4399)
!4402 = !DILocation(line: 1019, column: 36, scope: !4323, inlinedAt: !4399)
!4403 = !DILocation(line: 1019, column: 48, scope: !4323, inlinedAt: !4399)
!4404 = !DILocation(line: 1021, column: 3, scope: !4323, inlinedAt: !4399)
!4405 = !DILocation(line: 1021, column: 30, scope: !4323, inlinedAt: !4399)
!4406 = !DILocation(line: 1021, column: 26, scope: !4323, inlinedAt: !4399)
!4407 = !DILocation(line: 171, column: 45, scope: !2663, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 1022, column: 3, scope: !4323, inlinedAt: !4399)
!4409 = !DILocation(line: 172, column: 33, scope: !2663, inlinedAt: !4408)
!4410 = !DILocation(line: 172, column: 57, scope: !2663, inlinedAt: !4408)
!4411 = !DILocation(line: 176, column: 6, scope: !2663, inlinedAt: !4408)
!4412 = !DILocation(line: 176, column: 12, scope: !2663, inlinedAt: !4408)
!4413 = !DILocation(line: 177, column: 8, scope: !2679, inlinedAt: !4408)
!4414 = !DILocation(line: 177, column: 23, scope: !2681, inlinedAt: !4408)
!4415 = !DILocation(line: 177, column: 19, scope: !2679, inlinedAt: !4408)
!4416 = !DILocation(line: 178, column: 5, scope: !2679, inlinedAt: !4408)
!4417 = !DILocation(line: 179, column: 6, scope: !2663, inlinedAt: !4408)
!4418 = !DILocation(line: 179, column: 17, scope: !2663, inlinedAt: !4408)
!4419 = !DILocation(line: 180, column: 6, scope: !2663, inlinedAt: !4408)
!4420 = !DILocation(line: 180, column: 18, scope: !2663, inlinedAt: !4408)
!4421 = !DILocation(line: 1023, column: 10, scope: !4323, inlinedAt: !4399)
!4422 = !DILocation(line: 1024, column: 1, scope: !4323, inlinedAt: !4399)
!4423 = !DILocation(line: 1030, column: 3, scope: !4383)
!4424 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !213, file: !213, line: 1034, type: !4425, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4427)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!43, !99, !99, !99, !102}
!4427 = !{!4428, !4429, !4430, !4431}
!4428 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4424, file: !213, line: 1034, type: !99)
!4429 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4424, file: !213, line: 1034, type: !99)
!4430 = !DILocalVariable(name: "arg", arg: 3, scope: !4424, file: !213, line: 1035, type: !99)
!4431 = !DILocalVariable(name: "argsize", arg: 4, scope: !4424, file: !213, line: 1035, type: !102)
!4432 = !DILocation(line: 1034, column: 34, scope: !4424)
!4433 = !DILocation(line: 1034, column: 58, scope: !4424)
!4434 = !DILocation(line: 1035, column: 34, scope: !4424)
!4435 = !DILocation(line: 1035, column: 46, scope: !4424)
!4436 = !DILocation(line: 1017, column: 28, scope: !4323, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 1037, column: 10, scope: !4424)
!4438 = !DILocation(line: 1017, column: 43, scope: !4323, inlinedAt: !4437)
!4439 = !DILocation(line: 1018, column: 36, scope: !4323, inlinedAt: !4437)
!4440 = !DILocation(line: 1019, column: 36, scope: !4323, inlinedAt: !4437)
!4441 = !DILocation(line: 1019, column: 48, scope: !4323, inlinedAt: !4437)
!4442 = !DILocation(line: 1021, column: 3, scope: !4323, inlinedAt: !4437)
!4443 = !DILocation(line: 1021, column: 30, scope: !4323, inlinedAt: !4437)
!4444 = !DILocation(line: 1021, column: 26, scope: !4323, inlinedAt: !4437)
!4445 = !DILocation(line: 171, column: 45, scope: !2663, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 1022, column: 3, scope: !4323, inlinedAt: !4437)
!4447 = !DILocation(line: 172, column: 33, scope: !2663, inlinedAt: !4446)
!4448 = !DILocation(line: 172, column: 57, scope: !2663, inlinedAt: !4446)
!4449 = !DILocation(line: 176, column: 6, scope: !2663, inlinedAt: !4446)
!4450 = !DILocation(line: 176, column: 12, scope: !2663, inlinedAt: !4446)
!4451 = !DILocation(line: 177, column: 8, scope: !2679, inlinedAt: !4446)
!4452 = !DILocation(line: 177, column: 23, scope: !2681, inlinedAt: !4446)
!4453 = !DILocation(line: 177, column: 19, scope: !2679, inlinedAt: !4446)
!4454 = !DILocation(line: 178, column: 5, scope: !2679, inlinedAt: !4446)
!4455 = !DILocation(line: 179, column: 6, scope: !2663, inlinedAt: !4446)
!4456 = !DILocation(line: 179, column: 17, scope: !2663, inlinedAt: !4446)
!4457 = !DILocation(line: 180, column: 6, scope: !2663, inlinedAt: !4446)
!4458 = !DILocation(line: 180, column: 18, scope: !2663, inlinedAt: !4446)
!4459 = !DILocation(line: 1023, column: 10, scope: !4323, inlinedAt: !4437)
!4460 = !DILocation(line: 1024, column: 1, scope: !4323, inlinedAt: !4437)
!4461 = !DILocation(line: 1037, column: 3, scope: !4424)
!4462 = distinct !DISubprogram(name: "quote_n_mem", scope: !213, file: !213, line: 1052, type: !4463, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4465)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!99, !34, !99, !102}
!4465 = !{!4466, !4467, !4468}
!4466 = !DILocalVariable(name: "n", arg: 1, scope: !4462, file: !213, line: 1052, type: !34)
!4467 = !DILocalVariable(name: "arg", arg: 2, scope: !4462, file: !213, line: 1052, type: !99)
!4468 = !DILocalVariable(name: "argsize", arg: 3, scope: !4462, file: !213, line: 1052, type: !102)
!4469 = !DILocation(line: 1052, column: 18, scope: !4462)
!4470 = !DILocation(line: 1052, column: 33, scope: !4462)
!4471 = !DILocation(line: 1052, column: 45, scope: !4462)
!4472 = !DILocation(line: 1054, column: 10, scope: !4462)
!4473 = !DILocation(line: 1054, column: 3, scope: !4462)
!4474 = distinct !DISubprogram(name: "quote_mem", scope: !213, file: !213, line: 1058, type: !4475, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4477)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!99, !99, !102}
!4477 = !{!4478, !4479}
!4478 = !DILocalVariable(name: "arg", arg: 1, scope: !4474, file: !213, line: 1058, type: !99)
!4479 = !DILocalVariable(name: "argsize", arg: 2, scope: !4474, file: !213, line: 1058, type: !102)
!4480 = !DILocation(line: 1058, column: 24, scope: !4474)
!4481 = !DILocation(line: 1058, column: 36, scope: !4474)
!4482 = !DILocation(line: 1052, column: 18, scope: !4462, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 1060, column: 10, scope: !4474)
!4484 = !DILocation(line: 1052, column: 33, scope: !4462, inlinedAt: !4483)
!4485 = !DILocation(line: 1052, column: 45, scope: !4462, inlinedAt: !4483)
!4486 = !DILocation(line: 1054, column: 10, scope: !4462, inlinedAt: !4483)
!4487 = !DILocation(line: 1060, column: 3, scope: !4474)
!4488 = distinct !DISubprogram(name: "quote_n", scope: !213, file: !213, line: 1064, type: !4489, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!99, !34, !99}
!4491 = !{!4492, !4493}
!4492 = !DILocalVariable(name: "n", arg: 1, scope: !4488, file: !213, line: 1064, type: !34)
!4493 = !DILocalVariable(name: "arg", arg: 2, scope: !4488, file: !213, line: 1064, type: !99)
!4494 = !DILocation(line: 1064, column: 14, scope: !4488)
!4495 = !DILocation(line: 1064, column: 29, scope: !4488)
!4496 = !DILocation(line: 1052, column: 18, scope: !4462, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 1066, column: 10, scope: !4488)
!4498 = !DILocation(line: 1052, column: 33, scope: !4462, inlinedAt: !4497)
!4499 = !DILocation(line: 1052, column: 45, scope: !4462, inlinedAt: !4497)
!4500 = !DILocation(line: 1054, column: 10, scope: !4462, inlinedAt: !4497)
!4501 = !DILocation(line: 1066, column: 3, scope: !4488)
!4502 = distinct !DISubprogram(name: "quote", scope: !213, file: !213, line: 1070, type: !4503, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !185, variables: !4505)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!99, !99}
!4505 = !{!4506}
!4506 = !DILocalVariable(name: "arg", arg: 1, scope: !4502, file: !213, line: 1070, type: !99)
!4507 = !DILocation(line: 1070, column: 20, scope: !4502)
!4508 = !DILocation(line: 1064, column: 14, scope: !4488, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 1072, column: 10, scope: !4502)
!4510 = !DILocation(line: 1064, column: 29, scope: !4488, inlinedAt: !4509)
!4511 = !DILocation(line: 1052, column: 18, scope: !4462, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 1066, column: 10, scope: !4488, inlinedAt: !4509)
!4513 = !DILocation(line: 1052, column: 33, scope: !4462, inlinedAt: !4512)
!4514 = !DILocation(line: 1052, column: 45, scope: !4462, inlinedAt: !4512)
!4515 = !DILocation(line: 1054, column: 10, scope: !4462, inlinedAt: !4512)
!4516 = !DILocation(line: 1072, column: 3, scope: !4502)
!4517 = distinct !DISubprogram(name: "strintcmp", scope: !4518, file: !4518, line: 29, type: !4519, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4521)
!4518 = !DIFile(filename: "lib/strintcmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!34, !99, !99}
!4521 = !{!4522, !4523}
!4522 = !DILocalVariable(name: "a", arg: 1, scope: !4517, file: !4518, line: 29, type: !99)
!4523 = !DILocalVariable(name: "b", arg: 2, scope: !4517, file: !4518, line: 29, type: !99)
!4524 = !DILocation(line: 29, column: 24, scope: !4517)
!4525 = !DILocation(line: 29, column: 39, scope: !4517)
!4526 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4527, file: !4528, line: 115, type: !34)
!4527 = distinct !DISubprogram(name: "numcompare", scope: !4528, file: !4528, line: 114, type: !4529, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4531)
!4528 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!34, !99, !99, !34, !34}
!4531 = !{!4532, !4533, !4526, !4534, !4535, !4536, !4537, !4538, !4539}
!4532 = !DILocalVariable(name: "a", arg: 1, scope: !4527, file: !4528, line: 114, type: !99)
!4533 = !DILocalVariable(name: "b", arg: 2, scope: !4527, file: !4528, line: 114, type: !99)
!4534 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4527, file: !4528, line: 115, type: !34)
!4535 = !DILocalVariable(name: "tmpa", scope: !4527, file: !4528, line: 117, type: !108)
!4536 = !DILocalVariable(name: "tmpb", scope: !4527, file: !4528, line: 118, type: !108)
!4537 = !DILocalVariable(name: "tmp", scope: !4527, file: !4528, line: 119, type: !34)
!4538 = !DILocalVariable(name: "log_a", scope: !4527, file: !4528, line: 120, type: !102)
!4539 = !DILocalVariable(name: "log_b", scope: !4527, file: !4528, line: 121, type: !102)
!4540 = !DILocation(line: 115, column: 17, scope: !4527, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 31, column: 10, scope: !4517)
!4542 = !DILocation(line: 115, column: 36, scope: !4527, inlinedAt: !4541)
!4543 = !DILocation(line: 117, column: 24, scope: !4527, inlinedAt: !4541)
!4544 = !DILocation(line: 117, column: 17, scope: !4527, inlinedAt: !4541)
!4545 = !DILocation(line: 118, column: 24, scope: !4527, inlinedAt: !4541)
!4546 = !DILocation(line: 118, column: 17, scope: !4527, inlinedAt: !4541)
!4547 = !DILocation(line: 123, column: 12, scope: !4548, inlinedAt: !4541)
!4548 = distinct !DILexicalBlock(scope: !4527, file: !4528, line: 123, column: 7)
!4549 = !DILocation(line: 123, column: 7, scope: !4527, inlinedAt: !4541)
!4550 = distinct !{!4550, !4551, !4553}
!4551 = !DILocation(line: 125, column: 7, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4548, file: !4528, line: 124, column: 5)
!4553 = !DILocation(line: 127, column: 59, scope: !4552)
!4554 = !DILocation(line: 114, column: 25, scope: !4527, inlinedAt: !4541)
!4555 = !DILocation(line: 126, column: 17, scope: !4552, inlinedAt: !4541)
!4556 = !DILocation(line: 126, column: 16, scope: !4552, inlinedAt: !4541)
!4557 = !DILocation(line: 127, column: 19, scope: !4552, inlinedAt: !4541)
!4558 = !DILocation(line: 127, column: 35, scope: !4552, inlinedAt: !4541)
!4559 = !DILocation(line: 128, column: 16, scope: !4560, inlinedAt: !4541)
!4560 = distinct !DILexicalBlock(scope: !4552, file: !4528, line: 128, column: 11)
!4561 = !DILocation(line: 128, column: 11, scope: !4552, inlinedAt: !4541)
!4562 = distinct !{!4562, !4563, !4564}
!4563 = !DILocation(line: 144, column: 7, scope: !4552)
!4564 = !DILocation(line: 146, column: 59, scope: !4552)
!4565 = !DILocation(line: 114, column: 40, scope: !4527, inlinedAt: !4541)
!4566 = !DILocation(line: 134, column: 15, scope: !4567, inlinedAt: !4541)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !4528, line: 134, column: 15)
!4568 = distinct !DILexicalBlock(scope: !4560, file: !4528, line: 129, column: 9)
!4569 = !DILocation(line: 134, column: 15, scope: !4568, inlinedAt: !4541)
!4570 = !DILocation(line: 136, column: 23, scope: !4571, inlinedAt: !4541)
!4571 = !DILexicalBlockFile(scope: !4568, file: !4528, discriminator: 1)
!4572 = !DILocation(line: 136, column: 39, scope: !4571, inlinedAt: !4541)
!4573 = !DILocation(line: 137, column: 21, scope: !4568, inlinedAt: !4541)
!4574 = !DILocation(line: 137, column: 20, scope: !4568, inlinedAt: !4541)
!4575 = distinct !{!4575, !4576, !4577}
!4576 = !DILocation(line: 136, column: 11, scope: !4568)
!4577 = !DILocation(line: 137, column: 23, scope: !4568)
!4578 = !DILocation(line: 142, column: 20, scope: !4568, inlinedAt: !4541)
!4579 = !DILocation(line: 142, column: 18, scope: !4568, inlinedAt: !4541)
!4580 = !DILocation(line: 142, column: 11, scope: !4568, inlinedAt: !4541)
!4581 = !DILocation(line: 145, column: 17, scope: !4552, inlinedAt: !4541)
!4582 = !DILocation(line: 145, column: 16, scope: !4552, inlinedAt: !4541)
!4583 = !DILocation(line: 146, column: 19, scope: !4552, inlinedAt: !4541)
!4584 = !DILocation(line: 146, column: 35, scope: !4552, inlinedAt: !4541)
!4585 = !DILocation(line: 148, column: 14, scope: !4586, inlinedAt: !4541)
!4586 = !DILexicalBlockFile(scope: !4552, file: !4528, discriminator: 1)
!4587 = !DILocation(line: 148, column: 19, scope: !4586, inlinedAt: !4541)
!4588 = !DILocation(line: 148, column: 30, scope: !4589, inlinedAt: !4541)
!4589 = !DILexicalBlockFile(scope: !4552, file: !4528, discriminator: 2)
!4590 = !DILocation(line: 148, column: 27, scope: !4586, inlinedAt: !4541)
!4591 = distinct !{!4591, !4592, !4594}
!4592 = !DILocation(line: 150, column: 11, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4552, file: !4528, line: 149, column: 9)
!4594 = !DILocation(line: 152, column: 39, scope: !4593)
!4595 = !DILocation(line: 151, column: 21, scope: !4593, inlinedAt: !4541)
!4596 = !DILocation(line: 151, column: 20, scope: !4593, inlinedAt: !4541)
!4597 = !DILocation(line: 154, column: 21, scope: !4593, inlinedAt: !4541)
!4598 = !DILocation(line: 154, column: 20, scope: !4593, inlinedAt: !4541)
!4599 = !DILocation(line: 148, column: 22, scope: !4586, inlinedAt: !4541)
!4600 = !DILocation(line: 162, column: 18, scope: !4552, inlinedAt: !4541)
!4601 = !DILocation(line: 119, column: 7, scope: !4527, inlinedAt: !4541)
!4602 = !DILocation(line: 120, column: 10, scope: !4527, inlinedAt: !4541)
!4603 = !DILocation(line: 164, column: 23, scope: !4604, inlinedAt: !4541)
!4604 = !DILexicalBlockFile(scope: !4605, file: !4528, discriminator: 1)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !4528, line: 164, column: 7)
!4606 = distinct !DILexicalBlock(scope: !4552, file: !4528, line: 164, column: 7)
!4607 = !DILocation(line: 164, column: 7, scope: !4608, inlinedAt: !4541)
!4608 = !DILexicalBlockFile(scope: !4606, file: !4528, discriminator: 1)
!4609 = distinct !{!4609, !4610, !4611}
!4610 = !DILocation(line: 165, column: 9, scope: !4605)
!4611 = !DILocation(line: 167, column: 37, scope: !4605)
!4612 = !DILocation(line: 121, column: 10, scope: !4527, inlinedAt: !4541)
!4613 = !DILocation(line: 169, column: 23, scope: !4614, inlinedAt: !4541)
!4614 = !DILexicalBlockFile(scope: !4615, file: !4528, discriminator: 1)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !4528, line: 169, column: 7)
!4616 = distinct !DILexicalBlock(scope: !4552, file: !4528, line: 169, column: 7)
!4617 = !DILocation(line: 169, column: 7, scope: !4618, inlinedAt: !4541)
!4618 = !DILexicalBlockFile(scope: !4616, file: !4528, discriminator: 1)
!4619 = distinct !{!4619, !4620, !4621}
!4620 = !DILocation(line: 170, column: 9, scope: !4615)
!4621 = !DILocation(line: 172, column: 37, scope: !4615)
!4622 = !DILocation(line: 166, column: 19, scope: !4605, inlinedAt: !4541)
!4623 = !DILocation(line: 166, column: 18, scope: !4605, inlinedAt: !4541)
!4624 = !DILocation(line: 164, column: 39, scope: !4625, inlinedAt: !4541)
!4625 = !DILexicalBlockFile(scope: !4605, file: !4528, discriminator: 2)
!4626 = distinct !{!4626, !4627, !4628}
!4627 = !DILocation(line: 164, column: 7, scope: !4606)
!4628 = !DILocation(line: 167, column: 37, scope: !4606)
!4629 = !DILocation(line: 171, column: 19, scope: !4615, inlinedAt: !4541)
!4630 = !DILocation(line: 171, column: 18, scope: !4615, inlinedAt: !4541)
!4631 = !DILocation(line: 169, column: 39, scope: !4632, inlinedAt: !4541)
!4632 = !DILexicalBlockFile(scope: !4615, file: !4528, discriminator: 2)
!4633 = distinct !{!4633, !4634, !4635}
!4634 = !DILocation(line: 169, column: 7, scope: !4616)
!4635 = !DILocation(line: 172, column: 37, scope: !4616)
!4636 = !DILocation(line: 174, column: 17, scope: !4637, inlinedAt: !4541)
!4637 = distinct !DILexicalBlock(scope: !4552, file: !4528, line: 174, column: 11)
!4638 = !DILocation(line: 174, column: 11, scope: !4552, inlinedAt: !4541)
!4639 = !DILocation(line: 175, column: 22, scope: !4637, inlinedAt: !4541)
!4640 = !DILocation(line: 175, column: 16, scope: !4637, inlinedAt: !4541)
!4641 = !DILocation(line: 175, column: 9, scope: !4637, inlinedAt: !4541)
!4642 = !DILocation(line: 177, column: 12, scope: !4643, inlinedAt: !4541)
!4643 = distinct !DILexicalBlock(scope: !4552, file: !4528, line: 177, column: 11)
!4644 = !DILocation(line: 178, column: 9, scope: !4643, inlinedAt: !4541)
!4645 = !DILocation(line: 182, column: 17, scope: !4646, inlinedAt: !4541)
!4646 = distinct !DILexicalBlock(scope: !4548, file: !4528, line: 182, column: 12)
!4647 = !DILocation(line: 182, column: 12, scope: !4548, inlinedAt: !4541)
!4648 = distinct !{!4648, !4649, !4651}
!4649 = !DILocation(line: 184, column: 7, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4646, file: !4528, line: 183, column: 5)
!4651 = !DILocation(line: 186, column: 59, scope: !4650)
!4652 = !DILocation(line: 203, column: 19, scope: !4653, inlinedAt: !4541)
!4653 = !DILexicalBlockFile(scope: !4654, file: !4528, discriminator: 1)
!4654 = distinct !DILexicalBlock(scope: !4646, file: !4528, line: 202, column: 5)
!4655 = !DILocation(line: 203, column: 35, scope: !4653, inlinedAt: !4541)
!4656 = !DILocation(line: 204, column: 17, scope: !4654, inlinedAt: !4541)
!4657 = !DILocation(line: 185, column: 17, scope: !4650, inlinedAt: !4541)
!4658 = !DILocation(line: 185, column: 16, scope: !4650, inlinedAt: !4541)
!4659 = !DILocation(line: 186, column: 19, scope: !4650, inlinedAt: !4541)
!4660 = !DILocation(line: 186, column: 35, scope: !4650, inlinedAt: !4541)
!4661 = !DILocation(line: 191, column: 11, scope: !4662, inlinedAt: !4541)
!4662 = distinct !DILexicalBlock(scope: !4650, file: !4528, line: 191, column: 11)
!4663 = !DILocation(line: 191, column: 11, scope: !4650, inlinedAt: !4541)
!4664 = !DILocation(line: 193, column: 19, scope: !4665, inlinedAt: !4541)
!4665 = !DILexicalBlockFile(scope: !4650, file: !4528, discriminator: 1)
!4666 = !DILocation(line: 193, column: 35, scope: !4665, inlinedAt: !4541)
!4667 = !DILocation(line: 194, column: 17, scope: !4650, inlinedAt: !4541)
!4668 = !DILocation(line: 194, column: 16, scope: !4650, inlinedAt: !4541)
!4669 = distinct !{!4669, !4670, !4671}
!4670 = !DILocation(line: 193, column: 7, scope: !4650)
!4671 = !DILocation(line: 194, column: 19, scope: !4650)
!4672 = !DILocation(line: 199, column: 14, scope: !4650, inlinedAt: !4541)
!4673 = !DILocation(line: 199, column: 7, scope: !4650, inlinedAt: !4541)
!4674 = !DILocation(line: 205, column: 19, scope: !4653, inlinedAt: !4541)
!4675 = !DILocation(line: 205, column: 35, scope: !4653, inlinedAt: !4541)
!4676 = !DILocation(line: 206, column: 17, scope: !4654, inlinedAt: !4541)
!4677 = !DILocation(line: 204, column: 16, scope: !4654, inlinedAt: !4541)
!4678 = distinct !{!4678, !4679, !4680}
!4679 = !DILocation(line: 203, column: 7, scope: !4654)
!4680 = !DILocation(line: 204, column: 19, scope: !4654)
!4681 = !DILocation(line: 208, column: 14, scope: !4653, inlinedAt: !4541)
!4682 = !DILocation(line: 208, column: 19, scope: !4653, inlinedAt: !4541)
!4683 = !DILocation(line: 208, column: 30, scope: !4684, inlinedAt: !4541)
!4684 = !DILexicalBlockFile(scope: !4654, file: !4528, discriminator: 2)
!4685 = !DILocation(line: 208, column: 27, scope: !4653, inlinedAt: !4541)
!4686 = distinct !{!4686, !4687, !4689}
!4687 = !DILocation(line: 210, column: 11, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4654, file: !4528, line: 209, column: 9)
!4689 = !DILocation(line: 212, column: 39, scope: !4688)
!4690 = !DILocation(line: 206, column: 16, scope: !4654, inlinedAt: !4541)
!4691 = distinct !{!4691, !4692, !4693}
!4692 = !DILocation(line: 205, column: 7, scope: !4654)
!4693 = !DILocation(line: 206, column: 19, scope: !4654)
!4694 = !DILocation(line: 211, column: 21, scope: !4688, inlinedAt: !4541)
!4695 = !DILocation(line: 211, column: 20, scope: !4688, inlinedAt: !4541)
!4696 = !DILocation(line: 214, column: 21, scope: !4688, inlinedAt: !4541)
!4697 = !DILocation(line: 214, column: 20, scope: !4688, inlinedAt: !4541)
!4698 = !DILocation(line: 208, column: 22, scope: !4653, inlinedAt: !4541)
!4699 = !DILocation(line: 222, column: 18, scope: !4654, inlinedAt: !4541)
!4700 = !DILocation(line: 224, column: 23, scope: !4701, inlinedAt: !4541)
!4701 = !DILexicalBlockFile(scope: !4702, file: !4528, discriminator: 1)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !4528, line: 224, column: 7)
!4703 = distinct !DILexicalBlock(scope: !4654, file: !4528, line: 224, column: 7)
!4704 = !DILocation(line: 224, column: 7, scope: !4705, inlinedAt: !4541)
!4705 = !DILexicalBlockFile(scope: !4703, file: !4528, discriminator: 1)
!4706 = distinct !{!4706, !4707, !4708}
!4707 = !DILocation(line: 225, column: 9, scope: !4702)
!4708 = !DILocation(line: 227, column: 37, scope: !4702)
!4709 = !DILocation(line: 229, column: 23, scope: !4710, inlinedAt: !4541)
!4710 = !DILexicalBlockFile(scope: !4711, file: !4528, discriminator: 1)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !4528, line: 229, column: 7)
!4712 = distinct !DILexicalBlock(scope: !4654, file: !4528, line: 229, column: 7)
!4713 = !DILocation(line: 229, column: 7, scope: !4714, inlinedAt: !4541)
!4714 = !DILexicalBlockFile(scope: !4712, file: !4528, discriminator: 1)
!4715 = distinct !{!4715, !4716, !4717}
!4716 = !DILocation(line: 230, column: 9, scope: !4711)
!4717 = !DILocation(line: 232, column: 37, scope: !4711)
!4718 = !DILocation(line: 226, column: 19, scope: !4702, inlinedAt: !4541)
!4719 = !DILocation(line: 226, column: 18, scope: !4702, inlinedAt: !4541)
!4720 = !DILocation(line: 224, column: 39, scope: !4721, inlinedAt: !4541)
!4721 = !DILexicalBlockFile(scope: !4702, file: !4528, discriminator: 2)
!4722 = distinct !{!4722, !4723, !4724}
!4723 = !DILocation(line: 224, column: 7, scope: !4703)
!4724 = !DILocation(line: 227, column: 37, scope: !4703)
!4725 = !DILocation(line: 231, column: 19, scope: !4711, inlinedAt: !4541)
!4726 = !DILocation(line: 231, column: 18, scope: !4711, inlinedAt: !4541)
!4727 = !DILocation(line: 229, column: 39, scope: !4728, inlinedAt: !4541)
!4728 = !DILexicalBlockFile(scope: !4711, file: !4528, discriminator: 2)
!4729 = distinct !{!4729, !4730, !4731}
!4730 = !DILocation(line: 229, column: 7, scope: !4712)
!4731 = !DILocation(line: 232, column: 37, scope: !4712)
!4732 = !DILocation(line: 234, column: 17, scope: !4733, inlinedAt: !4541)
!4733 = distinct !DILexicalBlock(scope: !4654, file: !4528, line: 234, column: 11)
!4734 = !DILocation(line: 234, column: 11, scope: !4654, inlinedAt: !4541)
!4735 = !DILocation(line: 235, column: 22, scope: !4733, inlinedAt: !4541)
!4736 = !DILocation(line: 235, column: 16, scope: !4733, inlinedAt: !4541)
!4737 = !DILocation(line: 235, column: 9, scope: !4733, inlinedAt: !4541)
!4738 = !DILocation(line: 237, column: 12, scope: !4739, inlinedAt: !4541)
!4739 = distinct !DILexicalBlock(scope: !4654, file: !4528, line: 237, column: 11)
!4740 = !DILocation(line: 238, column: 9, scope: !4739, inlinedAt: !4541)
!4741 = !DILocation(line: 31, column: 3, scope: !4517)
!4742 = distinct !DISubprogram(name: "version_etc_arn", scope: !616, file: !616, line: 62, type: !4743, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !4797)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{null, !4745, !99, !99, !99, !4796, !102}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2490, line: 49, baseType: !4747)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4748, line: 241, size: 1728, elements: !4749)
!4748 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4749 = !{!4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4770, !4771, !4772, !4773, !4776, !4777, !4779, !4781, !4784, !4786, !4787, !4788, !4789, !4790, !4791, !4792}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4747, file: !4748, line: 242, baseType: !34, size: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4747, file: !4748, line: 247, baseType: !43, size: 64, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4747, file: !4748, line: 248, baseType: !43, size: 64, offset: 128)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4747, file: !4748, line: 249, baseType: !43, size: 64, offset: 192)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4747, file: !4748, line: 250, baseType: !43, size: 64, offset: 256)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4747, file: !4748, line: 251, baseType: !43, size: 64, offset: 320)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4747, file: !4748, line: 252, baseType: !43, size: 64, offset: 384)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4747, file: !4748, line: 253, baseType: !43, size: 64, offset: 448)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4747, file: !4748, line: 254, baseType: !43, size: 64, offset: 512)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4747, file: !4748, line: 256, baseType: !43, size: 64, offset: 576)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4747, file: !4748, line: 257, baseType: !43, size: 64, offset: 640)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4747, file: !4748, line: 258, baseType: !43, size: 64, offset: 704)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4747, file: !4748, line: 260, baseType: !4763, size: 64, offset: 768)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4748, line: 156, size: 192, elements: !4765)
!4765 = !{!4766, !4767, !4769}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4764, file: !4748, line: 157, baseType: !4763, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4764, file: !4748, line: 158, baseType: !4768, size: 64, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4764, file: !4748, line: 162, baseType: !34, size: 32, offset: 128)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4747, file: !4748, line: 262, baseType: !4768, size: 64, offset: 832)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4747, file: !4748, line: 264, baseType: !34, size: 32, offset: 896)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4747, file: !4748, line: 268, baseType: !34, size: 32, offset: 928)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4747, file: !4748, line: 270, baseType: !4774, size: 64, offset: 960)
!4774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !4775, line: 140, baseType: !2040)
!4775 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4747, file: !4748, line: 274, baseType: !209, size: 16, offset: 1024)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4747, file: !4748, line: 275, baseType: !4778, size: 8, offset: 1040)
!4778 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4747, file: !4748, line: 276, baseType: !4780, size: 8, offset: 1048)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !40)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4747, file: !4748, line: 280, baseType: !4782, size: 64, offset: 1088)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !4748, line: 150, baseType: null)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4747, file: !4748, line: 289, baseType: !4785, size: 64, offset: 1152)
!4785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !4775, line: 141, baseType: !2040)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4747, file: !4748, line: 297, baseType: !101, size: 64, offset: 1216)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4747, file: !4748, line: 298, baseType: !101, size: 64, offset: 1280)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4747, file: !4748, line: 299, baseType: !101, size: 64, offset: 1344)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4747, file: !4748, line: 300, baseType: !101, size: 64, offset: 1408)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4747, file: !4748, line: 302, baseType: !102, size: 64, offset: 1472)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4747, file: !4748, line: 303, baseType: !34, size: 32, offset: 1536)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4747, file: !4748, line: 305, baseType: !4793, size: 160, offset: 1568)
!4793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !4794)
!4794 = !{!4795}
!4795 = !DISubrange(count: 20)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!4797 = !{!4798, !4799, !4800, !4801, !4802, !4803}
!4798 = !DILocalVariable(name: "stream", arg: 1, scope: !4742, file: !616, line: 62, type: !4745)
!4799 = !DILocalVariable(name: "command_name", arg: 2, scope: !4742, file: !616, line: 63, type: !99)
!4800 = !DILocalVariable(name: "package", arg: 3, scope: !4742, file: !616, line: 63, type: !99)
!4801 = !DILocalVariable(name: "version", arg: 4, scope: !4742, file: !616, line: 64, type: !99)
!4802 = !DILocalVariable(name: "authors", arg: 5, scope: !4742, file: !616, line: 65, type: !4796)
!4803 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4742, file: !616, line: 65, type: !102)
!4804 = !DILocation(line: 62, column: 24, scope: !4742)
!4805 = !DILocation(line: 63, column: 30, scope: !4742)
!4806 = !DILocation(line: 63, column: 56, scope: !4742)
!4807 = !DILocation(line: 64, column: 30, scope: !4742)
!4808 = !DILocation(line: 65, column: 39, scope: !4742)
!4809 = !DILocation(line: 65, column: 55, scope: !4742)
!4810 = !DILocation(line: 67, column: 7, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4742, file: !616, line: 67, column: 7)
!4812 = !DILocation(line: 67, column: 7, scope: !4742)
!4813 = !DILocation(line: 68, column: 5, scope: !4811)
!4814 = !DILocation(line: 70, column: 5, scope: !4811)
!4815 = !DILocation(line: 84, column: 3, scope: !4742)
!4816 = !DILocation(line: 84, column: 3, scope: !4817)
!4817 = !DILexicalBlockFile(scope: !4742, file: !616, discriminator: 1)
!4818 = !DILocation(line: 86, column: 3, scope: !4742)
!4819 = !DILocation(line: 86, column: 3, scope: !4817)
!4820 = !DILocation(line: 95, column: 3, scope: !4742)
!4821 = !DILocation(line: 99, column: 7, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4742, file: !616, line: 96, column: 5)
!4823 = !DILocation(line: 102, column: 7, scope: !4822)
!4824 = !DILocation(line: 102, column: 7, scope: !4825)
!4825 = !DILexicalBlockFile(scope: !4822, file: !616, discriminator: 1)
!4826 = !DILocation(line: 103, column: 7, scope: !4822)
!4827 = !DILocation(line: 106, column: 7, scope: !4822)
!4828 = !DILocation(line: 106, column: 7, scope: !4825)
!4829 = !DILocation(line: 107, column: 7, scope: !4822)
!4830 = !DILocation(line: 110, column: 7, scope: !4822)
!4831 = !DILocation(line: 110, column: 7, scope: !4825)
!4832 = !DILocation(line: 112, column: 7, scope: !4822)
!4833 = !DILocation(line: 117, column: 7, scope: !4822)
!4834 = !DILocation(line: 117, column: 7, scope: !4825)
!4835 = !DILocation(line: 119, column: 7, scope: !4822)
!4836 = !DILocation(line: 124, column: 7, scope: !4822)
!4837 = !DILocation(line: 124, column: 7, scope: !4825)
!4838 = !DILocation(line: 126, column: 7, scope: !4822)
!4839 = !DILocation(line: 131, column: 7, scope: !4822)
!4840 = !DILocation(line: 131, column: 7, scope: !4825)
!4841 = !DILocation(line: 134, column: 7, scope: !4822)
!4842 = !DILocation(line: 139, column: 7, scope: !4822)
!4843 = !DILocation(line: 139, column: 7, scope: !4825)
!4844 = !DILocation(line: 142, column: 7, scope: !4822)
!4845 = !DILocation(line: 147, column: 7, scope: !4822)
!4846 = !DILocation(line: 147, column: 7, scope: !4825)
!4847 = !DILocation(line: 151, column: 7, scope: !4822)
!4848 = !DILocation(line: 156, column: 7, scope: !4822)
!4849 = !DILocation(line: 156, column: 7, scope: !4825)
!4850 = !DILocation(line: 160, column: 7, scope: !4822)
!4851 = !DILocation(line: 167, column: 7, scope: !4822)
!4852 = !DILocation(line: 167, column: 7, scope: !4825)
!4853 = !DILocation(line: 171, column: 7, scope: !4822)
!4854 = !DILocation(line: 173, column: 1, scope: !4742)
!4855 = distinct !DISubprogram(name: "version_etc_ar", scope: !616, file: !616, line: 180, type: !4856, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !4858)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !4745, !99, !99, !99, !4796}
!4858 = !{!4859, !4860, !4861, !4862, !4863, !4864}
!4859 = !DILocalVariable(name: "stream", arg: 1, scope: !4855, file: !616, line: 180, type: !4745)
!4860 = !DILocalVariable(name: "command_name", arg: 2, scope: !4855, file: !616, line: 181, type: !99)
!4861 = !DILocalVariable(name: "package", arg: 3, scope: !4855, file: !616, line: 181, type: !99)
!4862 = !DILocalVariable(name: "version", arg: 4, scope: !4855, file: !616, line: 182, type: !99)
!4863 = !DILocalVariable(name: "authors", arg: 5, scope: !4855, file: !616, line: 182, type: !4796)
!4864 = !DILocalVariable(name: "n_authors", scope: !4855, file: !616, line: 184, type: !102)
!4865 = !DILocation(line: 180, column: 23, scope: !4855)
!4866 = !DILocation(line: 181, column: 29, scope: !4855)
!4867 = !DILocation(line: 181, column: 55, scope: !4855)
!4868 = !DILocation(line: 182, column: 29, scope: !4855)
!4869 = !DILocation(line: 182, column: 59, scope: !4855)
!4870 = !DILocation(line: 184, column: 10, scope: !4855)
!4871 = !DILocation(line: 186, column: 8, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4855, file: !616, line: 186, column: 3)
!4873 = !DILocation(line: 186, column: 23, scope: !4874)
!4874 = !DILexicalBlockFile(scope: !4875, file: !616, discriminator: 1)
!4875 = distinct !DILexicalBlock(scope: !4872, file: !616, line: 186, column: 3)
!4876 = !DILocation(line: 186, column: 3, scope: !4877)
!4877 = !DILexicalBlockFile(scope: !4872, file: !616, discriminator: 1)
!4878 = !DILocation(line: 186, column: 52, scope: !4879)
!4879 = !DILexicalBlockFile(scope: !4875, file: !616, discriminator: 3)
!4880 = distinct !{!4880, !4881, !4882}
!4881 = !DILocation(line: 186, column: 3, scope: !4872)
!4882 = !DILocation(line: 187, column: 5, scope: !4872)
!4883 = !DILocation(line: 188, column: 3, scope: !4855)
!4884 = !DILocation(line: 189, column: 1, scope: !4855)
!4885 = distinct !DISubprogram(name: "version_etc_va", scope: !616, file: !616, line: 196, type: !4886, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !4895)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{null, !4745, !99, !99, !99, !4888}
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !613, line: 189, size: 192, elements: !4890)
!4890 = !{!4891, !4892, !4893, !4894}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4889, file: !613, line: 189, baseType: !109, size: 32)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4889, file: !613, line: 189, baseType: !109, size: 32, offset: 32)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4889, file: !613, line: 189, baseType: !101, size: 64, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4889, file: !613, line: 189, baseType: !101, size: 64, offset: 128)
!4895 = !{!4896, !4897, !4898, !4899, !4900, !4901, !4902}
!4896 = !DILocalVariable(name: "stream", arg: 1, scope: !4885, file: !616, line: 196, type: !4745)
!4897 = !DILocalVariable(name: "command_name", arg: 2, scope: !4885, file: !616, line: 197, type: !99)
!4898 = !DILocalVariable(name: "package", arg: 3, scope: !4885, file: !616, line: 197, type: !99)
!4899 = !DILocalVariable(name: "version", arg: 4, scope: !4885, file: !616, line: 198, type: !99)
!4900 = !DILocalVariable(name: "authors", arg: 5, scope: !4885, file: !616, line: 198, type: !4888)
!4901 = !DILocalVariable(name: "n_authors", scope: !4885, file: !616, line: 200, type: !102)
!4902 = !DILocalVariable(name: "authtab", scope: !4885, file: !616, line: 201, type: !4903)
!4903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 640, elements: !216)
!4904 = !DILocation(line: 196, column: 23, scope: !4885)
!4905 = !DILocation(line: 197, column: 29, scope: !4885)
!4906 = !DILocation(line: 197, column: 55, scope: !4885)
!4907 = !DILocation(line: 198, column: 29, scope: !4885)
!4908 = !DILocation(line: 198, column: 46, scope: !4885)
!4909 = !DILocation(line: 201, column: 3, scope: !4885)
!4910 = !DILocation(line: 201, column: 15, scope: !4885)
!4911 = !DILocation(line: 200, column: 10, scope: !4885)
!4912 = !DILocation(line: 205, column: 35, scope: !4913)
!4913 = !DILexicalBlockFile(scope: !4914, file: !616, discriminator: 1)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !616, line: 203, column: 3)
!4915 = distinct !DILexicalBlock(scope: !4885, file: !616, line: 203, column: 3)
!4916 = !DILocation(line: 205, column: 35, scope: !4917)
!4917 = !DILexicalBlockFile(scope: !4914, file: !616, discriminator: 2)
!4918 = !DILocation(line: 205, column: 35, scope: !4919)
!4919 = !DILexicalBlockFile(scope: !4914, file: !616, discriminator: 3)
!4920 = !DILocation(line: 205, column: 35, scope: !4921)
!4921 = !DILexicalBlockFile(scope: !4914, file: !616, discriminator: 4)
!4922 = !DILocation(line: 205, column: 14, scope: !4921)
!4923 = !DILocation(line: 205, column: 33, scope: !4921)
!4924 = !DILocation(line: 205, column: 67, scope: !4921)
!4925 = !DILocation(line: 203, column: 3, scope: !4926)
!4926 = !DILexicalBlockFile(scope: !4915, file: !616, discriminator: 1)
!4927 = !DILocation(line: 208, column: 3, scope: !4885)
!4928 = !DILocation(line: 210, column: 1, scope: !4885)
!4929 = distinct !DISubprogram(name: "version_etc", scope: !616, file: !616, line: 227, type: !4930, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !4932)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{null, !4745, !99, !99, !99, null}
!4932 = !{!4933, !4934, !4935, !4936, !4937}
!4933 = !DILocalVariable(name: "stream", arg: 1, scope: !4929, file: !616, line: 227, type: !4745)
!4934 = !DILocalVariable(name: "command_name", arg: 2, scope: !4929, file: !616, line: 228, type: !99)
!4935 = !DILocalVariable(name: "package", arg: 3, scope: !4929, file: !616, line: 228, type: !99)
!4936 = !DILocalVariable(name: "version", arg: 4, scope: !4929, file: !616, line: 229, type: !99)
!4937 = !DILocalVariable(name: "authors", scope: !4929, file: !616, line: 231, type: !4938)
!4938 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2490, line: 80, baseType: !4939)
!4939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2492, line: 50, baseType: !4940)
!4940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !613, line: 231, baseType: !4941)
!4941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4889, size: 192, elements: !40)
!4942 = !DILocation(line: 227, column: 20, scope: !4929)
!4943 = !DILocation(line: 228, column: 26, scope: !4929)
!4944 = !DILocation(line: 228, column: 52, scope: !4929)
!4945 = !DILocation(line: 229, column: 26, scope: !4929)
!4946 = !DILocation(line: 231, column: 3, scope: !4929)
!4947 = !DILocation(line: 231, column: 11, scope: !4929)
!4948 = !DILocation(line: 233, column: 3, scope: !4929)
!4949 = !DILocation(line: 234, column: 3, scope: !4929)
!4950 = !DILocation(line: 235, column: 3, scope: !4929)
!4951 = !DILocation(line: 236, column: 1, scope: !4929)
!4952 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !616, file: !616, line: 239, type: !1066, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !146)
!4953 = !DILocation(line: 245, column: 3, scope: !4952)
!4954 = !DILocation(line: 245, column: 3, scope: !4955)
!4955 = !DILexicalBlockFile(scope: !4952, file: !616, discriminator: 1)
!4956 = !DILocation(line: 251, column: 3, scope: !4952)
!4957 = !DILocation(line: 251, column: 3, scope: !4955)
!4958 = !DILocation(line: 256, column: 3, scope: !4952)
!4959 = !DILocation(line: 256, column: 3, scope: !4955)
!4960 = !DILocation(line: 258, column: 1, scope: !4952)
!4961 = distinct !DISubprogram(name: "xnmalloc", scope: !624, file: !624, line: 105, type: !4962, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4964)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!101, !102, !102}
!4964 = !{!4965, !4966}
!4965 = !DILocalVariable(name: "n", arg: 1, scope: !4961, file: !624, line: 105, type: !102)
!4966 = !DILocalVariable(name: "s", arg: 2, scope: !4961, file: !624, line: 105, type: !102)
!4967 = !DILocation(line: 105, column: 18, scope: !4961)
!4968 = !DILocation(line: 105, column: 28, scope: !4961)
!4969 = !DILocation(line: 107, column: 7, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4961, file: !624, line: 107, column: 7)
!4971 = !DILocation(line: 107, column: 7, scope: !4961)
!4972 = !DILocation(line: 108, column: 5, scope: !4970)
!4973 = !DILocation(line: 109, column: 21, scope: !4961)
!4974 = !DILocalVariable(name: "n", arg: 1, scope: !4975, file: !4976, line: 39, type: !102)
!4975 = distinct !DISubprogram(name: "xmalloc", scope: !4976, file: !4976, line: 39, type: !4977, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4979)
!4976 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!101, !102}
!4979 = !{!4974, !4980}
!4980 = !DILocalVariable(name: "p", scope: !4975, file: !4976, line: 41, type: !101)
!4981 = !DILocation(line: 39, column: 17, scope: !4975, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 109, column: 10, scope: !4961)
!4983 = !DILocation(line: 41, column: 13, scope: !4975, inlinedAt: !4982)
!4984 = !DILocation(line: 41, column: 9, scope: !4975, inlinedAt: !4982)
!4985 = !DILocation(line: 42, column: 8, scope: !4986, inlinedAt: !4982)
!4986 = distinct !DILexicalBlock(scope: !4975, file: !4976, line: 42, column: 7)
!4987 = !DILocation(line: 42, column: 15, scope: !4988, inlinedAt: !4982)
!4988 = !DILexicalBlockFile(scope: !4986, file: !4976, discriminator: 1)
!4989 = !DILocation(line: 42, column: 10, scope: !4986, inlinedAt: !4982)
!4990 = !DILocation(line: 43, column: 5, scope: !4986, inlinedAt: !4982)
!4991 = !DILocation(line: 109, column: 3, scope: !4961)
!4992 = !DILocation(line: 39, column: 17, scope: !4975)
!4993 = !DILocation(line: 41, column: 13, scope: !4975)
!4994 = !DILocation(line: 41, column: 9, scope: !4975)
!4995 = !DILocation(line: 42, column: 8, scope: !4986)
!4996 = !DILocation(line: 42, column: 15, scope: !4988)
!4997 = !DILocation(line: 42, column: 10, scope: !4986)
!4998 = !DILocation(line: 43, column: 5, scope: !4986)
!4999 = !DILocation(line: 44, column: 3, scope: !4975)
!5000 = distinct !DISubprogram(name: "xnrealloc", scope: !624, file: !624, line: 118, type: !5001, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !5003)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!101, !101, !102, !102}
!5003 = !{!5004, !5005, !5006}
!5004 = !DILocalVariable(name: "p", arg: 1, scope: !5000, file: !624, line: 118, type: !101)
!5005 = !DILocalVariable(name: "n", arg: 2, scope: !5000, file: !624, line: 118, type: !102)
!5006 = !DILocalVariable(name: "s", arg: 3, scope: !5000, file: !624, line: 118, type: !102)
!5007 = !DILocation(line: 118, column: 18, scope: !5000)
!5008 = !DILocation(line: 118, column: 28, scope: !5000)
!5009 = !DILocation(line: 118, column: 38, scope: !5000)
!5010 = !DILocation(line: 120, column: 7, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5000, file: !624, line: 120, column: 7)
!5012 = !DILocation(line: 120, column: 7, scope: !5000)
!5013 = !DILocation(line: 121, column: 5, scope: !5011)
!5014 = !DILocation(line: 122, column: 25, scope: !5000)
!5015 = !DILocalVariable(name: "p", arg: 1, scope: !5016, file: !4976, line: 51, type: !101)
!5016 = distinct !DISubprogram(name: "xrealloc", scope: !4976, file: !4976, line: 51, type: !5017, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !5019)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!101, !101, !102}
!5019 = !{!5015, !5020}
!5020 = !DILocalVariable(name: "n", arg: 2, scope: !5016, file: !4976, line: 51, type: !102)
!5021 = !DILocation(line: 51, column: 17, scope: !5016, inlinedAt: !5022)
!5022 = distinct !DILocation(line: 122, column: 10, scope: !5000)
!5023 = !DILocation(line: 51, column: 27, scope: !5016, inlinedAt: !5022)
!5024 = !DILocation(line: 53, column: 8, scope: !5025, inlinedAt: !5022)
!5025 = distinct !DILexicalBlock(scope: !5016, file: !4976, line: 53, column: 7)
!5026 = !DILocation(line: 53, column: 13, scope: !5027, inlinedAt: !5022)
!5027 = !DILexicalBlockFile(scope: !5025, file: !4976, discriminator: 1)
!5028 = !DILocation(line: 53, column: 10, scope: !5025, inlinedAt: !5022)
!5029 = !DILocation(line: 57, column: 7, scope: !5030, inlinedAt: !5022)
!5030 = distinct !DILexicalBlock(scope: !5025, file: !4976, line: 54, column: 5)
!5031 = !DILocation(line: 58, column: 7, scope: !5030, inlinedAt: !5022)
!5032 = !DILocation(line: 61, column: 7, scope: !5016, inlinedAt: !5022)
!5033 = !DILocation(line: 62, column: 8, scope: !5034, inlinedAt: !5022)
!5034 = distinct !DILexicalBlock(scope: !5016, file: !4976, line: 62, column: 7)
!5035 = !DILocation(line: 62, column: 13, scope: !5036, inlinedAt: !5022)
!5036 = !DILexicalBlockFile(scope: !5034, file: !4976, discriminator: 1)
!5037 = !DILocation(line: 62, column: 10, scope: !5034, inlinedAt: !5022)
!5038 = !DILocation(line: 63, column: 5, scope: !5034, inlinedAt: !5022)
!5039 = !DILocation(line: 122, column: 3, scope: !5000)
!5040 = !DILocation(line: 51, column: 17, scope: !5016)
!5041 = !DILocation(line: 51, column: 27, scope: !5016)
!5042 = !DILocation(line: 53, column: 8, scope: !5025)
!5043 = !DILocation(line: 53, column: 13, scope: !5027)
!5044 = !DILocation(line: 53, column: 10, scope: !5025)
!5045 = !DILocation(line: 57, column: 7, scope: !5030)
!5046 = !DILocation(line: 58, column: 7, scope: !5030)
!5047 = !DILocation(line: 61, column: 7, scope: !5016)
!5048 = !DILocation(line: 62, column: 8, scope: !5034)
!5049 = !DILocation(line: 62, column: 13, scope: !5036)
!5050 = !DILocation(line: 62, column: 10, scope: !5034)
!5051 = !DILocation(line: 63, column: 5, scope: !5034)
!5052 = !DILocation(line: 65, column: 1, scope: !5016)
!5053 = !DILocation(line: 180, column: 19, scope: !625)
!5054 = !DILocation(line: 180, column: 30, scope: !625)
!5055 = !DILocation(line: 180, column: 41, scope: !625)
!5056 = !DILocation(line: 182, column: 14, scope: !625)
!5057 = !DILocation(line: 182, column: 10, scope: !625)
!5058 = !DILocation(line: 184, column: 9, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !625, file: !624, line: 184, column: 7)
!5060 = !DILocation(line: 184, column: 7, scope: !625)
!5061 = !DILocation(line: 186, column: 13, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !624, line: 186, column: 11)
!5063 = distinct !DILexicalBlock(scope: !5059, file: !624, line: 185, column: 5)
!5064 = !DILocation(line: 186, column: 11, scope: !5063)
!5065 = !DILocation(line: 194, column: 30, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5062, file: !624, line: 187, column: 9)
!5067 = !DILocation(line: 195, column: 16, scope: !5066)
!5068 = !DILocation(line: 195, column: 13, scope: !5066)
!5069 = !DILocation(line: 196, column: 9, scope: !5066)
!5070 = !DILocation(line: 204, column: 69, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5072, file: !624, line: 204, column: 11)
!5072 = distinct !DILexicalBlock(scope: !5059, file: !624, line: 199, column: 5)
!5073 = !DILocation(line: 205, column: 11, scope: !5071)
!5074 = !DILocation(line: 204, column: 11, scope: !5072)
!5075 = !DILocation(line: 206, column: 9, scope: !5071)
!5076 = !DILocation(line: 210, column: 7, scope: !625)
!5077 = !DILocation(line: 211, column: 25, scope: !625)
!5078 = !DILocation(line: 51, column: 17, scope: !5016, inlinedAt: !5079)
!5079 = distinct !DILocation(line: 211, column: 10, scope: !625)
!5080 = !DILocation(line: 51, column: 27, scope: !5016, inlinedAt: !5079)
!5081 = !DILocation(line: 53, column: 10, scope: !5025, inlinedAt: !5079)
!5082 = !DILocation(line: 207, column: 14, scope: !5072)
!5083 = !DILocation(line: 207, column: 18, scope: !5072)
!5084 = !DILocation(line: 207, column: 9, scope: !5072)
!5085 = !DILocation(line: 53, column: 8, scope: !5025, inlinedAt: !5079)
!5086 = !DILocation(line: 57, column: 7, scope: !5030, inlinedAt: !5079)
!5087 = !DILocation(line: 58, column: 7, scope: !5030, inlinedAt: !5079)
!5088 = !DILocation(line: 61, column: 7, scope: !5016, inlinedAt: !5079)
!5089 = !DILocation(line: 62, column: 8, scope: !5034, inlinedAt: !5079)
!5090 = !DILocation(line: 62, column: 13, scope: !5036, inlinedAt: !5079)
!5091 = !DILocation(line: 62, column: 10, scope: !5034, inlinedAt: !5079)
!5092 = !DILocation(line: 63, column: 5, scope: !5034, inlinedAt: !5079)
!5093 = !DILocation(line: 211, column: 3, scope: !625)
!5094 = distinct !DISubprogram(name: "xcharalloc", scope: !624, file: !624, line: 220, type: !3791, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !5095)
!5095 = !{!5096}
!5096 = !DILocalVariable(name: "n", arg: 1, scope: !5094, file: !624, line: 220, type: !102)
!5097 = !DILocation(line: 220, column: 20, scope: !5094)
!5098 = !DILocation(line: 39, column: 17, scope: !4975, inlinedAt: !5099)
!5099 = distinct !DILocation(line: 222, column: 10, scope: !5094)
!5100 = !DILocation(line: 41, column: 13, scope: !4975, inlinedAt: !5099)
!5101 = !DILocation(line: 41, column: 9, scope: !4975, inlinedAt: !5099)
!5102 = !DILocation(line: 42, column: 8, scope: !4986, inlinedAt: !5099)
!5103 = !DILocation(line: 42, column: 15, scope: !4988, inlinedAt: !5099)
!5104 = !DILocation(line: 42, column: 10, scope: !4986, inlinedAt: !5099)
!5105 = !DILocation(line: 43, column: 5, scope: !4986, inlinedAt: !5099)
!5106 = !DILocation(line: 222, column: 3, scope: !5094)
!5107 = distinct !DISubprogram(name: "x2realloc", scope: !4976, file: !4976, line: 74, type: !5108, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !5110)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!101, !101, !628}
!5110 = !{!5111, !5112}
!5111 = !DILocalVariable(name: "p", arg: 1, scope: !5107, file: !4976, line: 74, type: !101)
!5112 = !DILocalVariable(name: "pn", arg: 2, scope: !5107, file: !4976, line: 74, type: !628)
!5113 = !DILocation(line: 74, column: 18, scope: !5107)
!5114 = !DILocation(line: 74, column: 29, scope: !5107)
!5115 = !DILocation(line: 180, column: 19, scope: !625, inlinedAt: !5116)
!5116 = distinct !DILocation(line: 76, column: 10, scope: !5107)
!5117 = !DILocation(line: 180, column: 30, scope: !625, inlinedAt: !5116)
!5118 = !DILocation(line: 180, column: 41, scope: !625, inlinedAt: !5116)
!5119 = !DILocation(line: 182, column: 14, scope: !625, inlinedAt: !5116)
!5120 = !DILocation(line: 182, column: 10, scope: !625, inlinedAt: !5116)
!5121 = !DILocation(line: 184, column: 9, scope: !5059, inlinedAt: !5116)
!5122 = !DILocation(line: 184, column: 7, scope: !625, inlinedAt: !5116)
!5123 = !DILocation(line: 186, column: 13, scope: !5062, inlinedAt: !5116)
!5124 = !DILocation(line: 186, column: 11, scope: !5063, inlinedAt: !5116)
!5125 = !DILocation(line: 210, column: 7, scope: !625, inlinedAt: !5116)
!5126 = !DILocation(line: 51, column: 17, scope: !5016, inlinedAt: !5127)
!5127 = distinct !DILocation(line: 211, column: 10, scope: !625, inlinedAt: !5116)
!5128 = !DILocation(line: 51, column: 27, scope: !5016, inlinedAt: !5127)
!5129 = !DILocation(line: 53, column: 10, scope: !5025, inlinedAt: !5127)
!5130 = !DILocation(line: 205, column: 11, scope: !5071, inlinedAt: !5116)
!5131 = !DILocation(line: 204, column: 11, scope: !5072, inlinedAt: !5116)
!5132 = !DILocation(line: 206, column: 9, scope: !5071, inlinedAt: !5116)
!5133 = !DILocation(line: 207, column: 14, scope: !5072, inlinedAt: !5116)
!5134 = !DILocation(line: 207, column: 18, scope: !5072, inlinedAt: !5116)
!5135 = !DILocation(line: 207, column: 9, scope: !5072, inlinedAt: !5116)
!5136 = !DILocation(line: 53, column: 8, scope: !5025, inlinedAt: !5127)
!5137 = !DILocation(line: 57, column: 7, scope: !5030, inlinedAt: !5127)
!5138 = !DILocation(line: 58, column: 7, scope: !5030, inlinedAt: !5127)
!5139 = !DILocation(line: 61, column: 7, scope: !5016, inlinedAt: !5127)
!5140 = !DILocation(line: 62, column: 8, scope: !5034, inlinedAt: !5127)
!5141 = !DILocation(line: 62, column: 13, scope: !5036, inlinedAt: !5127)
!5142 = !DILocation(line: 62, column: 10, scope: !5034, inlinedAt: !5127)
!5143 = !DILocation(line: 63, column: 5, scope: !5034, inlinedAt: !5127)
!5144 = !DILocation(line: 76, column: 3, scope: !5107)
!5145 = distinct !DISubprogram(name: "xzalloc", scope: !4976, file: !4976, line: 84, type: !4977, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !5146)
!5146 = !{!5147}
!5147 = !DILocalVariable(name: "s", arg: 1, scope: !5145, file: !4976, line: 84, type: !102)
!5148 = !DILocation(line: 84, column: 17, scope: !5145)
!5149 = !DILocation(line: 39, column: 17, scope: !4975, inlinedAt: !5150)
!5150 = distinct !DILocation(line: 86, column: 18, scope: !5145)
!5151 = !DILocation(line: 41, column: 13, scope: !4975, inlinedAt: !5150)
!5152 = !DILocation(line: 41, column: 9, scope: !4975, inlinedAt: !5150)
!5153 = !DILocation(line: 42, column: 8, scope: !4986, inlinedAt: !5150)
!5154 = !DILocation(line: 42, column: 15, scope: !4988, inlinedAt: !5150)
!5155 = !DILocation(line: 42, column: 10, scope: !4986, inlinedAt: !5150)
!5156 = !DILocation(line: 43, column: 5, scope: !4986, inlinedAt: !5150)
!5157 = !DILocation(line: 86, column: 10, scope: !5145)
!5158 = !DILocation(line: 86, column: 3, scope: !5145)
!5159 = distinct !DISubprogram(name: "xcalloc", scope: !4976, file: !4976, line: 93, type: !4962, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !5160)
!5160 = !{!5161, !5162, !5163}
!5161 = !DILocalVariable(name: "n", arg: 1, scope: !5159, file: !4976, line: 93, type: !102)
!5162 = !DILocalVariable(name: "s", arg: 2, scope: !5159, file: !4976, line: 93, type: !102)
!5163 = !DILocalVariable(name: "p", scope: !5159, file: !4976, line: 95, type: !101)
!5164 = !DILocation(line: 93, column: 17, scope: !5159)
!5165 = !DILocation(line: 93, column: 27, scope: !5159)
!5166 = !DILocation(line: 100, column: 7, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5159, file: !4976, line: 100, column: 7)
!5168 = !DILocation(line: 101, column: 7, scope: !5167)
!5169 = !DILocation(line: 101, column: 18, scope: !5170)
!5170 = !DILexicalBlockFile(scope: !5167, file: !4976, discriminator: 1)
!5171 = !DILocation(line: 95, column: 9, scope: !5159)
!5172 = !DILocation(line: 101, column: 16, scope: !5170)
!5173 = !DILocation(line: 100, column: 7, scope: !5174)
!5174 = !DILexicalBlockFile(scope: !5159, file: !4976, discriminator: 1)
!5175 = !DILocation(line: 102, column: 5, scope: !5167)
!5176 = !DILocation(line: 103, column: 3, scope: !5159)
!5177 = distinct !DISubprogram(name: "xmemdup", scope: !4976, file: !4976, line: 111, type: !5178, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !5180)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!101, !104, !102}
!5180 = !{!5181, !5182}
!5181 = !DILocalVariable(name: "p", arg: 1, scope: !5177, file: !4976, line: 111, type: !104)
!5182 = !DILocalVariable(name: "s", arg: 2, scope: !5177, file: !4976, line: 111, type: !102)
!5183 = !DILocation(line: 111, column: 22, scope: !5177)
!5184 = !DILocation(line: 111, column: 32, scope: !5177)
!5185 = !DILocation(line: 39, column: 17, scope: !4975, inlinedAt: !5186)
!5186 = distinct !DILocation(line: 113, column: 18, scope: !5177)
!5187 = !DILocation(line: 41, column: 13, scope: !4975, inlinedAt: !5186)
!5188 = !DILocation(line: 41, column: 9, scope: !4975, inlinedAt: !5186)
!5189 = !DILocation(line: 42, column: 8, scope: !4986, inlinedAt: !5186)
!5190 = !DILocation(line: 42, column: 15, scope: !4988, inlinedAt: !5186)
!5191 = !DILocation(line: 42, column: 10, scope: !4986, inlinedAt: !5186)
!5192 = !DILocation(line: 43, column: 5, scope: !4986, inlinedAt: !5186)
!5193 = !DILocation(line: 113, column: 10, scope: !5177)
!5194 = !DILocation(line: 113, column: 3, scope: !5177)
!5195 = distinct !DISubprogram(name: "xstrdup", scope: !4976, file: !4976, line: 119, type: !3996, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !5196)
!5196 = !{!5197}
!5197 = !DILocalVariable(name: "string", arg: 1, scope: !5195, file: !4976, line: 119, type: !99)
!5198 = !DILocation(line: 119, column: 22, scope: !5195)
!5199 = !DILocation(line: 121, column: 27, scope: !5195)
!5200 = !DILocation(line: 121, column: 43, scope: !5195)
!5201 = !DILocation(line: 111, column: 22, scope: !5177, inlinedAt: !5202)
!5202 = distinct !DILocation(line: 121, column: 10, scope: !5203)
!5203 = !DILexicalBlockFile(scope: !5195, file: !4976, discriminator: 1)
!5204 = !DILocation(line: 111, column: 32, scope: !5177, inlinedAt: !5202)
!5205 = !DILocation(line: 39, column: 17, scope: !4975, inlinedAt: !5206)
!5206 = distinct !DILocation(line: 113, column: 18, scope: !5177, inlinedAt: !5202)
!5207 = !DILocation(line: 41, column: 13, scope: !4975, inlinedAt: !5206)
!5208 = !DILocation(line: 41, column: 9, scope: !4975, inlinedAt: !5206)
!5209 = !DILocation(line: 42, column: 8, scope: !4986, inlinedAt: !5206)
!5210 = !DILocation(line: 42, column: 15, scope: !4988, inlinedAt: !5206)
!5211 = !DILocation(line: 42, column: 10, scope: !4986, inlinedAt: !5206)
!5212 = !DILocation(line: 43, column: 5, scope: !4986, inlinedAt: !5206)
!5213 = !DILocation(line: 113, column: 10, scope: !5177, inlinedAt: !5202)
!5214 = !DILocation(line: 121, column: 3, scope: !5195)
!5215 = distinct !DISubprogram(name: "xalloc_die", scope: !5216, file: !5216, line: 32, type: !1066, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !637, variables: !146)
!5216 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5217 = !DILocation(line: 34, column: 10, scope: !5215)
!5218 = !DILocation(line: 34, column: 33, scope: !5215)
!5219 = !DILocation(line: 34, column: 3, scope: !5220)
!5220 = !DILexicalBlockFile(scope: !5215, file: !5216, discriminator: 1)
!5221 = !DILocation(line: 40, column: 3, scope: !5215)
!5222 = distinct !DISubprogram(name: "rpl_calloc", scope: !5223, file: !5223, line: 42, type: !4962, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5224)
!5223 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5224 = !{!5225, !5226, !5227, !5228}
!5225 = !DILocalVariable(name: "n", arg: 1, scope: !5222, file: !5223, line: 42, type: !102)
!5226 = !DILocalVariable(name: "s", arg: 2, scope: !5222, file: !5223, line: 42, type: !102)
!5227 = !DILocalVariable(name: "result", scope: !5222, file: !5223, line: 44, type: !101)
!5228 = !DILocalVariable(name: "bytes", scope: !5229, file: !5223, line: 56, type: !102)
!5229 = distinct !DILexicalBlock(scope: !5230, file: !5223, line: 53, column: 5)
!5230 = distinct !DILexicalBlock(scope: !5222, file: !5223, line: 47, column: 7)
!5231 = !DILocation(line: 42, column: 20, scope: !5222)
!5232 = !DILocation(line: 42, column: 30, scope: !5222)
!5233 = !DILocation(line: 47, column: 9, scope: !5230)
!5234 = !DILocation(line: 47, column: 19, scope: !5235)
!5235 = !DILexicalBlockFile(scope: !5230, file: !5223, discriminator: 1)
!5236 = !DILocation(line: 47, column: 14, scope: !5230)
!5237 = !DILocation(line: 56, column: 24, scope: !5229)
!5238 = !DILocation(line: 56, column: 14, scope: !5229)
!5239 = !DILocation(line: 57, column: 17, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5229, file: !5223, line: 57, column: 11)
!5241 = !DILocation(line: 57, column: 21, scope: !5240)
!5242 = !DILocation(line: 57, column: 11, scope: !5229)
!5243 = !DILocation(line: 59, column: 11, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5240, file: !5223, line: 58, column: 9)
!5245 = !DILocation(line: 59, column: 17, scope: !5244)
!5246 = !DILocation(line: 65, column: 12, scope: !5222)
!5247 = !DILocation(line: 44, column: 9, scope: !5222)
!5248 = !DILocation(line: 72, column: 3, scope: !5222)
!5249 = !DILocation(line: 73, column: 1, scope: !5222)
!5250 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5251, file: !5251, line: 334, type: !5252, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !5266)
!5251 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5252 = !DISubroutineType(types: !5253)
!5253 = !{!102, !5254, !99, !102, !5255}
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2763, line: 107, baseType: !5257)
!5257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2763, line: 95, baseType: !5258)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2763, line: 83, size: 64, elements: !5259)
!5259 = !{!5260, !5261}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5258, file: !2763, line: 85, baseType: !34, size: 32)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5258, file: !2763, line: 94, baseType: !5262, size: 32, offset: 32)
!5262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5258, file: !2763, line: 86, size: 32, elements: !5263)
!5263 = !{!5264, !5265}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5262, file: !2763, line: 89, baseType: !109, size: 32)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5262, file: !2763, line: 93, baseType: !2773, size: 32)
!5266 = !{!5267, !5268, !5269, !5270, !5271, !5272, !5273}
!5267 = !DILocalVariable(name: "pwc", arg: 1, scope: !5250, file: !5251, line: 334, type: !5254)
!5268 = !DILocalVariable(name: "s", arg: 2, scope: !5250, file: !5251, line: 334, type: !99)
!5269 = !DILocalVariable(name: "n", arg: 3, scope: !5250, file: !5251, line: 334, type: !102)
!5270 = !DILocalVariable(name: "ps", arg: 4, scope: !5250, file: !5251, line: 334, type: !5255)
!5271 = !DILocalVariable(name: "ret", scope: !5250, file: !5251, line: 336, type: !102)
!5272 = !DILocalVariable(name: "wc", scope: !5250, file: !5251, line: 337, type: !2778)
!5273 = !DILocalVariable(name: "uc", scope: !5274, file: !5251, line: 398, type: !108)
!5274 = distinct !DILexicalBlock(scope: !5275, file: !5251, line: 397, column: 5)
!5275 = distinct !DILexicalBlock(scope: !5250, file: !5251, line: 396, column: 7)
!5276 = !DILocation(line: 334, column: 23, scope: !5250)
!5277 = !DILocation(line: 334, column: 40, scope: !5250)
!5278 = !DILocation(line: 334, column: 50, scope: !5250)
!5279 = !DILocation(line: 334, column: 64, scope: !5250)
!5280 = !DILocation(line: 337, column: 3, scope: !5250)
!5281 = !DILocation(line: 353, column: 9, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5250, file: !5251, line: 353, column: 7)
!5283 = !DILocation(line: 353, column: 7, scope: !5250)
!5284 = !DILocation(line: 388, column: 9, scope: !5250)
!5285 = !DILocation(line: 336, column: 10, scope: !5250)
!5286 = !DILocation(line: 396, column: 19, scope: !5275)
!5287 = !DILocation(line: 396, column: 31, scope: !5288)
!5288 = !DILexicalBlockFile(scope: !5275, file: !5251, discriminator: 1)
!5289 = !DILocation(line: 396, column: 26, scope: !5275)
!5290 = !DILocation(line: 396, column: 41, scope: !5291)
!5291 = !DILexicalBlockFile(scope: !5275, file: !5251, discriminator: 2)
!5292 = !DILocation(line: 396, column: 7, scope: !5293)
!5293 = !DILexicalBlockFile(scope: !5250, file: !5251, discriminator: 2)
!5294 = !DILocation(line: 398, column: 26, scope: !5274)
!5295 = !DILocation(line: 398, column: 21, scope: !5274)
!5296 = !DILocation(line: 399, column: 14, scope: !5274)
!5297 = !DILocation(line: 399, column: 12, scope: !5274)
!5298 = !DILocation(line: 405, column: 1, scope: !5250)
!5299 = distinct !DISubprogram(name: "close_stream", scope: !5300, file: !5300, line: 56, type: !5301, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !644, variables: !5343)
!5300 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!34, !5303}
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2490, line: 49, baseType: !5305)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4748, line: 241, size: 1728, elements: !5306)
!5306 = !{!5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5305, file: !4748, line: 242, baseType: !34, size: 32)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5305, file: !4748, line: 247, baseType: !43, size: 64, offset: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5305, file: !4748, line: 248, baseType: !43, size: 64, offset: 128)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5305, file: !4748, line: 249, baseType: !43, size: 64, offset: 192)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5305, file: !4748, line: 250, baseType: !43, size: 64, offset: 256)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5305, file: !4748, line: 251, baseType: !43, size: 64, offset: 320)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5305, file: !4748, line: 252, baseType: !43, size: 64, offset: 384)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5305, file: !4748, line: 253, baseType: !43, size: 64, offset: 448)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5305, file: !4748, line: 254, baseType: !43, size: 64, offset: 512)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5305, file: !4748, line: 256, baseType: !43, size: 64, offset: 576)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5305, file: !4748, line: 257, baseType: !43, size: 64, offset: 640)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5305, file: !4748, line: 258, baseType: !43, size: 64, offset: 704)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5305, file: !4748, line: 260, baseType: !5320, size: 64, offset: 768)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4748, line: 156, size: 192, elements: !5322)
!5322 = !{!5323, !5324, !5326}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5321, file: !4748, line: 157, baseType: !5320, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5321, file: !4748, line: 158, baseType: !5325, size: 64, offset: 64)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5321, file: !4748, line: 162, baseType: !34, size: 32, offset: 128)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5305, file: !4748, line: 262, baseType: !5325, size: 64, offset: 832)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5305, file: !4748, line: 264, baseType: !34, size: 32, offset: 896)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5305, file: !4748, line: 268, baseType: !34, size: 32, offset: 928)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5305, file: !4748, line: 270, baseType: !4774, size: 64, offset: 960)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5305, file: !4748, line: 274, baseType: !209, size: 16, offset: 1024)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5305, file: !4748, line: 275, baseType: !4778, size: 8, offset: 1040)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5305, file: !4748, line: 276, baseType: !4780, size: 8, offset: 1048)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5305, file: !4748, line: 280, baseType: !4782, size: 64, offset: 1088)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5305, file: !4748, line: 289, baseType: !4785, size: 64, offset: 1152)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5305, file: !4748, line: 297, baseType: !101, size: 64, offset: 1216)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5305, file: !4748, line: 298, baseType: !101, size: 64, offset: 1280)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5305, file: !4748, line: 299, baseType: !101, size: 64, offset: 1344)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5305, file: !4748, line: 300, baseType: !101, size: 64, offset: 1408)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5305, file: !4748, line: 302, baseType: !102, size: 64, offset: 1472)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5305, file: !4748, line: 303, baseType: !34, size: 32, offset: 1536)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5305, file: !4748, line: 305, baseType: !4793, size: 160, offset: 1568)
!5343 = !{!5344, !5345, !5347, !5348}
!5344 = !DILocalVariable(name: "stream", arg: 1, scope: !5299, file: !5300, line: 56, type: !5303)
!5345 = !DILocalVariable(name: "some_pending", scope: !5299, file: !5300, line: 58, type: !5346)
!5346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!5347 = !DILocalVariable(name: "prev_fail", scope: !5299, file: !5300, line: 59, type: !5346)
!5348 = !DILocalVariable(name: "fclose_fail", scope: !5299, file: !5300, line: 60, type: !5346)
!5349 = !DILocation(line: 56, column: 21, scope: !5299)
!5350 = !DILocation(line: 58, column: 30, scope: !5299)
!5351 = !DILocalVariable(name: "__stream", arg: 1, scope: !5352, file: !687, line: 132, type: !5303)
!5352 = distinct !DISubprogram(name: "ferror_unlocked", scope: !687, file: !687, line: 132, type: !5301, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !644, variables: !5353)
!5353 = !{!5351}
!5354 = !DILocation(line: 132, column: 1, scope: !5352, inlinedAt: !5355)
!5355 = distinct !DILocation(line: 59, column: 27, scope: !5299)
!5356 = !DILocation(line: 134, column: 10, scope: !5352, inlinedAt: !5355)
!5357 = !{!695, !696, i64 0}
!5358 = !DILocation(line: 59, column: 43, scope: !5299)
!5359 = !DILocation(line: 60, column: 29, scope: !5299)
!5360 = !DILocation(line: 60, column: 45, scope: !5299)
!5361 = !DILocation(line: 70, column: 17, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5299, file: !5300, line: 70, column: 7)
!5363 = !DILocation(line: 70, column: 33, scope: !5364)
!5364 = !DILexicalBlockFile(scope: !5362, file: !5300, discriminator: 1)
!5365 = !DILocation(line: 70, column: 53, scope: !5366)
!5366 = !DILexicalBlockFile(scope: !5362, file: !5300, discriminator: 3)
!5367 = !DILocation(line: 70, column: 7, scope: !5368)
!5368 = !DILexicalBlockFile(scope: !5299, file: !5300, discriminator: 3)
!5369 = !DILocation(line: 72, column: 11, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5362, file: !5300, line: 71, column: 5)
!5371 = !DILocation(line: 73, column: 9, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5370, file: !5300, line: 72, column: 11)
!5373 = !DILocation(line: 73, column: 15, scope: !5372)
!5374 = !DILocation(line: 78, column: 1, scope: !5299)
!5375 = distinct !DISubprogram(name: "hard_locale", scope: !5376, file: !5376, line: 38, type: !5377, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !646, variables: !5379)
!5376 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5377 = !DISubroutineType(types: !5378)
!5378 = !{!45, !34}
!5379 = !{!5380, !5381, !5382, !5383, !5390, !5391, !5393, !5394, !5396, !5397, !5399}
!5380 = !DILocalVariable(name: "category", arg: 1, scope: !5375, file: !5376, line: 38, type: !34)
!5381 = !DILocalVariable(name: "hard", scope: !5375, file: !5376, line: 40, type: !45)
!5382 = !DILocalVariable(name: "p", scope: !5375, file: !5376, line: 41, type: !99)
!5383 = !DILocalVariable(name: "__s1_len", scope: !5384, file: !5376, line: 47, type: !102)
!5384 = distinct !DILexicalBlock(scope: !5385, file: !5376, line: 47, column: 15)
!5385 = distinct !DILexicalBlock(scope: !5386, file: !5376, line: 47, column: 15)
!5386 = distinct !DILexicalBlock(scope: !5387, file: !5376, line: 46, column: 9)
!5387 = distinct !DILexicalBlock(scope: !5388, file: !5376, line: 45, column: 11)
!5388 = distinct !DILexicalBlock(scope: !5389, file: !5376, line: 44, column: 5)
!5389 = distinct !DILexicalBlock(scope: !5375, file: !5376, line: 43, column: 7)
!5390 = !DILocalVariable(name: "__s2_len", scope: !5384, file: !5376, line: 47, type: !102)
!5391 = !DILocalVariable(name: "__s2", scope: !5392, file: !5376, line: 47, type: !106)
!5392 = distinct !DILexicalBlock(scope: !5384, file: !5376, line: 47, column: 15)
!5393 = !DILocalVariable(name: "__result", scope: !5392, file: !5376, line: 47, type: !34)
!5394 = !DILocalVariable(name: "__s1_len", scope: !5395, file: !5376, line: 47, type: !102)
!5395 = distinct !DILexicalBlock(scope: !5385, file: !5376, line: 47, column: 39)
!5396 = !DILocalVariable(name: "__s2_len", scope: !5395, file: !5376, line: 47, type: !102)
!5397 = !DILocalVariable(name: "__s2", scope: !5398, file: !5376, line: 47, type: !106)
!5398 = distinct !DILexicalBlock(scope: !5395, file: !5376, line: 47, column: 39)
!5399 = !DILocalVariable(name: "__result", scope: !5398, file: !5376, line: 47, type: !34)
!5400 = !DILocation(line: 38, column: 18, scope: !5375)
!5401 = !DILocation(line: 40, column: 8, scope: !5375)
!5402 = !DILocation(line: 41, column: 19, scope: !5375)
!5403 = !DILocation(line: 41, column: 15, scope: !5375)
!5404 = !DILocation(line: 43, column: 7, scope: !5389)
!5405 = !DILocation(line: 43, column: 7, scope: !5375)
!5406 = !DILocation(line: 47, column: 15, scope: !5384)
!5407 = !DILocation(line: 47, column: 15, scope: !5392)
!5408 = !DILocation(line: 47, column: 15, scope: !5409)
!5409 = !DILexicalBlockFile(scope: !5392, file: !5376, discriminator: 2)
!5410 = !DILocation(line: 47, column: 15, scope: !5411)
!5411 = !DILexicalBlockFile(scope: !5412, file: !5376, discriminator: 3)
!5412 = distinct !DILexicalBlock(scope: !5392, file: !5376, line: 47, column: 15)
!5413 = !DILocation(line: 47, column: 15, scope: !5414)
!5414 = !DILexicalBlockFile(scope: !5412, file: !5376, discriminator: 2)
!5415 = !DILocation(line: 47, column: 15, scope: !5416)
!5416 = !DILexicalBlockFile(scope: !5417, file: !5376, discriminator: 4)
!5417 = distinct !DILexicalBlock(scope: !5412, file: !5376, line: 47, column: 15)
!5418 = !DILocation(line: 47, column: 15, scope: !5419)
!5419 = !DILexicalBlockFile(scope: !5384, file: !5376, discriminator: 11)
!5420 = !DILocation(line: 47, column: 36, scope: !5421)
!5421 = !DILexicalBlockFile(scope: !5385, file: !5376, discriminator: 13)
!5422 = !DILocation(line: 47, column: 39, scope: !5395)
!5423 = !DILocation(line: 47, column: 39, scope: !5424)
!5424 = !DILexicalBlockFile(scope: !5395, file: !5376, discriminator: 26)
!5425 = !DILocation(line: 47, column: 59, scope: !5426)
!5426 = !DILexicalBlockFile(scope: !5385, file: !5376, discriminator: 27)
!5427 = !DILocation(line: 47, column: 15, scope: !5428)
!5428 = !DILexicalBlockFile(scope: !5386, file: !5376, discriminator: 27)
!5429 = !DILocation(line: 48, column: 13, scope: !5385)
!5430 = !DILocation(line: 71, column: 3, scope: !5375)
!5431 = distinct !DISubprogram(name: "locale_charset", scope: !607, file: !607, line: 393, type: !5432, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !5434)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!99}
!5434 = !{!5435, !5436, !5437, !5442}
!5435 = !DILocalVariable(name: "codeset", scope: !5431, file: !607, line: 395, type: !99)
!5436 = !DILocalVariable(name: "aliases", scope: !5431, file: !607, line: 396, type: !99)
!5437 = !DILocalVariable(name: "__s1_len", scope: !5438, file: !607, line: 592, type: !102)
!5438 = distinct !DILexicalBlock(scope: !5439, file: !607, line: 592, column: 9)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !607, line: 592, column: 9)
!5440 = distinct !DILexicalBlock(scope: !5441, file: !607, line: 589, column: 3)
!5441 = distinct !DILexicalBlock(scope: !5431, file: !607, line: 589, column: 3)
!5442 = !DILocalVariable(name: "__s2_len", scope: !5438, file: !607, line: 592, type: !102)
!5443 = !DILocalVariable(name: "buf1", scope: !5444, file: !607, line: 196, type: !5511)
!5444 = distinct !DILexicalBlock(scope: !5445, file: !607, line: 194, column: 21)
!5445 = distinct !DILexicalBlock(scope: !5446, file: !607, line: 193, column: 19)
!5446 = distinct !DILexicalBlock(scope: !5447, file: !607, line: 193, column: 19)
!5447 = distinct !DILexicalBlock(scope: !5448, file: !607, line: 188, column: 17)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !607, line: 181, column: 19)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !607, line: 177, column: 13)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !607, line: 173, column: 15)
!5451 = distinct !DILexicalBlock(scope: !5452, file: !607, line: 161, column: 9)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !607, line: 157, column: 11)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !607, line: 130, column: 5)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !607, line: 129, column: 7)
!5455 = distinct !DISubprogram(name: "get_charset_aliases", scope: !607, file: !607, line: 124, type: !5432, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !5456)
!5456 = !{!5457, !5458, !5459, !5460, !5461, !5463, !5464, !5465, !5466, !5507, !5508, !5509, !5443, !5510, !5514, !5515, !5516}
!5457 = !DILocalVariable(name: "cp", scope: !5455, file: !607, line: 126, type: !99)
!5458 = !DILocalVariable(name: "dir", scope: !5453, file: !607, line: 132, type: !99)
!5459 = !DILocalVariable(name: "base", scope: !5453, file: !607, line: 133, type: !99)
!5460 = !DILocalVariable(name: "file_name", scope: !5453, file: !607, line: 134, type: !43)
!5461 = !DILocalVariable(name: "dir_len", scope: !5462, file: !607, line: 144, type: !102)
!5462 = distinct !DILexicalBlock(scope: !5453, file: !607, line: 143, column: 7)
!5463 = !DILocalVariable(name: "base_len", scope: !5462, file: !607, line: 145, type: !102)
!5464 = !DILocalVariable(name: "add_slash", scope: !5462, file: !607, line: 146, type: !34)
!5465 = !DILocalVariable(name: "fd", scope: !5451, file: !607, line: 162, type: !34)
!5466 = !DILocalVariable(name: "fp", scope: !5449, file: !607, line: 178, type: !5467)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2490, line: 49, baseType: !5469)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4748, line: 241, size: 1728, elements: !5470)
!5470 = !{!5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5469, file: !4748, line: 242, baseType: !34, size: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5469, file: !4748, line: 247, baseType: !43, size: 64, offset: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5469, file: !4748, line: 248, baseType: !43, size: 64, offset: 128)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5469, file: !4748, line: 249, baseType: !43, size: 64, offset: 192)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5469, file: !4748, line: 250, baseType: !43, size: 64, offset: 256)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5469, file: !4748, line: 251, baseType: !43, size: 64, offset: 320)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5469, file: !4748, line: 252, baseType: !43, size: 64, offset: 384)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5469, file: !4748, line: 253, baseType: !43, size: 64, offset: 448)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5469, file: !4748, line: 254, baseType: !43, size: 64, offset: 512)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5469, file: !4748, line: 256, baseType: !43, size: 64, offset: 576)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5469, file: !4748, line: 257, baseType: !43, size: 64, offset: 640)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5469, file: !4748, line: 258, baseType: !43, size: 64, offset: 704)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5469, file: !4748, line: 260, baseType: !5484, size: 64, offset: 768)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4748, line: 156, size: 192, elements: !5486)
!5486 = !{!5487, !5488, !5490}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5485, file: !4748, line: 157, baseType: !5484, size: 64)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5485, file: !4748, line: 158, baseType: !5489, size: 64, offset: 64)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5485, file: !4748, line: 162, baseType: !34, size: 32, offset: 128)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5469, file: !4748, line: 262, baseType: !5489, size: 64, offset: 832)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5469, file: !4748, line: 264, baseType: !34, size: 32, offset: 896)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5469, file: !4748, line: 268, baseType: !34, size: 32, offset: 928)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5469, file: !4748, line: 270, baseType: !4774, size: 64, offset: 960)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5469, file: !4748, line: 274, baseType: !209, size: 16, offset: 1024)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5469, file: !4748, line: 275, baseType: !4778, size: 8, offset: 1040)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5469, file: !4748, line: 276, baseType: !4780, size: 8, offset: 1048)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5469, file: !4748, line: 280, baseType: !4782, size: 64, offset: 1088)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5469, file: !4748, line: 289, baseType: !4785, size: 64, offset: 1152)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5469, file: !4748, line: 297, baseType: !101, size: 64, offset: 1216)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5469, file: !4748, line: 298, baseType: !101, size: 64, offset: 1280)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5469, file: !4748, line: 299, baseType: !101, size: 64, offset: 1344)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5469, file: !4748, line: 300, baseType: !101, size: 64, offset: 1408)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5469, file: !4748, line: 302, baseType: !102, size: 64, offset: 1472)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5469, file: !4748, line: 303, baseType: !34, size: 32, offset: 1536)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5469, file: !4748, line: 305, baseType: !4793, size: 160, offset: 1568)
!5507 = !DILocalVariable(name: "res_ptr", scope: !5447, file: !607, line: 190, type: !43)
!5508 = !DILocalVariable(name: "res_size", scope: !5447, file: !607, line: 191, type: !102)
!5509 = !DILocalVariable(name: "c", scope: !5444, file: !607, line: 195, type: !34)
!5510 = !DILocalVariable(name: "buf2", scope: !5444, file: !607, line: 197, type: !5511)
!5511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 408, elements: !5512)
!5512 = !{!5513}
!5513 = !DISubrange(count: 51)
!5514 = !DILocalVariable(name: "l1", scope: !5444, file: !607, line: 198, type: !102)
!5515 = !DILocalVariable(name: "l2", scope: !5444, file: !607, line: 198, type: !102)
!5516 = !DILocalVariable(name: "old_res_ptr", scope: !5444, file: !607, line: 199, type: !43)
!5517 = !DILocation(line: 196, column: 28, scope: !5444, inlinedAt: !5518)
!5518 = distinct !DILocation(line: 589, column: 18, scope: !5441)
!5519 = !DILocation(line: 197, column: 28, scope: !5444, inlinedAt: !5518)
!5520 = !DILocation(line: 403, column: 13, scope: !5431)
!5521 = !DILocation(line: 395, column: 15, scope: !5431)
!5522 = !DILocation(line: 584, column: 15, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5431, file: !607, line: 584, column: 7)
!5524 = !DILocation(line: 584, column: 7, scope: !5431)
!5525 = !DILocation(line: 128, column: 8, scope: !5455, inlinedAt: !5518)
!5526 = !DILocation(line: 126, column: 15, scope: !5455, inlinedAt: !5518)
!5527 = !DILocation(line: 129, column: 10, scope: !5454, inlinedAt: !5518)
!5528 = !DILocation(line: 129, column: 7, scope: !5455, inlinedAt: !5518)
!5529 = !DILocation(line: 138, column: 13, scope: !5453, inlinedAt: !5518)
!5530 = !DILocation(line: 132, column: 19, scope: !5453, inlinedAt: !5518)
!5531 = !DILocation(line: 139, column: 15, scope: !5532, inlinedAt: !5518)
!5532 = distinct !DILexicalBlock(scope: !5453, file: !607, line: 139, column: 11)
!5533 = !DILocation(line: 139, column: 23, scope: !5532, inlinedAt: !5518)
!5534 = !DILocation(line: 139, column: 26, scope: !5535, inlinedAt: !5518)
!5535 = !DILexicalBlockFile(scope: !5532, file: !607, discriminator: 1)
!5536 = !DILocation(line: 139, column: 33, scope: !5535, inlinedAt: !5518)
!5537 = !DILocation(line: 139, column: 11, scope: !5538, inlinedAt: !5518)
!5538 = !DILexicalBlockFile(scope: !5453, file: !607, discriminator: 1)
!5539 = !DILocation(line: 140, column: 9, scope: !5532, inlinedAt: !5518)
!5540 = !DILocation(line: 144, column: 26, scope: !5462, inlinedAt: !5518)
!5541 = !DILocation(line: 144, column: 16, scope: !5462, inlinedAt: !5518)
!5542 = !DILocation(line: 145, column: 16, scope: !5462, inlinedAt: !5518)
!5543 = !DILocation(line: 146, column: 34, scope: !5462, inlinedAt: !5518)
!5544 = !DILocation(line: 146, column: 38, scope: !5462, inlinedAt: !5518)
!5545 = !DILocation(line: 146, column: 42, scope: !5546, inlinedAt: !5518)
!5546 = !DILexicalBlockFile(scope: !5462, file: !607, discriminator: 1)
!5547 = !DILocation(line: 146, column: 41, scope: !5546, inlinedAt: !5518)
!5548 = !DILocation(line: 147, column: 48, scope: !5462, inlinedAt: !5518)
!5549 = !DILocation(line: 147, column: 46, scope: !5462, inlinedAt: !5518)
!5550 = !DILocation(line: 147, column: 69, scope: !5462, inlinedAt: !5518)
!5551 = !DILocation(line: 147, column: 30, scope: !5462, inlinedAt: !5518)
!5552 = !DILocation(line: 134, column: 13, scope: !5453, inlinedAt: !5518)
!5553 = !DILocation(line: 148, column: 13, scope: !5462, inlinedAt: !5518)
!5554 = !DILocation(line: 150, column: 13, scope: !5555, inlinedAt: !5518)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !607, line: 149, column: 11)
!5556 = distinct !DILexicalBlock(scope: !5462, file: !607, line: 148, column: 13)
!5557 = !DILocation(line: 151, column: 17, scope: !5555, inlinedAt: !5518)
!5558 = !DILocation(line: 152, column: 34, scope: !5559, inlinedAt: !5518)
!5559 = distinct !DILexicalBlock(scope: !5555, file: !607, line: 151, column: 17)
!5560 = !DILocation(line: 153, column: 41, scope: !5555, inlinedAt: !5518)
!5561 = !DILocation(line: 153, column: 13, scope: !5555, inlinedAt: !5518)
!5562 = !DILocation(line: 157, column: 11, scope: !5453, inlinedAt: !5518)
!5563 = !DILocation(line: 171, column: 16, scope: !5451, inlinedAt: !5518)
!5564 = !DILocation(line: 162, column: 15, scope: !5451, inlinedAt: !5518)
!5565 = !DILocation(line: 173, column: 18, scope: !5450, inlinedAt: !5518)
!5566 = !DILocation(line: 173, column: 15, scope: !5451, inlinedAt: !5518)
!5567 = !DILocation(line: 180, column: 20, scope: !5449, inlinedAt: !5518)
!5568 = !DILocation(line: 178, column: 21, scope: !5449, inlinedAt: !5518)
!5569 = !DILocation(line: 181, column: 22, scope: !5448, inlinedAt: !5518)
!5570 = !DILocation(line: 181, column: 19, scope: !5449, inlinedAt: !5518)
!5571 = !DILocation(line: 190, column: 25, scope: !5447, inlinedAt: !5518)
!5572 = !DILocation(line: 184, column: 19, scope: !5573, inlinedAt: !5518)
!5573 = distinct !DILexicalBlock(scope: !5448, file: !607, line: 182, column: 17)
!5574 = !DILocation(line: 186, column: 17, scope: !5573, inlinedAt: !5518)
!5575 = !DILocation(line: 191, column: 26, scope: !5447, inlinedAt: !5518)
!5576 = !DILocation(line: 196, column: 23, scope: !5444, inlinedAt: !5518)
!5577 = !DILocation(line: 197, column: 23, scope: !5444, inlinedAt: !5518)
!5578 = !DILocalVariable(name: "__fp", arg: 1, scope: !5579, file: !687, line: 63, type: !5467)
!5579 = distinct !DISubprogram(name: "getc_unlocked", scope: !687, file: !687, line: 63, type: !5580, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !5582)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{!34, !5467}
!5582 = !{!5578}
!5583 = !DILocation(line: 63, column: 22, scope: !5579, inlinedAt: !5584)
!5584 = distinct !DILocation(line: 201, column: 27, scope: !5444, inlinedAt: !5518)
!5585 = !DILocation(line: 65, column: 10, scope: !5579, inlinedAt: !5584)
!5586 = !{!695, !674, i64 8}
!5587 = !{!695, !674, i64 16}
!5588 = !DILocation(line: 65, column: 10, scope: !5589, inlinedAt: !5584)
!5589 = !DILexicalBlockFile(scope: !5579, file: !687, discriminator: 1)
!5590 = !DILocation(line: 65, column: 10, scope: !5591, inlinedAt: !5584)
!5591 = !DILexicalBlockFile(scope: !5579, file: !687, discriminator: 2)
!5592 = !DILocation(line: 65, column: 10, scope: !5593, inlinedAt: !5584)
!5593 = !DILexicalBlockFile(scope: !5579, file: !687, discriminator: 3)
!5594 = !DILocation(line: 195, column: 27, scope: !5444, inlinedAt: !5518)
!5595 = !DILocation(line: 202, column: 27, scope: !5444, inlinedAt: !5518)
!5596 = !DILocation(line: 63, column: 22, scope: !5579, inlinedAt: !5597)
!5597 = distinct !DILocation(line: 210, column: 33, scope: !5598, inlinedAt: !5518)
!5598 = distinct !DILexicalBlock(scope: !5599, file: !607, line: 207, column: 25)
!5599 = distinct !DILexicalBlock(scope: !5444, file: !607, line: 206, column: 27)
!5600 = !DILocation(line: 65, column: 10, scope: !5579, inlinedAt: !5597)
!5601 = !DILocation(line: 65, column: 10, scope: !5589, inlinedAt: !5597)
!5602 = !DILocation(line: 65, column: 10, scope: !5591, inlinedAt: !5597)
!5603 = !DILocation(line: 65, column: 10, scope: !5593, inlinedAt: !5597)
!5604 = !DILocation(line: 210, column: 29, scope: !5605, inlinedAt: !5518)
!5605 = !DILexicalBlockFile(scope: !5598, file: !607, discriminator: 1)
!5606 = distinct !{!5606, !5607, !5608}
!5607 = !DILocation(line: 193, column: 19, scope: !5446)
!5608 = !DILocation(line: 241, column: 21, scope: !5446)
!5609 = !DILocation(line: 216, column: 23, scope: !5444, inlinedAt: !5518)
!5610 = !DILocation(line: 217, column: 27, scope: !5611, inlinedAt: !5518)
!5611 = distinct !DILexicalBlock(scope: !5444, file: !607, line: 217, column: 27)
!5612 = !DILocation(line: 217, column: 64, scope: !5611, inlinedAt: !5518)
!5613 = !DILocation(line: 217, column: 27, scope: !5444, inlinedAt: !5518)
!5614 = !DILocation(line: 219, column: 28, scope: !5444, inlinedAt: !5518)
!5615 = !DILocation(line: 198, column: 30, scope: !5444, inlinedAt: !5518)
!5616 = !DILocation(line: 220, column: 28, scope: !5444, inlinedAt: !5518)
!5617 = !DILocation(line: 198, column: 34, scope: !5444, inlinedAt: !5518)
!5618 = !DILocation(line: 199, column: 29, scope: !5444, inlinedAt: !5518)
!5619 = !DILocation(line: 222, column: 36, scope: !5620, inlinedAt: !5518)
!5620 = distinct !DILexicalBlock(scope: !5444, file: !607, line: 222, column: 27)
!5621 = !DILocation(line: 222, column: 27, scope: !5444, inlinedAt: !5518)
!5622 = !DILocation(line: 225, column: 63, scope: !5623, inlinedAt: !5518)
!5623 = distinct !DILexicalBlock(scope: !5620, file: !607, line: 223, column: 25)
!5624 = !DILocation(line: 225, column: 46, scope: !5623, inlinedAt: !5518)
!5625 = !DILocation(line: 226, column: 25, scope: !5623, inlinedAt: !5518)
!5626 = !DILocation(line: 229, column: 36, scope: !5627, inlinedAt: !5518)
!5627 = distinct !DILexicalBlock(scope: !5620, file: !607, line: 228, column: 25)
!5628 = !DILocation(line: 230, column: 73, scope: !5627, inlinedAt: !5518)
!5629 = !DILocation(line: 230, column: 46, scope: !5627, inlinedAt: !5518)
!5630 = !DILocation(line: 232, column: 35, scope: !5631, inlinedAt: !5518)
!5631 = distinct !DILexicalBlock(scope: !5444, file: !607, line: 232, column: 27)
!5632 = !DILocation(line: 232, column: 27, scope: !5444, inlinedAt: !5518)
!5633 = !DILocation(line: 236, column: 27, scope: !5634, inlinedAt: !5518)
!5634 = distinct !DILexicalBlock(scope: !5631, file: !607, line: 233, column: 25)
!5635 = !DILocation(line: 237, column: 27, scope: !5634, inlinedAt: !5518)
!5636 = !DILocation(line: 239, column: 39, scope: !5444, inlinedAt: !5518)
!5637 = !DILocation(line: 239, column: 50, scope: !5444, inlinedAt: !5518)
!5638 = !DILocation(line: 239, column: 61, scope: !5444, inlinedAt: !5518)
!5639 = !DILocalVariable(name: "__dest", arg: 1, scope: !5640, file: !2112, line: 107, type: !5643)
!5640 = distinct !DISubprogram(name: "strcpy", scope: !2112, file: !2112, line: 107, type: !5641, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !5645)
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!43, !5643, !5644}
!5643 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!5644 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!5645 = !{!5639, !5646}
!5646 = !DILocalVariable(name: "__src", arg: 2, scope: !5640, file: !2112, line: 107, type: !5644)
!5647 = !DILocation(line: 107, column: 1, scope: !5640, inlinedAt: !5648)
!5648 = distinct !DILocation(line: 239, column: 23, scope: !5444, inlinedAt: !5518)
!5649 = !DILocation(line: 109, column: 49, scope: !5640, inlinedAt: !5648)
!5650 = !DILocation(line: 109, column: 10, scope: !5640, inlinedAt: !5648)
!5651 = !DILocation(line: 107, column: 1, scope: !5640, inlinedAt: !5652)
!5652 = distinct !DILocation(line: 240, column: 23, scope: !5444, inlinedAt: !5518)
!5653 = !DILocation(line: 109, column: 49, scope: !5640, inlinedAt: !5652)
!5654 = !DILocation(line: 109, column: 10, scope: !5640, inlinedAt: !5652)
!5655 = !DILocation(line: 241, column: 21, scope: !5445, inlinedAt: !5518)
!5656 = !DILocation(line: 242, column: 19, scope: !5447, inlinedAt: !5518)
!5657 = !DILocation(line: 243, column: 32, scope: !5658, inlinedAt: !5518)
!5658 = distinct !DILexicalBlock(scope: !5447, file: !607, line: 243, column: 23)
!5659 = !DILocation(line: 243, column: 23, scope: !5447, inlinedAt: !5518)
!5660 = !DILocation(line: 247, column: 33, scope: !5661, inlinedAt: !5518)
!5661 = distinct !DILexicalBlock(scope: !5658, file: !607, line: 246, column: 21)
!5662 = !DILocation(line: 247, column: 45, scope: !5661, inlinedAt: !5518)
!5663 = !DILocation(line: 253, column: 11, scope: !5451, inlinedAt: !5518)
!5664 = !DILocation(line: 377, column: 23, scope: !5453, inlinedAt: !5518)
!5665 = !DILocation(line: 378, column: 5, scope: !5453, inlinedAt: !5518)
!5666 = !DILocation(line: 396, column: 15, scope: !5431)
!5667 = !DILocation(line: 590, column: 8, scope: !5440)
!5668 = !DILocation(line: 590, column: 17, scope: !5440)
!5669 = !DILocation(line: 589, column: 3, scope: !5670)
!5670 = !DILexicalBlockFile(scope: !5441, file: !607, discriminator: 1)
!5671 = !DILocation(line: 592, column: 9, scope: !5438)
!5672 = !DILocation(line: 592, column: 35, scope: !5439)
!5673 = !DILocation(line: 593, column: 9, scope: !5439)
!5674 = !DILocation(line: 593, column: 24, scope: !5675)
!5675 = !DILexicalBlockFile(scope: !5439, file: !607, discriminator: 1)
!5676 = !DILocation(line: 593, column: 31, scope: !5675)
!5677 = !DILocation(line: 593, column: 34, scope: !5678)
!5678 = !DILexicalBlockFile(scope: !5439, file: !607, discriminator: 2)
!5679 = !DILocation(line: 593, column: 45, scope: !5678)
!5680 = !DILocation(line: 592, column: 9, scope: !5681)
!5681 = !DILexicalBlockFile(scope: !5440, file: !607, discriminator: 1)
!5682 = !DILocation(line: 595, column: 29, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5439, file: !607, line: 594, column: 7)
!5684 = !DILocation(line: 595, column: 27, scope: !5683)
!5685 = !DILocation(line: 595, column: 46, scope: !5683)
!5686 = !DILocation(line: 596, column: 9, scope: !5683)
!5687 = !DILocation(line: 591, column: 19, scope: !5440)
!5688 = !DILocation(line: 591, column: 36, scope: !5440)
!5689 = !DILocation(line: 591, column: 16, scope: !5440)
!5690 = !DILocation(line: 591, column: 52, scope: !5681)
!5691 = !DILocation(line: 591, column: 69, scope: !5440)
!5692 = !DILocation(line: 591, column: 49, scope: !5440)
!5693 = distinct !{!5693, !5694, !5695}
!5694 = !DILocation(line: 589, column: 3, scope: !5441)
!5695 = !DILocation(line: 597, column: 7, scope: !5441)
!5696 = !DILocation(line: 602, column: 7, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5431, file: !607, line: 602, column: 7)
!5698 = !DILocation(line: 602, column: 18, scope: !5697)
!5699 = !DILocation(line: 602, column: 7, scope: !5431)
!5700 = !DILocation(line: 612, column: 3, scope: !5431)
!5701 = distinct !DISubprogram(name: "rpl_fclose", scope: !5702, file: !5702, line: 56, type: !5703, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !5745)
!5702 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!34, !5705}
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2490, line: 49, baseType: !5707)
!5707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4748, line: 241, size: 1728, elements: !5708)
!5708 = !{!5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5707, file: !4748, line: 242, baseType: !34, size: 32)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5707, file: !4748, line: 247, baseType: !43, size: 64, offset: 64)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5707, file: !4748, line: 248, baseType: !43, size: 64, offset: 128)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5707, file: !4748, line: 249, baseType: !43, size: 64, offset: 192)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5707, file: !4748, line: 250, baseType: !43, size: 64, offset: 256)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5707, file: !4748, line: 251, baseType: !43, size: 64, offset: 320)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5707, file: !4748, line: 252, baseType: !43, size: 64, offset: 384)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5707, file: !4748, line: 253, baseType: !43, size: 64, offset: 448)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5707, file: !4748, line: 254, baseType: !43, size: 64, offset: 512)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5707, file: !4748, line: 256, baseType: !43, size: 64, offset: 576)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5707, file: !4748, line: 257, baseType: !43, size: 64, offset: 640)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5707, file: !4748, line: 258, baseType: !43, size: 64, offset: 704)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5707, file: !4748, line: 260, baseType: !5722, size: 64, offset: 768)
!5722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5723, size: 64)
!5723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4748, line: 156, size: 192, elements: !5724)
!5724 = !{!5725, !5726, !5728}
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5723, file: !4748, line: 157, baseType: !5722, size: 64)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5723, file: !4748, line: 158, baseType: !5727, size: 64, offset: 64)
!5727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5707, size: 64)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5723, file: !4748, line: 162, baseType: !34, size: 32, offset: 128)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5707, file: !4748, line: 262, baseType: !5727, size: 64, offset: 832)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5707, file: !4748, line: 264, baseType: !34, size: 32, offset: 896)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5707, file: !4748, line: 268, baseType: !34, size: 32, offset: 928)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5707, file: !4748, line: 270, baseType: !4774, size: 64, offset: 960)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5707, file: !4748, line: 274, baseType: !209, size: 16, offset: 1024)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5707, file: !4748, line: 275, baseType: !4778, size: 8, offset: 1040)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5707, file: !4748, line: 276, baseType: !4780, size: 8, offset: 1048)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5707, file: !4748, line: 280, baseType: !4782, size: 64, offset: 1088)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5707, file: !4748, line: 289, baseType: !4785, size: 64, offset: 1152)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5707, file: !4748, line: 297, baseType: !101, size: 64, offset: 1216)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5707, file: !4748, line: 298, baseType: !101, size: 64, offset: 1280)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5707, file: !4748, line: 299, baseType: !101, size: 64, offset: 1344)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5707, file: !4748, line: 300, baseType: !101, size: 64, offset: 1408)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5707, file: !4748, line: 302, baseType: !102, size: 64, offset: 1472)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5707, file: !4748, line: 303, baseType: !34, size: 32, offset: 1536)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5707, file: !4748, line: 305, baseType: !4793, size: 160, offset: 1568)
!5745 = !{!5746, !5747, !5748, !5749}
!5746 = !DILocalVariable(name: "fp", arg: 1, scope: !5701, file: !5702, line: 56, type: !5705)
!5747 = !DILocalVariable(name: "saved_errno", scope: !5701, file: !5702, line: 58, type: !34)
!5748 = !DILocalVariable(name: "fd", scope: !5701, file: !5702, line: 59, type: !34)
!5749 = !DILocalVariable(name: "result", scope: !5701, file: !5702, line: 60, type: !34)
!5750 = !DILocation(line: 56, column: 19, scope: !5701)
!5751 = !DILocation(line: 58, column: 7, scope: !5701)
!5752 = !DILocation(line: 60, column: 7, scope: !5701)
!5753 = !DILocation(line: 63, column: 8, scope: !5701)
!5754 = !DILocation(line: 59, column: 7, scope: !5701)
!5755 = !DILocation(line: 64, column: 10, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5701, file: !5702, line: 64, column: 7)
!5757 = !DILocation(line: 64, column: 7, scope: !5701)
!5758 = !DILocation(line: 65, column: 12, scope: !5756)
!5759 = !DILocation(line: 65, column: 5, scope: !5756)
!5760 = !DILocation(line: 70, column: 9, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5701, file: !5702, line: 70, column: 7)
!5762 = !DILocation(line: 70, column: 23, scope: !5761)
!5763 = !DILocation(line: 70, column: 33, scope: !5764)
!5764 = !DILexicalBlockFile(scope: !5761, file: !5702, discriminator: 1)
!5765 = !DILocation(line: 70, column: 26, scope: !5766)
!5766 = !DILexicalBlockFile(scope: !5761, file: !5702, discriminator: 3)
!5767 = !DILocation(line: 70, column: 59, scope: !5764)
!5768 = !DILocation(line: 71, column: 7, scope: !5761)
!5769 = !DILocation(line: 71, column: 10, scope: !5764)
!5770 = !DILocation(line: 70, column: 7, scope: !5771)
!5771 = !DILexicalBlockFile(scope: !5701, file: !5702, discriminator: 2)
!5772 = !DILocation(line: 98, column: 12, scope: !5701)
!5773 = !DILocation(line: 103, column: 7, scope: !5701)
!5774 = !DILocation(line: 72, column: 19, scope: !5761)
!5775 = !DILocation(line: 103, column: 19, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5701, file: !5702, line: 103, column: 7)
!5777 = !DILocation(line: 105, column: 13, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5776, file: !5702, line: 104, column: 5)
!5779 = !DILocation(line: 107, column: 5, scope: !5778)
!5780 = !DILocation(line: 110, column: 1, scope: !5701)
!5781 = distinct !DISubprogram(name: "rpl_fflush", scope: !5782, file: !5782, line: 127, type: !5783, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !5825)
!5782 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5783 = !DISubroutineType(types: !5784)
!5784 = !{!34, !5785}
!5785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5786, size: 64)
!5786 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2490, line: 49, baseType: !5787)
!5787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4748, line: 241, size: 1728, elements: !5788)
!5788 = !{!5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5787, file: !4748, line: 242, baseType: !34, size: 32)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5787, file: !4748, line: 247, baseType: !43, size: 64, offset: 64)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5787, file: !4748, line: 248, baseType: !43, size: 64, offset: 128)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5787, file: !4748, line: 249, baseType: !43, size: 64, offset: 192)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5787, file: !4748, line: 250, baseType: !43, size: 64, offset: 256)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5787, file: !4748, line: 251, baseType: !43, size: 64, offset: 320)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5787, file: !4748, line: 252, baseType: !43, size: 64, offset: 384)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5787, file: !4748, line: 253, baseType: !43, size: 64, offset: 448)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5787, file: !4748, line: 254, baseType: !43, size: 64, offset: 512)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5787, file: !4748, line: 256, baseType: !43, size: 64, offset: 576)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5787, file: !4748, line: 257, baseType: !43, size: 64, offset: 640)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5787, file: !4748, line: 258, baseType: !43, size: 64, offset: 704)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5787, file: !4748, line: 260, baseType: !5802, size: 64, offset: 768)
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5803, size: 64)
!5803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4748, line: 156, size: 192, elements: !5804)
!5804 = !{!5805, !5806, !5808}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5803, file: !4748, line: 157, baseType: !5802, size: 64)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5803, file: !4748, line: 158, baseType: !5807, size: 64, offset: 64)
!5807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5787, size: 64)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5803, file: !4748, line: 162, baseType: !34, size: 32, offset: 128)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5787, file: !4748, line: 262, baseType: !5807, size: 64, offset: 832)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5787, file: !4748, line: 264, baseType: !34, size: 32, offset: 896)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5787, file: !4748, line: 268, baseType: !34, size: 32, offset: 928)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5787, file: !4748, line: 270, baseType: !4774, size: 64, offset: 960)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5787, file: !4748, line: 274, baseType: !209, size: 16, offset: 1024)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5787, file: !4748, line: 275, baseType: !4778, size: 8, offset: 1040)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5787, file: !4748, line: 276, baseType: !4780, size: 8, offset: 1048)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5787, file: !4748, line: 280, baseType: !4782, size: 64, offset: 1088)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5787, file: !4748, line: 289, baseType: !4785, size: 64, offset: 1152)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5787, file: !4748, line: 297, baseType: !101, size: 64, offset: 1216)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5787, file: !4748, line: 298, baseType: !101, size: 64, offset: 1280)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5787, file: !4748, line: 299, baseType: !101, size: 64, offset: 1344)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5787, file: !4748, line: 300, baseType: !101, size: 64, offset: 1408)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5787, file: !4748, line: 302, baseType: !102, size: 64, offset: 1472)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5787, file: !4748, line: 303, baseType: !34, size: 32, offset: 1536)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5787, file: !4748, line: 305, baseType: !4793, size: 160, offset: 1568)
!5825 = !{!5826}
!5826 = !DILocalVariable(name: "stream", arg: 1, scope: !5781, file: !5782, line: 127, type: !5785)
!5827 = !DILocation(line: 127, column: 19, scope: !5781)
!5828 = !DILocation(line: 148, column: 14, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5781, file: !5782, line: 148, column: 7)
!5830 = !DILocation(line: 148, column: 22, scope: !5829)
!5831 = !DILocation(line: 148, column: 27, scope: !5832)
!5832 = !DILexicalBlockFile(scope: !5829, file: !5782, discriminator: 1)
!5833 = !DILocation(line: 148, column: 7, scope: !5834)
!5834 = !DILexicalBlockFile(scope: !5781, file: !5782, discriminator: 1)
!5835 = !DILocation(line: 149, column: 12, scope: !5829)
!5836 = !DILocation(line: 149, column: 5, scope: !5829)
!5837 = !DILocalVariable(name: "fp", arg: 1, scope: !5838, file: !5782, line: 40, type: !5785)
!5838 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5782, file: !5782, line: 40, type: !5839, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !5841)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{null, !5785}
!5841 = !{!5837}
!5842 = !DILocation(line: 40, column: 48, scope: !5838, inlinedAt: !5843)
!5843 = distinct !DILocation(line: 153, column: 3, scope: !5781)
!5844 = !DILocation(line: 42, column: 11, scope: !5845, inlinedAt: !5843)
!5845 = distinct !DILexicalBlock(scope: !5838, file: !5782, line: 42, column: 7)
!5846 = !DILocation(line: 42, column: 18, scope: !5845, inlinedAt: !5843)
!5847 = !DILocation(line: 42, column: 7, scope: !5838, inlinedAt: !5843)
!5848 = !DILocation(line: 44, column: 5, scope: !5845, inlinedAt: !5843)
!5849 = !DILocation(line: 155, column: 10, scope: !5781)
!5850 = !DILocation(line: 155, column: 3, scope: !5781)
!5851 = !DILocation(line: 229, column: 1, scope: !5781)
!5852 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5853, file: !5853, line: 28, type: !5854, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !5897)
!5853 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!34, !5856, !5896, !34}
!5856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5857, size: 64)
!5857 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2490, line: 49, baseType: !5858)
!5858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4748, line: 241, size: 1728, elements: !5859)
!5859 = !{!5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895}
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5858, file: !4748, line: 242, baseType: !34, size: 32)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5858, file: !4748, line: 247, baseType: !43, size: 64, offset: 64)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5858, file: !4748, line: 248, baseType: !43, size: 64, offset: 128)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5858, file: !4748, line: 249, baseType: !43, size: 64, offset: 192)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5858, file: !4748, line: 250, baseType: !43, size: 64, offset: 256)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5858, file: !4748, line: 251, baseType: !43, size: 64, offset: 320)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5858, file: !4748, line: 252, baseType: !43, size: 64, offset: 384)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5858, file: !4748, line: 253, baseType: !43, size: 64, offset: 448)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5858, file: !4748, line: 254, baseType: !43, size: 64, offset: 512)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5858, file: !4748, line: 256, baseType: !43, size: 64, offset: 576)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5858, file: !4748, line: 257, baseType: !43, size: 64, offset: 640)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5858, file: !4748, line: 258, baseType: !43, size: 64, offset: 704)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5858, file: !4748, line: 260, baseType: !5873, size: 64, offset: 768)
!5873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5874, size: 64)
!5874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4748, line: 156, size: 192, elements: !5875)
!5875 = !{!5876, !5877, !5879}
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5874, file: !4748, line: 157, baseType: !5873, size: 64)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5874, file: !4748, line: 158, baseType: !5878, size: 64, offset: 64)
!5878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5858, size: 64)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5874, file: !4748, line: 162, baseType: !34, size: 32, offset: 128)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5858, file: !4748, line: 262, baseType: !5878, size: 64, offset: 832)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5858, file: !4748, line: 264, baseType: !34, size: 32, offset: 896)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5858, file: !4748, line: 268, baseType: !34, size: 32, offset: 928)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5858, file: !4748, line: 270, baseType: !4774, size: 64, offset: 960)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5858, file: !4748, line: 274, baseType: !209, size: 16, offset: 1024)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5858, file: !4748, line: 275, baseType: !4778, size: 8, offset: 1040)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5858, file: !4748, line: 276, baseType: !4780, size: 8, offset: 1048)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5858, file: !4748, line: 280, baseType: !4782, size: 64, offset: 1088)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5858, file: !4748, line: 289, baseType: !4785, size: 64, offset: 1152)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5858, file: !4748, line: 297, baseType: !101, size: 64, offset: 1216)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5858, file: !4748, line: 298, baseType: !101, size: 64, offset: 1280)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5858, file: !4748, line: 299, baseType: !101, size: 64, offset: 1344)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5858, file: !4748, line: 300, baseType: !101, size: 64, offset: 1408)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5858, file: !4748, line: 302, baseType: !102, size: 64, offset: 1472)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5858, file: !4748, line: 303, baseType: !34, size: 32, offset: 1536)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5858, file: !4748, line: 305, baseType: !4793, size: 160, offset: 1568)
!5896 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2490, line: 91, baseType: !4774)
!5897 = !{!5898, !5899, !5900, !5901}
!5898 = !DILocalVariable(name: "fp", arg: 1, scope: !5852, file: !5853, line: 28, type: !5856)
!5899 = !DILocalVariable(name: "offset", arg: 2, scope: !5852, file: !5853, line: 28, type: !5896)
!5900 = !DILocalVariable(name: "whence", arg: 3, scope: !5852, file: !5853, line: 28, type: !34)
!5901 = !DILocalVariable(name: "pos", scope: !5902, file: !5853, line: 116, type: !5896)
!5902 = distinct !DILexicalBlock(scope: !5903, file: !5853, line: 112, column: 5)
!5903 = distinct !DILexicalBlock(scope: !5852, file: !5853, line: 51, column: 7)
!5904 = !DILocation(line: 28, column: 15, scope: !5852)
!5905 = !DILocation(line: 28, column: 25, scope: !5852)
!5906 = !DILocation(line: 28, column: 37, scope: !5852)
!5907 = !DILocation(line: 51, column: 11, scope: !5903)
!5908 = !DILocation(line: 51, column: 31, scope: !5903)
!5909 = !DILocation(line: 51, column: 24, scope: !5903)
!5910 = !DILocation(line: 52, column: 7, scope: !5903)
!5911 = !DILocation(line: 52, column: 14, scope: !5912)
!5912 = !DILexicalBlockFile(scope: !5903, file: !5853, discriminator: 1)
!5913 = !DILocation(line: 52, column: 35, scope: !5912)
!5914 = !{!695, !674, i64 32}
!5915 = !DILocation(line: 52, column: 28, scope: !5912)
!5916 = !DILocation(line: 53, column: 7, scope: !5903)
!5917 = !DILocation(line: 53, column: 14, scope: !5912)
!5918 = !{!695, !674, i64 72}
!5919 = !DILocation(line: 53, column: 28, scope: !5912)
!5920 = !DILocation(line: 51, column: 7, scope: !5921)
!5921 = !DILexicalBlockFile(scope: !5852, file: !5853, discriminator: 1)
!5922 = !DILocation(line: 116, column: 26, scope: !5902)
!5923 = !DILocation(line: 116, column: 19, scope: !5924)
!5924 = !DILexicalBlockFile(scope: !5902, file: !5853, discriminator: 1)
!5925 = !DILocation(line: 116, column: 13, scope: !5902)
!5926 = !DILocation(line: 117, column: 15, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5902, file: !5853, line: 117, column: 11)
!5928 = !DILocation(line: 117, column: 11, scope: !5902)
!5929 = !DILocation(line: 127, column: 11, scope: !5902)
!5930 = !DILocation(line: 127, column: 18, scope: !5902)
!5931 = !DILocation(line: 128, column: 11, scope: !5902)
!5932 = !DILocation(line: 128, column: 19, scope: !5902)
!5933 = !{!695, !697, i64 144}
!5934 = !DILocation(line: 159, column: 7, scope: !5902)
!5935 = !DILocation(line: 161, column: 10, scope: !5852)
!5936 = !DILocation(line: 161, column: 3, scope: !5852)
!5937 = !DILocation(line: 162, column: 1, scope: !5852)
