; ModuleID = 'coreutils-8.27/src/comm.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Compare sorted files FILE1 and FILE2 line by line.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"\0AWhen FILE1 or FILE2 (not both) is -, read standard input.\0A\00", align 1
@.str.4 = private unnamed_addr constant [189 x i8] c"\0AWith no options, produce three-column output.  Column one contains\0Alines unique to FILE1, column two contains lines unique to FILE2,\0Aand column three contains lines common to both files.\0A\00", align 1
@.str.5 = private unnamed_addr constant [192 x i8] c"\0A  -1              suppress column 1 (lines unique to FILE1)\0A  -2              suppress column 2 (lines unique to FILE2)\0A  -3              suppress column 3 (lines that appear in both files)\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0A  --check-order     check that the input is correctly sorted, even\0A                      if all input lines are pairable\0A  --nocheck-order   do not check that the input is correctly sorted\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"  --output-delimiter=STR  separate columns with STR\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"  --total           output a summary\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"\0ANote, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@.str.13 = private unnamed_addr constant [156 x i8] c"\0AExamples:\0A  %s -12 file1 file2  Print only lines present in both file1 and file2.\0A  %s -3 file1 file2  Print lines in file1 not in file2, and vice versa.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.37 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !0
@only_file_1 = internal unnamed_addr global i1 false, align 1
@only_file_2 = internal unnamed_addr global i1 false, align 1
@both = internal unnamed_addr global i1 false, align 1
@seen_unpairable = internal unnamed_addr global i1 false, align 1
@issued_disorder_warning = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !57
@check_input_order = internal unnamed_addr global i32 0, align 4, !dbg !64
@total_option = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"123z\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !97
@delim = internal unnamed_addr global i1 false, align 1
@col_sep_len = internal unnamed_addr global i64 0, align 8, !dbg !113
@optarg = external local_unnamed_addr global i8*, align 8
@col_sep = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), align 8, !dbg !115
@.str.19 = private unnamed_addr constant [37 x i8] c"multiple output delimiters specified\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.50 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"%s%s%s%s%s%s%s%c\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !117
@.str.26 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !123
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !128
@.str.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.30 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !131
@.str.1.40 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !138
@.str.54 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 16, !dbg !145
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !173
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !180
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !191
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.70 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.71 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.72 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.73 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !198
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !205
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !193
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !207
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.85 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.86 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.87 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.88 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.89 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.90 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.91 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.92 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.93 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.94 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.95 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.98 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.102 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.103 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !213
@.str.1.116 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.121 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.122 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !222
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !259
@.str.3.140 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.141 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.142 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.143 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.144 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !679 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !683, metadata !684), !dbg !685
  %2 = icmp eq i32 %0, 0, !dbg !686
  br i1 %2, label %8, label %3, !dbg !688

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !689, !tbaa !692
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !689
  %6 = load i8*, i8** @program_name, align 8, !dbg !689, !tbaa !692
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !696
  br label %63, !dbg !698

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !700
  %10 = load i8*, i8** @program_name, align 8, !dbg !700, !tbaa !692
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !702
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !704
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !692
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !705
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !706
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !706, !tbaa !692
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !707
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !708
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !692
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !709
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !710
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !692
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !711
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !712
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !692
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !713
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !714
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !692
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !715
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !716
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !692
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !717
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !718
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718, !tbaa !692
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11, !dbg !719
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !720
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !720, !tbaa !692
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11, !dbg !721
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !722
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !692
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #11, !dbg !723
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 5) #11, !dbg !724
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !692
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #11, !dbg !725
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.13, i64 0, i64 0), i32 5) #11, !dbg !726
  %46 = load i8*, i8** @program_name, align 8, !dbg !726, !tbaa !692
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* %46, i8* %46) #11, !dbg !727
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !74, metadata !684) #11, !dbg !728
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 0, metadata !74, metadata !684) #11, !dbg !728
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !730
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !731
  %50 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !733
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !85, metadata !684) #11, !dbg !734
  %51 = icmp eq i8* %50, null, !dbg !735
  br i1 %51, label %58, label %52, !dbg !736

; <label>:52:                                     ; preds = %8
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i64 3) #13, !dbg !737
  %54 = icmp eq i32 %53, 0, !dbg !737
  br i1 %54, label %58, label %55, !dbg !739

; <label>:55:                                     ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !741
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !743
  br label %58, !dbg !745

; <label>:58:                                     ; preds = %8, %52, %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !746
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !747
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !748
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #11, !dbg !749
  br label %63

; <label>:63:                                     ; preds = %58, %3
  tail call void @exit(i32 %0) #14, !dbg !750
  unreachable, !dbg !750
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !751 {
  %3 = alloca [2 x [4 x %struct.linebuffer]], align 16
  tail call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer]]* %3, metadata !764, metadata !684), !dbg !873
  %4 = alloca [2 x [4 x %struct.linebuffer*]], align 16
  tail call void @llvm.dbg.declare(metadata [2 x [4 x %struct.linebuffer*]]* %4, metadata !779, metadata !684), !dbg !875
  %5 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !864, metadata !684), !dbg !876
  %6 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %6, metadata !870, metadata !684), !dbg !877
  %7 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %7, metadata !871, metadata !684), !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !756, metadata !684), !dbg !879
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !757, metadata !684), !dbg !880
  %8 = load i8*, i8** %1, align 8, !dbg !881, !tbaa !692
  tail call void @set_program_name(i8* %8) #11, !dbg !882
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !883
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !884
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !885
  %12 = tail call zeroext i1 @hard_locale(i32 3) #11, !dbg !886
  %13 = zext i1 %12 to i8, !dbg !887
  store i8 %13, i8* @hard_LC_COLLATE, align 1, !dbg !887, !tbaa !888
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !890
  store i1 true, i1* @only_file_1, align 1
  store i1 true, i1* @only_file_2, align 1
  store i1 true, i1* @both, align 1
  store i1 false, i1* @seen_unpairable, align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !891, !tbaa !888
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !892, !tbaa !888
  store i32 0, i32* @check_input_order, align 4, !dbg !893, !tbaa !894
  store i1 false, i1* @total_option, align 1
  br label %15, !dbg !895

; <label>:15:                                     ; preds = %46, %2
  %16 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !896
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !758, metadata !684), !dbg !898
  switch i32 %16, label %51 [
    i32 -1, label %52
    i32 49, label %17
    i32 50, label %18
    i32 51, label %19
    i32 122, label %20
    i32 129, label %21
    i32 128, label %22
    i32 130, label %23
    i32 131, label %45
    i32 -130, label %47
    i32 -131, label %48
  ], !dbg !899

; <label>:17:                                     ; preds = %15
  store i1 false, i1* @only_file_1, align 1
  br label %46, !dbg !900

; <label>:18:                                     ; preds = %15
  store i1 false, i1* @only_file_2, align 1
  br label %46, !dbg !901

; <label>:19:                                     ; preds = %15
  store i1 false, i1* @both, align 1
  br label %46, !dbg !902

; <label>:20:                                     ; preds = %15
  store i1 true, i1* @delim, align 1
  br label %46, !dbg !903

; <label>:21:                                     ; preds = %15
  store i32 2, i32* @check_input_order, align 4, !dbg !904, !tbaa !894
  br label %46, !dbg !905

; <label>:22:                                     ; preds = %15
  store i32 1, i32* @check_input_order, align 4, !dbg !906, !tbaa !894
  br label %46, !dbg !907

; <label>:23:                                     ; preds = %15
  %24 = load i64, i64* @col_sep_len, align 8, !dbg !908, !tbaa !909
  %25 = icmp eq i64 %24, 0, !dbg !908
  br i1 %25, label %26, label %28, !dbg !911

; <label>:26:                                     ; preds = %23
  %27 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !tbaa !692
  br label %36, !dbg !911

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** @col_sep, align 8, !dbg !912, !tbaa !692
  %30 = load i8*, i8** @optarg, align 8, !dbg !912, !tbaa !692
  %31 = tail call i32 @strcmp(i8* %29, i8* %30) #11, !dbg !912
  %32 = icmp eq i32 %31, 0, !dbg !914
  %33 = ptrtoint i8* %30 to i64, !dbg !916
  br i1 %32, label %36, label %34, !dbg !916

; <label>:34:                                     ; preds = %28
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !918
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35) #11, !dbg !919
  unreachable, !dbg !918

; <label>:36:                                     ; preds = %26, %28
  %37 = phi i64 [ %27, %26 ], [ %33, %28 ], !dbg !920
  store i64 %37, i64* bitcast (i8** @col_sep to i64*), align 8, !dbg !921, !tbaa !692
  %38 = inttoptr i64 %37 to i8*, !dbg !922
  %39 = load i8, i8* %38, align 1, !dbg !923, !tbaa !894
  %40 = icmp eq i8 %39, 0, !dbg !923
  br i1 %40, label %43, label %41, !dbg !923

; <label>:41:                                     ; preds = %36
  %42 = tail call i64 @strlen(i8* %38) #13, !dbg !924
  br label %43, !dbg !925

; <label>:43:                                     ; preds = %36, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %36 ], !dbg !926
  store i64 %44, i64* @col_sep_len, align 8, !dbg !928, !tbaa !909
  br label %46, !dbg !929

; <label>:45:                                     ; preds = %15
  store i1 true, i1* @total_option, align 1
  br label %46, !dbg !930

; <label>:46:                                     ; preds = %45, %43, %22, %21, %20, %19, %18, %17
  br label %15, !dbg !896, !llvm.loop !931

; <label>:47:                                     ; preds = %15
  tail call void @usage(i32 0) #15, !dbg !933
  unreachable, !dbg !933

; <label>:48:                                     ; preds = %15
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !934, !tbaa !692
  %50 = load i8*, i8** @Version, align 8, !dbg !934, !tbaa !692
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* null) #11, !dbg !934
  tail call void @exit(i32 0) #14, !dbg !935
  unreachable, !dbg !934

; <label>:51:                                     ; preds = %15
  tail call void @usage(i32 1) #15, !dbg !936
  unreachable, !dbg !936

; <label>:52:                                     ; preds = %15
  %53 = load i64, i64* @col_sep_len, align 8, !dbg !937, !tbaa !909
  %54 = icmp eq i64 %53, 0, !dbg !937
  br i1 %54, label %55, label %56, !dbg !939

; <label>:55:                                     ; preds = %52
  store i64 1, i64* @col_sep_len, align 8, !dbg !940, !tbaa !909
  br label %56, !dbg !941

; <label>:56:                                     ; preds = %52, %55
  %57 = load i32, i32* @optind, align 4, !dbg !942, !tbaa !944
  %58 = sub nsw i32 %0, %57, !dbg !946
  %59 = icmp slt i32 %58, 2, !dbg !947
  br i1 %59, label %60, label %72, !dbg !948

; <label>:60:                                     ; preds = %56
  %61 = icmp slt i32 %57, %0, !dbg !949
  br i1 %61, label %64, label %62, !dbg !952

; <label>:62:                                     ; preds = %60
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !953
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %63) #11, !dbg !954
  br label %71, !dbg !956

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 5) #11, !dbg !957
  %66 = add nsw i32 %0, -1, !dbg !958
  %67 = sext i32 %66 to i64, !dbg !959
  %68 = getelementptr inbounds i8*, i8** %1, i64 %67, !dbg !959
  %69 = load i8*, i8** %68, align 8, !dbg !959, !tbaa !692
  %70 = tail call i8* @quote(i8* %69) #11, !dbg !960
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65, i8* %70) #11, !dbg !961
  br label %71

; <label>:71:                                     ; preds = %64, %62
  tail call void @usage(i32 1) #15, !dbg !963
  unreachable, !dbg !963

; <label>:72:                                     ; preds = %56
  %73 = icmp eq i32 %58, 2, !dbg !964
  br i1 %73, label %82, label %74, !dbg !966

; <label>:74:                                     ; preds = %72
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !967
  %76 = load i32, i32* @optind, align 4, !dbg !969, !tbaa !944
  %77 = add nsw i32 %76, 2, !dbg !970
  %78 = sext i32 %77 to i64, !dbg !971
  %79 = getelementptr inbounds i8*, i8** %1, i64 %78, !dbg !971
  %80 = load i8*, i8** %79, align 8, !dbg !971, !tbaa !692
  %81 = tail call i8* @quote(i8* %80) #11, !dbg !972
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75, i8* %81) #11, !dbg !974
  tail call void @usage(i32 1) #15, !dbg !976
  unreachable, !dbg !976

; <label>:82:                                     ; preds = %72
  %83 = sext i32 %57 to i64, !dbg !977
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83, !dbg !977
  tail call void @llvm.dbg.value(metadata i8** %84, i64 0, metadata !769, metadata !684) #11, !dbg !978
  %85 = bitcast [2 x [4 x %struct.linebuffer]]* %3 to i8*, !dbg !979
  call void @llvm.lifetime.start(i64 192, i8* nonnull %85) #11, !dbg !979
  %86 = bitcast [2 x [4 x %struct.linebuffer*]]* %4 to i8*, !dbg !980
  call void @llvm.lifetime.start(i64 64, i8* nonnull %86) #11, !dbg !980
  tail call void @llvm.dbg.declare(metadata [3 x i64]* undef, metadata !841, metadata !684) #11, !dbg !981
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !841, metadata !982) #11, !dbg !981
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !841, metadata !983) #11, !dbg !981
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !841, metadata !984) #11, !dbg !981
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !844, metadata !684) #11, !dbg !985
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !844, metadata !684) #11, !dbg !985
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !845, metadata !684) #11, !dbg !986
  %87 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 0, !dbg !987
  call void @initbuffer(%struct.linebuffer* nonnull %87) #11, !dbg !991
  %88 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 0, !dbg !992
  store %struct.linebuffer* %87, %struct.linebuffer** %88, align 16, !dbg !993, !tbaa !692
  %89 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 1, !dbg !987
  call void @initbuffer(%struct.linebuffer* %89) #11, !dbg !991
  %90 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 1, !dbg !992
  store %struct.linebuffer* %89, %struct.linebuffer** %90, align 8, !dbg !993, !tbaa !692
  %91 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 2, !dbg !987
  call void @initbuffer(%struct.linebuffer* %91) #11, !dbg !991
  %92 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 2, !dbg !992
  store %struct.linebuffer* %91, %struct.linebuffer** %92, align 16, !dbg !993, !tbaa !692
  %93 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 0, i64 3, !dbg !987
  call void @initbuffer(%struct.linebuffer* %93) #11, !dbg !991
  %94 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 3, !dbg !992
  store %struct.linebuffer* %93, %struct.linebuffer** %94, align 8, !dbg !993, !tbaa !692
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !851, metadata !684) #11, !dbg !994
  %95 = load i8*, i8** %84, align 8, !dbg !995, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !852, metadata !684) #11, !dbg !997
  %96 = load i8, i8* %95, align 1, !dbg !995, !tbaa !894
  %97 = icmp eq i8 %96, 45, !dbg !998
  br i1 %97, label %111, label %117, !dbg !1001

; <label>:98:                                     ; preds = %128
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !845, metadata !684) #11, !dbg !986
  %99 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 0, !dbg !987
  call void @initbuffer(%struct.linebuffer* %99) #11, !dbg !991
  %100 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 0, !dbg !992
  store %struct.linebuffer* %99, %struct.linebuffer** %100, align 16, !dbg !993, !tbaa !692
  %101 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 1, !dbg !987
  call void @initbuffer(%struct.linebuffer* %101) #11, !dbg !991
  %102 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 1, !dbg !992
  store %struct.linebuffer* %101, %struct.linebuffer** %102, align 8, !dbg !993, !tbaa !692
  %103 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 2, !dbg !987
  call void @initbuffer(%struct.linebuffer* %103) #11, !dbg !991
  %104 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 2, !dbg !992
  store %struct.linebuffer* %103, %struct.linebuffer** %104, align 16, !dbg !993, !tbaa !692
  %105 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %3, i64 0, i64 1, i64 3, !dbg !987
  call void @initbuffer(%struct.linebuffer* %105) #11, !dbg !991
  %106 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 3, !dbg !992
  store %struct.linebuffer* %105, %struct.linebuffer** %106, align 8, !dbg !993, !tbaa !692
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !851, metadata !684) #11, !dbg !994
  %107 = getelementptr inbounds i8*, i8** %84, i64 1, !dbg !995
  %108 = load i8*, i8** %107, align 8, !dbg !995, !tbaa !692
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !852, metadata !684) #11, !dbg !997
  %109 = load i8, i8* %108, align 1, !dbg !995, !tbaa !894
  %110 = icmp eq i8 %109, 45, !dbg !998
  br i1 %110, label %367, label %371, !dbg !1001

; <label>:111:                                    ; preds = %82
  %112 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !1003
  %113 = load i8, i8* %112, align 1, !dbg !1003, !tbaa !894
  %114 = icmp eq i8 %113, 0, !dbg !1006
  br i1 %114, label %115, label %117, !dbg !1006

; <label>:115:                                    ; preds = %111
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1008, !tbaa !692
  br label %119, !dbg !1010

; <label>:117:                                    ; preds = %111, %82
  %118 = call %struct._IO_FILE* @fopen_safer(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #11, !dbg !1011
  br label %119, !dbg !1013

; <label>:119:                                    ; preds = %117, %115
  %120 = phi %struct._IO_FILE* [ %116, %115 ], [ %118, %117 ], !dbg !1014
  %121 = icmp eq %struct._IO_FILE* %120, null, !dbg !1016
  br i1 %121, label %122, label %128, !dbg !1018

; <label>:122:                                    ; preds = %375, %119
  %123 = phi i8** [ %84, %119 ], [ %107, %375 ]
  %124 = tail call i32* @__errno_location() #1, !dbg !1019
  %125 = load i32, i32* %124, align 4, !dbg !1019, !tbaa !944
  %126 = load i8*, i8** %123, align 8, !dbg !1019, !tbaa !692
  %127 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %126) #11, !dbg !1020
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %127) #11, !dbg !1022
  unreachable, !dbg !1019

; <label>:128:                                    ; preds = %119
  call void @fadvise(%struct._IO_FILE* nonnull %120, i32 2) #11, !dbg !1024
  %129 = load i1, i1* @delim, align 1
  %130 = select i1 %129, i8 0, i8 10
  %131 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %87, %struct._IO_FILE* nonnull %120, i8 signext %130) #11, !dbg !1025
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %120, i64 0, metadata !1026, metadata !684) #11, !dbg !1032
  %132 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %120, i64 0, i32 0, !dbg !1035
  %133 = load i32, i32* %132, align 8, !dbg !1035, !tbaa !1036
  %134 = and i32 %133, 32, !dbg !1035
  %135 = icmp eq i32 %134, 0, !dbg !1039
  br i1 %135, label %98, label %136, !dbg !1040

; <label>:136:                                    ; preds = %378, %128
  %137 = phi i8** [ %84, %128 ], [ %107, %378 ]
  %138 = tail call i32* @__errno_location() #1, !dbg !1041
  %139 = load i32, i32* %138, align 4, !dbg !1041, !tbaa !944
  %140 = load i8*, i8** %137, align 8, !dbg !1041, !tbaa !692
  %141 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %140) #11, !dbg !1042
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %141) #11, !dbg !1044
  unreachable, !dbg !1041

; <label>:142:                                    ; preds = %354
  br label %143, !dbg !985

; <label>:143:                                    ; preds = %142, %386
  %144 = phi i64 [ 0, %386 ], [ %358, %142 ]
  %145 = phi i64 [ 0, %386 ], [ %359, %142 ]
  %146 = phi i64 [ 0, %386 ], [ %360, %142 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !844, metadata !684) #11, !dbg !985
  %147 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %120) #11, !dbg !1046
  %148 = icmp eq i32 %147, 0, !dbg !1050
  br i1 %148, label %293, label %296, !dbg !1051

; <label>:149:                                    ; preds = %390, %354
  %150 = phi i32 [ %362, %354 ], [ 0, %390 ], !dbg !1052
  %151 = phi i32 [ %363, %354 ], [ 0, %390 ], !dbg !1057
  %152 = phi i32 [ %356, %354 ], [ 0, %390 ], !dbg !1052
  %153 = phi i32 [ %355, %354 ], [ 0, %390 ], !dbg !1057
  %154 = phi %struct.linebuffer* [ %361, %354 ], [ %381, %390 ], !dbg !1058
  %155 = phi %struct.linebuffer* [ %357, %354 ], [ %131, %390 ], !dbg !1063
  %156 = phi i64 [ %360, %354 ], [ 0, %390 ]
  %157 = phi i64 [ %359, %354 ], [ 0, %390 ]
  %158 = phi i64 [ %358, %354 ], [ 0, %390 ]
  call void @llvm.dbg.declare(metadata [2 x i8]* undef, metadata !857, metadata !684) #11, !dbg !1065
  %159 = icmp eq %struct.linebuffer* %155, null, !dbg !1066
  br i1 %159, label %160, label %161, !dbg !1067

; <label>:160:                                    ; preds = %149
  store i1 true, i1* @seen_unpairable, align 1
  br label %236, !dbg !1068

; <label>:161:                                    ; preds = %149
  %162 = icmp eq %struct.linebuffer* %154, null, !dbg !1069
  br i1 %162, label %222, label %163, !dbg !1070

; <label>:163:                                    ; preds = %161
  %164 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1071, !tbaa !888, !range !1072
  %165 = icmp eq i8 %164, 0, !dbg !1071
  br i1 %165, label %178, label %166, !dbg !1073

; <label>:166:                                    ; preds = %163
  %167 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %155, i64 0, i32 2, !dbg !1074
  %168 = load i8*, i8** %167, align 8, !dbg !1074, !tbaa !1075
  %169 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %155, i64 0, i32 1, !dbg !1077
  %170 = load i64, i64* %169, align 8, !dbg !1077, !tbaa !1078
  %171 = add i64 %170, -1, !dbg !1079
  %172 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %154, i64 0, i32 2, !dbg !1080
  %173 = load i8*, i8** %172, align 8, !dbg !1080, !tbaa !1075
  %174 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %154, i64 0, i32 1, !dbg !1081
  %175 = load i64, i64* %174, align 8, !dbg !1081, !tbaa !1078
  %176 = add i64 %175, -1, !dbg !1082
  %177 = call i32 @xmemcoll(i8* %168, i64 %171, i8* %173, i64 %176) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i32 %177, i64 0, metadata !855, metadata !684) #11, !dbg !1084
  br label %197, !dbg !1085

; <label>:178:                                    ; preds = %163
  %179 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %155, i64 0, i32 1, !dbg !1086
  %180 = load i64, i64* %179, align 8, !dbg !1086, !tbaa !1078
  %181 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %154, i64 0, i32 1, !dbg !1086
  %182 = load i64, i64* %181, align 8, !dbg !1086, !tbaa !1078
  %183 = icmp ult i64 %180, %182, !dbg !1086
  %184 = select i1 %183, %struct.linebuffer* %155, %struct.linebuffer* %154, !dbg !1086
  %185 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %184, i64 0, i32 1
  %186 = load i64, i64* %185, align 8, !tbaa !1078
  %187 = add i64 %186, -1, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %187, i64 0, metadata !858, metadata !684) #11, !dbg !1089
  %188 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %155, i64 0, i32 2, !dbg !1090
  %189 = load i8*, i8** %188, align 8, !dbg !1090, !tbaa !1075
  %190 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %154, i64 0, i32 2, !dbg !1091
  %191 = load i8*, i8** %190, align 8, !dbg !1091, !tbaa !1075
  %192 = call i32 @memcmp(i8* %189, i8* %191, i64 %187) #13, !dbg !1092
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !855, metadata !684) #11, !dbg !1084
  %193 = icmp eq i32 %192, 0, !dbg !1093
  br i1 %193, label %194, label %223, !dbg !1095

; <label>:194:                                    ; preds = %178
  %195 = icmp ne i64 %180, %182, !dbg !1096
  %196 = zext i1 %195 to i32, !dbg !1096
  br i1 %183, label %222, label %197

; <label>:197:                                    ; preds = %194, %166
  %198 = phi i32 [ %177, %166 ], [ %196, %194 ]
  call void @llvm.dbg.value(metadata i32 %198, i64 0, metadata !855, metadata !684) #11, !dbg !1084
  %199 = icmp eq i32 %198, 0, !dbg !1097
  br i1 %199, label %200, label %223, !dbg !1098

; <label>:200:                                    ; preds = %197
  %201 = add i64 %156, 1, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %201, i64 0, metadata !841, metadata !984) #11, !dbg !981
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1101, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.linebuffer* %154, i64 0, metadata !1102, metadata !684) #11, !dbg !1111
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %202, i64 0, metadata !1109, metadata !684) #11, !dbg !1113
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1110, metadata !684) #11, !dbg !1114
  %203 = load i1, i1* @both, align 1
  br i1 %203, label %204, label %252, !dbg !1115

; <label>:204:                                    ; preds = %200
  %205 = load i1, i1* @only_file_1, align 1
  br i1 %205, label %206, label %210, !dbg !1117

; <label>:206:                                    ; preds = %204
  %207 = load i8*, i8** @col_sep, align 8, !dbg !1118, !tbaa !692
  %208 = load i64, i64* @col_sep_len, align 8, !dbg !1118, !tbaa !909
  %209 = call i64 @fwrite_unlocked(i8* %207, i64 1, i64 %208, %struct._IO_FILE* %202) #11, !dbg !1118
  br label %210, !dbg !1118

; <label>:210:                                    ; preds = %206, %204
  %211 = load i1, i1* @only_file_2, align 1
  br i1 %211, label %212, label %216, !dbg !1120

; <label>:212:                                    ; preds = %210
  %213 = load i8*, i8** @col_sep, align 8, !dbg !1121, !tbaa !692
  %214 = load i64, i64* @col_sep_len, align 8, !dbg !1121, !tbaa !909
  %215 = call i64 @fwrite_unlocked(i8* %213, i64 1, i64 %214, %struct._IO_FILE* %202) #11, !dbg !1121
  br label %216, !dbg !1121

; <label>:216:                                    ; preds = %212, %210
  %217 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %154, i64 0, i32 2, !dbg !1123
  %218 = load i8*, i8** %217, align 8, !dbg !1123, !tbaa !1075
  %219 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %154, i64 0, i32 1, !dbg !1123
  %220 = load i64, i64* %219, align 8, !dbg !1123, !tbaa !1078
  %221 = call i64 @fwrite_unlocked(i8* %218, i64 1, i64 %220, %struct._IO_FILE* %202) #11, !dbg !1123
  br label %252, !dbg !1124

; <label>:222:                                    ; preds = %194, %161
  store i1 true, i1* @seen_unpairable, align 1
  br label %226, !dbg !1068

; <label>:223:                                    ; preds = %197, %178
  %224 = phi i32 [ %198, %197 ], [ %192, %178 ]
  store i1 true, i1* @seen_unpairable, align 1
  %225 = icmp slt i32 %224, 1, !dbg !1125
  br i1 %225, label %226, label %236, !dbg !1068

; <label>:226:                                    ; preds = %223, %222
  %227 = add i64 %158, 1, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %227, i64 0, metadata !841, metadata !982) #11, !dbg !981
  call void @llvm.dbg.value(metadata %struct.linebuffer* %155, i64 0, metadata !1102, metadata !684) #11, !dbg !1127
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1110, metadata !684) #11, !dbg !1129
  %228 = load i1, i1* @only_file_1, align 1
  br i1 %228, label %229, label %252, !dbg !1130

; <label>:229:                                    ; preds = %226
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1131, !tbaa !692
  %231 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %155, i64 0, i32 2, !dbg !1132
  %232 = load i8*, i8** %231, align 8, !dbg !1132, !tbaa !1075
  %233 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %155, i64 0, i32 1, !dbg !1132
  %234 = load i64, i64* %233, align 8, !dbg !1132, !tbaa !1078
  %235 = call i64 @fwrite_unlocked(i8* %232, i64 1, i64 %234, %struct._IO_FILE* %230) #11, !dbg !1132
  br label %252, !dbg !1133

; <label>:236:                                    ; preds = %223, %160
  %237 = add i64 %157, 1, !dbg !1134
  call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !841, metadata !983) #11, !dbg !981
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1135, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.linebuffer* %154, i64 0, metadata !1102, metadata !684) #11, !dbg !1136
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %238, i64 0, metadata !1109, metadata !684) #11, !dbg !1138
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1110, metadata !684) #11, !dbg !1139
  %239 = load i1, i1* @only_file_2, align 1
  br i1 %239, label %240, label %319, !dbg !1140

; <label>:240:                                    ; preds = %236
  %241 = load i1, i1* @only_file_1, align 1
  br i1 %241, label %242, label %246, !dbg !1141

; <label>:242:                                    ; preds = %240
  %243 = load i8*, i8** @col_sep, align 8, !dbg !1142, !tbaa !692
  %244 = load i64, i64* @col_sep_len, align 8, !dbg !1142, !tbaa !909
  %245 = call i64 @fwrite_unlocked(i8* %243, i64 1, i64 %244, %struct._IO_FILE* %238) #11, !dbg !1142
  br label %246, !dbg !1142

; <label>:246:                                    ; preds = %242, %240
  %247 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %154, i64 0, i32 2, !dbg !1144
  %248 = load i8*, i8** %247, align 8, !dbg !1144, !tbaa !1075
  %249 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %154, i64 0, i32 1, !dbg !1144
  %250 = load i64, i64* %249, align 8, !dbg !1144, !tbaa !1078
  %251 = call i64 @fwrite_unlocked(i8* %248, i64 1, i64 %250, %struct._IO_FILE* %238) #11, !dbg !1144
  br label %319, !dbg !1145

; <label>:252:                                    ; preds = %229, %226, %216, %200
  %253 = phi i8 [ 1, %200 ], [ 1, %216 ], [ 0, %229 ], [ 0, %226 ]
  %254 = phi i64 [ %158, %200 ], [ %158, %216 ], [ %227, %229 ], [ %227, %226 ]
  %255 = phi i64 [ %201, %200 ], [ %201, %216 ], [ %156, %229 ], [ %156, %226 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !844, metadata !684) #11, !dbg !985
  %256 = add nsw i32 %152, 1, !dbg !1146
  %257 = and i32 %256, 3, !dbg !1147
  %258 = zext i32 %257 to i64, !dbg !1148
  %259 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %258, !dbg !1148
  %260 = load %struct.linebuffer*, %struct.linebuffer** %259, align 8, !dbg !1148, !tbaa !692
  %261 = load i1, i1* @delim, align 1
  %262 = select i1 %261, i8 0, i8 10
  %263 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %260, %struct._IO_FILE* nonnull %120, i8 signext %262) #11, !dbg !1149
  %264 = icmp eq %struct.linebuffer* %263, null, !dbg !1150
  br i1 %264, label %269, label %265, !dbg !1152

; <label>:265:                                    ; preds = %252
  %266 = sext i32 %152 to i64, !dbg !1153
  %267 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %266, !dbg !1153
  %268 = load %struct.linebuffer*, %struct.linebuffer** %267, align 8, !dbg !1153, !tbaa !692
  call fastcc void @check_order(%struct.linebuffer* %268, %struct.linebuffer* nonnull %263, i32 1) #11, !dbg !1154
  br label %280, !dbg !1154

; <label>:269:                                    ; preds = %252
  %270 = sext i32 %153 to i64, !dbg !1155
  %271 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %270, !dbg !1155
  %272 = load %struct.linebuffer*, %struct.linebuffer** %271, align 8, !dbg !1155, !tbaa !692
  %273 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %272, i64 0, i32 2, !dbg !1157
  %274 = load i8*, i8** %273, align 8, !dbg !1157, !tbaa !1075
  %275 = icmp eq i8* %274, null, !dbg !1155
  br i1 %275, label %280, label %276, !dbg !1158

; <label>:276:                                    ; preds = %269
  %277 = sext i32 %152 to i64, !dbg !1159
  %278 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 0, i64 %277, !dbg !1159
  %279 = load %struct.linebuffer*, %struct.linebuffer** %278, align 8, !dbg !1159, !tbaa !692
  call fastcc void @check_order(%struct.linebuffer* %272, %struct.linebuffer* %279, i32 1) #11, !dbg !1160
  br label %280, !dbg !1160

; <label>:280:                                    ; preds = %276, %269, %265
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %120, i64 0, metadata !1026, metadata !684) #11, !dbg !1161
  %281 = load i32, i32* %132, align 8, !dbg !1164, !tbaa !1036
  %282 = and i32 %281, 32, !dbg !1164
  %283 = icmp eq i32 %282, 0, !dbg !1165
  br i1 %283, label %291, label %284, !dbg !1166

; <label>:284:                                    ; preds = %350, %280
  %285 = phi i64 [ 0, %280 ], [ 1, %350 ]
  %286 = tail call i32* @__errno_location() #1, !dbg !1167
  %287 = load i32, i32* %286, align 4, !dbg !1167, !tbaa !944
  %288 = getelementptr inbounds i8*, i8** %84, i64 %285, !dbg !1167
  %289 = load i8*, i8** %288, align 8, !dbg !1167, !tbaa !692
  %290 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %289) #11, !dbg !1168
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %290) #11, !dbg !1170
  unreachable, !dbg !1167

; <label>:291:                                    ; preds = %280
  %292 = icmp eq i8 %253, 0, !dbg !1172
  br i1 %292, label %354, label %319, !dbg !1173

; <label>:293:                                    ; preds = %143
  %294 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %376) #11, !dbg !1046
  %295 = icmp eq i32 %294, 0, !dbg !1050
  br i1 %295, label %317, label %296, !dbg !1051

; <label>:296:                                    ; preds = %293, %143
  %297 = phi i64 [ 0, %143 ], [ 1, %293 ]
  %298 = tail call i32* @__errno_location() #1, !dbg !1174
  %299 = load i32, i32* %298, align 4, !dbg !1174, !tbaa !944
  %300 = getelementptr inbounds i8*, i8** %84, i64 %297, !dbg !1174
  %301 = load i8*, i8** %300, align 8, !dbg !1174, !tbaa !692
  %302 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %301) #11, !dbg !1175
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %299, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %302) #11, !dbg !1177
  unreachable, !dbg !1174

; <label>:303:                                    ; preds = %317
  %304 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1179
  call void @llvm.lifetime.start(i64 21, i8* nonnull %304) #11, !dbg !1179
  %305 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1180
  call void @llvm.lifetime.start(i64 21, i8* nonnull %305) #11, !dbg !1180
  %306 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0, !dbg !1181
  call void @llvm.lifetime.start(i64 21, i8* nonnull %306) #11, !dbg !1181
  %307 = call i8* @umaxtostr(i64 %144, i8* nonnull %304) #11, !dbg !1182
  %308 = load i8*, i8** @col_sep, align 8, !dbg !1182, !tbaa !692
  %309 = call i8* @umaxtostr(i64 %145, i8* nonnull %305) #11, !dbg !1183
  %310 = load i8*, i8** @col_sep, align 8, !dbg !1182, !tbaa !692
  %311 = call i8* @umaxtostr(i64 %146, i8* nonnull %306) #11, !dbg !1185
  %312 = load i8*, i8** @col_sep, align 8, !dbg !1182, !tbaa !692
  %313 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !1187
  %314 = load i1, i1* @delim, align 1
  %315 = select i1 %314, i32 0, i32 10, !dbg !1182
  %316 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i8* %307, i8* %308, i8* %309, i8* %310, i8* %311, i8* %312, i8* %313, i32 %315) #11, !dbg !1189
  call void @llvm.lifetime.end(i64 21, i8* nonnull %306) #11, !dbg !1191
  call void @llvm.lifetime.end(i64 21, i8* nonnull %305) #11, !dbg !1191
  call void @llvm.lifetime.end(i64 21, i8* nonnull %304) #11, !dbg !1191
  br label %391, !dbg !1192

; <label>:317:                                    ; preds = %293
  %318 = load i1, i1* @total_option, align 1
  br i1 %318, label %303, label %391, !dbg !1193

; <label>:319:                                    ; preds = %291, %246, %236
  %320 = phi i32 [ %152, %291 ], [ %153, %246 ], [ %153, %236 ]
  %321 = phi i32 [ %257, %291 ], [ %152, %246 ], [ %152, %236 ]
  %322 = phi %struct.linebuffer* [ %263, %291 ], [ %155, %246 ], [ %155, %236 ]
  %323 = phi i64 [ %254, %291 ], [ %158, %246 ], [ %158, %236 ]
  %324 = phi i64 [ %157, %291 ], [ %237, %246 ], [ %237, %236 ]
  %325 = phi i64 [ %255, %291 ], [ %156, %246 ], [ %156, %236 ]
  %326 = add nsw i32 %150, 1, !dbg !1146
  %327 = and i32 %326, 3, !dbg !1147
  %328 = zext i32 %327 to i64, !dbg !1148
  %329 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %328, !dbg !1148
  %330 = load %struct.linebuffer*, %struct.linebuffer** %329, align 8, !dbg !1148, !tbaa !692
  %331 = load i1, i1* @delim, align 1
  %332 = select i1 %331, i8 0, i8 10
  %333 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %330, %struct._IO_FILE* nonnull %376, i8 signext %332) #11, !dbg !1149
  %334 = icmp eq %struct.linebuffer* %333, null, !dbg !1150
  br i1 %334, label %339, label %335, !dbg !1152

; <label>:335:                                    ; preds = %319
  %336 = sext i32 %150 to i64, !dbg !1153
  %337 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %336, !dbg !1153
  %338 = load %struct.linebuffer*, %struct.linebuffer** %337, align 8, !dbg !1153, !tbaa !692
  call fastcc void @check_order(%struct.linebuffer* %338, %struct.linebuffer* nonnull %333, i32 2) #11, !dbg !1154
  br label %350, !dbg !1154

; <label>:339:                                    ; preds = %319
  %340 = sext i32 %151 to i64, !dbg !1155
  %341 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %340, !dbg !1155
  %342 = load %struct.linebuffer*, %struct.linebuffer** %341, align 8, !dbg !1155, !tbaa !692
  %343 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %342, i64 0, i32 2, !dbg !1157
  %344 = load i8*, i8** %343, align 8, !dbg !1157, !tbaa !1075
  %345 = icmp eq i8* %344, null, !dbg !1155
  br i1 %345, label %350, label %346, !dbg !1158

; <label>:346:                                    ; preds = %339
  %347 = sext i32 %150 to i64, !dbg !1159
  %348 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %4, i64 0, i64 1, i64 %347, !dbg !1159
  %349 = load %struct.linebuffer*, %struct.linebuffer** %348, align 8, !dbg !1159, !tbaa !692
  call fastcc void @check_order(%struct.linebuffer* %342, %struct.linebuffer* %349, i32 2) #11, !dbg !1160
  br label %350, !dbg !1160

; <label>:350:                                    ; preds = %346, %339, %335
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %120, i64 0, metadata !1026, metadata !684) #11, !dbg !1161
  %351 = load i32, i32* %382, align 8, !dbg !1164, !tbaa !1036
  %352 = and i32 %351, 32, !dbg !1164
  %353 = icmp eq i32 %352, 0, !dbg !1165
  br i1 %353, label %354, label %284, !dbg !1166

; <label>:354:                                    ; preds = %350, %291
  %355 = phi i32 [ %152, %291 ], [ %320, %350 ]
  %356 = phi i32 [ %257, %291 ], [ %321, %350 ]
  %357 = phi %struct.linebuffer* [ %263, %291 ], [ %322, %350 ]
  %358 = phi i64 [ %254, %291 ], [ %323, %350 ]
  %359 = phi i64 [ %157, %291 ], [ %324, %350 ]
  %360 = phi i64 [ %255, %291 ], [ %325, %350 ]
  %361 = phi %struct.linebuffer* [ %154, %291 ], [ %333, %350 ], !dbg !1194
  %362 = phi i32 [ %150, %291 ], [ %327, %350 ]
  %363 = phi i32 [ %151, %291 ], [ %150, %350 ]
  %364 = icmp ne %struct.linebuffer* %357, null, !dbg !1196
  %365 = icmp ne %struct.linebuffer* %361, null, !dbg !1198
  %366 = or i1 %364, %365, !dbg !1199
  br i1 %366, label %149, label %142, !dbg !1200, !llvm.loop !1202

; <label>:367:                                    ; preds = %98
  %368 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !1003
  %369 = load i8, i8* %368, align 1, !dbg !1003, !tbaa !894
  %370 = icmp eq i8 %369, 0, !dbg !1006
  br i1 %370, label %373, label %371, !dbg !1006

; <label>:371:                                    ; preds = %367, %98
  %372 = call %struct._IO_FILE* @fopen_safer(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #11, !dbg !1011
  br label %375, !dbg !1013

; <label>:373:                                    ; preds = %367
  %374 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1008, !tbaa !692
  br label %375, !dbg !1010

; <label>:375:                                    ; preds = %373, %371
  %376 = phi %struct._IO_FILE* [ %374, %373 ], [ %372, %371 ], !dbg !1014
  %377 = icmp eq %struct._IO_FILE* %376, null, !dbg !1016
  br i1 %377, label %122, label %378, !dbg !1018

; <label>:378:                                    ; preds = %375
  call void @fadvise(%struct._IO_FILE* nonnull %376, i32 2) #11, !dbg !1024
  %379 = load i1, i1* @delim, align 1
  %380 = select i1 %379, i8 0, i8 10
  %381 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %99, %struct._IO_FILE* nonnull %376, i8 signext %380) #11, !dbg !1025
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %120, i64 0, metadata !1026, metadata !684) #11, !dbg !1032
  %382 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %376, i64 0, i32 0, !dbg !1035
  %383 = load i32, i32* %382, align 8, !dbg !1035, !tbaa !1036
  %384 = and i32 %383, 32, !dbg !1035
  %385 = icmp eq i32 %384, 0, !dbg !1039
  br i1 %385, label %386, label %136, !dbg !1040

; <label>:386:                                    ; preds = %378
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !841, metadata !984) #11, !dbg !981
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !841, metadata !983) #11, !dbg !981
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !841, metadata !982) #11, !dbg !981
  %387 = icmp ne %struct.linebuffer* %131, null, !dbg !1196
  %388 = icmp ne %struct.linebuffer* %381, null, !dbg !1198
  %389 = or i1 %387, %388, !dbg !1199
  br i1 %389, label %390, label %143, !dbg !1200

; <label>:390:                                    ; preds = %386
  br label %149, !dbg !1065

; <label>:391:                                    ; preds = %303, %317
  call void @llvm.lifetime.end(i64 64, i8* nonnull %86) #11, !dbg !1205
  call void @llvm.lifetime.end(i64 192, i8* nonnull %85) #11, !dbg !1205
  %392 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1, !dbg !1206, !tbaa !888, !range !1072
  %393 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1, !dbg !1208
  %394 = or i8 %393, %392, !dbg !1210
  %395 = icmp ne i8 %394, 0, !dbg !1210
  %396 = zext i1 %395 to i32, !dbg !1210
  ret i32 %396, !dbg !1211
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @check_order(%struct.linebuffer* nocapture readonly, %struct.linebuffer* nocapture readonly, i32) unnamed_addr #6 !dbg !1212 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1216, metadata !684), !dbg !1224
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %1, i64 0, metadata !1217, metadata !684), !dbg !1225
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1218, metadata !684), !dbg !1226
  %4 = load i32, i32* @check_input_order, align 4, !dbg !1227, !tbaa !894
  switch i32 %4, label %5 [
    i32 2, label %38
    i32 1, label %7
  ], !dbg !1228

; <label>:5:                                      ; preds = %3
  %6 = load i1, i1* @seen_unpairable, align 1
  br i1 %6, label %7, label %38, !dbg !1229

; <label>:7:                                      ; preds = %3, %5
  %8 = add nsw i32 %2, -1, !dbg !1231
  %9 = sext i32 %8 to i64, !dbg !1232
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %9, !dbg !1232
  %11 = load i8, i8* %10, align 1, !dbg !1232, !tbaa !888, !range !1072
  %12 = icmp eq i8 %11, 0, !dbg !1232
  br i1 %12, label %13, label %38, !dbg !1233

; <label>:13:                                     ; preds = %7
  %14 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1234, !tbaa !888, !range !1072
  %15 = icmp eq i8 %14, 0, !dbg !1234
  %16 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8, !tbaa !1075
  %18 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1
  %19 = load i64, i64* %18, align 8, !tbaa !1078
  %20 = add i64 %19, -1
  %21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 2
  %22 = load i8*, i8** %21, align 8, !tbaa !1075
  %23 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %1, i64 0, i32 1
  %24 = load i64, i64* %23, align 8, !tbaa !1078
  %25 = add i64 %24, -1
  br i1 %15, label %28, label %26, !dbg !1236

; <label>:26:                                     ; preds = %13
  %27 = tail call i32 @xmemcoll(i8* %17, i64 %20, i8* %22, i64 %25) #11, !dbg !1237
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1219, metadata !684), !dbg !1238
  br label %30, !dbg !1239

; <label>:28:                                     ; preds = %13
  %29 = tail call i32 @memcmp2(i8* %17, i64 %20, i8* %22, i64 %25) #13, !dbg !1240
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1219, metadata !684), !dbg !1238
  br label %30

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1219, metadata !684), !dbg !1238
  %32 = icmp sgt i32 %31, 0, !dbg !1241
  br i1 %32, label %33, label %38, !dbg !1243

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* @check_input_order, align 4, !dbg !1244, !tbaa !894
  %35 = icmp eq i32 %34, 1, !dbg !1246
  %36 = zext i1 %35 to i32, !dbg !1244
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1247
  tail call void (i32, i32, i8*, ...) @error(i32 %36, i32 0, i8* %37, i32 %2) #11, !dbg !1248
  store i8 1, i8* %10, align 1, !dbg !1249, !tbaa !888
  br label %38, !dbg !1250

; <label>:38:                                     ; preds = %30, %33, %3, %7, %5
  ret void, !dbg !1251
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1252 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1254, metadata !684), !dbg !1255
  store i8* %0, i8** @file_name, align 8, !dbg !1256, !tbaa !692
  ret void, !dbg !1257
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1258 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1262, metadata !1263), !dbg !1264
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1265, !tbaa !888
  ret void, !dbg !1266
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1267 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1274, !tbaa !692
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1275
  %3 = icmp eq i32 %2, 0, !dbg !1276
  br i1 %3, label %21, label %4, !dbg !1277

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1278, !tbaa !888, !range !1072
  %6 = icmp eq i8 %5, 0, !dbg !1278
  %7 = tail call i32* @__errno_location() #1, !dbg !1280
  br i1 %6, label %11, label %8, !dbg !1282

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1283, !tbaa !944
  %10 = icmp eq i32 %9, 32, !dbg !1285
  br i1 %10, label %21, label %11, !dbg !1286

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !1288
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1271, metadata !684), !dbg !1289
  %13 = load i8*, i8** @file_name, align 8, !dbg !1290, !tbaa !692
  %14 = icmp eq i8* %13, null, !dbg !1290
  %15 = load i32, i32* %7, align 4, !tbaa !944
  br i1 %14, label %18, label %16, !dbg !1291

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1292
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.30, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1294
  br label %19, !dbg !1296

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.31, i64 0, i64 0), i8* %12) #11, !dbg !1297
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1298, !tbaa !944
  tail call void @_exit(i32 %20) #14, !dbg !1299
  unreachable, !dbg !1299

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1300, !tbaa !692
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1302
  %24 = icmp eq i32 %23, 0, !dbg !1303
  br i1 %24, label %27, label %25, !dbg !1304

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1305, !tbaa !944
  tail call void @_exit(i32 %26) #14, !dbg !1306
  unreachable, !dbg !1306

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1307
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1308 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1315, metadata !684), !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1316, metadata !684), !dbg !1322
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1317, metadata !684), !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1318, metadata !684), !dbg !1324
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1319, metadata !684), !dbg !1325
  ret void, !dbg !1326
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1327 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1371, metadata !684), !dbg !1373
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1372, metadata !684), !dbg !1374
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1375
  br i1 %3, label %7, label %4, !dbg !1377

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1378
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1315, metadata !684) #11, !dbg !1379
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1316, metadata !684) #11, !dbg !1382
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1317, metadata !684) #11, !dbg !1383
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1318, metadata !684) #11, !dbg !1384
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1319, metadata !684) #11, !dbg !1385
  br label %7, !dbg !1386

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1387
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !1388 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1433, metadata !684), !dbg !1448
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1434, metadata !684), !dbg !1449
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !1450
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !1435, metadata !684), !dbg !1451
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1452
  br i1 %4, label %25, label %5, !dbg !1453

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #11, !dbg !1454
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1436, metadata !684), !dbg !1455
  %7 = icmp ult i32 %6, 3, !dbg !1456
  br i1 %7, label %8, label %25, !dbg !1456

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #11, !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1439, metadata !684), !dbg !1458
  %10 = icmp slt i32 %9, 0, !dbg !1459
  br i1 %10, label %11, label %15, !dbg !1460

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1, !dbg !1461
  %13 = load i32, i32* %12, align 4, !dbg !1461, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1442, metadata !684), !dbg !1462
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11, !dbg !1463
  store i32 %13, i32* %12, align 4, !dbg !1464, !tbaa !944
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11, !dbg !1465
  %17 = icmp eq i32 %16, 0, !dbg !1466
  br i1 %17, label %18, label %21, !dbg !1467

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #11, !dbg !1468
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !1435, metadata !684), !dbg !1451
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !1470
  br i1 %20, label %21, label %25, !dbg !1471

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1, !dbg !1473
  %23 = load i32, i32* %22, align 4, !dbg !1473, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !1445, metadata !684), !dbg !1474
  %24 = tail call i32 @close(i32 %9) #11, !dbg !1475
  store i32 %23, i32* %22, align 4, !dbg !1476, !tbaa !944
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !1477
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !1478 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1483, metadata !684), !dbg !1503
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1484, metadata !684), !dbg !1504
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !1505
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1485, metadata !684), !dbg !1506
  %3 = icmp eq i8* %2, null, !dbg !1507
  br i1 %3, label %15, label %4, !dbg !1508

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1493, metadata !684), !dbg !1509
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1494, metadata !684), !dbg !1510
  %5 = load i8, i8* %2, align 1, !dbg !1511, !tbaa !894
  %6 = icmp eq i8 %5, 67, !dbg !1513
  br i1 %6, label %7, label %11, !dbg !1516

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1518
  %9 = load i8, i8* %8, align 1, !dbg !1518, !tbaa !894
  %10 = icmp eq i8 %9, 0, !dbg !1521
  br i1 %10, label %14, label %11, !dbg !1523

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !1499, metadata !684), !dbg !1525
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.40, i64 0, i64 0)) #11, !dbg !1526
  %13 = icmp eq i32 %12, 0, !dbg !1528
  br i1 %13, label %14, label %15, !dbg !1530

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1484, metadata !684), !dbg !1504
  br label %15, !dbg !1532

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !1533
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1534 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1539, metadata !684), !dbg !1542
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1540, metadata !684), !dbg !1543
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1544
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1541, metadata !684), !dbg !1545
  store i8 0, i8* %3, align 1, !dbg !1546, !tbaa !894
  br label %4, !dbg !1547

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1541, metadata !684), !dbg !1545
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1539, metadata !684), !dbg !1542
  %7 = urem i64 %5, 10, !dbg !1548
  %8 = trunc i64 %7 to i8, !dbg !1551
  %9 = or i8 %8, 48, !dbg !1551
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1552
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1541, metadata !684), !dbg !1545
  store i8 %9, i8* %10, align 1, !dbg !1553, !tbaa !894
  %11 = udiv i64 %5, 10, !dbg !1554
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1539, metadata !684), !dbg !1542
  %12 = icmp ugt i64 %5, 9, !dbg !1555
  br i1 %12, label %4, label %13, !dbg !1556, !llvm.loop !1558

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1541, metadata !684), !dbg !1545
  ret i8* %10, !dbg !1561
}

; Function Attrs: nounwind sspstrong uwtable
define void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #6 !dbg !1562 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1573, metadata !684), !dbg !1574
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1575
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false), !dbg !1575
  ret void, !dbg !1576
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1577 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1621, metadata !684), !dbg !1623
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1622, metadata !684), !dbg !1624
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1625, metadata !684) #11, !dbg !1640
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1630, metadata !684) #11, !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !1631, metadata !684) #11, !dbg !1643
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1644
  %4 = load i8*, i8** %3, align 8, !dbg !1644, !tbaa !1075
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1633, metadata !684) #11, !dbg !1645
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1634, metadata !684) #11, !dbg !1646
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1647
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1648, metadata !684) #11, !dbg !1653
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1656
  %7 = load i32, i32* %6, align 8, !dbg !1656, !tbaa !1036
  %8 = and i32 %7, 16, !dbg !1656
  %9 = icmp eq i32 %8, 0, !dbg !1657
  br i1 %9, label %10, label %63, !dbg !1658, !llvm.loop !1659

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !1647, !tbaa !1662
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !1663
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !1664

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ]
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ]
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ]
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1635, metadata !684) #11, !dbg !1664
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1634, metadata !684) #11, !dbg !1646
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1633, metadata !684) #11, !dbg !1645
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1665, metadata !684) #11, !dbg !1668
  %19 = load i8*, i8** %13, align 8, !dbg !1670, !tbaa !1671
  %20 = load i8*, i8** %14, align 8, !dbg !1670, !tbaa !1672
  %21 = icmp ult i8* %19, %20, !dbg !1670
  br i1 %21, label %22, label %26, !dbg !1670, !prof !1673

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1674
  store i8* %23, i8** %13, align 8, !dbg !1674, !tbaa !1671
  %24 = load i8, i8* %19, align 1, !dbg !1674, !tbaa !894
  %25 = zext i8 %24 to i32, !dbg !1674
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1632, metadata !684) #11, !dbg !1676
  br label %39, !dbg !1677

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !1678
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1632, metadata !684) #11, !dbg !1676
  %28 = icmp eq i32 %27, -1, !dbg !1680
  br i1 %28, label %29, label %39, !dbg !1677

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !1682
  br i1 %30, label %62, label %31, !dbg !1685

; <label>:31:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1686, metadata !684) #11, !dbg !1689
  %32 = load i32, i32* %6, align 8, !dbg !1692, !tbaa !1036
  %33 = and i32 %32, 32, !dbg !1692
  %34 = icmp eq i32 %33, 0, !dbg !1693
  br i1 %34, label %35, label %62, !dbg !1694

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1696
  %37 = load i8, i8* %36, align 1, !dbg !1696, !tbaa !894
  %38 = icmp eq i8 %37, 10, !dbg !1698
  br i1 %38, label %55, label %39, !dbg !1699

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ]
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1632, metadata !684) #11, !dbg !1676
  %41 = icmp eq i8* %17, %18, !dbg !1700
  br i1 %41, label %42, label %48, !dbg !1701

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !1702, !tbaa !1662
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1636, metadata !684) #11, !dbg !1703
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #11, !dbg !1704
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !1633, metadata !684) #11, !dbg !1645
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1705
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !1634, metadata !684) #11, !dbg !1646
  store i8* %44, i8** %3, align 8, !dbg !1706, !tbaa !1075
  %46 = load i64, i64* %5, align 8, !dbg !1707, !tbaa !1662
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !1708
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1635, metadata !684) #11, !dbg !1664
  br label %48, !dbg !1709

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ]
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ]
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ]
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1635, metadata !684) #11, !dbg !1664
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1634, metadata !684) #11, !dbg !1646
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1633, metadata !684) #11, !dbg !1645
  %52 = trunc i32 %40 to i8, !dbg !1710
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1711
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1634, metadata !684) #11, !dbg !1646
  store i8 %52, i8* %50, align 1, !dbg !1712, !tbaa !894
  %54 = icmp eq i32 %40, 10, !dbg !1713
  br i1 %54, label %55, label %15, !dbg !1714, !llvm.loop !1659

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ]
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1634, metadata !684) #11, !dbg !1646
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !1633, metadata !684) #11, !dbg !1645
  %58 = ptrtoint i8* %57 to i64, !dbg !1716
  %59 = ptrtoint i8* %56 to i64, !dbg !1716
  %60 = sub i64 %58, %59, !dbg !1716
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1717
  store i64 %60, i64* %61, align 8, !dbg !1718, !tbaa !1078
  br label %63, !dbg !1719

; <label>:62:                                     ; preds = %31, %29
  br label %63, !dbg !1720

; <label>:63:                                     ; preds = %62, %2, %55
  %64 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %62 ]
  ret %struct.linebuffer* %64, !dbg !1720
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #6 !dbg !1626 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1625, metadata !684), !dbg !1721
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1630, metadata !684), !dbg !1722
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1631, metadata !684), !dbg !1723
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1724
  %5 = load i8*, i8** %4, align 8, !dbg !1724, !tbaa !1075
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1633, metadata !684), !dbg !1725
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1634, metadata !684), !dbg !1726
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1727
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1635, metadata !684), !dbg !1728
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1648, metadata !684), !dbg !1729
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1731
  %8 = load i32, i32* %7, align 8, !dbg !1731, !tbaa !1036
  %9 = and i32 %8, 16, !dbg !1731
  %10 = icmp eq i32 %9, 0, !dbg !1732
  br i1 %10, label %11, label %65, !dbg !1733, !llvm.loop !1659

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !1727, !tbaa !1662
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !1734
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !1728

; <label>:17:                                     ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ]
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ]
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1635, metadata !684), !dbg !1728
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1634, metadata !684), !dbg !1726
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1633, metadata !684), !dbg !1725
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1665, metadata !684) #11, !dbg !1735
  %21 = load i8*, i8** %14, align 8, !dbg !1737, !tbaa !1671
  %22 = load i8*, i8** %15, align 8, !dbg !1737, !tbaa !1672
  %23 = icmp ult i8* %21, %22, !dbg !1737
  br i1 %23, label %24, label %28, !dbg !1737, !prof !1673

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1738
  store i8* %25, i8** %14, align 8, !dbg !1738, !tbaa !1671
  %26 = load i8, i8* %21, align 1, !dbg !1738, !tbaa !894
  %27 = zext i8 %26 to i32, !dbg !1738
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1632, metadata !684), !dbg !1739
  br label %41, !dbg !1740

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !1741
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1632, metadata !684), !dbg !1739
  %30 = icmp eq i32 %29, -1, !dbg !1742
  br i1 %30, label %31, label %41, !dbg !1740

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !1743
  br i1 %32, label %64, label %33, !dbg !1744

; <label>:33:                                     ; preds = %31
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1686, metadata !684), !dbg !1745
  %34 = load i32, i32* %7, align 8, !dbg !1747, !tbaa !1036
  %35 = and i32 %34, 32, !dbg !1747
  %36 = icmp eq i32 %35, 0, !dbg !1748
  br i1 %36, label %37, label %64, !dbg !1749

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1750
  %39 = load i8, i8* %38, align 1, !dbg !1750, !tbaa !894
  %40 = icmp eq i8 %39, %2, !dbg !1751
  br i1 %40, label %57, label %41, !dbg !1752

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ]
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1632, metadata !684), !dbg !1739
  %43 = icmp eq i8* %19, %20, !dbg !1753
  br i1 %43, label %44, label %50, !dbg !1754

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !1755, !tbaa !1662
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1636, metadata !684), !dbg !1756
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #11, !dbg !1757
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1633, metadata !684), !dbg !1725
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !1758
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1634, metadata !684), !dbg !1726
  store i8* %46, i8** %4, align 8, !dbg !1759, !tbaa !1075
  %48 = load i64, i64* %6, align 8, !dbg !1760, !tbaa !1662
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !1761
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1635, metadata !684), !dbg !1728
  br label %50, !dbg !1762

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ]
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ]
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1635, metadata !684), !dbg !1728
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1634, metadata !684), !dbg !1726
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1633, metadata !684), !dbg !1725
  %54 = trunc i32 %42 to i8, !dbg !1763
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1764
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1634, metadata !684), !dbg !1726
  store i8 %54, i8* %52, align 1, !dbg !1765, !tbaa !894
  %56 = icmp eq i32 %42, %16, !dbg !1766
  br i1 %56, label %57, label %17, !dbg !1767, !llvm.loop !1659

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ]
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ]
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1634, metadata !684), !dbg !1726
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1633, metadata !684), !dbg !1725
  %60 = ptrtoint i8* %59 to i64, !dbg !1768
  %61 = ptrtoint i8* %58 to i64, !dbg !1768
  %62 = sub i64 %60, %61, !dbg !1768
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1769
  store i64 %62, i64* %63, align 8, !dbg !1770, !tbaa !1078
  br label %65, !dbg !1771

; <label>:64:                                     ; preds = %33, %31
  br label %65, !dbg !1772

; <label>:65:                                     ; preds = %64, %3, %57
  %66 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %64 ]
  ret %struct.linebuffer* %66, !dbg !1772
}

; Function Attrs: nounwind sspstrong uwtable
define void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #6 !dbg !1773 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1775, metadata !684), !dbg !1776
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1777
  %3 = load i8*, i8** %2, align 8, !dbg !1777, !tbaa !1075
  tail call void @free(i8* %3) #11, !dbg !1778
  ret void, !dbg !1779
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @memcmp2(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #10 !dbg !1780 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1785, metadata !684), !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1786, metadata !684), !dbg !1791
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1787, metadata !684), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1788, metadata !684), !dbg !1793
  %5 = icmp ule i64 %1, %3, !dbg !1794
  %6 = select i1 %5, i64 %1, i64 %3, !dbg !1795
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %6) #13, !dbg !1796
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1789, metadata !684), !dbg !1798
  %8 = icmp eq i32 %7, 0, !dbg !1799
  br i1 %8, label %9, label %14, !dbg !1801

; <label>:9:                                      ; preds = %4
  %10 = icmp ult i64 %1, %3, !dbg !1802
  br i1 %10, label %14, label %11, !dbg !1805

; <label>:11:                                     ; preds = %9
  %12 = icmp ugt i64 %1, %3, !dbg !1806
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1789, metadata !684), !dbg !1798
  %13 = zext i1 %12 to i32, !dbg !1808
  ret i32 %13, !dbg !1808

; <label>:14:                                     ; preds = %9, %4
  %15 = phi i32 [ %7, %4 ], [ -1, %9 ]
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1789, metadata !684), !dbg !1798
  ret i32 %15, !dbg !1809
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1810 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1812, metadata !684), !dbg !1815
  %2 = icmp eq i8* %0, null, !dbg !1816
  br i1 %2, label %3, label %6, !dbg !1818

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1819, !tbaa !692
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1821
  tail call void @abort() #14, !dbg !1822
  unreachable, !dbg !1822

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1823
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1813, metadata !684), !dbg !1824
  %8 = icmp ne i8* %7, null, !dbg !1825
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1826
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1828
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1814, metadata !684), !dbg !1829
  %11 = ptrtoint i8* %10 to i64, !dbg !1830
  %12 = ptrtoint i8* %0 to i64, !dbg !1830
  %13 = sub i64 %11, %12, !dbg !1830
  %14 = icmp sgt i64 %13, 6, !dbg !1832
  br i1 %14, label %15, label %24, !dbg !1833

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1834
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.55, i64 0, i64 0), i64 7) #13, !dbg !1834
  %18 = icmp eq i32 %17, 0, !dbg !1836
  br i1 %18, label %19, label %24, !dbg !1837

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1812, metadata !684), !dbg !1815
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i64 3) #13, !dbg !1838
  %21 = icmp eq i32 %20, 0, !dbg !1841
  br i1 %21, label %22, label %24, !dbg !1842

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1843
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1812, metadata !684), !dbg !1815
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1845, !tbaa !692
  br label %24, !dbg !1846

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1812, metadata !684), !dbg !1815
  store i8* %25, i8** @program_name, align 8, !dbg !1847, !tbaa !692
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1848, !tbaa !692
  ret void, !dbg !1849
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1850 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1855, metadata !684), !dbg !1858
  %2 = tail call i32* @__errno_location() #1, !dbg !1859
  %3 = load i32, i32* %2, align 4, !dbg !1859, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1856, metadata !684), !dbg !1860
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1861
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1862
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1862
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1864
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1857, metadata !684), !dbg !1865
  store i32 %3, i32* %2, align 4, !dbg !1866, !tbaa !944
  ret %struct.quoting_options* %8, !dbg !1867
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1868 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1874, metadata !684), !dbg !1875
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1876
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1876
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1877
  %5 = load i32, i32* %4, align 8, !dbg !1877, !tbaa !1879
  ret i32 %5, !dbg !1881
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1882 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1886, metadata !684), !dbg !1888
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1887, metadata !684), !dbg !1889
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1890
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1890
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1891
  store i32 %1, i32* %5, align 8, !dbg !1893, !tbaa !1879
  ret void, !dbg !1894
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1895 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1899, metadata !684), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1900, metadata !684), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1901, metadata !684), !dbg !1909
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1902, metadata !684), !dbg !1910
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1911
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1911
  %6 = lshr i8 %1, 5, !dbg !1912
  %7 = zext i8 %6 to i64, !dbg !1912
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1914
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1903, metadata !684), !dbg !1915
  %9 = and i8 %1, 31, !dbg !1916
  %10 = zext i8 %9 to i32, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1905, metadata !684), !dbg !1918
  %11 = load i32, i32* %8, align 4, !dbg !1919, !tbaa !944
  %12 = lshr i32 %11, %10, !dbg !1920
  %13 = and i32 %12, 1, !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1906, metadata !684), !dbg !1922
  %14 = and i32 %2, 1, !dbg !1923
  %15 = xor i32 %13, %14, !dbg !1924
  %16 = shl i32 %15, %10, !dbg !1925
  %17 = xor i32 %16, %11, !dbg !1926
  store i32 %17, i32* %8, align 4, !dbg !1926, !tbaa !944
  ret i32 %13, !dbg !1927
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1928 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1932, metadata !684), !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1933, metadata !684), !dbg !1936
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1937
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1932, metadata !684), !dbg !1935
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1939
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1932, metadata !684), !dbg !1935
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1940
  %6 = load i32, i32* %5, align 4, !dbg !1940, !tbaa !1941
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1934, metadata !684), !dbg !1942
  store i32 %1, i32* %5, align 4, !dbg !1943, !tbaa !1941
  ret i32 %6, !dbg !1944
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1945 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1949, metadata !684), !dbg !1952
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1950, metadata !684), !dbg !1953
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1951, metadata !684), !dbg !1954
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1955
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1949, metadata !684), !dbg !1952
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1957
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1949, metadata !684), !dbg !1952
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1958
  store i32 10, i32* %6, align 8, !dbg !1959, !tbaa !1879
  %7 = icmp ne i8* %1, null, !dbg !1960
  %8 = icmp ne i8* %2, null, !dbg !1962
  %9 = and i1 %7, %8, !dbg !1964
  br i1 %9, label %11, label %10, !dbg !1964

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1965
  unreachable, !dbg !1965

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1966
  store i8* %1, i8** %12, align 8, !dbg !1967, !tbaa !1968
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1969
  store i8* %2, i8** %13, align 8, !dbg !1970, !tbaa !1971
  ret void, !dbg !1972
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1973 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1977, metadata !684), !dbg !1985
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1978, metadata !684), !dbg !1986
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1979, metadata !684), !dbg !1987
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1980, metadata !684), !dbg !1988
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1981, metadata !684), !dbg !1989
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1990
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1990
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1982, metadata !684), !dbg !1991
  %8 = tail call i32* @__errno_location() #1, !dbg !1992
  %9 = load i32, i32* %8, align 4, !dbg !1992, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1983, metadata !684), !dbg !1993
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1994
  %11 = load i32, i32* %10, align 8, !dbg !1994, !tbaa !1879
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1995
  %13 = load i32, i32* %12, align 4, !dbg !1995, !tbaa !1941
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1996
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1997
  %16 = load i8*, i8** %15, align 8, !dbg !1997, !tbaa !1968
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1998
  %18 = load i8*, i8** %17, align 8, !dbg !1998, !tbaa !1971
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1984, metadata !684), !dbg !2000
  store i32 %9, i32* %8, align 4, !dbg !2001, !tbaa !944
  ret i64 %19, !dbg !2002
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2003 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2009, metadata !684), !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2010, metadata !684), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2011, metadata !684), !dbg !2073
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2012, metadata !684), !dbg !2074
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2013, metadata !684), !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2014, metadata !684), !dbg !2076
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2015, metadata !684), !dbg !2077
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2016, metadata !684), !dbg !2078
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2017, metadata !684), !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2019, metadata !684), !dbg !2080
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2020, metadata !684), !dbg !2081
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2021, metadata !684), !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2022, metadata !684), !dbg !2083
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2023, metadata !684), !dbg !2084
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2085
  %14 = icmp eq i64 %13, 1, !dbg !2086
  %15 = lshr i32 %5, 1, !dbg !2087
  %16 = trunc i32 %15 to i8, !dbg !2087
  %17 = and i8 %16, 1, !dbg !2087
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2025, metadata !684), !dbg !2087
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !684), !dbg !2088
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2027, metadata !684), !dbg !2089
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2028, metadata !684), !dbg !2090
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2091

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2010, metadata !684), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2028, metadata !684), !dbg !2090
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2027, metadata !684), !dbg !2089
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2025, metadata !684), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2012, metadata !684), !dbg !2074
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2023, metadata !684), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2022, metadata !684), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2021, metadata !684), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2020, metadata !684), !dbg !2081
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2017, metadata !684), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2016, metadata !684), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2013, metadata !684), !dbg !2075
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
  ], !dbg !2092

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2013, metadata !684), !dbg !2075
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2025, metadata !684), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2025, metadata !684), !dbg !2087
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2013, metadata !684), !dbg !2075
  br label %95, !dbg !2093

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2025, metadata !684), !dbg !2087
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2013, metadata !684), !dbg !2075
  %43 = and i8 %36, 1, !dbg !2095
  %44 = icmp eq i8 %43, 0, !dbg !2095
  br i1 %44, label %45, label %95, !dbg !2093

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2097
  br i1 %46, label %95, label %47, !dbg !2101

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2103, !tbaa !894
  br label %95, !dbg !2103

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 %28), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2016, metadata !684), !dbg !2078
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), i32 %28), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2017, metadata !684), !dbg !2079
  br label %51, !dbg !2110

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2017, metadata !684), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2016, metadata !684), !dbg !2078
  %54 = and i8 %36, 1, !dbg !2111
  %55 = icmp eq i8 %54, 0, !dbg !2111
  br i1 %55, label %56, label %73, !dbg !2113

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2021, metadata !684), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2019, metadata !684), !dbg !2080
  %57 = load i8, i8* %52, align 1, !dbg !2114, !tbaa !894
  %58 = icmp eq i8 %57, 0, !dbg !2118
  br i1 %58, label %73, label %59, !dbg !2118

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2120

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2120
  br i1 %64, label %65, label %67, !dbg !2124

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2126
  store i8 %61, i8* %66, align 1, !dbg !2126, !tbaa !894
  br label %67, !dbg !2126

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2019, metadata !684), !dbg !2080
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2130
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2021, metadata !684), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2021, metadata !684), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2019, metadata !684), !dbg !2080
  %70 = load i8, i8* %69, align 1, !dbg !2114, !tbaa !894
  %71 = icmp eq i8 %70, 0, !dbg !2118
  br i1 %71, label %72, label %60, !dbg !2118, !llvm.loop !2132

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2080

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2023, metadata !684), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2021, metadata !684), !dbg !2082
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2022, metadata !684), !dbg !2083
  br label %95, !dbg !2136

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2023, metadata !684), !dbg !2084
  br label %77, !dbg !2137

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2023, metadata !684), !dbg !2084
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2025, metadata !684), !dbg !2087
  br label %79, !dbg !2138

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2025, metadata !684), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2023, metadata !684), !dbg !2084
  %82 = and i8 %81, 1, !dbg !2139
  %83 = icmp eq i8 %82, 0, !dbg !2139
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2023, metadata !684), !dbg !2084
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2141
  br label %85, !dbg !2141

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2025, metadata !684), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2023, metadata !684), !dbg !2084
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2013, metadata !684), !dbg !2075
  %88 = and i8 %87, 1, !dbg !2142
  %89 = icmp eq i8 %88, 0, !dbg !2142
  br i1 %89, label %90, label %95, !dbg !2144

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2145
  br i1 %91, label %95, label %92, !dbg !2149

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2151, !tbaa !894
  br label %95, !dbg !2151

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2025, metadata !684), !dbg !2087
  br label %95, !dbg !2153

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2154
  unreachable, !dbg !2154

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2025, metadata !684), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2023, metadata !684), !dbg !2084
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2022, metadata !684), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2021, metadata !684), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2017, metadata !684), !dbg !2079
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2016, metadata !684), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2013, metadata !684), !dbg !2075
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2018, metadata !684), !dbg !2155
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
  br label %123, !dbg !2156

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2010, metadata !684), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2028, metadata !684), !dbg !2090
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2027, metadata !684), !dbg !2089
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2012, metadata !684), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2020, metadata !684), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2018, metadata !684), !dbg !2155
  %132 = icmp eq i64 %127, -1, !dbg !2157
  br i1 %132, label %135, label %133, !dbg !2159

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2160
  br i1 %134, label %597, label %139, !dbg !2162

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2164
  %137 = load i8, i8* %136, align 1, !dbg !2164, !tbaa !894
  %138 = icmp eq i8 %137, 0, !dbg !2166
  br i1 %138, label %597, label %139, !dbg !2162

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2034, metadata !684), !dbg !2167
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2035, metadata !684), !dbg !2168
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2036, metadata !684), !dbg !2169
  br i1 %109, label %140, label %155, !dbg !2170

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2172
  %142 = and i1 %110, %132, !dbg !2174
  br i1 %142, label %143, label %145, !dbg !2174

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2012, metadata !684), !dbg !2074
  br label %145, !dbg !2176

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2012, metadata !684), !dbg !2074
  %147 = icmp ugt i64 %141, %146, !dbg !2178
  br i1 %147, label %155, label %148, !dbg !2180

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2181
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2182
  %151 = icmp ne i32 %150, 0, !dbg !2183
  %152 = or i1 %151, %112, !dbg !2183
  %153 = xor i1 %151, true, !dbg !2183
  %154 = zext i1 %153 to i8, !dbg !2183
  br i1 %152, label %155, label %644, !dbg !2183

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2034, metadata !684), !dbg !2167
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2012, metadata !684), !dbg !2074
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2185
  %159 = load i8, i8* %158, align 1, !dbg !2185, !tbaa !894
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2029, metadata !684), !dbg !2186
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
  ], !dbg !2187

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2188

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2189

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2035, metadata !684), !dbg !2168
  %163 = and i8 %128, 1, !dbg !2194
  %164 = icmp eq i8 %163, 0, !dbg !2194
  %165 = and i1 %114, %164, !dbg !2197
  br i1 %165, label %166, label %182, !dbg !2197

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2199
  br i1 %167, label %168, label %170, !dbg !2204

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2206
  store i8 39, i8* %169, align 1, !dbg !2206, !tbaa !894
  br label %170, !dbg !2206

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2019, metadata !684), !dbg !2080
  %172 = icmp ult i64 %171, %131, !dbg !2210
  br i1 %172, label %173, label %175, !dbg !2214

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2216
  store i8 36, i8* %174, align 1, !dbg !2216, !tbaa !894
  br label %175, !dbg !2216

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2019, metadata !684), !dbg !2080
  %177 = icmp ult i64 %176, %131, !dbg !2220
  br i1 %177, label %178, label %180, !dbg !2224

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2226
  store i8 39, i8* %179, align 1, !dbg !2226, !tbaa !894
  br label %180, !dbg !2226

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2026, metadata !684), !dbg !2088
  br label %182, !dbg !2230

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2019, metadata !684), !dbg !2080
  %185 = icmp ult i64 %183, %131, !dbg !2232
  br i1 %185, label %186, label %188, !dbg !2236

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2238
  store i8 92, i8* %187, align 1, !dbg !2238, !tbaa !894
  br label %188, !dbg !2238

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2019, metadata !684), !dbg !2080
  br i1 %106, label %190, label %476, !dbg !2242

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2244
  %192 = icmp ult i64 %191, %156, !dbg !2246
  br i1 %192, label %193, label %476, !dbg !2247

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2248
  %195 = load i8, i8* %194, align 1, !dbg !2248, !tbaa !894
  %196 = add i8 %195, -48, !dbg !2250
  %197 = icmp ult i8 %196, 10, !dbg !2250
  br i1 %197, label %198, label %476, !dbg !2250

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2251
  br i1 %199, label %200, label %202, !dbg !2256

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2258
  store i8 48, i8* %201, align 1, !dbg !2258, !tbaa !894
  br label %202, !dbg !2258

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2019, metadata !684), !dbg !2080
  %204 = icmp ult i64 %203, %131, !dbg !2262
  br i1 %204, label %205, label %207, !dbg !2266

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2268
  store i8 48, i8* %206, align 1, !dbg !2268, !tbaa !894
  br label %207, !dbg !2268

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2019, metadata !684), !dbg !2080
  br label %476, !dbg !2272

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2273

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2274

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2275

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2277

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2279
  %215 = icmp ult i64 %214, %156, !dbg !2281
  br i1 %215, label %216, label %476, !dbg !2282

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2283
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2285
  %219 = load i8, i8* %218, align 1, !dbg !2285, !tbaa !894
  %220 = icmp eq i8 %219, 63, !dbg !2286
  br i1 %220, label %221, label %476, !dbg !2287

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2289
  %223 = load i8, i8* %222, align 1, !dbg !2289, !tbaa !894
  %224 = sext i8 %223 to i32, !dbg !2289
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
  ], !dbg !2290

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2291

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2029, metadata !684), !dbg !2186
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2018, metadata !684), !dbg !2155
  %227 = icmp ult i64 %125, %131, !dbg !2293
  br i1 %227, label %228, label %230, !dbg !2297

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2299
  store i8 63, i8* %229, align 1, !dbg !2299, !tbaa !894
  br label %230, !dbg !2299

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2019, metadata !684), !dbg !2080
  %232 = icmp ult i64 %231, %131, !dbg !2303
  br i1 %232, label %233, label %235, !dbg !2307

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2309
  store i8 34, i8* %234, align 1, !dbg !2309, !tbaa !894
  br label %235, !dbg !2309

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2019, metadata !684), !dbg !2080
  %237 = icmp ult i64 %236, %131, !dbg !2313
  br i1 %237, label %238, label %240, !dbg !2317

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2319
  store i8 34, i8* %239, align 1, !dbg !2319, !tbaa !894
  br label %240, !dbg !2319

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2019, metadata !684), !dbg !2080
  %242 = icmp ult i64 %241, %131, !dbg !2323
  br i1 %242, label %243, label %245, !dbg !2327

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2329
  store i8 63, i8* %244, align 1, !dbg !2329, !tbaa !894
  br label %245, !dbg !2329

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2019, metadata !684), !dbg !2080
  br label %476, !dbg !2333

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2033, metadata !684), !dbg !2334
  br label %257, !dbg !2335

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2033, metadata !684), !dbg !2334
  br label %257, !dbg !2336

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2033, metadata !684), !dbg !2334
  br label %255, !dbg !2337

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2033, metadata !684), !dbg !2334
  br label %255, !dbg !2338

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2033, metadata !684), !dbg !2334
  br label %257, !dbg !2339

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2033, metadata !684), !dbg !2334
  br i1 %114, label %253, label %254, !dbg !2340

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2341

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2344

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2033, metadata !684), !dbg !2334
  br i1 %118, label %257, label %644, !dbg !2346

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2033, metadata !684), !dbg !2334
  br i1 %105, label %503, label %476, !dbg !2348

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2349
  br i1 %260, label %261, label %266, !dbg !2351

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2352, !tbaa !894
  %263 = icmp ne i8 %262, 0, !dbg !2354
  %264 = icmp ne i64 %124, 0, !dbg !2355
  %265 = or i1 %264, %263, !dbg !2357
  br i1 %265, label %476, label %272, !dbg !2357

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2358
  %268 = icmp ne i64 %124, 0, !dbg !2355
  %269 = or i1 %268, %267, !dbg !2360
  br i1 %269, label %476, label %272, !dbg !2360

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2355
  br i1 %271, label %272, label %476, !dbg !2362

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2036, metadata !684), !dbg !2169
  br label %273, !dbg !2363

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2036, metadata !684), !dbg !2169
  br i1 %118, label %476, label %644, !dbg !2364

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2027, metadata !684), !dbg !2089
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2036, metadata !684), !dbg !2169
  br i1 %114, label %276, label %476, !dbg !2366

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2367

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2370
  %279 = icmp ne i64 %126, 0, !dbg !2372
  %280 = or i1 %279, %278, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2020, metadata !684), !dbg !2081
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2010, metadata !684), !dbg !2072
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2374
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2010, metadata !684), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2020, metadata !684), !dbg !2081
  %283 = icmp ult i64 %125, %282, !dbg !2375
  br i1 %283, label %284, label %286, !dbg !2379

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2381
  store i8 39, i8* %285, align 1, !dbg !2381, !tbaa !894
  br label %286, !dbg !2381

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2019, metadata !684), !dbg !2080
  %288 = icmp ult i64 %287, %282, !dbg !2385
  br i1 %288, label %289, label %291, !dbg !2389

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2391
  store i8 92, i8* %290, align 1, !dbg !2391, !tbaa !894
  br label %291, !dbg !2391

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2019, metadata !684), !dbg !2080
  %293 = icmp ult i64 %292, %282, !dbg !2395
  br i1 %293, label %294, label %296, !dbg !2399

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2401
  store i8 39, i8* %295, align 1, !dbg !2401, !tbaa !894
  br label %296, !dbg !2401

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !684), !dbg !2088
  br label %476, !dbg !2405

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2406

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2037, metadata !684), !dbg !2407
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2408
  %301 = load i16*, i16** %300, align 8, !dbg !2408, !tbaa !692
  %302 = zext i8 %159 to i64, !dbg !2408
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2408
  %304 = load i16, i16* %303, align 2, !dbg !2408, !tbaa !2410
  %305 = lshr i16 %304, 14, !dbg !2411
  %306 = trunc i16 %305 to i8, !dbg !2411
  %307 = and i8 %306, 1, !dbg !2411
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2040, metadata !684), !dbg !2412
  br label %368, !dbg !2413

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2414
  store i64 0, i64* %10, align 8, !dbg !2415
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2037, metadata !684), !dbg !2407
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2040, metadata !684), !dbg !2412
  %309 = icmp eq i64 %156, -1, !dbg !2416
  br i1 %309, label %310, label %312, !dbg !2418, !llvm.loop !2419

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2012, metadata !684), !dbg !2074
  br label %312, !dbg !2423, !llvm.loop !2419

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2412

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2040, metadata !684), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2037, metadata !684), !dbg !2407
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2012, metadata !684), !dbg !2074
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2424
  %317 = add i64 %315, %124, !dbg !2425
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2426
  %319 = sub i64 %313, %317, !dbg !2427
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2041, metadata !2428), !dbg !2429
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2057, metadata !2428), !dbg !2430
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2060, metadata !684), !dbg !2432
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2433

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2037, metadata !684), !dbg !2407
  %322 = icmp ugt i64 %313, %317, !dbg !2434
  br i1 %322, label %323, label %351, !dbg !2437

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2438

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2438
  %328 = load i8, i8* %327, align 1, !dbg !2438, !tbaa !894
  %329 = icmp eq i8 %328, 0, !dbg !2440
  br i1 %329, label %348, label %330, !dbg !2441

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2037, metadata !684), !dbg !2407
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2037, metadata !684), !dbg !2407
  %332 = add i64 %331, %124, !dbg !2444
  %333 = icmp ult i64 %332, %313, !dbg !2434
  br i1 %333, label %324, label %348, !dbg !2437, !llvm.loop !2445

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2447
  %336 = and i1 %116, %335, !dbg !2451
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2061, metadata !684), !dbg !2452
  br i1 %336, label %337, label %355, !dbg !2451

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2453

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2453
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2454
  %342 = load i8, i8* %341, align 1, !dbg !2454, !tbaa !894
  %343 = sext i8 %342 to i32, !dbg !2454
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2455

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2061, metadata !684), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2061, metadata !684), !dbg !2452
  %346 = icmp ult i64 %345, %320, !dbg !2447
  br i1 %346, label %338, label %354, !dbg !2458, !llvm.loop !2460

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2412

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2412

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2412

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2040, metadata !684), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2037, metadata !684), !dbg !2407
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2463
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2464

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2464, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2057, metadata !684), !dbg !2430
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2466
  %358 = icmp eq i32 %357, 0, !dbg !2466
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2040, metadata !684), !dbg !2412
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2467
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2040, metadata !684), !dbg !2412
  %360 = add i64 %320, %315, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2037, metadata !684), !dbg !2407
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2040, metadata !684), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2037, metadata !684), !dbg !2407
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2041, metadata !2428), !dbg !2429
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2469
  %362 = icmp eq i32 %361, 0, !dbg !2470
  br i1 %362, label %314, label %363, !dbg !2471, !llvm.loop !2419

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2473

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2473
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2040, metadata !684), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2037, metadata !684), !dbg !2407
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2463
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2473
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2040, metadata !684), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2037, metadata !684), !dbg !2407
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2012, metadata !684), !dbg !2074
  %372 = and i8 %371, 1, !dbg !2474
  %373 = icmp ne i8 %372, 0, !dbg !2474
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2036, metadata !684), !dbg !2169
  %374 = icmp ult i64 %370, 2, !dbg !2475
  %375 = or i1 %373, %113, !dbg !2476
  %376 = and i1 %374, %375, !dbg !2478
  br i1 %376, label %476, label %377, !dbg !2478

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2068, metadata !684), !dbg !2480
  br label %379, !dbg !2481

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2035, metadata !684), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2034, metadata !684), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2029, metadata !684), !dbg !2186
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2018, metadata !684), !dbg !2155
  br i1 %375, label %432, label %386, !dbg !2482

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2487

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2035, metadata !684), !dbg !2168
  %388 = and i8 %382, 1, !dbg !2491
  %389 = icmp eq i8 %388, 0, !dbg !2491
  %390 = and i1 %114, %389, !dbg !2494
  br i1 %390, label %391, label %407, !dbg !2494

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2496
  br i1 %392, label %393, label %395, !dbg !2501

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2503
  store i8 39, i8* %394, align 1, !dbg !2503, !tbaa !894
  br label %395, !dbg !2503

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2019, metadata !684), !dbg !2080
  %397 = icmp ult i64 %396, %131, !dbg !2507
  br i1 %397, label %398, label %400, !dbg !2511

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2513
  store i8 36, i8* %399, align 1, !dbg !2513, !tbaa !894
  br label %400, !dbg !2513

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2019, metadata !684), !dbg !2080
  %402 = icmp ult i64 %401, %131, !dbg !2517
  br i1 %402, label %403, label %405, !dbg !2521

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2523
  store i8 39, i8* %404, align 1, !dbg !2523, !tbaa !894
  br label %405, !dbg !2523

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2026, metadata !684), !dbg !2088
  br label %407, !dbg !2527

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2019, metadata !684), !dbg !2080
  %410 = icmp ult i64 %408, %131, !dbg !2529
  br i1 %410, label %411, label %413, !dbg !2533

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2535
  store i8 92, i8* %412, align 1, !dbg !2535, !tbaa !894
  br label %413, !dbg !2535

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2019, metadata !684), !dbg !2080
  %415 = icmp ult i64 %414, %131, !dbg !2539
  br i1 %415, label %416, label %420, !dbg !2543

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2545
  %418 = or i8 %417, 48, !dbg !2545
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2545
  store i8 %418, i8* %419, align 1, !dbg !2545, !tbaa !894
  br label %420, !dbg !2545

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2547
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2019, metadata !684), !dbg !2080
  %422 = icmp ult i64 %421, %131, !dbg !2549
  br i1 %422, label %423, label %428, !dbg !2553

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2555
  %425 = and i8 %424, 7, !dbg !2555
  %426 = or i8 %425, 48, !dbg !2555
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2555
  store i8 %426, i8* %427, align 1, !dbg !2555, !tbaa !894
  br label %428, !dbg !2555

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2019, metadata !684), !dbg !2080
  %430 = and i8 %383, 7, !dbg !2559
  %431 = or i8 %430, 48, !dbg !2560
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2029, metadata !684), !dbg !2186
  br label %441, !dbg !2561

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2562
  %434 = icmp eq i8 %433, 0, !dbg !2562
  br i1 %434, label %441, label %435, !dbg !2564

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2565
  br i1 %436, label %437, label %439, !dbg !2570

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2572
  store i8 92, i8* %438, align 1, !dbg !2572, !tbaa !894
  br label %439, !dbg !2572

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2034, metadata !684), !dbg !2167
  br label %441, !dbg !2576

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2035, metadata !684), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2034, metadata !684), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2029, metadata !684), !dbg !2186
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2019, metadata !684), !dbg !2080
  %447 = add i64 %380, 1, !dbg !2577
  %448 = icmp ugt i64 %378, %447, !dbg !2579
  br i1 %448, label %449, label %541, !dbg !2580

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2581
  %451 = icmp ne i8 %450, 0, !dbg !2581
  %452 = and i8 %446, 1, !dbg !2585
  %453 = icmp eq i8 %452, 0, !dbg !2585
  %454 = and i1 %451, %453, !dbg !2581
  br i1 %454, label %455, label %466, !dbg !2581

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2587
  br i1 %456, label %457, label %459, !dbg !2592

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2594
  store i8 39, i8* %458, align 1, !dbg !2594, !tbaa !894
  br label %459, !dbg !2594

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2019, metadata !684), !dbg !2080
  %461 = icmp ult i64 %460, %131, !dbg !2598
  br i1 %461, label %462, label %464, !dbg !2602

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2604
  store i8 39, i8* %463, align 1, !dbg !2604, !tbaa !894
  br label %464, !dbg !2604

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !684), !dbg !2088
  br label %466, !dbg !2608

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2019, metadata !684), !dbg !2080
  %469 = icmp ult i64 %467, %131, !dbg !2610
  br i1 %469, label %470, label %472, !dbg !2614

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2616
  store i8 %444, i8* %471, align 1, !dbg !2616, !tbaa !894
  br label %472, !dbg !2616

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2018, metadata !684), !dbg !2155
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2620
  %475 = load i8, i8* %474, align 1, !dbg !2620, !tbaa !894
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2029, metadata !684), !dbg !2186
  br label %379, !dbg !2621, !llvm.loop !2623

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2010, metadata !684), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2036, metadata !684), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2035, metadata !684), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2034, metadata !684), !dbg !2167
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2029, metadata !684), !dbg !2186
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2027, metadata !684), !dbg !2089
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2012, metadata !684), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2020, metadata !684), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2018, metadata !684), !dbg !2155
  br i1 %107, label %488, label %487, !dbg !2626

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2628

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2629

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2630
  %491 = zext i8 %490 to i64, !dbg !2630
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2632
  %493 = load i32, i32* %492, align 4, !dbg !2632, !tbaa !944
  %494 = and i8 %483, 31, !dbg !2633
  %495 = zext i8 %494 to i32, !dbg !2634
  %496 = shl i32 1, %495, !dbg !2635
  %497 = and i32 %493, %496, !dbg !2635
  %498 = icmp eq i32 %497, 0, !dbg !2635
  %499 = icmp eq i8 %157, 0, !dbg !2636
  %500 = and i1 %499, %498, !dbg !2637
  br i1 %500, label %542, label %503, !dbg !2637

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2636
  br i1 %502, label %542, label %503, !dbg !2638

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2010, metadata !684), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2036, metadata !684), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2029, metadata !684), !dbg !2186
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2027, metadata !684), !dbg !2089
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2012, metadata !684), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2020, metadata !684), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2018, metadata !684), !dbg !2155
  br i1 %112, label %513, label %644, !dbg !2640

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2035, metadata !684), !dbg !2168
  %514 = and i8 %508, 1, !dbg !2643
  %515 = icmp eq i8 %514, 0, !dbg !2643
  %516 = and i1 %114, %515, !dbg !2646
  br i1 %516, label %517, label %533, !dbg !2646

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2648
  br i1 %518, label %519, label %521, !dbg !2653

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2655
  store i8 39, i8* %520, align 1, !dbg !2655, !tbaa !894
  br label %521, !dbg !2655

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2019, metadata !684), !dbg !2080
  %523 = icmp ult i64 %522, %512, !dbg !2659
  br i1 %523, label %524, label %526, !dbg !2663

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2665
  store i8 36, i8* %525, align 1, !dbg !2665, !tbaa !894
  br label %526, !dbg !2665

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2019, metadata !684), !dbg !2080
  %528 = icmp ult i64 %527, %512, !dbg !2669
  br i1 %528, label %529, label %531, !dbg !2673

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2675
  store i8 39, i8* %530, align 1, !dbg !2675, !tbaa !894
  br label %531, !dbg !2675

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2026, metadata !684), !dbg !2088
  br label %533, !dbg !2679

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2019, metadata !684), !dbg !2080
  %536 = icmp ult i64 %534, %512, !dbg !2681
  br i1 %536, label %537, label %539, !dbg !2685

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2687
  store i8 92, i8* %538, align 1, !dbg !2687, !tbaa !894
  br label %539, !dbg !2687

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2010, metadata !684), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2036, metadata !684), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2035, metadata !684), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2029, metadata !684), !dbg !2186
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2027, metadata !684), !dbg !2089
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2012, metadata !684), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2020, metadata !684), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2018, metadata !684), !dbg !2155
  br label %569, !dbg !2691

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2072

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2010, metadata !684), !dbg !2072
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2036, metadata !684), !dbg !2169
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2035, metadata !684), !dbg !2168
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2029, metadata !684), !dbg !2186
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2027, metadata !684), !dbg !2089
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2012, metadata !684), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2020, metadata !684), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2018, metadata !684), !dbg !2155
  %553 = and i8 %547, 1, !dbg !2691
  %554 = icmp ne i8 %553, 0, !dbg !2691
  %555 = and i8 %550, 1, !dbg !2695
  %556 = icmp eq i8 %555, 0, !dbg !2695
  %557 = and i1 %554, %556, !dbg !2691
  br i1 %557, label %558, label %569, !dbg !2691

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2697
  br i1 %559, label %560, label %562, !dbg !2702

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2704
  store i8 39, i8* %561, align 1, !dbg !2704, !tbaa !894
  br label %562, !dbg !2704

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2019, metadata !684), !dbg !2080
  %564 = icmp ult i64 %563, %552, !dbg !2708
  br i1 %564, label %565, label %567, !dbg !2712

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2714
  store i8 39, i8* %566, align 1, !dbg !2714, !tbaa !894
  br label %567, !dbg !2714

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2019, metadata !684), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !684), !dbg !2088
  br label %569, !dbg !2718

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2026, metadata !684), !dbg !2088
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2019, metadata !684), !dbg !2080
  %579 = icmp ult i64 %577, %570, !dbg !2720
  br i1 %579, label %580, label %582, !dbg !2724

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2726
  store i8 %572, i8* %581, align 1, !dbg !2726, !tbaa !894
  br label %582, !dbg !2726

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2019, metadata !684), !dbg !2080
  %584 = and i8 %571, 1, !dbg !2730
  %585 = icmp eq i8 %584, 0, !dbg !2730
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2028, metadata !684), !dbg !2090
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2732
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2028, metadata !684), !dbg !2090
  br label %587, !dbg !2733

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2734
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2018, metadata !684), !dbg !2155
  br label %123, !dbg !2736, !llvm.loop !2737

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2740
  %600 = and i1 %114, %599, !dbg !2742
  %601 = xor i1 %600, true, !dbg !2742
  %602 = or i1 %112, %601, !dbg !2742
  br i1 %602, label %603, label %648, !dbg !2742

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2743
  %605 = xor i1 %604, true, !dbg !2743
  %606 = and i8 %129, 1, !dbg !2745
  %607 = icmp eq i8 %606, 0, !dbg !2745
  %608 = or i1 %607, %605, !dbg !2743
  br i1 %608, label %618, label %609, !dbg !2743

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2747
  %611 = icmp eq i8 %610, 0, !dbg !2747
  br i1 %611, label %614, label %612, !dbg !2750

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2751
  br label %659, !dbg !2752

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2753
  %616 = icmp ne i64 %126, 0, !dbg !2755
  %617 = and i1 %616, %615, !dbg !2757
  br i1 %617, label %27, label %618, !dbg !2757

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2758
  %620 = and i1 %619, %112, !dbg !2760
  br i1 %620, label %621, label %638, !dbg !2760

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2021, metadata !684), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2019, metadata !684), !dbg !2080
  %622 = load i8, i8* %100, align 1, !dbg !2761, !tbaa !894
  %623 = icmp eq i8 %622, 0, !dbg !2765
  br i1 %623, label %638, label %624, !dbg !2765

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2767

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2767
  br i1 %629, label %630, label %632, !dbg !2771

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2773
  store i8 %626, i8* %631, align 1, !dbg !2773, !tbaa !894
  br label %632, !dbg !2773

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2019, metadata !684), !dbg !2080
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2021, metadata !684), !dbg !2082
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2021, metadata !684), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2019, metadata !684), !dbg !2080
  %635 = load i8, i8* %634, align 1, !dbg !2761, !tbaa !894
  %636 = icmp eq i8 %635, 0, !dbg !2765
  br i1 %636, label %637, label %625, !dbg !2765, !llvm.loop !2779

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2080

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2019, metadata !684), !dbg !2080
  %640 = icmp ult i64 %639, %131, !dbg !2782
  br i1 %640, label %641, label %659, !dbg !2784

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2785
  store i8 0, i8* %642, align 1, !dbg !2786, !tbaa !894
  br label %659, !dbg !2785

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2072

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2072

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2072

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2010, metadata !684), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2012, metadata !684), !dbg !2074
  %653 = icmp ne i32 %650, 2, !dbg !2787
  %654 = icmp eq i8 %104, 0, !dbg !2789
  %655 = or i1 %653, %654, !dbg !2791
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2013, metadata !684), !dbg !2075
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2013, metadata !684), !dbg !2075
  %657 = and i32 %5, -3, !dbg !2792
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2793
  br label %659, !dbg !2794

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2795
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2800, metadata !684), !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2801, metadata !684), !dbg !2805
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2802, metadata !684), !dbg !2807
  %4 = icmp eq i8* %3, %0, !dbg !2808
  br i1 %4, label %5, label %75, !dbg !2810

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2811
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2803, metadata !684), !dbg !2812
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2813, metadata !684), !dbg !2829
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2827, metadata !684), !dbg !2832
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2828, metadata !684), !dbg !2833
  %7 = load i8, i8* %6, align 1, !tbaa !894
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2834
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2834

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2837, metadata !684), !dbg !2851
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2849, metadata !684), !dbg !2855
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2850, metadata !684), !dbg !2856
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !894
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2857
  %15 = icmp eq i32 %14, 84, !dbg !2857
  br i1 %15, label %16, label %72, !dbg !2857

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2860, metadata !684), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2871, metadata !684), !dbg !2877
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2872, metadata !684), !dbg !2878
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !894
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2879
  %21 = icmp eq i32 %20, 70, !dbg !2879
  br i1 %21, label %22, label %72, !dbg !2879

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2882, metadata !684), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2892, metadata !684), !dbg !2898
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2893, metadata !684), !dbg !2899
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !894
  %25 = icmp eq i8 %24, 45, !dbg !2900
  br i1 %25, label %26, label %72, !dbg !2903

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2905, metadata !684), !dbg !2916
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2914, metadata !684), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2915, metadata !684), !dbg !2921
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !894
  %29 = icmp eq i8 %28, 56, !dbg !2922
  br i1 %29, label %30, label %72, !dbg !2925

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2927, metadata !684), !dbg !2937
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2935, metadata !684), !dbg !2941
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2936, metadata !684), !dbg !2942
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !894
  %33 = icmp eq i8 %32, 0, !dbg !2943
  br i1 %33, label %34, label %72, !dbg !2946

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2948, !tbaa !894
  %36 = icmp eq i8 %35, 96, !dbg !2949
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.70, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.71, i64 0, i64 0), !dbg !2948
  br label %75, !dbg !2950

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2837, metadata !684), !dbg !2951
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2849, metadata !684), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2850, metadata !684), !dbg !2956
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !894
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2957
  %43 = icmp eq i32 %42, 66, !dbg !2957
  br i1 %43, label %44, label %72, !dbg !2957

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2860, metadata !684), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2871, metadata !684), !dbg !2960
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2872, metadata !684), !dbg !2961
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !894
  %47 = icmp eq i8 %46, 49, !dbg !2962
  br i1 %47, label %48, label %72, !dbg !2964

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2882, metadata !684), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2892, metadata !684), !dbg !2968
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2893, metadata !684), !dbg !2969
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !894
  %51 = icmp eq i8 %50, 56, !dbg !2970
  br i1 %51, label %52, label %72, !dbg !2971

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2905, metadata !684), !dbg !2972
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2914, metadata !684), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2915, metadata !684), !dbg !2975
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !894
  %55 = icmp eq i8 %54, 48, !dbg !2976
  br i1 %55, label %56, label %72, !dbg !2977

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2927, metadata !684), !dbg !2978
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2935, metadata !684), !dbg !2980
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2936, metadata !684), !dbg !2981
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !894
  %59 = icmp eq i8 %58, 51, !dbg !2982
  br i1 %59, label %60, label %72, !dbg !2983

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2984, metadata !684), !dbg !2993
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2991, metadata !684), !dbg !2997
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2992, metadata !684), !dbg !2998
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !894
  %63 = icmp eq i8 %62, 48, !dbg !2999
  br i1 %63, label %64, label %72, !dbg !3002

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3004, metadata !684), !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3010, metadata !684), !dbg !3016
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3011, metadata !684), !dbg !3017
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !894
  %67 = icmp eq i8 %66, 0, !dbg !3018
  br i1 %67, label %68, label %72, !dbg !3021

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3022, !tbaa !894
  %70 = icmp eq i8 %69, 96, !dbg !3023
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.73, i64 0, i64 0), !dbg !3022
  br label %75, !dbg !3024

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3025
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), !dbg !3026
  br label %75, !dbg !3027

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3028
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3029 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3033, metadata !684), !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3034, metadata !684), !dbg !3037
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3035, metadata !684), !dbg !3038
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3039, metadata !684) #11, !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3044, metadata !684) #11, !dbg !3054
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3045, metadata !684) #11, !dbg !3055
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3046, metadata !684) #11, !dbg !3056
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3057
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3047, metadata !684) #11, !dbg !3058
  %6 = tail call i32* @__errno_location() #1, !dbg !3059
  %7 = load i32, i32* %6, align 4, !dbg !3059, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3048, metadata !684) #11, !dbg !3060
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3061
  %9 = load i32, i32* %8, align 4, !dbg !3061, !tbaa !1941
  %10 = or i32 %9, 1, !dbg !3062
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3049, metadata !684) #11, !dbg !3063
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3064
  %12 = load i32, i32* %11, align 8, !dbg !3064, !tbaa !1879
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3065
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3066
  %15 = load i8*, i8** %14, align 8, !dbg !3066, !tbaa !1968
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3067
  %17 = load i8*, i8** %16, align 8, !dbg !3067, !tbaa !1971
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3068
  %19 = add i64 %18, 1, !dbg !3069
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3050, metadata !684) #11, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3071, metadata !684) #11, !dbg !3076
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3078
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3051, metadata !684) #11, !dbg !3079
  %21 = load i32, i32* %11, align 8, !dbg !3080, !tbaa !1879
  %22 = load i8*, i8** %14, align 8, !dbg !3081, !tbaa !1968
  %23 = load i8*, i8** %16, align 8, !dbg !3082, !tbaa !1971
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3083
  store i32 %7, i32* %6, align 4, !dbg !3084, !tbaa !944
  ret i8* %20, !dbg !3085
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3040 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3039, metadata !684), !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3044, metadata !684), !dbg !3087
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3045, metadata !684), !dbg !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3046, metadata !684), !dbg !3089
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3090
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3090
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3047, metadata !684), !dbg !3091
  %7 = tail call i32* @__errno_location() #1, !dbg !3092
  %8 = load i32, i32* %7, align 4, !dbg !3092, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3048, metadata !684), !dbg !3093
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3094
  %10 = load i32, i32* %9, align 4, !dbg !3094, !tbaa !1941
  %11 = icmp ne i64* %2, null, !dbg !3095
  %12 = xor i1 %11, true, !dbg !3095
  %13 = zext i1 %12 to i32, !dbg !3095
  %14 = or i32 %10, %13, !dbg !3096
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3049, metadata !684), !dbg !3097
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3098
  %16 = load i32, i32* %15, align 8, !dbg !3098, !tbaa !1879
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3099
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3100
  %19 = load i8*, i8** %18, align 8, !dbg !3100, !tbaa !1968
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3101
  %21 = load i8*, i8** %20, align 8, !dbg !3101, !tbaa !1971
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3102
  %23 = add i64 %22, 1, !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3050, metadata !684), !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3071, metadata !684) #11, !dbg !3105
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3107
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3051, metadata !684), !dbg !3108
  %25 = load i32, i32* %15, align 8, !dbg !3109, !tbaa !1879
  %26 = load i8*, i8** %18, align 8, !dbg !3110, !tbaa !1968
  %27 = load i8*, i8** %20, align 8, !dbg !3111, !tbaa !1971
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3112
  store i32 %8, i32* %7, align 4, !dbg !3113, !tbaa !944
  br i1 %11, label %29, label %30, !dbg !3114

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3115, !tbaa !909
  br label %30, !dbg !3117

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3119 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3123, !tbaa !692
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3121, metadata !684), !dbg !3124
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3122, metadata !684), !dbg !3125
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3122, metadata !684), !dbg !3125
  %2 = load i32, i32* @nslots, align 4, !dbg !3126, !tbaa !944
  %3 = icmp sgt i32 %2, 1, !dbg !3130
  br i1 %3, label %4, label %14, !dbg !3131

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3133

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3133
  %8 = load i8*, i8** %7, align 8, !dbg !3133, !tbaa !3134
  tail call void @free(i8* %8) #11, !dbg !3136
  %9 = add nuw i64 %6, 1, !dbg !3137
  %10 = load i32, i32* @nslots, align 4, !dbg !3126, !tbaa !944
  %11 = sext i32 %10 to i64, !dbg !3130
  %12 = icmp slt i64 %9, %11, !dbg !3130
  br i1 %12, label %5, label %13, !dbg !3131, !llvm.loop !3139

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3142

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3142
  %16 = load i8*, i8** %15, align 8, !dbg !3142, !tbaa !3134
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3144
  br i1 %17, label %19, label %18, !dbg !3145

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !3146
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3148, !tbaa !3149
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3150, !tbaa !3134
  br label %19, !dbg !3151

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3152
  br i1 %20, label %23, label %21, !dbg !3154

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3155
  tail call void @free(i8* %22) #11, !dbg !3157
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3158, !tbaa !692
  br label %23, !dbg !3159

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3160, !tbaa !944
  ret void, !dbg !3161
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3162 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3166, metadata !684), !dbg !3168
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3167, metadata !684), !dbg !3169
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3170
  ret i8* %3, !dbg !3171
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3172 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3176, metadata !684), !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3177, metadata !684), !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3178, metadata !684), !dbg !3192
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3179, metadata !684), !dbg !3193
  %5 = tail call i32* @__errno_location() #1, !dbg !3194
  %6 = load i32, i32* %5, align 4, !dbg !3194, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3180, metadata !684), !dbg !3195
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3196, !tbaa !692
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3181, metadata !684), !dbg !3197
  %8 = icmp slt i32 %0, 0, !dbg !3198
  br i1 %8, label %9, label %10, !dbg !3200

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3201
  unreachable, !dbg !3201

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3202, !tbaa !944
  %12 = icmp sgt i32 %11, %0, !dbg !3203
  br i1 %12, label %34, label %13, !dbg !3204

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3205
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3206
  br i1 %15, label %16, label %17, !dbg !3208

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3209
  unreachable, !dbg !3209

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3210
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3210
  %20 = add nsw i32 %0, 1, !dbg !3212
  %21 = sext i32 %20 to i64, !dbg !3213
  %22 = shl nsw i64 %21, 4, !dbg !3214
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3215
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3215
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3181, metadata !684), !dbg !3197
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3216, !tbaa !692
  br i1 %14, label %25, label %26, !dbg !3217

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3218, !tbaa.struct !3220
  br label %26, !dbg !3221

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3222, !tbaa !944
  %28 = sext i32 %27 to i64, !dbg !3223
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3223
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3224
  %31 = sub nsw i32 %20, %27, !dbg !3225
  %32 = sext i32 %31 to i64, !dbg !3226
  %33 = shl nsw i64 %32, 4, !dbg !3227
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3224
  store i32 %20, i32* @nslots, align 4, !dbg !3228, !tbaa !944
  br label %34, !dbg !3229

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3181, metadata !684), !dbg !3197
  %36 = sext i32 %0 to i64, !dbg !3230
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3231
  %38 = load i64, i64* %37, align 8, !dbg !3231, !tbaa !3149
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3185, metadata !684), !dbg !3232
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3233
  %40 = load i8*, i8** %39, align 8, !dbg !3233, !tbaa !3134
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3187, metadata !684), !dbg !3234
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3235
  %42 = load i32, i32* %41, align 4, !dbg !3235, !tbaa !1941
  %43 = or i32 %42, 1, !dbg !3236
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3188, metadata !684), !dbg !3237
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3238
  %45 = load i32, i32* %44, align 8, !dbg !3238, !tbaa !1879
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3239
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3240
  %48 = load i8*, i8** %47, align 8, !dbg !3240, !tbaa !1968
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3241
  %50 = load i8*, i8** %49, align 8, !dbg !3241, !tbaa !1971
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3189, metadata !684), !dbg !3243
  %52 = icmp ugt i64 %38, %51, !dbg !3244
  br i1 %52, label %63, label %53, !dbg !3246

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3247
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3185, metadata !684), !dbg !3232
  store i64 %54, i64* %37, align 8, !dbg !3249, !tbaa !3149
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3250
  br i1 %55, label %57, label %56, !dbg !3252

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3253
  br label %57, !dbg !3253

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3071, metadata !684) #11, !dbg !3254
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3256
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3187, metadata !684), !dbg !3234
  store i8* %58, i8** %39, align 8, !dbg !3257, !tbaa !3134
  %59 = load i32, i32* %44, align 8, !dbg !3258, !tbaa !1879
  %60 = load i8*, i8** %47, align 8, !dbg !3259, !tbaa !1968
  %61 = load i8*, i8** %49, align 8, !dbg !3260, !tbaa !1971
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3261
  br label %63, !dbg !3262

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3187, metadata !684), !dbg !3234
  store i32 %6, i32* %5, align 4, !dbg !3263, !tbaa !944
  ret i8* %64, !dbg !3264
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3265 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3269, metadata !684), !dbg !3272
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3270, metadata !684), !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3271, metadata !684), !dbg !3274
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3275
  ret i8* %4, !dbg !3276
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3277 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3281, metadata !684), !dbg !3282
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3166, metadata !684) #11, !dbg !3283
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3167, metadata !684) #11, !dbg !3285
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3286
  ret i8* %2, !dbg !3287
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3288 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3292, metadata !684), !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3293, metadata !684), !dbg !3295
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3269, metadata !684) #11, !dbg !3296
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3270, metadata !684) #11, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3271, metadata !684) #11, !dbg !3299
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3300
  ret i8* %3, !dbg !3301
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3302 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3310, metadata !3316), !dbg !3317
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3306, metadata !684), !dbg !3319
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3307, metadata !684), !dbg !3320
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3308, metadata !684), !dbg !3321
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3322
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3322
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3309, metadata !2428), !dbg !3323
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3315, metadata !684) #11, !dbg !3324
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3325
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3325
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3310, metadata !684) #11, !dbg !3317
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3310, metadata !3326) #11, !dbg !3317
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3317
  %8 = icmp eq i32 %1, 10, !dbg !3327
  br i1 %8, label %9, label %10, !dbg !3329

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3330, !noalias !3331
  unreachable, !dbg !3330

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3310, metadata !3326) #11, !dbg !3317
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3334
  store i32 %1, i32* %11, align 8, !dbg !3334, !alias.scope !3331
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3334
  %13 = bitcast i32* %12 to i8*, !dbg !3334
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3334
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3335
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3309, metadata !2428), !dbg !3323
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3336
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3337
  ret i8* %14, !dbg !3338
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3339 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3310, metadata !3316), !dbg !3348
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3343, metadata !684), !dbg !3350
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3344, metadata !684), !dbg !3351
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3345, metadata !684), !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3346, metadata !684), !dbg !3353
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3354
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3354
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3347, metadata !2428), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3315, metadata !684) #11, !dbg !3356
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3357
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3357
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3310, metadata !684) #11, !dbg !3348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3310, metadata !3326) #11, !dbg !3348
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3348
  %9 = icmp eq i32 %1, 10, !dbg !3358
  br i1 %9, label %10, label %11, !dbg !3359

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3360, !noalias !3361
  unreachable, !dbg !3360

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3310, metadata !3326) #11, !dbg !3348
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3364
  store i32 %1, i32* %12, align 8, !dbg !3364, !alias.scope !3361
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3364
  %14 = bitcast i32* %13 to i8*, !dbg !3364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3364
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3347, metadata !2428), !dbg !3355
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3366
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3367
  ret i8* %15, !dbg !3368
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3369 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3310, metadata !3316), !dbg !3375
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3373, metadata !684), !dbg !3378
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3374, metadata !684), !dbg !3379
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3306, metadata !684) #11, !dbg !3380
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3307, metadata !684) #11, !dbg !3381
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3308, metadata !684) #11, !dbg !3382
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3383
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3383
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3309, metadata !2428) #11, !dbg !3384
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3315, metadata !684) #11, !dbg !3385
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3386
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3386
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3310, metadata !684) #11, !dbg !3375
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3310, metadata !3326) #11, !dbg !3375
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3375
  %7 = icmp eq i32 %0, 10, !dbg !3387
  br i1 %7, label %8, label %9, !dbg !3388

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3389, !noalias !3390
  unreachable, !dbg !3389

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3310, metadata !3326) #11, !dbg !3375
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3393
  store i32 %0, i32* %10, align 8, !dbg !3393, !alias.scope !3390
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3393
  %12 = bitcast i32* %11 to i8*, !dbg !3393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3393
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3394
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3309, metadata !2428) #11, !dbg !3384
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3395
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3396
  ret i8* %13, !dbg !3397
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3398 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3310, metadata !3316), !dbg !3405
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3402, metadata !684), !dbg !3408
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3403, metadata !684), !dbg !3409
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3404, metadata !684), !dbg !3410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3343, metadata !684) #11, !dbg !3411
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3344, metadata !684) #11, !dbg !3412
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3345, metadata !684) #11, !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3346, metadata !684) #11, !dbg !3414
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3415
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3347, metadata !2428) #11, !dbg !3416
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3315, metadata !684) #11, !dbg !3417
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3418
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3418
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3310, metadata !684) #11, !dbg !3405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3310, metadata !3326) #11, !dbg !3405
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3405
  %8 = icmp eq i32 %0, 10, !dbg !3419
  br i1 %8, label %9, label %10, !dbg !3420

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3421, !noalias !3422
  unreachable, !dbg !3421

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3310, metadata !3326) #11, !dbg !3405
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3425
  store i32 %0, i32* %11, align 8, !dbg !3425, !alias.scope !3422
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3425
  %13 = bitcast i32* %12 to i8*, !dbg !3425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3425
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3426
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3347, metadata !2428) #11, !dbg !3416
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3427
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3428
  ret i8* %14, !dbg !3429
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3430 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3434, metadata !684), !dbg !3438
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3435, metadata !684), !dbg !3439
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3436, metadata !684), !dbg !3440
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3441
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3442, !tbaa.struct !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3437, metadata !2428), !dbg !3444
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1899, metadata !684), !dbg !3445
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1900, metadata !684), !dbg !3447
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1901, metadata !684), !dbg !3448
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1902, metadata !684), !dbg !3449
  %6 = lshr i8 %2, 5, !dbg !3450
  %7 = zext i8 %6 to i64, !dbg !3450
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3451
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1903, metadata !684), !dbg !3452
  %9 = and i8 %2, 31, !dbg !3453
  %10 = zext i8 %9 to i32, !dbg !3454
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1905, metadata !684), !dbg !3455
  %11 = load i32, i32* %8, align 4, !dbg !3456, !tbaa !944
  %12 = lshr i32 %11, %10, !dbg !3457
  %13 = and i32 %12, 1, !dbg !3458
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1906, metadata !684), !dbg !3459
  %14 = xor i32 %13, 1, !dbg !3460
  %15 = shl i32 %14, %10, !dbg !3461
  %16 = xor i32 %15, %11, !dbg !3462
  store i32 %16, i32* %8, align 4, !dbg !3462, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3437, metadata !2428), !dbg !3444
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3463
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3464
  ret i8* %17, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3466 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !684), !dbg !3472
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3471, metadata !684), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3434, metadata !684) #11, !dbg !3474
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3435, metadata !684) #11, !dbg !3476
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3436, metadata !684) #11, !dbg !3477
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3478
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3478
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3479, !tbaa.struct !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3437, metadata !2428) #11, !dbg !3480
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1899, metadata !684) #11, !dbg !3481
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1900, metadata !684) #11, !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1901, metadata !684) #11, !dbg !3484
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1902, metadata !684) #11, !dbg !3485
  %5 = lshr i8 %1, 5, !dbg !3486
  %6 = zext i8 %5 to i64, !dbg !3486
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3487
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1903, metadata !684) #11, !dbg !3488
  %8 = and i8 %1, 31, !dbg !3489
  %9 = zext i8 %8 to i32, !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1905, metadata !684) #11, !dbg !3491
  %10 = load i32, i32* %7, align 4, !dbg !3492, !tbaa !944
  %11 = lshr i32 %10, %9, !dbg !3493
  %12 = and i32 %11, 1, !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1906, metadata !684) #11, !dbg !3495
  %13 = xor i32 %12, 1, !dbg !3496
  %14 = shl i32 %13, %9, !dbg !3497
  %15 = xor i32 %14, %10, !dbg !3498
  store i32 %15, i32* %7, align 4, !dbg !3498, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3437, metadata !2428) #11, !dbg !3480
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3499
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3500
  ret i8* %16, !dbg !3501
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3502 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3504, metadata !684), !dbg !3505
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !684) #11, !dbg !3506
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3471, metadata !684) #11, !dbg !3508
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3434, metadata !684) #11, !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3435, metadata !684) #11, !dbg !3511
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3436, metadata !684) #11, !dbg !3512
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3513
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3514, !tbaa.struct !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3437, metadata !2428) #11, !dbg !3515
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1899, metadata !684) #11, !dbg !3516
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1900, metadata !684) #11, !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1901, metadata !684) #11, !dbg !3519
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1902, metadata !684) #11, !dbg !3520
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3521
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1903, metadata !684) #11, !dbg !3522
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1905, metadata !684) #11, !dbg !3523
  %5 = load i32, i32* %4, align 4, !dbg !3524, !tbaa !944
  %6 = or i32 %5, 67108864, !dbg !3525
  store i32 %6, i32* %4, align 4, !dbg !3525, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3437, metadata !2428) #11, !dbg !3515
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3526
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3527
  ret i8* %7, !dbg !3528
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3529 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3531, metadata !684), !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3532, metadata !684), !dbg !3534
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3434, metadata !684) #11, !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3435, metadata !684) #11, !dbg !3537
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3436, metadata !684) #11, !dbg !3538
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3539
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3540, !tbaa.struct !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3437, metadata !2428) #11, !dbg !3541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1899, metadata !684) #11, !dbg !3542
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1900, metadata !684) #11, !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1901, metadata !684) #11, !dbg !3545
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1902, metadata !684) #11, !dbg !3546
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3547
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1903, metadata !684) #11, !dbg !3548
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1905, metadata !684) #11, !dbg !3549
  %6 = load i32, i32* %5, align 4, !dbg !3550, !tbaa !944
  %7 = or i32 %6, 67108864, !dbg !3551
  store i32 %7, i32* %5, align 4, !dbg !3551, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3437, metadata !2428) #11, !dbg !3541
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3552
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3553
  ret i8* %8, !dbg !3554
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3555 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3310, metadata !3316), !dbg !3561
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3557, metadata !684), !dbg !3563
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3558, metadata !684), !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3559, metadata !684), !dbg !3565
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3566
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3315, metadata !684) #11, !dbg !3567
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3568
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3568
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3310, metadata !684) #11, !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3310, metadata !3326) #11, !dbg !3561
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3561
  %9 = icmp eq i32 %1, 10, !dbg !3569
  br i1 %9, label %10, label %11, !dbg !3570

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3571, !noalias !3572
  unreachable, !dbg !3571

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3310, metadata !3326) #11, !dbg !3561
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3575
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3576
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3577
  store i32 %1, i32* %13, align 8, !dbg !3577
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3577
  %15 = bitcast i32* %14 to i8*, !dbg !3577
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3577
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3560, metadata !2428), !dbg !3578
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1899, metadata !684), !dbg !3579
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1900, metadata !684), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1901, metadata !684), !dbg !3582
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1902, metadata !684), !dbg !3583
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3584
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1903, metadata !684), !dbg !3585
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1905, metadata !684), !dbg !3586
  %17 = load i32, i32* %16, align 4, !dbg !3587, !tbaa !944
  %18 = or i32 %17, 67108864, !dbg !3588
  store i32 %18, i32* %16, align 4, !dbg !3588, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3560, metadata !2428), !dbg !3578
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3589
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3590
  ret i8* %19, !dbg !3591
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3592 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3596, metadata !684), !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3597, metadata !684), !dbg !3601
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3598, metadata !684), !dbg !3602
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3599, metadata !684), !dbg !3603
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3604, metadata !684) #11, !dbg !3614
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3609, metadata !684) #11, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3610, metadata !684) #11, !dbg !3617
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3611, metadata !684) #11, !dbg !3618
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3612, metadata !684) #11, !dbg !3619
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3620
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3621, !tbaa.struct !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3613, metadata !2428) #11, !dbg !3622
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1949, metadata !684) #11, !dbg !3623
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1950, metadata !684) #11, !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1951, metadata !684) #11, !dbg !3626
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1949, metadata !684) #11, !dbg !3623
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1949, metadata !684) #11, !dbg !3623
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3627
  store i32 10, i32* %7, align 8, !dbg !3628, !tbaa !1879
  %8 = icmp ne i8* %1, null, !dbg !3629
  %9 = icmp ne i8* %2, null, !dbg !3630
  %10 = and i1 %8, %9, !dbg !3631
  br i1 %10, label %12, label %11, !dbg !3631

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3632
  unreachable, !dbg !3632

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3633
  store i8* %1, i8** %13, align 8, !dbg !3634, !tbaa !1968
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3635
  store i8* %2, i8** %14, align 8, !dbg !3636, !tbaa !1971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3613, metadata !2428) #11, !dbg !3622
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3637
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3638
  ret i8* %15, !dbg !3639
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3605 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3604, metadata !684), !dbg !3640
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3609, metadata !684), !dbg !3641
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3610, metadata !684), !dbg !3642
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3611, metadata !684), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3612, metadata !684), !dbg !3644
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3645
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3645
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3646, !tbaa.struct !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3613, metadata !2428), !dbg !3647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1949, metadata !684) #11, !dbg !3648
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1950, metadata !684) #11, !dbg !3650
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1951, metadata !684) #11, !dbg !3651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1949, metadata !684) #11, !dbg !3648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1949, metadata !684) #11, !dbg !3648
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3652
  store i32 10, i32* %8, align 8, !dbg !3653, !tbaa !1879
  %9 = icmp ne i8* %1, null, !dbg !3654
  %10 = icmp ne i8* %2, null, !dbg !3655
  %11 = and i1 %9, %10, !dbg !3656
  br i1 %11, label %13, label %12, !dbg !3656

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3657
  unreachable, !dbg !3657

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3658
  store i8* %1, i8** %14, align 8, !dbg !3659, !tbaa !1968
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3660
  store i8* %2, i8** %15, align 8, !dbg !3661, !tbaa !1971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3613, metadata !2428), !dbg !3647
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3662
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3663
  ret i8* %16, !dbg !3664
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3665 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3669, metadata !684), !dbg !3672
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3670, metadata !684), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3671, metadata !684), !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3596, metadata !684) #11, !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3597, metadata !684) #11, !dbg !3677
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3598, metadata !684) #11, !dbg !3678
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3599, metadata !684) #11, !dbg !3679
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !684) #11, !dbg !3680
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3609, metadata !684) #11, !dbg !3682
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3610, metadata !684) #11, !dbg !3683
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3611, metadata !684) #11, !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3612, metadata !684) #11, !dbg !3685
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3686
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3686
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3687, !tbaa.struct !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3613, metadata !2428) #11, !dbg !3688
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1949, metadata !684) #11, !dbg !3689
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1950, metadata !684) #11, !dbg !3691
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1951, metadata !684) #11, !dbg !3692
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1949, metadata !684) #11, !dbg !3689
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1949, metadata !684) #11, !dbg !3689
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3693
  store i32 10, i32* %6, align 8, !dbg !3694, !tbaa !1879
  %7 = icmp ne i8* %0, null, !dbg !3695
  %8 = icmp ne i8* %1, null, !dbg !3696
  %9 = and i1 %7, %8, !dbg !3697
  br i1 %9, label %11, label %10, !dbg !3697

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3698
  unreachable, !dbg !3698

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3699
  store i8* %0, i8** %12, align 8, !dbg !3700, !tbaa !1968
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3701
  store i8* %1, i8** %13, align 8, !dbg !3702, !tbaa !1971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3613, metadata !2428) #11, !dbg !3688
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3703
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3704
  ret i8* %14, !dbg !3705
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3706 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3710, metadata !684), !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3711, metadata !684), !dbg !3715
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3712, metadata !684), !dbg !3716
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3713, metadata !684), !dbg !3717
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3604, metadata !684) #11, !dbg !3718
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3609, metadata !684) #11, !dbg !3720
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3610, metadata !684) #11, !dbg !3721
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3611, metadata !684) #11, !dbg !3722
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3612, metadata !684) #11, !dbg !3723
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3724
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3725, !tbaa.struct !3443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3613, metadata !2428) #11, !dbg !3726
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1949, metadata !684) #11, !dbg !3727
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1950, metadata !684) #11, !dbg !3729
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1951, metadata !684) #11, !dbg !3730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1949, metadata !684) #11, !dbg !3727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1949, metadata !684) #11, !dbg !3727
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3731
  store i32 10, i32* %7, align 8, !dbg !3732, !tbaa !1879
  %8 = icmp ne i8* %0, null, !dbg !3733
  %9 = icmp ne i8* %1, null, !dbg !3734
  %10 = and i1 %8, %9, !dbg !3735
  br i1 %10, label %12, label %11, !dbg !3735

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3736
  unreachable, !dbg !3736

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3737
  store i8* %0, i8** %13, align 8, !dbg !3738, !tbaa !1968
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3739
  store i8* %1, i8** %14, align 8, !dbg !3740, !tbaa !1971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3613, metadata !2428) #11, !dbg !3726
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3741
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3742
  ret i8* %15, !dbg !3743
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3744 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3748, metadata !684), !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3749, metadata !684), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3750, metadata !684), !dbg !3753
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3754
  ret i8* %4, !dbg !3755
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3756 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3760, metadata !684), !dbg !3762
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3761, metadata !684), !dbg !3763
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3748, metadata !684) #11, !dbg !3764
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3749, metadata !684) #11, !dbg !3766
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3750, metadata !684) #11, !dbg !3767
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3768
  ret i8* %3, !dbg !3769
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3770 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3774, metadata !684), !dbg !3776
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3775, metadata !684), !dbg !3777
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3748, metadata !684) #11, !dbg !3778
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3749, metadata !684) #11, !dbg !3780
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3750, metadata !684) #11, !dbg !3781
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3782
  ret i8* %3, !dbg !3783
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3784 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3788, metadata !684), !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3774, metadata !684) #11, !dbg !3790
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3775, metadata !684) #11, !dbg !3792
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3748, metadata !684) #11, !dbg !3793
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3749, metadata !684) #11, !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3750, metadata !684) #11, !dbg !3796
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3797
  ret i8* %2, !dbg !3798
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !3799 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3804, metadata !684), !dbg !3805
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11, !dbg !3806
  ret i32 %2, !dbg !3807
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3808 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3853, metadata !684), !dbg !3859
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3854, metadata !684), !dbg !3860
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3855, metadata !684), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3856, metadata !684), !dbg !3862
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3857, metadata !684), !dbg !3863
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3858, metadata !684), !dbg !3864
  %7 = icmp eq i8* %1, null, !dbg !3865
  br i1 %7, label %10, label %8, !dbg !3867

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3868
  br label %12, !dbg !3868

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3869
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i32 5) #11, !dbg !3870
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3871
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.85, i64 0, i64 0), i32 5) #11, !dbg !3873
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3874
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
  ], !dbg !3875

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3876
  unreachable, !dbg !3876

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.86, i64 0, i64 0), i32 5) #11, !dbg !3878
  %20 = load i8*, i8** %4, align 8, !dbg !3878, !tbaa !692
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3879
  br label %146, !dbg !3881

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.87, i64 0, i64 0), i32 5) #11, !dbg !3882
  %24 = load i8*, i8** %4, align 8, !dbg !3882, !tbaa !692
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3882
  %26 = load i8*, i8** %25, align 8, !dbg !3882, !tbaa !692
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3883
  br label %146, !dbg !3884

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.88, i64 0, i64 0), i32 5) #11, !dbg !3885
  %30 = load i8*, i8** %4, align 8, !dbg !3885, !tbaa !692
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3885
  %32 = load i8*, i8** %31, align 8, !dbg !3885, !tbaa !692
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3885
  %34 = load i8*, i8** %33, align 8, !dbg !3885, !tbaa !692
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3886
  br label %146, !dbg !3887

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.89, i64 0, i64 0), i32 5) #11, !dbg !3888
  %38 = load i8*, i8** %4, align 8, !dbg !3888, !tbaa !692
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3888
  %40 = load i8*, i8** %39, align 8, !dbg !3888, !tbaa !692
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3888
  %42 = load i8*, i8** %41, align 8, !dbg !3888, !tbaa !692
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3888
  %44 = load i8*, i8** %43, align 8, !dbg !3888, !tbaa !692
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3889
  br label %146, !dbg !3890

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.90, i64 0, i64 0), i32 5) #11, !dbg !3891
  %48 = load i8*, i8** %4, align 8, !dbg !3891, !tbaa !692
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3891
  %50 = load i8*, i8** %49, align 8, !dbg !3891, !tbaa !692
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3891
  %52 = load i8*, i8** %51, align 8, !dbg !3891, !tbaa !692
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3891
  %54 = load i8*, i8** %53, align 8, !dbg !3891, !tbaa !692
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3891
  %56 = load i8*, i8** %55, align 8, !dbg !3891, !tbaa !692
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3892
  br label %146, !dbg !3893

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.91, i64 0, i64 0), i32 5) #11, !dbg !3894
  %60 = load i8*, i8** %4, align 8, !dbg !3894, !tbaa !692
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3894
  %62 = load i8*, i8** %61, align 8, !dbg !3894, !tbaa !692
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3894
  %64 = load i8*, i8** %63, align 8, !dbg !3894, !tbaa !692
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3894
  %66 = load i8*, i8** %65, align 8, !dbg !3894, !tbaa !692
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3894
  %68 = load i8*, i8** %67, align 8, !dbg !3894, !tbaa !692
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3894
  %70 = load i8*, i8** %69, align 8, !dbg !3894, !tbaa !692
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3895
  br label %146, !dbg !3896

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.92, i64 0, i64 0), i32 5) #11, !dbg !3897
  %74 = load i8*, i8** %4, align 8, !dbg !3897, !tbaa !692
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3897
  %76 = load i8*, i8** %75, align 8, !dbg !3897, !tbaa !692
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3897
  %78 = load i8*, i8** %77, align 8, !dbg !3897, !tbaa !692
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3897
  %80 = load i8*, i8** %79, align 8, !dbg !3897, !tbaa !692
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3897
  %82 = load i8*, i8** %81, align 8, !dbg !3897, !tbaa !692
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3897
  %84 = load i8*, i8** %83, align 8, !dbg !3897, !tbaa !692
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3897
  %86 = load i8*, i8** %85, align 8, !dbg !3897, !tbaa !692
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3898
  br label %146, !dbg !3899

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.93, i64 0, i64 0), i32 5) #11, !dbg !3900
  %90 = load i8*, i8** %4, align 8, !dbg !3900, !tbaa !692
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3900
  %92 = load i8*, i8** %91, align 8, !dbg !3900, !tbaa !692
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3900
  %94 = load i8*, i8** %93, align 8, !dbg !3900, !tbaa !692
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3900
  %96 = load i8*, i8** %95, align 8, !dbg !3900, !tbaa !692
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3900
  %98 = load i8*, i8** %97, align 8, !dbg !3900, !tbaa !692
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3900
  %100 = load i8*, i8** %99, align 8, !dbg !3900, !tbaa !692
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3900
  %102 = load i8*, i8** %101, align 8, !dbg !3900, !tbaa !692
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3900
  %104 = load i8*, i8** %103, align 8, !dbg !3900, !tbaa !692
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3901
  br label %146, !dbg !3902

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.94, i64 0, i64 0), i32 5) #11, !dbg !3903
  %108 = load i8*, i8** %4, align 8, !dbg !3903, !tbaa !692
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3903
  %110 = load i8*, i8** %109, align 8, !dbg !3903, !tbaa !692
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3903
  %112 = load i8*, i8** %111, align 8, !dbg !3903, !tbaa !692
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3903
  %114 = load i8*, i8** %113, align 8, !dbg !3903, !tbaa !692
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3903
  %116 = load i8*, i8** %115, align 8, !dbg !3903, !tbaa !692
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3903
  %118 = load i8*, i8** %117, align 8, !dbg !3903, !tbaa !692
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3903
  %120 = load i8*, i8** %119, align 8, !dbg !3903, !tbaa !692
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3903
  %122 = load i8*, i8** %121, align 8, !dbg !3903, !tbaa !692
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3903
  %124 = load i8*, i8** %123, align 8, !dbg !3903, !tbaa !692
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3904
  br label %146, !dbg !3905

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.95, i64 0, i64 0), i32 5) #11, !dbg !3906
  %128 = load i8*, i8** %4, align 8, !dbg !3906, !tbaa !692
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3906
  %130 = load i8*, i8** %129, align 8, !dbg !3906, !tbaa !692
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3906
  %132 = load i8*, i8** %131, align 8, !dbg !3906, !tbaa !692
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3906
  %134 = load i8*, i8** %133, align 8, !dbg !3906, !tbaa !692
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3906
  %136 = load i8*, i8** %135, align 8, !dbg !3906, !tbaa !692
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3906
  %138 = load i8*, i8** %137, align 8, !dbg !3906, !tbaa !692
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3906
  %140 = load i8*, i8** %139, align 8, !dbg !3906, !tbaa !692
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3906
  %142 = load i8*, i8** %141, align 8, !dbg !3906, !tbaa !692
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3906
  %144 = load i8*, i8** %143, align 8, !dbg !3906, !tbaa !692
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3907
  br label %146, !dbg !3908

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3909
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3910 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3914, metadata !684), !dbg !3920
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3915, metadata !684), !dbg !3921
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3916, metadata !684), !dbg !3922
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3917, metadata !684), !dbg !3923
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3918, metadata !684), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3919, metadata !684), !dbg !3925
  br label %6, !dbg !3926

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3919, metadata !684), !dbg !3925
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3928
  %9 = load i8*, i8** %8, align 8, !dbg !3928, !tbaa !692
  %10 = icmp eq i8* %9, null, !dbg !3931
  %11 = add i64 %7, 1, !dbg !3933
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3919, metadata !684), !dbg !3925
  br i1 %10, label %12, label %6, !dbg !3931, !llvm.loop !3935

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3938
  ret void, !dbg !3939
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3940 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3951, metadata !684), !dbg !3959
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3952, metadata !684), !dbg !3960
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3953, metadata !684), !dbg !3961
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3954, metadata !684), !dbg !3962
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3955, metadata !684), !dbg !3963
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3964
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !3964
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3957, metadata !684), !dbg !3965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3956, metadata !684), !dbg !3966
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3967
  %12 = icmp ult i32 %11, 41, !dbg !3967
  br i1 %12, label %13, label %18, !dbg !3967

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3971
  %15 = sext i32 %11 to i64, !dbg !3971
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3971
  %17 = add i32 %11, 8, !dbg !3971
  store i32 %17, i32* %8, align 8, !dbg !3971
  br label %21, !dbg !3971

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3973
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3973
  store i8* %20, i8** %10, align 8, !dbg !3973
  br label %21, !dbg !3973

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3967
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3975
  %25 = load i8*, i8** %24, align 8, !dbg !3975
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3977
  store i8* %25, i8** %26, align 16, !dbg !3978, !tbaa !692
  %27 = icmp eq i8* %25, null, !dbg !3979
  br i1 %27, label %30, label %28, !dbg !3980

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %29 = icmp ult i32 %22, 41, !dbg !3967
  br i1 %29, label %35, label %32, !dbg !3967

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3982
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !3983
  ret void, !dbg !3983

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3973
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3973
  store i8* %34, i8** %10, align 8, !dbg !3973
  br label %40, !dbg !3973

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3971
  %37 = sext i32 %22 to i64, !dbg !3971
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3971
  %39 = add i32 %22, 8, !dbg !3971
  store i32 %39, i32* %8, align 8, !dbg !3971
  br label %40, !dbg !3971

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3967
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3975
  %44 = load i8*, i8** %43, align 8, !dbg !3975
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3977
  store i8* %44, i8** %45, align 8, !dbg !3978, !tbaa !692
  %46 = icmp eq i8* %44, null, !dbg !3979
  br i1 %46, label %30, label %47, !dbg !3980

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %48 = icmp ult i32 %41, 41, !dbg !3967
  br i1 %48, label %52, label %49, !dbg !3967

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3973
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3973
  store i8* %51, i8** %10, align 8, !dbg !3973
  br label %57, !dbg !3973

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3971
  %54 = sext i32 %41 to i64, !dbg !3971
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3971
  %56 = add i32 %41, 8, !dbg !3971
  store i32 %56, i32* %8, align 8, !dbg !3971
  br label %57, !dbg !3971

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3967
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3975
  %61 = load i8*, i8** %60, align 8, !dbg !3975
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3977
  store i8* %61, i8** %62, align 16, !dbg !3978, !tbaa !692
  %63 = icmp eq i8* %61, null, !dbg !3979
  br i1 %63, label %30, label %64, !dbg !3980

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %65 = icmp ult i32 %58, 41, !dbg !3967
  br i1 %65, label %69, label %66, !dbg !3967

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3973
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3973
  store i8* %68, i8** %10, align 8, !dbg !3973
  br label %74, !dbg !3973

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3971
  %71 = sext i32 %58 to i64, !dbg !3971
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3971
  %73 = add i32 %58, 8, !dbg !3971
  store i32 %73, i32* %8, align 8, !dbg !3971
  br label %74, !dbg !3971

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3967
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3975
  %78 = load i8*, i8** %77, align 8, !dbg !3975
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3977
  store i8* %78, i8** %79, align 8, !dbg !3978, !tbaa !692
  %80 = icmp eq i8* %78, null, !dbg !3979
  br i1 %80, label %30, label %81, !dbg !3980

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %82 = icmp ult i32 %75, 41, !dbg !3967
  br i1 %82, label %86, label %83, !dbg !3967

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3973
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3973
  store i8* %85, i8** %10, align 8, !dbg !3973
  br label %91, !dbg !3973

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3971
  %88 = sext i32 %75 to i64, !dbg !3971
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3971
  %90 = add i32 %75, 8, !dbg !3971
  store i32 %90, i32* %8, align 8, !dbg !3971
  br label %91, !dbg !3971

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3967
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3975
  %95 = load i8*, i8** %94, align 8, !dbg !3975
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3977
  store i8* %95, i8** %96, align 16, !dbg !3978, !tbaa !692
  %97 = icmp eq i8* %95, null, !dbg !3979
  br i1 %97, label %30, label %98, !dbg !3980

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %99 = icmp ult i32 %92, 41, !dbg !3967
  br i1 %99, label %103, label %100, !dbg !3967

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3973
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3973
  store i8* %102, i8** %10, align 8, !dbg !3973
  br label %108, !dbg !3973

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3971
  %105 = sext i32 %92 to i64, !dbg !3971
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3971
  %107 = add i32 %92, 8, !dbg !3971
  store i32 %107, i32* %8, align 8, !dbg !3971
  br label %108, !dbg !3971

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3975
  %111 = load i8*, i8** %110, align 8, !dbg !3975
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3977
  store i8* %111, i8** %112, align 8, !dbg !3978, !tbaa !692
  %113 = icmp eq i8* %111, null, !dbg !3979
  br i1 %113, label %30, label %114, !dbg !3980

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %115 = load i8*, i8** %10, align 8, !dbg !3973
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3973
  store i8* %116, i8** %10, align 8, !dbg !3973
  %117 = bitcast i8* %115 to i8**, !dbg !3975
  %118 = load i8*, i8** %117, align 8, !dbg !3975
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3977
  store i8* %118, i8** %119, align 16, !dbg !3978, !tbaa !692
  %120 = icmp eq i8* %118, null, !dbg !3979
  br i1 %120, label %30, label %121, !dbg !3980

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %122 = load i8*, i8** %10, align 8, !dbg !3973
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3973
  store i8* %123, i8** %10, align 8, !dbg !3973
  %124 = bitcast i8* %122 to i8**, !dbg !3975
  %125 = load i8*, i8** %124, align 8, !dbg !3975
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3977
  store i8* %125, i8** %126, align 8, !dbg !3978, !tbaa !692
  %127 = icmp eq i8* %125, null, !dbg !3979
  br i1 %127, label %30, label %128, !dbg !3980

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %129 = load i8*, i8** %10, align 8, !dbg !3973
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3973
  store i8* %130, i8** %10, align 8, !dbg !3973
  %131 = bitcast i8* %129 to i8**, !dbg !3975
  %132 = load i8*, i8** %131, align 8, !dbg !3975
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3977
  store i8* %132, i8** %133, align 16, !dbg !3978, !tbaa !692
  %134 = icmp eq i8* %132, null, !dbg !3979
  br i1 %134, label %30, label %135, !dbg !3980

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %136 = load i8*, i8** %10, align 8, !dbg !3973
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3973
  store i8* %137, i8** %10, align 8, !dbg !3973
  %138 = bitcast i8* %136 to i8**, !dbg !3975
  %139 = load i8*, i8** %138, align 8, !dbg !3975
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3977
  store i8* %139, i8** %140, align 8, !dbg !3978, !tbaa !692
  %141 = icmp eq i8* %139, null, !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !684), !dbg !3966
  %142 = select i1 %141, i64 9, i64 10, !dbg !3980
  br label %30, !dbg !3980
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3984 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3988, metadata !684), !dbg !3997
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3989, metadata !684), !dbg !3998
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3990, metadata !684), !dbg !3999
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3991, metadata !684), !dbg !4000
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4001
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !4001
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3992, metadata !684), !dbg !4002
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4003
  call void @llvm.va_start(i8* nonnull %6), !dbg !4003
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4004
  call void @llvm.va_end(i8* nonnull %6), !dbg !4005
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !4006
  ret void, !dbg !4006
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4007 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.98, i64 0, i64 0), i32 5) #11, !dbg !4008
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.99, i64 0, i64 0)) #11, !dbg !4009
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.100, i64 0, i64 0), i32 5) #11, !dbg !4011
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.101, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.102, i64 0, i64 0)) #11, !dbg !4012
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.103, i64 0, i64 0), i32 5) #11, !dbg !4013
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4013, !tbaa !692
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4014
  ret void, !dbg !4015
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4016 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4020, metadata !684), !dbg !4022
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4021, metadata !684), !dbg !4023
  %3 = udiv i64 9223372036854775807, %1, !dbg !4024
  %4 = icmp ult i64 %3, %0, !dbg !4024
  br i1 %4, label %5, label %6, !dbg !4026

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4027
  unreachable, !dbg !4027

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4029, metadata !684) #11, !dbg !4036
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4038
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4035, metadata !684) #11, !dbg !4039
  %9 = icmp eq i8* %8, null, !dbg !4040
  %10 = icmp ne i64 %7, 0, !dbg !4042
  %11 = and i1 %10, %9, !dbg !4044
  br i1 %11, label %12, label %13, !dbg !4044

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4045
  unreachable, !dbg !4045

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4046
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4030 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4029, metadata !684), !dbg !4047
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4048
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4035, metadata !684), !dbg !4049
  %3 = icmp eq i8* %2, null, !dbg !4050
  %4 = icmp ne i64 %0, 0, !dbg !4051
  %5 = and i1 %4, %3, !dbg !4052
  br i1 %5, label %6, label %7, !dbg !4052

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4053
  unreachable, !dbg !4053

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4054
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4055 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4059, metadata !684), !dbg !4062
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4060, metadata !684), !dbg !4063
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4061, metadata !684), !dbg !4064
  %4 = udiv i64 9223372036854775807, %2, !dbg !4065
  %5 = icmp ult i64 %4, %1, !dbg !4065
  br i1 %5, label %6, label %7, !dbg !4067

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4068
  unreachable, !dbg !4068

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4069
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4070, metadata !684) #11, !dbg !4076
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4075, metadata !684) #11, !dbg !4078
  %9 = icmp eq i64 %8, 0, !dbg !4079
  %10 = icmp ne i8* %0, null, !dbg !4081
  %11 = and i1 %10, %9, !dbg !4083
  br i1 %11, label %12, label %13, !dbg !4083

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4084
  br label %19, !dbg !4086

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4087
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4070, metadata !684) #11, !dbg !4076
  %15 = icmp eq i8* %14, null, !dbg !4088
  %16 = icmp ne i64 %8, 0, !dbg !4090
  %17 = and i1 %16, %15, !dbg !4092
  br i1 %17, label %18, label %19, !dbg !4092

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4093
  unreachable, !dbg !4093

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4094
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4071 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4070, metadata !684), !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4075, metadata !684), !dbg !4096
  %3 = icmp eq i64 %1, 0, !dbg !4097
  %4 = icmp ne i8* %0, null, !dbg !4098
  %5 = and i1 %4, %3, !dbg !4099
  br i1 %5, label %6, label %7, !dbg !4099

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4100
  br label %13, !dbg !4101

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4102
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4070, metadata !684), !dbg !4095
  %9 = icmp eq i8* %8, null, !dbg !4103
  %10 = icmp ne i64 %1, 0, !dbg !4104
  %11 = and i1 %10, %9, !dbg !4105
  br i1 %11, label %12, label %13, !dbg !4105

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4106
  unreachable, !dbg !4106

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4107
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !642 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !647, metadata !684), !dbg !4108
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !648, metadata !684), !dbg !4109
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !649, metadata !684), !dbg !4110
  %4 = load i64, i64* %1, align 8, !dbg !4111, !tbaa !909
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !650, metadata !684), !dbg !4112
  %5 = icmp eq i8* %0, null, !dbg !4113
  br i1 %5, label %6, label %13, !dbg !4115

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4116
  br i1 %7, label %8, label %17, !dbg !4119

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4120
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !650, metadata !684), !dbg !4112
  %10 = icmp ugt i64 %2, 128, !dbg !4122
  %11 = zext i1 %10 to i64, !dbg !4122
  %12 = add nuw nsw i64 %9, %11, !dbg !4123
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !650, metadata !684), !dbg !4112
  br label %17, !dbg !4124

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4125
  %15 = icmp ugt i64 %14, %4, !dbg !4128
  br i1 %15, label %20, label %16, !dbg !4129

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4130
  unreachable, !dbg !4130

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !650, metadata !684), !dbg !4112
  store i64 %18, i64* %1, align 8, !dbg !4131, !tbaa !909
  %19 = mul i64 %18, %2, !dbg !4132
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4070, metadata !684) #11, !dbg !4133
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4075, metadata !684) #11, !dbg !4135
  br label %27, !dbg !4136

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4137
  %22 = add i64 %4, 1, !dbg !4138
  %23 = add i64 %22, %21, !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !650, metadata !684), !dbg !4112
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !650, metadata !684), !dbg !4112
  store i64 %23, i64* %1, align 8, !dbg !4131, !tbaa !909
  %24 = mul i64 %23, %2, !dbg !4132
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4070, metadata !684) #11, !dbg !4133
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4075, metadata !684) #11, !dbg !4135
  %25 = icmp eq i64 %24, 0, !dbg !4140
  br i1 %25, label %26, label %27, !dbg !4136

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4141
  br label %34, !dbg !4142

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4143
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4070, metadata !684) #11, !dbg !4133
  %30 = icmp eq i8* %29, null, !dbg !4144
  %31 = icmp ne i64 %28, 0, !dbg !4145
  %32 = and i1 %31, %30, !dbg !4146
  br i1 %32, label %33, label %34, !dbg !4146

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4147
  unreachable, !dbg !4147

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4148
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4149 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4151, metadata !684), !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4029, metadata !684) #11, !dbg !4153
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4155
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4035, metadata !684) #11, !dbg !4156
  %3 = icmp eq i8* %2, null, !dbg !4157
  %4 = icmp ne i64 %0, 0, !dbg !4158
  %5 = and i1 %4, %3, !dbg !4159
  br i1 %5, label %6, label %7, !dbg !4159

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4160
  unreachable, !dbg !4160

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4161
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4162 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4166, metadata !684), !dbg !4168
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4167, metadata !684), !dbg !4169
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !647, metadata !684) #11, !dbg !4170
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !648, metadata !684) #11, !dbg !4172
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !649, metadata !684) #11, !dbg !4173
  %3 = load i64, i64* %1, align 8, !dbg !4174, !tbaa !909
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !650, metadata !684) #11, !dbg !4175
  %4 = icmp eq i8* %0, null, !dbg !4176
  br i1 %4, label %5, label %8, !dbg !4177

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4178
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !650, metadata !684) #11, !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !650, metadata !684) #11, !dbg !4175
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !650, metadata !684) #11, !dbg !4175
  store i64 %7, i64* %1, align 8, !dbg !4180, !tbaa !909
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4070, metadata !684) #11, !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4075, metadata !684) #11, !dbg !4183
  br label %17, !dbg !4184

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4185
  br i1 %9, label %11, label %10, !dbg !4186

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4187
  unreachable, !dbg !4187

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4188
  %13 = add i64 %3, 1, !dbg !4189
  %14 = add i64 %13, %12, !dbg !4190
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !650, metadata !684) #11, !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !650, metadata !684) #11, !dbg !4175
  store i64 %14, i64* %1, align 8, !dbg !4180, !tbaa !909
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4070, metadata !684) #11, !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4075, metadata !684) #11, !dbg !4183
  %15 = icmp eq i64 %14, 0, !dbg !4191
  br i1 %15, label %16, label %17, !dbg !4184

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4192
  br label %24, !dbg !4193

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4194
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4070, metadata !684) #11, !dbg !4181
  %20 = icmp eq i8* %19, null, !dbg !4195
  %21 = icmp ne i64 %18, 0, !dbg !4196
  %22 = and i1 %21, %20, !dbg !4197
  br i1 %22, label %23, label %24, !dbg !4197

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4198
  unreachable, !dbg !4198

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4199
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4200 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4202, metadata !684), !dbg !4203
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4029, metadata !684) #11, !dbg !4204
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4206
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4035, metadata !684) #11, !dbg !4207
  %3 = icmp eq i8* %2, null, !dbg !4208
  %4 = icmp ne i64 %0, 0, !dbg !4209
  %5 = and i1 %4, %3, !dbg !4210
  br i1 %5, label %6, label %7, !dbg !4210

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4211
  unreachable, !dbg !4211

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4212
  ret i8* %2, !dbg !4213
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4214 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4216, metadata !684), !dbg !4219
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4217, metadata !684), !dbg !4220
  %3 = udiv i64 9223372036854775807, %1, !dbg !4221
  %4 = icmp ult i64 %3, %0, !dbg !4221
  br i1 %4, label %8, label %5, !dbg !4223

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4224
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4218, metadata !684), !dbg !4226
  %7 = icmp eq i8* %6, null, !dbg !4227
  br i1 %7, label %8, label %9, !dbg !4228

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4230
  unreachable, !dbg !4230

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4231
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4232 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4236, metadata !684), !dbg !4238
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4237, metadata !684), !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4029, metadata !684) #11, !dbg !4240
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4242
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4035, metadata !684) #11, !dbg !4243
  %4 = icmp eq i8* %3, null, !dbg !4244
  %5 = icmp ne i64 %1, 0, !dbg !4245
  %6 = and i1 %5, %4, !dbg !4246
  br i1 %6, label %7, label %8, !dbg !4246

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4247
  unreachable, !dbg !4247

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4248
  ret i8* %3, !dbg !4249
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4250 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4252, metadata !684), !dbg !4253
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4254
  %3 = add i64 %2, 1, !dbg !4255
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4236, metadata !684) #11, !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4237, metadata !684) #11, !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4029, metadata !684) #11, !dbg !4260
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4262
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4035, metadata !684) #11, !dbg !4263
  %5 = icmp eq i8* %4, null, !dbg !4264
  %6 = icmp ne i64 %3, 0, !dbg !4265
  %7 = and i1 %6, %5, !dbg !4266
  br i1 %7, label %8, label %9, !dbg !4266

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4267
  unreachable, !dbg !4267

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4268
  ret i8* %4, !dbg !4269
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4270 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4272, !tbaa !944
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.116, i64 0, i64 0), i32 5) #11, !dbg !4273
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %2) #11, !dbg !4274
  tail call void @abort() #14, !dbg !4276
  unreachable, !dbg !4276
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !4277 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4282, metadata !684), !dbg !4288
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4283, metadata !684), !dbg !4289
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4284, metadata !684), !dbg !4290
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4285, metadata !684), !dbg !4291
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #11, !dbg !4292
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4286, metadata !684), !dbg !4293
  %6 = tail call i32* @__errno_location() #1, !dbg !4294
  %7 = load i32, i32* %6, align 4, !dbg !4294, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4287, metadata !684), !dbg !4295
  %8 = icmp eq i32 %7, 0, !dbg !4296
  br i1 %8, label %16, label %9, !dbg !4298

; <label>:9:                                      ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4299, metadata !684) #11, !dbg !4308
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4304, metadata !684) #11, !dbg !4310
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4305, metadata !684) #11, !dbg !4311
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4306, metadata !684) #11, !dbg !4312
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4307, metadata !684) #11, !dbg !4313
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.120, i64 0, i64 0), i32 5) #11, !dbg !4314
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #11, !dbg !4315
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.121, i64 0, i64 0), i32 5) #11, !dbg !4317
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #11, !dbg !4318
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4319, !tbaa !944
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.122, i64 0, i64 0), i32 5) #11, !dbg !4320
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #11, !dbg !4321
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #11, !dbg !4322
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #11, !dbg !4323
  br label %16, !dbg !4324

; <label>:16:                                     ; preds = %4, %9
  ret i32 %5, !dbg !4325
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !4326 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4328, metadata !684), !dbg !4334
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4329, metadata !684), !dbg !4335
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4330, metadata !684), !dbg !4336
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4331, metadata !684), !dbg !4337
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #11, !dbg !4338
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4332, metadata !684), !dbg !4339
  %6 = tail call i32* @__errno_location() #1, !dbg !4340
  %7 = load i32, i32* %6, align 4, !dbg !4340, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4333, metadata !684), !dbg !4341
  %8 = icmp eq i32 %7, 0, !dbg !4342
  br i1 %8, label %18, label %9, !dbg !4344

; <label>:9:                                      ; preds = %4
  %10 = add i64 %1, -1, !dbg !4345
  %11 = add i64 %3, -1, !dbg !4346
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4299, metadata !684) #11, !dbg !4347
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4304, metadata !684) #11, !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !4305, metadata !684) #11, !dbg !4350
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4306, metadata !684) #11, !dbg !4351
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4307, metadata !684) #11, !dbg !4352
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.120, i64 0, i64 0), i32 5) #11, !dbg !4353
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #11, !dbg !4354
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.121, i64 0, i64 0), i32 5) #11, !dbg !4355
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #11, !dbg !4356
  %14 = load volatile i32, i32* @exit_failure, align 4, !dbg !4357, !tbaa !944
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.122, i64 0, i64 0), i32 5) #11, !dbg !4358
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #11, !dbg !4359
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #11, !dbg !4360
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #11, !dbg !4361
  br label %18, !dbg !4362

; <label>:18:                                     ; preds = %4, %9
  ret i32 %5, !dbg !4363
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4364 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4367, metadata !684), !dbg !4373
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4368, metadata !684), !dbg !4374
  %3 = icmp eq i64 %0, 0, !dbg !4375
  %4 = icmp eq i64 %1, 0, !dbg !4376
  %5 = or i1 %3, %4, !dbg !4378
  br i1 %5, label %12, label %6, !dbg !4378

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4379
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4370, metadata !684), !dbg !4380
  %8 = udiv i64 %7, %1, !dbg !4381
  %9 = icmp eq i64 %8, %0, !dbg !4383
  br i1 %9, label %12, label %10, !dbg !4384

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4385
  store i32 12, i32* %11, align 4, !dbg !4387, !tbaa !944
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4367, metadata !684), !dbg !4373
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4368, metadata !684), !dbg !4374
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4388
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4369, metadata !684), !dbg !4389
  br label %16, !dbg !4390

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4391
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4392 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4437, metadata !684), !dbg !4441
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !684), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4440, metadata !684), !dbg !4443
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4444
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4439, metadata !684), !dbg !4445
  %3 = icmp slt i32 %2, 0, !dbg !4446
  br i1 %3, label %4, label %6, !dbg !4448

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4449
  br label %24, !dbg !4450

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4451
  %8 = icmp eq i32 %7, 0, !dbg !4451
  br i1 %8, label %13, label %9, !dbg !4453

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4454
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4456
  %12 = icmp eq i64 %11, -1, !dbg !4458
  br i1 %12, label %16, label %13, !dbg !4459

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4460
  %15 = icmp eq i32 %14, 0, !dbg !4460
  br i1 %15, label %16, label %18, !dbg !4461

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4438, metadata !684), !dbg !4442
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4463
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4440, metadata !684), !dbg !4443
  br label %24, !dbg !4464

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4465
  %20 = load i32, i32* %19, align 4, !dbg !4465, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4438, metadata !684), !dbg !4442
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4438, metadata !684), !dbg !4442
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4463
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4440, metadata !684), !dbg !4443
  %22 = icmp eq i32 %20, 0, !dbg !4466
  br i1 %22, label %24, label %23, !dbg !4464

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4468, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4440, metadata !684), !dbg !4443
  br label %24, !dbg !4470

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4471
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !224 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !232, metadata !684), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !233, metadata !684), !dbg !4473
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4474
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11, !dbg !4474
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !234, metadata !684), !dbg !4475
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !247, metadata !684), !dbg !4476
  call void @llvm.va_start(i8* nonnull %4), !dbg !4477
  %5 = icmp eq i32 %1, 1030, !dbg !4478
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !4478

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !4479

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4480
  %12 = load i8*, i8** %11, align 16, !dbg !4480
  %13 = sext i32 %7 to i64, !dbg !4480
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !4480
  %15 = add i32 %7, 8, !dbg !4480
  store i32 %15, i32* %6, align 16, !dbg !4480
  br label %20, !dbg !4480

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4482
  %18 = load i8*, i8** %17, align 8, !dbg !4482
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !4482
  store i8* %19, i8** %17, align 8, !dbg !4482
  br label %20, !dbg !4482

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !4484
  %23 = load i32, i32* %22, align 4, !dbg !4484
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !248, metadata !684), !dbg !4486
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !4487, !tbaa !944
  %25 = icmp sgt i32 %24, -1, !dbg !4489
  br i1 %25, label %26, label %39, !dbg !4490

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11, !dbg !4491
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !247, metadata !684), !dbg !4476
  %28 = icmp sgt i32 %27, -1, !dbg !4493
  br i1 %28, label %36, label %29, !dbg !4495

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1, !dbg !4496
  %31 = load i32, i32* %30, align 4, !dbg !4496, !tbaa !944
  %32 = icmp eq i32 %31, 22, !dbg !4498
  br i1 %32, label %33, label %36, !dbg !4499

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4501
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !247, metadata !684), !dbg !4476
  %35 = icmp slt i32 %34, 0, !dbg !4503
  br i1 %35, label %75, label %36, !dbg !4505

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !247, metadata !684), !dbg !4476
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !944
  br label %42, !dbg !4506

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !4507
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !247, metadata !684), !dbg !4476
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !4508
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !247, metadata !684), !dbg !4476
  %45 = icmp sgt i32 %44, -1, !dbg !4510
  %46 = icmp eq i32 %43, -1, !dbg !4511
  %47 = and i1 %45, %46, !dbg !4512
  br i1 %47, label %48, label %75, !dbg !4512

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11, !dbg !4513
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !251, metadata !684), !dbg !4514
  %50 = icmp slt i32 %49, 0, !dbg !4515
  br i1 %50, label %55, label %51, !dbg !4516

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !4517
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #11, !dbg !4519
  %54 = icmp eq i32 %53, -1, !dbg !4520
  br i1 %54, label %55, label %75, !dbg !4521

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1, !dbg !4523
  %57 = load i32, i32* %56, align 4, !dbg !4523, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !254, metadata !684), !dbg !4524
  %58 = call i32 @close(i32 %44) #11, !dbg !4525
  store i32 %57, i32* %56, align 4, !dbg !4526, !tbaa !944
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !247, metadata !684), !dbg !4476
  br label %75, !dbg !4527

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !4528

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4529
  %62 = load i8*, i8** %61, align 16, !dbg !4529
  %63 = sext i32 %7 to i64, !dbg !4529
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !4529
  %65 = add i32 %7, 8, !dbg !4529
  store i32 %65, i32* %6, align 16, !dbg !4529
  br label %70, !dbg !4529

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4531
  %68 = load i8*, i8** %67, align 8, !dbg !4531
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !4531
  store i8* %69, i8** %67, align 8, !dbg !4531
  br label %70, !dbg !4531

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !4533
  %73 = load i8*, i8** %72, align 8, !dbg !4533
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !257, metadata !684), !dbg !4535
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #11, !dbg !4536
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !247, metadata !684), !dbg !4476
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !247, metadata !684), !dbg !4476
  call void @llvm.va_end(i8* nonnull %4), !dbg !4537
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11, !dbg !4538
  ret i32 %76, !dbg !4539
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4540 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4585, metadata !684), !dbg !4586
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4587
  br i1 %2, label %6, label %3, !dbg !4589

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4590
  %5 = icmp eq i32 %4, 0, !dbg !4590
  br i1 %5, label %6, label %8, !dbg !4592

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4594
  br label %17, !dbg !4595

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4596, metadata !684) #11, !dbg !4601
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4603
  %10 = load i32, i32* %9, align 8, !dbg !4603, !tbaa !1036
  %11 = and i32 %10, 256, !dbg !4605
  %12 = icmp eq i32 %11, 0, !dbg !4605
  br i1 %12, label %15, label %13, !dbg !4606

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4607
  br label %15, !dbg !4607

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4608
  br label %17, !dbg !4609

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4610
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4611 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4656, metadata !684), !dbg !4662
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4657, metadata !684), !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4658, metadata !684), !dbg !4664
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4665
  %5 = load i8*, i8** %4, align 8, !dbg !4665, !tbaa !1672
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4666
  %7 = load i8*, i8** %6, align 8, !dbg !4666, !tbaa !1671
  %8 = icmp eq i8* %5, %7, !dbg !4667
  br i1 %8, label %9, label %28, !dbg !4668

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4669
  %11 = load i8*, i8** %10, align 8, !dbg !4669, !tbaa !4671
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4672
  %13 = load i8*, i8** %12, align 8, !dbg !4672, !tbaa !4673
  %14 = icmp eq i8* %11, %13, !dbg !4674
  br i1 %14, label %15, label %28, !dbg !4675

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4676
  %17 = load i8*, i8** %16, align 8, !dbg !4676, !tbaa !4677
  %18 = icmp eq i8* %17, null, !dbg !4678
  br i1 %18, label %19, label %28, !dbg !4679

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4681
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4682
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4659, metadata !684), !dbg !4684
  %22 = icmp eq i64 %21, -1, !dbg !4685
  br i1 %22, label %30, label %23, !dbg !4687

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4688
  %25 = load i32, i32* %24, align 8, !dbg !4689, !tbaa !1036
  %26 = and i32 %25, -17, !dbg !4689
  store i32 %26, i32* %24, align 8, !dbg !4689, !tbaa !1036
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4690
  store i64 %21, i64* %27, align 8, !dbg !4691, !tbaa !4692
  br label %30, !dbg !4693

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4694
  br label %30, !dbg !4695

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4696
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4697 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4714, metadata !684), !dbg !4723
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4715, metadata !684), !dbg !4724
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4716, metadata !684), !dbg !4725
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4717, metadata !684), !dbg !4726
  %6 = bitcast i32* %5 to i8*, !dbg !4727
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !4727
  %7 = icmp eq i32* %0, null, !dbg !4728
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4714, metadata !684), !dbg !4723
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4730
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4714, metadata !684), !dbg !4723
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4731
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4718, metadata !684), !dbg !4732
  %10 = icmp ugt i64 %9, -3, !dbg !4733
  %11 = icmp ne i64 %2, 0, !dbg !4734
  %12 = and i1 %11, %10, !dbg !4736
  br i1 %12, label %13, label %18, !dbg !4736

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4737
  br i1 %14, label %18, label %15, !dbg !4739

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4741, !tbaa !894
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4720, metadata !684), !dbg !4742
  %17 = zext i8 %16 to i32, !dbg !4743
  store i32 %17, i32* %8, align 4, !dbg !4744, !tbaa !944
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !4745
  ret i64 %19, !dbg !4745
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4746 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4791, metadata !684), !dbg !4796
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4797
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4798, metadata !684), !dbg !4801
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4803
  %4 = load i32, i32* %3, align 8, !dbg !4803, !tbaa !1036
  %5 = and i32 %4, 32, !dbg !4803
  %6 = icmp eq i32 %5, 0, !dbg !4804
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4805
  %8 = icmp ne i32 %7, 0, !dbg !4806
  br i1 %6, label %9, label %19, !dbg !4807

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4809
  %11 = icmp ne i64 %2, 0, !dbg !4809
  %12 = or i1 %11, %10, !dbg !4809
  %13 = sext i1 %8 to i32, !dbg !4809
  br i1 %12, label %22, label %14, !dbg !4809

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4811
  %16 = load i32, i32* %15, align 4, !dbg !4811, !tbaa !944
  %17 = icmp ne i32 %16, 9, !dbg !4813
  %18 = sext i1 %17 to i32, !dbg !4813
  br label %22, !dbg !4813

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4815

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4817
  store i32 0, i32* %21, align 4, !dbg !4819, !tbaa !944
  br label %22, !dbg !4817

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4820
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4821 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4833, metadata !684), !dbg !4907
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4900, metadata !684), !dbg !4909
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4910
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4825, metadata !684), !dbg !4911
  %4 = icmp eq i8* %3, null, !dbg !4912
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %3, !dbg !4914
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4825, metadata !684), !dbg !4911
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4915, !tbaa !692
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4847, metadata !684) #11, !dbg !4916
  %7 = icmp eq i8* %6, null, !dbg !4917
  br i1 %7, label %8, label %127, !dbg !4918

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.140, i64 0, i64 0)) #11, !dbg !4919
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4848, metadata !684) #11, !dbg !4920
  %10 = icmp eq i8* %9, null, !dbg !4921
  br i1 %10, label %14, label %11, !dbg !4923

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4924, !tbaa !894
  %13 = icmp eq i8 %12, 0, !dbg !4926
  br i1 %13, label %14, label %15, !dbg !4927

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4929

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.141, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4848, metadata !684) #11, !dbg !4920
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4930
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4851, metadata !684) #11, !dbg !4931
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4853, metadata !684) #11, !dbg !4932
  %18 = icmp eq i64 %17, 0, !dbg !4933
  br i1 %18, label %24, label %19, !dbg !4934

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4935
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4935
  %22 = load i8, i8* %21, align 1, !dbg !4935, !tbaa !894
  %23 = icmp ne i8 %22, 47, !dbg !4937
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4938
  %27 = add i64 %17, 14, !dbg !4939
  %28 = add i64 %27, %26, !dbg !4940
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4941
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4850, metadata !684) #11, !dbg !4942
  %30 = icmp eq i8* %29, null, !dbg !4943
  br i1 %30, label %125, label %31, !dbg !4943

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4944
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4947

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4948, !tbaa !894
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4950
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4951
  br label %37, !dbg !4952

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4950
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4951
  br label %37, !dbg !4952

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4953
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4855, metadata !684) #11, !dbg !4954
  %39 = icmp slt i32 %38, 0, !dbg !4955
  br i1 %39, label %123, label %40, !dbg !4956

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.143, i64 0, i64 0)) #11, !dbg !4957
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4856, metadata !684) #11, !dbg !4958
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4959
  br i1 %42, label %48, label %43, !dbg !4960

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4961

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !4962
  br label %123, !dbg !4964

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4897, metadata !684) #11, !dbg !4961
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4898, metadata !684) #11, !dbg !4965
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !4966
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !4967
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4968, metadata !684) #11, !dbg !4973
  %53 = load i8*, i8** %46, align 8, !dbg !4975, !tbaa !1671
  %54 = load i8*, i8** %47, align 8, !dbg !4975, !tbaa !1672
  %55 = icmp ult i8* %53, %54, !dbg !4975
  br i1 %55, label %58, label %56, !dbg !4975, !prof !1673

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4976
  br label %62, !dbg !4976

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4978
  store i8* %59, i8** %46, align 8, !dbg !4978, !tbaa !1671
  %60 = load i8, i8* %53, align 1, !dbg !4978, !tbaa !894
  %61 = zext i8 %60 to i32, !dbg !4978
  br label %62, !dbg !4978

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4980
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4899, metadata !684) #11, !dbg !4982
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4983

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4984

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4968, metadata !684) #11, !dbg !4984
  %66 = load i8*, i8** %46, align 8, !dbg !4988, !tbaa !1671
  %67 = load i8*, i8** %47, align 8, !dbg !4988, !tbaa !1672
  %68 = icmp ult i8* %66, %67, !dbg !4988
  br i1 %68, label %71, label %69, !dbg !4988, !prof !1673

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4989
  br label %75, !dbg !4989

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4990
  store i8* %72, i8** %46, align 8, !dbg !4990, !tbaa !1671
  %73 = load i8, i8* %66, align 1, !dbg !4990, !tbaa !894
  %74 = zext i8 %73 to i32, !dbg !4990
  br label %75, !dbg !4990

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4991
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4899, metadata !684) #11, !dbg !4982
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4992, !llvm.loop !4994

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !4997
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.144, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !4998
  %80 = icmp slt i32 %79, 2, !dbg !5000
  br i1 %80, label %115, label %81, !dbg !5001

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5002
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4904, metadata !684) #11, !dbg !5003
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5004
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4905, metadata !684) #11, !dbg !5005
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4906, metadata !684) #11, !dbg !5006
  %84 = icmp eq i64 %51, 0, !dbg !5007
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5009

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4898, metadata !684) #11, !dbg !4965
  %89 = add i64 %86, 2, !dbg !5010
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !5012
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4897, metadata !684) #11, !dbg !4961
  br label %95, !dbg !5013

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5014
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4898, metadata !684) #11, !dbg !4965
  %93 = add i64 %92, 1, !dbg !5016
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !5017
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4897, metadata !684) #11, !dbg !4961
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4897, metadata !684) #11, !dbg !4961
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4898, metadata !684) #11, !dbg !4965
  %98 = icmp eq i8* %97, null, !dbg !5018
  br i1 %98, label %99, label %100, !dbg !5020

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4898, metadata !684) #11, !dbg !4965
  call void @free(i8* %52) #11, !dbg !5021
  br label %116, !dbg !5023

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5024
  %102 = xor i64 %83, -1, !dbg !5025
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5025
  %104 = xor i64 %82, -1, !dbg !5026
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5026
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5027, metadata !684) #11, !dbg !5036
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5035, metadata !684) #11, !dbg !5036
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !5038
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !5039
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5027, metadata !684) #11, !dbg !5040
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5035, metadata !684) #11, !dbg !5040
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !5042
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !5043
  br label %111, !dbg !5044

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4961

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4897, metadata !684) #11, !dbg !4961
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4898, metadata !684) #11, !dbg !4965
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5044
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5044
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4961

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4961

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4897, metadata !684) #11, !dbg !4961
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4898, metadata !684) #11, !dbg !4965
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5044
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5044
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !5045
  %120 = icmp eq i64 %117, 0, !dbg !5046
  br i1 %120, label %123, label %121, !dbg !5048

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5049
  store i8 0, i8* %122, align 1, !dbg !5051, !tbaa !894
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4847, metadata !684) #11, !dbg !4916
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4847, metadata !684) #11, !dbg !4916
  call void @free(i8* %29) #11, !dbg !5052
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4847, metadata !684) #11, !dbg !4916
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5053, !tbaa !692
  br label %127, !dbg !5054

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4826, metadata !684), !dbg !5055
  %129 = load i8, i8* %128, align 1, !dbg !5056, !tbaa !894
  %130 = icmp eq i8 %129, 0, !dbg !5057
  br i1 %130, label %157, label %131, !dbg !5058

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5060

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !5060
  %136 = icmp eq i32 %135, 0, !dbg !5061
  br i1 %136, label %143, label %137, !dbg !5062

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5063
  br i1 %138, label %139, label %147, !dbg !5065

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5066
  %141 = load i8, i8* %140, align 1, !dbg !5066, !tbaa !894
  %142 = icmp eq i8 %141, 0, !dbg !5068
  br i1 %142, label %143, label %147, !dbg !5069

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5071
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5073
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5074
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4825, metadata !684), !dbg !4911
  br label %157, !dbg !5075

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5076
  %149 = add i64 %148, 1, !dbg !5077
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5078
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4826, metadata !684), !dbg !5055
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5079
  %152 = add i64 %151, 1, !dbg !5080
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5081
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4826, metadata !684), !dbg !5055
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4826, metadata !684), !dbg !5055
  %154 = load i8, i8* %153, align 1, !dbg !5056, !tbaa !894
  %155 = icmp eq i8 %154, 0, !dbg !5057
  br i1 %155, label %156, label %132, !dbg !5058, !llvm.loop !5082

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4911

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4825, metadata !684), !dbg !4911
  %159 = load i8, i8* %158, align 1, !dbg !5085, !tbaa !894
  %160 = icmp eq i8 %159, 0, !dbg !5087
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i8* %158, !dbg !5088
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4825, metadata !684), !dbg !4911
  ret i8* %161, !dbg !5089
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll(i8* nocapture, i64, i8* nocapture, i64) local_unnamed_addr #6 !dbg !5090 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5093, metadata !684), !dbg !5102
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5094, metadata !684), !dbg !5103
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5095, metadata !684), !dbg !5104
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5096, metadata !684), !dbg !5105
  %5 = icmp eq i64 %1, %3, !dbg !5106
  br i1 %5, label %6, label %11, !dbg !5107

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #13, !dbg !5108
  %8 = icmp eq i32 %7, 0, !dbg !5110
  br i1 %8, label %9, label %11, !dbg !5111

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !5113
  store i32 0, i32* %10, align 4, !dbg !5115, !tbaa !944
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5097, metadata !684), !dbg !5116
  br label %45, !dbg !5117

; <label>:11:                                     ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !5118
  %13 = load i8, i8* %12, align 1, !dbg !5118, !tbaa !894
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !5098, metadata !684), !dbg !5119
  %14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !5120
  %15 = load i8, i8* %14, align 1, !dbg !5120, !tbaa !894
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !5101, metadata !684), !dbg !5121
  store i8 0, i8* %12, align 1, !dbg !5122, !tbaa !894
  store i8 0, i8* %14, align 1, !dbg !5123, !tbaa !894
  %16 = add i64 %1, 1, !dbg !5124
  %17 = add i64 %3, 1, !dbg !5125
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5126, metadata !684) #11, !dbg !5136
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !5129, metadata !684) #11, !dbg !5138
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5130, metadata !684) #11, !dbg !5139
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5131, metadata !684) #11, !dbg !5140
  %18 = tail call i32* @__errno_location() #1, !dbg !5141
  br label %19, !dbg !5143

; <label>:19:                                     ; preds = %37, %11
  %20 = phi i8* [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi i8* [ %0, %11 ], [ %39, %37 ]
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !5126, metadata !684) #11, !dbg !5136
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5129, metadata !684) #11, !dbg !5138
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5131, metadata !684) #11, !dbg !5140
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !5130, metadata !684) #11, !dbg !5139
  store i32 0, i32* %18, align 4, !dbg !5144, !tbaa !944
  %24 = tail call i32 @strcoll(i8* %23, i8* %20) #13, !dbg !5145
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !5132, metadata !684) #11, !dbg !5147
  %25 = icmp eq i32 %24, 0, !dbg !5148
  br i1 %25, label %26, label %41, !dbg !5149

; <label>:26:                                     ; preds = %19
  %27 = tail call i64 @strlen(i8* %23) #13, !dbg !5151
  %28 = add i64 %27, 1, !dbg !5152
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5133, metadata !684) #11, !dbg !5153
  %29 = tail call i64 @strlen(i8* %20) #13, !dbg !5154
  %30 = add i64 %29, 1, !dbg !5155
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5135, metadata !684) #11, !dbg !5156
  %31 = sub i64 %22, %28, !dbg !5157
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !5129, metadata !684) #11, !dbg !5138
  %32 = sub i64 %21, %30, !dbg !5158
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !5131, metadata !684) #11, !dbg !5140
  %33 = icmp eq i64 %31, 0, !dbg !5159
  br i1 %33, label %34, label %37, !dbg !5161

; <label>:34:                                     ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !5162
  %36 = sext i1 %35 to i32, !dbg !5163
  br label %43

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !5164
  %39 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !5165
  %40 = icmp eq i64 %32, 0, !dbg !5166
  br i1 %40, label %41, label %19, !llvm.loop !5168

; <label>:41:                                     ; preds = %37, %19
  %42 = phi i32 [ 1, %37 ], [ %24, %19 ]
  br label %43, !dbg !5116

; <label>:43:                                     ; preds = %41, %34
  %44 = phi i32 [ %36, %34 ], [ %42, %41 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !5097, metadata !684), !dbg !5116
  store i8 %13, i8* %12, align 1, !dbg !5171, !tbaa !894
  store i8 %15, i8* %14, align 1, !dbg !5172, !tbaa !894
  br label %45

; <label>:45:                                     ; preds = %43, %9
  %46 = phi i32 [ 0, %9 ], [ %44, %43 ]
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !5097, metadata !684), !dbg !5116
  ret i32 %46, !dbg !5173
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll0(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5174 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5176, metadata !684), !dbg !5180
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5177, metadata !684), !dbg !5181
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5178, metadata !684), !dbg !5182
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5179, metadata !684), !dbg !5183
  %5 = icmp eq i64 %1, %3, !dbg !5184
  br i1 %5, label %6, label %11, !dbg !5186

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #13, !dbg !5187
  %8 = icmp eq i32 %7, 0, !dbg !5189
  br i1 %8, label %9, label %11, !dbg !5190

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !5192
  store i32 0, i32* %10, align 4, !dbg !5194, !tbaa !944
  br label %37, !dbg !5195

; <label>:11:                                     ; preds = %6, %4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5126, metadata !684) #11, !dbg !5196
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5129, metadata !684) #11, !dbg !5198
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5130, metadata !684) #11, !dbg !5199
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5131, metadata !684) #11, !dbg !5200
  %12 = tail call i32* @__errno_location() #1, !dbg !5201
  br label %13, !dbg !5202

; <label>:13:                                     ; preds = %31, %11
  %14 = phi i8* [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi i8* [ %0, %11 ], [ %33, %31 ]
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !5126, metadata !684) #11, !dbg !5196
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !5129, metadata !684) #11, !dbg !5198
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !5131, metadata !684) #11, !dbg !5200
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5130, metadata !684) #11, !dbg !5199
  store i32 0, i32* %12, align 4, !dbg !5203, !tbaa !944
  %18 = tail call i32 @strcoll(i8* %17, i8* %14) #13, !dbg !5204
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !5132, metadata !684) #11, !dbg !5205
  %19 = icmp eq i32 %18, 0, !dbg !5206
  br i1 %19, label %20, label %35, !dbg !5207

; <label>:20:                                     ; preds = %13
  %21 = tail call i64 @strlen(i8* %17) #13, !dbg !5208
  %22 = add i64 %21, 1, !dbg !5209
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5133, metadata !684) #11, !dbg !5210
  %23 = tail call i64 @strlen(i8* %14) #13, !dbg !5211
  %24 = add i64 %23, 1, !dbg !5212
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5135, metadata !684) #11, !dbg !5213
  %25 = sub i64 %16, %22, !dbg !5214
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !5129, metadata !684) #11, !dbg !5198
  %26 = sub i64 %15, %24, !dbg !5215
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !5131, metadata !684) #11, !dbg !5200
  %27 = icmp eq i64 %25, 0, !dbg !5216
  br i1 %27, label %28, label %31, !dbg !5217

; <label>:28:                                     ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !5218
  %30 = sext i1 %29 to i32, !dbg !5219
  br label %37

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %14, i64 %24, !dbg !5220
  %33 = getelementptr inbounds i8, i8* %17, i64 %22, !dbg !5221
  %34 = icmp eq i64 %26, 0, !dbg !5222
  br i1 %34, label %35, label %13, !llvm.loop !5168

; <label>:35:                                     ; preds = %13, %31
  %36 = phi i32 [ 1, %31 ], [ %18, %13 ]
  br label %37, !dbg !5223

; <label>:37:                                     ; preds = %35, %28, %9
  %38 = phi i32 [ 0, %9 ], [ %30, %28 ], [ %36, %35 ]
  ret i32 %38, !dbg !5223
}

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
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !119, !125, !133, !607, !610, !612, !615, !622, !625, !140, !147, !627, !629, !215, !637, !654, !656, !659, !661, !228, !663, !665, !667, !670, !261, !672}
!llvm.ident = !{!674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674, !674}
!llvm.module.flags = !{!675, !676, !677, !678}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 46, type: !50, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !33, globals: !47)
!3 = !DIFile(filename: "src/comm.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !24}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 70, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "CHECK_ORDER_DEFAULT", value: 0)
!8 = !DIEnumerator(name: "CHECK_ORDER_ENABLED", value: 1)
!9 = !DIEnumerator(name: "CHECK_ORDER_DISABLED", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !11, line: 32, size: 32, elements: !12)
!11 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!13 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!14 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!15 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!16 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!17 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!18 = !DIEnumerator(name: "c_quoting_style", value: 5)
!19 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!20 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!21 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!22 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!23 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 45, size: 32, elements: !26)
!25 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!26 = !{!27, !28, !29, !30, !31, !32}
!27 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!28 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!29 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!30 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!31 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!32 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!33 = !{!34, !36, !37, !40, !42, !45}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 62, baseType: !39)
!38 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!47 = !{!0, !48, !51, !53, !55, !57, !62, !64, !66, !97, !111, !113, !115}
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "only_file_1", scope: !2, file: !3, line: 49, type: !50, isLocal: true, isDefinition: true)
!50 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "only_file_2", scope: !2, file: !3, line: 52, type: !50, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54)
!54 = distinct !DIGlobalVariable(name: "both", scope: !2, file: !3, line: 55, type: !50, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56)
!56 = distinct !DIGlobalVariable(name: "seen_unpairable", scope: !2, file: !3, line: 58, type: !50, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58)
!58 = distinct !DIGlobalVariable(name: "issued_disorder_warning", scope: !2, file: !3, line: 61, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 16, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 2)
!62 = !DIGlobalVariableExpression(var: !63)
!63 = distinct !DIGlobalVariable(name: "total_option", scope: !2, file: !3, line: 67, type: !50, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65)
!65 = distinct !DIGlobalVariable(name: "check_input_order", scope: !2, file: !3, line: 75, type: !5, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "infomap", scope: !68, file: !69, line: 632, type: !94, isLocal: true, isDefinition: true)
!68 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 630, type: !70, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !72)
!69 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!70 = !DISubroutineType(types: !71)
!71 = !{null, !45}
!72 = !{!73, !74, !75, !82, !84, !85, !86, !89, !90, !92}
!73 = !DILocalVariable(name: "program", arg: 1, scope: !68, file: !69, line: 630, type: !45)
!74 = !DILocalVariable(name: "node", scope: !68, file: !69, line: 642, type: !45)
!75 = !DILocalVariable(name: "map_prog", scope: !68, file: !69, line: 643, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !68, file: !69, line: 632, size: 128, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !78, file: !69, line: 632, baseType: !45, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !78, file: !69, line: 632, baseType: !45, size: 64, offset: 64)
!82 = !DILocalVariable(name: "__s1_len", scope: !83, file: !69, line: 645, type: !37)
!83 = distinct !DILexicalBlock(scope: !68, file: !69, line: 645, column: 33)
!84 = !DILocalVariable(name: "__s2_len", scope: !83, file: !69, line: 645, type: !37)
!85 = !DILocalVariable(name: "lc_messages", scope: !68, file: !69, line: 655, type: !45)
!86 = !DILocalVariable(name: "__s1_len", scope: !87, file: !69, line: 656, type: !37)
!87 = distinct !DILexicalBlock(scope: !88, file: !69, line: 656, column: 22)
!88 = distinct !DILexicalBlock(scope: !68, file: !69, line: 656, column: 7)
!89 = !DILocalVariable(name: "__s2_len", scope: !87, file: !69, line: 656, type: !37)
!90 = !DILocalVariable(name: "__s2", scope: !91, file: !69, line: 656, type: !42)
!91 = distinct !DILexicalBlock(scope: !87, file: !69, line: 656, column: 22)
!92 = !DILocalVariable(name: "__result", scope: !91, file: !69, line: 656, type: !93)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 896, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 7)
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 92, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 2048, elements: !109)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !102, line: 104, size: 256, elements: !103)
!102 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !{!104, !105, !106, !108}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !102, line: 106, baseType: !45, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !101, file: !102, line: 109, baseType: !93, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !101, file: !102, line: 110, baseType: !107, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !101, file: !102, line: 111, baseType: !93, size: 32, offset: 192)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DIGlobalVariableExpression(var: !112)
!112 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 64, type: !44, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "col_sep_len", scope: !2, file: !3, line: 80, type: !37, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "col_sep", scope: !2, file: !3, line: 79, type: !45, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "Version", scope: !119, file: !120, line: 2, type: !45, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !122)
!120 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{}
!122 = !{!117}
!123 = !DIGlobalVariableExpression(var: !124)
!124 = distinct !DIGlobalVariable(name: "file_name", scope: !125, file: !130, line: 36, type: !45, isLocal: true, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !127)
!126 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !{!123, !128}
!128 = !DIGlobalVariableExpression(var: !129)
!129 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !125, file: !130, line: 46, type: !50, isLocal: true, isDefinition: true)
!130 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "exit_failure", scope: !133, file: !136, line: 24, type: !137, isLocal: false, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !135)
!134 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!131}
!136 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !93)
!138 = !DIGlobalVariableExpression(var: !139)
!139 = distinct !DIGlobalVariable(name: "program_name", scope: !140, file: !144, line: 33, type: !45, isLocal: false, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !142, globals: !143)
!141 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !{!36, !34}
!143 = !{!138}
!144 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !147, file: !175, line: 77, type: !209, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !170, globals: !172)
!148 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!149 = !{!10, !150, !155}
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !11, line: 242, size: 32, elements: !151)
!151 = !{!152, !153, !154}
!152 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!153 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!154 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !156, line: 46, size: 32, elements: !157)
!156 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!158 = !DIEnumerator(name: "_ISupper", value: 256)
!159 = !DIEnumerator(name: "_ISlower", value: 512)
!160 = !DIEnumerator(name: "_ISalpha", value: 1024)
!161 = !DIEnumerator(name: "_ISdigit", value: 2048)
!162 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!163 = !DIEnumerator(name: "_ISspace", value: 8192)
!164 = !DIEnumerator(name: "_ISprint", value: 16384)
!165 = !DIEnumerator(name: "_ISgraph", value: 32768)
!166 = !DIEnumerator(name: "_ISblank", value: 1)
!167 = !DIEnumerator(name: "_IScntrl", value: 2)
!168 = !DIEnumerator(name: "_ISpunct", value: 4)
!169 = !DIEnumerator(name: "_ISalnum", value: 8)
!170 = !{!93, !171, !37, !34}
!171 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!172 = !{!145, !173, !180, !191, !193, !198, !205, !207}
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !147, file: !175, line: 93, type: !176, isLocal: false, isDefinition: true)
!175 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 320, elements: !178)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!178 = !{!179}
!179 = !DISubrange(count: 10)
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !147, file: !175, line: 1043, type: !182, isLocal: false, isDefinition: true)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !175, line: 57, size: 448, elements: !183)
!183 = !{!184, !185, !186, !189, !190}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !182, file: !175, line: 60, baseType: !10, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !175, line: 63, baseType: !93, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !182, file: !175, line: 67, baseType: !187, size: 256, offset: 64)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, elements: !109)
!188 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !182, file: !175, line: 70, baseType: !45, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !182, file: !175, line: 73, baseType: !45, size: 64, offset: 384)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !147, file: !175, line: 108, type: !182, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194)
!194 = distinct !DIGlobalVariable(name: "slot0", scope: !147, file: !175, line: 834, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 256)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "slotvec", scope: !147, file: !175, line: 837, type: !200, isLocal: true, isDefinition: true)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !175, line: 826, size: 128, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !201, file: !175, line: 828, baseType: !37, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !201, file: !175, line: 829, baseType: !34, size: 64, offset: 64)
!205 = !DIGlobalVariableExpression(var: !206)
!206 = distinct !DIGlobalVariable(name: "nslots", scope: !147, file: !175, line: 835, type: !93, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "slotvec0", scope: !147, file: !175, line: 836, type: !201, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 704, elements: !211)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!211 = !{!212}
!212 = !DISubrange(count: 11)
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !215, file: !218, line: 26, type: !219, isLocal: false, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !217)
!216 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!217 = !{!213}
!218 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 376, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 47)
!222 = !DIGlobalVariableExpression(var: !223)
!223 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !224, file: !225, line: 335, type: !93, isLocal: true, isDefinition: true)
!224 = distinct !DISubprogram(name: "rpl_fcntl", scope: !225, file: !225, line: 272, type: !226, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !228, variables: !231)
!225 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!226 = !DISubroutineType(types: !227)
!227 = !{!93, !93, !93, null}
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, globals: !230)
!229 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!230 = !{!222}
!231 = !{!232, !233, !234, !247, !248, !251, !254, !257}
!232 = !DILocalVariable(name: "fd", arg: 1, scope: !224, file: !225, line: 272, type: !93)
!233 = !DILocalVariable(name: "action", arg: 2, scope: !224, file: !225, line: 272, type: !93)
!234 = !DILocalVariable(name: "arg", scope: !224, file: !225, line: 274, type: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !236, line: 30, baseType: !237)
!236 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !229, line: 274, baseType: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 192, elements: !245)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !229, line: 274, size: 192, elements: !240)
!240 = !{!241, !242, !243, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !239, file: !229, line: 274, baseType: !188, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !239, file: !229, line: 274, baseType: !188, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !239, file: !229, line: 274, baseType: !36, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !239, file: !229, line: 274, baseType: !36, size: 64, offset: 128)
!245 = !{!246}
!246 = !DISubrange(count: 1)
!247 = !DILocalVariable(name: "result", scope: !224, file: !225, line: 275, type: !93)
!248 = !DILocalVariable(name: "target", scope: !249, file: !225, line: 322, type: !93)
!249 = distinct !DILexicalBlock(scope: !250, file: !225, line: 321, column: 7)
!250 = distinct !DILexicalBlock(scope: !224, file: !225, line: 278, column: 5)
!251 = !DILocalVariable(name: "flags", scope: !252, file: !225, line: 359, type: !93)
!252 = distinct !DILexicalBlock(scope: !253, file: !225, line: 358, column: 11)
!253 = distinct !DILexicalBlock(scope: !249, file: !225, line: 357, column: 13)
!254 = !DILocalVariable(name: "saved_errno", scope: !255, file: !225, line: 362, type: !93)
!255 = distinct !DILexicalBlock(scope: !256, file: !225, line: 361, column: 15)
!256 = distinct !DILexicalBlock(scope: !252, file: !225, line: 360, column: 17)
!257 = !DILocalVariable(name: "p", scope: !258, file: !225, line: 404, type: !36)
!258 = distinct !DILexicalBlock(scope: !250, file: !225, line: 402, column: 7)
!259 = !DIGlobalVariableExpression(var: !260)
!260 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !261, file: !605, line: 120, type: !606, isLocal: true, isDefinition: true)
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !263, retainedTypes: !602, globals: !604)
!262 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!263 = !{!264}
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 41, size: 32, elements: !266)
!265 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!267 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!268 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!269 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!270 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!271 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!272 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!273 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!274 = !DIEnumerator(name: "DAY_1", value: 131079)
!275 = !DIEnumerator(name: "DAY_2", value: 131080)
!276 = !DIEnumerator(name: "DAY_3", value: 131081)
!277 = !DIEnumerator(name: "DAY_4", value: 131082)
!278 = !DIEnumerator(name: "DAY_5", value: 131083)
!279 = !DIEnumerator(name: "DAY_6", value: 131084)
!280 = !DIEnumerator(name: "DAY_7", value: 131085)
!281 = !DIEnumerator(name: "ABMON_1", value: 131086)
!282 = !DIEnumerator(name: "ABMON_2", value: 131087)
!283 = !DIEnumerator(name: "ABMON_3", value: 131088)
!284 = !DIEnumerator(name: "ABMON_4", value: 131089)
!285 = !DIEnumerator(name: "ABMON_5", value: 131090)
!286 = !DIEnumerator(name: "ABMON_6", value: 131091)
!287 = !DIEnumerator(name: "ABMON_7", value: 131092)
!288 = !DIEnumerator(name: "ABMON_8", value: 131093)
!289 = !DIEnumerator(name: "ABMON_9", value: 131094)
!290 = !DIEnumerator(name: "ABMON_10", value: 131095)
!291 = !DIEnumerator(name: "ABMON_11", value: 131096)
!292 = !DIEnumerator(name: "ABMON_12", value: 131097)
!293 = !DIEnumerator(name: "MON_1", value: 131098)
!294 = !DIEnumerator(name: "MON_2", value: 131099)
!295 = !DIEnumerator(name: "MON_3", value: 131100)
!296 = !DIEnumerator(name: "MON_4", value: 131101)
!297 = !DIEnumerator(name: "MON_5", value: 131102)
!298 = !DIEnumerator(name: "MON_6", value: 131103)
!299 = !DIEnumerator(name: "MON_7", value: 131104)
!300 = !DIEnumerator(name: "MON_8", value: 131105)
!301 = !DIEnumerator(name: "MON_9", value: 131106)
!302 = !DIEnumerator(name: "MON_10", value: 131107)
!303 = !DIEnumerator(name: "MON_11", value: 131108)
!304 = !DIEnumerator(name: "MON_12", value: 131109)
!305 = !DIEnumerator(name: "AM_STR", value: 131110)
!306 = !DIEnumerator(name: "PM_STR", value: 131111)
!307 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!308 = !DIEnumerator(name: "D_FMT", value: 131113)
!309 = !DIEnumerator(name: "T_FMT", value: 131114)
!310 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!311 = !DIEnumerator(name: "ERA", value: 131116)
!312 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!313 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!314 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!315 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!316 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!317 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!318 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!319 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!320 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!321 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!322 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!323 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!324 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!325 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!326 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!327 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!328 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!329 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!330 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!331 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!332 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!333 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!334 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!335 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!336 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!337 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!338 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!339 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!340 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!341 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!342 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!343 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!344 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!345 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!346 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!347 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!348 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!349 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!350 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!351 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!352 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!353 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!354 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!355 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!356 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!357 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!358 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!359 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!360 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!361 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!362 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!363 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!364 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!365 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!366 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!367 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!368 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!369 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!370 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!371 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!372 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!373 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!374 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!375 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!376 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!377 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!378 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!379 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!380 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!381 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!382 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!383 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!384 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!385 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!386 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!387 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!388 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!389 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!390 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!391 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!392 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!393 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!394 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!395 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!396 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!397 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!398 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!399 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!400 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!401 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!402 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!403 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!404 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!405 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!406 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!407 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!408 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!409 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!410 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!411 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!412 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!413 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!414 = !DIEnumerator(name: "CODESET", value: 14)
!415 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!416 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!417 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!418 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!470 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!471 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!486 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!487 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!488 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!489 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!490 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!491 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!492 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!493 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!494 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!495 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!496 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!497 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!498 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!499 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!500 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!501 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!502 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!503 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!504 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!505 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!506 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!507 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!508 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!525 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!526 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!529 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!530 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!531 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!532 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!533 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!534 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!535 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!536 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!537 = !DIEnumerator(name: "THOUSEP", value: 65537)
!538 = !DIEnumerator(name: "__GROUPING", value: 65538)
!539 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!540 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!541 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!542 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!543 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!544 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!545 = !DIEnumerator(name: "__YESSTR", value: 327682)
!546 = !DIEnumerator(name: "__NOSTR", value: 327683)
!547 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!548 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!549 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!550 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!551 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!552 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!553 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!554 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!555 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!556 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!557 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!558 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!559 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!560 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!561 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!563 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!564 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!566 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!567 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!568 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!569 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!570 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!571 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!572 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!573 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!574 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!575 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!576 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!577 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!578 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!579 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!580 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!581 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!582 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!583 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!600 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!601 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!602 = !{!36, !34, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!604 = !{!259}
!605 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !609)
!608 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = !{!24}
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!611 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !614)
!613 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!614 = !{!37, !40, !42, !45}
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !617)
!616 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !619, line: 136, baseType: !620)
!619 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !621, line: 62, baseType: !39)
!621 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !624)
!623 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = !{!603}
!625 = distinct !DICompileUnit(language: DW_LANG_C99, file: !626, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!626 = !DIFile(filename: "./lib/memcmp2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!628 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = distinct !DICompileUnit(language: DW_LANG_C99, file: !630, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !631, retainedTypes: !636)
!630 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!631 = !{!632}
!632 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !633, line: 41, size: 32, elements: !634)
!633 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!634 = !{!635}
!635 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!636 = !{!36}
!637 = distinct !DICompileUnit(language: DW_LANG_C99, file: !638, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !639, retainedTypes: !653)
!638 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = !{!640}
!640 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !642, file: !641, line: 192, size: 32, elements: !651)
!641 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!642 = distinct !DISubprogram(name: "x2nrealloc", scope: !641, file: !641, line: 180, type: !643, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !646)
!643 = !DISubroutineType(types: !644)
!644 = !{!36, !36, !645, !37}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!646 = !{!647, !648, !649, !650}
!647 = !DILocalVariable(name: "p", arg: 1, scope: !642, file: !641, line: 180, type: !36)
!648 = !DILocalVariable(name: "pn", arg: 2, scope: !642, file: !641, line: 180, type: !645)
!649 = !DILocalVariable(name: "s", arg: 3, scope: !642, file: !641, line: 180, type: !37)
!650 = !DILocalVariable(name: "n", scope: !642, file: !641, line: 182, type: !37)
!651 = !{!652}
!652 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!653 = !{!37, !34, !36}
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!655 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !658)
!657 = !DIFile(filename: "./lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!658 = !{!10}
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !636)
!660 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!662 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !636)
!664 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!665 = distinct !DICompileUnit(language: DW_LANG_C99, file: !666, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !636)
!666 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!667 = distinct !DICompileUnit(language: DW_LANG_C99, file: !668, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !669)
!668 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = !{!37}
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!671 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !121)
!673 = !DIFile(filename: "./lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!675 = !{i32 2, !"Dwarf Version", i32 4}
!676 = !{i32 2, !"Debug Info Version", i32 3}
!677 = !{i32 1, !"PIC Level", i32 2}
!678 = !{i32 1, !"PIE Level", i32 2}
!679 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 106, type: !680, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !93}
!682 = !{!683}
!683 = !DILocalVariable(name: "status", arg: 1, scope: !679, file: !3, line: 106, type: !93)
!684 = !DIExpression()
!685 = !DILocation(line: 106, column: 12, scope: !679)
!686 = !DILocation(line: 108, column: 14, scope: !687)
!687 = distinct !DILexicalBlock(scope: !679, file: !3, line: 108, column: 7)
!688 = !DILocation(line: 108, column: 7, scope: !679)
!689 = !DILocation(line: 109, column: 5, scope: !690)
!690 = !DILexicalBlockFile(scope: !691, file: !3, discriminator: 1)
!691 = distinct !DILexicalBlock(scope: !687, file: !3, line: 109, column: 5)
!692 = !{!693, !693, i64 0}
!693 = !{!"any pointer", !694, i64 0}
!694 = !{!"omnipotent char", !695, i64 0}
!695 = !{!"Simple C/C++ TBAA"}
!696 = !DILocation(line: 109, column: 5, scope: !697)
!697 = !DILexicalBlockFile(scope: !691, file: !3, discriminator: 3)
!698 = !DILocation(line: 109, column: 5, scope: !699)
!699 = !DILexicalBlockFile(scope: !691, file: !3, discriminator: 2)
!700 = !DILocation(line: 112, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !687, file: !3, line: 111, column: 5)
!702 = !DILocation(line: 112, column: 7, scope: !703)
!703 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 1)
!704 = !DILocation(line: 116, column: 7, scope: !701)
!705 = !DILocation(line: 116, column: 7, scope: !703)
!706 = !DILocation(line: 119, column: 7, scope: !701)
!707 = !DILocation(line: 119, column: 7, scope: !703)
!708 = !DILocation(line: 123, column: 7, scope: !701)
!709 = !DILocation(line: 123, column: 7, scope: !703)
!710 = !DILocation(line: 129, column: 7, scope: !701)
!711 = !DILocation(line: 129, column: 7, scope: !703)
!712 = !DILocation(line: 135, column: 7, scope: !701)
!713 = !DILocation(line: 135, column: 7, scope: !703)
!714 = !DILocation(line: 141, column: 7, scope: !701)
!715 = !DILocation(line: 141, column: 7, scope: !703)
!716 = !DILocation(line: 144, column: 7, scope: !701)
!717 = !DILocation(line: 144, column: 7, scope: !703)
!718 = !DILocation(line: 147, column: 7, scope: !701)
!719 = !DILocation(line: 147, column: 7, scope: !703)
!720 = !DILocation(line: 150, column: 7, scope: !701)
!721 = !DILocation(line: 150, column: 7, scope: !703)
!722 = !DILocation(line: 151, column: 7, scope: !701)
!723 = !DILocation(line: 151, column: 7, scope: !703)
!724 = !DILocation(line: 152, column: 7, scope: !701)
!725 = !DILocation(line: 152, column: 7, scope: !703)
!726 = !DILocation(line: 156, column: 7, scope: !701)
!727 = !DILocation(line: 156, column: 7, scope: !703)
!728 = !DILocation(line: 642, column: 15, scope: !68, inlinedAt: !729)
!729 = distinct !DILocation(line: 163, column: 7, scope: !701)
!730 = !DILocation(line: 651, column: 3, scope: !68, inlinedAt: !729)
!731 = !DILocation(line: 651, column: 3, scope: !732, inlinedAt: !729)
!732 = !DILexicalBlockFile(scope: !68, file: !69, discriminator: 1)
!733 = !DILocation(line: 655, column: 29, scope: !68, inlinedAt: !729)
!734 = !DILocation(line: 655, column: 15, scope: !68, inlinedAt: !729)
!735 = !DILocation(line: 656, column: 7, scope: !88, inlinedAt: !729)
!736 = !DILocation(line: 656, column: 19, scope: !88, inlinedAt: !729)
!737 = !DILocation(line: 656, column: 22, scope: !738, inlinedAt: !729)
!738 = !DILexicalBlockFile(scope: !88, file: !69, discriminator: 16)
!739 = !DILocation(line: 656, column: 7, scope: !740, inlinedAt: !729)
!740 = !DILexicalBlockFile(scope: !68, file: !69, discriminator: 16)
!741 = !DILocation(line: 662, column: 7, scope: !742, inlinedAt: !729)
!742 = distinct !DILexicalBlock(scope: !88, file: !69, line: 657, column: 5)
!743 = !DILocation(line: 662, column: 7, scope: !744, inlinedAt: !729)
!744 = !DILexicalBlockFile(scope: !742, file: !69, discriminator: 1)
!745 = !DILocation(line: 664, column: 5, scope: !742, inlinedAt: !729)
!746 = !DILocation(line: 665, column: 3, scope: !68, inlinedAt: !729)
!747 = !DILocation(line: 665, column: 3, scope: !732, inlinedAt: !729)
!748 = !DILocation(line: 667, column: 3, scope: !68, inlinedAt: !729)
!749 = !DILocation(line: 667, column: 3, scope: !732, inlinedAt: !729)
!750 = !DILocation(line: 165, column: 3, scope: !679)
!751 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 407, type: !752, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !755)
!752 = !DISubroutineType(types: !753)
!753 = !{!93, !93, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!755 = !{!756, !757, !758, !759, !763}
!756 = !DILocalVariable(name: "argc", arg: 1, scope: !751, file: !3, line: 407, type: !93)
!757 = !DILocalVariable(name: "argv", arg: 2, scope: !751, file: !3, line: 407, type: !754)
!758 = !DILocalVariable(name: "c", scope: !751, file: !3, line: 409, type: !93)
!759 = !DILocalVariable(name: "__s1_len", scope: !760, file: !3, line: 457, type: !37)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 457, column: 29)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 457, column: 13)
!762 = distinct !DILexicalBlock(scope: !751, file: !3, line: 431, column: 7)
!763 = !DILocalVariable(name: "__s2_len", scope: !760, file: !3, line: 457, type: !37)
!764 = !DILocalVariable(name: "lba", scope: !765, file: !3, line: 257, type: !872)
!765 = distinct !DISubprogram(name: "compare_files", scope: !3, file: !3, line: 254, type: !766, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !754}
!768 = !{!769, !764, !770, !779, !783, !787, !841, !844, !845, !846, !851, !852, !854, !855, !857, !858, !864, !870, !871}
!769 = !DILocalVariable(name: "infiles", arg: 1, scope: !765, file: !3, line: 254, type: !754)
!770 = !DILocalVariable(name: "thisline", scope: !765, file: !3, line: 261, type: !771)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 128, elements: !60)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !774, line: 26, size: 192, elements: !775)
!774 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!775 = !{!776, !777, !778}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !773, file: !774, line: 28, baseType: !37, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !773, file: !774, line: 29, baseType: !37, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !773, file: !774, line: 30, baseType: !34, size: 64, offset: 128)
!779 = !DILocalVariable(name: "all_line", scope: !765, file: !3, line: 266, type: !780)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 512, elements: !781)
!781 = !{!61, !782}
!782 = !DISubrange(count: 4)
!783 = !DILocalVariable(name: "alt", scope: !765, file: !3, line: 269, type: !784)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !785)
!785 = !{!61, !786}
!786 = !DISubrange(count: 3)
!787 = !DILocalVariable(name: "streams", scope: !765, file: !3, line: 272, type: !788)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 128, elements: !60)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !792)
!791 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !794)
!793 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !815, !816, !817, !818, !821, !822, !824, !826, !829, !831, !832, !833, !834, !835, !836, !837}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !792, file: !793, line: 242, baseType: !93, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !792, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !792, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !792, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !792, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !792, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !792, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !792, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !792, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !792, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !792, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !792, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !792, file: !793, line: 260, baseType: !808, size: 64, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !810)
!810 = !{!811, !812, !814}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !809, file: !793, line: 157, baseType: !808, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !809, file: !793, line: 158, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !809, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !792, file: !793, line: 262, baseType: !813, size: 64, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !792, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !792, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !792, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !621, line: 140, baseType: !820)
!820 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !792, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !792, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!823 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !792, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, elements: !245)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !792, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !793, line: 150, baseType: null)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !792, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !621, line: 141, baseType: !820)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !792, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !792, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !792, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !792, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !792, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !792, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !792, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 20)
!841 = !DILocalVariable(name: "total", scope: !765, file: !3, line: 275, type: !842)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 192, elements: !843)
!843 = !{!786}
!844 = !DILocalVariable(name: "i", scope: !765, file: !3, line: 277, type: !93)
!845 = !DILocalVariable(name: "j", scope: !765, file: !3, line: 277, type: !93)
!846 = !DILocalVariable(name: "__s1_len", scope: !847, file: !3, line: 290, type: !37)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 290, column: 21)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 281, column: 5)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 280, column: 3)
!850 = distinct !DILexicalBlock(scope: !765, file: !3, line: 280, column: 3)
!851 = !DILocalVariable(name: "__s2_len", scope: !847, file: !3, line: 290, type: !37)
!852 = !DILocalVariable(name: "__s2", scope: !853, file: !3, line: 290, type: !42)
!853 = distinct !DILexicalBlock(scope: !847, file: !3, line: 290, column: 21)
!854 = !DILocalVariable(name: "__result", scope: !853, file: !3, line: 290, type: !93)
!855 = !DILocalVariable(name: "order", scope: !856, file: !3, line: 304, type: !93)
!856 = distinct !DILexicalBlock(scope: !765, file: !3, line: 303, column: 5)
!857 = !DILocalVariable(name: "fill_up", scope: !856, file: !3, line: 305, type: !59)
!858 = !DILocalVariable(name: "len", scope: !859, file: !3, line: 320, type: !37)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 319, column: 13)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 315, column: 15)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 314, column: 9)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 311, column: 16)
!863 = distinct !DILexicalBlock(scope: !856, file: !3, line: 309, column: 11)
!864 = !DILocalVariable(name: "buf1", scope: !865, file: !3, line: 395, type: !867)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 393, column: 5)
!866 = distinct !DILexicalBlock(scope: !765, file: !3, line: 392, column: 7)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 168, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 21)
!870 = !DILocalVariable(name: "buf2", scope: !865, file: !3, line: 396, type: !867)
!871 = !DILocalVariable(name: "buf3", scope: !865, file: !3, line: 397, type: !867)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 1536, elements: !781)
!873 = !DILocation(line: 257, column: 21, scope: !765, inlinedAt: !874)
!874 = distinct !DILocation(line: 493, column: 3, scope: !751)
!875 = !DILocation(line: 266, column: 22, scope: !765, inlinedAt: !874)
!876 = !DILocation(line: 395, column: 12, scope: !865, inlinedAt: !874)
!877 = !DILocation(line: 396, column: 12, scope: !865, inlinedAt: !874)
!878 = !DILocation(line: 397, column: 12, scope: !865, inlinedAt: !874)
!879 = !DILocation(line: 407, column: 11, scope: !751)
!880 = !DILocation(line: 407, column: 24, scope: !751)
!881 = !DILocation(line: 412, column: 21, scope: !751)
!882 = !DILocation(line: 412, column: 3, scope: !751)
!883 = !DILocation(line: 413, column: 3, scope: !751)
!884 = !DILocation(line: 414, column: 3, scope: !751)
!885 = !DILocation(line: 415, column: 3, scope: !751)
!886 = !DILocation(line: 416, column: 21, scope: !751)
!887 = !DILocation(line: 416, column: 19, scope: !751)
!888 = !{!889, !889, i64 0}
!889 = !{!"_Bool", !694, i64 0}
!890 = !DILocation(line: 418, column: 3, scope: !751)
!891 = !DILocation(line: 425, column: 59, scope: !751)
!892 = !DILocation(line: 425, column: 30, scope: !751)
!893 = !DILocation(line: 426, column: 21, scope: !751)
!894 = !{!694, !694, i64 0}
!895 = !DILocation(line: 429, column: 3, scope: !751)
!896 = !DILocation(line: 429, column: 15, scope: !897)
!897 = !DILexicalBlockFile(scope: !751, file: !3, discriminator: 1)
!898 = !DILocation(line: 409, column: 7, scope: !751)
!899 = !DILocation(line: 429, column: 3, scope: !897)
!900 = !DILocation(line: 434, column: 9, scope: !762)
!901 = !DILocation(line: 438, column: 9, scope: !762)
!902 = !DILocation(line: 442, column: 9, scope: !762)
!903 = !DILocation(line: 446, column: 9, scope: !762)
!904 = !DILocation(line: 449, column: 27, scope: !762)
!905 = !DILocation(line: 450, column: 9, scope: !762)
!906 = !DILocation(line: 453, column: 27, scope: !762)
!907 = !DILocation(line: 454, column: 9, scope: !762)
!908 = !DILocation(line: 457, column: 13, scope: !761)
!909 = !{!910, !910, i64 0}
!910 = !{!"long", !694, i64 0}
!911 = !DILocation(line: 457, column: 25, scope: !761)
!912 = !DILocation(line: 457, column: 29, scope: !913)
!913 = !DILexicalBlockFile(scope: !760, file: !3, discriminator: 1)
!914 = !DILocation(line: 457, column: 29, scope: !915)
!915 = !DILexicalBlockFile(scope: !761, file: !3, discriminator: 1)
!916 = !DILocation(line: 457, column: 13, scope: !917)
!917 = !DILexicalBlockFile(scope: !762, file: !3, discriminator: 1)
!918 = !DILocation(line: 458, column: 11, scope: !761)
!919 = !DILocation(line: 458, column: 11, scope: !915)
!920 = !DILocation(line: 459, column: 19, scope: !762)
!921 = !DILocation(line: 459, column: 17, scope: !762)
!922 = !DILocation(line: 460, column: 24, scope: !762)
!923 = !DILocation(line: 460, column: 23, scope: !762)
!924 = !DILocation(line: 460, column: 33, scope: !917)
!925 = !DILocation(line: 460, column: 23, scope: !917)
!926 = !DILocation(line: 460, column: 23, scope: !927)
!927 = !DILexicalBlockFile(scope: !762, file: !3, discriminator: 3)
!928 = !DILocation(line: 460, column: 21, scope: !927)
!929 = !DILocation(line: 461, column: 9, scope: !762)
!930 = !DILocation(line: 465, column: 9, scope: !762)
!931 = distinct !{!931, !895, !932}
!932 = !DILocation(line: 473, column: 7, scope: !751)
!933 = !DILocation(line: 467, column: 7, scope: !762)
!934 = !DILocation(line: 469, column: 7, scope: !762)
!935 = !DILocation(line: 469, column: 7, scope: !917)
!936 = !DILocation(line: 472, column: 9, scope: !762)
!937 = !DILocation(line: 475, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !751, file: !3, line: 475, column: 7)
!939 = !DILocation(line: 475, column: 7, scope: !751)
!940 = !DILocation(line: 476, column: 17, scope: !938)
!941 = !DILocation(line: 476, column: 5, scope: !938)
!942 = !DILocation(line: 478, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !751, file: !3, line: 478, column: 7)
!944 = !{!945, !945, i64 0}
!945 = !{!"int", !694, i64 0}
!946 = !DILocation(line: 478, column: 12, scope: !943)
!947 = !DILocation(line: 478, column: 21, scope: !943)
!948 = !DILocation(line: 478, column: 7, scope: !751)
!949 = !DILocation(line: 480, column: 16, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 480, column: 11)
!951 = distinct !DILexicalBlock(scope: !943, file: !3, line: 479, column: 5)
!952 = !DILocation(line: 480, column: 11, scope: !951)
!953 = !DILocation(line: 481, column: 22, scope: !950)
!954 = !DILocation(line: 481, column: 9, scope: !955)
!955 = !DILexicalBlockFile(scope: !950, file: !3, discriminator: 1)
!956 = !DILocation(line: 481, column: 9, scope: !950)
!957 = !DILocation(line: 483, column: 22, scope: !950)
!958 = !DILocation(line: 483, column: 70, scope: !950)
!959 = !DILocation(line: 483, column: 60, scope: !950)
!960 = !DILocation(line: 483, column: 53, scope: !955)
!961 = !DILocation(line: 483, column: 9, scope: !962)
!962 = !DILexicalBlockFile(scope: !950, file: !3, discriminator: 2)
!963 = !DILocation(line: 484, column: 7, scope: !951)
!964 = !DILocation(line: 487, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !751, file: !3, line: 487, column: 7)
!966 = !DILocation(line: 487, column: 7, scope: !751)
!967 = !DILocation(line: 489, column: 20, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 488, column: 5)
!969 = !DILocation(line: 489, column: 55, scope: !968)
!970 = !DILocation(line: 489, column: 62, scope: !968)
!971 = !DILocation(line: 489, column: 50, scope: !968)
!972 = !DILocation(line: 489, column: 43, scope: !973)
!973 = !DILexicalBlockFile(scope: !968, file: !3, discriminator: 1)
!974 = !DILocation(line: 489, column: 7, scope: !975)
!975 = !DILexicalBlockFile(scope: !968, file: !3, discriminator: 2)
!976 = !DILocation(line: 490, column: 7, scope: !968)
!977 = !DILocation(line: 493, column: 23, scope: !751)
!978 = !DILocation(line: 254, column: 23, scope: !765, inlinedAt: !874)
!979 = !DILocation(line: 257, column: 3, scope: !765, inlinedAt: !874)
!980 = !DILocation(line: 266, column: 3, scope: !765, inlinedAt: !874)
!981 = !DILocation(line: 275, column: 13, scope: !765, inlinedAt: !874)
!982 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!983 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!984 = !DIExpression(DW_OP_LLVM_fragment, 128, 64)
!985 = !DILocation(line: 277, column: 7, scope: !765, inlinedAt: !874)
!986 = !DILocation(line: 277, column: 10, scope: !765, inlinedAt: !874)
!987 = !DILocation(line: 284, column: 24, scope: !988, inlinedAt: !874)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 283, column: 9)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 282, column: 7)
!990 = distinct !DILexicalBlock(scope: !848, file: !3, line: 282, column: 7)
!991 = !DILocation(line: 284, column: 11, scope: !988, inlinedAt: !874)
!992 = !DILocation(line: 285, column: 11, scope: !988, inlinedAt: !874)
!993 = !DILocation(line: 285, column: 26, scope: !988, inlinedAt: !874)
!994 = !DILocation(line: 290, column: 21, scope: !847, inlinedAt: !874)
!995 = !DILocation(line: 290, column: 21, scope: !996, inlinedAt: !874)
!996 = !DILexicalBlockFile(scope: !853, file: !3, discriminator: 2)
!997 = !DILocation(line: 290, column: 21, scope: !853, inlinedAt: !874)
!998 = !DILocation(line: 290, column: 21, scope: !999, inlinedAt: !874)
!999 = !DILexicalBlockFile(scope: !1000, file: !3, discriminator: 3)
!1000 = distinct !DILexicalBlock(scope: !853, file: !3, line: 290, column: 21)
!1001 = !DILocation(line: 290, column: 21, scope: !1002, inlinedAt: !874)
!1002 = !DILexicalBlockFile(scope: !1000, file: !3, discriminator: 2)
!1003 = !DILocation(line: 290, column: 21, scope: !1004, inlinedAt: !874)
!1004 = !DILexicalBlockFile(scope: !1005, file: !3, discriminator: 4)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 290, column: 21)
!1006 = !DILocation(line: 290, column: 21, scope: !1007, inlinedAt: !874)
!1007 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 13)
!1008 = !DILocation(line: 290, column: 47, scope: !1009, inlinedAt: !874)
!1009 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 14)
!1010 = !DILocation(line: 290, column: 21, scope: !1009, inlinedAt: !874)
!1011 = !DILocation(line: 290, column: 55, scope: !1012, inlinedAt: !874)
!1012 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 15)
!1013 = !DILocation(line: 290, column: 21, scope: !1012, inlinedAt: !874)
!1014 = !DILocation(line: 290, column: 21, scope: !1015, inlinedAt: !874)
!1015 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 16)
!1016 = !DILocation(line: 291, column: 12, scope: !1017, inlinedAt: !874)
!1017 = distinct !DILexicalBlock(scope: !848, file: !3, line: 291, column: 11)
!1018 = !DILocation(line: 291, column: 11, scope: !848, inlinedAt: !874)
!1019 = !DILocation(line: 292, column: 9, scope: !1017, inlinedAt: !874)
!1020 = !DILocation(line: 292, column: 9, scope: !1021, inlinedAt: !874)
!1021 = !DILexicalBlockFile(scope: !1017, file: !3, discriminator: 1)
!1022 = !DILocation(line: 292, column: 9, scope: !1023, inlinedAt: !874)
!1023 = !DILexicalBlockFile(scope: !1017, file: !3, discriminator: 2)
!1024 = !DILocation(line: 294, column: 7, scope: !848, inlinedAt: !874)
!1025 = !DILocation(line: 296, column: 21, scope: !848, inlinedAt: !874)
!1026 = !DILocalVariable(name: "__stream", arg: 1, scope: !1027, file: !1028, line: 132, type: !789)
!1027 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1028, file: !1028, line: 132, type: !1029, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1031)
!1028 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!93, !789}
!1031 = !{!1026}
!1032 = !DILocation(line: 132, column: 1, scope: !1027, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 298, column: 11, scope: !1034, inlinedAt: !874)
!1034 = distinct !DILexicalBlock(scope: !848, file: !3, line: 298, column: 11)
!1035 = !DILocation(line: 134, column: 10, scope: !1027, inlinedAt: !1033)
!1036 = !{!1037, !945, i64 0}
!1037 = !{!"_IO_FILE", !945, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !945, i64 112, !945, i64 116, !910, i64 120, !1038, i64 128, !694, i64 130, !694, i64 131, !693, i64 136, !910, i64 144, !693, i64 152, !693, i64 160, !693, i64 168, !693, i64 176, !910, i64 184, !945, i64 192, !694, i64 196}
!1038 = !{!"short", !694, i64 0}
!1039 = !DILocation(line: 298, column: 11, scope: !1034, inlinedAt: !874)
!1040 = !DILocation(line: 298, column: 11, scope: !848, inlinedAt: !874)
!1041 = !DILocation(line: 299, column: 9, scope: !1034, inlinedAt: !874)
!1042 = !DILocation(line: 299, column: 9, scope: !1043, inlinedAt: !874)
!1043 = !DILexicalBlockFile(scope: !1034, file: !3, discriminator: 1)
!1044 = !DILocation(line: 299, column: 9, scope: !1045, inlinedAt: !874)
!1045 = !DILexicalBlockFile(scope: !1034, file: !3, discriminator: 2)
!1046 = !DILocation(line: 389, column: 9, scope: !1047, inlinedAt: !874)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 389, column: 9)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 388, column: 3)
!1049 = distinct !DILexicalBlock(scope: !765, file: !3, line: 388, column: 3)
!1050 = !DILocation(line: 389, column: 29, scope: !1047, inlinedAt: !874)
!1051 = !DILocation(line: 389, column: 9, scope: !1048, inlinedAt: !874)
!1052 = !DILocation(line: 365, column: 25, scope: !1053, inlinedAt: !874)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 362, column: 11)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 361, column: 13)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 360, column: 7)
!1056 = distinct !DILexicalBlock(scope: !856, file: !3, line: 360, column: 7)
!1057 = !DILocation(line: 364, column: 25, scope: !1053, inlinedAt: !874)
!1058 = !DILocation(line: 349, column: 26, scope: !1059, inlinedAt: !874)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 346, column: 13)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 339, column: 15)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 337, column: 9)
!1062 = distinct !DILexicalBlock(scope: !856, file: !3, line: 330, column: 11)
!1063 = !DILocation(line: 343, column: 26, scope: !1064, inlinedAt: !874)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 340, column: 13)
!1065 = !DILocation(line: 305, column: 12, scope: !856, inlinedAt: !874)
!1066 = !DILocation(line: 309, column: 12, scope: !863, inlinedAt: !874)
!1067 = !DILocation(line: 309, column: 11, scope: !856, inlinedAt: !874)
!1068 = !DILocation(line: 339, column: 15, scope: !1061, inlinedAt: !874)
!1069 = !DILocation(line: 311, column: 17, scope: !862, inlinedAt: !874)
!1070 = !DILocation(line: 311, column: 16, scope: !863, inlinedAt: !874)
!1071 = !DILocation(line: 315, column: 15, scope: !860, inlinedAt: !874)
!1072 = !{i8 0, i8 2}
!1073 = !DILocation(line: 315, column: 15, scope: !861, inlinedAt: !874)
!1074 = !DILocation(line: 316, column: 44, scope: !860, inlinedAt: !874)
!1075 = !{!1076, !693, i64 16}
!1076 = !{!"linebuffer", !910, i64 0, !910, i64 8, !693, i64 16}
!1077 = !DILocation(line: 316, column: 65, scope: !860, inlinedAt: !874)
!1078 = !{!1076, !910, i64 8}
!1079 = !DILocation(line: 316, column: 72, scope: !860, inlinedAt: !874)
!1080 = !DILocation(line: 317, column: 44, scope: !860, inlinedAt: !874)
!1081 = !DILocation(line: 317, column: 65, scope: !860, inlinedAt: !874)
!1082 = !DILocation(line: 317, column: 72, scope: !860, inlinedAt: !874)
!1083 = !DILocation(line: 316, column: 21, scope: !860, inlinedAt: !874)
!1084 = !DILocation(line: 304, column: 11, scope: !856, inlinedAt: !874)
!1085 = !DILocation(line: 316, column: 13, scope: !860, inlinedAt: !874)
!1086 = !DILocation(line: 320, column: 28, scope: !859, inlinedAt: !874)
!1087 = !DILocation(line: 320, column: 75, scope: !1088, inlinedAt: !874)
!1088 = !DILexicalBlockFile(scope: !859, file: !3, discriminator: 3)
!1089 = !DILocation(line: 320, column: 22, scope: !859, inlinedAt: !874)
!1090 = !DILocation(line: 321, column: 44, scope: !859, inlinedAt: !874)
!1091 = !DILocation(line: 321, column: 65, scope: !859, inlinedAt: !874)
!1092 = !DILocation(line: 321, column: 23, scope: !859, inlinedAt: !874)
!1093 = !DILocation(line: 322, column: 25, scope: !1094, inlinedAt: !874)
!1094 = distinct !DILexicalBlock(scope: !859, file: !3, line: 322, column: 19)
!1095 = !DILocation(line: 322, column: 19, scope: !859, inlinedAt: !874)
!1096 = !DILocation(line: 325, column: 48, scope: !1094, inlinedAt: !874)
!1097 = !DILocation(line: 330, column: 17, scope: !1062, inlinedAt: !874)
!1098 = !DILocation(line: 330, column: 11, scope: !856, inlinedAt: !874)
!1099 = !DILocation(line: 333, column: 19, scope: !1100, inlinedAt: !874)
!1100 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 331, column: 9)
!1101 = !DILocation(line: 334, column: 35, scope: !1100, inlinedAt: !874)
!1102 = !DILocalVariable(name: "line", arg: 1, scope: !1103, file: !3, line: 174, type: !1106)
!1103 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 174, type: !1104, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1108)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !1106, !789, !93}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!1108 = !{!1102, !1109, !1110}
!1109 = !DILocalVariable(name: "stream", arg: 2, scope: !1103, file: !3, line: 174, type: !789)
!1110 = !DILocalVariable(name: "class", arg: 3, scope: !1103, file: !3, line: 174, type: !93)
!1111 = !DILocation(line: 174, column: 37, scope: !1103, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 334, column: 11, scope: !1100, inlinedAt: !874)
!1113 = !DILocation(line: 174, column: 49, scope: !1103, inlinedAt: !1112)
!1114 = !DILocation(line: 174, column: 61, scope: !1103, inlinedAt: !1112)
!1115 = !DILocation(line: 191, column: 11, scope: !1116, inlinedAt: !1112)
!1116 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 177, column: 5)
!1117 = !DILocation(line: 193, column: 11, scope: !1116, inlinedAt: !1112)
!1118 = !DILocation(line: 194, column: 9, scope: !1119, inlinedAt: !1112)
!1119 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 193, column: 11)
!1120 = !DILocation(line: 195, column: 11, scope: !1116, inlinedAt: !1112)
!1121 = !DILocation(line: 196, column: 9, scope: !1122, inlinedAt: !1112)
!1122 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 195, column: 11)
!1123 = !DILocation(line: 200, column: 3, scope: !1103, inlinedAt: !1112)
!1124 = !DILocation(line: 201, column: 1, scope: !1103, inlinedAt: !1112)
!1125 = !DILocation(line: 339, column: 21, scope: !1060, inlinedAt: !874)
!1126 = !DILocation(line: 342, column: 23, scope: !1064, inlinedAt: !874)
!1127 = !DILocation(line: 174, column: 37, scope: !1103, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 343, column: 15, scope: !1064, inlinedAt: !874)
!1129 = !DILocation(line: 174, column: 61, scope: !1103, inlinedAt: !1128)
!1130 = !DILocation(line: 179, column: 11, scope: !1116, inlinedAt: !1128)
!1131 = !DILocation(line: 343, column: 39, scope: !1064, inlinedAt: !874)
!1132 = !DILocation(line: 200, column: 3, scope: !1103, inlinedAt: !1128)
!1133 = !DILocation(line: 201, column: 1, scope: !1103, inlinedAt: !1128)
!1134 = !DILocation(line: 348, column: 23, scope: !1059, inlinedAt: !874)
!1135 = !DILocation(line: 349, column: 39, scope: !1059, inlinedAt: !874)
!1136 = !DILocation(line: 174, column: 37, scope: !1103, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 349, column: 15, scope: !1059, inlinedAt: !874)
!1138 = !DILocation(line: 174, column: 49, scope: !1103, inlinedAt: !1137)
!1139 = !DILocation(line: 174, column: 61, scope: !1103, inlinedAt: !1137)
!1140 = !DILocation(line: 184, column: 11, scope: !1116, inlinedAt: !1137)
!1141 = !DILocation(line: 186, column: 11, scope: !1116, inlinedAt: !1137)
!1142 = !DILocation(line: 187, column: 9, scope: !1143, inlinedAt: !1137)
!1143 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 186, column: 11)
!1144 = !DILocation(line: 200, column: 3, scope: !1103, inlinedAt: !1137)
!1145 = !DILocation(line: 201, column: 1, scope: !1103, inlinedAt: !1137)
!1146 = !DILocation(line: 366, column: 36, scope: !1053, inlinedAt: !874)
!1147 = !DILocation(line: 366, column: 41, scope: !1053, inlinedAt: !874)
!1148 = !DILocation(line: 368, column: 49, scope: !1053, inlinedAt: !874)
!1149 = !DILocation(line: 368, column: 27, scope: !1053, inlinedAt: !874)
!1150 = !DILocation(line: 371, column: 17, scope: !1151, inlinedAt: !874)
!1151 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 371, column: 17)
!1152 = !DILocation(line: 371, column: 17, scope: !1053, inlinedAt: !874)
!1153 = !DILocation(line: 372, column: 28, scope: !1151, inlinedAt: !874)
!1154 = !DILocation(line: 372, column: 15, scope: !1151, inlinedAt: !874)
!1155 = !DILocation(line: 377, column: 22, scope: !1156, inlinedAt: !874)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 377, column: 22)
!1157 = !DILocation(line: 377, column: 46, scope: !1156, inlinedAt: !874)
!1158 = !DILocation(line: 377, column: 22, scope: !1151, inlinedAt: !874)
!1159 = !DILocation(line: 379, column: 28, scope: !1156, inlinedAt: !874)
!1160 = !DILocation(line: 378, column: 15, scope: !1156, inlinedAt: !874)
!1161 = !DILocation(line: 132, column: 1, scope: !1027, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 381, column: 17, scope: !1163, inlinedAt: !874)
!1163 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 381, column: 17)
!1164 = !DILocation(line: 134, column: 10, scope: !1027, inlinedAt: !1162)
!1165 = !DILocation(line: 381, column: 17, scope: !1163, inlinedAt: !874)
!1166 = !DILocation(line: 381, column: 17, scope: !1053, inlinedAt: !874)
!1167 = !DILocation(line: 382, column: 15, scope: !1163, inlinedAt: !874)
!1168 = !DILocation(line: 382, column: 15, scope: !1169, inlinedAt: !874)
!1169 = !DILexicalBlockFile(scope: !1163, file: !3, discriminator: 1)
!1170 = !DILocation(line: 382, column: 15, scope: !1171, inlinedAt: !874)
!1171 = !DILexicalBlockFile(scope: !1163, file: !3, discriminator: 2)
!1172 = !DILocation(line: 361, column: 13, scope: !1054, inlinedAt: !874)
!1173 = !DILocation(line: 361, column: 13, scope: !1055, inlinedAt: !874)
!1174 = !DILocation(line: 390, column: 7, scope: !1047, inlinedAt: !874)
!1175 = !DILocation(line: 390, column: 7, scope: !1176, inlinedAt: !874)
!1176 = !DILexicalBlockFile(scope: !1047, file: !3, discriminator: 1)
!1177 = !DILocation(line: 390, column: 7, scope: !1178, inlinedAt: !874)
!1178 = !DILexicalBlockFile(scope: !1047, file: !3, discriminator: 2)
!1179 = !DILocation(line: 395, column: 7, scope: !865, inlinedAt: !874)
!1180 = !DILocation(line: 396, column: 7, scope: !865, inlinedAt: !874)
!1181 = !DILocation(line: 397, column: 7, scope: !865, inlinedAt: !874)
!1182 = !DILocation(line: 398, column: 7, scope: !865, inlinedAt: !874)
!1183 = !DILocation(line: 398, column: 7, scope: !1184, inlinedAt: !874)
!1184 = !DILexicalBlockFile(scope: !865, file: !3, discriminator: 1)
!1185 = !DILocation(line: 398, column: 7, scope: !1186, inlinedAt: !874)
!1186 = !DILexicalBlockFile(scope: !865, file: !3, discriminator: 2)
!1187 = !DILocation(line: 398, column: 7, scope: !1188, inlinedAt: !874)
!1188 = !DILexicalBlockFile(scope: !865, file: !3, discriminator: 3)
!1189 = !DILocation(line: 398, column: 7, scope: !1190, inlinedAt: !874)
!1190 = !DILexicalBlockFile(scope: !865, file: !3, discriminator: 4)
!1191 = !DILocation(line: 403, column: 5, scope: !866, inlinedAt: !874)
!1192 = !DILocation(line: 403, column: 5, scope: !865, inlinedAt: !874)
!1193 = !DILocation(line: 392, column: 7, scope: !765, inlinedAt: !874)
!1194 = !DILocation(line: 302, column: 25, scope: !1195, inlinedAt: !874)
!1195 = !DILexicalBlockFile(scope: !765, file: !3, discriminator: 2)
!1196 = !DILocation(line: 302, column: 10, scope: !1197, inlinedAt: !874)
!1197 = !DILexicalBlockFile(scope: !765, file: !3, discriminator: 1)
!1198 = !DILocation(line: 302, column: 22, scope: !1195, inlinedAt: !874)
!1199 = !DILocation(line: 302, column: 22, scope: !1197, inlinedAt: !874)
!1200 = !DILocation(line: 302, column: 3, scope: !1201, inlinedAt: !874)
!1201 = !DILexicalBlockFile(scope: !765, file: !3, discriminator: 3)
!1202 = distinct !{!1202, !1203, !1204}
!1203 = !DILocation(line: 302, column: 3, scope: !765)
!1204 = !DILocation(line: 386, column: 5, scope: !765)
!1205 = !DILocation(line: 404, column: 1, scope: !765, inlinedAt: !874)
!1206 = !DILocation(line: 495, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !751, file: !3, line: 495, column: 7)
!1208 = !DILocation(line: 495, column: 37, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1207, file: !3, discriminator: 1)
!1210 = !DILocation(line: 495, column: 34, scope: !1207)
!1211 = !DILocation(line: 499, column: 1, scope: !751)
!1212 = distinct !DISubprogram(name: "check_order", scope: !3, file: !3, line: 215, type: !1213, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !1106, !1106, !93}
!1215 = !{!1216, !1217, !1218, !1219}
!1216 = !DILocalVariable(name: "prev", arg: 1, scope: !1212, file: !3, line: 215, type: !1106)
!1217 = !DILocalVariable(name: "current", arg: 2, scope: !1212, file: !3, line: 216, type: !1106)
!1218 = !DILocalVariable(name: "whatfile", arg: 3, scope: !1212, file: !3, line: 217, type: !93)
!1219 = !DILocalVariable(name: "order", scope: !1220, file: !3, line: 225, type: !93)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 224, column: 9)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 223, column: 11)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 222, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 220, column: 7)
!1224 = !DILocation(line: 215, column: 39, scope: !1212)
!1225 = !DILocation(line: 216, column: 39, scope: !1212)
!1226 = !DILocation(line: 217, column: 18, scope: !1212)
!1227 = !DILocation(line: 220, column: 7, scope: !1223)
!1228 = !DILocation(line: 221, column: 7, scope: !1223)
!1229 = !DILocation(line: 220, column: 7, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1212, file: !3, discriminator: 1)
!1231 = !DILocation(line: 223, column: 45, scope: !1221)
!1232 = !DILocation(line: 223, column: 12, scope: !1221)
!1233 = !DILocation(line: 223, column: 11, scope: !1222)
!1234 = !DILocation(line: 227, column: 15, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 227, column: 15)
!1236 = !DILocation(line: 227, column: 15, scope: !1220)
!1237 = !DILocation(line: 228, column: 21, scope: !1235)
!1238 = !DILocation(line: 225, column: 15, scope: !1220)
!1239 = !DILocation(line: 228, column: 13, scope: !1235)
!1240 = !DILocation(line: 231, column: 21, scope: !1235)
!1241 = !DILocation(line: 234, column: 17, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 234, column: 15)
!1243 = !DILocation(line: 234, column: 15, scope: !1220)
!1244 = !DILocation(line: 236, column: 23, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 235, column: 13)
!1246 = !DILocation(line: 236, column: 41, scope: !1245)
!1247 = !DILocation(line: 238, column: 25, scope: !1245)
!1248 = !DILocation(line: 236, column: 15, scope: !1245)
!1249 = !DILocation(line: 242, column: 53, scope: !1245)
!1250 = !DILocation(line: 243, column: 13, scope: !1245)
!1251 = !DILocation(line: 246, column: 1, scope: !1212)
!1252 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !130, file: !130, line: 41, type: !70, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1253)
!1253 = !{!1254}
!1254 = !DILocalVariable(name: "file", arg: 1, scope: !1252, file: !130, line: 41, type: !45)
!1255 = !DILocation(line: 41, column: 41, scope: !1252)
!1256 = !DILocation(line: 43, column: 13, scope: !1252)
!1257 = !DILocation(line: 44, column: 1, scope: !1252)
!1258 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !130, file: !130, line: 78, type: !1259, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !50}
!1261 = !{!1262}
!1262 = !DILocalVariable(name: "ignore", arg: 1, scope: !1258, file: !130, line: 78, type: !50)
!1263 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1264 = !DILocation(line: 78, column: 37, scope: !1258)
!1265 = !DILocation(line: 80, column: 16, scope: !1258)
!1266 = !DILocation(line: 81, column: 1, scope: !1258)
!1267 = distinct !DISubprogram(name: "close_stdout", scope: !130, file: !130, line: 107, type: !1268, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !125, variables: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null}
!1270 = !{!1271}
!1271 = !DILocalVariable(name: "write_error", scope: !1272, file: !130, line: 112, type: !45)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !130, line: 111, column: 5)
!1273 = distinct !DILexicalBlock(scope: !1267, file: !130, line: 109, column: 7)
!1274 = !DILocation(line: 109, column: 21, scope: !1273)
!1275 = !DILocation(line: 109, column: 7, scope: !1273)
!1276 = !DILocation(line: 109, column: 29, scope: !1273)
!1277 = !DILocation(line: 110, column: 7, scope: !1273)
!1278 = !DILocation(line: 110, column: 12, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1273, file: !130, discriminator: 1)
!1280 = !DILocation(line: 114, column: 19, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1272, file: !130, line: 113, column: 11)
!1282 = !DILocation(line: 110, column: 25, scope: !1279)
!1283 = !DILocation(line: 110, column: 28, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1273, file: !130, discriminator: 2)
!1285 = !DILocation(line: 110, column: 34, scope: !1284)
!1286 = !DILocation(line: 109, column: 7, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1267, file: !130, discriminator: 1)
!1288 = !DILocation(line: 112, column: 33, scope: !1272)
!1289 = !DILocation(line: 112, column: 19, scope: !1272)
!1290 = !DILocation(line: 113, column: 11, scope: !1281)
!1291 = !DILocation(line: 113, column: 11, scope: !1272)
!1292 = !DILocation(line: 114, column: 36, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1281, file: !130, discriminator: 1)
!1294 = !DILocation(line: 114, column: 9, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1281, file: !130, discriminator: 2)
!1296 = !DILocation(line: 114, column: 9, scope: !1281)
!1297 = !DILocation(line: 117, column: 9, scope: !1293)
!1298 = !DILocation(line: 119, column: 14, scope: !1272)
!1299 = !DILocation(line: 119, column: 7, scope: !1272)
!1300 = !DILocation(line: 122, column: 22, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1267, file: !130, line: 122, column: 8)
!1302 = !DILocation(line: 122, column: 8, scope: !1301)
!1303 = !DILocation(line: 122, column: 30, scope: !1301)
!1304 = !DILocation(line: 122, column: 8, scope: !1267)
!1305 = !DILocation(line: 123, column: 13, scope: !1301)
!1306 = !DILocation(line: 123, column: 6, scope: !1301)
!1307 = !DILocation(line: 124, column: 1, scope: !1267)
!1308 = distinct !DISubprogram(name: "fdadvise", scope: !1309, file: !1309, line: 31, type: !1310, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1314)
!1309 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !93, !1312, !1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !791, line: 91, baseType: !819)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !25, line: 52, baseType: !24)
!1314 = !{!1315, !1316, !1317, !1318, !1319}
!1315 = !DILocalVariable(name: "fd", arg: 1, scope: !1308, file: !1309, line: 31, type: !93)
!1316 = !DILocalVariable(name: "offset", arg: 2, scope: !1308, file: !1309, line: 31, type: !1312)
!1317 = !DILocalVariable(name: "len", arg: 3, scope: !1308, file: !1309, line: 31, type: !1312)
!1318 = !DILocalVariable(name: "advice", arg: 4, scope: !1308, file: !1309, line: 31, type: !1313)
!1319 = !DILocalVariable(name: "__x", scope: !1320, file: !1309, line: 34, type: !93)
!1320 = distinct !DILexicalBlock(scope: !1308, file: !1309, line: 34, column: 3)
!1321 = !DILocation(line: 31, column: 15, scope: !1308)
!1322 = !DILocation(line: 31, column: 25, scope: !1308)
!1323 = !DILocation(line: 31, column: 39, scope: !1308)
!1324 = !DILocation(line: 31, column: 54, scope: !1308)
!1325 = !DILocation(line: 34, column: 3, scope: !1320)
!1326 = !DILocation(line: 36, column: 1, scope: !1308)
!1327 = distinct !DISubprogram(name: "fadvise", scope: !1309, file: !1309, line: 39, type: !1328, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !1370)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330, !1313}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1332, file: !793, line: 242, baseType: !93, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1332, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1332, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1332, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1332, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1332, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1332, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1332, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1332, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1332, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1332, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1332, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1332, file: !793, line: 260, baseType: !1347, size: 64, offset: 768)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !1349)
!1349 = !{!1350, !1351, !1353}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1348, file: !793, line: 157, baseType: !1347, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1348, file: !793, line: 158, baseType: !1352, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1348, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1332, file: !793, line: 262, baseType: !1352, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1332, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1332, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1332, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1332, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1332, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1332, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1332, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1332, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1332, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1332, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1332, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1332, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1332, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1332, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1332, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!1370 = !{!1371, !1372}
!1371 = !DILocalVariable(name: "fp", arg: 1, scope: !1327, file: !1309, line: 39, type: !1330)
!1372 = !DILocalVariable(name: "advice", arg: 2, scope: !1327, file: !1309, line: 39, type: !1313)
!1373 = !DILocation(line: 39, column: 16, scope: !1327)
!1374 = !DILocation(line: 39, column: 30, scope: !1327)
!1375 = !DILocation(line: 41, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1327, file: !1309, line: 41, column: 7)
!1377 = !DILocation(line: 41, column: 7, scope: !1327)
!1378 = !DILocation(line: 42, column: 15, scope: !1376)
!1379 = !DILocation(line: 31, column: 15, scope: !1308, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 42, column: 5, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1376, file: !1309, discriminator: 1)
!1382 = !DILocation(line: 31, column: 25, scope: !1308, inlinedAt: !1380)
!1383 = !DILocation(line: 31, column: 39, scope: !1308, inlinedAt: !1380)
!1384 = !DILocation(line: 31, column: 54, scope: !1308, inlinedAt: !1380)
!1385 = !DILocation(line: 34, column: 3, scope: !1320, inlinedAt: !1380)
!1386 = !DILocation(line: 42, column: 5, scope: !1376)
!1387 = !DILocation(line: 43, column: 1, scope: !1327)
!1388 = distinct !DISubprogram(name: "fopen_safer", scope: !1389, file: !1389, line: 31, type: !1390, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !1432)
!1389 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!1392, !45, !45}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1394, file: !793, line: 242, baseType: !93, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1394, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1394, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1394, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1394, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1394, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1394, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1394, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1394, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1394, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1394, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1394, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1394, file: !793, line: 260, baseType: !1409, size: 64, offset: 768)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !1411)
!1411 = !{!1412, !1413, !1415}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1410, file: !793, line: 157, baseType: !1409, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1410, file: !793, line: 158, baseType: !1414, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1410, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1394, file: !793, line: 262, baseType: !1414, size: 64, offset: 832)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1394, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1394, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1394, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1394, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1394, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1394, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1394, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1394, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1394, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1394, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1394, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1394, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1394, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1394, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1394, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!1432 = !{!1433, !1434, !1435, !1436, !1439, !1442, !1445}
!1433 = !DILocalVariable(name: "file", arg: 1, scope: !1388, file: !1389, line: 31, type: !45)
!1434 = !DILocalVariable(name: "mode", arg: 2, scope: !1388, file: !1389, line: 31, type: !45)
!1435 = !DILocalVariable(name: "fp", scope: !1388, file: !1389, line: 33, type: !1392)
!1436 = !DILocalVariable(name: "fd", scope: !1437, file: !1389, line: 37, type: !93)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !1389, line: 36, column: 5)
!1438 = distinct !DILexicalBlock(scope: !1388, file: !1389, line: 35, column: 7)
!1439 = !DILocalVariable(name: "f", scope: !1440, file: !1389, line: 41, type: !93)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !1389, line: 40, column: 9)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !1389, line: 39, column: 11)
!1442 = !DILocalVariable(name: "e", scope: !1443, file: !1389, line: 45, type: !93)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !1389, line: 44, column: 13)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !1389, line: 43, column: 15)
!1445 = !DILocalVariable(name: "e", scope: !1446, file: !1389, line: 54, type: !93)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !1389, line: 53, column: 13)
!1447 = distinct !DILexicalBlock(scope: !1440, file: !1389, line: 51, column: 15)
!1448 = !DILocation(line: 31, column: 26, scope: !1388)
!1449 = !DILocation(line: 31, column: 44, scope: !1388)
!1450 = !DILocation(line: 33, column: 14, scope: !1388)
!1451 = !DILocation(line: 33, column: 9, scope: !1388)
!1452 = !DILocation(line: 35, column: 7, scope: !1438)
!1453 = !DILocation(line: 35, column: 7, scope: !1388)
!1454 = !DILocation(line: 37, column: 16, scope: !1437)
!1455 = !DILocation(line: 37, column: 11, scope: !1437)
!1456 = !DILocation(line: 39, column: 19, scope: !1441)
!1457 = !DILocation(line: 41, column: 19, scope: !1440)
!1458 = !DILocation(line: 41, column: 15, scope: !1440)
!1459 = !DILocation(line: 43, column: 17, scope: !1444)
!1460 = !DILocation(line: 43, column: 15, scope: !1440)
!1461 = !DILocation(line: 45, column: 23, scope: !1443)
!1462 = !DILocation(line: 45, column: 19, scope: !1443)
!1463 = !DILocation(line: 46, column: 15, scope: !1443)
!1464 = !DILocation(line: 47, column: 21, scope: !1443)
!1465 = !DILocation(line: 51, column: 15, scope: !1447)
!1466 = !DILocation(line: 51, column: 27, scope: !1447)
!1467 = !DILocation(line: 52, column: 15, scope: !1447)
!1468 = !DILocation(line: 52, column: 26, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1447, file: !1389, discriminator: 1)
!1470 = !DILocation(line: 52, column: 24, scope: !1469)
!1471 = !DILocation(line: 51, column: 15, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1440, file: !1389, discriminator: 1)
!1473 = !DILocation(line: 54, column: 23, scope: !1446)
!1474 = !DILocation(line: 54, column: 19, scope: !1446)
!1475 = !DILocation(line: 55, column: 15, scope: !1446)
!1476 = !DILocation(line: 56, column: 21, scope: !1446)
!1477 = !DILocation(line: 63, column: 1, scope: !1388)
!1478 = distinct !DISubprogram(name: "hard_locale", scope: !1479, file: !1479, line: 38, type: !1480, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !612, variables: !1482)
!1479 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!50, !93}
!1482 = !{!1483, !1484, !1485, !1486, !1493, !1494, !1496, !1497, !1499, !1500, !1502}
!1483 = !DILocalVariable(name: "category", arg: 1, scope: !1478, file: !1479, line: 38, type: !93)
!1484 = !DILocalVariable(name: "hard", scope: !1478, file: !1479, line: 40, type: !50)
!1485 = !DILocalVariable(name: "p", scope: !1478, file: !1479, line: 41, type: !45)
!1486 = !DILocalVariable(name: "__s1_len", scope: !1487, file: !1479, line: 47, type: !37)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !1479, line: 47, column: 15)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !1479, line: 47, column: 15)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !1479, line: 46, column: 9)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !1479, line: 45, column: 11)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !1479, line: 44, column: 5)
!1492 = distinct !DILexicalBlock(scope: !1478, file: !1479, line: 43, column: 7)
!1493 = !DILocalVariable(name: "__s2_len", scope: !1487, file: !1479, line: 47, type: !37)
!1494 = !DILocalVariable(name: "__s2", scope: !1495, file: !1479, line: 47, type: !42)
!1495 = distinct !DILexicalBlock(scope: !1487, file: !1479, line: 47, column: 15)
!1496 = !DILocalVariable(name: "__result", scope: !1495, file: !1479, line: 47, type: !93)
!1497 = !DILocalVariable(name: "__s1_len", scope: !1498, file: !1479, line: 47, type: !37)
!1498 = distinct !DILexicalBlock(scope: !1488, file: !1479, line: 47, column: 39)
!1499 = !DILocalVariable(name: "__s2_len", scope: !1498, file: !1479, line: 47, type: !37)
!1500 = !DILocalVariable(name: "__s2", scope: !1501, file: !1479, line: 47, type: !42)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !1479, line: 47, column: 39)
!1502 = !DILocalVariable(name: "__result", scope: !1501, file: !1479, line: 47, type: !93)
!1503 = !DILocation(line: 38, column: 18, scope: !1478)
!1504 = !DILocation(line: 40, column: 8, scope: !1478)
!1505 = !DILocation(line: 41, column: 19, scope: !1478)
!1506 = !DILocation(line: 41, column: 15, scope: !1478)
!1507 = !DILocation(line: 43, column: 7, scope: !1492)
!1508 = !DILocation(line: 43, column: 7, scope: !1478)
!1509 = !DILocation(line: 47, column: 15, scope: !1487)
!1510 = !DILocation(line: 47, column: 15, scope: !1495)
!1511 = !DILocation(line: 47, column: 15, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1495, file: !1479, discriminator: 2)
!1513 = !DILocation(line: 47, column: 15, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1515, file: !1479, discriminator: 3)
!1515 = distinct !DILexicalBlock(scope: !1495, file: !1479, line: 47, column: 15)
!1516 = !DILocation(line: 47, column: 15, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1515, file: !1479, discriminator: 2)
!1518 = !DILocation(line: 47, column: 15, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1520, file: !1479, discriminator: 4)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !1479, line: 47, column: 15)
!1521 = !DILocation(line: 47, column: 15, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1487, file: !1479, discriminator: 11)
!1523 = !DILocation(line: 47, column: 36, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1488, file: !1479, discriminator: 13)
!1525 = !DILocation(line: 47, column: 39, scope: !1498)
!1526 = !DILocation(line: 47, column: 39, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1498, file: !1479, discriminator: 26)
!1528 = !DILocation(line: 47, column: 59, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1488, file: !1479, discriminator: 27)
!1530 = !DILocation(line: 47, column: 15, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1489, file: !1479, discriminator: 27)
!1532 = !DILocation(line: 48, column: 13, scope: !1488)
!1533 = !DILocation(line: 71, column: 3, scope: !1478)
!1534 = distinct !DISubprogram(name: "umaxtostr", scope: !1535, file: !1535, line: 36, type: !1536, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !1538)
!1535 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!34, !618, !34}
!1538 = !{!1539, !1540, !1541}
!1539 = !DILocalVariable(name: "i", arg: 1, scope: !1534, file: !1535, line: 36, type: !618)
!1540 = !DILocalVariable(name: "buf", arg: 2, scope: !1534, file: !1535, line: 36, type: !34)
!1541 = !DILocalVariable(name: "p", scope: !1534, file: !1535, line: 38, type: !34)
!1542 = !DILocation(line: 36, column: 19, scope: !1534)
!1543 = !DILocation(line: 36, column: 28, scope: !1534)
!1544 = !DILocation(line: 38, column: 17, scope: !1534)
!1545 = !DILocation(line: 38, column: 9, scope: !1534)
!1546 = !DILocation(line: 39, column: 6, scope: !1534)
!1547 = !DILocation(line: 41, column: 7, scope: !1534)
!1548 = !DILocation(line: 52, column: 24, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !1535, line: 50, column: 5)
!1550 = distinct !DILexicalBlock(scope: !1534, file: !1535, line: 41, column: 7)
!1551 = !DILocation(line: 52, column: 16, scope: !1549)
!1552 = !DILocation(line: 52, column: 10, scope: !1549)
!1553 = !DILocation(line: 52, column: 14, scope: !1549)
!1554 = !DILocation(line: 53, column: 17, scope: !1549)
!1555 = !DILocation(line: 53, column: 24, scope: !1549)
!1556 = !DILocation(line: 52, column: 9, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1549, file: !1535, discriminator: 1)
!1558 = distinct !{!1558, !1559, !1560}
!1559 = !DILocation(line: 51, column: 7, scope: !1549)
!1560 = !DILocation(line: 53, column: 28, scope: !1549)
!1561 = !DILocation(line: 56, column: 3, scope: !1534)
!1562 = distinct !DISubprogram(name: "initbuffer", scope: !1563, file: !1563, line: 37, type: !1564, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !1572)
!1563 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !1566}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !774, line: 26, size: 192, elements: !1568)
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1567, file: !774, line: 28, baseType: !37, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1567, file: !774, line: 29, baseType: !37, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1567, file: !774, line: 30, baseType: !34, size: 64, offset: 128)
!1572 = !{!1573}
!1573 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1562, file: !1563, line: 37, type: !1566)
!1574 = !DILocation(line: 37, column: 32, scope: !1562)
!1575 = !DILocation(line: 39, column: 3, scope: !1562)
!1576 = !DILocation(line: 40, column: 1, scope: !1562)
!1577 = distinct !DISubprogram(name: "readlinebuffer", scope: !1563, file: !1563, line: 43, type: !1578, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !1620)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1566, !1566, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1582, file: !793, line: 242, baseType: !93, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1582, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1582, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1582, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1582, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1582, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1582, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1582, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1582, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1582, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1582, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1582, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1582, file: !793, line: 260, baseType: !1597, size: 64, offset: 768)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !1599)
!1599 = !{!1600, !1601, !1603}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1598, file: !793, line: 157, baseType: !1597, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1598, file: !793, line: 158, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1598, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1582, file: !793, line: 262, baseType: !1602, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1582, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1582, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1582, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1582, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1582, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1582, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1582, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1582, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1582, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1582, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1582, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1582, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1582, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1582, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1582, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!1620 = !{!1621, !1622}
!1621 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1577, file: !1563, line: 43, type: !1566)
!1622 = !DILocalVariable(name: "stream", arg: 2, scope: !1577, file: !1563, line: 43, type: !1580)
!1623 = !DILocation(line: 43, column: 36, scope: !1577)
!1624 = !DILocation(line: 43, column: 54, scope: !1577)
!1625 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1626, file: !1563, line: 59, type: !1566)
!1626 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !1563, file: !1563, line: 59, type: !1627, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1566, !1566, !1580, !35}
!1629 = !{!1625, !1630, !1631, !1632, !1633, !1634, !1635, !1636}
!1630 = !DILocalVariable(name: "stream", arg: 2, scope: !1626, file: !1563, line: 59, type: !1580)
!1631 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1626, file: !1563, line: 60, type: !35)
!1632 = !DILocalVariable(name: "c", scope: !1626, file: !1563, line: 62, type: !93)
!1633 = !DILocalVariable(name: "buffer", scope: !1626, file: !1563, line: 63, type: !34)
!1634 = !DILocalVariable(name: "p", scope: !1626, file: !1563, line: 64, type: !34)
!1635 = !DILocalVariable(name: "end", scope: !1626, file: !1563, line: 65, type: !34)
!1636 = !DILocalVariable(name: "oldsize", scope: !1637, file: !1563, line: 83, type: !37)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !1563, line: 82, column: 9)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !1563, line: 81, column: 11)
!1639 = distinct !DILexicalBlock(scope: !1626, file: !1563, line: 71, column: 5)
!1640 = !DILocation(line: 59, column: 42, scope: !1626, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 45, column: 10, scope: !1577)
!1642 = !DILocation(line: 59, column: 60, scope: !1626, inlinedAt: !1641)
!1643 = !DILocation(line: 60, column: 28, scope: !1626, inlinedAt: !1641)
!1644 = !DILocation(line: 63, column: 30, scope: !1626, inlinedAt: !1641)
!1645 = !DILocation(line: 63, column: 9, scope: !1626, inlinedAt: !1641)
!1646 = !DILocation(line: 64, column: 9, scope: !1626, inlinedAt: !1641)
!1647 = !DILocation(line: 65, column: 36, scope: !1626, inlinedAt: !1641)
!1648 = !DILocalVariable(name: "__stream", arg: 1, scope: !1649, file: !1028, line: 125, type: !1580)
!1649 = distinct !DISubprogram(name: "feof_unlocked", scope: !1028, file: !1028, line: 125, type: !1650, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!93, !1580}
!1652 = !{!1648}
!1653 = !DILocation(line: 125, column: 1, scope: !1649, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 67, column: 7, scope: !1655, inlinedAt: !1641)
!1655 = distinct !DILexicalBlock(scope: !1626, file: !1563, line: 67, column: 7)
!1656 = !DILocation(line: 127, column: 10, scope: !1649, inlinedAt: !1654)
!1657 = !DILocation(line: 67, column: 7, scope: !1655, inlinedAt: !1641)
!1658 = !DILocation(line: 67, column: 7, scope: !1626, inlinedAt: !1641)
!1659 = distinct !{!1659, !1660, !1661}
!1660 = !DILocation(line: 70, column: 3, scope: !1626)
!1661 = !DILocation(line: 91, column: 24, scope: !1626)
!1662 = !{!1076, !910, i64 0}
!1663 = !DILocation(line: 65, column: 22, scope: !1626, inlinedAt: !1641)
!1664 = !DILocation(line: 65, column: 9, scope: !1626, inlinedAt: !1641)
!1665 = !DILocalVariable(name: "__fp", arg: 1, scope: !1666, file: !1028, line: 63, type: !1580)
!1666 = distinct !DISubprogram(name: "getc_unlocked", scope: !1028, file: !1028, line: 63, type: !1650, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !1667)
!1667 = !{!1665}
!1668 = !DILocation(line: 63, column: 22, scope: !1666, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 72, column: 11, scope: !1639, inlinedAt: !1641)
!1670 = !DILocation(line: 65, column: 10, scope: !1666, inlinedAt: !1669)
!1671 = !{!1037, !693, i64 8}
!1672 = !{!1037, !693, i64 16}
!1673 = !{!"branch_weights", i32 2000, i32 1}
!1674 = !DILocation(line: 65, column: 10, scope: !1675, inlinedAt: !1669)
!1675 = !DILexicalBlockFile(scope: !1666, file: !1028, discriminator: 2)
!1676 = !DILocation(line: 62, column: 7, scope: !1626, inlinedAt: !1641)
!1677 = !DILocation(line: 73, column: 11, scope: !1639, inlinedAt: !1641)
!1678 = !DILocation(line: 65, column: 10, scope: !1679, inlinedAt: !1669)
!1679 = !DILexicalBlockFile(scope: !1666, file: !1028, discriminator: 1)
!1680 = !DILocation(line: 73, column: 13, scope: !1681, inlinedAt: !1641)
!1681 = distinct !DILexicalBlock(scope: !1639, file: !1563, line: 73, column: 11)
!1682 = !DILocation(line: 75, column: 17, scope: !1683, inlinedAt: !1641)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !1563, line: 75, column: 15)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !1563, line: 74, column: 9)
!1685 = !DILocation(line: 75, column: 27, scope: !1683, inlinedAt: !1641)
!1686 = !DILocalVariable(name: "__stream", arg: 1, scope: !1687, file: !1028, line: 132, type: !1580)
!1687 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1028, file: !1028, line: 132, type: !1650, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !1688)
!1688 = !{!1686}
!1689 = !DILocation(line: 132, column: 1, scope: !1687, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 75, column: 30, scope: !1691, inlinedAt: !1641)
!1691 = !DILexicalBlockFile(scope: !1683, file: !1563, discriminator: 1)
!1692 = !DILocation(line: 134, column: 10, scope: !1687, inlinedAt: !1690)
!1693 = !DILocation(line: 75, column: 30, scope: !1691, inlinedAt: !1641)
!1694 = !DILocation(line: 75, column: 15, scope: !1695, inlinedAt: !1641)
!1695 = !DILexicalBlockFile(scope: !1684, file: !1563, discriminator: 1)
!1696 = !DILocation(line: 77, column: 15, scope: !1697, inlinedAt: !1641)
!1697 = distinct !DILexicalBlock(scope: !1684, file: !1563, line: 77, column: 15)
!1698 = !DILocation(line: 77, column: 21, scope: !1697, inlinedAt: !1641)
!1699 = !DILocation(line: 77, column: 15, scope: !1684, inlinedAt: !1641)
!1700 = !DILocation(line: 81, column: 13, scope: !1638, inlinedAt: !1641)
!1701 = !DILocation(line: 81, column: 11, scope: !1639, inlinedAt: !1641)
!1702 = !DILocation(line: 83, column: 40, scope: !1637, inlinedAt: !1641)
!1703 = !DILocation(line: 83, column: 18, scope: !1637, inlinedAt: !1641)
!1704 = !DILocation(line: 84, column: 20, scope: !1637, inlinedAt: !1641)
!1705 = !DILocation(line: 85, column: 22, scope: !1637, inlinedAt: !1641)
!1706 = !DILocation(line: 86, column: 30, scope: !1637, inlinedAt: !1641)
!1707 = !DILocation(line: 87, column: 38, scope: !1637, inlinedAt: !1641)
!1708 = !DILocation(line: 87, column: 24, scope: !1637, inlinedAt: !1641)
!1709 = !DILocation(line: 88, column: 9, scope: !1637, inlinedAt: !1641)
!1710 = !DILocation(line: 89, column: 14, scope: !1639, inlinedAt: !1641)
!1711 = !DILocation(line: 89, column: 9, scope: !1639, inlinedAt: !1641)
!1712 = !DILocation(line: 89, column: 12, scope: !1639, inlinedAt: !1641)
!1713 = !DILocation(line: 91, column: 12, scope: !1626, inlinedAt: !1641)
!1714 = !DILocation(line: 90, column: 5, scope: !1715, inlinedAt: !1641)
!1715 = !DILexicalBlockFile(scope: !1639, file: !1563, discriminator: 1)
!1716 = !DILocation(line: 93, column: 26, scope: !1626, inlinedAt: !1641)
!1717 = !DILocation(line: 93, column: 15, scope: !1626, inlinedAt: !1641)
!1718 = !DILocation(line: 93, column: 22, scope: !1626, inlinedAt: !1641)
!1719 = !DILocation(line: 94, column: 3, scope: !1626, inlinedAt: !1641)
!1720 = !DILocation(line: 45, column: 3, scope: !1577)
!1721 = !DILocation(line: 59, column: 42, scope: !1626)
!1722 = !DILocation(line: 59, column: 60, scope: !1626)
!1723 = !DILocation(line: 60, column: 28, scope: !1626)
!1724 = !DILocation(line: 63, column: 30, scope: !1626)
!1725 = !DILocation(line: 63, column: 9, scope: !1626)
!1726 = !DILocation(line: 64, column: 9, scope: !1626)
!1727 = !DILocation(line: 65, column: 36, scope: !1626)
!1728 = !DILocation(line: 65, column: 9, scope: !1626)
!1729 = !DILocation(line: 125, column: 1, scope: !1649, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 67, column: 7, scope: !1655)
!1731 = !DILocation(line: 127, column: 10, scope: !1649, inlinedAt: !1730)
!1732 = !DILocation(line: 67, column: 7, scope: !1655)
!1733 = !DILocation(line: 67, column: 7, scope: !1626)
!1734 = !DILocation(line: 65, column: 22, scope: !1626)
!1735 = !DILocation(line: 63, column: 22, scope: !1666, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 72, column: 11, scope: !1639)
!1737 = !DILocation(line: 65, column: 10, scope: !1666, inlinedAt: !1736)
!1738 = !DILocation(line: 65, column: 10, scope: !1675, inlinedAt: !1736)
!1739 = !DILocation(line: 62, column: 7, scope: !1626)
!1740 = !DILocation(line: 73, column: 11, scope: !1639)
!1741 = !DILocation(line: 65, column: 10, scope: !1679, inlinedAt: !1736)
!1742 = !DILocation(line: 73, column: 13, scope: !1681)
!1743 = !DILocation(line: 75, column: 17, scope: !1683)
!1744 = !DILocation(line: 75, column: 27, scope: !1683)
!1745 = !DILocation(line: 132, column: 1, scope: !1687, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 75, column: 30, scope: !1691)
!1747 = !DILocation(line: 134, column: 10, scope: !1687, inlinedAt: !1746)
!1748 = !DILocation(line: 75, column: 30, scope: !1691)
!1749 = !DILocation(line: 75, column: 15, scope: !1695)
!1750 = !DILocation(line: 77, column: 15, scope: !1697)
!1751 = !DILocation(line: 77, column: 21, scope: !1697)
!1752 = !DILocation(line: 77, column: 15, scope: !1684)
!1753 = !DILocation(line: 81, column: 13, scope: !1638)
!1754 = !DILocation(line: 81, column: 11, scope: !1639)
!1755 = !DILocation(line: 83, column: 40, scope: !1637)
!1756 = !DILocation(line: 83, column: 18, scope: !1637)
!1757 = !DILocation(line: 84, column: 20, scope: !1637)
!1758 = !DILocation(line: 85, column: 22, scope: !1637)
!1759 = !DILocation(line: 86, column: 30, scope: !1637)
!1760 = !DILocation(line: 87, column: 38, scope: !1637)
!1761 = !DILocation(line: 87, column: 24, scope: !1637)
!1762 = !DILocation(line: 88, column: 9, scope: !1637)
!1763 = !DILocation(line: 89, column: 14, scope: !1639)
!1764 = !DILocation(line: 89, column: 9, scope: !1639)
!1765 = !DILocation(line: 89, column: 12, scope: !1639)
!1766 = !DILocation(line: 91, column: 12, scope: !1626)
!1767 = !DILocation(line: 90, column: 5, scope: !1715)
!1768 = !DILocation(line: 93, column: 26, scope: !1626)
!1769 = !DILocation(line: 93, column: 15, scope: !1626)
!1770 = !DILocation(line: 93, column: 22, scope: !1626)
!1771 = !DILocation(line: 94, column: 3, scope: !1626)
!1772 = !DILocation(line: 95, column: 1, scope: !1626)
!1773 = distinct !DISubprogram(name: "freebuffer", scope: !1563, file: !1563, line: 100, type: !1564, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !1774)
!1774 = !{!1775}
!1775 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1773, file: !1563, line: 100, type: !1566)
!1776 = !DILocation(line: 100, column: 32, scope: !1773)
!1777 = !DILocation(line: 102, column: 21, scope: !1773)
!1778 = !DILocation(line: 102, column: 3, scope: !1773)
!1779 = !DILocation(line: 103, column: 1, scope: !1773)
!1780 = distinct !DISubprogram(name: "memcmp2", scope: !1781, file: !1781, line: 25, type: !1782, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, unit: !625, variables: !1784)
!1781 = !DIFile(filename: "lib/memcmp2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!93, !45, !37, !45, !37}
!1784 = !{!1785, !1786, !1787, !1788, !1789}
!1785 = !DILocalVariable(name: "s1", arg: 1, scope: !1780, file: !1781, line: 25, type: !45)
!1786 = !DILocalVariable(name: "n1", arg: 2, scope: !1780, file: !1781, line: 25, type: !37)
!1787 = !DILocalVariable(name: "s2", arg: 3, scope: !1780, file: !1781, line: 25, type: !45)
!1788 = !DILocalVariable(name: "n2", arg: 4, scope: !1780, file: !1781, line: 25, type: !37)
!1789 = !DILocalVariable(name: "cmp", scope: !1780, file: !1781, line: 27, type: !93)
!1790 = !DILocation(line: 25, column: 22, scope: !1780)
!1791 = !DILocation(line: 25, column: 33, scope: !1780)
!1792 = !DILocation(line: 25, column: 49, scope: !1780)
!1793 = !DILocation(line: 25, column: 60, scope: !1780)
!1794 = !DILocation(line: 27, column: 32, scope: !1780)
!1795 = !DILocation(line: 27, column: 29, scope: !1780)
!1796 = !DILocation(line: 27, column: 13, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1780, file: !1781, discriminator: 3)
!1798 = !DILocation(line: 27, column: 7, scope: !1780)
!1799 = !DILocation(line: 28, column: 11, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1780, file: !1781, line: 28, column: 7)
!1801 = !DILocation(line: 28, column: 7, scope: !1780)
!1802 = !DILocation(line: 30, column: 14, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !1781, line: 30, column: 11)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !1781, line: 29, column: 5)
!1805 = !DILocation(line: 30, column: 11, scope: !1804)
!1806 = !DILocation(line: 32, column: 19, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !1781, line: 32, column: 16)
!1808 = !DILocation(line: 32, column: 16, scope: !1803)
!1809 = !DILocation(line: 35, column: 3, scope: !1780)
!1810 = distinct !DISubprogram(name: "set_program_name", scope: !144, file: !144, line: 39, type: !70, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !140, variables: !1811)
!1811 = !{!1812, !1813, !1814}
!1812 = !DILocalVariable(name: "argv0", arg: 1, scope: !1810, file: !144, line: 39, type: !45)
!1813 = !DILocalVariable(name: "slash", scope: !1810, file: !144, line: 46, type: !45)
!1814 = !DILocalVariable(name: "base", scope: !1810, file: !144, line: 47, type: !45)
!1815 = !DILocation(line: 39, column: 31, scope: !1810)
!1816 = !DILocation(line: 51, column: 13, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1810, file: !144, line: 51, column: 7)
!1818 = !DILocation(line: 51, column: 7, scope: !1810)
!1819 = !DILocation(line: 55, column: 14, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !144, line: 52, column: 5)
!1821 = !DILocation(line: 54, column: 7, scope: !1820)
!1822 = !DILocation(line: 56, column: 7, scope: !1820)
!1823 = !DILocation(line: 59, column: 11, scope: !1810)
!1824 = !DILocation(line: 46, column: 15, scope: !1810)
!1825 = !DILocation(line: 60, column: 17, scope: !1810)
!1826 = !DILocation(line: 60, column: 33, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1810, file: !144, discriminator: 1)
!1828 = !DILocation(line: 60, column: 11, scope: !1810)
!1829 = !DILocation(line: 47, column: 15, scope: !1810)
!1830 = !DILocation(line: 61, column: 12, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1810, file: !144, line: 61, column: 7)
!1832 = !DILocation(line: 61, column: 20, scope: !1831)
!1833 = !DILocation(line: 61, column: 25, scope: !1831)
!1834 = !DILocation(line: 61, column: 28, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1831, file: !144, discriminator: 1)
!1836 = !DILocation(line: 61, column: 61, scope: !1835)
!1837 = !DILocation(line: 61, column: 7, scope: !1827)
!1838 = !DILocation(line: 64, column: 11, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !144, line: 64, column: 11)
!1840 = distinct !DILexicalBlock(scope: !1831, file: !144, line: 62, column: 5)
!1841 = !DILocation(line: 64, column: 36, scope: !1839)
!1842 = !DILocation(line: 64, column: 11, scope: !1840)
!1843 = !DILocation(line: 66, column: 24, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1839, file: !144, line: 65, column: 9)
!1845 = !DILocation(line: 70, column: 41, scope: !1844)
!1846 = !DILocation(line: 72, column: 9, scope: !1844)
!1847 = !DILocation(line: 84, column: 16, scope: !1810)
!1848 = !DILocation(line: 90, column: 27, scope: !1810)
!1849 = !DILocation(line: 92, column: 1, scope: !1810)
!1850 = distinct !DISubprogram(name: "clone_quoting_options", scope: !175, file: !175, line: 114, type: !1851, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1854)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1853, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!1854 = !{!1855, !1856, !1857}
!1855 = !DILocalVariable(name: "o", arg: 1, scope: !1850, file: !175, line: 114, type: !1853)
!1856 = !DILocalVariable(name: "e", scope: !1850, file: !175, line: 116, type: !93)
!1857 = !DILocalVariable(name: "p", scope: !1850, file: !175, line: 117, type: !1853)
!1858 = !DILocation(line: 114, column: 48, scope: !1850)
!1859 = !DILocation(line: 116, column: 11, scope: !1850)
!1860 = !DILocation(line: 116, column: 7, scope: !1850)
!1861 = !DILocation(line: 117, column: 40, scope: !1850)
!1862 = !DILocation(line: 117, column: 40, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1850, file: !175, discriminator: 3)
!1864 = !DILocation(line: 117, column: 31, scope: !1863)
!1865 = !DILocation(line: 117, column: 27, scope: !1850)
!1866 = !DILocation(line: 119, column: 9, scope: !1850)
!1867 = !DILocation(line: 120, column: 3, scope: !1850)
!1868 = distinct !DISubprogram(name: "get_quoting_style", scope: !175, file: !175, line: 125, type: !1869, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1873)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!10, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "o", arg: 1, scope: !1868, file: !175, line: 125, type: !1871)
!1875 = !DILocation(line: 125, column: 50, scope: !1868)
!1876 = !DILocation(line: 127, column: 11, scope: !1868)
!1877 = !DILocation(line: 127, column: 46, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1868, file: !175, discriminator: 3)
!1879 = !{!1880, !694, i64 0}
!1880 = !{!"quoting_options", !694, i64 0, !945, i64 4, !694, i64 8, !693, i64 40, !693, i64 48}
!1881 = !DILocation(line: 127, column: 3, scope: !1878)
!1882 = distinct !DISubprogram(name: "set_quoting_style", scope: !175, file: !175, line: 133, type: !1883, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !1853, !10}
!1885 = !{!1886, !1887}
!1886 = !DILocalVariable(name: "o", arg: 1, scope: !1882, file: !175, line: 133, type: !1853)
!1887 = !DILocalVariable(name: "s", arg: 2, scope: !1882, file: !175, line: 133, type: !10)
!1888 = !DILocation(line: 133, column: 44, scope: !1882)
!1889 = !DILocation(line: 133, column: 66, scope: !1882)
!1890 = !DILocation(line: 135, column: 4, scope: !1882)
!1891 = !DILocation(line: 135, column: 39, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1882, file: !175, discriminator: 3)
!1893 = !DILocation(line: 135, column: 45, scope: !1892)
!1894 = !DILocation(line: 136, column: 1, scope: !1882)
!1895 = distinct !DISubprogram(name: "set_char_quoting", scope: !175, file: !175, line: 144, type: !1896, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!93, !1853, !35, !93}
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1905, !1906}
!1899 = !DILocalVariable(name: "o", arg: 1, scope: !1895, file: !175, line: 144, type: !1853)
!1900 = !DILocalVariable(name: "c", arg: 2, scope: !1895, file: !175, line: 144, type: !35)
!1901 = !DILocalVariable(name: "i", arg: 3, scope: !1895, file: !175, line: 144, type: !93)
!1902 = !DILocalVariable(name: "uc", scope: !1895, file: !175, line: 146, type: !44)
!1903 = !DILocalVariable(name: "p", scope: !1895, file: !175, line: 147, type: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!1905 = !DILocalVariable(name: "shift", scope: !1895, file: !175, line: 149, type: !93)
!1906 = !DILocalVariable(name: "r", scope: !1895, file: !175, line: 150, type: !93)
!1907 = !DILocation(line: 144, column: 43, scope: !1895)
!1908 = !DILocation(line: 144, column: 51, scope: !1895)
!1909 = !DILocation(line: 144, column: 58, scope: !1895)
!1910 = !DILocation(line: 146, column: 17, scope: !1895)
!1911 = !DILocation(line: 148, column: 6, scope: !1895)
!1912 = !DILocation(line: 148, column: 62, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1895, file: !175, discriminator: 3)
!1914 = !DILocation(line: 148, column: 57, scope: !1913)
!1915 = !DILocation(line: 147, column: 17, scope: !1895)
!1916 = !DILocation(line: 149, column: 18, scope: !1895)
!1917 = !DILocation(line: 149, column: 15, scope: !1895)
!1918 = !DILocation(line: 149, column: 7, scope: !1895)
!1919 = !DILocation(line: 150, column: 12, scope: !1895)
!1920 = !DILocation(line: 150, column: 15, scope: !1895)
!1921 = !DILocation(line: 150, column: 25, scope: !1895)
!1922 = !DILocation(line: 150, column: 7, scope: !1895)
!1923 = !DILocation(line: 151, column: 13, scope: !1895)
!1924 = !DILocation(line: 151, column: 18, scope: !1895)
!1925 = !DILocation(line: 151, column: 23, scope: !1895)
!1926 = !DILocation(line: 151, column: 6, scope: !1895)
!1927 = !DILocation(line: 152, column: 3, scope: !1895)
!1928 = distinct !DISubprogram(name: "set_quoting_flags", scope: !175, file: !175, line: 160, type: !1929, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!93, !1853, !93}
!1931 = !{!1932, !1933, !1934}
!1932 = !DILocalVariable(name: "o", arg: 1, scope: !1928, file: !175, line: 160, type: !1853)
!1933 = !DILocalVariable(name: "i", arg: 2, scope: !1928, file: !175, line: 160, type: !93)
!1934 = !DILocalVariable(name: "r", scope: !1928, file: !175, line: 162, type: !93)
!1935 = !DILocation(line: 160, column: 44, scope: !1928)
!1936 = !DILocation(line: 160, column: 51, scope: !1928)
!1937 = !DILocation(line: 163, column: 8, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1928, file: !175, line: 163, column: 7)
!1939 = !DILocation(line: 163, column: 7, scope: !1928)
!1940 = !DILocation(line: 165, column: 10, scope: !1928)
!1941 = !{!1880, !945, i64 4}
!1942 = !DILocation(line: 162, column: 7, scope: !1928)
!1943 = !DILocation(line: 166, column: 12, scope: !1928)
!1944 = !DILocation(line: 167, column: 3, scope: !1928)
!1945 = distinct !DISubprogram(name: "set_custom_quoting", scope: !175, file: !175, line: 171, type: !1946, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1948)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1853, !45, !45}
!1948 = !{!1949, !1950, !1951}
!1949 = !DILocalVariable(name: "o", arg: 1, scope: !1945, file: !175, line: 171, type: !1853)
!1950 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1945, file: !175, line: 172, type: !45)
!1951 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1945, file: !175, line: 172, type: !45)
!1952 = !DILocation(line: 171, column: 45, scope: !1945)
!1953 = !DILocation(line: 172, column: 33, scope: !1945)
!1954 = !DILocation(line: 172, column: 57, scope: !1945)
!1955 = !DILocation(line: 174, column: 8, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1945, file: !175, line: 174, column: 7)
!1957 = !DILocation(line: 174, column: 7, scope: !1945)
!1958 = !DILocation(line: 176, column: 6, scope: !1945)
!1959 = !DILocation(line: 176, column: 12, scope: !1945)
!1960 = !DILocation(line: 177, column: 8, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1945, file: !175, line: 177, column: 7)
!1962 = !DILocation(line: 177, column: 23, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1961, file: !175, discriminator: 1)
!1964 = !DILocation(line: 177, column: 19, scope: !1961)
!1965 = !DILocation(line: 178, column: 5, scope: !1961)
!1966 = !DILocation(line: 179, column: 6, scope: !1945)
!1967 = !DILocation(line: 179, column: 17, scope: !1945)
!1968 = !{!1880, !693, i64 40}
!1969 = !DILocation(line: 180, column: 6, scope: !1945)
!1970 = !DILocation(line: 180, column: 18, scope: !1945)
!1971 = !{!1880, !693, i64 48}
!1972 = !DILocation(line: 181, column: 1, scope: !1945)
!1973 = distinct !DISubprogram(name: "quotearg_buffer", scope: !175, file: !175, line: 776, type: !1974, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!37, !34, !37, !45, !37, !1871}
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984}
!1977 = !DILocalVariable(name: "buffer", arg: 1, scope: !1973, file: !175, line: 776, type: !34)
!1978 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1973, file: !175, line: 776, type: !37)
!1979 = !DILocalVariable(name: "arg", arg: 3, scope: !1973, file: !175, line: 777, type: !45)
!1980 = !DILocalVariable(name: "argsize", arg: 4, scope: !1973, file: !175, line: 777, type: !37)
!1981 = !DILocalVariable(name: "o", arg: 5, scope: !1973, file: !175, line: 778, type: !1871)
!1982 = !DILocalVariable(name: "p", scope: !1973, file: !175, line: 780, type: !1871)
!1983 = !DILocalVariable(name: "e", scope: !1973, file: !175, line: 781, type: !93)
!1984 = !DILocalVariable(name: "r", scope: !1973, file: !175, line: 782, type: !37)
!1985 = !DILocation(line: 776, column: 24, scope: !1973)
!1986 = !DILocation(line: 776, column: 39, scope: !1973)
!1987 = !DILocation(line: 777, column: 30, scope: !1973)
!1988 = !DILocation(line: 777, column: 42, scope: !1973)
!1989 = !DILocation(line: 778, column: 48, scope: !1973)
!1990 = !DILocation(line: 780, column: 37, scope: !1973)
!1991 = !DILocation(line: 780, column: 33, scope: !1973)
!1992 = !DILocation(line: 781, column: 11, scope: !1973)
!1993 = !DILocation(line: 781, column: 7, scope: !1973)
!1994 = !DILocation(line: 783, column: 43, scope: !1973)
!1995 = !DILocation(line: 783, column: 53, scope: !1973)
!1996 = !DILocation(line: 783, column: 60, scope: !1973)
!1997 = !DILocation(line: 784, column: 43, scope: !1973)
!1998 = !DILocation(line: 784, column: 58, scope: !1973)
!1999 = !DILocation(line: 782, column: 14, scope: !1973)
!2000 = !DILocation(line: 782, column: 10, scope: !1973)
!2001 = !DILocation(line: 785, column: 9, scope: !1973)
!2002 = !DILocation(line: 786, column: 3, scope: !1973)
!2003 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !175, file: !175, line: 248, type: !2004, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2008)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!37, !34, !37, !45, !37, !10, !93, !2006, !45, !45}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2033, !2034, !2035, !2036, !2037, !2040, !2041, !2057, !2060, !2061, !2068}
!2009 = !DILocalVariable(name: "buffer", arg: 1, scope: !2003, file: !175, line: 248, type: !34)
!2010 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2003, file: !175, line: 248, type: !37)
!2011 = !DILocalVariable(name: "arg", arg: 3, scope: !2003, file: !175, line: 249, type: !45)
!2012 = !DILocalVariable(name: "argsize", arg: 4, scope: !2003, file: !175, line: 249, type: !37)
!2013 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2003, file: !175, line: 250, type: !10)
!2014 = !DILocalVariable(name: "flags", arg: 6, scope: !2003, file: !175, line: 250, type: !93)
!2015 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2003, file: !175, line: 251, type: !2006)
!2016 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2003, file: !175, line: 252, type: !45)
!2017 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2003, file: !175, line: 253, type: !45)
!2018 = !DILocalVariable(name: "i", scope: !2003, file: !175, line: 255, type: !37)
!2019 = !DILocalVariable(name: "len", scope: !2003, file: !175, line: 256, type: !37)
!2020 = !DILocalVariable(name: "orig_buffersize", scope: !2003, file: !175, line: 257, type: !37)
!2021 = !DILocalVariable(name: "quote_string", scope: !2003, file: !175, line: 258, type: !45)
!2022 = !DILocalVariable(name: "quote_string_len", scope: !2003, file: !175, line: 259, type: !37)
!2023 = !DILocalVariable(name: "backslash_escapes", scope: !2003, file: !175, line: 260, type: !50)
!2024 = !DILocalVariable(name: "unibyte_locale", scope: !2003, file: !175, line: 261, type: !50)
!2025 = !DILocalVariable(name: "elide_outer_quotes", scope: !2003, file: !175, line: 262, type: !50)
!2026 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2003, file: !175, line: 263, type: !50)
!2027 = !DILocalVariable(name: "encountered_single_quote", scope: !2003, file: !175, line: 264, type: !50)
!2028 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2003, file: !175, line: 265, type: !50)
!2029 = !DILocalVariable(name: "c", scope: !2030, file: !175, line: 394, type: !44)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !175, line: 393, column: 5)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !175, line: 392, column: 3)
!2032 = distinct !DILexicalBlock(scope: !2003, file: !175, line: 392, column: 3)
!2033 = !DILocalVariable(name: "esc", scope: !2030, file: !175, line: 395, type: !44)
!2034 = !DILocalVariable(name: "is_right_quote", scope: !2030, file: !175, line: 396, type: !50)
!2035 = !DILocalVariable(name: "escaping", scope: !2030, file: !175, line: 397, type: !50)
!2036 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2030, file: !175, line: 398, type: !50)
!2037 = !DILocalVariable(name: "m", scope: !2038, file: !175, line: 602, type: !37)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 600, column: 11)
!2039 = distinct !DILexicalBlock(scope: !2030, file: !175, line: 418, column: 9)
!2040 = !DILocalVariable(name: "printable", scope: !2038, file: !175, line: 604, type: !50)
!2041 = !DILocalVariable(name: "mbstate", scope: !2042, file: !175, line: 613, type: !2044)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !175, line: 612, column: 15)
!2043 = distinct !DILexicalBlock(scope: !2038, file: !175, line: 606, column: 17)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2045, line: 107, baseType: !2046)
!2045 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2045, line: 95, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2045, line: 83, size: 64, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2047, file: !2045, line: 85, baseType: !93, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2047, file: !2045, line: 94, baseType: !2051, size: 32, offset: 32)
!2051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2047, file: !2045, line: 86, size: 32, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2051, file: !2045, line: 89, baseType: !188, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2051, file: !2045, line: 93, baseType: !2055, size: 32)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !2056)
!2056 = !{!782}
!2057 = !DILocalVariable(name: "w", scope: !2058, file: !175, line: 623, type: !2059)
!2058 = distinct !DILexicalBlock(scope: !2042, file: !175, line: 622, column: 19)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !38, line: 90, baseType: !93)
!2060 = !DILocalVariable(name: "bytes", scope: !2058, file: !175, line: 624, type: !37)
!2061 = !DILocalVariable(name: "j", scope: !2062, file: !175, line: 649, type: !37)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !175, line: 648, column: 27)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !175, line: 646, column: 29)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !175, line: 641, column: 23)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !175, line: 633, column: 30)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !175, line: 628, column: 30)
!2067 = distinct !DILexicalBlock(scope: !2058, file: !175, line: 626, column: 25)
!2068 = !DILocalVariable(name: "ilim", scope: !2069, file: !175, line: 676, type: !37)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !175, line: 673, column: 15)
!2070 = distinct !DILexicalBlock(scope: !2038, file: !175, line: 672, column: 17)
!2071 = !DILocation(line: 248, column: 33, scope: !2003)
!2072 = !DILocation(line: 248, column: 48, scope: !2003)
!2073 = !DILocation(line: 249, column: 39, scope: !2003)
!2074 = !DILocation(line: 249, column: 51, scope: !2003)
!2075 = !DILocation(line: 250, column: 46, scope: !2003)
!2076 = !DILocation(line: 250, column: 65, scope: !2003)
!2077 = !DILocation(line: 251, column: 47, scope: !2003)
!2078 = !DILocation(line: 252, column: 39, scope: !2003)
!2079 = !DILocation(line: 253, column: 39, scope: !2003)
!2080 = !DILocation(line: 256, column: 10, scope: !2003)
!2081 = !DILocation(line: 257, column: 10, scope: !2003)
!2082 = !DILocation(line: 258, column: 15, scope: !2003)
!2083 = !DILocation(line: 259, column: 10, scope: !2003)
!2084 = !DILocation(line: 260, column: 8, scope: !2003)
!2085 = !DILocation(line: 261, column: 25, scope: !2003)
!2086 = !DILocation(line: 261, column: 36, scope: !2003)
!2087 = !DILocation(line: 262, column: 8, scope: !2003)
!2088 = !DILocation(line: 263, column: 8, scope: !2003)
!2089 = !DILocation(line: 264, column: 8, scope: !2003)
!2090 = !DILocation(line: 265, column: 8, scope: !2003)
!2091 = !DILocation(line: 265, column: 3, scope: !2003)
!2092 = !DILocation(line: 308, column: 3, scope: !2003)
!2093 = !DILocation(line: 315, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2003, file: !175, line: 309, column: 5)
!2095 = !DILocation(line: 315, column: 12, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2094, file: !175, line: 315, column: 11)
!2097 = !DILocation(line: 316, column: 9, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2099, file: !175, discriminator: 1)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !175, line: 316, column: 9)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !175, line: 316, column: 9)
!2101 = !DILocation(line: 316, column: 9, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2100, file: !175, discriminator: 1)
!2103 = !DILocation(line: 316, column: 9, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2099, file: !175, discriminator: 2)
!2105 = !DILocation(line: 354, column: 26, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !175, line: 332, column: 11)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !175, line: 331, column: 13)
!2108 = distinct !DILexicalBlock(scope: !2094, file: !175, line: 330, column: 7)
!2109 = !DILocation(line: 355, column: 27, scope: !2106)
!2110 = !DILocation(line: 356, column: 11, scope: !2106)
!2111 = !DILocation(line: 357, column: 14, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !175, line: 357, column: 13)
!2113 = !DILocation(line: 357, column: 13, scope: !2108)
!2114 = !DILocation(line: 358, column: 43, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2116, file: !175, discriminator: 1)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !175, line: 358, column: 11)
!2117 = distinct !DILexicalBlock(scope: !2112, file: !175, line: 358, column: 11)
!2118 = !DILocation(line: 358, column: 11, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2117, file: !175, discriminator: 1)
!2120 = !DILocation(line: 359, column: 13, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2122, file: !175, discriminator: 1)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !175, line: 359, column: 13)
!2123 = distinct !DILexicalBlock(scope: !2116, file: !175, line: 359, column: 13)
!2124 = !DILocation(line: 359, column: 13, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2123, file: !175, discriminator: 1)
!2126 = !DILocation(line: 359, column: 13, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2122, file: !175, discriminator: 2)
!2128 = !DILocation(line: 359, column: 13, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2123, file: !175, discriminator: 3)
!2130 = !DILocation(line: 358, column: 70, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2116, file: !175, discriminator: 2)
!2132 = distinct !{!2132, !2133, !2134}
!2133 = !DILocation(line: 358, column: 11, scope: !2117)
!2134 = !DILocation(line: 359, column: 13, scope: !2117)
!2135 = !DILocation(line: 362, column: 28, scope: !2108)
!2136 = !DILocation(line: 364, column: 7, scope: !2094)
!2137 = !DILocation(line: 367, column: 7, scope: !2094)
!2138 = !DILocation(line: 370, column: 7, scope: !2094)
!2139 = !DILocation(line: 373, column: 12, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2094, file: !175, line: 373, column: 11)
!2141 = !DILocation(line: 373, column: 11, scope: !2094)
!2142 = !DILocation(line: 378, column: 12, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2094, file: !175, line: 378, column: 11)
!2144 = !DILocation(line: 378, column: 11, scope: !2094)
!2145 = !DILocation(line: 379, column: 9, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2147, file: !175, discriminator: 1)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !175, line: 379, column: 9)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !175, line: 379, column: 9)
!2149 = !DILocation(line: 379, column: 9, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2148, file: !175, discriminator: 1)
!2151 = !DILocation(line: 379, column: 9, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2147, file: !175, discriminator: 2)
!2153 = !DILocation(line: 386, column: 7, scope: !2094)
!2154 = !DILocation(line: 389, column: 7, scope: !2094)
!2155 = !DILocation(line: 255, column: 10, scope: !2003)
!2156 = !DILocation(line: 392, column: 8, scope: !2032)
!2157 = !DILocation(line: 392, column: 27, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2031, file: !175, discriminator: 1)
!2159 = !DILocation(line: 392, column: 19, scope: !2158)
!2160 = !DILocation(line: 392, column: 60, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2031, file: !175, discriminator: 3)
!2162 = !DILocation(line: 392, column: 3, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2032, file: !175, discriminator: 4)
!2164 = !DILocation(line: 392, column: 41, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2031, file: !175, discriminator: 2)
!2166 = !DILocation(line: 392, column: 48, scope: !2165)
!2167 = !DILocation(line: 396, column: 12, scope: !2030)
!2168 = !DILocation(line: 397, column: 12, scope: !2030)
!2169 = !DILocation(line: 398, column: 12, scope: !2030)
!2170 = !DILocation(line: 401, column: 11, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2030, file: !175, line: 400, column: 11)
!2172 = !DILocation(line: 403, column: 17, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2171, file: !175, discriminator: 1)
!2174 = !DILocation(line: 404, column: 39, scope: !2171)
!2175 = !DILocation(line: 408, column: 32, scope: !2171)
!2176 = !DILocation(line: 404, column: 19, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2171, file: !175, discriminator: 2)
!2178 = !DILocation(line: 404, column: 15, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2171, file: !175, discriminator: 4)
!2180 = !DILocation(line: 409, column: 11, scope: !2171)
!2181 = !DILocation(line: 409, column: 26, scope: !2173)
!2182 = !DILocation(line: 409, column: 14, scope: !2173)
!2183 = !DILocation(line: 400, column: 11, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2030, file: !175, discriminator: 1)
!2185 = !DILocation(line: 416, column: 11, scope: !2030)
!2186 = !DILocation(line: 394, column: 21, scope: !2030)
!2187 = !DILocation(line: 417, column: 7, scope: !2030)
!2188 = !DILocation(line: 420, column: 15, scope: !2039)
!2189 = !DILocation(line: 422, column: 15, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2191, file: !175, discriminator: 1)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !175, line: 422, column: 15)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !175, line: 421, column: 13)
!2193 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 420, column: 15)
!2194 = !DILocation(line: 422, column: 15, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2196, file: !175, discriminator: 4)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !175, line: 422, column: 15)
!2197 = !DILocation(line: 422, column: 15, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2196, file: !175, discriminator: 3)
!2199 = !DILocation(line: 422, column: 15, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2201, file: !175, discriminator: 6)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !175, line: 422, column: 15)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !175, line: 422, column: 15)
!2203 = distinct !DILexicalBlock(scope: !2196, file: !175, line: 422, column: 15)
!2204 = !DILocation(line: 422, column: 15, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2202, file: !175, discriminator: 6)
!2206 = !DILocation(line: 422, column: 15, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2201, file: !175, discriminator: 7)
!2208 = !DILocation(line: 422, column: 15, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2202, file: !175, discriminator: 8)
!2210 = !DILocation(line: 422, column: 15, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2212, file: !175, discriminator: 11)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !175, line: 422, column: 15)
!2213 = distinct !DILexicalBlock(scope: !2203, file: !175, line: 422, column: 15)
!2214 = !DILocation(line: 422, column: 15, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2213, file: !175, discriminator: 11)
!2216 = !DILocation(line: 422, column: 15, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2212, file: !175, discriminator: 12)
!2218 = !DILocation(line: 422, column: 15, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2213, file: !175, discriminator: 13)
!2220 = !DILocation(line: 422, column: 15, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2222, file: !175, discriminator: 16)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !175, line: 422, column: 15)
!2223 = distinct !DILexicalBlock(scope: !2203, file: !175, line: 422, column: 15)
!2224 = !DILocation(line: 422, column: 15, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2223, file: !175, discriminator: 16)
!2226 = !DILocation(line: 422, column: 15, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2222, file: !175, discriminator: 17)
!2228 = !DILocation(line: 422, column: 15, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2223, file: !175, discriminator: 18)
!2230 = !DILocation(line: 422, column: 15, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2203, file: !175, discriminator: 20)
!2232 = !DILocation(line: 422, column: 15, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2234, file: !175, discriminator: 22)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !175, line: 422, column: 15)
!2235 = distinct !DILexicalBlock(scope: !2191, file: !175, line: 422, column: 15)
!2236 = !DILocation(line: 422, column: 15, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2235, file: !175, discriminator: 22)
!2238 = !DILocation(line: 422, column: 15, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2234, file: !175, discriminator: 23)
!2240 = !DILocation(line: 422, column: 15, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2235, file: !175, discriminator: 24)
!2242 = !DILocation(line: 430, column: 19, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2192, file: !175, line: 429, column: 19)
!2244 = !DILocation(line: 430, column: 24, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2243, file: !175, discriminator: 1)
!2246 = !DILocation(line: 430, column: 28, scope: !2245)
!2247 = !DILocation(line: 430, column: 38, scope: !2245)
!2248 = !DILocation(line: 430, column: 48, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2243, file: !175, discriminator: 2)
!2250 = !DILocation(line: 430, column: 59, scope: !2249)
!2251 = !DILocation(line: 432, column: 19, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2253, file: !175, discriminator: 1)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !175, line: 432, column: 19)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !175, line: 432, column: 19)
!2255 = distinct !DILexicalBlock(scope: !2243, file: !175, line: 431, column: 17)
!2256 = !DILocation(line: 432, column: 19, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2254, file: !175, discriminator: 1)
!2258 = !DILocation(line: 432, column: 19, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2253, file: !175, discriminator: 2)
!2260 = !DILocation(line: 432, column: 19, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2254, file: !175, discriminator: 3)
!2262 = !DILocation(line: 433, column: 19, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2264, file: !175, discriminator: 1)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !175, line: 433, column: 19)
!2265 = distinct !DILexicalBlock(scope: !2255, file: !175, line: 433, column: 19)
!2266 = !DILocation(line: 433, column: 19, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2265, file: !175, discriminator: 1)
!2268 = !DILocation(line: 433, column: 19, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2264, file: !175, discriminator: 2)
!2270 = !DILocation(line: 433, column: 19, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2265, file: !175, discriminator: 3)
!2272 = !DILocation(line: 434, column: 17, scope: !2255)
!2273 = !DILocation(line: 441, column: 20, scope: !2193)
!2274 = !DILocation(line: 446, column: 11, scope: !2039)
!2275 = !DILocation(line: 449, column: 19, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 447, column: 13)
!2277 = !DILocation(line: 455, column: 19, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2276, file: !175, line: 454, column: 19)
!2279 = !DILocation(line: 455, column: 24, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2278, file: !175, discriminator: 1)
!2281 = !DILocation(line: 455, column: 28, scope: !2280)
!2282 = !DILocation(line: 455, column: 38, scope: !2280)
!2283 = !DILocation(line: 455, column: 47, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2278, file: !175, discriminator: 2)
!2285 = !DILocation(line: 455, column: 41, scope: !2284)
!2286 = !DILocation(line: 455, column: 52, scope: !2284)
!2287 = !DILocation(line: 454, column: 19, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2276, file: !175, discriminator: 1)
!2289 = !DILocation(line: 456, column: 25, scope: !2278)
!2290 = !DILocation(line: 456, column: 17, scope: !2278)
!2291 = !DILocation(line: 463, column: 25, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2278, file: !175, line: 457, column: 19)
!2293 = !DILocation(line: 467, column: 21, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2295, file: !175, discriminator: 1)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !175, line: 467, column: 21)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !175, line: 467, column: 21)
!2297 = !DILocation(line: 467, column: 21, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2296, file: !175, discriminator: 1)
!2299 = !DILocation(line: 467, column: 21, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2295, file: !175, discriminator: 2)
!2301 = !DILocation(line: 467, column: 21, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2296, file: !175, discriminator: 3)
!2303 = !DILocation(line: 468, column: 21, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2305, file: !175, discriminator: 1)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !175, line: 468, column: 21)
!2306 = distinct !DILexicalBlock(scope: !2292, file: !175, line: 468, column: 21)
!2307 = !DILocation(line: 468, column: 21, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2306, file: !175, discriminator: 1)
!2309 = !DILocation(line: 468, column: 21, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2305, file: !175, discriminator: 2)
!2311 = !DILocation(line: 468, column: 21, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2306, file: !175, discriminator: 3)
!2313 = !DILocation(line: 469, column: 21, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2315, file: !175, discriminator: 1)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !175, line: 469, column: 21)
!2316 = distinct !DILexicalBlock(scope: !2292, file: !175, line: 469, column: 21)
!2317 = !DILocation(line: 469, column: 21, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2316, file: !175, discriminator: 1)
!2319 = !DILocation(line: 469, column: 21, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2315, file: !175, discriminator: 2)
!2321 = !DILocation(line: 469, column: 21, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2316, file: !175, discriminator: 3)
!2323 = !DILocation(line: 470, column: 21, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2325, file: !175, discriminator: 1)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !175, line: 470, column: 21)
!2326 = distinct !DILexicalBlock(scope: !2292, file: !175, line: 470, column: 21)
!2327 = !DILocation(line: 470, column: 21, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2326, file: !175, discriminator: 1)
!2329 = !DILocation(line: 470, column: 21, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2325, file: !175, discriminator: 2)
!2331 = !DILocation(line: 470, column: 21, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2326, file: !175, discriminator: 3)
!2333 = !DILocation(line: 471, column: 21, scope: !2292)
!2334 = !DILocation(line: 395, column: 21, scope: !2030)
!2335 = !DILocation(line: 484, column: 31, scope: !2039)
!2336 = !DILocation(line: 485, column: 31, scope: !2039)
!2337 = !DILocation(line: 487, column: 31, scope: !2039)
!2338 = !DILocation(line: 488, column: 31, scope: !2039)
!2339 = !DILocation(line: 489, column: 31, scope: !2039)
!2340 = !DILocation(line: 492, column: 15, scope: !2039)
!2341 = !DILocation(line: 494, column: 19, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !175, line: 493, column: 13)
!2343 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 492, column: 15)
!2344 = !DILocation(line: 501, column: 33, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 501, column: 15)
!2346 = !DILocation(line: 506, column: 15, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 505, column: 15)
!2348 = !DILocation(line: 510, column: 15, scope: !2039)
!2349 = !DILocation(line: 518, column: 26, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 518, column: 15)
!2351 = !DILocation(line: 518, column: 15, scope: !2039)
!2352 = !DILocation(line: 518, column: 40, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2350, file: !175, discriminator: 1)
!2354 = !DILocation(line: 518, column: 47, scope: !2353)
!2355 = !DILocation(line: 522, column: 17, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 522, column: 15)
!2357 = !DILocation(line: 518, column: 18, scope: !2353)
!2358 = !DILocation(line: 518, column: 65, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2350, file: !175, discriminator: 2)
!2360 = !DILocation(line: 518, column: 15, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2039, file: !175, discriminator: 2)
!2362 = !DILocation(line: 522, column: 15, scope: !2039)
!2363 = !DILocation(line: 526, column: 11, scope: !2039)
!2364 = !DILocation(line: 541, column: 15, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 540, column: 15)
!2366 = !DILocation(line: 548, column: 15, scope: !2039)
!2367 = !DILocation(line: 550, column: 19, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !175, line: 549, column: 13)
!2369 = distinct !DILexicalBlock(scope: !2039, file: !175, line: 548, column: 15)
!2370 = !DILocation(line: 553, column: 19, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !175, line: 553, column: 19)
!2372 = !DILocation(line: 553, column: 35, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2371, file: !175, discriminator: 1)
!2374 = !DILocation(line: 553, column: 30, scope: !2371)
!2375 = !DILocation(line: 562, column: 15, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !2377, file: !175, discriminator: 1)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !175, line: 562, column: 15)
!2378 = distinct !DILexicalBlock(scope: !2368, file: !175, line: 562, column: 15)
!2379 = !DILocation(line: 562, column: 15, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2378, file: !175, discriminator: 1)
!2381 = !DILocation(line: 562, column: 15, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2377, file: !175, discriminator: 2)
!2383 = !DILocation(line: 562, column: 15, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2378, file: !175, discriminator: 3)
!2385 = !DILocation(line: 563, column: 15, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2387, file: !175, discriminator: 1)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !175, line: 563, column: 15)
!2388 = distinct !DILexicalBlock(scope: !2368, file: !175, line: 563, column: 15)
!2389 = !DILocation(line: 563, column: 15, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2388, file: !175, discriminator: 1)
!2391 = !DILocation(line: 563, column: 15, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2387, file: !175, discriminator: 2)
!2393 = !DILocation(line: 563, column: 15, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2388, file: !175, discriminator: 3)
!2395 = !DILocation(line: 564, column: 15, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2397, file: !175, discriminator: 1)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !175, line: 564, column: 15)
!2398 = distinct !DILexicalBlock(scope: !2368, file: !175, line: 564, column: 15)
!2399 = !DILocation(line: 564, column: 15, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2398, file: !175, discriminator: 1)
!2401 = !DILocation(line: 564, column: 15, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2397, file: !175, discriminator: 2)
!2403 = !DILocation(line: 564, column: 15, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2398, file: !175, discriminator: 3)
!2405 = !DILocation(line: 566, column: 13, scope: !2368)
!2406 = !DILocation(line: 606, column: 17, scope: !2038)
!2407 = !DILocation(line: 602, column: 20, scope: !2038)
!2408 = !DILocation(line: 609, column: 29, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2043, file: !175, line: 607, column: 15)
!2410 = !{!1038, !1038, i64 0}
!2411 = !DILocation(line: 609, column: 27, scope: !2409)
!2412 = !DILocation(line: 604, column: 18, scope: !2038)
!2413 = !DILocation(line: 610, column: 15, scope: !2409)
!2414 = !DILocation(line: 613, column: 17, scope: !2042)
!2415 = !DILocation(line: 614, column: 17, scope: !2042)
!2416 = !DILocation(line: 618, column: 29, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2042, file: !175, line: 618, column: 21)
!2418 = !DILocation(line: 618, column: 21, scope: !2042)
!2419 = distinct !{!2419, !2420, !2421}
!2420 = !DILocation(line: 621, column: 17, scope: !2042)
!2421 = !DILocation(line: 667, column: 44, scope: !2042)
!2422 = !DILocation(line: 619, column: 29, scope: !2417)
!2423 = !DILocation(line: 619, column: 19, scope: !2417)
!2424 = !DILocation(line: 623, column: 21, scope: !2058)
!2425 = !DILocation(line: 624, column: 56, scope: !2058)
!2426 = !DILocation(line: 624, column: 50, scope: !2058)
!2427 = !DILocation(line: 625, column: 53, scope: !2058)
!2428 = !DIExpression(DW_OP_deref)
!2429 = !DILocation(line: 613, column: 27, scope: !2042)
!2430 = !DILocation(line: 623, column: 29, scope: !2058)
!2431 = !DILocation(line: 624, column: 36, scope: !2058)
!2432 = !DILocation(line: 624, column: 28, scope: !2058)
!2433 = !DILocation(line: 626, column: 25, scope: !2058)
!2434 = !DILocation(line: 636, column: 38, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2436, file: !175, discriminator: 1)
!2436 = distinct !DILexicalBlock(scope: !2065, file: !175, line: 634, column: 23)
!2437 = !DILocation(line: 636, column: 48, scope: !2435)
!2438 = !DILocation(line: 636, column: 51, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2436, file: !175, discriminator: 2)
!2440 = !DILocation(line: 636, column: 48, scope: !2439)
!2441 = !DILocation(line: 636, column: 25, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2436, file: !175, discriminator: 3)
!2443 = !DILocation(line: 637, column: 28, scope: !2436)
!2444 = !DILocation(line: 636, column: 34, scope: !2435)
!2445 = distinct !{!2445, !2446, !2443}
!2446 = !DILocation(line: 636, column: 25, scope: !2436)
!2447 = !DILocation(line: 650, column: 43, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2449, file: !175, discriminator: 1)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !175, line: 650, column: 29)
!2450 = distinct !DILexicalBlock(scope: !2062, file: !175, line: 650, column: 29)
!2451 = !DILocation(line: 647, column: 29, scope: !2063)
!2452 = !DILocation(line: 649, column: 36, scope: !2062)
!2453 = !DILocation(line: 651, column: 49, scope: !2449)
!2454 = !DILocation(line: 651, column: 39, scope: !2449)
!2455 = !DILocation(line: 651, column: 31, scope: !2449)
!2456 = !DILocation(line: 650, column: 53, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2449, file: !175, discriminator: 2)
!2458 = !DILocation(line: 650, column: 29, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2450, file: !175, discriminator: 1)
!2460 = distinct !{!2460, !2461, !2462}
!2461 = !DILocation(line: 650, column: 29, scope: !2450)
!2462 = !DILocation(line: 659, column: 33, scope: !2450)
!2463 = !DILocation(line: 666, column: 19, scope: !2042)
!2464 = !DILocation(line: 662, column: 41, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2064, file: !175, line: 662, column: 29)
!2466 = !DILocation(line: 662, column: 31, scope: !2465)
!2467 = !DILocation(line: 662, column: 29, scope: !2064)
!2468 = !DILocation(line: 664, column: 27, scope: !2064)
!2469 = !DILocation(line: 667, column: 26, scope: !2042)
!2470 = !DILocation(line: 667, column: 24, scope: !2042)
!2471 = !DILocation(line: 666, column: 19, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2058, file: !175, discriminator: 3)
!2473 = !DILocation(line: 668, column: 15, scope: !2043)
!2474 = !DILocation(line: 670, column: 40, scope: !2038)
!2475 = !DILocation(line: 672, column: 19, scope: !2070)
!2476 = !DILocation(line: 672, column: 45, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2070, file: !175, discriminator: 1)
!2478 = !DILocation(line: 672, column: 23, scope: !2070)
!2479 = !DILocation(line: 676, column: 33, scope: !2069)
!2480 = !DILocation(line: 676, column: 24, scope: !2069)
!2481 = !DILocation(line: 678, column: 17, scope: !2069)
!2482 = !DILocation(line: 680, column: 43, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !175, line: 680, column: 25)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !175, line: 679, column: 19)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !175, line: 678, column: 17)
!2486 = distinct !DILexicalBlock(scope: !2069, file: !175, line: 678, column: 17)
!2487 = !DILocation(line: 682, column: 25, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2489, file: !175, discriminator: 1)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !175, line: 682, column: 25)
!2490 = distinct !DILexicalBlock(scope: !2483, file: !175, line: 681, column: 23)
!2491 = !DILocation(line: 682, column: 25, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2493, file: !175, discriminator: 4)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !175, line: 682, column: 25)
!2494 = !DILocation(line: 682, column: 25, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2493, file: !175, discriminator: 3)
!2496 = !DILocation(line: 682, column: 25, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !2498, file: !175, discriminator: 6)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !175, line: 682, column: 25)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !175, line: 682, column: 25)
!2500 = distinct !DILexicalBlock(scope: !2493, file: !175, line: 682, column: 25)
!2501 = !DILocation(line: 682, column: 25, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2499, file: !175, discriminator: 6)
!2503 = !DILocation(line: 682, column: 25, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2498, file: !175, discriminator: 7)
!2505 = !DILocation(line: 682, column: 25, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2499, file: !175, discriminator: 8)
!2507 = !DILocation(line: 682, column: 25, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2509, file: !175, discriminator: 11)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !175, line: 682, column: 25)
!2510 = distinct !DILexicalBlock(scope: !2500, file: !175, line: 682, column: 25)
!2511 = !DILocation(line: 682, column: 25, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2510, file: !175, discriminator: 11)
!2513 = !DILocation(line: 682, column: 25, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2509, file: !175, discriminator: 12)
!2515 = !DILocation(line: 682, column: 25, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2510, file: !175, discriminator: 13)
!2517 = !DILocation(line: 682, column: 25, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2519, file: !175, discriminator: 16)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !175, line: 682, column: 25)
!2520 = distinct !DILexicalBlock(scope: !2500, file: !175, line: 682, column: 25)
!2521 = !DILocation(line: 682, column: 25, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2520, file: !175, discriminator: 16)
!2523 = !DILocation(line: 682, column: 25, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2519, file: !175, discriminator: 17)
!2525 = !DILocation(line: 682, column: 25, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2520, file: !175, discriminator: 18)
!2527 = !DILocation(line: 682, column: 25, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2500, file: !175, discriminator: 20)
!2529 = !DILocation(line: 682, column: 25, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !2531, file: !175, discriminator: 22)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !175, line: 682, column: 25)
!2532 = distinct !DILexicalBlock(scope: !2489, file: !175, line: 682, column: 25)
!2533 = !DILocation(line: 682, column: 25, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2532, file: !175, discriminator: 22)
!2535 = !DILocation(line: 682, column: 25, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !2531, file: !175, discriminator: 23)
!2537 = !DILocation(line: 682, column: 25, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2532, file: !175, discriminator: 24)
!2539 = !DILocation(line: 683, column: 25, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2541, file: !175, discriminator: 1)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !175, line: 683, column: 25)
!2542 = distinct !DILexicalBlock(scope: !2490, file: !175, line: 683, column: 25)
!2543 = !DILocation(line: 683, column: 25, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2542, file: !175, discriminator: 1)
!2545 = !DILocation(line: 683, column: 25, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !2541, file: !175, discriminator: 2)
!2547 = !DILocation(line: 683, column: 25, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !2542, file: !175, discriminator: 3)
!2549 = !DILocation(line: 684, column: 25, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2551, file: !175, discriminator: 1)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !175, line: 684, column: 25)
!2552 = distinct !DILexicalBlock(scope: !2490, file: !175, line: 684, column: 25)
!2553 = !DILocation(line: 684, column: 25, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2552, file: !175, discriminator: 1)
!2555 = !DILocation(line: 684, column: 25, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2551, file: !175, discriminator: 2)
!2557 = !DILocation(line: 684, column: 25, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2552, file: !175, discriminator: 3)
!2559 = !DILocation(line: 685, column: 38, scope: !2490)
!2560 = !DILocation(line: 685, column: 33, scope: !2490)
!2561 = !DILocation(line: 686, column: 23, scope: !2490)
!2562 = !DILocation(line: 687, column: 30, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2483, file: !175, line: 687, column: 30)
!2564 = !DILocation(line: 687, column: 30, scope: !2483)
!2565 = !DILocation(line: 689, column: 25, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2567, file: !175, discriminator: 1)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !175, line: 689, column: 25)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !175, line: 689, column: 25)
!2569 = distinct !DILexicalBlock(scope: !2563, file: !175, line: 688, column: 23)
!2570 = !DILocation(line: 689, column: 25, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2568, file: !175, discriminator: 1)
!2572 = !DILocation(line: 689, column: 25, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2567, file: !175, discriminator: 2)
!2574 = !DILocation(line: 689, column: 25, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2568, file: !175, discriminator: 3)
!2576 = !DILocation(line: 691, column: 23, scope: !2569)
!2577 = !DILocation(line: 692, column: 35, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2484, file: !175, line: 692, column: 25)
!2579 = !DILocation(line: 692, column: 30, scope: !2578)
!2580 = !DILocation(line: 692, column: 25, scope: !2484)
!2581 = !DILocation(line: 694, column: 21, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2583, file: !175, discriminator: 1)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !175, line: 694, column: 21)
!2584 = distinct !DILexicalBlock(scope: !2484, file: !175, line: 694, column: 21)
!2585 = !DILocation(line: 694, column: 21, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2583, file: !175, discriminator: 2)
!2587 = !DILocation(line: 694, column: 21, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !2589, file: !175, discriminator: 4)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !175, line: 694, column: 21)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !175, line: 694, column: 21)
!2591 = distinct !DILexicalBlock(scope: !2583, file: !175, line: 694, column: 21)
!2592 = !DILocation(line: 694, column: 21, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2590, file: !175, discriminator: 4)
!2594 = !DILocation(line: 694, column: 21, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !2589, file: !175, discriminator: 5)
!2596 = !DILocation(line: 694, column: 21, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2590, file: !175, discriminator: 6)
!2598 = !DILocation(line: 694, column: 21, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2600, file: !175, discriminator: 9)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !175, line: 694, column: 21)
!2601 = distinct !DILexicalBlock(scope: !2591, file: !175, line: 694, column: 21)
!2602 = !DILocation(line: 694, column: 21, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2601, file: !175, discriminator: 9)
!2604 = !DILocation(line: 694, column: 21, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !2600, file: !175, discriminator: 10)
!2606 = !DILocation(line: 694, column: 21, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2601, file: !175, discriminator: 11)
!2608 = !DILocation(line: 694, column: 21, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2591, file: !175, discriminator: 13)
!2610 = !DILocation(line: 695, column: 21, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2612, file: !175, discriminator: 1)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !175, line: 695, column: 21)
!2613 = distinct !DILexicalBlock(scope: !2484, file: !175, line: 695, column: 21)
!2614 = !DILocation(line: 695, column: 21, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2613, file: !175, discriminator: 1)
!2616 = !DILocation(line: 695, column: 21, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2612, file: !175, discriminator: 2)
!2618 = !DILocation(line: 695, column: 21, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2613, file: !175, discriminator: 3)
!2620 = !DILocation(line: 696, column: 25, scope: !2484)
!2621 = !DILocation(line: 678, column: 17, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !2485, file: !175, discriminator: 1)
!2623 = distinct !{!2623, !2624, !2625}
!2624 = !DILocation(line: 678, column: 17, scope: !2486)
!2625 = !DILocation(line: 697, column: 19, scope: !2486)
!2626 = !DILocation(line: 704, column: 34, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2030, file: !175, line: 704, column: 11)
!2628 = !DILocation(line: 706, column: 14, scope: !2627)
!2629 = !DILocation(line: 707, column: 14, scope: !2627)
!2630 = !DILocation(line: 707, column: 35, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2627, file: !175, discriminator: 1)
!2632 = !DILocation(line: 707, column: 17, scope: !2631)
!2633 = !DILocation(line: 707, column: 53, scope: !2631)
!2634 = !DILocation(line: 707, column: 47, scope: !2631)
!2635 = !DILocation(line: 707, column: 65, scope: !2631)
!2636 = !DILocation(line: 708, column: 15, scope: !2631)
!2637 = !DILocation(line: 708, column: 11, scope: !2627)
!2638 = !DILocation(line: 704, column: 11, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2030, file: !175, discriminator: 2)
!2640 = !DILocation(line: 712, column: 7, scope: !2641)
!2641 = !DILexicalBlockFile(scope: !2642, file: !175, discriminator: 1)
!2642 = distinct !DILexicalBlock(scope: !2030, file: !175, line: 712, column: 7)
!2643 = !DILocation(line: 712, column: 7, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2645, file: !175, discriminator: 4)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !175, line: 712, column: 7)
!2646 = !DILocation(line: 712, column: 7, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2645, file: !175, discriminator: 3)
!2648 = !DILocation(line: 712, column: 7, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2650, file: !175, discriminator: 6)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !175, line: 712, column: 7)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !175, line: 712, column: 7)
!2652 = distinct !DILexicalBlock(scope: !2645, file: !175, line: 712, column: 7)
!2653 = !DILocation(line: 712, column: 7, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2651, file: !175, discriminator: 6)
!2655 = !DILocation(line: 712, column: 7, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2650, file: !175, discriminator: 7)
!2657 = !DILocation(line: 712, column: 7, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2651, file: !175, discriminator: 8)
!2659 = !DILocation(line: 712, column: 7, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2661, file: !175, discriminator: 11)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !175, line: 712, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2652, file: !175, line: 712, column: 7)
!2663 = !DILocation(line: 712, column: 7, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2662, file: !175, discriminator: 11)
!2665 = !DILocation(line: 712, column: 7, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2661, file: !175, discriminator: 12)
!2667 = !DILocation(line: 712, column: 7, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2662, file: !175, discriminator: 13)
!2669 = !DILocation(line: 712, column: 7, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2671, file: !175, discriminator: 16)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !175, line: 712, column: 7)
!2672 = distinct !DILexicalBlock(scope: !2652, file: !175, line: 712, column: 7)
!2673 = !DILocation(line: 712, column: 7, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2672, file: !175, discriminator: 16)
!2675 = !DILocation(line: 712, column: 7, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2671, file: !175, discriminator: 17)
!2677 = !DILocation(line: 712, column: 7, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2672, file: !175, discriminator: 18)
!2679 = !DILocation(line: 712, column: 7, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2652, file: !175, discriminator: 20)
!2681 = !DILocation(line: 712, column: 7, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2683, file: !175, discriminator: 22)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !175, line: 712, column: 7)
!2684 = distinct !DILexicalBlock(scope: !2642, file: !175, line: 712, column: 7)
!2685 = !DILocation(line: 712, column: 7, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2684, file: !175, discriminator: 22)
!2687 = !DILocation(line: 712, column: 7, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2683, file: !175, discriminator: 23)
!2689 = !DILocation(line: 712, column: 7, scope: !2690)
!2690 = !DILexicalBlockFile(scope: !2684, file: !175, discriminator: 24)
!2691 = !DILocation(line: 715, column: 7, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2693, file: !175, discriminator: 1)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !175, line: 715, column: 7)
!2694 = distinct !DILexicalBlock(scope: !2030, file: !175, line: 715, column: 7)
!2695 = !DILocation(line: 715, column: 7, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !2693, file: !175, discriminator: 2)
!2697 = !DILocation(line: 715, column: 7, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2699, file: !175, discriminator: 4)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !175, line: 715, column: 7)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !175, line: 715, column: 7)
!2701 = distinct !DILexicalBlock(scope: !2693, file: !175, line: 715, column: 7)
!2702 = !DILocation(line: 715, column: 7, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2700, file: !175, discriminator: 4)
!2704 = !DILocation(line: 715, column: 7, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2699, file: !175, discriminator: 5)
!2706 = !DILocation(line: 715, column: 7, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2700, file: !175, discriminator: 6)
!2708 = !DILocation(line: 715, column: 7, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2710, file: !175, discriminator: 9)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !175, line: 715, column: 7)
!2711 = distinct !DILexicalBlock(scope: !2701, file: !175, line: 715, column: 7)
!2712 = !DILocation(line: 715, column: 7, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2711, file: !175, discriminator: 9)
!2714 = !DILocation(line: 715, column: 7, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2710, file: !175, discriminator: 10)
!2716 = !DILocation(line: 715, column: 7, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2711, file: !175, discriminator: 11)
!2718 = !DILocation(line: 715, column: 7, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2701, file: !175, discriminator: 13)
!2720 = !DILocation(line: 716, column: 7, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2722, file: !175, discriminator: 1)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !175, line: 716, column: 7)
!2723 = distinct !DILexicalBlock(scope: !2030, file: !175, line: 716, column: 7)
!2724 = !DILocation(line: 716, column: 7, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !2723, file: !175, discriminator: 1)
!2726 = !DILocation(line: 716, column: 7, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2722, file: !175, discriminator: 2)
!2728 = !DILocation(line: 716, column: 7, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2723, file: !175, discriminator: 3)
!2730 = !DILocation(line: 718, column: 13, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2030, file: !175, line: 718, column: 11)
!2732 = !DILocation(line: 718, column: 11, scope: !2030)
!2733 = !DILocation(line: 720, column: 5, scope: !2031)
!2734 = !DILocation(line: 392, column: 75, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2031, file: !175, discriminator: 5)
!2736 = !DILocation(line: 392, column: 3, scope: !2735)
!2737 = distinct !{!2737, !2738, !2739}
!2738 = !DILocation(line: 392, column: 3, scope: !2032)
!2739 = !DILocation(line: 720, column: 5, scope: !2032)
!2740 = !DILocation(line: 722, column: 11, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2003, file: !175, line: 722, column: 7)
!2742 = !DILocation(line: 722, column: 16, scope: !2741)
!2743 = !DILocation(line: 730, column: 51, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2003, file: !175, line: 730, column: 7)
!2745 = !DILocation(line: 731, column: 10, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2744, file: !175, discriminator: 1)
!2747 = !DILocation(line: 733, column: 11, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !175, line: 733, column: 11)
!2749 = distinct !DILexicalBlock(scope: !2744, file: !175, line: 732, column: 5)
!2750 = !DILocation(line: 733, column: 11, scope: !2749)
!2751 = !DILocation(line: 734, column: 16, scope: !2748)
!2752 = !DILocation(line: 734, column: 9, scope: !2748)
!2753 = !DILocation(line: 738, column: 18, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2748, file: !175, line: 738, column: 16)
!2755 = !DILocation(line: 738, column: 32, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !2754, file: !175, discriminator: 1)
!2757 = !DILocation(line: 738, column: 29, scope: !2754)
!2758 = !DILocation(line: 747, column: 7, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2003, file: !175, line: 747, column: 7)
!2760 = !DILocation(line: 747, column: 20, scope: !2759)
!2761 = !DILocation(line: 748, column: 12, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !2763, file: !175, discriminator: 1)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !175, line: 748, column: 5)
!2764 = distinct !DILexicalBlock(scope: !2759, file: !175, line: 748, column: 5)
!2765 = !DILocation(line: 748, column: 5, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !2764, file: !175, discriminator: 1)
!2767 = !DILocation(line: 749, column: 7, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2769, file: !175, discriminator: 1)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !175, line: 749, column: 7)
!2770 = distinct !DILexicalBlock(scope: !2763, file: !175, line: 749, column: 7)
!2771 = !DILocation(line: 749, column: 7, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2770, file: !175, discriminator: 1)
!2773 = !DILocation(line: 749, column: 7, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2769, file: !175, discriminator: 2)
!2775 = !DILocation(line: 749, column: 7, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2770, file: !175, discriminator: 3)
!2777 = !DILocation(line: 748, column: 39, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2763, file: !175, discriminator: 2)
!2779 = distinct !{!2779, !2780, !2781}
!2780 = !DILocation(line: 748, column: 5, scope: !2764)
!2781 = !DILocation(line: 749, column: 7, scope: !2764)
!2782 = !DILocation(line: 751, column: 11, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2003, file: !175, line: 751, column: 7)
!2784 = !DILocation(line: 751, column: 7, scope: !2003)
!2785 = !DILocation(line: 752, column: 5, scope: !2783)
!2786 = !DILocation(line: 752, column: 17, scope: !2783)
!2787 = !DILocation(line: 758, column: 21, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2003, file: !175, line: 758, column: 7)
!2789 = !DILocation(line: 758, column: 54, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !2788, file: !175, discriminator: 1)
!2791 = !DILocation(line: 758, column: 51, scope: !2788)
!2792 = !DILocation(line: 762, column: 42, scope: !2003)
!2793 = !DILocation(line: 760, column: 10, scope: !2003)
!2794 = !DILocation(line: 760, column: 3, scope: !2003)
!2795 = !DILocation(line: 764, column: 1, scope: !2003)
!2796 = distinct !DISubprogram(name: "gettext_quote", scope: !175, file: !175, line: 199, type: !2797, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!45, !45, !10}
!2799 = !{!2800, !2801, !2802, !2803}
!2800 = !DILocalVariable(name: "msgid", arg: 1, scope: !2796, file: !175, line: 199, type: !45)
!2801 = !DILocalVariable(name: "s", arg: 2, scope: !2796, file: !175, line: 199, type: !10)
!2802 = !DILocalVariable(name: "translation", scope: !2796, file: !175, line: 201, type: !45)
!2803 = !DILocalVariable(name: "locale_code", scope: !2796, file: !175, line: 202, type: !45)
!2804 = !DILocation(line: 199, column: 28, scope: !2796)
!2805 = !DILocation(line: 199, column: 54, scope: !2796)
!2806 = !DILocation(line: 201, column: 29, scope: !2796)
!2807 = !DILocation(line: 201, column: 15, scope: !2796)
!2808 = !DILocation(line: 204, column: 19, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2796, file: !175, line: 204, column: 7)
!2810 = !DILocation(line: 204, column: 7, scope: !2796)
!2811 = !DILocation(line: 225, column: 17, scope: !2796)
!2812 = !DILocation(line: 202, column: 15, scope: !2796)
!2813 = !DILocalVariable(name: "s2", arg: 2, scope: !2814, file: !2815, line: 160, type: !45)
!2814 = distinct !DISubprogram(name: "strcaseeq0", scope: !2815, file: !2815, line: 160, type: !2816, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2818)
!2815 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!93, !45, !45, !35, !35, !35, !35, !35, !35, !35, !35, !35}
!2818 = !{!2819, !2813, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828}
!2819 = !DILocalVariable(name: "s1", arg: 1, scope: !2814, file: !2815, line: 160, type: !45)
!2820 = !DILocalVariable(name: "s20", arg: 3, scope: !2814, file: !2815, line: 160, type: !35)
!2821 = !DILocalVariable(name: "s21", arg: 4, scope: !2814, file: !2815, line: 160, type: !35)
!2822 = !DILocalVariable(name: "s22", arg: 5, scope: !2814, file: !2815, line: 160, type: !35)
!2823 = !DILocalVariable(name: "s23", arg: 6, scope: !2814, file: !2815, line: 160, type: !35)
!2824 = !DILocalVariable(name: "s24", arg: 7, scope: !2814, file: !2815, line: 160, type: !35)
!2825 = !DILocalVariable(name: "s25", arg: 8, scope: !2814, file: !2815, line: 160, type: !35)
!2826 = !DILocalVariable(name: "s26", arg: 9, scope: !2814, file: !2815, line: 160, type: !35)
!2827 = !DILocalVariable(name: "s27", arg: 10, scope: !2814, file: !2815, line: 160, type: !35)
!2828 = !DILocalVariable(name: "s28", arg: 11, scope: !2814, file: !2815, line: 160, type: !35)
!2829 = !DILocation(line: 160, column: 41, scope: !2814, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 226, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2796, file: !175, line: 226, column: 7)
!2832 = !DILocation(line: 160, column: 120, scope: !2814, inlinedAt: !2830)
!2833 = !DILocation(line: 160, column: 130, scope: !2814, inlinedAt: !2830)
!2834 = !DILocation(line: 162, column: 7, scope: !2835, inlinedAt: !2830)
!2835 = !DILexicalBlockFile(scope: !2836, file: !2815, discriminator: 1)
!2836 = distinct !DILexicalBlock(scope: !2814, file: !2815, line: 162, column: 7)
!2837 = !DILocalVariable(name: "s2", arg: 2, scope: !2838, file: !2815, line: 146, type: !45)
!2838 = distinct !DISubprogram(name: "strcaseeq1", scope: !2815, file: !2815, line: 146, type: !2839, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!93, !45, !45, !35, !35, !35, !35, !35, !35, !35, !35}
!2841 = !{!2842, !2837, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850}
!2842 = !DILocalVariable(name: "s1", arg: 1, scope: !2838, file: !2815, line: 146, type: !45)
!2843 = !DILocalVariable(name: "s21", arg: 3, scope: !2838, file: !2815, line: 146, type: !35)
!2844 = !DILocalVariable(name: "s22", arg: 4, scope: !2838, file: !2815, line: 146, type: !35)
!2845 = !DILocalVariable(name: "s23", arg: 5, scope: !2838, file: !2815, line: 146, type: !35)
!2846 = !DILocalVariable(name: "s24", arg: 6, scope: !2838, file: !2815, line: 146, type: !35)
!2847 = !DILocalVariable(name: "s25", arg: 7, scope: !2838, file: !2815, line: 146, type: !35)
!2848 = !DILocalVariable(name: "s26", arg: 8, scope: !2838, file: !2815, line: 146, type: !35)
!2849 = !DILocalVariable(name: "s27", arg: 9, scope: !2838, file: !2815, line: 146, type: !35)
!2850 = !DILocalVariable(name: "s28", arg: 10, scope: !2838, file: !2815, line: 146, type: !35)
!2851 = !DILocation(line: 146, column: 41, scope: !2838, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 167, column: 16, scope: !2853, inlinedAt: !2830)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !2815, line: 164, column: 11)
!2854 = distinct !DILexicalBlock(scope: !2836, file: !2815, line: 163, column: 5)
!2855 = !DILocation(line: 146, column: 110, scope: !2838, inlinedAt: !2852)
!2856 = !DILocation(line: 146, column: 120, scope: !2838, inlinedAt: !2852)
!2857 = !DILocation(line: 148, column: 7, scope: !2858, inlinedAt: !2852)
!2858 = !DILexicalBlockFile(scope: !2859, file: !2815, discriminator: 1)
!2859 = distinct !DILexicalBlock(scope: !2838, file: !2815, line: 148, column: 7)
!2860 = !DILocalVariable(name: "s2", arg: 2, scope: !2861, file: !2815, line: 132, type: !45)
!2861 = distinct !DISubprogram(name: "strcaseeq2", scope: !2815, file: !2815, line: 132, type: !2862, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!93, !45, !45, !35, !35, !35, !35, !35, !35, !35}
!2864 = !{!2865, !2860, !2866, !2867, !2868, !2869, !2870, !2871, !2872}
!2865 = !DILocalVariable(name: "s1", arg: 1, scope: !2861, file: !2815, line: 132, type: !45)
!2866 = !DILocalVariable(name: "s22", arg: 3, scope: !2861, file: !2815, line: 132, type: !35)
!2867 = !DILocalVariable(name: "s23", arg: 4, scope: !2861, file: !2815, line: 132, type: !35)
!2868 = !DILocalVariable(name: "s24", arg: 5, scope: !2861, file: !2815, line: 132, type: !35)
!2869 = !DILocalVariable(name: "s25", arg: 6, scope: !2861, file: !2815, line: 132, type: !35)
!2870 = !DILocalVariable(name: "s26", arg: 7, scope: !2861, file: !2815, line: 132, type: !35)
!2871 = !DILocalVariable(name: "s27", arg: 8, scope: !2861, file: !2815, line: 132, type: !35)
!2872 = !DILocalVariable(name: "s28", arg: 9, scope: !2861, file: !2815, line: 132, type: !35)
!2873 = !DILocation(line: 132, column: 41, scope: !2861, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 153, column: 16, scope: !2875, inlinedAt: !2852)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !2815, line: 150, column: 11)
!2876 = distinct !DILexicalBlock(scope: !2859, file: !2815, line: 149, column: 5)
!2877 = !DILocation(line: 132, column: 100, scope: !2861, inlinedAt: !2874)
!2878 = !DILocation(line: 132, column: 110, scope: !2861, inlinedAt: !2874)
!2879 = !DILocation(line: 134, column: 7, scope: !2880, inlinedAt: !2874)
!2880 = !DILexicalBlockFile(scope: !2881, file: !2815, discriminator: 1)
!2881 = distinct !DILexicalBlock(scope: !2861, file: !2815, line: 134, column: 7)
!2882 = !DILocalVariable(name: "s2", arg: 2, scope: !2883, file: !2815, line: 118, type: !45)
!2883 = distinct !DISubprogram(name: "strcaseeq3", scope: !2815, file: !2815, line: 118, type: !2884, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!93, !45, !45, !35, !35, !35, !35, !35, !35}
!2886 = !{!2887, !2882, !2888, !2889, !2890, !2891, !2892, !2893}
!2887 = !DILocalVariable(name: "s1", arg: 1, scope: !2883, file: !2815, line: 118, type: !45)
!2888 = !DILocalVariable(name: "s23", arg: 3, scope: !2883, file: !2815, line: 118, type: !35)
!2889 = !DILocalVariable(name: "s24", arg: 4, scope: !2883, file: !2815, line: 118, type: !35)
!2890 = !DILocalVariable(name: "s25", arg: 5, scope: !2883, file: !2815, line: 118, type: !35)
!2891 = !DILocalVariable(name: "s26", arg: 6, scope: !2883, file: !2815, line: 118, type: !35)
!2892 = !DILocalVariable(name: "s27", arg: 7, scope: !2883, file: !2815, line: 118, type: !35)
!2893 = !DILocalVariable(name: "s28", arg: 8, scope: !2883, file: !2815, line: 118, type: !35)
!2894 = !DILocation(line: 118, column: 41, scope: !2883, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 139, column: 16, scope: !2896, inlinedAt: !2874)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !2815, line: 136, column: 11)
!2897 = distinct !DILexicalBlock(scope: !2881, file: !2815, line: 135, column: 5)
!2898 = !DILocation(line: 118, column: 90, scope: !2883, inlinedAt: !2895)
!2899 = !DILocation(line: 118, column: 100, scope: !2883, inlinedAt: !2895)
!2900 = !DILocation(line: 120, column: 7, scope: !2901, inlinedAt: !2895)
!2901 = !DILexicalBlockFile(scope: !2902, file: !2815, discriminator: 2)
!2902 = distinct !DILexicalBlock(scope: !2883, file: !2815, line: 120, column: 7)
!2903 = !DILocation(line: 120, column: 7, scope: !2904, inlinedAt: !2895)
!2904 = !DILexicalBlockFile(scope: !2883, file: !2815, discriminator: 2)
!2905 = !DILocalVariable(name: "s2", arg: 2, scope: !2906, file: !2815, line: 104, type: !45)
!2906 = distinct !DISubprogram(name: "strcaseeq4", scope: !2815, file: !2815, line: 104, type: !2907, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!93, !45, !45, !35, !35, !35, !35, !35}
!2909 = !{!2910, !2905, !2911, !2912, !2913, !2914, !2915}
!2910 = !DILocalVariable(name: "s1", arg: 1, scope: !2906, file: !2815, line: 104, type: !45)
!2911 = !DILocalVariable(name: "s24", arg: 3, scope: !2906, file: !2815, line: 104, type: !35)
!2912 = !DILocalVariable(name: "s25", arg: 4, scope: !2906, file: !2815, line: 104, type: !35)
!2913 = !DILocalVariable(name: "s26", arg: 5, scope: !2906, file: !2815, line: 104, type: !35)
!2914 = !DILocalVariable(name: "s27", arg: 6, scope: !2906, file: !2815, line: 104, type: !35)
!2915 = !DILocalVariable(name: "s28", arg: 7, scope: !2906, file: !2815, line: 104, type: !35)
!2916 = !DILocation(line: 104, column: 41, scope: !2906, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 125, column: 16, scope: !2918, inlinedAt: !2895)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !2815, line: 122, column: 11)
!2919 = distinct !DILexicalBlock(scope: !2902, file: !2815, line: 121, column: 5)
!2920 = !DILocation(line: 104, column: 80, scope: !2906, inlinedAt: !2917)
!2921 = !DILocation(line: 104, column: 90, scope: !2906, inlinedAt: !2917)
!2922 = !DILocation(line: 106, column: 7, scope: !2923, inlinedAt: !2917)
!2923 = !DILexicalBlockFile(scope: !2924, file: !2815, discriminator: 2)
!2924 = distinct !DILexicalBlock(scope: !2906, file: !2815, line: 106, column: 7)
!2925 = !DILocation(line: 106, column: 7, scope: !2926, inlinedAt: !2917)
!2926 = !DILexicalBlockFile(scope: !2906, file: !2815, discriminator: 2)
!2927 = !DILocalVariable(name: "s2", arg: 2, scope: !2928, file: !2815, line: 90, type: !45)
!2928 = distinct !DISubprogram(name: "strcaseeq5", scope: !2815, file: !2815, line: 90, type: !2929, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!93, !45, !45, !35, !35, !35, !35}
!2931 = !{!2932, !2927, !2933, !2934, !2935, !2936}
!2932 = !DILocalVariable(name: "s1", arg: 1, scope: !2928, file: !2815, line: 90, type: !45)
!2933 = !DILocalVariable(name: "s25", arg: 3, scope: !2928, file: !2815, line: 90, type: !35)
!2934 = !DILocalVariable(name: "s26", arg: 4, scope: !2928, file: !2815, line: 90, type: !35)
!2935 = !DILocalVariable(name: "s27", arg: 5, scope: !2928, file: !2815, line: 90, type: !35)
!2936 = !DILocalVariable(name: "s28", arg: 6, scope: !2928, file: !2815, line: 90, type: !35)
!2937 = !DILocation(line: 90, column: 41, scope: !2928, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 111, column: 16, scope: !2939, inlinedAt: !2917)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !2815, line: 108, column: 11)
!2940 = distinct !DILexicalBlock(scope: !2924, file: !2815, line: 107, column: 5)
!2941 = !DILocation(line: 90, column: 70, scope: !2928, inlinedAt: !2938)
!2942 = !DILocation(line: 90, column: 80, scope: !2928, inlinedAt: !2938)
!2943 = !DILocation(line: 92, column: 7, scope: !2944, inlinedAt: !2938)
!2944 = !DILexicalBlockFile(scope: !2945, file: !2815, discriminator: 2)
!2945 = distinct !DILexicalBlock(scope: !2928, file: !2815, line: 92, column: 7)
!2946 = !DILocation(line: 92, column: 7, scope: !2947, inlinedAt: !2938)
!2947 = !DILexicalBlockFile(scope: !2928, file: !2815, discriminator: 2)
!2948 = !DILocation(line: 227, column: 12, scope: !2831)
!2949 = !DILocation(line: 227, column: 21, scope: !2831)
!2950 = !DILocation(line: 227, column: 5, scope: !2831)
!2951 = !DILocation(line: 146, column: 41, scope: !2838, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 167, column: 16, scope: !2853, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 228, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2796, file: !175, line: 228, column: 7)
!2955 = !DILocation(line: 146, column: 110, scope: !2838, inlinedAt: !2952)
!2956 = !DILocation(line: 146, column: 120, scope: !2838, inlinedAt: !2952)
!2957 = !DILocation(line: 148, column: 7, scope: !2858, inlinedAt: !2952)
!2958 = !DILocation(line: 132, column: 41, scope: !2861, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 153, column: 16, scope: !2875, inlinedAt: !2952)
!2960 = !DILocation(line: 132, column: 100, scope: !2861, inlinedAt: !2959)
!2961 = !DILocation(line: 132, column: 110, scope: !2861, inlinedAt: !2959)
!2962 = !DILocation(line: 134, column: 7, scope: !2963, inlinedAt: !2959)
!2963 = !DILexicalBlockFile(scope: !2881, file: !2815, discriminator: 2)
!2964 = !DILocation(line: 134, column: 7, scope: !2965, inlinedAt: !2959)
!2965 = !DILexicalBlockFile(scope: !2861, file: !2815, discriminator: 2)
!2966 = !DILocation(line: 118, column: 41, scope: !2883, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 139, column: 16, scope: !2896, inlinedAt: !2959)
!2968 = !DILocation(line: 118, column: 90, scope: !2883, inlinedAt: !2967)
!2969 = !DILocation(line: 118, column: 100, scope: !2883, inlinedAt: !2967)
!2970 = !DILocation(line: 120, column: 7, scope: !2901, inlinedAt: !2967)
!2971 = !DILocation(line: 120, column: 7, scope: !2904, inlinedAt: !2967)
!2972 = !DILocation(line: 104, column: 41, scope: !2906, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 125, column: 16, scope: !2918, inlinedAt: !2967)
!2974 = !DILocation(line: 104, column: 80, scope: !2906, inlinedAt: !2973)
!2975 = !DILocation(line: 104, column: 90, scope: !2906, inlinedAt: !2973)
!2976 = !DILocation(line: 106, column: 7, scope: !2923, inlinedAt: !2973)
!2977 = !DILocation(line: 106, column: 7, scope: !2926, inlinedAt: !2973)
!2978 = !DILocation(line: 90, column: 41, scope: !2928, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 111, column: 16, scope: !2939, inlinedAt: !2973)
!2980 = !DILocation(line: 90, column: 70, scope: !2928, inlinedAt: !2979)
!2981 = !DILocation(line: 90, column: 80, scope: !2928, inlinedAt: !2979)
!2982 = !DILocation(line: 92, column: 7, scope: !2944, inlinedAt: !2979)
!2983 = !DILocation(line: 92, column: 7, scope: !2947, inlinedAt: !2979)
!2984 = !DILocalVariable(name: "s2", arg: 2, scope: !2985, file: !2815, line: 76, type: !45)
!2985 = distinct !DISubprogram(name: "strcaseeq6", scope: !2815, file: !2815, line: 76, type: !2986, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !2988)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!93, !45, !45, !35, !35, !35}
!2988 = !{!2989, !2984, !2990, !2991, !2992}
!2989 = !DILocalVariable(name: "s1", arg: 1, scope: !2985, file: !2815, line: 76, type: !45)
!2990 = !DILocalVariable(name: "s26", arg: 3, scope: !2985, file: !2815, line: 76, type: !35)
!2991 = !DILocalVariable(name: "s27", arg: 4, scope: !2985, file: !2815, line: 76, type: !35)
!2992 = !DILocalVariable(name: "s28", arg: 5, scope: !2985, file: !2815, line: 76, type: !35)
!2993 = !DILocation(line: 76, column: 41, scope: !2985, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 97, column: 16, scope: !2995, inlinedAt: !2979)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !2815, line: 94, column: 11)
!2996 = distinct !DILexicalBlock(scope: !2945, file: !2815, line: 93, column: 5)
!2997 = !DILocation(line: 76, column: 60, scope: !2985, inlinedAt: !2994)
!2998 = !DILocation(line: 76, column: 70, scope: !2985, inlinedAt: !2994)
!2999 = !DILocation(line: 78, column: 7, scope: !3000, inlinedAt: !2994)
!3000 = !DILexicalBlockFile(scope: !3001, file: !2815, discriminator: 2)
!3001 = distinct !DILexicalBlock(scope: !2985, file: !2815, line: 78, column: 7)
!3002 = !DILocation(line: 78, column: 7, scope: !3003, inlinedAt: !2994)
!3003 = !DILexicalBlockFile(scope: !2985, file: !2815, discriminator: 2)
!3004 = !DILocalVariable(name: "s2", arg: 2, scope: !3005, file: !2815, line: 62, type: !45)
!3005 = distinct !DISubprogram(name: "strcaseeq7", scope: !2815, file: !2815, line: 62, type: !3006, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!93, !45, !45, !35, !35}
!3008 = !{!3009, !3004, !3010, !3011}
!3009 = !DILocalVariable(name: "s1", arg: 1, scope: !3005, file: !2815, line: 62, type: !45)
!3010 = !DILocalVariable(name: "s27", arg: 3, scope: !3005, file: !2815, line: 62, type: !35)
!3011 = !DILocalVariable(name: "s28", arg: 4, scope: !3005, file: !2815, line: 62, type: !35)
!3012 = !DILocation(line: 62, column: 41, scope: !3005, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 83, column: 16, scope: !3014, inlinedAt: !2994)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !2815, line: 80, column: 11)
!3015 = distinct !DILexicalBlock(scope: !3001, file: !2815, line: 79, column: 5)
!3016 = !DILocation(line: 62, column: 50, scope: !3005, inlinedAt: !3013)
!3017 = !DILocation(line: 62, column: 60, scope: !3005, inlinedAt: !3013)
!3018 = !DILocation(line: 64, column: 7, scope: !3019, inlinedAt: !3013)
!3019 = !DILexicalBlockFile(scope: !3020, file: !2815, discriminator: 2)
!3020 = distinct !DILexicalBlock(scope: !3005, file: !2815, line: 64, column: 7)
!3021 = !DILocation(line: 228, column: 7, scope: !2796)
!3022 = !DILocation(line: 229, column: 12, scope: !2954)
!3023 = !DILocation(line: 229, column: 21, scope: !2954)
!3024 = !DILocation(line: 229, column: 5, scope: !2954)
!3025 = !DILocation(line: 231, column: 13, scope: !2796)
!3026 = !DILocation(line: 231, column: 11, scope: !2796)
!3027 = !DILocation(line: 231, column: 3, scope: !2796)
!3028 = !DILocation(line: 232, column: 1, scope: !2796)
!3029 = distinct !DISubprogram(name: "quotearg_alloc", scope: !175, file: !175, line: 791, type: !3030, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!34, !45, !37, !1871}
!3032 = !{!3033, !3034, !3035}
!3033 = !DILocalVariable(name: "arg", arg: 1, scope: !3029, file: !175, line: 791, type: !45)
!3034 = !DILocalVariable(name: "argsize", arg: 2, scope: !3029, file: !175, line: 791, type: !37)
!3035 = !DILocalVariable(name: "o", arg: 3, scope: !3029, file: !175, line: 792, type: !1871)
!3036 = !DILocation(line: 791, column: 29, scope: !3029)
!3037 = !DILocation(line: 791, column: 41, scope: !3029)
!3038 = !DILocation(line: 792, column: 47, scope: !3029)
!3039 = !DILocalVariable(name: "arg", arg: 1, scope: !3040, file: !175, line: 804, type: !45)
!3040 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !175, file: !175, line: 804, type: !3041, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!34, !45, !37, !645, !1871}
!3043 = !{!3039, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051}
!3044 = !DILocalVariable(name: "argsize", arg: 2, scope: !3040, file: !175, line: 804, type: !37)
!3045 = !DILocalVariable(name: "size", arg: 3, scope: !3040, file: !175, line: 804, type: !645)
!3046 = !DILocalVariable(name: "o", arg: 4, scope: !3040, file: !175, line: 805, type: !1871)
!3047 = !DILocalVariable(name: "p", scope: !3040, file: !175, line: 807, type: !1871)
!3048 = !DILocalVariable(name: "e", scope: !3040, file: !175, line: 808, type: !93)
!3049 = !DILocalVariable(name: "flags", scope: !3040, file: !175, line: 810, type: !93)
!3050 = !DILocalVariable(name: "bufsize", scope: !3040, file: !175, line: 811, type: !37)
!3051 = !DILocalVariable(name: "buf", scope: !3040, file: !175, line: 815, type: !34)
!3052 = !DILocation(line: 804, column: 33, scope: !3040, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 794, column: 10, scope: !3029)
!3054 = !DILocation(line: 804, column: 45, scope: !3040, inlinedAt: !3053)
!3055 = !DILocation(line: 804, column: 62, scope: !3040, inlinedAt: !3053)
!3056 = !DILocation(line: 805, column: 51, scope: !3040, inlinedAt: !3053)
!3057 = !DILocation(line: 807, column: 37, scope: !3040, inlinedAt: !3053)
!3058 = !DILocation(line: 807, column: 33, scope: !3040, inlinedAt: !3053)
!3059 = !DILocation(line: 808, column: 11, scope: !3040, inlinedAt: !3053)
!3060 = !DILocation(line: 808, column: 7, scope: !3040, inlinedAt: !3053)
!3061 = !DILocation(line: 810, column: 18, scope: !3040, inlinedAt: !3053)
!3062 = !DILocation(line: 810, column: 24, scope: !3040, inlinedAt: !3053)
!3063 = !DILocation(line: 810, column: 7, scope: !3040, inlinedAt: !3053)
!3064 = !DILocation(line: 811, column: 69, scope: !3040, inlinedAt: !3053)
!3065 = !DILocation(line: 812, column: 53, scope: !3040, inlinedAt: !3053)
!3066 = !DILocation(line: 813, column: 49, scope: !3040, inlinedAt: !3053)
!3067 = !DILocation(line: 814, column: 49, scope: !3040, inlinedAt: !3053)
!3068 = !DILocation(line: 811, column: 20, scope: !3040, inlinedAt: !3053)
!3069 = !DILocation(line: 814, column: 62, scope: !3040, inlinedAt: !3053)
!3070 = !DILocation(line: 811, column: 10, scope: !3040, inlinedAt: !3053)
!3071 = !DILocalVariable(name: "n", arg: 1, scope: !3072, file: !641, line: 220, type: !37)
!3072 = distinct !DISubprogram(name: "xcharalloc", scope: !641, file: !641, line: 220, type: !3073, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!34, !37}
!3075 = !{!3071}
!3076 = !DILocation(line: 220, column: 20, scope: !3072, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 815, column: 15, scope: !3040, inlinedAt: !3053)
!3078 = !DILocation(line: 222, column: 10, scope: !3072, inlinedAt: !3077)
!3079 = !DILocation(line: 815, column: 9, scope: !3040, inlinedAt: !3053)
!3080 = !DILocation(line: 816, column: 60, scope: !3040, inlinedAt: !3053)
!3081 = !DILocation(line: 818, column: 32, scope: !3040, inlinedAt: !3053)
!3082 = !DILocation(line: 818, column: 47, scope: !3040, inlinedAt: !3053)
!3083 = !DILocation(line: 816, column: 3, scope: !3040, inlinedAt: !3053)
!3084 = !DILocation(line: 819, column: 9, scope: !3040, inlinedAt: !3053)
!3085 = !DILocation(line: 794, column: 3, scope: !3029)
!3086 = !DILocation(line: 804, column: 33, scope: !3040)
!3087 = !DILocation(line: 804, column: 45, scope: !3040)
!3088 = !DILocation(line: 804, column: 62, scope: !3040)
!3089 = !DILocation(line: 805, column: 51, scope: !3040)
!3090 = !DILocation(line: 807, column: 37, scope: !3040)
!3091 = !DILocation(line: 807, column: 33, scope: !3040)
!3092 = !DILocation(line: 808, column: 11, scope: !3040)
!3093 = !DILocation(line: 808, column: 7, scope: !3040)
!3094 = !DILocation(line: 810, column: 18, scope: !3040)
!3095 = !DILocation(line: 810, column: 27, scope: !3040)
!3096 = !DILocation(line: 810, column: 24, scope: !3040)
!3097 = !DILocation(line: 810, column: 7, scope: !3040)
!3098 = !DILocation(line: 811, column: 69, scope: !3040)
!3099 = !DILocation(line: 812, column: 53, scope: !3040)
!3100 = !DILocation(line: 813, column: 49, scope: !3040)
!3101 = !DILocation(line: 814, column: 49, scope: !3040)
!3102 = !DILocation(line: 811, column: 20, scope: !3040)
!3103 = !DILocation(line: 814, column: 62, scope: !3040)
!3104 = !DILocation(line: 811, column: 10, scope: !3040)
!3105 = !DILocation(line: 220, column: 20, scope: !3072, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 815, column: 15, scope: !3040)
!3107 = !DILocation(line: 222, column: 10, scope: !3072, inlinedAt: !3106)
!3108 = !DILocation(line: 815, column: 9, scope: !3040)
!3109 = !DILocation(line: 816, column: 60, scope: !3040)
!3110 = !DILocation(line: 818, column: 32, scope: !3040)
!3111 = !DILocation(line: 818, column: 47, scope: !3040)
!3112 = !DILocation(line: 816, column: 3, scope: !3040)
!3113 = !DILocation(line: 819, column: 9, scope: !3040)
!3114 = !DILocation(line: 820, column: 7, scope: !3040)
!3115 = !DILocation(line: 821, column: 11, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3040, file: !175, line: 820, column: 7)
!3117 = !DILocation(line: 821, column: 5, scope: !3116)
!3118 = !DILocation(line: 822, column: 3, scope: !3040)
!3119 = distinct !DISubprogram(name: "quotearg_free", scope: !175, file: !175, line: 840, type: !1268, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3120)
!3120 = !{!3121, !3122}
!3121 = !DILocalVariable(name: "sv", scope: !3119, file: !175, line: 842, type: !200)
!3122 = !DILocalVariable(name: "i", scope: !3119, file: !175, line: 843, type: !93)
!3123 = !DILocation(line: 842, column: 24, scope: !3119)
!3124 = !DILocation(line: 842, column: 19, scope: !3119)
!3125 = !DILocation(line: 843, column: 7, scope: !3119)
!3126 = !DILocation(line: 844, column: 19, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3128, file: !175, discriminator: 1)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !175, line: 844, column: 3)
!3129 = distinct !DILexicalBlock(scope: !3119, file: !175, line: 844, column: 3)
!3130 = !DILocation(line: 844, column: 17, scope: !3127)
!3131 = !DILocation(line: 844, column: 3, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3129, file: !175, discriminator: 1)
!3133 = !DILocation(line: 845, column: 17, scope: !3128)
!3134 = !{!3135, !693, i64 8}
!3135 = !{!"slotvec", !910, i64 0, !693, i64 8}
!3136 = !DILocation(line: 845, column: 5, scope: !3128)
!3137 = !DILocation(line: 844, column: 28, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3128, file: !175, discriminator: 2)
!3139 = distinct !{!3139, !3140, !3141}
!3140 = !DILocation(line: 844, column: 3, scope: !3129)
!3141 = !DILocation(line: 845, column: 20, scope: !3129)
!3142 = !DILocation(line: 846, column: 13, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3119, file: !175, line: 846, column: 7)
!3144 = !DILocation(line: 846, column: 17, scope: !3143)
!3145 = !DILocation(line: 846, column: 7, scope: !3119)
!3146 = !DILocation(line: 848, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !175, line: 847, column: 5)
!3148 = !DILocation(line: 849, column: 21, scope: !3147)
!3149 = !{!3135, !910, i64 0}
!3150 = !DILocation(line: 850, column: 20, scope: !3147)
!3151 = !DILocation(line: 851, column: 5, scope: !3147)
!3152 = !DILocation(line: 852, column: 10, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3119, file: !175, line: 852, column: 7)
!3154 = !DILocation(line: 852, column: 7, scope: !3119)
!3155 = !DILocation(line: 854, column: 13, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3153, file: !175, line: 853, column: 5)
!3157 = !DILocation(line: 854, column: 7, scope: !3156)
!3158 = !DILocation(line: 855, column: 15, scope: !3156)
!3159 = !DILocation(line: 856, column: 5, scope: !3156)
!3160 = !DILocation(line: 857, column: 10, scope: !3119)
!3161 = !DILocation(line: 858, column: 1, scope: !3119)
!3162 = distinct !DISubprogram(name: "quotearg_n", scope: !175, file: !175, line: 922, type: !3163, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!34, !93, !45}
!3165 = !{!3166, !3167}
!3166 = !DILocalVariable(name: "n", arg: 1, scope: !3162, file: !175, line: 922, type: !93)
!3167 = !DILocalVariable(name: "arg", arg: 2, scope: !3162, file: !175, line: 922, type: !45)
!3168 = !DILocation(line: 922, column: 17, scope: !3162)
!3169 = !DILocation(line: 922, column: 32, scope: !3162)
!3170 = !DILocation(line: 924, column: 10, scope: !3162)
!3171 = !DILocation(line: 924, column: 3, scope: !3162)
!3172 = distinct !DISubprogram(name: "quotearg_n_options", scope: !175, file: !175, line: 869, type: !3173, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!34, !93, !45, !37, !1871}
!3175 = !{!3176, !3177, !3178, !3179, !3180, !3181, !3182, !3185, !3187, !3188, !3189}
!3176 = !DILocalVariable(name: "n", arg: 1, scope: !3172, file: !175, line: 869, type: !93)
!3177 = !DILocalVariable(name: "arg", arg: 2, scope: !3172, file: !175, line: 869, type: !45)
!3178 = !DILocalVariable(name: "argsize", arg: 3, scope: !3172, file: !175, line: 869, type: !37)
!3179 = !DILocalVariable(name: "options", arg: 4, scope: !3172, file: !175, line: 870, type: !1871)
!3180 = !DILocalVariable(name: "e", scope: !3172, file: !175, line: 872, type: !93)
!3181 = !DILocalVariable(name: "sv", scope: !3172, file: !175, line: 874, type: !200)
!3182 = !DILocalVariable(name: "preallocated", scope: !3183, file: !175, line: 881, type: !50)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !175, line: 880, column: 5)
!3184 = distinct !DILexicalBlock(scope: !3172, file: !175, line: 879, column: 7)
!3185 = !DILocalVariable(name: "size", scope: !3186, file: !175, line: 894, type: !37)
!3186 = distinct !DILexicalBlock(scope: !3172, file: !175, line: 893, column: 3)
!3187 = !DILocalVariable(name: "val", scope: !3186, file: !175, line: 895, type: !34)
!3188 = !DILocalVariable(name: "flags", scope: !3186, file: !175, line: 897, type: !93)
!3189 = !DILocalVariable(name: "qsize", scope: !3186, file: !175, line: 898, type: !37)
!3190 = !DILocation(line: 869, column: 25, scope: !3172)
!3191 = !DILocation(line: 869, column: 40, scope: !3172)
!3192 = !DILocation(line: 869, column: 52, scope: !3172)
!3193 = !DILocation(line: 870, column: 51, scope: !3172)
!3194 = !DILocation(line: 872, column: 11, scope: !3172)
!3195 = !DILocation(line: 872, column: 7, scope: !3172)
!3196 = !DILocation(line: 874, column: 24, scope: !3172)
!3197 = !DILocation(line: 874, column: 19, scope: !3172)
!3198 = !DILocation(line: 876, column: 9, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3172, file: !175, line: 876, column: 7)
!3200 = !DILocation(line: 876, column: 7, scope: !3172)
!3201 = !DILocation(line: 877, column: 5, scope: !3199)
!3202 = !DILocation(line: 879, column: 7, scope: !3184)
!3203 = !DILocation(line: 879, column: 14, scope: !3184)
!3204 = !DILocation(line: 879, column: 7, scope: !3172)
!3205 = !DILocation(line: 881, column: 31, scope: !3183)
!3206 = !DILocation(line: 883, column: 67, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3183, file: !175, line: 883, column: 11)
!3208 = !DILocation(line: 883, column: 11, scope: !3183)
!3209 = !DILocation(line: 884, column: 9, scope: !3207)
!3210 = !DILocation(line: 886, column: 32, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !3183, file: !175, discriminator: 3)
!3212 = !DILocation(line: 886, column: 61, scope: !3211)
!3213 = !DILocation(line: 886, column: 58, scope: !3211)
!3214 = !DILocation(line: 886, column: 66, scope: !3211)
!3215 = !DILocation(line: 886, column: 22, scope: !3211)
!3216 = !DILocation(line: 886, column: 15, scope: !3211)
!3217 = !DILocation(line: 887, column: 11, scope: !3183)
!3218 = !DILocation(line: 888, column: 15, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3183, file: !175, line: 887, column: 11)
!3220 = !{i64 0, i64 8, !909, i64 8, i64 8, !692}
!3221 = !DILocation(line: 888, column: 9, scope: !3219)
!3222 = !DILocation(line: 889, column: 20, scope: !3183)
!3223 = !DILocation(line: 889, column: 18, scope: !3183)
!3224 = !DILocation(line: 889, column: 7, scope: !3183)
!3225 = !DILocation(line: 889, column: 38, scope: !3183)
!3226 = !DILocation(line: 889, column: 31, scope: !3183)
!3227 = !DILocation(line: 889, column: 48, scope: !3183)
!3228 = !DILocation(line: 890, column: 14, scope: !3183)
!3229 = !DILocation(line: 891, column: 5, scope: !3183)
!3230 = !DILocation(line: 894, column: 19, scope: !3186)
!3231 = !DILocation(line: 894, column: 25, scope: !3186)
!3232 = !DILocation(line: 894, column: 12, scope: !3186)
!3233 = !DILocation(line: 895, column: 23, scope: !3186)
!3234 = !DILocation(line: 895, column: 11, scope: !3186)
!3235 = !DILocation(line: 897, column: 26, scope: !3186)
!3236 = !DILocation(line: 897, column: 32, scope: !3186)
!3237 = !DILocation(line: 897, column: 9, scope: !3186)
!3238 = !DILocation(line: 899, column: 55, scope: !3186)
!3239 = !DILocation(line: 900, column: 46, scope: !3186)
!3240 = !DILocation(line: 901, column: 55, scope: !3186)
!3241 = !DILocation(line: 902, column: 55, scope: !3186)
!3242 = !DILocation(line: 898, column: 20, scope: !3186)
!3243 = !DILocation(line: 898, column: 12, scope: !3186)
!3244 = !DILocation(line: 904, column: 14, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3186, file: !175, line: 904, column: 9)
!3246 = !DILocation(line: 904, column: 9, scope: !3186)
!3247 = !DILocation(line: 906, column: 35, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !175, line: 905, column: 7)
!3249 = !DILocation(line: 906, column: 20, scope: !3248)
!3250 = !DILocation(line: 907, column: 17, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3248, file: !175, line: 907, column: 13)
!3252 = !DILocation(line: 907, column: 13, scope: !3248)
!3253 = !DILocation(line: 908, column: 11, scope: !3251)
!3254 = !DILocation(line: 220, column: 20, scope: !3072, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 909, column: 27, scope: !3248)
!3256 = !DILocation(line: 222, column: 10, scope: !3072, inlinedAt: !3255)
!3257 = !DILocation(line: 909, column: 19, scope: !3248)
!3258 = !DILocation(line: 910, column: 69, scope: !3248)
!3259 = !DILocation(line: 912, column: 44, scope: !3248)
!3260 = !DILocation(line: 913, column: 44, scope: !3248)
!3261 = !DILocation(line: 910, column: 9, scope: !3248)
!3262 = !DILocation(line: 914, column: 7, scope: !3248)
!3263 = !DILocation(line: 916, column: 11, scope: !3186)
!3264 = !DILocation(line: 917, column: 5, scope: !3186)
!3265 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !175, file: !175, line: 928, type: !3266, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!34, !93, !45, !37}
!3268 = !{!3269, !3270, !3271}
!3269 = !DILocalVariable(name: "n", arg: 1, scope: !3265, file: !175, line: 928, type: !93)
!3270 = !DILocalVariable(name: "arg", arg: 2, scope: !3265, file: !175, line: 928, type: !45)
!3271 = !DILocalVariable(name: "argsize", arg: 3, scope: !3265, file: !175, line: 928, type: !37)
!3272 = !DILocation(line: 928, column: 21, scope: !3265)
!3273 = !DILocation(line: 928, column: 36, scope: !3265)
!3274 = !DILocation(line: 928, column: 48, scope: !3265)
!3275 = !DILocation(line: 930, column: 10, scope: !3265)
!3276 = !DILocation(line: 930, column: 3, scope: !3265)
!3277 = distinct !DISubprogram(name: "quotearg", scope: !175, file: !175, line: 934, type: !3278, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!34, !45}
!3280 = !{!3281}
!3281 = !DILocalVariable(name: "arg", arg: 1, scope: !3277, file: !175, line: 934, type: !45)
!3282 = !DILocation(line: 934, column: 23, scope: !3277)
!3283 = !DILocation(line: 922, column: 17, scope: !3162, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 936, column: 10, scope: !3277)
!3285 = !DILocation(line: 922, column: 32, scope: !3162, inlinedAt: !3284)
!3286 = !DILocation(line: 924, column: 10, scope: !3162, inlinedAt: !3284)
!3287 = !DILocation(line: 936, column: 3, scope: !3277)
!3288 = distinct !DISubprogram(name: "quotearg_mem", scope: !175, file: !175, line: 940, type: !3289, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!34, !45, !37}
!3291 = !{!3292, !3293}
!3292 = !DILocalVariable(name: "arg", arg: 1, scope: !3288, file: !175, line: 940, type: !45)
!3293 = !DILocalVariable(name: "argsize", arg: 2, scope: !3288, file: !175, line: 940, type: !37)
!3294 = !DILocation(line: 940, column: 27, scope: !3288)
!3295 = !DILocation(line: 940, column: 39, scope: !3288)
!3296 = !DILocation(line: 928, column: 21, scope: !3265, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 942, column: 10, scope: !3288)
!3298 = !DILocation(line: 928, column: 36, scope: !3265, inlinedAt: !3297)
!3299 = !DILocation(line: 928, column: 48, scope: !3265, inlinedAt: !3297)
!3300 = !DILocation(line: 930, column: 10, scope: !3265, inlinedAt: !3297)
!3301 = !DILocation(line: 942, column: 3, scope: !3288)
!3302 = distinct !DISubprogram(name: "quotearg_n_style", scope: !175, file: !175, line: 946, type: !3303, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!34, !93, !10, !45}
!3305 = !{!3306, !3307, !3308, !3309}
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !175, line: 946, type: !93)
!3307 = !DILocalVariable(name: "s", arg: 2, scope: !3302, file: !175, line: 946, type: !10)
!3308 = !DILocalVariable(name: "arg", arg: 3, scope: !3302, file: !175, line: 946, type: !45)
!3309 = !DILocalVariable(name: "o", scope: !3302, file: !175, line: 948, type: !1872)
!3310 = !DILocalVariable(name: "o", scope: !3311, file: !175, line: 187, type: !182)
!3311 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !175, file: !175, line: 185, type: !3312, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!182, !10}
!3314 = !{!3315, !3310}
!3315 = !DILocalVariable(name: "style", arg: 1, scope: !3311, file: !175, line: 185, type: !10)
!3316 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3317 = !DILocation(line: 187, column: 26, scope: !3311, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 948, column: 36, scope: !3302)
!3319 = !DILocation(line: 946, column: 23, scope: !3302)
!3320 = !DILocation(line: 946, column: 45, scope: !3302)
!3321 = !DILocation(line: 946, column: 60, scope: !3302)
!3322 = !DILocation(line: 948, column: 3, scope: !3302)
!3323 = !DILocation(line: 948, column: 32, scope: !3302)
!3324 = !DILocation(line: 185, column: 48, scope: !3311, inlinedAt: !3318)
!3325 = !DILocation(line: 187, column: 3, scope: !3311, inlinedAt: !3318)
!3326 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3327 = !DILocation(line: 188, column: 13, scope: !3328, inlinedAt: !3318)
!3328 = distinct !DILexicalBlock(scope: !3311, file: !175, line: 188, column: 7)
!3329 = !DILocation(line: 188, column: 7, scope: !3311, inlinedAt: !3318)
!3330 = !DILocation(line: 189, column: 5, scope: !3328, inlinedAt: !3318)
!3331 = !{!3332}
!3332 = distinct !{!3332, !3333, !"quoting_options_from_style: argument 0"}
!3333 = distinct !{!3333, !"quoting_options_from_style"}
!3334 = !DILocation(line: 191, column: 10, scope: !3311, inlinedAt: !3318)
!3335 = !DILocation(line: 192, column: 1, scope: !3311, inlinedAt: !3318)
!3336 = !DILocation(line: 949, column: 10, scope: !3302)
!3337 = !DILocation(line: 950, column: 1, scope: !3302)
!3338 = !DILocation(line: 949, column: 3, scope: !3302)
!3339 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !175, file: !175, line: 953, type: !3340, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!34, !93, !10, !45, !37}
!3342 = !{!3343, !3344, !3345, !3346, !3347}
!3343 = !DILocalVariable(name: "n", arg: 1, scope: !3339, file: !175, line: 953, type: !93)
!3344 = !DILocalVariable(name: "s", arg: 2, scope: !3339, file: !175, line: 953, type: !10)
!3345 = !DILocalVariable(name: "arg", arg: 3, scope: !3339, file: !175, line: 954, type: !45)
!3346 = !DILocalVariable(name: "argsize", arg: 4, scope: !3339, file: !175, line: 954, type: !37)
!3347 = !DILocalVariable(name: "o", scope: !3339, file: !175, line: 956, type: !1872)
!3348 = !DILocation(line: 187, column: 26, scope: !3311, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 956, column: 36, scope: !3339)
!3350 = !DILocation(line: 953, column: 27, scope: !3339)
!3351 = !DILocation(line: 953, column: 49, scope: !3339)
!3352 = !DILocation(line: 954, column: 35, scope: !3339)
!3353 = !DILocation(line: 954, column: 47, scope: !3339)
!3354 = !DILocation(line: 956, column: 3, scope: !3339)
!3355 = !DILocation(line: 956, column: 32, scope: !3339)
!3356 = !DILocation(line: 185, column: 48, scope: !3311, inlinedAt: !3349)
!3357 = !DILocation(line: 187, column: 3, scope: !3311, inlinedAt: !3349)
!3358 = !DILocation(line: 188, column: 13, scope: !3328, inlinedAt: !3349)
!3359 = !DILocation(line: 188, column: 7, scope: !3311, inlinedAt: !3349)
!3360 = !DILocation(line: 189, column: 5, scope: !3328, inlinedAt: !3349)
!3361 = !{!3362}
!3362 = distinct !{!3362, !3363, !"quoting_options_from_style: argument 0"}
!3363 = distinct !{!3363, !"quoting_options_from_style"}
!3364 = !DILocation(line: 191, column: 10, scope: !3311, inlinedAt: !3349)
!3365 = !DILocation(line: 192, column: 1, scope: !3311, inlinedAt: !3349)
!3366 = !DILocation(line: 957, column: 10, scope: !3339)
!3367 = !DILocation(line: 958, column: 1, scope: !3339)
!3368 = !DILocation(line: 957, column: 3, scope: !3339)
!3369 = distinct !DISubprogram(name: "quotearg_style", scope: !175, file: !175, line: 961, type: !3370, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!34, !10, !45}
!3372 = !{!3373, !3374}
!3373 = !DILocalVariable(name: "s", arg: 1, scope: !3369, file: !175, line: 961, type: !10)
!3374 = !DILocalVariable(name: "arg", arg: 2, scope: !3369, file: !175, line: 961, type: !45)
!3375 = !DILocation(line: 187, column: 26, scope: !3311, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 948, column: 36, scope: !3302, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 963, column: 10, scope: !3369)
!3378 = !DILocation(line: 961, column: 36, scope: !3369)
!3379 = !DILocation(line: 961, column: 51, scope: !3369)
!3380 = !DILocation(line: 946, column: 23, scope: !3302, inlinedAt: !3377)
!3381 = !DILocation(line: 946, column: 45, scope: !3302, inlinedAt: !3377)
!3382 = !DILocation(line: 946, column: 60, scope: !3302, inlinedAt: !3377)
!3383 = !DILocation(line: 948, column: 3, scope: !3302, inlinedAt: !3377)
!3384 = !DILocation(line: 948, column: 32, scope: !3302, inlinedAt: !3377)
!3385 = !DILocation(line: 185, column: 48, scope: !3311, inlinedAt: !3376)
!3386 = !DILocation(line: 187, column: 3, scope: !3311, inlinedAt: !3376)
!3387 = !DILocation(line: 188, column: 13, scope: !3328, inlinedAt: !3376)
!3388 = !DILocation(line: 188, column: 7, scope: !3311, inlinedAt: !3376)
!3389 = !DILocation(line: 189, column: 5, scope: !3328, inlinedAt: !3376)
!3390 = !{!3391}
!3391 = distinct !{!3391, !3392, !"quoting_options_from_style: argument 0"}
!3392 = distinct !{!3392, !"quoting_options_from_style"}
!3393 = !DILocation(line: 191, column: 10, scope: !3311, inlinedAt: !3376)
!3394 = !DILocation(line: 192, column: 1, scope: !3311, inlinedAt: !3376)
!3395 = !DILocation(line: 949, column: 10, scope: !3302, inlinedAt: !3377)
!3396 = !DILocation(line: 950, column: 1, scope: !3302, inlinedAt: !3377)
!3397 = !DILocation(line: 963, column: 3, scope: !3369)
!3398 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !175, file: !175, line: 967, type: !3399, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!34, !10, !45, !37}
!3401 = !{!3402, !3403, !3404}
!3402 = !DILocalVariable(name: "s", arg: 1, scope: !3398, file: !175, line: 967, type: !10)
!3403 = !DILocalVariable(name: "arg", arg: 2, scope: !3398, file: !175, line: 967, type: !45)
!3404 = !DILocalVariable(name: "argsize", arg: 3, scope: !3398, file: !175, line: 967, type: !37)
!3405 = !DILocation(line: 187, column: 26, scope: !3311, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 956, column: 36, scope: !3339, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 969, column: 10, scope: !3398)
!3408 = !DILocation(line: 967, column: 40, scope: !3398)
!3409 = !DILocation(line: 967, column: 55, scope: !3398)
!3410 = !DILocation(line: 967, column: 67, scope: !3398)
!3411 = !DILocation(line: 953, column: 27, scope: !3339, inlinedAt: !3407)
!3412 = !DILocation(line: 953, column: 49, scope: !3339, inlinedAt: !3407)
!3413 = !DILocation(line: 954, column: 35, scope: !3339, inlinedAt: !3407)
!3414 = !DILocation(line: 954, column: 47, scope: !3339, inlinedAt: !3407)
!3415 = !DILocation(line: 956, column: 3, scope: !3339, inlinedAt: !3407)
!3416 = !DILocation(line: 956, column: 32, scope: !3339, inlinedAt: !3407)
!3417 = !DILocation(line: 185, column: 48, scope: !3311, inlinedAt: !3406)
!3418 = !DILocation(line: 187, column: 3, scope: !3311, inlinedAt: !3406)
!3419 = !DILocation(line: 188, column: 13, scope: !3328, inlinedAt: !3406)
!3420 = !DILocation(line: 188, column: 7, scope: !3311, inlinedAt: !3406)
!3421 = !DILocation(line: 189, column: 5, scope: !3328, inlinedAt: !3406)
!3422 = !{!3423}
!3423 = distinct !{!3423, !3424, !"quoting_options_from_style: argument 0"}
!3424 = distinct !{!3424, !"quoting_options_from_style"}
!3425 = !DILocation(line: 191, column: 10, scope: !3311, inlinedAt: !3406)
!3426 = !DILocation(line: 192, column: 1, scope: !3311, inlinedAt: !3406)
!3427 = !DILocation(line: 957, column: 10, scope: !3339, inlinedAt: !3407)
!3428 = !DILocation(line: 958, column: 1, scope: !3339, inlinedAt: !3407)
!3429 = !DILocation(line: 969, column: 3, scope: !3398)
!3430 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !175, file: !175, line: 973, type: !3431, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!34, !45, !37, !35}
!3433 = !{!3434, !3435, !3436, !3437}
!3434 = !DILocalVariable(name: "arg", arg: 1, scope: !3430, file: !175, line: 973, type: !45)
!3435 = !DILocalVariable(name: "argsize", arg: 2, scope: !3430, file: !175, line: 973, type: !37)
!3436 = !DILocalVariable(name: "ch", arg: 3, scope: !3430, file: !175, line: 973, type: !35)
!3437 = !DILocalVariable(name: "options", scope: !3430, file: !175, line: 975, type: !182)
!3438 = !DILocation(line: 973, column: 32, scope: !3430)
!3439 = !DILocation(line: 973, column: 44, scope: !3430)
!3440 = !DILocation(line: 973, column: 58, scope: !3430)
!3441 = !DILocation(line: 975, column: 3, scope: !3430)
!3442 = !DILocation(line: 976, column: 13, scope: !3430)
!3443 = !{i64 0, i64 4, !894, i64 4, i64 4, !944, i64 8, i64 32, !894, i64 40, i64 8, !692, i64 48, i64 8, !692}
!3444 = !DILocation(line: 975, column: 26, scope: !3430)
!3445 = !DILocation(line: 144, column: 43, scope: !1895, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 977, column: 3, scope: !3430)
!3447 = !DILocation(line: 144, column: 51, scope: !1895, inlinedAt: !3446)
!3448 = !DILocation(line: 144, column: 58, scope: !1895, inlinedAt: !3446)
!3449 = !DILocation(line: 146, column: 17, scope: !1895, inlinedAt: !3446)
!3450 = !DILocation(line: 148, column: 62, scope: !1913, inlinedAt: !3446)
!3451 = !DILocation(line: 148, column: 57, scope: !1913, inlinedAt: !3446)
!3452 = !DILocation(line: 147, column: 17, scope: !1895, inlinedAt: !3446)
!3453 = !DILocation(line: 149, column: 18, scope: !1895, inlinedAt: !3446)
!3454 = !DILocation(line: 149, column: 15, scope: !1895, inlinedAt: !3446)
!3455 = !DILocation(line: 149, column: 7, scope: !1895, inlinedAt: !3446)
!3456 = !DILocation(line: 150, column: 12, scope: !1895, inlinedAt: !3446)
!3457 = !DILocation(line: 150, column: 15, scope: !1895, inlinedAt: !3446)
!3458 = !DILocation(line: 150, column: 25, scope: !1895, inlinedAt: !3446)
!3459 = !DILocation(line: 150, column: 7, scope: !1895, inlinedAt: !3446)
!3460 = !DILocation(line: 151, column: 18, scope: !1895, inlinedAt: !3446)
!3461 = !DILocation(line: 151, column: 23, scope: !1895, inlinedAt: !3446)
!3462 = !DILocation(line: 151, column: 6, scope: !1895, inlinedAt: !3446)
!3463 = !DILocation(line: 978, column: 10, scope: !3430)
!3464 = !DILocation(line: 979, column: 1, scope: !3430)
!3465 = !DILocation(line: 978, column: 3, scope: !3430)
!3466 = distinct !DISubprogram(name: "quotearg_char", scope: !175, file: !175, line: 982, type: !3467, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!34, !45, !35}
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "arg", arg: 1, scope: !3466, file: !175, line: 982, type: !45)
!3471 = !DILocalVariable(name: "ch", arg: 2, scope: !3466, file: !175, line: 982, type: !35)
!3472 = !DILocation(line: 982, column: 28, scope: !3466)
!3473 = !DILocation(line: 982, column: 38, scope: !3466)
!3474 = !DILocation(line: 973, column: 32, scope: !3430, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 984, column: 10, scope: !3466)
!3476 = !DILocation(line: 973, column: 44, scope: !3430, inlinedAt: !3475)
!3477 = !DILocation(line: 973, column: 58, scope: !3430, inlinedAt: !3475)
!3478 = !DILocation(line: 975, column: 3, scope: !3430, inlinedAt: !3475)
!3479 = !DILocation(line: 976, column: 13, scope: !3430, inlinedAt: !3475)
!3480 = !DILocation(line: 975, column: 26, scope: !3430, inlinedAt: !3475)
!3481 = !DILocation(line: 144, column: 43, scope: !1895, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 977, column: 3, scope: !3430, inlinedAt: !3475)
!3483 = !DILocation(line: 144, column: 51, scope: !1895, inlinedAt: !3482)
!3484 = !DILocation(line: 144, column: 58, scope: !1895, inlinedAt: !3482)
!3485 = !DILocation(line: 146, column: 17, scope: !1895, inlinedAt: !3482)
!3486 = !DILocation(line: 148, column: 62, scope: !1913, inlinedAt: !3482)
!3487 = !DILocation(line: 148, column: 57, scope: !1913, inlinedAt: !3482)
!3488 = !DILocation(line: 147, column: 17, scope: !1895, inlinedAt: !3482)
!3489 = !DILocation(line: 149, column: 18, scope: !1895, inlinedAt: !3482)
!3490 = !DILocation(line: 149, column: 15, scope: !1895, inlinedAt: !3482)
!3491 = !DILocation(line: 149, column: 7, scope: !1895, inlinedAt: !3482)
!3492 = !DILocation(line: 150, column: 12, scope: !1895, inlinedAt: !3482)
!3493 = !DILocation(line: 150, column: 15, scope: !1895, inlinedAt: !3482)
!3494 = !DILocation(line: 150, column: 25, scope: !1895, inlinedAt: !3482)
!3495 = !DILocation(line: 150, column: 7, scope: !1895, inlinedAt: !3482)
!3496 = !DILocation(line: 151, column: 18, scope: !1895, inlinedAt: !3482)
!3497 = !DILocation(line: 151, column: 23, scope: !1895, inlinedAt: !3482)
!3498 = !DILocation(line: 151, column: 6, scope: !1895, inlinedAt: !3482)
!3499 = !DILocation(line: 978, column: 10, scope: !3430, inlinedAt: !3475)
!3500 = !DILocation(line: 979, column: 1, scope: !3430, inlinedAt: !3475)
!3501 = !DILocation(line: 984, column: 3, scope: !3466)
!3502 = distinct !DISubprogram(name: "quotearg_colon", scope: !175, file: !175, line: 988, type: !3278, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3503)
!3503 = !{!3504}
!3504 = !DILocalVariable(name: "arg", arg: 1, scope: !3502, file: !175, line: 988, type: !45)
!3505 = !DILocation(line: 988, column: 29, scope: !3502)
!3506 = !DILocation(line: 982, column: 28, scope: !3466, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 990, column: 10, scope: !3502)
!3508 = !DILocation(line: 982, column: 38, scope: !3466, inlinedAt: !3507)
!3509 = !DILocation(line: 973, column: 32, scope: !3430, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 984, column: 10, scope: !3466, inlinedAt: !3507)
!3511 = !DILocation(line: 973, column: 44, scope: !3430, inlinedAt: !3510)
!3512 = !DILocation(line: 973, column: 58, scope: !3430, inlinedAt: !3510)
!3513 = !DILocation(line: 975, column: 3, scope: !3430, inlinedAt: !3510)
!3514 = !DILocation(line: 976, column: 13, scope: !3430, inlinedAt: !3510)
!3515 = !DILocation(line: 975, column: 26, scope: !3430, inlinedAt: !3510)
!3516 = !DILocation(line: 144, column: 43, scope: !1895, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 977, column: 3, scope: !3430, inlinedAt: !3510)
!3518 = !DILocation(line: 144, column: 51, scope: !1895, inlinedAt: !3517)
!3519 = !DILocation(line: 144, column: 58, scope: !1895, inlinedAt: !3517)
!3520 = !DILocation(line: 146, column: 17, scope: !1895, inlinedAt: !3517)
!3521 = !DILocation(line: 148, column: 57, scope: !1913, inlinedAt: !3517)
!3522 = !DILocation(line: 147, column: 17, scope: !1895, inlinedAt: !3517)
!3523 = !DILocation(line: 149, column: 7, scope: !1895, inlinedAt: !3517)
!3524 = !DILocation(line: 150, column: 12, scope: !1895, inlinedAt: !3517)
!3525 = !DILocation(line: 151, column: 6, scope: !1895, inlinedAt: !3517)
!3526 = !DILocation(line: 978, column: 10, scope: !3430, inlinedAt: !3510)
!3527 = !DILocation(line: 979, column: 1, scope: !3430, inlinedAt: !3510)
!3528 = !DILocation(line: 990, column: 3, scope: !3502)
!3529 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !175, file: !175, line: 994, type: !3289, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3530)
!3530 = !{!3531, !3532}
!3531 = !DILocalVariable(name: "arg", arg: 1, scope: !3529, file: !175, line: 994, type: !45)
!3532 = !DILocalVariable(name: "argsize", arg: 2, scope: !3529, file: !175, line: 994, type: !37)
!3533 = !DILocation(line: 994, column: 33, scope: !3529)
!3534 = !DILocation(line: 994, column: 45, scope: !3529)
!3535 = !DILocation(line: 973, column: 32, scope: !3430, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 996, column: 10, scope: !3529)
!3537 = !DILocation(line: 973, column: 44, scope: !3430, inlinedAt: !3536)
!3538 = !DILocation(line: 973, column: 58, scope: !3430, inlinedAt: !3536)
!3539 = !DILocation(line: 975, column: 3, scope: !3430, inlinedAt: !3536)
!3540 = !DILocation(line: 976, column: 13, scope: !3430, inlinedAt: !3536)
!3541 = !DILocation(line: 975, column: 26, scope: !3430, inlinedAt: !3536)
!3542 = !DILocation(line: 144, column: 43, scope: !1895, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 977, column: 3, scope: !3430, inlinedAt: !3536)
!3544 = !DILocation(line: 144, column: 51, scope: !1895, inlinedAt: !3543)
!3545 = !DILocation(line: 144, column: 58, scope: !1895, inlinedAt: !3543)
!3546 = !DILocation(line: 146, column: 17, scope: !1895, inlinedAt: !3543)
!3547 = !DILocation(line: 148, column: 57, scope: !1913, inlinedAt: !3543)
!3548 = !DILocation(line: 147, column: 17, scope: !1895, inlinedAt: !3543)
!3549 = !DILocation(line: 149, column: 7, scope: !1895, inlinedAt: !3543)
!3550 = !DILocation(line: 150, column: 12, scope: !1895, inlinedAt: !3543)
!3551 = !DILocation(line: 151, column: 6, scope: !1895, inlinedAt: !3543)
!3552 = !DILocation(line: 978, column: 10, scope: !3430, inlinedAt: !3536)
!3553 = !DILocation(line: 979, column: 1, scope: !3430, inlinedAt: !3536)
!3554 = !DILocation(line: 996, column: 3, scope: !3529)
!3555 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !175, file: !175, line: 1000, type: !3303, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3556)
!3556 = !{!3557, !3558, !3559, !3560}
!3557 = !DILocalVariable(name: "n", arg: 1, scope: !3555, file: !175, line: 1000, type: !93)
!3558 = !DILocalVariable(name: "s", arg: 2, scope: !3555, file: !175, line: 1000, type: !10)
!3559 = !DILocalVariable(name: "arg", arg: 3, scope: !3555, file: !175, line: 1000, type: !45)
!3560 = !DILocalVariable(name: "options", scope: !3555, file: !175, line: 1002, type: !182)
!3561 = !DILocation(line: 187, column: 26, scope: !3311, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 1003, column: 13, scope: !3555)
!3563 = !DILocation(line: 1000, column: 29, scope: !3555)
!3564 = !DILocation(line: 1000, column: 51, scope: !3555)
!3565 = !DILocation(line: 1000, column: 66, scope: !3555)
!3566 = !DILocation(line: 1002, column: 3, scope: !3555)
!3567 = !DILocation(line: 185, column: 48, scope: !3311, inlinedAt: !3562)
!3568 = !DILocation(line: 187, column: 3, scope: !3311, inlinedAt: !3562)
!3569 = !DILocation(line: 188, column: 13, scope: !3328, inlinedAt: !3562)
!3570 = !DILocation(line: 188, column: 7, scope: !3311, inlinedAt: !3562)
!3571 = !DILocation(line: 189, column: 5, scope: !3328, inlinedAt: !3562)
!3572 = !{!3573}
!3573 = distinct !{!3573, !3574, !"quoting_options_from_style: argument 0"}
!3574 = distinct !{!3574, !"quoting_options_from_style"}
!3575 = !DILocation(line: 191, column: 10, scope: !3311, inlinedAt: !3562)
!3576 = !DILocation(line: 192, column: 1, scope: !3311, inlinedAt: !3562)
!3577 = !DILocation(line: 1003, column: 13, scope: !3555)
!3578 = !DILocation(line: 1002, column: 26, scope: !3555)
!3579 = !DILocation(line: 144, column: 43, scope: !1895, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 1004, column: 3, scope: !3555)
!3581 = !DILocation(line: 144, column: 51, scope: !1895, inlinedAt: !3580)
!3582 = !DILocation(line: 144, column: 58, scope: !1895, inlinedAt: !3580)
!3583 = !DILocation(line: 146, column: 17, scope: !1895, inlinedAt: !3580)
!3584 = !DILocation(line: 148, column: 57, scope: !1913, inlinedAt: !3580)
!3585 = !DILocation(line: 147, column: 17, scope: !1895, inlinedAt: !3580)
!3586 = !DILocation(line: 149, column: 7, scope: !1895, inlinedAt: !3580)
!3587 = !DILocation(line: 150, column: 12, scope: !1895, inlinedAt: !3580)
!3588 = !DILocation(line: 151, column: 6, scope: !1895, inlinedAt: !3580)
!3589 = !DILocation(line: 1005, column: 10, scope: !3555)
!3590 = !DILocation(line: 1006, column: 1, scope: !3555)
!3591 = !DILocation(line: 1005, column: 3, scope: !3555)
!3592 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !175, file: !175, line: 1009, type: !3593, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!34, !93, !45, !45, !45}
!3595 = !{!3596, !3597, !3598, !3599}
!3596 = !DILocalVariable(name: "n", arg: 1, scope: !3592, file: !175, line: 1009, type: !93)
!3597 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3592, file: !175, line: 1009, type: !45)
!3598 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3592, file: !175, line: 1010, type: !45)
!3599 = !DILocalVariable(name: "arg", arg: 4, scope: !3592, file: !175, line: 1010, type: !45)
!3600 = !DILocation(line: 1009, column: 24, scope: !3592)
!3601 = !DILocation(line: 1009, column: 39, scope: !3592)
!3602 = !DILocation(line: 1010, column: 32, scope: !3592)
!3603 = !DILocation(line: 1010, column: 57, scope: !3592)
!3604 = !DILocalVariable(name: "n", arg: 1, scope: !3605, file: !175, line: 1017, type: !93)
!3605 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !175, file: !175, line: 1017, type: !3606, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!34, !93, !45, !45, !45, !37}
!3608 = !{!3604, !3609, !3610, !3611, !3612, !3613}
!3609 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3605, file: !175, line: 1017, type: !45)
!3610 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3605, file: !175, line: 1018, type: !45)
!3611 = !DILocalVariable(name: "arg", arg: 4, scope: !3605, file: !175, line: 1019, type: !45)
!3612 = !DILocalVariable(name: "argsize", arg: 5, scope: !3605, file: !175, line: 1019, type: !37)
!3613 = !DILocalVariable(name: "o", scope: !3605, file: !175, line: 1021, type: !182)
!3614 = !DILocation(line: 1017, column: 28, scope: !3605, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1012, column: 10, scope: !3592)
!3616 = !DILocation(line: 1017, column: 43, scope: !3605, inlinedAt: !3615)
!3617 = !DILocation(line: 1018, column: 36, scope: !3605, inlinedAt: !3615)
!3618 = !DILocation(line: 1019, column: 36, scope: !3605, inlinedAt: !3615)
!3619 = !DILocation(line: 1019, column: 48, scope: !3605, inlinedAt: !3615)
!3620 = !DILocation(line: 1021, column: 3, scope: !3605, inlinedAt: !3615)
!3621 = !DILocation(line: 1021, column: 30, scope: !3605, inlinedAt: !3615)
!3622 = !DILocation(line: 1021, column: 26, scope: !3605, inlinedAt: !3615)
!3623 = !DILocation(line: 171, column: 45, scope: !1945, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 1022, column: 3, scope: !3605, inlinedAt: !3615)
!3625 = !DILocation(line: 172, column: 33, scope: !1945, inlinedAt: !3624)
!3626 = !DILocation(line: 172, column: 57, scope: !1945, inlinedAt: !3624)
!3627 = !DILocation(line: 176, column: 6, scope: !1945, inlinedAt: !3624)
!3628 = !DILocation(line: 176, column: 12, scope: !1945, inlinedAt: !3624)
!3629 = !DILocation(line: 177, column: 8, scope: !1961, inlinedAt: !3624)
!3630 = !DILocation(line: 177, column: 23, scope: !1963, inlinedAt: !3624)
!3631 = !DILocation(line: 177, column: 19, scope: !1961, inlinedAt: !3624)
!3632 = !DILocation(line: 178, column: 5, scope: !1961, inlinedAt: !3624)
!3633 = !DILocation(line: 179, column: 6, scope: !1945, inlinedAt: !3624)
!3634 = !DILocation(line: 179, column: 17, scope: !1945, inlinedAt: !3624)
!3635 = !DILocation(line: 180, column: 6, scope: !1945, inlinedAt: !3624)
!3636 = !DILocation(line: 180, column: 18, scope: !1945, inlinedAt: !3624)
!3637 = !DILocation(line: 1023, column: 10, scope: !3605, inlinedAt: !3615)
!3638 = !DILocation(line: 1024, column: 1, scope: !3605, inlinedAt: !3615)
!3639 = !DILocation(line: 1012, column: 3, scope: !3592)
!3640 = !DILocation(line: 1017, column: 28, scope: !3605)
!3641 = !DILocation(line: 1017, column: 43, scope: !3605)
!3642 = !DILocation(line: 1018, column: 36, scope: !3605)
!3643 = !DILocation(line: 1019, column: 36, scope: !3605)
!3644 = !DILocation(line: 1019, column: 48, scope: !3605)
!3645 = !DILocation(line: 1021, column: 3, scope: !3605)
!3646 = !DILocation(line: 1021, column: 30, scope: !3605)
!3647 = !DILocation(line: 1021, column: 26, scope: !3605)
!3648 = !DILocation(line: 171, column: 45, scope: !1945, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 1022, column: 3, scope: !3605)
!3650 = !DILocation(line: 172, column: 33, scope: !1945, inlinedAt: !3649)
!3651 = !DILocation(line: 172, column: 57, scope: !1945, inlinedAt: !3649)
!3652 = !DILocation(line: 176, column: 6, scope: !1945, inlinedAt: !3649)
!3653 = !DILocation(line: 176, column: 12, scope: !1945, inlinedAt: !3649)
!3654 = !DILocation(line: 177, column: 8, scope: !1961, inlinedAt: !3649)
!3655 = !DILocation(line: 177, column: 23, scope: !1963, inlinedAt: !3649)
!3656 = !DILocation(line: 177, column: 19, scope: !1961, inlinedAt: !3649)
!3657 = !DILocation(line: 178, column: 5, scope: !1961, inlinedAt: !3649)
!3658 = !DILocation(line: 179, column: 6, scope: !1945, inlinedAt: !3649)
!3659 = !DILocation(line: 179, column: 17, scope: !1945, inlinedAt: !3649)
!3660 = !DILocation(line: 180, column: 6, scope: !1945, inlinedAt: !3649)
!3661 = !DILocation(line: 180, column: 18, scope: !1945, inlinedAt: !3649)
!3662 = !DILocation(line: 1023, column: 10, scope: !3605)
!3663 = !DILocation(line: 1024, column: 1, scope: !3605)
!3664 = !DILocation(line: 1023, column: 3, scope: !3605)
!3665 = distinct !DISubprogram(name: "quotearg_custom", scope: !175, file: !175, line: 1027, type: !3666, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3668)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!34, !45, !45, !45}
!3668 = !{!3669, !3670, !3671}
!3669 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3665, file: !175, line: 1027, type: !45)
!3670 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3665, file: !175, line: 1027, type: !45)
!3671 = !DILocalVariable(name: "arg", arg: 3, scope: !3665, file: !175, line: 1028, type: !45)
!3672 = !DILocation(line: 1027, column: 30, scope: !3665)
!3673 = !DILocation(line: 1027, column: 54, scope: !3665)
!3674 = !DILocation(line: 1028, column: 30, scope: !3665)
!3675 = !DILocation(line: 1009, column: 24, scope: !3592, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 1030, column: 10, scope: !3665)
!3677 = !DILocation(line: 1009, column: 39, scope: !3592, inlinedAt: !3676)
!3678 = !DILocation(line: 1010, column: 32, scope: !3592, inlinedAt: !3676)
!3679 = !DILocation(line: 1010, column: 57, scope: !3592, inlinedAt: !3676)
!3680 = !DILocation(line: 1017, column: 28, scope: !3605, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 1012, column: 10, scope: !3592, inlinedAt: !3676)
!3682 = !DILocation(line: 1017, column: 43, scope: !3605, inlinedAt: !3681)
!3683 = !DILocation(line: 1018, column: 36, scope: !3605, inlinedAt: !3681)
!3684 = !DILocation(line: 1019, column: 36, scope: !3605, inlinedAt: !3681)
!3685 = !DILocation(line: 1019, column: 48, scope: !3605, inlinedAt: !3681)
!3686 = !DILocation(line: 1021, column: 3, scope: !3605, inlinedAt: !3681)
!3687 = !DILocation(line: 1021, column: 30, scope: !3605, inlinedAt: !3681)
!3688 = !DILocation(line: 1021, column: 26, scope: !3605, inlinedAt: !3681)
!3689 = !DILocation(line: 171, column: 45, scope: !1945, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 1022, column: 3, scope: !3605, inlinedAt: !3681)
!3691 = !DILocation(line: 172, column: 33, scope: !1945, inlinedAt: !3690)
!3692 = !DILocation(line: 172, column: 57, scope: !1945, inlinedAt: !3690)
!3693 = !DILocation(line: 176, column: 6, scope: !1945, inlinedAt: !3690)
!3694 = !DILocation(line: 176, column: 12, scope: !1945, inlinedAt: !3690)
!3695 = !DILocation(line: 177, column: 8, scope: !1961, inlinedAt: !3690)
!3696 = !DILocation(line: 177, column: 23, scope: !1963, inlinedAt: !3690)
!3697 = !DILocation(line: 177, column: 19, scope: !1961, inlinedAt: !3690)
!3698 = !DILocation(line: 178, column: 5, scope: !1961, inlinedAt: !3690)
!3699 = !DILocation(line: 179, column: 6, scope: !1945, inlinedAt: !3690)
!3700 = !DILocation(line: 179, column: 17, scope: !1945, inlinedAt: !3690)
!3701 = !DILocation(line: 180, column: 6, scope: !1945, inlinedAt: !3690)
!3702 = !DILocation(line: 180, column: 18, scope: !1945, inlinedAt: !3690)
!3703 = !DILocation(line: 1023, column: 10, scope: !3605, inlinedAt: !3681)
!3704 = !DILocation(line: 1024, column: 1, scope: !3605, inlinedAt: !3681)
!3705 = !DILocation(line: 1030, column: 3, scope: !3665)
!3706 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !175, file: !175, line: 1034, type: !3707, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!34, !45, !45, !45, !37}
!3709 = !{!3710, !3711, !3712, !3713}
!3710 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3706, file: !175, line: 1034, type: !45)
!3711 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3706, file: !175, line: 1034, type: !45)
!3712 = !DILocalVariable(name: "arg", arg: 3, scope: !3706, file: !175, line: 1035, type: !45)
!3713 = !DILocalVariable(name: "argsize", arg: 4, scope: !3706, file: !175, line: 1035, type: !37)
!3714 = !DILocation(line: 1034, column: 34, scope: !3706)
!3715 = !DILocation(line: 1034, column: 58, scope: !3706)
!3716 = !DILocation(line: 1035, column: 34, scope: !3706)
!3717 = !DILocation(line: 1035, column: 46, scope: !3706)
!3718 = !DILocation(line: 1017, column: 28, scope: !3605, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 1037, column: 10, scope: !3706)
!3720 = !DILocation(line: 1017, column: 43, scope: !3605, inlinedAt: !3719)
!3721 = !DILocation(line: 1018, column: 36, scope: !3605, inlinedAt: !3719)
!3722 = !DILocation(line: 1019, column: 36, scope: !3605, inlinedAt: !3719)
!3723 = !DILocation(line: 1019, column: 48, scope: !3605, inlinedAt: !3719)
!3724 = !DILocation(line: 1021, column: 3, scope: !3605, inlinedAt: !3719)
!3725 = !DILocation(line: 1021, column: 30, scope: !3605, inlinedAt: !3719)
!3726 = !DILocation(line: 1021, column: 26, scope: !3605, inlinedAt: !3719)
!3727 = !DILocation(line: 171, column: 45, scope: !1945, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 1022, column: 3, scope: !3605, inlinedAt: !3719)
!3729 = !DILocation(line: 172, column: 33, scope: !1945, inlinedAt: !3728)
!3730 = !DILocation(line: 172, column: 57, scope: !1945, inlinedAt: !3728)
!3731 = !DILocation(line: 176, column: 6, scope: !1945, inlinedAt: !3728)
!3732 = !DILocation(line: 176, column: 12, scope: !1945, inlinedAt: !3728)
!3733 = !DILocation(line: 177, column: 8, scope: !1961, inlinedAt: !3728)
!3734 = !DILocation(line: 177, column: 23, scope: !1963, inlinedAt: !3728)
!3735 = !DILocation(line: 177, column: 19, scope: !1961, inlinedAt: !3728)
!3736 = !DILocation(line: 178, column: 5, scope: !1961, inlinedAt: !3728)
!3737 = !DILocation(line: 179, column: 6, scope: !1945, inlinedAt: !3728)
!3738 = !DILocation(line: 179, column: 17, scope: !1945, inlinedAt: !3728)
!3739 = !DILocation(line: 180, column: 6, scope: !1945, inlinedAt: !3728)
!3740 = !DILocation(line: 180, column: 18, scope: !1945, inlinedAt: !3728)
!3741 = !DILocation(line: 1023, column: 10, scope: !3605, inlinedAt: !3719)
!3742 = !DILocation(line: 1024, column: 1, scope: !3605, inlinedAt: !3719)
!3743 = !DILocation(line: 1037, column: 3, scope: !3706)
!3744 = distinct !DISubprogram(name: "quote_n_mem", scope: !175, file: !175, line: 1052, type: !3745, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!45, !93, !45, !37}
!3747 = !{!3748, !3749, !3750}
!3748 = !DILocalVariable(name: "n", arg: 1, scope: !3744, file: !175, line: 1052, type: !93)
!3749 = !DILocalVariable(name: "arg", arg: 2, scope: !3744, file: !175, line: 1052, type: !45)
!3750 = !DILocalVariable(name: "argsize", arg: 3, scope: !3744, file: !175, line: 1052, type: !37)
!3751 = !DILocation(line: 1052, column: 18, scope: !3744)
!3752 = !DILocation(line: 1052, column: 33, scope: !3744)
!3753 = !DILocation(line: 1052, column: 45, scope: !3744)
!3754 = !DILocation(line: 1054, column: 10, scope: !3744)
!3755 = !DILocation(line: 1054, column: 3, scope: !3744)
!3756 = distinct !DISubprogram(name: "quote_mem", scope: !175, file: !175, line: 1058, type: !3757, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!45, !45, !37}
!3759 = !{!3760, !3761}
!3760 = !DILocalVariable(name: "arg", arg: 1, scope: !3756, file: !175, line: 1058, type: !45)
!3761 = !DILocalVariable(name: "argsize", arg: 2, scope: !3756, file: !175, line: 1058, type: !37)
!3762 = !DILocation(line: 1058, column: 24, scope: !3756)
!3763 = !DILocation(line: 1058, column: 36, scope: !3756)
!3764 = !DILocation(line: 1052, column: 18, scope: !3744, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 1060, column: 10, scope: !3756)
!3766 = !DILocation(line: 1052, column: 33, scope: !3744, inlinedAt: !3765)
!3767 = !DILocation(line: 1052, column: 45, scope: !3744, inlinedAt: !3765)
!3768 = !DILocation(line: 1054, column: 10, scope: !3744, inlinedAt: !3765)
!3769 = !DILocation(line: 1060, column: 3, scope: !3756)
!3770 = distinct !DISubprogram(name: "quote_n", scope: !175, file: !175, line: 1064, type: !3771, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!45, !93, !45}
!3773 = !{!3774, !3775}
!3774 = !DILocalVariable(name: "n", arg: 1, scope: !3770, file: !175, line: 1064, type: !93)
!3775 = !DILocalVariable(name: "arg", arg: 2, scope: !3770, file: !175, line: 1064, type: !45)
!3776 = !DILocation(line: 1064, column: 14, scope: !3770)
!3777 = !DILocation(line: 1064, column: 29, scope: !3770)
!3778 = !DILocation(line: 1052, column: 18, scope: !3744, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 1066, column: 10, scope: !3770)
!3780 = !DILocation(line: 1052, column: 33, scope: !3744, inlinedAt: !3779)
!3781 = !DILocation(line: 1052, column: 45, scope: !3744, inlinedAt: !3779)
!3782 = !DILocation(line: 1054, column: 10, scope: !3744, inlinedAt: !3779)
!3783 = !DILocation(line: 1066, column: 3, scope: !3770)
!3784 = distinct !DISubprogram(name: "quote", scope: !175, file: !175, line: 1070, type: !3785, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !147, variables: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!45, !45}
!3787 = !{!3788}
!3788 = !DILocalVariable(name: "arg", arg: 1, scope: !3784, file: !175, line: 1070, type: !45)
!3789 = !DILocation(line: 1070, column: 20, scope: !3784)
!3790 = !DILocation(line: 1064, column: 14, scope: !3770, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 1072, column: 10, scope: !3784)
!3792 = !DILocation(line: 1064, column: 29, scope: !3770, inlinedAt: !3791)
!3793 = !DILocation(line: 1052, column: 18, scope: !3744, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 1066, column: 10, scope: !3770, inlinedAt: !3791)
!3795 = !DILocation(line: 1052, column: 33, scope: !3744, inlinedAt: !3794)
!3796 = !DILocation(line: 1052, column: 45, scope: !3744, inlinedAt: !3794)
!3797 = !DILocation(line: 1054, column: 10, scope: !3744, inlinedAt: !3794)
!3798 = !DILocation(line: 1072, column: 3, scope: !3784)
!3799 = distinct !DISubprogram(name: "dup_safer", scope: !3800, file: !3800, line: 31, type: !3801, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3803)
!3800 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!93, !93}
!3803 = !{!3804}
!3804 = !DILocalVariable(name: "fd", arg: 1, scope: !3799, file: !3800, line: 31, type: !93)
!3805 = !DILocation(line: 31, column: 16, scope: !3799)
!3806 = !DILocation(line: 33, column: 10, scope: !3799)
!3807 = !DILocation(line: 33, column: 3, scope: !3799)
!3808 = distinct !DISubprogram(name: "version_etc_arn", scope: !633, file: !633, line: 62, type: !3809, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !3852)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3811, !45, !45, !45, !3851, !37}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !3813)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !3814)
!3814 = !{!3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3813, file: !793, line: 242, baseType: !93, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3813, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3813, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3813, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3813, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3813, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3813, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3813, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3813, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3813, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3813, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3813, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3813, file: !793, line: 260, baseType: !3828, size: 64, offset: 768)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !3830)
!3830 = !{!3831, !3832, !3834}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3829, file: !793, line: 157, baseType: !3828, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3829, file: !793, line: 158, baseType: !3833, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3829, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3813, file: !793, line: 262, baseType: !3833, size: 64, offset: 832)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3813, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3813, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3813, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3813, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3813, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3813, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3813, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3813, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3813, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3813, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3813, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3813, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3813, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3813, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3813, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!3852 = !{!3853, !3854, !3855, !3856, !3857, !3858}
!3853 = !DILocalVariable(name: "stream", arg: 1, scope: !3808, file: !633, line: 62, type: !3811)
!3854 = !DILocalVariable(name: "command_name", arg: 2, scope: !3808, file: !633, line: 63, type: !45)
!3855 = !DILocalVariable(name: "package", arg: 3, scope: !3808, file: !633, line: 63, type: !45)
!3856 = !DILocalVariable(name: "version", arg: 4, scope: !3808, file: !633, line: 64, type: !45)
!3857 = !DILocalVariable(name: "authors", arg: 5, scope: !3808, file: !633, line: 65, type: !3851)
!3858 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3808, file: !633, line: 65, type: !37)
!3859 = !DILocation(line: 62, column: 24, scope: !3808)
!3860 = !DILocation(line: 63, column: 30, scope: !3808)
!3861 = !DILocation(line: 63, column: 56, scope: !3808)
!3862 = !DILocation(line: 64, column: 30, scope: !3808)
!3863 = !DILocation(line: 65, column: 39, scope: !3808)
!3864 = !DILocation(line: 65, column: 55, scope: !3808)
!3865 = !DILocation(line: 67, column: 7, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3808, file: !633, line: 67, column: 7)
!3867 = !DILocation(line: 67, column: 7, scope: !3808)
!3868 = !DILocation(line: 68, column: 5, scope: !3866)
!3869 = !DILocation(line: 70, column: 5, scope: !3866)
!3870 = !DILocation(line: 84, column: 3, scope: !3808)
!3871 = !DILocation(line: 84, column: 3, scope: !3872)
!3872 = !DILexicalBlockFile(scope: !3808, file: !633, discriminator: 1)
!3873 = !DILocation(line: 86, column: 3, scope: !3808)
!3874 = !DILocation(line: 86, column: 3, scope: !3872)
!3875 = !DILocation(line: 95, column: 3, scope: !3808)
!3876 = !DILocation(line: 99, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3808, file: !633, line: 96, column: 5)
!3878 = !DILocation(line: 102, column: 7, scope: !3877)
!3879 = !DILocation(line: 102, column: 7, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3877, file: !633, discriminator: 1)
!3881 = !DILocation(line: 103, column: 7, scope: !3877)
!3882 = !DILocation(line: 106, column: 7, scope: !3877)
!3883 = !DILocation(line: 106, column: 7, scope: !3880)
!3884 = !DILocation(line: 107, column: 7, scope: !3877)
!3885 = !DILocation(line: 110, column: 7, scope: !3877)
!3886 = !DILocation(line: 110, column: 7, scope: !3880)
!3887 = !DILocation(line: 112, column: 7, scope: !3877)
!3888 = !DILocation(line: 117, column: 7, scope: !3877)
!3889 = !DILocation(line: 117, column: 7, scope: !3880)
!3890 = !DILocation(line: 119, column: 7, scope: !3877)
!3891 = !DILocation(line: 124, column: 7, scope: !3877)
!3892 = !DILocation(line: 124, column: 7, scope: !3880)
!3893 = !DILocation(line: 126, column: 7, scope: !3877)
!3894 = !DILocation(line: 131, column: 7, scope: !3877)
!3895 = !DILocation(line: 131, column: 7, scope: !3880)
!3896 = !DILocation(line: 134, column: 7, scope: !3877)
!3897 = !DILocation(line: 139, column: 7, scope: !3877)
!3898 = !DILocation(line: 139, column: 7, scope: !3880)
!3899 = !DILocation(line: 142, column: 7, scope: !3877)
!3900 = !DILocation(line: 147, column: 7, scope: !3877)
!3901 = !DILocation(line: 147, column: 7, scope: !3880)
!3902 = !DILocation(line: 151, column: 7, scope: !3877)
!3903 = !DILocation(line: 156, column: 7, scope: !3877)
!3904 = !DILocation(line: 156, column: 7, scope: !3880)
!3905 = !DILocation(line: 160, column: 7, scope: !3877)
!3906 = !DILocation(line: 167, column: 7, scope: !3877)
!3907 = !DILocation(line: 167, column: 7, scope: !3880)
!3908 = !DILocation(line: 171, column: 7, scope: !3877)
!3909 = !DILocation(line: 173, column: 1, scope: !3808)
!3910 = distinct !DISubprogram(name: "version_etc_ar", scope: !633, file: !633, line: 180, type: !3911, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{null, !3811, !45, !45, !45, !3851}
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919}
!3914 = !DILocalVariable(name: "stream", arg: 1, scope: !3910, file: !633, line: 180, type: !3811)
!3915 = !DILocalVariable(name: "command_name", arg: 2, scope: !3910, file: !633, line: 181, type: !45)
!3916 = !DILocalVariable(name: "package", arg: 3, scope: !3910, file: !633, line: 181, type: !45)
!3917 = !DILocalVariable(name: "version", arg: 4, scope: !3910, file: !633, line: 182, type: !45)
!3918 = !DILocalVariable(name: "authors", arg: 5, scope: !3910, file: !633, line: 182, type: !3851)
!3919 = !DILocalVariable(name: "n_authors", scope: !3910, file: !633, line: 184, type: !37)
!3920 = !DILocation(line: 180, column: 23, scope: !3910)
!3921 = !DILocation(line: 181, column: 29, scope: !3910)
!3922 = !DILocation(line: 181, column: 55, scope: !3910)
!3923 = !DILocation(line: 182, column: 29, scope: !3910)
!3924 = !DILocation(line: 182, column: 59, scope: !3910)
!3925 = !DILocation(line: 184, column: 10, scope: !3910)
!3926 = !DILocation(line: 186, column: 8, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3910, file: !633, line: 186, column: 3)
!3928 = !DILocation(line: 186, column: 23, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3930, file: !633, discriminator: 1)
!3930 = distinct !DILexicalBlock(scope: !3927, file: !633, line: 186, column: 3)
!3931 = !DILocation(line: 186, column: 3, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3927, file: !633, discriminator: 1)
!3933 = !DILocation(line: 186, column: 52, scope: !3934)
!3934 = !DILexicalBlockFile(scope: !3930, file: !633, discriminator: 3)
!3935 = distinct !{!3935, !3936, !3937}
!3936 = !DILocation(line: 186, column: 3, scope: !3927)
!3937 = !DILocation(line: 187, column: 5, scope: !3927)
!3938 = !DILocation(line: 188, column: 3, scope: !3910)
!3939 = !DILocation(line: 189, column: 1, scope: !3910)
!3940 = distinct !DISubprogram(name: "version_etc_va", scope: !633, file: !633, line: 196, type: !3941, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !3950)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !3811, !45, !45, !45, !3943}
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !630, line: 189, size: 192, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3944, file: !630, line: 189, baseType: !188, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3944, file: !630, line: 189, baseType: !188, size: 32, offset: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3944, file: !630, line: 189, baseType: !36, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3944, file: !630, line: 189, baseType: !36, size: 64, offset: 128)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957}
!3951 = !DILocalVariable(name: "stream", arg: 1, scope: !3940, file: !633, line: 196, type: !3811)
!3952 = !DILocalVariable(name: "command_name", arg: 2, scope: !3940, file: !633, line: 197, type: !45)
!3953 = !DILocalVariable(name: "package", arg: 3, scope: !3940, file: !633, line: 197, type: !45)
!3954 = !DILocalVariable(name: "version", arg: 4, scope: !3940, file: !633, line: 198, type: !45)
!3955 = !DILocalVariable(name: "authors", arg: 5, scope: !3940, file: !633, line: 198, type: !3943)
!3956 = !DILocalVariable(name: "n_authors", scope: !3940, file: !633, line: 200, type: !37)
!3957 = !DILocalVariable(name: "authtab", scope: !3940, file: !633, line: 201, type: !3958)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 640, elements: !178)
!3959 = !DILocation(line: 196, column: 23, scope: !3940)
!3960 = !DILocation(line: 197, column: 29, scope: !3940)
!3961 = !DILocation(line: 197, column: 55, scope: !3940)
!3962 = !DILocation(line: 198, column: 29, scope: !3940)
!3963 = !DILocation(line: 198, column: 46, scope: !3940)
!3964 = !DILocation(line: 201, column: 3, scope: !3940)
!3965 = !DILocation(line: 201, column: 15, scope: !3940)
!3966 = !DILocation(line: 200, column: 10, scope: !3940)
!3967 = !DILocation(line: 205, column: 35, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3969, file: !633, discriminator: 1)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !633, line: 203, column: 3)
!3970 = distinct !DILexicalBlock(scope: !3940, file: !633, line: 203, column: 3)
!3971 = !DILocation(line: 205, column: 35, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !3969, file: !633, discriminator: 2)
!3973 = !DILocation(line: 205, column: 35, scope: !3974)
!3974 = !DILexicalBlockFile(scope: !3969, file: !633, discriminator: 3)
!3975 = !DILocation(line: 205, column: 35, scope: !3976)
!3976 = !DILexicalBlockFile(scope: !3969, file: !633, discriminator: 4)
!3977 = !DILocation(line: 205, column: 14, scope: !3976)
!3978 = !DILocation(line: 205, column: 33, scope: !3976)
!3979 = !DILocation(line: 205, column: 67, scope: !3976)
!3980 = !DILocation(line: 203, column: 3, scope: !3981)
!3981 = !DILexicalBlockFile(scope: !3970, file: !633, discriminator: 1)
!3982 = !DILocation(line: 208, column: 3, scope: !3940)
!3983 = !DILocation(line: 210, column: 1, scope: !3940)
!3984 = distinct !DISubprogram(name: "version_etc", scope: !633, file: !633, line: 227, type: !3985, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{null, !3811, !45, !45, !45, null}
!3987 = !{!3988, !3989, !3990, !3991, !3992}
!3988 = !DILocalVariable(name: "stream", arg: 1, scope: !3984, file: !633, line: 227, type: !3811)
!3989 = !DILocalVariable(name: "command_name", arg: 2, scope: !3984, file: !633, line: 228, type: !45)
!3990 = !DILocalVariable(name: "package", arg: 3, scope: !3984, file: !633, line: 228, type: !45)
!3991 = !DILocalVariable(name: "version", arg: 4, scope: !3984, file: !633, line: 229, type: !45)
!3992 = !DILocalVariable(name: "authors", scope: !3984, file: !633, line: 231, type: !3993)
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !791, line: 80, baseType: !3994)
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !236, line: 50, baseType: !3995)
!3995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !630, line: 231, baseType: !3996)
!3996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3944, size: 192, elements: !245)
!3997 = !DILocation(line: 227, column: 20, scope: !3984)
!3998 = !DILocation(line: 228, column: 26, scope: !3984)
!3999 = !DILocation(line: 228, column: 52, scope: !3984)
!4000 = !DILocation(line: 229, column: 26, scope: !3984)
!4001 = !DILocation(line: 231, column: 3, scope: !3984)
!4002 = !DILocation(line: 231, column: 11, scope: !3984)
!4003 = !DILocation(line: 233, column: 3, scope: !3984)
!4004 = !DILocation(line: 234, column: 3, scope: !3984)
!4005 = !DILocation(line: 235, column: 3, scope: !3984)
!4006 = !DILocation(line: 236, column: 1, scope: !3984)
!4007 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !633, file: !633, line: 239, type: !1268, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !121)
!4008 = !DILocation(line: 245, column: 3, scope: !4007)
!4009 = !DILocation(line: 245, column: 3, scope: !4010)
!4010 = !DILexicalBlockFile(scope: !4007, file: !633, discriminator: 1)
!4011 = !DILocation(line: 251, column: 3, scope: !4007)
!4012 = !DILocation(line: 251, column: 3, scope: !4010)
!4013 = !DILocation(line: 256, column: 3, scope: !4007)
!4014 = !DILocation(line: 256, column: 3, scope: !4010)
!4015 = !DILocation(line: 258, column: 1, scope: !4007)
!4016 = distinct !DISubprogram(name: "xnmalloc", scope: !641, file: !641, line: 105, type: !4017, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!36, !37, !37}
!4019 = !{!4020, !4021}
!4020 = !DILocalVariable(name: "n", arg: 1, scope: !4016, file: !641, line: 105, type: !37)
!4021 = !DILocalVariable(name: "s", arg: 2, scope: !4016, file: !641, line: 105, type: !37)
!4022 = !DILocation(line: 105, column: 18, scope: !4016)
!4023 = !DILocation(line: 105, column: 28, scope: !4016)
!4024 = !DILocation(line: 107, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4016, file: !641, line: 107, column: 7)
!4026 = !DILocation(line: 107, column: 7, scope: !4016)
!4027 = !DILocation(line: 108, column: 5, scope: !4025)
!4028 = !DILocation(line: 109, column: 21, scope: !4016)
!4029 = !DILocalVariable(name: "n", arg: 1, scope: !4030, file: !4031, line: 39, type: !37)
!4030 = distinct !DISubprogram(name: "xmalloc", scope: !4031, file: !4031, line: 39, type: !4032, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4034)
!4031 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!36, !37}
!4034 = !{!4029, !4035}
!4035 = !DILocalVariable(name: "p", scope: !4030, file: !4031, line: 41, type: !36)
!4036 = !DILocation(line: 39, column: 17, scope: !4030, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 109, column: 10, scope: !4016)
!4038 = !DILocation(line: 41, column: 13, scope: !4030, inlinedAt: !4037)
!4039 = !DILocation(line: 41, column: 9, scope: !4030, inlinedAt: !4037)
!4040 = !DILocation(line: 42, column: 8, scope: !4041, inlinedAt: !4037)
!4041 = distinct !DILexicalBlock(scope: !4030, file: !4031, line: 42, column: 7)
!4042 = !DILocation(line: 42, column: 15, scope: !4043, inlinedAt: !4037)
!4043 = !DILexicalBlockFile(scope: !4041, file: !4031, discriminator: 1)
!4044 = !DILocation(line: 42, column: 10, scope: !4041, inlinedAt: !4037)
!4045 = !DILocation(line: 43, column: 5, scope: !4041, inlinedAt: !4037)
!4046 = !DILocation(line: 109, column: 3, scope: !4016)
!4047 = !DILocation(line: 39, column: 17, scope: !4030)
!4048 = !DILocation(line: 41, column: 13, scope: !4030)
!4049 = !DILocation(line: 41, column: 9, scope: !4030)
!4050 = !DILocation(line: 42, column: 8, scope: !4041)
!4051 = !DILocation(line: 42, column: 15, scope: !4043)
!4052 = !DILocation(line: 42, column: 10, scope: !4041)
!4053 = !DILocation(line: 43, column: 5, scope: !4041)
!4054 = !DILocation(line: 44, column: 3, scope: !4030)
!4055 = distinct !DISubprogram(name: "xnrealloc", scope: !641, file: !641, line: 118, type: !4056, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!36, !36, !37, !37}
!4058 = !{!4059, !4060, !4061}
!4059 = !DILocalVariable(name: "p", arg: 1, scope: !4055, file: !641, line: 118, type: !36)
!4060 = !DILocalVariable(name: "n", arg: 2, scope: !4055, file: !641, line: 118, type: !37)
!4061 = !DILocalVariable(name: "s", arg: 3, scope: !4055, file: !641, line: 118, type: !37)
!4062 = !DILocation(line: 118, column: 18, scope: !4055)
!4063 = !DILocation(line: 118, column: 28, scope: !4055)
!4064 = !DILocation(line: 118, column: 38, scope: !4055)
!4065 = !DILocation(line: 120, column: 7, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4055, file: !641, line: 120, column: 7)
!4067 = !DILocation(line: 120, column: 7, scope: !4055)
!4068 = !DILocation(line: 121, column: 5, scope: !4066)
!4069 = !DILocation(line: 122, column: 25, scope: !4055)
!4070 = !DILocalVariable(name: "p", arg: 1, scope: !4071, file: !4031, line: 51, type: !36)
!4071 = distinct !DISubprogram(name: "xrealloc", scope: !4031, file: !4031, line: 51, type: !4072, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4074)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!36, !36, !37}
!4074 = !{!4070, !4075}
!4075 = !DILocalVariable(name: "n", arg: 2, scope: !4071, file: !4031, line: 51, type: !37)
!4076 = !DILocation(line: 51, column: 17, scope: !4071, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 122, column: 10, scope: !4055)
!4078 = !DILocation(line: 51, column: 27, scope: !4071, inlinedAt: !4077)
!4079 = !DILocation(line: 53, column: 8, scope: !4080, inlinedAt: !4077)
!4080 = distinct !DILexicalBlock(scope: !4071, file: !4031, line: 53, column: 7)
!4081 = !DILocation(line: 53, column: 13, scope: !4082, inlinedAt: !4077)
!4082 = !DILexicalBlockFile(scope: !4080, file: !4031, discriminator: 1)
!4083 = !DILocation(line: 53, column: 10, scope: !4080, inlinedAt: !4077)
!4084 = !DILocation(line: 57, column: 7, scope: !4085, inlinedAt: !4077)
!4085 = distinct !DILexicalBlock(scope: !4080, file: !4031, line: 54, column: 5)
!4086 = !DILocation(line: 58, column: 7, scope: !4085, inlinedAt: !4077)
!4087 = !DILocation(line: 61, column: 7, scope: !4071, inlinedAt: !4077)
!4088 = !DILocation(line: 62, column: 8, scope: !4089, inlinedAt: !4077)
!4089 = distinct !DILexicalBlock(scope: !4071, file: !4031, line: 62, column: 7)
!4090 = !DILocation(line: 62, column: 13, scope: !4091, inlinedAt: !4077)
!4091 = !DILexicalBlockFile(scope: !4089, file: !4031, discriminator: 1)
!4092 = !DILocation(line: 62, column: 10, scope: !4089, inlinedAt: !4077)
!4093 = !DILocation(line: 63, column: 5, scope: !4089, inlinedAt: !4077)
!4094 = !DILocation(line: 122, column: 3, scope: !4055)
!4095 = !DILocation(line: 51, column: 17, scope: !4071)
!4096 = !DILocation(line: 51, column: 27, scope: !4071)
!4097 = !DILocation(line: 53, column: 8, scope: !4080)
!4098 = !DILocation(line: 53, column: 13, scope: !4082)
!4099 = !DILocation(line: 53, column: 10, scope: !4080)
!4100 = !DILocation(line: 57, column: 7, scope: !4085)
!4101 = !DILocation(line: 58, column: 7, scope: !4085)
!4102 = !DILocation(line: 61, column: 7, scope: !4071)
!4103 = !DILocation(line: 62, column: 8, scope: !4089)
!4104 = !DILocation(line: 62, column: 13, scope: !4091)
!4105 = !DILocation(line: 62, column: 10, scope: !4089)
!4106 = !DILocation(line: 63, column: 5, scope: !4089)
!4107 = !DILocation(line: 65, column: 1, scope: !4071)
!4108 = !DILocation(line: 180, column: 19, scope: !642)
!4109 = !DILocation(line: 180, column: 30, scope: !642)
!4110 = !DILocation(line: 180, column: 41, scope: !642)
!4111 = !DILocation(line: 182, column: 14, scope: !642)
!4112 = !DILocation(line: 182, column: 10, scope: !642)
!4113 = !DILocation(line: 184, column: 9, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !642, file: !641, line: 184, column: 7)
!4115 = !DILocation(line: 184, column: 7, scope: !642)
!4116 = !DILocation(line: 186, column: 13, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !641, line: 186, column: 11)
!4118 = distinct !DILexicalBlock(scope: !4114, file: !641, line: 185, column: 5)
!4119 = !DILocation(line: 186, column: 11, scope: !4118)
!4120 = !DILocation(line: 194, column: 30, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4117, file: !641, line: 187, column: 9)
!4122 = !DILocation(line: 195, column: 16, scope: !4121)
!4123 = !DILocation(line: 195, column: 13, scope: !4121)
!4124 = !DILocation(line: 196, column: 9, scope: !4121)
!4125 = !DILocation(line: 204, column: 69, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !641, line: 204, column: 11)
!4127 = distinct !DILexicalBlock(scope: !4114, file: !641, line: 199, column: 5)
!4128 = !DILocation(line: 205, column: 11, scope: !4126)
!4129 = !DILocation(line: 204, column: 11, scope: !4127)
!4130 = !DILocation(line: 206, column: 9, scope: !4126)
!4131 = !DILocation(line: 210, column: 7, scope: !642)
!4132 = !DILocation(line: 211, column: 25, scope: !642)
!4133 = !DILocation(line: 51, column: 17, scope: !4071, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 211, column: 10, scope: !642)
!4135 = !DILocation(line: 51, column: 27, scope: !4071, inlinedAt: !4134)
!4136 = !DILocation(line: 53, column: 10, scope: !4080, inlinedAt: !4134)
!4137 = !DILocation(line: 207, column: 14, scope: !4127)
!4138 = !DILocation(line: 207, column: 18, scope: !4127)
!4139 = !DILocation(line: 207, column: 9, scope: !4127)
!4140 = !DILocation(line: 53, column: 8, scope: !4080, inlinedAt: !4134)
!4141 = !DILocation(line: 57, column: 7, scope: !4085, inlinedAt: !4134)
!4142 = !DILocation(line: 58, column: 7, scope: !4085, inlinedAt: !4134)
!4143 = !DILocation(line: 61, column: 7, scope: !4071, inlinedAt: !4134)
!4144 = !DILocation(line: 62, column: 8, scope: !4089, inlinedAt: !4134)
!4145 = !DILocation(line: 62, column: 13, scope: !4091, inlinedAt: !4134)
!4146 = !DILocation(line: 62, column: 10, scope: !4089, inlinedAt: !4134)
!4147 = !DILocation(line: 63, column: 5, scope: !4089, inlinedAt: !4134)
!4148 = !DILocation(line: 211, column: 3, scope: !642)
!4149 = distinct !DISubprogram(name: "xcharalloc", scope: !641, file: !641, line: 220, type: !3073, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4150)
!4150 = !{!4151}
!4151 = !DILocalVariable(name: "n", arg: 1, scope: !4149, file: !641, line: 220, type: !37)
!4152 = !DILocation(line: 220, column: 20, scope: !4149)
!4153 = !DILocation(line: 39, column: 17, scope: !4030, inlinedAt: !4154)
!4154 = distinct !DILocation(line: 222, column: 10, scope: !4149)
!4155 = !DILocation(line: 41, column: 13, scope: !4030, inlinedAt: !4154)
!4156 = !DILocation(line: 41, column: 9, scope: !4030, inlinedAt: !4154)
!4157 = !DILocation(line: 42, column: 8, scope: !4041, inlinedAt: !4154)
!4158 = !DILocation(line: 42, column: 15, scope: !4043, inlinedAt: !4154)
!4159 = !DILocation(line: 42, column: 10, scope: !4041, inlinedAt: !4154)
!4160 = !DILocation(line: 43, column: 5, scope: !4041, inlinedAt: !4154)
!4161 = !DILocation(line: 222, column: 3, scope: !4149)
!4162 = distinct !DISubprogram(name: "x2realloc", scope: !4031, file: !4031, line: 74, type: !4163, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!36, !36, !645}
!4165 = !{!4166, !4167}
!4166 = !DILocalVariable(name: "p", arg: 1, scope: !4162, file: !4031, line: 74, type: !36)
!4167 = !DILocalVariable(name: "pn", arg: 2, scope: !4162, file: !4031, line: 74, type: !645)
!4168 = !DILocation(line: 74, column: 18, scope: !4162)
!4169 = !DILocation(line: 74, column: 29, scope: !4162)
!4170 = !DILocation(line: 180, column: 19, scope: !642, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 76, column: 10, scope: !4162)
!4172 = !DILocation(line: 180, column: 30, scope: !642, inlinedAt: !4171)
!4173 = !DILocation(line: 180, column: 41, scope: !642, inlinedAt: !4171)
!4174 = !DILocation(line: 182, column: 14, scope: !642, inlinedAt: !4171)
!4175 = !DILocation(line: 182, column: 10, scope: !642, inlinedAt: !4171)
!4176 = !DILocation(line: 184, column: 9, scope: !4114, inlinedAt: !4171)
!4177 = !DILocation(line: 184, column: 7, scope: !642, inlinedAt: !4171)
!4178 = !DILocation(line: 186, column: 13, scope: !4117, inlinedAt: !4171)
!4179 = !DILocation(line: 186, column: 11, scope: !4118, inlinedAt: !4171)
!4180 = !DILocation(line: 210, column: 7, scope: !642, inlinedAt: !4171)
!4181 = !DILocation(line: 51, column: 17, scope: !4071, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 211, column: 10, scope: !642, inlinedAt: !4171)
!4183 = !DILocation(line: 51, column: 27, scope: !4071, inlinedAt: !4182)
!4184 = !DILocation(line: 53, column: 10, scope: !4080, inlinedAt: !4182)
!4185 = !DILocation(line: 205, column: 11, scope: !4126, inlinedAt: !4171)
!4186 = !DILocation(line: 204, column: 11, scope: !4127, inlinedAt: !4171)
!4187 = !DILocation(line: 206, column: 9, scope: !4126, inlinedAt: !4171)
!4188 = !DILocation(line: 207, column: 14, scope: !4127, inlinedAt: !4171)
!4189 = !DILocation(line: 207, column: 18, scope: !4127, inlinedAt: !4171)
!4190 = !DILocation(line: 207, column: 9, scope: !4127, inlinedAt: !4171)
!4191 = !DILocation(line: 53, column: 8, scope: !4080, inlinedAt: !4182)
!4192 = !DILocation(line: 57, column: 7, scope: !4085, inlinedAt: !4182)
!4193 = !DILocation(line: 58, column: 7, scope: !4085, inlinedAt: !4182)
!4194 = !DILocation(line: 61, column: 7, scope: !4071, inlinedAt: !4182)
!4195 = !DILocation(line: 62, column: 8, scope: !4089, inlinedAt: !4182)
!4196 = !DILocation(line: 62, column: 13, scope: !4091, inlinedAt: !4182)
!4197 = !DILocation(line: 62, column: 10, scope: !4089, inlinedAt: !4182)
!4198 = !DILocation(line: 63, column: 5, scope: !4089, inlinedAt: !4182)
!4199 = !DILocation(line: 76, column: 3, scope: !4162)
!4200 = distinct !DISubprogram(name: "xzalloc", scope: !4031, file: !4031, line: 84, type: !4032, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4201)
!4201 = !{!4202}
!4202 = !DILocalVariable(name: "s", arg: 1, scope: !4200, file: !4031, line: 84, type: !37)
!4203 = !DILocation(line: 84, column: 17, scope: !4200)
!4204 = !DILocation(line: 39, column: 17, scope: !4030, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 86, column: 18, scope: !4200)
!4206 = !DILocation(line: 41, column: 13, scope: !4030, inlinedAt: !4205)
!4207 = !DILocation(line: 41, column: 9, scope: !4030, inlinedAt: !4205)
!4208 = !DILocation(line: 42, column: 8, scope: !4041, inlinedAt: !4205)
!4209 = !DILocation(line: 42, column: 15, scope: !4043, inlinedAt: !4205)
!4210 = !DILocation(line: 42, column: 10, scope: !4041, inlinedAt: !4205)
!4211 = !DILocation(line: 43, column: 5, scope: !4041, inlinedAt: !4205)
!4212 = !DILocation(line: 86, column: 10, scope: !4200)
!4213 = !DILocation(line: 86, column: 3, scope: !4200)
!4214 = distinct !DISubprogram(name: "xcalloc", scope: !4031, file: !4031, line: 93, type: !4017, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4215)
!4215 = !{!4216, !4217, !4218}
!4216 = !DILocalVariable(name: "n", arg: 1, scope: !4214, file: !4031, line: 93, type: !37)
!4217 = !DILocalVariable(name: "s", arg: 2, scope: !4214, file: !4031, line: 93, type: !37)
!4218 = !DILocalVariable(name: "p", scope: !4214, file: !4031, line: 95, type: !36)
!4219 = !DILocation(line: 93, column: 17, scope: !4214)
!4220 = !DILocation(line: 93, column: 27, scope: !4214)
!4221 = !DILocation(line: 100, column: 7, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4214, file: !4031, line: 100, column: 7)
!4223 = !DILocation(line: 101, column: 7, scope: !4222)
!4224 = !DILocation(line: 101, column: 18, scope: !4225)
!4225 = !DILexicalBlockFile(scope: !4222, file: !4031, discriminator: 1)
!4226 = !DILocation(line: 95, column: 9, scope: !4214)
!4227 = !DILocation(line: 101, column: 16, scope: !4225)
!4228 = !DILocation(line: 100, column: 7, scope: !4229)
!4229 = !DILexicalBlockFile(scope: !4214, file: !4031, discriminator: 1)
!4230 = !DILocation(line: 102, column: 5, scope: !4222)
!4231 = !DILocation(line: 103, column: 3, scope: !4214)
!4232 = distinct !DISubprogram(name: "xmemdup", scope: !4031, file: !4031, line: 111, type: !4233, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!36, !40, !37}
!4235 = !{!4236, !4237}
!4236 = !DILocalVariable(name: "p", arg: 1, scope: !4232, file: !4031, line: 111, type: !40)
!4237 = !DILocalVariable(name: "s", arg: 2, scope: !4232, file: !4031, line: 111, type: !37)
!4238 = !DILocation(line: 111, column: 22, scope: !4232)
!4239 = !DILocation(line: 111, column: 32, scope: !4232)
!4240 = !DILocation(line: 39, column: 17, scope: !4030, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 113, column: 18, scope: !4232)
!4242 = !DILocation(line: 41, column: 13, scope: !4030, inlinedAt: !4241)
!4243 = !DILocation(line: 41, column: 9, scope: !4030, inlinedAt: !4241)
!4244 = !DILocation(line: 42, column: 8, scope: !4041, inlinedAt: !4241)
!4245 = !DILocation(line: 42, column: 15, scope: !4043, inlinedAt: !4241)
!4246 = !DILocation(line: 42, column: 10, scope: !4041, inlinedAt: !4241)
!4247 = !DILocation(line: 43, column: 5, scope: !4041, inlinedAt: !4241)
!4248 = !DILocation(line: 113, column: 10, scope: !4232)
!4249 = !DILocation(line: 113, column: 3, scope: !4232)
!4250 = distinct !DISubprogram(name: "xstrdup", scope: !4031, file: !4031, line: 119, type: !3278, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !637, variables: !4251)
!4251 = !{!4252}
!4252 = !DILocalVariable(name: "string", arg: 1, scope: !4250, file: !4031, line: 119, type: !45)
!4253 = !DILocation(line: 119, column: 22, scope: !4250)
!4254 = !DILocation(line: 121, column: 27, scope: !4250)
!4255 = !DILocation(line: 121, column: 43, scope: !4250)
!4256 = !DILocation(line: 111, column: 22, scope: !4232, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 121, column: 10, scope: !4258)
!4258 = !DILexicalBlockFile(scope: !4250, file: !4031, discriminator: 1)
!4259 = !DILocation(line: 111, column: 32, scope: !4232, inlinedAt: !4257)
!4260 = !DILocation(line: 39, column: 17, scope: !4030, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 113, column: 18, scope: !4232, inlinedAt: !4257)
!4262 = !DILocation(line: 41, column: 13, scope: !4030, inlinedAt: !4261)
!4263 = !DILocation(line: 41, column: 9, scope: !4030, inlinedAt: !4261)
!4264 = !DILocation(line: 42, column: 8, scope: !4041, inlinedAt: !4261)
!4265 = !DILocation(line: 42, column: 15, scope: !4043, inlinedAt: !4261)
!4266 = !DILocation(line: 42, column: 10, scope: !4041, inlinedAt: !4261)
!4267 = !DILocation(line: 43, column: 5, scope: !4041, inlinedAt: !4261)
!4268 = !DILocation(line: 113, column: 10, scope: !4232, inlinedAt: !4257)
!4269 = !DILocation(line: 121, column: 3, scope: !4250)
!4270 = distinct !DISubprogram(name: "xalloc_die", scope: !4271, file: !4271, line: 32, type: !1268, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !654, variables: !121)
!4271 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4272 = !DILocation(line: 34, column: 10, scope: !4270)
!4273 = !DILocation(line: 34, column: 33, scope: !4270)
!4274 = !DILocation(line: 34, column: 3, scope: !4275)
!4275 = !DILexicalBlockFile(scope: !4270, file: !4271, discriminator: 1)
!4276 = !DILocation(line: 40, column: 3, scope: !4270)
!4277 = distinct !DISubprogram(name: "xmemcoll", scope: !4278, file: !4278, line: 54, type: !4279, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !4281)
!4278 = !DIFile(filename: "lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!93, !34, !37, !34, !37}
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4287}
!4282 = !DILocalVariable(name: "s1", arg: 1, scope: !4277, file: !4278, line: 54, type: !34)
!4283 = !DILocalVariable(name: "s1len", arg: 2, scope: !4277, file: !4278, line: 54, type: !37)
!4284 = !DILocalVariable(name: "s2", arg: 3, scope: !4277, file: !4278, line: 54, type: !34)
!4285 = !DILocalVariable(name: "s2len", arg: 4, scope: !4277, file: !4278, line: 54, type: !37)
!4286 = !DILocalVariable(name: "diff", scope: !4277, file: !4278, line: 56, type: !93)
!4287 = !DILocalVariable(name: "collation_errno", scope: !4277, file: !4278, line: 57, type: !93)
!4288 = !DILocation(line: 54, column: 17, scope: !4277)
!4289 = !DILocation(line: 54, column: 28, scope: !4277)
!4290 = !DILocation(line: 54, column: 41, scope: !4277)
!4291 = !DILocation(line: 54, column: 52, scope: !4277)
!4292 = !DILocation(line: 56, column: 14, scope: !4277)
!4293 = !DILocation(line: 56, column: 7, scope: !4277)
!4294 = !DILocation(line: 57, column: 25, scope: !4277)
!4295 = !DILocation(line: 57, column: 7, scope: !4277)
!4296 = !DILocation(line: 58, column: 7, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4277, file: !4278, line: 58, column: 7)
!4298 = !DILocation(line: 58, column: 7, scope: !4277)
!4299 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4300, file: !4278, line: 35, type: !93)
!4300 = distinct !DISubprogram(name: "collate_error", scope: !4278, file: !4278, line: 35, type: !4301, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{null, !93, !45, !37, !45, !37}
!4303 = !{!4299, !4304, !4305, !4306, !4307}
!4304 = !DILocalVariable(name: "s1", arg: 2, scope: !4300, file: !4278, line: 36, type: !45)
!4305 = !DILocalVariable(name: "s1len", arg: 3, scope: !4300, file: !4278, line: 36, type: !37)
!4306 = !DILocalVariable(name: "s2", arg: 4, scope: !4300, file: !4278, line: 37, type: !45)
!4307 = !DILocalVariable(name: "s2len", arg: 5, scope: !4300, file: !4278, line: 37, type: !37)
!4308 = !DILocation(line: 35, column: 20, scope: !4300, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 59, column: 5, scope: !4297)
!4310 = !DILocation(line: 36, column: 28, scope: !4300, inlinedAt: !4309)
!4311 = !DILocation(line: 36, column: 39, scope: !4300, inlinedAt: !4309)
!4312 = !DILocation(line: 37, column: 28, scope: !4300, inlinedAt: !4309)
!4313 = !DILocation(line: 37, column: 39, scope: !4300, inlinedAt: !4309)
!4314 = !DILocation(line: 39, column: 30, scope: !4300, inlinedAt: !4309)
!4315 = !DILocation(line: 39, column: 3, scope: !4316, inlinedAt: !4309)
!4316 = !DILexicalBlockFile(scope: !4300, file: !4278, discriminator: 1)
!4317 = !DILocation(line: 40, column: 16, scope: !4300, inlinedAt: !4309)
!4318 = !DILocation(line: 40, column: 3, scope: !4316, inlinedAt: !4309)
!4319 = !DILocation(line: 41, column: 10, scope: !4300, inlinedAt: !4309)
!4320 = !DILocation(line: 42, column: 10, scope: !4300, inlinedAt: !4309)
!4321 = !DILocation(line: 43, column: 10, scope: !4300, inlinedAt: !4309)
!4322 = !DILocation(line: 44, column: 10, scope: !4300, inlinedAt: !4309)
!4323 = !DILocation(line: 41, column: 3, scope: !4300, inlinedAt: !4309)
!4324 = !DILocation(line: 59, column: 5, scope: !4297)
!4325 = !DILocation(line: 60, column: 3, scope: !4277)
!4326 = distinct !DISubprogram(name: "xmemcoll0", scope: !4278, file: !4278, line: 69, type: !1782, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !4327)
!4327 = !{!4328, !4329, !4330, !4331, !4332, !4333}
!4328 = !DILocalVariable(name: "s1", arg: 1, scope: !4326, file: !4278, line: 69, type: !45)
!4329 = !DILocalVariable(name: "s1size", arg: 2, scope: !4326, file: !4278, line: 69, type: !37)
!4330 = !DILocalVariable(name: "s2", arg: 3, scope: !4326, file: !4278, line: 69, type: !45)
!4331 = !DILocalVariable(name: "s2size", arg: 4, scope: !4326, file: !4278, line: 69, type: !37)
!4332 = !DILocalVariable(name: "diff", scope: !4326, file: !4278, line: 71, type: !93)
!4333 = !DILocalVariable(name: "collation_errno", scope: !4326, file: !4278, line: 72, type: !93)
!4334 = !DILocation(line: 69, column: 24, scope: !4326)
!4335 = !DILocation(line: 69, column: 35, scope: !4326)
!4336 = !DILocation(line: 69, column: 55, scope: !4326)
!4337 = !DILocation(line: 69, column: 66, scope: !4326)
!4338 = !DILocation(line: 71, column: 14, scope: !4326)
!4339 = !DILocation(line: 71, column: 7, scope: !4326)
!4340 = !DILocation(line: 72, column: 25, scope: !4326)
!4341 = !DILocation(line: 72, column: 7, scope: !4326)
!4342 = !DILocation(line: 73, column: 7, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4326, file: !4278, line: 73, column: 7)
!4344 = !DILocation(line: 73, column: 7, scope: !4326)
!4345 = !DILocation(line: 74, column: 48, scope: !4343)
!4346 = !DILocation(line: 74, column: 64, scope: !4343)
!4347 = !DILocation(line: 35, column: 20, scope: !4300, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 74, column: 5, scope: !4343)
!4349 = !DILocation(line: 36, column: 28, scope: !4300, inlinedAt: !4348)
!4350 = !DILocation(line: 36, column: 39, scope: !4300, inlinedAt: !4348)
!4351 = !DILocation(line: 37, column: 28, scope: !4300, inlinedAt: !4348)
!4352 = !DILocation(line: 37, column: 39, scope: !4300, inlinedAt: !4348)
!4353 = !DILocation(line: 39, column: 30, scope: !4300, inlinedAt: !4348)
!4354 = !DILocation(line: 39, column: 3, scope: !4316, inlinedAt: !4348)
!4355 = !DILocation(line: 40, column: 16, scope: !4300, inlinedAt: !4348)
!4356 = !DILocation(line: 40, column: 3, scope: !4316, inlinedAt: !4348)
!4357 = !DILocation(line: 41, column: 10, scope: !4300, inlinedAt: !4348)
!4358 = !DILocation(line: 42, column: 10, scope: !4300, inlinedAt: !4348)
!4359 = !DILocation(line: 43, column: 10, scope: !4300, inlinedAt: !4348)
!4360 = !DILocation(line: 44, column: 10, scope: !4300, inlinedAt: !4348)
!4361 = !DILocation(line: 41, column: 3, scope: !4300, inlinedAt: !4348)
!4362 = !DILocation(line: 74, column: 5, scope: !4343)
!4363 = !DILocation(line: 75, column: 3, scope: !4326)
!4364 = distinct !DISubprogram(name: "rpl_calloc", scope: !4365, file: !4365, line: 42, type: !4017, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !4366)
!4365 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4366 = !{!4367, !4368, !4369, !4370}
!4367 = !DILocalVariable(name: "n", arg: 1, scope: !4364, file: !4365, line: 42, type: !37)
!4368 = !DILocalVariable(name: "s", arg: 2, scope: !4364, file: !4365, line: 42, type: !37)
!4369 = !DILocalVariable(name: "result", scope: !4364, file: !4365, line: 44, type: !36)
!4370 = !DILocalVariable(name: "bytes", scope: !4371, file: !4365, line: 56, type: !37)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !4365, line: 53, column: 5)
!4372 = distinct !DILexicalBlock(scope: !4364, file: !4365, line: 47, column: 7)
!4373 = !DILocation(line: 42, column: 20, scope: !4364)
!4374 = !DILocation(line: 42, column: 30, scope: !4364)
!4375 = !DILocation(line: 47, column: 9, scope: !4372)
!4376 = !DILocation(line: 47, column: 19, scope: !4377)
!4377 = !DILexicalBlockFile(scope: !4372, file: !4365, discriminator: 1)
!4378 = !DILocation(line: 47, column: 14, scope: !4372)
!4379 = !DILocation(line: 56, column: 24, scope: !4371)
!4380 = !DILocation(line: 56, column: 14, scope: !4371)
!4381 = !DILocation(line: 57, column: 17, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4371, file: !4365, line: 57, column: 11)
!4383 = !DILocation(line: 57, column: 21, scope: !4382)
!4384 = !DILocation(line: 57, column: 11, scope: !4371)
!4385 = !DILocation(line: 59, column: 11, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !4365, line: 58, column: 9)
!4387 = !DILocation(line: 59, column: 17, scope: !4386)
!4388 = !DILocation(line: 65, column: 12, scope: !4364)
!4389 = !DILocation(line: 44, column: 9, scope: !4364)
!4390 = !DILocation(line: 72, column: 3, scope: !4364)
!4391 = !DILocation(line: 73, column: 1, scope: !4364)
!4392 = distinct !DISubprogram(name: "rpl_fclose", scope: !4393, file: !4393, line: 56, type: !4394, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !661, variables: !4436)
!4393 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!93, !4396}
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !4398)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4398, file: !793, line: 242, baseType: !93, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4398, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4398, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4398, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4398, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4398, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4398, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4398, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4398, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4398, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4398, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4398, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4398, file: !793, line: 260, baseType: !4413, size: 64, offset: 768)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !4415)
!4415 = !{!4416, !4417, !4419}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4414, file: !793, line: 157, baseType: !4413, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4414, file: !793, line: 158, baseType: !4418, size: 64, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4414, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4398, file: !793, line: 262, baseType: !4418, size: 64, offset: 832)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4398, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4398, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4398, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4398, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4398, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4398, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4398, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4398, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4398, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4398, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4398, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4398, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4398, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4398, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4398, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!4436 = !{!4437, !4438, !4439, !4440}
!4437 = !DILocalVariable(name: "fp", arg: 1, scope: !4392, file: !4393, line: 56, type: !4396)
!4438 = !DILocalVariable(name: "saved_errno", scope: !4392, file: !4393, line: 58, type: !93)
!4439 = !DILocalVariable(name: "fd", scope: !4392, file: !4393, line: 59, type: !93)
!4440 = !DILocalVariable(name: "result", scope: !4392, file: !4393, line: 60, type: !93)
!4441 = !DILocation(line: 56, column: 19, scope: !4392)
!4442 = !DILocation(line: 58, column: 7, scope: !4392)
!4443 = !DILocation(line: 60, column: 7, scope: !4392)
!4444 = !DILocation(line: 63, column: 8, scope: !4392)
!4445 = !DILocation(line: 59, column: 7, scope: !4392)
!4446 = !DILocation(line: 64, column: 10, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4392, file: !4393, line: 64, column: 7)
!4448 = !DILocation(line: 64, column: 7, scope: !4392)
!4449 = !DILocation(line: 65, column: 12, scope: !4447)
!4450 = !DILocation(line: 65, column: 5, scope: !4447)
!4451 = !DILocation(line: 70, column: 9, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4392, file: !4393, line: 70, column: 7)
!4453 = !DILocation(line: 70, column: 23, scope: !4452)
!4454 = !DILocation(line: 70, column: 33, scope: !4455)
!4455 = !DILexicalBlockFile(scope: !4452, file: !4393, discriminator: 1)
!4456 = !DILocation(line: 70, column: 26, scope: !4457)
!4457 = !DILexicalBlockFile(scope: !4452, file: !4393, discriminator: 3)
!4458 = !DILocation(line: 70, column: 59, scope: !4455)
!4459 = !DILocation(line: 71, column: 7, scope: !4452)
!4460 = !DILocation(line: 71, column: 10, scope: !4455)
!4461 = !DILocation(line: 70, column: 7, scope: !4462)
!4462 = !DILexicalBlockFile(scope: !4392, file: !4393, discriminator: 2)
!4463 = !DILocation(line: 98, column: 12, scope: !4392)
!4464 = !DILocation(line: 103, column: 7, scope: !4392)
!4465 = !DILocation(line: 72, column: 19, scope: !4452)
!4466 = !DILocation(line: 103, column: 19, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4392, file: !4393, line: 103, column: 7)
!4468 = !DILocation(line: 105, column: 13, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4467, file: !4393, line: 104, column: 5)
!4470 = !DILocation(line: 107, column: 5, scope: !4469)
!4471 = !DILocation(line: 110, column: 1, scope: !4392)
!4472 = !DILocation(line: 272, column: 16, scope: !224)
!4473 = !DILocation(line: 272, column: 24, scope: !224)
!4474 = !DILocation(line: 274, column: 3, scope: !224)
!4475 = !DILocation(line: 274, column: 11, scope: !224)
!4476 = !DILocation(line: 275, column: 7, scope: !224)
!4477 = !DILocation(line: 276, column: 3, scope: !224)
!4478 = !DILocation(line: 277, column: 3, scope: !224)
!4479 = !DILocation(line: 322, column: 22, scope: !249)
!4480 = !DILocation(line: 322, column: 22, scope: !4481)
!4481 = !DILexicalBlockFile(scope: !249, file: !225, discriminator: 1)
!4482 = !DILocation(line: 322, column: 22, scope: !4483)
!4483 = !DILexicalBlockFile(scope: !249, file: !225, discriminator: 2)
!4484 = !DILocation(line: 322, column: 22, scope: !4485)
!4485 = !DILexicalBlockFile(scope: !249, file: !225, discriminator: 3)
!4486 = !DILocation(line: 322, column: 13, scope: !249)
!4487 = !DILocation(line: 336, column: 18, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !249, file: !225, line: 336, column: 13)
!4489 = !DILocation(line: 336, column: 15, scope: !4488)
!4490 = !DILocation(line: 336, column: 13, scope: !249)
!4491 = !DILocation(line: 338, column: 22, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4488, file: !225, line: 337, column: 11)
!4493 = !DILocation(line: 339, column: 19, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4492, file: !225, line: 339, column: 17)
!4495 = !DILocation(line: 339, column: 29, scope: !4494)
!4496 = !DILocation(line: 339, column: 32, scope: !4497)
!4497 = !DILexicalBlockFile(scope: !4494, file: !225, discriminator: 1)
!4498 = !DILocation(line: 339, column: 38, scope: !4497)
!4499 = !DILocation(line: 339, column: 17, scope: !4500)
!4500 = !DILexicalBlockFile(scope: !4492, file: !225, discriminator: 1)
!4501 = !DILocation(line: 349, column: 26, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4494, file: !225, line: 348, column: 15)
!4503 = !DILocation(line: 350, column: 28, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4502, file: !225, line: 350, column: 21)
!4505 = !DILocation(line: 350, column: 21, scope: !4502)
!4506 = !DILocation(line: 354, column: 11, scope: !4492)
!4507 = !DILocation(line: 356, column: 20, scope: !4488)
!4508 = !DILocation(line: 357, column: 28, scope: !4509)
!4509 = !DILexicalBlockFile(scope: !253, file: !225, discriminator: 1)
!4510 = !DILocation(line: 357, column: 15, scope: !253)
!4511 = !DILocation(line: 357, column: 47, scope: !4509)
!4512 = !DILocation(line: 357, column: 25, scope: !253)
!4513 = !DILocation(line: 359, column: 25, scope: !252)
!4514 = !DILocation(line: 359, column: 17, scope: !252)
!4515 = !DILocation(line: 360, column: 23, scope: !256)
!4516 = !DILocation(line: 360, column: 27, scope: !256)
!4517 = !DILocation(line: 360, column: 60, scope: !4518)
!4518 = !DILexicalBlockFile(scope: !256, file: !225, discriminator: 1)
!4519 = !DILocation(line: 360, column: 30, scope: !4518)
!4520 = !DILocation(line: 360, column: 74, scope: !4518)
!4521 = !DILocation(line: 360, column: 17, scope: !4522)
!4522 = !DILexicalBlockFile(scope: !252, file: !225, discriminator: 1)
!4523 = !DILocation(line: 362, column: 35, scope: !255)
!4524 = !DILocation(line: 362, column: 21, scope: !255)
!4525 = !DILocation(line: 363, column: 17, scope: !255)
!4526 = !DILocation(line: 364, column: 23, scope: !255)
!4527 = !DILocation(line: 366, column: 15, scope: !255)
!4528 = !DILocation(line: 404, column: 19, scope: !258)
!4529 = !DILocation(line: 404, column: 19, scope: !4530)
!4530 = !DILexicalBlockFile(scope: !258, file: !225, discriminator: 1)
!4531 = !DILocation(line: 404, column: 19, scope: !4532)
!4532 = !DILexicalBlockFile(scope: !258, file: !225, discriminator: 2)
!4533 = !DILocation(line: 404, column: 19, scope: !4534)
!4534 = !DILexicalBlockFile(scope: !258, file: !225, discriminator: 3)
!4535 = !DILocation(line: 404, column: 15, scope: !258)
!4536 = !DILocation(line: 405, column: 18, scope: !258)
!4537 = !DILocation(line: 412, column: 3, scope: !224)
!4538 = !DILocation(line: 414, column: 1, scope: !224)
!4539 = !DILocation(line: 413, column: 3, scope: !224)
!4540 = distinct !DISubprogram(name: "rpl_fflush", scope: !4541, file: !4541, line: 127, type: !4542, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4584)
!4541 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!93, !4544}
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !4546)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !4547)
!4547 = !{!4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4546, file: !793, line: 242, baseType: !93, size: 32)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4546, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4546, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4546, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4546, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4546, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4546, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4546, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4546, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4546, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4546, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4546, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4546, file: !793, line: 260, baseType: !4561, size: 64, offset: 768)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !4563)
!4563 = !{!4564, !4565, !4567}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4562, file: !793, line: 157, baseType: !4561, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4562, file: !793, line: 158, baseType: !4566, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4562, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4546, file: !793, line: 262, baseType: !4566, size: 64, offset: 832)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4546, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4546, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4546, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4546, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4546, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4546, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4546, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4546, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4546, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4546, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4546, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4546, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4546, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4546, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4546, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!4584 = !{!4585}
!4585 = !DILocalVariable(name: "stream", arg: 1, scope: !4540, file: !4541, line: 127, type: !4544)
!4586 = !DILocation(line: 127, column: 19, scope: !4540)
!4587 = !DILocation(line: 148, column: 14, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4540, file: !4541, line: 148, column: 7)
!4589 = !DILocation(line: 148, column: 22, scope: !4588)
!4590 = !DILocation(line: 148, column: 27, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !4588, file: !4541, discriminator: 1)
!4592 = !DILocation(line: 148, column: 7, scope: !4593)
!4593 = !DILexicalBlockFile(scope: !4540, file: !4541, discriminator: 1)
!4594 = !DILocation(line: 149, column: 12, scope: !4588)
!4595 = !DILocation(line: 149, column: 5, scope: !4588)
!4596 = !DILocalVariable(name: "fp", arg: 1, scope: !4597, file: !4541, line: 40, type: !4544)
!4597 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4541, file: !4541, line: 40, type: !4598, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4600)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !4544}
!4600 = !{!4596}
!4601 = !DILocation(line: 40, column: 48, scope: !4597, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 153, column: 3, scope: !4540)
!4603 = !DILocation(line: 42, column: 11, scope: !4604, inlinedAt: !4602)
!4604 = distinct !DILexicalBlock(scope: !4597, file: !4541, line: 42, column: 7)
!4605 = !DILocation(line: 42, column: 18, scope: !4604, inlinedAt: !4602)
!4606 = !DILocation(line: 42, column: 7, scope: !4597, inlinedAt: !4602)
!4607 = !DILocation(line: 44, column: 5, scope: !4604, inlinedAt: !4602)
!4608 = !DILocation(line: 155, column: 10, scope: !4540)
!4609 = !DILocation(line: 155, column: 3, scope: !4540)
!4610 = !DILocation(line: 229, column: 1, scope: !4540)
!4611 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4612, file: !4612, line: 28, type: !4613, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !665, variables: !4655)
!4612 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!93, !4615, !1312, !93}
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !4617)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !4618)
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4617, file: !793, line: 242, baseType: !93, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4617, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4617, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4617, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4617, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4617, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4617, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4617, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4617, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4617, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4617, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4617, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4617, file: !793, line: 260, baseType: !4632, size: 64, offset: 768)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !4634)
!4634 = !{!4635, !4636, !4638}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4633, file: !793, line: 157, baseType: !4632, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4633, file: !793, line: 158, baseType: !4637, size: 64, offset: 64)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4633, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4617, file: !793, line: 262, baseType: !4637, size: 64, offset: 832)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4617, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4617, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4617, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4617, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4617, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4617, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4617, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4617, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4617, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4617, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4617, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4617, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4617, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4617, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4617, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!4655 = !{!4656, !4657, !4658, !4659}
!4656 = !DILocalVariable(name: "fp", arg: 1, scope: !4611, file: !4612, line: 28, type: !4615)
!4657 = !DILocalVariable(name: "offset", arg: 2, scope: !4611, file: !4612, line: 28, type: !1312)
!4658 = !DILocalVariable(name: "whence", arg: 3, scope: !4611, file: !4612, line: 28, type: !93)
!4659 = !DILocalVariable(name: "pos", scope: !4660, file: !4612, line: 116, type: !1312)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !4612, line: 112, column: 5)
!4661 = distinct !DILexicalBlock(scope: !4611, file: !4612, line: 51, column: 7)
!4662 = !DILocation(line: 28, column: 15, scope: !4611)
!4663 = !DILocation(line: 28, column: 25, scope: !4611)
!4664 = !DILocation(line: 28, column: 37, scope: !4611)
!4665 = !DILocation(line: 51, column: 11, scope: !4661)
!4666 = !DILocation(line: 51, column: 31, scope: !4661)
!4667 = !DILocation(line: 51, column: 24, scope: !4661)
!4668 = !DILocation(line: 52, column: 7, scope: !4661)
!4669 = !DILocation(line: 52, column: 14, scope: !4670)
!4670 = !DILexicalBlockFile(scope: !4661, file: !4612, discriminator: 1)
!4671 = !{!1037, !693, i64 40}
!4672 = !DILocation(line: 52, column: 35, scope: !4670)
!4673 = !{!1037, !693, i64 32}
!4674 = !DILocation(line: 52, column: 28, scope: !4670)
!4675 = !DILocation(line: 53, column: 7, scope: !4661)
!4676 = !DILocation(line: 53, column: 14, scope: !4670)
!4677 = !{!1037, !693, i64 72}
!4678 = !DILocation(line: 53, column: 28, scope: !4670)
!4679 = !DILocation(line: 51, column: 7, scope: !4680)
!4680 = !DILexicalBlockFile(scope: !4611, file: !4612, discriminator: 1)
!4681 = !DILocation(line: 116, column: 26, scope: !4660)
!4682 = !DILocation(line: 116, column: 19, scope: !4683)
!4683 = !DILexicalBlockFile(scope: !4660, file: !4612, discriminator: 1)
!4684 = !DILocation(line: 116, column: 13, scope: !4660)
!4685 = !DILocation(line: 117, column: 15, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4660, file: !4612, line: 117, column: 11)
!4687 = !DILocation(line: 117, column: 11, scope: !4660)
!4688 = !DILocation(line: 127, column: 11, scope: !4660)
!4689 = !DILocation(line: 127, column: 18, scope: !4660)
!4690 = !DILocation(line: 128, column: 11, scope: !4660)
!4691 = !DILocation(line: 128, column: 19, scope: !4660)
!4692 = !{!1037, !910, i64 144}
!4693 = !DILocation(line: 159, column: 7, scope: !4660)
!4694 = !DILocation(line: 161, column: 10, scope: !4611)
!4695 = !DILocation(line: 161, column: 3, scope: !4611)
!4696 = !DILocation(line: 162, column: 1, scope: !4611)
!4697 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4698, file: !4698, line: 334, type: !4699, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !4713)
!4698 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!37, !4701, !45, !37, !4702}
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2045, line: 107, baseType: !4704)
!4704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2045, line: 95, baseType: !4705)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2045, line: 83, size: 64, elements: !4706)
!4706 = !{!4707, !4708}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4705, file: !2045, line: 85, baseType: !93, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4705, file: !2045, line: 94, baseType: !4709, size: 32, offset: 32)
!4709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4705, file: !2045, line: 86, size: 32, elements: !4710)
!4710 = !{!4711, !4712}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4709, file: !2045, line: 89, baseType: !188, size: 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4709, file: !2045, line: 93, baseType: !2055, size: 32)
!4713 = !{!4714, !4715, !4716, !4717, !4718, !4719, !4720}
!4714 = !DILocalVariable(name: "pwc", arg: 1, scope: !4697, file: !4698, line: 334, type: !4701)
!4715 = !DILocalVariable(name: "s", arg: 2, scope: !4697, file: !4698, line: 334, type: !45)
!4716 = !DILocalVariable(name: "n", arg: 3, scope: !4697, file: !4698, line: 334, type: !37)
!4717 = !DILocalVariable(name: "ps", arg: 4, scope: !4697, file: !4698, line: 334, type: !4702)
!4718 = !DILocalVariable(name: "ret", scope: !4697, file: !4698, line: 336, type: !37)
!4719 = !DILocalVariable(name: "wc", scope: !4697, file: !4698, line: 337, type: !2059)
!4720 = !DILocalVariable(name: "uc", scope: !4721, file: !4698, line: 398, type: !44)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !4698, line: 397, column: 5)
!4722 = distinct !DILexicalBlock(scope: !4697, file: !4698, line: 396, column: 7)
!4723 = !DILocation(line: 334, column: 23, scope: !4697)
!4724 = !DILocation(line: 334, column: 40, scope: !4697)
!4725 = !DILocation(line: 334, column: 50, scope: !4697)
!4726 = !DILocation(line: 334, column: 64, scope: !4697)
!4727 = !DILocation(line: 337, column: 3, scope: !4697)
!4728 = !DILocation(line: 353, column: 9, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4697, file: !4698, line: 353, column: 7)
!4730 = !DILocation(line: 353, column: 7, scope: !4697)
!4731 = !DILocation(line: 388, column: 9, scope: !4697)
!4732 = !DILocation(line: 336, column: 10, scope: !4697)
!4733 = !DILocation(line: 396, column: 19, scope: !4722)
!4734 = !DILocation(line: 396, column: 31, scope: !4735)
!4735 = !DILexicalBlockFile(scope: !4722, file: !4698, discriminator: 1)
!4736 = !DILocation(line: 396, column: 26, scope: !4722)
!4737 = !DILocation(line: 396, column: 41, scope: !4738)
!4738 = !DILexicalBlockFile(scope: !4722, file: !4698, discriminator: 2)
!4739 = !DILocation(line: 396, column: 7, scope: !4740)
!4740 = !DILexicalBlockFile(scope: !4697, file: !4698, discriminator: 2)
!4741 = !DILocation(line: 398, column: 26, scope: !4721)
!4742 = !DILocation(line: 398, column: 21, scope: !4721)
!4743 = !DILocation(line: 399, column: 14, scope: !4721)
!4744 = !DILocation(line: 399, column: 12, scope: !4721)
!4745 = !DILocation(line: 405, column: 1, scope: !4697)
!4746 = distinct !DISubprogram(name: "close_stream", scope: !4747, file: !4747, line: 56, type: !4748, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !4790)
!4747 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!93, !4750}
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !4752)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !4753)
!4753 = !{!4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4752, file: !793, line: 242, baseType: !93, size: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4752, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4752, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4752, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4752, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4752, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4752, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4752, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4752, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4752, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4752, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4752, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4752, file: !793, line: 260, baseType: !4767, size: 64, offset: 768)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !4769)
!4769 = !{!4770, !4771, !4773}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4768, file: !793, line: 157, baseType: !4767, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4768, file: !793, line: 158, baseType: !4772, size: 64, offset: 64)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4768, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4752, file: !793, line: 262, baseType: !4772, size: 64, offset: 832)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4752, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4752, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4752, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4752, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4752, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4752, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4752, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4752, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4752, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4752, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4752, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4752, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4752, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4752, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4752, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!4790 = !{!4791, !4792, !4794, !4795}
!4791 = !DILocalVariable(name: "stream", arg: 1, scope: !4746, file: !4747, line: 56, type: !4750)
!4792 = !DILocalVariable(name: "some_pending", scope: !4746, file: !4747, line: 58, type: !4793)
!4793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!4794 = !DILocalVariable(name: "prev_fail", scope: !4746, file: !4747, line: 59, type: !4793)
!4795 = !DILocalVariable(name: "fclose_fail", scope: !4746, file: !4747, line: 60, type: !4793)
!4796 = !DILocation(line: 56, column: 21, scope: !4746)
!4797 = !DILocation(line: 58, column: 30, scope: !4746)
!4798 = !DILocalVariable(name: "__stream", arg: 1, scope: !4799, file: !1028, line: 132, type: !4750)
!4799 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1028, file: !1028, line: 132, type: !4748, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !4800)
!4800 = !{!4798}
!4801 = !DILocation(line: 132, column: 1, scope: !4799, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 59, column: 27, scope: !4746)
!4803 = !DILocation(line: 134, column: 10, scope: !4799, inlinedAt: !4802)
!4804 = !DILocation(line: 59, column: 43, scope: !4746)
!4805 = !DILocation(line: 60, column: 29, scope: !4746)
!4806 = !DILocation(line: 60, column: 45, scope: !4746)
!4807 = !DILocation(line: 70, column: 17, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4746, file: !4747, line: 70, column: 7)
!4809 = !DILocation(line: 70, column: 33, scope: !4810)
!4810 = !DILexicalBlockFile(scope: !4808, file: !4747, discriminator: 1)
!4811 = !DILocation(line: 70, column: 53, scope: !4812)
!4812 = !DILexicalBlockFile(scope: !4808, file: !4747, discriminator: 3)
!4813 = !DILocation(line: 70, column: 7, scope: !4814)
!4814 = !DILexicalBlockFile(scope: !4746, file: !4747, discriminator: 3)
!4815 = !DILocation(line: 72, column: 11, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4808, file: !4747, line: 71, column: 5)
!4817 = !DILocation(line: 73, column: 9, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4816, file: !4747, line: 72, column: 11)
!4819 = !DILocation(line: 73, column: 15, scope: !4818)
!4820 = !DILocation(line: 78, column: 1, scope: !4746)
!4821 = distinct !DISubprogram(name: "locale_charset", scope: !605, file: !605, line: 393, type: !4822, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !4824)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!45}
!4824 = !{!4825, !4826, !4827, !4832}
!4825 = !DILocalVariable(name: "codeset", scope: !4821, file: !605, line: 395, type: !45)
!4826 = !DILocalVariable(name: "aliases", scope: !4821, file: !605, line: 396, type: !45)
!4827 = !DILocalVariable(name: "__s1_len", scope: !4828, file: !605, line: 592, type: !37)
!4828 = distinct !DILexicalBlock(scope: !4829, file: !605, line: 592, column: 9)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !605, line: 592, column: 9)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !605, line: 589, column: 3)
!4831 = distinct !DILexicalBlock(scope: !4821, file: !605, line: 589, column: 3)
!4832 = !DILocalVariable(name: "__s2_len", scope: !4828, file: !605, line: 592, type: !37)
!4833 = !DILocalVariable(name: "buf1", scope: !4834, file: !605, line: 196, type: !4901)
!4834 = distinct !DILexicalBlock(scope: !4835, file: !605, line: 194, column: 21)
!4835 = distinct !DILexicalBlock(scope: !4836, file: !605, line: 193, column: 19)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !605, line: 193, column: 19)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !605, line: 188, column: 17)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !605, line: 181, column: 19)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !605, line: 177, column: 13)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !605, line: 173, column: 15)
!4841 = distinct !DILexicalBlock(scope: !4842, file: !605, line: 161, column: 9)
!4842 = distinct !DILexicalBlock(scope: !4843, file: !605, line: 157, column: 11)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !605, line: 130, column: 5)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !605, line: 129, column: 7)
!4845 = distinct !DISubprogram(name: "get_charset_aliases", scope: !605, file: !605, line: 124, type: !4822, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !4846)
!4846 = !{!4847, !4848, !4849, !4850, !4851, !4853, !4854, !4855, !4856, !4897, !4898, !4899, !4833, !4900, !4904, !4905, !4906}
!4847 = !DILocalVariable(name: "cp", scope: !4845, file: !605, line: 126, type: !45)
!4848 = !DILocalVariable(name: "dir", scope: !4843, file: !605, line: 132, type: !45)
!4849 = !DILocalVariable(name: "base", scope: !4843, file: !605, line: 133, type: !45)
!4850 = !DILocalVariable(name: "file_name", scope: !4843, file: !605, line: 134, type: !34)
!4851 = !DILocalVariable(name: "dir_len", scope: !4852, file: !605, line: 144, type: !37)
!4852 = distinct !DILexicalBlock(scope: !4843, file: !605, line: 143, column: 7)
!4853 = !DILocalVariable(name: "base_len", scope: !4852, file: !605, line: 145, type: !37)
!4854 = !DILocalVariable(name: "add_slash", scope: !4852, file: !605, line: 146, type: !93)
!4855 = !DILocalVariable(name: "fd", scope: !4841, file: !605, line: 162, type: !93)
!4856 = !DILocalVariable(name: "fp", scope: !4839, file: !605, line: 178, type: !4857)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 49, baseType: !4859)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !793, line: 241, size: 1728, elements: !4860)
!4860 = !{!4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4859, file: !793, line: 242, baseType: !93, size: 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4859, file: !793, line: 247, baseType: !34, size: 64, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4859, file: !793, line: 248, baseType: !34, size: 64, offset: 128)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4859, file: !793, line: 249, baseType: !34, size: 64, offset: 192)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4859, file: !793, line: 250, baseType: !34, size: 64, offset: 256)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4859, file: !793, line: 251, baseType: !34, size: 64, offset: 320)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4859, file: !793, line: 252, baseType: !34, size: 64, offset: 384)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4859, file: !793, line: 253, baseType: !34, size: 64, offset: 448)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4859, file: !793, line: 254, baseType: !34, size: 64, offset: 512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4859, file: !793, line: 256, baseType: !34, size: 64, offset: 576)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4859, file: !793, line: 257, baseType: !34, size: 64, offset: 640)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4859, file: !793, line: 258, baseType: !34, size: 64, offset: 704)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4859, file: !793, line: 260, baseType: !4874, size: 64, offset: 768)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !793, line: 156, size: 192, elements: !4876)
!4876 = !{!4877, !4878, !4880}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4875, file: !793, line: 157, baseType: !4874, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4875, file: !793, line: 158, baseType: !4879, size: 64, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4875, file: !793, line: 162, baseType: !93, size: 32, offset: 128)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4859, file: !793, line: 262, baseType: !4879, size: 64, offset: 832)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4859, file: !793, line: 264, baseType: !93, size: 32, offset: 896)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4859, file: !793, line: 268, baseType: !93, size: 32, offset: 928)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4859, file: !793, line: 270, baseType: !819, size: 64, offset: 960)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4859, file: !793, line: 274, baseType: !171, size: 16, offset: 1024)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4859, file: !793, line: 275, baseType: !823, size: 8, offset: 1040)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4859, file: !793, line: 276, baseType: !825, size: 8, offset: 1048)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4859, file: !793, line: 280, baseType: !827, size: 64, offset: 1088)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4859, file: !793, line: 289, baseType: !830, size: 64, offset: 1152)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4859, file: !793, line: 297, baseType: !36, size: 64, offset: 1216)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4859, file: !793, line: 298, baseType: !36, size: 64, offset: 1280)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4859, file: !793, line: 299, baseType: !36, size: 64, offset: 1344)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4859, file: !793, line: 300, baseType: !36, size: 64, offset: 1408)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4859, file: !793, line: 302, baseType: !37, size: 64, offset: 1472)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4859, file: !793, line: 303, baseType: !93, size: 32, offset: 1536)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4859, file: !793, line: 305, baseType: !838, size: 160, offset: 1568)
!4897 = !DILocalVariable(name: "res_ptr", scope: !4837, file: !605, line: 190, type: !34)
!4898 = !DILocalVariable(name: "res_size", scope: !4837, file: !605, line: 191, type: !37)
!4899 = !DILocalVariable(name: "c", scope: !4834, file: !605, line: 195, type: !93)
!4900 = !DILocalVariable(name: "buf2", scope: !4834, file: !605, line: 197, type: !4901)
!4901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 408, elements: !4902)
!4902 = !{!4903}
!4903 = !DISubrange(count: 51)
!4904 = !DILocalVariable(name: "l1", scope: !4834, file: !605, line: 198, type: !37)
!4905 = !DILocalVariable(name: "l2", scope: !4834, file: !605, line: 198, type: !37)
!4906 = !DILocalVariable(name: "old_res_ptr", scope: !4834, file: !605, line: 199, type: !34)
!4907 = !DILocation(line: 196, column: 28, scope: !4834, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 589, column: 18, scope: !4831)
!4909 = !DILocation(line: 197, column: 28, scope: !4834, inlinedAt: !4908)
!4910 = !DILocation(line: 403, column: 13, scope: !4821)
!4911 = !DILocation(line: 395, column: 15, scope: !4821)
!4912 = !DILocation(line: 584, column: 15, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4821, file: !605, line: 584, column: 7)
!4914 = !DILocation(line: 584, column: 7, scope: !4821)
!4915 = !DILocation(line: 128, column: 8, scope: !4845, inlinedAt: !4908)
!4916 = !DILocation(line: 126, column: 15, scope: !4845, inlinedAt: !4908)
!4917 = !DILocation(line: 129, column: 10, scope: !4844, inlinedAt: !4908)
!4918 = !DILocation(line: 129, column: 7, scope: !4845, inlinedAt: !4908)
!4919 = !DILocation(line: 138, column: 13, scope: !4843, inlinedAt: !4908)
!4920 = !DILocation(line: 132, column: 19, scope: !4843, inlinedAt: !4908)
!4921 = !DILocation(line: 139, column: 15, scope: !4922, inlinedAt: !4908)
!4922 = distinct !DILexicalBlock(scope: !4843, file: !605, line: 139, column: 11)
!4923 = !DILocation(line: 139, column: 23, scope: !4922, inlinedAt: !4908)
!4924 = !DILocation(line: 139, column: 26, scope: !4925, inlinedAt: !4908)
!4925 = !DILexicalBlockFile(scope: !4922, file: !605, discriminator: 1)
!4926 = !DILocation(line: 139, column: 33, scope: !4925, inlinedAt: !4908)
!4927 = !DILocation(line: 139, column: 11, scope: !4928, inlinedAt: !4908)
!4928 = !DILexicalBlockFile(scope: !4843, file: !605, discriminator: 1)
!4929 = !DILocation(line: 140, column: 9, scope: !4922, inlinedAt: !4908)
!4930 = !DILocation(line: 144, column: 26, scope: !4852, inlinedAt: !4908)
!4931 = !DILocation(line: 144, column: 16, scope: !4852, inlinedAt: !4908)
!4932 = !DILocation(line: 145, column: 16, scope: !4852, inlinedAt: !4908)
!4933 = !DILocation(line: 146, column: 34, scope: !4852, inlinedAt: !4908)
!4934 = !DILocation(line: 146, column: 38, scope: !4852, inlinedAt: !4908)
!4935 = !DILocation(line: 146, column: 42, scope: !4936, inlinedAt: !4908)
!4936 = !DILexicalBlockFile(scope: !4852, file: !605, discriminator: 1)
!4937 = !DILocation(line: 146, column: 41, scope: !4936, inlinedAt: !4908)
!4938 = !DILocation(line: 147, column: 48, scope: !4852, inlinedAt: !4908)
!4939 = !DILocation(line: 147, column: 46, scope: !4852, inlinedAt: !4908)
!4940 = !DILocation(line: 147, column: 69, scope: !4852, inlinedAt: !4908)
!4941 = !DILocation(line: 147, column: 30, scope: !4852, inlinedAt: !4908)
!4942 = !DILocation(line: 134, column: 13, scope: !4843, inlinedAt: !4908)
!4943 = !DILocation(line: 148, column: 13, scope: !4852, inlinedAt: !4908)
!4944 = !DILocation(line: 150, column: 13, scope: !4945, inlinedAt: !4908)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !605, line: 149, column: 11)
!4946 = distinct !DILexicalBlock(scope: !4852, file: !605, line: 148, column: 13)
!4947 = !DILocation(line: 151, column: 17, scope: !4945, inlinedAt: !4908)
!4948 = !DILocation(line: 152, column: 34, scope: !4949, inlinedAt: !4908)
!4949 = distinct !DILexicalBlock(scope: !4945, file: !605, line: 151, column: 17)
!4950 = !DILocation(line: 153, column: 41, scope: !4945, inlinedAt: !4908)
!4951 = !DILocation(line: 153, column: 13, scope: !4945, inlinedAt: !4908)
!4952 = !DILocation(line: 157, column: 11, scope: !4843, inlinedAt: !4908)
!4953 = !DILocation(line: 171, column: 16, scope: !4841, inlinedAt: !4908)
!4954 = !DILocation(line: 162, column: 15, scope: !4841, inlinedAt: !4908)
!4955 = !DILocation(line: 173, column: 18, scope: !4840, inlinedAt: !4908)
!4956 = !DILocation(line: 173, column: 15, scope: !4841, inlinedAt: !4908)
!4957 = !DILocation(line: 180, column: 20, scope: !4839, inlinedAt: !4908)
!4958 = !DILocation(line: 178, column: 21, scope: !4839, inlinedAt: !4908)
!4959 = !DILocation(line: 181, column: 22, scope: !4838, inlinedAt: !4908)
!4960 = !DILocation(line: 181, column: 19, scope: !4839, inlinedAt: !4908)
!4961 = !DILocation(line: 190, column: 25, scope: !4837, inlinedAt: !4908)
!4962 = !DILocation(line: 184, column: 19, scope: !4963, inlinedAt: !4908)
!4963 = distinct !DILexicalBlock(scope: !4838, file: !605, line: 182, column: 17)
!4964 = !DILocation(line: 186, column: 17, scope: !4963, inlinedAt: !4908)
!4965 = !DILocation(line: 191, column: 26, scope: !4837, inlinedAt: !4908)
!4966 = !DILocation(line: 196, column: 23, scope: !4834, inlinedAt: !4908)
!4967 = !DILocation(line: 197, column: 23, scope: !4834, inlinedAt: !4908)
!4968 = !DILocalVariable(name: "__fp", arg: 1, scope: !4969, file: !1028, line: 63, type: !4857)
!4969 = distinct !DISubprogram(name: "getc_unlocked", scope: !1028, file: !1028, line: 63, type: !4970, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !4972)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!93, !4857}
!4972 = !{!4968}
!4973 = !DILocation(line: 63, column: 22, scope: !4969, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 201, column: 27, scope: !4834, inlinedAt: !4908)
!4975 = !DILocation(line: 65, column: 10, scope: !4969, inlinedAt: !4974)
!4976 = !DILocation(line: 65, column: 10, scope: !4977, inlinedAt: !4974)
!4977 = !DILexicalBlockFile(scope: !4969, file: !1028, discriminator: 1)
!4978 = !DILocation(line: 65, column: 10, scope: !4979, inlinedAt: !4974)
!4979 = !DILexicalBlockFile(scope: !4969, file: !1028, discriminator: 2)
!4980 = !DILocation(line: 65, column: 10, scope: !4981, inlinedAt: !4974)
!4981 = !DILexicalBlockFile(scope: !4969, file: !1028, discriminator: 3)
!4982 = !DILocation(line: 195, column: 27, scope: !4834, inlinedAt: !4908)
!4983 = !DILocation(line: 202, column: 27, scope: !4834, inlinedAt: !4908)
!4984 = !DILocation(line: 63, column: 22, scope: !4969, inlinedAt: !4985)
!4985 = distinct !DILocation(line: 210, column: 33, scope: !4986, inlinedAt: !4908)
!4986 = distinct !DILexicalBlock(scope: !4987, file: !605, line: 207, column: 25)
!4987 = distinct !DILexicalBlock(scope: !4834, file: !605, line: 206, column: 27)
!4988 = !DILocation(line: 65, column: 10, scope: !4969, inlinedAt: !4985)
!4989 = !DILocation(line: 65, column: 10, scope: !4977, inlinedAt: !4985)
!4990 = !DILocation(line: 65, column: 10, scope: !4979, inlinedAt: !4985)
!4991 = !DILocation(line: 65, column: 10, scope: !4981, inlinedAt: !4985)
!4992 = !DILocation(line: 210, column: 29, scope: !4993, inlinedAt: !4908)
!4993 = !DILexicalBlockFile(scope: !4986, file: !605, discriminator: 1)
!4994 = distinct !{!4994, !4995, !4996}
!4995 = !DILocation(line: 193, column: 19, scope: !4836)
!4996 = !DILocation(line: 241, column: 21, scope: !4836)
!4997 = !DILocation(line: 216, column: 23, scope: !4834, inlinedAt: !4908)
!4998 = !DILocation(line: 217, column: 27, scope: !4999, inlinedAt: !4908)
!4999 = distinct !DILexicalBlock(scope: !4834, file: !605, line: 217, column: 27)
!5000 = !DILocation(line: 217, column: 64, scope: !4999, inlinedAt: !4908)
!5001 = !DILocation(line: 217, column: 27, scope: !4834, inlinedAt: !4908)
!5002 = !DILocation(line: 219, column: 28, scope: !4834, inlinedAt: !4908)
!5003 = !DILocation(line: 198, column: 30, scope: !4834, inlinedAt: !4908)
!5004 = !DILocation(line: 220, column: 28, scope: !4834, inlinedAt: !4908)
!5005 = !DILocation(line: 198, column: 34, scope: !4834, inlinedAt: !4908)
!5006 = !DILocation(line: 199, column: 29, scope: !4834, inlinedAt: !4908)
!5007 = !DILocation(line: 222, column: 36, scope: !5008, inlinedAt: !4908)
!5008 = distinct !DILexicalBlock(scope: !4834, file: !605, line: 222, column: 27)
!5009 = !DILocation(line: 222, column: 27, scope: !4834, inlinedAt: !4908)
!5010 = !DILocation(line: 225, column: 63, scope: !5011, inlinedAt: !4908)
!5011 = distinct !DILexicalBlock(scope: !5008, file: !605, line: 223, column: 25)
!5012 = !DILocation(line: 225, column: 46, scope: !5011, inlinedAt: !4908)
!5013 = !DILocation(line: 226, column: 25, scope: !5011, inlinedAt: !4908)
!5014 = !DILocation(line: 229, column: 36, scope: !5015, inlinedAt: !4908)
!5015 = distinct !DILexicalBlock(scope: !5008, file: !605, line: 228, column: 25)
!5016 = !DILocation(line: 230, column: 73, scope: !5015, inlinedAt: !4908)
!5017 = !DILocation(line: 230, column: 46, scope: !5015, inlinedAt: !4908)
!5018 = !DILocation(line: 232, column: 35, scope: !5019, inlinedAt: !4908)
!5019 = distinct !DILexicalBlock(scope: !4834, file: !605, line: 232, column: 27)
!5020 = !DILocation(line: 232, column: 27, scope: !4834, inlinedAt: !4908)
!5021 = !DILocation(line: 236, column: 27, scope: !5022, inlinedAt: !4908)
!5022 = distinct !DILexicalBlock(scope: !5019, file: !605, line: 233, column: 25)
!5023 = !DILocation(line: 237, column: 27, scope: !5022, inlinedAt: !4908)
!5024 = !DILocation(line: 239, column: 39, scope: !4834, inlinedAt: !4908)
!5025 = !DILocation(line: 239, column: 50, scope: !4834, inlinedAt: !4908)
!5026 = !DILocation(line: 239, column: 61, scope: !4834, inlinedAt: !4908)
!5027 = !DILocalVariable(name: "__dest", arg: 1, scope: !5028, file: !5029, line: 107, type: !5032)
!5028 = distinct !DISubprogram(name: "strcpy", scope: !5029, file: !5029, line: 107, type: !5030, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !5034)
!5029 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!34, !5032, !5033}
!5032 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!5033 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!5034 = !{!5027, !5035}
!5035 = !DILocalVariable(name: "__src", arg: 2, scope: !5028, file: !5029, line: 107, type: !5033)
!5036 = !DILocation(line: 107, column: 1, scope: !5028, inlinedAt: !5037)
!5037 = distinct !DILocation(line: 239, column: 23, scope: !4834, inlinedAt: !4908)
!5038 = !DILocation(line: 109, column: 49, scope: !5028, inlinedAt: !5037)
!5039 = !DILocation(line: 109, column: 10, scope: !5028, inlinedAt: !5037)
!5040 = !DILocation(line: 107, column: 1, scope: !5028, inlinedAt: !5041)
!5041 = distinct !DILocation(line: 240, column: 23, scope: !4834, inlinedAt: !4908)
!5042 = !DILocation(line: 109, column: 49, scope: !5028, inlinedAt: !5041)
!5043 = !DILocation(line: 109, column: 10, scope: !5028, inlinedAt: !5041)
!5044 = !DILocation(line: 241, column: 21, scope: !4835, inlinedAt: !4908)
!5045 = !DILocation(line: 242, column: 19, scope: !4837, inlinedAt: !4908)
!5046 = !DILocation(line: 243, column: 32, scope: !5047, inlinedAt: !4908)
!5047 = distinct !DILexicalBlock(scope: !4837, file: !605, line: 243, column: 23)
!5048 = !DILocation(line: 243, column: 23, scope: !4837, inlinedAt: !4908)
!5049 = !DILocation(line: 247, column: 33, scope: !5050, inlinedAt: !4908)
!5050 = distinct !DILexicalBlock(scope: !5047, file: !605, line: 246, column: 21)
!5051 = !DILocation(line: 247, column: 45, scope: !5050, inlinedAt: !4908)
!5052 = !DILocation(line: 253, column: 11, scope: !4841, inlinedAt: !4908)
!5053 = !DILocation(line: 377, column: 23, scope: !4843, inlinedAt: !4908)
!5054 = !DILocation(line: 378, column: 5, scope: !4843, inlinedAt: !4908)
!5055 = !DILocation(line: 396, column: 15, scope: !4821)
!5056 = !DILocation(line: 590, column: 8, scope: !4830)
!5057 = !DILocation(line: 590, column: 17, scope: !4830)
!5058 = !DILocation(line: 589, column: 3, scope: !5059)
!5059 = !DILexicalBlockFile(scope: !4831, file: !605, discriminator: 1)
!5060 = !DILocation(line: 592, column: 9, scope: !4828)
!5061 = !DILocation(line: 592, column: 35, scope: !4829)
!5062 = !DILocation(line: 593, column: 9, scope: !4829)
!5063 = !DILocation(line: 593, column: 24, scope: !5064)
!5064 = !DILexicalBlockFile(scope: !4829, file: !605, discriminator: 1)
!5065 = !DILocation(line: 593, column: 31, scope: !5064)
!5066 = !DILocation(line: 593, column: 34, scope: !5067)
!5067 = !DILexicalBlockFile(scope: !4829, file: !605, discriminator: 2)
!5068 = !DILocation(line: 593, column: 45, scope: !5067)
!5069 = !DILocation(line: 592, column: 9, scope: !5070)
!5070 = !DILexicalBlockFile(scope: !4830, file: !605, discriminator: 1)
!5071 = !DILocation(line: 595, column: 29, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !4829, file: !605, line: 594, column: 7)
!5073 = !DILocation(line: 595, column: 27, scope: !5072)
!5074 = !DILocation(line: 595, column: 46, scope: !5072)
!5075 = !DILocation(line: 596, column: 9, scope: !5072)
!5076 = !DILocation(line: 591, column: 19, scope: !4830)
!5077 = !DILocation(line: 591, column: 36, scope: !4830)
!5078 = !DILocation(line: 591, column: 16, scope: !4830)
!5079 = !DILocation(line: 591, column: 52, scope: !5070)
!5080 = !DILocation(line: 591, column: 69, scope: !4830)
!5081 = !DILocation(line: 591, column: 49, scope: !4830)
!5082 = distinct !{!5082, !5083, !5084}
!5083 = !DILocation(line: 589, column: 3, scope: !4831)
!5084 = !DILocation(line: 597, column: 7, scope: !4831)
!5085 = !DILocation(line: 602, column: 7, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !4821, file: !605, line: 602, column: 7)
!5087 = !DILocation(line: 602, column: 18, scope: !5086)
!5088 = !DILocation(line: 602, column: 7, scope: !4821)
!5089 = !DILocation(line: 612, column: 3, scope: !4821)
!5090 = distinct !DISubprogram(name: "memcoll", scope: !5091, file: !5091, line: 66, type: !4279, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !5092)
!5091 = !DIFile(filename: "lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5092 = !{!5093, !5094, !5095, !5096, !5097, !5098, !5101}
!5093 = !DILocalVariable(name: "s1", arg: 1, scope: !5090, file: !5091, line: 66, type: !34)
!5094 = !DILocalVariable(name: "s1len", arg: 2, scope: !5090, file: !5091, line: 66, type: !37)
!5095 = !DILocalVariable(name: "s2", arg: 3, scope: !5090, file: !5091, line: 66, type: !34)
!5096 = !DILocalVariable(name: "s2len", arg: 4, scope: !5090, file: !5091, line: 66, type: !37)
!5097 = !DILocalVariable(name: "diff", scope: !5090, file: !5091, line: 68, type: !93)
!5098 = !DILocalVariable(name: "n1", scope: !5099, file: !5091, line: 81, type: !35)
!5099 = distinct !DILexicalBlock(scope: !5100, file: !5091, line: 80, column: 5)
!5100 = distinct !DILexicalBlock(scope: !5090, file: !5091, line: 74, column: 7)
!5101 = !DILocalVariable(name: "n2", scope: !5099, file: !5091, line: 82, type: !35)
!5102 = !DILocation(line: 66, column: 16, scope: !5090)
!5103 = !DILocation(line: 66, column: 27, scope: !5090)
!5104 = !DILocation(line: 66, column: 40, scope: !5090)
!5105 = !DILocation(line: 66, column: 51, scope: !5090)
!5106 = !DILocation(line: 74, column: 13, scope: !5100)
!5107 = !DILocation(line: 74, column: 22, scope: !5100)
!5108 = !DILocation(line: 74, column: 25, scope: !5109)
!5109 = !DILexicalBlockFile(scope: !5100, file: !5091, discriminator: 1)
!5110 = !DILocation(line: 74, column: 48, scope: !5109)
!5111 = !DILocation(line: 74, column: 7, scope: !5112)
!5112 = !DILexicalBlockFile(scope: !5090, file: !5091, discriminator: 1)
!5113 = !DILocation(line: 76, column: 7, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5100, file: !5091, line: 75, column: 5)
!5115 = !DILocation(line: 76, column: 13, scope: !5114)
!5116 = !DILocation(line: 68, column: 7, scope: !5090)
!5117 = !DILocation(line: 78, column: 5, scope: !5114)
!5118 = !DILocation(line: 81, column: 17, scope: !5099)
!5119 = !DILocation(line: 81, column: 12, scope: !5099)
!5120 = !DILocation(line: 82, column: 17, scope: !5099)
!5121 = !DILocation(line: 82, column: 12, scope: !5099)
!5122 = !DILocation(line: 84, column: 17, scope: !5099)
!5123 = !DILocation(line: 85, column: 17, scope: !5099)
!5124 = !DILocation(line: 87, column: 38, scope: !5099)
!5125 = !DILocation(line: 87, column: 53, scope: !5099)
!5126 = !DILocalVariable(name: "s1", arg: 1, scope: !5127, file: !5091, line: 35, type: !45)
!5127 = distinct !DISubprogram(name: "strcoll_loop", scope: !5091, file: !5091, line: 35, type: !1782, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !5128)
!5128 = !{!5126, !5129, !5130, !5131, !5132, !5133, !5135}
!5129 = !DILocalVariable(name: "s1size", arg: 2, scope: !5127, file: !5091, line: 35, type: !37)
!5130 = !DILocalVariable(name: "s2", arg: 3, scope: !5127, file: !5091, line: 35, type: !45)
!5131 = !DILocalVariable(name: "s2size", arg: 4, scope: !5127, file: !5091, line: 35, type: !37)
!5132 = !DILocalVariable(name: "diff", scope: !5127, file: !5091, line: 37, type: !93)
!5133 = !DILocalVariable(name: "size1", scope: !5134, file: !5091, line: 44, type: !37)
!5134 = distinct !DILexicalBlock(scope: !5127, file: !5091, line: 40, column: 5)
!5135 = !DILocalVariable(name: "size2", scope: !5134, file: !5091, line: 45, type: !37)
!5136 = !DILocation(line: 35, column: 27, scope: !5127, inlinedAt: !5137)
!5137 = distinct !DILocation(line: 87, column: 14, scope: !5099)
!5138 = !DILocation(line: 35, column: 38, scope: !5127, inlinedAt: !5137)
!5139 = !DILocation(line: 35, column: 58, scope: !5127, inlinedAt: !5137)
!5140 = !DILocation(line: 35, column: 69, scope: !5127, inlinedAt: !5137)
!5141 = !DILocation(line: 39, column: 13, scope: !5142, inlinedAt: !5137)
!5142 = !DILexicalBlockFile(scope: !5127, file: !5091, discriminator: 1)
!5143 = !DILocation(line: 39, column: 3, scope: !5127, inlinedAt: !5137)
!5144 = !DILocation(line: 39, column: 19, scope: !5142, inlinedAt: !5137)
!5145 = !DILocation(line: 39, column: 32, scope: !5146, inlinedAt: !5137)
!5146 = !DILexicalBlockFile(scope: !5127, file: !5091, discriminator: 5)
!5147 = !DILocation(line: 37, column: 7, scope: !5127, inlinedAt: !5137)
!5148 = !DILocation(line: 39, column: 30, scope: !5142, inlinedAt: !5137)
!5149 = !DILocation(line: 39, column: 3, scope: !5150, inlinedAt: !5137)
!5150 = !DILexicalBlockFile(scope: !5127, file: !5091, discriminator: 3)
!5151 = !DILocation(line: 44, column: 22, scope: !5134, inlinedAt: !5137)
!5152 = !DILocation(line: 44, column: 34, scope: !5134, inlinedAt: !5137)
!5153 = !DILocation(line: 44, column: 14, scope: !5134, inlinedAt: !5137)
!5154 = !DILocation(line: 45, column: 22, scope: !5134, inlinedAt: !5137)
!5155 = !DILocation(line: 45, column: 34, scope: !5134, inlinedAt: !5137)
!5156 = !DILocation(line: 45, column: 14, scope: !5134, inlinedAt: !5137)
!5157 = !DILocation(line: 48, column: 14, scope: !5134, inlinedAt: !5137)
!5158 = !DILocation(line: 49, column: 14, scope: !5134, inlinedAt: !5137)
!5159 = !DILocation(line: 51, column: 18, scope: !5160, inlinedAt: !5137)
!5160 = distinct !DILexicalBlock(scope: !5134, file: !5091, line: 51, column: 11)
!5161 = !DILocation(line: 51, column: 11, scope: !5134, inlinedAt: !5137)
!5162 = !DILocation(line: 52, column: 26, scope: !5160, inlinedAt: !5137)
!5163 = !DILocation(line: 52, column: 16, scope: !5160, inlinedAt: !5137)
!5164 = !DILocation(line: 47, column: 10, scope: !5134, inlinedAt: !5137)
!5165 = !DILocation(line: 46, column: 10, scope: !5134, inlinedAt: !5137)
!5166 = !DILocation(line: 53, column: 18, scope: !5167, inlinedAt: !5137)
!5167 = distinct !DILexicalBlock(scope: !5134, file: !5091, line: 53, column: 11)
!5168 = distinct !{!5168, !5169, !5170}
!5169 = !DILocation(line: 39, column: 3, scope: !5127)
!5170 = !DILocation(line: 55, column: 5, scope: !5127)
!5171 = !DILocation(line: 89, column: 17, scope: !5099)
!5172 = !DILocation(line: 90, column: 17, scope: !5099)
!5173 = !DILocation(line: 93, column: 3, scope: !5090)
!5174 = distinct !DISubprogram(name: "memcoll0", scope: !5091, file: !5091, line: 102, type: !1782, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !5175)
!5175 = !{!5176, !5177, !5178, !5179}
!5176 = !DILocalVariable(name: "s1", arg: 1, scope: !5174, file: !5091, line: 102, type: !45)
!5177 = !DILocalVariable(name: "s1size", arg: 2, scope: !5174, file: !5091, line: 102, type: !37)
!5178 = !DILocalVariable(name: "s2", arg: 3, scope: !5174, file: !5091, line: 102, type: !45)
!5179 = !DILocalVariable(name: "s2size", arg: 4, scope: !5174, file: !5091, line: 102, type: !37)
!5180 = !DILocation(line: 102, column: 23, scope: !5174)
!5181 = !DILocation(line: 102, column: 34, scope: !5174)
!5182 = !DILocation(line: 102, column: 54, scope: !5174)
!5183 = !DILocation(line: 102, column: 65, scope: !5174)
!5184 = !DILocation(line: 104, column: 14, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5174, file: !5091, line: 104, column: 7)
!5186 = !DILocation(line: 104, column: 24, scope: !5185)
!5187 = !DILocation(line: 104, column: 27, scope: !5188)
!5188 = !DILexicalBlockFile(scope: !5185, file: !5091, discriminator: 1)
!5189 = !DILocation(line: 104, column: 51, scope: !5188)
!5190 = !DILocation(line: 104, column: 7, scope: !5191)
!5191 = !DILexicalBlockFile(scope: !5174, file: !5091, discriminator: 1)
!5192 = !DILocation(line: 106, column: 7, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5185, file: !5091, line: 105, column: 5)
!5194 = !DILocation(line: 106, column: 13, scope: !5193)
!5195 = !DILocation(line: 107, column: 7, scope: !5193)
!5196 = !DILocation(line: 35, column: 27, scope: !5127, inlinedAt: !5197)
!5197 = distinct !DILocation(line: 110, column: 12, scope: !5185)
!5198 = !DILocation(line: 35, column: 38, scope: !5127, inlinedAt: !5197)
!5199 = !DILocation(line: 35, column: 58, scope: !5127, inlinedAt: !5197)
!5200 = !DILocation(line: 35, column: 69, scope: !5127, inlinedAt: !5197)
!5201 = !DILocation(line: 39, column: 13, scope: !5142, inlinedAt: !5197)
!5202 = !DILocation(line: 39, column: 3, scope: !5127, inlinedAt: !5197)
!5203 = !DILocation(line: 39, column: 19, scope: !5142, inlinedAt: !5197)
!5204 = !DILocation(line: 39, column: 32, scope: !5146, inlinedAt: !5197)
!5205 = !DILocation(line: 37, column: 7, scope: !5127, inlinedAt: !5197)
!5206 = !DILocation(line: 39, column: 30, scope: !5142, inlinedAt: !5197)
!5207 = !DILocation(line: 39, column: 3, scope: !5150, inlinedAt: !5197)
!5208 = !DILocation(line: 44, column: 22, scope: !5134, inlinedAt: !5197)
!5209 = !DILocation(line: 44, column: 34, scope: !5134, inlinedAt: !5197)
!5210 = !DILocation(line: 44, column: 14, scope: !5134, inlinedAt: !5197)
!5211 = !DILocation(line: 45, column: 22, scope: !5134, inlinedAt: !5197)
!5212 = !DILocation(line: 45, column: 34, scope: !5134, inlinedAt: !5197)
!5213 = !DILocation(line: 45, column: 14, scope: !5134, inlinedAt: !5197)
!5214 = !DILocation(line: 48, column: 14, scope: !5134, inlinedAt: !5197)
!5215 = !DILocation(line: 49, column: 14, scope: !5134, inlinedAt: !5197)
!5216 = !DILocation(line: 51, column: 18, scope: !5160, inlinedAt: !5197)
!5217 = !DILocation(line: 51, column: 11, scope: !5134, inlinedAt: !5197)
!5218 = !DILocation(line: 52, column: 26, scope: !5160, inlinedAt: !5197)
!5219 = !DILocation(line: 52, column: 16, scope: !5160, inlinedAt: !5197)
!5220 = !DILocation(line: 47, column: 10, scope: !5134, inlinedAt: !5197)
!5221 = !DILocation(line: 46, column: 10, scope: !5134, inlinedAt: !5197)
!5222 = !DILocation(line: 53, column: 18, scope: !5167, inlinedAt: !5197)
!5223 = !DILocation(line: 111, column: 1, scope: !5174)
