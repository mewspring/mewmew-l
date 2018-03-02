; ModuleID = 'coreutils-8.27/src/seq.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.operand = type { x86_fp80, i64, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.layout = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"Usage: %s [OPTION]... LAST\0A  or:  %s [OPTION]... FIRST LAST\0A  or:  %s [OPTION]... FIRST INCREMENT LAST\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Print numbers from FIRST to LAST, in steps of INCREMENT.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [212 x i8] c"  -f, --format=FORMAT      use printf style floating-point FORMAT\0A  -s, --separator=STRING   use STRING to separate numbers (default: \5Cn)\0A  -w, --equal-width        equalize width by padding with leading zeroes\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [513 x i8] c"\0AIf FIRST or INCREMENT is omitted, it defaults to 1.  That is, an\0Aomitted INCREMENT defaults to 1 even when LAST is smaller than FIRST.\0AThe sequence of numbers ends when the sum of the current number and\0AINCREMENT would become greater than LAST.\0AFIRST, INCREMENT, and LAST are interpreted as floating point values.\0AINCREMENT is usually positive if FIRST is smaller than LAST, and\0AINCREMENT is usually negative if FIRST is greater than LAST.\0AINCREMENT must not be 0; none of FIRST, INCREMENT and LAST may be NaN.\0A\00", align 1
@.str.7 = private unnamed_addr constant [208 x i8] c"FORMAT must be suitable for printing one argument of type 'double';\0Ait defaults to %.PRECf if FIRST, INCREMENT, and LAST are all fixed point\0Adecimal numbers with maximum precision PREC, and to %g otherwise.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.35 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@main.step = private unnamed_addr constant %struct.operand { x86_fp80 0xK3FFF8000000000000000, i64 1, i32 0 }, align 16
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@equal_width = internal unnamed_addr global i1 false, align 1
@.str.12 = private constant [2 x i8] c"\0A\00", align 1
@separator = internal unnamed_addr global i8* null, align 8, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"+f:s:w\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !71
@optarg = external local_unnamed_addr global i8*, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"format %s has no %% directive\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"-+#0 '\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"format %s ends in %%\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"efgaEFGA\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"format %s has unknown %%%c directive\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"format %s has too many %% directives\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"format string may not be specified when printing equal width strings\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"invalid Zero increment value: %s\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%0.Lf\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@get_default_format.format_buf = internal global [28 x i8] zeroinitializer, align 16, !dbg !90
@.str.57 = private unnamed_addr constant [11 x i8] c"%%0%d.%dLf\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"%%.%dLf\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%Lg\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"invalid floating point argument: %s\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"invalid %s argument: %s\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"not-a-number\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"equal-width\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), align 8, !dbg !120
@.str.24 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !126
@.str.27 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !155
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !160
@.str.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !163
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !170
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16, !dbg !177
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !203
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !210
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !222
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !229
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !236
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !224
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !238
@.str.87 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.90 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.103 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.107 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.108 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !244
@.str.1.121 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.136 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !253
@.str.3.137 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.138 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.139 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.140 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.141 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.142 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !651 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !655, metadata !656), !dbg !657
  %2 = icmp eq i32 %0, 0, !dbg !658
  br i1 %2, label %8, label %3, !dbg !660

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !661, !tbaa !664
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !661
  %6 = load i8*, i8** @program_name, align 8, !dbg !661, !tbaa !664
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !668
  br label %48, !dbg !670

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !672
  %10 = load i8*, i8** @program_name, align 8, !dbg !672, !tbaa !664
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10, i8* %10) #11, !dbg !674
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !676
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !676, !tbaa !664
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !677
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !678
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !678, !tbaa !664
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !683
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !685
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !664
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !686
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !687
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !664
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !688
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !689
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !664
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !690
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !691
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !664
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !692
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !693
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !693, !tbaa !664
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !694
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !49, metadata !656) #11, !dbg !695
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !49, metadata !656) #11, !dbg !695
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !697
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0)) #11, !dbg !698
  %35 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !700
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !60, metadata !656) #11, !dbg !701
  %36 = icmp eq i8* %35, null, !dbg !702
  br i1 %36, label %43, label %37, !dbg !703

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i64 3) #8, !dbg !704
  %39 = icmp eq i32 %38, 0, !dbg !704
  br i1 %39, label %43, label %40, !dbg !706

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !708
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !710
  br label %43, !dbg !712

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i32 5) #11, !dbg !713
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !714
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !715
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !716
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #14, !dbg !717
  unreachable, !dbg !717
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !718 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  tail call void @llvm.dbg.declare(metadata %struct.operand* undef, metadata !105, metadata !656), !dbg !750
  %6 = alloca %struct.operand, align 16
  %7 = alloca %struct.operand, align 16
  %8 = alloca [6 x i8], align 2
  %9 = alloca [6 x i8], align 2
  %10 = alloca [6 x i8], align 2
  %11 = alloca %struct.operand, align 16
  %12 = alloca %struct.operand, align 16
  %13 = alloca %struct.operand, align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !723, metadata !656), !dbg !753
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !724, metadata !656), !dbg !754
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0, !dbg !755
  call void @llvm.lifetime.start(i64 6, i8* nonnull %16), !dbg !755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %16, i8* getelementptr inbounds (i8, i8* bitcast (%struct.operand* @main.step to i8*), i64 10), i64 6, i32 2, i1 false), !dbg !756
  %17 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0, !dbg !757
  call void @llvm.lifetime.start(i64 6, i8* nonnull %17), !dbg !757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %17, i8* getelementptr inbounds (i8, i8* bitcast (%struct.operand* @main.step to i8*), i64 10), i64 6, i32 2, i1 false), !dbg !758
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0, !dbg !759
  call void @llvm.lifetime.start(i64 6, i8* nonnull %18), !dbg !759
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !734, metadata !656), !dbg !760
  %19 = load i8*, i8** %1, align 8, !dbg !761, !tbaa !664
  tail call void @set_program_name(i8* %19) #11, !dbg !762
  %20 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !763
  %21 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !764
  %22 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !765
  %23 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !766
  store i1 false, i1* @equal_width, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** @separator, align 8, !dbg !767, !tbaa !664
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !734, metadata !656), !dbg !760
  %24 = load i32, i32* @optind, align 4, !dbg !768, !tbaa !770
  %25 = icmp slt i32 %24, %0, !dbg !772
  br i1 %25, label %26, label %67, !dbg !773

; <label>:26:                                     ; preds = %2
  br label %27, !dbg !773

; <label>:27:                                     ; preds = %26, %49
  %28 = phi i32 [ %51, %49 ], [ %24, %26 ]
  %29 = phi i8* [ %50, %49 ], [ null, %26 ]
  br label %30, !dbg !773

; <label>:30:                                     ; preds = %27, %56
  %31 = phi i32 [ %28, %27 ], [ %57, %56 ]
  %32 = sext i32 %31 to i64, !dbg !774
  %33 = getelementptr inbounds i8*, i8** %1, i64 %32, !dbg !774
  %34 = load i8*, i8** %33, align 8, !dbg !774, !tbaa !664
  %35 = load i8, i8* %34, align 1, !dbg !774, !tbaa !777
  %36 = icmp eq i8 %35, 45, !dbg !778
  br i1 %36, label %37, label %45, !dbg !779

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !780
  %39 = load i8, i8* %38, align 1, !dbg !780, !tbaa !777
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !725, metadata !656), !dbg !782
  %40 = icmp eq i8 %39, 46, !dbg !783
  br i1 %40, label %64, label %41, !dbg !784

; <label>:41:                                     ; preds = %37
  %42 = sext i8 %39 to i32, !dbg !780
  %43 = add nsw i32 %42, -48, !dbg !785
  %44 = icmp ult i32 %43, 10, !dbg !785
  br i1 %44, label %64, label %45, !dbg !787

; <label>:45:                                     ; preds = %41, %30
  %46 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !789
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !725, metadata !656), !dbg !782
  switch i32 %46, label %63 [
    i32 -1, label %47
    i32 102, label %49
    i32 115, label %53
    i32 119, label %55
    i32 -130, label %59
    i32 -131, label %60
  ], !dbg !790

; <label>:47:                                     ; preds = %45
  %48 = load i32, i32* @optind, align 4, !tbaa !770
  br label %67, !dbg !790

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** @optarg, align 8, !dbg !791, !tbaa !664
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !734, metadata !656), !dbg !760
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !734, metadata !656), !dbg !760
  %51 = load i32, i32* @optind, align 4, !dbg !768, !tbaa !770
  %52 = icmp slt i32 %51, %0, !dbg !772
  br i1 %52, label %27, label %66, !dbg !773, !llvm.loop !793

; <label>:53:                                     ; preds = %45
  %54 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !796, !tbaa !664
  store i64 %54, i64* bitcast (i8** @separator to i64*), align 8, !dbg !797, !tbaa !664
  br label %56, !dbg !798

; <label>:55:                                     ; preds = %45
  store i1 true, i1* @equal_width, align 1
  br label %56, !dbg !799

; <label>:56:                                     ; preds = %55, %53
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !734, metadata !656), !dbg !760
  %57 = load i32, i32* @optind, align 4, !dbg !768, !tbaa !770
  %58 = icmp slt i32 %57, %0, !dbg !772
  br i1 %58, label %30, label %64, !dbg !773, !llvm.loop !793

; <label>:59:                                     ; preds = %45
  tail call void @usage(i32 0) #15, !dbg !800
  unreachable, !dbg !800

; <label>:60:                                     ; preds = %45
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !801, !tbaa !664
  %62 = load i8*, i8** @Version, align 8, !dbg !801, !tbaa !664
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* null) #11, !dbg !801
  tail call void @exit(i32 0) #14, !dbg !802
  unreachable, !dbg !801

; <label>:63:                                     ; preds = %45
  tail call void @usage(i32 1) #15, !dbg !804
  unreachable, !dbg !804

; <label>:64:                                     ; preds = %37, %41, %56
  %65 = phi i32 [ %57, %56 ], [ %31, %41 ], [ %31, %37 ]
  br label %67, !dbg !805

; <label>:66:                                     ; preds = %49
  br label %67, !dbg !805

; <label>:67:                                     ; preds = %66, %64, %47, %2
  %68 = phi i32 [ %24, %2 ], [ %48, %47 ], [ %65, %64 ], [ %51, %66 ], !dbg !806
  %69 = phi i8* [ null, %2 ], [ %29, %47 ], [ %29, %64 ], [ %50, %66 ]
  %70 = sub nsw i32 %0, %68, !dbg !805
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !735, metadata !656), !dbg !807
  %71 = icmp eq i32 %70, 0, !dbg !808
  br i1 %71, label %72, label %74, !dbg !810

; <label>:72:                                     ; preds = %67
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !811
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %73) #11, !dbg !813
  tail call void @usage(i32 1) #15, !dbg !815
  unreachable, !dbg !815

; <label>:74:                                     ; preds = %67
  %75 = icmp ugt i32 %70, 3, !dbg !816
  br i1 %75, label %76, label %84, !dbg !818

; <label>:76:                                     ; preds = %74
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !819
  %78 = load i32, i32* @optind, align 4, !dbg !821, !tbaa !770
  %79 = add nsw i32 %78, 3, !dbg !822
  %80 = sext i32 %79 to i64, !dbg !823
  %81 = getelementptr inbounds i8*, i8** %1, i64 %80, !dbg !823
  %82 = load i8*, i8** %81, align 8, !dbg !823, !tbaa !664
  %83 = tail call i8* @quote(i8* %82) #11, !dbg !824
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77, i8* %83) #11, !dbg !826
  tail call void @usage(i32 1) #15, !dbg !828
  unreachable, !dbg !828

; <label>:84:                                     ; preds = %74
  %85 = icmp eq i8* %69, null, !dbg !829
  br i1 %85, label %180, label %86, !dbg !831

; <label>:86:                                     ; preds = %84
  br label %87, !dbg !832

; <label>:87:                                     ; preds = %86, %103
  %88 = phi i64 [ %104, %103 ], [ 0, %86 ]
  %89 = phi i64 [ %106, %103 ], [ 0, %86 ]
  tail call void @llvm.dbg.value(metadata i64 %89, i64 0, metadata !840, metadata !656) #11, !dbg !832
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !841, metadata !656) #11, !dbg !853
  %90 = getelementptr inbounds i8, i8* %69, i64 %89, !dbg !854
  %91 = load i8, i8* %90, align 1, !dbg !854, !tbaa !777
  %92 = icmp eq i8 %91, 37, !dbg !858
  br i1 %92, label %93, label %98, !dbg !859

; <label>:93:                                     ; preds = %87
  %94 = add i64 %89, 1, !dbg !860
  %95 = getelementptr inbounds i8, i8* %69, i64 %94, !dbg !862
  %96 = load i8, i8* %95, align 1, !dbg !862, !tbaa !777
  %97 = icmp eq i8 %96, 37, !dbg !863
  br i1 %97, label %103, label %107, !dbg !864

; <label>:98:                                     ; preds = %87
  %99 = icmp eq i8 %91, 0, !dbg !866
  br i1 %99, label %100, label %103, !dbg !869

; <label>:100:                                    ; preds = %98
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !870
  %102 = tail call i8* @quote(i8* nonnull %69) #11, !dbg !871
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %101, i8* %102) #11, !dbg !873
  unreachable, !dbg !870

; <label>:103:                                    ; preds = %98, %93
  %104 = add i64 %88, 1, !dbg !875
  tail call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !841, metadata !656) #11, !dbg !853
  %105 = select i1 %92, i64 2, i64 1, !dbg !876
  %106 = add i64 %105, %89, !dbg !878
  tail call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !840, metadata !656) #11, !dbg !832
  br label %87, !dbg !879, !llvm.loop !880

; <label>:107:                                    ; preds = %93
  tail call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !840, metadata !656) #11, !dbg !832
  %108 = tail call i64 @strspn(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)) #11, !dbg !883
  %109 = add i64 %108, %94, !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !840, metadata !656) #11, !dbg !832
  %110 = getelementptr inbounds i8, i8* %69, i64 %109, !dbg !885
  %111 = tail call i64 @strspn(i8* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !885
  %112 = add i64 %109, %111, !dbg !886
  tail call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !840, metadata !656) #11, !dbg !832
  %113 = getelementptr inbounds i8, i8* %69, i64 %112, !dbg !887
  %114 = load i8, i8* %113, align 1, !dbg !887, !tbaa !777
  %115 = icmp eq i8 %114, 46, !dbg !889
  br i1 %115, label %116, label %123, !dbg !890

; <label>:116:                                    ; preds = %107
  %117 = add i64 %112, 1, !dbg !891
  tail call void @llvm.dbg.value(metadata i64 %117, i64 0, metadata !840, metadata !656) #11, !dbg !832
  %118 = getelementptr inbounds i8, i8* %69, i64 %117, !dbg !893
  %119 = tail call i64 @strspn(i8* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !893
  %120 = add i64 %119, %117, !dbg !894
  tail call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !840, metadata !656) #11, !dbg !832
  %121 = getelementptr inbounds i8, i8* %69, i64 %120
  %122 = load i8, i8* %121, align 1, !tbaa !777
  br label %123, !dbg !895

; <label>:123:                                    ; preds = %116, %107
  %124 = phi i8 [ %122, %116 ], [ %114, %107 ], !dbg !896
  %125 = phi i64 [ %120, %116 ], [ %112, %107 ]
  tail call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !840, metadata !656) #11, !dbg !832
  tail call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !843, metadata !656) #11, !dbg !897
  %126 = getelementptr inbounds i8, i8* %69, i64 %125, !dbg !896
  %127 = icmp eq i8 %124, 76, !dbg !898
  %128 = zext i1 %127 to i64, !dbg !899
  %129 = add i64 %128, %125, !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %129, i64 0, metadata !840, metadata !656) #11, !dbg !832
  %130 = getelementptr inbounds i8, i8* %69, i64 %129, !dbg !901
  %131 = load i8, i8* %130, align 1, !dbg !901, !tbaa !777
  %132 = icmp eq i8 %131, 0, !dbg !903
  br i1 %132, label %133, label %136, !dbg !904

; <label>:133:                                    ; preds = %123
  %134 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i32 5) #11, !dbg !905
  %135 = tail call i8* @quote(i8* nonnull %69) #11, !dbg !906
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %134, i8* %135) #11, !dbg !908
  unreachable, !dbg !905

; <label>:136:                                    ; preds = %123
  %137 = sext i8 %131 to i32, !dbg !901
  %138 = tail call i8* @memchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i32 %137, i64 9) #11, !dbg !910
  %139 = icmp eq i8* %138, null, !dbg !910
  br i1 %139, label %140, label %145, !dbg !913

; <label>:140:                                    ; preds = %136
  %141 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0), i32 5) #11, !dbg !915
  %142 = tail call i8* @quote(i8* nonnull %69) #11, !dbg !916
  %143 = load i8, i8* %130, align 1, !dbg !915, !tbaa !777
  %144 = sext i8 %143 to i32, !dbg !915
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %141, i8* %142, i32 %144) #11, !dbg !918
  unreachable, !dbg !915

; <label>:145:                                    ; preds = %136
  %146 = add i64 %129, 1, !dbg !920
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !840, metadata !656) #11, !dbg !832
  br label %147, !dbg !921

; <label>:147:                                    ; preds = %163, %145
  %148 = phi i64 [ 0, %145 ], [ %164, %163 ]
  %149 = phi i64 [ %146, %145 ], [ %166, %163 ]
  tail call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !840, metadata !656) #11, !dbg !832
  tail call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !842, metadata !656) #11, !dbg !922
  %150 = getelementptr inbounds i8, i8* %69, i64 %149, !dbg !923
  %151 = load i8, i8* %150, align 1, !dbg !923, !tbaa !777
  %152 = icmp eq i8 %151, 37, !dbg !924
  br i1 %152, label %153, label %161, !dbg !925

; <label>:153:                                    ; preds = %147
  %154 = add i64 %149, 1, !dbg !926
  %155 = getelementptr inbounds i8, i8* %69, i64 %154, !dbg !928
  %156 = load i8, i8* %155, align 1, !dbg !928, !tbaa !777
  %157 = icmp eq i8 %156, 37, !dbg !929
  br i1 %157, label %163, label %158, !dbg !930

; <label>:158:                                    ; preds = %153
  %159 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0), i32 5) #11, !dbg !932
  %160 = tail call i8* @quote(i8* nonnull %69) #11, !dbg !933
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %159, i8* %160) #11, !dbg !934
  unreachable, !dbg !932

; <label>:161:                                    ; preds = %147
  %162 = icmp eq i8 %151, 0, !dbg !936
  br i1 %162, label %167, label %163, !dbg !937

; <label>:163:                                    ; preds = %161, %153
  %164 = add i64 %148, 1, !dbg !938
  tail call void @llvm.dbg.value(metadata i64 %164, i64 0, metadata !842, metadata !656) #11, !dbg !922
  %165 = select i1 %152, i64 2, i64 1, !dbg !939
  %166 = add i64 %165, %149, !dbg !940
  tail call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !840, metadata !656) #11, !dbg !832
  br label %147, !dbg !941, !llvm.loop !942

; <label>:167:                                    ; preds = %161
  %168 = add i64 %149, 2, !dbg !945
  %169 = tail call noalias i8* @xmalloc(i64 %168) #11, !dbg !946
  tail call void @llvm.dbg.value(metadata i8* %169, i64 0, metadata !851, metadata !656) #11, !dbg !947
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* nonnull %69, i64 %125, i32 1, i1 false) #11, !dbg !948
  %170 = getelementptr inbounds i8, i8* %169, i64 %125, !dbg !949
  store i8 76, i8* %170, align 1, !dbg !950, !tbaa !777
  %171 = getelementptr inbounds i8, i8* %170, i64 1, !dbg !951
  %172 = getelementptr inbounds i8, i8* %126, i64 %128, !dbg !952
  tail call void @llvm.dbg.value(metadata i8* %171, i64 0, metadata !953, metadata !656) #11, !dbg !962
  tail call void @llvm.dbg.value(metadata i8* %172, i64 0, metadata !961, metadata !656) #11, !dbg !962
  %173 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %171, i1 false) #11, !dbg !964
  %174 = tail call i8* @__strcpy_chk(i8* nonnull %171, i8* nonnull %172, i64 %173) #11, !dbg !965
  tail call void @llvm.dbg.value(metadata i8* %169, i64 0, metadata !734, metadata !656), !dbg !760
  tail call void @llvm.dbg.value(metadata i8* %169, i64 0, metadata !734, metadata !656), !dbg !760
  %175 = icmp eq i8* %169, null, !dbg !966
  br i1 %175, label %180, label %176, !dbg !968

; <label>:176:                                    ; preds = %167
  %177 = load i1, i1* @equal_width, align 1
  br i1 %177, label %178, label %180, !dbg !969

; <label>:178:                                    ; preds = %176
  %179 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !970
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %179) #11, !dbg !972
  tail call void @usage(i32 1) #15, !dbg !974
  unreachable, !dbg !974

; <label>:180:                                    ; preds = %167, %84, %176
  %181 = phi i1 [ true, %176 ], [ false, %167 ], [ false, %84 ]
  %182 = phi i8* [ %169, %176 ], [ null, %167 ], [ null, %84 ]
  %183 = phi i64 [ %88, %176 ], [ %88, %167 ], [ 0, %84 ]
  %184 = phi i64 [ %148, %176 ], [ %148, %167 ], [ 0, %84 ]
  %185 = load i32, i32* @optind, align 4, !dbg !975, !tbaa !770
  %186 = sext i32 %185 to i64, !dbg !976
  %187 = getelementptr inbounds i8*, i8** %1, i64 %186, !dbg !976
  %188 = load i8*, i8** %187, align 8, !dbg !976, !tbaa !664
  tail call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !977, metadata !656) #11, !dbg !983
  %189 = load i8, i8* %188, align 1, !dbg !985, !tbaa !777
  %190 = sext i8 %189 to i32, !dbg !985
  %191 = add nsw i32 %190, -48, !dbg !985
  %192 = icmp ult i32 %191, 10, !dbg !985
  br i1 %192, label %193, label %256, !dbg !986

; <label>:193:                                    ; preds = %180
  %194 = tail call i64 @strlen(i8* nonnull %188) #8, !dbg !987
  %195 = tail call i64 @strspn(i8* nonnull %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !988
  %196 = icmp eq i64 %194, %195, !dbg !990
  br i1 %196, label %197, label %256, !dbg !991

; <label>:197:                                    ; preds = %193
  %198 = icmp eq i32 %70, 1, !dbg !992
  br i1 %198, label %236, label %199, !dbg !994

; <label>:199:                                    ; preds = %197
  %200 = add nsw i32 %185, 1, !dbg !995
  %201 = sext i32 %200 to i64, !dbg !997
  %202 = getelementptr inbounds i8*, i8** %1, i64 %201, !dbg !997
  %203 = load i8*, i8** %202, align 8, !dbg !997, !tbaa !664
  tail call void @llvm.dbg.value(metadata i8* %203, i64 0, metadata !977, metadata !656) #11, !dbg !998
  %204 = load i8, i8* %203, align 1, !dbg !1000, !tbaa !777
  %205 = sext i8 %204 to i32, !dbg !1000
  %206 = add nsw i32 %205, -48, !dbg !1000
  %207 = icmp ult i32 %206, 10, !dbg !1000
  br i1 %207, label %208, label %256, !dbg !1001

; <label>:208:                                    ; preds = %199
  %209 = tail call i64 @strlen(i8* nonnull %203) #8, !dbg !1002
  %210 = tail call i64 @strspn(i8* nonnull %203, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !1003
  %211 = icmp eq i64 %209, %210, !dbg !1004
  br i1 %211, label %212, label %256, !dbg !1005

; <label>:212:                                    ; preds = %208
  %213 = icmp ult i32 %70, 3, !dbg !1006
  br i1 %213, label %236, label %214, !dbg !1007

; <label>:214:                                    ; preds = %212
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !736, metadata !656), !dbg !1008
  tail call void @llvm.dbg.value(metadata i8* %203, i64 0, metadata !740, metadata !656), !dbg !1009
  %215 = icmp eq i8 %204, 49, !dbg !1010
  br i1 %215, label %216, label %256, !dbg !1013

; <label>:216:                                    ; preds = %214
  %217 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !1015
  %218 = load i8, i8* %217, align 1, !dbg !1015, !tbaa !777
  %219 = icmp eq i8 %218, 0, !dbg !1018
  br i1 %219, label %220, label %256, !dbg !1020

; <label>:220:                                    ; preds = %216
  %221 = add nsw i32 %185, 2, !dbg !1021
  %222 = sext i32 %221 to i64, !dbg !1022
  %223 = getelementptr inbounds i8*, i8** %1, i64 %222, !dbg !1022
  %224 = load i8*, i8** %223, align 8, !dbg !1022, !tbaa !664
  tail call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !977, metadata !656) #11, !dbg !1023
  %225 = load i8, i8* %224, align 1, !dbg !1025, !tbaa !777
  %226 = sext i8 %225 to i32, !dbg !1025
  %227 = add nsw i32 %226, -48, !dbg !1025
  %228 = icmp ult i32 %227, 10, !dbg !1025
  br i1 %228, label %229, label %256, !dbg !1026

; <label>:229:                                    ; preds = %220
  %230 = tail call i64 @strlen(i8* nonnull %224) #8, !dbg !1027
  %231 = tail call i64 @strspn(i8* nonnull %224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !1028
  %232 = icmp ne i64 %230, %231, !dbg !1029
  %233 = load i1, i1* @equal_width, align 1
  %234 = or i1 %181, %233, !dbg !1030
  %235 = or i1 %232, %234, !dbg !1029
  br i1 %235, label %256, label %239, !dbg !1029

; <label>:236:                                    ; preds = %197, %212
  %237 = load i1, i1* @equal_width, align 1
  %238 = or i1 %181, %237, !dbg !1030
  br i1 %238, label %256, label %239, !dbg !1030

; <label>:239:                                    ; preds = %229, %236
  %240 = load i8*, i8** @separator, align 8, !dbg !1031, !tbaa !664
  %241 = tail call i64 @strlen(i8* %240) #8, !dbg !1033
  %242 = icmp eq i64 %241, 1, !dbg !1034
  br i1 %242, label %243, label %256, !dbg !1035

; <label>:243:                                    ; preds = %239
  %244 = select i1 %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i8* %188, !dbg !1036
  tail call void @llvm.dbg.value(metadata i8* %244, i64 0, metadata !743, metadata !656), !dbg !1037
  %245 = add i32 %70, -1, !dbg !1038
  %246 = add i32 %245, %185, !dbg !1039
  %247 = zext i32 %246 to i64, !dbg !1040
  %248 = getelementptr inbounds i8*, i8** %1, i64 %247, !dbg !1040
  %249 = load i8*, i8** %248, align 8, !dbg !1040, !tbaa !664
  tail call void @llvm.dbg.value(metadata i8* %249, i64 0, metadata !745, metadata !656), !dbg !1041
  %250 = tail call fastcc zeroext i1 @seq_fast(i8* %244, i8* %249), !dbg !1042
  br i1 %250, label %507, label %251

; <label>:251:                                    ; preds = %243
  %252 = load i32, i32* @optind, align 4, !tbaa !770
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %1, i64 %253
  %255 = load i8*, i8** %254, align 8, !tbaa !664
  br label %256

; <label>:256:                                    ; preds = %251, %220, %214, %199, %180, %229, %239, %236, %216, %208, %193
  %257 = phi i8* [ %255, %251 ], [ %188, %220 ], [ %188, %214 ], [ %188, %199 ], [ %188, %180 ], [ %188, %229 ], [ %188, %239 ], [ %188, %236 ], [ %188, %216 ], [ %188, %208 ], [ %188, %193 ], !dbg !1044
  %258 = phi i32 [ %252, %251 ], [ %185, %220 ], [ %185, %214 ], [ %185, %199 ], [ %185, %180 ], [ %185, %229 ], [ %185, %239 ], [ %185, %236 ], [ %185, %216 ], [ %185, %208 ], [ %185, %193 ], !dbg !1045
  %259 = add nsw i32 %258, 1, !dbg !1045
  store i32 %259, i32* @optind, align 4, !dbg !1045, !tbaa !770
  call fastcc void @scan_arg(%struct.operand* nonnull sret %11, i8* %257), !dbg !1046
  %260 = bitcast %struct.operand* %11 to i8*, !dbg !1046
  %261 = getelementptr inbounds %struct.operand, %struct.operand* %11, i64 0, i32 0, !dbg !1046
  %262 = load x86_fp80, x86_fp80* %261, align 16, !dbg !1046
  %263 = getelementptr inbounds i8, i8* %260, i64 10, !dbg !1046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %18, i8* %263, i64 6, i32 2, i1 false), !dbg !1046
  %264 = getelementptr inbounds %struct.operand, %struct.operand* %11, i64 0, i32 1, !dbg !1046
  %265 = load i64, i64* %264, align 16, !dbg !1046
  %266 = getelementptr inbounds %struct.operand, %struct.operand* %11, i64 0, i32 2, !dbg !1046
  %267 = load i32, i32* %266, align 8, !dbg !1046
  %268 = getelementptr inbounds i8, i8* %260, i64 28, !dbg !1046
  %269 = bitcast i8* %268 to i32*, !dbg !1046
  %270 = load i32, i32* %269, align 4, !dbg !1046
  %271 = load i32, i32* @optind, align 4, !dbg !1047, !tbaa !770
  %272 = icmp slt i32 %271, %0, !dbg !1049
  br i1 %272, label %273, label %314, !dbg !1050

; <label>:273:                                    ; preds = %256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %16, i8* nonnull %18, i64 6, i32 2, i1 false), !dbg !1051
  %274 = add nsw i32 %271, 1, !dbg !1053
  store i32 %274, i32* @optind, align 4, !dbg !1053, !tbaa !770
  %275 = sext i32 %271 to i64, !dbg !1054
  %276 = getelementptr inbounds i8*, i8** %1, i64 %275, !dbg !1054
  %277 = load i8*, i8** %276, align 8, !dbg !1054, !tbaa !664
  call fastcc void @scan_arg(%struct.operand* nonnull sret %12, i8* %277), !dbg !1055
  %278 = bitcast %struct.operand* %12 to i8*, !dbg !1055
  %279 = getelementptr inbounds %struct.operand, %struct.operand* %12, i64 0, i32 0, !dbg !1055
  %280 = load x86_fp80, x86_fp80* %279, align 16, !dbg !1055
  %281 = getelementptr inbounds i8, i8* %278, i64 10, !dbg !1055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %18, i8* %281, i64 6, i32 2, i1 false), !dbg !1055
  %282 = getelementptr inbounds %struct.operand, %struct.operand* %12, i64 0, i32 1, !dbg !1055
  %283 = load i64, i64* %282, align 16, !dbg !1055
  %284 = getelementptr inbounds %struct.operand, %struct.operand* %12, i64 0, i32 2, !dbg !1055
  %285 = load i32, i32* %284, align 8, !dbg !1055
  %286 = getelementptr inbounds i8, i8* %278, i64 28, !dbg !1055
  %287 = bitcast i8* %286 to i32*, !dbg !1055
  %288 = load i32, i32* %287, align 4, !dbg !1055
  %289 = load i32, i32* @optind, align 4, !dbg !1056, !tbaa !770
  %290 = icmp slt i32 %289, %0, !dbg !1058
  br i1 %290, label %291, label %314, !dbg !1059

; <label>:291:                                    ; preds = %273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %17, i8* nonnull %18, i64 6, i32 2, i1 false), !dbg !1060
  %292 = fcmp oeq x86_fp80 %280, 0xK00000000000000000000, !dbg !1062
  br i1 %292, label %293, label %301, !dbg !1064

; <label>:293:                                    ; preds = %291
  %294 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !1065
  %295 = load i32, i32* @optind, align 4, !dbg !1067, !tbaa !770
  %296 = add nsw i32 %295, -1, !dbg !1068
  %297 = sext i32 %296 to i64, !dbg !1069
  %298 = getelementptr inbounds i8*, i8** %1, i64 %297, !dbg !1069
  %299 = load i8*, i8** %298, align 8, !dbg !1069, !tbaa !664
  %300 = tail call i8* @quote(i8* %299) #11, !dbg !1070
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %294, i8* %300) #11, !dbg !1071
  tail call void @usage(i32 1) #15, !dbg !1073
  unreachable, !dbg !1073

; <label>:301:                                    ; preds = %291
  %302 = add nsw i32 %289, 1, !dbg !1074
  store i32 %302, i32* @optind, align 4, !dbg !1074, !tbaa !770
  %303 = sext i32 %289 to i64, !dbg !1075
  %304 = getelementptr inbounds i8*, i8** %1, i64 %303, !dbg !1075
  %305 = load i8*, i8** %304, align 8, !dbg !1075, !tbaa !664
  call fastcc void @scan_arg(%struct.operand* nonnull sret %13, i8* %305), !dbg !1076
  %306 = bitcast %struct.operand* %13 to i8*, !dbg !1076
  %307 = getelementptr inbounds %struct.operand, %struct.operand* %13, i64 0, i32 0, !dbg !1076
  %308 = load x86_fp80, x86_fp80* %307, align 16, !dbg !1076
  %309 = getelementptr inbounds i8, i8* %306, i64 10, !dbg !1076
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %18, i8* %309, i64 6, i32 2, i1 false), !dbg !1076
  %310 = getelementptr inbounds %struct.operand, %struct.operand* %13, i64 0, i32 1, !dbg !1076
  %311 = load i64, i64* %310, align 16, !dbg !1076
  %312 = getelementptr inbounds %struct.operand, %struct.operand* %13, i64 0, i32 2, !dbg !1076
  %313 = load i32, i32* %312, align 8, !dbg !1076
  br label %314, !dbg !1077

; <label>:314:                                    ; preds = %273, %301, %256
  %315 = phi i64 [ %311, %301 ], [ %283, %273 ], [ %265, %256 ]
  %316 = phi i64 [ %265, %301 ], [ %265, %273 ], [ 1, %256 ]
  %317 = phi i64 [ %283, %301 ], [ 1, %273 ], [ 1, %256 ]
  %318 = phi i32 [ %270, %301 ], [ %270, %273 ], [ 0, %256 ]
  %319 = phi i32 [ %267, %301 ], [ %267, %273 ], [ 0, %256 ]
  %320 = phi x86_fp80 [ %262, %301 ], [ %262, %273 ], [ 0xK3FFF8000000000000000, %256 ]
  %321 = phi i32 [ %288, %301 ], [ 0, %273 ], [ 0, %256 ]
  %322 = phi i32 [ %285, %301 ], [ 0, %273 ], [ 0, %256 ]
  %323 = phi x86_fp80 [ %280, %301 ], [ 0xK3FFF8000000000000000, %273 ], [ 0xK3FFF8000000000000000, %256 ]
  %324 = phi i32 [ %313, %301 ], [ %285, %273 ], [ %267, %256 ]
  %325 = phi x86_fp80 [ %308, %301 ], [ %280, %273 ], [ %262, %256 ]
  %326 = fmul x86_fp80 %320, 0xK00000000000000000000, !dbg !1078
  %327 = fcmp oeq x86_fp80 %326, 0xK00000000000000000000, !dbg !1078
  %328 = or i32 %322, %319, !dbg !1079
  %329 = icmp eq i32 %328, 0, !dbg !1079
  %330 = and i1 %327, %329, !dbg !1079
  br i1 %330, label %331, label %377, !dbg !1079

; <label>:331:                                    ; preds = %314
  %332 = icmp eq i32 %324, 0, !dbg !1080
  %333 = fcmp oge x86_fp80 %320, 0xK00000000000000000000, !dbg !1080
  %334 = and i1 %333, %332, !dbg !1080
  %335 = fcmp oeq x86_fp80 %323, 0xK3FFF8000000000000000, !dbg !1081
  %336 = and i1 %335, %334, !dbg !1080
  br i1 %336, label %337, label %377, !dbg !1080

; <label>:337:                                    ; preds = %331
  %338 = fcmp ult x86_fp80 %325, 0xK00000000000000000000, !dbg !1083
  %339 = load i1, i1* @equal_width, align 1
  %340 = or i1 %181, %339, !dbg !1085
  %341 = or i1 %338, %340, !dbg !1087
  br i1 %341, label %377, label %342, !dbg !1087

; <label>:342:                                    ; preds = %337
  %343 = load i8*, i8** @separator, align 8, !dbg !1088, !tbaa !664
  %344 = tail call i64 @strlen(i8* %343) #8, !dbg !1089
  %345 = icmp eq i64 %344, 1, !dbg !1090
  br i1 %345, label %346, label %377, !dbg !1091

; <label>:346:                                    ; preds = %342
  %347 = bitcast i8** %14 to i8*, !dbg !1093
  call void @llvm.lifetime.start(i64 8, i8* nonnull %347) #11, !dbg !1093
  %348 = bitcast i8** %15 to i8*, !dbg !1094
  call void @llvm.lifetime.start(i64 8, i8* nonnull %348) #11, !dbg !1094
  tail call void @llvm.dbg.value(metadata i8** %14, i64 0, metadata !746, metadata !1095), !dbg !1096
  %349 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %14, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %320) #11, !dbg !1097
  %350 = icmp slt i32 %349, 0, !dbg !1099
  br i1 %350, label %351, label %352, !dbg !1100

; <label>:351:                                    ; preds = %346
  call void @xalloc_die() #14, !dbg !1101
  unreachable, !dbg !1101

; <label>:352:                                    ; preds = %346
  %353 = fmul x86_fp80 %325, 0xK00000000000000000000, !dbg !1102
  %354 = fcmp oeq x86_fp80 %353, 0xK00000000000000000000, !dbg !1102
  br i1 %354, label %357, label %355, !dbg !1104

; <label>:355:                                    ; preds = %352
  %356 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #11, !dbg !1105
  call void @llvm.dbg.value(metadata i8* %356, i64 0, metadata !749, metadata !656), !dbg !1106
  store i8* %356, i8** %15, align 8, !dbg !1107, !tbaa !664
  br label %361, !dbg !1108

; <label>:357:                                    ; preds = %352
  call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !749, metadata !1095), !dbg !1106
  %358 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %15, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), x86_fp80 %325) #11, !dbg !1109
  %359 = icmp slt i32 %358, 0, !dbg !1111
  br i1 %359, label %360, label %361, !dbg !1112

; <label>:360:                                    ; preds = %357
  call void @xalloc_die() #14, !dbg !1113
  unreachable, !dbg !1113

; <label>:361:                                    ; preds = %357, %355
  %362 = load i8*, i8** %14, align 8, !dbg !1114, !tbaa !664
  call void @llvm.dbg.value(metadata i8* %362, i64 0, metadata !746, metadata !656), !dbg !1096
  %363 = load i8, i8* %362, align 1, !dbg !1116, !tbaa !777
  %364 = icmp eq i8 %363, 45, !dbg !1117
  br i1 %364, label %373, label %365, !dbg !1118

; <label>:365:                                    ; preds = %361
  %366 = load i8*, i8** %15, align 8, !dbg !1119, !tbaa !664
  call void @llvm.dbg.value(metadata i8* %366, i64 0, metadata !749, metadata !656), !dbg !1106
  %367 = load i8, i8* %366, align 1, !dbg !1121, !tbaa !777
  %368 = icmp eq i8 %367, 45, !dbg !1122
  br i1 %368, label %373, label %369, !dbg !1123

; <label>:369:                                    ; preds = %365
  %370 = call fastcc zeroext i1 @seq_fast(i8* %362, i8* %366), !dbg !1124
  br i1 %370, label %376, label %371, !dbg !1126

; <label>:371:                                    ; preds = %369
  %372 = load i8*, i8** %14, align 8, !tbaa !664
  br label %373, !dbg !1126

; <label>:373:                                    ; preds = %371, %365, %361
  %374 = phi i8* [ %372, %371 ], [ %362, %365 ], [ %362, %361 ], !dbg !1128
  call void @llvm.dbg.value(metadata i8* %374, i64 0, metadata !746, metadata !656), !dbg !1096
  call void @free(i8* %374) #11, !dbg !1129
  %375 = load i8*, i8** %15, align 8, !dbg !1130, !tbaa !664
  call void @llvm.dbg.value(metadata i8* %375, i64 0, metadata !749, metadata !656), !dbg !1106
  call void @free(i8* %375) #11, !dbg !1131
  call void @llvm.lifetime.end(i64 8, i8* nonnull %348) #11, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* nonnull %347) #11, !dbg !1132
  br label %377

; <label>:376:                                    ; preds = %369
  call void @llvm.lifetime.end(i64 8, i8* nonnull %348) #11, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* nonnull %347) #11, !dbg !1132
  br label %507

; <label>:377:                                    ; preds = %331, %373, %337, %342, %314
  %378 = icmp eq i8* %182, null, !dbg !1133
  br i1 %378, label %379, label %434, !dbg !1134

; <label>:379:                                    ; preds = %377
  call void @llvm.dbg.value(metadata %struct.operand* undef, i64 0, metadata !726, metadata !1095), !dbg !756
  call void @llvm.dbg.value(metadata %struct.operand* undef, i64 0, metadata !727, metadata !1095), !dbg !758
  call void @llvm.dbg.value(metadata %struct.operand* undef, i64 0, metadata !728, metadata !1095), !dbg !1135
  %380 = bitcast %struct.operand* %7 to i8*, !dbg !1136
  call void @llvm.lifetime.start(i64 32, i8* nonnull %380), !dbg !1136
  %381 = bitcast %struct.operand* %6 to i8*, !dbg !1136
  call void @llvm.lifetime.start(i64 32, i8* nonnull %381), !dbg !1136
  call void @llvm.dbg.value(metadata x86_fp80 %325, i64 0, metadata !105, metadata !1137), !dbg !750
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !105, metadata !1138), !dbg !750
  call void @llvm.dbg.value(metadata i32 %324, i64 0, metadata !105, metadata !1139), !dbg !750
  %382 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 0, !dbg !1136
  store x86_fp80 %323, x86_fp80* %382, align 16, !dbg !1136
  %383 = getelementptr inbounds i8, i8* %381, i64 10, !dbg !1136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %383, i8* nonnull %17, i64 6, i32 2, i1 false), !dbg !1136
  %384 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 1, !dbg !1136
  store i64 %317, i64* %384, align 16, !dbg !1136
  %385 = getelementptr inbounds %struct.operand, %struct.operand* %6, i64 0, i32 2, !dbg !1136
  store i32 %322, i32* %385, align 8, !dbg !1136
  %386 = getelementptr inbounds i8, i8* %381, i64 28, !dbg !1136
  %387 = bitcast i8* %386 to i32*, !dbg !1136
  store i32 %321, i32* %387, align 4, !dbg !1136
  %388 = getelementptr inbounds %struct.operand, %struct.operand* %7, i64 0, i32 0, !dbg !1136
  store x86_fp80 %320, x86_fp80* %388, align 16, !dbg !1136
  %389 = getelementptr inbounds i8, i8* %380, i64 10, !dbg !1136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %389, i8* nonnull %16, i64 6, i32 2, i1 false), !dbg !1136
  %390 = getelementptr inbounds %struct.operand, %struct.operand* %7, i64 0, i32 1, !dbg !1136
  store i64 %316, i64* %390, align 16, !dbg !1136
  %391 = getelementptr inbounds %struct.operand, %struct.operand* %7, i64 0, i32 2, !dbg !1136
  store i32 %319, i32* %391, align 8, !dbg !1136
  %392 = getelementptr inbounds i8, i8* %380, i64 28, !dbg !1136
  %393 = bitcast i8* %392 to i32*, !dbg !1136
  store i32 %318, i32* %393, align 4, !dbg !1136
  %394 = icmp sgt i32 %319, %322, !dbg !1140
  %395 = select i1 %394, %struct.operand* %7, %struct.operand* %6, !dbg !1140
  %396 = getelementptr inbounds %struct.operand, %struct.operand* %395, i64 0, i32 2
  %397 = load i32, i32* %396, align 8, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %397, i64 0, metadata !106, metadata !656) #11, !dbg !1145
  %398 = icmp eq i32 %397, 2147483647, !dbg !1146
  %399 = icmp eq i32 %324, 2147483647, !dbg !1147
  %400 = or i1 %399, %398, !dbg !1149
  br i1 %400, label %432, label %401, !dbg !1149

; <label>:401:                                    ; preds = %379
  %402 = load i1, i1* @equal_width, align 1
  br i1 %402, label %403, label %430, !dbg !1150

; <label>:403:                                    ; preds = %401
  %404 = sub nsw i32 %397, %319, !dbg !1151
  %405 = sext i32 %404 to i64, !dbg !1152
  %406 = sub nsw i32 %397, %324, !dbg !1153
  %407 = sext i32 %406 to i64, !dbg !1154
  %408 = icmp ne i32 %324, 0, !dbg !1155
  %409 = icmp eq i32 %397, 0, !dbg !1157
  %410 = and i1 %408, %409, !dbg !1159
  %411 = sext i1 %410 to i64, !dbg !1159
  %412 = icmp eq i32 %324, 0, !dbg !1160
  %413 = icmp ne i32 %397, 0, !dbg !1162
  %414 = and i1 %412, %413, !dbg !1164
  %415 = zext i1 %414 to i64, !dbg !1164
  %416 = add i64 %407, %315, !dbg !1165
  %417 = add i64 %416, %411, !dbg !1159
  %418 = add i64 %417, %415, !dbg !1164
  call void @llvm.dbg.value(metadata i64 %418, i64 0, metadata !112, metadata !656) #11, !dbg !1166
  %419 = icmp eq i32 %319, 0, !dbg !1167
  %420 = and i1 %419, %413, !dbg !1169
  %421 = zext i1 %420 to i64, !dbg !1169
  %422 = add nsw i64 %421, %405, !dbg !1170
  %423 = add i64 %422, %316, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !107, metadata !656) #11, !dbg !1171
  %424 = icmp ugt i64 %423, %418, !dbg !1172
  %425 = select i1 %424, i64 %423, i64 %418, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %425, i64 0, metadata !113, metadata !656) #11, !dbg !1173
  %426 = icmp ult i64 %425, 2147483648, !dbg !1174
  br i1 %426, label %427, label %432, !dbg !1175

; <label>:427:                                    ; preds = %403
  %428 = trunc i64 %425 to i32, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %428, i64 0, metadata !114, metadata !656) #11, !dbg !1177
  %429 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i32 %428, i32 %397) #11, !dbg !1178
  br label %432

; <label>:430:                                    ; preds = %401
  %431 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), i32 1, i64 28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), i32 %397) #11, !dbg !1179
  br label %432, !dbg !1181

; <label>:432:                                    ; preds = %379, %403, %427, %430
  %433 = phi i8* [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %430 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @get_default_format.format_buf, i64 0, i64 0), %427 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %403 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %379 ]
  call void @llvm.lifetime.end(i64 32, i8* nonnull %380), !dbg !1182
  call void @llvm.lifetime.end(i64 32, i8* nonnull %381), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %433, i64 0, metadata !734, metadata !656), !dbg !760
  br label %434, !dbg !1183

; <label>:434:                                    ; preds = %432, %377
  %435 = phi i8* [ %433, %432 ], [ %182, %377 ]
  call void @llvm.dbg.value(metadata i8* %435, i64 0, metadata !734, metadata !656), !dbg !760
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !1184, metadata !1214) #11, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !1184, metadata !1217) #11, !dbg !1215
  call void @llvm.dbg.value(metadata i8* %435, i64 0, metadata !1189, metadata !656) #11, !dbg !1218
  call void @llvm.dbg.declare(metadata %struct.layout* undef, metadata !1184, metadata !656) #11, !dbg !1215
  call void @llvm.dbg.value(metadata x86_fp80 %320, i64 0, metadata !1190, metadata !656) #11, !dbg !1219
  call void @llvm.dbg.value(metadata x86_fp80 %323, i64 0, metadata !1191, metadata !656) #11, !dbg !1220
  call void @llvm.dbg.value(metadata x86_fp80 %325, i64 0, metadata !1192, metadata !656) #11, !dbg !1221
  %436 = fcmp olt x86_fp80 %323, 0xK00000000000000000000, !dbg !1222
  %437 = fcmp olt x86_fp80 %325, %320, !dbg !1223
  %438 = fcmp olt x86_fp80 %320, %325, !dbg !1225
  %439 = select i1 %436, i1 %438, i1 %437, !dbg !1227
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1193, metadata !656) #11, !dbg !1228
  br i1 %439, label %507, label %440, !dbg !1229

; <label>:440:                                    ; preds = %434
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1193, metadata !656) #11, !dbg !1228
  call void @llvm.dbg.value(metadata x86_fp80 %320, i64 0, metadata !1194, metadata !656) #11, !dbg !1230
  call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1197, metadata !656) #11, !dbg !1231
  call void @llvm.dbg.value(metadata x86_fp80 %320, i64 0, metadata !1198, metadata !656) #11, !dbg !1232
  %441 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %435, x86_fp80 %320) #11, !dbg !1233
  %442 = icmp slt i32 %441, 0, !dbg !1235
  br i1 %442, label %448, label %443, !dbg !1236

; <label>:443:                                    ; preds = %440
  %444 = bitcast x86_fp80* %3 to i8*
  %445 = bitcast i8** %4 to i8*
  %446 = bitcast i8** %5 to i8*
  br label %449, !dbg !1236

; <label>:447:                                    ; preds = %498
  br label %448, !dbg !1237

; <label>:448:                                    ; preds = %447, %440
  call fastcc void @io_error() #14, !dbg !1237
  unreachable, !dbg !1237

; <label>:449:                                    ; preds = %498, %443
  %450 = phi i8 [ 0, %443 ], [ %460, %498 ]
  %451 = phi x86_fp80 [ %320, %443 ], [ %456, %498 ]
  %452 = phi x86_fp80 [ 0xK3FFF8000000000000000, %443 ], [ %499, %498 ]
  %453 = icmp eq i8 %450, 0, !dbg !1238
  br i1 %453, label %454, label %502, !dbg !1240

; <label>:454:                                    ; preds = %449
  %455 = fmul x86_fp80 %323, %452, !dbg !1241
  %456 = fadd x86_fp80 %320, %455, !dbg !1242
  call void @llvm.dbg.value(metadata x86_fp80 %456, i64 0, metadata !1194, metadata !656) #11, !dbg !1230
  %457 = fcmp ogt x86_fp80 %456, %325, !dbg !1243
  %458 = fcmp olt x86_fp80 %456, %325, !dbg !1245
  %459 = select i1 %436, i1 %458, i1 %457, !dbg !1247
  %460 = zext i1 %459 to i8, !dbg !1248
  call void @llvm.dbg.value(metadata i8 %460, i64 0, metadata !1193, metadata !656) #11, !dbg !1228
  br i1 %459, label %461, label %492, !dbg !1250

; <label>:461:                                    ; preds = %454
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1202, metadata !656) #11, !dbg !1251
  call void @llvm.lifetime.start(i64 16, i8* nonnull %444) #11, !dbg !1252
  call void @llvm.lifetime.start(i64 8, i8* nonnull %445) #11, !dbg !1253
  %462 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #11, !dbg !1254
  call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1206, metadata !1095) #11, !dbg !1255
  %463 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %4, i32 1, i8* %435, x86_fp80 %456) #11, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %463, i64 0, metadata !1207, metadata !656) #11, !dbg !1257
  %464 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !1258
  %465 = icmp slt i32 %463, 0, !dbg !1259
  br i1 %465, label %466, label %467, !dbg !1261

; <label>:466:                                    ; preds = %461
  call void @xalloc_die() #14, !dbg !1262
  unreachable, !dbg !1262

; <label>:467:                                    ; preds = %461
  %468 = load i8*, i8** %4, align 8, !dbg !1263, !tbaa !664
  call void @llvm.dbg.value(metadata i8* %468, i64 0, metadata !1206, metadata !656) #11, !dbg !1255
  %469 = sext i32 %463 to i64, !dbg !1264
  %470 = sub i64 %469, %184, !dbg !1265
  %471 = getelementptr inbounds i8, i8* %468, i64 %470, !dbg !1263
  store i8 0, i8* %471, align 1, !dbg !1266, !tbaa !777
  %472 = load i8*, i8** %4, align 8, !dbg !1267, !tbaa !664
  call void @llvm.dbg.value(metadata i8* %472, i64 0, metadata !1206, metadata !656) #11, !dbg !1255
  %473 = getelementptr inbounds i8, i8* %472, i64 %183, !dbg !1268
  call void @llvm.dbg.value(metadata x86_fp80* %3, i64 0, metadata !1205, metadata !1095) #11, !dbg !1269
  %474 = call zeroext i1 @xstrtold(i8* %473, i8** null, x86_fp80* nonnull %3, x86_fp80 (i8*, i8**)* nonnull @c_strtold) #11, !dbg !1270
  %475 = load x86_fp80, x86_fp80* %3, align 16, !dbg !1271
  %476 = fcmp oeq x86_fp80 %475, %325, !dbg !1273
  %477 = and i1 %474, %476, !dbg !1274
  br i1 %477, label %478, label %488, !dbg !1274

; <label>:478:                                    ; preds = %467
  call void @llvm.lifetime.start(i64 8, i8* nonnull %446) #11, !dbg !1275
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1208, metadata !656) #11, !dbg !1276
  store i8* null, i8** %5, align 8, !dbg !1276, !tbaa !664
  call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !1208, metadata !1095) #11, !dbg !1276
  %479 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* %435, x86_fp80 %451) #11, !dbg !1277
  %480 = icmp slt i32 %479, 0, !dbg !1279
  br i1 %480, label %481, label %482, !dbg !1280

; <label>:481:                                    ; preds = %478
  call void @xalloc_die() #14, !dbg !1281
  unreachable, !dbg !1281

; <label>:482:                                    ; preds = %478
  %483 = load i8*, i8** %5, align 8, !dbg !1282, !tbaa !664
  call void @llvm.dbg.value(metadata i8* %483, i64 0, metadata !1208, metadata !656) #11, !dbg !1276
  %484 = load i8*, i8** %4, align 8, !dbg !1282, !tbaa !664
  call void @llvm.dbg.value(metadata i8* %484, i64 0, metadata !1206, metadata !656) #11, !dbg !1255
  %485 = call i32 @strcmp(i8* %483, i8* %484) #11, !dbg !1282
  %486 = icmp ne i32 %485, 0, !dbg !1283
  %487 = zext i1 %486 to i8, !dbg !1284
  call void @llvm.dbg.value(metadata i8 %487, i64 0, metadata !1202, metadata !656) #11, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %483, i64 0, metadata !1208, metadata !656) #11, !dbg !1276
  call void @free(i8* %483) #11, !dbg !1285
  call void @llvm.lifetime.end(i64 8, i8* nonnull %446) #11, !dbg !1286
  br label %488, !dbg !1287

; <label>:488:                                    ; preds = %482, %467
  %489 = phi i8 [ %487, %482 ], [ 0, %467 ]
  call void @llvm.dbg.value(metadata i8 %489, i64 0, metadata !1202, metadata !656) #11, !dbg !1251
  %490 = load i8*, i8** %4, align 8, !dbg !1288, !tbaa !664
  call void @llvm.dbg.value(metadata i8* %490, i64 0, metadata !1206, metadata !656) #11, !dbg !1255
  call void @free(i8* %490) #11, !dbg !1289
  call void @llvm.lifetime.end(i64 8, i8* nonnull %445) #11, !dbg !1290
  call void @llvm.lifetime.end(i64 16, i8* nonnull %444) #11, !dbg !1290
  %491 = icmp eq i8 %489, 0
  br i1 %491, label %502, label %492

; <label>:492:                                    ; preds = %488, %454
  %493 = load i8*, i8** @separator, align 8, !dbg !1291, !tbaa !664
  %494 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1291, !tbaa !664
  %495 = call i32 @fputs_unlocked(i8* %493, %struct._IO_FILE* %494) #11, !dbg !1291
  %496 = icmp eq i32 %495, -1, !dbg !1293
  br i1 %496, label %497, label %498, !dbg !1294

; <label>:497:                                    ; preds = %492
  call fastcc void @io_error() #14, !dbg !1295
  unreachable, !dbg !1295

; <label>:498:                                    ; preds = %492
  call void @llvm.dbg.value(metadata i8 %460, i64 0, metadata !1193, metadata !656) #11, !dbg !1228
  call void @llvm.dbg.value(metadata x86_fp80 %456, i64 0, metadata !1194, metadata !656) #11, !dbg !1230
  %499 = fadd x86_fp80 %452, 0xK3FFF8000000000000000, !dbg !1296
  call void @llvm.dbg.value(metadata x86_fp80 %499, i64 0, metadata !1197, metadata !656) #11, !dbg !1231
  call void @llvm.dbg.value(metadata i8 %460, i64 0, metadata !1193, metadata !656) #11, !dbg !1228
  call void @llvm.dbg.value(metadata x86_fp80 %456, i64 0, metadata !1194, metadata !656) #11, !dbg !1230
  call void @llvm.dbg.value(metadata x86_fp80 %499, i64 0, metadata !1197, metadata !656) #11, !dbg !1231
  call void @llvm.dbg.value(metadata x86_fp80 %456, i64 0, metadata !1198, metadata !656) #11, !dbg !1232
  %500 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %435, x86_fp80 %456) #11, !dbg !1233
  %501 = icmp slt i32 %500, 0, !dbg !1235
  br i1 %501, label %447, label %449, !dbg !1236, !llvm.loop !1298

; <label>:502:                                    ; preds = %488, %449
  %503 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1301, !tbaa !664
  %504 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %503) #11, !dbg !1301
  %505 = icmp eq i32 %504, -1, !dbg !1303
  br i1 %505, label %506, label %507, !dbg !1304

; <label>:506:                                    ; preds = %502
  call fastcc void @io_error() #14, !dbg !1305
  unreachable, !dbg !1305

; <label>:507:                                    ; preds = %243, %502, %434, %376
  call void @llvm.lifetime.end(i64 6, i8* nonnull %18), !dbg !1306
  call void @llvm.lifetime.end(i64 6, i8* nonnull %17), !dbg !1306
  call void @llvm.lifetime.end(i64 6, i8* nonnull %16), !dbg !1306
  ret i32 0, !dbg !1306
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

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
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #8

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @seq_fast(i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1307 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1311, metadata !656), !dbg !1340
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1312, metadata !656), !dbg !1341
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !1316, metadata !656), !dbg !1342
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1317, metadata !656), !dbg !1343
  %3 = load i8, i8* %1, align 1, !dbg !1344, !tbaa !777
  %4 = zext i8 %3 to i32, !dbg !1344
  %5 = sub nsw i32 105, %4, !dbg !1344
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1319, metadata !656), !dbg !1343
  %6 = icmp eq i32 %5, 0, !dbg !1346
  br i1 %6, label %7, label %24, !dbg !1349

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1351
  %9 = load i8, i8* %8, align 1, !dbg !1351, !tbaa !777
  %10 = zext i8 %9 to i32, !dbg !1351
  %11 = sub nsw i32 110, %10, !dbg !1351
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1319, metadata !656), !dbg !1343
  %12 = icmp eq i32 %11, 0, !dbg !1354
  br i1 %12, label %13, label %24, !dbg !1357

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1359
  %15 = load i8, i8* %14, align 1, !dbg !1359, !tbaa !777
  %16 = zext i8 %15 to i32, !dbg !1359
  %17 = sub nsw i32 102, %16, !dbg !1359
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1319, metadata !656), !dbg !1343
  %18 = icmp eq i32 %17, 0, !dbg !1362
  br i1 %18, label %19, label %24, !dbg !1365

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !1367
  %21 = load i8, i8* %20, align 1, !dbg !1367, !tbaa !777
  %22 = zext i8 %21 to i32, !dbg !1367
  %23 = sub nsw i32 0, %22, !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !1319, metadata !656), !dbg !1343
  br label %24, !dbg !1367

; <label>:24:                                     ; preds = %7, %19, %13, %2
  %25 = phi i32 [ %23, %19 ], [ %17, %13 ], [ %11, %7 ], [ %5, %2 ]
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !1319, metadata !656), !dbg !1343
  %26 = icmp eq i32 %25, 0, !dbg !1369
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1371, metadata !656), !dbg !1377
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1376, metadata !656), !dbg !1379
  br label %27, !dbg !1380

; <label>:27:                                     ; preds = %30, %24
  %28 = phi i8* [ %0, %24 ], [ %31, %30 ]
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1371, metadata !656), !dbg !1377
  %29 = load i8, i8* %28, align 1, !dbg !1381, !tbaa !777
  switch i8 %29, label %36 [
    i8 48, label %30
    i8 0, label %32
  ], !dbg !1383

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1384
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !1371, metadata !656), !dbg !1377
  br label %27, !dbg !1385, !llvm.loop !1387

; <label>:32:                                     ; preds = %27
  %33 = icmp eq i8* %28, %0, !dbg !1390
  %34 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !1393
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1371, metadata !656), !dbg !1377
  %35 = select i1 %33, i8* %28, i8* %34, !dbg !1394
  br label %37, !dbg !1394

; <label>:36:                                     ; preds = %27
  br label %37, !dbg !1340

; <label>:37:                                     ; preds = %36, %32
  %38 = phi i8* [ %35, %32 ], [ %28, %36 ]
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !1311, metadata !656), !dbg !1340
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1371, metadata !656), !dbg !1395
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1376, metadata !656), !dbg !1397
  br label %39, !dbg !1398

; <label>:39:                                     ; preds = %42, %37
  %40 = phi i8 [ %3, %37 ], [ %44, %42 ], !dbg !1399
  %41 = phi i8* [ %1, %37 ], [ %43, %42 ]
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1371, metadata !656), !dbg !1395
  switch i8 %40, label %49 [
    i8 48, label %42
    i8 0, label %45
  ], !dbg !1400

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1401
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1371, metadata !656), !dbg !1395
  %44 = load i8, i8* %43, align 1, !tbaa !777
  br label %39, !dbg !1402, !llvm.loop !1387

; <label>:45:                                     ; preds = %39
  %46 = icmp eq i8* %41, %1, !dbg !1403
  %47 = getelementptr inbounds i8, i8* %41, i64 -1, !dbg !1404
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1371, metadata !656), !dbg !1395
  %48 = select i1 %46, i8* %41, i8* %47, !dbg !1405
  br label %50, !dbg !1405

; <label>:49:                                     ; preds = %39
  br label %50, !dbg !1341

; <label>:50:                                     ; preds = %49, %45
  %51 = phi i8* [ %48, %45 ], [ %41, %49 ]
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1312, metadata !656), !dbg !1341
  %52 = tail call i64 @strlen(i8* %38) #8, !dbg !1406
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1320, metadata !656), !dbg !1407
  br i1 %26, label %55, label %53, !dbg !1408

; <label>:53:                                     ; preds = %50
  %54 = tail call i64 @strlen(i8* %51) #8, !dbg !1409
  br label %55, !dbg !1411

; <label>:55:                                     ; preds = %50, %53
  %56 = phi i64 [ %54, %53 ], [ 0, %50 ], !dbg !1412
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !1321, metadata !656), !dbg !1414
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1320, metadata !656), !dbg !1407
  %57 = add i64 %52, 1, !dbg !1415
  %58 = icmp ugt i64 %57, %56, !dbg !1415
  %59 = select i1 %58, i64 %57, i64 %56, !dbg !1415
  %60 = icmp ugt i64 %59, 31, !dbg !1416
  %61 = select i1 %60, i64 %59, i64 31, !dbg !1416
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1322, metadata !656), !dbg !1417
  %62 = add i64 %61, 1, !dbg !1418
  %63 = tail call noalias i8* @xmalloc(i64 %62) #11, !dbg !1419
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !1323, metadata !656), !dbg !1420
  %64 = getelementptr inbounds i8, i8* %63, i64 %61, !dbg !1421
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1320, metadata !656), !dbg !1407
  %65 = sub i64 0, %52, !dbg !1422
  %66 = getelementptr inbounds i8, i8* %64, i64 %65, !dbg !1422
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %38, i64 %57, i32 1, i1 false), !dbg !1423
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1324, metadata !656), !dbg !1424
  br i1 %26, label %79, label %67, !dbg !1425

; <label>:67:                                     ; preds = %55
  %68 = tail call noalias i8* @xmalloc(i64 %62) #11, !dbg !1426
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !1326, metadata !656), !dbg !1429
  %69 = getelementptr inbounds i8, i8* %68, i64 %61, !dbg !1430
  %70 = sub i64 0, %56, !dbg !1431
  %71 = getelementptr inbounds i8, i8* %69, i64 %70, !dbg !1431
  %72 = add i64 %56, 1, !dbg !1432
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %51, i64 %72, i32 1, i1 false), !dbg !1433
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !1325, metadata !656), !dbg !1434
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !1326, metadata !656), !dbg !1429
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !1325, metadata !656), !dbg !1434
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1324, metadata !656), !dbg !1424
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1320, metadata !656), !dbg !1407
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1435, metadata !656) #11, !dbg !1446
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1440, metadata !656) #11, !dbg !1449
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !1441, metadata !656) #11, !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !1442, metadata !656) #11, !dbg !1451
  %73 = icmp ult i64 %52, %56, !dbg !1452
  br i1 %73, label %79, label %74, !dbg !1454

; <label>:74:                                     ; preds = %67
  %75 = icmp ult i64 %56, %52, !dbg !1455
  br i1 %75, label %174, label %76, !dbg !1457

; <label>:76:                                     ; preds = %74
  %77 = tail call i32 @strcmp(i8* %66, i8* %71) #11, !dbg !1458
  %78 = icmp slt i32 %77, 1, !dbg !1459
  br i1 %78, label %79, label %174, !dbg !1460

; <label>:79:                                     ; preds = %67, %55, %76
  %80 = phi i8* [ %71, %76 ], [ null, %55 ], [ %71, %67 ]
  %81 = phi i8* [ %68, %76 ], [ null, %55 ], [ %68, %67 ]
  %82 = shl i64 %62, 1, !dbg !1461
  %83 = icmp ugt i64 %82, 8192, !dbg !1461
  %84 = select i1 %83, i64 %82, i64 8192, !dbg !1461
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !1328, metadata !656), !dbg !1462
  %85 = tail call noalias i8* @xmalloc(i64 %84) #11, !dbg !1463
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1331, metadata !656), !dbg !1464
  %86 = getelementptr inbounds i8, i8* %85, i64 %84, !dbg !1465
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !1332, metadata !656), !dbg !1466
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1333, metadata !656), !dbg !1467
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1324, metadata !656), !dbg !1424
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1320, metadata !656), !dbg !1407
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1468, metadata !656) #11, !dbg !1477
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1475, metadata !656) #11, !dbg !1477
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1476, metadata !656) #11, !dbg !1477
  %87 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %85, i1 false) #11, !dbg !1479
  %88 = tail call i8* @__mempcpy_chk(i8* nonnull %85, i8* nonnull %66, i64 %52, i64 %87) #11, !dbg !1480
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !1333, metadata !656), !dbg !1467
  br label %89, !dbg !1481

; <label>:89:                                     ; preds = %155, %79
  %90 = phi i64 [ %52, %79 ], [ %124, %155 ]
  %91 = phi i8* [ %66, %79 ], [ %143, %155 ]
  %92 = phi i64 [ %61, %79 ], [ %144, %155 ]
  %93 = phi i8* [ %63, %79 ], [ %145, %155 ]
  %94 = phi i64 [ %84, %79 ], [ %146, %155 ]
  %95 = phi i8* [ %85, %79 ], [ %147, %155 ]
  %96 = phi i8* [ %86, %79 ], [ %148, %155 ]
  %97 = phi i8* [ %88, %79 ], [ %156, %155 ]
  tail call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1333, metadata !656), !dbg !1467
  tail call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1332, metadata !656), !dbg !1466
  tail call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !1331, metadata !656), !dbg !1464
  tail call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !1328, metadata !656), !dbg !1462
  tail call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !1323, metadata !656), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !1322, metadata !656), !dbg !1417
  %98 = icmp ult i64 %90, %56, !dbg !1482
  %99 = or i1 %26, %98, !dbg !1485
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1324, metadata !656), !dbg !1424
  tail call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !1320, metadata !656), !dbg !1407
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1435, metadata !656) #11, !dbg !1487
  tail call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !1440, metadata !656) #11, !dbg !1488
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !1441, metadata !656) #11, !dbg !1489
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !1442, metadata !656) #11, !dbg !1490
  br i1 %99, label %105, label %100, !dbg !1485

; <label>:100:                                    ; preds = %89
  %101 = icmp ult i64 %56, %90, !dbg !1491
  br i1 %101, label %165, label %102, !dbg !1492

; <label>:102:                                    ; preds = %100
  %103 = tail call i32 @strcmp(i8* %91, i8* %80) #11, !dbg !1493
  %104 = icmp slt i32 %103, 0, !dbg !1494
  br i1 %104, label %105, label %165, !dbg !1495

; <label>:105:                                    ; preds = %89, %102
  %106 = load i8*, i8** @separator, align 8, !dbg !1497, !tbaa !664
  %107 = load i8, i8* %106, align 1, !dbg !1498, !tbaa !777
  %108 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !1499
  tail call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !1333, metadata !656), !dbg !1467
  store i8 %107, i8* %97, align 1, !dbg !1500, !tbaa !777
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !1501, metadata !656), !dbg !1509
  %109 = getelementptr inbounds i8, i8* %91, i64 %90, !dbg !1511
  %110 = getelementptr inbounds i8, i8* %109, i64 -1, !dbg !1512
  tail call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !1508, metadata !656), !dbg !1513
  br label %111, !dbg !1514, !llvm.loop !1515

; <label>:111:                                    ; preds = %116, %105
  %112 = phi i8* [ %110, %105 ], [ %117, %116 ]
  tail call void @llvm.dbg.value(metadata i8* %112, i64 0, metadata !1508, metadata !656), !dbg !1513
  %113 = load i8, i8* %112, align 1, !dbg !1518, !tbaa !777
  %114 = add i8 %113, 1, !dbg !1518
  store i8 %114, i8* %112, align 1, !dbg !1518, !tbaa !777
  %115 = icmp slt i8 %113, 57, !dbg !1521
  br i1 %115, label %122, label %116, !dbg !1522

; <label>:116:                                    ; preds = %111
  %117 = getelementptr inbounds i8, i8* %112, i64 -1, !dbg !1523
  tail call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !1508, metadata !656), !dbg !1513
  store i8 48, i8* %112, align 1, !dbg !1524, !tbaa !777
  %118 = icmp ult i8* %117, %91, !dbg !1525
  br i1 %118, label %119, label %111, !dbg !1526, !llvm.loop !1515

; <label>:119:                                    ; preds = %116
  %120 = getelementptr inbounds i8, i8* %91, i64 -1, !dbg !1528
  store i8 49, i8* %120, align 1, !dbg !1529, !tbaa !777
  %121 = add i64 %90, 1, !dbg !1530
  br label %123, !dbg !1531

; <label>:122:                                    ; preds = %111
  br label %123, !dbg !1407

; <label>:123:                                    ; preds = %122, %119
  %124 = phi i64 [ %121, %119 ], [ %90, %122 ]
  %125 = phi i8* [ %120, %119 ], [ %91, %122 ]
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1320, metadata !656), !dbg !1407
  %126 = icmp eq i64 %124, %92, !dbg !1532
  br i1 %126, label %127, label %142, !dbg !1533

; <label>:127:                                    ; preds = %123
  %128 = shl i64 %92, 1, !dbg !1534
  tail call void @llvm.dbg.value(metadata i64 %128, i64 0, metadata !1322, metadata !656), !dbg !1417
  %129 = or i64 %128, 1, !dbg !1535
  %130 = tail call i8* @xrealloc(i8* %93, i64 %129) #11, !dbg !1536
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1323, metadata !656), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1320, metadata !656), !dbg !1407
  %131 = getelementptr inbounds i8, i8* %130, i64 %92, !dbg !1537
  %132 = add i64 %92, 1, !dbg !1538
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %131, i8* %130, i64 %132, i32 1, i1 false), !dbg !1539
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !1324, metadata !656), !dbg !1424
  %133 = shl i64 %129, 1, !dbg !1540
  %134 = icmp ult i64 %94, %133, !dbg !1541
  br i1 %134, label %135, label %142, !dbg !1542

; <label>:135:                                    ; preds = %127
  %136 = ptrtoint i8* %108 to i64, !dbg !1543
  %137 = ptrtoint i8* %95 to i64, !dbg !1543
  %138 = sub i64 %136, %137, !dbg !1543
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !1334, metadata !656), !dbg !1544
  tail call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !1328, metadata !656), !dbg !1462
  %139 = tail call i8* @xrealloc(i8* %95, i64 %133) #11, !dbg !1545
  tail call void @llvm.dbg.value(metadata i8* %139, i64 0, metadata !1331, metadata !656), !dbg !1464
  %140 = getelementptr inbounds i8, i8* %139, i64 %133, !dbg !1546
  tail call void @llvm.dbg.value(metadata i8* %140, i64 0, metadata !1332, metadata !656), !dbg !1466
  %141 = getelementptr inbounds i8, i8* %139, i64 %138, !dbg !1547
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !1333, metadata !656), !dbg !1467
  br label %142, !dbg !1548

; <label>:142:                                    ; preds = %127, %135, %123
  %143 = phi i8* [ %131, %135 ], [ %131, %127 ], [ %125, %123 ]
  %144 = phi i64 [ %128, %135 ], [ %128, %127 ], [ %92, %123 ]
  %145 = phi i8* [ %130, %135 ], [ %130, %127 ], [ %93, %123 ]
  %146 = phi i64 [ %133, %135 ], [ %94, %127 ], [ %94, %123 ]
  %147 = phi i8* [ %139, %135 ], [ %95, %127 ], [ %95, %123 ]
  %148 = phi i8* [ %140, %135 ], [ %96, %127 ], [ %96, %123 ]
  %149 = phi i8* [ %141, %135 ], [ %108, %127 ], [ %108, %123 ]
  tail call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !1333, metadata !656), !dbg !1467
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !1332, metadata !656), !dbg !1466
  tail call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !1331, metadata !656), !dbg !1464
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1328, metadata !656), !dbg !1462
  tail call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !1323, metadata !656), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1322, metadata !656), !dbg !1417
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1324, metadata !656), !dbg !1424
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1320, metadata !656), !dbg !1407
  tail call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !1468, metadata !656) #11, !dbg !1549
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1475, metadata !656) #11, !dbg !1549
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1476, metadata !656) #11, !dbg !1549
  %150 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %149, i1 false) #11, !dbg !1551
  %151 = tail call i8* @__mempcpy_chk(i8* nonnull %149, i8* nonnull %143, i64 %124, i64 %150) #11, !dbg !1552
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !1333, metadata !656), !dbg !1467
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1320, metadata !656), !dbg !1407
  %152 = xor i64 %124, -1, !dbg !1553
  %153 = getelementptr inbounds i8, i8* %148, i64 %152, !dbg !1553
  %154 = icmp ult i8* %153, %151, !dbg !1555
  br i1 %154, label %157, label %155, !dbg !1556

; <label>:155:                                    ; preds = %142, %157
  %156 = phi i8* [ %151, %142 ], [ %147, %157 ]
  br label %89, !dbg !1467, !llvm.loop !1557

; <label>:157:                                    ; preds = %142
  %158 = ptrtoint i8* %151 to i64, !dbg !1559
  %159 = ptrtoint i8* %147 to i64, !dbg !1559
  %160 = sub i64 %158, %159, !dbg !1559
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1559, !tbaa !664
  %162 = tail call i64 @fwrite_unlocked(i8* %147, i64 %160, i64 1, %struct._IO_FILE* %161) #11, !dbg !1559
  %163 = icmp eq i64 %162, 1, !dbg !1562
  br i1 %163, label %155, label %164, !dbg !1563

; <label>:164:                                    ; preds = %157
  tail call fastcc void @io_error() #15, !dbg !1564
  unreachable, !dbg !1564

; <label>:165:                                    ; preds = %100, %102
  %166 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !1565
  tail call void @llvm.dbg.value(metadata i8* %166, i64 0, metadata !1333, metadata !656), !dbg !1467
  store i8 10, i8* %97, align 1, !dbg !1566, !tbaa !777
  %167 = ptrtoint i8* %166 to i64, !dbg !1567
  %168 = ptrtoint i8* %95 to i64, !dbg !1567
  %169 = sub i64 %167, %168, !dbg !1567
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1567, !tbaa !664
  %171 = tail call i64 @fwrite_unlocked(i8* %95, i64 %169, i64 1, %struct._IO_FILE* %170) #11, !dbg !1567
  %172 = icmp eq i64 %171, 1, !dbg !1569
  br i1 %172, label %174, label %173, !dbg !1570

; <label>:173:                                    ; preds = %165
  tail call fastcc void @io_error() #15, !dbg !1571
  unreachable, !dbg !1571

; <label>:174:                                    ; preds = %74, %165, %76
  %175 = phi i1 [ false, %76 ], [ true, %165 ], [ false, %74 ]
  %176 = phi i8* [ %68, %76 ], [ %81, %165 ], [ %68, %74 ]
  %177 = phi i8* [ %63, %76 ], [ %93, %165 ], [ %63, %74 ]
  tail call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !1323, metadata !656), !dbg !1420
  tail call void @free(i8* %177) #11, !dbg !1572
  tail call void @free(i8* %176) #11, !dbg !1573
  ret i1 %175, !dbg !1574
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @scan_arg(%struct.operand* noalias nocapture sret, i8*) unnamed_addr #6 !dbg !1575 {
  %3 = alloca %struct.operand, align 16
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1579, metadata !656), !dbg !1590
  %4 = bitcast %struct.operand* %3 to i8*, !dbg !1591
  call void @llvm.lifetime.start(i64 32, i8* nonnull %4) #11, !dbg !1591
  %5 = getelementptr inbounds %struct.operand, %struct.operand* %3, i64 0, i32 0, !dbg !1592
  %6 = call zeroext i1 @xstrtold(i8* %1, i8** null, x86_fp80* nonnull %5, x86_fp80 (i8*, i8**)* nonnull @c_strtold) #11, !dbg !1594
  br i1 %6, label %10, label %7, !dbg !1595

; <label>:7:                                      ; preds = %2
  %8 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1596
  %9 = call i8* @quote(i8* %1) #11, !dbg !1598
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %8, i8* %9) #11, !dbg !1600
  call void @usage(i32 1) #15, !dbg !1602
  unreachable, !dbg !1602

; <label>:10:                                     ; preds = %2
  %11 = load x86_fp80, x86_fp80* %5, align 16, !dbg !1603, !tbaa !1605
  %12 = fcmp uno x86_fp80 %11, 0xK00000000000000000000, !dbg !1603
  br i1 %12, label %16, label %13, !dbg !1606

; <label>:13:                                     ; preds = %10
  %14 = tail call i16** @__ctype_b_loc() #1, !dbg !1607
  %15 = load i16*, i16** %14, align 8, !tbaa !664
  br label %20, !dbg !1590

; <label>:16:                                     ; preds = %10
  %17 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1609
  %18 = call i8* @quote_n(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0)) #11, !dbg !1611
  %19 = call i8* @quote_n(i32 1, i8* %1) #11, !dbg !1613
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %18, i8* %19) #11, !dbg !1614
  call void @usage(i32 1) #15, !dbg !1616
  unreachable, !dbg !1616

; <label>:20:                                     ; preds = %20, %13
  %21 = phi i8* [ %30, %20 ], [ %1, %13 ]
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1579, metadata !656), !dbg !1590
  %22 = load i8, i8* %21, align 1, !dbg !1607, !tbaa !777
  %23 = zext i8 %22 to i64, !dbg !1607
  %24 = getelementptr inbounds i16, i16* %15, i64 %23, !dbg !1607
  %25 = load i16, i16* %24, align 2, !dbg !1607, !tbaa !1617
  %26 = and i16 %25, 8192, !dbg !1607
  %27 = icmp ne i16 %26, 0, !dbg !1607
  %28 = icmp eq i8 %22, 43, !dbg !1619
  %29 = or i1 %28, %27, !dbg !1621
  %30 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1622
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1579, metadata !656), !dbg !1590
  br i1 %29, label %20, label %31, !dbg !1621, !llvm.loop !1623

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds %struct.operand, %struct.operand* %3, i64 0, i32 1, !dbg !1625
  store i64 0, i64* %32, align 16, !dbg !1626, !tbaa !1627
  %33 = getelementptr inbounds %struct.operand, %struct.operand* %3, i64 0, i32 2, !dbg !1628
  store i32 2147483647, i32* %33, align 8, !dbg !1629, !tbaa !1141
  %34 = call i8* @strchr(i8* %21, i32 46) #11, !dbg !1630
  call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1581, metadata !656), !dbg !1631
  %35 = icmp ne i8* %34, null, !dbg !1632
  br i1 %35, label %40, label %36, !dbg !1634

; <label>:36:                                     ; preds = %31
  %37 = call i8* @strchr(i8* %21, i32 112) #11, !dbg !1635
  %38 = icmp eq i8* %37, null, !dbg !1635
  br i1 %38, label %39, label %40, !dbg !1637

; <label>:39:                                     ; preds = %36
  store i32 0, i32* %33, align 8, !dbg !1639, !tbaa !1141
  br label %40, !dbg !1640

; <label>:40:                                     ; preds = %36, %39, %31
  %41 = call i64 @strcspn(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #11, !dbg !1641
  %42 = getelementptr inbounds i8, i8* %21, i64 %41, !dbg !1642
  %43 = load i8, i8* %42, align 1, !dbg !1642, !tbaa !777
  %44 = icmp eq i8 %43, 0, !dbg !1642
  %45 = fmul x86_fp80 %11, 0xK00000000000000000000, !dbg !1643
  %46 = fcmp oeq x86_fp80 %45, 0xK00000000000000000000, !dbg !1643
  %47 = and i1 %44, %46, !dbg !1645
  br i1 %47, label %48, label %126, !dbg !1645

; <label>:48:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1582, metadata !656), !dbg !1646
  %49 = call i64 @strlen(i8* nonnull %21) #8, !dbg !1647
  store i64 %49, i64* %32, align 16, !dbg !1648, !tbaa !1627
  br i1 %35, label %50, label %71, !dbg !1649

; <label>:50:                                     ; preds = %48
  %51 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1650
  %52 = call i64 @strcspn(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #11, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1582, metadata !656), !dbg !1646
  %53 = icmp ult i64 %52, 2147483648, !dbg !1653
  br i1 %53, label %54, label %57, !dbg !1655

; <label>:54:                                     ; preds = %50
  %55 = trunc i64 %52 to i32, !dbg !1656
  store i32 %55, i32* %33, align 8, !dbg !1657, !tbaa !1141
  %56 = icmp eq i64 %52, 0, !dbg !1658
  br i1 %56, label %68, label %57, !dbg !1659

; <label>:57:                                     ; preds = %50, %54
  %58 = icmp eq i8* %34, %21, !dbg !1660
  br i1 %58, label %65, label %59, !dbg !1661

; <label>:59:                                     ; preds = %57
  %60 = getelementptr inbounds i8, i8* %34, i64 -1, !dbg !1662
  %61 = load i8, i8* %60, align 1, !dbg !1662, !tbaa !777
  %62 = sext i8 %61 to i32, !dbg !1662
  %63 = add nsw i32 %62, -48, !dbg !1662
  %64 = icmp ugt i32 %63, 9, !dbg !1664
  br label %65, !dbg !1665

; <label>:65:                                     ; preds = %59, %57
  %66 = phi i1 [ true, %57 ], [ %64, %59 ]
  %67 = zext i1 %66 to i64, !dbg !1666
  br label %68, !dbg !1666

; <label>:68:                                     ; preds = %54, %65
  %69 = phi i64 [ %67, %65 ], [ -1, %54 ]
  %70 = add i64 %49, %69, !dbg !1668
  store i64 %70, i64* %32, align 16, !dbg !1668, !tbaa !1627
  br label %71, !dbg !1670

; <label>:71:                                     ; preds = %68, %48
  %72 = phi i64 [ %52, %68 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !1582, metadata !656), !dbg !1646
  %73 = call i8* @strchr(i8* %21, i32 101) #11, !dbg !1671
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !1585, metadata !656), !dbg !1672
  %74 = icmp eq i8* %73, null, !dbg !1673
  br i1 %74, label %75, label %78, !dbg !1675

; <label>:75:                                     ; preds = %71
  %76 = call i8* @strchr(i8* %21, i32 69) #11, !dbg !1676
  call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !1585, metadata !656), !dbg !1672
  call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !1585, metadata !656), !dbg !1672
  %77 = icmp eq i8* %76, null, !dbg !1677
  br i1 %77, label %126, label %78, !dbg !1678

; <label>:78:                                     ; preds = %71, %75
  %79 = phi i8* [ %76, %75 ], [ %73, %71 ]
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1679
  %81 = call i64 @strtol(i8* nocapture %80, i8** null, i32 10) #11, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !1586, metadata !656), !dbg !1681
  %82 = icmp slt i64 %81, 0, !dbg !1682
  %83 = load i32, i32* %33, align 8, !tbaa !1141
  br i1 %82, label %88, label %84, !dbg !1683

; <label>:84:                                     ; preds = %78
  %85 = sext i32 %83 to i64, !dbg !1684
  %86 = icmp slt i64 %85, %81, !dbg !1684
  %87 = select i1 %86, i64 %85, i64 %81, !dbg !1684
  br label %88, !dbg !1684

; <label>:88:                                     ; preds = %78, %84
  %89 = phi i64 [ %87, %84 ], [ %81, %78 ]
  %90 = zext i32 %83 to i64, !dbg !1685
  %91 = sub i64 %90, %89, !dbg !1685
  %92 = trunc i64 %91 to i32, !dbg !1685
  store i32 %92, i32* %33, align 8, !dbg !1685, !tbaa !1141
  %93 = call i64 @strlen(i8* %21) #8, !dbg !1687
  %94 = ptrtoint i8* %79 to i64, !dbg !1688
  %95 = ptrtoint i8* %21 to i64, !dbg !1688
  %96 = load i64, i64* %32, align 16, !dbg !1689, !tbaa !1627
  %97 = sub i64 %94, %95, !dbg !1690
  %98 = sub i64 %97, %93, !dbg !1690
  %99 = add i64 %98, %96, !dbg !1689
  store i64 %99, i64* %32, align 16, !dbg !1689, !tbaa !1627
  br i1 %82, label %100, label %110, !dbg !1691

; <label>:100:                                    ; preds = %88
  %101 = xor i1 %35, true, !dbg !1692
  %102 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1695
  %103 = icmp eq i8* %79, %102, !dbg !1699
  %104 = or i1 %103, %101, !dbg !1692
  br i1 %104, label %105, label %107, !dbg !1692

; <label>:105:                                    ; preds = %100
  %106 = add i64 %99, 1
  store i64 %106, i64* %32, align 16, !tbaa !1627
  br label %107, !dbg !1700

; <label>:107:                                    ; preds = %100, %105
  %108 = phi i64 [ %99, %100 ], [ %106, %105 ]
  %109 = sub nsw i64 0, %81, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1586, metadata !656), !dbg !1681
  br label %122, !dbg !1702

; <label>:110:                                    ; preds = %88
  br i1 %35, label %111, label %117, !dbg !1703

; <label>:111:                                    ; preds = %110
  %112 = icmp eq i32 %92, 0, !dbg !1706
  %113 = icmp ne i64 %72, 0, !dbg !1708
  %114 = and i1 %113, %112, !dbg !1710
  br i1 %114, label %115, label %117, !dbg !1710

; <label>:115:                                    ; preds = %111
  %116 = add i64 %99, -1, !dbg !1711
  store i64 %116, i64* %32, align 16, !dbg !1711, !tbaa !1627
  br label %117, !dbg !1712

; <label>:117:                                    ; preds = %115, %111, %110
  %118 = phi i64 [ %116, %115 ], [ %99, %111 ], [ %99, %110 ]
  %119 = icmp ult i64 %72, %81, !dbg !1713
  %120 = select i1 %119, i64 %72, i64 %81, !dbg !1713
  %121 = sub i64 %81, %120, !dbg !1714
  call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !1586, metadata !656), !dbg !1681
  br label %122

; <label>:122:                                    ; preds = %117, %107
  %123 = phi i64 [ %108, %107 ], [ %118, %117 ], !dbg !1716
  %124 = phi i64 [ %109, %107 ], [ %121, %117 ]
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1586, metadata !656), !dbg !1681
  %125 = add i64 %123, %124, !dbg !1716
  store i64 %125, i64* %32, align 16, !dbg !1716, !tbaa !1627
  br label %126, !dbg !1717

; <label>:126:                                    ; preds = %122, %75, %40
  %127 = bitcast %struct.operand* %0 to i8*, !dbg !1718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* nonnull %4, i64 32, i32 16, i1 false), !dbg !1718, !tbaa.struct !1719
  call void @llvm.lifetime.end(i64 32, i8* nonnull %4) #11, !dbg !1722
  ret void, !dbg !1722
}

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @io_error() unnamed_addr #0 !dbg !1723 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1724, !tbaa !664
  tail call void @clearerr_unlocked(%struct._IO_FILE* %1) #11, !dbg !1724
  %2 = tail call i32* @__errno_location() #1, !dbg !1725
  %3 = load i32, i32* %2, align 4, !dbg !1725, !tbaa !770
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 5) #11, !dbg !1726
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %3, i8* %4) #11, !dbg !1728
  unreachable, !dbg !1725
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define x86_fp80 @c_strtold(i8*, i8**) #6 !dbg !1730 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1734, metadata !656), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1735, metadata !656), !dbg !1739
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1740, !tbaa !664
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1740
  br i1 %4, label %5, label %7, !dbg !1746

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %struct.__locale_struct* null) #11, !dbg !1747
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1748, !tbaa !664
  br label %7, !dbg !1749

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1750, !tbaa !664
  tail call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, i64 0, metadata !1737, metadata !656), !dbg !1751
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1752
  br i1 %9, label %10, label %13, !dbg !1754

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1755
  br i1 %11, label %15, label %12, !dbg !1758

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1759, !tbaa !664
  br label %15, !dbg !1760

; <label>:13:                                     ; preds = %7
  %14 = tail call x86_fp80 @strtold_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #11, !dbg !1761
  tail call void @llvm.dbg.value(metadata x86_fp80 %14, i64 0, metadata !1736, metadata !656), !dbg !1762
  br label %15, !dbg !1763

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi x86_fp80 [ %14, %13 ], [ 0xK00000000000000000000, %10 ], [ 0xK00000000000000000000, %12 ]
  ret x86_fp80 %16, !dbg !1764
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare x86_fp80 @strtold_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1765 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1767, metadata !656), !dbg !1768
  store i8* %0, i8** @file_name, align 8, !dbg !1769, !tbaa !664
  ret void, !dbg !1770
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1771 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1775, metadata !1776), !dbg !1777
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1778, !tbaa !1779
  ret void, !dbg !1781
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1782 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1787, !tbaa !664
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1788
  %3 = icmp eq i32 %2, 0, !dbg !1789
  br i1 %3, label %21, label %4, !dbg !1790

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1791, !tbaa !1779, !range !1793
  %6 = icmp eq i8 %5, 0, !dbg !1791
  %7 = tail call i32* @__errno_location() #1, !dbg !1794
  br i1 %6, label %11, label %8, !dbg !1796

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1797, !tbaa !770
  %10 = icmp eq i32 %9, 32, !dbg !1799
  br i1 %10, label %21, label %11, !dbg !1800

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !1802
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1784, metadata !656), !dbg !1803
  %13 = load i8*, i8** @file_name, align 8, !dbg !1804, !tbaa !664
  %14 = icmp eq i8* %13, null, !dbg !1804
  %15 = load i32, i32* %7, align 4, !tbaa !770
  br i1 %14, label %18, label %16, !dbg !1805

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1806
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.31, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1808
  br label %19, !dbg !1810

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.32, i64 0, i64 0), i8* %12) #11, !dbg !1811
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1812, !tbaa !770
  tail call void @_exit(i32 %20) #14, !dbg !1813
  unreachable, !dbg !1813

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1814, !tbaa !664
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1816
  %24 = icmp eq i32 %23, 0, !dbg !1817
  br i1 %24, label %27, label %25, !dbg !1818

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1819, !tbaa !770
  tail call void @_exit(i32 %26) #14, !dbg !1820
  unreachable, !dbg !1820

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1821
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1822 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1824, metadata !656), !dbg !1827
  %2 = icmp eq i8* %0, null, !dbg !1828
  br i1 %2, label %3, label %6, !dbg !1830

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1831, !tbaa !664
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1833
  tail call void @abort() #14, !dbg !1834
  unreachable, !dbg !1834

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #8, !dbg !1835
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1825, metadata !656), !dbg !1836
  %8 = icmp ne i8* %7, null, !dbg !1837
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1838
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1840
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1826, metadata !656), !dbg !1841
  %11 = ptrtoint i8* %10 to i64, !dbg !1842
  %12 = ptrtoint i8* %0 to i64, !dbg !1842
  %13 = sub i64 %11, %12, !dbg !1842
  %14 = icmp sgt i64 %13, 6, !dbg !1844
  br i1 %14, label %15, label %24, !dbg !1845

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1846
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #8, !dbg !1846
  %18 = icmp eq i32 %17, 0, !dbg !1848
  br i1 %18, label %19, label %24, !dbg !1849

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1824, metadata !656), !dbg !1827
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #8, !dbg !1850
  %21 = icmp eq i32 %20, 0, !dbg !1853
  br i1 %21, label %22, label %24, !dbg !1854

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1855
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1824, metadata !656), !dbg !1827
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1857, !tbaa !664
  br label %24, !dbg !1858

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1824, metadata !656), !dbg !1827
  store i8* %25, i8** @program_name, align 8, !dbg !1859, !tbaa !664
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1860, !tbaa !664
  ret void, !dbg !1861
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1862 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1867, metadata !656), !dbg !1870
  %2 = tail call i32* @__errno_location() #1, !dbg !1871
  %3 = load i32, i32* %2, align 4, !dbg !1871, !tbaa !770
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1868, metadata !656), !dbg !1872
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1873
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1874
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1874
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1876
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1876
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1869, metadata !656), !dbg !1877
  store i32 %3, i32* %2, align 4, !dbg !1878, !tbaa !770
  ret %struct.quoting_options* %8, !dbg !1879
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1880 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1886, metadata !656), !dbg !1887
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1888
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1888
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1889
  %5 = load i32, i32* %4, align 8, !dbg !1889, !tbaa !1891
  ret i32 %5, !dbg !1893
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1894 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1898, metadata !656), !dbg !1900
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1899, metadata !656), !dbg !1901
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1902
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1902
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1903
  store i32 %1, i32* %5, align 8, !dbg !1905, !tbaa !1891
  ret void, !dbg !1906
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1907 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1911, metadata !656), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1912, metadata !656), !dbg !1920
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1913, metadata !656), !dbg !1921
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1914, metadata !656), !dbg !1922
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1923
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1923
  %6 = lshr i8 %1, 5, !dbg !1924
  %7 = zext i8 %6 to i64, !dbg !1924
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1926
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1915, metadata !656), !dbg !1927
  %9 = and i8 %1, 31, !dbg !1928
  %10 = zext i8 %9 to i32, !dbg !1929
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1917, metadata !656), !dbg !1930
  %11 = load i32, i32* %8, align 4, !dbg !1931, !tbaa !770
  %12 = lshr i32 %11, %10, !dbg !1932
  %13 = and i32 %12, 1, !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1918, metadata !656), !dbg !1934
  %14 = and i32 %2, 1, !dbg !1935
  %15 = xor i32 %13, %14, !dbg !1936
  %16 = shl i32 %15, %10, !dbg !1937
  %17 = xor i32 %16, %11, !dbg !1938
  store i32 %17, i32* %8, align 4, !dbg !1938, !tbaa !770
  ret i32 %13, !dbg !1939
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1940 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1944, metadata !656), !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1945, metadata !656), !dbg !1948
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1944, metadata !656), !dbg !1947
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1951
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1944, metadata !656), !dbg !1947
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1952
  %6 = load i32, i32* %5, align 4, !dbg !1952, !tbaa !1953
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1946, metadata !656), !dbg !1954
  store i32 %1, i32* %5, align 4, !dbg !1955, !tbaa !1953
  ret i32 %6, !dbg !1956
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1957 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1961, metadata !656), !dbg !1964
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1962, metadata !656), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1963, metadata !656), !dbg !1966
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1961, metadata !656), !dbg !1964
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1969
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1961, metadata !656), !dbg !1964
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1970
  store i32 10, i32* %6, align 8, !dbg !1971, !tbaa !1891
  %7 = icmp ne i8* %1, null, !dbg !1972
  %8 = icmp ne i8* %2, null, !dbg !1974
  %9 = and i1 %7, %8, !dbg !1976
  br i1 %9, label %11, label %10, !dbg !1976

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1977
  unreachable, !dbg !1977

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1978
  store i8* %1, i8** %12, align 8, !dbg !1979, !tbaa !1980
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1981
  store i8* %2, i8** %13, align 8, !dbg !1982, !tbaa !1983
  ret void, !dbg !1984
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1985 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1989, metadata !656), !dbg !1997
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1990, metadata !656), !dbg !1998
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1991, metadata !656), !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1992, metadata !656), !dbg !2000
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1993, metadata !656), !dbg !2001
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2002
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1994, metadata !656), !dbg !2003
  %8 = tail call i32* @__errno_location() #1, !dbg !2004
  %9 = load i32, i32* %8, align 4, !dbg !2004, !tbaa !770
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1995, metadata !656), !dbg !2005
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2006
  %11 = load i32, i32* %10, align 8, !dbg !2006, !tbaa !1891
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2007
  %13 = load i32, i32* %12, align 4, !dbg !2007, !tbaa !1953
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2008
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2009
  %16 = load i8*, i8** %15, align 8, !dbg !2009, !tbaa !1980
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2010
  %18 = load i8*, i8** %17, align 8, !dbg !2010, !tbaa !1983
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2011
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1996, metadata !656), !dbg !2012
  store i32 %9, i32* %8, align 4, !dbg !2013, !tbaa !770
  ret i64 %19, !dbg !2014
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2015 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2021, metadata !656), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2022, metadata !656), !dbg !2085
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2023, metadata !656), !dbg !2086
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2024, metadata !656), !dbg !2087
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2025, metadata !656), !dbg !2088
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2026, metadata !656), !dbg !2089
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2027, metadata !656), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2028, metadata !656), !dbg !2091
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2029, metadata !656), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2031, metadata !656), !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2032, metadata !656), !dbg !2094
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2033, metadata !656), !dbg !2095
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2034, metadata !656), !dbg !2096
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2035, metadata !656), !dbg !2097
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2098
  %14 = icmp eq i64 %13, 1, !dbg !2099
  %15 = lshr i32 %5, 1, !dbg !2100
  %16 = trunc i32 %15 to i8, !dbg !2100
  %17 = and i8 %16, 1, !dbg !2100
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2037, metadata !656), !dbg !2100
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2038, metadata !656), !dbg !2101
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2039, metadata !656), !dbg !2102
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2040, metadata !656), !dbg !2103
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2104

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2022, metadata !656), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2040, metadata !656), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2039, metadata !656), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2037, metadata !656), !dbg !2100
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2024, metadata !656), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2035, metadata !656), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2034, metadata !656), !dbg !2096
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2033, metadata !656), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2032, metadata !656), !dbg !2094
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2029, metadata !656), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2028, metadata !656), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2025, metadata !656), !dbg !2088
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
  ], !dbg !2105

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2025, metadata !656), !dbg !2088
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2037, metadata !656), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2037, metadata !656), !dbg !2100
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2025, metadata !656), !dbg !2088
  br label %95, !dbg !2106

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2037, metadata !656), !dbg !2100
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2025, metadata !656), !dbg !2088
  %43 = and i8 %36, 1, !dbg !2108
  %44 = icmp eq i8 %43, 0, !dbg !2108
  br i1 %44, label %45, label %95, !dbg !2106

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2110
  br i1 %46, label %95, label %47, !dbg !2114

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2116, !tbaa !777
  br label %95, !dbg !2116

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %28), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2028, metadata !656), !dbg !2091
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %28), !dbg !2122
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2029, metadata !656), !dbg !2092
  br label %51, !dbg !2123

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2029, metadata !656), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2028, metadata !656), !dbg !2091
  %54 = and i8 %36, 1, !dbg !2124
  %55 = icmp eq i8 %54, 0, !dbg !2124
  br i1 %55, label %56, label %73, !dbg !2126

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2033, metadata !656), !dbg !2095
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2031, metadata !656), !dbg !2093
  %57 = load i8, i8* %52, align 1, !dbg !2127, !tbaa !777
  %58 = icmp eq i8 %57, 0, !dbg !2131
  br i1 %58, label %73, label %59, !dbg !2131

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2133

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2133
  br i1 %64, label %65, label %67, !dbg !2137

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2139
  store i8 %61, i8* %66, align 1, !dbg !2139, !tbaa !777
  br label %67, !dbg !2139

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2031, metadata !656), !dbg !2093
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2143
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2033, metadata !656), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2033, metadata !656), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2031, metadata !656), !dbg !2093
  %70 = load i8, i8* %69, align 1, !dbg !2127, !tbaa !777
  %71 = icmp eq i8 %70, 0, !dbg !2131
  br i1 %71, label %72, label %60, !dbg !2131, !llvm.loop !2145

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2093

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2035, metadata !656), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2033, metadata !656), !dbg !2095
  %75 = call i64 @strlen(i8* %53) #8, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2034, metadata !656), !dbg !2096
  br label %95, !dbg !2149

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2035, metadata !656), !dbg !2097
  br label %77, !dbg !2150

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2035, metadata !656), !dbg !2097
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2037, metadata !656), !dbg !2100
  br label %79, !dbg !2151

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2037, metadata !656), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2035, metadata !656), !dbg !2097
  %82 = and i8 %81, 1, !dbg !2152
  %83 = icmp eq i8 %82, 0, !dbg !2152
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2035, metadata !656), !dbg !2097
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2154
  br label %85, !dbg !2154

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2037, metadata !656), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2035, metadata !656), !dbg !2097
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2025, metadata !656), !dbg !2088
  %88 = and i8 %87, 1, !dbg !2155
  %89 = icmp eq i8 %88, 0, !dbg !2155
  br i1 %89, label %90, label %95, !dbg !2157

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2158
  br i1 %91, label %95, label %92, !dbg !2162

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2164, !tbaa !777
  br label %95, !dbg !2164

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2037, metadata !656), !dbg !2100
  br label %95, !dbg !2166

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2167
  unreachable, !dbg !2167

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2037, metadata !656), !dbg !2100
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2035, metadata !656), !dbg !2097
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2034, metadata !656), !dbg !2096
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2033, metadata !656), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2029, metadata !656), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2028, metadata !656), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2025, metadata !656), !dbg !2088
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2030, metadata !656), !dbg !2168
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
  br label %123, !dbg !2169

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2022, metadata !656), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2040, metadata !656), !dbg !2103
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2039, metadata !656), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2024, metadata !656), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2032, metadata !656), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2030, metadata !656), !dbg !2168
  %132 = icmp eq i64 %127, -1, !dbg !2170
  br i1 %132, label %135, label %133, !dbg !2172

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2173
  br i1 %134, label %597, label %139, !dbg !2175

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2177
  %137 = load i8, i8* %136, align 1, !dbg !2177, !tbaa !777
  %138 = icmp eq i8 %137, 0, !dbg !2179
  br i1 %138, label %597, label %139, !dbg !2175

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2046, metadata !656), !dbg !2180
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2047, metadata !656), !dbg !2181
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2048, metadata !656), !dbg !2182
  br i1 %109, label %140, label %155, !dbg !2183

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2185
  %142 = and i1 %110, %132, !dbg !2187
  br i1 %142, label %143, label %145, !dbg !2187

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #8, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2024, metadata !656), !dbg !2087
  br label %145, !dbg !2189

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2024, metadata !656), !dbg !2087
  %147 = icmp ugt i64 %141, %146, !dbg !2191
  br i1 %147, label %155, label %148, !dbg !2193

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2194
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #8, !dbg !2195
  %151 = icmp ne i32 %150, 0, !dbg !2196
  %152 = or i1 %151, %112, !dbg !2196
  %153 = xor i1 %151, true, !dbg !2196
  %154 = zext i1 %153 to i8, !dbg !2196
  br i1 %152, label %155, label %644, !dbg !2196

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2046, metadata !656), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2024, metadata !656), !dbg !2087
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2198
  %159 = load i8, i8* %158, align 1, !dbg !2198, !tbaa !777
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2041, metadata !656), !dbg !2199
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
  ], !dbg !2200

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2201

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2202

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2047, metadata !656), !dbg !2181
  %163 = and i8 %128, 1, !dbg !2207
  %164 = icmp eq i8 %163, 0, !dbg !2207
  %165 = and i1 %114, %164, !dbg !2210
  br i1 %165, label %166, label %182, !dbg !2210

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2212
  br i1 %167, label %168, label %170, !dbg !2217

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2219
  store i8 39, i8* %169, align 1, !dbg !2219, !tbaa !777
  br label %170, !dbg !2219

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2031, metadata !656), !dbg !2093
  %172 = icmp ult i64 %171, %131, !dbg !2223
  br i1 %172, label %173, label %175, !dbg !2227

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2229
  store i8 36, i8* %174, align 1, !dbg !2229, !tbaa !777
  br label %175, !dbg !2229

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2031, metadata !656), !dbg !2093
  %177 = icmp ult i64 %176, %131, !dbg !2233
  br i1 %177, label %178, label %180, !dbg !2237

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2239
  store i8 39, i8* %179, align 1, !dbg !2239, !tbaa !777
  br label %180, !dbg !2239

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2038, metadata !656), !dbg !2101
  br label %182, !dbg !2243

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2031, metadata !656), !dbg !2093
  %185 = icmp ult i64 %183, %131, !dbg !2245
  br i1 %185, label %186, label %188, !dbg !2249

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2251
  store i8 92, i8* %187, align 1, !dbg !2251, !tbaa !777
  br label %188, !dbg !2251

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2031, metadata !656), !dbg !2093
  br i1 %106, label %190, label %476, !dbg !2255

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2257
  %192 = icmp ult i64 %191, %156, !dbg !2259
  br i1 %192, label %193, label %476, !dbg !2260

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2261
  %195 = load i8, i8* %194, align 1, !dbg !2261, !tbaa !777
  %196 = add i8 %195, -48, !dbg !2263
  %197 = icmp ult i8 %196, 10, !dbg !2263
  br i1 %197, label %198, label %476, !dbg !2263

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2264
  br i1 %199, label %200, label %202, !dbg !2269

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2271
  store i8 48, i8* %201, align 1, !dbg !2271, !tbaa !777
  br label %202, !dbg !2271

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2031, metadata !656), !dbg !2093
  %204 = icmp ult i64 %203, %131, !dbg !2275
  br i1 %204, label %205, label %207, !dbg !2279

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2281
  store i8 48, i8* %206, align 1, !dbg !2281, !tbaa !777
  br label %207, !dbg !2281

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2031, metadata !656), !dbg !2093
  br label %476, !dbg !2285

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2286

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2287

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2288

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2290

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2292
  %215 = icmp ult i64 %214, %156, !dbg !2294
  br i1 %215, label %216, label %476, !dbg !2295

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2296
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2298
  %219 = load i8, i8* %218, align 1, !dbg !2298, !tbaa !777
  %220 = icmp eq i8 %219, 63, !dbg !2299
  br i1 %220, label %221, label %476, !dbg !2300

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2302
  %223 = load i8, i8* %222, align 1, !dbg !2302, !tbaa !777
  %224 = sext i8 %223 to i32, !dbg !2302
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
  ], !dbg !2303

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2304

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2041, metadata !656), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2030, metadata !656), !dbg !2168
  %227 = icmp ult i64 %125, %131, !dbg !2306
  br i1 %227, label %228, label %230, !dbg !2310

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2312
  store i8 63, i8* %229, align 1, !dbg !2312, !tbaa !777
  br label %230, !dbg !2312

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2031, metadata !656), !dbg !2093
  %232 = icmp ult i64 %231, %131, !dbg !2316
  br i1 %232, label %233, label %235, !dbg !2320

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2322
  store i8 34, i8* %234, align 1, !dbg !2322, !tbaa !777
  br label %235, !dbg !2322

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2031, metadata !656), !dbg !2093
  %237 = icmp ult i64 %236, %131, !dbg !2326
  br i1 %237, label %238, label %240, !dbg !2330

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2332
  store i8 34, i8* %239, align 1, !dbg !2332, !tbaa !777
  br label %240, !dbg !2332

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2031, metadata !656), !dbg !2093
  %242 = icmp ult i64 %241, %131, !dbg !2336
  br i1 %242, label %243, label %245, !dbg !2340

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2342
  store i8 63, i8* %244, align 1, !dbg !2342, !tbaa !777
  br label %245, !dbg !2342

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2031, metadata !656), !dbg !2093
  br label %476, !dbg !2346

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2045, metadata !656), !dbg !2347
  br label %257, !dbg !2348

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2045, metadata !656), !dbg !2347
  br label %257, !dbg !2349

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2045, metadata !656), !dbg !2347
  br label %255, !dbg !2350

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2045, metadata !656), !dbg !2347
  br label %255, !dbg !2351

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2045, metadata !656), !dbg !2347
  br label %257, !dbg !2352

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2045, metadata !656), !dbg !2347
  br i1 %114, label %253, label %254, !dbg !2353

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2354

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2357

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2045, metadata !656), !dbg !2347
  br i1 %118, label %257, label %644, !dbg !2359

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2045, metadata !656), !dbg !2347
  br i1 %105, label %503, label %476, !dbg !2361

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2362
  br i1 %260, label %261, label %266, !dbg !2364

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2365, !tbaa !777
  %263 = icmp ne i8 %262, 0, !dbg !2367
  %264 = icmp ne i64 %124, 0, !dbg !2368
  %265 = or i1 %264, %263, !dbg !2370
  br i1 %265, label %476, label %272, !dbg !2370

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2371
  %268 = icmp ne i64 %124, 0, !dbg !2368
  %269 = or i1 %268, %267, !dbg !2373
  br i1 %269, label %476, label %272, !dbg !2373

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2368
  br i1 %271, label %272, label %476, !dbg !2375

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2048, metadata !656), !dbg !2182
  br label %273, !dbg !2376

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2048, metadata !656), !dbg !2182
  br i1 %118, label %476, label %644, !dbg !2377

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2039, metadata !656), !dbg !2102
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2048, metadata !656), !dbg !2182
  br i1 %114, label %276, label %476, !dbg !2379

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2380

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2383
  %279 = icmp ne i64 %126, 0, !dbg !2385
  %280 = or i1 %279, %278, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2032, metadata !656), !dbg !2094
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2022, metadata !656), !dbg !2085
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2387
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2022, metadata !656), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2032, metadata !656), !dbg !2094
  %283 = icmp ult i64 %125, %282, !dbg !2388
  br i1 %283, label %284, label %286, !dbg !2392

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2394
  store i8 39, i8* %285, align 1, !dbg !2394, !tbaa !777
  br label %286, !dbg !2394

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2031, metadata !656), !dbg !2093
  %288 = icmp ult i64 %287, %282, !dbg !2398
  br i1 %288, label %289, label %291, !dbg !2402

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2404
  store i8 92, i8* %290, align 1, !dbg !2404, !tbaa !777
  br label %291, !dbg !2404

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2031, metadata !656), !dbg !2093
  %293 = icmp ult i64 %292, %282, !dbg !2408
  br i1 %293, label %294, label %296, !dbg !2412

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2414
  store i8 39, i8* %295, align 1, !dbg !2414, !tbaa !777
  br label %296, !dbg !2414

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2038, metadata !656), !dbg !2101
  br label %476, !dbg !2418

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2419

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2049, metadata !656), !dbg !2420
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2421
  %301 = load i16*, i16** %300, align 8, !dbg !2421, !tbaa !664
  %302 = zext i8 %159 to i64, !dbg !2421
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2421
  %304 = load i16, i16* %303, align 2, !dbg !2421, !tbaa !1617
  %305 = lshr i16 %304, 14, !dbg !2423
  %306 = trunc i16 %305 to i8, !dbg !2423
  %307 = and i8 %306, 1, !dbg !2423
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2052, metadata !656), !dbg !2424
  br label %368, !dbg !2425

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2426
  store i64 0, i64* %10, align 8, !dbg !2427
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2049, metadata !656), !dbg !2420
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2052, metadata !656), !dbg !2424
  %309 = icmp eq i64 %156, -1, !dbg !2428
  br i1 %309, label %310, label %312, !dbg !2430, !llvm.loop !2431

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #8, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2024, metadata !656), !dbg !2087
  br label %312, !dbg !2435, !llvm.loop !2431

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2424

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2052, metadata !656), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2049, metadata !656), !dbg !2420
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2024, metadata !656), !dbg !2087
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2436
  %317 = add i64 %315, %124, !dbg !2437
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2438
  %319 = sub i64 %313, %317, !dbg !2439
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2053, metadata !1095), !dbg !2440
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2070, metadata !1095), !dbg !2441
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2073, metadata !656), !dbg !2443
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2444

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2049, metadata !656), !dbg !2420
  %322 = icmp ugt i64 %313, %317, !dbg !2445
  br i1 %322, label %323, label %351, !dbg !2448

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2449

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2449
  %328 = load i8, i8* %327, align 1, !dbg !2449, !tbaa !777
  %329 = icmp eq i8 %328, 0, !dbg !2451
  br i1 %329, label %348, label %330, !dbg !2452

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2049, metadata !656), !dbg !2420
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2049, metadata !656), !dbg !2420
  %332 = add i64 %331, %124, !dbg !2455
  %333 = icmp ult i64 %332, %313, !dbg !2445
  br i1 %333, label %324, label %348, !dbg !2448, !llvm.loop !2456

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2458
  %336 = and i1 %116, %335, !dbg !2462
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2074, metadata !656), !dbg !2463
  br i1 %336, label %337, label %355, !dbg !2462

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2464

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2464
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2465
  %342 = load i8, i8* %341, align 1, !dbg !2465, !tbaa !777
  %343 = sext i8 %342 to i32, !dbg !2465
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2466

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2074, metadata !656), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2074, metadata !656), !dbg !2463
  %346 = icmp ult i64 %345, %320, !dbg !2458
  br i1 %346, label %338, label %354, !dbg !2469, !llvm.loop !2471

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2424

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2424

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2424

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2052, metadata !656), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2049, metadata !656), !dbg !2420
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2474
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2475

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2475, !tbaa !770
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2070, metadata !656), !dbg !2441
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2477
  %358 = icmp eq i32 %357, 0, !dbg !2477
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2052, metadata !656), !dbg !2424
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2478
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2052, metadata !656), !dbg !2424
  %360 = add i64 %320, %315, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2049, metadata !656), !dbg !2420
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2052, metadata !656), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2049, metadata !656), !dbg !2420
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2474
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2053, metadata !1095), !dbg !2440
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #8, !dbg !2480
  %362 = icmp eq i32 %361, 0, !dbg !2481
  br i1 %362, label %314, label %363, !dbg !2482, !llvm.loop !2431

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2484

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2484
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2052, metadata !656), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2049, metadata !656), !dbg !2420
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2474
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2484
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2052, metadata !656), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2049, metadata !656), !dbg !2420
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2024, metadata !656), !dbg !2087
  %372 = and i8 %371, 1, !dbg !2485
  %373 = icmp ne i8 %372, 0, !dbg !2485
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2048, metadata !656), !dbg !2182
  %374 = icmp ult i64 %370, 2, !dbg !2486
  %375 = or i1 %373, %113, !dbg !2487
  %376 = and i1 %374, %375, !dbg !2489
  br i1 %376, label %476, label %377, !dbg !2489

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2081, metadata !656), !dbg !2491
  br label %379, !dbg !2492

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2047, metadata !656), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2046, metadata !656), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2041, metadata !656), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2030, metadata !656), !dbg !2168
  br i1 %375, label %432, label %386, !dbg !2493

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2498

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2047, metadata !656), !dbg !2181
  %388 = and i8 %382, 1, !dbg !2502
  %389 = icmp eq i8 %388, 0, !dbg !2502
  %390 = and i1 %114, %389, !dbg !2505
  br i1 %390, label %391, label %407, !dbg !2505

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2507
  br i1 %392, label %393, label %395, !dbg !2512

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2514
  store i8 39, i8* %394, align 1, !dbg !2514, !tbaa !777
  br label %395, !dbg !2514

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2031, metadata !656), !dbg !2093
  %397 = icmp ult i64 %396, %131, !dbg !2518
  br i1 %397, label %398, label %400, !dbg !2522

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2524
  store i8 36, i8* %399, align 1, !dbg !2524, !tbaa !777
  br label %400, !dbg !2524

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2031, metadata !656), !dbg !2093
  %402 = icmp ult i64 %401, %131, !dbg !2528
  br i1 %402, label %403, label %405, !dbg !2532

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2534
  store i8 39, i8* %404, align 1, !dbg !2534, !tbaa !777
  br label %405, !dbg !2534

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2038, metadata !656), !dbg !2101
  br label %407, !dbg !2538

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2031, metadata !656), !dbg !2093
  %410 = icmp ult i64 %408, %131, !dbg !2540
  br i1 %410, label %411, label %413, !dbg !2544

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2546
  store i8 92, i8* %412, align 1, !dbg !2546, !tbaa !777
  br label %413, !dbg !2546

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2031, metadata !656), !dbg !2093
  %415 = icmp ult i64 %414, %131, !dbg !2550
  br i1 %415, label %416, label %420, !dbg !2554

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2556
  %418 = or i8 %417, 48, !dbg !2556
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2556
  store i8 %418, i8* %419, align 1, !dbg !2556, !tbaa !777
  br label %420, !dbg !2556

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2031, metadata !656), !dbg !2093
  %422 = icmp ult i64 %421, %131, !dbg !2560
  br i1 %422, label %423, label %428, !dbg !2564

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2566
  %425 = and i8 %424, 7, !dbg !2566
  %426 = or i8 %425, 48, !dbg !2566
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2566
  store i8 %426, i8* %427, align 1, !dbg !2566, !tbaa !777
  br label %428, !dbg !2566

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2031, metadata !656), !dbg !2093
  %430 = and i8 %383, 7, !dbg !2570
  %431 = or i8 %430, 48, !dbg !2571
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2041, metadata !656), !dbg !2199
  br label %441, !dbg !2572

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2573
  %434 = icmp eq i8 %433, 0, !dbg !2573
  br i1 %434, label %441, label %435, !dbg !2575

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2576
  br i1 %436, label %437, label %439, !dbg !2581

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2583
  store i8 92, i8* %438, align 1, !dbg !2583, !tbaa !777
  br label %439, !dbg !2583

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2046, metadata !656), !dbg !2180
  br label %441, !dbg !2587

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2047, metadata !656), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2046, metadata !656), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2041, metadata !656), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2031, metadata !656), !dbg !2093
  %447 = add i64 %380, 1, !dbg !2588
  %448 = icmp ugt i64 %378, %447, !dbg !2590
  br i1 %448, label %449, label %541, !dbg !2591

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2592
  %451 = icmp ne i8 %450, 0, !dbg !2592
  %452 = and i8 %446, 1, !dbg !2596
  %453 = icmp eq i8 %452, 0, !dbg !2596
  %454 = and i1 %451, %453, !dbg !2592
  br i1 %454, label %455, label %466, !dbg !2592

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2598
  br i1 %456, label %457, label %459, !dbg !2603

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2605
  store i8 39, i8* %458, align 1, !dbg !2605, !tbaa !777
  br label %459, !dbg !2605

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2031, metadata !656), !dbg !2093
  %461 = icmp ult i64 %460, %131, !dbg !2609
  br i1 %461, label %462, label %464, !dbg !2613

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2615
  store i8 39, i8* %463, align 1, !dbg !2615, !tbaa !777
  br label %464, !dbg !2615

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2038, metadata !656), !dbg !2101
  br label %466, !dbg !2619

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2031, metadata !656), !dbg !2093
  %469 = icmp ult i64 %467, %131, !dbg !2621
  br i1 %469, label %470, label %472, !dbg !2625

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2627
  store i8 %444, i8* %471, align 1, !dbg !2627, !tbaa !777
  br label %472, !dbg !2627

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2030, metadata !656), !dbg !2168
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2631
  %475 = load i8, i8* %474, align 1, !dbg !2631, !tbaa !777
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2041, metadata !656), !dbg !2199
  br label %379, !dbg !2632, !llvm.loop !2634

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2022, metadata !656), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2048, metadata !656), !dbg !2182
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2047, metadata !656), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2046, metadata !656), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2041, metadata !656), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2039, metadata !656), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2024, metadata !656), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2032, metadata !656), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2030, metadata !656), !dbg !2168
  br i1 %107, label %488, label %487, !dbg !2637

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2639

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2640

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2641
  %491 = zext i8 %490 to i64, !dbg !2641
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2643
  %493 = load i32, i32* %492, align 4, !dbg !2643, !tbaa !770
  %494 = and i8 %483, 31, !dbg !2644
  %495 = zext i8 %494 to i32, !dbg !2645
  %496 = shl i32 1, %495, !dbg !2646
  %497 = and i32 %493, %496, !dbg !2646
  %498 = icmp eq i32 %497, 0, !dbg !2646
  %499 = icmp eq i8 %157, 0, !dbg !2647
  %500 = and i1 %499, %498, !dbg !2648
  br i1 %500, label %542, label %503, !dbg !2648

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2647
  br i1 %502, label %542, label %503, !dbg !2649

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2022, metadata !656), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2048, metadata !656), !dbg !2182
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2041, metadata !656), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2039, metadata !656), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2024, metadata !656), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2032, metadata !656), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2030, metadata !656), !dbg !2168
  br i1 %112, label %513, label %644, !dbg !2651

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2047, metadata !656), !dbg !2181
  %514 = and i8 %508, 1, !dbg !2654
  %515 = icmp eq i8 %514, 0, !dbg !2654
  %516 = and i1 %114, %515, !dbg !2657
  br i1 %516, label %517, label %533, !dbg !2657

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2659
  br i1 %518, label %519, label %521, !dbg !2664

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2666
  store i8 39, i8* %520, align 1, !dbg !2666, !tbaa !777
  br label %521, !dbg !2666

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2031, metadata !656), !dbg !2093
  %523 = icmp ult i64 %522, %512, !dbg !2670
  br i1 %523, label %524, label %526, !dbg !2674

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2676
  store i8 36, i8* %525, align 1, !dbg !2676, !tbaa !777
  br label %526, !dbg !2676

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2031, metadata !656), !dbg !2093
  %528 = icmp ult i64 %527, %512, !dbg !2680
  br i1 %528, label %529, label %531, !dbg !2684

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2686
  store i8 39, i8* %530, align 1, !dbg !2686, !tbaa !777
  br label %531, !dbg !2686

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2038, metadata !656), !dbg !2101
  br label %533, !dbg !2690

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2031, metadata !656), !dbg !2093
  %536 = icmp ult i64 %534, %512, !dbg !2692
  br i1 %536, label %537, label %539, !dbg !2696

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2698
  store i8 92, i8* %538, align 1, !dbg !2698, !tbaa !777
  br label %539, !dbg !2698

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2022, metadata !656), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2048, metadata !656), !dbg !2182
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2047, metadata !656), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2041, metadata !656), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2039, metadata !656), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2024, metadata !656), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2032, metadata !656), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2030, metadata !656), !dbg !2168
  br label %569, !dbg !2702

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2085

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2022, metadata !656), !dbg !2085
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2048, metadata !656), !dbg !2182
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2047, metadata !656), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2041, metadata !656), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2039, metadata !656), !dbg !2102
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2024, metadata !656), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2032, metadata !656), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2030, metadata !656), !dbg !2168
  %553 = and i8 %547, 1, !dbg !2702
  %554 = icmp ne i8 %553, 0, !dbg !2702
  %555 = and i8 %550, 1, !dbg !2706
  %556 = icmp eq i8 %555, 0, !dbg !2706
  %557 = and i1 %554, %556, !dbg !2702
  br i1 %557, label %558, label %569, !dbg !2702

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2708
  br i1 %559, label %560, label %562, !dbg !2713

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2715
  store i8 39, i8* %561, align 1, !dbg !2715, !tbaa !777
  br label %562, !dbg !2715

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2031, metadata !656), !dbg !2093
  %564 = icmp ult i64 %563, %552, !dbg !2719
  br i1 %564, label %565, label %567, !dbg !2723

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2725
  store i8 39, i8* %566, align 1, !dbg !2725, !tbaa !777
  br label %567, !dbg !2725

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2031, metadata !656), !dbg !2093
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2038, metadata !656), !dbg !2101
  br label %569, !dbg !2729

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2038, metadata !656), !dbg !2101
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2031, metadata !656), !dbg !2093
  %579 = icmp ult i64 %577, %570, !dbg !2731
  br i1 %579, label %580, label %582, !dbg !2735

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2737
  store i8 %572, i8* %581, align 1, !dbg !2737, !tbaa !777
  br label %582, !dbg !2737

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2031, metadata !656), !dbg !2093
  %584 = and i8 %571, 1, !dbg !2741
  %585 = icmp eq i8 %584, 0, !dbg !2741
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2040, metadata !656), !dbg !2103
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2743
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2040, metadata !656), !dbg !2103
  br label %587, !dbg !2744

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2030, metadata !656), !dbg !2168
  br label %123, !dbg !2747, !llvm.loop !2748

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2751
  %600 = and i1 %114, %599, !dbg !2753
  %601 = xor i1 %600, true, !dbg !2753
  %602 = or i1 %112, %601, !dbg !2753
  br i1 %602, label %603, label %648, !dbg !2753

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2754
  %605 = xor i1 %604, true, !dbg !2754
  %606 = and i8 %129, 1, !dbg !2756
  %607 = icmp eq i8 %606, 0, !dbg !2756
  %608 = or i1 %607, %605, !dbg !2754
  br i1 %608, label %618, label %609, !dbg !2754

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2758
  %611 = icmp eq i8 %610, 0, !dbg !2758
  br i1 %611, label %614, label %612, !dbg !2761

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2762
  br label %659, !dbg !2763

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2764
  %616 = icmp ne i64 %126, 0, !dbg !2766
  %617 = and i1 %616, %615, !dbg !2768
  br i1 %617, label %27, label %618, !dbg !2768

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2769
  %620 = and i1 %619, %112, !dbg !2771
  br i1 %620, label %621, label %638, !dbg !2771

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2033, metadata !656), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2031, metadata !656), !dbg !2093
  %622 = load i8, i8* %100, align 1, !dbg !2772, !tbaa !777
  %623 = icmp eq i8 %622, 0, !dbg !2776
  br i1 %623, label %638, label %624, !dbg !2776

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2778

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2778
  br i1 %629, label %630, label %632, !dbg !2782

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2784
  store i8 %626, i8* %631, align 1, !dbg !2784, !tbaa !777
  br label %632, !dbg !2784

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2031, metadata !656), !dbg !2093
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2033, metadata !656), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2033, metadata !656), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2031, metadata !656), !dbg !2093
  %635 = load i8, i8* %634, align 1, !dbg !2772, !tbaa !777
  %636 = icmp eq i8 %635, 0, !dbg !2776
  br i1 %636, label %637, label %625, !dbg !2776, !llvm.loop !2790

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2093

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2031, metadata !656), !dbg !2093
  %640 = icmp ult i64 %639, %131, !dbg !2793
  br i1 %640, label %641, label %659, !dbg !2795

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2796
  store i8 0, i8* %642, align 1, !dbg !2797, !tbaa !777
  br label %659, !dbg !2796

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2085

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2085

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2085

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2022, metadata !656), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2024, metadata !656), !dbg !2087
  %653 = icmp ne i32 %650, 2, !dbg !2798
  %654 = icmp eq i8 %104, 0, !dbg !2800
  %655 = or i1 %653, %654, !dbg !2802
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2025, metadata !656), !dbg !2088
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2802
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2025, metadata !656), !dbg !2088
  %657 = and i32 %5, -3, !dbg !2803
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2804
  br label %659, !dbg !2805

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2806
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2807 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2811, metadata !656), !dbg !2815
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2812, metadata !656), !dbg !2816
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2817
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2813, metadata !656), !dbg !2818
  %4 = icmp eq i8* %3, %0, !dbg !2819
  br i1 %4, label %5, label %75, !dbg !2821

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2822
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2814, metadata !656), !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2824, metadata !656), !dbg !2840
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2838, metadata !656), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2839, metadata !656), !dbg !2844
  %7 = load i8, i8* %6, align 1, !tbaa !777
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2845
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2845

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2848, metadata !656), !dbg !2862
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2860, metadata !656), !dbg !2866
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2861, metadata !656), !dbg !2867
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !777
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2868
  %15 = icmp eq i32 %14, 84, !dbg !2868
  br i1 %15, label %16, label %72, !dbg !2868

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2871, metadata !656), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2882, metadata !656), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2883, metadata !656), !dbg !2889
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !777
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2890
  %21 = icmp eq i32 %20, 70, !dbg !2890
  br i1 %21, label %22, label %72, !dbg !2890

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2893, metadata !656), !dbg !2905
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2903, metadata !656), !dbg !2909
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2904, metadata !656), !dbg !2910
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !777
  %25 = icmp eq i8 %24, 45, !dbg !2911
  br i1 %25, label %26, label %72, !dbg !2914

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2916, metadata !656), !dbg !2927
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2925, metadata !656), !dbg !2931
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2926, metadata !656), !dbg !2932
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !777
  %29 = icmp eq i8 %28, 56, !dbg !2933
  br i1 %29, label %30, label %72, !dbg !2936

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2938, metadata !656), !dbg !2948
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2946, metadata !656), !dbg !2952
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2947, metadata !656), !dbg !2953
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !777
  %33 = icmp eq i8 %32, 0, !dbg !2954
  br i1 %33, label %34, label %72, !dbg !2957

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2959, !tbaa !777
  %36 = icmp eq i8 %35, 96, !dbg !2960
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0), !dbg !2959
  br label %75, !dbg !2961

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2848, metadata !656), !dbg !2962
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2860, metadata !656), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2861, metadata !656), !dbg !2967
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !777
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2968
  %43 = icmp eq i32 %42, 66, !dbg !2968
  br i1 %43, label %44, label %72, !dbg !2968

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2871, metadata !656), !dbg !2969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2882, metadata !656), !dbg !2971
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2883, metadata !656), !dbg !2972
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !777
  %47 = icmp eq i8 %46, 49, !dbg !2973
  br i1 %47, label %48, label %72, !dbg !2975

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2893, metadata !656), !dbg !2977
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2903, metadata !656), !dbg !2979
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2904, metadata !656), !dbg !2980
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !777
  %51 = icmp eq i8 %50, 56, !dbg !2981
  br i1 %51, label %52, label %72, !dbg !2982

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2916, metadata !656), !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2925, metadata !656), !dbg !2985
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2926, metadata !656), !dbg !2986
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !777
  %55 = icmp eq i8 %54, 48, !dbg !2987
  br i1 %55, label %56, label %72, !dbg !2988

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2938, metadata !656), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2946, metadata !656), !dbg !2991
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2947, metadata !656), !dbg !2992
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !777
  %59 = icmp eq i8 %58, 51, !dbg !2993
  br i1 %59, label %60, label %72, !dbg !2994

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2995, metadata !656), !dbg !3004
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3002, metadata !656), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3003, metadata !656), !dbg !3009
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !777
  %63 = icmp eq i8 %62, 48, !dbg !3010
  br i1 %63, label %64, label %72, !dbg !3013

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3015, metadata !656), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3021, metadata !656), !dbg !3027
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3022, metadata !656), !dbg !3028
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !777
  %67 = icmp eq i8 %66, 0, !dbg !3029
  br i1 %67, label %68, label %72, !dbg !3032

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3033, !tbaa !777
  %70 = icmp eq i8 %69, 96, !dbg !3034
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0), !dbg !3033
  br label %75, !dbg !3035

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3036
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !3037
  br label %75, !dbg !3038

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3039
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3040 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3044, metadata !656), !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3045, metadata !656), !dbg !3048
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3046, metadata !656), !dbg !3049
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3050, metadata !656) #11, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3055, metadata !656) #11, !dbg !3065
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3056, metadata !656) #11, !dbg !3066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3057, metadata !656) #11, !dbg !3067
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3068
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3058, metadata !656) #11, !dbg !3069
  %6 = tail call i32* @__errno_location() #1, !dbg !3070
  %7 = load i32, i32* %6, align 4, !dbg !3070, !tbaa !770
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3059, metadata !656) #11, !dbg !3071
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3072
  %9 = load i32, i32* %8, align 4, !dbg !3072, !tbaa !1953
  %10 = or i32 %9, 1, !dbg !3073
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3060, metadata !656) #11, !dbg !3074
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3075
  %12 = load i32, i32* %11, align 8, !dbg !3075, !tbaa !1891
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3076
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3077
  %15 = load i8*, i8** %14, align 8, !dbg !3077, !tbaa !1980
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3078
  %17 = load i8*, i8** %16, align 8, !dbg !3078, !tbaa !1983
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3079
  %19 = add i64 %18, 1, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3061, metadata !656) #11, !dbg !3081
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3082, metadata !656) #11, !dbg !3087
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3089
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3062, metadata !656) #11, !dbg !3090
  %21 = load i32, i32* %11, align 8, !dbg !3091, !tbaa !1891
  %22 = load i8*, i8** %14, align 8, !dbg !3092, !tbaa !1980
  %23 = load i8*, i8** %16, align 8, !dbg !3093, !tbaa !1983
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3094
  store i32 %7, i32* %6, align 4, !dbg !3095, !tbaa !770
  ret i8* %20, !dbg !3096
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3051 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3050, metadata !656), !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3055, metadata !656), !dbg !3098
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3056, metadata !656), !dbg !3099
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3057, metadata !656), !dbg !3100
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3101
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3101
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3058, metadata !656), !dbg !3102
  %7 = tail call i32* @__errno_location() #1, !dbg !3103
  %8 = load i32, i32* %7, align 4, !dbg !3103, !tbaa !770
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3059, metadata !656), !dbg !3104
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3105
  %10 = load i32, i32* %9, align 4, !dbg !3105, !tbaa !1953
  %11 = icmp ne i64* %2, null, !dbg !3106
  %12 = xor i1 %11, true, !dbg !3106
  %13 = zext i1 %12 to i32, !dbg !3106
  %14 = or i32 %10, %13, !dbg !3107
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3060, metadata !656), !dbg !3108
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3109
  %16 = load i32, i32* %15, align 8, !dbg !3109, !tbaa !1891
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3110
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3111
  %19 = load i8*, i8** %18, align 8, !dbg !3111, !tbaa !1980
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3112
  %21 = load i8*, i8** %20, align 8, !dbg !3112, !tbaa !1983
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3113
  %23 = add i64 %22, 1, !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3061, metadata !656), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3082, metadata !656) #11, !dbg !3116
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3118
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3062, metadata !656), !dbg !3119
  %25 = load i32, i32* %15, align 8, !dbg !3120, !tbaa !1891
  %26 = load i8*, i8** %18, align 8, !dbg !3121, !tbaa !1980
  %27 = load i8*, i8** %20, align 8, !dbg !3122, !tbaa !1983
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3123
  store i32 %8, i32* %7, align 4, !dbg !3124, !tbaa !770
  br i1 %11, label %29, label %30, !dbg !3125

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3126, !tbaa !1721
  br label %30, !dbg !3128

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3129
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3130 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3134, !tbaa !664
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3132, metadata !656), !dbg !3135
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3133, metadata !656), !dbg !3136
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3133, metadata !656), !dbg !3136
  %2 = load i32, i32* @nslots, align 4, !dbg !3137, !tbaa !770
  %3 = icmp sgt i32 %2, 1, !dbg !3141
  br i1 %3, label %4, label %14, !dbg !3142

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3144

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3144
  %8 = load i8*, i8** %7, align 8, !dbg !3144, !tbaa !3145
  tail call void @free(i8* %8) #11, !dbg !3147
  %9 = add nuw i64 %6, 1, !dbg !3148
  %10 = load i32, i32* @nslots, align 4, !dbg !3137, !tbaa !770
  %11 = sext i32 %10 to i64, !dbg !3141
  %12 = icmp slt i64 %9, %11, !dbg !3141
  br i1 %12, label %5, label %13, !dbg !3142, !llvm.loop !3150

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3153

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3153
  %16 = load i8*, i8** %15, align 8, !dbg !3153, !tbaa !3145
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3155
  br i1 %17, label %19, label %18, !dbg !3156

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !3157
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3159, !tbaa !3160
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3161, !tbaa !3145
  br label %19, !dbg !3162

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3163
  br i1 %20, label %23, label %21, !dbg !3165

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3166
  tail call void @free(i8* %22) #11, !dbg !3168
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3169, !tbaa !664
  br label %23, !dbg !3170

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3171, !tbaa !770
  ret void, !dbg !3172
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3173 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3177, metadata !656), !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3178, metadata !656), !dbg !3180
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3181
  ret i8* %3, !dbg !3182
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3183 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3187, metadata !656), !dbg !3201
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3188, metadata !656), !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3189, metadata !656), !dbg !3203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3190, metadata !656), !dbg !3204
  %5 = tail call i32* @__errno_location() #1, !dbg !3205
  %6 = load i32, i32* %5, align 4, !dbg !3205, !tbaa !770
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3191, metadata !656), !dbg !3206
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3207, !tbaa !664
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3192, metadata !656), !dbg !3208
  %8 = icmp slt i32 %0, 0, !dbg !3209
  br i1 %8, label %9, label %10, !dbg !3211

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3212
  unreachable, !dbg !3212

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3213, !tbaa !770
  %12 = icmp sgt i32 %11, %0, !dbg !3214
  br i1 %12, label %34, label %13, !dbg !3215

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3216
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3217
  br i1 %15, label %16, label %17, !dbg !3219

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3220
  unreachable, !dbg !3220

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3221
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3221
  %20 = add nsw i32 %0, 1, !dbg !3223
  %21 = sext i32 %20 to i64, !dbg !3224
  %22 = shl nsw i64 %21, 4, !dbg !3225
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3226
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3226
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3192, metadata !656), !dbg !3208
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3227, !tbaa !664
  br i1 %14, label %25, label %26, !dbg !3228

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3229, !tbaa.struct !3231
  br label %26, !dbg !3232

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3233, !tbaa !770
  %28 = sext i32 %27 to i64, !dbg !3234
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3234
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3235
  %31 = sub nsw i32 %20, %27, !dbg !3236
  %32 = sext i32 %31 to i64, !dbg !3237
  %33 = shl nsw i64 %32, 4, !dbg !3238
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3235
  store i32 %20, i32* @nslots, align 4, !dbg !3239, !tbaa !770
  br label %34, !dbg !3240

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3192, metadata !656), !dbg !3208
  %36 = sext i32 %0 to i64, !dbg !3241
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3242
  %38 = load i64, i64* %37, align 8, !dbg !3242, !tbaa !3160
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3196, metadata !656), !dbg !3243
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3244
  %40 = load i8*, i8** %39, align 8, !dbg !3244, !tbaa !3145
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3198, metadata !656), !dbg !3245
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3246
  %42 = load i32, i32* %41, align 4, !dbg !3246, !tbaa !1953
  %43 = or i32 %42, 1, !dbg !3247
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3199, metadata !656), !dbg !3248
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3249
  %45 = load i32, i32* %44, align 8, !dbg !3249, !tbaa !1891
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3250
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3251
  %48 = load i8*, i8** %47, align 8, !dbg !3251, !tbaa !1980
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3252
  %50 = load i8*, i8** %49, align 8, !dbg !3252, !tbaa !1983
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3200, metadata !656), !dbg !3254
  %52 = icmp ugt i64 %38, %51, !dbg !3255
  br i1 %52, label %63, label %53, !dbg !3257

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3196, metadata !656), !dbg !3243
  store i64 %54, i64* %37, align 8, !dbg !3260, !tbaa !3160
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3261
  br i1 %55, label %57, label %56, !dbg !3263

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3264
  br label %57, !dbg !3264

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3082, metadata !656) #11, !dbg !3265
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3267
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3198, metadata !656), !dbg !3245
  store i8* %58, i8** %39, align 8, !dbg !3268, !tbaa !3145
  %59 = load i32, i32* %44, align 8, !dbg !3269, !tbaa !1891
  %60 = load i8*, i8** %47, align 8, !dbg !3270, !tbaa !1980
  %61 = load i8*, i8** %49, align 8, !dbg !3271, !tbaa !1983
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3272
  br label %63, !dbg !3273

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3198, metadata !656), !dbg !3245
  store i32 %6, i32* %5, align 4, !dbg !3274, !tbaa !770
  ret i8* %64, !dbg !3275
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3276 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3280, metadata !656), !dbg !3283
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3281, metadata !656), !dbg !3284
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3282, metadata !656), !dbg !3285
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3286
  ret i8* %4, !dbg !3287
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3288 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3292, metadata !656), !dbg !3293
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3177, metadata !656) #11, !dbg !3294
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3178, metadata !656) #11, !dbg !3296
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3297
  ret i8* %2, !dbg !3298
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3299 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3303, metadata !656), !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3304, metadata !656), !dbg !3306
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3280, metadata !656) #11, !dbg !3307
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3281, metadata !656) #11, !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3282, metadata !656) #11, !dbg !3310
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3311
  ret i8* %3, !dbg !3312
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3313 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3321, metadata !3327), !dbg !3328
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3317, metadata !656), !dbg !3330
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3318, metadata !656), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3319, metadata !656), !dbg !3332
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3333
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3333
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3320, metadata !1095), !dbg !3334
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3326, metadata !656) #11, !dbg !3335
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3336
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3336
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3321, metadata !656) #11, !dbg !3328
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3321, metadata !3337) #11, !dbg !3328
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3328
  %8 = icmp eq i32 %1, 10, !dbg !3338
  br i1 %8, label %9, label %10, !dbg !3340

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3341, !noalias !3342
  unreachable, !dbg !3341

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3321, metadata !3337) #11, !dbg !3328
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3345
  store i32 %1, i32* %11, align 8, !dbg !3345, !alias.scope !3342
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3345
  %13 = bitcast i32* %12 to i8*, !dbg !3345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3345
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3346
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3320, metadata !1095), !dbg !3334
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3347
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3348
  ret i8* %14, !dbg !3349
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3350 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3321, metadata !3327), !dbg !3359
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3354, metadata !656), !dbg !3361
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3355, metadata !656), !dbg !3362
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3356, metadata !656), !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3357, metadata !656), !dbg !3364
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3365
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3358, metadata !1095), !dbg !3366
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3326, metadata !656) #11, !dbg !3367
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3368
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3368
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3321, metadata !656) #11, !dbg !3359
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3321, metadata !3337) #11, !dbg !3359
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3359
  %9 = icmp eq i32 %1, 10, !dbg !3369
  br i1 %9, label %10, label %11, !dbg !3370

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3371, !noalias !3372
  unreachable, !dbg !3371

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3321, metadata !3337) #11, !dbg !3359
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3375
  store i32 %1, i32* %12, align 8, !dbg !3375, !alias.scope !3372
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3375
  %14 = bitcast i32* %13 to i8*, !dbg !3375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3375
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3376
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3358, metadata !1095), !dbg !3366
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3377
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3378
  ret i8* %15, !dbg !3379
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3380 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3321, metadata !3327), !dbg !3386
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3384, metadata !656), !dbg !3389
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3385, metadata !656), !dbg !3390
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3317, metadata !656) #11, !dbg !3391
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3318, metadata !656) #11, !dbg !3392
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3319, metadata !656) #11, !dbg !3393
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3394
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3394
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3320, metadata !1095) #11, !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3326, metadata !656) #11, !dbg !3396
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3397
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3397
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3321, metadata !656) #11, !dbg !3386
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3321, metadata !3337) #11, !dbg !3386
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3386
  %7 = icmp eq i32 %0, 10, !dbg !3398
  br i1 %7, label %8, label %9, !dbg !3399

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3400, !noalias !3401
  unreachable, !dbg !3400

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3321, metadata !3337) #11, !dbg !3386
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3404
  store i32 %0, i32* %10, align 8, !dbg !3404, !alias.scope !3401
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3404
  %12 = bitcast i32* %11 to i8*, !dbg !3404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3404
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3405
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3320, metadata !1095) #11, !dbg !3395
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3406
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3407
  ret i8* %13, !dbg !3408
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3409 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3321, metadata !3327), !dbg !3416
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3413, metadata !656), !dbg !3419
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3414, metadata !656), !dbg !3420
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3415, metadata !656), !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3354, metadata !656) #11, !dbg !3422
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3355, metadata !656) #11, !dbg !3423
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3356, metadata !656) #11, !dbg !3424
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3357, metadata !656) #11, !dbg !3425
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3426
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3426
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3358, metadata !1095) #11, !dbg !3427
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3326, metadata !656) #11, !dbg !3428
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3429
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3429
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3321, metadata !656) #11, !dbg !3416
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3321, metadata !3337) #11, !dbg !3416
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3416
  %8 = icmp eq i32 %0, 10, !dbg !3430
  br i1 %8, label %9, label %10, !dbg !3431

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3432, !noalias !3433
  unreachable, !dbg !3432

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3321, metadata !3337) #11, !dbg !3416
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3436
  store i32 %0, i32* %11, align 8, !dbg !3436, !alias.scope !3433
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3436
  %13 = bitcast i32* %12 to i8*, !dbg !3436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3436
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3437
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3358, metadata !1095) #11, !dbg !3427
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3438
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3439
  ret i8* %14, !dbg !3440
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3441 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3445, metadata !656), !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3446, metadata !656), !dbg !3450
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3447, metadata !656), !dbg !3451
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3452
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3453, !tbaa.struct !3454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3448, metadata !1095), !dbg !3455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1911, metadata !656), !dbg !3456
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1912, metadata !656), !dbg !3458
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1913, metadata !656), !dbg !3459
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1914, metadata !656), !dbg !3460
  %6 = lshr i8 %2, 5, !dbg !3461
  %7 = zext i8 %6 to i64, !dbg !3461
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3462
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1915, metadata !656), !dbg !3463
  %9 = and i8 %2, 31, !dbg !3464
  %10 = zext i8 %9 to i32, !dbg !3465
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1917, metadata !656), !dbg !3466
  %11 = load i32, i32* %8, align 4, !dbg !3467, !tbaa !770
  %12 = lshr i32 %11, %10, !dbg !3468
  %13 = and i32 %12, 1, !dbg !3469
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1918, metadata !656), !dbg !3470
  %14 = xor i32 %13, 1, !dbg !3471
  %15 = shl i32 %14, %10, !dbg !3472
  %16 = xor i32 %15, %11, !dbg !3473
  store i32 %16, i32* %8, align 4, !dbg !3473, !tbaa !770
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3448, metadata !1095), !dbg !3455
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3474
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3475
  ret i8* %17, !dbg !3476
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3477 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3481, metadata !656), !dbg !3483
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3482, metadata !656), !dbg !3484
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3445, metadata !656) #11, !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3446, metadata !656) #11, !dbg !3487
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3447, metadata !656) #11, !dbg !3488
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3489
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3490, !tbaa.struct !3454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3448, metadata !1095) #11, !dbg !3491
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1911, metadata !656) #11, !dbg !3492
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1912, metadata !656) #11, !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1913, metadata !656) #11, !dbg !3495
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1914, metadata !656) #11, !dbg !3496
  %5 = lshr i8 %1, 5, !dbg !3497
  %6 = zext i8 %5 to i64, !dbg !3497
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3498
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1915, metadata !656) #11, !dbg !3499
  %8 = and i8 %1, 31, !dbg !3500
  %9 = zext i8 %8 to i32, !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1917, metadata !656) #11, !dbg !3502
  %10 = load i32, i32* %7, align 4, !dbg !3503, !tbaa !770
  %11 = lshr i32 %10, %9, !dbg !3504
  %12 = and i32 %11, 1, !dbg !3505
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1918, metadata !656) #11, !dbg !3506
  %13 = xor i32 %12, 1, !dbg !3507
  %14 = shl i32 %13, %9, !dbg !3508
  %15 = xor i32 %14, %10, !dbg !3509
  store i32 %15, i32* %7, align 4, !dbg !3509, !tbaa !770
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3448, metadata !1095) #11, !dbg !3491
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3510
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3511
  ret i8* %16, !dbg !3512
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3513 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3515, metadata !656), !dbg !3516
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3481, metadata !656) #11, !dbg !3517
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3482, metadata !656) #11, !dbg !3519
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3445, metadata !656) #11, !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3446, metadata !656) #11, !dbg !3522
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3447, metadata !656) #11, !dbg !3523
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3524
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3525, !tbaa.struct !3454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3448, metadata !1095) #11, !dbg !3526
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1911, metadata !656) #11, !dbg !3527
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1912, metadata !656) #11, !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1913, metadata !656) #11, !dbg !3530
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1914, metadata !656) #11, !dbg !3531
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3532
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1915, metadata !656) #11, !dbg !3533
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1917, metadata !656) #11, !dbg !3534
  %5 = load i32, i32* %4, align 4, !dbg !3535, !tbaa !770
  %6 = or i32 %5, 67108864, !dbg !3536
  store i32 %6, i32* %4, align 4, !dbg !3536, !tbaa !770
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3448, metadata !1095) #11, !dbg !3526
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3537
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3538
  ret i8* %7, !dbg !3539
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3540 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3542, metadata !656), !dbg !3544
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3543, metadata !656), !dbg !3545
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3445, metadata !656) #11, !dbg !3546
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3446, metadata !656) #11, !dbg !3548
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3447, metadata !656) #11, !dbg !3549
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3550
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3551, !tbaa.struct !3454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3448, metadata !1095) #11, !dbg !3552
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1911, metadata !656) #11, !dbg !3553
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1912, metadata !656) #11, !dbg !3555
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1913, metadata !656) #11, !dbg !3556
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1914, metadata !656) #11, !dbg !3557
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3558
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1915, metadata !656) #11, !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1917, metadata !656) #11, !dbg !3560
  %6 = load i32, i32* %5, align 4, !dbg !3561, !tbaa !770
  %7 = or i32 %6, 67108864, !dbg !3562
  store i32 %7, i32* %5, align 4, !dbg !3562, !tbaa !770
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3448, metadata !1095) #11, !dbg !3552
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3563
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3564
  ret i8* %8, !dbg !3565
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3566 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3321, metadata !3327), !dbg !3572
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3568, metadata !656), !dbg !3574
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3569, metadata !656), !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3570, metadata !656), !dbg !3576
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3577
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3577
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3326, metadata !656) #11, !dbg !3578
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3579
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3579
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3321, metadata !656) #11, !dbg !3572
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3321, metadata !3337) #11, !dbg !3572
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3572
  %9 = icmp eq i32 %1, 10, !dbg !3580
  br i1 %9, label %10, label %11, !dbg !3581

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3582, !noalias !3583
  unreachable, !dbg !3582

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3321, metadata !3337) #11, !dbg !3572
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3586
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3586
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3587
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3588
  store i32 %1, i32* %13, align 8, !dbg !3588
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3588
  %15 = bitcast i32* %14 to i8*, !dbg !3588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3588
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3571, metadata !1095), !dbg !3589
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1911, metadata !656), !dbg !3590
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1912, metadata !656), !dbg !3592
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1913, metadata !656), !dbg !3593
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1914, metadata !656), !dbg !3594
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3595
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1915, metadata !656), !dbg !3596
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1917, metadata !656), !dbg !3597
  %17 = load i32, i32* %16, align 4, !dbg !3598, !tbaa !770
  %18 = or i32 %17, 67108864, !dbg !3599
  store i32 %18, i32* %16, align 4, !dbg !3599, !tbaa !770
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3571, metadata !1095), !dbg !3589
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3600
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3601
  ret i8* %19, !dbg !3602
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3603 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3607, metadata !656), !dbg !3611
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3608, metadata !656), !dbg !3612
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3609, metadata !656), !dbg !3613
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3610, metadata !656), !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3615, metadata !656) #11, !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3620, metadata !656) #11, !dbg !3627
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3621, metadata !656) #11, !dbg !3628
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3622, metadata !656) #11, !dbg !3629
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3623, metadata !656) #11, !dbg !3630
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3631
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3631
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3632, !tbaa.struct !3454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3624, metadata !1095) #11, !dbg !3633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1961, metadata !656) #11, !dbg !3634
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1962, metadata !656) #11, !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1963, metadata !656) #11, !dbg !3637
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1961, metadata !656) #11, !dbg !3634
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1961, metadata !656) #11, !dbg !3634
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3638
  store i32 10, i32* %7, align 8, !dbg !3639, !tbaa !1891
  %8 = icmp ne i8* %1, null, !dbg !3640
  %9 = icmp ne i8* %2, null, !dbg !3641
  %10 = and i1 %8, %9, !dbg !3642
  br i1 %10, label %12, label %11, !dbg !3642

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3643
  unreachable, !dbg !3643

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3644
  store i8* %1, i8** %13, align 8, !dbg !3645, !tbaa !1980
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3646
  store i8* %2, i8** %14, align 8, !dbg !3647, !tbaa !1983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3624, metadata !1095) #11, !dbg !3633
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3648
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3649
  ret i8* %15, !dbg !3650
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3616 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3615, metadata !656), !dbg !3651
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3620, metadata !656), !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3621, metadata !656), !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3622, metadata !656), !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3623, metadata !656), !dbg !3655
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3656
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3657, !tbaa.struct !3454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3624, metadata !1095), !dbg !3658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1961, metadata !656) #11, !dbg !3659
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1962, metadata !656) #11, !dbg !3661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1963, metadata !656) #11, !dbg !3662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1961, metadata !656) #11, !dbg !3659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1961, metadata !656) #11, !dbg !3659
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3663
  store i32 10, i32* %8, align 8, !dbg !3664, !tbaa !1891
  %9 = icmp ne i8* %1, null, !dbg !3665
  %10 = icmp ne i8* %2, null, !dbg !3666
  %11 = and i1 %9, %10, !dbg !3667
  br i1 %11, label %13, label %12, !dbg !3667

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3668
  unreachable, !dbg !3668

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3669
  store i8* %1, i8** %14, align 8, !dbg !3670, !tbaa !1980
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3671
  store i8* %2, i8** %15, align 8, !dbg !3672, !tbaa !1983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3624, metadata !1095), !dbg !3658
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3673
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3674
  ret i8* %16, !dbg !3675
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3676 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3680, metadata !656), !dbg !3683
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3681, metadata !656), !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3682, metadata !656), !dbg !3685
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3607, metadata !656) #11, !dbg !3686
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3608, metadata !656) #11, !dbg !3688
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3609, metadata !656) #11, !dbg !3689
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3610, metadata !656) #11, !dbg !3690
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3615, metadata !656) #11, !dbg !3691
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3620, metadata !656) #11, !dbg !3693
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3621, metadata !656) #11, !dbg !3694
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3622, metadata !656) #11, !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3623, metadata !656) #11, !dbg !3696
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3697
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3698, !tbaa.struct !3454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3624, metadata !1095) #11, !dbg !3699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1961, metadata !656) #11, !dbg !3700
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1962, metadata !656) #11, !dbg !3702
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1963, metadata !656) #11, !dbg !3703
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1961, metadata !656) #11, !dbg !3700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1961, metadata !656) #11, !dbg !3700
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3704
  store i32 10, i32* %6, align 8, !dbg !3705, !tbaa !1891
  %7 = icmp ne i8* %0, null, !dbg !3706
  %8 = icmp ne i8* %1, null, !dbg !3707
  %9 = and i1 %7, %8, !dbg !3708
  br i1 %9, label %11, label %10, !dbg !3708

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3709
  unreachable, !dbg !3709

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3710
  store i8* %0, i8** %12, align 8, !dbg !3711, !tbaa !1980
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3712
  store i8* %1, i8** %13, align 8, !dbg !3713, !tbaa !1983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3624, metadata !1095) #11, !dbg !3699
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3714
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3715
  ret i8* %14, !dbg !3716
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3717 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3721, metadata !656), !dbg !3725
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3722, metadata !656), !dbg !3726
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3723, metadata !656), !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3724, metadata !656), !dbg !3728
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3615, metadata !656) #11, !dbg !3729
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3620, metadata !656) #11, !dbg !3731
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3621, metadata !656) #11, !dbg !3732
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3622, metadata !656) #11, !dbg !3733
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3623, metadata !656) #11, !dbg !3734
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3735
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3736, !tbaa.struct !3454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3624, metadata !1095) #11, !dbg !3737
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1961, metadata !656) #11, !dbg !3738
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1962, metadata !656) #11, !dbg !3740
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1963, metadata !656) #11, !dbg !3741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1961, metadata !656) #11, !dbg !3738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1961, metadata !656) #11, !dbg !3738
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3742
  store i32 10, i32* %7, align 8, !dbg !3743, !tbaa !1891
  %8 = icmp ne i8* %0, null, !dbg !3744
  %9 = icmp ne i8* %1, null, !dbg !3745
  %10 = and i1 %8, %9, !dbg !3746
  br i1 %10, label %12, label %11, !dbg !3746

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3747
  unreachable, !dbg !3747

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3748
  store i8* %0, i8** %13, align 8, !dbg !3749, !tbaa !1980
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3750
  store i8* %1, i8** %14, align 8, !dbg !3751, !tbaa !1983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3624, metadata !1095) #11, !dbg !3737
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3752
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3753
  ret i8* %15, !dbg !3754
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3755 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3759, metadata !656), !dbg !3762
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3760, metadata !656), !dbg !3763
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3761, metadata !656), !dbg !3764
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3765
  ret i8* %4, !dbg !3766
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3767 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3771, metadata !656), !dbg !3773
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3772, metadata !656), !dbg !3774
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3759, metadata !656) #11, !dbg !3775
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3760, metadata !656) #11, !dbg !3777
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3761, metadata !656) #11, !dbg !3778
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3779
  ret i8* %3, !dbg !3780
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3781 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3785, metadata !656), !dbg !3787
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3786, metadata !656), !dbg !3788
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3759, metadata !656) #11, !dbg !3789
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3760, metadata !656) #11, !dbg !3791
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3761, metadata !656) #11, !dbg !3792
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3793
  ret i8* %3, !dbg !3794
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3795 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3797, metadata !656), !dbg !3798
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3785, metadata !656) #11, !dbg !3799
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3786, metadata !656) #11, !dbg !3801
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3759, metadata !656) #11, !dbg !3802
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3760, metadata !656) #11, !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3761, metadata !656) #11, !dbg !3805
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3806
  ret i8* %2, !dbg !3807
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3808 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3867, metadata !656), !dbg !3873
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3868, metadata !656), !dbg !3874
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3869, metadata !656), !dbg !3875
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3870, metadata !656), !dbg !3876
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3871, metadata !656), !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3872, metadata !656), !dbg !3878
  %7 = icmp eq i8* %1, null, !dbg !3879
  br i1 %7, label %10, label %8, !dbg !3881

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3882
  br label %12, !dbg !3882

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3883
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #11, !dbg !3884
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3885
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.90, i64 0, i64 0), i32 5) #11, !dbg !3887
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3888
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
  ], !dbg !3889

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3890
  unreachable, !dbg !3890

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #11, !dbg !3892
  %20 = load i8*, i8** %4, align 8, !dbg !3892, !tbaa !664
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3893
  br label %146, !dbg !3895

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.92, i64 0, i64 0), i32 5) #11, !dbg !3896
  %24 = load i8*, i8** %4, align 8, !dbg !3896, !tbaa !664
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3896
  %26 = load i8*, i8** %25, align 8, !dbg !3896, !tbaa !664
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3897
  br label %146, !dbg !3898

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #11, !dbg !3899
  %30 = load i8*, i8** %4, align 8, !dbg !3899, !tbaa !664
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3899
  %32 = load i8*, i8** %31, align 8, !dbg !3899, !tbaa !664
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3899
  %34 = load i8*, i8** %33, align 8, !dbg !3899, !tbaa !664
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3900
  br label %146, !dbg !3901

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #11, !dbg !3902
  %38 = load i8*, i8** %4, align 8, !dbg !3902, !tbaa !664
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3902
  %40 = load i8*, i8** %39, align 8, !dbg !3902, !tbaa !664
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3902
  %42 = load i8*, i8** %41, align 8, !dbg !3902, !tbaa !664
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3902
  %44 = load i8*, i8** %43, align 8, !dbg !3902, !tbaa !664
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3903
  br label %146, !dbg !3904

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #11, !dbg !3905
  %48 = load i8*, i8** %4, align 8, !dbg !3905, !tbaa !664
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3905
  %50 = load i8*, i8** %49, align 8, !dbg !3905, !tbaa !664
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3905
  %52 = load i8*, i8** %51, align 8, !dbg !3905, !tbaa !664
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3905
  %54 = load i8*, i8** %53, align 8, !dbg !3905, !tbaa !664
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3905
  %56 = load i8*, i8** %55, align 8, !dbg !3905, !tbaa !664
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3906
  br label %146, !dbg !3907

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #11, !dbg !3908
  %60 = load i8*, i8** %4, align 8, !dbg !3908, !tbaa !664
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3908
  %62 = load i8*, i8** %61, align 8, !dbg !3908, !tbaa !664
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3908
  %64 = load i8*, i8** %63, align 8, !dbg !3908, !tbaa !664
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3908
  %66 = load i8*, i8** %65, align 8, !dbg !3908, !tbaa !664
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3908
  %68 = load i8*, i8** %67, align 8, !dbg !3908, !tbaa !664
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3908
  %70 = load i8*, i8** %69, align 8, !dbg !3908, !tbaa !664
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3909
  br label %146, !dbg !3910

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #11, !dbg !3911
  %74 = load i8*, i8** %4, align 8, !dbg !3911, !tbaa !664
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3911
  %76 = load i8*, i8** %75, align 8, !dbg !3911, !tbaa !664
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3911
  %78 = load i8*, i8** %77, align 8, !dbg !3911, !tbaa !664
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3911
  %80 = load i8*, i8** %79, align 8, !dbg !3911, !tbaa !664
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3911
  %82 = load i8*, i8** %81, align 8, !dbg !3911, !tbaa !664
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3911
  %84 = load i8*, i8** %83, align 8, !dbg !3911, !tbaa !664
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3911
  %86 = load i8*, i8** %85, align 8, !dbg !3911, !tbaa !664
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3912
  br label %146, !dbg !3913

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #11, !dbg !3914
  %90 = load i8*, i8** %4, align 8, !dbg !3914, !tbaa !664
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3914
  %92 = load i8*, i8** %91, align 8, !dbg !3914, !tbaa !664
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3914
  %94 = load i8*, i8** %93, align 8, !dbg !3914, !tbaa !664
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3914
  %96 = load i8*, i8** %95, align 8, !dbg !3914, !tbaa !664
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3914
  %98 = load i8*, i8** %97, align 8, !dbg !3914, !tbaa !664
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3914
  %100 = load i8*, i8** %99, align 8, !dbg !3914, !tbaa !664
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3914
  %102 = load i8*, i8** %101, align 8, !dbg !3914, !tbaa !664
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3914
  %104 = load i8*, i8** %103, align 8, !dbg !3914, !tbaa !664
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3915
  br label %146, !dbg !3916

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #11, !dbg !3917
  %108 = load i8*, i8** %4, align 8, !dbg !3917, !tbaa !664
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3917
  %110 = load i8*, i8** %109, align 8, !dbg !3917, !tbaa !664
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3917
  %112 = load i8*, i8** %111, align 8, !dbg !3917, !tbaa !664
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3917
  %114 = load i8*, i8** %113, align 8, !dbg !3917, !tbaa !664
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3917
  %116 = load i8*, i8** %115, align 8, !dbg !3917, !tbaa !664
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3917
  %118 = load i8*, i8** %117, align 8, !dbg !3917, !tbaa !664
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3917
  %120 = load i8*, i8** %119, align 8, !dbg !3917, !tbaa !664
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3917
  %122 = load i8*, i8** %121, align 8, !dbg !3917, !tbaa !664
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3917
  %124 = load i8*, i8** %123, align 8, !dbg !3917, !tbaa !664
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3918
  br label %146, !dbg !3919

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #11, !dbg !3920
  %128 = load i8*, i8** %4, align 8, !dbg !3920, !tbaa !664
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3920
  %130 = load i8*, i8** %129, align 8, !dbg !3920, !tbaa !664
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3920
  %132 = load i8*, i8** %131, align 8, !dbg !3920, !tbaa !664
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3920
  %134 = load i8*, i8** %133, align 8, !dbg !3920, !tbaa !664
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3920
  %136 = load i8*, i8** %135, align 8, !dbg !3920, !tbaa !664
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3920
  %138 = load i8*, i8** %137, align 8, !dbg !3920, !tbaa !664
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3920
  %140 = load i8*, i8** %139, align 8, !dbg !3920, !tbaa !664
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3920
  %142 = load i8*, i8** %141, align 8, !dbg !3920, !tbaa !664
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3920
  %144 = load i8*, i8** %143, align 8, !dbg !3920, !tbaa !664
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3921
  br label %146, !dbg !3922

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3923
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3924 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3928, metadata !656), !dbg !3934
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3929, metadata !656), !dbg !3935
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3930, metadata !656), !dbg !3936
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3931, metadata !656), !dbg !3937
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3932, metadata !656), !dbg !3938
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3933, metadata !656), !dbg !3939
  br label %6, !dbg !3940

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3933, metadata !656), !dbg !3939
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3942
  %9 = load i8*, i8** %8, align 8, !dbg !3942, !tbaa !664
  %10 = icmp eq i8* %9, null, !dbg !3945
  %11 = add i64 %7, 1, !dbg !3947
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3933, metadata !656), !dbg !3939
  br i1 %10, label %12, label %6, !dbg !3945, !llvm.loop !3949

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3952
  ret void, !dbg !3953
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3954 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3965, metadata !656), !dbg !3973
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3966, metadata !656), !dbg !3974
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3967, metadata !656), !dbg !3975
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3968, metadata !656), !dbg !3976
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3969, metadata !656), !dbg !3977
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3978
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !3978
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3971, metadata !656), !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3970, metadata !656), !dbg !3980
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3981
  %12 = icmp ult i32 %11, 41, !dbg !3981
  br i1 %12, label %13, label %18, !dbg !3981

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3985
  %15 = sext i32 %11 to i64, !dbg !3985
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3985
  %17 = add i32 %11, 8, !dbg !3985
  store i32 %17, i32* %8, align 8, !dbg !3985
  br label %21, !dbg !3985

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3987
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3987
  store i8* %20, i8** %10, align 8, !dbg !3987
  br label %21, !dbg !3987

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3981
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3989
  %25 = load i8*, i8** %24, align 8, !dbg !3989
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3991
  store i8* %25, i8** %26, align 16, !dbg !3992, !tbaa !664
  %27 = icmp eq i8* %25, null, !dbg !3993
  br i1 %27, label %30, label %28, !dbg !3994

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %29 = icmp ult i32 %22, 41, !dbg !3981
  br i1 %29, label %35, label %32, !dbg !3981

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3996
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !3997
  ret void, !dbg !3997

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3987
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3987
  store i8* %34, i8** %10, align 8, !dbg !3987
  br label %40, !dbg !3987

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3985
  %37 = sext i32 %22 to i64, !dbg !3985
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3985
  %39 = add i32 %22, 8, !dbg !3985
  store i32 %39, i32* %8, align 8, !dbg !3985
  br label %40, !dbg !3985

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3981
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3989
  %44 = load i8*, i8** %43, align 8, !dbg !3989
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3991
  store i8* %44, i8** %45, align 8, !dbg !3992, !tbaa !664
  %46 = icmp eq i8* %44, null, !dbg !3993
  br i1 %46, label %30, label %47, !dbg !3994

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %48 = icmp ult i32 %41, 41, !dbg !3981
  br i1 %48, label %52, label %49, !dbg !3981

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3987
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3987
  store i8* %51, i8** %10, align 8, !dbg !3987
  br label %57, !dbg !3987

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3985
  %54 = sext i32 %41 to i64, !dbg !3985
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3985
  %56 = add i32 %41, 8, !dbg !3985
  store i32 %56, i32* %8, align 8, !dbg !3985
  br label %57, !dbg !3985

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3981
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3989
  %61 = load i8*, i8** %60, align 8, !dbg !3989
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3991
  store i8* %61, i8** %62, align 16, !dbg !3992, !tbaa !664
  %63 = icmp eq i8* %61, null, !dbg !3993
  br i1 %63, label %30, label %64, !dbg !3994

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %65 = icmp ult i32 %58, 41, !dbg !3981
  br i1 %65, label %69, label %66, !dbg !3981

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3987
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3987
  store i8* %68, i8** %10, align 8, !dbg !3987
  br label %74, !dbg !3987

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3985
  %71 = sext i32 %58 to i64, !dbg !3985
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3985
  %73 = add i32 %58, 8, !dbg !3985
  store i32 %73, i32* %8, align 8, !dbg !3985
  br label %74, !dbg !3985

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3981
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3989
  %78 = load i8*, i8** %77, align 8, !dbg !3989
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3991
  store i8* %78, i8** %79, align 8, !dbg !3992, !tbaa !664
  %80 = icmp eq i8* %78, null, !dbg !3993
  br i1 %80, label %30, label %81, !dbg !3994

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %82 = icmp ult i32 %75, 41, !dbg !3981
  br i1 %82, label %86, label %83, !dbg !3981

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3987
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3987
  store i8* %85, i8** %10, align 8, !dbg !3987
  br label %91, !dbg !3987

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3985
  %88 = sext i32 %75 to i64, !dbg !3985
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3985
  %90 = add i32 %75, 8, !dbg !3985
  store i32 %90, i32* %8, align 8, !dbg !3985
  br label %91, !dbg !3985

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3981
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3989
  %95 = load i8*, i8** %94, align 8, !dbg !3989
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3991
  store i8* %95, i8** %96, align 16, !dbg !3992, !tbaa !664
  %97 = icmp eq i8* %95, null, !dbg !3993
  br i1 %97, label %30, label %98, !dbg !3994

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %99 = icmp ult i32 %92, 41, !dbg !3981
  br i1 %99, label %103, label %100, !dbg !3981

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3987
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3987
  store i8* %102, i8** %10, align 8, !dbg !3987
  br label %108, !dbg !3987

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3985
  %105 = sext i32 %92 to i64, !dbg !3985
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3985
  %107 = add i32 %92, 8, !dbg !3985
  store i32 %107, i32* %8, align 8, !dbg !3985
  br label %108, !dbg !3985

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3989
  %111 = load i8*, i8** %110, align 8, !dbg !3989
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3991
  store i8* %111, i8** %112, align 8, !dbg !3992, !tbaa !664
  %113 = icmp eq i8* %111, null, !dbg !3993
  br i1 %113, label %30, label %114, !dbg !3994

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %115 = load i8*, i8** %10, align 8, !dbg !3987
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3987
  store i8* %116, i8** %10, align 8, !dbg !3987
  %117 = bitcast i8* %115 to i8**, !dbg !3989
  %118 = load i8*, i8** %117, align 8, !dbg !3989
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3991
  store i8* %118, i8** %119, align 16, !dbg !3992, !tbaa !664
  %120 = icmp eq i8* %118, null, !dbg !3993
  br i1 %120, label %30, label %121, !dbg !3994

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %122 = load i8*, i8** %10, align 8, !dbg !3987
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3987
  store i8* %123, i8** %10, align 8, !dbg !3987
  %124 = bitcast i8* %122 to i8**, !dbg !3989
  %125 = load i8*, i8** %124, align 8, !dbg !3989
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3991
  store i8* %125, i8** %126, align 8, !dbg !3992, !tbaa !664
  %127 = icmp eq i8* %125, null, !dbg !3993
  br i1 %127, label %30, label %128, !dbg !3994

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %129 = load i8*, i8** %10, align 8, !dbg !3987
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3987
  store i8* %130, i8** %10, align 8, !dbg !3987
  %131 = bitcast i8* %129 to i8**, !dbg !3989
  %132 = load i8*, i8** %131, align 8, !dbg !3989
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3991
  store i8* %132, i8** %133, align 16, !dbg !3992, !tbaa !664
  %134 = icmp eq i8* %132, null, !dbg !3993
  br i1 %134, label %30, label %135, !dbg !3994

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %136 = load i8*, i8** %10, align 8, !dbg !3987
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3987
  store i8* %137, i8** %10, align 8, !dbg !3987
  %138 = bitcast i8* %136 to i8**, !dbg !3989
  %139 = load i8*, i8** %138, align 8, !dbg !3989
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3991
  store i8* %139, i8** %140, align 8, !dbg !3992, !tbaa !664
  %141 = icmp eq i8* %139, null, !dbg !3993
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3970, metadata !656), !dbg !3980
  %142 = select i1 %141, i64 9, i64 10, !dbg !3994
  br label %30, !dbg !3994
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3998 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4002, metadata !656), !dbg !4012
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4003, metadata !656), !dbg !4013
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4004, metadata !656), !dbg !4014
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4005, metadata !656), !dbg !4015
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4016
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !4016
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4006, metadata !656), !dbg !4017
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4018
  call void @llvm.va_start(i8* nonnull %6), !dbg !4018
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4019
  call void @llvm.va_end(i8* nonnull %6), !dbg !4020
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !4021
  ret void, !dbg !4021
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4022 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #11, !dbg !4023
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.104, i64 0, i64 0)) #11, !dbg !4024
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #11, !dbg !4026
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.107, i64 0, i64 0)) #11, !dbg !4027
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.108, i64 0, i64 0), i32 5) #11, !dbg !4028
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4028, !tbaa !664
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4029
  ret void, !dbg !4030
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4031 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4035, metadata !656), !dbg !4037
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4036, metadata !656), !dbg !4038
  %3 = udiv i64 9223372036854775807, %1, !dbg !4039
  %4 = icmp ult i64 %3, %0, !dbg !4039
  br i1 %4, label %5, label %6, !dbg !4041

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4042
  unreachable, !dbg !4042

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4043
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4044, metadata !656) #11, !dbg !4051
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4053
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4050, metadata !656) #11, !dbg !4054
  %9 = icmp eq i8* %8, null, !dbg !4055
  %10 = icmp ne i64 %7, 0, !dbg !4057
  %11 = and i1 %10, %9, !dbg !4059
  br i1 %11, label %12, label %13, !dbg !4059

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4060
  unreachable, !dbg !4060

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4061
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4045 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4044, metadata !656), !dbg !4062
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4063
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4050, metadata !656), !dbg !4064
  %3 = icmp eq i8* %2, null, !dbg !4065
  %4 = icmp ne i64 %0, 0, !dbg !4066
  %5 = and i1 %4, %3, !dbg !4067
  br i1 %5, label %6, label %7, !dbg !4067

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4068
  unreachable, !dbg !4068

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4069
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4070 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4074, metadata !656), !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4075, metadata !656), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4076, metadata !656), !dbg !4079
  %4 = udiv i64 9223372036854775807, %2, !dbg !4080
  %5 = icmp ult i64 %4, %1, !dbg !4080
  br i1 %5, label %6, label %7, !dbg !4082

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4083
  unreachable, !dbg !4083

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4084
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4085, metadata !656) #11, !dbg !4091
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4090, metadata !656) #11, !dbg !4093
  %9 = icmp eq i64 %8, 0, !dbg !4094
  %10 = icmp ne i8* %0, null, !dbg !4096
  %11 = and i1 %10, %9, !dbg !4098
  br i1 %11, label %12, label %13, !dbg !4098

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4099
  br label %19, !dbg !4101

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4102
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4085, metadata !656) #11, !dbg !4091
  %15 = icmp eq i8* %14, null, !dbg !4103
  %16 = icmp ne i64 %8, 0, !dbg !4105
  %17 = and i1 %16, %15, !dbg !4107
  br i1 %17, label %18, label %19, !dbg !4107

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4108
  unreachable, !dbg !4108

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4109
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4086 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4085, metadata !656), !dbg !4110
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4090, metadata !656), !dbg !4111
  %3 = icmp eq i64 %1, 0, !dbg !4112
  %4 = icmp ne i8* %0, null, !dbg !4113
  %5 = and i1 %4, %3, !dbg !4114
  br i1 %5, label %6, label %7, !dbg !4114

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4115
  br label %13, !dbg !4116

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4117
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4085, metadata !656), !dbg !4110
  %9 = icmp eq i8* %8, null, !dbg !4118
  %10 = icmp ne i64 %1, 0, !dbg !4119
  %11 = and i1 %10, %9, !dbg !4120
  br i1 %11, label %12, label %13, !dbg !4120

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4121
  unreachable, !dbg !4121

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4122
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !614 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !619, metadata !656), !dbg !4123
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !620, metadata !656), !dbg !4124
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !621, metadata !656), !dbg !4125
  %4 = load i64, i64* %1, align 8, !dbg !4126, !tbaa !1721
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !622, metadata !656), !dbg !4127
  %5 = icmp eq i8* %0, null, !dbg !4128
  br i1 %5, label %6, label %13, !dbg !4130

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4131
  br i1 %7, label %8, label %17, !dbg !4134

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4135
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !622, metadata !656), !dbg !4127
  %10 = icmp ugt i64 %2, 128, !dbg !4137
  %11 = zext i1 %10 to i64, !dbg !4137
  %12 = add nuw nsw i64 %9, %11, !dbg !4138
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !622, metadata !656), !dbg !4127
  br label %17, !dbg !4139

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4140
  %15 = icmp ugt i64 %14, %4, !dbg !4143
  br i1 %15, label %20, label %16, !dbg !4144

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4145
  unreachable, !dbg !4145

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !622, metadata !656), !dbg !4127
  store i64 %18, i64* %1, align 8, !dbg !4146, !tbaa !1721
  %19 = mul i64 %18, %2, !dbg !4147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4085, metadata !656) #11, !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4090, metadata !656) #11, !dbg !4150
  br label %27, !dbg !4151

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4152
  %22 = add i64 %4, 1, !dbg !4153
  %23 = add i64 %22, %21, !dbg !4154
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !622, metadata !656), !dbg !4127
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !622, metadata !656), !dbg !4127
  store i64 %23, i64* %1, align 8, !dbg !4146, !tbaa !1721
  %24 = mul i64 %23, %2, !dbg !4147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4085, metadata !656) #11, !dbg !4148
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4090, metadata !656) #11, !dbg !4150
  %25 = icmp eq i64 %24, 0, !dbg !4155
  br i1 %25, label %26, label %27, !dbg !4151

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4156
  br label %34, !dbg !4157

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4158
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4085, metadata !656) #11, !dbg !4148
  %30 = icmp eq i8* %29, null, !dbg !4159
  %31 = icmp ne i64 %28, 0, !dbg !4160
  %32 = and i1 %31, %30, !dbg !4161
  br i1 %32, label %33, label %34, !dbg !4161

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4162
  unreachable, !dbg !4162

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4163
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4164 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4166, metadata !656), !dbg !4167
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4044, metadata !656) #11, !dbg !4168
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4170
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4050, metadata !656) #11, !dbg !4171
  %3 = icmp eq i8* %2, null, !dbg !4172
  %4 = icmp ne i64 %0, 0, !dbg !4173
  %5 = and i1 %4, %3, !dbg !4174
  br i1 %5, label %6, label %7, !dbg !4174

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4175
  unreachable, !dbg !4175

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4176
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4177 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4181, metadata !656), !dbg !4183
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4182, metadata !656), !dbg !4184
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !619, metadata !656) #11, !dbg !4185
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !620, metadata !656) #11, !dbg !4187
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !621, metadata !656) #11, !dbg !4188
  %3 = load i64, i64* %1, align 8, !dbg !4189, !tbaa !1721
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !622, metadata !656) #11, !dbg !4190
  %4 = icmp eq i8* %0, null, !dbg !4191
  br i1 %4, label %5, label %8, !dbg !4192

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !622, metadata !656) #11, !dbg !4190
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !622, metadata !656) #11, !dbg !4190
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !622, metadata !656) #11, !dbg !4190
  store i64 %7, i64* %1, align 8, !dbg !4195, !tbaa !1721
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4085, metadata !656) #11, !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4090, metadata !656) #11, !dbg !4198
  br label %17, !dbg !4199

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4200
  br i1 %9, label %11, label %10, !dbg !4201

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4202
  unreachable, !dbg !4202

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4203
  %13 = add i64 %3, 1, !dbg !4204
  %14 = add i64 %13, %12, !dbg !4205
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !622, metadata !656) #11, !dbg !4190
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !622, metadata !656) #11, !dbg !4190
  store i64 %14, i64* %1, align 8, !dbg !4195, !tbaa !1721
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4085, metadata !656) #11, !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4090, metadata !656) #11, !dbg !4198
  %15 = icmp eq i64 %14, 0, !dbg !4206
  br i1 %15, label %16, label %17, !dbg !4199

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4207
  br label %24, !dbg !4208

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4209
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4085, metadata !656) #11, !dbg !4196
  %20 = icmp eq i8* %19, null, !dbg !4210
  %21 = icmp ne i64 %18, 0, !dbg !4211
  %22 = and i1 %21, %20, !dbg !4212
  br i1 %22, label %23, label %24, !dbg !4212

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4213
  unreachable, !dbg !4213

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4214
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4215 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4217, metadata !656), !dbg !4218
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4044, metadata !656) #11, !dbg !4219
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4221
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4050, metadata !656) #11, !dbg !4222
  %3 = icmp eq i8* %2, null, !dbg !4223
  %4 = icmp ne i64 %0, 0, !dbg !4224
  %5 = and i1 %4, %3, !dbg !4225
  br i1 %5, label %6, label %7, !dbg !4225

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4226
  unreachable, !dbg !4226

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4227
  ret i8* %2, !dbg !4228
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4229 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4231, metadata !656), !dbg !4234
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4232, metadata !656), !dbg !4235
  %3 = udiv i64 9223372036854775807, %1, !dbg !4236
  %4 = icmp ult i64 %3, %0, !dbg !4236
  br i1 %4, label %8, label %5, !dbg !4238

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4239
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4233, metadata !656), !dbg !4241
  %7 = icmp eq i8* %6, null, !dbg !4242
  br i1 %7, label %8, label %9, !dbg !4243

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4245
  unreachable, !dbg !4245

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4246
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4247 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4251, metadata !656), !dbg !4253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4252, metadata !656), !dbg !4254
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4044, metadata !656) #11, !dbg !4255
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4257
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4050, metadata !656) #11, !dbg !4258
  %4 = icmp eq i8* %3, null, !dbg !4259
  %5 = icmp ne i64 %1, 0, !dbg !4260
  %6 = and i1 %5, %4, !dbg !4261
  br i1 %6, label %7, label %8, !dbg !4261

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4262
  unreachable, !dbg !4262

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4263
  ret i8* %3, !dbg !4264
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4265 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4267, metadata !656), !dbg !4268
  %2 = tail call i64 @strlen(i8* %0) #8, !dbg !4269
  %3 = add i64 %2, 1, !dbg !4270
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4251, metadata !656) #11, !dbg !4271
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4252, metadata !656) #11, !dbg !4274
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4044, metadata !656) #11, !dbg !4275
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4277
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4050, metadata !656) #11, !dbg !4278
  %5 = icmp eq i8* %4, null, !dbg !4279
  %6 = icmp ne i64 %3, 0, !dbg !4280
  %7 = and i1 %6, %5, !dbg !4281
  br i1 %7, label %8, label %9, !dbg !4281

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4282
  unreachable, !dbg !4282

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4283
  ret i8* %4, !dbg !4284
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4285 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4287, !tbaa !770
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.121, i64 0, i64 0), i32 5) #11, !dbg !4288
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* %2) #11, !dbg !4289
  tail call void @abort() #14, !dbg !4291
  unreachable, !dbg !4291
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @xstrtold(i8*, i8**, x86_fp80* nocapture, x86_fp80 (i8*, i8**)* nocapture) local_unnamed_addr #6 !dbg !4292 {
  %5 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4300, metadata !656), !dbg !4307
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4301, metadata !656), !dbg !4308
  tail call void @llvm.dbg.value(metadata x86_fp80* %2, i64 0, metadata !4302, metadata !656), !dbg !4309
  tail call void @llvm.dbg.value(metadata x86_fp80 (i8*, i8**)* %3, i64 0, metadata !4303, metadata !656), !dbg !4310
  %6 = bitcast i8** %5 to i8*, !dbg !4311
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #11, !dbg !4311
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4306, metadata !656), !dbg !4312
  %7 = tail call i32* @__errno_location() #1, !dbg !4313
  store i32 0, i32* %7, align 4, !dbg !4314, !tbaa !770
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !4305, metadata !1095), !dbg !4315
  %8 = call x86_fp80 %3(i8* %0, i8** nonnull %5) #11, !dbg !4316
  call void @llvm.dbg.value(metadata x86_fp80 %8, i64 0, metadata !4304, metadata !656), !dbg !4317
  %9 = load i8*, i8** %5, align 8, !dbg !4318, !tbaa !664
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4305, metadata !656), !dbg !4315
  %10 = icmp eq i8* %9, %0, !dbg !4320
  %11 = ptrtoint i8* %9 to i64, !dbg !4321
  br i1 %10, label %22, label %12, !dbg !4321

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !4322
  br i1 %13, label %14, label %17, !dbg !4324

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !4325, !tbaa !777
  %16 = icmp eq i8 %15, 0, !dbg !4327
  br i1 %16, label %17, label %27, !dbg !4328

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une x86_fp80 %8, 0xK00000000000000000000, !dbg !4330
  br i1 %18, label %19, label %22, !dbg !4333

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !4334, !tbaa !770
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4306, metadata !656), !dbg !4312
  %21 = icmp ne i32 %20, 34, !dbg !4336
  br label %22, !dbg !4336

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null, !dbg !4338
  br i1 %24, label %27, label %25, !dbg !4340

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8** %1 to i64*, !dbg !4341
  store i64 %11, i64* %26, align 8, !dbg !4341, !tbaa !664
  br label %27, !dbg !4342

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store x86_fp80 %8, x86_fp80* %2, align 16, !dbg !4343, !tbaa !1720
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #11, !dbg !4344
  ret i1 %28, !dbg !4345
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4346 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4349, metadata !656), !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4350, metadata !656), !dbg !4356
  %3 = icmp eq i64 %0, 0, !dbg !4357
  %4 = icmp eq i64 %1, 0, !dbg !4358
  %5 = or i1 %3, %4, !dbg !4360
  br i1 %5, label %12, label %6, !dbg !4360

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4361
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4352, metadata !656), !dbg !4362
  %8 = udiv i64 %7, %1, !dbg !4363
  %9 = icmp eq i64 %8, %0, !dbg !4365
  br i1 %9, label %12, label %10, !dbg !4366

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4367
  store i32 12, i32* %11, align 4, !dbg !4369, !tbaa !770
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4349, metadata !656), !dbg !4355
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4350, metadata !656), !dbg !4356
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4370
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4351, metadata !656), !dbg !4371
  br label %16, !dbg !4372

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4373
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4374 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4391, metadata !656), !dbg !4400
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4392, metadata !656), !dbg !4401
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4393, metadata !656), !dbg !4402
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4394, metadata !656), !dbg !4403
  %6 = bitcast i32* %5 to i8*, !dbg !4404
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !4404
  %7 = icmp eq i32* %0, null, !dbg !4405
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4391, metadata !656), !dbg !4400
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4407
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4391, metadata !656), !dbg !4400
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4408
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4395, metadata !656), !dbg !4409
  %10 = icmp ugt i64 %9, -3, !dbg !4410
  %11 = icmp ne i64 %2, 0, !dbg !4411
  %12 = and i1 %11, %10, !dbg !4413
  br i1 %12, label %13, label %18, !dbg !4413

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4414
  br i1 %14, label %18, label %15, !dbg !4416

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4418, !tbaa !777
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4397, metadata !656), !dbg !4419
  %17 = zext i8 %16 to i32, !dbg !4420
  store i32 %17, i32* %8, align 4, !dbg !4421, !tbaa !770
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !4422
  ret i64 %19, !dbg !4422
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4423 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4468, metadata !656), !dbg !4473
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4474
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4475, metadata !656), !dbg !4479
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4481
  %4 = load i32, i32* %3, align 8, !dbg !4481, !tbaa !4482
  %5 = and i32 %4, 32, !dbg !4481
  %6 = icmp eq i32 %5, 0, !dbg !4484
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4485
  %8 = icmp ne i32 %7, 0, !dbg !4486
  br i1 %6, label %9, label %19, !dbg !4487

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4489
  %11 = icmp ne i64 %2, 0, !dbg !4489
  %12 = or i1 %11, %10, !dbg !4489
  %13 = sext i1 %8 to i32, !dbg !4489
  br i1 %12, label %22, label %14, !dbg !4489

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4491
  %16 = load i32, i32* %15, align 4, !dbg !4491, !tbaa !770
  %17 = icmp ne i32 %16, 9, !dbg !4493
  %18 = sext i1 %17 to i32, !dbg !4493
  br label %22, !dbg !4493

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4495

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4497
  store i32 0, i32* %21, align 4, !dbg !4499, !tbaa !770
  br label %22, !dbg !4497

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4500
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4501 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4506, metadata !656), !dbg !4526
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4507, metadata !656), !dbg !4527
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4528
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4508, metadata !656), !dbg !4529
  %3 = icmp eq i8* %2, null, !dbg !4530
  br i1 %3, label %15, label %4, !dbg !4531

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4516, metadata !656), !dbg !4532
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4517, metadata !656), !dbg !4533
  %5 = load i8, i8* %2, align 1, !dbg !4534, !tbaa !777
  %6 = icmp eq i8 %5, 67, !dbg !4536
  br i1 %6, label %7, label %11, !dbg !4539

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4541
  %9 = load i8, i8* %8, align 1, !dbg !4541, !tbaa !777
  %10 = icmp eq i8 %9, 0, !dbg !4544
  br i1 %10, label %14, label %11, !dbg !4546

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4522, metadata !656), !dbg !4548
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0)) #11, !dbg !4549
  %13 = icmp eq i32 %12, 0, !dbg !4551
  br i1 %13, label %14, label %15, !dbg !4553

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4507, metadata !656), !dbg !4527
  br label %15, !dbg !4555

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4556
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4557 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4569, metadata !656), !dbg !4643
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4636, metadata !656), !dbg !4645
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4646
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4561, metadata !656), !dbg !4647
  %4 = icmp eq i8* %3, null, !dbg !4648
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), i8* %3, !dbg !4650
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4561, metadata !656), !dbg !4647
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4651, !tbaa !664
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4583, metadata !656) #11, !dbg !4652
  %7 = icmp eq i8* %6, null, !dbg !4653
  br i1 %7, label %8, label %127, !dbg !4654

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.137, i64 0, i64 0)) #11, !dbg !4655
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4584, metadata !656) #11, !dbg !4656
  %10 = icmp eq i8* %9, null, !dbg !4657
  br i1 %10, label %14, label %11, !dbg !4659

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4660, !tbaa !777
  %13 = icmp eq i8 %12, 0, !dbg !4662
  br i1 %13, label %14, label %15, !dbg !4663

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4665

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.138, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4584, metadata !656) #11, !dbg !4656
  %17 = tail call i64 @strlen(i8* nonnull %16) #8, !dbg !4666
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4587, metadata !656) #11, !dbg !4667
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4589, metadata !656) #11, !dbg !4668
  %18 = icmp eq i64 %17, 0, !dbg !4669
  br i1 %18, label %24, label %19, !dbg !4670

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4671
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4671
  %22 = load i8, i8* %21, align 1, !dbg !4671, !tbaa !777
  %23 = icmp ne i8 %22, 47, !dbg !4673
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4674
  %27 = add i64 %17, 14, !dbg !4675
  %28 = add i64 %27, %26, !dbg !4676
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4677
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4586, metadata !656) #11, !dbg !4678
  %30 = icmp eq i8* %29, null, !dbg !4679
  br i1 %30, label %125, label %31, !dbg !4679

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4680
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4683

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4684, !tbaa !777
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4686
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4687
  br label %37, !dbg !4688

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4686
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4687
  br label %37, !dbg !4688

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4689
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4591, metadata !656) #11, !dbg !4690
  %39 = icmp slt i32 %38, 0, !dbg !4691
  br i1 %39, label %123, label %40, !dbg !4692

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.140, i64 0, i64 0)) #11, !dbg !4693
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4592, metadata !656) #11, !dbg !4694
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4695
  br i1 %42, label %48, label %43, !dbg !4696

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4697

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !4698
  br label %123, !dbg !4700

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4633, metadata !656) #11, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4634, metadata !656) #11, !dbg !4701
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !4702
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !4703
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4704, metadata !656) #11, !dbg !4709
  %53 = load i8*, i8** %46, align 8, !dbg !4711, !tbaa !4712
  %54 = load i8*, i8** %47, align 8, !dbg !4711, !tbaa !4713
  %55 = icmp ult i8* %53, %54, !dbg !4711
  br i1 %55, label %58, label %56, !dbg !4711, !prof !4714

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4715
  br label %62, !dbg !4715

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4717
  store i8* %59, i8** %46, align 8, !dbg !4717, !tbaa !4712
  %60 = load i8, i8* %53, align 1, !dbg !4717, !tbaa !777
  %61 = zext i8 %60 to i32, !dbg !4717
  br label %62, !dbg !4717

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4719
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4635, metadata !656) #11, !dbg !4721
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4722

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4723

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4704, metadata !656) #11, !dbg !4723
  %66 = load i8*, i8** %46, align 8, !dbg !4727, !tbaa !4712
  %67 = load i8*, i8** %47, align 8, !dbg !4727, !tbaa !4713
  %68 = icmp ult i8* %66, %67, !dbg !4727
  br i1 %68, label %71, label %69, !dbg !4727, !prof !4714

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4728
  br label %75, !dbg !4728

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4729
  store i8* %72, i8** %46, align 8, !dbg !4729, !tbaa !4712
  %73 = load i8, i8* %66, align 1, !dbg !4729, !tbaa !777
  %74 = zext i8 %73 to i32, !dbg !4729
  br label %75, !dbg !4729

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4730
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4635, metadata !656) #11, !dbg !4721
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4731, !llvm.loop !4733

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !4736
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.141, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !4737
  %80 = icmp slt i32 %79, 2, !dbg !4739
  br i1 %80, label %115, label %81, !dbg !4740

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #8, !dbg !4741
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4640, metadata !656) #11, !dbg !4742
  %83 = call i64 @strlen(i8* nonnull %45) #8, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4641, metadata !656) #11, !dbg !4744
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4642, metadata !656) #11, !dbg !4745
  %84 = icmp eq i64 %51, 0, !dbg !4746
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4748

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4634, metadata !656) #11, !dbg !4701
  %89 = add i64 %86, 2, !dbg !4749
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !4751
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4633, metadata !656) #11, !dbg !4697
  br label %95, !dbg !4752

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4634, metadata !656) #11, !dbg !4701
  %93 = add i64 %92, 1, !dbg !4755
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !4756
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4633, metadata !656) #11, !dbg !4697
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4633, metadata !656) #11, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4634, metadata !656) #11, !dbg !4701
  %98 = icmp eq i8* %97, null, !dbg !4757
  br i1 %98, label %99, label %100, !dbg !4759

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4634, metadata !656) #11, !dbg !4701
  call void @free(i8* %52) #11, !dbg !4760
  br label %116, !dbg !4762

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4763
  %102 = xor i64 %83, -1, !dbg !4764
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4764
  %104 = xor i64 %82, -1, !dbg !4765
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4765
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4766, metadata !656) #11, !dbg !4770
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4769, metadata !656) #11, !dbg !4770
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !4772
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !4773
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4766, metadata !656) #11, !dbg !4774
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4769, metadata !656) #11, !dbg !4774
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !4776
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !4777
  br label %111, !dbg !4778

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4697

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4633, metadata !656) #11, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4634, metadata !656) #11, !dbg !4701
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4778
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4778
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4697

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4697

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4633, metadata !656) #11, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4634, metadata !656) #11, !dbg !4701
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4778
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4778
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4779
  %120 = icmp eq i64 %117, 0, !dbg !4780
  br i1 %120, label %123, label %121, !dbg !4782

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4783
  store i8 0, i8* %122, align 1, !dbg !4785, !tbaa !777
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4583, metadata !656) #11, !dbg !4652
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4583, metadata !656) #11, !dbg !4652
  call void @free(i8* %29) #11, !dbg !4786
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4583, metadata !656) #11, !dbg !4652
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4787, !tbaa !664
  br label %127, !dbg !4788

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4562, metadata !656), !dbg !4789
  %129 = load i8, i8* %128, align 1, !dbg !4790, !tbaa !777
  %130 = icmp eq i8 %129, 0, !dbg !4791
  br i1 %130, label %157, label %131, !dbg !4792

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4794

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !4794
  %136 = icmp eq i32 %135, 0, !dbg !4795
  br i1 %136, label %143, label %137, !dbg !4796

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4797
  br i1 %138, label %139, label %147, !dbg !4799

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4800
  %141 = load i8, i8* %140, align 1, !dbg !4800, !tbaa !777
  %142 = icmp eq i8 %141, 0, !dbg !4802
  br i1 %142, label %143, label %147, !dbg !4803

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #8, !dbg !4805
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4807
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4808
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4561, metadata !656), !dbg !4647
  br label %157, !dbg !4809

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #8, !dbg !4810
  %149 = add i64 %148, 1, !dbg !4811
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4812
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4562, metadata !656), !dbg !4789
  %151 = call i64 @strlen(i8* %150) #8, !dbg !4813
  %152 = add i64 %151, 1, !dbg !4814
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4815
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4562, metadata !656), !dbg !4789
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4562, metadata !656), !dbg !4789
  %154 = load i8, i8* %153, align 1, !dbg !4790, !tbaa !777
  %155 = icmp eq i8 %154, 0, !dbg !4791
  br i1 %155, label %156, label %132, !dbg !4792, !llvm.loop !4816

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4647

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4561, metadata !656), !dbg !4647
  %159 = load i8, i8* %158, align 1, !dbg !4819, !tbaa !777
  %160 = icmp eq i8 %159, 0, !dbg !4821
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.142, i64 0, i64 0), i8* %158, !dbg !4822
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4561, metadata !656), !dbg !4647
  ret i8* %161, !dbg !4823
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

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4824 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4869, metadata !656), !dbg !4873
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4870, metadata !656), !dbg !4874
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4872, metadata !656), !dbg !4875
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4876
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4871, metadata !656), !dbg !4877
  %3 = icmp slt i32 %2, 0, !dbg !4878
  br i1 %3, label %4, label %6, !dbg !4880

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4881
  br label %24, !dbg !4882

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4883
  %8 = icmp eq i32 %7, 0, !dbg !4883
  br i1 %8, label %13, label %9, !dbg !4885

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4886
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4888
  %12 = icmp eq i64 %11, -1, !dbg !4890
  br i1 %12, label %16, label %13, !dbg !4891

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4892
  %15 = icmp eq i32 %14, 0, !dbg !4892
  br i1 %15, label %16, label %18, !dbg !4893

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4870, metadata !656), !dbg !4874
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4895
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4872, metadata !656), !dbg !4875
  br label %24, !dbg !4896

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4897
  %20 = load i32, i32* %19, align 4, !dbg !4897, !tbaa !770
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4870, metadata !656), !dbg !4874
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4870, metadata !656), !dbg !4874
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4895
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4872, metadata !656), !dbg !4875
  %22 = icmp eq i32 %20, 0, !dbg !4898
  br i1 %22, label %24, label %23, !dbg !4896

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4900, !tbaa !770
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4872, metadata !656), !dbg !4875
  br label %24, !dbg !4902

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4903
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4904 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4949, metadata !656), !dbg !4950
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4951
  br i1 %2, label %6, label %3, !dbg !4953

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4954
  %5 = icmp eq i32 %4, 0, !dbg !4954
  br i1 %5, label %6, label %8, !dbg !4956

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4958
  br label %17, !dbg !4959

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4960, metadata !656) #11, !dbg !4965
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4967
  %10 = load i32, i32* %9, align 8, !dbg !4967, !tbaa !4482
  %11 = and i32 %10, 256, !dbg !4969
  %12 = icmp eq i32 %11, 0, !dbg !4969
  br i1 %12, label %15, label %13, !dbg !4970

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4971
  br label %15, !dbg !4971

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4972
  br label %17, !dbg !4973

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4974
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4975 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5021, metadata !656), !dbg !5027
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5022, metadata !656), !dbg !5028
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5023, metadata !656), !dbg !5029
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5030
  %5 = load i8*, i8** %4, align 8, !dbg !5030, !tbaa !4713
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5031
  %7 = load i8*, i8** %6, align 8, !dbg !5031, !tbaa !4712
  %8 = icmp eq i8* %5, %7, !dbg !5032
  br i1 %8, label %9, label %28, !dbg !5033

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5034
  %11 = load i8*, i8** %10, align 8, !dbg !5034, !tbaa !5036
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5037
  %13 = load i8*, i8** %12, align 8, !dbg !5037, !tbaa !5038
  %14 = icmp eq i8* %11, %13, !dbg !5039
  br i1 %14, label %15, label %28, !dbg !5040

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5041
  %17 = load i8*, i8** %16, align 8, !dbg !5041, !tbaa !5042
  %18 = icmp eq i8* %17, null, !dbg !5043
  br i1 %18, label %19, label %28, !dbg !5044

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5046
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5047
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5024, metadata !656), !dbg !5049
  %22 = icmp eq i64 %21, -1, !dbg !5050
  br i1 %22, label %30, label %23, !dbg !5052

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5053
  %25 = load i32, i32* %24, align 8, !dbg !5054, !tbaa !4482
  %26 = and i32 %25, -17, !dbg !5054
  store i32 %26, i32* %24, align 8, !dbg !5054, !tbaa !4482
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5055
  store i64 %21, i64* %27, align 8, !dbg !5056, !tbaa !5057
  br label %30, !dbg !5058

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5059
  br label %30, !dbg !5060

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5061
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
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !122, !128, !157, !165, !172, !179, !601, !246, !609, !626, !628, !630, !632, !635, !637, !255, !640, !642, !644}
!llvm.ident = !{!646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646, !646}
!llvm.module.flags = !{!647, !648, !649, !650}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "separator", scope: !2, file: !3, line: 49, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !37)
!3 = !DIFile(filename: "src/seq.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, size: 32, elements: !7)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!8 = !DIEnumerator(name: "_ISupper", value: 256)
!9 = !DIEnumerator(name: "_ISlower", value: 512)
!10 = !DIEnumerator(name: "_ISalpha", value: 1024)
!11 = !DIEnumerator(name: "_ISdigit", value: 2048)
!12 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!13 = !DIEnumerator(name: "_ISspace", value: 8192)
!14 = !DIEnumerator(name: "_ISprint", value: 16384)
!15 = !DIEnumerator(name: "_ISgraph", value: 32768)
!16 = !DIEnumerator(name: "_ISblank", value: 1)
!17 = !DIEnumerator(name: "_IScntrl", value: 2)
!18 = !DIEnumerator(name: "_ISpunct", value: 4)
!19 = !DIEnumerator(name: "_ISalnum", value: 8)
!20 = !{!21, !22, !24, !25, !28, !30, !33, !35, !36}
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 62, baseType: !27)
!26 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !{!38, !0, !41, !71, !85, !90}
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "equal_width", scope: !2, file: !3, line: 46, type: !40, isLocal: true, isDefinition: true)
!40 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIGlobalVariableExpression(var: !42)
!42 = distinct !DIGlobalVariable(name: "infomap", scope: !43, file: !44, line: 632, type: !68, isLocal: true, isDefinition: true)
!43 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !44, file: !44, line: 630, type: !45, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !47)
!44 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!45 = !DISubroutineType(types: !46)
!46 = !{null, !33}
!47 = !{!48, !49, !50, !57, !59, !60, !61, !64, !65, !67}
!48 = !DILocalVariable(name: "program", arg: 1, scope: !43, file: !44, line: 630, type: !33)
!49 = !DILocalVariable(name: "node", scope: !43, file: !44, line: 642, type: !33)
!50 = !DILocalVariable(name: "map_prog", scope: !43, file: !44, line: 643, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !43, file: !44, line: 632, size: 128, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !53, file: !44, line: 632, baseType: !33, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !53, file: !44, line: 632, baseType: !33, size: 64, offset: 64)
!57 = !DILocalVariable(name: "__s1_len", scope: !58, file: !44, line: 645, type: !25)
!58 = distinct !DILexicalBlock(scope: !43, file: !44, line: 645, column: 33)
!59 = !DILocalVariable(name: "__s2_len", scope: !58, file: !44, line: 645, type: !25)
!60 = !DILocalVariable(name: "lc_messages", scope: !43, file: !44, line: 655, type: !33)
!61 = !DILocalVariable(name: "__s1_len", scope: !62, file: !44, line: 656, type: !25)
!62 = distinct !DILexicalBlock(scope: !63, file: !44, line: 656, column: 22)
!63 = distinct !DILexicalBlock(scope: !43, file: !44, line: 656, column: 7)
!64 = !DILocalVariable(name: "__s2_len", scope: !62, file: !44, line: 656, type: !25)
!65 = !DILocalVariable(name: "__s2", scope: !66, file: !44, line: 656, type: !30)
!66 = distinct !DILexicalBlock(scope: !62, file: !44, line: 656, column: 22)
!67 = !DILocalVariable(name: "__result", scope: !66, file: !44, line: 656, type: !35)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 896, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 7)
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 55, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1536, elements: !83)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !76, line: 104, size: 256, elements: !77)
!76 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !{!78, !79, !80, !82}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !76, line: 106, baseType: !33, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !75, file: !76, line: 109, baseType: !35, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !75, file: !76, line: 110, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !76, line: 111, baseType: !35, size: 32, offset: 192)
!83 = !{!84}
!84 = !DISubrange(count: 6)
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "terminator", scope: !2, file: !3, line: 53, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 2)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "format_buf", scope: !92, file: !3, line: 362, type: !117, isLocal: true, isDefinition: true)
!92 = distinct !DISubprogram(name: "get_default_format", scope: !3, file: !3, line: 360, type: !93, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !102)
!93 = !DISubroutineType(types: !94)
!94 = !{!33, !95, !95, !95}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "operand", file: !3, line: 127, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "operand", file: !3, line: 112, size: 256, elements: !97)
!97 = !{!98, !100, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !96, file: !3, line: 115, baseType: !99, size: 128)
!99 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !96, file: !3, line: 121, baseType: !25, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !96, file: !3, line: 125, baseType: !35, size: 32, offset: 192)
!102 = !{!103, !104, !105, !106, !107, !112, !113, !114}
!103 = !DILocalVariable(name: "first", arg: 1, scope: !92, file: !3, line: 360, type: !95)
!104 = !DILocalVariable(name: "step", arg: 2, scope: !92, file: !3, line: 360, type: !95)
!105 = !DILocalVariable(name: "last", arg: 3, scope: !92, file: !3, line: 360, type: !95)
!106 = !DILocalVariable(name: "prec", scope: !92, file: !3, line: 364, type: !35)
!107 = !DILocalVariable(name: "first_width", scope: !108, file: !3, line: 371, type: !25)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 369, column: 9)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 368, column: 11)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 367, column: 5)
!111 = distinct !DILexicalBlock(scope: !92, file: !3, line: 366, column: 7)
!112 = !DILocalVariable(name: "last_width", scope: !108, file: !3, line: 373, type: !25)
!113 = !DILocalVariable(name: "width", scope: !108, file: !3, line: 380, type: !25)
!114 = !DILocalVariable(name: "w", scope: !115, file: !3, line: 383, type: !35)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 382, column: 13)
!116 = distinct !DILexicalBlock(scope: !108, file: !3, line: 381, column: 15)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 224, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 28)
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "Version", scope: !122, file: !123, line: 2, type: !33, isLocal: false, isDefinition: true)
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, globals: !125)
!123 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !{}
!125 = !{!120}
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !128, file: !153, line: 51, type: !154, isLocal: true, isDefinition: true)
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !130, globals: !152)
!129 = !DIFile(filename: "./lib/c-strtold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = !{!22, !131}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !132, line: 42, baseType: !133)
!132 = !DIFile(filename: "/usr/include/xlocale.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !132, line: 39, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !132, line: 27, size: 1856, elements: !136)
!136 = !{!137, !143, !146, !149, !150}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !135, file: !132, line: 30, baseType: !138, size: 832)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 832, elements: !141)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !132, line: 30, flags: DIFlagFwdDecl)
!141 = !{!142}
!142 = !DISubrange(count: 13)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !135, file: !132, line: 33, baseType: !144, size: 64, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !135, file: !132, line: 34, baseType: !147, size: 64, offset: 896)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !135, file: !132, line: 35, baseType: !147, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !135, file: !132, line: 38, baseType: !151, size: 832, offset: 1024)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 832, elements: !141)
!152 = !{!126}
!153 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!154 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !131)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "file_name", scope: !157, file: !162, line: 36, type: !33, isLocal: true, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, globals: !159)
!158 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!159 = !{!155, !160}
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !157, file: !162, line: 46, type: !40, isLocal: true, isDefinition: true)
!162 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "exit_failure", scope: !165, file: !168, line: 24, type: !169, isLocal: false, isDefinition: true)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, globals: !167)
!166 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !{!163}
!168 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!169 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "program_name", scope: !172, file: !176, line: 33, type: !33, isLocal: false, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !174, globals: !175)
!173 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!174 = !{!24, !22}
!175 = !{!170}
!176 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !179, file: !205, line: 77, type: !240, isLocal: false, isDefinition: true)
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !181, retainedTypes: !201, globals: !202)
!180 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !{!182, !196, !5}
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !183, line: 32, size: 32, elements: !184)
!183 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!185 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!186 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!187 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!188 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!189 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!190 = !DIEnumerator(name: "c_quoting_style", value: 5)
!191 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!192 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!193 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!194 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!195 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !183, line: 242, size: 32, elements: !197)
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!199 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!200 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!201 = !{!35, !36, !25, !22}
!202 = !{!177, !203, !210, !222, !224, !229, !236, !238}
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !179, file: !205, line: 93, type: !206, isLocal: false, isDefinition: true)
!205 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 320, elements: !208)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!208 = !{!209}
!209 = !DISubrange(count: 10)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !179, file: !205, line: 1043, type: !212, isLocal: false, isDefinition: true)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !205, line: 57, size: 448, elements: !213)
!213 = !{!214, !215, !216, !220, !221}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !212, file: !205, line: 60, baseType: !182, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !205, line: 63, baseType: !35, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !212, file: !205, line: 67, baseType: !217, size: 256, offset: 64)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 8)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !212, file: !205, line: 70, baseType: !33, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !212, file: !205, line: 73, baseType: !33, size: 64, offset: 384)
!222 = !DIGlobalVariableExpression(var: !223)
!223 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !179, file: !205, line: 108, type: !212, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225)
!225 = distinct !DIGlobalVariable(name: "slot0", scope: !179, file: !205, line: 834, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 256)
!229 = !DIGlobalVariableExpression(var: !230)
!230 = distinct !DIGlobalVariable(name: "slotvec", scope: !179, file: !205, line: 837, type: !231, isLocal: true, isDefinition: true)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !205, line: 826, size: 128, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !232, file: !205, line: 828, baseType: !25, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !232, file: !205, line: 829, baseType: !22, size: 64, offset: 64)
!236 = !DIGlobalVariableExpression(var: !237)
!237 = distinct !DIGlobalVariable(name: "nslots", scope: !179, file: !205, line: 835, type: !35, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "slotvec0", scope: !179, file: !205, line: 836, type: !232, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 704, elements: !242)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!242 = !{!243}
!243 = !DISubrange(count: 11)
!244 = !DIGlobalVariableExpression(var: !245)
!245 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !246, file: !249, line: 26, type: !250, isLocal: false, isDefinition: true)
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, globals: !248)
!247 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!248 = !{!244}
!249 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 376, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 47)
!253 = !DIGlobalVariableExpression(var: !254)
!254 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !255, file: !599, line: 120, type: !600, isLocal: true, isDefinition: true)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !257, retainedTypes: !596, globals: !598)
!256 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!257 = !{!258}
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !259, line: 41, size: 32, elements: !260)
!259 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!261 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!262 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!263 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!264 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!265 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!266 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!267 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!268 = !DIEnumerator(name: "DAY_1", value: 131079)
!269 = !DIEnumerator(name: "DAY_2", value: 131080)
!270 = !DIEnumerator(name: "DAY_3", value: 131081)
!271 = !DIEnumerator(name: "DAY_4", value: 131082)
!272 = !DIEnumerator(name: "DAY_5", value: 131083)
!273 = !DIEnumerator(name: "DAY_6", value: 131084)
!274 = !DIEnumerator(name: "DAY_7", value: 131085)
!275 = !DIEnumerator(name: "ABMON_1", value: 131086)
!276 = !DIEnumerator(name: "ABMON_2", value: 131087)
!277 = !DIEnumerator(name: "ABMON_3", value: 131088)
!278 = !DIEnumerator(name: "ABMON_4", value: 131089)
!279 = !DIEnumerator(name: "ABMON_5", value: 131090)
!280 = !DIEnumerator(name: "ABMON_6", value: 131091)
!281 = !DIEnumerator(name: "ABMON_7", value: 131092)
!282 = !DIEnumerator(name: "ABMON_8", value: 131093)
!283 = !DIEnumerator(name: "ABMON_9", value: 131094)
!284 = !DIEnumerator(name: "ABMON_10", value: 131095)
!285 = !DIEnumerator(name: "ABMON_11", value: 131096)
!286 = !DIEnumerator(name: "ABMON_12", value: 131097)
!287 = !DIEnumerator(name: "MON_1", value: 131098)
!288 = !DIEnumerator(name: "MON_2", value: 131099)
!289 = !DIEnumerator(name: "MON_3", value: 131100)
!290 = !DIEnumerator(name: "MON_4", value: 131101)
!291 = !DIEnumerator(name: "MON_5", value: 131102)
!292 = !DIEnumerator(name: "MON_6", value: 131103)
!293 = !DIEnumerator(name: "MON_7", value: 131104)
!294 = !DIEnumerator(name: "MON_8", value: 131105)
!295 = !DIEnumerator(name: "MON_9", value: 131106)
!296 = !DIEnumerator(name: "MON_10", value: 131107)
!297 = !DIEnumerator(name: "MON_11", value: 131108)
!298 = !DIEnumerator(name: "MON_12", value: 131109)
!299 = !DIEnumerator(name: "AM_STR", value: 131110)
!300 = !DIEnumerator(name: "PM_STR", value: 131111)
!301 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!302 = !DIEnumerator(name: "D_FMT", value: 131113)
!303 = !DIEnumerator(name: "T_FMT", value: 131114)
!304 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!305 = !DIEnumerator(name: "ERA", value: 131116)
!306 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!307 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!308 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!309 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!310 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!311 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!312 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!313 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!314 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!315 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!316 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!317 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!318 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!319 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!320 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!321 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!322 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!323 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!324 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!325 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!326 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!327 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!328 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!329 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!330 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!331 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!332 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!333 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!334 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!335 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!336 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!337 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!338 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!339 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!340 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!341 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!342 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!343 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!344 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!345 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!346 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!347 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!348 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!349 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!350 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!351 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!352 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!353 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!354 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!355 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!356 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!357 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!358 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!359 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!360 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!361 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!362 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!363 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!364 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!365 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!366 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!367 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!368 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!369 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!370 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!371 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!372 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!373 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!374 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!375 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!376 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!377 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!378 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!379 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!380 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!381 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!382 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!383 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!384 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!385 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!386 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!387 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!388 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!389 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!390 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!391 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!392 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!393 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!394 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!396 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!397 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!398 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!399 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!400 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!401 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!402 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!403 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!404 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!405 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!406 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!407 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!408 = !DIEnumerator(name: "CODESET", value: 14)
!409 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!410 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!411 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!412 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!464 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!465 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!480 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!481 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!482 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!483 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!484 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!485 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!486 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!487 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!488 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!489 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!490 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!491 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!492 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!493 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!494 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!495 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!496 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!497 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!498 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!499 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!500 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!501 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!502 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!519 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!520 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!523 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!524 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!525 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!526 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!527 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!528 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!529 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!530 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!531 = !DIEnumerator(name: "THOUSEP", value: 65537)
!532 = !DIEnumerator(name: "__GROUPING", value: 65538)
!533 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!534 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!535 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!536 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!537 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!538 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!539 = !DIEnumerator(name: "__YESSTR", value: 327682)
!540 = !DIEnumerator(name: "__NOSTR", value: 327683)
!541 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!542 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!543 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!544 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!545 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!546 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!547 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!548 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!549 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!550 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!551 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!552 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!553 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!554 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!555 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!557 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!558 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!559 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!560 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!561 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!563 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!564 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!565 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!566 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!567 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!568 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!569 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!570 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!571 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!572 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!573 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!574 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!575 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!576 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!577 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!594 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!595 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!596 = !{!24, !22, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!598 = !{!253}
!599 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !603, retainedTypes: !608)
!602 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = !{!604}
!604 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !605, line: 41, size: 32, elements: !606)
!605 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = !{!607}
!607 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!608 = !{!24}
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !611, retainedTypes: !625)
!610 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = !{!612}
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !614, file: !613, line: 192, size: 32, elements: !623)
!613 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = distinct !DISubprogram(name: "x2nrealloc", scope: !613, file: !613, line: 180, type: !615, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !618)
!615 = !DISubroutineType(types: !616)
!616 = !{!24, !24, !617, !25}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!618 = !{!619, !620, !621, !622}
!619 = !DILocalVariable(name: "p", arg: 1, scope: !614, file: !613, line: 180, type: !24)
!620 = !DILocalVariable(name: "pn", arg: 2, scope: !614, file: !613, line: 180, type: !617)
!621 = !DILocalVariable(name: "s", arg: 3, scope: !614, file: !613, line: 180, type: !25)
!622 = !DILocalVariable(name: "n", scope: !614, file: !613, line: 182, type: !25)
!623 = !{!624}
!624 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!625 = !{!25, !22, !24}
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124)
!627 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !608)
!629 = !DIFile(filename: "./lib/xstrtold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !608)
!631 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !634)
!633 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!634 = !{!25}
!635 = distinct !DICompileUnit(language: DW_LANG_C99, file: !636, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124)
!636 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!637 = distinct !DICompileUnit(language: DW_LANG_C99, file: !638, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !639)
!638 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = !{!25, !28, !30, !33}
!640 = distinct !DICompileUnit(language: DW_LANG_C99, file: !641, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124)
!641 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!642 = distinct !DICompileUnit(language: DW_LANG_C99, file: !643, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !608)
!643 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!644 = distinct !DICompileUnit(language: DW_LANG_C99, file: !645, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !608)
!645 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!646 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!647 = !{i32 2, !"Dwarf Version", i32 4}
!648 = !{i32 2, !"Debug Info Version", i32 3}
!649 = !{i32 1, !"PIC Level", i32 2}
!650 = !{i32 1, !"PIE Level", i32 2}
!651 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 66, type: !652, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !35}
!654 = !{!655}
!655 = !DILocalVariable(name: "status", arg: 1, scope: !651, file: !3, line: 66, type: !35)
!656 = !DIExpression()
!657 = !DILocation(line: 66, column: 12, scope: !651)
!658 = !DILocation(line: 68, column: 14, scope: !659)
!659 = distinct !DILexicalBlock(scope: !651, file: !3, line: 68, column: 7)
!660 = !DILocation(line: 68, column: 7, scope: !651)
!661 = !DILocation(line: 69, column: 5, scope: !662)
!662 = !DILexicalBlockFile(scope: !663, file: !3, discriminator: 1)
!663 = distinct !DILexicalBlock(scope: !659, file: !3, line: 69, column: 5)
!664 = !{!665, !665, i64 0}
!665 = !{!"any pointer", !666, i64 0}
!666 = !{!"omnipotent char", !667, i64 0}
!667 = !{!"Simple C/C++ TBAA"}
!668 = !DILocation(line: 69, column: 5, scope: !669)
!669 = !DILexicalBlockFile(scope: !663, file: !3, discriminator: 3)
!670 = !DILocation(line: 69, column: 5, scope: !671)
!671 = !DILexicalBlockFile(scope: !663, file: !3, discriminator: 2)
!672 = !DILocation(line: 72, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !659, file: !3, line: 71, column: 5)
!674 = !DILocation(line: 72, column: 7, scope: !675)
!675 = !DILexicalBlockFile(scope: !673, file: !3, discriminator: 1)
!676 = !DILocation(line: 77, column: 7, scope: !673)
!677 = !DILocation(line: 77, column: 7, scope: !675)
!678 = !DILocation(line: 587, column: 3, scope: !679, inlinedAt: !682)
!679 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !44, file: !44, line: 585, type: !680, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !124)
!680 = !DISubroutineType(types: !681)
!681 = !{null}
!682 = distinct !DILocation(line: 81, column: 7, scope: !673)
!683 = !DILocation(line: 587, column: 3, scope: !684, inlinedAt: !682)
!684 = !DILexicalBlockFile(scope: !679, file: !44, discriminator: 1)
!685 = !DILocation(line: 83, column: 7, scope: !673)
!686 = !DILocation(line: 83, column: 7, scope: !675)
!687 = !DILocation(line: 88, column: 7, scope: !673)
!688 = !DILocation(line: 88, column: 7, scope: !675)
!689 = !DILocation(line: 89, column: 7, scope: !673)
!690 = !DILocation(line: 89, column: 7, scope: !675)
!691 = !DILocation(line: 90, column: 7, scope: !673)
!692 = !DILocation(line: 90, column: 7, scope: !675)
!693 = !DILocation(line: 101, column: 7, scope: !673)
!694 = !DILocation(line: 101, column: 7, scope: !675)
!695 = !DILocation(line: 642, column: 15, scope: !43, inlinedAt: !696)
!696 = distinct !DILocation(line: 106, column: 7, scope: !673)
!697 = !DILocation(line: 651, column: 3, scope: !43, inlinedAt: !696)
!698 = !DILocation(line: 651, column: 3, scope: !699, inlinedAt: !696)
!699 = !DILexicalBlockFile(scope: !43, file: !44, discriminator: 1)
!700 = !DILocation(line: 655, column: 29, scope: !43, inlinedAt: !696)
!701 = !DILocation(line: 655, column: 15, scope: !43, inlinedAt: !696)
!702 = !DILocation(line: 656, column: 7, scope: !63, inlinedAt: !696)
!703 = !DILocation(line: 656, column: 19, scope: !63, inlinedAt: !696)
!704 = !DILocation(line: 656, column: 22, scope: !705, inlinedAt: !696)
!705 = !DILexicalBlockFile(scope: !63, file: !44, discriminator: 16)
!706 = !DILocation(line: 656, column: 7, scope: !707, inlinedAt: !696)
!707 = !DILexicalBlockFile(scope: !43, file: !44, discriminator: 16)
!708 = !DILocation(line: 662, column: 7, scope: !709, inlinedAt: !696)
!709 = distinct !DILexicalBlock(scope: !63, file: !44, line: 657, column: 5)
!710 = !DILocation(line: 662, column: 7, scope: !711, inlinedAt: !696)
!711 = !DILexicalBlockFile(scope: !709, file: !44, discriminator: 1)
!712 = !DILocation(line: 664, column: 5, scope: !709, inlinedAt: !696)
!713 = !DILocation(line: 665, column: 3, scope: !43, inlinedAt: !696)
!714 = !DILocation(line: 665, column: 3, scope: !699, inlinedAt: !696)
!715 = !DILocation(line: 667, column: 3, scope: !43, inlinedAt: !696)
!716 = !DILocation(line: 667, column: 3, scope: !699, inlinedAt: !696)
!717 = !DILocation(line: 108, column: 3, scope: !651)
!718 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 549, type: !719, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !722)
!719 = !DISubroutineType(types: !720)
!720 = !{!35, !35, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !734, !735, !736, !739, !740, !742, !743, !745, !746, !749}
!723 = !DILocalVariable(name: "argc", arg: 1, scope: !718, file: !3, line: 549, type: !35)
!724 = !DILocalVariable(name: "argv", arg: 2, scope: !718, file: !3, line: 549, type: !721)
!725 = !DILocalVariable(name: "optc", scope: !718, file: !3, line: 551, type: !35)
!726 = !DILocalVariable(name: "first", scope: !718, file: !3, line: 552, type: !95)
!727 = !DILocalVariable(name: "step", scope: !718, file: !3, line: 553, type: !95)
!728 = !DILocalVariable(name: "last", scope: !718, file: !3, line: 554, type: !95)
!729 = !DILocalVariable(name: "layout", scope: !718, file: !3, line: 555, type: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "layout", file: !3, line: 130, size: 128, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !730, file: !3, line: 133, baseType: !25, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "suffix_len", scope: !730, file: !3, line: 134, baseType: !25, size: 64, offset: 64)
!734 = !DILocalVariable(name: "format_str", scope: !718, file: !3, line: 558, type: !33)
!735 = !DILocalVariable(name: "n_args", scope: !718, file: !3, line: 610, type: !21)
!736 = !DILocalVariable(name: "__s1_len", scope: !737, file: !3, line: 641, type: !25)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 641, column: 26)
!738 = distinct !DILexicalBlock(scope: !718, file: !3, line: 639, column: 7)
!739 = !DILocalVariable(name: "__s2_len", scope: !737, file: !3, line: 641, type: !25)
!740 = !DILocalVariable(name: "__s2", scope: !741, file: !3, line: 641, type: !30)
!741 = distinct !DILexicalBlock(scope: !737, file: !3, line: 641, column: 26)
!742 = !DILocalVariable(name: "__result", scope: !741, file: !3, line: 641, type: !35)
!743 = !DILocalVariable(name: "s1", scope: !744, file: !3, line: 645, type: !33)
!744 = distinct !DILexicalBlock(scope: !738, file: !3, line: 644, column: 5)
!745 = !DILocalVariable(name: "s2", scope: !744, file: !3, line: 646, type: !33)
!746 = !DILocalVariable(name: "s1", scope: !747, file: !3, line: 679, type: !22)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 678, column: 5)
!748 = distinct !DILexicalBlock(scope: !718, file: !3, line: 674, column: 7)
!749 = !DILocalVariable(name: "s2", scope: !747, file: !3, line: 680, type: !22)
!750 = !DILocation(line: 360, column: 58, scope: !92, inlinedAt: !751)
!751 = distinct !DILocation(line: 701, column: 18, scope: !752)
!752 = distinct !DILexicalBlock(scope: !718, file: !3, line: 700, column: 7)
!753 = !DILocation(line: 549, column: 11, scope: !718)
!754 = !DILocation(line: 549, column: 24, scope: !718)
!755 = !DILocation(line: 552, column: 3, scope: !718)
!756 = !DILocation(line: 552, column: 11, scope: !718)
!757 = !DILocation(line: 553, column: 3, scope: !718)
!758 = !DILocation(line: 553, column: 11, scope: !718)
!759 = !DILocation(line: 554, column: 3, scope: !718)
!760 = !DILocation(line: 558, column: 15, scope: !718)
!761 = !DILocation(line: 561, column: 21, scope: !718)
!762 = !DILocation(line: 561, column: 3, scope: !718)
!763 = !DILocation(line: 562, column: 3, scope: !718)
!764 = !DILocation(line: 563, column: 3, scope: !718)
!765 = !DILocation(line: 564, column: 3, scope: !718)
!766 = !DILocation(line: 566, column: 3, scope: !718)
!767 = !DILocation(line: 569, column: 13, scope: !718)
!768 = !DILocation(line: 574, column: 10, scope: !769)
!769 = !DILexicalBlockFile(scope: !718, file: !3, discriminator: 1)
!770 = !{!771, !771, i64 0}
!771 = !{!"int", !666, i64 0}
!772 = !DILocation(line: 574, column: 17, scope: !769)
!773 = !DILocation(line: 574, column: 3, scope: !769)
!774 = !DILocation(line: 576, column: 11, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 576, column: 11)
!776 = distinct !DILexicalBlock(scope: !718, file: !3, line: 575, column: 5)
!777 = !{!666, !666, i64 0}
!778 = !DILocation(line: 576, column: 27, scope: !775)
!779 = !DILocation(line: 577, column: 11, scope: !775)
!780 = !DILocation(line: 577, column: 23, scope: !781)
!781 = !DILexicalBlockFile(scope: !775, file: !3, discriminator: 1)
!782 = !DILocation(line: 551, column: 7, scope: !718)
!783 = !DILocation(line: 577, column: 40, scope: !781)
!784 = !DILocation(line: 577, column: 47, scope: !781)
!785 = !DILocation(line: 577, column: 50, scope: !786)
!786 = !DILexicalBlockFile(scope: !775, file: !3, discriminator: 2)
!787 = !DILocation(line: 576, column: 11, scope: !788)
!788 = !DILexicalBlockFile(scope: !776, file: !3, discriminator: 1)
!789 = !DILocation(line: 583, column: 14, scope: !776)
!790 = !DILocation(line: 584, column: 11, scope: !776)
!791 = !DILocation(line: 590, column: 24, scope: !792)
!792 = distinct !DILexicalBlock(scope: !776, file: !3, line: 588, column: 9)
!793 = distinct !{!793, !794, !795}
!794 = !DILocation(line: 574, column: 3, scope: !718)
!795 = !DILocation(line: 608, column: 5, scope: !718)
!796 = !DILocation(line: 594, column: 23, scope: !792)
!797 = !DILocation(line: 594, column: 21, scope: !792)
!798 = !DILocation(line: 595, column: 11, scope: !792)
!799 = !DILocation(line: 599, column: 11, scope: !792)
!800 = !DILocation(line: 601, column: 9, scope: !792)
!801 = !DILocation(line: 603, column: 9, scope: !792)
!802 = !DILocation(line: 603, column: 9, scope: !803)
!803 = !DILexicalBlockFile(scope: !792, file: !3, discriminator: 1)
!804 = !DILocation(line: 606, column: 11, scope: !792)
!805 = !DILocation(line: 610, column: 30, scope: !718)
!806 = !DILocation(line: 610, column: 32, scope: !718)
!807 = !DILocation(line: 610, column: 16, scope: !718)
!808 = !DILocation(line: 611, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !718, file: !3, line: 611, column: 7)
!810 = !DILocation(line: 611, column: 7, scope: !718)
!811 = !DILocation(line: 613, column: 20, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !3, line: 612, column: 5)
!813 = !DILocation(line: 613, column: 7, scope: !814)
!814 = !DILexicalBlockFile(scope: !812, file: !3, discriminator: 1)
!815 = !DILocation(line: 614, column: 7, scope: !812)
!816 = !DILocation(line: 617, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !718, file: !3, line: 617, column: 7)
!818 = !DILocation(line: 617, column: 7, scope: !718)
!819 = !DILocation(line: 619, column: 20, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !3, line: 618, column: 5)
!821 = !DILocation(line: 619, column: 55, scope: !820)
!822 = !DILocation(line: 619, column: 62, scope: !820)
!823 = !DILocation(line: 619, column: 50, scope: !820)
!824 = !DILocation(line: 619, column: 43, scope: !825)
!825 = !DILexicalBlockFile(scope: !820, file: !3, discriminator: 1)
!826 = !DILocation(line: 619, column: 7, scope: !827)
!827 = !DILexicalBlockFile(scope: !820, file: !3, discriminator: 2)
!828 = !DILocation(line: 620, column: 7, scope: !820)
!829 = !DILocation(line: 623, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !718, file: !3, line: 623, column: 7)
!831 = !DILocation(line: 623, column: 7, scope: !718)
!832 = !DILocation(line: 230, column: 10, scope: !833, inlinedAt: !852)
!833 = distinct !DISubprogram(name: "long_double_format", scope: !3, file: !3, line: 228, type: !834, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !837)
!834 = !DISubroutineType(types: !835)
!835 = !{!33, !33, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!837 = !{!838, !839, !840, !841, !842, !843, !844, !845, !851}
!838 = !DILocalVariable(name: "fmt", arg: 1, scope: !833, file: !3, line: 228, type: !33)
!839 = !DILocalVariable(name: "layout", arg: 2, scope: !833, file: !3, line: 228, type: !836)
!840 = !DILocalVariable(name: "i", scope: !833, file: !3, line: 230, type: !25)
!841 = !DILocalVariable(name: "prefix_len", scope: !833, file: !3, line: 231, type: !25)
!842 = !DILocalVariable(name: "suffix_len", scope: !833, file: !3, line: 232, type: !25)
!843 = !DILocalVariable(name: "length_modifier_offset", scope: !833, file: !3, line: 233, type: !25)
!844 = !DILocalVariable(name: "has_L", scope: !833, file: !3, line: 234, type: !40)
!845 = !DILocalVariable(name: "format_size", scope: !846, file: !3, line: 270, type: !25)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 269, column: 7)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 266, column: 14)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 263, column: 9)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 262, column: 3)
!850 = distinct !DILexicalBlock(scope: !833, file: !3, line: 262, column: 3)
!851 = !DILocalVariable(name: "ldfmt", scope: !846, file: !3, line: 271, type: !22)
!852 = distinct !DILocation(line: 624, column: 18, scope: !830)
!853 = !DILocation(line: 231, column: 10, scope: !833, inlinedAt: !852)
!854 = !DILocation(line: 236, column: 18, scope: !855, inlinedAt: !852)
!855 = !DILexicalBlockFile(scope: !856, file: !3, discriminator: 1)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 236, column: 3)
!857 = distinct !DILexicalBlock(scope: !833, file: !3, line: 236, column: 3)
!858 = !DILocation(line: 236, column: 25, scope: !855, inlinedAt: !852)
!859 = !DILocation(line: 236, column: 32, scope: !855, inlinedAt: !852)
!860 = !DILocation(line: 236, column: 41, scope: !861, inlinedAt: !852)
!861 = !DILexicalBlockFile(scope: !856, file: !3, discriminator: 2)
!862 = !DILocation(line: 236, column: 35, scope: !861, inlinedAt: !852)
!863 = !DILocation(line: 236, column: 46, scope: !861, inlinedAt: !852)
!864 = !DILocation(line: 236, column: 3, scope: !865, inlinedAt: !852)
!865 = !DILexicalBlockFile(scope: !857, file: !3, discriminator: 3)
!866 = !DILocation(line: 238, column: 12, scope: !867, inlinedAt: !852)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 238, column: 11)
!868 = distinct !DILexicalBlock(scope: !856, file: !3, line: 237, column: 5)
!869 = !DILocation(line: 238, column: 11, scope: !868, inlinedAt: !852)
!870 = !DILocation(line: 239, column: 9, scope: !867, inlinedAt: !852)
!871 = !DILocation(line: 239, column: 9, scope: !872, inlinedAt: !852)
!872 = !DILexicalBlockFile(scope: !867, file: !3, discriminator: 1)
!873 = !DILocation(line: 239, column: 9, scope: !874, inlinedAt: !852)
!874 = !DILexicalBlockFile(scope: !867, file: !3, discriminator: 2)
!875 = !DILocation(line: 241, column: 17, scope: !868, inlinedAt: !852)
!876 = !DILocation(line: 236, column: 60, scope: !877, inlinedAt: !852)
!877 = !DILexicalBlockFile(scope: !856, file: !3, discriminator: 4)
!878 = !DILocation(line: 236, column: 57, scope: !877, inlinedAt: !852)
!879 = !DILocation(line: 236, column: 3, scope: !877, inlinedAt: !852)
!880 = distinct !{!880, !881, !882}
!881 = !DILocation(line: 236, column: 3, scope: !857)
!882 = !DILocation(line: 242, column: 5, scope: !857)
!883 = !DILocation(line: 245, column: 8, scope: !833, inlinedAt: !852)
!884 = !DILocation(line: 245, column: 5, scope: !833, inlinedAt: !852)
!885 = !DILocation(line: 246, column: 8, scope: !833, inlinedAt: !852)
!886 = !DILocation(line: 246, column: 5, scope: !833, inlinedAt: !852)
!887 = !DILocation(line: 247, column: 7, scope: !888, inlinedAt: !852)
!888 = distinct !DILexicalBlock(scope: !833, file: !3, line: 247, column: 7)
!889 = !DILocation(line: 247, column: 14, scope: !888, inlinedAt: !852)
!890 = !DILocation(line: 247, column: 7, scope: !833, inlinedAt: !852)
!891 = !DILocation(line: 249, column: 8, scope: !892, inlinedAt: !852)
!892 = distinct !DILexicalBlock(scope: !888, file: !3, line: 248, column: 5)
!893 = !DILocation(line: 250, column: 12, scope: !892, inlinedAt: !852)
!894 = !DILocation(line: 250, column: 9, scope: !892, inlinedAt: !852)
!895 = !DILocation(line: 251, column: 5, scope: !892, inlinedAt: !852)
!896 = !DILocation(line: 254, column: 12, scope: !833, inlinedAt: !852)
!897 = !DILocation(line: 233, column: 10, scope: !833, inlinedAt: !852)
!898 = !DILocation(line: 254, column: 19, scope: !833, inlinedAt: !852)
!899 = !DILocation(line: 255, column: 8, scope: !833, inlinedAt: !852)
!900 = !DILocation(line: 255, column: 5, scope: !833, inlinedAt: !852)
!901 = !DILocation(line: 256, column: 7, scope: !902, inlinedAt: !852)
!902 = distinct !DILexicalBlock(scope: !833, file: !3, line: 256, column: 7)
!903 = !DILocation(line: 256, column: 14, scope: !902, inlinedAt: !852)
!904 = !DILocation(line: 256, column: 7, scope: !833, inlinedAt: !852)
!905 = !DILocation(line: 257, column: 5, scope: !902, inlinedAt: !852)
!906 = !DILocation(line: 257, column: 5, scope: !907, inlinedAt: !852)
!907 = !DILexicalBlockFile(scope: !902, file: !3, discriminator: 1)
!908 = !DILocation(line: 257, column: 5, scope: !909, inlinedAt: !852)
!909 = !DILexicalBlockFile(scope: !902, file: !3, discriminator: 2)
!910 = !DILocation(line: 258, column: 9, scope: !911, inlinedAt: !852)
!911 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 4)
!912 = distinct !DILexicalBlock(scope: !833, file: !3, line: 258, column: 7)
!913 = !DILocation(line: 258, column: 7, scope: !914, inlinedAt: !852)
!914 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 4)
!915 = !DILocation(line: 259, column: 5, scope: !912, inlinedAt: !852)
!916 = !DILocation(line: 259, column: 5, scope: !917, inlinedAt: !852)
!917 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 1)
!918 = !DILocation(line: 259, column: 5, scope: !919, inlinedAt: !852)
!919 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 2)
!920 = !DILocation(line: 262, column: 9, scope: !850, inlinedAt: !852)
!921 = !DILocation(line: 262, column: 8, scope: !850, inlinedAt: !852)
!922 = !DILocation(line: 232, column: 10, scope: !833, inlinedAt: !852)
!923 = !DILocation(line: 263, column: 9, scope: !848, inlinedAt: !852)
!924 = !DILocation(line: 263, column: 16, scope: !848, inlinedAt: !852)
!925 = !DILocation(line: 263, column: 23, scope: !848, inlinedAt: !852)
!926 = !DILocation(line: 263, column: 32, scope: !927, inlinedAt: !852)
!927 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 1)
!928 = !DILocation(line: 263, column: 26, scope: !927, inlinedAt: !852)
!929 = !DILocation(line: 263, column: 37, scope: !927, inlinedAt: !852)
!930 = !DILocation(line: 263, column: 9, scope: !931, inlinedAt: !852)
!931 = !DILexicalBlockFile(scope: !849, file: !3, discriminator: 1)
!932 = !DILocation(line: 264, column: 7, scope: !848, inlinedAt: !852)
!933 = !DILocation(line: 264, column: 7, scope: !927, inlinedAt: !852)
!934 = !DILocation(line: 264, column: 7, scope: !935, inlinedAt: !852)
!935 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 2)
!936 = !DILocation(line: 266, column: 14, scope: !847, inlinedAt: !852)
!937 = !DILocation(line: 266, column: 14, scope: !848, inlinedAt: !852)
!938 = !DILocation(line: 267, column: 17, scope: !847, inlinedAt: !852)
!939 = !DILocation(line: 262, column: 20, scope: !931, inlinedAt: !852)
!940 = !DILocation(line: 262, column: 17, scope: !931, inlinedAt: !852)
!941 = !DILocation(line: 262, column: 3, scope: !931, inlinedAt: !852)
!942 = distinct !{!942, !943, !944}
!943 = !DILocation(line: 262, column: 3, scope: !850)
!944 = !DILocation(line: 279, column: 7, scope: !850)
!945 = !DILocation(line: 271, column: 44, scope: !846, inlinedAt: !852)
!946 = !DILocation(line: 271, column: 23, scope: !846, inlinedAt: !852)
!947 = !DILocation(line: 271, column: 15, scope: !846, inlinedAt: !852)
!948 = !DILocation(line: 272, column: 9, scope: !846, inlinedAt: !852)
!949 = !DILocation(line: 273, column: 9, scope: !846, inlinedAt: !852)
!950 = !DILocation(line: 273, column: 39, scope: !846, inlinedAt: !852)
!951 = !DILocation(line: 274, column: 48, scope: !846, inlinedAt: !852)
!952 = !DILocation(line: 275, column: 46, scope: !846, inlinedAt: !852)
!953 = !DILocalVariable(name: "__dest", arg: 1, scope: !954, file: !955, line: 107, type: !958)
!954 = distinct !DISubprogram(name: "strcpy", scope: !955, file: !955, line: 107, type: !956, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !960)
!955 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!956 = !DISubroutineType(types: !957)
!957 = !{!22, !958, !959}
!958 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!959 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!960 = !{!953, !961}
!961 = !DILocalVariable(name: "__src", arg: 2, scope: !954, file: !955, line: 107, type: !959)
!962 = !DILocation(line: 107, column: 1, scope: !954, inlinedAt: !963)
!963 = distinct !DILocation(line: 274, column: 9, scope: !846, inlinedAt: !852)
!964 = !DILocation(line: 109, column: 49, scope: !954, inlinedAt: !963)
!965 = !DILocation(line: 109, column: 10, scope: !954, inlinedAt: !963)
!966 = !DILocation(line: 626, column: 18, scope: !967)
!967 = distinct !DILexicalBlock(scope: !718, file: !3, line: 626, column: 7)
!968 = !DILocation(line: 626, column: 26, scope: !967)
!969 = !DILocation(line: 626, column: 7, scope: !769)
!970 = !DILocation(line: 628, column: 20, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !3, line: 627, column: 5)
!972 = !DILocation(line: 628, column: 7, scope: !973)
!973 = !DILexicalBlockFile(scope: !971, file: !3, discriminator: 1)
!974 = !DILocation(line: 630, column: 7, scope: !971)
!975 = !DILocation(line: 639, column: 26, scope: !738)
!976 = !DILocation(line: 639, column: 21, scope: !738)
!977 = !DILocalVariable(name: "s", arg: 1, scope: !978, file: !3, line: 542, type: !33)
!978 = distinct !DISubprogram(name: "all_digits_p", scope: !3, file: !3, line: 542, type: !979, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{!40, !33}
!981 = !{!977, !982}
!982 = !DILocalVariable(name: "n", scope: !978, file: !3, line: 544, type: !25)
!983 = !DILocation(line: 542, column: 27, scope: !978, inlinedAt: !984)
!984 = distinct !DILocation(line: 639, column: 7, scope: !738)
!985 = !DILocation(line: 545, column: 10, scope: !978, inlinedAt: !984)
!986 = !DILocation(line: 545, column: 25, scope: !978, inlinedAt: !984)
!987 = !DILocation(line: 544, column: 14, scope: !978, inlinedAt: !984)
!988 = !DILocation(line: 545, column: 33, scope: !989, inlinedAt: !984)
!989 = !DILexicalBlockFile(scope: !978, file: !3, discriminator: 1)
!990 = !DILocation(line: 545, column: 30, scope: !989, inlinedAt: !984)
!991 = !DILocation(line: 640, column: 7, scope: !738)
!992 = !DILocation(line: 640, column: 18, scope: !993)
!993 = !DILexicalBlockFile(scope: !738, file: !3, discriminator: 1)
!994 = !DILocation(line: 640, column: 23, scope: !993)
!995 = !DILocation(line: 640, column: 52, scope: !996)
!996 = !DILexicalBlockFile(scope: !738, file: !3, discriminator: 2)
!997 = !DILocation(line: 640, column: 40, scope: !996)
!998 = !DILocation(line: 542, column: 27, scope: !978, inlinedAt: !999)
!999 = distinct !DILocation(line: 640, column: 26, scope: !996)
!1000 = !DILocation(line: 545, column: 10, scope: !978, inlinedAt: !999)
!1001 = !DILocation(line: 545, column: 25, scope: !978, inlinedAt: !999)
!1002 = !DILocation(line: 544, column: 14, scope: !978, inlinedAt: !999)
!1003 = !DILocation(line: 545, column: 33, scope: !989, inlinedAt: !999)
!1004 = !DILocation(line: 545, column: 30, scope: !989, inlinedAt: !999)
!1005 = !DILocation(line: 641, column: 7, scope: !738)
!1006 = !DILocation(line: 641, column: 18, scope: !993)
!1007 = !DILocation(line: 641, column: 22, scope: !993)
!1008 = !DILocation(line: 641, column: 26, scope: !737)
!1009 = !DILocation(line: 641, column: 26, scope: !741)
!1010 = !DILocation(line: 641, column: 26, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !3, discriminator: 5)
!1012 = distinct !DILexicalBlock(scope: !741, file: !3, line: 641, column: 26)
!1013 = !DILocation(line: 641, column: 26, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1012, file: !3, discriminator: 4)
!1015 = !DILocation(line: 641, column: 26, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1017, file: !3, discriminator: 6)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 641, column: 26)
!1018 = !DILocation(line: 641, column: 26, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !738, file: !3, discriminator: 15)
!1020 = !DILocation(line: 642, column: 26, scope: !738)
!1021 = !DILocation(line: 642, column: 55, scope: !993)
!1022 = !DILocation(line: 642, column: 43, scope: !993)
!1023 = !DILocation(line: 542, column: 27, scope: !978, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 642, column: 29, scope: !993)
!1025 = !DILocation(line: 545, column: 10, scope: !978, inlinedAt: !1024)
!1026 = !DILocation(line: 545, column: 25, scope: !978, inlinedAt: !1024)
!1027 = !DILocation(line: 544, column: 14, scope: !978, inlinedAt: !1024)
!1028 = !DILocation(line: 545, column: 33, scope: !989, inlinedAt: !1024)
!1029 = !DILocation(line: 643, column: 7, scope: !738)
!1030 = !DILocation(line: 643, column: 23, scope: !993)
!1031 = !DILocation(line: 643, column: 49, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !738, file: !3, discriminator: 3)
!1033 = !DILocation(line: 643, column: 41, scope: !1032)
!1034 = !DILocation(line: 643, column: 60, scope: !1032)
!1035 = !DILocation(line: 639, column: 7, scope: !769)
!1036 = !DILocation(line: 645, column: 24, scope: !744)
!1037 = !DILocation(line: 645, column: 19, scope: !744)
!1038 = !DILocation(line: 646, column: 46, scope: !744)
!1039 = !DILocation(line: 646, column: 36, scope: !744)
!1040 = !DILocation(line: 646, column: 24, scope: !744)
!1041 = !DILocation(line: 646, column: 19, scope: !744)
!1042 = !DILocation(line: 647, column: 11, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !744, file: !3, line: 647, column: 11)
!1044 = !DILocation(line: 653, column: 20, scope: !718)
!1045 = !DILocation(line: 653, column: 31, scope: !718)
!1046 = !DILocation(line: 653, column: 10, scope: !718)
!1047 = !DILocation(line: 655, column: 7, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !718, file: !3, line: 655, column: 7)
!1049 = !DILocation(line: 655, column: 14, scope: !1048)
!1050 = !DILocation(line: 655, column: 7, scope: !718)
!1051 = !DILocation(line: 657, column: 15, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 656, column: 5)
!1053 = !DILocation(line: 658, column: 35, scope: !1052)
!1054 = !DILocation(line: 658, column: 24, scope: !1052)
!1055 = !DILocation(line: 658, column: 14, scope: !1052)
!1056 = !DILocation(line: 660, column: 11, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 660, column: 11)
!1058 = !DILocation(line: 660, column: 18, scope: !1057)
!1059 = !DILocation(line: 660, column: 11, scope: !1052)
!1060 = !DILocation(line: 662, column: 18, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 661, column: 9)
!1062 = !DILocation(line: 663, column: 26, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 663, column: 15)
!1064 = !DILocation(line: 663, column: 15, scope: !1061)
!1065 = !DILocation(line: 665, column: 28, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 664, column: 13)
!1067 = !DILocation(line: 666, column: 34, scope: !1066)
!1068 = !DILocation(line: 666, column: 40, scope: !1066)
!1069 = !DILocation(line: 666, column: 29, scope: !1066)
!1070 = !DILocation(line: 666, column: 22, scope: !1066)
!1071 = !DILocation(line: 665, column: 15, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1066, file: !3, discriminator: 1)
!1073 = !DILocation(line: 667, column: 15, scope: !1066)
!1074 = !DILocation(line: 670, column: 39, scope: !1061)
!1075 = !DILocation(line: 670, column: 28, scope: !1061)
!1076 = !DILocation(line: 670, column: 18, scope: !1061)
!1077 = !DILocation(line: 671, column: 9, scope: !1061)
!1078 = !DILocation(line: 674, column: 8, scope: !748)
!1079 = !DILocation(line: 674, column: 31, scope: !748)
!1080 = !DILocation(line: 676, column: 7, scope: !748)
!1081 = !DILocation(line: 676, column: 41, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 2)
!1083 = !DILocation(line: 676, column: 51, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 3)
!1085 = !DILocation(line: 677, column: 23, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !748, file: !3, discriminator: 1)
!1087 = !DILocation(line: 677, column: 7, scope: !748)
!1088 = !DILocation(line: 677, column: 49, scope: !1084)
!1089 = !DILocation(line: 677, column: 41, scope: !1084)
!1090 = !DILocation(line: 677, column: 60, scope: !1084)
!1091 = !DILocation(line: 674, column: 7, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !718, file: !3, discriminator: 2)
!1093 = !DILocation(line: 679, column: 7, scope: !747)
!1094 = !DILocation(line: 680, column: 7, scope: !747)
!1095 = !DIExpression(DW_OP_deref)
!1096 = !DILocation(line: 679, column: 13, scope: !747)
!1097 = !DILocation(line: 681, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !747, file: !3, line: 681, column: 11)
!1099 = !DILocation(line: 681, column: 48, scope: !1098)
!1100 = !DILocation(line: 681, column: 11, scope: !747)
!1101 = !DILocation(line: 682, column: 9, scope: !1098)
!1102 = !DILocation(line: 683, column: 13, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !747, file: !3, line: 683, column: 11)
!1104 = !DILocation(line: 683, column: 11, scope: !747)
!1105 = !DILocation(line: 684, column: 14, scope: !1103)
!1106 = !DILocation(line: 680, column: 13, scope: !747)
!1107 = !DILocation(line: 684, column: 12, scope: !1103)
!1108 = !DILocation(line: 684, column: 9, scope: !1103)
!1109 = !DILocation(line: 685, column: 16, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 685, column: 16)
!1111 = !DILocation(line: 685, column: 52, scope: !1110)
!1112 = !DILocation(line: 685, column: 16, scope: !1103)
!1113 = !DILocation(line: 686, column: 9, scope: !1110)
!1114 = !DILocation(line: 688, column: 12, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !747, file: !3, line: 688, column: 11)
!1116 = !DILocation(line: 688, column: 11, scope: !1115)
!1117 = !DILocation(line: 688, column: 15, scope: !1115)
!1118 = !DILocation(line: 688, column: 22, scope: !1115)
!1119 = !DILocation(line: 688, column: 26, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1115, file: !3, discriminator: 1)
!1121 = !DILocation(line: 688, column: 25, scope: !1120)
!1122 = !DILocation(line: 688, column: 29, scope: !1120)
!1123 = !DILocation(line: 688, column: 36, scope: !1120)
!1124 = !DILocation(line: 688, column: 39, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1115, file: !3, discriminator: 2)
!1126 = !DILocation(line: 688, column: 11, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !747, file: !3, discriminator: 2)
!1128 = !DILocation(line: 695, column: 13, scope: !747)
!1129 = !DILocation(line: 695, column: 7, scope: !747)
!1130 = !DILocation(line: 696, column: 13, scope: !747)
!1131 = !DILocation(line: 696, column: 7, scope: !747)
!1132 = !DILocation(line: 698, column: 5, scope: !748)
!1133 = !DILocation(line: 700, column: 18, scope: !752)
!1134 = !DILocation(line: 700, column: 7, scope: !718)
!1135 = !DILocation(line: 554, column: 11, scope: !718)
!1136 = !DILocation(line: 360, column: 29, scope: !92, inlinedAt: !751)
!1137 = !DIExpression(DW_OP_LLVM_fragment, 0, 80)
!1138 = !DIExpression(DW_OP_LLVM_fragment, 128, 64)
!1139 = !DIExpression(DW_OP_LLVM_fragment, 192, 32)
!1140 = !DILocation(line: 364, column: 14, scope: !92, inlinedAt: !751)
!1141 = !{!1142, !771, i64 24}
!1142 = !{!"operand", !1143, i64 0, !1144, i64 16, !771, i64 24}
!1143 = !{!"long double", !666, i64 0}
!1144 = !{!"long", !666, i64 0}
!1145 = !DILocation(line: 364, column: 7, scope: !92, inlinedAt: !751)
!1146 = !DILocation(line: 366, column: 12, scope: !111, inlinedAt: !751)
!1147 = !DILocation(line: 366, column: 41, scope: !1148, inlinedAt: !751)
!1148 = !DILexicalBlockFile(scope: !111, file: !3, discriminator: 1)
!1149 = !DILocation(line: 366, column: 23, scope: !111, inlinedAt: !751)
!1150 = !DILocation(line: 368, column: 11, scope: !110, inlinedAt: !751)
!1151 = !DILocation(line: 371, column: 52, scope: !108, inlinedAt: !751)
!1152 = !DILocation(line: 371, column: 46, scope: !108, inlinedAt: !751)
!1153 = !DILocation(line: 373, column: 50, scope: !108, inlinedAt: !751)
!1154 = !DILocation(line: 373, column: 44, scope: !108, inlinedAt: !751)
!1155 = !DILocation(line: 374, column: 15, scope: !1156, inlinedAt: !751)
!1156 = distinct !DILexicalBlock(scope: !108, file: !3, line: 374, column: 15)
!1157 = !DILocation(line: 374, column: 38, scope: !1158, inlinedAt: !751)
!1158 = !DILexicalBlockFile(scope: !1156, file: !3, discriminator: 1)
!1159 = !DILocation(line: 374, column: 30, scope: !1156, inlinedAt: !751)
!1160 = !DILocation(line: 376, column: 30, scope: !1161, inlinedAt: !751)
!1161 = distinct !DILexicalBlock(scope: !108, file: !3, line: 376, column: 15)
!1162 = !DILocation(line: 376, column: 38, scope: !1163, inlinedAt: !751)
!1163 = !DILexicalBlockFile(scope: !1161, file: !3, discriminator: 1)
!1164 = !DILocation(line: 376, column: 35, scope: !1161, inlinedAt: !751)
!1165 = !DILocation(line: 373, column: 42, scope: !108, inlinedAt: !751)
!1166 = !DILocation(line: 373, column: 18, scope: !108, inlinedAt: !751)
!1167 = !DILocation(line: 378, column: 31, scope: !1168, inlinedAt: !751)
!1168 = distinct !DILexicalBlock(scope: !108, file: !3, line: 378, column: 15)
!1169 = !DILocation(line: 378, column: 36, scope: !1168, inlinedAt: !751)
!1170 = !DILocation(line: 371, column: 44, scope: !108, inlinedAt: !751)
!1171 = !DILocation(line: 371, column: 18, scope: !108, inlinedAt: !751)
!1172 = !DILocation(line: 380, column: 26, scope: !108, inlinedAt: !751)
!1173 = !DILocation(line: 380, column: 18, scope: !108, inlinedAt: !751)
!1174 = !DILocation(line: 381, column: 21, scope: !116, inlinedAt: !751)
!1175 = !DILocation(line: 381, column: 15, scope: !108, inlinedAt: !751)
!1176 = !DILocation(line: 383, column: 23, scope: !115, inlinedAt: !751)
!1177 = !DILocation(line: 383, column: 19, scope: !115, inlinedAt: !751)
!1178 = !DILocation(line: 384, column: 15, scope: !115, inlinedAt: !751)
!1179 = !DILocation(line: 390, column: 11, scope: !1180, inlinedAt: !751)
!1180 = distinct !DILexicalBlock(scope: !109, file: !3, line: 389, column: 9)
!1181 = !DILocation(line: 391, column: 11, scope: !1180, inlinedAt: !751)
!1182 = !DILocation(line: 396, column: 1, scope: !92, inlinedAt: !751)
!1183 = !DILocation(line: 701, column: 5, scope: !752)
!1184 = !DILocalVariable(name: "layout", arg: 2, scope: !1185, file: !3, line: 294, type: !730)
!1185 = distinct !DISubprogram(name: "print_numbers", scope: !3, file: !3, line: 294, type: !1186, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1188)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !33, !730, !99, !99, !99}
!1188 = !{!1189, !1184, !1190, !1191, !1192, !1193, !1194, !1197, !1198, !1202, !1205, !1206, !1207, !1208, !1211, !1213}
!1189 = !DILocalVariable(name: "fmt", arg: 1, scope: !1185, file: !3, line: 294, type: !33)
!1190 = !DILocalVariable(name: "first", arg: 3, scope: !1185, file: !3, line: 295, type: !99)
!1191 = !DILocalVariable(name: "step", arg: 4, scope: !1185, file: !3, line: 295, type: !99)
!1192 = !DILocalVariable(name: "last", arg: 5, scope: !1185, file: !3, line: 295, type: !99)
!1193 = !DILocalVariable(name: "out_of_range", scope: !1185, file: !3, line: 297, type: !40)
!1194 = !DILocalVariable(name: "x", scope: !1195, file: !3, line: 301, type: !99)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 300, column: 5)
!1196 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 299, column: 7)
!1197 = !DILocalVariable(name: "i", scope: !1195, file: !3, line: 302, type: !99)
!1198 = !DILocalVariable(name: "x0", scope: !1199, file: !3, line: 306, type: !99)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 305, column: 9)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 304, column: 7)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 304, column: 7)
!1202 = !DILocalVariable(name: "print_extra_number", scope: !1203, file: !3, line: 323, type: !40)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 315, column: 13)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 314, column: 15)
!1205 = !DILocalVariable(name: "x_val", scope: !1203, file: !3, line: 324, type: !99)
!1206 = !DILocalVariable(name: "x_str", scope: !1203, file: !3, line: 325, type: !22)
!1207 = !DILocalVariable(name: "x_strlen", scope: !1203, file: !3, line: 326, type: !35)
!1208 = !DILocalVariable(name: "x0_str", scope: !1209, file: !3, line: 337, type: !22)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 336, column: 17)
!1210 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 334, column: 19)
!1211 = !DILocalVariable(name: "__s1_len", scope: !1212, file: !3, line: 340, type: !25)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 340, column: 41)
!1213 = !DILocalVariable(name: "__s2_len", scope: !1212, file: !3, line: 340, type: !25)
!1214 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!1215 = !DILocation(line: 294, column: 47, scope: !1185, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 703, column: 3, scope: !718)
!1217 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!1218 = !DILocation(line: 294, column: 28, scope: !1185, inlinedAt: !1216)
!1219 = !DILocation(line: 295, column: 28, scope: !1185, inlinedAt: !1216)
!1220 = !DILocation(line: 295, column: 47, scope: !1185, inlinedAt: !1216)
!1221 = !DILocation(line: 295, column: 65, scope: !1185, inlinedAt: !1216)
!1222 = !DILocation(line: 297, column: 29, scope: !1185, inlinedAt: !1216)
!1223 = !DILocation(line: 297, column: 55, scope: !1224, inlinedAt: !1216)
!1224 = !DILexicalBlockFile(scope: !1185, file: !3, discriminator: 2)
!1225 = !DILocation(line: 297, column: 41, scope: !1226, inlinedAt: !1216)
!1226 = !DILexicalBlockFile(scope: !1185, file: !3, discriminator: 1)
!1227 = !DILocation(line: 297, column: 24, scope: !1185, inlinedAt: !1216)
!1228 = !DILocation(line: 297, column: 8, scope: !1185, inlinedAt: !1216)
!1229 = !DILocation(line: 299, column: 7, scope: !1185, inlinedAt: !1216)
!1230 = !DILocation(line: 301, column: 19, scope: !1195, inlinedAt: !1216)
!1231 = !DILocation(line: 302, column: 19, scope: !1195, inlinedAt: !1216)
!1232 = !DILocation(line: 306, column: 23, scope: !1199, inlinedAt: !1216)
!1233 = !DILocation(line: 307, column: 15, scope: !1234, inlinedAt: !1216)
!1234 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 307, column: 15)
!1235 = !DILocation(line: 307, column: 31, scope: !1234, inlinedAt: !1216)
!1236 = !DILocation(line: 307, column: 15, scope: !1199, inlinedAt: !1216)
!1237 = !DILocation(line: 308, column: 13, scope: !1234, inlinedAt: !1216)
!1238 = !DILocation(line: 309, column: 15, scope: !1239, inlinedAt: !1216)
!1239 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 309, column: 15)
!1240 = !DILocation(line: 309, column: 15, scope: !1199, inlinedAt: !1216)
!1241 = !DILocation(line: 311, column: 25, scope: !1199, inlinedAt: !1216)
!1242 = !DILocation(line: 311, column: 21, scope: !1199, inlinedAt: !1216)
!1243 = !DILocation(line: 312, column: 54, scope: !1244, inlinedAt: !1216)
!1244 = !DILexicalBlockFile(scope: !1199, file: !3, discriminator: 2)
!1245 = !DILocation(line: 312, column: 40, scope: !1246, inlinedAt: !1216)
!1246 = !DILexicalBlockFile(scope: !1199, file: !3, discriminator: 1)
!1247 = !DILocation(line: 312, column: 27, scope: !1199, inlinedAt: !1216)
!1248 = !DILocation(line: 312, column: 24, scope: !1249, inlinedAt: !1216)
!1249 = !DILexicalBlockFile(scope: !1199, file: !3, discriminator: 3)
!1250 = !DILocation(line: 314, column: 15, scope: !1199, inlinedAt: !1216)
!1251 = !DILocation(line: 323, column: 20, scope: !1203, inlinedAt: !1216)
!1252 = !DILocation(line: 324, column: 15, scope: !1203, inlinedAt: !1216)
!1253 = !DILocation(line: 325, column: 15, scope: !1203, inlinedAt: !1216)
!1254 = !DILocation(line: 327, column: 15, scope: !1203, inlinedAt: !1216)
!1255 = !DILocation(line: 325, column: 21, scope: !1203, inlinedAt: !1216)
!1256 = !DILocation(line: 328, column: 26, scope: !1203, inlinedAt: !1216)
!1257 = !DILocation(line: 326, column: 19, scope: !1203, inlinedAt: !1216)
!1258 = !DILocation(line: 329, column: 15, scope: !1203, inlinedAt: !1216)
!1259 = !DILocation(line: 330, column: 28, scope: !1260, inlinedAt: !1216)
!1260 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 330, column: 19)
!1261 = !DILocation(line: 330, column: 19, scope: !1203, inlinedAt: !1216)
!1262 = !DILocation(line: 331, column: 17, scope: !1260, inlinedAt: !1216)
!1263 = !DILocation(line: 332, column: 15, scope: !1203, inlinedAt: !1216)
!1264 = !DILocation(line: 332, column: 21, scope: !1203, inlinedAt: !1216)
!1265 = !DILocation(line: 332, column: 30, scope: !1203, inlinedAt: !1216)
!1266 = !DILocation(line: 332, column: 51, scope: !1203, inlinedAt: !1216)
!1267 = !DILocation(line: 334, column: 29, scope: !1210, inlinedAt: !1216)
!1268 = !DILocation(line: 334, column: 35, scope: !1210, inlinedAt: !1216)
!1269 = !DILocation(line: 324, column: 27, scope: !1203, inlinedAt: !1216)
!1270 = !DILocation(line: 334, column: 19, scope: !1210, inlinedAt: !1216)
!1271 = !DILocation(line: 335, column: 22, scope: !1272, inlinedAt: !1216)
!1272 = !DILexicalBlockFile(scope: !1210, file: !3, discriminator: 1)
!1273 = !DILocation(line: 335, column: 28, scope: !1272, inlinedAt: !1216)
!1274 = !DILocation(line: 335, column: 19, scope: !1210, inlinedAt: !1216)
!1275 = !DILocation(line: 337, column: 19, scope: !1209, inlinedAt: !1216)
!1276 = !DILocation(line: 337, column: 25, scope: !1209, inlinedAt: !1216)
!1277 = !DILocation(line: 338, column: 23, scope: !1278, inlinedAt: !1216)
!1278 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 338, column: 23)
!1279 = !DILocation(line: 338, column: 51, scope: !1278, inlinedAt: !1216)
!1280 = !DILocation(line: 338, column: 23, scope: !1209, inlinedAt: !1216)
!1281 = !DILocation(line: 339, column: 21, scope: !1278, inlinedAt: !1216)
!1282 = !DILocation(line: 340, column: 41, scope: !1212, inlinedAt: !1216)
!1283 = !DILocation(line: 340, column: 40, scope: !1209, inlinedAt: !1216)
!1284 = !DILocation(line: 340, column: 38, scope: !1209, inlinedAt: !1216)
!1285 = !DILocation(line: 341, column: 19, scope: !1209, inlinedAt: !1216)
!1286 = !DILocation(line: 342, column: 17, scope: !1210, inlinedAt: !1216)
!1287 = !DILocation(line: 342, column: 17, scope: !1209, inlinedAt: !1216)
!1288 = !DILocation(line: 344, column: 21, scope: !1203, inlinedAt: !1216)
!1289 = !DILocation(line: 344, column: 15, scope: !1203, inlinedAt: !1216)
!1290 = !DILocation(line: 347, column: 13, scope: !1204, inlinedAt: !1216)
!1291 = !DILocation(line: 349, column: 15, scope: !1292, inlinedAt: !1216)
!1292 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 349, column: 15)
!1293 = !DILocation(line: 349, column: 41, scope: !1292, inlinedAt: !1216)
!1294 = !DILocation(line: 349, column: 15, scope: !1199, inlinedAt: !1216)
!1295 = !DILocation(line: 350, column: 13, scope: !1292, inlinedAt: !1216)
!1296 = !DILocation(line: 304, column: 22, scope: !1297, inlinedAt: !1216)
!1297 = !DILexicalBlockFile(scope: !1200, file: !3, discriminator: 1)
!1298 = distinct !{!1298, !1299, !1300}
!1299 = !DILocation(line: 304, column: 7, scope: !1201)
!1300 = !DILocation(line: 351, column: 9, scope: !1201)
!1301 = !DILocation(line: 353, column: 11, scope: !1302, inlinedAt: !1216)
!1302 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 353, column: 11)
!1303 = !DILocation(line: 353, column: 38, scope: !1302, inlinedAt: !1216)
!1304 = !DILocation(line: 353, column: 11, scope: !1195, inlinedAt: !1216)
!1305 = !DILocation(line: 354, column: 9, scope: !1302, inlinedAt: !1216)
!1306 = !DILocation(line: 706, column: 1, scope: !718)
!1307 = distinct !DISubprogram(name: "seq_fast", scope: !3, file: !3, line: 449, type: !1308, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1310)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!40, !33, !33}
!1310 = !{!1311, !1312, !1313, !1314, !1316, !1317, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1331, !1332, !1333, !1334}
!1311 = !DILocalVariable(name: "a", arg: 1, scope: !1307, file: !3, line: 449, type: !33)
!1312 = !DILocalVariable(name: "b", arg: 2, scope: !1307, file: !3, line: 449, type: !33)
!1313 = !DILocalVariable(name: "inf", scope: !1307, file: !3, line: 451, type: !40)
!1314 = !DILocalVariable(name: "__s1_len", scope: !1315, file: !3, line: 451, type: !25)
!1315 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 451, column: 14)
!1316 = !DILocalVariable(name: "__s2_len", scope: !1315, file: !3, line: 451, type: !25)
!1317 = !DILocalVariable(name: "__s2", scope: !1318, file: !3, line: 451, type: !30)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 451, column: 14)
!1319 = !DILocalVariable(name: "__result", scope: !1318, file: !3, line: 451, type: !35)
!1320 = !DILocalVariable(name: "p_len", scope: !1307, file: !3, line: 458, type: !25)
!1321 = !DILocalVariable(name: "q_len", scope: !1307, file: !3, line: 459, type: !25)
!1322 = !DILocalVariable(name: "inc_size", scope: !1307, file: !3, line: 463, type: !25)
!1323 = !DILocalVariable(name: "p0", scope: !1307, file: !3, line: 466, type: !22)
!1324 = !DILocalVariable(name: "p", scope: !1307, file: !3, line: 467, type: !22)
!1325 = !DILocalVariable(name: "q", scope: !1307, file: !3, line: 468, type: !22)
!1326 = !DILocalVariable(name: "q0", scope: !1307, file: !3, line: 469, type: !22)
!1327 = !DILocalVariable(name: "ok", scope: !1307, file: !3, line: 478, type: !40)
!1328 = !DILocalVariable(name: "buf_size", scope: !1329, file: !3, line: 484, type: !25)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 480, column: 5)
!1330 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 479, column: 7)
!1331 = !DILocalVariable(name: "buf", scope: !1329, file: !3, line: 485, type: !22)
!1332 = !DILocalVariable(name: "buf_end", scope: !1329, file: !3, line: 486, type: !33)
!1333 = !DILocalVariable(name: "bufp", scope: !1329, file: !3, line: 488, type: !22)
!1334 = !DILocalVariable(name: "buf_offset", scope: !1335, file: !3, line: 508, type: !25)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 507, column: 17)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 506, column: 19)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 501, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 500, column: 15)
!1339 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 495, column: 9)
!1340 = !DILocation(line: 449, column: 23, scope: !1307)
!1341 = !DILocation(line: 449, column: 38, scope: !1307)
!1342 = !DILocation(line: 451, column: 14, scope: !1315)
!1343 = !DILocation(line: 451, column: 14, scope: !1318)
!1344 = !DILocation(line: 451, column: 14, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1318, file: !3, discriminator: 2)
!1346 = !DILocation(line: 451, column: 14, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1348, file: !3, discriminator: 3)
!1348 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 451, column: 14)
!1349 = !DILocation(line: 451, column: 14, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1348, file: !3, discriminator: 2)
!1351 = !DILocation(line: 451, column: 14, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !3, discriminator: 4)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 451, column: 14)
!1354 = !DILocation(line: 451, column: 14, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1356, file: !3, discriminator: 5)
!1356 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 451, column: 14)
!1357 = !DILocation(line: 451, column: 14, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1356, file: !3, discriminator: 4)
!1359 = !DILocation(line: 451, column: 14, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1361, file: !3, discriminator: 6)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 451, column: 14)
!1362 = !DILocation(line: 451, column: 14, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1364, file: !3, discriminator: 7)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 451, column: 14)
!1365 = !DILocation(line: 451, column: 14, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1364, file: !3, discriminator: 6)
!1367 = !DILocation(line: 451, column: 14, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1364, file: !3, discriminator: 8)
!1369 = !DILocation(line: 451, column: 14, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1315, file: !3, discriminator: 11)
!1371 = !DILocalVariable(name: "s", arg: 1, scope: !1372, file: !3, line: 433, type: !33)
!1372 = distinct !DISubprogram(name: "trim_leading_zeros", scope: !3, file: !3, line: 433, type: !1373, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!33, !33}
!1375 = !{!1371, !1376}
!1376 = !DILocalVariable(name: "p", scope: !1372, file: !3, line: 435, type: !33)
!1377 = !DILocation(line: 433, column: 33, scope: !1372, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 455, column: 7, scope: !1307)
!1379 = !DILocation(line: 435, column: 15, scope: !1372, inlinedAt: !1378)
!1380 = !DILocation(line: 436, column: 3, scope: !1372, inlinedAt: !1378)
!1381 = !DILocation(line: 436, column: 10, scope: !1382, inlinedAt: !1378)
!1382 = !DILexicalBlockFile(scope: !1372, file: !3, discriminator: 1)
!1383 = !DILocation(line: 436, column: 3, scope: !1382, inlinedAt: !1378)
!1384 = !DILocation(line: 437, column: 5, scope: !1372, inlinedAt: !1378)
!1385 = !DILocation(line: 436, column: 3, scope: !1386, inlinedAt: !1378)
!1386 = !DILexicalBlockFile(scope: !1372, file: !3, discriminator: 2)
!1387 = distinct !{!1387, !1388, !1389}
!1388 = !DILocation(line: 436, column: 3, scope: !1372)
!1389 = !DILocation(line: 437, column: 7, scope: !1372)
!1390 = !DILocation(line: 440, column: 16, scope: !1391, inlinedAt: !1378)
!1391 = !DILexicalBlockFile(scope: !1392, file: !3, discriminator: 1)
!1392 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 440, column: 7)
!1393 = !DILocation(line: 441, column: 5, scope: !1392, inlinedAt: !1378)
!1394 = !DILocation(line: 440, column: 7, scope: !1382, inlinedAt: !1378)
!1395 = !DILocation(line: 433, column: 33, scope: !1372, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 456, column: 7, scope: !1307)
!1397 = !DILocation(line: 435, column: 15, scope: !1372, inlinedAt: !1396)
!1398 = !DILocation(line: 436, column: 3, scope: !1372, inlinedAt: !1396)
!1399 = !DILocation(line: 436, column: 10, scope: !1382, inlinedAt: !1396)
!1400 = !DILocation(line: 436, column: 3, scope: !1382, inlinedAt: !1396)
!1401 = !DILocation(line: 437, column: 5, scope: !1372, inlinedAt: !1396)
!1402 = !DILocation(line: 436, column: 3, scope: !1386, inlinedAt: !1396)
!1403 = !DILocation(line: 440, column: 16, scope: !1391, inlinedAt: !1396)
!1404 = !DILocation(line: 441, column: 5, scope: !1392, inlinedAt: !1396)
!1405 = !DILocation(line: 440, column: 7, scope: !1382, inlinedAt: !1396)
!1406 = !DILocation(line: 458, column: 18, scope: !1307)
!1407 = !DILocation(line: 458, column: 10, scope: !1307)
!1408 = !DILocation(line: 459, column: 18, scope: !1307)
!1409 = !DILocation(line: 459, column: 28, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1307, file: !3, discriminator: 2)
!1411 = !DILocation(line: 459, column: 18, scope: !1410)
!1412 = !DILocation(line: 459, column: 18, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1307, file: !3, discriminator: 3)
!1414 = !DILocation(line: 459, column: 10, scope: !1307)
!1415 = !DILocation(line: 463, column: 21, scope: !1307)
!1416 = !DILocation(line: 463, column: 21, scope: !1413)
!1417 = !DILocation(line: 463, column: 10, scope: !1307)
!1418 = !DILocation(line: 466, column: 32, scope: !1307)
!1419 = !DILocation(line: 466, column: 14, scope: !1307)
!1420 = !DILocation(line: 466, column: 9, scope: !1307)
!1421 = !DILocation(line: 467, column: 24, scope: !1307)
!1422 = !DILocation(line: 467, column: 35, scope: !1307)
!1423 = !DILocation(line: 467, column: 13, scope: !1307)
!1424 = !DILocation(line: 467, column: 9, scope: !1307)
!1425 = !DILocation(line: 470, column: 7, scope: !1307)
!1426 = !DILocation(line: 472, column: 12, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 471, column: 5)
!1428 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 470, column: 7)
!1429 = !DILocation(line: 469, column: 9, scope: !1307)
!1430 = !DILocation(line: 473, column: 22, scope: !1427)
!1431 = !DILocation(line: 473, column: 33, scope: !1427)
!1432 = !DILocation(line: 473, column: 51, scope: !1427)
!1433 = !DILocation(line: 473, column: 11, scope: !1427)
!1434 = !DILocation(line: 468, column: 9, scope: !1307)
!1435 = !DILocalVariable(name: "a", arg: 1, scope: !1436, file: !3, line: 421, type: !33)
!1436 = distinct !DISubprogram(name: "cmp", scope: !3, file: !3, line: 421, type: !1437, isLocal: true, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!35, !33, !25, !33, !25}
!1439 = !{!1435, !1440, !1441, !1442, !1443, !1445}
!1440 = !DILocalVariable(name: "a_len", arg: 2, scope: !1436, file: !3, line: 421, type: !25)
!1441 = !DILocalVariable(name: "b", arg: 3, scope: !1436, file: !3, line: 421, type: !33)
!1442 = !DILocalVariable(name: "b_len", arg: 4, scope: !1436, file: !3, line: 421, type: !25)
!1443 = !DILocalVariable(name: "__s1_len", scope: !1444, file: !3, line: 427, type: !25)
!1444 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 427, column: 11)
!1445 = !DILocalVariable(name: "__s2_len", scope: !1444, file: !3, line: 427, type: !25)
!1446 = !DILocation(line: 421, column: 18, scope: !1436, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 478, column: 20, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1307, file: !3, discriminator: 1)
!1449 = !DILocation(line: 421, column: 28, scope: !1436, inlinedAt: !1447)
!1450 = !DILocation(line: 421, column: 47, scope: !1436, inlinedAt: !1447)
!1451 = !DILocation(line: 421, column: 57, scope: !1436, inlinedAt: !1447)
!1452 = !DILocation(line: 423, column: 13, scope: !1453, inlinedAt: !1447)
!1453 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 423, column: 7)
!1454 = !DILocation(line: 423, column: 7, scope: !1436, inlinedAt: !1447)
!1455 = !DILocation(line: 425, column: 13, scope: !1456, inlinedAt: !1447)
!1456 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 425, column: 7)
!1457 = !DILocation(line: 425, column: 7, scope: !1436, inlinedAt: !1447)
!1458 = !DILocation(line: 427, column: 11, scope: !1444, inlinedAt: !1447)
!1459 = !DILocation(line: 478, column: 45, scope: !1448)
!1460 = !DILocation(line: 479, column: 7, scope: !1307)
!1461 = !DILocation(line: 484, column: 25, scope: !1329)
!1462 = !DILocation(line: 484, column: 14, scope: !1329)
!1463 = !DILocation(line: 485, column: 19, scope: !1329)
!1464 = !DILocation(line: 485, column: 13, scope: !1329)
!1465 = !DILocation(line: 486, column: 33, scope: !1329)
!1466 = !DILocation(line: 486, column: 19, scope: !1329)
!1467 = !DILocation(line: 488, column: 13, scope: !1329)
!1468 = !DILocalVariable(name: "__dest", arg: 1, scope: !1469, file: !955, line: 64, type: !1472)
!1469 = distinct !DISubprogram(name: "mempcpy", scope: !955, file: !955, line: 64, type: !1470, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1474)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!24, !1472, !1473, !25}
!1472 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!1473 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!1474 = !{!1468, !1475, !1476}
!1475 = !DILocalVariable(name: "__src", arg: 2, scope: !1469, file: !955, line: 64, type: !1473)
!1476 = !DILocalVariable(name: "__len", arg: 3, scope: !1469, file: !955, line: 64, type: !25)
!1477 = !DILocation(line: 64, column: 1, scope: !1469, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 491, column: 14, scope: !1329)
!1479 = !DILocation(line: 67, column: 57, scope: !1469, inlinedAt: !1478)
!1480 = !DILocation(line: 67, column: 10, scope: !1469, inlinedAt: !1478)
!1481 = !DILocation(line: 494, column: 7, scope: !1329)
!1482 = !DILocation(line: 423, column: 13, scope: !1453, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 494, column: 21, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1329, file: !3, discriminator: 2)
!1485 = !DILocation(line: 494, column: 18, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1329, file: !3, discriminator: 1)
!1487 = !DILocation(line: 421, column: 18, scope: !1436, inlinedAt: !1483)
!1488 = !DILocation(line: 421, column: 28, scope: !1436, inlinedAt: !1483)
!1489 = !DILocation(line: 421, column: 47, scope: !1436, inlinedAt: !1483)
!1490 = !DILocation(line: 421, column: 57, scope: !1436, inlinedAt: !1483)
!1491 = !DILocation(line: 425, column: 13, scope: !1456, inlinedAt: !1483)
!1492 = !DILocation(line: 425, column: 7, scope: !1436, inlinedAt: !1483)
!1493 = !DILocation(line: 427, column: 11, scope: !1444, inlinedAt: !1483)
!1494 = !DILocation(line: 494, column: 46, scope: !1484)
!1495 = !DILocation(line: 494, column: 7, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1329, file: !3, discriminator: 3)
!1497 = !DILocation(line: 496, column: 22, scope: !1339)
!1498 = !DILocation(line: 496, column: 21, scope: !1339)
!1499 = !DILocation(line: 496, column: 16, scope: !1339)
!1500 = !DILocation(line: 496, column: 19, scope: !1339)
!1501 = !DILocalVariable(name: "s", scope: !1502, file: !3, line: 404, type: !22)
!1502 = distinct !DISubprogram(name: "incr", scope: !3, file: !3, line: 402, type: !1503, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !721, !617}
!1505 = !{!1506, !1507, !1501, !1508}
!1506 = !DILocalVariable(name: "s0", arg: 1, scope: !1502, file: !3, line: 402, type: !721)
!1507 = !DILocalVariable(name: "s_len", arg: 2, scope: !1502, file: !3, line: 402, type: !617)
!1508 = !DILocalVariable(name: "endp", scope: !1502, file: !3, line: 405, type: !22)
!1509 = !DILocation(line: 404, column: 9, scope: !1502, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 497, column: 11, scope: !1339)
!1511 = !DILocation(line: 405, column: 18, scope: !1502, inlinedAt: !1510)
!1512 = !DILocation(line: 405, column: 27, scope: !1502, inlinedAt: !1510)
!1513 = !DILocation(line: 405, column: 9, scope: !1502, inlinedAt: !1510)
!1514 = !DILocation(line: 407, column: 3, scope: !1502, inlinedAt: !1510)
!1515 = distinct !{!1515, !1516, !1517}
!1516 = !DILocation(line: 407, column: 3, scope: !1502)
!1517 = !DILocation(line: 413, column: 19, scope: !1502)
!1518 = !DILocation(line: 409, column: 18, scope: !1519, inlinedAt: !1510)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 409, column: 11)
!1520 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 408, column: 5)
!1521 = !DILocation(line: 409, column: 21, scope: !1519, inlinedAt: !1510)
!1522 = !DILocation(line: 409, column: 11, scope: !1520, inlinedAt: !1510)
!1523 = !DILocation(line: 411, column: 12, scope: !1520, inlinedAt: !1510)
!1524 = !DILocation(line: 411, column: 15, scope: !1520, inlinedAt: !1510)
!1525 = !DILocation(line: 413, column: 15, scope: !1502, inlinedAt: !1510)
!1526 = !DILocation(line: 412, column: 5, scope: !1527, inlinedAt: !1510)
!1527 = !DILexicalBlockFile(scope: !1520, file: !3, discriminator: 1)
!1528 = !DILocation(line: 414, column: 4, scope: !1502, inlinedAt: !1510)
!1529 = !DILocation(line: 414, column: 12, scope: !1502, inlinedAt: !1510)
!1530 = !DILocation(line: 415, column: 3, scope: !1502, inlinedAt: !1510)
!1531 = !DILocation(line: 416, column: 1, scope: !1502, inlinedAt: !1510)
!1532 = !DILocation(line: 500, column: 21, scope: !1338)
!1533 = !DILocation(line: 500, column: 15, scope: !1339)
!1534 = !DILocation(line: 502, column: 24, scope: !1337)
!1535 = !DILocation(line: 503, column: 43, scope: !1337)
!1536 = !DILocation(line: 503, column: 20, scope: !1337)
!1537 = !DILocation(line: 504, column: 31, scope: !1337)
!1538 = !DILocation(line: 504, column: 50, scope: !1337)
!1539 = !DILocation(line: 504, column: 19, scope: !1337)
!1540 = !DILocation(line: 506, column: 45, scope: !1336)
!1541 = !DILocation(line: 506, column: 28, scope: !1336)
!1542 = !DILocation(line: 506, column: 19, scope: !1337)
!1543 = !DILocation(line: 508, column: 44, scope: !1335)
!1544 = !DILocation(line: 508, column: 26, scope: !1335)
!1545 = !DILocation(line: 510, column: 25, scope: !1335)
!1546 = !DILocation(line: 511, column: 33, scope: !1335)
!1547 = !DILocation(line: 512, column: 30, scope: !1335)
!1548 = !DILocation(line: 513, column: 17, scope: !1335)
!1549 = !DILocation(line: 64, column: 1, scope: !1469, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 516, column: 18, scope: !1339)
!1551 = !DILocation(line: 67, column: 57, scope: !1469, inlinedAt: !1550)
!1552 = !DILocation(line: 67, column: 10, scope: !1469, inlinedAt: !1550)
!1553 = !DILocation(line: 519, column: 23, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 519, column: 15)
!1555 = !DILocation(line: 519, column: 37, scope: !1554)
!1556 = !DILocation(line: 519, column: 15, scope: !1339)
!1557 = distinct !{!1557, !1481, !1558}
!1558 = !DILocation(line: 525, column: 9, scope: !1329)
!1559 = !DILocation(line: 521, column: 19, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 521, column: 19)
!1561 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 520, column: 13)
!1562 = !DILocation(line: 521, column: 55, scope: !1560)
!1563 = !DILocation(line: 521, column: 19, scope: !1561)
!1564 = !DILocation(line: 522, column: 17, scope: !1560)
!1565 = !DILocation(line: 528, column: 12, scope: !1329)
!1566 = !DILocation(line: 528, column: 15, scope: !1329)
!1567 = !DILocation(line: 529, column: 11, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 529, column: 11)
!1569 = !DILocation(line: 529, column: 47, scope: !1568)
!1570 = !DILocation(line: 529, column: 11, scope: !1329)
!1571 = !DILocation(line: 530, column: 9, scope: !1568)
!1572 = !DILocation(line: 535, column: 3, scope: !1307)
!1573 = !DILocation(line: 536, column: 3, scope: !1307)
!1574 = !DILocation(line: 537, column: 3, scope: !1307)
!1575 = distinct !DISubprogram(name: "scan_arg", scope: !3, file: !3, line: 141, type: !1576, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!95, !33}
!1578 = !{!1579, !1580, !1581, !1582, !1585, !1586}
!1579 = !DILocalVariable(name: "arg", arg: 1, scope: !1575, file: !3, line: 141, type: !33)
!1580 = !DILocalVariable(name: "ret", scope: !1575, file: !3, line: 143, type: !95)
!1581 = !DILocalVariable(name: "decimal_point", scope: !1575, file: !3, line: 167, type: !33)
!1582 = !DILocalVariable(name: "fraction_len", scope: !1583, file: !3, line: 174, type: !25)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 173, column: 5)
!1584 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 172, column: 7)
!1585 = !DILocalVariable(name: "e", scope: !1583, file: !3, line: 187, type: !33)
!1586 = !DILocalVariable(name: "exponent", scope: !1587, file: !3, line: 192, type: !1589)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 191, column: 9)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 190, column: 11)
!1589 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1590 = !DILocation(line: 141, column: 23, scope: !1575)
!1591 = !DILocation(line: 143, column: 3, scope: !1575)
!1592 = !DILocation(line: 145, column: 35, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 145, column: 7)
!1594 = !DILocation(line: 145, column: 9, scope: !1593)
!1595 = !DILocation(line: 145, column: 7, scope: !1575)
!1596 = !DILocation(line: 147, column: 20, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 146, column: 5)
!1598 = !DILocation(line: 147, column: 62, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1597, file: !3, discriminator: 1)
!1600 = !DILocation(line: 147, column: 7, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1597, file: !3, discriminator: 2)
!1602 = !DILocation(line: 148, column: 7, scope: !1597)
!1603 = !DILocation(line: 151, column: 7, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 151, column: 7)
!1605 = !{!1142, !1143, i64 0}
!1606 = !DILocation(line: 151, column: 7, scope: !1575)
!1607 = !DILocation(line: 159, column: 10, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1575, file: !3, discriminator: 1)
!1609 = !DILocation(line: 153, column: 20, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 152, column: 5)
!1611 = !DILocation(line: 153, column: 50, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1610, file: !3, discriminator: 1)
!1613 = !DILocation(line: 154, column: 14, scope: !1610)
!1614 = !DILocation(line: 153, column: 7, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1610, file: !3, discriminator: 2)
!1616 = !DILocation(line: 155, column: 7, scope: !1610)
!1617 = !{!1618, !1618, i64 0}
!1618 = !{!"short", !666, i64 0}
!1619 = !DILocation(line: 159, column: 44, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1575, file: !3, discriminator: 2)
!1621 = !DILocation(line: 159, column: 36, scope: !1608)
!1622 = !DILocation(line: 160, column: 8, scope: !1575)
!1623 = distinct !{!1623, !1624, !1622}
!1624 = !DILocation(line: 159, column: 3, scope: !1575)
!1625 = !DILocation(line: 163, column: 7, scope: !1575)
!1626 = !DILocation(line: 163, column: 13, scope: !1575)
!1627 = !{!1142, !1144, i64 16}
!1628 = !DILocation(line: 164, column: 7, scope: !1575)
!1629 = !DILocation(line: 164, column: 17, scope: !1575)
!1630 = !DILocation(line: 167, column: 31, scope: !1575)
!1631 = !DILocation(line: 167, column: 15, scope: !1575)
!1632 = !DILocation(line: 168, column: 9, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 168, column: 7)
!1634 = !DILocation(line: 168, column: 23, scope: !1633)
!1635 = !DILocation(line: 168, column: 28, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1633, file: !3, discriminator: 3)
!1637 = !DILocation(line: 168, column: 7, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1575, file: !3, discriminator: 3)
!1639 = !DILocation(line: 169, column: 19, scope: !1633)
!1640 = !DILocation(line: 169, column: 5, scope: !1633)
!1641 = !DILocation(line: 172, column: 13, scope: !1584)
!1642 = !DILocation(line: 172, column: 9, scope: !1584)
!1643 = !DILocation(line: 172, column: 37, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1584, file: !3, discriminator: 1)
!1645 = !DILocation(line: 172, column: 34, scope: !1584)
!1646 = !DILocation(line: 174, column: 14, scope: !1583)
!1647 = !DILocation(line: 175, column: 19, scope: !1583)
!1648 = !DILocation(line: 175, column: 17, scope: !1583)
!1649 = !DILocation(line: 177, column: 11, scope: !1583)
!1650 = !DILocation(line: 179, column: 26, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 178, column: 9)
!1652 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 177, column: 11)
!1653 = !DILocation(line: 180, column: 28, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 180, column: 15)
!1655 = !DILocation(line: 180, column: 15, scope: !1651)
!1656 = !DILocation(line: 181, column: 29, scope: !1654)
!1657 = !DILocation(line: 181, column: 27, scope: !1654)
!1658 = !DILocation(line: 182, column: 38, scope: !1651)
!1659 = !DILocation(line: 182, column: 25, scope: !1651)
!1660 = !DILocation(line: 184, column: 42, scope: !1651)
!1661 = !DILocation(line: 185, column: 28, scope: !1651)
!1662 = !DILocation(line: 185, column: 33, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1651, file: !3, discriminator: 1)
!1664 = !DILocation(line: 185, column: 31, scope: !1663)
!1665 = !DILocation(line: 185, column: 28, scope: !1663)
!1666 = !DILocation(line: 182, column: 25, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1651, file: !3, discriminator: 2)
!1668 = !DILocation(line: 182, column: 21, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1651, file: !3, discriminator: 3)
!1670 = !DILocation(line: 186, column: 9, scope: !1651)
!1671 = !DILocation(line: 187, column: 23, scope: !1583)
!1672 = !DILocation(line: 187, column: 19, scope: !1583)
!1673 = !DILocation(line: 188, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 188, column: 11)
!1675 = !DILocation(line: 188, column: 11, scope: !1583)
!1676 = !DILocation(line: 189, column: 13, scope: !1674)
!1677 = !DILocation(line: 190, column: 11, scope: !1588)
!1678 = !DILocation(line: 190, column: 11, scope: !1583)
!1679 = !DILocation(line: 192, column: 37, scope: !1587)
!1680 = !DILocation(line: 192, column: 27, scope: !1587)
!1681 = !DILocation(line: 192, column: 16, scope: !1587)
!1682 = !DILocation(line: 193, column: 37, scope: !1587)
!1683 = !DILocation(line: 193, column: 28, scope: !1587)
!1684 = !DILocation(line: 194, column: 45, scope: !1587)
!1685 = !DILocation(line: 193, column: 25, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1587, file: !3, discriminator: 3)
!1687 = !DILocation(line: 196, column: 24, scope: !1587)
!1688 = !DILocation(line: 196, column: 42, scope: !1587)
!1689 = !DILocation(line: 196, column: 21, scope: !1587)
!1690 = !DILocation(line: 196, column: 37, scope: !1587)
!1691 = !DILocation(line: 198, column: 15, scope: !1587)
!1692 = !DILocation(line: 200, column: 19, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 199, column: 13)
!1694 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 198, column: 15)
!1695 = !DILocation(line: 202, column: 42, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 202, column: 23)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 201, column: 17)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 200, column: 19)
!1699 = !DILocation(line: 202, column: 25, scope: !1696)
!1700 = !DILocation(line: 207, column: 27, scope: !1693)
!1701 = !DILocation(line: 207, column: 26, scope: !1693)
!1702 = !DILocation(line: 208, column: 13, scope: !1693)
!1703 = !DILocation(line: 211, column: 33, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 211, column: 19)
!1705 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 210, column: 13)
!1706 = !DILocation(line: 211, column: 50, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1704, file: !3, discriminator: 1)
!1708 = !DILocation(line: 211, column: 58, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1704, file: !3, discriminator: 2)
!1710 = !DILocation(line: 211, column: 55, scope: !1707)
!1711 = !DILocation(line: 212, column: 26, scope: !1704)
!1712 = !DILocation(line: 212, column: 17, scope: !1704)
!1713 = !DILocation(line: 213, column: 27, scope: !1705)
!1714 = !DILocation(line: 213, column: 24, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1705, file: !3, discriminator: 3)
!1716 = !DILocation(line: 215, column: 21, scope: !1587)
!1717 = !DILocation(line: 216, column: 9, scope: !1587)
!1718 = !DILocation(line: 219, column: 10, scope: !1575)
!1719 = !{i64 0, i64 16, !1720, i64 16, i64 8, !1721, i64 24, i64 4, !770}
!1720 = !{!1143, !1143, i64 0}
!1721 = !{!1144, !1144, i64 0}
!1722 = !DILocation(line: 220, column: 1, scope: !1575)
!1723 = distinct !DISubprogram(name: "io_error", scope: !3, file: !3, line: 283, type: !680, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !124)
!1724 = !DILocation(line: 286, column: 3, scope: !1723)
!1725 = !DILocation(line: 287, column: 3, scope: !1723)
!1726 = !DILocation(line: 287, column: 3, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1723, file: !3, discriminator: 1)
!1728 = !DILocation(line: 287, column: 3, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1723, file: !3, discriminator: 2)
!1730 = distinct !DISubprogram(name: "c_strtold", scope: !153, file: !153, line: 66, type: !1731, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!99, !33, !721}
!1733 = !{!1734, !1735, !1736, !1737}
!1734 = !DILocalVariable(name: "nptr", arg: 1, scope: !1730, file: !153, line: 66, type: !33)
!1735 = !DILocalVariable(name: "endptr", arg: 2, scope: !1730, file: !153, line: 66, type: !721)
!1736 = !DILocalVariable(name: "r", scope: !1730, file: !153, line: 68, type: !99)
!1737 = !DILocalVariable(name: "locale", scope: !1730, file: !153, line: 72, type: !131)
!1738 = !DILocation(line: 66, column: 23, scope: !1730)
!1739 = !DILocation(line: 66, column: 36, scope: !1730)
!1740 = !DILocation(line: 58, column: 8, scope: !1741, inlinedAt: !1745)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !153, line: 58, column: 7)
!1742 = distinct !DISubprogram(name: "c_locale", scope: !153, file: !153, line: 56, type: !1743, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !128, variables: !124)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!131}
!1745 = distinct !DILocation(line: 72, column: 21, scope: !1730)
!1746 = !DILocation(line: 58, column: 7, scope: !1742, inlinedAt: !1745)
!1747 = !DILocation(line: 59, column: 22, scope: !1741, inlinedAt: !1745)
!1748 = !DILocation(line: 59, column: 20, scope: !1741, inlinedAt: !1745)
!1749 = !DILocation(line: 59, column: 5, scope: !1741, inlinedAt: !1745)
!1750 = !DILocation(line: 60, column: 10, scope: !1742, inlinedAt: !1745)
!1751 = !DILocation(line: 72, column: 12, scope: !1730)
!1752 = !DILocation(line: 73, column: 8, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1730, file: !153, line: 73, column: 7)
!1754 = !DILocation(line: 73, column: 7, scope: !1730)
!1755 = !DILocation(line: 75, column: 11, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !153, line: 75, column: 11)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !153, line: 74, column: 5)
!1758 = !DILocation(line: 75, column: 11, scope: !1757)
!1759 = !DILocation(line: 76, column: 17, scope: !1756)
!1760 = !DILocation(line: 76, column: 9, scope: !1756)
!1761 = !DILocation(line: 80, column: 7, scope: !1730)
!1762 = !DILocation(line: 68, column: 10, scope: !1730)
!1763 = !DILocation(line: 111, column: 3, scope: !1730)
!1764 = !DILocation(line: 112, column: 1, scope: !1730)
!1765 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !162, file: !162, line: 41, type: !45, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !157, variables: !1766)
!1766 = !{!1767}
!1767 = !DILocalVariable(name: "file", arg: 1, scope: !1765, file: !162, line: 41, type: !33)
!1768 = !DILocation(line: 41, column: 41, scope: !1765)
!1769 = !DILocation(line: 43, column: 13, scope: !1765)
!1770 = !DILocation(line: 44, column: 1, scope: !1765)
!1771 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !162, file: !162, line: 78, type: !1772, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !157, variables: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !40}
!1774 = !{!1775}
!1775 = !DILocalVariable(name: "ignore", arg: 1, scope: !1771, file: !162, line: 78, type: !40)
!1776 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1777 = !DILocation(line: 78, column: 37, scope: !1771)
!1778 = !DILocation(line: 80, column: 16, scope: !1771)
!1779 = !{!1780, !1780, i64 0}
!1780 = !{!"_Bool", !666, i64 0}
!1781 = !DILocation(line: 81, column: 1, scope: !1771)
!1782 = distinct !DISubprogram(name: "close_stdout", scope: !162, file: !162, line: 107, type: !680, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !157, variables: !1783)
!1783 = !{!1784}
!1784 = !DILocalVariable(name: "write_error", scope: !1785, file: !162, line: 112, type: !33)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !162, line: 111, column: 5)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !162, line: 109, column: 7)
!1787 = !DILocation(line: 109, column: 21, scope: !1786)
!1788 = !DILocation(line: 109, column: 7, scope: !1786)
!1789 = !DILocation(line: 109, column: 29, scope: !1786)
!1790 = !DILocation(line: 110, column: 7, scope: !1786)
!1791 = !DILocation(line: 110, column: 12, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1786, file: !162, discriminator: 1)
!1793 = !{i8 0, i8 2}
!1794 = !DILocation(line: 114, column: 19, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1785, file: !162, line: 113, column: 11)
!1796 = !DILocation(line: 110, column: 25, scope: !1792)
!1797 = !DILocation(line: 110, column: 28, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1786, file: !162, discriminator: 2)
!1799 = !DILocation(line: 110, column: 34, scope: !1798)
!1800 = !DILocation(line: 109, column: 7, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1782, file: !162, discriminator: 1)
!1802 = !DILocation(line: 112, column: 33, scope: !1785)
!1803 = !DILocation(line: 112, column: 19, scope: !1785)
!1804 = !DILocation(line: 113, column: 11, scope: !1795)
!1805 = !DILocation(line: 113, column: 11, scope: !1785)
!1806 = !DILocation(line: 114, column: 36, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1795, file: !162, discriminator: 1)
!1808 = !DILocation(line: 114, column: 9, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1795, file: !162, discriminator: 2)
!1810 = !DILocation(line: 114, column: 9, scope: !1795)
!1811 = !DILocation(line: 117, column: 9, scope: !1807)
!1812 = !DILocation(line: 119, column: 14, scope: !1785)
!1813 = !DILocation(line: 119, column: 7, scope: !1785)
!1814 = !DILocation(line: 122, column: 22, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1782, file: !162, line: 122, column: 8)
!1816 = !DILocation(line: 122, column: 8, scope: !1815)
!1817 = !DILocation(line: 122, column: 30, scope: !1815)
!1818 = !DILocation(line: 122, column: 8, scope: !1782)
!1819 = !DILocation(line: 123, column: 13, scope: !1815)
!1820 = !DILocation(line: 123, column: 6, scope: !1815)
!1821 = !DILocation(line: 124, column: 1, scope: !1782)
!1822 = distinct !DISubprogram(name: "set_program_name", scope: !176, file: !176, line: 39, type: !45, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !172, variables: !1823)
!1823 = !{!1824, !1825, !1826}
!1824 = !DILocalVariable(name: "argv0", arg: 1, scope: !1822, file: !176, line: 39, type: !33)
!1825 = !DILocalVariable(name: "slash", scope: !1822, file: !176, line: 46, type: !33)
!1826 = !DILocalVariable(name: "base", scope: !1822, file: !176, line: 47, type: !33)
!1827 = !DILocation(line: 39, column: 31, scope: !1822)
!1828 = !DILocation(line: 51, column: 13, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1822, file: !176, line: 51, column: 7)
!1830 = !DILocation(line: 51, column: 7, scope: !1822)
!1831 = !DILocation(line: 55, column: 14, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !176, line: 52, column: 5)
!1833 = !DILocation(line: 54, column: 7, scope: !1832)
!1834 = !DILocation(line: 56, column: 7, scope: !1832)
!1835 = !DILocation(line: 59, column: 11, scope: !1822)
!1836 = !DILocation(line: 46, column: 15, scope: !1822)
!1837 = !DILocation(line: 60, column: 17, scope: !1822)
!1838 = !DILocation(line: 60, column: 33, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1822, file: !176, discriminator: 1)
!1840 = !DILocation(line: 60, column: 11, scope: !1822)
!1841 = !DILocation(line: 47, column: 15, scope: !1822)
!1842 = !DILocation(line: 61, column: 12, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1822, file: !176, line: 61, column: 7)
!1844 = !DILocation(line: 61, column: 20, scope: !1843)
!1845 = !DILocation(line: 61, column: 25, scope: !1843)
!1846 = !DILocation(line: 61, column: 28, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1843, file: !176, discriminator: 1)
!1848 = !DILocation(line: 61, column: 61, scope: !1847)
!1849 = !DILocation(line: 61, column: 7, scope: !1839)
!1850 = !DILocation(line: 64, column: 11, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !176, line: 64, column: 11)
!1852 = distinct !DILexicalBlock(scope: !1843, file: !176, line: 62, column: 5)
!1853 = !DILocation(line: 64, column: 36, scope: !1851)
!1854 = !DILocation(line: 64, column: 11, scope: !1852)
!1855 = !DILocation(line: 66, column: 24, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !176, line: 65, column: 9)
!1857 = !DILocation(line: 70, column: 41, scope: !1856)
!1858 = !DILocation(line: 72, column: 9, scope: !1856)
!1859 = !DILocation(line: 84, column: 16, scope: !1822)
!1860 = !DILocation(line: 90, column: 27, scope: !1822)
!1861 = !DILocation(line: 92, column: 1, scope: !1822)
!1862 = distinct !DISubprogram(name: "clone_quoting_options", scope: !205, file: !205, line: 114, type: !1863, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !1866)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!1865, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1866 = !{!1867, !1868, !1869}
!1867 = !DILocalVariable(name: "o", arg: 1, scope: !1862, file: !205, line: 114, type: !1865)
!1868 = !DILocalVariable(name: "e", scope: !1862, file: !205, line: 116, type: !35)
!1869 = !DILocalVariable(name: "p", scope: !1862, file: !205, line: 117, type: !1865)
!1870 = !DILocation(line: 114, column: 48, scope: !1862)
!1871 = !DILocation(line: 116, column: 11, scope: !1862)
!1872 = !DILocation(line: 116, column: 7, scope: !1862)
!1873 = !DILocation(line: 117, column: 40, scope: !1862)
!1874 = !DILocation(line: 117, column: 40, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1862, file: !205, discriminator: 3)
!1876 = !DILocation(line: 117, column: 31, scope: !1875)
!1877 = !DILocation(line: 117, column: 27, scope: !1862)
!1878 = !DILocation(line: 119, column: 9, scope: !1862)
!1879 = !DILocation(line: 120, column: 3, scope: !1862)
!1880 = distinct !DISubprogram(name: "get_quoting_style", scope: !205, file: !205, line: 125, type: !1881, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !1885)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!182, !1883}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "o", arg: 1, scope: !1880, file: !205, line: 125, type: !1883)
!1887 = !DILocation(line: 125, column: 50, scope: !1880)
!1888 = !DILocation(line: 127, column: 11, scope: !1880)
!1889 = !DILocation(line: 127, column: 46, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1880, file: !205, discriminator: 3)
!1891 = !{!1892, !666, i64 0}
!1892 = !{!"quoting_options", !666, i64 0, !771, i64 4, !666, i64 8, !665, i64 40, !665, i64 48}
!1893 = !DILocation(line: 127, column: 3, scope: !1890)
!1894 = distinct !DISubprogram(name: "set_quoting_style", scope: !205, file: !205, line: 133, type: !1895, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !1865, !182}
!1897 = !{!1898, !1899}
!1898 = !DILocalVariable(name: "o", arg: 1, scope: !1894, file: !205, line: 133, type: !1865)
!1899 = !DILocalVariable(name: "s", arg: 2, scope: !1894, file: !205, line: 133, type: !182)
!1900 = !DILocation(line: 133, column: 44, scope: !1894)
!1901 = !DILocation(line: 133, column: 66, scope: !1894)
!1902 = !DILocation(line: 135, column: 4, scope: !1894)
!1903 = !DILocation(line: 135, column: 39, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1894, file: !205, discriminator: 3)
!1905 = !DILocation(line: 135, column: 45, scope: !1904)
!1906 = !DILocation(line: 136, column: 1, scope: !1894)
!1907 = distinct !DISubprogram(name: "set_char_quoting", scope: !205, file: !205, line: 144, type: !1908, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!35, !1865, !23, !35}
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1917, !1918}
!1911 = !DILocalVariable(name: "o", arg: 1, scope: !1907, file: !205, line: 144, type: !1865)
!1912 = !DILocalVariable(name: "c", arg: 2, scope: !1907, file: !205, line: 144, type: !23)
!1913 = !DILocalVariable(name: "i", arg: 3, scope: !1907, file: !205, line: 144, type: !35)
!1914 = !DILocalVariable(name: "uc", scope: !1907, file: !205, line: 146, type: !32)
!1915 = !DILocalVariable(name: "p", scope: !1907, file: !205, line: 147, type: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1917 = !DILocalVariable(name: "shift", scope: !1907, file: !205, line: 149, type: !35)
!1918 = !DILocalVariable(name: "r", scope: !1907, file: !205, line: 150, type: !35)
!1919 = !DILocation(line: 144, column: 43, scope: !1907)
!1920 = !DILocation(line: 144, column: 51, scope: !1907)
!1921 = !DILocation(line: 144, column: 58, scope: !1907)
!1922 = !DILocation(line: 146, column: 17, scope: !1907)
!1923 = !DILocation(line: 148, column: 6, scope: !1907)
!1924 = !DILocation(line: 148, column: 62, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1907, file: !205, discriminator: 3)
!1926 = !DILocation(line: 148, column: 57, scope: !1925)
!1927 = !DILocation(line: 147, column: 17, scope: !1907)
!1928 = !DILocation(line: 149, column: 18, scope: !1907)
!1929 = !DILocation(line: 149, column: 15, scope: !1907)
!1930 = !DILocation(line: 149, column: 7, scope: !1907)
!1931 = !DILocation(line: 150, column: 12, scope: !1907)
!1932 = !DILocation(line: 150, column: 15, scope: !1907)
!1933 = !DILocation(line: 150, column: 25, scope: !1907)
!1934 = !DILocation(line: 150, column: 7, scope: !1907)
!1935 = !DILocation(line: 151, column: 13, scope: !1907)
!1936 = !DILocation(line: 151, column: 18, scope: !1907)
!1937 = !DILocation(line: 151, column: 23, scope: !1907)
!1938 = !DILocation(line: 151, column: 6, scope: !1907)
!1939 = !DILocation(line: 152, column: 3, scope: !1907)
!1940 = distinct !DISubprogram(name: "set_quoting_flags", scope: !205, file: !205, line: 160, type: !1941, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!35, !1865, !35}
!1943 = !{!1944, !1945, !1946}
!1944 = !DILocalVariable(name: "o", arg: 1, scope: !1940, file: !205, line: 160, type: !1865)
!1945 = !DILocalVariable(name: "i", arg: 2, scope: !1940, file: !205, line: 160, type: !35)
!1946 = !DILocalVariable(name: "r", scope: !1940, file: !205, line: 162, type: !35)
!1947 = !DILocation(line: 160, column: 44, scope: !1940)
!1948 = !DILocation(line: 160, column: 51, scope: !1940)
!1949 = !DILocation(line: 163, column: 8, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1940, file: !205, line: 163, column: 7)
!1951 = !DILocation(line: 163, column: 7, scope: !1940)
!1952 = !DILocation(line: 165, column: 10, scope: !1940)
!1953 = !{!1892, !771, i64 4}
!1954 = !DILocation(line: 162, column: 7, scope: !1940)
!1955 = !DILocation(line: 166, column: 12, scope: !1940)
!1956 = !DILocation(line: 167, column: 3, scope: !1940)
!1957 = distinct !DISubprogram(name: "set_custom_quoting", scope: !205, file: !205, line: 171, type: !1958, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !1960)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1865, !33, !33}
!1960 = !{!1961, !1962, !1963}
!1961 = !DILocalVariable(name: "o", arg: 1, scope: !1957, file: !205, line: 171, type: !1865)
!1962 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1957, file: !205, line: 172, type: !33)
!1963 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1957, file: !205, line: 172, type: !33)
!1964 = !DILocation(line: 171, column: 45, scope: !1957)
!1965 = !DILocation(line: 172, column: 33, scope: !1957)
!1966 = !DILocation(line: 172, column: 57, scope: !1957)
!1967 = !DILocation(line: 174, column: 8, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1957, file: !205, line: 174, column: 7)
!1969 = !DILocation(line: 174, column: 7, scope: !1957)
!1970 = !DILocation(line: 176, column: 6, scope: !1957)
!1971 = !DILocation(line: 176, column: 12, scope: !1957)
!1972 = !DILocation(line: 177, column: 8, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1957, file: !205, line: 177, column: 7)
!1974 = !DILocation(line: 177, column: 23, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1973, file: !205, discriminator: 1)
!1976 = !DILocation(line: 177, column: 19, scope: !1973)
!1977 = !DILocation(line: 178, column: 5, scope: !1973)
!1978 = !DILocation(line: 179, column: 6, scope: !1957)
!1979 = !DILocation(line: 179, column: 17, scope: !1957)
!1980 = !{!1892, !665, i64 40}
!1981 = !DILocation(line: 180, column: 6, scope: !1957)
!1982 = !DILocation(line: 180, column: 18, scope: !1957)
!1983 = !{!1892, !665, i64 48}
!1984 = !DILocation(line: 181, column: 1, scope: !1957)
!1985 = distinct !DISubprogram(name: "quotearg_buffer", scope: !205, file: !205, line: 776, type: !1986, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !1988)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!25, !22, !25, !33, !25, !1883}
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996}
!1989 = !DILocalVariable(name: "buffer", arg: 1, scope: !1985, file: !205, line: 776, type: !22)
!1990 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1985, file: !205, line: 776, type: !25)
!1991 = !DILocalVariable(name: "arg", arg: 3, scope: !1985, file: !205, line: 777, type: !33)
!1992 = !DILocalVariable(name: "argsize", arg: 4, scope: !1985, file: !205, line: 777, type: !25)
!1993 = !DILocalVariable(name: "o", arg: 5, scope: !1985, file: !205, line: 778, type: !1883)
!1994 = !DILocalVariable(name: "p", scope: !1985, file: !205, line: 780, type: !1883)
!1995 = !DILocalVariable(name: "e", scope: !1985, file: !205, line: 781, type: !35)
!1996 = !DILocalVariable(name: "r", scope: !1985, file: !205, line: 782, type: !25)
!1997 = !DILocation(line: 776, column: 24, scope: !1985)
!1998 = !DILocation(line: 776, column: 39, scope: !1985)
!1999 = !DILocation(line: 777, column: 30, scope: !1985)
!2000 = !DILocation(line: 777, column: 42, scope: !1985)
!2001 = !DILocation(line: 778, column: 48, scope: !1985)
!2002 = !DILocation(line: 780, column: 37, scope: !1985)
!2003 = !DILocation(line: 780, column: 33, scope: !1985)
!2004 = !DILocation(line: 781, column: 11, scope: !1985)
!2005 = !DILocation(line: 781, column: 7, scope: !1985)
!2006 = !DILocation(line: 783, column: 43, scope: !1985)
!2007 = !DILocation(line: 783, column: 53, scope: !1985)
!2008 = !DILocation(line: 783, column: 60, scope: !1985)
!2009 = !DILocation(line: 784, column: 43, scope: !1985)
!2010 = !DILocation(line: 784, column: 58, scope: !1985)
!2011 = !DILocation(line: 782, column: 14, scope: !1985)
!2012 = !DILocation(line: 782, column: 10, scope: !1985)
!2013 = !DILocation(line: 785, column: 9, scope: !1985)
!2014 = !DILocation(line: 786, column: 3, scope: !1985)
!2015 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !205, file: !205, line: 248, type: !2016, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2020)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!25, !22, !25, !33, !25, !182, !35, !2018, !33, !33}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2045, !2046, !2047, !2048, !2049, !2052, !2053, !2070, !2073, !2074, !2081}
!2021 = !DILocalVariable(name: "buffer", arg: 1, scope: !2015, file: !205, line: 248, type: !22)
!2022 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2015, file: !205, line: 248, type: !25)
!2023 = !DILocalVariable(name: "arg", arg: 3, scope: !2015, file: !205, line: 249, type: !33)
!2024 = !DILocalVariable(name: "argsize", arg: 4, scope: !2015, file: !205, line: 249, type: !25)
!2025 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2015, file: !205, line: 250, type: !182)
!2026 = !DILocalVariable(name: "flags", arg: 6, scope: !2015, file: !205, line: 250, type: !35)
!2027 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2015, file: !205, line: 251, type: !2018)
!2028 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2015, file: !205, line: 252, type: !33)
!2029 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2015, file: !205, line: 253, type: !33)
!2030 = !DILocalVariable(name: "i", scope: !2015, file: !205, line: 255, type: !25)
!2031 = !DILocalVariable(name: "len", scope: !2015, file: !205, line: 256, type: !25)
!2032 = !DILocalVariable(name: "orig_buffersize", scope: !2015, file: !205, line: 257, type: !25)
!2033 = !DILocalVariable(name: "quote_string", scope: !2015, file: !205, line: 258, type: !33)
!2034 = !DILocalVariable(name: "quote_string_len", scope: !2015, file: !205, line: 259, type: !25)
!2035 = !DILocalVariable(name: "backslash_escapes", scope: !2015, file: !205, line: 260, type: !40)
!2036 = !DILocalVariable(name: "unibyte_locale", scope: !2015, file: !205, line: 261, type: !40)
!2037 = !DILocalVariable(name: "elide_outer_quotes", scope: !2015, file: !205, line: 262, type: !40)
!2038 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2015, file: !205, line: 263, type: !40)
!2039 = !DILocalVariable(name: "encountered_single_quote", scope: !2015, file: !205, line: 264, type: !40)
!2040 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2015, file: !205, line: 265, type: !40)
!2041 = !DILocalVariable(name: "c", scope: !2042, file: !205, line: 394, type: !32)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !205, line: 393, column: 5)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !205, line: 392, column: 3)
!2044 = distinct !DILexicalBlock(scope: !2015, file: !205, line: 392, column: 3)
!2045 = !DILocalVariable(name: "esc", scope: !2042, file: !205, line: 395, type: !32)
!2046 = !DILocalVariable(name: "is_right_quote", scope: !2042, file: !205, line: 396, type: !40)
!2047 = !DILocalVariable(name: "escaping", scope: !2042, file: !205, line: 397, type: !40)
!2048 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2042, file: !205, line: 398, type: !40)
!2049 = !DILocalVariable(name: "m", scope: !2050, file: !205, line: 602, type: !25)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 600, column: 11)
!2051 = distinct !DILexicalBlock(scope: !2042, file: !205, line: 418, column: 9)
!2052 = !DILocalVariable(name: "printable", scope: !2050, file: !205, line: 604, type: !40)
!2053 = !DILocalVariable(name: "mbstate", scope: !2054, file: !205, line: 613, type: !2056)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !205, line: 612, column: 15)
!2055 = distinct !DILexicalBlock(scope: !2050, file: !205, line: 606, column: 17)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2057, line: 107, baseType: !2058)
!2057 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2057, line: 95, baseType: !2059)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 83, size: 64, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2059, file: !2057, line: 85, baseType: !35, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2059, file: !2057, line: 94, baseType: !2063, size: 32, offset: 32)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2059, file: !2057, line: 86, size: 32, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2063, file: !2057, line: 89, baseType: !21, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2063, file: !2057, line: 93, baseType: !2067, size: 32)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !2068)
!2068 = !{!2069}
!2069 = !DISubrange(count: 4)
!2070 = !DILocalVariable(name: "w", scope: !2071, file: !205, line: 623, type: !2072)
!2071 = distinct !DILexicalBlock(scope: !2054, file: !205, line: 622, column: 19)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !26, line: 90, baseType: !35)
!2073 = !DILocalVariable(name: "bytes", scope: !2071, file: !205, line: 624, type: !25)
!2074 = !DILocalVariable(name: "j", scope: !2075, file: !205, line: 649, type: !25)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !205, line: 648, column: 27)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !205, line: 646, column: 29)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !205, line: 641, column: 23)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !205, line: 633, column: 30)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !205, line: 628, column: 30)
!2080 = distinct !DILexicalBlock(scope: !2071, file: !205, line: 626, column: 25)
!2081 = !DILocalVariable(name: "ilim", scope: !2082, file: !205, line: 676, type: !25)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !205, line: 673, column: 15)
!2083 = distinct !DILexicalBlock(scope: !2050, file: !205, line: 672, column: 17)
!2084 = !DILocation(line: 248, column: 33, scope: !2015)
!2085 = !DILocation(line: 248, column: 48, scope: !2015)
!2086 = !DILocation(line: 249, column: 39, scope: !2015)
!2087 = !DILocation(line: 249, column: 51, scope: !2015)
!2088 = !DILocation(line: 250, column: 46, scope: !2015)
!2089 = !DILocation(line: 250, column: 65, scope: !2015)
!2090 = !DILocation(line: 251, column: 47, scope: !2015)
!2091 = !DILocation(line: 252, column: 39, scope: !2015)
!2092 = !DILocation(line: 253, column: 39, scope: !2015)
!2093 = !DILocation(line: 256, column: 10, scope: !2015)
!2094 = !DILocation(line: 257, column: 10, scope: !2015)
!2095 = !DILocation(line: 258, column: 15, scope: !2015)
!2096 = !DILocation(line: 259, column: 10, scope: !2015)
!2097 = !DILocation(line: 260, column: 8, scope: !2015)
!2098 = !DILocation(line: 261, column: 25, scope: !2015)
!2099 = !DILocation(line: 261, column: 36, scope: !2015)
!2100 = !DILocation(line: 262, column: 8, scope: !2015)
!2101 = !DILocation(line: 263, column: 8, scope: !2015)
!2102 = !DILocation(line: 264, column: 8, scope: !2015)
!2103 = !DILocation(line: 265, column: 8, scope: !2015)
!2104 = !DILocation(line: 265, column: 3, scope: !2015)
!2105 = !DILocation(line: 308, column: 3, scope: !2015)
!2106 = !DILocation(line: 315, column: 11, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2015, file: !205, line: 309, column: 5)
!2108 = !DILocation(line: 315, column: 12, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2107, file: !205, line: 315, column: 11)
!2110 = !DILocation(line: 316, column: 9, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2112, file: !205, discriminator: 1)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !205, line: 316, column: 9)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !205, line: 316, column: 9)
!2114 = !DILocation(line: 316, column: 9, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2113, file: !205, discriminator: 1)
!2116 = !DILocation(line: 316, column: 9, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2112, file: !205, discriminator: 2)
!2118 = !DILocation(line: 354, column: 26, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !205, line: 332, column: 11)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !205, line: 331, column: 13)
!2121 = distinct !DILexicalBlock(scope: !2107, file: !205, line: 330, column: 7)
!2122 = !DILocation(line: 355, column: 27, scope: !2119)
!2123 = !DILocation(line: 356, column: 11, scope: !2119)
!2124 = !DILocation(line: 357, column: 14, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !205, line: 357, column: 13)
!2126 = !DILocation(line: 357, column: 13, scope: !2121)
!2127 = !DILocation(line: 358, column: 43, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2129, file: !205, discriminator: 1)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !205, line: 358, column: 11)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !205, line: 358, column: 11)
!2131 = !DILocation(line: 358, column: 11, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2130, file: !205, discriminator: 1)
!2133 = !DILocation(line: 359, column: 13, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2135, file: !205, discriminator: 1)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !205, line: 359, column: 13)
!2136 = distinct !DILexicalBlock(scope: !2129, file: !205, line: 359, column: 13)
!2137 = !DILocation(line: 359, column: 13, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2136, file: !205, discriminator: 1)
!2139 = !DILocation(line: 359, column: 13, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2135, file: !205, discriminator: 2)
!2141 = !DILocation(line: 359, column: 13, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2136, file: !205, discriminator: 3)
!2143 = !DILocation(line: 358, column: 70, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2129, file: !205, discriminator: 2)
!2145 = distinct !{!2145, !2146, !2147}
!2146 = !DILocation(line: 358, column: 11, scope: !2130)
!2147 = !DILocation(line: 359, column: 13, scope: !2130)
!2148 = !DILocation(line: 362, column: 28, scope: !2121)
!2149 = !DILocation(line: 364, column: 7, scope: !2107)
!2150 = !DILocation(line: 367, column: 7, scope: !2107)
!2151 = !DILocation(line: 370, column: 7, scope: !2107)
!2152 = !DILocation(line: 373, column: 12, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2107, file: !205, line: 373, column: 11)
!2154 = !DILocation(line: 373, column: 11, scope: !2107)
!2155 = !DILocation(line: 378, column: 12, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2107, file: !205, line: 378, column: 11)
!2157 = !DILocation(line: 378, column: 11, scope: !2107)
!2158 = !DILocation(line: 379, column: 9, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !205, discriminator: 1)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !205, line: 379, column: 9)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !205, line: 379, column: 9)
!2162 = !DILocation(line: 379, column: 9, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2161, file: !205, discriminator: 1)
!2164 = !DILocation(line: 379, column: 9, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2160, file: !205, discriminator: 2)
!2166 = !DILocation(line: 386, column: 7, scope: !2107)
!2167 = !DILocation(line: 389, column: 7, scope: !2107)
!2168 = !DILocation(line: 255, column: 10, scope: !2015)
!2169 = !DILocation(line: 392, column: 8, scope: !2044)
!2170 = !DILocation(line: 392, column: 27, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2043, file: !205, discriminator: 1)
!2172 = !DILocation(line: 392, column: 19, scope: !2171)
!2173 = !DILocation(line: 392, column: 60, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2043, file: !205, discriminator: 3)
!2175 = !DILocation(line: 392, column: 3, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2044, file: !205, discriminator: 4)
!2177 = !DILocation(line: 392, column: 41, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2043, file: !205, discriminator: 2)
!2179 = !DILocation(line: 392, column: 48, scope: !2178)
!2180 = !DILocation(line: 396, column: 12, scope: !2042)
!2181 = !DILocation(line: 397, column: 12, scope: !2042)
!2182 = !DILocation(line: 398, column: 12, scope: !2042)
!2183 = !DILocation(line: 401, column: 11, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2042, file: !205, line: 400, column: 11)
!2185 = !DILocation(line: 403, column: 17, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2184, file: !205, discriminator: 1)
!2187 = !DILocation(line: 404, column: 39, scope: !2184)
!2188 = !DILocation(line: 408, column: 32, scope: !2184)
!2189 = !DILocation(line: 404, column: 19, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2184, file: !205, discriminator: 2)
!2191 = !DILocation(line: 404, column: 15, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2184, file: !205, discriminator: 4)
!2193 = !DILocation(line: 409, column: 11, scope: !2184)
!2194 = !DILocation(line: 409, column: 26, scope: !2186)
!2195 = !DILocation(line: 409, column: 14, scope: !2186)
!2196 = !DILocation(line: 400, column: 11, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2042, file: !205, discriminator: 1)
!2198 = !DILocation(line: 416, column: 11, scope: !2042)
!2199 = !DILocation(line: 394, column: 21, scope: !2042)
!2200 = !DILocation(line: 417, column: 7, scope: !2042)
!2201 = !DILocation(line: 420, column: 15, scope: !2051)
!2202 = !DILocation(line: 422, column: 15, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !205, discriminator: 1)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !205, line: 422, column: 15)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !205, line: 421, column: 13)
!2206 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 420, column: 15)
!2207 = !DILocation(line: 422, column: 15, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2209, file: !205, discriminator: 4)
!2209 = distinct !DILexicalBlock(scope: !2204, file: !205, line: 422, column: 15)
!2210 = !DILocation(line: 422, column: 15, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2209, file: !205, discriminator: 3)
!2212 = !DILocation(line: 422, column: 15, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2214, file: !205, discriminator: 6)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !205, line: 422, column: 15)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !205, line: 422, column: 15)
!2216 = distinct !DILexicalBlock(scope: !2209, file: !205, line: 422, column: 15)
!2217 = !DILocation(line: 422, column: 15, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2215, file: !205, discriminator: 6)
!2219 = !DILocation(line: 422, column: 15, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2214, file: !205, discriminator: 7)
!2221 = !DILocation(line: 422, column: 15, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2215, file: !205, discriminator: 8)
!2223 = !DILocation(line: 422, column: 15, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2225, file: !205, discriminator: 11)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !205, line: 422, column: 15)
!2226 = distinct !DILexicalBlock(scope: !2216, file: !205, line: 422, column: 15)
!2227 = !DILocation(line: 422, column: 15, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2226, file: !205, discriminator: 11)
!2229 = !DILocation(line: 422, column: 15, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2225, file: !205, discriminator: 12)
!2231 = !DILocation(line: 422, column: 15, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2226, file: !205, discriminator: 13)
!2233 = !DILocation(line: 422, column: 15, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2235, file: !205, discriminator: 16)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !205, line: 422, column: 15)
!2236 = distinct !DILexicalBlock(scope: !2216, file: !205, line: 422, column: 15)
!2237 = !DILocation(line: 422, column: 15, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2236, file: !205, discriminator: 16)
!2239 = !DILocation(line: 422, column: 15, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2235, file: !205, discriminator: 17)
!2241 = !DILocation(line: 422, column: 15, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2236, file: !205, discriminator: 18)
!2243 = !DILocation(line: 422, column: 15, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2216, file: !205, discriminator: 20)
!2245 = !DILocation(line: 422, column: 15, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2247, file: !205, discriminator: 22)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !205, line: 422, column: 15)
!2248 = distinct !DILexicalBlock(scope: !2204, file: !205, line: 422, column: 15)
!2249 = !DILocation(line: 422, column: 15, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2248, file: !205, discriminator: 22)
!2251 = !DILocation(line: 422, column: 15, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2247, file: !205, discriminator: 23)
!2253 = !DILocation(line: 422, column: 15, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2248, file: !205, discriminator: 24)
!2255 = !DILocation(line: 430, column: 19, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2205, file: !205, line: 429, column: 19)
!2257 = !DILocation(line: 430, column: 24, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2256, file: !205, discriminator: 1)
!2259 = !DILocation(line: 430, column: 28, scope: !2258)
!2260 = !DILocation(line: 430, column: 38, scope: !2258)
!2261 = !DILocation(line: 430, column: 48, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2256, file: !205, discriminator: 2)
!2263 = !DILocation(line: 430, column: 59, scope: !2262)
!2264 = !DILocation(line: 432, column: 19, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2266, file: !205, discriminator: 1)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !205, line: 432, column: 19)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !205, line: 432, column: 19)
!2268 = distinct !DILexicalBlock(scope: !2256, file: !205, line: 431, column: 17)
!2269 = !DILocation(line: 432, column: 19, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2267, file: !205, discriminator: 1)
!2271 = !DILocation(line: 432, column: 19, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2266, file: !205, discriminator: 2)
!2273 = !DILocation(line: 432, column: 19, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2267, file: !205, discriminator: 3)
!2275 = !DILocation(line: 433, column: 19, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2277, file: !205, discriminator: 1)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !205, line: 433, column: 19)
!2278 = distinct !DILexicalBlock(scope: !2268, file: !205, line: 433, column: 19)
!2279 = !DILocation(line: 433, column: 19, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2278, file: !205, discriminator: 1)
!2281 = !DILocation(line: 433, column: 19, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2277, file: !205, discriminator: 2)
!2283 = !DILocation(line: 433, column: 19, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2278, file: !205, discriminator: 3)
!2285 = !DILocation(line: 434, column: 17, scope: !2268)
!2286 = !DILocation(line: 441, column: 20, scope: !2206)
!2287 = !DILocation(line: 446, column: 11, scope: !2051)
!2288 = !DILocation(line: 449, column: 19, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 447, column: 13)
!2290 = !DILocation(line: 455, column: 19, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2289, file: !205, line: 454, column: 19)
!2292 = !DILocation(line: 455, column: 24, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2291, file: !205, discriminator: 1)
!2294 = !DILocation(line: 455, column: 28, scope: !2293)
!2295 = !DILocation(line: 455, column: 38, scope: !2293)
!2296 = !DILocation(line: 455, column: 47, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2291, file: !205, discriminator: 2)
!2298 = !DILocation(line: 455, column: 41, scope: !2297)
!2299 = !DILocation(line: 455, column: 52, scope: !2297)
!2300 = !DILocation(line: 454, column: 19, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2289, file: !205, discriminator: 1)
!2302 = !DILocation(line: 456, column: 25, scope: !2291)
!2303 = !DILocation(line: 456, column: 17, scope: !2291)
!2304 = !DILocation(line: 463, column: 25, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2291, file: !205, line: 457, column: 19)
!2306 = !DILocation(line: 467, column: 21, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2308, file: !205, discriminator: 1)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !205, line: 467, column: 21)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !205, line: 467, column: 21)
!2310 = !DILocation(line: 467, column: 21, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2309, file: !205, discriminator: 1)
!2312 = !DILocation(line: 467, column: 21, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2308, file: !205, discriminator: 2)
!2314 = !DILocation(line: 467, column: 21, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2309, file: !205, discriminator: 3)
!2316 = !DILocation(line: 468, column: 21, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2318, file: !205, discriminator: 1)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !205, line: 468, column: 21)
!2319 = distinct !DILexicalBlock(scope: !2305, file: !205, line: 468, column: 21)
!2320 = !DILocation(line: 468, column: 21, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2319, file: !205, discriminator: 1)
!2322 = !DILocation(line: 468, column: 21, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2318, file: !205, discriminator: 2)
!2324 = !DILocation(line: 468, column: 21, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2319, file: !205, discriminator: 3)
!2326 = !DILocation(line: 469, column: 21, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !205, discriminator: 1)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !205, line: 469, column: 21)
!2329 = distinct !DILexicalBlock(scope: !2305, file: !205, line: 469, column: 21)
!2330 = !DILocation(line: 469, column: 21, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2329, file: !205, discriminator: 1)
!2332 = !DILocation(line: 469, column: 21, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2328, file: !205, discriminator: 2)
!2334 = !DILocation(line: 469, column: 21, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2329, file: !205, discriminator: 3)
!2336 = !DILocation(line: 470, column: 21, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2338, file: !205, discriminator: 1)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !205, line: 470, column: 21)
!2339 = distinct !DILexicalBlock(scope: !2305, file: !205, line: 470, column: 21)
!2340 = !DILocation(line: 470, column: 21, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2339, file: !205, discriminator: 1)
!2342 = !DILocation(line: 470, column: 21, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2338, file: !205, discriminator: 2)
!2344 = !DILocation(line: 470, column: 21, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2339, file: !205, discriminator: 3)
!2346 = !DILocation(line: 471, column: 21, scope: !2305)
!2347 = !DILocation(line: 395, column: 21, scope: !2042)
!2348 = !DILocation(line: 484, column: 31, scope: !2051)
!2349 = !DILocation(line: 485, column: 31, scope: !2051)
!2350 = !DILocation(line: 487, column: 31, scope: !2051)
!2351 = !DILocation(line: 488, column: 31, scope: !2051)
!2352 = !DILocation(line: 489, column: 31, scope: !2051)
!2353 = !DILocation(line: 492, column: 15, scope: !2051)
!2354 = !DILocation(line: 494, column: 19, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !205, line: 493, column: 13)
!2356 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 492, column: 15)
!2357 = !DILocation(line: 501, column: 33, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 501, column: 15)
!2359 = !DILocation(line: 506, column: 15, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 505, column: 15)
!2361 = !DILocation(line: 510, column: 15, scope: !2051)
!2362 = !DILocation(line: 518, column: 26, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 518, column: 15)
!2364 = !DILocation(line: 518, column: 15, scope: !2051)
!2365 = !DILocation(line: 518, column: 40, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2363, file: !205, discriminator: 1)
!2367 = !DILocation(line: 518, column: 47, scope: !2366)
!2368 = !DILocation(line: 522, column: 17, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 522, column: 15)
!2370 = !DILocation(line: 518, column: 18, scope: !2366)
!2371 = !DILocation(line: 518, column: 65, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2363, file: !205, discriminator: 2)
!2373 = !DILocation(line: 518, column: 15, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !2051, file: !205, discriminator: 2)
!2375 = !DILocation(line: 522, column: 15, scope: !2051)
!2376 = !DILocation(line: 526, column: 11, scope: !2051)
!2377 = !DILocation(line: 541, column: 15, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 540, column: 15)
!2379 = !DILocation(line: 548, column: 15, scope: !2051)
!2380 = !DILocation(line: 550, column: 19, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !205, line: 549, column: 13)
!2382 = distinct !DILexicalBlock(scope: !2051, file: !205, line: 548, column: 15)
!2383 = !DILocation(line: 553, column: 19, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !205, line: 553, column: 19)
!2385 = !DILocation(line: 553, column: 35, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2384, file: !205, discriminator: 1)
!2387 = !DILocation(line: 553, column: 30, scope: !2384)
!2388 = !DILocation(line: 562, column: 15, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2390, file: !205, discriminator: 1)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !205, line: 562, column: 15)
!2391 = distinct !DILexicalBlock(scope: !2381, file: !205, line: 562, column: 15)
!2392 = !DILocation(line: 562, column: 15, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2391, file: !205, discriminator: 1)
!2394 = !DILocation(line: 562, column: 15, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2390, file: !205, discriminator: 2)
!2396 = !DILocation(line: 562, column: 15, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2391, file: !205, discriminator: 3)
!2398 = !DILocation(line: 563, column: 15, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2400, file: !205, discriminator: 1)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !205, line: 563, column: 15)
!2401 = distinct !DILexicalBlock(scope: !2381, file: !205, line: 563, column: 15)
!2402 = !DILocation(line: 563, column: 15, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2401, file: !205, discriminator: 1)
!2404 = !DILocation(line: 563, column: 15, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2400, file: !205, discriminator: 2)
!2406 = !DILocation(line: 563, column: 15, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2401, file: !205, discriminator: 3)
!2408 = !DILocation(line: 564, column: 15, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2410, file: !205, discriminator: 1)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !205, line: 564, column: 15)
!2411 = distinct !DILexicalBlock(scope: !2381, file: !205, line: 564, column: 15)
!2412 = !DILocation(line: 564, column: 15, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2411, file: !205, discriminator: 1)
!2414 = !DILocation(line: 564, column: 15, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2410, file: !205, discriminator: 2)
!2416 = !DILocation(line: 564, column: 15, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2411, file: !205, discriminator: 3)
!2418 = !DILocation(line: 566, column: 13, scope: !2381)
!2419 = !DILocation(line: 606, column: 17, scope: !2050)
!2420 = !DILocation(line: 602, column: 20, scope: !2050)
!2421 = !DILocation(line: 609, column: 29, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2055, file: !205, line: 607, column: 15)
!2423 = !DILocation(line: 609, column: 27, scope: !2422)
!2424 = !DILocation(line: 604, column: 18, scope: !2050)
!2425 = !DILocation(line: 610, column: 15, scope: !2422)
!2426 = !DILocation(line: 613, column: 17, scope: !2054)
!2427 = !DILocation(line: 614, column: 17, scope: !2054)
!2428 = !DILocation(line: 618, column: 29, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2054, file: !205, line: 618, column: 21)
!2430 = !DILocation(line: 618, column: 21, scope: !2054)
!2431 = distinct !{!2431, !2432, !2433}
!2432 = !DILocation(line: 621, column: 17, scope: !2054)
!2433 = !DILocation(line: 667, column: 44, scope: !2054)
!2434 = !DILocation(line: 619, column: 29, scope: !2429)
!2435 = !DILocation(line: 619, column: 19, scope: !2429)
!2436 = !DILocation(line: 623, column: 21, scope: !2071)
!2437 = !DILocation(line: 624, column: 56, scope: !2071)
!2438 = !DILocation(line: 624, column: 50, scope: !2071)
!2439 = !DILocation(line: 625, column: 53, scope: !2071)
!2440 = !DILocation(line: 613, column: 27, scope: !2054)
!2441 = !DILocation(line: 623, column: 29, scope: !2071)
!2442 = !DILocation(line: 624, column: 36, scope: !2071)
!2443 = !DILocation(line: 624, column: 28, scope: !2071)
!2444 = !DILocation(line: 626, column: 25, scope: !2071)
!2445 = !DILocation(line: 636, column: 38, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2447, file: !205, discriminator: 1)
!2447 = distinct !DILexicalBlock(scope: !2078, file: !205, line: 634, column: 23)
!2448 = !DILocation(line: 636, column: 48, scope: !2446)
!2449 = !DILocation(line: 636, column: 51, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2447, file: !205, discriminator: 2)
!2451 = !DILocation(line: 636, column: 48, scope: !2450)
!2452 = !DILocation(line: 636, column: 25, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2447, file: !205, discriminator: 3)
!2454 = !DILocation(line: 637, column: 28, scope: !2447)
!2455 = !DILocation(line: 636, column: 34, scope: !2446)
!2456 = distinct !{!2456, !2457, !2454}
!2457 = !DILocation(line: 636, column: 25, scope: !2447)
!2458 = !DILocation(line: 650, column: 43, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2460, file: !205, discriminator: 1)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !205, line: 650, column: 29)
!2461 = distinct !DILexicalBlock(scope: !2075, file: !205, line: 650, column: 29)
!2462 = !DILocation(line: 647, column: 29, scope: !2076)
!2463 = !DILocation(line: 649, column: 36, scope: !2075)
!2464 = !DILocation(line: 651, column: 49, scope: !2460)
!2465 = !DILocation(line: 651, column: 39, scope: !2460)
!2466 = !DILocation(line: 651, column: 31, scope: !2460)
!2467 = !DILocation(line: 650, column: 53, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2460, file: !205, discriminator: 2)
!2469 = !DILocation(line: 650, column: 29, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2461, file: !205, discriminator: 1)
!2471 = distinct !{!2471, !2472, !2473}
!2472 = !DILocation(line: 650, column: 29, scope: !2461)
!2473 = !DILocation(line: 659, column: 33, scope: !2461)
!2474 = !DILocation(line: 666, column: 19, scope: !2054)
!2475 = !DILocation(line: 662, column: 41, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2077, file: !205, line: 662, column: 29)
!2477 = !DILocation(line: 662, column: 31, scope: !2476)
!2478 = !DILocation(line: 662, column: 29, scope: !2077)
!2479 = !DILocation(line: 664, column: 27, scope: !2077)
!2480 = !DILocation(line: 667, column: 26, scope: !2054)
!2481 = !DILocation(line: 667, column: 24, scope: !2054)
!2482 = !DILocation(line: 666, column: 19, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2071, file: !205, discriminator: 3)
!2484 = !DILocation(line: 668, column: 15, scope: !2055)
!2485 = !DILocation(line: 670, column: 40, scope: !2050)
!2486 = !DILocation(line: 672, column: 19, scope: !2083)
!2487 = !DILocation(line: 672, column: 45, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2083, file: !205, discriminator: 1)
!2489 = !DILocation(line: 672, column: 23, scope: !2083)
!2490 = !DILocation(line: 676, column: 33, scope: !2082)
!2491 = !DILocation(line: 676, column: 24, scope: !2082)
!2492 = !DILocation(line: 678, column: 17, scope: !2082)
!2493 = !DILocation(line: 680, column: 43, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !205, line: 680, column: 25)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !205, line: 679, column: 19)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !205, line: 678, column: 17)
!2497 = distinct !DILexicalBlock(scope: !2082, file: !205, line: 678, column: 17)
!2498 = !DILocation(line: 682, column: 25, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2500, file: !205, discriminator: 1)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !205, line: 682, column: 25)
!2501 = distinct !DILexicalBlock(scope: !2494, file: !205, line: 681, column: 23)
!2502 = !DILocation(line: 682, column: 25, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2504, file: !205, discriminator: 4)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !205, line: 682, column: 25)
!2505 = !DILocation(line: 682, column: 25, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2504, file: !205, discriminator: 3)
!2507 = !DILocation(line: 682, column: 25, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2509, file: !205, discriminator: 6)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !205, line: 682, column: 25)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !205, line: 682, column: 25)
!2511 = distinct !DILexicalBlock(scope: !2504, file: !205, line: 682, column: 25)
!2512 = !DILocation(line: 682, column: 25, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2510, file: !205, discriminator: 6)
!2514 = !DILocation(line: 682, column: 25, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2509, file: !205, discriminator: 7)
!2516 = !DILocation(line: 682, column: 25, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2510, file: !205, discriminator: 8)
!2518 = !DILocation(line: 682, column: 25, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2520, file: !205, discriminator: 11)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !205, line: 682, column: 25)
!2521 = distinct !DILexicalBlock(scope: !2511, file: !205, line: 682, column: 25)
!2522 = !DILocation(line: 682, column: 25, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2521, file: !205, discriminator: 11)
!2524 = !DILocation(line: 682, column: 25, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !2520, file: !205, discriminator: 12)
!2526 = !DILocation(line: 682, column: 25, scope: !2527)
!2527 = !DILexicalBlockFile(scope: !2521, file: !205, discriminator: 13)
!2528 = !DILocation(line: 682, column: 25, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2530, file: !205, discriminator: 16)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !205, line: 682, column: 25)
!2531 = distinct !DILexicalBlock(scope: !2511, file: !205, line: 682, column: 25)
!2532 = !DILocation(line: 682, column: 25, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2531, file: !205, discriminator: 16)
!2534 = !DILocation(line: 682, column: 25, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2530, file: !205, discriminator: 17)
!2536 = !DILocation(line: 682, column: 25, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2531, file: !205, discriminator: 18)
!2538 = !DILocation(line: 682, column: 25, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2511, file: !205, discriminator: 20)
!2540 = !DILocation(line: 682, column: 25, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2542, file: !205, discriminator: 22)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !205, line: 682, column: 25)
!2543 = distinct !DILexicalBlock(scope: !2500, file: !205, line: 682, column: 25)
!2544 = !DILocation(line: 682, column: 25, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2543, file: !205, discriminator: 22)
!2546 = !DILocation(line: 682, column: 25, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2542, file: !205, discriminator: 23)
!2548 = !DILocation(line: 682, column: 25, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2543, file: !205, discriminator: 24)
!2550 = !DILocation(line: 683, column: 25, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2552, file: !205, discriminator: 1)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !205, line: 683, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2501, file: !205, line: 683, column: 25)
!2554 = !DILocation(line: 683, column: 25, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2553, file: !205, discriminator: 1)
!2556 = !DILocation(line: 683, column: 25, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2552, file: !205, discriminator: 2)
!2558 = !DILocation(line: 683, column: 25, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2553, file: !205, discriminator: 3)
!2560 = !DILocation(line: 684, column: 25, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2562, file: !205, discriminator: 1)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !205, line: 684, column: 25)
!2563 = distinct !DILexicalBlock(scope: !2501, file: !205, line: 684, column: 25)
!2564 = !DILocation(line: 684, column: 25, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2563, file: !205, discriminator: 1)
!2566 = !DILocation(line: 684, column: 25, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2562, file: !205, discriminator: 2)
!2568 = !DILocation(line: 684, column: 25, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2563, file: !205, discriminator: 3)
!2570 = !DILocation(line: 685, column: 38, scope: !2501)
!2571 = !DILocation(line: 685, column: 33, scope: !2501)
!2572 = !DILocation(line: 686, column: 23, scope: !2501)
!2573 = !DILocation(line: 687, column: 30, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2494, file: !205, line: 687, column: 30)
!2575 = !DILocation(line: 687, column: 30, scope: !2494)
!2576 = !DILocation(line: 689, column: 25, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2578, file: !205, discriminator: 1)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !205, line: 689, column: 25)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !205, line: 689, column: 25)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !205, line: 688, column: 23)
!2581 = !DILocation(line: 689, column: 25, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2579, file: !205, discriminator: 1)
!2583 = !DILocation(line: 689, column: 25, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2578, file: !205, discriminator: 2)
!2585 = !DILocation(line: 689, column: 25, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2579, file: !205, discriminator: 3)
!2587 = !DILocation(line: 691, column: 23, scope: !2580)
!2588 = !DILocation(line: 692, column: 35, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2495, file: !205, line: 692, column: 25)
!2590 = !DILocation(line: 692, column: 30, scope: !2589)
!2591 = !DILocation(line: 692, column: 25, scope: !2495)
!2592 = !DILocation(line: 694, column: 21, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2594, file: !205, discriminator: 1)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !205, line: 694, column: 21)
!2595 = distinct !DILexicalBlock(scope: !2495, file: !205, line: 694, column: 21)
!2596 = !DILocation(line: 694, column: 21, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2594, file: !205, discriminator: 2)
!2598 = !DILocation(line: 694, column: 21, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2600, file: !205, discriminator: 4)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !205, line: 694, column: 21)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !205, line: 694, column: 21)
!2602 = distinct !DILexicalBlock(scope: !2594, file: !205, line: 694, column: 21)
!2603 = !DILocation(line: 694, column: 21, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2601, file: !205, discriminator: 4)
!2605 = !DILocation(line: 694, column: 21, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2600, file: !205, discriminator: 5)
!2607 = !DILocation(line: 694, column: 21, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2601, file: !205, discriminator: 6)
!2609 = !DILocation(line: 694, column: 21, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !2611, file: !205, discriminator: 9)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !205, line: 694, column: 21)
!2612 = distinct !DILexicalBlock(scope: !2602, file: !205, line: 694, column: 21)
!2613 = !DILocation(line: 694, column: 21, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2612, file: !205, discriminator: 9)
!2615 = !DILocation(line: 694, column: 21, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2611, file: !205, discriminator: 10)
!2617 = !DILocation(line: 694, column: 21, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2612, file: !205, discriminator: 11)
!2619 = !DILocation(line: 694, column: 21, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2602, file: !205, discriminator: 13)
!2621 = !DILocation(line: 695, column: 21, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !2623, file: !205, discriminator: 1)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !205, line: 695, column: 21)
!2624 = distinct !DILexicalBlock(scope: !2495, file: !205, line: 695, column: 21)
!2625 = !DILocation(line: 695, column: 21, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2624, file: !205, discriminator: 1)
!2627 = !DILocation(line: 695, column: 21, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2623, file: !205, discriminator: 2)
!2629 = !DILocation(line: 695, column: 21, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2624, file: !205, discriminator: 3)
!2631 = !DILocation(line: 696, column: 25, scope: !2495)
!2632 = !DILocation(line: 678, column: 17, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2496, file: !205, discriminator: 1)
!2634 = distinct !{!2634, !2635, !2636}
!2635 = !DILocation(line: 678, column: 17, scope: !2497)
!2636 = !DILocation(line: 697, column: 19, scope: !2497)
!2637 = !DILocation(line: 704, column: 34, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2042, file: !205, line: 704, column: 11)
!2639 = !DILocation(line: 706, column: 14, scope: !2638)
!2640 = !DILocation(line: 707, column: 14, scope: !2638)
!2641 = !DILocation(line: 707, column: 35, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2638, file: !205, discriminator: 1)
!2643 = !DILocation(line: 707, column: 17, scope: !2642)
!2644 = !DILocation(line: 707, column: 53, scope: !2642)
!2645 = !DILocation(line: 707, column: 47, scope: !2642)
!2646 = !DILocation(line: 707, column: 65, scope: !2642)
!2647 = !DILocation(line: 708, column: 15, scope: !2642)
!2648 = !DILocation(line: 708, column: 11, scope: !2638)
!2649 = !DILocation(line: 704, column: 11, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2042, file: !205, discriminator: 2)
!2651 = !DILocation(line: 712, column: 7, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2653, file: !205, discriminator: 1)
!2653 = distinct !DILexicalBlock(scope: !2042, file: !205, line: 712, column: 7)
!2654 = !DILocation(line: 712, column: 7, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2656, file: !205, discriminator: 4)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !205, line: 712, column: 7)
!2657 = !DILocation(line: 712, column: 7, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2656, file: !205, discriminator: 3)
!2659 = !DILocation(line: 712, column: 7, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2661, file: !205, discriminator: 6)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !205, line: 712, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !205, line: 712, column: 7)
!2663 = distinct !DILexicalBlock(scope: !2656, file: !205, line: 712, column: 7)
!2664 = !DILocation(line: 712, column: 7, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2662, file: !205, discriminator: 6)
!2666 = !DILocation(line: 712, column: 7, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2661, file: !205, discriminator: 7)
!2668 = !DILocation(line: 712, column: 7, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2662, file: !205, discriminator: 8)
!2670 = !DILocation(line: 712, column: 7, scope: !2671)
!2671 = !DILexicalBlockFile(scope: !2672, file: !205, discriminator: 11)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !205, line: 712, column: 7)
!2673 = distinct !DILexicalBlock(scope: !2663, file: !205, line: 712, column: 7)
!2674 = !DILocation(line: 712, column: 7, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2673, file: !205, discriminator: 11)
!2676 = !DILocation(line: 712, column: 7, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2672, file: !205, discriminator: 12)
!2678 = !DILocation(line: 712, column: 7, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2673, file: !205, discriminator: 13)
!2680 = !DILocation(line: 712, column: 7, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2682, file: !205, discriminator: 16)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !205, line: 712, column: 7)
!2683 = distinct !DILexicalBlock(scope: !2663, file: !205, line: 712, column: 7)
!2684 = !DILocation(line: 712, column: 7, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2683, file: !205, discriminator: 16)
!2686 = !DILocation(line: 712, column: 7, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2682, file: !205, discriminator: 17)
!2688 = !DILocation(line: 712, column: 7, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2683, file: !205, discriminator: 18)
!2690 = !DILocation(line: 712, column: 7, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2663, file: !205, discriminator: 20)
!2692 = !DILocation(line: 712, column: 7, scope: !2693)
!2693 = !DILexicalBlockFile(scope: !2694, file: !205, discriminator: 22)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !205, line: 712, column: 7)
!2695 = distinct !DILexicalBlock(scope: !2653, file: !205, line: 712, column: 7)
!2696 = !DILocation(line: 712, column: 7, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2695, file: !205, discriminator: 22)
!2698 = !DILocation(line: 712, column: 7, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2694, file: !205, discriminator: 23)
!2700 = !DILocation(line: 712, column: 7, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2695, file: !205, discriminator: 24)
!2702 = !DILocation(line: 715, column: 7, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2704, file: !205, discriminator: 1)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !205, line: 715, column: 7)
!2705 = distinct !DILexicalBlock(scope: !2042, file: !205, line: 715, column: 7)
!2706 = !DILocation(line: 715, column: 7, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2704, file: !205, discriminator: 2)
!2708 = !DILocation(line: 715, column: 7, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2710, file: !205, discriminator: 4)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !205, line: 715, column: 7)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !205, line: 715, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2704, file: !205, line: 715, column: 7)
!2713 = !DILocation(line: 715, column: 7, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2711, file: !205, discriminator: 4)
!2715 = !DILocation(line: 715, column: 7, scope: !2716)
!2716 = !DILexicalBlockFile(scope: !2710, file: !205, discriminator: 5)
!2717 = !DILocation(line: 715, column: 7, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2711, file: !205, discriminator: 6)
!2719 = !DILocation(line: 715, column: 7, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2721, file: !205, discriminator: 9)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !205, line: 715, column: 7)
!2722 = distinct !DILexicalBlock(scope: !2712, file: !205, line: 715, column: 7)
!2723 = !DILocation(line: 715, column: 7, scope: !2724)
!2724 = !DILexicalBlockFile(scope: !2722, file: !205, discriminator: 9)
!2725 = !DILocation(line: 715, column: 7, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2721, file: !205, discriminator: 10)
!2727 = !DILocation(line: 715, column: 7, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2722, file: !205, discriminator: 11)
!2729 = !DILocation(line: 715, column: 7, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2712, file: !205, discriminator: 13)
!2731 = !DILocation(line: 716, column: 7, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !2733, file: !205, discriminator: 1)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !205, line: 716, column: 7)
!2734 = distinct !DILexicalBlock(scope: !2042, file: !205, line: 716, column: 7)
!2735 = !DILocation(line: 716, column: 7, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2734, file: !205, discriminator: 1)
!2737 = !DILocation(line: 716, column: 7, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2733, file: !205, discriminator: 2)
!2739 = !DILocation(line: 716, column: 7, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2734, file: !205, discriminator: 3)
!2741 = !DILocation(line: 718, column: 13, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2042, file: !205, line: 718, column: 11)
!2743 = !DILocation(line: 718, column: 11, scope: !2042)
!2744 = !DILocation(line: 720, column: 5, scope: !2043)
!2745 = !DILocation(line: 392, column: 75, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2043, file: !205, discriminator: 5)
!2747 = !DILocation(line: 392, column: 3, scope: !2746)
!2748 = distinct !{!2748, !2749, !2750}
!2749 = !DILocation(line: 392, column: 3, scope: !2044)
!2750 = !DILocation(line: 720, column: 5, scope: !2044)
!2751 = !DILocation(line: 722, column: 11, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2015, file: !205, line: 722, column: 7)
!2753 = !DILocation(line: 722, column: 16, scope: !2752)
!2754 = !DILocation(line: 730, column: 51, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2015, file: !205, line: 730, column: 7)
!2756 = !DILocation(line: 731, column: 10, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !2755, file: !205, discriminator: 1)
!2758 = !DILocation(line: 733, column: 11, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !205, line: 733, column: 11)
!2760 = distinct !DILexicalBlock(scope: !2755, file: !205, line: 732, column: 5)
!2761 = !DILocation(line: 733, column: 11, scope: !2760)
!2762 = !DILocation(line: 734, column: 16, scope: !2759)
!2763 = !DILocation(line: 734, column: 9, scope: !2759)
!2764 = !DILocation(line: 738, column: 18, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2759, file: !205, line: 738, column: 16)
!2766 = !DILocation(line: 738, column: 32, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2765, file: !205, discriminator: 1)
!2768 = !DILocation(line: 738, column: 29, scope: !2765)
!2769 = !DILocation(line: 747, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2015, file: !205, line: 747, column: 7)
!2771 = !DILocation(line: 747, column: 20, scope: !2770)
!2772 = !DILocation(line: 748, column: 12, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2774, file: !205, discriminator: 1)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !205, line: 748, column: 5)
!2775 = distinct !DILexicalBlock(scope: !2770, file: !205, line: 748, column: 5)
!2776 = !DILocation(line: 748, column: 5, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2775, file: !205, discriminator: 1)
!2778 = !DILocation(line: 749, column: 7, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2780, file: !205, discriminator: 1)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !205, line: 749, column: 7)
!2781 = distinct !DILexicalBlock(scope: !2774, file: !205, line: 749, column: 7)
!2782 = !DILocation(line: 749, column: 7, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2781, file: !205, discriminator: 1)
!2784 = !DILocation(line: 749, column: 7, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2780, file: !205, discriminator: 2)
!2786 = !DILocation(line: 749, column: 7, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2781, file: !205, discriminator: 3)
!2788 = !DILocation(line: 748, column: 39, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2774, file: !205, discriminator: 2)
!2790 = distinct !{!2790, !2791, !2792}
!2791 = !DILocation(line: 748, column: 5, scope: !2775)
!2792 = !DILocation(line: 749, column: 7, scope: !2775)
!2793 = !DILocation(line: 751, column: 11, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2015, file: !205, line: 751, column: 7)
!2795 = !DILocation(line: 751, column: 7, scope: !2015)
!2796 = !DILocation(line: 752, column: 5, scope: !2794)
!2797 = !DILocation(line: 752, column: 17, scope: !2794)
!2798 = !DILocation(line: 758, column: 21, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2015, file: !205, line: 758, column: 7)
!2800 = !DILocation(line: 758, column: 54, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !2799, file: !205, discriminator: 1)
!2802 = !DILocation(line: 758, column: 51, scope: !2799)
!2803 = !DILocation(line: 762, column: 42, scope: !2015)
!2804 = !DILocation(line: 760, column: 10, scope: !2015)
!2805 = !DILocation(line: 760, column: 3, scope: !2015)
!2806 = !DILocation(line: 764, column: 1, scope: !2015)
!2807 = distinct !DISubprogram(name: "gettext_quote", scope: !205, file: !205, line: 199, type: !2808, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!33, !33, !182}
!2810 = !{!2811, !2812, !2813, !2814}
!2811 = !DILocalVariable(name: "msgid", arg: 1, scope: !2807, file: !205, line: 199, type: !33)
!2812 = !DILocalVariable(name: "s", arg: 2, scope: !2807, file: !205, line: 199, type: !182)
!2813 = !DILocalVariable(name: "translation", scope: !2807, file: !205, line: 201, type: !33)
!2814 = !DILocalVariable(name: "locale_code", scope: !2807, file: !205, line: 202, type: !33)
!2815 = !DILocation(line: 199, column: 28, scope: !2807)
!2816 = !DILocation(line: 199, column: 54, scope: !2807)
!2817 = !DILocation(line: 201, column: 29, scope: !2807)
!2818 = !DILocation(line: 201, column: 15, scope: !2807)
!2819 = !DILocation(line: 204, column: 19, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2807, file: !205, line: 204, column: 7)
!2821 = !DILocation(line: 204, column: 7, scope: !2807)
!2822 = !DILocation(line: 225, column: 17, scope: !2807)
!2823 = !DILocation(line: 202, column: 15, scope: !2807)
!2824 = !DILocalVariable(name: "s2", arg: 2, scope: !2825, file: !2826, line: 160, type: !33)
!2825 = distinct !DISubprogram(name: "strcaseeq0", scope: !2826, file: !2826, line: 160, type: !2827, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2829)
!2826 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!35, !33, !33, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!2829 = !{!2830, !2824, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2830 = !DILocalVariable(name: "s1", arg: 1, scope: !2825, file: !2826, line: 160, type: !33)
!2831 = !DILocalVariable(name: "s20", arg: 3, scope: !2825, file: !2826, line: 160, type: !23)
!2832 = !DILocalVariable(name: "s21", arg: 4, scope: !2825, file: !2826, line: 160, type: !23)
!2833 = !DILocalVariable(name: "s22", arg: 5, scope: !2825, file: !2826, line: 160, type: !23)
!2834 = !DILocalVariable(name: "s23", arg: 6, scope: !2825, file: !2826, line: 160, type: !23)
!2835 = !DILocalVariable(name: "s24", arg: 7, scope: !2825, file: !2826, line: 160, type: !23)
!2836 = !DILocalVariable(name: "s25", arg: 8, scope: !2825, file: !2826, line: 160, type: !23)
!2837 = !DILocalVariable(name: "s26", arg: 9, scope: !2825, file: !2826, line: 160, type: !23)
!2838 = !DILocalVariable(name: "s27", arg: 10, scope: !2825, file: !2826, line: 160, type: !23)
!2839 = !DILocalVariable(name: "s28", arg: 11, scope: !2825, file: !2826, line: 160, type: !23)
!2840 = !DILocation(line: 160, column: 41, scope: !2825, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 226, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2807, file: !205, line: 226, column: 7)
!2843 = !DILocation(line: 160, column: 120, scope: !2825, inlinedAt: !2841)
!2844 = !DILocation(line: 160, column: 130, scope: !2825, inlinedAt: !2841)
!2845 = !DILocation(line: 162, column: 7, scope: !2846, inlinedAt: !2841)
!2846 = !DILexicalBlockFile(scope: !2847, file: !2826, discriminator: 1)
!2847 = distinct !DILexicalBlock(scope: !2825, file: !2826, line: 162, column: 7)
!2848 = !DILocalVariable(name: "s2", arg: 2, scope: !2849, file: !2826, line: 146, type: !33)
!2849 = distinct !DISubprogram(name: "strcaseeq1", scope: !2826, file: !2826, line: 146, type: !2850, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!35, !33, !33, !23, !23, !23, !23, !23, !23, !23, !23}
!2852 = !{!2853, !2848, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861}
!2853 = !DILocalVariable(name: "s1", arg: 1, scope: !2849, file: !2826, line: 146, type: !33)
!2854 = !DILocalVariable(name: "s21", arg: 3, scope: !2849, file: !2826, line: 146, type: !23)
!2855 = !DILocalVariable(name: "s22", arg: 4, scope: !2849, file: !2826, line: 146, type: !23)
!2856 = !DILocalVariable(name: "s23", arg: 5, scope: !2849, file: !2826, line: 146, type: !23)
!2857 = !DILocalVariable(name: "s24", arg: 6, scope: !2849, file: !2826, line: 146, type: !23)
!2858 = !DILocalVariable(name: "s25", arg: 7, scope: !2849, file: !2826, line: 146, type: !23)
!2859 = !DILocalVariable(name: "s26", arg: 8, scope: !2849, file: !2826, line: 146, type: !23)
!2860 = !DILocalVariable(name: "s27", arg: 9, scope: !2849, file: !2826, line: 146, type: !23)
!2861 = !DILocalVariable(name: "s28", arg: 10, scope: !2849, file: !2826, line: 146, type: !23)
!2862 = !DILocation(line: 146, column: 41, scope: !2849, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 167, column: 16, scope: !2864, inlinedAt: !2841)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !2826, line: 164, column: 11)
!2865 = distinct !DILexicalBlock(scope: !2847, file: !2826, line: 163, column: 5)
!2866 = !DILocation(line: 146, column: 110, scope: !2849, inlinedAt: !2863)
!2867 = !DILocation(line: 146, column: 120, scope: !2849, inlinedAt: !2863)
!2868 = !DILocation(line: 148, column: 7, scope: !2869, inlinedAt: !2863)
!2869 = !DILexicalBlockFile(scope: !2870, file: !2826, discriminator: 1)
!2870 = distinct !DILexicalBlock(scope: !2849, file: !2826, line: 148, column: 7)
!2871 = !DILocalVariable(name: "s2", arg: 2, scope: !2872, file: !2826, line: 132, type: !33)
!2872 = distinct !DISubprogram(name: "strcaseeq2", scope: !2826, file: !2826, line: 132, type: !2873, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!35, !33, !33, !23, !23, !23, !23, !23, !23, !23}
!2875 = !{!2876, !2871, !2877, !2878, !2879, !2880, !2881, !2882, !2883}
!2876 = !DILocalVariable(name: "s1", arg: 1, scope: !2872, file: !2826, line: 132, type: !33)
!2877 = !DILocalVariable(name: "s22", arg: 3, scope: !2872, file: !2826, line: 132, type: !23)
!2878 = !DILocalVariable(name: "s23", arg: 4, scope: !2872, file: !2826, line: 132, type: !23)
!2879 = !DILocalVariable(name: "s24", arg: 5, scope: !2872, file: !2826, line: 132, type: !23)
!2880 = !DILocalVariable(name: "s25", arg: 6, scope: !2872, file: !2826, line: 132, type: !23)
!2881 = !DILocalVariable(name: "s26", arg: 7, scope: !2872, file: !2826, line: 132, type: !23)
!2882 = !DILocalVariable(name: "s27", arg: 8, scope: !2872, file: !2826, line: 132, type: !23)
!2883 = !DILocalVariable(name: "s28", arg: 9, scope: !2872, file: !2826, line: 132, type: !23)
!2884 = !DILocation(line: 132, column: 41, scope: !2872, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 153, column: 16, scope: !2886, inlinedAt: !2863)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !2826, line: 150, column: 11)
!2887 = distinct !DILexicalBlock(scope: !2870, file: !2826, line: 149, column: 5)
!2888 = !DILocation(line: 132, column: 100, scope: !2872, inlinedAt: !2885)
!2889 = !DILocation(line: 132, column: 110, scope: !2872, inlinedAt: !2885)
!2890 = !DILocation(line: 134, column: 7, scope: !2891, inlinedAt: !2885)
!2891 = !DILexicalBlockFile(scope: !2892, file: !2826, discriminator: 1)
!2892 = distinct !DILexicalBlock(scope: !2872, file: !2826, line: 134, column: 7)
!2893 = !DILocalVariable(name: "s2", arg: 2, scope: !2894, file: !2826, line: 118, type: !33)
!2894 = distinct !DISubprogram(name: "strcaseeq3", scope: !2826, file: !2826, line: 118, type: !2895, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!35, !33, !33, !23, !23, !23, !23, !23, !23}
!2897 = !{!2898, !2893, !2899, !2900, !2901, !2902, !2903, !2904}
!2898 = !DILocalVariable(name: "s1", arg: 1, scope: !2894, file: !2826, line: 118, type: !33)
!2899 = !DILocalVariable(name: "s23", arg: 3, scope: !2894, file: !2826, line: 118, type: !23)
!2900 = !DILocalVariable(name: "s24", arg: 4, scope: !2894, file: !2826, line: 118, type: !23)
!2901 = !DILocalVariable(name: "s25", arg: 5, scope: !2894, file: !2826, line: 118, type: !23)
!2902 = !DILocalVariable(name: "s26", arg: 6, scope: !2894, file: !2826, line: 118, type: !23)
!2903 = !DILocalVariable(name: "s27", arg: 7, scope: !2894, file: !2826, line: 118, type: !23)
!2904 = !DILocalVariable(name: "s28", arg: 8, scope: !2894, file: !2826, line: 118, type: !23)
!2905 = !DILocation(line: 118, column: 41, scope: !2894, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 139, column: 16, scope: !2907, inlinedAt: !2885)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !2826, line: 136, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2892, file: !2826, line: 135, column: 5)
!2909 = !DILocation(line: 118, column: 90, scope: !2894, inlinedAt: !2906)
!2910 = !DILocation(line: 118, column: 100, scope: !2894, inlinedAt: !2906)
!2911 = !DILocation(line: 120, column: 7, scope: !2912, inlinedAt: !2906)
!2912 = !DILexicalBlockFile(scope: !2913, file: !2826, discriminator: 2)
!2913 = distinct !DILexicalBlock(scope: !2894, file: !2826, line: 120, column: 7)
!2914 = !DILocation(line: 120, column: 7, scope: !2915, inlinedAt: !2906)
!2915 = !DILexicalBlockFile(scope: !2894, file: !2826, discriminator: 2)
!2916 = !DILocalVariable(name: "s2", arg: 2, scope: !2917, file: !2826, line: 104, type: !33)
!2917 = distinct !DISubprogram(name: "strcaseeq4", scope: !2826, file: !2826, line: 104, type: !2918, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!35, !33, !33, !23, !23, !23, !23, !23}
!2920 = !{!2921, !2916, !2922, !2923, !2924, !2925, !2926}
!2921 = !DILocalVariable(name: "s1", arg: 1, scope: !2917, file: !2826, line: 104, type: !33)
!2922 = !DILocalVariable(name: "s24", arg: 3, scope: !2917, file: !2826, line: 104, type: !23)
!2923 = !DILocalVariable(name: "s25", arg: 4, scope: !2917, file: !2826, line: 104, type: !23)
!2924 = !DILocalVariable(name: "s26", arg: 5, scope: !2917, file: !2826, line: 104, type: !23)
!2925 = !DILocalVariable(name: "s27", arg: 6, scope: !2917, file: !2826, line: 104, type: !23)
!2926 = !DILocalVariable(name: "s28", arg: 7, scope: !2917, file: !2826, line: 104, type: !23)
!2927 = !DILocation(line: 104, column: 41, scope: !2917, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 125, column: 16, scope: !2929, inlinedAt: !2906)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !2826, line: 122, column: 11)
!2930 = distinct !DILexicalBlock(scope: !2913, file: !2826, line: 121, column: 5)
!2931 = !DILocation(line: 104, column: 80, scope: !2917, inlinedAt: !2928)
!2932 = !DILocation(line: 104, column: 90, scope: !2917, inlinedAt: !2928)
!2933 = !DILocation(line: 106, column: 7, scope: !2934, inlinedAt: !2928)
!2934 = !DILexicalBlockFile(scope: !2935, file: !2826, discriminator: 2)
!2935 = distinct !DILexicalBlock(scope: !2917, file: !2826, line: 106, column: 7)
!2936 = !DILocation(line: 106, column: 7, scope: !2937, inlinedAt: !2928)
!2937 = !DILexicalBlockFile(scope: !2917, file: !2826, discriminator: 2)
!2938 = !DILocalVariable(name: "s2", arg: 2, scope: !2939, file: !2826, line: 90, type: !33)
!2939 = distinct !DISubprogram(name: "strcaseeq5", scope: !2826, file: !2826, line: 90, type: !2940, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!35, !33, !33, !23, !23, !23, !23}
!2942 = !{!2943, !2938, !2944, !2945, !2946, !2947}
!2943 = !DILocalVariable(name: "s1", arg: 1, scope: !2939, file: !2826, line: 90, type: !33)
!2944 = !DILocalVariable(name: "s25", arg: 3, scope: !2939, file: !2826, line: 90, type: !23)
!2945 = !DILocalVariable(name: "s26", arg: 4, scope: !2939, file: !2826, line: 90, type: !23)
!2946 = !DILocalVariable(name: "s27", arg: 5, scope: !2939, file: !2826, line: 90, type: !23)
!2947 = !DILocalVariable(name: "s28", arg: 6, scope: !2939, file: !2826, line: 90, type: !23)
!2948 = !DILocation(line: 90, column: 41, scope: !2939, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 111, column: 16, scope: !2950, inlinedAt: !2928)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !2826, line: 108, column: 11)
!2951 = distinct !DILexicalBlock(scope: !2935, file: !2826, line: 107, column: 5)
!2952 = !DILocation(line: 90, column: 70, scope: !2939, inlinedAt: !2949)
!2953 = !DILocation(line: 90, column: 80, scope: !2939, inlinedAt: !2949)
!2954 = !DILocation(line: 92, column: 7, scope: !2955, inlinedAt: !2949)
!2955 = !DILexicalBlockFile(scope: !2956, file: !2826, discriminator: 2)
!2956 = distinct !DILexicalBlock(scope: !2939, file: !2826, line: 92, column: 7)
!2957 = !DILocation(line: 92, column: 7, scope: !2958, inlinedAt: !2949)
!2958 = !DILexicalBlockFile(scope: !2939, file: !2826, discriminator: 2)
!2959 = !DILocation(line: 227, column: 12, scope: !2842)
!2960 = !DILocation(line: 227, column: 21, scope: !2842)
!2961 = !DILocation(line: 227, column: 5, scope: !2842)
!2962 = !DILocation(line: 146, column: 41, scope: !2849, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 167, column: 16, scope: !2864, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 228, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2807, file: !205, line: 228, column: 7)
!2966 = !DILocation(line: 146, column: 110, scope: !2849, inlinedAt: !2963)
!2967 = !DILocation(line: 146, column: 120, scope: !2849, inlinedAt: !2963)
!2968 = !DILocation(line: 148, column: 7, scope: !2869, inlinedAt: !2963)
!2969 = !DILocation(line: 132, column: 41, scope: !2872, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 153, column: 16, scope: !2886, inlinedAt: !2963)
!2971 = !DILocation(line: 132, column: 100, scope: !2872, inlinedAt: !2970)
!2972 = !DILocation(line: 132, column: 110, scope: !2872, inlinedAt: !2970)
!2973 = !DILocation(line: 134, column: 7, scope: !2974, inlinedAt: !2970)
!2974 = !DILexicalBlockFile(scope: !2892, file: !2826, discriminator: 2)
!2975 = !DILocation(line: 134, column: 7, scope: !2976, inlinedAt: !2970)
!2976 = !DILexicalBlockFile(scope: !2872, file: !2826, discriminator: 2)
!2977 = !DILocation(line: 118, column: 41, scope: !2894, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 139, column: 16, scope: !2907, inlinedAt: !2970)
!2979 = !DILocation(line: 118, column: 90, scope: !2894, inlinedAt: !2978)
!2980 = !DILocation(line: 118, column: 100, scope: !2894, inlinedAt: !2978)
!2981 = !DILocation(line: 120, column: 7, scope: !2912, inlinedAt: !2978)
!2982 = !DILocation(line: 120, column: 7, scope: !2915, inlinedAt: !2978)
!2983 = !DILocation(line: 104, column: 41, scope: !2917, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 125, column: 16, scope: !2929, inlinedAt: !2978)
!2985 = !DILocation(line: 104, column: 80, scope: !2917, inlinedAt: !2984)
!2986 = !DILocation(line: 104, column: 90, scope: !2917, inlinedAt: !2984)
!2987 = !DILocation(line: 106, column: 7, scope: !2934, inlinedAt: !2984)
!2988 = !DILocation(line: 106, column: 7, scope: !2937, inlinedAt: !2984)
!2989 = !DILocation(line: 90, column: 41, scope: !2939, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 111, column: 16, scope: !2950, inlinedAt: !2984)
!2991 = !DILocation(line: 90, column: 70, scope: !2939, inlinedAt: !2990)
!2992 = !DILocation(line: 90, column: 80, scope: !2939, inlinedAt: !2990)
!2993 = !DILocation(line: 92, column: 7, scope: !2955, inlinedAt: !2990)
!2994 = !DILocation(line: 92, column: 7, scope: !2958, inlinedAt: !2990)
!2995 = !DILocalVariable(name: "s2", arg: 2, scope: !2996, file: !2826, line: 76, type: !33)
!2996 = distinct !DISubprogram(name: "strcaseeq6", scope: !2826, file: !2826, line: 76, type: !2997, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!35, !33, !33, !23, !23, !23}
!2999 = !{!3000, !2995, !3001, !3002, !3003}
!3000 = !DILocalVariable(name: "s1", arg: 1, scope: !2996, file: !2826, line: 76, type: !33)
!3001 = !DILocalVariable(name: "s26", arg: 3, scope: !2996, file: !2826, line: 76, type: !23)
!3002 = !DILocalVariable(name: "s27", arg: 4, scope: !2996, file: !2826, line: 76, type: !23)
!3003 = !DILocalVariable(name: "s28", arg: 5, scope: !2996, file: !2826, line: 76, type: !23)
!3004 = !DILocation(line: 76, column: 41, scope: !2996, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 97, column: 16, scope: !3006, inlinedAt: !2990)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !2826, line: 94, column: 11)
!3007 = distinct !DILexicalBlock(scope: !2956, file: !2826, line: 93, column: 5)
!3008 = !DILocation(line: 76, column: 60, scope: !2996, inlinedAt: !3005)
!3009 = !DILocation(line: 76, column: 70, scope: !2996, inlinedAt: !3005)
!3010 = !DILocation(line: 78, column: 7, scope: !3011, inlinedAt: !3005)
!3011 = !DILexicalBlockFile(scope: !3012, file: !2826, discriminator: 2)
!3012 = distinct !DILexicalBlock(scope: !2996, file: !2826, line: 78, column: 7)
!3013 = !DILocation(line: 78, column: 7, scope: !3014, inlinedAt: !3005)
!3014 = !DILexicalBlockFile(scope: !2996, file: !2826, discriminator: 2)
!3015 = !DILocalVariable(name: "s2", arg: 2, scope: !3016, file: !2826, line: 62, type: !33)
!3016 = distinct !DISubprogram(name: "strcaseeq7", scope: !2826, file: !2826, line: 62, type: !3017, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!35, !33, !33, !23, !23}
!3019 = !{!3020, !3015, !3021, !3022}
!3020 = !DILocalVariable(name: "s1", arg: 1, scope: !3016, file: !2826, line: 62, type: !33)
!3021 = !DILocalVariable(name: "s27", arg: 3, scope: !3016, file: !2826, line: 62, type: !23)
!3022 = !DILocalVariable(name: "s28", arg: 4, scope: !3016, file: !2826, line: 62, type: !23)
!3023 = !DILocation(line: 62, column: 41, scope: !3016, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 83, column: 16, scope: !3025, inlinedAt: !3005)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !2826, line: 80, column: 11)
!3026 = distinct !DILexicalBlock(scope: !3012, file: !2826, line: 79, column: 5)
!3027 = !DILocation(line: 62, column: 50, scope: !3016, inlinedAt: !3024)
!3028 = !DILocation(line: 62, column: 60, scope: !3016, inlinedAt: !3024)
!3029 = !DILocation(line: 64, column: 7, scope: !3030, inlinedAt: !3024)
!3030 = !DILexicalBlockFile(scope: !3031, file: !2826, discriminator: 2)
!3031 = distinct !DILexicalBlock(scope: !3016, file: !2826, line: 64, column: 7)
!3032 = !DILocation(line: 228, column: 7, scope: !2807)
!3033 = !DILocation(line: 229, column: 12, scope: !2965)
!3034 = !DILocation(line: 229, column: 21, scope: !2965)
!3035 = !DILocation(line: 229, column: 5, scope: !2965)
!3036 = !DILocation(line: 231, column: 13, scope: !2807)
!3037 = !DILocation(line: 231, column: 11, scope: !2807)
!3038 = !DILocation(line: 231, column: 3, scope: !2807)
!3039 = !DILocation(line: 232, column: 1, scope: !2807)
!3040 = distinct !DISubprogram(name: "quotearg_alloc", scope: !205, file: !205, line: 791, type: !3041, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!22, !33, !25, !1883}
!3043 = !{!3044, !3045, !3046}
!3044 = !DILocalVariable(name: "arg", arg: 1, scope: !3040, file: !205, line: 791, type: !33)
!3045 = !DILocalVariable(name: "argsize", arg: 2, scope: !3040, file: !205, line: 791, type: !25)
!3046 = !DILocalVariable(name: "o", arg: 3, scope: !3040, file: !205, line: 792, type: !1883)
!3047 = !DILocation(line: 791, column: 29, scope: !3040)
!3048 = !DILocation(line: 791, column: 41, scope: !3040)
!3049 = !DILocation(line: 792, column: 47, scope: !3040)
!3050 = !DILocalVariable(name: "arg", arg: 1, scope: !3051, file: !205, line: 804, type: !33)
!3051 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !205, file: !205, line: 804, type: !3052, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!22, !33, !25, !617, !1883}
!3054 = !{!3050, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062}
!3055 = !DILocalVariable(name: "argsize", arg: 2, scope: !3051, file: !205, line: 804, type: !25)
!3056 = !DILocalVariable(name: "size", arg: 3, scope: !3051, file: !205, line: 804, type: !617)
!3057 = !DILocalVariable(name: "o", arg: 4, scope: !3051, file: !205, line: 805, type: !1883)
!3058 = !DILocalVariable(name: "p", scope: !3051, file: !205, line: 807, type: !1883)
!3059 = !DILocalVariable(name: "e", scope: !3051, file: !205, line: 808, type: !35)
!3060 = !DILocalVariable(name: "flags", scope: !3051, file: !205, line: 810, type: !35)
!3061 = !DILocalVariable(name: "bufsize", scope: !3051, file: !205, line: 811, type: !25)
!3062 = !DILocalVariable(name: "buf", scope: !3051, file: !205, line: 815, type: !22)
!3063 = !DILocation(line: 804, column: 33, scope: !3051, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 794, column: 10, scope: !3040)
!3065 = !DILocation(line: 804, column: 45, scope: !3051, inlinedAt: !3064)
!3066 = !DILocation(line: 804, column: 62, scope: !3051, inlinedAt: !3064)
!3067 = !DILocation(line: 805, column: 51, scope: !3051, inlinedAt: !3064)
!3068 = !DILocation(line: 807, column: 37, scope: !3051, inlinedAt: !3064)
!3069 = !DILocation(line: 807, column: 33, scope: !3051, inlinedAt: !3064)
!3070 = !DILocation(line: 808, column: 11, scope: !3051, inlinedAt: !3064)
!3071 = !DILocation(line: 808, column: 7, scope: !3051, inlinedAt: !3064)
!3072 = !DILocation(line: 810, column: 18, scope: !3051, inlinedAt: !3064)
!3073 = !DILocation(line: 810, column: 24, scope: !3051, inlinedAt: !3064)
!3074 = !DILocation(line: 810, column: 7, scope: !3051, inlinedAt: !3064)
!3075 = !DILocation(line: 811, column: 69, scope: !3051, inlinedAt: !3064)
!3076 = !DILocation(line: 812, column: 53, scope: !3051, inlinedAt: !3064)
!3077 = !DILocation(line: 813, column: 49, scope: !3051, inlinedAt: !3064)
!3078 = !DILocation(line: 814, column: 49, scope: !3051, inlinedAt: !3064)
!3079 = !DILocation(line: 811, column: 20, scope: !3051, inlinedAt: !3064)
!3080 = !DILocation(line: 814, column: 62, scope: !3051, inlinedAt: !3064)
!3081 = !DILocation(line: 811, column: 10, scope: !3051, inlinedAt: !3064)
!3082 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !613, line: 220, type: !25)
!3083 = distinct !DISubprogram(name: "xcharalloc", scope: !613, file: !613, line: 220, type: !3084, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!22, !25}
!3086 = !{!3082}
!3087 = !DILocation(line: 220, column: 20, scope: !3083, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 815, column: 15, scope: !3051, inlinedAt: !3064)
!3089 = !DILocation(line: 222, column: 10, scope: !3083, inlinedAt: !3088)
!3090 = !DILocation(line: 815, column: 9, scope: !3051, inlinedAt: !3064)
!3091 = !DILocation(line: 816, column: 60, scope: !3051, inlinedAt: !3064)
!3092 = !DILocation(line: 818, column: 32, scope: !3051, inlinedAt: !3064)
!3093 = !DILocation(line: 818, column: 47, scope: !3051, inlinedAt: !3064)
!3094 = !DILocation(line: 816, column: 3, scope: !3051, inlinedAt: !3064)
!3095 = !DILocation(line: 819, column: 9, scope: !3051, inlinedAt: !3064)
!3096 = !DILocation(line: 794, column: 3, scope: !3040)
!3097 = !DILocation(line: 804, column: 33, scope: !3051)
!3098 = !DILocation(line: 804, column: 45, scope: !3051)
!3099 = !DILocation(line: 804, column: 62, scope: !3051)
!3100 = !DILocation(line: 805, column: 51, scope: !3051)
!3101 = !DILocation(line: 807, column: 37, scope: !3051)
!3102 = !DILocation(line: 807, column: 33, scope: !3051)
!3103 = !DILocation(line: 808, column: 11, scope: !3051)
!3104 = !DILocation(line: 808, column: 7, scope: !3051)
!3105 = !DILocation(line: 810, column: 18, scope: !3051)
!3106 = !DILocation(line: 810, column: 27, scope: !3051)
!3107 = !DILocation(line: 810, column: 24, scope: !3051)
!3108 = !DILocation(line: 810, column: 7, scope: !3051)
!3109 = !DILocation(line: 811, column: 69, scope: !3051)
!3110 = !DILocation(line: 812, column: 53, scope: !3051)
!3111 = !DILocation(line: 813, column: 49, scope: !3051)
!3112 = !DILocation(line: 814, column: 49, scope: !3051)
!3113 = !DILocation(line: 811, column: 20, scope: !3051)
!3114 = !DILocation(line: 814, column: 62, scope: !3051)
!3115 = !DILocation(line: 811, column: 10, scope: !3051)
!3116 = !DILocation(line: 220, column: 20, scope: !3083, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 815, column: 15, scope: !3051)
!3118 = !DILocation(line: 222, column: 10, scope: !3083, inlinedAt: !3117)
!3119 = !DILocation(line: 815, column: 9, scope: !3051)
!3120 = !DILocation(line: 816, column: 60, scope: !3051)
!3121 = !DILocation(line: 818, column: 32, scope: !3051)
!3122 = !DILocation(line: 818, column: 47, scope: !3051)
!3123 = !DILocation(line: 816, column: 3, scope: !3051)
!3124 = !DILocation(line: 819, column: 9, scope: !3051)
!3125 = !DILocation(line: 820, column: 7, scope: !3051)
!3126 = !DILocation(line: 821, column: 11, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3051, file: !205, line: 820, column: 7)
!3128 = !DILocation(line: 821, column: 5, scope: !3127)
!3129 = !DILocation(line: 822, column: 3, scope: !3051)
!3130 = distinct !DISubprogram(name: "quotearg_free", scope: !205, file: !205, line: 840, type: !680, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3131)
!3131 = !{!3132, !3133}
!3132 = !DILocalVariable(name: "sv", scope: !3130, file: !205, line: 842, type: !231)
!3133 = !DILocalVariable(name: "i", scope: !3130, file: !205, line: 843, type: !35)
!3134 = !DILocation(line: 842, column: 24, scope: !3130)
!3135 = !DILocation(line: 842, column: 19, scope: !3130)
!3136 = !DILocation(line: 843, column: 7, scope: !3130)
!3137 = !DILocation(line: 844, column: 19, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3139, file: !205, discriminator: 1)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !205, line: 844, column: 3)
!3140 = distinct !DILexicalBlock(scope: !3130, file: !205, line: 844, column: 3)
!3141 = !DILocation(line: 844, column: 17, scope: !3138)
!3142 = !DILocation(line: 844, column: 3, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !3140, file: !205, discriminator: 1)
!3144 = !DILocation(line: 845, column: 17, scope: !3139)
!3145 = !{!3146, !665, i64 8}
!3146 = !{!"slotvec", !1144, i64 0, !665, i64 8}
!3147 = !DILocation(line: 845, column: 5, scope: !3139)
!3148 = !DILocation(line: 844, column: 28, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3139, file: !205, discriminator: 2)
!3150 = distinct !{!3150, !3151, !3152}
!3151 = !DILocation(line: 844, column: 3, scope: !3140)
!3152 = !DILocation(line: 845, column: 20, scope: !3140)
!3153 = !DILocation(line: 846, column: 13, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3130, file: !205, line: 846, column: 7)
!3155 = !DILocation(line: 846, column: 17, scope: !3154)
!3156 = !DILocation(line: 846, column: 7, scope: !3130)
!3157 = !DILocation(line: 848, column: 7, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3154, file: !205, line: 847, column: 5)
!3159 = !DILocation(line: 849, column: 21, scope: !3158)
!3160 = !{!3146, !1144, i64 0}
!3161 = !DILocation(line: 850, column: 20, scope: !3158)
!3162 = !DILocation(line: 851, column: 5, scope: !3158)
!3163 = !DILocation(line: 852, column: 10, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3130, file: !205, line: 852, column: 7)
!3165 = !DILocation(line: 852, column: 7, scope: !3130)
!3166 = !DILocation(line: 854, column: 13, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3164, file: !205, line: 853, column: 5)
!3168 = !DILocation(line: 854, column: 7, scope: !3167)
!3169 = !DILocation(line: 855, column: 15, scope: !3167)
!3170 = !DILocation(line: 856, column: 5, scope: !3167)
!3171 = !DILocation(line: 857, column: 10, scope: !3130)
!3172 = !DILocation(line: 858, column: 1, scope: !3130)
!3173 = distinct !DISubprogram(name: "quotearg_n", scope: !205, file: !205, line: 922, type: !3174, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!22, !35, !33}
!3176 = !{!3177, !3178}
!3177 = !DILocalVariable(name: "n", arg: 1, scope: !3173, file: !205, line: 922, type: !35)
!3178 = !DILocalVariable(name: "arg", arg: 2, scope: !3173, file: !205, line: 922, type: !33)
!3179 = !DILocation(line: 922, column: 17, scope: !3173)
!3180 = !DILocation(line: 922, column: 32, scope: !3173)
!3181 = !DILocation(line: 924, column: 10, scope: !3173)
!3182 = !DILocation(line: 924, column: 3, scope: !3173)
!3183 = distinct !DISubprogram(name: "quotearg_n_options", scope: !205, file: !205, line: 869, type: !3184, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!22, !35, !33, !25, !1883}
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3192, !3193, !3196, !3198, !3199, !3200}
!3187 = !DILocalVariable(name: "n", arg: 1, scope: !3183, file: !205, line: 869, type: !35)
!3188 = !DILocalVariable(name: "arg", arg: 2, scope: !3183, file: !205, line: 869, type: !33)
!3189 = !DILocalVariable(name: "argsize", arg: 3, scope: !3183, file: !205, line: 869, type: !25)
!3190 = !DILocalVariable(name: "options", arg: 4, scope: !3183, file: !205, line: 870, type: !1883)
!3191 = !DILocalVariable(name: "e", scope: !3183, file: !205, line: 872, type: !35)
!3192 = !DILocalVariable(name: "sv", scope: !3183, file: !205, line: 874, type: !231)
!3193 = !DILocalVariable(name: "preallocated", scope: !3194, file: !205, line: 881, type: !40)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !205, line: 880, column: 5)
!3195 = distinct !DILexicalBlock(scope: !3183, file: !205, line: 879, column: 7)
!3196 = !DILocalVariable(name: "size", scope: !3197, file: !205, line: 894, type: !25)
!3197 = distinct !DILexicalBlock(scope: !3183, file: !205, line: 893, column: 3)
!3198 = !DILocalVariable(name: "val", scope: !3197, file: !205, line: 895, type: !22)
!3199 = !DILocalVariable(name: "flags", scope: !3197, file: !205, line: 897, type: !35)
!3200 = !DILocalVariable(name: "qsize", scope: !3197, file: !205, line: 898, type: !25)
!3201 = !DILocation(line: 869, column: 25, scope: !3183)
!3202 = !DILocation(line: 869, column: 40, scope: !3183)
!3203 = !DILocation(line: 869, column: 52, scope: !3183)
!3204 = !DILocation(line: 870, column: 51, scope: !3183)
!3205 = !DILocation(line: 872, column: 11, scope: !3183)
!3206 = !DILocation(line: 872, column: 7, scope: !3183)
!3207 = !DILocation(line: 874, column: 24, scope: !3183)
!3208 = !DILocation(line: 874, column: 19, scope: !3183)
!3209 = !DILocation(line: 876, column: 9, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3183, file: !205, line: 876, column: 7)
!3211 = !DILocation(line: 876, column: 7, scope: !3183)
!3212 = !DILocation(line: 877, column: 5, scope: !3210)
!3213 = !DILocation(line: 879, column: 7, scope: !3195)
!3214 = !DILocation(line: 879, column: 14, scope: !3195)
!3215 = !DILocation(line: 879, column: 7, scope: !3183)
!3216 = !DILocation(line: 881, column: 31, scope: !3194)
!3217 = !DILocation(line: 883, column: 67, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3194, file: !205, line: 883, column: 11)
!3219 = !DILocation(line: 883, column: 11, scope: !3194)
!3220 = !DILocation(line: 884, column: 9, scope: !3218)
!3221 = !DILocation(line: 886, column: 32, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3194, file: !205, discriminator: 3)
!3223 = !DILocation(line: 886, column: 61, scope: !3222)
!3224 = !DILocation(line: 886, column: 58, scope: !3222)
!3225 = !DILocation(line: 886, column: 66, scope: !3222)
!3226 = !DILocation(line: 886, column: 22, scope: !3222)
!3227 = !DILocation(line: 886, column: 15, scope: !3222)
!3228 = !DILocation(line: 887, column: 11, scope: !3194)
!3229 = !DILocation(line: 888, column: 15, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3194, file: !205, line: 887, column: 11)
!3231 = !{i64 0, i64 8, !1721, i64 8, i64 8, !664}
!3232 = !DILocation(line: 888, column: 9, scope: !3230)
!3233 = !DILocation(line: 889, column: 20, scope: !3194)
!3234 = !DILocation(line: 889, column: 18, scope: !3194)
!3235 = !DILocation(line: 889, column: 7, scope: !3194)
!3236 = !DILocation(line: 889, column: 38, scope: !3194)
!3237 = !DILocation(line: 889, column: 31, scope: !3194)
!3238 = !DILocation(line: 889, column: 48, scope: !3194)
!3239 = !DILocation(line: 890, column: 14, scope: !3194)
!3240 = !DILocation(line: 891, column: 5, scope: !3194)
!3241 = !DILocation(line: 894, column: 19, scope: !3197)
!3242 = !DILocation(line: 894, column: 25, scope: !3197)
!3243 = !DILocation(line: 894, column: 12, scope: !3197)
!3244 = !DILocation(line: 895, column: 23, scope: !3197)
!3245 = !DILocation(line: 895, column: 11, scope: !3197)
!3246 = !DILocation(line: 897, column: 26, scope: !3197)
!3247 = !DILocation(line: 897, column: 32, scope: !3197)
!3248 = !DILocation(line: 897, column: 9, scope: !3197)
!3249 = !DILocation(line: 899, column: 55, scope: !3197)
!3250 = !DILocation(line: 900, column: 46, scope: !3197)
!3251 = !DILocation(line: 901, column: 55, scope: !3197)
!3252 = !DILocation(line: 902, column: 55, scope: !3197)
!3253 = !DILocation(line: 898, column: 20, scope: !3197)
!3254 = !DILocation(line: 898, column: 12, scope: !3197)
!3255 = !DILocation(line: 904, column: 14, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3197, file: !205, line: 904, column: 9)
!3257 = !DILocation(line: 904, column: 9, scope: !3197)
!3258 = !DILocation(line: 906, column: 35, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3256, file: !205, line: 905, column: 7)
!3260 = !DILocation(line: 906, column: 20, scope: !3259)
!3261 = !DILocation(line: 907, column: 17, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3259, file: !205, line: 907, column: 13)
!3263 = !DILocation(line: 907, column: 13, scope: !3259)
!3264 = !DILocation(line: 908, column: 11, scope: !3262)
!3265 = !DILocation(line: 220, column: 20, scope: !3083, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 909, column: 27, scope: !3259)
!3267 = !DILocation(line: 222, column: 10, scope: !3083, inlinedAt: !3266)
!3268 = !DILocation(line: 909, column: 19, scope: !3259)
!3269 = !DILocation(line: 910, column: 69, scope: !3259)
!3270 = !DILocation(line: 912, column: 44, scope: !3259)
!3271 = !DILocation(line: 913, column: 44, scope: !3259)
!3272 = !DILocation(line: 910, column: 9, scope: !3259)
!3273 = !DILocation(line: 914, column: 7, scope: !3259)
!3274 = !DILocation(line: 916, column: 11, scope: !3197)
!3275 = !DILocation(line: 917, column: 5, scope: !3197)
!3276 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !205, file: !205, line: 928, type: !3277, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!22, !35, !33, !25}
!3279 = !{!3280, !3281, !3282}
!3280 = !DILocalVariable(name: "n", arg: 1, scope: !3276, file: !205, line: 928, type: !35)
!3281 = !DILocalVariable(name: "arg", arg: 2, scope: !3276, file: !205, line: 928, type: !33)
!3282 = !DILocalVariable(name: "argsize", arg: 3, scope: !3276, file: !205, line: 928, type: !25)
!3283 = !DILocation(line: 928, column: 21, scope: !3276)
!3284 = !DILocation(line: 928, column: 36, scope: !3276)
!3285 = !DILocation(line: 928, column: 48, scope: !3276)
!3286 = !DILocation(line: 930, column: 10, scope: !3276)
!3287 = !DILocation(line: 930, column: 3, scope: !3276)
!3288 = distinct !DISubprogram(name: "quotearg", scope: !205, file: !205, line: 934, type: !3289, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!22, !33}
!3291 = !{!3292}
!3292 = !DILocalVariable(name: "arg", arg: 1, scope: !3288, file: !205, line: 934, type: !33)
!3293 = !DILocation(line: 934, column: 23, scope: !3288)
!3294 = !DILocation(line: 922, column: 17, scope: !3173, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 936, column: 10, scope: !3288)
!3296 = !DILocation(line: 922, column: 32, scope: !3173, inlinedAt: !3295)
!3297 = !DILocation(line: 924, column: 10, scope: !3173, inlinedAt: !3295)
!3298 = !DILocation(line: 936, column: 3, scope: !3288)
!3299 = distinct !DISubprogram(name: "quotearg_mem", scope: !205, file: !205, line: 940, type: !3300, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!22, !33, !25}
!3302 = !{!3303, !3304}
!3303 = !DILocalVariable(name: "arg", arg: 1, scope: !3299, file: !205, line: 940, type: !33)
!3304 = !DILocalVariable(name: "argsize", arg: 2, scope: !3299, file: !205, line: 940, type: !25)
!3305 = !DILocation(line: 940, column: 27, scope: !3299)
!3306 = !DILocation(line: 940, column: 39, scope: !3299)
!3307 = !DILocation(line: 928, column: 21, scope: !3276, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 942, column: 10, scope: !3299)
!3309 = !DILocation(line: 928, column: 36, scope: !3276, inlinedAt: !3308)
!3310 = !DILocation(line: 928, column: 48, scope: !3276, inlinedAt: !3308)
!3311 = !DILocation(line: 930, column: 10, scope: !3276, inlinedAt: !3308)
!3312 = !DILocation(line: 942, column: 3, scope: !3299)
!3313 = distinct !DISubprogram(name: "quotearg_n_style", scope: !205, file: !205, line: 946, type: !3314, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!22, !35, !182, !33}
!3316 = !{!3317, !3318, !3319, !3320}
!3317 = !DILocalVariable(name: "n", arg: 1, scope: !3313, file: !205, line: 946, type: !35)
!3318 = !DILocalVariable(name: "s", arg: 2, scope: !3313, file: !205, line: 946, type: !182)
!3319 = !DILocalVariable(name: "arg", arg: 3, scope: !3313, file: !205, line: 946, type: !33)
!3320 = !DILocalVariable(name: "o", scope: !3313, file: !205, line: 948, type: !1884)
!3321 = !DILocalVariable(name: "o", scope: !3322, file: !205, line: 187, type: !212)
!3322 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !205, file: !205, line: 185, type: !3323, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!212, !182}
!3325 = !{!3326, !3321}
!3326 = !DILocalVariable(name: "style", arg: 1, scope: !3322, file: !205, line: 185, type: !182)
!3327 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3328 = !DILocation(line: 187, column: 26, scope: !3322, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 948, column: 36, scope: !3313)
!3330 = !DILocation(line: 946, column: 23, scope: !3313)
!3331 = !DILocation(line: 946, column: 45, scope: !3313)
!3332 = !DILocation(line: 946, column: 60, scope: !3313)
!3333 = !DILocation(line: 948, column: 3, scope: !3313)
!3334 = !DILocation(line: 948, column: 32, scope: !3313)
!3335 = !DILocation(line: 185, column: 48, scope: !3322, inlinedAt: !3329)
!3336 = !DILocation(line: 187, column: 3, scope: !3322, inlinedAt: !3329)
!3337 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3338 = !DILocation(line: 188, column: 13, scope: !3339, inlinedAt: !3329)
!3339 = distinct !DILexicalBlock(scope: !3322, file: !205, line: 188, column: 7)
!3340 = !DILocation(line: 188, column: 7, scope: !3322, inlinedAt: !3329)
!3341 = !DILocation(line: 189, column: 5, scope: !3339, inlinedAt: !3329)
!3342 = !{!3343}
!3343 = distinct !{!3343, !3344, !"quoting_options_from_style: argument 0"}
!3344 = distinct !{!3344, !"quoting_options_from_style"}
!3345 = !DILocation(line: 191, column: 10, scope: !3322, inlinedAt: !3329)
!3346 = !DILocation(line: 192, column: 1, scope: !3322, inlinedAt: !3329)
!3347 = !DILocation(line: 949, column: 10, scope: !3313)
!3348 = !DILocation(line: 950, column: 1, scope: !3313)
!3349 = !DILocation(line: 949, column: 3, scope: !3313)
!3350 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !205, file: !205, line: 953, type: !3351, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!22, !35, !182, !33, !25}
!3353 = !{!3354, !3355, !3356, !3357, !3358}
!3354 = !DILocalVariable(name: "n", arg: 1, scope: !3350, file: !205, line: 953, type: !35)
!3355 = !DILocalVariable(name: "s", arg: 2, scope: !3350, file: !205, line: 953, type: !182)
!3356 = !DILocalVariable(name: "arg", arg: 3, scope: !3350, file: !205, line: 954, type: !33)
!3357 = !DILocalVariable(name: "argsize", arg: 4, scope: !3350, file: !205, line: 954, type: !25)
!3358 = !DILocalVariable(name: "o", scope: !3350, file: !205, line: 956, type: !1884)
!3359 = !DILocation(line: 187, column: 26, scope: !3322, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 956, column: 36, scope: !3350)
!3361 = !DILocation(line: 953, column: 27, scope: !3350)
!3362 = !DILocation(line: 953, column: 49, scope: !3350)
!3363 = !DILocation(line: 954, column: 35, scope: !3350)
!3364 = !DILocation(line: 954, column: 47, scope: !3350)
!3365 = !DILocation(line: 956, column: 3, scope: !3350)
!3366 = !DILocation(line: 956, column: 32, scope: !3350)
!3367 = !DILocation(line: 185, column: 48, scope: !3322, inlinedAt: !3360)
!3368 = !DILocation(line: 187, column: 3, scope: !3322, inlinedAt: !3360)
!3369 = !DILocation(line: 188, column: 13, scope: !3339, inlinedAt: !3360)
!3370 = !DILocation(line: 188, column: 7, scope: !3322, inlinedAt: !3360)
!3371 = !DILocation(line: 189, column: 5, scope: !3339, inlinedAt: !3360)
!3372 = !{!3373}
!3373 = distinct !{!3373, !3374, !"quoting_options_from_style: argument 0"}
!3374 = distinct !{!3374, !"quoting_options_from_style"}
!3375 = !DILocation(line: 191, column: 10, scope: !3322, inlinedAt: !3360)
!3376 = !DILocation(line: 192, column: 1, scope: !3322, inlinedAt: !3360)
!3377 = !DILocation(line: 957, column: 10, scope: !3350)
!3378 = !DILocation(line: 958, column: 1, scope: !3350)
!3379 = !DILocation(line: 957, column: 3, scope: !3350)
!3380 = distinct !DISubprogram(name: "quotearg_style", scope: !205, file: !205, line: 961, type: !3381, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!22, !182, !33}
!3383 = !{!3384, !3385}
!3384 = !DILocalVariable(name: "s", arg: 1, scope: !3380, file: !205, line: 961, type: !182)
!3385 = !DILocalVariable(name: "arg", arg: 2, scope: !3380, file: !205, line: 961, type: !33)
!3386 = !DILocation(line: 187, column: 26, scope: !3322, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 948, column: 36, scope: !3313, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 963, column: 10, scope: !3380)
!3389 = !DILocation(line: 961, column: 36, scope: !3380)
!3390 = !DILocation(line: 961, column: 51, scope: !3380)
!3391 = !DILocation(line: 946, column: 23, scope: !3313, inlinedAt: !3388)
!3392 = !DILocation(line: 946, column: 45, scope: !3313, inlinedAt: !3388)
!3393 = !DILocation(line: 946, column: 60, scope: !3313, inlinedAt: !3388)
!3394 = !DILocation(line: 948, column: 3, scope: !3313, inlinedAt: !3388)
!3395 = !DILocation(line: 948, column: 32, scope: !3313, inlinedAt: !3388)
!3396 = !DILocation(line: 185, column: 48, scope: !3322, inlinedAt: !3387)
!3397 = !DILocation(line: 187, column: 3, scope: !3322, inlinedAt: !3387)
!3398 = !DILocation(line: 188, column: 13, scope: !3339, inlinedAt: !3387)
!3399 = !DILocation(line: 188, column: 7, scope: !3322, inlinedAt: !3387)
!3400 = !DILocation(line: 189, column: 5, scope: !3339, inlinedAt: !3387)
!3401 = !{!3402}
!3402 = distinct !{!3402, !3403, !"quoting_options_from_style: argument 0"}
!3403 = distinct !{!3403, !"quoting_options_from_style"}
!3404 = !DILocation(line: 191, column: 10, scope: !3322, inlinedAt: !3387)
!3405 = !DILocation(line: 192, column: 1, scope: !3322, inlinedAt: !3387)
!3406 = !DILocation(line: 949, column: 10, scope: !3313, inlinedAt: !3388)
!3407 = !DILocation(line: 950, column: 1, scope: !3313, inlinedAt: !3388)
!3408 = !DILocation(line: 963, column: 3, scope: !3380)
!3409 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !205, file: !205, line: 967, type: !3410, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!22, !182, !33, !25}
!3412 = !{!3413, !3414, !3415}
!3413 = !DILocalVariable(name: "s", arg: 1, scope: !3409, file: !205, line: 967, type: !182)
!3414 = !DILocalVariable(name: "arg", arg: 2, scope: !3409, file: !205, line: 967, type: !33)
!3415 = !DILocalVariable(name: "argsize", arg: 3, scope: !3409, file: !205, line: 967, type: !25)
!3416 = !DILocation(line: 187, column: 26, scope: !3322, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 956, column: 36, scope: !3350, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 969, column: 10, scope: !3409)
!3419 = !DILocation(line: 967, column: 40, scope: !3409)
!3420 = !DILocation(line: 967, column: 55, scope: !3409)
!3421 = !DILocation(line: 967, column: 67, scope: !3409)
!3422 = !DILocation(line: 953, column: 27, scope: !3350, inlinedAt: !3418)
!3423 = !DILocation(line: 953, column: 49, scope: !3350, inlinedAt: !3418)
!3424 = !DILocation(line: 954, column: 35, scope: !3350, inlinedAt: !3418)
!3425 = !DILocation(line: 954, column: 47, scope: !3350, inlinedAt: !3418)
!3426 = !DILocation(line: 956, column: 3, scope: !3350, inlinedAt: !3418)
!3427 = !DILocation(line: 956, column: 32, scope: !3350, inlinedAt: !3418)
!3428 = !DILocation(line: 185, column: 48, scope: !3322, inlinedAt: !3417)
!3429 = !DILocation(line: 187, column: 3, scope: !3322, inlinedAt: !3417)
!3430 = !DILocation(line: 188, column: 13, scope: !3339, inlinedAt: !3417)
!3431 = !DILocation(line: 188, column: 7, scope: !3322, inlinedAt: !3417)
!3432 = !DILocation(line: 189, column: 5, scope: !3339, inlinedAt: !3417)
!3433 = !{!3434}
!3434 = distinct !{!3434, !3435, !"quoting_options_from_style: argument 0"}
!3435 = distinct !{!3435, !"quoting_options_from_style"}
!3436 = !DILocation(line: 191, column: 10, scope: !3322, inlinedAt: !3417)
!3437 = !DILocation(line: 192, column: 1, scope: !3322, inlinedAt: !3417)
!3438 = !DILocation(line: 957, column: 10, scope: !3350, inlinedAt: !3418)
!3439 = !DILocation(line: 958, column: 1, scope: !3350, inlinedAt: !3418)
!3440 = !DILocation(line: 969, column: 3, scope: !3409)
!3441 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !205, file: !205, line: 973, type: !3442, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!22, !33, !25, !23}
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "arg", arg: 1, scope: !3441, file: !205, line: 973, type: !33)
!3446 = !DILocalVariable(name: "argsize", arg: 2, scope: !3441, file: !205, line: 973, type: !25)
!3447 = !DILocalVariable(name: "ch", arg: 3, scope: !3441, file: !205, line: 973, type: !23)
!3448 = !DILocalVariable(name: "options", scope: !3441, file: !205, line: 975, type: !212)
!3449 = !DILocation(line: 973, column: 32, scope: !3441)
!3450 = !DILocation(line: 973, column: 44, scope: !3441)
!3451 = !DILocation(line: 973, column: 58, scope: !3441)
!3452 = !DILocation(line: 975, column: 3, scope: !3441)
!3453 = !DILocation(line: 976, column: 13, scope: !3441)
!3454 = !{i64 0, i64 4, !777, i64 4, i64 4, !770, i64 8, i64 32, !777, i64 40, i64 8, !664, i64 48, i64 8, !664}
!3455 = !DILocation(line: 975, column: 26, scope: !3441)
!3456 = !DILocation(line: 144, column: 43, scope: !1907, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 977, column: 3, scope: !3441)
!3458 = !DILocation(line: 144, column: 51, scope: !1907, inlinedAt: !3457)
!3459 = !DILocation(line: 144, column: 58, scope: !1907, inlinedAt: !3457)
!3460 = !DILocation(line: 146, column: 17, scope: !1907, inlinedAt: !3457)
!3461 = !DILocation(line: 148, column: 62, scope: !1925, inlinedAt: !3457)
!3462 = !DILocation(line: 148, column: 57, scope: !1925, inlinedAt: !3457)
!3463 = !DILocation(line: 147, column: 17, scope: !1907, inlinedAt: !3457)
!3464 = !DILocation(line: 149, column: 18, scope: !1907, inlinedAt: !3457)
!3465 = !DILocation(line: 149, column: 15, scope: !1907, inlinedAt: !3457)
!3466 = !DILocation(line: 149, column: 7, scope: !1907, inlinedAt: !3457)
!3467 = !DILocation(line: 150, column: 12, scope: !1907, inlinedAt: !3457)
!3468 = !DILocation(line: 150, column: 15, scope: !1907, inlinedAt: !3457)
!3469 = !DILocation(line: 150, column: 25, scope: !1907, inlinedAt: !3457)
!3470 = !DILocation(line: 150, column: 7, scope: !1907, inlinedAt: !3457)
!3471 = !DILocation(line: 151, column: 18, scope: !1907, inlinedAt: !3457)
!3472 = !DILocation(line: 151, column: 23, scope: !1907, inlinedAt: !3457)
!3473 = !DILocation(line: 151, column: 6, scope: !1907, inlinedAt: !3457)
!3474 = !DILocation(line: 978, column: 10, scope: !3441)
!3475 = !DILocation(line: 979, column: 1, scope: !3441)
!3476 = !DILocation(line: 978, column: 3, scope: !3441)
!3477 = distinct !DISubprogram(name: "quotearg_char", scope: !205, file: !205, line: 982, type: !3478, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3480)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!22, !33, !23}
!3480 = !{!3481, !3482}
!3481 = !DILocalVariable(name: "arg", arg: 1, scope: !3477, file: !205, line: 982, type: !33)
!3482 = !DILocalVariable(name: "ch", arg: 2, scope: !3477, file: !205, line: 982, type: !23)
!3483 = !DILocation(line: 982, column: 28, scope: !3477)
!3484 = !DILocation(line: 982, column: 38, scope: !3477)
!3485 = !DILocation(line: 973, column: 32, scope: !3441, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 984, column: 10, scope: !3477)
!3487 = !DILocation(line: 973, column: 44, scope: !3441, inlinedAt: !3486)
!3488 = !DILocation(line: 973, column: 58, scope: !3441, inlinedAt: !3486)
!3489 = !DILocation(line: 975, column: 3, scope: !3441, inlinedAt: !3486)
!3490 = !DILocation(line: 976, column: 13, scope: !3441, inlinedAt: !3486)
!3491 = !DILocation(line: 975, column: 26, scope: !3441, inlinedAt: !3486)
!3492 = !DILocation(line: 144, column: 43, scope: !1907, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 977, column: 3, scope: !3441, inlinedAt: !3486)
!3494 = !DILocation(line: 144, column: 51, scope: !1907, inlinedAt: !3493)
!3495 = !DILocation(line: 144, column: 58, scope: !1907, inlinedAt: !3493)
!3496 = !DILocation(line: 146, column: 17, scope: !1907, inlinedAt: !3493)
!3497 = !DILocation(line: 148, column: 62, scope: !1925, inlinedAt: !3493)
!3498 = !DILocation(line: 148, column: 57, scope: !1925, inlinedAt: !3493)
!3499 = !DILocation(line: 147, column: 17, scope: !1907, inlinedAt: !3493)
!3500 = !DILocation(line: 149, column: 18, scope: !1907, inlinedAt: !3493)
!3501 = !DILocation(line: 149, column: 15, scope: !1907, inlinedAt: !3493)
!3502 = !DILocation(line: 149, column: 7, scope: !1907, inlinedAt: !3493)
!3503 = !DILocation(line: 150, column: 12, scope: !1907, inlinedAt: !3493)
!3504 = !DILocation(line: 150, column: 15, scope: !1907, inlinedAt: !3493)
!3505 = !DILocation(line: 150, column: 25, scope: !1907, inlinedAt: !3493)
!3506 = !DILocation(line: 150, column: 7, scope: !1907, inlinedAt: !3493)
!3507 = !DILocation(line: 151, column: 18, scope: !1907, inlinedAt: !3493)
!3508 = !DILocation(line: 151, column: 23, scope: !1907, inlinedAt: !3493)
!3509 = !DILocation(line: 151, column: 6, scope: !1907, inlinedAt: !3493)
!3510 = !DILocation(line: 978, column: 10, scope: !3441, inlinedAt: !3486)
!3511 = !DILocation(line: 979, column: 1, scope: !3441, inlinedAt: !3486)
!3512 = !DILocation(line: 984, column: 3, scope: !3477)
!3513 = distinct !DISubprogram(name: "quotearg_colon", scope: !205, file: !205, line: 988, type: !3289, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3514)
!3514 = !{!3515}
!3515 = !DILocalVariable(name: "arg", arg: 1, scope: !3513, file: !205, line: 988, type: !33)
!3516 = !DILocation(line: 988, column: 29, scope: !3513)
!3517 = !DILocation(line: 982, column: 28, scope: !3477, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 990, column: 10, scope: !3513)
!3519 = !DILocation(line: 982, column: 38, scope: !3477, inlinedAt: !3518)
!3520 = !DILocation(line: 973, column: 32, scope: !3441, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 984, column: 10, scope: !3477, inlinedAt: !3518)
!3522 = !DILocation(line: 973, column: 44, scope: !3441, inlinedAt: !3521)
!3523 = !DILocation(line: 973, column: 58, scope: !3441, inlinedAt: !3521)
!3524 = !DILocation(line: 975, column: 3, scope: !3441, inlinedAt: !3521)
!3525 = !DILocation(line: 976, column: 13, scope: !3441, inlinedAt: !3521)
!3526 = !DILocation(line: 975, column: 26, scope: !3441, inlinedAt: !3521)
!3527 = !DILocation(line: 144, column: 43, scope: !1907, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 977, column: 3, scope: !3441, inlinedAt: !3521)
!3529 = !DILocation(line: 144, column: 51, scope: !1907, inlinedAt: !3528)
!3530 = !DILocation(line: 144, column: 58, scope: !1907, inlinedAt: !3528)
!3531 = !DILocation(line: 146, column: 17, scope: !1907, inlinedAt: !3528)
!3532 = !DILocation(line: 148, column: 57, scope: !1925, inlinedAt: !3528)
!3533 = !DILocation(line: 147, column: 17, scope: !1907, inlinedAt: !3528)
!3534 = !DILocation(line: 149, column: 7, scope: !1907, inlinedAt: !3528)
!3535 = !DILocation(line: 150, column: 12, scope: !1907, inlinedAt: !3528)
!3536 = !DILocation(line: 151, column: 6, scope: !1907, inlinedAt: !3528)
!3537 = !DILocation(line: 978, column: 10, scope: !3441, inlinedAt: !3521)
!3538 = !DILocation(line: 979, column: 1, scope: !3441, inlinedAt: !3521)
!3539 = !DILocation(line: 990, column: 3, scope: !3513)
!3540 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !205, file: !205, line: 994, type: !3300, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3541)
!3541 = !{!3542, !3543}
!3542 = !DILocalVariable(name: "arg", arg: 1, scope: !3540, file: !205, line: 994, type: !33)
!3543 = !DILocalVariable(name: "argsize", arg: 2, scope: !3540, file: !205, line: 994, type: !25)
!3544 = !DILocation(line: 994, column: 33, scope: !3540)
!3545 = !DILocation(line: 994, column: 45, scope: !3540)
!3546 = !DILocation(line: 973, column: 32, scope: !3441, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 996, column: 10, scope: !3540)
!3548 = !DILocation(line: 973, column: 44, scope: !3441, inlinedAt: !3547)
!3549 = !DILocation(line: 973, column: 58, scope: !3441, inlinedAt: !3547)
!3550 = !DILocation(line: 975, column: 3, scope: !3441, inlinedAt: !3547)
!3551 = !DILocation(line: 976, column: 13, scope: !3441, inlinedAt: !3547)
!3552 = !DILocation(line: 975, column: 26, scope: !3441, inlinedAt: !3547)
!3553 = !DILocation(line: 144, column: 43, scope: !1907, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 977, column: 3, scope: !3441, inlinedAt: !3547)
!3555 = !DILocation(line: 144, column: 51, scope: !1907, inlinedAt: !3554)
!3556 = !DILocation(line: 144, column: 58, scope: !1907, inlinedAt: !3554)
!3557 = !DILocation(line: 146, column: 17, scope: !1907, inlinedAt: !3554)
!3558 = !DILocation(line: 148, column: 57, scope: !1925, inlinedAt: !3554)
!3559 = !DILocation(line: 147, column: 17, scope: !1907, inlinedAt: !3554)
!3560 = !DILocation(line: 149, column: 7, scope: !1907, inlinedAt: !3554)
!3561 = !DILocation(line: 150, column: 12, scope: !1907, inlinedAt: !3554)
!3562 = !DILocation(line: 151, column: 6, scope: !1907, inlinedAt: !3554)
!3563 = !DILocation(line: 978, column: 10, scope: !3441, inlinedAt: !3547)
!3564 = !DILocation(line: 979, column: 1, scope: !3441, inlinedAt: !3547)
!3565 = !DILocation(line: 996, column: 3, scope: !3540)
!3566 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !205, file: !205, line: 1000, type: !3314, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3567)
!3567 = !{!3568, !3569, !3570, !3571}
!3568 = !DILocalVariable(name: "n", arg: 1, scope: !3566, file: !205, line: 1000, type: !35)
!3569 = !DILocalVariable(name: "s", arg: 2, scope: !3566, file: !205, line: 1000, type: !182)
!3570 = !DILocalVariable(name: "arg", arg: 3, scope: !3566, file: !205, line: 1000, type: !33)
!3571 = !DILocalVariable(name: "options", scope: !3566, file: !205, line: 1002, type: !212)
!3572 = !DILocation(line: 187, column: 26, scope: !3322, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 1003, column: 13, scope: !3566)
!3574 = !DILocation(line: 1000, column: 29, scope: !3566)
!3575 = !DILocation(line: 1000, column: 51, scope: !3566)
!3576 = !DILocation(line: 1000, column: 66, scope: !3566)
!3577 = !DILocation(line: 1002, column: 3, scope: !3566)
!3578 = !DILocation(line: 185, column: 48, scope: !3322, inlinedAt: !3573)
!3579 = !DILocation(line: 187, column: 3, scope: !3322, inlinedAt: !3573)
!3580 = !DILocation(line: 188, column: 13, scope: !3339, inlinedAt: !3573)
!3581 = !DILocation(line: 188, column: 7, scope: !3322, inlinedAt: !3573)
!3582 = !DILocation(line: 189, column: 5, scope: !3339, inlinedAt: !3573)
!3583 = !{!3584}
!3584 = distinct !{!3584, !3585, !"quoting_options_from_style: argument 0"}
!3585 = distinct !{!3585, !"quoting_options_from_style"}
!3586 = !DILocation(line: 191, column: 10, scope: !3322, inlinedAt: !3573)
!3587 = !DILocation(line: 192, column: 1, scope: !3322, inlinedAt: !3573)
!3588 = !DILocation(line: 1003, column: 13, scope: !3566)
!3589 = !DILocation(line: 1002, column: 26, scope: !3566)
!3590 = !DILocation(line: 144, column: 43, scope: !1907, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 1004, column: 3, scope: !3566)
!3592 = !DILocation(line: 144, column: 51, scope: !1907, inlinedAt: !3591)
!3593 = !DILocation(line: 144, column: 58, scope: !1907, inlinedAt: !3591)
!3594 = !DILocation(line: 146, column: 17, scope: !1907, inlinedAt: !3591)
!3595 = !DILocation(line: 148, column: 57, scope: !1925, inlinedAt: !3591)
!3596 = !DILocation(line: 147, column: 17, scope: !1907, inlinedAt: !3591)
!3597 = !DILocation(line: 149, column: 7, scope: !1907, inlinedAt: !3591)
!3598 = !DILocation(line: 150, column: 12, scope: !1907, inlinedAt: !3591)
!3599 = !DILocation(line: 151, column: 6, scope: !1907, inlinedAt: !3591)
!3600 = !DILocation(line: 1005, column: 10, scope: !3566)
!3601 = !DILocation(line: 1006, column: 1, scope: !3566)
!3602 = !DILocation(line: 1005, column: 3, scope: !3566)
!3603 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !205, file: !205, line: 1009, type: !3604, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!22, !35, !33, !33, !33}
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DILocalVariable(name: "n", arg: 1, scope: !3603, file: !205, line: 1009, type: !35)
!3608 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3603, file: !205, line: 1009, type: !33)
!3609 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3603, file: !205, line: 1010, type: !33)
!3610 = !DILocalVariable(name: "arg", arg: 4, scope: !3603, file: !205, line: 1010, type: !33)
!3611 = !DILocation(line: 1009, column: 24, scope: !3603)
!3612 = !DILocation(line: 1009, column: 39, scope: !3603)
!3613 = !DILocation(line: 1010, column: 32, scope: !3603)
!3614 = !DILocation(line: 1010, column: 57, scope: !3603)
!3615 = !DILocalVariable(name: "n", arg: 1, scope: !3616, file: !205, line: 1017, type: !35)
!3616 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !205, file: !205, line: 1017, type: !3617, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!22, !35, !33, !33, !33, !25}
!3619 = !{!3615, !3620, !3621, !3622, !3623, !3624}
!3620 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3616, file: !205, line: 1017, type: !33)
!3621 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3616, file: !205, line: 1018, type: !33)
!3622 = !DILocalVariable(name: "arg", arg: 4, scope: !3616, file: !205, line: 1019, type: !33)
!3623 = !DILocalVariable(name: "argsize", arg: 5, scope: !3616, file: !205, line: 1019, type: !25)
!3624 = !DILocalVariable(name: "o", scope: !3616, file: !205, line: 1021, type: !212)
!3625 = !DILocation(line: 1017, column: 28, scope: !3616, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 1012, column: 10, scope: !3603)
!3627 = !DILocation(line: 1017, column: 43, scope: !3616, inlinedAt: !3626)
!3628 = !DILocation(line: 1018, column: 36, scope: !3616, inlinedAt: !3626)
!3629 = !DILocation(line: 1019, column: 36, scope: !3616, inlinedAt: !3626)
!3630 = !DILocation(line: 1019, column: 48, scope: !3616, inlinedAt: !3626)
!3631 = !DILocation(line: 1021, column: 3, scope: !3616, inlinedAt: !3626)
!3632 = !DILocation(line: 1021, column: 30, scope: !3616, inlinedAt: !3626)
!3633 = !DILocation(line: 1021, column: 26, scope: !3616, inlinedAt: !3626)
!3634 = !DILocation(line: 171, column: 45, scope: !1957, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 1022, column: 3, scope: !3616, inlinedAt: !3626)
!3636 = !DILocation(line: 172, column: 33, scope: !1957, inlinedAt: !3635)
!3637 = !DILocation(line: 172, column: 57, scope: !1957, inlinedAt: !3635)
!3638 = !DILocation(line: 176, column: 6, scope: !1957, inlinedAt: !3635)
!3639 = !DILocation(line: 176, column: 12, scope: !1957, inlinedAt: !3635)
!3640 = !DILocation(line: 177, column: 8, scope: !1973, inlinedAt: !3635)
!3641 = !DILocation(line: 177, column: 23, scope: !1975, inlinedAt: !3635)
!3642 = !DILocation(line: 177, column: 19, scope: !1973, inlinedAt: !3635)
!3643 = !DILocation(line: 178, column: 5, scope: !1973, inlinedAt: !3635)
!3644 = !DILocation(line: 179, column: 6, scope: !1957, inlinedAt: !3635)
!3645 = !DILocation(line: 179, column: 17, scope: !1957, inlinedAt: !3635)
!3646 = !DILocation(line: 180, column: 6, scope: !1957, inlinedAt: !3635)
!3647 = !DILocation(line: 180, column: 18, scope: !1957, inlinedAt: !3635)
!3648 = !DILocation(line: 1023, column: 10, scope: !3616, inlinedAt: !3626)
!3649 = !DILocation(line: 1024, column: 1, scope: !3616, inlinedAt: !3626)
!3650 = !DILocation(line: 1012, column: 3, scope: !3603)
!3651 = !DILocation(line: 1017, column: 28, scope: !3616)
!3652 = !DILocation(line: 1017, column: 43, scope: !3616)
!3653 = !DILocation(line: 1018, column: 36, scope: !3616)
!3654 = !DILocation(line: 1019, column: 36, scope: !3616)
!3655 = !DILocation(line: 1019, column: 48, scope: !3616)
!3656 = !DILocation(line: 1021, column: 3, scope: !3616)
!3657 = !DILocation(line: 1021, column: 30, scope: !3616)
!3658 = !DILocation(line: 1021, column: 26, scope: !3616)
!3659 = !DILocation(line: 171, column: 45, scope: !1957, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 1022, column: 3, scope: !3616)
!3661 = !DILocation(line: 172, column: 33, scope: !1957, inlinedAt: !3660)
!3662 = !DILocation(line: 172, column: 57, scope: !1957, inlinedAt: !3660)
!3663 = !DILocation(line: 176, column: 6, scope: !1957, inlinedAt: !3660)
!3664 = !DILocation(line: 176, column: 12, scope: !1957, inlinedAt: !3660)
!3665 = !DILocation(line: 177, column: 8, scope: !1973, inlinedAt: !3660)
!3666 = !DILocation(line: 177, column: 23, scope: !1975, inlinedAt: !3660)
!3667 = !DILocation(line: 177, column: 19, scope: !1973, inlinedAt: !3660)
!3668 = !DILocation(line: 178, column: 5, scope: !1973, inlinedAt: !3660)
!3669 = !DILocation(line: 179, column: 6, scope: !1957, inlinedAt: !3660)
!3670 = !DILocation(line: 179, column: 17, scope: !1957, inlinedAt: !3660)
!3671 = !DILocation(line: 180, column: 6, scope: !1957, inlinedAt: !3660)
!3672 = !DILocation(line: 180, column: 18, scope: !1957, inlinedAt: !3660)
!3673 = !DILocation(line: 1023, column: 10, scope: !3616)
!3674 = !DILocation(line: 1024, column: 1, scope: !3616)
!3675 = !DILocation(line: 1023, column: 3, scope: !3616)
!3676 = distinct !DISubprogram(name: "quotearg_custom", scope: !205, file: !205, line: 1027, type: !3677, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3679)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!22, !33, !33, !33}
!3679 = !{!3680, !3681, !3682}
!3680 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3676, file: !205, line: 1027, type: !33)
!3681 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3676, file: !205, line: 1027, type: !33)
!3682 = !DILocalVariable(name: "arg", arg: 3, scope: !3676, file: !205, line: 1028, type: !33)
!3683 = !DILocation(line: 1027, column: 30, scope: !3676)
!3684 = !DILocation(line: 1027, column: 54, scope: !3676)
!3685 = !DILocation(line: 1028, column: 30, scope: !3676)
!3686 = !DILocation(line: 1009, column: 24, scope: !3603, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 1030, column: 10, scope: !3676)
!3688 = !DILocation(line: 1009, column: 39, scope: !3603, inlinedAt: !3687)
!3689 = !DILocation(line: 1010, column: 32, scope: !3603, inlinedAt: !3687)
!3690 = !DILocation(line: 1010, column: 57, scope: !3603, inlinedAt: !3687)
!3691 = !DILocation(line: 1017, column: 28, scope: !3616, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 1012, column: 10, scope: !3603, inlinedAt: !3687)
!3693 = !DILocation(line: 1017, column: 43, scope: !3616, inlinedAt: !3692)
!3694 = !DILocation(line: 1018, column: 36, scope: !3616, inlinedAt: !3692)
!3695 = !DILocation(line: 1019, column: 36, scope: !3616, inlinedAt: !3692)
!3696 = !DILocation(line: 1019, column: 48, scope: !3616, inlinedAt: !3692)
!3697 = !DILocation(line: 1021, column: 3, scope: !3616, inlinedAt: !3692)
!3698 = !DILocation(line: 1021, column: 30, scope: !3616, inlinedAt: !3692)
!3699 = !DILocation(line: 1021, column: 26, scope: !3616, inlinedAt: !3692)
!3700 = !DILocation(line: 171, column: 45, scope: !1957, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 1022, column: 3, scope: !3616, inlinedAt: !3692)
!3702 = !DILocation(line: 172, column: 33, scope: !1957, inlinedAt: !3701)
!3703 = !DILocation(line: 172, column: 57, scope: !1957, inlinedAt: !3701)
!3704 = !DILocation(line: 176, column: 6, scope: !1957, inlinedAt: !3701)
!3705 = !DILocation(line: 176, column: 12, scope: !1957, inlinedAt: !3701)
!3706 = !DILocation(line: 177, column: 8, scope: !1973, inlinedAt: !3701)
!3707 = !DILocation(line: 177, column: 23, scope: !1975, inlinedAt: !3701)
!3708 = !DILocation(line: 177, column: 19, scope: !1973, inlinedAt: !3701)
!3709 = !DILocation(line: 178, column: 5, scope: !1973, inlinedAt: !3701)
!3710 = !DILocation(line: 179, column: 6, scope: !1957, inlinedAt: !3701)
!3711 = !DILocation(line: 179, column: 17, scope: !1957, inlinedAt: !3701)
!3712 = !DILocation(line: 180, column: 6, scope: !1957, inlinedAt: !3701)
!3713 = !DILocation(line: 180, column: 18, scope: !1957, inlinedAt: !3701)
!3714 = !DILocation(line: 1023, column: 10, scope: !3616, inlinedAt: !3692)
!3715 = !DILocation(line: 1024, column: 1, scope: !3616, inlinedAt: !3692)
!3716 = !DILocation(line: 1030, column: 3, scope: !3676)
!3717 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !205, file: !205, line: 1034, type: !3718, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!22, !33, !33, !33, !25}
!3720 = !{!3721, !3722, !3723, !3724}
!3721 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3717, file: !205, line: 1034, type: !33)
!3722 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3717, file: !205, line: 1034, type: !33)
!3723 = !DILocalVariable(name: "arg", arg: 3, scope: !3717, file: !205, line: 1035, type: !33)
!3724 = !DILocalVariable(name: "argsize", arg: 4, scope: !3717, file: !205, line: 1035, type: !25)
!3725 = !DILocation(line: 1034, column: 34, scope: !3717)
!3726 = !DILocation(line: 1034, column: 58, scope: !3717)
!3727 = !DILocation(line: 1035, column: 34, scope: !3717)
!3728 = !DILocation(line: 1035, column: 46, scope: !3717)
!3729 = !DILocation(line: 1017, column: 28, scope: !3616, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 1037, column: 10, scope: !3717)
!3731 = !DILocation(line: 1017, column: 43, scope: !3616, inlinedAt: !3730)
!3732 = !DILocation(line: 1018, column: 36, scope: !3616, inlinedAt: !3730)
!3733 = !DILocation(line: 1019, column: 36, scope: !3616, inlinedAt: !3730)
!3734 = !DILocation(line: 1019, column: 48, scope: !3616, inlinedAt: !3730)
!3735 = !DILocation(line: 1021, column: 3, scope: !3616, inlinedAt: !3730)
!3736 = !DILocation(line: 1021, column: 30, scope: !3616, inlinedAt: !3730)
!3737 = !DILocation(line: 1021, column: 26, scope: !3616, inlinedAt: !3730)
!3738 = !DILocation(line: 171, column: 45, scope: !1957, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 1022, column: 3, scope: !3616, inlinedAt: !3730)
!3740 = !DILocation(line: 172, column: 33, scope: !1957, inlinedAt: !3739)
!3741 = !DILocation(line: 172, column: 57, scope: !1957, inlinedAt: !3739)
!3742 = !DILocation(line: 176, column: 6, scope: !1957, inlinedAt: !3739)
!3743 = !DILocation(line: 176, column: 12, scope: !1957, inlinedAt: !3739)
!3744 = !DILocation(line: 177, column: 8, scope: !1973, inlinedAt: !3739)
!3745 = !DILocation(line: 177, column: 23, scope: !1975, inlinedAt: !3739)
!3746 = !DILocation(line: 177, column: 19, scope: !1973, inlinedAt: !3739)
!3747 = !DILocation(line: 178, column: 5, scope: !1973, inlinedAt: !3739)
!3748 = !DILocation(line: 179, column: 6, scope: !1957, inlinedAt: !3739)
!3749 = !DILocation(line: 179, column: 17, scope: !1957, inlinedAt: !3739)
!3750 = !DILocation(line: 180, column: 6, scope: !1957, inlinedAt: !3739)
!3751 = !DILocation(line: 180, column: 18, scope: !1957, inlinedAt: !3739)
!3752 = !DILocation(line: 1023, column: 10, scope: !3616, inlinedAt: !3730)
!3753 = !DILocation(line: 1024, column: 1, scope: !3616, inlinedAt: !3730)
!3754 = !DILocation(line: 1037, column: 3, scope: !3717)
!3755 = distinct !DISubprogram(name: "quote_n_mem", scope: !205, file: !205, line: 1052, type: !3756, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!33, !35, !33, !25}
!3758 = !{!3759, !3760, !3761}
!3759 = !DILocalVariable(name: "n", arg: 1, scope: !3755, file: !205, line: 1052, type: !35)
!3760 = !DILocalVariable(name: "arg", arg: 2, scope: !3755, file: !205, line: 1052, type: !33)
!3761 = !DILocalVariable(name: "argsize", arg: 3, scope: !3755, file: !205, line: 1052, type: !25)
!3762 = !DILocation(line: 1052, column: 18, scope: !3755)
!3763 = !DILocation(line: 1052, column: 33, scope: !3755)
!3764 = !DILocation(line: 1052, column: 45, scope: !3755)
!3765 = !DILocation(line: 1054, column: 10, scope: !3755)
!3766 = !DILocation(line: 1054, column: 3, scope: !3755)
!3767 = distinct !DISubprogram(name: "quote_mem", scope: !205, file: !205, line: 1058, type: !3768, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!33, !33, !25}
!3770 = !{!3771, !3772}
!3771 = !DILocalVariable(name: "arg", arg: 1, scope: !3767, file: !205, line: 1058, type: !33)
!3772 = !DILocalVariable(name: "argsize", arg: 2, scope: !3767, file: !205, line: 1058, type: !25)
!3773 = !DILocation(line: 1058, column: 24, scope: !3767)
!3774 = !DILocation(line: 1058, column: 36, scope: !3767)
!3775 = !DILocation(line: 1052, column: 18, scope: !3755, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 1060, column: 10, scope: !3767)
!3777 = !DILocation(line: 1052, column: 33, scope: !3755, inlinedAt: !3776)
!3778 = !DILocation(line: 1052, column: 45, scope: !3755, inlinedAt: !3776)
!3779 = !DILocation(line: 1054, column: 10, scope: !3755, inlinedAt: !3776)
!3780 = !DILocation(line: 1060, column: 3, scope: !3767)
!3781 = distinct !DISubprogram(name: "quote_n", scope: !205, file: !205, line: 1064, type: !3782, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!33, !35, !33}
!3784 = !{!3785, !3786}
!3785 = !DILocalVariable(name: "n", arg: 1, scope: !3781, file: !205, line: 1064, type: !35)
!3786 = !DILocalVariable(name: "arg", arg: 2, scope: !3781, file: !205, line: 1064, type: !33)
!3787 = !DILocation(line: 1064, column: 14, scope: !3781)
!3788 = !DILocation(line: 1064, column: 29, scope: !3781)
!3789 = !DILocation(line: 1052, column: 18, scope: !3755, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 1066, column: 10, scope: !3781)
!3791 = !DILocation(line: 1052, column: 33, scope: !3755, inlinedAt: !3790)
!3792 = !DILocation(line: 1052, column: 45, scope: !3755, inlinedAt: !3790)
!3793 = !DILocation(line: 1054, column: 10, scope: !3755, inlinedAt: !3790)
!3794 = !DILocation(line: 1066, column: 3, scope: !3781)
!3795 = distinct !DISubprogram(name: "quote", scope: !205, file: !205, line: 1070, type: !1373, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3796)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "arg", arg: 1, scope: !3795, file: !205, line: 1070, type: !33)
!3798 = !DILocation(line: 1070, column: 20, scope: !3795)
!3799 = !DILocation(line: 1064, column: 14, scope: !3781, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 1072, column: 10, scope: !3795)
!3801 = !DILocation(line: 1064, column: 29, scope: !3781, inlinedAt: !3800)
!3802 = !DILocation(line: 1052, column: 18, scope: !3755, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 1066, column: 10, scope: !3781, inlinedAt: !3800)
!3804 = !DILocation(line: 1052, column: 33, scope: !3755, inlinedAt: !3803)
!3805 = !DILocation(line: 1052, column: 45, scope: !3755, inlinedAt: !3803)
!3806 = !DILocation(line: 1054, column: 10, scope: !3755, inlinedAt: !3803)
!3807 = !DILocation(line: 1072, column: 3, scope: !3795)
!3808 = distinct !DISubprogram(name: "version_etc_arn", scope: !605, file: !605, line: 62, type: !3809, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3866)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3811, !33, !33, !33, !3865, !25}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3813, line: 49, baseType: !3814)
!3813 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3815, line: 241, size: 1728, elements: !3816)
!3815 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3837, !3838, !3839, !3840, !3843, !3844, !3846, !3850, !3853, !3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3814, file: !3815, line: 242, baseType: !35, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3814, file: !3815, line: 247, baseType: !22, size: 64, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3814, file: !3815, line: 248, baseType: !22, size: 64, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3814, file: !3815, line: 249, baseType: !22, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3814, file: !3815, line: 250, baseType: !22, size: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3814, file: !3815, line: 251, baseType: !22, size: 64, offset: 320)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3814, file: !3815, line: 252, baseType: !22, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3814, file: !3815, line: 253, baseType: !22, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3814, file: !3815, line: 254, baseType: !22, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3814, file: !3815, line: 256, baseType: !22, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3814, file: !3815, line: 257, baseType: !22, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3814, file: !3815, line: 258, baseType: !22, size: 64, offset: 704)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3814, file: !3815, line: 260, baseType: !3830, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3815, line: 156, size: 192, elements: !3832)
!3832 = !{!3833, !3834, !3836}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3831, file: !3815, line: 157, baseType: !3830, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3831, file: !3815, line: 158, baseType: !3835, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3831, file: !3815, line: 162, baseType: !35, size: 32, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3814, file: !3815, line: 262, baseType: !3835, size: 64, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3814, file: !3815, line: 264, baseType: !35, size: 32, offset: 896)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3814, file: !3815, line: 268, baseType: !35, size: 32, offset: 928)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3814, file: !3815, line: 270, baseType: !3841, size: 64, offset: 960)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3842, line: 140, baseType: !1589)
!3842 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3814, file: !3815, line: 274, baseType: !36, size: 16, offset: 1024)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3814, file: !3815, line: 275, baseType: !3845, size: 8, offset: 1040)
!3845 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3814, file: !3815, line: 276, baseType: !3847, size: 8, offset: 1048)
!3847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !3848)
!3848 = !{!3849}
!3849 = !DISubrange(count: 1)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3814, file: !3815, line: 280, baseType: !3851, size: 64, offset: 1088)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3815, line: 150, baseType: null)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3814, file: !3815, line: 289, baseType: !3854, size: 64, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3842, line: 141, baseType: !1589)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3814, file: !3815, line: 297, baseType: !24, size: 64, offset: 1216)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3814, file: !3815, line: 298, baseType: !24, size: 64, offset: 1280)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3814, file: !3815, line: 299, baseType: !24, size: 64, offset: 1344)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3814, file: !3815, line: 300, baseType: !24, size: 64, offset: 1408)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3814, file: !3815, line: 302, baseType: !25, size: 64, offset: 1472)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3814, file: !3815, line: 303, baseType: !35, size: 32, offset: 1536)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3814, file: !3815, line: 305, baseType: !3862, size: 160, offset: 1568)
!3862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !3863)
!3863 = !{!3864}
!3864 = !DISubrange(count: 20)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872}
!3867 = !DILocalVariable(name: "stream", arg: 1, scope: !3808, file: !605, line: 62, type: !3811)
!3868 = !DILocalVariable(name: "command_name", arg: 2, scope: !3808, file: !605, line: 63, type: !33)
!3869 = !DILocalVariable(name: "package", arg: 3, scope: !3808, file: !605, line: 63, type: !33)
!3870 = !DILocalVariable(name: "version", arg: 4, scope: !3808, file: !605, line: 64, type: !33)
!3871 = !DILocalVariable(name: "authors", arg: 5, scope: !3808, file: !605, line: 65, type: !3865)
!3872 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3808, file: !605, line: 65, type: !25)
!3873 = !DILocation(line: 62, column: 24, scope: !3808)
!3874 = !DILocation(line: 63, column: 30, scope: !3808)
!3875 = !DILocation(line: 63, column: 56, scope: !3808)
!3876 = !DILocation(line: 64, column: 30, scope: !3808)
!3877 = !DILocation(line: 65, column: 39, scope: !3808)
!3878 = !DILocation(line: 65, column: 55, scope: !3808)
!3879 = !DILocation(line: 67, column: 7, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3808, file: !605, line: 67, column: 7)
!3881 = !DILocation(line: 67, column: 7, scope: !3808)
!3882 = !DILocation(line: 68, column: 5, scope: !3880)
!3883 = !DILocation(line: 70, column: 5, scope: !3880)
!3884 = !DILocation(line: 84, column: 3, scope: !3808)
!3885 = !DILocation(line: 84, column: 3, scope: !3886)
!3886 = !DILexicalBlockFile(scope: !3808, file: !605, discriminator: 1)
!3887 = !DILocation(line: 86, column: 3, scope: !3808)
!3888 = !DILocation(line: 86, column: 3, scope: !3886)
!3889 = !DILocation(line: 95, column: 3, scope: !3808)
!3890 = !DILocation(line: 99, column: 7, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3808, file: !605, line: 96, column: 5)
!3892 = !DILocation(line: 102, column: 7, scope: !3891)
!3893 = !DILocation(line: 102, column: 7, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3891, file: !605, discriminator: 1)
!3895 = !DILocation(line: 103, column: 7, scope: !3891)
!3896 = !DILocation(line: 106, column: 7, scope: !3891)
!3897 = !DILocation(line: 106, column: 7, scope: !3894)
!3898 = !DILocation(line: 107, column: 7, scope: !3891)
!3899 = !DILocation(line: 110, column: 7, scope: !3891)
!3900 = !DILocation(line: 110, column: 7, scope: !3894)
!3901 = !DILocation(line: 112, column: 7, scope: !3891)
!3902 = !DILocation(line: 117, column: 7, scope: !3891)
!3903 = !DILocation(line: 117, column: 7, scope: !3894)
!3904 = !DILocation(line: 119, column: 7, scope: !3891)
!3905 = !DILocation(line: 124, column: 7, scope: !3891)
!3906 = !DILocation(line: 124, column: 7, scope: !3894)
!3907 = !DILocation(line: 126, column: 7, scope: !3891)
!3908 = !DILocation(line: 131, column: 7, scope: !3891)
!3909 = !DILocation(line: 131, column: 7, scope: !3894)
!3910 = !DILocation(line: 134, column: 7, scope: !3891)
!3911 = !DILocation(line: 139, column: 7, scope: !3891)
!3912 = !DILocation(line: 139, column: 7, scope: !3894)
!3913 = !DILocation(line: 142, column: 7, scope: !3891)
!3914 = !DILocation(line: 147, column: 7, scope: !3891)
!3915 = !DILocation(line: 147, column: 7, scope: !3894)
!3916 = !DILocation(line: 151, column: 7, scope: !3891)
!3917 = !DILocation(line: 156, column: 7, scope: !3891)
!3918 = !DILocation(line: 156, column: 7, scope: !3894)
!3919 = !DILocation(line: 160, column: 7, scope: !3891)
!3920 = !DILocation(line: 167, column: 7, scope: !3891)
!3921 = !DILocation(line: 167, column: 7, scope: !3894)
!3922 = !DILocation(line: 171, column: 7, scope: !3891)
!3923 = !DILocation(line: 173, column: 1, scope: !3808)
!3924 = distinct !DISubprogram(name: "version_etc_ar", scope: !605, file: !605, line: 180, type: !3925, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !3811, !33, !33, !33, !3865}
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933}
!3928 = !DILocalVariable(name: "stream", arg: 1, scope: !3924, file: !605, line: 180, type: !3811)
!3929 = !DILocalVariable(name: "command_name", arg: 2, scope: !3924, file: !605, line: 181, type: !33)
!3930 = !DILocalVariable(name: "package", arg: 3, scope: !3924, file: !605, line: 181, type: !33)
!3931 = !DILocalVariable(name: "version", arg: 4, scope: !3924, file: !605, line: 182, type: !33)
!3932 = !DILocalVariable(name: "authors", arg: 5, scope: !3924, file: !605, line: 182, type: !3865)
!3933 = !DILocalVariable(name: "n_authors", scope: !3924, file: !605, line: 184, type: !25)
!3934 = !DILocation(line: 180, column: 23, scope: !3924)
!3935 = !DILocation(line: 181, column: 29, scope: !3924)
!3936 = !DILocation(line: 181, column: 55, scope: !3924)
!3937 = !DILocation(line: 182, column: 29, scope: !3924)
!3938 = !DILocation(line: 182, column: 59, scope: !3924)
!3939 = !DILocation(line: 184, column: 10, scope: !3924)
!3940 = !DILocation(line: 186, column: 8, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3924, file: !605, line: 186, column: 3)
!3942 = !DILocation(line: 186, column: 23, scope: !3943)
!3943 = !DILexicalBlockFile(scope: !3944, file: !605, discriminator: 1)
!3944 = distinct !DILexicalBlock(scope: !3941, file: !605, line: 186, column: 3)
!3945 = !DILocation(line: 186, column: 3, scope: !3946)
!3946 = !DILexicalBlockFile(scope: !3941, file: !605, discriminator: 1)
!3947 = !DILocation(line: 186, column: 52, scope: !3948)
!3948 = !DILexicalBlockFile(scope: !3944, file: !605, discriminator: 3)
!3949 = distinct !{!3949, !3950, !3951}
!3950 = !DILocation(line: 186, column: 3, scope: !3941)
!3951 = !DILocation(line: 187, column: 5, scope: !3941)
!3952 = !DILocation(line: 188, column: 3, scope: !3924)
!3953 = !DILocation(line: 189, column: 1, scope: !3924)
!3954 = distinct !DISubprogram(name: "version_etc_va", scope: !605, file: !605, line: 196, type: !3955, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3964)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{null, !3811, !33, !33, !33, !3957}
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !602, line: 189, size: 192, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3958, file: !602, line: 189, baseType: !21, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3958, file: !602, line: 189, baseType: !21, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3958, file: !602, line: 189, baseType: !24, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3958, file: !602, line: 189, baseType: !24, size: 64, offset: 128)
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970, !3971}
!3965 = !DILocalVariable(name: "stream", arg: 1, scope: !3954, file: !605, line: 196, type: !3811)
!3966 = !DILocalVariable(name: "command_name", arg: 2, scope: !3954, file: !605, line: 197, type: !33)
!3967 = !DILocalVariable(name: "package", arg: 3, scope: !3954, file: !605, line: 197, type: !33)
!3968 = !DILocalVariable(name: "version", arg: 4, scope: !3954, file: !605, line: 198, type: !33)
!3969 = !DILocalVariable(name: "authors", arg: 5, scope: !3954, file: !605, line: 198, type: !3957)
!3970 = !DILocalVariable(name: "n_authors", scope: !3954, file: !605, line: 200, type: !25)
!3971 = !DILocalVariable(name: "authtab", scope: !3954, file: !605, line: 201, type: !3972)
!3972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 640, elements: !208)
!3973 = !DILocation(line: 196, column: 23, scope: !3954)
!3974 = !DILocation(line: 197, column: 29, scope: !3954)
!3975 = !DILocation(line: 197, column: 55, scope: !3954)
!3976 = !DILocation(line: 198, column: 29, scope: !3954)
!3977 = !DILocation(line: 198, column: 46, scope: !3954)
!3978 = !DILocation(line: 201, column: 3, scope: !3954)
!3979 = !DILocation(line: 201, column: 15, scope: !3954)
!3980 = !DILocation(line: 200, column: 10, scope: !3954)
!3981 = !DILocation(line: 205, column: 35, scope: !3982)
!3982 = !DILexicalBlockFile(scope: !3983, file: !605, discriminator: 1)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !605, line: 203, column: 3)
!3984 = distinct !DILexicalBlock(scope: !3954, file: !605, line: 203, column: 3)
!3985 = !DILocation(line: 205, column: 35, scope: !3986)
!3986 = !DILexicalBlockFile(scope: !3983, file: !605, discriminator: 2)
!3987 = !DILocation(line: 205, column: 35, scope: !3988)
!3988 = !DILexicalBlockFile(scope: !3983, file: !605, discriminator: 3)
!3989 = !DILocation(line: 205, column: 35, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3983, file: !605, discriminator: 4)
!3991 = !DILocation(line: 205, column: 14, scope: !3990)
!3992 = !DILocation(line: 205, column: 33, scope: !3990)
!3993 = !DILocation(line: 205, column: 67, scope: !3990)
!3994 = !DILocation(line: 203, column: 3, scope: !3995)
!3995 = !DILexicalBlockFile(scope: !3984, file: !605, discriminator: 1)
!3996 = !DILocation(line: 208, column: 3, scope: !3954)
!3997 = !DILocation(line: 210, column: 1, scope: !3954)
!3998 = distinct !DISubprogram(name: "version_etc", scope: !605, file: !605, line: 227, type: !3999, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !3811, !33, !33, !33, null}
!4001 = !{!4002, !4003, !4004, !4005, !4006}
!4002 = !DILocalVariable(name: "stream", arg: 1, scope: !3998, file: !605, line: 227, type: !3811)
!4003 = !DILocalVariable(name: "command_name", arg: 2, scope: !3998, file: !605, line: 228, type: !33)
!4004 = !DILocalVariable(name: "package", arg: 3, scope: !3998, file: !605, line: 228, type: !33)
!4005 = !DILocalVariable(name: "version", arg: 4, scope: !3998, file: !605, line: 229, type: !33)
!4006 = !DILocalVariable(name: "authors", scope: !3998, file: !605, line: 231, type: !4007)
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3813, line: 80, baseType: !4008)
!4008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4009, line: 50, baseType: !4010)
!4009 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !602, line: 231, baseType: !4011)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3958, size: 192, elements: !3848)
!4012 = !DILocation(line: 227, column: 20, scope: !3998)
!4013 = !DILocation(line: 228, column: 26, scope: !3998)
!4014 = !DILocation(line: 228, column: 52, scope: !3998)
!4015 = !DILocation(line: 229, column: 26, scope: !3998)
!4016 = !DILocation(line: 231, column: 3, scope: !3998)
!4017 = !DILocation(line: 231, column: 11, scope: !3998)
!4018 = !DILocation(line: 233, column: 3, scope: !3998)
!4019 = !DILocation(line: 234, column: 3, scope: !3998)
!4020 = !DILocation(line: 235, column: 3, scope: !3998)
!4021 = !DILocation(line: 236, column: 1, scope: !3998)
!4022 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !605, file: !605, line: 239, type: !680, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !124)
!4023 = !DILocation(line: 245, column: 3, scope: !4022)
!4024 = !DILocation(line: 245, column: 3, scope: !4025)
!4025 = !DILexicalBlockFile(scope: !4022, file: !605, discriminator: 1)
!4026 = !DILocation(line: 251, column: 3, scope: !4022)
!4027 = !DILocation(line: 251, column: 3, scope: !4025)
!4028 = !DILocation(line: 256, column: 3, scope: !4022)
!4029 = !DILocation(line: 256, column: 3, scope: !4025)
!4030 = !DILocation(line: 258, column: 1, scope: !4022)
!4031 = distinct !DISubprogram(name: "xnmalloc", scope: !613, file: !613, line: 105, type: !4032, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4034)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!24, !25, !25}
!4034 = !{!4035, !4036}
!4035 = !DILocalVariable(name: "n", arg: 1, scope: !4031, file: !613, line: 105, type: !25)
!4036 = !DILocalVariable(name: "s", arg: 2, scope: !4031, file: !613, line: 105, type: !25)
!4037 = !DILocation(line: 105, column: 18, scope: !4031)
!4038 = !DILocation(line: 105, column: 28, scope: !4031)
!4039 = !DILocation(line: 107, column: 7, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4031, file: !613, line: 107, column: 7)
!4041 = !DILocation(line: 107, column: 7, scope: !4031)
!4042 = !DILocation(line: 108, column: 5, scope: !4040)
!4043 = !DILocation(line: 109, column: 21, scope: !4031)
!4044 = !DILocalVariable(name: "n", arg: 1, scope: !4045, file: !4046, line: 39, type: !25)
!4045 = distinct !DISubprogram(name: "xmalloc", scope: !4046, file: !4046, line: 39, type: !4047, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4049)
!4046 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!24, !25}
!4049 = !{!4044, !4050}
!4050 = !DILocalVariable(name: "p", scope: !4045, file: !4046, line: 41, type: !24)
!4051 = !DILocation(line: 39, column: 17, scope: !4045, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 109, column: 10, scope: !4031)
!4053 = !DILocation(line: 41, column: 13, scope: !4045, inlinedAt: !4052)
!4054 = !DILocation(line: 41, column: 9, scope: !4045, inlinedAt: !4052)
!4055 = !DILocation(line: 42, column: 8, scope: !4056, inlinedAt: !4052)
!4056 = distinct !DILexicalBlock(scope: !4045, file: !4046, line: 42, column: 7)
!4057 = !DILocation(line: 42, column: 15, scope: !4058, inlinedAt: !4052)
!4058 = !DILexicalBlockFile(scope: !4056, file: !4046, discriminator: 1)
!4059 = !DILocation(line: 42, column: 10, scope: !4056, inlinedAt: !4052)
!4060 = !DILocation(line: 43, column: 5, scope: !4056, inlinedAt: !4052)
!4061 = !DILocation(line: 109, column: 3, scope: !4031)
!4062 = !DILocation(line: 39, column: 17, scope: !4045)
!4063 = !DILocation(line: 41, column: 13, scope: !4045)
!4064 = !DILocation(line: 41, column: 9, scope: !4045)
!4065 = !DILocation(line: 42, column: 8, scope: !4056)
!4066 = !DILocation(line: 42, column: 15, scope: !4058)
!4067 = !DILocation(line: 42, column: 10, scope: !4056)
!4068 = !DILocation(line: 43, column: 5, scope: !4056)
!4069 = !DILocation(line: 44, column: 3, scope: !4045)
!4070 = distinct !DISubprogram(name: "xnrealloc", scope: !613, file: !613, line: 118, type: !4071, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!24, !24, !25, !25}
!4073 = !{!4074, !4075, !4076}
!4074 = !DILocalVariable(name: "p", arg: 1, scope: !4070, file: !613, line: 118, type: !24)
!4075 = !DILocalVariable(name: "n", arg: 2, scope: !4070, file: !613, line: 118, type: !25)
!4076 = !DILocalVariable(name: "s", arg: 3, scope: !4070, file: !613, line: 118, type: !25)
!4077 = !DILocation(line: 118, column: 18, scope: !4070)
!4078 = !DILocation(line: 118, column: 28, scope: !4070)
!4079 = !DILocation(line: 118, column: 38, scope: !4070)
!4080 = !DILocation(line: 120, column: 7, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4070, file: !613, line: 120, column: 7)
!4082 = !DILocation(line: 120, column: 7, scope: !4070)
!4083 = !DILocation(line: 121, column: 5, scope: !4081)
!4084 = !DILocation(line: 122, column: 25, scope: !4070)
!4085 = !DILocalVariable(name: "p", arg: 1, scope: !4086, file: !4046, line: 51, type: !24)
!4086 = distinct !DISubprogram(name: "xrealloc", scope: !4046, file: !4046, line: 51, type: !4087, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!24, !24, !25}
!4089 = !{!4085, !4090}
!4090 = !DILocalVariable(name: "n", arg: 2, scope: !4086, file: !4046, line: 51, type: !25)
!4091 = !DILocation(line: 51, column: 17, scope: !4086, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 122, column: 10, scope: !4070)
!4093 = !DILocation(line: 51, column: 27, scope: !4086, inlinedAt: !4092)
!4094 = !DILocation(line: 53, column: 8, scope: !4095, inlinedAt: !4092)
!4095 = distinct !DILexicalBlock(scope: !4086, file: !4046, line: 53, column: 7)
!4096 = !DILocation(line: 53, column: 13, scope: !4097, inlinedAt: !4092)
!4097 = !DILexicalBlockFile(scope: !4095, file: !4046, discriminator: 1)
!4098 = !DILocation(line: 53, column: 10, scope: !4095, inlinedAt: !4092)
!4099 = !DILocation(line: 57, column: 7, scope: !4100, inlinedAt: !4092)
!4100 = distinct !DILexicalBlock(scope: !4095, file: !4046, line: 54, column: 5)
!4101 = !DILocation(line: 58, column: 7, scope: !4100, inlinedAt: !4092)
!4102 = !DILocation(line: 61, column: 7, scope: !4086, inlinedAt: !4092)
!4103 = !DILocation(line: 62, column: 8, scope: !4104, inlinedAt: !4092)
!4104 = distinct !DILexicalBlock(scope: !4086, file: !4046, line: 62, column: 7)
!4105 = !DILocation(line: 62, column: 13, scope: !4106, inlinedAt: !4092)
!4106 = !DILexicalBlockFile(scope: !4104, file: !4046, discriminator: 1)
!4107 = !DILocation(line: 62, column: 10, scope: !4104, inlinedAt: !4092)
!4108 = !DILocation(line: 63, column: 5, scope: !4104, inlinedAt: !4092)
!4109 = !DILocation(line: 122, column: 3, scope: !4070)
!4110 = !DILocation(line: 51, column: 17, scope: !4086)
!4111 = !DILocation(line: 51, column: 27, scope: !4086)
!4112 = !DILocation(line: 53, column: 8, scope: !4095)
!4113 = !DILocation(line: 53, column: 13, scope: !4097)
!4114 = !DILocation(line: 53, column: 10, scope: !4095)
!4115 = !DILocation(line: 57, column: 7, scope: !4100)
!4116 = !DILocation(line: 58, column: 7, scope: !4100)
!4117 = !DILocation(line: 61, column: 7, scope: !4086)
!4118 = !DILocation(line: 62, column: 8, scope: !4104)
!4119 = !DILocation(line: 62, column: 13, scope: !4106)
!4120 = !DILocation(line: 62, column: 10, scope: !4104)
!4121 = !DILocation(line: 63, column: 5, scope: !4104)
!4122 = !DILocation(line: 65, column: 1, scope: !4086)
!4123 = !DILocation(line: 180, column: 19, scope: !614)
!4124 = !DILocation(line: 180, column: 30, scope: !614)
!4125 = !DILocation(line: 180, column: 41, scope: !614)
!4126 = !DILocation(line: 182, column: 14, scope: !614)
!4127 = !DILocation(line: 182, column: 10, scope: !614)
!4128 = !DILocation(line: 184, column: 9, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !614, file: !613, line: 184, column: 7)
!4130 = !DILocation(line: 184, column: 7, scope: !614)
!4131 = !DILocation(line: 186, column: 13, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !613, line: 186, column: 11)
!4133 = distinct !DILexicalBlock(scope: !4129, file: !613, line: 185, column: 5)
!4134 = !DILocation(line: 186, column: 11, scope: !4133)
!4135 = !DILocation(line: 194, column: 30, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !613, line: 187, column: 9)
!4137 = !DILocation(line: 195, column: 16, scope: !4136)
!4138 = !DILocation(line: 195, column: 13, scope: !4136)
!4139 = !DILocation(line: 196, column: 9, scope: !4136)
!4140 = !DILocation(line: 204, column: 69, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4142, file: !613, line: 204, column: 11)
!4142 = distinct !DILexicalBlock(scope: !4129, file: !613, line: 199, column: 5)
!4143 = !DILocation(line: 205, column: 11, scope: !4141)
!4144 = !DILocation(line: 204, column: 11, scope: !4142)
!4145 = !DILocation(line: 206, column: 9, scope: !4141)
!4146 = !DILocation(line: 210, column: 7, scope: !614)
!4147 = !DILocation(line: 211, column: 25, scope: !614)
!4148 = !DILocation(line: 51, column: 17, scope: !4086, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 211, column: 10, scope: !614)
!4150 = !DILocation(line: 51, column: 27, scope: !4086, inlinedAt: !4149)
!4151 = !DILocation(line: 53, column: 10, scope: !4095, inlinedAt: !4149)
!4152 = !DILocation(line: 207, column: 14, scope: !4142)
!4153 = !DILocation(line: 207, column: 18, scope: !4142)
!4154 = !DILocation(line: 207, column: 9, scope: !4142)
!4155 = !DILocation(line: 53, column: 8, scope: !4095, inlinedAt: !4149)
!4156 = !DILocation(line: 57, column: 7, scope: !4100, inlinedAt: !4149)
!4157 = !DILocation(line: 58, column: 7, scope: !4100, inlinedAt: !4149)
!4158 = !DILocation(line: 61, column: 7, scope: !4086, inlinedAt: !4149)
!4159 = !DILocation(line: 62, column: 8, scope: !4104, inlinedAt: !4149)
!4160 = !DILocation(line: 62, column: 13, scope: !4106, inlinedAt: !4149)
!4161 = !DILocation(line: 62, column: 10, scope: !4104, inlinedAt: !4149)
!4162 = !DILocation(line: 63, column: 5, scope: !4104, inlinedAt: !4149)
!4163 = !DILocation(line: 211, column: 3, scope: !614)
!4164 = distinct !DISubprogram(name: "xcharalloc", scope: !613, file: !613, line: 220, type: !3084, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4165)
!4165 = !{!4166}
!4166 = !DILocalVariable(name: "n", arg: 1, scope: !4164, file: !613, line: 220, type: !25)
!4167 = !DILocation(line: 220, column: 20, scope: !4164)
!4168 = !DILocation(line: 39, column: 17, scope: !4045, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 222, column: 10, scope: !4164)
!4170 = !DILocation(line: 41, column: 13, scope: !4045, inlinedAt: !4169)
!4171 = !DILocation(line: 41, column: 9, scope: !4045, inlinedAt: !4169)
!4172 = !DILocation(line: 42, column: 8, scope: !4056, inlinedAt: !4169)
!4173 = !DILocation(line: 42, column: 15, scope: !4058, inlinedAt: !4169)
!4174 = !DILocation(line: 42, column: 10, scope: !4056, inlinedAt: !4169)
!4175 = !DILocation(line: 43, column: 5, scope: !4056, inlinedAt: !4169)
!4176 = !DILocation(line: 222, column: 3, scope: !4164)
!4177 = distinct !DISubprogram(name: "x2realloc", scope: !4046, file: !4046, line: 74, type: !4178, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!24, !24, !617}
!4180 = !{!4181, !4182}
!4181 = !DILocalVariable(name: "p", arg: 1, scope: !4177, file: !4046, line: 74, type: !24)
!4182 = !DILocalVariable(name: "pn", arg: 2, scope: !4177, file: !4046, line: 74, type: !617)
!4183 = !DILocation(line: 74, column: 18, scope: !4177)
!4184 = !DILocation(line: 74, column: 29, scope: !4177)
!4185 = !DILocation(line: 180, column: 19, scope: !614, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 76, column: 10, scope: !4177)
!4187 = !DILocation(line: 180, column: 30, scope: !614, inlinedAt: !4186)
!4188 = !DILocation(line: 180, column: 41, scope: !614, inlinedAt: !4186)
!4189 = !DILocation(line: 182, column: 14, scope: !614, inlinedAt: !4186)
!4190 = !DILocation(line: 182, column: 10, scope: !614, inlinedAt: !4186)
!4191 = !DILocation(line: 184, column: 9, scope: !4129, inlinedAt: !4186)
!4192 = !DILocation(line: 184, column: 7, scope: !614, inlinedAt: !4186)
!4193 = !DILocation(line: 186, column: 13, scope: !4132, inlinedAt: !4186)
!4194 = !DILocation(line: 186, column: 11, scope: !4133, inlinedAt: !4186)
!4195 = !DILocation(line: 210, column: 7, scope: !614, inlinedAt: !4186)
!4196 = !DILocation(line: 51, column: 17, scope: !4086, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 211, column: 10, scope: !614, inlinedAt: !4186)
!4198 = !DILocation(line: 51, column: 27, scope: !4086, inlinedAt: !4197)
!4199 = !DILocation(line: 53, column: 10, scope: !4095, inlinedAt: !4197)
!4200 = !DILocation(line: 205, column: 11, scope: !4141, inlinedAt: !4186)
!4201 = !DILocation(line: 204, column: 11, scope: !4142, inlinedAt: !4186)
!4202 = !DILocation(line: 206, column: 9, scope: !4141, inlinedAt: !4186)
!4203 = !DILocation(line: 207, column: 14, scope: !4142, inlinedAt: !4186)
!4204 = !DILocation(line: 207, column: 18, scope: !4142, inlinedAt: !4186)
!4205 = !DILocation(line: 207, column: 9, scope: !4142, inlinedAt: !4186)
!4206 = !DILocation(line: 53, column: 8, scope: !4095, inlinedAt: !4197)
!4207 = !DILocation(line: 57, column: 7, scope: !4100, inlinedAt: !4197)
!4208 = !DILocation(line: 58, column: 7, scope: !4100, inlinedAt: !4197)
!4209 = !DILocation(line: 61, column: 7, scope: !4086, inlinedAt: !4197)
!4210 = !DILocation(line: 62, column: 8, scope: !4104, inlinedAt: !4197)
!4211 = !DILocation(line: 62, column: 13, scope: !4106, inlinedAt: !4197)
!4212 = !DILocation(line: 62, column: 10, scope: !4104, inlinedAt: !4197)
!4213 = !DILocation(line: 63, column: 5, scope: !4104, inlinedAt: !4197)
!4214 = !DILocation(line: 76, column: 3, scope: !4177)
!4215 = distinct !DISubprogram(name: "xzalloc", scope: !4046, file: !4046, line: 84, type: !4047, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4216)
!4216 = !{!4217}
!4217 = !DILocalVariable(name: "s", arg: 1, scope: !4215, file: !4046, line: 84, type: !25)
!4218 = !DILocation(line: 84, column: 17, scope: !4215)
!4219 = !DILocation(line: 39, column: 17, scope: !4045, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 86, column: 18, scope: !4215)
!4221 = !DILocation(line: 41, column: 13, scope: !4045, inlinedAt: !4220)
!4222 = !DILocation(line: 41, column: 9, scope: !4045, inlinedAt: !4220)
!4223 = !DILocation(line: 42, column: 8, scope: !4056, inlinedAt: !4220)
!4224 = !DILocation(line: 42, column: 15, scope: !4058, inlinedAt: !4220)
!4225 = !DILocation(line: 42, column: 10, scope: !4056, inlinedAt: !4220)
!4226 = !DILocation(line: 43, column: 5, scope: !4056, inlinedAt: !4220)
!4227 = !DILocation(line: 86, column: 10, scope: !4215)
!4228 = !DILocation(line: 86, column: 3, scope: !4215)
!4229 = distinct !DISubprogram(name: "xcalloc", scope: !4046, file: !4046, line: 93, type: !4032, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4230)
!4230 = !{!4231, !4232, !4233}
!4231 = !DILocalVariable(name: "n", arg: 1, scope: !4229, file: !4046, line: 93, type: !25)
!4232 = !DILocalVariable(name: "s", arg: 2, scope: !4229, file: !4046, line: 93, type: !25)
!4233 = !DILocalVariable(name: "p", scope: !4229, file: !4046, line: 95, type: !24)
!4234 = !DILocation(line: 93, column: 17, scope: !4229)
!4235 = !DILocation(line: 93, column: 27, scope: !4229)
!4236 = !DILocation(line: 100, column: 7, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4229, file: !4046, line: 100, column: 7)
!4238 = !DILocation(line: 101, column: 7, scope: !4237)
!4239 = !DILocation(line: 101, column: 18, scope: !4240)
!4240 = !DILexicalBlockFile(scope: !4237, file: !4046, discriminator: 1)
!4241 = !DILocation(line: 95, column: 9, scope: !4229)
!4242 = !DILocation(line: 101, column: 16, scope: !4240)
!4243 = !DILocation(line: 100, column: 7, scope: !4244)
!4244 = !DILexicalBlockFile(scope: !4229, file: !4046, discriminator: 1)
!4245 = !DILocation(line: 102, column: 5, scope: !4237)
!4246 = !DILocation(line: 103, column: 3, scope: !4229)
!4247 = distinct !DISubprogram(name: "xmemdup", scope: !4046, file: !4046, line: 111, type: !4248, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4250)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!24, !28, !25}
!4250 = !{!4251, !4252}
!4251 = !DILocalVariable(name: "p", arg: 1, scope: !4247, file: !4046, line: 111, type: !28)
!4252 = !DILocalVariable(name: "s", arg: 2, scope: !4247, file: !4046, line: 111, type: !25)
!4253 = !DILocation(line: 111, column: 22, scope: !4247)
!4254 = !DILocation(line: 111, column: 32, scope: !4247)
!4255 = !DILocation(line: 39, column: 17, scope: !4045, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 113, column: 18, scope: !4247)
!4257 = !DILocation(line: 41, column: 13, scope: !4045, inlinedAt: !4256)
!4258 = !DILocation(line: 41, column: 9, scope: !4045, inlinedAt: !4256)
!4259 = !DILocation(line: 42, column: 8, scope: !4056, inlinedAt: !4256)
!4260 = !DILocation(line: 42, column: 15, scope: !4058, inlinedAt: !4256)
!4261 = !DILocation(line: 42, column: 10, scope: !4056, inlinedAt: !4256)
!4262 = !DILocation(line: 43, column: 5, scope: !4056, inlinedAt: !4256)
!4263 = !DILocation(line: 113, column: 10, scope: !4247)
!4264 = !DILocation(line: 113, column: 3, scope: !4247)
!4265 = distinct !DISubprogram(name: "xstrdup", scope: !4046, file: !4046, line: 119, type: !3289, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !4266)
!4266 = !{!4267}
!4267 = !DILocalVariable(name: "string", arg: 1, scope: !4265, file: !4046, line: 119, type: !33)
!4268 = !DILocation(line: 119, column: 22, scope: !4265)
!4269 = !DILocation(line: 121, column: 27, scope: !4265)
!4270 = !DILocation(line: 121, column: 43, scope: !4265)
!4271 = !DILocation(line: 111, column: 22, scope: !4247, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 121, column: 10, scope: !4273)
!4273 = !DILexicalBlockFile(scope: !4265, file: !4046, discriminator: 1)
!4274 = !DILocation(line: 111, column: 32, scope: !4247, inlinedAt: !4272)
!4275 = !DILocation(line: 39, column: 17, scope: !4045, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 113, column: 18, scope: !4247, inlinedAt: !4272)
!4277 = !DILocation(line: 41, column: 13, scope: !4045, inlinedAt: !4276)
!4278 = !DILocation(line: 41, column: 9, scope: !4045, inlinedAt: !4276)
!4279 = !DILocation(line: 42, column: 8, scope: !4056, inlinedAt: !4276)
!4280 = !DILocation(line: 42, column: 15, scope: !4058, inlinedAt: !4276)
!4281 = !DILocation(line: 42, column: 10, scope: !4056, inlinedAt: !4276)
!4282 = !DILocation(line: 43, column: 5, scope: !4056, inlinedAt: !4276)
!4283 = !DILocation(line: 113, column: 10, scope: !4247, inlinedAt: !4272)
!4284 = !DILocation(line: 121, column: 3, scope: !4265)
!4285 = distinct !DISubprogram(name: "xalloc_die", scope: !4286, file: !4286, line: 32, type: !680, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !626, variables: !124)
!4286 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4287 = !DILocation(line: 34, column: 10, scope: !4285)
!4288 = !DILocation(line: 34, column: 33, scope: !4285)
!4289 = !DILocation(line: 34, column: 3, scope: !4290)
!4290 = !DILexicalBlockFile(scope: !4285, file: !4286, discriminator: 1)
!4291 = !DILocation(line: 40, column: 3, scope: !4285)
!4292 = distinct !DISubprogram(name: "xstrtold", scope: !4293, file: !4293, line: 44, type: !4294, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4299)
!4293 = !DIFile(filename: "./lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!40, !33, !4296, !4297, !4298}
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!4299 = !{!4300, !4301, !4302, !4303, !4304, !4305, !4306}
!4300 = !DILocalVariable(name: "str", arg: 1, scope: !4292, file: !4293, line: 44, type: !33)
!4301 = !DILocalVariable(name: "ptr", arg: 2, scope: !4292, file: !4293, line: 44, type: !4296)
!4302 = !DILocalVariable(name: "result", arg: 3, scope: !4292, file: !4293, line: 44, type: !4297)
!4303 = !DILocalVariable(name: "convert", arg: 4, scope: !4292, file: !4293, line: 45, type: !4298)
!4304 = !DILocalVariable(name: "val", scope: !4292, file: !4293, line: 47, type: !99)
!4305 = !DILocalVariable(name: "terminator", scope: !4292, file: !4293, line: 48, type: !22)
!4306 = !DILocalVariable(name: "ok", scope: !4292, file: !4293, line: 49, type: !40)
!4307 = !DILocation(line: 44, column: 22, scope: !4292)
!4308 = !DILocation(line: 44, column: 40, scope: !4292)
!4309 = !DILocation(line: 44, column: 53, scope: !4292)
!4310 = !DILocation(line: 45, column: 19, scope: !4292)
!4311 = !DILocation(line: 48, column: 3, scope: !4292)
!4312 = !DILocation(line: 49, column: 8, scope: !4292)
!4313 = !DILocation(line: 51, column: 3, scope: !4292)
!4314 = !DILocation(line: 51, column: 9, scope: !4292)
!4315 = !DILocation(line: 48, column: 9, scope: !4292)
!4316 = !DILocation(line: 52, column: 9, scope: !4292)
!4317 = !DILocation(line: 47, column: 10, scope: !4292)
!4318 = !DILocation(line: 55, column: 7, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4292, file: !4293, line: 55, column: 7)
!4320 = !DILocation(line: 55, column: 18, scope: !4319)
!4321 = !DILocation(line: 55, column: 25, scope: !4319)
!4322 = !DILocation(line: 55, column: 33, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !4319, file: !4293, discriminator: 1)
!4324 = !DILocation(line: 55, column: 41, scope: !4323)
!4325 = !DILocation(line: 55, column: 44, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !4319, file: !4293, discriminator: 2)
!4327 = !DILocation(line: 55, column: 56, scope: !4326)
!4328 = !DILocation(line: 55, column: 7, scope: !4329)
!4329 = !DILexicalBlockFile(scope: !4292, file: !4293, discriminator: 2)
!4330 = !DILocation(line: 62, column: 15, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4332, file: !4293, line: 62, column: 11)
!4332 = distinct !DILexicalBlock(scope: !4319, file: !4293, line: 58, column: 5)
!4333 = !DILocation(line: 62, column: 20, scope: !4331)
!4334 = !DILocation(line: 62, column: 23, scope: !4335)
!4335 = !DILexicalBlockFile(scope: !4331, file: !4293, discriminator: 1)
!4336 = !DILocation(line: 62, column: 11, scope: !4337)
!4337 = !DILexicalBlockFile(scope: !4332, file: !4293, discriminator: 1)
!4338 = !DILocation(line: 66, column: 11, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4292, file: !4293, line: 66, column: 7)
!4340 = !DILocation(line: 66, column: 7, scope: !4292)
!4341 = !DILocation(line: 67, column: 10, scope: !4339)
!4342 = !DILocation(line: 67, column: 5, scope: !4339)
!4343 = !DILocation(line: 69, column: 11, scope: !4292)
!4344 = !DILocation(line: 71, column: 1, scope: !4292)
!4345 = !DILocation(line: 70, column: 3, scope: !4292)
!4346 = distinct !DISubprogram(name: "rpl_calloc", scope: !4347, file: !4347, line: 42, type: !4032, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4348)
!4347 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4348 = !{!4349, !4350, !4351, !4352}
!4349 = !DILocalVariable(name: "n", arg: 1, scope: !4346, file: !4347, line: 42, type: !25)
!4350 = !DILocalVariable(name: "s", arg: 2, scope: !4346, file: !4347, line: 42, type: !25)
!4351 = !DILocalVariable(name: "result", scope: !4346, file: !4347, line: 44, type: !24)
!4352 = !DILocalVariable(name: "bytes", scope: !4353, file: !4347, line: 56, type: !25)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !4347, line: 53, column: 5)
!4354 = distinct !DILexicalBlock(scope: !4346, file: !4347, line: 47, column: 7)
!4355 = !DILocation(line: 42, column: 20, scope: !4346)
!4356 = !DILocation(line: 42, column: 30, scope: !4346)
!4357 = !DILocation(line: 47, column: 9, scope: !4354)
!4358 = !DILocation(line: 47, column: 19, scope: !4359)
!4359 = !DILexicalBlockFile(scope: !4354, file: !4347, discriminator: 1)
!4360 = !DILocation(line: 47, column: 14, scope: !4354)
!4361 = !DILocation(line: 56, column: 24, scope: !4353)
!4362 = !DILocation(line: 56, column: 14, scope: !4353)
!4363 = !DILocation(line: 57, column: 17, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4353, file: !4347, line: 57, column: 11)
!4365 = !DILocation(line: 57, column: 21, scope: !4364)
!4366 = !DILocation(line: 57, column: 11, scope: !4353)
!4367 = !DILocation(line: 59, column: 11, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4364, file: !4347, line: 58, column: 9)
!4369 = !DILocation(line: 59, column: 17, scope: !4368)
!4370 = !DILocation(line: 65, column: 12, scope: !4346)
!4371 = !DILocation(line: 44, column: 9, scope: !4346)
!4372 = !DILocation(line: 72, column: 3, scope: !4346)
!4373 = !DILocation(line: 73, column: 1, scope: !4346)
!4374 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4375, file: !4375, line: 334, type: !4376, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !4390)
!4375 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!25, !4378, !33, !25, !4379}
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2057, line: 107, baseType: !4381)
!4381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2057, line: 95, baseType: !4382)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 83, size: 64, elements: !4383)
!4383 = !{!4384, !4385}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4382, file: !2057, line: 85, baseType: !35, size: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4382, file: !2057, line: 94, baseType: !4386, size: 32, offset: 32)
!4386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4382, file: !2057, line: 86, size: 32, elements: !4387)
!4387 = !{!4388, !4389}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4386, file: !2057, line: 89, baseType: !21, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4386, file: !2057, line: 93, baseType: !2067, size: 32)
!4390 = !{!4391, !4392, !4393, !4394, !4395, !4396, !4397}
!4391 = !DILocalVariable(name: "pwc", arg: 1, scope: !4374, file: !4375, line: 334, type: !4378)
!4392 = !DILocalVariable(name: "s", arg: 2, scope: !4374, file: !4375, line: 334, type: !33)
!4393 = !DILocalVariable(name: "n", arg: 3, scope: !4374, file: !4375, line: 334, type: !25)
!4394 = !DILocalVariable(name: "ps", arg: 4, scope: !4374, file: !4375, line: 334, type: !4379)
!4395 = !DILocalVariable(name: "ret", scope: !4374, file: !4375, line: 336, type: !25)
!4396 = !DILocalVariable(name: "wc", scope: !4374, file: !4375, line: 337, type: !2072)
!4397 = !DILocalVariable(name: "uc", scope: !4398, file: !4375, line: 398, type: !32)
!4398 = distinct !DILexicalBlock(scope: !4399, file: !4375, line: 397, column: 5)
!4399 = distinct !DILexicalBlock(scope: !4374, file: !4375, line: 396, column: 7)
!4400 = !DILocation(line: 334, column: 23, scope: !4374)
!4401 = !DILocation(line: 334, column: 40, scope: !4374)
!4402 = !DILocation(line: 334, column: 50, scope: !4374)
!4403 = !DILocation(line: 334, column: 64, scope: !4374)
!4404 = !DILocation(line: 337, column: 3, scope: !4374)
!4405 = !DILocation(line: 353, column: 9, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4374, file: !4375, line: 353, column: 7)
!4407 = !DILocation(line: 353, column: 7, scope: !4374)
!4408 = !DILocation(line: 388, column: 9, scope: !4374)
!4409 = !DILocation(line: 336, column: 10, scope: !4374)
!4410 = !DILocation(line: 396, column: 19, scope: !4399)
!4411 = !DILocation(line: 396, column: 31, scope: !4412)
!4412 = !DILexicalBlockFile(scope: !4399, file: !4375, discriminator: 1)
!4413 = !DILocation(line: 396, column: 26, scope: !4399)
!4414 = !DILocation(line: 396, column: 41, scope: !4415)
!4415 = !DILexicalBlockFile(scope: !4399, file: !4375, discriminator: 2)
!4416 = !DILocation(line: 396, column: 7, scope: !4417)
!4417 = !DILexicalBlockFile(scope: !4374, file: !4375, discriminator: 2)
!4418 = !DILocation(line: 398, column: 26, scope: !4398)
!4419 = !DILocation(line: 398, column: 21, scope: !4398)
!4420 = !DILocation(line: 399, column: 14, scope: !4398)
!4421 = !DILocation(line: 399, column: 12, scope: !4398)
!4422 = !DILocation(line: 405, column: 1, scope: !4374)
!4423 = distinct !DISubprogram(name: "close_stream", scope: !4424, file: !4424, line: 56, type: !4425, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4467)
!4424 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!35, !4427}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3813, line: 49, baseType: !4429)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3815, line: 241, size: 1728, elements: !4430)
!4430 = !{!4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4429, file: !3815, line: 242, baseType: !35, size: 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4429, file: !3815, line: 247, baseType: !22, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4429, file: !3815, line: 248, baseType: !22, size: 64, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4429, file: !3815, line: 249, baseType: !22, size: 64, offset: 192)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4429, file: !3815, line: 250, baseType: !22, size: 64, offset: 256)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4429, file: !3815, line: 251, baseType: !22, size: 64, offset: 320)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4429, file: !3815, line: 252, baseType: !22, size: 64, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4429, file: !3815, line: 253, baseType: !22, size: 64, offset: 448)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4429, file: !3815, line: 254, baseType: !22, size: 64, offset: 512)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4429, file: !3815, line: 256, baseType: !22, size: 64, offset: 576)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4429, file: !3815, line: 257, baseType: !22, size: 64, offset: 640)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4429, file: !3815, line: 258, baseType: !22, size: 64, offset: 704)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4429, file: !3815, line: 260, baseType: !4444, size: 64, offset: 768)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3815, line: 156, size: 192, elements: !4446)
!4446 = !{!4447, !4448, !4450}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4445, file: !3815, line: 157, baseType: !4444, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4445, file: !3815, line: 158, baseType: !4449, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4445, file: !3815, line: 162, baseType: !35, size: 32, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4429, file: !3815, line: 262, baseType: !4449, size: 64, offset: 832)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4429, file: !3815, line: 264, baseType: !35, size: 32, offset: 896)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4429, file: !3815, line: 268, baseType: !35, size: 32, offset: 928)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4429, file: !3815, line: 270, baseType: !3841, size: 64, offset: 960)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4429, file: !3815, line: 274, baseType: !36, size: 16, offset: 1024)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4429, file: !3815, line: 275, baseType: !3845, size: 8, offset: 1040)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4429, file: !3815, line: 276, baseType: !3847, size: 8, offset: 1048)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4429, file: !3815, line: 280, baseType: !3851, size: 64, offset: 1088)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4429, file: !3815, line: 289, baseType: !3854, size: 64, offset: 1152)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4429, file: !3815, line: 297, baseType: !24, size: 64, offset: 1216)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4429, file: !3815, line: 298, baseType: !24, size: 64, offset: 1280)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4429, file: !3815, line: 299, baseType: !24, size: 64, offset: 1344)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4429, file: !3815, line: 300, baseType: !24, size: 64, offset: 1408)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4429, file: !3815, line: 302, baseType: !25, size: 64, offset: 1472)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4429, file: !3815, line: 303, baseType: !35, size: 32, offset: 1536)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4429, file: !3815, line: 305, baseType: !3862, size: 160, offset: 1568)
!4467 = !{!4468, !4469, !4471, !4472}
!4468 = !DILocalVariable(name: "stream", arg: 1, scope: !4423, file: !4424, line: 56, type: !4427)
!4469 = !DILocalVariable(name: "some_pending", scope: !4423, file: !4424, line: 58, type: !4470)
!4470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!4471 = !DILocalVariable(name: "prev_fail", scope: !4423, file: !4424, line: 59, type: !4470)
!4472 = !DILocalVariable(name: "fclose_fail", scope: !4423, file: !4424, line: 60, type: !4470)
!4473 = !DILocation(line: 56, column: 21, scope: !4423)
!4474 = !DILocation(line: 58, column: 30, scope: !4423)
!4475 = !DILocalVariable(name: "__stream", arg: 1, scope: !4476, file: !4477, line: 132, type: !4427)
!4476 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4477, file: !4477, line: 132, type: !4425, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4478)
!4477 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4478 = !{!4475}
!4479 = !DILocation(line: 132, column: 1, scope: !4476, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 59, column: 27, scope: !4423)
!4481 = !DILocation(line: 134, column: 10, scope: !4476, inlinedAt: !4480)
!4482 = !{!4483, !771, i64 0}
!4483 = !{!"_IO_FILE", !771, i64 0, !665, i64 8, !665, i64 16, !665, i64 24, !665, i64 32, !665, i64 40, !665, i64 48, !665, i64 56, !665, i64 64, !665, i64 72, !665, i64 80, !665, i64 88, !665, i64 96, !665, i64 104, !771, i64 112, !771, i64 116, !1144, i64 120, !1618, i64 128, !666, i64 130, !666, i64 131, !665, i64 136, !1144, i64 144, !665, i64 152, !665, i64 160, !665, i64 168, !665, i64 176, !1144, i64 184, !771, i64 192, !666, i64 196}
!4484 = !DILocation(line: 59, column: 43, scope: !4423)
!4485 = !DILocation(line: 60, column: 29, scope: !4423)
!4486 = !DILocation(line: 60, column: 45, scope: !4423)
!4487 = !DILocation(line: 70, column: 17, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4423, file: !4424, line: 70, column: 7)
!4489 = !DILocation(line: 70, column: 33, scope: !4490)
!4490 = !DILexicalBlockFile(scope: !4488, file: !4424, discriminator: 1)
!4491 = !DILocation(line: 70, column: 53, scope: !4492)
!4492 = !DILexicalBlockFile(scope: !4488, file: !4424, discriminator: 3)
!4493 = !DILocation(line: 70, column: 7, scope: !4494)
!4494 = !DILexicalBlockFile(scope: !4423, file: !4424, discriminator: 3)
!4495 = !DILocation(line: 72, column: 11, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4488, file: !4424, line: 71, column: 5)
!4497 = !DILocation(line: 73, column: 9, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4496, file: !4424, line: 72, column: 11)
!4499 = !DILocation(line: 73, column: 15, scope: !4498)
!4500 = !DILocation(line: 78, column: 1, scope: !4423)
!4501 = distinct !DISubprogram(name: "hard_locale", scope: !4502, file: !4502, line: 38, type: !4503, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4505)
!4502 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!40, !35}
!4505 = !{!4506, !4507, !4508, !4509, !4516, !4517, !4519, !4520, !4522, !4523, !4525}
!4506 = !DILocalVariable(name: "category", arg: 1, scope: !4501, file: !4502, line: 38, type: !35)
!4507 = !DILocalVariable(name: "hard", scope: !4501, file: !4502, line: 40, type: !40)
!4508 = !DILocalVariable(name: "p", scope: !4501, file: !4502, line: 41, type: !33)
!4509 = !DILocalVariable(name: "__s1_len", scope: !4510, file: !4502, line: 47, type: !25)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !4502, line: 47, column: 15)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !4502, line: 47, column: 15)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !4502, line: 46, column: 9)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !4502, line: 45, column: 11)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !4502, line: 44, column: 5)
!4515 = distinct !DILexicalBlock(scope: !4501, file: !4502, line: 43, column: 7)
!4516 = !DILocalVariable(name: "__s2_len", scope: !4510, file: !4502, line: 47, type: !25)
!4517 = !DILocalVariable(name: "__s2", scope: !4518, file: !4502, line: 47, type: !30)
!4518 = distinct !DILexicalBlock(scope: !4510, file: !4502, line: 47, column: 15)
!4519 = !DILocalVariable(name: "__result", scope: !4518, file: !4502, line: 47, type: !35)
!4520 = !DILocalVariable(name: "__s1_len", scope: !4521, file: !4502, line: 47, type: !25)
!4521 = distinct !DILexicalBlock(scope: !4511, file: !4502, line: 47, column: 39)
!4522 = !DILocalVariable(name: "__s2_len", scope: !4521, file: !4502, line: 47, type: !25)
!4523 = !DILocalVariable(name: "__s2", scope: !4524, file: !4502, line: 47, type: !30)
!4524 = distinct !DILexicalBlock(scope: !4521, file: !4502, line: 47, column: 39)
!4525 = !DILocalVariable(name: "__result", scope: !4524, file: !4502, line: 47, type: !35)
!4526 = !DILocation(line: 38, column: 18, scope: !4501)
!4527 = !DILocation(line: 40, column: 8, scope: !4501)
!4528 = !DILocation(line: 41, column: 19, scope: !4501)
!4529 = !DILocation(line: 41, column: 15, scope: !4501)
!4530 = !DILocation(line: 43, column: 7, scope: !4515)
!4531 = !DILocation(line: 43, column: 7, scope: !4501)
!4532 = !DILocation(line: 47, column: 15, scope: !4510)
!4533 = !DILocation(line: 47, column: 15, scope: !4518)
!4534 = !DILocation(line: 47, column: 15, scope: !4535)
!4535 = !DILexicalBlockFile(scope: !4518, file: !4502, discriminator: 2)
!4536 = !DILocation(line: 47, column: 15, scope: !4537)
!4537 = !DILexicalBlockFile(scope: !4538, file: !4502, discriminator: 3)
!4538 = distinct !DILexicalBlock(scope: !4518, file: !4502, line: 47, column: 15)
!4539 = !DILocation(line: 47, column: 15, scope: !4540)
!4540 = !DILexicalBlockFile(scope: !4538, file: !4502, discriminator: 2)
!4541 = !DILocation(line: 47, column: 15, scope: !4542)
!4542 = !DILexicalBlockFile(scope: !4543, file: !4502, discriminator: 4)
!4543 = distinct !DILexicalBlock(scope: !4538, file: !4502, line: 47, column: 15)
!4544 = !DILocation(line: 47, column: 15, scope: !4545)
!4545 = !DILexicalBlockFile(scope: !4510, file: !4502, discriminator: 11)
!4546 = !DILocation(line: 47, column: 36, scope: !4547)
!4547 = !DILexicalBlockFile(scope: !4511, file: !4502, discriminator: 13)
!4548 = !DILocation(line: 47, column: 39, scope: !4521)
!4549 = !DILocation(line: 47, column: 39, scope: !4550)
!4550 = !DILexicalBlockFile(scope: !4521, file: !4502, discriminator: 26)
!4551 = !DILocation(line: 47, column: 59, scope: !4552)
!4552 = !DILexicalBlockFile(scope: !4511, file: !4502, discriminator: 27)
!4553 = !DILocation(line: 47, column: 15, scope: !4554)
!4554 = !DILexicalBlockFile(scope: !4512, file: !4502, discriminator: 27)
!4555 = !DILocation(line: 48, column: 13, scope: !4511)
!4556 = !DILocation(line: 71, column: 3, scope: !4501)
!4557 = distinct !DISubprogram(name: "locale_charset", scope: !599, file: !599, line: 393, type: !4558, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !255, variables: !4560)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!33}
!4560 = !{!4561, !4562, !4563, !4568}
!4561 = !DILocalVariable(name: "codeset", scope: !4557, file: !599, line: 395, type: !33)
!4562 = !DILocalVariable(name: "aliases", scope: !4557, file: !599, line: 396, type: !33)
!4563 = !DILocalVariable(name: "__s1_len", scope: !4564, file: !599, line: 592, type: !25)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !599, line: 592, column: 9)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !599, line: 592, column: 9)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !599, line: 589, column: 3)
!4567 = distinct !DILexicalBlock(scope: !4557, file: !599, line: 589, column: 3)
!4568 = !DILocalVariable(name: "__s2_len", scope: !4564, file: !599, line: 592, type: !25)
!4569 = !DILocalVariable(name: "buf1", scope: !4570, file: !599, line: 196, type: !4637)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !599, line: 194, column: 21)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !599, line: 193, column: 19)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !599, line: 193, column: 19)
!4573 = distinct !DILexicalBlock(scope: !4574, file: !599, line: 188, column: 17)
!4574 = distinct !DILexicalBlock(scope: !4575, file: !599, line: 181, column: 19)
!4575 = distinct !DILexicalBlock(scope: !4576, file: !599, line: 177, column: 13)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !599, line: 173, column: 15)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !599, line: 161, column: 9)
!4578 = distinct !DILexicalBlock(scope: !4579, file: !599, line: 157, column: 11)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !599, line: 130, column: 5)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !599, line: 129, column: 7)
!4581 = distinct !DISubprogram(name: "get_charset_aliases", scope: !599, file: !599, line: 124, type: !4558, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !255, variables: !4582)
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4589, !4590, !4591, !4592, !4633, !4634, !4635, !4569, !4636, !4640, !4641, !4642}
!4583 = !DILocalVariable(name: "cp", scope: !4581, file: !599, line: 126, type: !33)
!4584 = !DILocalVariable(name: "dir", scope: !4579, file: !599, line: 132, type: !33)
!4585 = !DILocalVariable(name: "base", scope: !4579, file: !599, line: 133, type: !33)
!4586 = !DILocalVariable(name: "file_name", scope: !4579, file: !599, line: 134, type: !22)
!4587 = !DILocalVariable(name: "dir_len", scope: !4588, file: !599, line: 144, type: !25)
!4588 = distinct !DILexicalBlock(scope: !4579, file: !599, line: 143, column: 7)
!4589 = !DILocalVariable(name: "base_len", scope: !4588, file: !599, line: 145, type: !25)
!4590 = !DILocalVariable(name: "add_slash", scope: !4588, file: !599, line: 146, type: !35)
!4591 = !DILocalVariable(name: "fd", scope: !4577, file: !599, line: 162, type: !35)
!4592 = !DILocalVariable(name: "fp", scope: !4575, file: !599, line: 178, type: !4593)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3813, line: 49, baseType: !4595)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3815, line: 241, size: 1728, elements: !4596)
!4596 = !{!4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4595, file: !3815, line: 242, baseType: !35, size: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4595, file: !3815, line: 247, baseType: !22, size: 64, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4595, file: !3815, line: 248, baseType: !22, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4595, file: !3815, line: 249, baseType: !22, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4595, file: !3815, line: 250, baseType: !22, size: 64, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4595, file: !3815, line: 251, baseType: !22, size: 64, offset: 320)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4595, file: !3815, line: 252, baseType: !22, size: 64, offset: 384)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4595, file: !3815, line: 253, baseType: !22, size: 64, offset: 448)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4595, file: !3815, line: 254, baseType: !22, size: 64, offset: 512)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4595, file: !3815, line: 256, baseType: !22, size: 64, offset: 576)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4595, file: !3815, line: 257, baseType: !22, size: 64, offset: 640)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4595, file: !3815, line: 258, baseType: !22, size: 64, offset: 704)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4595, file: !3815, line: 260, baseType: !4610, size: 64, offset: 768)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3815, line: 156, size: 192, elements: !4612)
!4612 = !{!4613, !4614, !4616}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4611, file: !3815, line: 157, baseType: !4610, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4611, file: !3815, line: 158, baseType: !4615, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4611, file: !3815, line: 162, baseType: !35, size: 32, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4595, file: !3815, line: 262, baseType: !4615, size: 64, offset: 832)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4595, file: !3815, line: 264, baseType: !35, size: 32, offset: 896)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4595, file: !3815, line: 268, baseType: !35, size: 32, offset: 928)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4595, file: !3815, line: 270, baseType: !3841, size: 64, offset: 960)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4595, file: !3815, line: 274, baseType: !36, size: 16, offset: 1024)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4595, file: !3815, line: 275, baseType: !3845, size: 8, offset: 1040)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4595, file: !3815, line: 276, baseType: !3847, size: 8, offset: 1048)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4595, file: !3815, line: 280, baseType: !3851, size: 64, offset: 1088)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4595, file: !3815, line: 289, baseType: !3854, size: 64, offset: 1152)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4595, file: !3815, line: 297, baseType: !24, size: 64, offset: 1216)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4595, file: !3815, line: 298, baseType: !24, size: 64, offset: 1280)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4595, file: !3815, line: 299, baseType: !24, size: 64, offset: 1344)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4595, file: !3815, line: 300, baseType: !24, size: 64, offset: 1408)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4595, file: !3815, line: 302, baseType: !25, size: 64, offset: 1472)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4595, file: !3815, line: 303, baseType: !35, size: 32, offset: 1536)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4595, file: !3815, line: 305, baseType: !3862, size: 160, offset: 1568)
!4633 = !DILocalVariable(name: "res_ptr", scope: !4573, file: !599, line: 190, type: !22)
!4634 = !DILocalVariable(name: "res_size", scope: !4573, file: !599, line: 191, type: !25)
!4635 = !DILocalVariable(name: "c", scope: !4570, file: !599, line: 195, type: !35)
!4636 = !DILocalVariable(name: "buf2", scope: !4570, file: !599, line: 197, type: !4637)
!4637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 408, elements: !4638)
!4638 = !{!4639}
!4639 = !DISubrange(count: 51)
!4640 = !DILocalVariable(name: "l1", scope: !4570, file: !599, line: 198, type: !25)
!4641 = !DILocalVariable(name: "l2", scope: !4570, file: !599, line: 198, type: !25)
!4642 = !DILocalVariable(name: "old_res_ptr", scope: !4570, file: !599, line: 199, type: !22)
!4643 = !DILocation(line: 196, column: 28, scope: !4570, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 589, column: 18, scope: !4567)
!4645 = !DILocation(line: 197, column: 28, scope: !4570, inlinedAt: !4644)
!4646 = !DILocation(line: 403, column: 13, scope: !4557)
!4647 = !DILocation(line: 395, column: 15, scope: !4557)
!4648 = !DILocation(line: 584, column: 15, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4557, file: !599, line: 584, column: 7)
!4650 = !DILocation(line: 584, column: 7, scope: !4557)
!4651 = !DILocation(line: 128, column: 8, scope: !4581, inlinedAt: !4644)
!4652 = !DILocation(line: 126, column: 15, scope: !4581, inlinedAt: !4644)
!4653 = !DILocation(line: 129, column: 10, scope: !4580, inlinedAt: !4644)
!4654 = !DILocation(line: 129, column: 7, scope: !4581, inlinedAt: !4644)
!4655 = !DILocation(line: 138, column: 13, scope: !4579, inlinedAt: !4644)
!4656 = !DILocation(line: 132, column: 19, scope: !4579, inlinedAt: !4644)
!4657 = !DILocation(line: 139, column: 15, scope: !4658, inlinedAt: !4644)
!4658 = distinct !DILexicalBlock(scope: !4579, file: !599, line: 139, column: 11)
!4659 = !DILocation(line: 139, column: 23, scope: !4658, inlinedAt: !4644)
!4660 = !DILocation(line: 139, column: 26, scope: !4661, inlinedAt: !4644)
!4661 = !DILexicalBlockFile(scope: !4658, file: !599, discriminator: 1)
!4662 = !DILocation(line: 139, column: 33, scope: !4661, inlinedAt: !4644)
!4663 = !DILocation(line: 139, column: 11, scope: !4664, inlinedAt: !4644)
!4664 = !DILexicalBlockFile(scope: !4579, file: !599, discriminator: 1)
!4665 = !DILocation(line: 140, column: 9, scope: !4658, inlinedAt: !4644)
!4666 = !DILocation(line: 144, column: 26, scope: !4588, inlinedAt: !4644)
!4667 = !DILocation(line: 144, column: 16, scope: !4588, inlinedAt: !4644)
!4668 = !DILocation(line: 145, column: 16, scope: !4588, inlinedAt: !4644)
!4669 = !DILocation(line: 146, column: 34, scope: !4588, inlinedAt: !4644)
!4670 = !DILocation(line: 146, column: 38, scope: !4588, inlinedAt: !4644)
!4671 = !DILocation(line: 146, column: 42, scope: !4672, inlinedAt: !4644)
!4672 = !DILexicalBlockFile(scope: !4588, file: !599, discriminator: 1)
!4673 = !DILocation(line: 146, column: 41, scope: !4672, inlinedAt: !4644)
!4674 = !DILocation(line: 147, column: 48, scope: !4588, inlinedAt: !4644)
!4675 = !DILocation(line: 147, column: 46, scope: !4588, inlinedAt: !4644)
!4676 = !DILocation(line: 147, column: 69, scope: !4588, inlinedAt: !4644)
!4677 = !DILocation(line: 147, column: 30, scope: !4588, inlinedAt: !4644)
!4678 = !DILocation(line: 134, column: 13, scope: !4579, inlinedAt: !4644)
!4679 = !DILocation(line: 148, column: 13, scope: !4588, inlinedAt: !4644)
!4680 = !DILocation(line: 150, column: 13, scope: !4681, inlinedAt: !4644)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !599, line: 149, column: 11)
!4682 = distinct !DILexicalBlock(scope: !4588, file: !599, line: 148, column: 13)
!4683 = !DILocation(line: 151, column: 17, scope: !4681, inlinedAt: !4644)
!4684 = !DILocation(line: 152, column: 34, scope: !4685, inlinedAt: !4644)
!4685 = distinct !DILexicalBlock(scope: !4681, file: !599, line: 151, column: 17)
!4686 = !DILocation(line: 153, column: 41, scope: !4681, inlinedAt: !4644)
!4687 = !DILocation(line: 153, column: 13, scope: !4681, inlinedAt: !4644)
!4688 = !DILocation(line: 157, column: 11, scope: !4579, inlinedAt: !4644)
!4689 = !DILocation(line: 171, column: 16, scope: !4577, inlinedAt: !4644)
!4690 = !DILocation(line: 162, column: 15, scope: !4577, inlinedAt: !4644)
!4691 = !DILocation(line: 173, column: 18, scope: !4576, inlinedAt: !4644)
!4692 = !DILocation(line: 173, column: 15, scope: !4577, inlinedAt: !4644)
!4693 = !DILocation(line: 180, column: 20, scope: !4575, inlinedAt: !4644)
!4694 = !DILocation(line: 178, column: 21, scope: !4575, inlinedAt: !4644)
!4695 = !DILocation(line: 181, column: 22, scope: !4574, inlinedAt: !4644)
!4696 = !DILocation(line: 181, column: 19, scope: !4575, inlinedAt: !4644)
!4697 = !DILocation(line: 190, column: 25, scope: !4573, inlinedAt: !4644)
!4698 = !DILocation(line: 184, column: 19, scope: !4699, inlinedAt: !4644)
!4699 = distinct !DILexicalBlock(scope: !4574, file: !599, line: 182, column: 17)
!4700 = !DILocation(line: 186, column: 17, scope: !4699, inlinedAt: !4644)
!4701 = !DILocation(line: 191, column: 26, scope: !4573, inlinedAt: !4644)
!4702 = !DILocation(line: 196, column: 23, scope: !4570, inlinedAt: !4644)
!4703 = !DILocation(line: 197, column: 23, scope: !4570, inlinedAt: !4644)
!4704 = !DILocalVariable(name: "__fp", arg: 1, scope: !4705, file: !4477, line: 63, type: !4593)
!4705 = distinct !DISubprogram(name: "getc_unlocked", scope: !4477, file: !4477, line: 63, type: !4706, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !255, variables: !4708)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!35, !4593}
!4708 = !{!4704}
!4709 = !DILocation(line: 63, column: 22, scope: !4705, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 201, column: 27, scope: !4570, inlinedAt: !4644)
!4711 = !DILocation(line: 65, column: 10, scope: !4705, inlinedAt: !4710)
!4712 = !{!4483, !665, i64 8}
!4713 = !{!4483, !665, i64 16}
!4714 = !{!"branch_weights", i32 2000, i32 1}
!4715 = !DILocation(line: 65, column: 10, scope: !4716, inlinedAt: !4710)
!4716 = !DILexicalBlockFile(scope: !4705, file: !4477, discriminator: 1)
!4717 = !DILocation(line: 65, column: 10, scope: !4718, inlinedAt: !4710)
!4718 = !DILexicalBlockFile(scope: !4705, file: !4477, discriminator: 2)
!4719 = !DILocation(line: 65, column: 10, scope: !4720, inlinedAt: !4710)
!4720 = !DILexicalBlockFile(scope: !4705, file: !4477, discriminator: 3)
!4721 = !DILocation(line: 195, column: 27, scope: !4570, inlinedAt: !4644)
!4722 = !DILocation(line: 202, column: 27, scope: !4570, inlinedAt: !4644)
!4723 = !DILocation(line: 63, column: 22, scope: !4705, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 210, column: 33, scope: !4725, inlinedAt: !4644)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !599, line: 207, column: 25)
!4726 = distinct !DILexicalBlock(scope: !4570, file: !599, line: 206, column: 27)
!4727 = !DILocation(line: 65, column: 10, scope: !4705, inlinedAt: !4724)
!4728 = !DILocation(line: 65, column: 10, scope: !4716, inlinedAt: !4724)
!4729 = !DILocation(line: 65, column: 10, scope: !4718, inlinedAt: !4724)
!4730 = !DILocation(line: 65, column: 10, scope: !4720, inlinedAt: !4724)
!4731 = !DILocation(line: 210, column: 29, scope: !4732, inlinedAt: !4644)
!4732 = !DILexicalBlockFile(scope: !4725, file: !599, discriminator: 1)
!4733 = distinct !{!4733, !4734, !4735}
!4734 = !DILocation(line: 193, column: 19, scope: !4572)
!4735 = !DILocation(line: 241, column: 21, scope: !4572)
!4736 = !DILocation(line: 216, column: 23, scope: !4570, inlinedAt: !4644)
!4737 = !DILocation(line: 217, column: 27, scope: !4738, inlinedAt: !4644)
!4738 = distinct !DILexicalBlock(scope: !4570, file: !599, line: 217, column: 27)
!4739 = !DILocation(line: 217, column: 64, scope: !4738, inlinedAt: !4644)
!4740 = !DILocation(line: 217, column: 27, scope: !4570, inlinedAt: !4644)
!4741 = !DILocation(line: 219, column: 28, scope: !4570, inlinedAt: !4644)
!4742 = !DILocation(line: 198, column: 30, scope: !4570, inlinedAt: !4644)
!4743 = !DILocation(line: 220, column: 28, scope: !4570, inlinedAt: !4644)
!4744 = !DILocation(line: 198, column: 34, scope: !4570, inlinedAt: !4644)
!4745 = !DILocation(line: 199, column: 29, scope: !4570, inlinedAt: !4644)
!4746 = !DILocation(line: 222, column: 36, scope: !4747, inlinedAt: !4644)
!4747 = distinct !DILexicalBlock(scope: !4570, file: !599, line: 222, column: 27)
!4748 = !DILocation(line: 222, column: 27, scope: !4570, inlinedAt: !4644)
!4749 = !DILocation(line: 225, column: 63, scope: !4750, inlinedAt: !4644)
!4750 = distinct !DILexicalBlock(scope: !4747, file: !599, line: 223, column: 25)
!4751 = !DILocation(line: 225, column: 46, scope: !4750, inlinedAt: !4644)
!4752 = !DILocation(line: 226, column: 25, scope: !4750, inlinedAt: !4644)
!4753 = !DILocation(line: 229, column: 36, scope: !4754, inlinedAt: !4644)
!4754 = distinct !DILexicalBlock(scope: !4747, file: !599, line: 228, column: 25)
!4755 = !DILocation(line: 230, column: 73, scope: !4754, inlinedAt: !4644)
!4756 = !DILocation(line: 230, column: 46, scope: !4754, inlinedAt: !4644)
!4757 = !DILocation(line: 232, column: 35, scope: !4758, inlinedAt: !4644)
!4758 = distinct !DILexicalBlock(scope: !4570, file: !599, line: 232, column: 27)
!4759 = !DILocation(line: 232, column: 27, scope: !4570, inlinedAt: !4644)
!4760 = !DILocation(line: 236, column: 27, scope: !4761, inlinedAt: !4644)
!4761 = distinct !DILexicalBlock(scope: !4758, file: !599, line: 233, column: 25)
!4762 = !DILocation(line: 237, column: 27, scope: !4761, inlinedAt: !4644)
!4763 = !DILocation(line: 239, column: 39, scope: !4570, inlinedAt: !4644)
!4764 = !DILocation(line: 239, column: 50, scope: !4570, inlinedAt: !4644)
!4765 = !DILocation(line: 239, column: 61, scope: !4570, inlinedAt: !4644)
!4766 = !DILocalVariable(name: "__dest", arg: 1, scope: !4767, file: !955, line: 107, type: !958)
!4767 = distinct !DISubprogram(name: "strcpy", scope: !955, file: !955, line: 107, type: !956, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !255, variables: !4768)
!4768 = !{!4766, !4769}
!4769 = !DILocalVariable(name: "__src", arg: 2, scope: !4767, file: !955, line: 107, type: !959)
!4770 = !DILocation(line: 107, column: 1, scope: !4767, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 239, column: 23, scope: !4570, inlinedAt: !4644)
!4772 = !DILocation(line: 109, column: 49, scope: !4767, inlinedAt: !4771)
!4773 = !DILocation(line: 109, column: 10, scope: !4767, inlinedAt: !4771)
!4774 = !DILocation(line: 107, column: 1, scope: !4767, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 240, column: 23, scope: !4570, inlinedAt: !4644)
!4776 = !DILocation(line: 109, column: 49, scope: !4767, inlinedAt: !4775)
!4777 = !DILocation(line: 109, column: 10, scope: !4767, inlinedAt: !4775)
!4778 = !DILocation(line: 241, column: 21, scope: !4571, inlinedAt: !4644)
!4779 = !DILocation(line: 242, column: 19, scope: !4573, inlinedAt: !4644)
!4780 = !DILocation(line: 243, column: 32, scope: !4781, inlinedAt: !4644)
!4781 = distinct !DILexicalBlock(scope: !4573, file: !599, line: 243, column: 23)
!4782 = !DILocation(line: 243, column: 23, scope: !4573, inlinedAt: !4644)
!4783 = !DILocation(line: 247, column: 33, scope: !4784, inlinedAt: !4644)
!4784 = distinct !DILexicalBlock(scope: !4781, file: !599, line: 246, column: 21)
!4785 = !DILocation(line: 247, column: 45, scope: !4784, inlinedAt: !4644)
!4786 = !DILocation(line: 253, column: 11, scope: !4577, inlinedAt: !4644)
!4787 = !DILocation(line: 377, column: 23, scope: !4579, inlinedAt: !4644)
!4788 = !DILocation(line: 378, column: 5, scope: !4579, inlinedAt: !4644)
!4789 = !DILocation(line: 396, column: 15, scope: !4557)
!4790 = !DILocation(line: 590, column: 8, scope: !4566)
!4791 = !DILocation(line: 590, column: 17, scope: !4566)
!4792 = !DILocation(line: 589, column: 3, scope: !4793)
!4793 = !DILexicalBlockFile(scope: !4567, file: !599, discriminator: 1)
!4794 = !DILocation(line: 592, column: 9, scope: !4564)
!4795 = !DILocation(line: 592, column: 35, scope: !4565)
!4796 = !DILocation(line: 593, column: 9, scope: !4565)
!4797 = !DILocation(line: 593, column: 24, scope: !4798)
!4798 = !DILexicalBlockFile(scope: !4565, file: !599, discriminator: 1)
!4799 = !DILocation(line: 593, column: 31, scope: !4798)
!4800 = !DILocation(line: 593, column: 34, scope: !4801)
!4801 = !DILexicalBlockFile(scope: !4565, file: !599, discriminator: 2)
!4802 = !DILocation(line: 593, column: 45, scope: !4801)
!4803 = !DILocation(line: 592, column: 9, scope: !4804)
!4804 = !DILexicalBlockFile(scope: !4566, file: !599, discriminator: 1)
!4805 = !DILocation(line: 595, column: 29, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4565, file: !599, line: 594, column: 7)
!4807 = !DILocation(line: 595, column: 27, scope: !4806)
!4808 = !DILocation(line: 595, column: 46, scope: !4806)
!4809 = !DILocation(line: 596, column: 9, scope: !4806)
!4810 = !DILocation(line: 591, column: 19, scope: !4566)
!4811 = !DILocation(line: 591, column: 36, scope: !4566)
!4812 = !DILocation(line: 591, column: 16, scope: !4566)
!4813 = !DILocation(line: 591, column: 52, scope: !4804)
!4814 = !DILocation(line: 591, column: 69, scope: !4566)
!4815 = !DILocation(line: 591, column: 49, scope: !4566)
!4816 = distinct !{!4816, !4817, !4818}
!4817 = !DILocation(line: 589, column: 3, scope: !4567)
!4818 = !DILocation(line: 597, column: 7, scope: !4567)
!4819 = !DILocation(line: 602, column: 7, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4557, file: !599, line: 602, column: 7)
!4821 = !DILocation(line: 602, column: 18, scope: !4820)
!4822 = !DILocation(line: 602, column: 7, scope: !4557)
!4823 = !DILocation(line: 612, column: 3, scope: !4557)
!4824 = distinct !DISubprogram(name: "rpl_fclose", scope: !4825, file: !4825, line: 56, type: !4826, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !640, variables: !4868)
!4825 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!35, !4828}
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3813, line: 49, baseType: !4830)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3815, line: 241, size: 1728, elements: !4831)
!4831 = !{!4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4830, file: !3815, line: 242, baseType: !35, size: 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4830, file: !3815, line: 247, baseType: !22, size: 64, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4830, file: !3815, line: 248, baseType: !22, size: 64, offset: 128)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4830, file: !3815, line: 249, baseType: !22, size: 64, offset: 192)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4830, file: !3815, line: 250, baseType: !22, size: 64, offset: 256)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4830, file: !3815, line: 251, baseType: !22, size: 64, offset: 320)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4830, file: !3815, line: 252, baseType: !22, size: 64, offset: 384)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4830, file: !3815, line: 253, baseType: !22, size: 64, offset: 448)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4830, file: !3815, line: 254, baseType: !22, size: 64, offset: 512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4830, file: !3815, line: 256, baseType: !22, size: 64, offset: 576)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4830, file: !3815, line: 257, baseType: !22, size: 64, offset: 640)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4830, file: !3815, line: 258, baseType: !22, size: 64, offset: 704)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4830, file: !3815, line: 260, baseType: !4845, size: 64, offset: 768)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3815, line: 156, size: 192, elements: !4847)
!4847 = !{!4848, !4849, !4851}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4846, file: !3815, line: 157, baseType: !4845, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4846, file: !3815, line: 158, baseType: !4850, size: 64, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4846, file: !3815, line: 162, baseType: !35, size: 32, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4830, file: !3815, line: 262, baseType: !4850, size: 64, offset: 832)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4830, file: !3815, line: 264, baseType: !35, size: 32, offset: 896)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4830, file: !3815, line: 268, baseType: !35, size: 32, offset: 928)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4830, file: !3815, line: 270, baseType: !3841, size: 64, offset: 960)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4830, file: !3815, line: 274, baseType: !36, size: 16, offset: 1024)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4830, file: !3815, line: 275, baseType: !3845, size: 8, offset: 1040)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4830, file: !3815, line: 276, baseType: !3847, size: 8, offset: 1048)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4830, file: !3815, line: 280, baseType: !3851, size: 64, offset: 1088)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4830, file: !3815, line: 289, baseType: !3854, size: 64, offset: 1152)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4830, file: !3815, line: 297, baseType: !24, size: 64, offset: 1216)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4830, file: !3815, line: 298, baseType: !24, size: 64, offset: 1280)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4830, file: !3815, line: 299, baseType: !24, size: 64, offset: 1344)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4830, file: !3815, line: 300, baseType: !24, size: 64, offset: 1408)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4830, file: !3815, line: 302, baseType: !25, size: 64, offset: 1472)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4830, file: !3815, line: 303, baseType: !35, size: 32, offset: 1536)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4830, file: !3815, line: 305, baseType: !3862, size: 160, offset: 1568)
!4868 = !{!4869, !4870, !4871, !4872}
!4869 = !DILocalVariable(name: "fp", arg: 1, scope: !4824, file: !4825, line: 56, type: !4828)
!4870 = !DILocalVariable(name: "saved_errno", scope: !4824, file: !4825, line: 58, type: !35)
!4871 = !DILocalVariable(name: "fd", scope: !4824, file: !4825, line: 59, type: !35)
!4872 = !DILocalVariable(name: "result", scope: !4824, file: !4825, line: 60, type: !35)
!4873 = !DILocation(line: 56, column: 19, scope: !4824)
!4874 = !DILocation(line: 58, column: 7, scope: !4824)
!4875 = !DILocation(line: 60, column: 7, scope: !4824)
!4876 = !DILocation(line: 63, column: 8, scope: !4824)
!4877 = !DILocation(line: 59, column: 7, scope: !4824)
!4878 = !DILocation(line: 64, column: 10, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4824, file: !4825, line: 64, column: 7)
!4880 = !DILocation(line: 64, column: 7, scope: !4824)
!4881 = !DILocation(line: 65, column: 12, scope: !4879)
!4882 = !DILocation(line: 65, column: 5, scope: !4879)
!4883 = !DILocation(line: 70, column: 9, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4824, file: !4825, line: 70, column: 7)
!4885 = !DILocation(line: 70, column: 23, scope: !4884)
!4886 = !DILocation(line: 70, column: 33, scope: !4887)
!4887 = !DILexicalBlockFile(scope: !4884, file: !4825, discriminator: 1)
!4888 = !DILocation(line: 70, column: 26, scope: !4889)
!4889 = !DILexicalBlockFile(scope: !4884, file: !4825, discriminator: 3)
!4890 = !DILocation(line: 70, column: 59, scope: !4887)
!4891 = !DILocation(line: 71, column: 7, scope: !4884)
!4892 = !DILocation(line: 71, column: 10, scope: !4887)
!4893 = !DILocation(line: 70, column: 7, scope: !4894)
!4894 = !DILexicalBlockFile(scope: !4824, file: !4825, discriminator: 2)
!4895 = !DILocation(line: 98, column: 12, scope: !4824)
!4896 = !DILocation(line: 103, column: 7, scope: !4824)
!4897 = !DILocation(line: 72, column: 19, scope: !4884)
!4898 = !DILocation(line: 103, column: 19, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4824, file: !4825, line: 103, column: 7)
!4900 = !DILocation(line: 105, column: 13, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4899, file: !4825, line: 104, column: 5)
!4902 = !DILocation(line: 107, column: 5, scope: !4901)
!4903 = !DILocation(line: 110, column: 1, scope: !4824)
!4904 = distinct !DISubprogram(name: "rpl_fflush", scope: !4905, file: !4905, line: 127, type: !4906, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !4948)
!4905 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!35, !4908}
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3813, line: 49, baseType: !4910)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3815, line: 241, size: 1728, elements: !4911)
!4911 = !{!4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4910, file: !3815, line: 242, baseType: !35, size: 32)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4910, file: !3815, line: 247, baseType: !22, size: 64, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4910, file: !3815, line: 248, baseType: !22, size: 64, offset: 128)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4910, file: !3815, line: 249, baseType: !22, size: 64, offset: 192)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4910, file: !3815, line: 250, baseType: !22, size: 64, offset: 256)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4910, file: !3815, line: 251, baseType: !22, size: 64, offset: 320)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4910, file: !3815, line: 252, baseType: !22, size: 64, offset: 384)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4910, file: !3815, line: 253, baseType: !22, size: 64, offset: 448)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4910, file: !3815, line: 254, baseType: !22, size: 64, offset: 512)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4910, file: !3815, line: 256, baseType: !22, size: 64, offset: 576)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4910, file: !3815, line: 257, baseType: !22, size: 64, offset: 640)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4910, file: !3815, line: 258, baseType: !22, size: 64, offset: 704)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4910, file: !3815, line: 260, baseType: !4925, size: 64, offset: 768)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3815, line: 156, size: 192, elements: !4927)
!4927 = !{!4928, !4929, !4931}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4926, file: !3815, line: 157, baseType: !4925, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4926, file: !3815, line: 158, baseType: !4930, size: 64, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4926, file: !3815, line: 162, baseType: !35, size: 32, offset: 128)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4910, file: !3815, line: 262, baseType: !4930, size: 64, offset: 832)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4910, file: !3815, line: 264, baseType: !35, size: 32, offset: 896)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4910, file: !3815, line: 268, baseType: !35, size: 32, offset: 928)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4910, file: !3815, line: 270, baseType: !3841, size: 64, offset: 960)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4910, file: !3815, line: 274, baseType: !36, size: 16, offset: 1024)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4910, file: !3815, line: 275, baseType: !3845, size: 8, offset: 1040)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4910, file: !3815, line: 276, baseType: !3847, size: 8, offset: 1048)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4910, file: !3815, line: 280, baseType: !3851, size: 64, offset: 1088)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4910, file: !3815, line: 289, baseType: !3854, size: 64, offset: 1152)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4910, file: !3815, line: 297, baseType: !24, size: 64, offset: 1216)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4910, file: !3815, line: 298, baseType: !24, size: 64, offset: 1280)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4910, file: !3815, line: 299, baseType: !24, size: 64, offset: 1344)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4910, file: !3815, line: 300, baseType: !24, size: 64, offset: 1408)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4910, file: !3815, line: 302, baseType: !25, size: 64, offset: 1472)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4910, file: !3815, line: 303, baseType: !35, size: 32, offset: 1536)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4910, file: !3815, line: 305, baseType: !3862, size: 160, offset: 1568)
!4948 = !{!4949}
!4949 = !DILocalVariable(name: "stream", arg: 1, scope: !4904, file: !4905, line: 127, type: !4908)
!4950 = !DILocation(line: 127, column: 19, scope: !4904)
!4951 = !DILocation(line: 148, column: 14, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4904, file: !4905, line: 148, column: 7)
!4953 = !DILocation(line: 148, column: 22, scope: !4952)
!4954 = !DILocation(line: 148, column: 27, scope: !4955)
!4955 = !DILexicalBlockFile(scope: !4952, file: !4905, discriminator: 1)
!4956 = !DILocation(line: 148, column: 7, scope: !4957)
!4957 = !DILexicalBlockFile(scope: !4904, file: !4905, discriminator: 1)
!4958 = !DILocation(line: 149, column: 12, scope: !4952)
!4959 = !DILocation(line: 149, column: 5, scope: !4952)
!4960 = !DILocalVariable(name: "fp", arg: 1, scope: !4961, file: !4905, line: 40, type: !4908)
!4961 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4905, file: !4905, line: 40, type: !4962, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !4964)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{null, !4908}
!4964 = !{!4960}
!4965 = !DILocation(line: 40, column: 48, scope: !4961, inlinedAt: !4966)
!4966 = distinct !DILocation(line: 153, column: 3, scope: !4904)
!4967 = !DILocation(line: 42, column: 11, scope: !4968, inlinedAt: !4966)
!4968 = distinct !DILexicalBlock(scope: !4961, file: !4905, line: 42, column: 7)
!4969 = !DILocation(line: 42, column: 18, scope: !4968, inlinedAt: !4966)
!4970 = !DILocation(line: 42, column: 7, scope: !4961, inlinedAt: !4966)
!4971 = !DILocation(line: 44, column: 5, scope: !4968, inlinedAt: !4966)
!4972 = !DILocation(line: 155, column: 10, scope: !4904)
!4973 = !DILocation(line: 155, column: 3, scope: !4904)
!4974 = !DILocation(line: 229, column: 1, scope: !4904)
!4975 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4976, file: !4976, line: 28, type: !4977, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !644, variables: !5020)
!4976 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!35, !4979, !5019, !35}
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3813, line: 49, baseType: !4981)
!4981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3815, line: 241, size: 1728, elements: !4982)
!4982 = !{!4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4981, file: !3815, line: 242, baseType: !35, size: 32)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4981, file: !3815, line: 247, baseType: !22, size: 64, offset: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4981, file: !3815, line: 248, baseType: !22, size: 64, offset: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4981, file: !3815, line: 249, baseType: !22, size: 64, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4981, file: !3815, line: 250, baseType: !22, size: 64, offset: 256)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4981, file: !3815, line: 251, baseType: !22, size: 64, offset: 320)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4981, file: !3815, line: 252, baseType: !22, size: 64, offset: 384)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4981, file: !3815, line: 253, baseType: !22, size: 64, offset: 448)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4981, file: !3815, line: 254, baseType: !22, size: 64, offset: 512)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4981, file: !3815, line: 256, baseType: !22, size: 64, offset: 576)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4981, file: !3815, line: 257, baseType: !22, size: 64, offset: 640)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4981, file: !3815, line: 258, baseType: !22, size: 64, offset: 704)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4981, file: !3815, line: 260, baseType: !4996, size: 64, offset: 768)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3815, line: 156, size: 192, elements: !4998)
!4998 = !{!4999, !5000, !5002}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4997, file: !3815, line: 157, baseType: !4996, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4997, file: !3815, line: 158, baseType: !5001, size: 64, offset: 64)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4997, file: !3815, line: 162, baseType: !35, size: 32, offset: 128)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4981, file: !3815, line: 262, baseType: !5001, size: 64, offset: 832)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4981, file: !3815, line: 264, baseType: !35, size: 32, offset: 896)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4981, file: !3815, line: 268, baseType: !35, size: 32, offset: 928)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4981, file: !3815, line: 270, baseType: !3841, size: 64, offset: 960)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4981, file: !3815, line: 274, baseType: !36, size: 16, offset: 1024)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4981, file: !3815, line: 275, baseType: !3845, size: 8, offset: 1040)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4981, file: !3815, line: 276, baseType: !3847, size: 8, offset: 1048)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4981, file: !3815, line: 280, baseType: !3851, size: 64, offset: 1088)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4981, file: !3815, line: 289, baseType: !3854, size: 64, offset: 1152)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4981, file: !3815, line: 297, baseType: !24, size: 64, offset: 1216)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4981, file: !3815, line: 298, baseType: !24, size: 64, offset: 1280)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4981, file: !3815, line: 299, baseType: !24, size: 64, offset: 1344)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4981, file: !3815, line: 300, baseType: !24, size: 64, offset: 1408)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4981, file: !3815, line: 302, baseType: !25, size: 64, offset: 1472)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4981, file: !3815, line: 303, baseType: !35, size: 32, offset: 1536)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4981, file: !3815, line: 305, baseType: !3862, size: 160, offset: 1568)
!5019 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3813, line: 91, baseType: !3841)
!5020 = !{!5021, !5022, !5023, !5024}
!5021 = !DILocalVariable(name: "fp", arg: 1, scope: !4975, file: !4976, line: 28, type: !4979)
!5022 = !DILocalVariable(name: "offset", arg: 2, scope: !4975, file: !4976, line: 28, type: !5019)
!5023 = !DILocalVariable(name: "whence", arg: 3, scope: !4975, file: !4976, line: 28, type: !35)
!5024 = !DILocalVariable(name: "pos", scope: !5025, file: !4976, line: 116, type: !5019)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !4976, line: 112, column: 5)
!5026 = distinct !DILexicalBlock(scope: !4975, file: !4976, line: 51, column: 7)
!5027 = !DILocation(line: 28, column: 15, scope: !4975)
!5028 = !DILocation(line: 28, column: 25, scope: !4975)
!5029 = !DILocation(line: 28, column: 37, scope: !4975)
!5030 = !DILocation(line: 51, column: 11, scope: !5026)
!5031 = !DILocation(line: 51, column: 31, scope: !5026)
!5032 = !DILocation(line: 51, column: 24, scope: !5026)
!5033 = !DILocation(line: 52, column: 7, scope: !5026)
!5034 = !DILocation(line: 52, column: 14, scope: !5035)
!5035 = !DILexicalBlockFile(scope: !5026, file: !4976, discriminator: 1)
!5036 = !{!4483, !665, i64 40}
!5037 = !DILocation(line: 52, column: 35, scope: !5035)
!5038 = !{!4483, !665, i64 32}
!5039 = !DILocation(line: 52, column: 28, scope: !5035)
!5040 = !DILocation(line: 53, column: 7, scope: !5026)
!5041 = !DILocation(line: 53, column: 14, scope: !5035)
!5042 = !{!4483, !665, i64 72}
!5043 = !DILocation(line: 53, column: 28, scope: !5035)
!5044 = !DILocation(line: 51, column: 7, scope: !5045)
!5045 = !DILexicalBlockFile(scope: !4975, file: !4976, discriminator: 1)
!5046 = !DILocation(line: 116, column: 26, scope: !5025)
!5047 = !DILocation(line: 116, column: 19, scope: !5048)
!5048 = !DILexicalBlockFile(scope: !5025, file: !4976, discriminator: 1)
!5049 = !DILocation(line: 116, column: 13, scope: !5025)
!5050 = !DILocation(line: 117, column: 15, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5025, file: !4976, line: 117, column: 11)
!5052 = !DILocation(line: 117, column: 11, scope: !5025)
!5053 = !DILocation(line: 127, column: 11, scope: !5025)
!5054 = !DILocation(line: 127, column: 18, scope: !5025)
!5055 = !DILocation(line: 128, column: 11, scope: !5025)
!5056 = !DILocation(line: 128, column: 19, scope: !5025)
!5057 = !{!4483, !1144, i64 144}
!5058 = !DILocation(line: 159, column: 7, scope: !5025)
!5059 = !DILocation(line: 161, column: 10, scope: !4975)
!5060 = !DILocation(line: 161, column: 3, scope: !4975)
!5061 = !DILocation(line: 162, column: 1, scope: !4975)
