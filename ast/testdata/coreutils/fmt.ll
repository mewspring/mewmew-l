; ModuleID = 'coreutils-8.27/src/fmt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.Word = type { i8*, i32, i32, i8, i32, i64, %struct.Word* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: %s [-WIDTH] [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [129 x i8] c"Reformat each paragraph in the FILE(s), writing to standard output.\0AThe option -WIDTH is an abbreviated form of --width=DIGITS.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [278 x i8] c"  -c, --crown-margin        preserve indentation of first two lines\0A  -p, --prefix=STRING       reformat only lines beginning with STRING,\0A                              reattaching the prefix to reformatted lines\0A  -s, --split-only          split long lines, but do not refill\0A\00", align 1
@.str.4 = private unnamed_addr constant [286 x i8] c"  -t, --tagged-paragraph    indentation of first line different from second\0A  -u, --uniform-spacing     one space between words, two after sentences\0A  -w, --width=WIDTH         maximum line width (default of 75 columns)\0A  -g, --goal=WIDTH          goal width (default of 93% of width)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@uniform = internal unnamed_addr global i1 false, align 1
@split = internal unnamed_addr global i1 false, align 1
@tagged = internal unnamed_addr global i1 false, align 1
@crown = internal unnamed_addr global i1 false, align 1
@max_width = internal unnamed_addr global i32 0, align 4, !dbg !0
@prefix = internal unnamed_addr global i8* null, align 8, !dbg !73
@prefix_full_length = internal unnamed_addr global i32 0, align 4, !dbg !75
@prefix_lead_space = internal unnamed_addr global i32 0, align 4, !dbg !77
@prefix_length = internal unnamed_addr global i32 0, align 4, !dbg !79
@.str.11 = private unnamed_addr constant [21 x i8] c"0123456789cstuw:p:g:\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !113
@.str.12 = private unnamed_addr constant [94 x i8] c"invalid option -- %c; -WIDTH is recognized only when it is the first\0Aoption; use -w N instead\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"Ross Paterson\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1
@goal_width = internal unnamed_addr global i32 0, align 4, !dbg !81
@optind = external local_unnamed_addr global i32, align 4
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@tabs = internal unnamed_addr global i1 false, align 1
@other_indent = internal unnamed_addr global i32 0, align 4, !dbg !129
@next_char = internal unnamed_addr global i32 0, align 4, !dbg !135
@last_line_length = internal unnamed_addr global i32 0, align 4, !dbg !137
@next_prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !133
@in_column = internal unnamed_addr global i32 0, align 4, !dbg !131
@out_column = internal unnamed_addr global i32 0, align 4, !dbg !139
@prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !141
@first_indent = internal unnamed_addr global i32 0, align 4, !dbg !143
@parabuf = internal global [5000 x i8] zeroinitializer, align 16, !dbg !145
@wptr = internal unnamed_addr global i8* null, align 8, !dbg !150
@unused_word_type = internal global [1000 x %struct.Word] zeroinitializer, align 16, !dbg !152
@word_limit = internal unnamed_addr global %struct.Word* null, align 8, !dbg !171
@.str.46 = private unnamed_addr constant [18 x i8] c"word < word_limit\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"src/fmt.c\00", align 1
@__PRETTY_FUNCTION__.get_paragraph = private unnamed_addr constant [28 x i8] c"_Bool get_paragraph(FILE *)\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"(['`\22\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c")]'\22\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"crown-margin\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"split-only\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"tagged-paragraph\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"uniform-spacing\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"goal\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !173
@.str.16 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !179
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !184
@.str.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !187
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !194
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !201
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !213
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !218
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !230
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !237
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !244
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !232
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !246
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.94 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.95 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.96 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.97 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !252
@.str.1.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.116 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !261
@.str.3.135 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.136 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.137 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.138 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.139 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !674 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !678, metadata !679), !dbg !680
  %2 = icmp eq i32 %0, 0, !dbg !681
  br i1 %2, label %8, label %3, !dbg !683

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !684, !tbaa !687
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !684
  %6 = load i8*, i8** @program_name, align 8, !dbg !684, !tbaa !687
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !691
  br label %48, !dbg !693

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !695
  %10 = load i8*, i8** @program_name, align 8, !dbg !695, !tbaa !687
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !697
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !699
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !687
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !700
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !701
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !687
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !706
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !708
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !687
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !711
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !713
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !687
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !714
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([286 x i8], [286 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !715
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !687
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !716
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !717
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !717, !tbaa !687
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !718
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !719
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !719, !tbaa !687
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !720
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !91, metadata !679) #11, !dbg !721
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !91, metadata !679) #11, !dbg !721
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !723
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !724
  %35 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !726
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !102, metadata !679) #11, !dbg !727
  %36 = icmp eq i8* %35, null, !dbg !728
  br i1 %36, label %43, label %37, !dbg !729

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #8, !dbg !730
  %39 = icmp eq i32 %38, 0, !dbg !730
  br i1 %39, label %43, label %40, !dbg !732

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !734
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !736
  br label %43, !dbg !738

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !739
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !740
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !741
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #11, !dbg !742
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #14, !dbg !743
  unreachable, !dbg !743
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !744 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !749, metadata !679), !dbg !824
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !750, metadata !679), !dbg !825
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !752, metadata !679), !dbg !826
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !753, metadata !679), !dbg !827
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !754, metadata !679), !dbg !828
  %3 = load i8*, i8** %1, align 8, !dbg !829, !tbaa !687
  tail call void @set_program_name(i8* %3) #11, !dbg !830
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !831
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !832
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !833
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !834
  store i1 false, i1* @uniform, align 1
  store i1 false, i1* @split, align 1
  store i1 false, i1* @tagged, align 1
  store i1 false, i1* @crown, align 1
  store i32 75, i32* @max_width, align 4, !dbg !835, !tbaa !836
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** @prefix, align 8, !dbg !838, !tbaa !687
  store i32 0, i32* @prefix_full_length, align 4, !dbg !839, !tbaa !836
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !840, !tbaa !836
  store i32 0, i32* @prefix_length, align 4, !dbg !841, !tbaa !836
  %8 = icmp sgt i32 %0, 1, !dbg !842
  br i1 %8, label %9, label %25, !dbg !844

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !845
  %11 = load i8*, i8** %10, align 8, !dbg !845, !tbaa !687
  %12 = load i8, i8* %11, align 1, !dbg !845, !tbaa !847
  %13 = icmp eq i8 %12, 45, !dbg !848
  br i1 %13, label %14, label %25, !dbg !849

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !850
  %16 = load i8, i8* %15, align 1, !dbg !850, !tbaa !847
  %17 = sext i8 %16 to i32, !dbg !850
  %18 = add nsw i32 %17, -48, !dbg !850
  %19 = icmp ult i32 %18, 10, !dbg !850
  br i1 %19, label %20, label %25, !dbg !852

; <label>:20:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !753, metadata !679), !dbg !827
  %21 = bitcast i8** %1 to i64*, !dbg !854
  %22 = load i64, i64* %21, align 8, !dbg !854, !tbaa !687
  %23 = bitcast i8** %10 to i64*, !dbg !856
  store i64 %22, i64* %23, align 8, !dbg !856, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8** %10, i64 0, metadata !750, metadata !679), !dbg !825
  %24 = add nsw i32 %0, -1, !dbg !857
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !749, metadata !679), !dbg !824
  br label %25, !dbg !858

; <label>:25:                                     ; preds = %20, %14, %9, %2
  %26 = phi i8* [ null, %2 ], [ null, %9 ], [ null, %14 ], [ %15, %20 ]
  %27 = phi i8** [ %1, %2 ], [ %1, %9 ], [ %1, %14 ], [ %10, %20 ]
  %28 = phi i32 [ %0, %2 ], [ %0, %9 ], [ %0, %14 ], [ %24, %20 ]
  br label %29, !dbg !824

; <label>:29:                                     ; preds = %25, %48
  %30 = phi i8* [ null, %25 ], [ %49, %48 ]
  %31 = phi i8* [ %26, %25 ], [ %33, %48 ]
  br label %32, !dbg !824

; <label>:32:                                     ; preds = %29, %46
  %33 = phi i8* [ %31, %29 ], [ %47, %46 ]
  br label %34, !dbg !824

; <label>:34:                                     ; preds = %82, %32
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !749, metadata !679), !dbg !824
  tail call void @llvm.dbg.value(metadata i8** %27, i64 0, metadata !750, metadata !679), !dbg !825
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !753, metadata !679), !dbg !827
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !754, metadata !679), !dbg !828
  %35 = tail call i32 @getopt_long(i32 %28, i8** %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !859
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !751, metadata !679), !dbg !861
  switch i32 %35, label %36 [
    i32 -1, label %87
    i32 99, label %42
    i32 115, label %43
    i32 116, label %44
    i32 117, label %45
    i32 119, label %46
    i32 103, label %48
    i32 112, label %50
    i32 -130, label %83
    i32 -131, label %84
  ], !dbg !862

; <label>:36:                                     ; preds = %34
  %37 = add i32 %35, -48, !dbg !863
  %38 = icmp ult i32 %37, 10, !dbg !863
  br i1 %38, label %39, label %41, !dbg !866

; <label>:39:                                     ; preds = %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.12, i64 0, i64 0), i32 5) #11, !dbg !867
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40, i32 %35) #11, !dbg !868
  br label %41, !dbg !870

; <label>:41:                                     ; preds = %39, %36
  tail call void @usage(i32 1) #15, !dbg !871
  unreachable, !dbg !871

; <label>:42:                                     ; preds = %34
  store i1 true, i1* @crown, align 1
  br label %82, !dbg !872

; <label>:43:                                     ; preds = %34
  store i1 true, i1* @split, align 1
  br label %82, !dbg !873

; <label>:44:                                     ; preds = %34
  store i1 true, i1* @tagged, align 1
  br label %82, !dbg !874

; <label>:45:                                     ; preds = %34
  store i1 true, i1* @uniform, align 1
  br label %82, !dbg !875

; <label>:46:                                     ; preds = %34
  %47 = load i8*, i8** @optarg, align 8, !dbg !876, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !753, metadata !679), !dbg !827
  br label %32, !dbg !877, !llvm.loop !878

; <label>:48:                                     ; preds = %34
  %49 = load i8*, i8** @optarg, align 8, !dbg !881, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !754, metadata !679), !dbg !828
  br label %29, !dbg !882, !llvm.loop !878

; <label>:50:                                     ; preds = %34
  %51 = load i8*, i8** @optarg, align 8, !dbg !883, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !884, metadata !679) #11, !dbg !890
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !892, !tbaa !836
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !884, metadata !679) #11, !dbg !890
  %52 = load i8, i8* %51, align 1, !dbg !893, !tbaa !847
  %53 = icmp eq i8 %52, 32, !dbg !895
  br i1 %53, label %54, label %63, !dbg !896

; <label>:54:                                     ; preds = %50
  br label %55, !dbg !897

; <label>:55:                                     ; preds = %54, %55
  %56 = phi i32 [ %58, %55 ], [ 0, %54 ], !dbg !897
  %57 = phi i8* [ %59, %55 ], [ %51, %54 ]
  %58 = add nuw nsw i32 %56, 1, !dbg !897
  %59 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !899
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !884, metadata !679) #11, !dbg !890
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !884, metadata !679) #11, !dbg !890
  %60 = load i8, i8* %59, align 1, !dbg !893, !tbaa !847
  %61 = icmp eq i8 %60, 32, !dbg !895
  br i1 %61, label %55, label %62, !dbg !896, !llvm.loop !900

; <label>:62:                                     ; preds = %55
  store i32 %58, i32* @prefix_lead_space, align 4, !dbg !897, !tbaa !836
  br label %63, !dbg !896

; <label>:63:                                     ; preds = %62, %50
  %64 = phi i8* [ %59, %62 ], [ %51, %50 ]
  store i8* %64, i8** @prefix, align 8, !dbg !903, !tbaa !687
  %65 = tail call i64 @strlen(i8* %64) #8, !dbg !904
  %66 = trunc i64 %65 to i32, !dbg !904
  store i32 %66, i32* @prefix_full_length, align 4, !dbg !905, !tbaa !836
  %67 = shl i64 %65, 32, !dbg !906
  %68 = ashr exact i64 %67, 32, !dbg !906
  %69 = getelementptr inbounds i8, i8* %64, i64 %68, !dbg !906
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !889, metadata !679) #11, !dbg !907
  br label %70, !dbg !908

; <label>:70:                                     ; preds = %73, %63
  %71 = phi i8* [ %69, %63 ], [ %74, %73 ]
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !889, metadata !679) #11, !dbg !907
  %72 = icmp ugt i8* %71, %64, !dbg !909
  br i1 %72, label %73, label %77, !dbg !910

; <label>:73:                                     ; preds = %70
  %74 = getelementptr inbounds i8, i8* %71, i64 -1, !dbg !911
  %75 = load i8, i8* %74, align 1, !dbg !911, !tbaa !847
  %76 = icmp eq i8 %75, 32, !dbg !913
  br i1 %76, label %70, label %77, !dbg !914, !llvm.loop !916

; <label>:77:                                     ; preds = %70, %73
  store i8 0, i8* %71, align 1, !dbg !919, !tbaa !847
  %78 = ptrtoint i8* %71 to i64, !dbg !920
  %79 = ptrtoint i8* %64 to i64, !dbg !920
  %80 = sub i64 %78, %79, !dbg !920
  %81 = trunc i64 %80 to i32, !dbg !921
  store i32 %81, i32* @prefix_length, align 4, !dbg !922, !tbaa !836
  br label %82, !dbg !923

; <label>:82:                                     ; preds = %77, %45, %44, %43, %42
  br label %34, !dbg !824, !llvm.loop !878

; <label>:83:                                     ; preds = %34
  tail call void @usage(i32 0) #15, !dbg !924
  unreachable, !dbg !924

; <label>:84:                                     ; preds = %34
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !925, !tbaa !687
  %86 = load i8*, i8** @Version, align 8, !dbg !925, !tbaa !687
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* null) #11, !dbg !925
  tail call void @exit(i32 0) #14, !dbg !926
  unreachable, !dbg !925

; <label>:87:                                     ; preds = %34
  %88 = icmp eq i8* %33, null, !dbg !928
  br i1 %88, label %89, label %91, !dbg !930

; <label>:89:                                     ; preds = %87
  %90 = load i32, i32* @max_width, align 4, !tbaa !836
  br label %95, !dbg !930

; <label>:91:                                     ; preds = %87
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !931
  %93 = tail call i64 @xdectoumax(i8* nonnull %33, i64 0, i64 2500, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %92, i32 0) #11, !dbg !933
  %94 = trunc i64 %93 to i32, !dbg !933
  store i32 %94, i32* @max_width, align 4, !dbg !934, !tbaa !836
  br label %95, !dbg !935

; <label>:95:                                     ; preds = %89, %91
  %96 = phi i32 [ %90, %89 ], [ %94, %91 ]
  %97 = icmp eq i8* %30, null, !dbg !936
  br i1 %97, label %105, label %98, !dbg !938

; <label>:98:                                     ; preds = %95
  %99 = sext i32 %96 to i64, !dbg !939
  %100 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !941
  %101 = tail call i64 @xdectoumax(i8* nonnull %30, i64 0, i64 %99, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %100, i32 0) #11, !dbg !942
  %102 = trunc i64 %101 to i32, !dbg !942
  store i32 %102, i32* @goal_width, align 4, !dbg !943, !tbaa !836
  br i1 %88, label %103, label %108, !dbg !944

; <label>:103:                                    ; preds = %98
  %104 = add nsw i32 %102, 10, !dbg !945
  store i32 %104, i32* @max_width, align 4, !dbg !947, !tbaa !836
  br label %108, !dbg !948

; <label>:105:                                    ; preds = %95
  %106 = mul nsw i32 %96, 187, !dbg !949
  %107 = sdiv i32 %106, 200, !dbg !951
  store i32 %107, i32* @goal_width, align 4, !dbg !952, !tbaa !836
  br label %108

; <label>:108:                                    ; preds = %98, %103, %105
  %109 = load i32, i32* @optind, align 4, !dbg !953, !tbaa !836
  %110 = icmp eq i32 %109, %28, !dbg !954
  br i1 %110, label %114, label %111, !dbg !955

; <label>:111:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !752, metadata !679), !dbg !826
  %112 = icmp slt i32 %109, %28, !dbg !956
  br i1 %112, label %113, label %151, !dbg !958

; <label>:113:                                    ; preds = %111
  br label %116, !dbg !960

; <label>:114:                                    ; preds = %108
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !961, !tbaa !687
  tail call fastcc void @fmt(%struct._IO_FILE* %115), !dbg !962
  br label %151, !dbg !962

; <label>:116:                                    ; preds = %113, %145
  %117 = phi i32 [ %148, %145 ], [ %109, %113 ]
  %118 = phi i8 [ %146, %145 ], [ 1, %113 ]
  %119 = sext i32 %117 to i64, !dbg !960
  %120 = getelementptr inbounds i8*, i8** %27, i64 %119, !dbg !960
  %121 = load i8*, i8** %120, align 8, !dbg !960, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !755, metadata !679), !dbg !963
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !764, metadata !679), !dbg !964
  tail call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !765, metadata !679), !dbg !965
  %122 = load i8, i8* %121, align 1, !dbg !966, !tbaa !847
  %123 = icmp eq i8 %122, 45, !dbg !968
  br i1 %123, label %124, label %130, !dbg !971

; <label>:124:                                    ; preds = %116
  %125 = getelementptr inbounds i8, i8* %121, i64 1, !dbg !973
  %126 = load i8, i8* %125, align 1, !dbg !973, !tbaa !847
  %127 = icmp eq i8 %126, 0, !dbg !976
  br i1 %127, label %128, label %130, !dbg !978

; <label>:128:                                    ; preds = %124
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !980, !tbaa !687
  tail call fastcc void @fmt(%struct._IO_FILE* %129), !dbg !981
  br label %145, !dbg !981

; <label>:130:                                    ; preds = %116, %124
  %131 = tail call %struct._IO_FILE* @fopen(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !982
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %131, i64 0, metadata !768, metadata !679), !dbg !983
  %132 = icmp eq %struct._IO_FILE* %131, null, !dbg !984
  br i1 %132, label %140, label %133, !dbg !986

; <label>:133:                                    ; preds = %130
  tail call fastcc void @fmt(%struct._IO_FILE* nonnull %131), !dbg !987
  %134 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %131) #11, !dbg !989
  %135 = icmp eq i32 %134, -1, !dbg !991
  br i1 %135, label %136, label %145, !dbg !992

; <label>:136:                                    ; preds = %133
  %137 = tail call i32* @__errno_location() #1, !dbg !993
  %138 = load i32, i32* %137, align 4, !dbg !993, !tbaa !836
  %139 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %121) #11, !dbg !995
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %139) #11, !dbg !997
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !752, metadata !679), !dbg !826
  br label %145, !dbg !999

; <label>:140:                                    ; preds = %130
  %141 = tail call i32* @__errno_location() #1, !dbg !1000
  %142 = load i32, i32* %141, align 4, !dbg !1000, !tbaa !836
  %143 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !1002
  %144 = tail call i8* @quotearg_style(i32 4, i8* %121) #11, !dbg !1004
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %142, i8* %143, i8* %144) #11, !dbg !1005
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !752, metadata !679), !dbg !826
  br label %145

; <label>:145:                                    ; preds = %140, %136, %133, %128
  %146 = phi i8 [ %118, %128 ], [ 0, %136 ], [ %118, %133 ], [ 0, %140 ]
  tail call void @llvm.dbg.value(metadata i8 %146, i64 0, metadata !752, metadata !679), !dbg !826
  %147 = load i32, i32* @optind, align 4, !dbg !1007, !tbaa !836
  %148 = add nsw i32 %147, 1, !dbg !1007
  store i32 %148, i32* @optind, align 4, !dbg !1007, !tbaa !836
  tail call void @llvm.dbg.value(metadata i8 %146, i64 0, metadata !752, metadata !679), !dbg !826
  %149 = icmp slt i32 %148, %28, !dbg !956
  br i1 %149, label %116, label %150, !dbg !958, !llvm.loop !1009

; <label>:150:                                    ; preds = %145
  br label %151, !dbg !826

; <label>:151:                                    ; preds = %150, %111, %114
  %152 = phi i8 [ 1, %114 ], [ 1, %111 ], [ %146, %150 ]
  tail call void @llvm.dbg.value(metadata i8 %152, i64 0, metadata !752, metadata !679), !dbg !826
  %153 = and i8 %152, 1, !dbg !1012
  %154 = xor i8 %153, 1, !dbg !1012
  %155 = zext i8 %154 to i32, !dbg !1012
  ret i32 %155, !dbg !1013
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

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fmt(%struct._IO_FILE*) unnamed_addr #6 !dbg !1014 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1018, metadata !679), !dbg !1019
  tail call void @fadvise(%struct._IO_FILE* %0, i32 2) #11, !dbg !1020
  store i1 false, i1* @tabs, align 1
  store i32 0, i32* @other_indent, align 4, !dbg !1021, !tbaa !836
  %2 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !1022
  store i32 %2, i32* @next_char, align 4, !dbg !1023, !tbaa !836
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  br label %5, !dbg !1024

; <label>:5:                                      ; preds = %253, %1
  %6 = phi i32 [ %254, %253 ], [ %2, %1 ], !dbg !1025
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1030, metadata !679) #11, !dbg !1034
  store i32 0, i32* @last_line_length, align 4, !dbg !1035, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  br label %7, !dbg !1037

; <label>:7:                                      ; preds = %119, %5
  %8 = phi i32 [ %6, %5 ], [ %120, %119 ]
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  switch i32 %8, label %9 [
    i32 -1, label %18
    i32 10, label %18
  ], !dbg !1038

; <label>:9:                                      ; preds = %7
  %10 = load i32, i32* @next_prefix_indent, align 4, !dbg !1040, !tbaa !836
  %11 = load i32, i32* @prefix_lead_space, align 4, !dbg !1041, !tbaa !836
  %12 = icmp slt i32 %10, %11, !dbg !1042
  br i1 %12, label %18, label %13, !dbg !1043

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* @in_column, align 4, !dbg !1044, !tbaa !836
  %15 = load i32, i32* @prefix_full_length, align 4, !dbg !1045, !tbaa !836
  %16 = add nsw i32 %15, %10, !dbg !1046
  %17 = icmp slt i32 %14, %16, !dbg !1047
  br i1 %17, label %18, label %121, !dbg !1048

; <label>:18:                                     ; preds = %13, %9, %7, %7
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1050, metadata !679) #11, !dbg !1057
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1055, metadata !679) #11, !dbg !1060
  store i32 0, i32* @out_column, align 4, !dbg !1061, !tbaa !836
  %19 = load i32, i32* @in_column, align 4, !dbg !1062, !tbaa !836
  %20 = load i32, i32* @next_prefix_indent, align 4, !dbg !1064, !tbaa !836
  %21 = icmp sgt i32 %19, %20, !dbg !1065
  br i1 %21, label %23, label %22, !dbg !1066

; <label>:22:                                     ; preds = %18
  switch i32 %8, label %23 [
    i32 -1, label %79
    i32 10, label %79
  ], !dbg !1067

; <label>:23:                                     ; preds = %22, %18
  tail call fastcc void @put_space(i32 %20) #11, !dbg !1069
  %24 = load i32, i32* @out_column, align 4, !dbg !1071, !tbaa !836
  %25 = load i32, i32* @in_column, align 4, !dbg !1075, !tbaa !836
  %26 = icmp eq i32 %24, %25, !dbg !1076
  br i1 %26, label %58, label %27, !dbg !1077

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** @prefix, align 8, !dbg !1078, !tbaa !687
  br label %29, !dbg !1079

; <label>:29:                                     ; preds = %50, %27
  %30 = phi i32 [ %51, %50 ], [ %25, %27 ]
  %31 = phi i32 [ %53, %50 ], [ %24, %27 ]
  %32 = phi i8* [ %36, %50 ], [ %28, %27 ]
  %33 = load i8, i8* %32, align 1, !dbg !1079, !tbaa !847
  %34 = icmp eq i8 %33, 0, !dbg !1081
  br i1 %34, label %55, label %35, !dbg !1082

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1084
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !1056, metadata !679) #11, !dbg !1085
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1086, !tbaa !687
  %38 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %37, i64 0, i32 5, !dbg !1086
  %39 = load i8*, i8** %38, align 8, !dbg !1086, !tbaa !1094
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %37, i64 0, i32 6, !dbg !1086
  %41 = load i8*, i8** %40, align 8, !dbg !1086, !tbaa !1098
  %42 = icmp ult i8* %39, %41, !dbg !1086
  br i1 %42, label %48, label %43, !dbg !1086, !prof !1099

; <label>:43:                                     ; preds = %35
  %44 = zext i8 %33 to i32, !dbg !1079
  %45 = tail call i32 @__overflow(%struct._IO_FILE* %37, i32 %44) #11, !dbg !1100
  %46 = load i32, i32* @out_column, align 4, !tbaa !836
  %47 = load i32, i32* @in_column, align 4, !tbaa !836
  br label %50, !dbg !1100

; <label>:48:                                     ; preds = %35
  %49 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1102
  store i8* %49, i8** %38, align 8, !dbg !1102, !tbaa !1094
  store i8 %33, i8* %39, align 1, !dbg !1102, !tbaa !847
  br label %50, !dbg !1102

; <label>:50:                                     ; preds = %48, %43
  %51 = phi i32 [ %47, %43 ], [ %30, %48 ], !dbg !1075
  %52 = phi i32 [ %46, %43 ], [ %31, %48 ], !dbg !1104
  %53 = add nsw i32 %52, 1, !dbg !1104
  store i32 %53, i32* @out_column, align 4, !dbg !1104, !tbaa !836
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !1056, metadata !679) #11, !dbg !1085
  %54 = icmp eq i32 %53, %51, !dbg !1076
  br i1 %54, label %55, label %29, !dbg !1077, !llvm.loop !1106

; <label>:55:                                     ; preds = %29, %50
  %56 = phi i32 [ %51, %50 ], [ %31, %29 ]
  %57 = phi i32 [ %51, %50 ], [ %30, %29 ]
  br label %58, !dbg !1109

; <label>:58:                                     ; preds = %55, %23
  %59 = phi i32 [ %24, %23 ], [ %56, %55 ], !dbg !1111
  %60 = phi i32 [ %24, %23 ], [ %57, %55 ], !dbg !1112
  switch i32 %8, label %61 [
    i32 -1, label %63
    i32 10, label %79
  ], !dbg !1109

; <label>:61:                                     ; preds = %58
  %62 = sub nsw i32 %60, %59, !dbg !1113
  tail call fastcc void @put_space(i32 %62) #11, !dbg !1114
  br label %79, !dbg !1115

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* @next_prefix_indent, align 4, !dbg !1117, !tbaa !836
  %65 = load i32, i32* @prefix_length, align 4, !dbg !1119, !tbaa !836
  %66 = add nsw i32 %65, %64, !dbg !1120
  %67 = icmp slt i32 %60, %66, !dbg !1121
  br i1 %67, label %79, label %68, !dbg !1122

; <label>:68:                                     ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1092, metadata !679) #11, !dbg !1124
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1126, !tbaa !687
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %69, i64 0, i32 5, !dbg !1126
  %71 = load i8*, i8** %70, align 8, !dbg !1126, !tbaa !1094
  %72 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %69, i64 0, i32 6, !dbg !1126
  %73 = load i8*, i8** %72, align 8, !dbg !1126, !tbaa !1098
  %74 = icmp ult i8* %71, %73, !dbg !1126
  br i1 %74, label %77, label %75, !dbg !1126, !prof !1099

; <label>:75:                                     ; preds = %68
  %76 = tail call i32 @__overflow(%struct._IO_FILE* %69, i32 10) #11, !dbg !1127
  br label %79, !dbg !1127

; <label>:77:                                     ; preds = %68
  %78 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1128
  store i8* %78, i8** %70, align 8, !dbg !1128, !tbaa !1094
  store i8 10, i8* %71, align 1, !dbg !1128, !tbaa !847
  br label %79, !dbg !1128

; <label>:79:                                     ; preds = %22, %22, %58, %61, %63, %75, %77
  %80 = phi i32 [ -1, %63 ], [ %8, %61 ], [ %8, %22 ], [ %8, %22 ], [ 10, %58 ], [ -1, %75 ], [ -1, %77 ]
  br label %81, !dbg !1060

; <label>:81:                                     ; preds = %102, %79
  %82 = phi i32 [ %80, %79 ], [ %103, %102 ]
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !1055, metadata !679) #11, !dbg !1060
  switch i32 %82, label %83 [
    i32 -1, label %261
    i32 10, label %108
  ], !dbg !1129

; <label>:83:                                     ; preds = %81
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !1092, metadata !679) #11, !dbg !1131
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1134, !tbaa !687
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 5, !dbg !1134
  %86 = load i8*, i8** %85, align 8, !dbg !1134, !tbaa !1094
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 6, !dbg !1134
  %88 = load i8*, i8** %87, align 8, !dbg !1134, !tbaa !1098
  %89 = icmp ult i8* %86, %88, !dbg !1134
  br i1 %89, label %93, label %90, !dbg !1134, !prof !1099

; <label>:90:                                     ; preds = %83
  %91 = and i32 %82, 255, !dbg !1135
  %92 = tail call i32 @__overflow(%struct._IO_FILE* %84, i32 %91) #11, !dbg !1135
  br label %96, !dbg !1135

; <label>:93:                                     ; preds = %83
  %94 = trunc i32 %82 to i8, !dbg !1136
  %95 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1136
  store i8* %95, i8** %85, align 8, !dbg !1136, !tbaa !1094
  store i8 %94, i8* %86, align 1, !dbg !1136, !tbaa !847
  br label %96, !dbg !1136

; <label>:96:                                     ; preds = %93, %90
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1137, metadata !679) #11, !dbg !1142
  %97 = load i8*, i8** %3, align 8, !dbg !1144, !tbaa !1145
  %98 = load i8*, i8** %4, align 8, !dbg !1144, !tbaa !1146
  %99 = icmp ult i8* %97, %98, !dbg !1144
  br i1 %99, label %104, label %100, !dbg !1144, !prof !1099

; <label>:100:                                    ; preds = %96
  %101 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #11, !dbg !1147
  br label %102, !dbg !1147

; <label>:102:                                    ; preds = %100, %104
  %103 = phi i32 [ %101, %100 ], [ %107, %104 ]
  br label %81, !dbg !1060, !llvm.loop !1149

; <label>:104:                                    ; preds = %96
  %105 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !1152
  store i8* %105, i8** %3, align 8, !dbg !1152, !tbaa !1145
  %106 = load i8, i8* %97, align 1, !dbg !1152, !tbaa !847
  %107 = zext i8 %106 to i32, !dbg !1152
  br label %102, !dbg !1152

; <label>:108:                                    ; preds = %81
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1092, metadata !679) #11, !dbg !1154
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1156, !tbaa !687
  %110 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %109, i64 0, i32 5, !dbg !1156
  %111 = load i8*, i8** %110, align 8, !dbg !1156, !tbaa !1094
  %112 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %109, i64 0, i32 6, !dbg !1156
  %113 = load i8*, i8** %112, align 8, !dbg !1156, !tbaa !1098
  %114 = icmp ult i8* %111, %113, !dbg !1156
  br i1 %114, label %117, label %115, !dbg !1156, !prof !1099

; <label>:115:                                    ; preds = %108
  %116 = tail call i32 @__overflow(%struct._IO_FILE* %109, i32 10) #11, !dbg !1157
  br label %119, !dbg !1157

; <label>:117:                                    ; preds = %108
  %118 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !1158
  store i8* %118, i8** %110, align 8, !dbg !1158, !tbaa !1094
  store i8 10, i8* %111, align 1, !dbg !1158, !tbaa !847
  br label %119, !dbg !1158

; <label>:119:                                    ; preds = %117, %115
  %120 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0) #11, !dbg !1159
  tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  br label %7, !dbg !1160, !llvm.loop !1162

; <label>:121:                                    ; preds = %13
  store i32 %10, i32* @prefix_indent, align 4, !dbg !1165, !tbaa !836
  store i32 %14, i32* @first_indent, align 4, !dbg !1166, !tbaa !836
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1167, !tbaa !687
  store %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), %struct.Word** @word_limit, align 8, !dbg !1168, !tbaa !687
  %122 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %8) #11, !dbg !1169
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1170, metadata !679) #11, !dbg !1175
  %123 = load i32, i32* @next_prefix_indent, align 4, !dbg !1177, !tbaa !836
  %124 = load i32, i32* @prefix_indent, align 4, !dbg !1178, !tbaa !836
  %125 = icmp eq i32 %123, %124, !dbg !1179
  br i1 %125, label %126, label %135, !dbg !1180

; <label>:126:                                    ; preds = %121
  %127 = load i32, i32* @in_column, align 4, !dbg !1181, !tbaa !836
  %128 = load i32, i32* @prefix_full_length, align 4, !dbg !1183, !tbaa !836
  %129 = add nsw i32 %128, %123, !dbg !1184
  %130 = icmp sge i32 %127, %129, !dbg !1185
  %131 = icmp ne i32 %122, 10, !dbg !1186
  %132 = and i1 %131, %130, !dbg !1187
  %133 = icmp ne i32 %122, -1, !dbg !1188
  %134 = and i1 %133, %132, !dbg !1187
  br label %135, !dbg !1187

; <label>:135:                                    ; preds = %126, %121
  %136 = phi i1 [ %134, %126 ], [ false, %121 ]
  tail call void @llvm.dbg.value(metadata i1 %136, i64 0, metadata !1190, metadata !1195) #11, !dbg !1196
  %137 = load i1, i1* @split, align 1
  br i1 %137, label %138, label %140, !dbg !1198

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* @first_indent, align 4, !dbg !1199, !tbaa !836
  store i32 %139, i32* @other_indent, align 4, !tbaa !836
  br label %239, !dbg !1201

; <label>:140:                                    ; preds = %135
  %141 = load i1, i1* @crown, align 1
  br i1 %141, label %163, label %142, !dbg !1202

; <label>:142:                                    ; preds = %140
  %143 = load i1, i1* @tagged, align 1
  br i1 %143, label %144, label %158, !dbg !1203

; <label>:144:                                    ; preds = %142
  br i1 %136, label %147, label %145, !dbg !1205

; <label>:145:                                    ; preds = %144
  %146 = load i32, i32* @first_indent, align 4, !tbaa !836
  br label %151, !dbg !1205

; <label>:147:                                    ; preds = %144
  %148 = load i32, i32* @in_column, align 4, !dbg !1209, !tbaa !836
  %149 = load i32, i32* @first_indent, align 4, !dbg !1211, !tbaa !836
  %150 = icmp eq i32 %148, %149, !dbg !1212
  br i1 %150, label %151, label %160, !dbg !1213

; <label>:151:                                    ; preds = %147, %145
  %152 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %153 = load i32, i32* @other_indent, align 4, !dbg !1215, !tbaa !836
  %154 = icmp eq i32 %153, %152, !dbg !1217
  br i1 %154, label %155, label %189, !dbg !1218

; <label>:155:                                    ; preds = %151
  %156 = icmp eq i32 %152, 0, !dbg !1219
  %157 = select i1 %156, i32 3, i32 0, !dbg !1220
  br label %160, !dbg !1221

; <label>:158:                                    ; preds = %142
  %159 = load i32, i32* @first_indent, align 4, !dbg !1222, !tbaa !836
  br label %160

; <label>:160:                                    ; preds = %147, %155, %158
  %161 = phi i32 [ %152, %155 ], [ %159, %158 ], [ %149, %147 ]
  %162 = phi i32 [ %157, %155 ], [ %159, %158 ], [ %148, %147 ]
  store i32 %162, i32* @other_indent, align 4, !tbaa !836
  br label %189, !dbg !1224

; <label>:163:                                    ; preds = %140
  %164 = load i32, i32* @in_column, align 4
  %165 = load i32, i32* @first_indent, align 4
  %166 = select i1 %136, i32 %164, i32 %165
  store i32 %166, i32* @other_indent, align 4, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1170, metadata !679) #11, !dbg !1226
  br i1 %125, label %167, label %239, !dbg !1231

; <label>:167:                                    ; preds = %163
  %168 = load i32, i32* @in_column, align 4, !dbg !1232, !tbaa !836
  %169 = load i32, i32* @prefix_full_length, align 4, !dbg !1233, !tbaa !836
  %170 = add nsw i32 %169, %123, !dbg !1234
  %171 = icmp slt i32 %168, %170, !dbg !1235
  br i1 %171, label %239, label %172, !dbg !1236

; <label>:172:                                    ; preds = %167
  switch i32 %122, label %173 [
    i32 -1, label %239
    i32 10, label %239
  ], !dbg !1236

; <label>:173:                                    ; preds = %172
  br label %174, !dbg !1036

; <label>:174:                                    ; preds = %173, %186
  %175 = phi i32 [ %176, %186 ], [ %122, %173 ]
  tail call void @llvm.dbg.value(metadata i32 %175, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  %176 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %175) #11, !dbg !1237
  tail call void @llvm.dbg.value(metadata i32 %176, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %176, i64 0, metadata !1170, metadata !679) #11, !dbg !1240
  %177 = load i32, i32* @next_prefix_indent, align 4, !dbg !1242, !tbaa !836
  %178 = load i32, i32* @prefix_indent, align 4, !dbg !1243, !tbaa !836
  %179 = icmp eq i32 %177, %178, !dbg !1244
  br i1 %179, label %180, label %235, !dbg !1245

; <label>:180:                                    ; preds = %174
  %181 = load i32, i32* @in_column, align 4, !dbg !1246, !tbaa !836
  %182 = load i32, i32* @prefix_full_length, align 4, !dbg !1247, !tbaa !836
  %183 = add nsw i32 %182, %177, !dbg !1248
  %184 = icmp slt i32 %181, %183, !dbg !1249
  br i1 %184, label %235, label %185, !dbg !1250

; <label>:185:                                    ; preds = %180
  switch i32 %176, label %186 [
    i32 -1, label %235
    i32 10, label %235
  ], !dbg !1250

; <label>:186:                                    ; preds = %185
  %187 = load i32, i32* @other_indent, align 4, !dbg !1251, !tbaa !836
  %188 = icmp eq i32 %181, %187, !dbg !1253
  br i1 %188, label %174, label %235, !dbg !1254, !llvm.loop !1256

; <label>:189:                                    ; preds = %151, %160
  %190 = phi i32 [ %161, %160 ], [ %152, %151 ]
  %191 = load i1, i1* @tagged, align 1
  br i1 %191, label %194, label %192, !dbg !1259

; <label>:192:                                    ; preds = %189
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1170, metadata !679) #11, !dbg !1260
  br i1 %125, label %193, label %239, !dbg !1265

; <label>:193:                                    ; preds = %192
  br label %219, !dbg !1266

; <label>:194:                                    ; preds = %189
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1170, metadata !679) #11, !dbg !1267
  br i1 %125, label %195, label %239, !dbg !1271

; <label>:195:                                    ; preds = %194
  %196 = load i32, i32* @in_column, align 4, !dbg !1272, !tbaa !836
  %197 = load i32, i32* @prefix_full_length, align 4, !dbg !1273, !tbaa !836
  %198 = add nsw i32 %197, %123, !dbg !1274
  %199 = icmp slt i32 %196, %198, !dbg !1275
  br i1 %199, label %239, label %200, !dbg !1276

; <label>:200:                                    ; preds = %195
  switch i32 %122, label %201 [
    i32 -1, label %239
    i32 10, label %239
  ], !dbg !1276

; <label>:201:                                    ; preds = %200
  %202 = icmp eq i32 %196, %190, !dbg !1277
  br i1 %202, label %239, label %203, !dbg !1279, !llvm.loop !1281

; <label>:203:                                    ; preds = %201
  br label %204, !dbg !1036

; <label>:204:                                    ; preds = %203, %216
  %205 = phi i32 [ %206, %216 ], [ %122, %203 ]
  tail call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  %206 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %205) #11, !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 %206, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %206, i64 0, metadata !1170, metadata !679) #11, !dbg !1287
  %207 = load i32, i32* @next_prefix_indent, align 4, !dbg !1289, !tbaa !836
  %208 = load i32, i32* @prefix_indent, align 4, !dbg !1290, !tbaa !836
  %209 = icmp eq i32 %207, %208, !dbg !1291
  br i1 %209, label %210, label %236, !dbg !1292

; <label>:210:                                    ; preds = %204
  %211 = load i32, i32* @in_column, align 4, !dbg !1293, !tbaa !836
  %212 = load i32, i32* @prefix_full_length, align 4, !dbg !1294, !tbaa !836
  %213 = add nsw i32 %212, %207, !dbg !1295
  %214 = icmp slt i32 %211, %213, !dbg !1296
  br i1 %214, label %236, label %215, !dbg !1297

; <label>:215:                                    ; preds = %210
  switch i32 %206, label %216 [
    i32 -1, label %236
    i32 10, label %236
  ], !dbg !1297

; <label>:216:                                    ; preds = %215
  %217 = load i32, i32* @other_indent, align 4, !dbg !1298, !tbaa !836
  %218 = icmp eq i32 %211, %217, !dbg !1300
  br i1 %218, label %204, label %236, !dbg !1301, !llvm.loop !1281

; <label>:219:                                    ; preds = %193, %230
  %220 = phi i32 [ %232, %230 ], [ %123, %193 ]
  %221 = phi i32 [ %231, %230 ], [ %122, %193 ]
  %222 = load i32, i32* @in_column, align 4, !dbg !1266, !tbaa !836
  %223 = load i32, i32* @prefix_full_length, align 4, !dbg !1303, !tbaa !836
  %224 = add nsw i32 %223, %220, !dbg !1304
  %225 = icmp slt i32 %222, %224, !dbg !1305
  br i1 %225, label %237, label %226, !dbg !1306

; <label>:226:                                    ; preds = %219
  switch i32 %221, label %227 [
    i32 -1, label %237
    i32 10, label %237
  ], !dbg !1306

; <label>:227:                                    ; preds = %226
  %228 = load i32, i32* @other_indent, align 4, !dbg !1307, !tbaa !836
  %229 = icmp eq i32 %222, %228, !dbg !1309
  br i1 %229, label %230, label %237, !dbg !1310

; <label>:230:                                    ; preds = %227
  %231 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %221) #11, !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 %231, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %231, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  tail call void @llvm.dbg.value(metadata i32 %231, i64 0, metadata !1170, metadata !679) #11, !dbg !1260
  %232 = load i32, i32* @next_prefix_indent, align 4, !dbg !1313, !tbaa !836
  %233 = load i32, i32* @prefix_indent, align 4, !dbg !1314, !tbaa !836
  %234 = icmp eq i32 %232, %233, !dbg !1315
  br i1 %234, label %219, label %237, !dbg !1265, !llvm.loop !1316

; <label>:235:                                    ; preds = %174, %180, %185, %185, %186
  br label %239, !dbg !1036

; <label>:236:                                    ; preds = %204, %210, %215, %215, %216
  br label %239, !dbg !1036

; <label>:237:                                    ; preds = %219, %226, %226, %227, %230
  %238 = phi i32 [ %221, %219 ], [ %221, %226 ], [ %221, %226 ], [ %231, %230 ], [ %221, %227 ]
  br label %239, !dbg !1036

; <label>:239:                                    ; preds = %237, %236, %235, %201, %200, %200, %195, %194, %192, %172, %172, %167, %163, %138
  %240 = phi i32 [ %122, %172 ], [ %122, %201 ], [ %122, %200 ], [ %122, %163 ], [ %122, %194 ], [ %122, %167 ], [ %122, %172 ], [ %122, %195 ], [ %122, %200 ], [ %122, %192 ], [ %122, %138 ], [ %176, %235 ], [ %206, %236 ], [ %238, %237 ]
  tail call void @llvm.dbg.value(metadata i32 %240, i64 0, metadata !1031, metadata !679) #11, !dbg !1036
  %241 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1319, !tbaa !687
  %242 = icmp ugt %struct.Word* %241, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1319
  br i1 %242, label %244, label %243, !dbg !1322

; <label>:243:                                    ; preds = %239
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i32 606, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.get_paragraph, i64 0, i64 0)) #14, !dbg !1323
  unreachable, !dbg !1323

; <label>:244:                                    ; preds = %239
  %245 = getelementptr inbounds %struct.Word, %struct.Word* %241, i64 -1, i32 3, !dbg !1325
  %246 = load i8, i8* %245, align 8, !dbg !1326
  %247 = or i8 %246, 10, !dbg !1327
  store i8 %247, i8* %245, align 8, !dbg !1327
  store i32 %240, i32* @next_char, align 4, !dbg !1328, !tbaa !836
  tail call fastcc void @fmt_paragraph(), !dbg !1331
  tail call void @llvm.dbg.value(metadata %struct.Word* %241, i64 0, metadata !1333, metadata !679) #11, !dbg !1339
  %248 = load i32, i32* @first_indent, align 4, !dbg !1341, !tbaa !836
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %248) #11, !dbg !1342
  %249 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !tbaa !1343
  tail call void @llvm.dbg.value(metadata %struct.Word* %249, i64 0, metadata !1338, metadata !679) #11, !dbg !1345
  %250 = icmp eq %struct.Word* %249, %241, !dbg !1346
  br i1 %250, label %253, label %251, !dbg !1350

; <label>:251:                                    ; preds = %244
  br label %255, !dbg !1352

; <label>:252:                                    ; preds = %255
  br label %253

; <label>:253:                                    ; preds = %252, %244
  %254 = load i32, i32* @next_char, align 4, !tbaa !836
  br label %5, !dbg !1034, !llvm.loop !1353

; <label>:255:                                    ; preds = %251, %255
  %256 = phi %struct.Word* [ %259, %255 ], [ %249, %251 ]
  %257 = load i32, i32* @other_indent, align 4, !dbg !1352, !tbaa !836
  tail call fastcc void @put_line(%struct.Word* %256, i32 %257) #11, !dbg !1355
  %258 = getelementptr inbounds %struct.Word, %struct.Word* %256, i64 0, i32 6, !dbg !1356
  %259 = load %struct.Word*, %struct.Word** %258, align 8, !tbaa !1343
  tail call void @llvm.dbg.value(metadata %struct.Word* %259, i64 0, metadata !1338, metadata !679) #11, !dbg !1345
  %260 = icmp eq %struct.Word* %259, %241, !dbg !1346
  br i1 %260, label %252, label %255, !dbg !1350, !llvm.loop !1353

; <label>:261:                                    ; preds = %81
  store i32 -1, i32* @next_char, align 4, !dbg !1328, !tbaa !836
  ret void, !dbg !1358
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_prefix(%struct._IO_FILE*) unnamed_addr #6 !dbg !1359 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1361, metadata !679), !dbg !1370
  store i32 0, i32* @in_column, align 4, !dbg !1371, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1137, metadata !679) #11, !dbg !1372
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1374
  %3 = load i8*, i8** %2, align 8, !dbg !1374, !tbaa !1145
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1374
  %5 = load i8*, i8** %4, align 8, !dbg !1374, !tbaa !1146
  %6 = icmp ult i8* %3, %5, !dbg !1374
  br i1 %6, label %9, label %7, !dbg !1374, !prof !1099

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #11, !dbg !1375
  br label %13, !dbg !1375

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1376
  store i8* %10, i8** %2, align 8, !dbg !1376, !tbaa !1145
  %11 = load i8, i8* %3, align 1, !dbg !1376, !tbaa !847
  %12 = zext i8 %11 to i32, !dbg !1376
  br label %13, !dbg !1376

; <label>:13:                                     ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ %8, %7 ]
  br label %15, !dbg !1377

; <label>:15:                                     ; preds = %32, %13
  %16 = phi i32 [ %14, %13 ], [ %33, %32 ]
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1381, metadata !679) #11, !dbg !1377
  switch i32 %16, label %38 [
    i32 32, label %17
    i32 9, label %20
  ], !dbg !1384

; <label>:17:                                     ; preds = %15
  %18 = load i32, i32* @in_column, align 4, !dbg !1386, !tbaa !836
  %19 = add nsw i32 %18, 1, !dbg !1386
  br label %25, !dbg !1388

; <label>:20:                                     ; preds = %15
  store i1 true, i1* @tabs, align 1
  %21 = load i32, i32* @in_column, align 4, !dbg !1389, !tbaa !836
  %22 = sdiv i32 %21, 8, !dbg !1392
  %23 = shl nsw i32 %22, 3, !dbg !1393
  %24 = add i32 %23, 8, !dbg !1393
  br label %25

; <label>:25:                                     ; preds = %20, %17
  %26 = phi i32 [ %24, %20 ], [ %19, %17 ]
  store i32 %26, i32* @in_column, align 4, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1137, metadata !679) #11, !dbg !1394
  %27 = load i8*, i8** %2, align 8, !dbg !1396, !tbaa !1145
  %28 = load i8*, i8** %4, align 8, !dbg !1396, !tbaa !1146
  %29 = icmp ult i8* %27, %28, !dbg !1396
  br i1 %29, label %34, label %30, !dbg !1396, !prof !1099

; <label>:30:                                     ; preds = %25
  %31 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #11, !dbg !1397
  br label %32, !dbg !1397

; <label>:32:                                     ; preds = %30, %34
  %33 = phi i32 [ %31, %30 ], [ %37, %34 ]
  br label %15, !dbg !1377, !llvm.loop !1398

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1401
  store i8* %35, i8** %2, align 8, !dbg !1401, !tbaa !1145
  %36 = load i8, i8* %27, align 1, !dbg !1401, !tbaa !847
  %37 = zext i8 %36 to i32, !dbg !1401
  br label %32, !dbg !1401

; <label>:38:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1362, metadata !679), !dbg !1402
  %39 = load i32, i32* @prefix_length, align 4, !dbg !1403, !tbaa !836
  %40 = icmp eq i32 %39, 0, !dbg !1404
  br i1 %40, label %41, label %46, !dbg !1405

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* @prefix_lead_space, align 4, !dbg !1406
  %43 = load i32, i32* @in_column, align 4, !dbg !1407
  %44 = icmp slt i32 %42, %43, !dbg !1408
  %45 = select i1 %44, i32 %42, i32 %43
  store i32 %45, i32* @next_prefix_indent, align 4, !dbg !1409, !tbaa !836
  br label %103, !dbg !1411

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* @in_column, align 4, !dbg !1412, !tbaa !836
  store i32 %47, i32* @next_prefix_indent, align 4, !dbg !1413, !tbaa !836
  %48 = load i8*, i8** @prefix, align 8, !dbg !1414, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1363, metadata !679), !dbg !1415
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !1363, metadata !679), !dbg !1415
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1362, metadata !679), !dbg !1402
  %49 = load i8, i8* %48, align 1, !dbg !1416, !tbaa !847
  %50 = icmp eq i8 %49, 0, !dbg !1418
  br i1 %50, label %76, label %51, !dbg !1419

; <label>:51:                                     ; preds = %46
  br label %52, !dbg !1421

; <label>:52:                                     ; preds = %51, %70
  %53 = phi i8 [ %73, %70 ], [ %49, %51 ]
  %54 = phi i8* [ %72, %70 ], [ %48, %51 ]
  %55 = phi i32 [ %71, %70 ], [ %16, %51 ]
  tail call void @llvm.dbg.value(metadata i8 %53, i64 0, metadata !1366, metadata !679), !dbg !1421
  %56 = zext i8 %53 to i32, !dbg !1422
  %57 = icmp eq i32 %55, %56, !dbg !1424
  br i1 %57, label %58, label %102, !dbg !1425

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* @in_column, align 4, !dbg !1426, !tbaa !836
  %60 = add nsw i32 %59, 1, !dbg !1426
  store i32 %60, i32* @in_column, align 4, !dbg !1426, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1137, metadata !679) #11, !dbg !1427
  %61 = load i8*, i8** %2, align 8, !dbg !1429, !tbaa !1145
  %62 = load i8*, i8** %4, align 8, !dbg !1429, !tbaa !1146
  %63 = icmp ult i8* %61, %62, !dbg !1429
  br i1 %63, label %66, label %64, !dbg !1429, !prof !1099

; <label>:64:                                     ; preds = %58
  %65 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #11, !dbg !1430
  br label %70, !dbg !1430

; <label>:66:                                     ; preds = %58
  %67 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1431
  store i8* %67, i8** %2, align 8, !dbg !1431, !tbaa !1145
  %68 = load i8, i8* %61, align 1, !dbg !1431, !tbaa !847
  %69 = zext i8 %68 to i32, !dbg !1431
  br label %70, !dbg !1431

; <label>:70:                                     ; preds = %64, %66
  %71 = phi i32 [ %69, %66 ], [ %65, %64 ]
  %72 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !1432
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !1363, metadata !679), !dbg !1415
  tail call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !1363, metadata !679), !dbg !1415
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !1362, metadata !679), !dbg !1402
  %73 = load i8, i8* %72, align 1, !dbg !1416, !tbaa !847
  %74 = icmp eq i8 %73, 0, !dbg !1418
  br i1 %74, label %75, label %52, !dbg !1419, !llvm.loop !1434

; <label>:75:                                     ; preds = %70
  br label %76, !dbg !1437

; <label>:76:                                     ; preds = %75, %46
  %77 = phi i32 [ %16, %46 ], [ %71, %75 ]
  br label %78, !dbg !1437

; <label>:78:                                     ; preds = %95, %76
  %79 = phi i32 [ %77, %76 ], [ %96, %95 ]
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !1381, metadata !679) #11, !dbg !1437
  switch i32 %79, label %101 [
    i32 32, label %80
    i32 9, label %83
  ], !dbg !1439

; <label>:80:                                     ; preds = %78
  %81 = load i32, i32* @in_column, align 4, !dbg !1440, !tbaa !836
  %82 = add nsw i32 %81, 1, !dbg !1440
  br label %88, !dbg !1441

; <label>:83:                                     ; preds = %78
  store i1 true, i1* @tabs, align 1
  %84 = load i32, i32* @in_column, align 4, !dbg !1442, !tbaa !836
  %85 = sdiv i32 %84, 8, !dbg !1443
  %86 = shl nsw i32 %85, 3, !dbg !1444
  %87 = add i32 %86, 8, !dbg !1444
  br label %88

; <label>:88:                                     ; preds = %83, %80
  %89 = phi i32 [ %87, %83 ], [ %82, %80 ]
  store i32 %89, i32* @in_column, align 4, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1137, metadata !679) #11, !dbg !1445
  %90 = load i8*, i8** %2, align 8, !dbg !1447, !tbaa !1145
  %91 = load i8*, i8** %4, align 8, !dbg !1447, !tbaa !1146
  %92 = icmp ult i8* %90, %91, !dbg !1447
  br i1 %92, label %97, label %93, !dbg !1447, !prof !1099

; <label>:93:                                     ; preds = %88
  %94 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #11, !dbg !1448
  br label %95, !dbg !1448

; <label>:95:                                     ; preds = %93, %97
  %96 = phi i32 [ %94, %93 ], [ %100, %97 ]
  br label %78, !dbg !1437, !llvm.loop !1398

; <label>:97:                                     ; preds = %88
  %98 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1449
  store i8* %98, i8** %2, align 8, !dbg !1449, !tbaa !1145
  %99 = load i8, i8* %90, align 1, !dbg !1449, !tbaa !847
  %100 = zext i8 %99 to i32, !dbg !1449
  br label %95, !dbg !1449

; <label>:101:                                    ; preds = %78
  br label %103, !dbg !1450

; <label>:102:                                    ; preds = %52
  br label %103, !dbg !1450

; <label>:103:                                    ; preds = %102, %101, %41
  %104 = phi i32 [ %16, %41 ], [ %79, %101 ], [ %55, %102 ]
  ret i32 %104, !dbg !1450
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @put_space(i32) unnamed_addr #6 !dbg !1451 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1453, metadata !679), !dbg !1456
  %2 = load i32, i32* @out_column, align 4, !dbg !1457, !tbaa !836
  %3 = add nsw i32 %2, %0, !dbg !1458
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1454, metadata !679), !dbg !1459
  %4 = load i1, i1* @tabs, align 1
  br i1 %4, label %5, label %33, !dbg !1460

; <label>:5:                                      ; preds = %1
  %6 = sdiv i32 %3, 8, !dbg !1461
  %7 = shl nsw i32 %6, 3, !dbg !1464
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1455, metadata !679), !dbg !1465
  %8 = add nsw i32 %2, 1, !dbg !1466
  %9 = icmp slt i32 %8, %7, !dbg !1468
  %10 = icmp slt i32 %2, %7, !dbg !1469
  %11 = and i1 %9, %10, !dbg !1471
  br i1 %11, label %12, label %33, !dbg !1471

; <label>:12:                                     ; preds = %5
  br label %13, !dbg !1472

; <label>:13:                                     ; preds = %12, %26
  %14 = phi i32 [ %30, %26 ], [ %2, %12 ]
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !1092, metadata !679) #11, !dbg !1472
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1475, !tbaa !687
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %15, i64 0, i32 5, !dbg !1475
  %17 = load i8*, i8** %16, align 8, !dbg !1475, !tbaa !1094
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %15, i64 0, i32 6, !dbg !1475
  %19 = load i8*, i8** %18, align 8, !dbg !1475, !tbaa !1098
  %20 = icmp ult i8* %17, %19, !dbg !1475
  br i1 %20, label %24, label %21, !dbg !1475, !prof !1099

; <label>:21:                                     ; preds = %13
  %22 = tail call i32 @__overflow(%struct._IO_FILE* %15, i32 9) #11, !dbg !1476
  %23 = load i32, i32* @out_column, align 4, !tbaa !836
  br label %26, !dbg !1476

; <label>:24:                                     ; preds = %13
  %25 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1477
  store i8* %25, i8** %16, align 8, !dbg !1477, !tbaa !1094
  store i8 9, i8* %17, align 1, !dbg !1477, !tbaa !847
  br label %26, !dbg !1477

; <label>:26:                                     ; preds = %21, %24
  %27 = phi i32 [ %23, %21 ], [ %14, %24 ], !dbg !1478
  %28 = sdiv i32 %27, 8, !dbg !1479
  %29 = shl nsw i32 %28, 3, !dbg !1480
  %30 = add i32 %29, 8, !dbg !1480
  store i32 %30, i32* @out_column, align 4, !dbg !1481, !tbaa !836
  %31 = icmp slt i32 %30, %7, !dbg !1469
  br i1 %31, label %13, label %32, !dbg !1482

; <label>:32:                                     ; preds = %26
  br label %33, !dbg !1483

; <label>:33:                                     ; preds = %32, %5, %1
  %34 = phi i32 [ %2, %5 ], [ %2, %1 ], [ %30, %32 ], !dbg !1485
  %35 = icmp slt i32 %34, %3, !dbg !1483
  br i1 %35, label %36, label %55, !dbg !1486

; <label>:36:                                     ; preds = %33
  br label %37, !dbg !1487

; <label>:37:                                     ; preds = %36, %50
  %38 = phi i32 [ %52, %50 ], [ %34, %36 ]
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !1092, metadata !679) #11, !dbg !1487
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1490, !tbaa !687
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !1490
  %41 = load i8*, i8** %40, align 8, !dbg !1490, !tbaa !1094
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !1490
  %43 = load i8*, i8** %42, align 8, !dbg !1490, !tbaa !1098
  %44 = icmp ult i8* %41, %43, !dbg !1490
  br i1 %44, label %48, label %45, !dbg !1490, !prof !1099

; <label>:45:                                     ; preds = %37
  %46 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 32) #11, !dbg !1491
  %47 = load i32, i32* @out_column, align 4, !tbaa !836
  br label %50, !dbg !1491

; <label>:48:                                     ; preds = %37
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1492
  store i8* %49, i8** %40, align 8, !dbg !1492, !tbaa !1094
  store i8 32, i8* %41, align 1, !dbg !1492, !tbaa !847
  br label %50, !dbg !1492

; <label>:50:                                     ; preds = %45, %48
  %51 = phi i32 [ %47, %45 ], [ %38, %48 ], !dbg !1493
  %52 = add nsw i32 %51, 1, !dbg !1493
  store i32 %52, i32* @out_column, align 4, !dbg !1493, !tbaa !836
  %53 = icmp slt i32 %52, %3, !dbg !1483
  br i1 %53, label %37, label %54, !dbg !1486, !llvm.loop !1494

; <label>:54:                                     ; preds = %50
  br label %55, !dbg !1497

; <label>:55:                                     ; preds = %54, %33
  ret void, !dbg !1497
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_line(%struct._IO_FILE*, i32) unnamed_addr #6 !dbg !1498 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1500, metadata !679), !dbg !1505
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1501, metadata !679), !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), i64 0, metadata !1503, metadata !679), !dbg !1507
  tail call void @llvm.dbg.value(metadata %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), i64 0, metadata !1504, metadata !679), !dbg !1508
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i64*, i64** bitcast (%struct.Word** @word_limit to i64**), align 8, !tbaa !687
  br label %6, !dbg !1509, !llvm.loop !1510

; <label>:6:                                      ; preds = %206, %2
  %7 = phi i64* [ %5, %2 ], [ %209, %206 ], !dbg !1512
  %8 = phi i32 [ %1, %2 ], [ %129, %206 ]
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1501, metadata !679), !dbg !1506
  %9 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1514, !tbaa !687
  store i64 %9, i64* %7, align 8, !dbg !1515, !tbaa !1516
  br label %10, !dbg !1517, !llvm.loop !1518

; <label>:10:                                     ; preds = %56, %6
  %11 = phi i32 [ %8, %6 ], [ %57, %56 ]
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1501, metadata !679), !dbg !1506
  %12 = load i8*, i8** @wptr, align 8, !dbg !1520, !tbaa !687
  %13 = icmp eq i8* %12, getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), !dbg !1523
  br i1 %13, label %14, label %40, !dbg !1524

; <label>:14:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1190, metadata !1195), !dbg !1525
  %15 = load i1, i1* @split, align 1
  br i1 %15, label %16, label %18, !dbg !1528

; <label>:16:                                     ; preds = %14
  %17 = load i32, i32* @first_indent, align 4, !dbg !1529, !tbaa !836
  br label %36, !dbg !1530

; <label>:18:                                     ; preds = %14
  %19 = load i1, i1* @crown, align 1
  br i1 %19, label %20, label %22, !dbg !1531

; <label>:20:                                     ; preds = %18
  %21 = load i32, i32* @in_column, align 4
  br label %36, !dbg !1532

; <label>:22:                                     ; preds = %18
  %23 = load i1, i1* @tagged, align 1
  br i1 %23, label %24, label %34, !dbg !1534

; <label>:24:                                     ; preds = %22
  %25 = load i32, i32* @in_column, align 4, !dbg !1535, !tbaa !836
  %26 = load i32, i32* @first_indent, align 4, !dbg !1536, !tbaa !836
  %27 = icmp eq i32 %25, %26, !dbg !1537
  br i1 %27, label %28, label %36, !dbg !1538

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* @other_indent, align 4, !dbg !1539, !tbaa !836
  %30 = icmp eq i32 %29, %25, !dbg !1540
  br i1 %30, label %31, label %38, !dbg !1541

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i32 %25, 0, !dbg !1542
  %33 = select i1 %32, i32 3, i32 0, !dbg !1543
  br label %36, !dbg !1544

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* @first_indent, align 4, !dbg !1545, !tbaa !836
  br label %36

; <label>:36:                                     ; preds = %34, %31, %24, %20, %16
  %37 = phi i32 [ %21, %20 ], [ %17, %16 ], [ %33, %31 ], [ %35, %34 ], [ %25, %24 ]
  store i32 %37, i32* @other_indent, align 4, !tbaa !836
  br label %38, !dbg !1546

; <label>:38:                                     ; preds = %28, %36
  tail call fastcc void @flush_paragraph(), !dbg !1547
  %39 = load i8*, i8** @wptr, align 8, !tbaa !687
  br label %40, !dbg !1548

; <label>:40:                                     ; preds = %38, %10
  %41 = phi i8* [ %39, %38 ], [ %12, %10 ], !dbg !1549
  %42 = trunc i32 %11 to i8, !dbg !1550
  %43 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1549
  store i8* %43, i8** @wptr, align 8, !dbg !1549, !tbaa !687
  store i8 %42, i8* %41, align 1, !dbg !1551, !tbaa !847
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1137, metadata !679) #11, !dbg !1552
  %44 = load i8*, i8** %3, align 8, !dbg !1554, !tbaa !1145
  %45 = load i8*, i8** %4, align 8, !dbg !1554, !tbaa !1146
  %46 = icmp ult i8* %44, %45, !dbg !1554
  br i1 %46, label %47, label %51, !dbg !1554, !prof !1099

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1555
  store i8* %48, i8** %3, align 8, !dbg !1555, !tbaa !1145
  %49 = load i8, i8* %44, align 1, !dbg !1555, !tbaa !847
  %50 = zext i8 %49 to i32, !dbg !1555
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !1501, metadata !679), !dbg !1506
  br label %56, !dbg !1556

; <label>:51:                                     ; preds = %40
  %52 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #11, !dbg !1557
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !1501, metadata !679), !dbg !1506
  %53 = icmp eq i32 %52, -1, !dbg !1558
  br i1 %53, label %54, label %56, !dbg !1556

; <label>:54:                                     ; preds = %51
  %55 = tail call i16** @__ctype_b_loc() #1, !dbg !1559
  br label %66, !dbg !1556

; <label>:56:                                     ; preds = %47, %51
  %57 = phi i32 [ %50, %47 ], [ %52, %51 ]
  %58 = tail call i16** @__ctype_b_loc() #1, !dbg !1567
  %59 = load i16*, i16** %58, align 8, !dbg !1567, !tbaa !687
  %60 = sext i32 %57 to i64, !dbg !1567
  %61 = getelementptr inbounds i16, i16* %59, i64 %60, !dbg !1567
  %62 = load i16, i16* %61, align 2, !dbg !1567, !tbaa !1569
  %63 = and i16 %62, 8192, !dbg !1567
  %64 = icmp eq i16 %63, 0, !dbg !1570
  br i1 %64, label %10, label %65, !dbg !1571, !llvm.loop !1518

; <label>:65:                                     ; preds = %56
  br label %66, !dbg !1573

; <label>:66:                                     ; preds = %65, %54
  %67 = phi i16** [ %55, %54 ], [ %58, %65 ], !dbg !1559
  %68 = phi i32 [ -1, %54 ], [ %57, %65 ]
  %69 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1573, !tbaa !687
  %70 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1574, !tbaa !687
  %71 = bitcast %struct.Word* %70 to i64*, !dbg !1575
  %72 = load i64, i64* %71, align 8, !dbg !1575, !tbaa !1516
  %73 = sub i64 %69, %72, !dbg !1576
  %74 = trunc i64 %73 to i32, !dbg !1573
  %75 = getelementptr inbounds %struct.Word, %struct.Word* %70, i64 0, i32 1, !dbg !1577
  store i32 %74, i32* %75, align 8, !dbg !1578, !tbaa !1579
  %76 = load i32, i32* @in_column, align 4, !dbg !1580, !tbaa !836
  %77 = add nsw i32 %76, %74, !dbg !1580
  store i32 %77, i32* @in_column, align 4, !dbg !1580, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.Word* %70, i64 0, metadata !1562, metadata !679) #11, !dbg !1581
  %78 = inttoptr i64 %72 to i8*, !dbg !1582
  tail call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !1563, metadata !679) #11, !dbg !1583
  %79 = shl i64 %73, 32, !dbg !1584
  %80 = add i64 %79, -4294967296, !dbg !1584
  %81 = ashr exact i64 %80, 32, !dbg !1584
  %82 = getelementptr inbounds i8, i8* %78, i64 %81, !dbg !1584
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !1564, metadata !679) #11, !dbg !1585
  %83 = load i8, i8* %82, align 1, !dbg !1586, !tbaa !847
  tail call void @llvm.dbg.value(metadata i8 %83, i64 0, metadata !1565, metadata !679) #11, !dbg !1587
  %84 = load i8, i8* %78, align 1, !dbg !1588, !tbaa !847
  %85 = sext i8 %84 to i32, !dbg !1588
  %86 = tail call i8* @memchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 %85, i64 6) #11, !dbg !1588
  %87 = icmp ne i8* %86, null, !dbg !1588
  %88 = getelementptr inbounds %struct.Word, %struct.Word* %70, i64 0, i32 3, !dbg !1589
  %89 = zext i1 %87 to i8, !dbg !1590
  %90 = load i8, i8* %88, align 8, !dbg !1590
  %91 = and i8 %90, -2, !dbg !1590
  %92 = or i8 %91, %89, !dbg !1590
  store i8 %92, i8* %88, align 8, !dbg !1590
  %93 = load i16*, i16** %67, align 8, !dbg !1559, !tbaa !687
  %94 = zext i8 %83 to i64, !dbg !1559
  %95 = getelementptr inbounds i16, i16* %93, i64 %94, !dbg !1559
  %96 = load i16, i16* %95, align 2, !dbg !1559, !tbaa !1569
  %97 = trunc i16 %96 to i8, !dbg !1591
  %98 = and i8 %97, 4, !dbg !1591
  %99 = and i8 %92, -5, !dbg !1591
  %100 = or i8 %98, %99, !dbg !1591
  store i8 %100, i8* %88, align 8, !dbg !1591
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !1564, metadata !679) #11, !dbg !1585
  %101 = icmp sgt i32 %74, 1, !dbg !1592
  br i1 %101, label %102, label %114, !dbg !1594

; <label>:102:                                    ; preds = %66
  br label %103, !dbg !1595

; <label>:103:                                    ; preds = %102, %109
  %104 = phi i8* [ %110, %109 ], [ %82, %102 ]
  %105 = load i8, i8* %104, align 1, !dbg !1595, !tbaa !847
  %106 = sext i8 %105 to i32, !dbg !1595
  %107 = tail call i8* @memchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %106, i64 5) #11, !dbg !1595
  %108 = icmp eq i8* %107, null, !dbg !1595
  br i1 %108, label %112, label %109, !dbg !1597

; <label>:109:                                    ; preds = %103
  %110 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !1599
  tail call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !1564, metadata !679) #11, !dbg !1585
  tail call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !1564, metadata !679) #11, !dbg !1585
  %111 = icmp ult i8* %78, %110, !dbg !1592
  br i1 %111, label %103, label %112, !dbg !1594, !llvm.loop !1600

; <label>:112:                                    ; preds = %109, %103
  %113 = phi i8* [ %110, %109 ], [ %104, %103 ]
  br label %114, !dbg !1603

; <label>:114:                                    ; preds = %112, %66
  %115 = phi i8* [ %82, %66 ], [ %113, %112 ]
  %116 = load i8, i8* %115, align 1, !dbg !1603, !tbaa !847
  %117 = sext i8 %116 to i64, !dbg !1603
  %118 = and i64 %117, 4294967295, !dbg !1603
  %119 = icmp ult i64 %118, 64, !dbg !1603
  %120 = shl i64 1, %118, !dbg !1603
  %121 = and i64 %120, -9223301659520663551, !dbg !1603
  %122 = icmp ne i64 %121, 0, !dbg !1603
  %123 = and i1 %119, %122, !dbg !1603
  %124 = zext i1 %123 to i8, !dbg !1604
  %125 = shl nuw nsw i8 %124, 1, !dbg !1604
  %126 = and i8 %100, -3, !dbg !1604
  %127 = or i8 %125, %126, !dbg !1604
  store i8 %127, i8* %88, align 8, !dbg !1604
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1502, metadata !679), !dbg !1605
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1380, metadata !679) #11, !dbg !1606
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !1381, metadata !679) #11, !dbg !1608
  br label %128, !dbg !1609

; <label>:128:                                    ; preds = %145, %114
  %129 = phi i32 [ %68, %114 ], [ %146, %145 ]
  tail call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !1381, metadata !679) #11, !dbg !1608
  switch i32 %129, label %151 [
    i32 32, label %130
    i32 9, label %133
  ], !dbg !1610

; <label>:130:                                    ; preds = %128
  %131 = load i32, i32* @in_column, align 4, !dbg !1611, !tbaa !836
  %132 = add nsw i32 %131, 1, !dbg !1611
  br label %138, !dbg !1612

; <label>:133:                                    ; preds = %128
  store i1 true, i1* @tabs, align 1
  %134 = load i32, i32* @in_column, align 4, !dbg !1613, !tbaa !836
  %135 = sdiv i32 %134, 8, !dbg !1614
  %136 = shl nsw i32 %135, 3, !dbg !1615
  %137 = add i32 %136, 8, !dbg !1615
  br label %138

; <label>:138:                                    ; preds = %133, %130
  %139 = phi i32 [ %137, %133 ], [ %132, %130 ]
  store i32 %139, i32* @in_column, align 4, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1137, metadata !679) #11, !dbg !1616
  %140 = load i8*, i8** %3, align 8, !dbg !1618, !tbaa !1145
  %141 = load i8*, i8** %4, align 8, !dbg !1618, !tbaa !1146
  %142 = icmp ult i8* %140, %141, !dbg !1618
  br i1 %142, label %147, label %143, !dbg !1618, !prof !1099

; <label>:143:                                    ; preds = %138
  %144 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #11, !dbg !1619
  br label %145, !dbg !1619

; <label>:145:                                    ; preds = %143, %147
  %146 = phi i32 [ %144, %143 ], [ %150, %147 ]
  br label %128, !dbg !1608, !llvm.loop !1398

; <label>:147:                                    ; preds = %138
  %148 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1620
  store i8* %148, i8** %3, align 8, !dbg !1620, !tbaa !1145
  %149 = load i8, i8* %140, align 1, !dbg !1620, !tbaa !847
  %150 = zext i8 %149 to i32, !dbg !1620
  br label %145, !dbg !1620

; <label>:151:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !1501, metadata !679), !dbg !1506
  %152 = load i32, i32* @in_column, align 4, !dbg !1621, !tbaa !836
  %153 = sub nsw i32 %152, %77, !dbg !1622
  %154 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1623, !tbaa !687
  %155 = getelementptr inbounds %struct.Word, %struct.Word* %154, i64 0, i32 2, !dbg !1624
  store i32 %153, i32* %155, align 4, !dbg !1625, !tbaa !1626
  %156 = icmp eq i32 %129, -1, !dbg !1627
  %157 = getelementptr inbounds %struct.Word, %struct.Word* %154, i64 0, i32 3
  %158 = load i8, i8* %157, align 8
  br i1 %156, label %166, label %159, !dbg !1628

; <label>:159:                                    ; preds = %151
  %160 = and i8 %158, 2, !dbg !1629
  %161 = icmp eq i8 %160, 0, !dbg !1630
  br i1 %161, label %168, label %162, !dbg !1631

; <label>:162:                                    ; preds = %159
  %163 = icmp eq i32 %129, 10, !dbg !1632
  br i1 %163, label %166, label %164, !dbg !1633

; <label>:164:                                    ; preds = %162
  %165 = icmp sgt i32 %153, 1, !dbg !1634
  br label %168, !dbg !1636

; <label>:166:                                    ; preds = %151, %162
  %167 = or i8 %158, 8, !dbg !1637
  store i8 %167, i8* %157, align 8, !dbg !1637
  br label %177, !dbg !1638

; <label>:168:                                    ; preds = %159, %164
  %169 = phi i1 [ false, %159 ], [ %165, %164 ]
  %170 = zext i1 %169 to i8, !dbg !1637
  %171 = shl nuw nsw i8 %170, 3, !dbg !1637
  %172 = and i8 %158, -9, !dbg !1637
  %173 = or i8 %172, %171, !dbg !1637
  store i8 %173, i8* %157, align 8, !dbg !1637
  %174 = icmp eq i32 %129, 10, !dbg !1638
  br i1 %174, label %177, label %175, !dbg !1638

; <label>:175:                                    ; preds = %168
  %176 = load i1, i1* @uniform, align 1
  br i1 %176, label %177, label %183, !dbg !1640

; <label>:177:                                    ; preds = %168, %166, %175
  %178 = phi i8 [ %173, %168 ], [ %167, %166 ], [ %173, %175 ], !dbg !1641
  %179 = and i8 %178, 8, !dbg !1641
  %180 = zext i8 %179 to i32, !dbg !1642
  %181 = lshr exact i32 %180, 3, !dbg !1642
  %182 = add nuw nsw i32 %181, 1, !dbg !1642
  store i32 %182, i32* %155, align 4, !dbg !1643, !tbaa !1626
  br label %183, !dbg !1644

; <label>:183:                                    ; preds = %177, %175
  %184 = icmp eq %struct.Word* %154, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), !dbg !1645
  br i1 %184, label %185, label %206, !dbg !1647

; <label>:185:                                    ; preds = %183
  tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1190, metadata !1195), !dbg !1648
  %186 = load i1, i1* @split, align 1
  br i1 %186, label %187, label %189, !dbg !1651

; <label>:187:                                    ; preds = %185
  %188 = load i32, i32* @first_indent, align 4, !dbg !1652, !tbaa !836
  br label %202, !dbg !1653

; <label>:189:                                    ; preds = %185
  %190 = load i1, i1* @crown, align 1
  br i1 %190, label %202, label %191, !dbg !1654

; <label>:191:                                    ; preds = %189
  %192 = load i1, i1* @tagged, align 1
  %193 = load i32, i32* @first_indent, align 4, !tbaa !836
  br i1 %192, label %194, label %202, !dbg !1655

; <label>:194:                                    ; preds = %191
  %195 = icmp eq i32 %152, %193, !dbg !1656
  br i1 %195, label %196, label %202, !dbg !1657

; <label>:196:                                    ; preds = %194
  %197 = load i32, i32* @other_indent, align 4, !dbg !1658, !tbaa !836
  %198 = icmp eq i32 %197, %152, !dbg !1659
  br i1 %198, label %199, label %204, !dbg !1660

; <label>:199:                                    ; preds = %196
  %200 = icmp eq i32 %152, 0, !dbg !1661
  %201 = select i1 %200, i32 3, i32 0, !dbg !1662
  br label %202, !dbg !1663

; <label>:202:                                    ; preds = %191, %189, %199, %194, %187
  %203 = phi i32 [ %188, %187 ], [ %201, %199 ], [ %152, %194 ], [ %152, %189 ], [ %193, %191 ]
  store i32 %203, i32* @other_indent, align 4, !tbaa !836
  br label %204, !dbg !1664

; <label>:204:                                    ; preds = %196, %202
  tail call fastcc void @flush_paragraph(), !dbg !1665
  %205 = load %struct.Word*, %struct.Word** @word_limit, align 8, !tbaa !687
  br label %206, !dbg !1666

; <label>:206:                                    ; preds = %204, %183
  %207 = phi %struct.Word* [ %205, %204 ], [ %154, %183 ], !dbg !1667
  %208 = getelementptr inbounds %struct.Word, %struct.Word* %207, i64 1, !dbg !1667
  store %struct.Word* %208, %struct.Word** @word_limit, align 8, !dbg !1667, !tbaa !687
  %209 = bitcast %struct.Word* %208 to i64*, !dbg !1668
  switch i32 %129, label %6 [
    i32 -1, label %210
    i32 10, label %210
  ], !dbg !1668

; <label>:210:                                    ; preds = %206, %206
  %211 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !1669
  ret i32 %211, !dbg !1670
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fmt_paragraph() unnamed_addr #6 !dbg !1671 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1679, !tbaa !687
  %2 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 5, !dbg !1680
  store i64 0, i64* %2, align 8, !dbg !1681, !tbaa !1682
  %3 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 1, !dbg !1683
  %4 = load i32, i32* %3, align 8, !dbg !1683, !tbaa !1579
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1678, metadata !679), !dbg !1684
  %5 = load i32, i32* @max_width, align 4, !dbg !1685, !tbaa !836
  store i32 %5, i32* %3, align 8, !dbg !1686, !tbaa !1579
  %6 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 -1
  tail call void @llvm.dbg.value(metadata %struct.Word* %6, i64 0, metadata !1673, metadata !679), !dbg !1687
  %7 = icmp ult %struct.Word* %6, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1688
  br i1 %7, label %125, label %8, !dbg !1692

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* @first_indent, align 4
  %10 = load i32, i32* @other_indent, align 4
  %11 = load i32, i32* @last_line_length, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = load i32, i32* @goal_width, align 4
  br label %14, !dbg !1692

; <label>:14:                                     ; preds = %8, %118
  %15 = phi %struct.Word* [ %6, %8 ], [ %122, %118 ]
  %16 = phi %struct.Word* [ %1, %8 ], [ %15, %118 ]
  tail call void @llvm.dbg.value(metadata i64 9223372036854775807, i64 0, metadata !1677, metadata !679), !dbg !1694
  %17 = icmp eq %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1695
  %18 = select i1 %17, i32 %9, i32 %10
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !1675, metadata !679), !dbg !1697
  tail call void @llvm.dbg.value(metadata %struct.Word* %15, i64 0, metadata !1674, metadata !679), !dbg !1698
  %19 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 1, !dbg !1699
  %20 = load i32, i32* %19, align 8, !dbg !1699, !tbaa !1579
  %21 = add nsw i32 %18, %20, !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !1675, metadata !679), !dbg !1697
  %22 = and i1 %17, %12
  %23 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 6
  %24 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 4
  br label %25, !dbg !1701, !llvm.loop !1702

; <label>:25:                                     ; preds = %66, %14
  %26 = phi %struct.Word* [ %15, %14 ], [ %29, %66 ]
  %27 = phi i32 [ %21, %14 ], [ %72, %66 ]
  %28 = phi i64 [ 9223372036854775807, %14 ], [ %65, %66 ]
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !1677, metadata !679), !dbg !1694
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1675, metadata !679), !dbg !1697
  tail call void @llvm.dbg.value(metadata %struct.Word* %26, i64 0, metadata !1674, metadata !679), !dbg !1698
  %29 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, !dbg !1704
  tail call void @llvm.dbg.value(metadata %struct.Word* %29, i64 0, metadata !1674, metadata !679), !dbg !1698
  tail call void @llvm.dbg.value(metadata %struct.Word* %29, i64 0, metadata !1706, metadata !679), !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1711, metadata !679), !dbg !1716
  %30 = icmp eq %struct.Word* %1, %29, !dbg !1717
  br i1 %30, label %48, label %31, !dbg !1719

; <label>:31:                                     ; preds = %25
  %32 = sub nsw i32 %13, %27, !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !1712, metadata !679), !dbg !1721
  %33 = mul nsw i32 %32, 10, !dbg !1722
  %34 = sext i32 %33 to i64, !dbg !1722
  %35 = mul nsw i64 %34, %34, !dbg !1722
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1713, metadata !679), !dbg !1723
  %36 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 6, !dbg !1724
  %37 = load %struct.Word*, %struct.Word** %36, align 8, !dbg !1724, !tbaa !1343
  %38 = icmp eq %struct.Word* %37, %1, !dbg !1726
  br i1 %38, label %48, label %39, !dbg !1727

; <label>:39:                                     ; preds = %31
  %40 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 4, !dbg !1728
  %41 = load i32, i32* %40, align 4, !dbg !1728, !tbaa !1730
  %42 = sub nsw i32 %27, %41, !dbg !1731
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1712, metadata !679), !dbg !1721
  %43 = mul nsw i32 %42, 10, !dbg !1732
  %44 = sext i32 %43 to i64, !dbg !1732
  %45 = mul nsw i64 %44, %44, !dbg !1732
  %46 = lshr exact i64 %45, 1, !dbg !1732
  %47 = add nuw nsw i64 %46, %35, !dbg !1733
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !1713, metadata !679), !dbg !1723
  br label %48, !dbg !1734

; <label>:48:                                     ; preds = %25, %31, %39
  %49 = phi i64 [ 0, %25 ], [ %47, %39 ], [ %35, %31 ]
  %50 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 5, !dbg !1735
  %51 = load i64, i64* %50, align 8, !dbg !1735, !tbaa !1682
  %52 = add nsw i64 %51, %49, !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1676, metadata !679), !dbg !1737
  br i1 %22, label %53, label %60, !dbg !1738

; <label>:53:                                     ; preds = %48
  %54 = sub nsw i32 %27, %11, !dbg !1740
  %55 = mul nsw i32 %54, 10, !dbg !1740
  %56 = sext i32 %55 to i64, !dbg !1740
  %57 = mul nsw i64 %56, %56, !dbg !1740
  %58 = lshr exact i64 %57, 1, !dbg !1740
  %59 = add nsw i64 %58, %52, !dbg !1741
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1676, metadata !679), !dbg !1737
  br label %60, !dbg !1742

; <label>:60:                                     ; preds = %53, %48
  %61 = phi i64 [ %59, %53 ], [ %52, %48 ]
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1676, metadata !679), !dbg !1737
  %62 = icmp slt i64 %61, %28, !dbg !1743
  br i1 %62, label %63, label %64, !dbg !1745

; <label>:63:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1677, metadata !679), !dbg !1694
  store %struct.Word* %29, %struct.Word** %23, align 8, !dbg !1746, !tbaa !1343
  store i32 %27, i32* %24, align 4, !dbg !1748, !tbaa !1730
  br label %64, !dbg !1749

; <label>:64:                                     ; preds = %63, %60
  %65 = phi i64 [ %61, %63 ], [ %28, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !1677, metadata !679), !dbg !1694
  br i1 %30, label %74, label %66, !dbg !1750

; <label>:66:                                     ; preds = %64
  %67 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 0, i32 2, !dbg !1751
  %68 = load i32, i32* %67, align 4, !dbg !1751, !tbaa !1626
  %69 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 1, !dbg !1752
  %70 = load i32, i32* %69, align 8, !dbg !1752, !tbaa !1579
  %71 = add i32 %68, %27, !dbg !1753
  %72 = add i32 %71, %70, !dbg !1754
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1675, metadata !679), !dbg !1697
  %73 = icmp slt i32 %72, %5, !dbg !1755
  br i1 %73, label %25, label %74, !dbg !1756, !llvm.loop !1702

; <label>:74:                                     ; preds = %64, %66
  tail call void @llvm.dbg.value(metadata %struct.Word* %15, i64 0, metadata !1758, metadata !679), !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 4900, i64 0, metadata !1763, metadata !679), !dbg !1766
  %75 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1767
  br i1 %75, label %76, label %102, !dbg !1769

; <label>:76:                                     ; preds = %74
  %77 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 3, !dbg !1770
  %78 = load i8, i8* %77, align 8, !dbg !1770
  %79 = and i8 %78, 2, !dbg !1770
  %80 = icmp eq i8 %79, 0, !dbg !1773
  br i1 %80, label %85, label %81, !dbg !1774

; <label>:81:                                     ; preds = %76
  %82 = and i8 %78, 8, !dbg !1775
  %83 = icmp eq i8 %82, 0, !dbg !1778
  %84 = select i1 %83, i64 364900, i64 2400
  br label %102

; <label>:85:                                     ; preds = %76
  %86 = and i8 %78, 4, !dbg !1779
  %87 = icmp eq i8 %86, 0, !dbg !1781
  br i1 %87, label %88, label %102, !dbg !1782

; <label>:88:                                     ; preds = %85
  %89 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 1), !dbg !1783
  br i1 %89, label %90, label %102, !dbg !1785

; <label>:90:                                     ; preds = %88
  %91 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -3, i32 3, !dbg !1786
  %92 = load i8, i8* %91, align 8, !dbg !1786
  %93 = and i8 %92, 8, !dbg !1786
  %94 = icmp eq i8 %93, 0, !dbg !1788
  br i1 %94, label %102, label %95, !dbg !1789

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 1, !dbg !1791
  %97 = load i32, i32* %96, align 8, !dbg !1791, !tbaa !1579
  %98 = add nsw i32 %97, 2, !dbg !1791
  %99 = sext i32 %98 to i64, !dbg !1791
  %100 = sdiv i64 40000, %99, !dbg !1791
  %101 = add nsw i64 %100, 4900, !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1763, metadata !679), !dbg !1766
  br label %102, !dbg !1793

; <label>:102:                                    ; preds = %95, %90, %88, %85, %81, %74
  %103 = phi i64 [ %101, %95 ], [ 4900, %90 ], [ 4900, %88 ], [ 4900, %74 ], [ %84, %81 ], [ 3300, %85 ]
  tail call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1763, metadata !679), !dbg !1766
  %104 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 3, !dbg !1794
  %105 = load i8, i8* %104, align 8, !dbg !1794
  %106 = and i8 %105, 1, !dbg !1794
  %107 = icmp eq i8 %106, 0, !dbg !1796
  br i1 %107, label %110, label %108, !dbg !1797

; <label>:108:                                    ; preds = %102
  %109 = add nsw i64 %103, -1600, !dbg !1798
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1763, metadata !679), !dbg !1766
  br label %118, !dbg !1799

; <label>:110:                                    ; preds = %102
  %111 = and i8 %105, 8, !dbg !1800
  %112 = icmp eq i8 %111, 0, !dbg !1802
  br i1 %112, label %118, label %113, !dbg !1803

; <label>:113:                                    ; preds = %110
  %114 = add nsw i32 %20, 2, !dbg !1804
  %115 = sext i32 %114 to i64, !dbg !1804
  %116 = sdiv i64 22500, %115, !dbg !1804
  %117 = add nsw i64 %116, %103, !dbg !1805
  tail call void @llvm.dbg.value(metadata i64 %117, i64 0, metadata !1763, metadata !679), !dbg !1766
  br label %118, !dbg !1806

; <label>:118:                                    ; preds = %108, %110, %113
  %119 = phi i64 [ %109, %108 ], [ %117, %113 ], [ %103, %110 ]
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !1763, metadata !679), !dbg !1766
  %120 = add nsw i64 %119, %65, !dbg !1807
  %121 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 5, !dbg !1808
  store i64 %120, i64* %121, align 8, !dbg !1809, !tbaa !1682
  %122 = getelementptr inbounds %struct.Word, %struct.Word* %15, i64 -1
  tail call void @llvm.dbg.value(metadata %struct.Word* %122, i64 0, metadata !1673, metadata !679), !dbg !1687
  %123 = icmp ult %struct.Word* %122, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1688
  br i1 %123, label %124, label %14, !dbg !1692, !llvm.loop !1810

; <label>:124:                                    ; preds = %118
  br label %125, !dbg !1813

; <label>:125:                                    ; preds = %124, %0
  store i32 %4, i32* %3, align 8, !dbg !1813, !tbaa !1579
  ret void, !dbg !1814
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @put_line(%struct.Word* readonly, i32) unnamed_addr #6 !dbg !1815 {
  tail call void @llvm.dbg.value(metadata %struct.Word* %0, i64 0, metadata !1819, metadata !679), !dbg !1822
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1820, metadata !679), !dbg !1823
  store i32 0, i32* @out_column, align 4, !dbg !1824, !tbaa !836
  %3 = load i32, i32* @prefix_indent, align 4, !dbg !1825, !tbaa !836
  tail call fastcc void @put_space(i32 %3), !dbg !1826
  %4 = load i8*, i8** @prefix, align 8, !dbg !1827, !tbaa !687
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1827, !tbaa !687
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #11, !dbg !1827
  %7 = load i32, i32* @prefix_length, align 4, !dbg !1828, !tbaa !836
  %8 = load i32, i32* @out_column, align 4, !dbg !1829, !tbaa !836
  %9 = add nsw i32 %8, %7, !dbg !1829
  store i32 %9, i32* @out_column, align 4, !dbg !1829, !tbaa !836
  %10 = sub nsw i32 %1, %9, !dbg !1830
  tail call fastcc void @put_space(i32 %10), !dbg !1831
  %11 = getelementptr inbounds %struct.Word, %struct.Word* %0, i64 0, i32 6, !dbg !1832
  %12 = load %struct.Word*, %struct.Word** %11, align 8, !dbg !1832, !tbaa !1343
  %13 = getelementptr inbounds %struct.Word, %struct.Word* %12, i64 -1, !dbg !1833
  tail call void @llvm.dbg.value(metadata %struct.Word* %13, i64 0, metadata !1821, metadata !679), !dbg !1834
  br label %14, !dbg !1835

; <label>:14:                                     ; preds = %48, %2
  %15 = phi %struct.Word* [ %0, %2 ], [ %51, %48 ]
  tail call void @llvm.dbg.value(metadata %struct.Word* %15, i64 0, metadata !1819, metadata !679), !dbg !1822
  %16 = icmp eq %struct.Word* %15, %13, !dbg !1836
  tail call void @llvm.dbg.value(metadata %struct.Word* %15, i64 0, metadata !1840, metadata !679) #11, !dbg !1845
  %17 = getelementptr inbounds %struct.Word, %struct.Word* %15, i64 0, i32 1, !dbg !1848
  %18 = load i32, i32* %17, align 8, !dbg !1848, !tbaa !1579
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !1844, metadata !679) #11, !dbg !1850
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !1844, metadata !679) #11, !dbg !1850
  %19 = icmp eq i32 %18, 0, !dbg !1851
  br i1 %19, label %44, label %20, !dbg !1854

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %struct.Word, %struct.Word* %15, i64 0, i32 0, !dbg !1856
  %22 = load i8*, i8** %21, align 8, !dbg !1856, !tbaa !1516
  br label %23, !dbg !1857

; <label>:23:                                     ; preds = %39, %20
  %24 = phi i32 [ %40, %39 ], [ %18, %20 ]
  %25 = phi i8* [ %26, %39 ], [ %22, %20 ]
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1857
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1843, metadata !679) #11, !dbg !1858
  %27 = load i8, i8* %25, align 1, !dbg !1857, !tbaa !847
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1859, !tbaa !687
  %29 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %28, i64 0, i32 5, !dbg !1859
  %30 = load i8*, i8** %29, align 8, !dbg !1859, !tbaa !1094
  %31 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %28, i64 0, i32 6, !dbg !1859
  %32 = load i8*, i8** %31, align 8, !dbg !1859, !tbaa !1098
  %33 = icmp ult i8* %30, %32, !dbg !1859
  br i1 %33, label %37, label %34, !dbg !1859, !prof !1099

; <label>:34:                                     ; preds = %23
  %35 = zext i8 %27 to i32, !dbg !1857
  %36 = tail call i32 @__overflow(%struct._IO_FILE* %28, i32 %35) #11, !dbg !1861
  br label %39, !dbg !1861

; <label>:37:                                     ; preds = %23
  %38 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1862
  store i8* %38, i8** %29, align 8, !dbg !1862, !tbaa !1094
  store i8 %27, i8* %30, align 1, !dbg !1862, !tbaa !847
  br label %39, !dbg !1862

; <label>:39:                                     ; preds = %37, %34
  %40 = add nsw i32 %24, -1, !dbg !1863
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1844, metadata !679) #11, !dbg !1850
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1844, metadata !679) #11, !dbg !1850
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1843, metadata !679) #11, !dbg !1858
  %41 = icmp eq i32 %40, 0, !dbg !1851
  br i1 %41, label %42, label %23, !dbg !1854, !llvm.loop !1865

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %17, align 8, !tbaa !1579
  br label %44, !dbg !1868

; <label>:44:                                     ; preds = %14, %42
  %45 = phi i32 [ %43, %42 ], [ 0, %14 ], !dbg !1868
  %46 = load i32, i32* @out_column, align 4, !dbg !1869, !tbaa !836
  %47 = add nsw i32 %46, %45, !dbg !1869
  store i32 %47, i32* @out_column, align 4, !dbg !1869, !tbaa !836
  br i1 %16, label %52, label %48, !dbg !1870

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.Word, %struct.Word* %15, i64 0, i32 2, !dbg !1872
  %50 = load i32, i32* %49, align 4, !dbg !1872, !tbaa !1626
  tail call fastcc void @put_space(i32 %50), !dbg !1873
  %51 = getelementptr inbounds %struct.Word, %struct.Word* %15, i64 1, !dbg !1874
  tail call void @llvm.dbg.value(metadata %struct.Word* %51, i64 0, metadata !1819, metadata !679), !dbg !1822
  br label %14, !dbg !1876, !llvm.loop !1877

; <label>:52:                                     ; preds = %44
  store i32 %47, i32* @last_line_length, align 4, !dbg !1880, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1092, metadata !679) #11, !dbg !1881
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1883, !tbaa !687
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 5, !dbg !1883
  %55 = load i8*, i8** %54, align 8, !dbg !1883, !tbaa !1094
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 6, !dbg !1883
  %57 = load i8*, i8** %56, align 8, !dbg !1883, !tbaa !1098
  %58 = icmp ult i8* %55, %57, !dbg !1883
  br i1 %58, label %61, label %59, !dbg !1883, !prof !1099

; <label>:59:                                     ; preds = %52
  %60 = tail call i32 @__overflow(%struct._IO_FILE* %53, i32 10) #11, !dbg !1884
  br label %63, !dbg !1884

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1885
  store i8* %62, i8** %54, align 8, !dbg !1885, !tbaa !1094
  store i8 10, i8* %55, align 1, !dbg !1885, !tbaa !847
  br label %63, !dbg !1885

; <label>:63:                                     ; preds = %59, %61
  ret void, !dbg !1886
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flush_paragraph() unnamed_addr #6 !dbg !1887 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1893, !tbaa !687
  %2 = icmp eq %struct.Word* %1, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1895
  br i1 %2, label %3, label %8, !dbg !1896

; <label>:3:                                      ; preds = %0
  %4 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1897, !tbaa !687
  %5 = sub i64 %4, ptrtoint ([5000 x i8]* @parabuf to i64), !dbg !1897
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1897, !tbaa !687
  %7 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i64 1, i64 %5, %struct._IO_FILE* %6) #11, !dbg !1897
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1899, !tbaa !687
  br label %81, !dbg !1900

; <label>:8:                                      ; preds = %0
  tail call fastcc void @fmt_paragraph(), !dbg !1901
  tail call void @llvm.dbg.value(metadata %struct.Word* %1, i64 0, metadata !1889, metadata !679), !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 9223372036854775807, i64 0, metadata !1892, metadata !679), !dbg !1903
  %9 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !tbaa !1343
  tail call void @llvm.dbg.value(metadata i64 9223372036854775807, i64 0, metadata !1892, metadata !679), !dbg !1903
  tail call void @llvm.dbg.value(metadata %struct.Word* %1, i64 0, metadata !1889, metadata !679), !dbg !1902
  tail call void @llvm.dbg.value(metadata %struct.Word* %9, i64 0, metadata !1890, metadata !679), !dbg !1904
  %10 = icmp eq %struct.Word* %9, %1, !dbg !1905
  br i1 %10, label %32, label %11, !dbg !1909

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.Word, %struct.Word* %9, i64 0, i32 5
  %13 = load i64, i64* %12, align 8, !tbaa !1682
  br label %14, !dbg !1909

; <label>:14:                                     ; preds = %11, %14
  %15 = phi i64 [ %13, %11 ], [ %22, %14 ], !dbg !1911
  %16 = phi %struct.Word* [ %9, %11 ], [ %20, %14 ]
  %17 = phi i64 [ 9223372036854775807, %11 ], [ %29, %14 ]
  %18 = phi %struct.Word* [ %1, %11 ], [ %25, %14 ]
  %19 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 0, i32 6, !dbg !1914
  %20 = load %struct.Word*, %struct.Word** %19, align 8, !dbg !1914, !tbaa !1343
  %21 = getelementptr inbounds %struct.Word, %struct.Word* %20, i64 0, i32 5, !dbg !1915
  %22 = load i64, i64* %21, align 8, !dbg !1915, !tbaa !1682
  %23 = sub nsw i64 %15, %22, !dbg !1916
  %24 = icmp slt i64 %23, %17, !dbg !1917
  tail call void @llvm.dbg.value(metadata %struct.Word* %16, i64 0, metadata !1889, metadata !679), !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1892, metadata !679), !dbg !1903
  %25 = select i1 %24, %struct.Word* %16, %struct.Word* %18, !dbg !1918
  %26 = select i1 %24, i64 %23, i64 %17, !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1892, metadata !679), !dbg !1903
  tail call void @llvm.dbg.value(metadata %struct.Word* %25, i64 0, metadata !1889, metadata !679), !dbg !1902
  %27 = icmp slt i64 %26, 9223372036854775799, !dbg !1919
  %28 = add nsw i64 %26, 9, !dbg !1921
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !1892, metadata !679), !dbg !1903
  %29 = select i1 %27, i64 %28, i64 %26, !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1892, metadata !679), !dbg !1903
  tail call void @llvm.dbg.value(metadata %struct.Word* %25, i64 0, metadata !1889, metadata !679), !dbg !1902
  tail call void @llvm.dbg.value(metadata %struct.Word* %20, i64 0, metadata !1890, metadata !679), !dbg !1904
  %30 = icmp eq %struct.Word* %20, %1, !dbg !1905
  br i1 %30, label %31, label %14, !dbg !1909, !llvm.loop !1923

; <label>:31:                                     ; preds = %14
  br label %32, !dbg !1926

; <label>:32:                                     ; preds = %31, %8
  %33 = phi %struct.Word* [ %1, %8 ], [ %25, %31 ]
  tail call void @llvm.dbg.value(metadata %struct.Word* undef, i64 0, metadata !1333, metadata !679) #11, !dbg !1926
  %34 = load i32, i32* @first_indent, align 4, !dbg !1928, !tbaa !836
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %34) #11, !dbg !1929
  %35 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !tbaa !1343
  tail call void @llvm.dbg.value(metadata %struct.Word* %35, i64 0, metadata !1338, metadata !679) #11, !dbg !1930
  %36 = icmp eq %struct.Word* %35, %33, !dbg !1931
  br i1 %36, label %45, label %37, !dbg !1932

; <label>:37:                                     ; preds = %32
  br label %38, !dbg !1933

; <label>:38:                                     ; preds = %37, %38
  %39 = phi %struct.Word* [ %42, %38 ], [ %35, %37 ]
  %40 = load i32, i32* @other_indent, align 4, !dbg !1933, !tbaa !836
  tail call fastcc void @put_line(%struct.Word* %39, i32 %40) #11, !dbg !1934
  %41 = getelementptr inbounds %struct.Word, %struct.Word* %39, i64 0, i32 6, !dbg !1935
  %42 = load %struct.Word*, %struct.Word** %41, align 8, !tbaa !1343
  tail call void @llvm.dbg.value(metadata %struct.Word* %42, i64 0, metadata !1338, metadata !679) #11, !dbg !1930
  %43 = icmp eq %struct.Word* %42, %33, !dbg !1931
  br i1 %43, label %44, label %38, !dbg !1932, !llvm.loop !1936

; <label>:44:                                     ; preds = %38
  br label %45, !dbg !1939

; <label>:45:                                     ; preds = %44, %32
  %46 = getelementptr inbounds %struct.Word, %struct.Word* %33, i64 0, i32 0, !dbg !1939
  %47 = load i8*, i8** %46, align 8, !dbg !1939, !tbaa !1516
  %48 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1940, !tbaa !687
  %49 = ptrtoint i8* %47 to i64, !dbg !1941
  %50 = sub i64 %48, %49, !dbg !1941
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8* %47, i64 %50, i32 1, i1 false), !dbg !1942
  %51 = bitcast %struct.Word* %33 to i64*, !dbg !1943
  %52 = load i64, i64* %51, align 8, !dbg !1943, !tbaa !1516
  %53 = sub i64 %52, ptrtoint ([5000 x i8]* @parabuf to i64), !dbg !1944
  %54 = inttoptr i64 %48 to i8*, !dbg !1945
  %55 = shl i64 %53, 32, !dbg !1945
  %56 = ashr exact i64 %55, 32, !dbg !1945
  %57 = sub nsw i64 0, %56, !dbg !1945
  %58 = getelementptr inbounds i8, i8* %54, i64 %57, !dbg !1945
  store i8* %58, i8** @wptr, align 8, !dbg !1945, !tbaa !687
  tail call void @llvm.dbg.value(metadata %struct.Word* undef, i64 0, metadata !1890, metadata !679), !dbg !1904
  tail call void @llvm.dbg.value(metadata %struct.Word* %33, i64 0, metadata !1890, metadata !679), !dbg !1904
  %59 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1946, !tbaa !687
  %60 = icmp ugt %struct.Word* %33, %59, !dbg !1950
  br i1 %60, label %71, label %61, !dbg !1951

; <label>:61:                                     ; preds = %45
  br label %62, !dbg !1953

; <label>:62:                                     ; preds = %61, %62
  %63 = phi %struct.Word* [ %67, %62 ], [ %33, %61 ]
  %64 = getelementptr inbounds %struct.Word, %struct.Word* %63, i64 0, i32 0, !dbg !1953
  %65 = load i8*, i8** %64, align 8, !dbg !1954, !tbaa !1516
  %66 = getelementptr inbounds i8, i8* %65, i64 %57, !dbg !1954
  store i8* %66, i8** %64, align 8, !dbg !1954, !tbaa !1516
  %67 = getelementptr inbounds %struct.Word, %struct.Word* %63, i64 1, !dbg !1955
  tail call void @llvm.dbg.value(metadata %struct.Word* %67, i64 0, metadata !1890, metadata !679), !dbg !1904
  tail call void @llvm.dbg.value(metadata %struct.Word* %67, i64 0, metadata !1890, metadata !679), !dbg !1904
  %68 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1946, !tbaa !687
  %69 = icmp ugt %struct.Word* %67, %68, !dbg !1950
  br i1 %69, label %70, label %62, !dbg !1951, !llvm.loop !1957

; <label>:70:                                     ; preds = %62
  br label %71, !dbg !1960

; <label>:71:                                     ; preds = %70, %45
  %72 = phi %struct.Word* [ %59, %45 ], [ %68, %70 ], !dbg !1961
  %73 = bitcast %struct.Word* %33 to i8*, !dbg !1960
  %74 = ptrtoint %struct.Word* %72 to i64, !dbg !1962
  %75 = ptrtoint %struct.Word* %33 to i64, !dbg !1962
  %76 = sub i64 40, %75, !dbg !1962
  %77 = add i64 %76, %74, !dbg !1963
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* bitcast ([1000 x %struct.Word]* @unused_word_type to i8*), i8* %73, i64 %77, i32 8, i1 false), !dbg !1960
  %78 = sub i64 %75, ptrtoint ([1000 x %struct.Word]* @unused_word_type to i64), !dbg !1964
  %79 = sdiv i64 %78, -40, !dbg !1961
  %80 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 %79, !dbg !1961
  store %struct.Word* %80, %struct.Word** @word_limit, align 8, !dbg !1961, !tbaa !687
  br label %81, !dbg !1965

; <label>:81:                                     ; preds = %71, %3
  ret void, !dbg !1966
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #8

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1968 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1970, metadata !679), !dbg !1971
  store i8* %0, i8** @file_name, align 8, !dbg !1972, !tbaa !687
  ret void, !dbg !1973
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1974 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1976, metadata !1195), !dbg !1977
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1978, !tbaa !1979
  ret void, !dbg !1981
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1982 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1987, !tbaa !687
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1988
  %3 = icmp eq i32 %2, 0, !dbg !1989
  br i1 %3, label %21, label %4, !dbg !1990

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1991, !tbaa !1979, !range !1993
  %6 = icmp eq i8 %5, 0, !dbg !1991
  %7 = tail call i32* @__errno_location() #1, !dbg !1994
  br i1 %6, label %11, label %8, !dbg !1996

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1997, !tbaa !836
  %10 = icmp eq i32 %9, 32, !dbg !1999
  br i1 %10, label %21, label %11, !dbg !2000

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !2002
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1984, metadata !679), !dbg !2003
  %13 = load i8*, i8** @file_name, align 8, !dbg !2004, !tbaa !687
  %14 = icmp eq i8* %13, null, !dbg !2004
  %15 = load i32, i32* %7, align 4, !tbaa !836
  br i1 %14, label %18, label %16, !dbg !2005

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !2006
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.23, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !2008
  br label %19, !dbg !2010

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.24, i64 0, i64 0), i8* %12) #11, !dbg !2011
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2012, !tbaa !836
  tail call void @_exit(i32 %20) #14, !dbg !2013
  unreachable, !dbg !2013

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2014, !tbaa !687
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !2016
  %24 = icmp eq i32 %23, 0, !dbg !2017
  br i1 %24, label %27, label %25, !dbg !2018

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2019, !tbaa !836
  tail call void @_exit(i32 %26) #14, !dbg !2020
  unreachable, !dbg !2020

; <label>:27:                                     ; preds = %21
  ret void, !dbg !2021
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !2022 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2029, metadata !679), !dbg !2035
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2030, metadata !679), !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2031, metadata !679), !dbg !2037
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2032, metadata !679), !dbg !2038
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2033, metadata !679), !dbg !2039
  ret void, !dbg !2040
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !2041 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2085, metadata !679), !dbg !2087
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2086, metadata !679), !dbg !2088
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2089
  br i1 %3, label %7, label %4, !dbg !2091

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2029, metadata !679) #11, !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2030, metadata !679) #11, !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2031, metadata !679) #11, !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2032, metadata !679) #11, !dbg !2098
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !2099
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2033, metadata !679) #11, !dbg !2099
  br label %7, !dbg !2100

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2101
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2102 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2104, metadata !679), !dbg !2107
  %2 = icmp eq i8* %0, null, !dbg !2108
  br i1 %2, label %3, label %6, !dbg !2110

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2111, !tbaa !687
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2113
  tail call void @abort() #14, !dbg !2114
  unreachable, !dbg !2114

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #8, !dbg !2115
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2105, metadata !679), !dbg !2116
  %8 = icmp ne i8* %7, null, !dbg !2117
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2118
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2120
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2106, metadata !679), !dbg !2121
  %11 = ptrtoint i8* %10 to i64, !dbg !2122
  %12 = ptrtoint i8* %0 to i64, !dbg !2122
  %13 = sub i64 %11, %12, !dbg !2122
  %14 = icmp sgt i64 %13, 6, !dbg !2124
  br i1 %14, label %15, label %24, !dbg !2125

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2126
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #8, !dbg !2126
  %18 = icmp eq i32 %17, 0, !dbg !2128
  br i1 %18, label %19, label %24, !dbg !2129

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2104, metadata !679), !dbg !2107
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #8, !dbg !2130
  %21 = icmp eq i32 %20, 0, !dbg !2133
  br i1 %21, label %22, label %24, !dbg !2134

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2135
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2104, metadata !679), !dbg !2107
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2137, !tbaa !687
  br label %24, !dbg !2138

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2104, metadata !679), !dbg !2107
  store i8* %25, i8** @program_name, align 8, !dbg !2139, !tbaa !687
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2140, !tbaa !687
  ret void, !dbg !2141
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2142 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2147, metadata !679), !dbg !2150
  %2 = tail call i32* @__errno_location() #1, !dbg !2151
  %3 = load i32, i32* %2, align 4, !dbg !2151, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2148, metadata !679), !dbg !2152
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2153
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2154
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2154
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !2156
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2156
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2149, metadata !679), !dbg !2157
  store i32 %3, i32* %2, align 4, !dbg !2158, !tbaa !836
  ret %struct.quoting_options* %8, !dbg !2159
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !2160 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2166, metadata !679), !dbg !2167
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2168
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2168
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2169
  %5 = load i32, i32* %4, align 8, !dbg !2169, !tbaa !2171
  ret i32 %5, !dbg !2173
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2174 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2178, metadata !679), !dbg !2180
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2179, metadata !679), !dbg !2181
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2182
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2182
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2183
  store i32 %1, i32* %5, align 8, !dbg !2185, !tbaa !2171
  ret void, !dbg !2186
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2187 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2191, metadata !679), !dbg !2199
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2192, metadata !679), !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2193, metadata !679), !dbg !2201
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2194, metadata !679), !dbg !2202
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2203
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2203
  %6 = lshr i8 %1, 5, !dbg !2204
  %7 = zext i8 %6 to i64, !dbg !2204
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2206
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2195, metadata !679), !dbg !2207
  %9 = and i8 %1, 31, !dbg !2208
  %10 = zext i8 %9 to i32, !dbg !2209
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2197, metadata !679), !dbg !2210
  %11 = load i32, i32* %8, align 4, !dbg !2211, !tbaa !836
  %12 = lshr i32 %11, %10, !dbg !2212
  %13 = and i32 %12, 1, !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2198, metadata !679), !dbg !2214
  %14 = and i32 %2, 1, !dbg !2215
  %15 = xor i32 %13, %14, !dbg !2216
  %16 = shl i32 %15, %10, !dbg !2217
  %17 = xor i32 %16, %11, !dbg !2218
  store i32 %17, i32* %8, align 4, !dbg !2218, !tbaa !836
  ret i32 %13, !dbg !2219
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2220 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2224, metadata !679), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2225, metadata !679), !dbg !2228
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2229
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2224, metadata !679), !dbg !2227
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2224, metadata !679), !dbg !2227
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2232
  %6 = load i32, i32* %5, align 4, !dbg !2232, !tbaa !2233
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2226, metadata !679), !dbg !2234
  store i32 %1, i32* %5, align 4, !dbg !2235, !tbaa !2233
  ret i32 %6, !dbg !2236
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2237 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2241, metadata !679), !dbg !2244
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2242, metadata !679), !dbg !2245
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2243, metadata !679), !dbg !2246
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2247
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2241, metadata !679), !dbg !2244
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2249
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2241, metadata !679), !dbg !2244
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2250
  store i32 10, i32* %6, align 8, !dbg !2251, !tbaa !2171
  %7 = icmp ne i8* %1, null, !dbg !2252
  %8 = icmp ne i8* %2, null, !dbg !2254
  %9 = and i1 %7, %8, !dbg !2256
  br i1 %9, label %11, label %10, !dbg !2256

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2257
  unreachable, !dbg !2257

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2258
  store i8* %1, i8** %12, align 8, !dbg !2259, !tbaa !2260
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2261
  store i8* %2, i8** %13, align 8, !dbg !2262, !tbaa !2263
  ret void, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2265 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2269, metadata !679), !dbg !2277
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2270, metadata !679), !dbg !2278
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2271, metadata !679), !dbg !2279
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2272, metadata !679), !dbg !2280
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2273, metadata !679), !dbg !2281
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2282
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2282
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2274, metadata !679), !dbg !2283
  %8 = tail call i32* @__errno_location() #1, !dbg !2284
  %9 = load i32, i32* %8, align 4, !dbg !2284, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2275, metadata !679), !dbg !2285
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2286
  %11 = load i32, i32* %10, align 8, !dbg !2286, !tbaa !2171
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2287
  %13 = load i32, i32* %12, align 4, !dbg !2287, !tbaa !2233
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2288
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2289
  %16 = load i8*, i8** %15, align 8, !dbg !2289, !tbaa !2260
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2290
  %18 = load i8*, i8** %17, align 8, !dbg !2290, !tbaa !2263
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2291
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2276, metadata !679), !dbg !2292
  store i32 %9, i32* %8, align 4, !dbg !2293, !tbaa !836
  ret i64 %19, !dbg !2294
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2295 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2301, metadata !679), !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2302, metadata !679), !dbg !2365
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2303, metadata !679), !dbg !2366
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2304, metadata !679), !dbg !2367
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2305, metadata !679), !dbg !2368
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2306, metadata !679), !dbg !2369
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2307, metadata !679), !dbg !2370
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2308, metadata !679), !dbg !2371
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2309, metadata !679), !dbg !2372
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2311, metadata !679), !dbg !2373
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2312, metadata !679), !dbg !2374
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2313, metadata !679), !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2314, metadata !679), !dbg !2376
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2315, metadata !679), !dbg !2377
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2378
  %14 = icmp eq i64 %13, 1, !dbg !2379
  %15 = lshr i32 %5, 1, !dbg !2380
  %16 = trunc i32 %15 to i8, !dbg !2380
  %17 = and i8 %16, 1, !dbg !2380
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2317, metadata !679), !dbg !2380
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !679), !dbg !2381
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2319, metadata !679), !dbg !2382
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2320, metadata !679), !dbg !2383
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2384

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2302, metadata !679), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2320, metadata !679), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2319, metadata !679), !dbg !2382
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2317, metadata !679), !dbg !2380
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2304, metadata !679), !dbg !2367
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2315, metadata !679), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2314, metadata !679), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2313, metadata !679), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2312, metadata !679), !dbg !2374
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2309, metadata !679), !dbg !2372
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2308, metadata !679), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2305, metadata !679), !dbg !2368
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
  ], !dbg !2385

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2305, metadata !679), !dbg !2368
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2317, metadata !679), !dbg !2380
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2317, metadata !679), !dbg !2380
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2305, metadata !679), !dbg !2368
  br label %95, !dbg !2386

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2317, metadata !679), !dbg !2380
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2305, metadata !679), !dbg !2368
  %43 = and i8 %36, 1, !dbg !2388
  %44 = icmp eq i8 %43, 0, !dbg !2388
  br i1 %44, label %45, label %95, !dbg !2386

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2390
  br i1 %46, label %95, label %47, !dbg !2394

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2396, !tbaa !847
  br label %95, !dbg !2396

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %28), !dbg !2398
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2308, metadata !679), !dbg !2371
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %28), !dbg !2402
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2309, metadata !679), !dbg !2372
  br label %51, !dbg !2403

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2309, metadata !679), !dbg !2372
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2308, metadata !679), !dbg !2371
  %54 = and i8 %36, 1, !dbg !2404
  %55 = icmp eq i8 %54, 0, !dbg !2404
  br i1 %55, label %56, label %73, !dbg !2406

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2313, metadata !679), !dbg !2375
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2311, metadata !679), !dbg !2373
  %57 = load i8, i8* %52, align 1, !dbg !2407, !tbaa !847
  %58 = icmp eq i8 %57, 0, !dbg !2411
  br i1 %58, label %73, label %59, !dbg !2411

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2413

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2413
  br i1 %64, label %65, label %67, !dbg !2417

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2419
  store i8 %61, i8* %66, align 1, !dbg !2419, !tbaa !847
  br label %67, !dbg !2419

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2311, metadata !679), !dbg !2373
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2313, metadata !679), !dbg !2375
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2313, metadata !679), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2311, metadata !679), !dbg !2373
  %70 = load i8, i8* %69, align 1, !dbg !2407, !tbaa !847
  %71 = icmp eq i8 %70, 0, !dbg !2411
  br i1 %71, label %72, label %60, !dbg !2411, !llvm.loop !2425

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2373

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2315, metadata !679), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2313, metadata !679), !dbg !2375
  %75 = call i64 @strlen(i8* %53) #8, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2314, metadata !679), !dbg !2376
  br label %95, !dbg !2429

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2315, metadata !679), !dbg !2377
  br label %77, !dbg !2430

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2315, metadata !679), !dbg !2377
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2317, metadata !679), !dbg !2380
  br label %79, !dbg !2431

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2317, metadata !679), !dbg !2380
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2315, metadata !679), !dbg !2377
  %82 = and i8 %81, 1, !dbg !2432
  %83 = icmp eq i8 %82, 0, !dbg !2432
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2315, metadata !679), !dbg !2377
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2434
  br label %85, !dbg !2434

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2317, metadata !679), !dbg !2380
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2315, metadata !679), !dbg !2377
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2305, metadata !679), !dbg !2368
  %88 = and i8 %87, 1, !dbg !2435
  %89 = icmp eq i8 %88, 0, !dbg !2435
  br i1 %89, label %90, label %95, !dbg !2437

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2438
  br i1 %91, label %95, label %92, !dbg !2442

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2444, !tbaa !847
  br label %95, !dbg !2444

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2317, metadata !679), !dbg !2380
  br label %95, !dbg !2446

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2447
  unreachable, !dbg !2447

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2317, metadata !679), !dbg !2380
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2315, metadata !679), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2314, metadata !679), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2313, metadata !679), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2309, metadata !679), !dbg !2372
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2308, metadata !679), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2305, metadata !679), !dbg !2368
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2310, metadata !679), !dbg !2448
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
  br label %123, !dbg !2449

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2302, metadata !679), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2320, metadata !679), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2319, metadata !679), !dbg !2382
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2304, metadata !679), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2312, metadata !679), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2310, metadata !679), !dbg !2448
  %132 = icmp eq i64 %127, -1, !dbg !2450
  br i1 %132, label %135, label %133, !dbg !2452

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2453
  br i1 %134, label %597, label %139, !dbg !2455

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2457
  %137 = load i8, i8* %136, align 1, !dbg !2457, !tbaa !847
  %138 = icmp eq i8 %137, 0, !dbg !2459
  br i1 %138, label %597, label %139, !dbg !2455

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2326, metadata !679), !dbg !2460
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2327, metadata !679), !dbg !2461
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2328, metadata !679), !dbg !2462
  br i1 %109, label %140, label %155, !dbg !2463

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2465
  %142 = and i1 %110, %132, !dbg !2467
  br i1 %142, label %143, label %145, !dbg !2467

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #8, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2304, metadata !679), !dbg !2367
  br label %145, !dbg !2469

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2304, metadata !679), !dbg !2367
  %147 = icmp ugt i64 %141, %146, !dbg !2471
  br i1 %147, label %155, label %148, !dbg !2473

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2474
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #8, !dbg !2475
  %151 = icmp ne i32 %150, 0, !dbg !2476
  %152 = or i1 %151, %112, !dbg !2476
  %153 = xor i1 %151, true, !dbg !2476
  %154 = zext i1 %153 to i8, !dbg !2476
  br i1 %152, label %155, label %644, !dbg !2476

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2326, metadata !679), !dbg !2460
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2304, metadata !679), !dbg !2367
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2478
  %159 = load i8, i8* %158, align 1, !dbg !2478, !tbaa !847
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2321, metadata !679), !dbg !2479
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
  ], !dbg !2480

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2481

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2482

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2327, metadata !679), !dbg !2461
  %163 = and i8 %128, 1, !dbg !2487
  %164 = icmp eq i8 %163, 0, !dbg !2487
  %165 = and i1 %114, %164, !dbg !2490
  br i1 %165, label %166, label %182, !dbg !2490

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2492
  br i1 %167, label %168, label %170, !dbg !2497

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2499
  store i8 39, i8* %169, align 1, !dbg !2499, !tbaa !847
  br label %170, !dbg !2499

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2311, metadata !679), !dbg !2373
  %172 = icmp ult i64 %171, %131, !dbg !2503
  br i1 %172, label %173, label %175, !dbg !2507

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2509
  store i8 36, i8* %174, align 1, !dbg !2509, !tbaa !847
  br label %175, !dbg !2509

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2311, metadata !679), !dbg !2373
  %177 = icmp ult i64 %176, %131, !dbg !2513
  br i1 %177, label %178, label %180, !dbg !2517

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2519
  store i8 39, i8* %179, align 1, !dbg !2519, !tbaa !847
  br label %180, !dbg !2519

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2318, metadata !679), !dbg !2381
  br label %182, !dbg !2523

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2311, metadata !679), !dbg !2373
  %185 = icmp ult i64 %183, %131, !dbg !2525
  br i1 %185, label %186, label %188, !dbg !2529

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2531
  store i8 92, i8* %187, align 1, !dbg !2531, !tbaa !847
  br label %188, !dbg !2531

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2311, metadata !679), !dbg !2373
  br i1 %106, label %190, label %476, !dbg !2535

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2537
  %192 = icmp ult i64 %191, %156, !dbg !2539
  br i1 %192, label %193, label %476, !dbg !2540

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2541
  %195 = load i8, i8* %194, align 1, !dbg !2541, !tbaa !847
  %196 = add i8 %195, -48, !dbg !2543
  %197 = icmp ult i8 %196, 10, !dbg !2543
  br i1 %197, label %198, label %476, !dbg !2543

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2544
  br i1 %199, label %200, label %202, !dbg !2549

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2551
  store i8 48, i8* %201, align 1, !dbg !2551, !tbaa !847
  br label %202, !dbg !2551

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2311, metadata !679), !dbg !2373
  %204 = icmp ult i64 %203, %131, !dbg !2555
  br i1 %204, label %205, label %207, !dbg !2559

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2561
  store i8 48, i8* %206, align 1, !dbg !2561, !tbaa !847
  br label %207, !dbg !2561

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2311, metadata !679), !dbg !2373
  br label %476, !dbg !2565

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2566

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2567

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2568

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2570

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2572
  %215 = icmp ult i64 %214, %156, !dbg !2574
  br i1 %215, label %216, label %476, !dbg !2575

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2576
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2578
  %219 = load i8, i8* %218, align 1, !dbg !2578, !tbaa !847
  %220 = icmp eq i8 %219, 63, !dbg !2579
  br i1 %220, label %221, label %476, !dbg !2580

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2582
  %223 = load i8, i8* %222, align 1, !dbg !2582, !tbaa !847
  %224 = sext i8 %223 to i32, !dbg !2582
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
  ], !dbg !2583

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2584

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2321, metadata !679), !dbg !2479
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2310, metadata !679), !dbg !2448
  %227 = icmp ult i64 %125, %131, !dbg !2586
  br i1 %227, label %228, label %230, !dbg !2590

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2592
  store i8 63, i8* %229, align 1, !dbg !2592, !tbaa !847
  br label %230, !dbg !2592

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2594
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2311, metadata !679), !dbg !2373
  %232 = icmp ult i64 %231, %131, !dbg !2596
  br i1 %232, label %233, label %235, !dbg !2600

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2602
  store i8 34, i8* %234, align 1, !dbg !2602, !tbaa !847
  br label %235, !dbg !2602

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2311, metadata !679), !dbg !2373
  %237 = icmp ult i64 %236, %131, !dbg !2606
  br i1 %237, label %238, label %240, !dbg !2610

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2612
  store i8 34, i8* %239, align 1, !dbg !2612, !tbaa !847
  br label %240, !dbg !2612

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2311, metadata !679), !dbg !2373
  %242 = icmp ult i64 %241, %131, !dbg !2616
  br i1 %242, label %243, label %245, !dbg !2620

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2622
  store i8 63, i8* %244, align 1, !dbg !2622, !tbaa !847
  br label %245, !dbg !2622

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2311, metadata !679), !dbg !2373
  br label %476, !dbg !2626

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2325, metadata !679), !dbg !2627
  br label %257, !dbg !2628

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2325, metadata !679), !dbg !2627
  br label %257, !dbg !2629

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2325, metadata !679), !dbg !2627
  br label %255, !dbg !2630

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2325, metadata !679), !dbg !2627
  br label %255, !dbg !2631

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2325, metadata !679), !dbg !2627
  br label %257, !dbg !2632

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2325, metadata !679), !dbg !2627
  br i1 %114, label %253, label %254, !dbg !2633

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2634

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2637

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2325, metadata !679), !dbg !2627
  br i1 %118, label %257, label %644, !dbg !2639

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2325, metadata !679), !dbg !2627
  br i1 %105, label %503, label %476, !dbg !2641

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2642
  br i1 %260, label %261, label %266, !dbg !2644

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2645, !tbaa !847
  %263 = icmp ne i8 %262, 0, !dbg !2647
  %264 = icmp ne i64 %124, 0, !dbg !2648
  %265 = or i1 %264, %263, !dbg !2650
  br i1 %265, label %476, label %272, !dbg !2650

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2651
  %268 = icmp ne i64 %124, 0, !dbg !2648
  %269 = or i1 %268, %267, !dbg !2653
  br i1 %269, label %476, label %272, !dbg !2653

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2648
  br i1 %271, label %272, label %476, !dbg !2655

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2328, metadata !679), !dbg !2462
  br label %273, !dbg !2656

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2328, metadata !679), !dbg !2462
  br i1 %118, label %476, label %644, !dbg !2657

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2319, metadata !679), !dbg !2382
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2328, metadata !679), !dbg !2462
  br i1 %114, label %276, label %476, !dbg !2659

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2660

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2663
  %279 = icmp ne i64 %126, 0, !dbg !2665
  %280 = or i1 %279, %278, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2312, metadata !679), !dbg !2374
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2302, metadata !679), !dbg !2365
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2667
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2302, metadata !679), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2312, metadata !679), !dbg !2374
  %283 = icmp ult i64 %125, %282, !dbg !2668
  br i1 %283, label %284, label %286, !dbg !2672

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2674
  store i8 39, i8* %285, align 1, !dbg !2674, !tbaa !847
  br label %286, !dbg !2674

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2311, metadata !679), !dbg !2373
  %288 = icmp ult i64 %287, %282, !dbg !2678
  br i1 %288, label %289, label %291, !dbg !2682

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2684
  store i8 92, i8* %290, align 1, !dbg !2684, !tbaa !847
  br label %291, !dbg !2684

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2311, metadata !679), !dbg !2373
  %293 = icmp ult i64 %292, %282, !dbg !2688
  br i1 %293, label %294, label %296, !dbg !2692

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2694
  store i8 39, i8* %295, align 1, !dbg !2694, !tbaa !847
  br label %296, !dbg !2694

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !679), !dbg !2381
  br label %476, !dbg !2698

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2699

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2329, metadata !679), !dbg !2700
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2701
  %301 = load i16*, i16** %300, align 8, !dbg !2701, !tbaa !687
  %302 = zext i8 %159 to i64, !dbg !2701
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2701
  %304 = load i16, i16* %303, align 2, !dbg !2701, !tbaa !1569
  %305 = lshr i16 %304, 14, !dbg !2703
  %306 = trunc i16 %305 to i8, !dbg !2703
  %307 = and i8 %306, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2332, metadata !679), !dbg !2704
  br label %368, !dbg !2705

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2706
  store i64 0, i64* %10, align 8, !dbg !2707
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2329, metadata !679), !dbg !2700
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2332, metadata !679), !dbg !2704
  %309 = icmp eq i64 %156, -1, !dbg !2708
  br i1 %309, label %310, label %312, !dbg !2710, !llvm.loop !2711

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #8, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2304, metadata !679), !dbg !2367
  br label %312, !dbg !2715, !llvm.loop !2711

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2704

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2332, metadata !679), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2329, metadata !679), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2304, metadata !679), !dbg !2367
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2716
  %317 = add i64 %315, %124, !dbg !2717
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2718
  %319 = sub i64 %313, %317, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2333, metadata !2720), !dbg !2721
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2350, metadata !2720), !dbg !2722
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2353, metadata !679), !dbg !2724
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2725

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2329, metadata !679), !dbg !2700
  %322 = icmp ugt i64 %313, %317, !dbg !2726
  br i1 %322, label %323, label %351, !dbg !2729

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2730

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2730
  %328 = load i8, i8* %327, align 1, !dbg !2730, !tbaa !847
  %329 = icmp eq i8 %328, 0, !dbg !2732
  br i1 %329, label %348, label %330, !dbg !2733

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2329, metadata !679), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2329, metadata !679), !dbg !2700
  %332 = add i64 %331, %124, !dbg !2736
  %333 = icmp ult i64 %332, %313, !dbg !2726
  br i1 %333, label %324, label %348, !dbg !2729, !llvm.loop !2737

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2739
  %336 = and i1 %116, %335, !dbg !2743
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2354, metadata !679), !dbg !2744
  br i1 %336, label %337, label %355, !dbg !2743

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2745

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2745
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2746
  %342 = load i8, i8* %341, align 1, !dbg !2746, !tbaa !847
  %343 = sext i8 %342 to i32, !dbg !2746
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2747

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2354, metadata !679), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2354, metadata !679), !dbg !2744
  %346 = icmp ult i64 %345, %320, !dbg !2739
  br i1 %346, label %338, label %354, !dbg !2750, !llvm.loop !2752

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2704

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2704

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2704

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2332, metadata !679), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2329, metadata !679), !dbg !2700
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2755
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2756

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2756, !tbaa !836
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2350, metadata !679), !dbg !2722
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2758
  %358 = icmp eq i32 %357, 0, !dbg !2758
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2332, metadata !679), !dbg !2704
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2759
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2332, metadata !679), !dbg !2704
  %360 = add i64 %320, %315, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2329, metadata !679), !dbg !2700
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2332, metadata !679), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2329, metadata !679), !dbg !2700
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2755
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2333, metadata !2720), !dbg !2721
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #8, !dbg !2761
  %362 = icmp eq i32 %361, 0, !dbg !2762
  br i1 %362, label %314, label %363, !dbg !2763, !llvm.loop !2711

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2765

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2765
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2332, metadata !679), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2329, metadata !679), !dbg !2700
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2755
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2765
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2332, metadata !679), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2329, metadata !679), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2304, metadata !679), !dbg !2367
  %372 = and i8 %371, 1, !dbg !2766
  %373 = icmp ne i8 %372, 0, !dbg !2766
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2328, metadata !679), !dbg !2462
  %374 = icmp ult i64 %370, 2, !dbg !2767
  %375 = or i1 %373, %113, !dbg !2768
  %376 = and i1 %374, %375, !dbg !2770
  br i1 %376, label %476, label %377, !dbg !2770

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2361, metadata !679), !dbg !2772
  br label %379, !dbg !2773

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2327, metadata !679), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2326, metadata !679), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2321, metadata !679), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2310, metadata !679), !dbg !2448
  br i1 %375, label %432, label %386, !dbg !2774

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2779

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2327, metadata !679), !dbg !2461
  %388 = and i8 %382, 1, !dbg !2783
  %389 = icmp eq i8 %388, 0, !dbg !2783
  %390 = and i1 %114, %389, !dbg !2786
  br i1 %390, label %391, label %407, !dbg !2786

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2788
  br i1 %392, label %393, label %395, !dbg !2793

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2795
  store i8 39, i8* %394, align 1, !dbg !2795, !tbaa !847
  br label %395, !dbg !2795

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2311, metadata !679), !dbg !2373
  %397 = icmp ult i64 %396, %131, !dbg !2799
  br i1 %397, label %398, label %400, !dbg !2803

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2805
  store i8 36, i8* %399, align 1, !dbg !2805, !tbaa !847
  br label %400, !dbg !2805

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2311, metadata !679), !dbg !2373
  %402 = icmp ult i64 %401, %131, !dbg !2809
  br i1 %402, label %403, label %405, !dbg !2813

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2815
  store i8 39, i8* %404, align 1, !dbg !2815, !tbaa !847
  br label %405, !dbg !2815

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2318, metadata !679), !dbg !2381
  br label %407, !dbg !2819

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2311, metadata !679), !dbg !2373
  %410 = icmp ult i64 %408, %131, !dbg !2821
  br i1 %410, label %411, label %413, !dbg !2825

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2827
  store i8 92, i8* %412, align 1, !dbg !2827, !tbaa !847
  br label %413, !dbg !2827

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2311, metadata !679), !dbg !2373
  %415 = icmp ult i64 %414, %131, !dbg !2831
  br i1 %415, label %416, label %420, !dbg !2835

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2837
  %418 = or i8 %417, 48, !dbg !2837
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2837
  store i8 %418, i8* %419, align 1, !dbg !2837, !tbaa !847
  br label %420, !dbg !2837

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2311, metadata !679), !dbg !2373
  %422 = icmp ult i64 %421, %131, !dbg !2841
  br i1 %422, label %423, label %428, !dbg !2845

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2847
  %425 = and i8 %424, 7, !dbg !2847
  %426 = or i8 %425, 48, !dbg !2847
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2847
  store i8 %426, i8* %427, align 1, !dbg !2847, !tbaa !847
  br label %428, !dbg !2847

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2311, metadata !679), !dbg !2373
  %430 = and i8 %383, 7, !dbg !2851
  %431 = or i8 %430, 48, !dbg !2852
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2321, metadata !679), !dbg !2479
  br label %441, !dbg !2853

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2854
  %434 = icmp eq i8 %433, 0, !dbg !2854
  br i1 %434, label %441, label %435, !dbg !2856

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2857
  br i1 %436, label %437, label %439, !dbg !2862

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2864
  store i8 92, i8* %438, align 1, !dbg !2864, !tbaa !847
  br label %439, !dbg !2864

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2326, metadata !679), !dbg !2460
  br label %441, !dbg !2868

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2327, metadata !679), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2326, metadata !679), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2321, metadata !679), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2311, metadata !679), !dbg !2373
  %447 = add i64 %380, 1, !dbg !2869
  %448 = icmp ugt i64 %378, %447, !dbg !2871
  br i1 %448, label %449, label %541, !dbg !2872

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2873
  %451 = icmp ne i8 %450, 0, !dbg !2873
  %452 = and i8 %446, 1, !dbg !2877
  %453 = icmp eq i8 %452, 0, !dbg !2877
  %454 = and i1 %451, %453, !dbg !2873
  br i1 %454, label %455, label %466, !dbg !2873

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2879
  br i1 %456, label %457, label %459, !dbg !2884

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2886
  store i8 39, i8* %458, align 1, !dbg !2886, !tbaa !847
  br label %459, !dbg !2886

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2311, metadata !679), !dbg !2373
  %461 = icmp ult i64 %460, %131, !dbg !2890
  br i1 %461, label %462, label %464, !dbg !2894

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2896
  store i8 39, i8* %463, align 1, !dbg !2896, !tbaa !847
  br label %464, !dbg !2896

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2898
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !679), !dbg !2381
  br label %466, !dbg !2900

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2311, metadata !679), !dbg !2373
  %469 = icmp ult i64 %467, %131, !dbg !2902
  br i1 %469, label %470, label %472, !dbg !2906

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2908
  store i8 %444, i8* %471, align 1, !dbg !2908, !tbaa !847
  br label %472, !dbg !2908

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2310, metadata !679), !dbg !2448
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2912
  %475 = load i8, i8* %474, align 1, !dbg !2912, !tbaa !847
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2321, metadata !679), !dbg !2479
  br label %379, !dbg !2913, !llvm.loop !2915

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2302, metadata !679), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2328, metadata !679), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2327, metadata !679), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2326, metadata !679), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2321, metadata !679), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2319, metadata !679), !dbg !2382
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2304, metadata !679), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2312, metadata !679), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2310, metadata !679), !dbg !2448
  br i1 %107, label %488, label %487, !dbg !2918

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2920

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2921

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2922
  %491 = zext i8 %490 to i64, !dbg !2922
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2924
  %493 = load i32, i32* %492, align 4, !dbg !2924, !tbaa !836
  %494 = and i8 %483, 31, !dbg !2925
  %495 = zext i8 %494 to i32, !dbg !2926
  %496 = shl i32 1, %495, !dbg !2927
  %497 = and i32 %493, %496, !dbg !2927
  %498 = icmp eq i32 %497, 0, !dbg !2927
  %499 = icmp eq i8 %157, 0, !dbg !2928
  %500 = and i1 %499, %498, !dbg !2929
  br i1 %500, label %542, label %503, !dbg !2929

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2928
  br i1 %502, label %542, label %503, !dbg !2930

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2302, metadata !679), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2328, metadata !679), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2321, metadata !679), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2319, metadata !679), !dbg !2382
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2304, metadata !679), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2312, metadata !679), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2310, metadata !679), !dbg !2448
  br i1 %112, label %513, label %644, !dbg !2932

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2327, metadata !679), !dbg !2461
  %514 = and i8 %508, 1, !dbg !2935
  %515 = icmp eq i8 %514, 0, !dbg !2935
  %516 = and i1 %114, %515, !dbg !2938
  br i1 %516, label %517, label %533, !dbg !2938

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2940
  br i1 %518, label %519, label %521, !dbg !2945

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2947
  store i8 39, i8* %520, align 1, !dbg !2947, !tbaa !847
  br label %521, !dbg !2947

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2311, metadata !679), !dbg !2373
  %523 = icmp ult i64 %522, %512, !dbg !2951
  br i1 %523, label %524, label %526, !dbg !2955

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2957
  store i8 36, i8* %525, align 1, !dbg !2957, !tbaa !847
  br label %526, !dbg !2957

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2311, metadata !679), !dbg !2373
  %528 = icmp ult i64 %527, %512, !dbg !2961
  br i1 %528, label %529, label %531, !dbg !2965

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2967
  store i8 39, i8* %530, align 1, !dbg !2967, !tbaa !847
  br label %531, !dbg !2967

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2318, metadata !679), !dbg !2381
  br label %533, !dbg !2971

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2311, metadata !679), !dbg !2373
  %536 = icmp ult i64 %534, %512, !dbg !2973
  br i1 %536, label %537, label %539, !dbg !2977

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2979
  store i8 92, i8* %538, align 1, !dbg !2979, !tbaa !847
  br label %539, !dbg !2979

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2302, metadata !679), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2328, metadata !679), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2327, metadata !679), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2321, metadata !679), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2319, metadata !679), !dbg !2382
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2304, metadata !679), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2312, metadata !679), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2310, metadata !679), !dbg !2448
  br label %569, !dbg !2983

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2365

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2302, metadata !679), !dbg !2365
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2328, metadata !679), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2327, metadata !679), !dbg !2461
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2321, metadata !679), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2319, metadata !679), !dbg !2382
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2304, metadata !679), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2312, metadata !679), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2310, metadata !679), !dbg !2448
  %553 = and i8 %547, 1, !dbg !2983
  %554 = icmp ne i8 %553, 0, !dbg !2983
  %555 = and i8 %550, 1, !dbg !2987
  %556 = icmp eq i8 %555, 0, !dbg !2987
  %557 = and i1 %554, %556, !dbg !2983
  br i1 %557, label %558, label %569, !dbg !2983

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2989
  br i1 %559, label %560, label %562, !dbg !2994

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2996
  store i8 39, i8* %561, align 1, !dbg !2996, !tbaa !847
  br label %562, !dbg !2996

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2311, metadata !679), !dbg !2373
  %564 = icmp ult i64 %563, %552, !dbg !3000
  br i1 %564, label %565, label %567, !dbg !3004

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3006
  store i8 39, i8* %566, align 1, !dbg !3006, !tbaa !847
  br label %567, !dbg !3006

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3008
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2311, metadata !679), !dbg !2373
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !679), !dbg !2381
  br label %569, !dbg !3010

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2318, metadata !679), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2311, metadata !679), !dbg !2373
  %579 = icmp ult i64 %577, %570, !dbg !3012
  br i1 %579, label %580, label %582, !dbg !3016

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3018
  store i8 %572, i8* %581, align 1, !dbg !3018, !tbaa !847
  br label %582, !dbg !3018

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2311, metadata !679), !dbg !2373
  %584 = and i8 %571, 1, !dbg !3022
  %585 = icmp eq i8 %584, 0, !dbg !3022
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2320, metadata !679), !dbg !2383
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3024
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2320, metadata !679), !dbg !2383
  br label %587, !dbg !3025

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2310, metadata !679), !dbg !2448
  br label %123, !dbg !3028, !llvm.loop !3029

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3032
  %600 = and i1 %114, %599, !dbg !3034
  %601 = xor i1 %600, true, !dbg !3034
  %602 = or i1 %112, %601, !dbg !3034
  br i1 %602, label %603, label %648, !dbg !3034

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3035
  %605 = xor i1 %604, true, !dbg !3035
  %606 = and i8 %129, 1, !dbg !3037
  %607 = icmp eq i8 %606, 0, !dbg !3037
  %608 = or i1 %607, %605, !dbg !3035
  br i1 %608, label %618, label %609, !dbg !3035

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3039
  %611 = icmp eq i8 %610, 0, !dbg !3039
  br i1 %611, label %614, label %612, !dbg !3042

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3043
  br label %659, !dbg !3044

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3045
  %616 = icmp ne i64 %126, 0, !dbg !3047
  %617 = and i1 %616, %615, !dbg !3049
  br i1 %617, label %27, label %618, !dbg !3049

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3050
  %620 = and i1 %619, %112, !dbg !3052
  br i1 %620, label %621, label %638, !dbg !3052

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2313, metadata !679), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2311, metadata !679), !dbg !2373
  %622 = load i8, i8* %100, align 1, !dbg !3053, !tbaa !847
  %623 = icmp eq i8 %622, 0, !dbg !3057
  br i1 %623, label %638, label %624, !dbg !3057

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3059

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3059
  br i1 %629, label %630, label %632, !dbg !3063

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3065
  store i8 %626, i8* %631, align 1, !dbg !3065, !tbaa !847
  br label %632, !dbg !3065

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3067
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2311, metadata !679), !dbg !2373
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2313, metadata !679), !dbg !2375
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2313, metadata !679), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2311, metadata !679), !dbg !2373
  %635 = load i8, i8* %634, align 1, !dbg !3053, !tbaa !847
  %636 = icmp eq i8 %635, 0, !dbg !3057
  br i1 %636, label %637, label %625, !dbg !3057, !llvm.loop !3071

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2373

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2311, metadata !679), !dbg !2373
  %640 = icmp ult i64 %639, %131, !dbg !3074
  br i1 %640, label %641, label %659, !dbg !3076

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3077
  store i8 0, i8* %642, align 1, !dbg !3078, !tbaa !847
  br label %659, !dbg !3077

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2365

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2365

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2365

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2302, metadata !679), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2304, metadata !679), !dbg !2367
  %653 = icmp ne i32 %650, 2, !dbg !3079
  %654 = icmp eq i8 %104, 0, !dbg !3081
  %655 = or i1 %653, %654, !dbg !3083
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2305, metadata !679), !dbg !2368
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3083
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2305, metadata !679), !dbg !2368
  %657 = and i32 %5, -3, !dbg !3084
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3085
  br label %659, !dbg !3086

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3087
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3088 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3092, metadata !679), !dbg !3096
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3093, metadata !679), !dbg !3097
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !3098
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3094, metadata !679), !dbg !3099
  %4 = icmp eq i8* %3, %0, !dbg !3100
  br i1 %4, label %5, label %75, !dbg !3102

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !3103
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3095, metadata !679), !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3105, metadata !679), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3119, metadata !679), !dbg !3124
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3120, metadata !679), !dbg !3125
  %7 = load i8, i8* %6, align 1, !tbaa !847
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3126
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3126

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3129, metadata !679), !dbg !3143
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3141, metadata !679), !dbg !3147
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3142, metadata !679), !dbg !3148
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !847
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3149
  %15 = icmp eq i32 %14, 84, !dbg !3149
  br i1 %15, label %16, label %72, !dbg !3149

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3152, metadata !679), !dbg !3165
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3163, metadata !679), !dbg !3169
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3164, metadata !679), !dbg !3170
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !847
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3171
  %21 = icmp eq i32 %20, 70, !dbg !3171
  br i1 %21, label %22, label %72, !dbg !3171

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3174, metadata !679), !dbg !3186
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3184, metadata !679), !dbg !3190
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3185, metadata !679), !dbg !3191
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !847
  %25 = icmp eq i8 %24, 45, !dbg !3192
  br i1 %25, label %26, label %72, !dbg !3195

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3197, metadata !679), !dbg !3208
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3206, metadata !679), !dbg !3212
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3207, metadata !679), !dbg !3213
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !847
  %29 = icmp eq i8 %28, 56, !dbg !3214
  br i1 %29, label %30, label %72, !dbg !3217

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3219, metadata !679), !dbg !3229
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3227, metadata !679), !dbg !3233
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3228, metadata !679), !dbg !3234
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !847
  %33 = icmp eq i8 %32, 0, !dbg !3235
  br i1 %33, label %34, label %72, !dbg !3238

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3240, !tbaa !847
  %36 = icmp eq i8 %35, 96, !dbg !3241
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0), !dbg !3240
  br label %75, !dbg !3242

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3129, metadata !679), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3141, metadata !679), !dbg !3247
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3142, metadata !679), !dbg !3248
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !847
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3249
  %43 = icmp eq i32 %42, 66, !dbg !3249
  br i1 %43, label %44, label %72, !dbg !3249

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3152, metadata !679), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3163, metadata !679), !dbg !3252
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3164, metadata !679), !dbg !3253
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !847
  %47 = icmp eq i8 %46, 49, !dbg !3254
  br i1 %47, label %48, label %72, !dbg !3256

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3174, metadata !679), !dbg !3258
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3184, metadata !679), !dbg !3260
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3185, metadata !679), !dbg !3261
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !847
  %51 = icmp eq i8 %50, 56, !dbg !3262
  br i1 %51, label %52, label %72, !dbg !3263

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3197, metadata !679), !dbg !3264
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3206, metadata !679), !dbg !3266
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3207, metadata !679), !dbg !3267
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !847
  %55 = icmp eq i8 %54, 48, !dbg !3268
  br i1 %55, label %56, label %72, !dbg !3269

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3219, metadata !679), !dbg !3270
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3227, metadata !679), !dbg !3272
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3228, metadata !679), !dbg !3273
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !847
  %59 = icmp eq i8 %58, 51, !dbg !3274
  br i1 %59, label %60, label %72, !dbg !3275

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3276, metadata !679), !dbg !3285
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3283, metadata !679), !dbg !3289
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3284, metadata !679), !dbg !3290
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !847
  %63 = icmp eq i8 %62, 48, !dbg !3291
  br i1 %63, label %64, label %72, !dbg !3294

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3296, metadata !679), !dbg !3304
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3302, metadata !679), !dbg !3308
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3303, metadata !679), !dbg !3309
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !847
  %67 = icmp eq i8 %66, 0, !dbg !3310
  br i1 %67, label %68, label %72, !dbg !3313

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3314, !tbaa !847
  %70 = icmp eq i8 %69, 96, !dbg !3315
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !3314
  br label %75, !dbg !3316

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3317
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !3318
  br label %75, !dbg !3319

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3320
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3321 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3325, metadata !679), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3326, metadata !679), !dbg !3329
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3327, metadata !679), !dbg !3330
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3331, metadata !679) #11, !dbg !3344
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3336, metadata !679) #11, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3337, metadata !679) #11, !dbg !3347
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3338, metadata !679) #11, !dbg !3348
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3349
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3339, metadata !679) #11, !dbg !3350
  %6 = tail call i32* @__errno_location() #1, !dbg !3351
  %7 = load i32, i32* %6, align 4, !dbg !3351, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3340, metadata !679) #11, !dbg !3352
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3353
  %9 = load i32, i32* %8, align 4, !dbg !3353, !tbaa !2233
  %10 = or i32 %9, 1, !dbg !3354
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3341, metadata !679) #11, !dbg !3355
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3356
  %12 = load i32, i32* %11, align 8, !dbg !3356, !tbaa !2171
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3357
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3358
  %15 = load i8*, i8** %14, align 8, !dbg !3358, !tbaa !2260
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3359
  %17 = load i8*, i8** %16, align 8, !dbg !3359, !tbaa !2263
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3360
  %19 = add i64 %18, 1, !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3342, metadata !679) #11, !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3363, metadata !679) #11, !dbg !3368
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3370
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3343, metadata !679) #11, !dbg !3371
  %21 = load i32, i32* %11, align 8, !dbg !3372, !tbaa !2171
  %22 = load i8*, i8** %14, align 8, !dbg !3373, !tbaa !2260
  %23 = load i8*, i8** %16, align 8, !dbg !3374, !tbaa !2263
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3375
  store i32 %7, i32* %6, align 4, !dbg !3376, !tbaa !836
  ret i8* %20, !dbg !3377
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3332 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3331, metadata !679), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3336, metadata !679), !dbg !3379
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3337, metadata !679), !dbg !3380
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3338, metadata !679), !dbg !3381
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3382
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3382
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3339, metadata !679), !dbg !3383
  %7 = tail call i32* @__errno_location() #1, !dbg !3384
  %8 = load i32, i32* %7, align 4, !dbg !3384, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3340, metadata !679), !dbg !3385
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3386
  %10 = load i32, i32* %9, align 4, !dbg !3386, !tbaa !2233
  %11 = icmp ne i64* %2, null, !dbg !3387
  %12 = xor i1 %11, true, !dbg !3387
  %13 = zext i1 %12 to i32, !dbg !3387
  %14 = or i32 %10, %13, !dbg !3388
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3341, metadata !679), !dbg !3389
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3390
  %16 = load i32, i32* %15, align 8, !dbg !3390, !tbaa !2171
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3391
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3392
  %19 = load i8*, i8** %18, align 8, !dbg !3392, !tbaa !2260
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3393
  %21 = load i8*, i8** %20, align 8, !dbg !3393, !tbaa !2263
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3394
  %23 = add i64 %22, 1, !dbg !3395
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3342, metadata !679), !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3363, metadata !679) #11, !dbg !3397
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3399
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3343, metadata !679), !dbg !3400
  %25 = load i32, i32* %15, align 8, !dbg !3401, !tbaa !2171
  %26 = load i8*, i8** %18, align 8, !dbg !3402, !tbaa !2260
  %27 = load i8*, i8** %20, align 8, !dbg !3403, !tbaa !2263
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3404
  store i32 %8, i32* %7, align 4, !dbg !3405, !tbaa !836
  br i1 %11, label %29, label %30, !dbg !3406

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3407, !tbaa !3409
  br label %30, !dbg !3410

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3411
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3412 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3416, !tbaa !687
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3414, metadata !679), !dbg !3417
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3415, metadata !679), !dbg !3418
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3415, metadata !679), !dbg !3418
  %2 = load i32, i32* @nslots, align 4, !dbg !3419, !tbaa !836
  %3 = icmp sgt i32 %2, 1, !dbg !3423
  br i1 %3, label %4, label %14, !dbg !3424

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3426

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3426
  %8 = load i8*, i8** %7, align 8, !dbg !3426, !tbaa !3427
  tail call void @free(i8* %8) #11, !dbg !3429
  %9 = add nuw i64 %6, 1, !dbg !3430
  %10 = load i32, i32* @nslots, align 4, !dbg !3419, !tbaa !836
  %11 = sext i32 %10 to i64, !dbg !3423
  %12 = icmp slt i64 %9, %11, !dbg !3423
  br i1 %12, label %5, label %13, !dbg !3424, !llvm.loop !3432

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3435

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3435
  %16 = load i8*, i8** %15, align 8, !dbg !3435, !tbaa !3427
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3437
  br i1 %17, label %19, label %18, !dbg !3438

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !3439
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3441, !tbaa !3442
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3443, !tbaa !3427
  br label %19, !dbg !3444

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3445
  br i1 %20, label %23, label %21, !dbg !3447

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3448
  tail call void @free(i8* %22) #11, !dbg !3450
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3451, !tbaa !687
  br label %23, !dbg !3452

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3453, !tbaa !836
  ret void, !dbg !3454
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3455 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3459, metadata !679), !dbg !3461
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3460, metadata !679), !dbg !3462
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3463
  ret i8* %3, !dbg !3464
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3465 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3469, metadata !679), !dbg !3483
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3470, metadata !679), !dbg !3484
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3471, metadata !679), !dbg !3485
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3472, metadata !679), !dbg !3486
  %5 = tail call i32* @__errno_location() #1, !dbg !3487
  %6 = load i32, i32* %5, align 4, !dbg !3487, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3473, metadata !679), !dbg !3488
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3489, !tbaa !687
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3474, metadata !679), !dbg !3490
  %8 = icmp slt i32 %0, 0, !dbg !3491
  br i1 %8, label %9, label %10, !dbg !3493

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3494
  unreachable, !dbg !3494

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3495, !tbaa !836
  %12 = icmp sgt i32 %11, %0, !dbg !3496
  br i1 %12, label %34, label %13, !dbg !3497

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3498
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3499
  br i1 %15, label %16, label %17, !dbg !3501

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3502
  unreachable, !dbg !3502

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3503
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3503
  %20 = add nsw i32 %0, 1, !dbg !3505
  %21 = sext i32 %20 to i64, !dbg !3506
  %22 = shl nsw i64 %21, 4, !dbg !3507
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3508
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3508
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3474, metadata !679), !dbg !3490
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3509, !tbaa !687
  br i1 %14, label %25, label %26, !dbg !3510

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3511, !tbaa.struct !3513
  br label %26, !dbg !3514

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3515, !tbaa !836
  %28 = sext i32 %27 to i64, !dbg !3516
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3516
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3517
  %31 = sub nsw i32 %20, %27, !dbg !3518
  %32 = sext i32 %31 to i64, !dbg !3519
  %33 = shl nsw i64 %32, 4, !dbg !3520
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3517
  store i32 %20, i32* @nslots, align 4, !dbg !3521, !tbaa !836
  br label %34, !dbg !3522

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3474, metadata !679), !dbg !3490
  %36 = sext i32 %0 to i64, !dbg !3523
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3524
  %38 = load i64, i64* %37, align 8, !dbg !3524, !tbaa !3442
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3478, metadata !679), !dbg !3525
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3526
  %40 = load i8*, i8** %39, align 8, !dbg !3526, !tbaa !3427
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3480, metadata !679), !dbg !3527
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3528
  %42 = load i32, i32* %41, align 4, !dbg !3528, !tbaa !2233
  %43 = or i32 %42, 1, !dbg !3529
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3481, metadata !679), !dbg !3530
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3531
  %45 = load i32, i32* %44, align 8, !dbg !3531, !tbaa !2171
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3532
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3533
  %48 = load i8*, i8** %47, align 8, !dbg !3533, !tbaa !2260
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3534
  %50 = load i8*, i8** %49, align 8, !dbg !3534, !tbaa !2263
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3535
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3482, metadata !679), !dbg !3536
  %52 = icmp ugt i64 %38, %51, !dbg !3537
  br i1 %52, label %63, label %53, !dbg !3539

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3478, metadata !679), !dbg !3525
  store i64 %54, i64* %37, align 8, !dbg !3542, !tbaa !3442
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3543
  br i1 %55, label %57, label %56, !dbg !3545

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3546
  br label %57, !dbg !3546

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3363, metadata !679) #11, !dbg !3547
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3549
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3480, metadata !679), !dbg !3527
  store i8* %58, i8** %39, align 8, !dbg !3550, !tbaa !3427
  %59 = load i32, i32* %44, align 8, !dbg !3551, !tbaa !2171
  %60 = load i8*, i8** %47, align 8, !dbg !3552, !tbaa !2260
  %61 = load i8*, i8** %49, align 8, !dbg !3553, !tbaa !2263
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3554
  br label %63, !dbg !3555

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3480, metadata !679), !dbg !3527
  store i32 %6, i32* %5, align 4, !dbg !3556, !tbaa !836
  ret i8* %64, !dbg !3557
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3558 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3562, metadata !679), !dbg !3565
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3563, metadata !679), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3564, metadata !679), !dbg !3567
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3568
  ret i8* %4, !dbg !3569
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3570 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3574, metadata !679), !dbg !3575
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3459, metadata !679) #11, !dbg !3576
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3460, metadata !679) #11, !dbg !3578
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3579
  ret i8* %2, !dbg !3580
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3581 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3585, metadata !679), !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3586, metadata !679), !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3562, metadata !679) #11, !dbg !3589
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3563, metadata !679) #11, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3564, metadata !679) #11, !dbg !3592
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3593
  ret i8* %3, !dbg !3594
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3595 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3603, metadata !3609), !dbg !3610
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3599, metadata !679), !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3600, metadata !679), !dbg !3613
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3601, metadata !679), !dbg !3614
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3615
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3602, metadata !2720), !dbg !3616
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3608, metadata !679) #11, !dbg !3617
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3618
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3618
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3603, metadata !679) #11, !dbg !3610
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3603, metadata !3619) #11, !dbg !3610
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3610
  %8 = icmp eq i32 %1, 10, !dbg !3620
  br i1 %8, label %9, label %10, !dbg !3622

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3623, !noalias !3624
  unreachable, !dbg !3623

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3603, metadata !3619) #11, !dbg !3610
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3627
  store i32 %1, i32* %11, align 8, !dbg !3627, !alias.scope !3624
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3627
  %13 = bitcast i32* %12 to i8*, !dbg !3627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3627
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3628
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3602, metadata !2720), !dbg !3616
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3629
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3630
  ret i8* %14, !dbg !3631
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3632 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3603, metadata !3609), !dbg !3641
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3636, metadata !679), !dbg !3643
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3637, metadata !679), !dbg !3644
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3638, metadata !679), !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3639, metadata !679), !dbg !3646
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3647
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3640, metadata !2720), !dbg !3648
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3608, metadata !679) #11, !dbg !3649
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3650
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3650
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3603, metadata !679) #11, !dbg !3641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3603, metadata !3619) #11, !dbg !3641
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3641
  %9 = icmp eq i32 %1, 10, !dbg !3651
  br i1 %9, label %10, label %11, !dbg !3652

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3653, !noalias !3654
  unreachable, !dbg !3653

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3603, metadata !3619) #11, !dbg !3641
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3657
  store i32 %1, i32* %12, align 8, !dbg !3657, !alias.scope !3654
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3657
  %14 = bitcast i32* %13 to i8*, !dbg !3657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3657
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3640, metadata !2720), !dbg !3648
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3659
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3660
  ret i8* %15, !dbg !3661
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3662 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3603, metadata !3609), !dbg !3668
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3666, metadata !679), !dbg !3671
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3667, metadata !679), !dbg !3672
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3599, metadata !679) #11, !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3600, metadata !679) #11, !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3601, metadata !679) #11, !dbg !3675
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3676
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3602, metadata !2720) #11, !dbg !3677
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3608, metadata !679) #11, !dbg !3678
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3679
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3679
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3603, metadata !679) #11, !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3603, metadata !3619) #11, !dbg !3668
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3668
  %7 = icmp eq i32 %0, 10, !dbg !3680
  br i1 %7, label %8, label %9, !dbg !3681

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3682, !noalias !3683
  unreachable, !dbg !3682

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3603, metadata !3619) #11, !dbg !3668
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3686
  store i32 %0, i32* %10, align 8, !dbg !3686, !alias.scope !3683
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3686
  %12 = bitcast i32* %11 to i8*, !dbg !3686
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3686
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3687
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3602, metadata !2720) #11, !dbg !3677
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3688
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3689
  ret i8* %13, !dbg !3690
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3691 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3603, metadata !3609), !dbg !3698
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3695, metadata !679), !dbg !3701
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3696, metadata !679), !dbg !3702
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3697, metadata !679), !dbg !3703
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3636, metadata !679) #11, !dbg !3704
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3637, metadata !679) #11, !dbg !3705
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3638, metadata !679) #11, !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3639, metadata !679) #11, !dbg !3707
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3708
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3708
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3640, metadata !2720) #11, !dbg !3709
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3608, metadata !679) #11, !dbg !3710
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3711
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3711
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3603, metadata !679) #11, !dbg !3698
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3603, metadata !3619) #11, !dbg !3698
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3698
  %8 = icmp eq i32 %0, 10, !dbg !3712
  br i1 %8, label %9, label %10, !dbg !3713

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3714, !noalias !3715
  unreachable, !dbg !3714

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3603, metadata !3619) #11, !dbg !3698
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3718
  store i32 %0, i32* %11, align 8, !dbg !3718, !alias.scope !3715
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3718
  %13 = bitcast i32* %12 to i8*, !dbg !3718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3718
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3719
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3640, metadata !2720) #11, !dbg !3709
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3720
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3721
  ret i8* %14, !dbg !3722
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3723 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3727, metadata !679), !dbg !3731
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3728, metadata !679), !dbg !3732
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3729, metadata !679), !dbg !3733
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3734
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3734
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3735, !tbaa.struct !3736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3730, metadata !2720), !dbg !3737
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2191, metadata !679), !dbg !3738
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2192, metadata !679), !dbg !3740
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2193, metadata !679), !dbg !3741
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2194, metadata !679), !dbg !3742
  %6 = lshr i8 %2, 5, !dbg !3743
  %7 = zext i8 %6 to i64, !dbg !3743
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3744
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2195, metadata !679), !dbg !3745
  %9 = and i8 %2, 31, !dbg !3746
  %10 = zext i8 %9 to i32, !dbg !3747
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2197, metadata !679), !dbg !3748
  %11 = load i32, i32* %8, align 4, !dbg !3749, !tbaa !836
  %12 = lshr i32 %11, %10, !dbg !3750
  %13 = and i32 %12, 1, !dbg !3751
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2198, metadata !679), !dbg !3752
  %14 = xor i32 %13, 1, !dbg !3753
  %15 = shl i32 %14, %10, !dbg !3754
  %16 = xor i32 %15, %11, !dbg !3755
  store i32 %16, i32* %8, align 4, !dbg !3755, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3730, metadata !2720), !dbg !3737
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3756
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3757
  ret i8* %17, !dbg !3758
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3759 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3763, metadata !679), !dbg !3765
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3764, metadata !679), !dbg !3766
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3727, metadata !679) #11, !dbg !3767
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3728, metadata !679) #11, !dbg !3769
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3729, metadata !679) #11, !dbg !3770
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3771
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3772, !tbaa.struct !3736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3730, metadata !2720) #11, !dbg !3773
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2191, metadata !679) #11, !dbg !3774
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2192, metadata !679) #11, !dbg !3776
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2193, metadata !679) #11, !dbg !3777
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2194, metadata !679) #11, !dbg !3778
  %5 = lshr i8 %1, 5, !dbg !3779
  %6 = zext i8 %5 to i64, !dbg !3779
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3780
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2195, metadata !679) #11, !dbg !3781
  %8 = and i8 %1, 31, !dbg !3782
  %9 = zext i8 %8 to i32, !dbg !3783
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2197, metadata !679) #11, !dbg !3784
  %10 = load i32, i32* %7, align 4, !dbg !3785, !tbaa !836
  %11 = lshr i32 %10, %9, !dbg !3786
  %12 = and i32 %11, 1, !dbg !3787
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2198, metadata !679) #11, !dbg !3788
  %13 = xor i32 %12, 1, !dbg !3789
  %14 = shl i32 %13, %9, !dbg !3790
  %15 = xor i32 %14, %10, !dbg !3791
  store i32 %15, i32* %7, align 4, !dbg !3791, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3730, metadata !2720) #11, !dbg !3773
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3792
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3793
  ret i8* %16, !dbg !3794
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3795 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3797, metadata !679), !dbg !3798
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3763, metadata !679) #11, !dbg !3799
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3764, metadata !679) #11, !dbg !3801
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3727, metadata !679) #11, !dbg !3802
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3728, metadata !679) #11, !dbg !3804
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3729, metadata !679) #11, !dbg !3805
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3806
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3806
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3807, !tbaa.struct !3736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3730, metadata !2720) #11, !dbg !3808
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2191, metadata !679) #11, !dbg !3809
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2192, metadata !679) #11, !dbg !3811
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2193, metadata !679) #11, !dbg !3812
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2194, metadata !679) #11, !dbg !3813
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3814
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2195, metadata !679) #11, !dbg !3815
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2197, metadata !679) #11, !dbg !3816
  %5 = load i32, i32* %4, align 4, !dbg !3817, !tbaa !836
  %6 = or i32 %5, 67108864, !dbg !3818
  store i32 %6, i32* %4, align 4, !dbg !3818, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3730, metadata !2720) #11, !dbg !3808
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3819
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3820
  ret i8* %7, !dbg !3821
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3822 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3824, metadata !679), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3825, metadata !679), !dbg !3827
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3727, metadata !679) #11, !dbg !3828
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3728, metadata !679) #11, !dbg !3830
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3729, metadata !679) #11, !dbg !3831
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3832
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3833, !tbaa.struct !3736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3730, metadata !2720) #11, !dbg !3834
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2191, metadata !679) #11, !dbg !3835
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2192, metadata !679) #11, !dbg !3837
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2193, metadata !679) #11, !dbg !3838
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2194, metadata !679) #11, !dbg !3839
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3840
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2195, metadata !679) #11, !dbg !3841
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2197, metadata !679) #11, !dbg !3842
  %6 = load i32, i32* %5, align 4, !dbg !3843, !tbaa !836
  %7 = or i32 %6, 67108864, !dbg !3844
  store i32 %7, i32* %5, align 4, !dbg !3844, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3730, metadata !2720) #11, !dbg !3834
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3845
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3846
  ret i8* %8, !dbg !3847
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3848 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3603, metadata !3609), !dbg !3854
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3850, metadata !679), !dbg !3856
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3851, metadata !679), !dbg !3857
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3852, metadata !679), !dbg !3858
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3859
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3859
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3608, metadata !679) #11, !dbg !3860
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3861
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3861
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3603, metadata !679) #11, !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3603, metadata !3619) #11, !dbg !3854
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3854
  %9 = icmp eq i32 %1, 10, !dbg !3862
  br i1 %9, label %10, label %11, !dbg !3863

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3864, !noalias !3865
  unreachable, !dbg !3864

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3603, metadata !3619) #11, !dbg !3854
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3868
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3869
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3870
  store i32 %1, i32* %13, align 8, !dbg !3870
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3870
  %15 = bitcast i32* %14 to i8*, !dbg !3870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3853, metadata !2720), !dbg !3871
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2191, metadata !679), !dbg !3872
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2192, metadata !679), !dbg !3874
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2193, metadata !679), !dbg !3875
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2194, metadata !679), !dbg !3876
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3877
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2195, metadata !679), !dbg !3878
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2197, metadata !679), !dbg !3879
  %17 = load i32, i32* %16, align 4, !dbg !3880, !tbaa !836
  %18 = or i32 %17, 67108864, !dbg !3881
  store i32 %18, i32* %16, align 4, !dbg !3881, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3853, metadata !2720), !dbg !3871
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3882
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3883
  ret i8* %19, !dbg !3884
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3885 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3889, metadata !679), !dbg !3893
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3890, metadata !679), !dbg !3894
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3891, metadata !679), !dbg !3895
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3892, metadata !679), !dbg !3896
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3897, metadata !679) #11, !dbg !3907
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3902, metadata !679) #11, !dbg !3909
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3903, metadata !679) #11, !dbg !3910
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3904, metadata !679) #11, !dbg !3911
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3905, metadata !679) #11, !dbg !3912
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3913
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3914, !tbaa.struct !3736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3906, metadata !2720) #11, !dbg !3915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2241, metadata !679) #11, !dbg !3916
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2242, metadata !679) #11, !dbg !3918
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2243, metadata !679) #11, !dbg !3919
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2241, metadata !679) #11, !dbg !3916
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2241, metadata !679) #11, !dbg !3916
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3920
  store i32 10, i32* %7, align 8, !dbg !3921, !tbaa !2171
  %8 = icmp ne i8* %1, null, !dbg !3922
  %9 = icmp ne i8* %2, null, !dbg !3923
  %10 = and i1 %8, %9, !dbg !3924
  br i1 %10, label %12, label %11, !dbg !3924

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3925
  unreachable, !dbg !3925

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3926
  store i8* %1, i8** %13, align 8, !dbg !3927, !tbaa !2260
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3928
  store i8* %2, i8** %14, align 8, !dbg !3929, !tbaa !2263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3906, metadata !2720) #11, !dbg !3915
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3930
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3931
  ret i8* %15, !dbg !3932
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3898 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3897, metadata !679), !dbg !3933
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3902, metadata !679), !dbg !3934
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3903, metadata !679), !dbg !3935
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3904, metadata !679), !dbg !3936
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3905, metadata !679), !dbg !3937
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3938
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3939, !tbaa.struct !3736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3906, metadata !2720), !dbg !3940
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2241, metadata !679) #11, !dbg !3941
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2242, metadata !679) #11, !dbg !3943
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2243, metadata !679) #11, !dbg !3944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2241, metadata !679) #11, !dbg !3941
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2241, metadata !679) #11, !dbg !3941
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3945
  store i32 10, i32* %8, align 8, !dbg !3946, !tbaa !2171
  %9 = icmp ne i8* %1, null, !dbg !3947
  %10 = icmp ne i8* %2, null, !dbg !3948
  %11 = and i1 %9, %10, !dbg !3949
  br i1 %11, label %13, label %12, !dbg !3949

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3950
  unreachable, !dbg !3950

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3951
  store i8* %1, i8** %14, align 8, !dbg !3952, !tbaa !2260
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3953
  store i8* %2, i8** %15, align 8, !dbg !3954, !tbaa !2263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3906, metadata !2720), !dbg !3940
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3955
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3956
  ret i8* %16, !dbg !3957
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3958 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3962, metadata !679), !dbg !3965
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3963, metadata !679), !dbg !3966
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3964, metadata !679), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3889, metadata !679) #11, !dbg !3968
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3890, metadata !679) #11, !dbg !3970
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3891, metadata !679) #11, !dbg !3971
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3892, metadata !679) #11, !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3897, metadata !679) #11, !dbg !3973
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3902, metadata !679) #11, !dbg !3975
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3903, metadata !679) #11, !dbg !3976
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3904, metadata !679) #11, !dbg !3977
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3905, metadata !679) #11, !dbg !3978
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3979
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3979
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3980, !tbaa.struct !3736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3906, metadata !2720) #11, !dbg !3981
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2241, metadata !679) #11, !dbg !3982
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2242, metadata !679) #11, !dbg !3984
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2243, metadata !679) #11, !dbg !3985
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2241, metadata !679) #11, !dbg !3982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2241, metadata !679) #11, !dbg !3982
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3986
  store i32 10, i32* %6, align 8, !dbg !3987, !tbaa !2171
  %7 = icmp ne i8* %0, null, !dbg !3988
  %8 = icmp ne i8* %1, null, !dbg !3989
  %9 = and i1 %7, %8, !dbg !3990
  br i1 %9, label %11, label %10, !dbg !3990

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3991
  unreachable, !dbg !3991

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3992
  store i8* %0, i8** %12, align 8, !dbg !3993, !tbaa !2260
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3994
  store i8* %1, i8** %13, align 8, !dbg !3995, !tbaa !2263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3906, metadata !2720) #11, !dbg !3981
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3996
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3997
  ret i8* %14, !dbg !3998
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3999 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4003, metadata !679), !dbg !4007
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4004, metadata !679), !dbg !4008
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4005, metadata !679), !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4006, metadata !679), !dbg !4010
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3897, metadata !679) #11, !dbg !4011
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3902, metadata !679) #11, !dbg !4013
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3903, metadata !679) #11, !dbg !4014
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3904, metadata !679) #11, !dbg !4015
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3905, metadata !679) #11, !dbg !4016
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4017
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !4017
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4018, !tbaa.struct !3736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3906, metadata !2720) #11, !dbg !4019
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2241, metadata !679) #11, !dbg !4020
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2242, metadata !679) #11, !dbg !4022
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2243, metadata !679) #11, !dbg !4023
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2241, metadata !679) #11, !dbg !4020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2241, metadata !679) #11, !dbg !4020
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4024
  store i32 10, i32* %7, align 8, !dbg !4025, !tbaa !2171
  %8 = icmp ne i8* %0, null, !dbg !4026
  %9 = icmp ne i8* %1, null, !dbg !4027
  %10 = and i1 %8, %9, !dbg !4028
  br i1 %10, label %12, label %11, !dbg !4028

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4029
  unreachable, !dbg !4029

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4030
  store i8* %0, i8** %13, align 8, !dbg !4031, !tbaa !2260
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4032
  store i8* %1, i8** %14, align 8, !dbg !4033, !tbaa !2263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3906, metadata !2720) #11, !dbg !4019
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !4034
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !4035
  ret i8* %15, !dbg !4036
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4037 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4041, metadata !679), !dbg !4044
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4042, metadata !679), !dbg !4045
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4043, metadata !679), !dbg !4046
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4047
  ret i8* %4, !dbg !4048
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4049 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4053, metadata !679), !dbg !4055
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4054, metadata !679), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4041, metadata !679) #11, !dbg !4057
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4042, metadata !679) #11, !dbg !4059
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4043, metadata !679) #11, !dbg !4060
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4061
  ret i8* %3, !dbg !4062
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4063 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4067, metadata !679), !dbg !4069
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4068, metadata !679), !dbg !4070
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4041, metadata !679) #11, !dbg !4071
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4042, metadata !679) #11, !dbg !4073
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4043, metadata !679) #11, !dbg !4074
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4075
  ret i8* %3, !dbg !4076
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4077 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4081, metadata !679), !dbg !4082
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4067, metadata !679) #11, !dbg !4083
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4068, metadata !679) #11, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4041, metadata !679) #11, !dbg !4086
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4042, metadata !679) #11, !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4043, metadata !679) #11, !dbg !4089
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4090
  ret i8* %2, !dbg !4091
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4092 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4137, metadata !679), !dbg !4143
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4138, metadata !679), !dbg !4144
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4139, metadata !679), !dbg !4145
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4140, metadata !679), !dbg !4146
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4141, metadata !679), !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4142, metadata !679), !dbg !4148
  %7 = icmp eq i8* %1, null, !dbg !4149
  br i1 %7, label %10, label %8, !dbg !4151

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !4152
  br label %12, !dbg !4152

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !4153
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #11, !dbg !4154
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !4155
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #11, !dbg !4157
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !4158
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
  ], !dbg !4159

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4160
  unreachable, !dbg !4160

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #11, !dbg !4162
  %20 = load i8*, i8** %4, align 8, !dbg !4162, !tbaa !687
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !4163
  br label %146, !dbg !4165

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #11, !dbg !4166
  %24 = load i8*, i8** %4, align 8, !dbg !4166, !tbaa !687
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4166
  %26 = load i8*, i8** %25, align 8, !dbg !4166, !tbaa !687
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !4167
  br label %146, !dbg !4168

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #11, !dbg !4169
  %30 = load i8*, i8** %4, align 8, !dbg !4169, !tbaa !687
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4169
  %32 = load i8*, i8** %31, align 8, !dbg !4169, !tbaa !687
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4169
  %34 = load i8*, i8** %33, align 8, !dbg !4169, !tbaa !687
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !4170
  br label %146, !dbg !4171

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #11, !dbg !4172
  %38 = load i8*, i8** %4, align 8, !dbg !4172, !tbaa !687
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4172
  %40 = load i8*, i8** %39, align 8, !dbg !4172, !tbaa !687
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4172
  %42 = load i8*, i8** %41, align 8, !dbg !4172, !tbaa !687
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4172
  %44 = load i8*, i8** %43, align 8, !dbg !4172, !tbaa !687
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !4173
  br label %146, !dbg !4174

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #11, !dbg !4175
  %48 = load i8*, i8** %4, align 8, !dbg !4175, !tbaa !687
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4175
  %50 = load i8*, i8** %49, align 8, !dbg !4175, !tbaa !687
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4175
  %52 = load i8*, i8** %51, align 8, !dbg !4175, !tbaa !687
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4175
  %54 = load i8*, i8** %53, align 8, !dbg !4175, !tbaa !687
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4175
  %56 = load i8*, i8** %55, align 8, !dbg !4175, !tbaa !687
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !4176
  br label %146, !dbg !4177

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #11, !dbg !4178
  %60 = load i8*, i8** %4, align 8, !dbg !4178, !tbaa !687
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4178
  %62 = load i8*, i8** %61, align 8, !dbg !4178, !tbaa !687
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4178
  %64 = load i8*, i8** %63, align 8, !dbg !4178, !tbaa !687
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4178
  %66 = load i8*, i8** %65, align 8, !dbg !4178, !tbaa !687
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4178
  %68 = load i8*, i8** %67, align 8, !dbg !4178, !tbaa !687
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4178
  %70 = load i8*, i8** %69, align 8, !dbg !4178, !tbaa !687
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !4179
  br label %146, !dbg !4180

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #11, !dbg !4181
  %74 = load i8*, i8** %4, align 8, !dbg !4181, !tbaa !687
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4181
  %76 = load i8*, i8** %75, align 8, !dbg !4181, !tbaa !687
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4181
  %78 = load i8*, i8** %77, align 8, !dbg !4181, !tbaa !687
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4181
  %80 = load i8*, i8** %79, align 8, !dbg !4181, !tbaa !687
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4181
  %82 = load i8*, i8** %81, align 8, !dbg !4181, !tbaa !687
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4181
  %84 = load i8*, i8** %83, align 8, !dbg !4181, !tbaa !687
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4181
  %86 = load i8*, i8** %85, align 8, !dbg !4181, !tbaa !687
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !4182
  br label %146, !dbg !4183

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #11, !dbg !4184
  %90 = load i8*, i8** %4, align 8, !dbg !4184, !tbaa !687
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4184
  %92 = load i8*, i8** %91, align 8, !dbg !4184, !tbaa !687
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4184
  %94 = load i8*, i8** %93, align 8, !dbg !4184, !tbaa !687
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4184
  %96 = load i8*, i8** %95, align 8, !dbg !4184, !tbaa !687
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4184
  %98 = load i8*, i8** %97, align 8, !dbg !4184, !tbaa !687
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4184
  %100 = load i8*, i8** %99, align 8, !dbg !4184, !tbaa !687
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4184
  %102 = load i8*, i8** %101, align 8, !dbg !4184, !tbaa !687
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4184
  %104 = load i8*, i8** %103, align 8, !dbg !4184, !tbaa !687
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !4185
  br label %146, !dbg !4186

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #11, !dbg !4187
  %108 = load i8*, i8** %4, align 8, !dbg !4187, !tbaa !687
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4187
  %110 = load i8*, i8** %109, align 8, !dbg !4187, !tbaa !687
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4187
  %112 = load i8*, i8** %111, align 8, !dbg !4187, !tbaa !687
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4187
  %114 = load i8*, i8** %113, align 8, !dbg !4187, !tbaa !687
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4187
  %116 = load i8*, i8** %115, align 8, !dbg !4187, !tbaa !687
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4187
  %118 = load i8*, i8** %117, align 8, !dbg !4187, !tbaa !687
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4187
  %120 = load i8*, i8** %119, align 8, !dbg !4187, !tbaa !687
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4187
  %122 = load i8*, i8** %121, align 8, !dbg !4187, !tbaa !687
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4187
  %124 = load i8*, i8** %123, align 8, !dbg !4187, !tbaa !687
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !4188
  br label %146, !dbg !4189

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #11, !dbg !4190
  %128 = load i8*, i8** %4, align 8, !dbg !4190, !tbaa !687
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4190
  %130 = load i8*, i8** %129, align 8, !dbg !4190, !tbaa !687
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4190
  %132 = load i8*, i8** %131, align 8, !dbg !4190, !tbaa !687
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4190
  %134 = load i8*, i8** %133, align 8, !dbg !4190, !tbaa !687
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4190
  %136 = load i8*, i8** %135, align 8, !dbg !4190, !tbaa !687
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4190
  %138 = load i8*, i8** %137, align 8, !dbg !4190, !tbaa !687
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4190
  %140 = load i8*, i8** %139, align 8, !dbg !4190, !tbaa !687
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4190
  %142 = load i8*, i8** %141, align 8, !dbg !4190, !tbaa !687
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4190
  %144 = load i8*, i8** %143, align 8, !dbg !4190, !tbaa !687
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !4191
  br label %146, !dbg !4192

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4193
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4194 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4198, metadata !679), !dbg !4204
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4199, metadata !679), !dbg !4205
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4200, metadata !679), !dbg !4206
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4201, metadata !679), !dbg !4207
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4202, metadata !679), !dbg !4208
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4203, metadata !679), !dbg !4209
  br label %6, !dbg !4210

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4203, metadata !679), !dbg !4209
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4212
  %9 = load i8*, i8** %8, align 8, !dbg !4212, !tbaa !687
  %10 = icmp eq i8* %9, null, !dbg !4215
  %11 = add i64 %7, 1, !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4203, metadata !679), !dbg !4209
  br i1 %10, label %12, label %6, !dbg !4215, !llvm.loop !4219

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4222
  ret void, !dbg !4223
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4224 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4235, metadata !679), !dbg !4243
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4236, metadata !679), !dbg !4244
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4237, metadata !679), !dbg !4245
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4238, metadata !679), !dbg !4246
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4239, metadata !679), !dbg !4247
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4248
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !4248
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4241, metadata !679), !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4240, metadata !679), !dbg !4250
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4251
  %12 = icmp ult i32 %11, 41, !dbg !4251
  br i1 %12, label %13, label %18, !dbg !4251

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4255
  %15 = sext i32 %11 to i64, !dbg !4255
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4255
  %17 = add i32 %11, 8, !dbg !4255
  store i32 %17, i32* %8, align 8, !dbg !4255
  br label %21, !dbg !4255

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4257
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4257
  store i8* %20, i8** %10, align 8, !dbg !4257
  br label %21, !dbg !4257

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4251
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4259
  %25 = load i8*, i8** %24, align 8, !dbg !4259
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4261
  store i8* %25, i8** %26, align 16, !dbg !4262, !tbaa !687
  %27 = icmp eq i8* %25, null, !dbg !4263
  br i1 %27, label %30, label %28, !dbg !4264

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %29 = icmp ult i32 %22, 41, !dbg !4251
  br i1 %29, label %35, label %32, !dbg !4251

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4266
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !4267
  ret void, !dbg !4267

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4257
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4257
  store i8* %34, i8** %10, align 8, !dbg !4257
  br label %40, !dbg !4257

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4255
  %37 = sext i32 %22 to i64, !dbg !4255
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4255
  %39 = add i32 %22, 8, !dbg !4255
  store i32 %39, i32* %8, align 8, !dbg !4255
  br label %40, !dbg !4255

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4251
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4259
  %44 = load i8*, i8** %43, align 8, !dbg !4259
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4261
  store i8* %44, i8** %45, align 8, !dbg !4262, !tbaa !687
  %46 = icmp eq i8* %44, null, !dbg !4263
  br i1 %46, label %30, label %47, !dbg !4264

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %48 = icmp ult i32 %41, 41, !dbg !4251
  br i1 %48, label %52, label %49, !dbg !4251

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4257
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4257
  store i8* %51, i8** %10, align 8, !dbg !4257
  br label %57, !dbg !4257

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4255
  %54 = sext i32 %41 to i64, !dbg !4255
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4255
  %56 = add i32 %41, 8, !dbg !4255
  store i32 %56, i32* %8, align 8, !dbg !4255
  br label %57, !dbg !4255

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4251
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4259
  %61 = load i8*, i8** %60, align 8, !dbg !4259
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4261
  store i8* %61, i8** %62, align 16, !dbg !4262, !tbaa !687
  %63 = icmp eq i8* %61, null, !dbg !4263
  br i1 %63, label %30, label %64, !dbg !4264

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %65 = icmp ult i32 %58, 41, !dbg !4251
  br i1 %65, label %69, label %66, !dbg !4251

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4257
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4257
  store i8* %68, i8** %10, align 8, !dbg !4257
  br label %74, !dbg !4257

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4255
  %71 = sext i32 %58 to i64, !dbg !4255
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4255
  %73 = add i32 %58, 8, !dbg !4255
  store i32 %73, i32* %8, align 8, !dbg !4255
  br label %74, !dbg !4255

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4251
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4259
  %78 = load i8*, i8** %77, align 8, !dbg !4259
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4261
  store i8* %78, i8** %79, align 8, !dbg !4262, !tbaa !687
  %80 = icmp eq i8* %78, null, !dbg !4263
  br i1 %80, label %30, label %81, !dbg !4264

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %82 = icmp ult i32 %75, 41, !dbg !4251
  br i1 %82, label %86, label %83, !dbg !4251

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4257
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4257
  store i8* %85, i8** %10, align 8, !dbg !4257
  br label %91, !dbg !4257

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4255
  %88 = sext i32 %75 to i64, !dbg !4255
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4255
  %90 = add i32 %75, 8, !dbg !4255
  store i32 %90, i32* %8, align 8, !dbg !4255
  br label %91, !dbg !4255

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4251
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4259
  %95 = load i8*, i8** %94, align 8, !dbg !4259
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4261
  store i8* %95, i8** %96, align 16, !dbg !4262, !tbaa !687
  %97 = icmp eq i8* %95, null, !dbg !4263
  br i1 %97, label %30, label %98, !dbg !4264

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %99 = icmp ult i32 %92, 41, !dbg !4251
  br i1 %99, label %103, label %100, !dbg !4251

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4257
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4257
  store i8* %102, i8** %10, align 8, !dbg !4257
  br label %108, !dbg !4257

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4255
  %105 = sext i32 %92 to i64, !dbg !4255
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4255
  %107 = add i32 %92, 8, !dbg !4255
  store i32 %107, i32* %8, align 8, !dbg !4255
  br label %108, !dbg !4255

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4259
  %111 = load i8*, i8** %110, align 8, !dbg !4259
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4261
  store i8* %111, i8** %112, align 8, !dbg !4262, !tbaa !687
  %113 = icmp eq i8* %111, null, !dbg !4263
  br i1 %113, label %30, label %114, !dbg !4264

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %115 = load i8*, i8** %10, align 8, !dbg !4257
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4257
  store i8* %116, i8** %10, align 8, !dbg !4257
  %117 = bitcast i8* %115 to i8**, !dbg !4259
  %118 = load i8*, i8** %117, align 8, !dbg !4259
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4261
  store i8* %118, i8** %119, align 16, !dbg !4262, !tbaa !687
  %120 = icmp eq i8* %118, null, !dbg !4263
  br i1 %120, label %30, label %121, !dbg !4264

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %122 = load i8*, i8** %10, align 8, !dbg !4257
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4257
  store i8* %123, i8** %10, align 8, !dbg !4257
  %124 = bitcast i8* %122 to i8**, !dbg !4259
  %125 = load i8*, i8** %124, align 8, !dbg !4259
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4261
  store i8* %125, i8** %126, align 8, !dbg !4262, !tbaa !687
  %127 = icmp eq i8* %125, null, !dbg !4263
  br i1 %127, label %30, label %128, !dbg !4264

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %129 = load i8*, i8** %10, align 8, !dbg !4257
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4257
  store i8* %130, i8** %10, align 8, !dbg !4257
  %131 = bitcast i8* %129 to i8**, !dbg !4259
  %132 = load i8*, i8** %131, align 8, !dbg !4259
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4261
  store i8* %132, i8** %133, align 16, !dbg !4262, !tbaa !687
  %134 = icmp eq i8* %132, null, !dbg !4263
  br i1 %134, label %30, label %135, !dbg !4264

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %136 = load i8*, i8** %10, align 8, !dbg !4257
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4257
  store i8* %137, i8** %10, align 8, !dbg !4257
  %138 = bitcast i8* %136 to i8**, !dbg !4259
  %139 = load i8*, i8** %138, align 8, !dbg !4259
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4261
  store i8* %139, i8** %140, align 8, !dbg !4262, !tbaa !687
  %141 = icmp eq i8* %139, null, !dbg !4263
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4240, metadata !679), !dbg !4250
  %142 = select i1 %141, i64 9, i64 10, !dbg !4264
  br label %30, !dbg !4264
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4268 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4272, metadata !679), !dbg !4282
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4273, metadata !679), !dbg !4283
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4274, metadata !679), !dbg !4284
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4275, metadata !679), !dbg !4285
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4286
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !4286
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4276, metadata !679), !dbg !4287
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4288
  call void @llvm.va_start(i8* nonnull %6), !dbg !4288
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4289
  call void @llvm.va_end(i8* nonnull %6), !dbg !4290
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !4291
  ret void, !dbg !4291
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4292 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #11, !dbg !4293
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #11, !dbg !4294
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #11, !dbg !4296
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.95, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.96, i64 0, i64 0)) #11, !dbg !4297
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.97, i64 0, i64 0), i32 5) #11, !dbg !4298
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4298, !tbaa !687
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4299
  ret void, !dbg !4300
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4301 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4305, metadata !679), !dbg !4307
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4306, metadata !679), !dbg !4308
  %3 = udiv i64 9223372036854775807, %1, !dbg !4309
  %4 = icmp ult i64 %3, %0, !dbg !4309
  br i1 %4, label %5, label %6, !dbg !4311

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4312
  unreachable, !dbg !4312

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4313
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4314, metadata !679) #11, !dbg !4321
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4323
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4320, metadata !679) #11, !dbg !4324
  %9 = icmp eq i8* %8, null, !dbg !4325
  %10 = icmp ne i64 %7, 0, !dbg !4327
  %11 = and i1 %10, %9, !dbg !4329
  br i1 %11, label %12, label %13, !dbg !4329

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4330
  unreachable, !dbg !4330

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4331
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4315 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4314, metadata !679), !dbg !4332
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4333
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4320, metadata !679), !dbg !4334
  %3 = icmp eq i8* %2, null, !dbg !4335
  %4 = icmp ne i64 %0, 0, !dbg !4336
  %5 = and i1 %4, %3, !dbg !4337
  br i1 %5, label %6, label %7, !dbg !4337

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4338
  unreachable, !dbg !4338

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4339
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4340 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4344, metadata !679), !dbg !4347
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4345, metadata !679), !dbg !4348
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4346, metadata !679), !dbg !4349
  %4 = udiv i64 9223372036854775807, %2, !dbg !4350
  %5 = icmp ult i64 %4, %1, !dbg !4350
  br i1 %5, label %6, label %7, !dbg !4352

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4353
  unreachable, !dbg !4353

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4354
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !679) #11, !dbg !4361
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4360, metadata !679) #11, !dbg !4363
  %9 = icmp eq i64 %8, 0, !dbg !4364
  %10 = icmp ne i8* %0, null, !dbg !4366
  %11 = and i1 %10, %9, !dbg !4368
  br i1 %11, label %12, label %13, !dbg !4368

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4369
  br label %19, !dbg !4371

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4372
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4355, metadata !679) #11, !dbg !4361
  %15 = icmp eq i8* %14, null, !dbg !4373
  %16 = icmp ne i64 %8, 0, !dbg !4375
  %17 = and i1 %16, %15, !dbg !4377
  br i1 %17, label %18, label %19, !dbg !4377

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4378
  unreachable, !dbg !4378

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4379
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4356 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !679), !dbg !4380
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4360, metadata !679), !dbg !4381
  %3 = icmp eq i64 %1, 0, !dbg !4382
  %4 = icmp ne i8* %0, null, !dbg !4383
  %5 = and i1 %4, %3, !dbg !4384
  br i1 %5, label %6, label %7, !dbg !4384

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4385
  br label %13, !dbg !4386

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4387
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4355, metadata !679), !dbg !4380
  %9 = icmp eq i8* %8, null, !dbg !4388
  %10 = icmp ne i64 %1, 0, !dbg !4389
  %11 = and i1 %10, %9, !dbg !4390
  br i1 %11, label %12, label %13, !dbg !4390

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4391
  unreachable, !dbg !4391

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4392
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !624 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !629, metadata !679), !dbg !4393
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !630, metadata !679), !dbg !4394
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !631, metadata !679), !dbg !4395
  %4 = load i64, i64* %1, align 8, !dbg !4396, !tbaa !3409
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !632, metadata !679), !dbg !4397
  %5 = icmp eq i8* %0, null, !dbg !4398
  br i1 %5, label %6, label %13, !dbg !4400

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4401
  br i1 %7, label %8, label %17, !dbg !4404

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4405
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !632, metadata !679), !dbg !4397
  %10 = icmp ugt i64 %2, 128, !dbg !4407
  %11 = zext i1 %10 to i64, !dbg !4407
  %12 = add nuw nsw i64 %9, %11, !dbg !4408
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !632, metadata !679), !dbg !4397
  br label %17, !dbg !4409

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4410
  %15 = icmp ugt i64 %14, %4, !dbg !4413
  br i1 %15, label %20, label %16, !dbg !4414

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4415
  unreachable, !dbg !4415

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !632, metadata !679), !dbg !4397
  store i64 %18, i64* %1, align 8, !dbg !4416, !tbaa !3409
  %19 = mul i64 %18, %2, !dbg !4417
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !679) #11, !dbg !4418
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4360, metadata !679) #11, !dbg !4420
  br label %27, !dbg !4421

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4422
  %22 = add i64 %4, 1, !dbg !4423
  %23 = add i64 %22, %21, !dbg !4424
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !632, metadata !679), !dbg !4397
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !632, metadata !679), !dbg !4397
  store i64 %23, i64* %1, align 8, !dbg !4416, !tbaa !3409
  %24 = mul i64 %23, %2, !dbg !4417
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !679) #11, !dbg !4418
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4360, metadata !679) #11, !dbg !4420
  %25 = icmp eq i64 %24, 0, !dbg !4425
  br i1 %25, label %26, label %27, !dbg !4421

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4426
  br label %34, !dbg !4427

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4428
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4355, metadata !679) #11, !dbg !4418
  %30 = icmp eq i8* %29, null, !dbg !4429
  %31 = icmp ne i64 %28, 0, !dbg !4430
  %32 = and i1 %31, %30, !dbg !4431
  br i1 %32, label %33, label %34, !dbg !4431

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4432
  unreachable, !dbg !4432

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4433
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4434 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4436, metadata !679), !dbg !4437
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4314, metadata !679) #11, !dbg !4438
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4440
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4320, metadata !679) #11, !dbg !4441
  %3 = icmp eq i8* %2, null, !dbg !4442
  %4 = icmp ne i64 %0, 0, !dbg !4443
  %5 = and i1 %4, %3, !dbg !4444
  br i1 %5, label %6, label %7, !dbg !4444

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4445
  unreachable, !dbg !4445

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4446
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4447 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4451, metadata !679), !dbg !4453
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4452, metadata !679), !dbg !4454
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !629, metadata !679) #11, !dbg !4455
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !630, metadata !679) #11, !dbg !4457
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !631, metadata !679) #11, !dbg !4458
  %3 = load i64, i64* %1, align 8, !dbg !4459, !tbaa !3409
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !632, metadata !679) #11, !dbg !4460
  %4 = icmp eq i8* %0, null, !dbg !4461
  br i1 %4, label %5, label %8, !dbg !4462

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4463
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !632, metadata !679) #11, !dbg !4460
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !632, metadata !679) #11, !dbg !4460
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4464
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !632, metadata !679) #11, !dbg !4460
  store i64 %7, i64* %1, align 8, !dbg !4465, !tbaa !3409
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !679) #11, !dbg !4466
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4360, metadata !679) #11, !dbg !4468
  br label %17, !dbg !4469

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4470
  br i1 %9, label %11, label %10, !dbg !4471

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4472
  unreachable, !dbg !4472

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4473
  %13 = add i64 %3, 1, !dbg !4474
  %14 = add i64 %13, %12, !dbg !4475
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !632, metadata !679) #11, !dbg !4460
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !632, metadata !679) #11, !dbg !4460
  store i64 %14, i64* %1, align 8, !dbg !4465, !tbaa !3409
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4355, metadata !679) #11, !dbg !4466
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4360, metadata !679) #11, !dbg !4468
  %15 = icmp eq i64 %14, 0, !dbg !4476
  br i1 %15, label %16, label %17, !dbg !4469

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4477
  br label %24, !dbg !4478

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4479
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4355, metadata !679) #11, !dbg !4466
  %20 = icmp eq i8* %19, null, !dbg !4480
  %21 = icmp ne i64 %18, 0, !dbg !4481
  %22 = and i1 %21, %20, !dbg !4482
  br i1 %22, label %23, label %24, !dbg !4482

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4483
  unreachable, !dbg !4483

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4484
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4485 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4487, metadata !679), !dbg !4488
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4314, metadata !679) #11, !dbg !4489
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4491
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4320, metadata !679) #11, !dbg !4492
  %3 = icmp eq i8* %2, null, !dbg !4493
  %4 = icmp ne i64 %0, 0, !dbg !4494
  %5 = and i1 %4, %3, !dbg !4495
  br i1 %5, label %6, label %7, !dbg !4495

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4496
  unreachable, !dbg !4496

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4497
  ret i8* %2, !dbg !4498
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4499 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4501, metadata !679), !dbg !4504
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4502, metadata !679), !dbg !4505
  %3 = udiv i64 9223372036854775807, %1, !dbg !4506
  %4 = icmp ult i64 %3, %0, !dbg !4506
  br i1 %4, label %8, label %5, !dbg !4508

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4509
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4503, metadata !679), !dbg !4511
  %7 = icmp eq i8* %6, null, !dbg !4512
  br i1 %7, label %8, label %9, !dbg !4513

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4515
  unreachable, !dbg !4515

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4516
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4517 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4521, metadata !679), !dbg !4523
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4522, metadata !679), !dbg !4524
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4314, metadata !679) #11, !dbg !4525
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4527
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4320, metadata !679) #11, !dbg !4528
  %4 = icmp eq i8* %3, null, !dbg !4529
  %5 = icmp ne i64 %1, 0, !dbg !4530
  %6 = and i1 %5, %4, !dbg !4531
  br i1 %6, label %7, label %8, !dbg !4531

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4532
  unreachable, !dbg !4532

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4533
  ret i8* %3, !dbg !4534
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4535 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4537, metadata !679), !dbg !4538
  %2 = tail call i64 @strlen(i8* %0) #8, !dbg !4539
  %3 = add i64 %2, 1, !dbg !4540
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4521, metadata !679) #11, !dbg !4541
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4522, metadata !679) #11, !dbg !4544
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4314, metadata !679) #11, !dbg !4545
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4547
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4320, metadata !679) #11, !dbg !4548
  %5 = icmp eq i8* %4, null, !dbg !4549
  %6 = icmp ne i64 %3, 0, !dbg !4550
  %7 = and i1 %6, %5, !dbg !4551
  br i1 %7, label %8, label %9, !dbg !4551

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4552
  unreachable, !dbg !4552

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4553
  ret i8* %4, !dbg !4554
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4555 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4557, !tbaa !836
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0), i32 5) #11, !dbg !4558
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* %2) #11, !dbg !4559
  tail call void @abort() #14, !dbg !4561
  unreachable, !dbg !4561
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4562 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4570, metadata !679), !dbg !4580
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4571, metadata !679), !dbg !4581
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4572, metadata !679), !dbg !4582
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4573, metadata !679), !dbg !4583
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4574, metadata !679), !dbg !4584
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4575, metadata !679), !dbg !4585
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4576, metadata !679), !dbg !4586
  %9 = bitcast i64* %8 to i8*, !dbg !4587
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #11, !dbg !4587
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !4579, metadata !2720), !dbg !4588
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11, !dbg !4589
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4577, metadata !679), !dbg !4590
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !4591

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1, !dbg !4592
  br label %26, !dbg !4591

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4596, !tbaa !3409
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4579, metadata !679), !dbg !4588
  %15 = icmp ult i64 %14, %2, !dbg !4600
  %16 = icmp ugt i64 %14, %3, !dbg !4601
  %17 = or i1 %15, %16, !dbg !4603
  br i1 %17, label %18, label %35, !dbg !4603

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4577, metadata !679), !dbg !4590
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4579, metadata !679), !dbg !4588
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4604
  %20 = tail call i32* @__errno_location() #1, !dbg !4607
  %21 = select i1 %19, i32 75, i32 34, !dbg !4608
  store i32 %21, i32* %20, align 4, !tbaa !836
  br label %26, !dbg !4609

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #1, !dbg !4610
  store i32 75, i32* %23, align 4, !dbg !4612, !tbaa !836
  br label %26, !dbg !4610

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #1, !dbg !4613
  store i32 0, i32* %25, align 4, !dbg !4615, !tbaa !836
  br label %26, !dbg !4613

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !4592
  %28 = icmp ne i32 %6, 0, !dbg !4616
  %29 = select i1 %28, i32 %6, i32 1, !dbg !4616
  %30 = load i32, i32* %27, align 4, !dbg !4592, !tbaa !836
  %31 = icmp eq i32 %30, 22, !dbg !4617
  %32 = select i1 %31, i32 0, i32 %30, !dbg !4592
  %33 = call i8* @quote(i8* %0) #11, !dbg !4618
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i64 0, i64 0), i8* %5, i8* %33) #11, !dbg !4619
  %34 = load i64, i64* %8, align 8, !tbaa !3409
  br label %35, !dbg !4621

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !4622
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4579, metadata !679), !dbg !4588
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #11, !dbg !4623
  ret i64 %36, !dbg !4624
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4625 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4629, metadata !679), !dbg !4635
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4630, metadata !679), !dbg !4636
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4631, metadata !679), !dbg !4637
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4632, metadata !679), !dbg !4638
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4633, metadata !679), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4634, metadata !679), !dbg !4640
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4641
  ret i64 %7, !dbg !4642
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4643 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4649, metadata !679), !dbg !4667
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4650, metadata !679), !dbg !4668
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4651, metadata !679), !dbg !4669
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4652, metadata !679), !dbg !4670
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4653, metadata !679), !dbg !4671
  %7 = bitcast i8** %6 to i8*, !dbg !4672
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11, !dbg !4672
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4657, metadata !679), !dbg !4673
  %8 = icmp ult i32 %2, 37, !dbg !4674
  br i1 %8, label %10, label %9, !dbg !4674

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.116, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14, !dbg !4677
  unreachable, !dbg !4677

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !4679
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4655, metadata !679), !dbg !4680
  %12 = tail call i32* @__errno_location() #1, !dbg !4681
  store i32 0, i32* %12, align 4, !dbg !4682, !tbaa !836
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4658, metadata !679), !dbg !4683
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !4684
  %14 = load i16*, i16** %13, align 8, !tbaa !687
  br label %15, !dbg !4686

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !847
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4661, metadata !679), !dbg !4687
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4658, metadata !679), !dbg !4683
  %18 = zext i8 %17 to i64, !dbg !4684
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4684
  %20 = load i16, i16* %19, align 2, !dbg !4684, !tbaa !1569
  %21 = and i16 %20, 8192, !dbg !4684
  %22 = icmp eq i16 %21, 0, !dbg !4688
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4689
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4658, metadata !679), !dbg !4683
  br i1 %22, label %24, label %15, !dbg !4688, !llvm.loop !4690

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !4679
  %26 = icmp eq i8 %17, 45, !dbg !4692
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4694, metadata !679) #11, !dbg !4704
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4702, metadata !679) #11, !dbg !4704
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4703, metadata !679) #11, !dbg !4704
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !4706
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4656, metadata !679), !dbg !4707
  %29 = load i8*, i8** %25, align 8, !dbg !4708, !tbaa !687
  %30 = icmp eq i8* %29, %0, !dbg !4710
  br i1 %30, label %31, label %40, !dbg !4711

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4712
  br i1 %32, label %265, label %33, !dbg !4715

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4716, !tbaa !847
  %35 = icmp eq i8 %34, 0, !dbg !4716
  br i1 %35, label %265, label %36, !dbg !4718

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4716
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #11, !dbg !4719
  %39 = icmp eq i8* %38, null, !dbg !4719
  br i1 %39, label %265, label %47, !dbg !4721

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4723, !tbaa !836
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4725

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4657, metadata !679), !dbg !4673
  br label %43, !dbg !4726

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4657, metadata !679), !dbg !4673
  %45 = icmp eq i8* %4, null, !dbg !4728
  br i1 %45, label %46, label %47, !dbg !4730

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4656, metadata !679), !dbg !4707
  store i64 %28, i64* %3, align 8, !dbg !4731, !tbaa !3409
  br label %265, !dbg !4733

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4734, !tbaa !847
  %51 = icmp eq i8 %50, 0, !dbg !4735
  br i1 %51, label %262, label %52, !dbg !4736

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !4734
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4662, metadata !679), !dbg !4737
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4665, metadata !679), !dbg !4738
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #11, !dbg !4739
  %55 = icmp eq i8* %54, null, !dbg !4739
  br i1 %55, label %56, label %58, !dbg !4742

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4656, metadata !679), !dbg !4707
  store i64 %49, i64* %3, align 8, !dbg !4744, !tbaa !3409
  %57 = or i32 %48, 2, !dbg !4746
  br label %265, !dbg !4747

; <label>:58:                                     ; preds = %52
  switch i32 %53, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !4748

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #11, !dbg !4749
  %61 = icmp eq i8* %60, null, !dbg !4749
  br i1 %61, label %72, label %62, !dbg !4753

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4755
  %64 = load i8, i8* %63, align 1, !dbg !4755, !tbaa !847
  %65 = sext i8 %64 to i32, !dbg !4755
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4756

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4757
  %68 = load i8, i8* %67, align 1, !dbg !4757, !tbaa !847
  %69 = icmp eq i8 %68, 66, !dbg !4760
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4665, metadata !679), !dbg !4738
  %70 = select i1 %69, i64 3, i64 1, !dbg !4761
  br label %72, !dbg !4761

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4662, metadata !679), !dbg !4737
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4665, metadata !679), !dbg !4738
  br label %72, !dbg !4762

; <label>:72:                                     ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  switch i32 %53, label %251 [
    i32 98, label %75
    i32 66, label %80
    i32 99, label %253
    i32 69, label %85
    i32 71, label %111
    i32 103, label %111
    i32 107, label %125
    i32 75, label %125
    i32 77, label %131
    i32 109, label %131
    i32 80, label %141
    i32 84, label %163
    i32 116, label %163
    i32 119, label %181
    i32 89, label %187
    i32 90, label %221
  ], !dbg !4763

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4764, metadata !679), !dbg !4770
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4773
  %77 = shl i64 %49, 9, !dbg !4775
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4776
  %79 = zext i1 %76 to i32, !dbg !4776
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4666, metadata !679), !dbg !4777
  br label %253, !dbg !4778

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4764, metadata !679), !dbg !4779
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4781
  %82 = shl i64 %49, 10, !dbg !4782
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4783
  %84 = zext i1 %81 to i32, !dbg !4783
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4666, metadata !679), !dbg !4777
  br label %253, !dbg !4784

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4793
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4795
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4795
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4793
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !4796
  %88 = mul i64 %49, %73, !dbg !4798
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4799
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  %90 = icmp ult i64 %86, %89, !dbg !4796
  %91 = mul i64 %89, %73, !dbg !4798
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4799
  %93 = or i1 %90, %87, !dbg !4800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  %94 = icmp ult i64 %86, %92, !dbg !4796
  %95 = mul i64 %92, %73, !dbg !4798
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4799
  %97 = or i1 %94, %93, !dbg !4800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  %98 = icmp ult i64 %86, %96, !dbg !4796
  %99 = mul i64 %96, %73, !dbg !4798
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4799
  %101 = or i1 %98, %97, !dbg !4800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  %102 = icmp ult i64 %86, %100, !dbg !4796
  %103 = mul i64 %100, %73, !dbg !4798
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4799
  %105 = or i1 %102, %101, !dbg !4800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  %106 = icmp ult i64 %86, %104, !dbg !4796
  %107 = mul i64 %104, %73, !dbg !4798
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4799
  %109 = or i1 %106, %105, !dbg !4800
  %110 = zext i1 %109 to i32, !dbg !4800
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4793
  br label %253, !dbg !4777

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4801
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4803
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4803
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4801
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !4804
  %114 = mul i64 %49, %73, !dbg !4806
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4807
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4785, metadata !679), !dbg !4801
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4785, metadata !679), !dbg !4801
  %116 = icmp ult i64 %112, %115, !dbg !4804
  %117 = mul i64 %115, %73, !dbg !4806
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4807
  %119 = or i1 %116, %113, !dbg !4808
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4785, metadata !679), !dbg !4801
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4785, metadata !679), !dbg !4801
  %120 = icmp ult i64 %112, %118, !dbg !4804
  %121 = mul i64 %118, %73, !dbg !4806
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4807
  %123 = or i1 %120, %119, !dbg !4808
  %124 = zext i1 %123 to i32, !dbg !4808
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4785, metadata !679), !dbg !4801
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4785, metadata !679), !dbg !4801
  br label %253, !dbg !4777

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4785, metadata !679), !dbg !4809
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4811
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4811
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4785, metadata !679), !dbg !4809
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !4812
  %128 = mul i64 %49, %73, !dbg !4814
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4815
  %130 = zext i1 %127 to i32, !dbg !4815
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4792, metadata !679), !dbg !4811
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4792, metadata !679), !dbg !4811
  br label %253, !dbg !4777

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4785, metadata !679), !dbg !4816
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4818
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4818
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4785, metadata !679), !dbg !4816
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !4819
  %134 = mul i64 %49, %73, !dbg !4821
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4822
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4785, metadata !679), !dbg !4816
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4785, metadata !679), !dbg !4816
  %136 = icmp ult i64 %132, %135, !dbg !4819
  %137 = mul i64 %135, %73, !dbg !4821
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4822
  %139 = or i1 %136, %133, !dbg !4823
  %140 = zext i1 %139 to i32, !dbg !4823
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4785, metadata !679), !dbg !4816
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4785, metadata !679), !dbg !4816
  br label %253, !dbg !4777

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4824
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4826
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4826
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4785, metadata !679), !dbg !4824
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !4827
  %144 = mul i64 %49, %73, !dbg !4829
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4830
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  %146 = icmp ult i64 %142, %145, !dbg !4827
  %147 = mul i64 %145, %73, !dbg !4829
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4830
  %149 = or i1 %146, %143, !dbg !4831
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  %150 = icmp ult i64 %142, %148, !dbg !4827
  %151 = mul i64 %148, %73, !dbg !4829
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4830
  %153 = or i1 %150, %149, !dbg !4831
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  %154 = icmp ult i64 %142, %152, !dbg !4827
  %155 = mul i64 %152, %73, !dbg !4829
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4830
  %157 = or i1 %154, %153, !dbg !4831
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  %158 = icmp ult i64 %142, %156, !dbg !4827
  %159 = mul i64 %156, %73, !dbg !4829
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4830
  %161 = or i1 %158, %157, !dbg !4831
  %162 = zext i1 %161 to i32, !dbg !4831
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4824
  br label %253, !dbg !4777

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4832
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4834
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4834
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4785, metadata !679), !dbg !4832
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4835
  %166 = mul i64 %49, %73, !dbg !4837
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4838
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4832
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4832
  %168 = icmp ult i64 %164, %167, !dbg !4835
  %169 = mul i64 %167, %73, !dbg !4837
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4838
  %171 = or i1 %168, %165, !dbg !4839
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4832
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4832
  %172 = icmp ult i64 %164, %170, !dbg !4835
  %173 = mul i64 %170, %73, !dbg !4837
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4838
  %175 = or i1 %172, %171, !dbg !4839
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4832
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4832
  %176 = icmp ult i64 %164, %174, !dbg !4835
  %177 = mul i64 %174, %73, !dbg !4837
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4838
  %179 = or i1 %176, %175, !dbg !4839
  %180 = zext i1 %179 to i32, !dbg !4839
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4832
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4785, metadata !679), !dbg !4832
  br label %253, !dbg !4777

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4764, metadata !679), !dbg !4840
  %182 = icmp slt i64 %49, 0, !dbg !4842
  %183 = shl i64 %49, 1, !dbg !4843
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4844
  %185 = lshr i64 %49, 63, !dbg !4844
  %186 = trunc i64 %185 to i32, !dbg !4844
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4666, metadata !679), !dbg !4777
  br label %253, !dbg !4845

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4785, metadata !679), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4848
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4848
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4785, metadata !679), !dbg !4846
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4849
  %190 = mul i64 %49, %73, !dbg !4851
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4852
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  %192 = icmp ult i64 %188, %191, !dbg !4849
  %193 = mul i64 %191, %73, !dbg !4851
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4852
  %195 = or i1 %192, %189, !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  %196 = icmp ult i64 %188, %194, !dbg !4849
  %197 = mul i64 %194, %73, !dbg !4851
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4852
  %199 = or i1 %196, %195, !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  %200 = icmp ult i64 %188, %198, !dbg !4849
  %201 = mul i64 %198, %73, !dbg !4851
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4852
  %203 = or i1 %200, %199, !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  %204 = icmp ult i64 %188, %202, !dbg !4849
  %205 = mul i64 %202, %73, !dbg !4851
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4852
  %207 = or i1 %204, %203, !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  %208 = icmp ult i64 %188, %206, !dbg !4849
  %209 = mul i64 %206, %73, !dbg !4851
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4852
  %211 = or i1 %208, %207, !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  %212 = icmp ult i64 %188, %210, !dbg !4849
  %213 = mul i64 %210, %73, !dbg !4851
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4852
  %215 = or i1 %212, %211, !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  %216 = icmp ult i64 %188, %214, !dbg !4849
  %217 = mul i64 %214, %73, !dbg !4851
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4852
  %219 = or i1 %216, %215, !dbg !4853
  %220 = zext i1 %219 to i32, !dbg !4853
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4846
  br label %253, !dbg !4777

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4856
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4792, metadata !679), !dbg !4856
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4785, metadata !679), !dbg !4854
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !4857
  %224 = mul i64 %49, %73, !dbg !4859
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4860
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  %226 = icmp ult i64 %222, %225, !dbg !4857
  %227 = mul i64 %225, %73, !dbg !4859
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4860
  %229 = or i1 %226, %223, !dbg !4861
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  %230 = icmp ult i64 %222, %228, !dbg !4857
  %231 = mul i64 %228, %73, !dbg !4859
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4860
  %233 = or i1 %230, %229, !dbg !4861
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  %234 = icmp ult i64 %222, %232, !dbg !4857
  %235 = mul i64 %232, %73, !dbg !4859
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4860
  %237 = or i1 %234, %233, !dbg !4861
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  %238 = icmp ult i64 %222, %236, !dbg !4857
  %239 = mul i64 %236, %73, !dbg !4859
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4860
  %241 = or i1 %238, %237, !dbg !4861
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  %242 = icmp ult i64 %222, %240, !dbg !4857
  %243 = mul i64 %240, %73, !dbg !4859
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4860
  %245 = or i1 %242, %241, !dbg !4861
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  %246 = icmp ult i64 %222, %244, !dbg !4857
  %247 = mul i64 %244, %73, !dbg !4859
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4860
  %249 = or i1 %246, %245, !dbg !4861
  %250 = zext i1 %249 to i32, !dbg !4861
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4785, metadata !679), !dbg !4854
  br label %253, !dbg !4777

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4656, metadata !679), !dbg !4707
  store i64 %49, i64* %3, align 8, !dbg !4862, !tbaa !3409
  %252 = or i32 %48, 2, !dbg !4863
  br label %265, !dbg !4864

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4666, metadata !679), !dbg !4777
  %256 = or i32 %255, %48, !dbg !4865
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4657, metadata !679), !dbg !4673
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4866
  store i8* %257, i8** %25, align 8, !dbg !4866, !tbaa !687
  %258 = load i8, i8* %257, align 1, !dbg !4867, !tbaa !847
  %259 = icmp eq i8 %258, 0, !dbg !4867
  %260 = or i32 %256, 2, !dbg !4869
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4657, metadata !679), !dbg !4673
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4870
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4657, metadata !679), !dbg !4673
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4657, metadata !679), !dbg !4673
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4657, metadata !679), !dbg !4673
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4656, metadata !679), !dbg !4707
  store i64 %263, i64* %3, align 8, !dbg !4871, !tbaa !3409
  br label %265, !dbg !4872

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11, !dbg !4873
  ret i32 %266, !dbg !4873
}

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4874 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4877, metadata !679), !dbg !4883
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4878, metadata !679), !dbg !4884
  %3 = icmp eq i64 %0, 0, !dbg !4885
  %4 = icmp eq i64 %1, 0, !dbg !4886
  %5 = or i1 %3, %4, !dbg !4888
  br i1 %5, label %12, label %6, !dbg !4888

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4889
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4880, metadata !679), !dbg !4890
  %8 = udiv i64 %7, %1, !dbg !4891
  %9 = icmp eq i64 %8, %0, !dbg !4893
  br i1 %9, label %12, label %10, !dbg !4894

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4895
  store i32 12, i32* %11, align 4, !dbg !4897, !tbaa !836
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4877, metadata !679), !dbg !4883
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4878, metadata !679), !dbg !4884
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4898
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4879, metadata !679), !dbg !4899
  br label %16, !dbg !4900

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4901
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4902 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4947, metadata !679), !dbg !4951
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4948, metadata !679), !dbg !4952
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4950, metadata !679), !dbg !4953
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4954
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4949, metadata !679), !dbg !4955
  %3 = icmp slt i32 %2, 0, !dbg !4956
  br i1 %3, label %4, label %6, !dbg !4958

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4959
  br label %24, !dbg !4960

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4961
  %8 = icmp eq i32 %7, 0, !dbg !4961
  br i1 %8, label %13, label %9, !dbg !4963

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4964
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4966
  %12 = icmp eq i64 %11, -1, !dbg !4968
  br i1 %12, label %16, label %13, !dbg !4969

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4970
  %15 = icmp eq i32 %14, 0, !dbg !4970
  br i1 %15, label %16, label %18, !dbg !4971

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4948, metadata !679), !dbg !4952
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4973
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4950, metadata !679), !dbg !4953
  br label %24, !dbg !4974

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4975
  %20 = load i32, i32* %19, align 4, !dbg !4975, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4948, metadata !679), !dbg !4952
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4948, metadata !679), !dbg !4952
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4973
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4950, metadata !679), !dbg !4953
  %22 = icmp eq i32 %20, 0, !dbg !4976
  br i1 %22, label %24, label %23, !dbg !4974

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4978, !tbaa !836
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4950, metadata !679), !dbg !4953
  br label %24, !dbg !4980

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4981
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4982 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5027, metadata !679), !dbg !5028
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5029
  br i1 %2, label %6, label %3, !dbg !5031

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5032
  %5 = icmp eq i32 %4, 0, !dbg !5032
  br i1 %5, label %6, label %8, !dbg !5034

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5036
  br label %17, !dbg !5037

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5038, metadata !679) #11, !dbg !5043
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5045
  %10 = load i32, i32* %9, align 8, !dbg !5045, !tbaa !5047
  %11 = and i32 %10, 256, !dbg !5048
  %12 = icmp eq i32 %11, 0, !dbg !5048
  br i1 %12, label %15, label %13, !dbg !5049

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !5050
  br label %15, !dbg !5050

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5051
  br label %17, !dbg !5052

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5053
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5054 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5099, metadata !679), !dbg !5105
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5100, metadata !679), !dbg !5106
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5101, metadata !679), !dbg !5107
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5108
  %5 = load i8*, i8** %4, align 8, !dbg !5108, !tbaa !1146
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5109
  %7 = load i8*, i8** %6, align 8, !dbg !5109, !tbaa !1145
  %8 = icmp eq i8* %5, %7, !dbg !5110
  br i1 %8, label %9, label %28, !dbg !5111

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5112
  %11 = load i8*, i8** %10, align 8, !dbg !5112, !tbaa !1094
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5114
  %13 = load i8*, i8** %12, align 8, !dbg !5114, !tbaa !5115
  %14 = icmp eq i8* %11, %13, !dbg !5116
  br i1 %14, label %15, label %28, !dbg !5117

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5118
  %17 = load i8*, i8** %16, align 8, !dbg !5118, !tbaa !5119
  %18 = icmp eq i8* %17, null, !dbg !5120
  br i1 %18, label %19, label %28, !dbg !5121

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5123
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5124
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5102, metadata !679), !dbg !5126
  %22 = icmp eq i64 %21, -1, !dbg !5127
  br i1 %22, label %30, label %23, !dbg !5129

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5130
  %25 = load i32, i32* %24, align 8, !dbg !5131, !tbaa !5047
  %26 = and i32 %25, -17, !dbg !5131
  store i32 %26, i32* %24, align 8, !dbg !5131, !tbaa !5047
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5132
  store i64 %21, i64* %27, align 8, !dbg !5133, !tbaa !5134
  br label %30, !dbg !5135

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5136
  br label %30, !dbg !5137

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5138
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5139 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5156, metadata !679), !dbg !5165
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5157, metadata !679), !dbg !5166
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5158, metadata !679), !dbg !5167
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5159, metadata !679), !dbg !5168
  %6 = bitcast i32* %5 to i8*, !dbg !5169
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !5169
  %7 = icmp eq i32* %0, null, !dbg !5170
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5156, metadata !679), !dbg !5165
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5172
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5156, metadata !679), !dbg !5165
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !5173
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5160, metadata !679), !dbg !5174
  %10 = icmp ugt i64 %9, -3, !dbg !5175
  %11 = icmp ne i64 %2, 0, !dbg !5176
  %12 = and i1 %11, %10, !dbg !5178
  br i1 %12, label %13, label %18, !dbg !5178

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !5179
  br i1 %14, label %18, label %15, !dbg !5181

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5183, !tbaa !847
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5162, metadata !679), !dbg !5184
  %17 = zext i8 %16 to i32, !dbg !5185
  store i32 %17, i32* %8, align 4, !dbg !5186, !tbaa !836
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !5187
  ret i64 %19, !dbg !5187
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5188 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5233, metadata !679), !dbg !5238
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !5239
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5240, metadata !679), !dbg !5243
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5245
  %4 = load i32, i32* %3, align 8, !dbg !5245, !tbaa !5047
  %5 = and i32 %4, 32, !dbg !5245
  %6 = icmp eq i32 %5, 0, !dbg !5246
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !5247
  %8 = icmp ne i32 %7, 0, !dbg !5248
  br i1 %6, label %9, label %19, !dbg !5249

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5251
  %11 = icmp ne i64 %2, 0, !dbg !5251
  %12 = or i1 %11, %10, !dbg !5251
  %13 = sext i1 %8 to i32, !dbg !5251
  br i1 %12, label %22, label %14, !dbg !5251

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5253
  %16 = load i32, i32* %15, align 4, !dbg !5253, !tbaa !836
  %17 = icmp ne i32 %16, 9, !dbg !5255
  %18 = sext i1 %17 to i32, !dbg !5255
  br label %22, !dbg !5255

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5257

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5259
  store i32 0, i32* %21, align 4, !dbg !5261, !tbaa !836
  br label %22, !dbg !5259

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5262
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5263 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5266, metadata !679), !dbg !5286
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5267, metadata !679), !dbg !5287
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !5288
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5268, metadata !679), !dbg !5289
  %3 = icmp eq i8* %2, null, !dbg !5290
  br i1 %3, label %15, label %4, !dbg !5291

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5276, metadata !679), !dbg !5292
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5277, metadata !679), !dbg !5293
  %5 = load i8, i8* %2, align 1, !dbg !5294, !tbaa !847
  %6 = icmp eq i8 %5, 67, !dbg !5296
  br i1 %6, label %7, label %11, !dbg !5299

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5301
  %9 = load i8, i8* %8, align 1, !dbg !5301, !tbaa !847
  %10 = icmp eq i8 %9, 0, !dbg !5304
  br i1 %10, label %14, label %11, !dbg !5306

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5282, metadata !679), !dbg !5308
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0)) #11, !dbg !5309
  %13 = icmp eq i32 %12, 0, !dbg !5311
  br i1 %13, label %14, label %15, !dbg !5313

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5267, metadata !679), !dbg !5287
  br label %15, !dbg !5315

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5316
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5317 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5329, metadata !679), !dbg !5403
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5396, metadata !679), !dbg !5405
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !5406
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5321, metadata !679), !dbg !5407
  %4 = icmp eq i8* %3, null, !dbg !5408
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), i8* %3, !dbg !5410
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5321, metadata !679), !dbg !5407
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5411, !tbaa !687
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5343, metadata !679) #11, !dbg !5412
  %7 = icmp eq i8* %6, null, !dbg !5413
  br i1 %7, label %8, label %127, !dbg !5414

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.135, i64 0, i64 0)) #11, !dbg !5415
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5344, metadata !679) #11, !dbg !5416
  %10 = icmp eq i8* %9, null, !dbg !5417
  br i1 %10, label %14, label %11, !dbg !5419

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5420, !tbaa !847
  %13 = icmp eq i8 %12, 0, !dbg !5422
  br i1 %13, label %14, label %15, !dbg !5423

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5425

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.136, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5344, metadata !679) #11, !dbg !5416
  %17 = tail call i64 @strlen(i8* nonnull %16) #8, !dbg !5426
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5347, metadata !679) #11, !dbg !5427
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5349, metadata !679) #11, !dbg !5428
  %18 = icmp eq i64 %17, 0, !dbg !5429
  br i1 %18, label %24, label %19, !dbg !5430

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5431
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5431
  %22 = load i8, i8* %21, align 1, !dbg !5431, !tbaa !847
  %23 = icmp ne i8 %22, 47, !dbg !5433
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5434
  %27 = add i64 %17, 14, !dbg !5435
  %28 = add i64 %27, %26, !dbg !5436
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !5437
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5346, metadata !679) #11, !dbg !5438
  %30 = icmp eq i8* %29, null, !dbg !5439
  br i1 %30, label %125, label %31, !dbg !5439

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !5440
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5443

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5444, !tbaa !847
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5446
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.137, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5447
  br label %37, !dbg !5448

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5446
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.137, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5447
  br label %37, !dbg !5448

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !5449
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5351, metadata !679) #11, !dbg !5450
  %39 = icmp slt i32 %38, 0, !dbg !5451
  br i1 %39, label %123, label %40, !dbg !5452

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.138, i64 0, i64 0)) #11, !dbg !5453
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5352, metadata !679) #11, !dbg !5454
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5455
  br i1 %42, label %48, label %43, !dbg !5456

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5457

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !5458
  br label %123, !dbg !5460

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5393, metadata !679) #11, !dbg !5457
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5394, metadata !679) #11, !dbg !5461
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !5462
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !5463
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5464, metadata !679) #11, !dbg !5469
  %53 = load i8*, i8** %46, align 8, !dbg !5471, !tbaa !1145
  %54 = load i8*, i8** %47, align 8, !dbg !5471, !tbaa !1146
  %55 = icmp ult i8* %53, %54, !dbg !5471
  br i1 %55, label %58, label %56, !dbg !5471, !prof !1099

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5472
  br label %62, !dbg !5472

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5474
  store i8* %59, i8** %46, align 8, !dbg !5474, !tbaa !1145
  %60 = load i8, i8* %53, align 1, !dbg !5474, !tbaa !847
  %61 = zext i8 %60 to i32, !dbg !5474
  br label %62, !dbg !5474

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5476
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5395, metadata !679) #11, !dbg !5478
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5479

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5480

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5464, metadata !679) #11, !dbg !5480
  %66 = load i8*, i8** %46, align 8, !dbg !5484, !tbaa !1145
  %67 = load i8*, i8** %47, align 8, !dbg !5484, !tbaa !1146
  %68 = icmp ult i8* %66, %67, !dbg !5484
  br i1 %68, label %71, label %69, !dbg !5484, !prof !1099

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5485
  br label %75, !dbg !5485

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5486
  store i8* %72, i8** %46, align 8, !dbg !5486, !tbaa !1145
  %73 = load i8, i8* %66, align 1, !dbg !5486, !tbaa !847
  %74 = zext i8 %73 to i32, !dbg !5486
  br label %75, !dbg !5486

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5487
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5395, metadata !679) #11, !dbg !5478
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5488, !llvm.loop !5490

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !5493
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.139, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !5494
  %80 = icmp slt i32 %79, 2, !dbg !5496
  br i1 %80, label %115, label %81, !dbg !5497

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #8, !dbg !5498
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5400, metadata !679) #11, !dbg !5499
  %83 = call i64 @strlen(i8* nonnull %45) #8, !dbg !5500
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5401, metadata !679) #11, !dbg !5501
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5402, metadata !679) #11, !dbg !5502
  %84 = icmp eq i64 %51, 0, !dbg !5503
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5505

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5394, metadata !679) #11, !dbg !5461
  %89 = add i64 %86, 2, !dbg !5506
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !5508
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5393, metadata !679) #11, !dbg !5457
  br label %95, !dbg !5509

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5510
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5394, metadata !679) #11, !dbg !5461
  %93 = add i64 %92, 1, !dbg !5512
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !5513
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5393, metadata !679) #11, !dbg !5457
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5393, metadata !679) #11, !dbg !5457
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5394, metadata !679) #11, !dbg !5461
  %98 = icmp eq i8* %97, null, !dbg !5514
  br i1 %98, label %99, label %100, !dbg !5516

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5394, metadata !679) #11, !dbg !5461
  call void @free(i8* %52) #11, !dbg !5517
  br label %116, !dbg !5519

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5520
  %102 = xor i64 %83, -1, !dbg !5521
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5521
  %104 = xor i64 %82, -1, !dbg !5522
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5522
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5523, metadata !679) #11, !dbg !5531
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5530, metadata !679) #11, !dbg !5531
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !5533
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !5534
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5523, metadata !679) #11, !dbg !5535
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5530, metadata !679) #11, !dbg !5535
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !5537
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !5538
  br label %111, !dbg !5539

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5457

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5393, metadata !679) #11, !dbg !5457
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5394, metadata !679) #11, !dbg !5461
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5539
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5539
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5457

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5457

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5393, metadata !679) #11, !dbg !5457
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5394, metadata !679) #11, !dbg !5461
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5539
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5539
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !5540
  %120 = icmp eq i64 %117, 0, !dbg !5541
  br i1 %120, label %123, label %121, !dbg !5543

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5544
  store i8 0, i8* %122, align 1, !dbg !5546, !tbaa !847
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5343, metadata !679) #11, !dbg !5412
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5343, metadata !679) #11, !dbg !5412
  call void @free(i8* %29) #11, !dbg !5547
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5343, metadata !679) #11, !dbg !5412
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5548, !tbaa !687
  br label %127, !dbg !5549

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5322, metadata !679), !dbg !5550
  %129 = load i8, i8* %128, align 1, !dbg !5551, !tbaa !847
  %130 = icmp eq i8 %129, 0, !dbg !5552
  br i1 %130, label %157, label %131, !dbg !5553

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5555

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !5555
  %136 = icmp eq i32 %135, 0, !dbg !5556
  br i1 %136, label %143, label %137, !dbg !5557

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5558
  br i1 %138, label %139, label %147, !dbg !5560

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5561
  %141 = load i8, i8* %140, align 1, !dbg !5561, !tbaa !847
  %142 = icmp eq i8 %141, 0, !dbg !5563
  br i1 %142, label %143, label %147, !dbg !5564

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #8, !dbg !5566
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5568
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5569
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5321, metadata !679), !dbg !5407
  br label %157, !dbg !5570

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #8, !dbg !5571
  %149 = add i64 %148, 1, !dbg !5572
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5573
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5322, metadata !679), !dbg !5550
  %151 = call i64 @strlen(i8* %150) #8, !dbg !5574
  %152 = add i64 %151, 1, !dbg !5575
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5576
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5322, metadata !679), !dbg !5550
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5322, metadata !679), !dbg !5550
  %154 = load i8, i8* %153, align 1, !dbg !5551, !tbaa !847
  %155 = icmp eq i8 %154, 0, !dbg !5552
  br i1 %155, label %156, label %132, !dbg !5553, !llvm.loop !5577

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5407

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5321, metadata !679), !dbg !5407
  %159 = load i8, i8* %158, align 1, !dbg !5580, !tbaa !847
  %160 = icmp eq i8 %159, 0, !dbg !5582
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0), i8* %158, !dbg !5583
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5321, metadata !679), !dbg !5407
  ret i8* %161, !dbg !5584
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !175, !181, !189, !608, !196, !203, !611, !254, !619, !636, !638, !649, !653, !655, !657, !659, !661, !664, !666, !263}
!llvm.ident = !{!669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669, !669}
!llvm.module.flags = !{!670, !671, !672, !673}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "max_width", scope: !2, file: !3, line: 190, type: !59, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !63)
!3 = !DIFile(filename: "src/fmt.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !28}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 45, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!23 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!24 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!25 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!26 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!27 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 46, size: 32, elements: !30)
!29 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!31 = !DIEnumerator(name: "_ISupper", value: 256)
!32 = !DIEnumerator(name: "_ISlower", value: 512)
!33 = !DIEnumerator(name: "_ISalpha", value: 1024)
!34 = !DIEnumerator(name: "_ISdigit", value: 2048)
!35 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!36 = !DIEnumerator(name: "_ISspace", value: 8192)
!37 = !DIEnumerator(name: "_ISprint", value: 16384)
!38 = !DIEnumerator(name: "_ISgraph", value: 32768)
!39 = !DIEnumerator(name: "_ISblank", value: 1)
!40 = !DIEnumerator(name: "_IScntrl", value: 2)
!41 = !DIEnumerator(name: "_ISpunct", value: 4)
!42 = !DIEnumerator(name: "_ISalnum", value: 8)
!43 = !{!44, !45, !47, !48, !51, !53, !56, !58, !55, !59, !60, !61}
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 62, baseType: !50)
!49 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "COST", file: !3, line: 64, baseType: !62)
!62 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!63 = !{!64, !67, !69, !71, !73, !0, !75, !77, !79, !81, !83, !113, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !150, !152, !171}
!64 = !DIGlobalVariableExpression(var: !65)
!65 = distinct !DIGlobalVariable(name: "crown", scope: !2, file: !3, line: 174, type: !66, isLocal: true, isDefinition: true)
!66 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "tagged", scope: !2, file: !3, line: 177, type: !66, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "split", scope: !2, file: !3, line: 180, type: !66, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "uniform", scope: !2, file: !3, line: 183, type: !66, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "prefix", scope: !2, file: !3, line: 186, type: !56, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "prefix_full_length", scope: !2, file: !3, line: 195, type: !59, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "prefix_lead_space", scope: !2, file: !3, line: 198, type: !59, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80)
!80 = distinct !DIGlobalVariable(name: "prefix_length", scope: !2, file: !3, line: 201, type: !59, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "goal_width", scope: !2, file: !3, line: 204, type: !59, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "infomap", scope: !85, file: !86, line: 632, type: !110, isLocal: true, isDefinition: true)
!85 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !86, file: !86, line: 630, type: !87, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !89)
!86 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !DISubroutineType(types: !88)
!88 = !{null, !56}
!89 = !{!90, !91, !92, !99, !101, !102, !103, !106, !107, !109}
!90 = !DILocalVariable(name: "program", arg: 1, scope: !85, file: !86, line: 630, type: !56)
!91 = !DILocalVariable(name: "node", scope: !85, file: !86, line: 642, type: !56)
!92 = !DILocalVariable(name: "map_prog", scope: !85, file: !86, line: 643, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !85, file: !86, line: 632, size: 128, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !95, file: !86, line: 632, baseType: !56, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !95, file: !86, line: 632, baseType: !56, size: 64, offset: 64)
!99 = !DILocalVariable(name: "__s1_len", scope: !100, file: !86, line: 645, type: !48)
!100 = distinct !DILexicalBlock(scope: !85, file: !86, line: 645, column: 33)
!101 = !DILocalVariable(name: "__s2_len", scope: !100, file: !86, line: 645, type: !48)
!102 = !DILocalVariable(name: "lc_messages", scope: !85, file: !86, line: 655, type: !56)
!103 = !DILocalVariable(name: "__s1_len", scope: !104, file: !86, line: 656, type: !48)
!104 = distinct !DILexicalBlock(scope: !105, file: !86, line: 656, column: 22)
!105 = distinct !DILexicalBlock(scope: !85, file: !86, line: 656, column: 7)
!106 = !DILocalVariable(name: "__s2_len", scope: !104, file: !86, line: 656, type: !48)
!107 = !DILocalVariable(name: "__s2", scope: !108, file: !86, line: 656, type: !53)
!108 = distinct !DILexicalBlock(scope: !104, file: !86, line: 656, column: 22)
!109 = !DILocalVariable(name: "__result", scope: !108, file: !86, line: 656, type: !59)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 896, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 7)
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 302, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 2560, elements: !125)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !118, line: 104, size: 256, elements: !119)
!118 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !{!120, !121, !122, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !118, line: 106, baseType: !56, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !117, file: !118, line: 109, baseType: !59, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !117, file: !118, line: 110, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !117, file: !118, line: 111, baseType: !59, size: 32, offset: 192)
!125 = !{!126}
!126 = !DISubrange(count: 10)
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "tabs", scope: !2, file: !3, line: 232, type: !66, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "other_indent", scope: !2, file: !3, line: 241, type: !59, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "in_column", scope: !2, file: !3, line: 209, type: !59, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134)
!134 = distinct !DIGlobalVariable(name: "next_prefix_indent", scope: !2, file: !3, line: 255, type: !59, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "next_char", scope: !2, file: !3, line: 251, type: !59, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "last_line_length", scope: !2, file: !3, line: 260, type: !59, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "out_column", scope: !2, file: !3, line: 212, type: !59, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "prefix_indent", scope: !2, file: !3, line: 235, type: !59, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "first_indent", scope: !2, file: !3, line: 238, type: !59, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146)
!146 = distinct !DIGlobalVariable(name: "parabuf", scope: !2, file: !3, line: 216, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 40000, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 5000)
!150 = !DIGlobalVariableExpression(var: !151)
!151 = distinct !DIGlobalVariable(name: "wptr", scope: !2, file: !3, line: 219, type: !45, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153)
!153 = distinct !DIGlobalVariable(name: "unused_word_type", scope: !2, file: !3, line: 223, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 320000, elements: !169)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "WORD", file: !3, line: 129, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Word", file: !3, line: 131, size: 320, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !156, file: !3, line: 136, baseType: !56, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !156, file: !3, line: 137, baseType: !59, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !156, file: !3, line: 138, baseType: !59, size: 32, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "paren", scope: !156, file: !3, line: 139, baseType: !44, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !156, file: !3, line: 140, baseType: !44, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !156, file: !3, line: 141, baseType: !44, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !156, file: !3, line: 142, baseType: !44, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !156, file: !3, line: 146, baseType: !59, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "best_cost", scope: !156, file: !3, line: 147, baseType: !61, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next_break", scope: !156, file: !3, line: 148, baseType: !168, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!169 = !{!170}
!170 = !DISubrange(count: 1000)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "word_limit", scope: !2, file: !3, line: 228, type: !168, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "Version", scope: !175, file: !176, line: 2, type: !56, isLocal: false, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, globals: !178)
!176 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !{}
!178 = !{!173}
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "file_name", scope: !181, file: !186, line: 36, type: !56, isLocal: true, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, globals: !183)
!182 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !{!179, !184}
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !181, file: !186, line: 46, type: !66, isLocal: true, isDefinition: true)
!186 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!187 = !DIGlobalVariableExpression(var: !188)
!188 = distinct !DIGlobalVariable(name: "exit_failure", scope: !189, file: !192, line: 24, type: !193, isLocal: false, isDefinition: true)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, globals: !191)
!190 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!191 = !{!187}
!192 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "program_name", scope: !196, file: !200, line: 33, type: !56, isLocal: false, isDefinition: true)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !198, globals: !199)
!197 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!198 = !{!47, !45}
!199 = !{!194}
!200 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!201 = !DIGlobalVariableExpression(var: !202)
!202 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !203, file: !215, line: 77, type: !248, isLocal: false, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !205, retainedTypes: !211, globals: !212)
!204 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!205 = !{!5, !206, !28}
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!209 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!210 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!211 = !{!59, !60, !48, !45}
!212 = !{!201, !213, !218, !230, !232, !237, !244, !246}
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !203, file: !215, line: 93, type: !216, isLocal: false, isDefinition: true)
!215 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 320, elements: !125)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !203, file: !215, line: 1043, type: !220, isLocal: false, isDefinition: true)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !215, line: 57, size: 448, elements: !221)
!221 = !{!222, !223, !224, !228, !229}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !220, file: !215, line: 60, baseType: !5, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !215, line: 63, baseType: !59, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !220, file: !215, line: 67, baseType: !225, size: 256, offset: 64)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 8)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !220, file: !215, line: 70, baseType: !56, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !220, file: !215, line: 73, baseType: !56, size: 64, offset: 384)
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !203, file: !215, line: 108, type: !220, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233)
!233 = distinct !DIGlobalVariable(name: "slot0", scope: !203, file: !215, line: 834, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 256)
!237 = !DIGlobalVariableExpression(var: !238)
!238 = distinct !DIGlobalVariable(name: "slotvec", scope: !203, file: !215, line: 837, type: !239, isLocal: true, isDefinition: true)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !215, line: 826, size: 128, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !240, file: !215, line: 828, baseType: !48, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !240, file: !215, line: 829, baseType: !45, size: 64, offset: 64)
!244 = !DIGlobalVariableExpression(var: !245)
!245 = distinct !DIGlobalVariable(name: "nslots", scope: !203, file: !215, line: 835, type: !59, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247)
!247 = distinct !DIGlobalVariable(name: "slotvec0", scope: !203, file: !215, line: 836, type: !240, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 704, elements: !250)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!250 = !{!251}
!251 = !DISubrange(count: 11)
!252 = !DIGlobalVariableExpression(var: !253)
!253 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !254, file: !257, line: 26, type: !258, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, globals: !256)
!255 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!256 = !{!252}
!257 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 376, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 47)
!261 = !DIGlobalVariableExpression(var: !262)
!262 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !263, file: !606, line: 120, type: !607, isLocal: true, isDefinition: true)
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !265, retainedTypes: !604, globals: !605)
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
!604 = !{!47, !45, !58}
!605 = !{!261}
!606 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !610)
!609 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = !{!19}
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !613, retainedTypes: !618)
!612 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!613 = !{!614}
!614 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !615, line: 41, size: 32, elements: !616)
!615 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = !{!617}
!617 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!618 = !{!47}
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !621, retainedTypes: !635)
!620 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = !{!622}
!622 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !624, file: !623, line: 192, size: 32, elements: !633)
!623 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = distinct !DISubprogram(name: "x2nrealloc", scope: !623, file: !623, line: 180, type: !625, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !628)
!625 = !DISubroutineType(types: !626)
!626 = !{!47, !47, !627, !48}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!628 = !{!629, !630, !631, !632}
!629 = !DILocalVariable(name: "p", arg: 1, scope: !624, file: !623, line: 180, type: !47)
!630 = !DILocalVariable(name: "pn", arg: 2, scope: !624, file: !623, line: 180, type: !627)
!631 = !DILocalVariable(name: "s", arg: 3, scope: !624, file: !623, line: 180, type: !48)
!632 = !DILocalVariable(name: "n", scope: !624, file: !623, line: 182, type: !48)
!633 = !{!634}
!634 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!635 = !{!48, !45, !47}
!636 = distinct !DICompileUnit(language: DW_LANG_C99, file: !637, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177)
!637 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !640)
!639 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!640 = !{!641}
!641 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !642, line: 26, size: 32, elements: !643)
!642 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!643 = !{!644, !645, !646, !647, !648}
!644 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!645 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!646 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!647 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!648 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !651, retainedTypes: !652)
!650 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!651 = !{!641, !28}
!652 = !{!59, !60, !45}
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !618)
!654 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177)
!656 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!657 = distinct !DICompileUnit(language: DW_LANG_C99, file: !658, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !618)
!658 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !618)
!660 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !663)
!662 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!663 = !{!48}
!664 = distinct !DICompileUnit(language: DW_LANG_C99, file: !665, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177)
!665 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !668)
!667 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = !{!48, !51, !53, !56}
!669 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!670 = !{i32 2, !"Dwarf Version", i32 4}
!671 = !{i32 2, !"Debug Info Version", i32 3}
!672 = !{i32 1, !"PIC Level", i32 2}
!673 = !{i32 1, !"PIE Level", i32 2}
!674 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 263, type: !675, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !59}
!677 = !{!678}
!678 = !DILocalVariable(name: "status", arg: 1, scope: !674, file: !3, line: 263, type: !59)
!679 = !DIExpression()
!680 = !DILocation(line: 263, column: 12, scope: !674)
!681 = !DILocation(line: 265, column: 14, scope: !682)
!682 = distinct !DILexicalBlock(scope: !674, file: !3, line: 265, column: 7)
!683 = !DILocation(line: 265, column: 7, scope: !674)
!684 = !DILocation(line: 266, column: 5, scope: !685)
!685 = !DILexicalBlockFile(scope: !686, file: !3, discriminator: 1)
!686 = distinct !DILexicalBlock(scope: !682, file: !3, line: 266, column: 5)
!687 = !{!688, !688, i64 0}
!688 = !{!"any pointer", !689, i64 0}
!689 = !{!"omnipotent char", !690, i64 0}
!690 = !{!"Simple C/C++ TBAA"}
!691 = !DILocation(line: 266, column: 5, scope: !692)
!692 = !DILexicalBlockFile(scope: !686, file: !3, discriminator: 3)
!693 = !DILocation(line: 266, column: 5, scope: !694)
!694 = !DILexicalBlockFile(scope: !686, file: !3, discriminator: 2)
!695 = !DILocation(line: 269, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !682, file: !3, line: 268, column: 5)
!697 = !DILocation(line: 269, column: 7, scope: !698)
!698 = !DILexicalBlockFile(scope: !696, file: !3, discriminator: 1)
!699 = !DILocation(line: 270, column: 7, scope: !696)
!700 = !DILocation(line: 270, column: 7, scope: !698)
!701 = !DILocation(line: 580, column: 3, scope: !702, inlinedAt: !705)
!702 = distinct !DISubprogram(name: "emit_stdin_note", scope: !86, file: !86, line: 578, type: !703, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !177)
!703 = !DISubroutineType(types: !704)
!704 = !{null}
!705 = distinct !DILocation(line: 275, column: 7, scope: !696)
!706 = !DILocation(line: 580, column: 3, scope: !707, inlinedAt: !705)
!707 = !DILexicalBlockFile(scope: !702, file: !86, discriminator: 1)
!708 = !DILocation(line: 587, column: 3, scope: !709, inlinedAt: !710)
!709 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !86, file: !86, line: 585, type: !703, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !177)
!710 = distinct !DILocation(line: 276, column: 7, scope: !696)
!711 = !DILocation(line: 587, column: 3, scope: !712, inlinedAt: !710)
!712 = !DILexicalBlockFile(scope: !709, file: !86, discriminator: 1)
!713 = !DILocation(line: 278, column: 7, scope: !696)
!714 = !DILocation(line: 278, column: 7, scope: !698)
!715 = !DILocation(line: 287, column: 7, scope: !696)
!716 = !DILocation(line: 287, column: 7, scope: !698)
!717 = !DILocation(line: 293, column: 7, scope: !696)
!718 = !DILocation(line: 293, column: 7, scope: !698)
!719 = !DILocation(line: 294, column: 7, scope: !696)
!720 = !DILocation(line: 294, column: 7, scope: !698)
!721 = !DILocation(line: 642, column: 15, scope: !85, inlinedAt: !722)
!722 = distinct !DILocation(line: 295, column: 7, scope: !696)
!723 = !DILocation(line: 651, column: 3, scope: !85, inlinedAt: !722)
!724 = !DILocation(line: 651, column: 3, scope: !725, inlinedAt: !722)
!725 = !DILexicalBlockFile(scope: !85, file: !86, discriminator: 1)
!726 = !DILocation(line: 655, column: 29, scope: !85, inlinedAt: !722)
!727 = !DILocation(line: 655, column: 15, scope: !85, inlinedAt: !722)
!728 = !DILocation(line: 656, column: 7, scope: !105, inlinedAt: !722)
!729 = !DILocation(line: 656, column: 19, scope: !105, inlinedAt: !722)
!730 = !DILocation(line: 656, column: 22, scope: !731, inlinedAt: !722)
!731 = !DILexicalBlockFile(scope: !105, file: !86, discriminator: 16)
!732 = !DILocation(line: 656, column: 7, scope: !733, inlinedAt: !722)
!733 = !DILexicalBlockFile(scope: !85, file: !86, discriminator: 16)
!734 = !DILocation(line: 662, column: 7, scope: !735, inlinedAt: !722)
!735 = distinct !DILexicalBlock(scope: !105, file: !86, line: 657, column: 5)
!736 = !DILocation(line: 662, column: 7, scope: !737, inlinedAt: !722)
!737 = !DILexicalBlockFile(scope: !735, file: !86, discriminator: 1)
!738 = !DILocation(line: 664, column: 5, scope: !735, inlinedAt: !722)
!739 = !DILocation(line: 665, column: 3, scope: !85, inlinedAt: !722)
!740 = !DILocation(line: 665, column: 3, scope: !725, inlinedAt: !722)
!741 = !DILocation(line: 667, column: 3, scope: !85, inlinedAt: !722)
!742 = !DILocation(line: 667, column: 3, scope: !725, inlinedAt: !722)
!743 = !DILocation(line: 297, column: 3, scope: !674)
!744 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 317, type: !745, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !748)
!745 = !DISubroutineType(types: !746)
!746 = !{!59, !59, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !761, !764, !765, !767, !768}
!749 = !DILocalVariable(name: "argc", arg: 1, scope: !744, file: !3, line: 317, type: !59)
!750 = !DILocalVariable(name: "argv", arg: 2, scope: !744, file: !3, line: 317, type: !747)
!751 = !DILocalVariable(name: "optchar", scope: !744, file: !3, line: 319, type: !59)
!752 = !DILocalVariable(name: "ok", scope: !744, file: !3, line: 320, type: !66)
!753 = !DILocalVariable(name: "max_width_option", scope: !744, file: !3, line: 321, type: !56)
!754 = !DILocalVariable(name: "goal_width_option", scope: !744, file: !3, line: 322, type: !56)
!755 = !DILocalVariable(name: "file", scope: !756, file: !3, line: 421, type: !45)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 420, column: 9)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 419, column: 7)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 419, column: 7)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 418, column: 5)
!760 = distinct !DILexicalBlock(scope: !744, file: !3, line: 415, column: 7)
!761 = !DILocalVariable(name: "__s1_len", scope: !762, file: !3, line: 422, type: !48)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 422, column: 15)
!763 = distinct !DILexicalBlock(scope: !756, file: !3, line: 422, column: 15)
!764 = !DILocalVariable(name: "__s2_len", scope: !762, file: !3, line: 422, type: !48)
!765 = !DILocalVariable(name: "__s2", scope: !766, file: !3, line: 422, type: !53)
!766 = distinct !DILexicalBlock(scope: !762, file: !3, line: 422, column: 15)
!767 = !DILocalVariable(name: "__result", scope: !766, file: !3, line: 422, type: !59)
!768 = !DILocalVariable(name: "in_stream", scope: !769, file: !3, line: 426, type: !770)
!769 = distinct !DILexicalBlock(scope: !763, file: !3, line: 425, column: 13)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !772, line: 49, baseType: !773)
!772 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !774, line: 241, size: 1728, elements: !775)
!774 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!775 = !{!776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !796, !797, !798, !799, !802, !803, !805, !809, !812, !814, !815, !816, !817, !818, !819, !820}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !773, file: !774, line: 242, baseType: !59, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !773, file: !774, line: 247, baseType: !45, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !773, file: !774, line: 248, baseType: !45, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !773, file: !774, line: 249, baseType: !45, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !773, file: !774, line: 250, baseType: !45, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !773, file: !774, line: 251, baseType: !45, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !773, file: !774, line: 252, baseType: !45, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !773, file: !774, line: 253, baseType: !45, size: 64, offset: 448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !773, file: !774, line: 254, baseType: !45, size: 64, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !773, file: !774, line: 256, baseType: !45, size: 64, offset: 576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !773, file: !774, line: 257, baseType: !45, size: 64, offset: 640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !773, file: !774, line: 258, baseType: !45, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !773, file: !774, line: 260, baseType: !789, size: 64, offset: 768)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !774, line: 156, size: 192, elements: !791)
!791 = !{!792, !793, !795}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !790, file: !774, line: 157, baseType: !789, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !790, file: !774, line: 158, baseType: !794, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !790, file: !774, line: 162, baseType: !59, size: 32, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !773, file: !774, line: 262, baseType: !794, size: 64, offset: 832)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !773, file: !774, line: 264, baseType: !59, size: 32, offset: 896)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !773, file: !774, line: 268, baseType: !59, size: 32, offset: 928)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !773, file: !774, line: 270, baseType: !800, size: 64, offset: 960)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !801, line: 140, baseType: !62)
!801 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !773, file: !774, line: 274, baseType: !60, size: 16, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !773, file: !774, line: 275, baseType: !804, size: 8, offset: 1040)
!804 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !773, file: !774, line: 276, baseType: !806, size: 8, offset: 1048)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 1)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !773, file: !774, line: 280, baseType: !810, size: 64, offset: 1088)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !774, line: 150, baseType: null)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !773, file: !774, line: 289, baseType: !813, size: 64, offset: 1152)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !801, line: 141, baseType: !62)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !773, file: !774, line: 297, baseType: !47, size: 64, offset: 1216)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !773, file: !774, line: 298, baseType: !47, size: 64, offset: 1280)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !773, file: !774, line: 299, baseType: !47, size: 64, offset: 1344)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !773, file: !774, line: 300, baseType: !47, size: 64, offset: 1408)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !773, file: !774, line: 302, baseType: !48, size: 64, offset: 1472)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !773, file: !774, line: 303, baseType: !59, size: 32, offset: 1536)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !773, file: !774, line: 305, baseType: !821, size: 160, offset: 1568)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 20)
!824 = !DILocation(line: 317, column: 11, scope: !744)
!825 = !DILocation(line: 317, column: 24, scope: !744)
!826 = !DILocation(line: 320, column: 8, scope: !744)
!827 = !DILocation(line: 321, column: 15, scope: !744)
!828 = !DILocation(line: 322, column: 15, scope: !744)
!829 = !DILocation(line: 325, column: 21, scope: !744)
!830 = !DILocation(line: 325, column: 3, scope: !744)
!831 = !DILocation(line: 326, column: 3, scope: !744)
!832 = !DILocation(line: 327, column: 3, scope: !744)
!833 = !DILocation(line: 328, column: 3, scope: !744)
!834 = !DILocation(line: 330, column: 3, scope: !744)
!835 = !DILocation(line: 333, column: 13, scope: !744)
!836 = !{!837, !837, i64 0}
!837 = !{!"int", !689, i64 0}
!838 = !DILocation(line: 334, column: 10, scope: !744)
!839 = !DILocation(line: 335, column: 58, scope: !744)
!840 = !DILocation(line: 335, column: 37, scope: !744)
!841 = !DILocation(line: 335, column: 17, scope: !744)
!842 = !DILocation(line: 337, column: 12, scope: !843)
!843 = distinct !DILexicalBlock(scope: !744, file: !3, line: 337, column: 7)
!844 = !DILocation(line: 337, column: 16, scope: !843)
!845 = !DILocation(line: 337, column: 19, scope: !846)
!846 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 1)
!847 = !{!689, !689, i64 0}
!848 = !DILocation(line: 337, column: 30, scope: !846)
!849 = !DILocation(line: 337, column: 37, scope: !846)
!850 = !DILocation(line: 337, column: 40, scope: !851)
!851 = !DILexicalBlockFile(scope: !843, file: !3, discriminator: 2)
!852 = !DILocation(line: 337, column: 7, scope: !853)
!853 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 2)
!854 = !DILocation(line: 343, column: 17, scope: !855)
!855 = distinct !DILexicalBlock(scope: !843, file: !3, line: 338, column: 5)
!856 = !DILocation(line: 343, column: 15, scope: !855)
!857 = !DILocation(line: 345, column: 11, scope: !855)
!858 = !DILocation(line: 346, column: 5, scope: !855)
!859 = !DILocation(line: 348, column: 21, scope: !860)
!860 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 1)
!861 = !DILocation(line: 319, column: 7, scope: !744)
!862 = !DILocation(line: 348, column: 3, scope: !860)
!863 = !DILocation(line: 354, column: 13, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 354, column: 13)
!865 = distinct !DILexicalBlock(scope: !744, file: !3, line: 352, column: 7)
!866 = !DILocation(line: 354, column: 13, scope: !865)
!867 = !DILocation(line: 355, column: 24, scope: !864)
!868 = !DILocation(line: 355, column: 11, scope: !869)
!869 = !DILexicalBlockFile(scope: !864, file: !3, discriminator: 1)
!870 = !DILocation(line: 355, column: 11, scope: !864)
!871 = !DILocation(line: 358, column: 9, scope: !865)
!872 = !DILocation(line: 362, column: 9, scope: !865)
!873 = !DILocation(line: 366, column: 9, scope: !865)
!874 = !DILocation(line: 370, column: 9, scope: !865)
!875 = !DILocation(line: 374, column: 9, scope: !865)
!876 = !DILocation(line: 377, column: 28, scope: !865)
!877 = !DILocation(line: 378, column: 9, scope: !865)
!878 = distinct !{!878, !879, !880}
!879 = !DILocation(line: 348, column: 3, scope: !744)
!880 = !DILocation(line: 392, column: 7, scope: !744)
!881 = !DILocation(line: 381, column: 29, scope: !865)
!882 = !DILocation(line: 382, column: 9, scope: !865)
!883 = !DILocation(line: 385, column: 21, scope: !865)
!884 = !DILocalVariable(name: "p", arg: 1, scope: !885, file: !3, line: 454, type: !45)
!885 = distinct !DISubprogram(name: "set_prefix", scope: !3, file: !3, line: 454, type: !886, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !45}
!888 = !{!884, !889}
!889 = !DILocalVariable(name: "s", scope: !885, file: !3, line: 456, type: !45)
!890 = !DILocation(line: 454, column: 19, scope: !885, inlinedAt: !891)
!891 = distinct !DILocation(line: 385, column: 9, scope: !865)
!892 = !DILocation(line: 458, column: 21, scope: !885, inlinedAt: !891)
!893 = !DILocation(line: 459, column: 10, scope: !894, inlinedAt: !891)
!894 = !DILexicalBlockFile(scope: !885, file: !3, discriminator: 1)
!895 = !DILocation(line: 459, column: 13, scope: !894, inlinedAt: !891)
!896 = !DILocation(line: 459, column: 3, scope: !894, inlinedAt: !891)
!897 = !DILocation(line: 461, column: 24, scope: !898, inlinedAt: !891)
!898 = distinct !DILexicalBlock(scope: !885, file: !3, line: 460, column: 5)
!899 = !DILocation(line: 462, column: 8, scope: !898, inlinedAt: !891)
!900 = distinct !{!900, !901, !902}
!901 = !DILocation(line: 459, column: 3, scope: !885)
!902 = !DILocation(line: 463, column: 5, scope: !885)
!903 = !DILocation(line: 464, column: 10, scope: !885, inlinedAt: !891)
!904 = !DILocation(line: 465, column: 24, scope: !885, inlinedAt: !891)
!905 = !DILocation(line: 465, column: 22, scope: !885, inlinedAt: !891)
!906 = !DILocation(line: 466, column: 9, scope: !885, inlinedAt: !891)
!907 = !DILocation(line: 456, column: 9, scope: !885, inlinedAt: !891)
!908 = !DILocation(line: 467, column: 3, scope: !885, inlinedAt: !891)
!909 = !DILocation(line: 467, column: 12, scope: !894, inlinedAt: !891)
!910 = !DILocation(line: 467, column: 16, scope: !894, inlinedAt: !891)
!911 = !DILocation(line: 467, column: 19, scope: !912, inlinedAt: !891)
!912 = !DILexicalBlockFile(scope: !885, file: !3, discriminator: 2)
!913 = !DILocation(line: 467, column: 25, scope: !912, inlinedAt: !891)
!914 = !DILocation(line: 467, column: 3, scope: !915, inlinedAt: !891)
!915 = !DILexicalBlockFile(scope: !885, file: !3, discriminator: 3)
!916 = distinct !{!916, !917, !918}
!917 = !DILocation(line: 467, column: 3, scope: !885)
!918 = !DILocation(line: 468, column: 6, scope: !885)
!919 = !DILocation(line: 469, column: 6, scope: !885, inlinedAt: !891)
!920 = !DILocation(line: 470, column: 21, scope: !885, inlinedAt: !891)
!921 = !DILocation(line: 470, column: 19, scope: !885, inlinedAt: !891)
!922 = !DILocation(line: 470, column: 17, scope: !885, inlinedAt: !891)
!923 = !DILocation(line: 386, column: 9, scope: !865)
!924 = !DILocation(line: 388, column: 7, scope: !865)
!925 = !DILocation(line: 390, column: 7, scope: !865)
!926 = !DILocation(line: 390, column: 7, scope: !927)
!927 = !DILexicalBlockFile(scope: !865, file: !3, discriminator: 1)
!928 = !DILocation(line: 394, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !744, file: !3, line: 394, column: 7)
!930 = !DILocation(line: 394, column: 7, scope: !744)
!931 = !DILocation(line: 399, column: 31, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 395, column: 5)
!933 = !DILocation(line: 398, column: 19, scope: !932)
!934 = !DILocation(line: 398, column: 17, scope: !932)
!935 = !DILocation(line: 400, column: 5, scope: !932)
!936 = !DILocation(line: 402, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !744, file: !3, line: 402, column: 7)
!938 = !DILocation(line: 402, column: 7, scope: !744)
!939 = !DILocation(line: 405, column: 54, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 403, column: 5)
!941 = !DILocation(line: 406, column: 32, scope: !940)
!942 = !DILocation(line: 405, column: 20, scope: !940)
!943 = !DILocation(line: 405, column: 18, scope: !940)
!944 = !DILocation(line: 407, column: 11, scope: !940)
!945 = !DILocation(line: 408, column: 32, scope: !946)
!946 = distinct !DILexicalBlock(scope: !940, file: !3, line: 407, column: 11)
!947 = !DILocation(line: 408, column: 19, scope: !946)
!948 = !DILocation(line: 408, column: 9, scope: !946)
!949 = !DILocation(line: 412, column: 30, scope: !950)
!950 = distinct !DILexicalBlock(scope: !937, file: !3, line: 411, column: 5)
!951 = !DILocation(line: 412, column: 57, scope: !950)
!952 = !DILocation(line: 412, column: 18, scope: !950)
!953 = !DILocation(line: 415, column: 7, scope: !760)
!954 = !DILocation(line: 415, column: 14, scope: !760)
!955 = !DILocation(line: 415, column: 7, scope: !744)
!956 = !DILocation(line: 419, column: 21, scope: !957)
!957 = !DILexicalBlockFile(scope: !757, file: !3, discriminator: 1)
!958 = !DILocation(line: 419, column: 7, scope: !959)
!959 = !DILexicalBlockFile(scope: !758, file: !3, discriminator: 1)
!960 = !DILocation(line: 421, column: 24, scope: !756)
!961 = !DILocation(line: 416, column: 10, scope: !760)
!962 = !DILocation(line: 416, column: 5, scope: !760)
!963 = !DILocation(line: 421, column: 17, scope: !756)
!964 = !DILocation(line: 422, column: 15, scope: !762)
!965 = !DILocation(line: 422, column: 15, scope: !766)
!966 = !DILocation(line: 422, column: 15, scope: !967)
!967 = !DILexicalBlockFile(scope: !766, file: !3, discriminator: 2)
!968 = !DILocation(line: 422, column: 15, scope: !969)
!969 = !DILexicalBlockFile(scope: !970, file: !3, discriminator: 3)
!970 = distinct !DILexicalBlock(scope: !766, file: !3, line: 422, column: 15)
!971 = !DILocation(line: 422, column: 15, scope: !972)
!972 = !DILexicalBlockFile(scope: !970, file: !3, discriminator: 2)
!973 = !DILocation(line: 422, column: 15, scope: !974)
!974 = !DILexicalBlockFile(scope: !975, file: !3, discriminator: 4)
!975 = distinct !DILexicalBlock(scope: !970, file: !3, line: 422, column: 15)
!976 = !DILocation(line: 422, column: 15, scope: !977)
!977 = !DILexicalBlockFile(scope: !763, file: !3, discriminator: 13)
!978 = !DILocation(line: 422, column: 15, scope: !979)
!979 = !DILexicalBlockFile(scope: !756, file: !3, discriminator: 13)
!980 = !DILocation(line: 423, column: 18, scope: !763)
!981 = !DILocation(line: 423, column: 13, scope: !763)
!982 = !DILocation(line: 427, column: 27, scope: !769)
!983 = !DILocation(line: 426, column: 21, scope: !769)
!984 = !DILocation(line: 428, column: 29, scope: !985)
!985 = distinct !DILexicalBlock(scope: !769, file: !3, line: 428, column: 19)
!986 = !DILocation(line: 428, column: 19, scope: !769)
!987 = !DILocation(line: 430, column: 19, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 429, column: 17)
!989 = !DILocation(line: 431, column: 23, scope: !990)
!990 = distinct !DILexicalBlock(scope: !988, file: !3, line: 431, column: 23)
!991 = !DILocation(line: 431, column: 42, scope: !990)
!992 = !DILocation(line: 431, column: 23, scope: !988)
!993 = !DILocation(line: 433, column: 33, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !3, line: 432, column: 21)
!995 = !DILocation(line: 433, column: 46, scope: !996)
!996 = !DILexicalBlockFile(scope: !994, file: !3, discriminator: 1)
!997 = !DILocation(line: 433, column: 23, scope: !998)
!998 = !DILexicalBlockFile(scope: !994, file: !3, discriminator: 2)
!999 = !DILocation(line: 435, column: 21, scope: !994)
!1000 = !DILocation(line: 439, column: 29, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !985, file: !3, line: 438, column: 17)
!1002 = !DILocation(line: 439, column: 36, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1001, file: !3, discriminator: 1)
!1004 = !DILocation(line: 440, column: 26, scope: !1001)
!1005 = !DILocation(line: 439, column: 19, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1001, file: !3, discriminator: 2)
!1007 = !DILocation(line: 419, column: 35, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !757, file: !3, discriminator: 2)
!1009 = distinct !{!1009, !1010, !1011}
!1010 = !DILocation(line: 419, column: 7, scope: !758)
!1011 = !DILocation(line: 444, column: 9, scope: !758)
!1012 = !DILocation(line: 447, column: 10, scope: !744)
!1013 = !DILocation(line: 448, column: 1, scope: !744)
!1014 = distinct !DISubprogram(name: "fmt", scope: !3, file: !3, line: 476, type: !1015, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !770}
!1017 = !{!1018}
!1018 = !DILocalVariable(name: "f", arg: 1, scope: !1014, file: !3, line: 476, type: !770)
!1019 = !DILocation(line: 476, column: 12, scope: !1014)
!1020 = !DILocation(line: 478, column: 3, scope: !1014)
!1021 = !DILocation(line: 480, column: 16, scope: !1014)
!1022 = !DILocation(line: 481, column: 15, scope: !1014)
!1023 = !DILocation(line: 481, column: 13, scope: !1014)
!1024 = !DILocation(line: 482, column: 3, scope: !1014)
!1025 = !DILocation(line: 543, column: 7, scope: !1026, inlinedAt: !1032)
!1026 = distinct !DISubprogram(name: "get_paragraph", scope: !3, file: !3, line: 538, type: !1027, isLocal: true, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!66, !770}
!1029 = !{!1030, !1031}
!1030 = !DILocalVariable(name: "f", arg: 1, scope: !1026, file: !3, line: 538, type: !770)
!1031 = !DILocalVariable(name: "c", scope: !1026, file: !3, line: 540, type: !59)
!1032 = distinct !DILocation(line: 482, column: 10, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1014, file: !3, discriminator: 1)
!1034 = !DILocation(line: 538, column: 22, scope: !1026, inlinedAt: !1032)
!1035 = !DILocation(line: 542, column: 20, scope: !1026, inlinedAt: !1032)
!1036 = !DILocation(line: 540, column: 7, scope: !1026, inlinedAt: !1032)
!1037 = !DILocation(line: 547, column: 3, scope: !1026, inlinedAt: !1032)
!1038 = !DILocation(line: 547, column: 20, scope: !1039, inlinedAt: !1032)
!1039 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 1)
!1040 = !DILocation(line: 548, column: 13, scope: !1039, inlinedAt: !1032)
!1041 = !DILocation(line: 548, column: 34, scope: !1039, inlinedAt: !1032)
!1042 = !DILocation(line: 548, column: 32, scope: !1039, inlinedAt: !1032)
!1043 = !DILocation(line: 549, column: 10, scope: !1026, inlinedAt: !1032)
!1044 = !DILocation(line: 549, column: 13, scope: !1039, inlinedAt: !1032)
!1045 = !DILocation(line: 549, column: 46, scope: !1039, inlinedAt: !1032)
!1046 = !DILocation(line: 549, column: 44, scope: !1039, inlinedAt: !1032)
!1047 = !DILocation(line: 549, column: 23, scope: !1039, inlinedAt: !1032)
!1048 = !DILocation(line: 547, column: 3, scope: !1049, inlinedAt: !1032)
!1049 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 3)
!1050 = !DILocalVariable(name: "f", arg: 1, scope: !1051, file: !3, line: 619, type: !770)
!1051 = distinct !DISubprogram(name: "copy_rest", scope: !3, file: !3, line: 619, type: !1052, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!59, !770, !59}
!1054 = !{!1050, !1055, !1056}
!1055 = !DILocalVariable(name: "c", arg: 2, scope: !1051, file: !3, line: 619, type: !59)
!1056 = !DILocalVariable(name: "s", scope: !1051, file: !3, line: 621, type: !56)
!1057 = !DILocation(line: 619, column: 18, scope: !1051, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 551, column: 11, scope: !1059, inlinedAt: !1032)
!1059 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 550, column: 5)
!1060 = !DILocation(line: 619, column: 25, scope: !1051, inlinedAt: !1058)
!1061 = !DILocation(line: 623, column: 14, scope: !1051, inlinedAt: !1058)
!1062 = !DILocation(line: 624, column: 7, scope: !1063, inlinedAt: !1058)
!1063 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 624, column: 7)
!1064 = !DILocation(line: 624, column: 19, scope: !1063, inlinedAt: !1058)
!1065 = !DILocation(line: 624, column: 17, scope: !1063, inlinedAt: !1058)
!1066 = !DILocation(line: 624, column: 38, scope: !1063, inlinedAt: !1058)
!1067 = !DILocation(line: 624, column: 52, scope: !1068, inlinedAt: !1058)
!1068 = !DILexicalBlockFile(scope: !1063, file: !3, discriminator: 1)
!1069 = !DILocation(line: 626, column: 7, scope: !1070, inlinedAt: !1058)
!1070 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 625, column: 5)
!1071 = !DILocation(line: 627, column: 24, scope: !1072, inlinedAt: !1058)
!1072 = !DILexicalBlockFile(scope: !1073, file: !3, discriminator: 1)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 627, column: 7)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 627, column: 7)
!1075 = !DILocation(line: 627, column: 38, scope: !1072, inlinedAt: !1058)
!1076 = !DILocation(line: 627, column: 35, scope: !1072, inlinedAt: !1058)
!1077 = !DILocation(line: 627, column: 48, scope: !1072, inlinedAt: !1058)
!1078 = !DILocation(line: 627, column: 16, scope: !1074, inlinedAt: !1058)
!1079 = !DILocation(line: 627, column: 51, scope: !1080, inlinedAt: !1058)
!1080 = !DILexicalBlockFile(scope: !1073, file: !3, discriminator: 2)
!1081 = !DILocation(line: 627, column: 48, scope: !1080, inlinedAt: !1058)
!1082 = !DILocation(line: 627, column: 7, scope: !1083, inlinedAt: !1058)
!1083 = !DILexicalBlockFile(scope: !1074, file: !3, discriminator: 3)
!1084 = !DILocation(line: 628, column: 9, scope: !1073, inlinedAt: !1058)
!1085 = !DILocation(line: 621, column: 15, scope: !1051, inlinedAt: !1058)
!1086 = !DILocation(line: 107, column: 10, scope: !1087, inlinedAt: !1093)
!1087 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1088, file: !1088, line: 105, type: !1089, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1091)
!1088 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!59, !59}
!1091 = !{!1092}
!1092 = !DILocalVariable(name: "__c", arg: 1, scope: !1087, file: !1088, line: 105, type: !59)
!1093 = distinct !DILocation(line: 628, column: 9, scope: !1073, inlinedAt: !1058)
!1094 = !{!1095, !688, i64 40}
!1095 = !{!"_IO_FILE", !837, i64 0, !688, i64 8, !688, i64 16, !688, i64 24, !688, i64 32, !688, i64 40, !688, i64 48, !688, i64 56, !688, i64 64, !688, i64 72, !688, i64 80, !688, i64 88, !688, i64 96, !688, i64 104, !837, i64 112, !837, i64 116, !1096, i64 120, !1097, i64 128, !689, i64 130, !689, i64 131, !688, i64 136, !1096, i64 144, !688, i64 152, !688, i64 160, !688, i64 168, !688, i64 176, !1096, i64 184, !837, i64 192, !689, i64 196}
!1096 = !{!"long", !689, i64 0}
!1097 = !{!"short", !689, i64 0}
!1098 = !{!1095, !688, i64 48}
!1099 = !{!"branch_weights", i32 2000, i32 1}
!1100 = !DILocation(line: 107, column: 10, scope: !1101, inlinedAt: !1093)
!1101 = !DILexicalBlockFile(scope: !1087, file: !1088, discriminator: 1)
!1102 = !DILocation(line: 107, column: 10, scope: !1103, inlinedAt: !1093)
!1103 = !DILexicalBlockFile(scope: !1087, file: !1088, discriminator: 2)
!1104 = !DILocation(line: 627, column: 65, scope: !1105, inlinedAt: !1058)
!1105 = !DILexicalBlockFile(scope: !1073, file: !3, discriminator: 4)
!1106 = distinct !{!1106, !1107, !1108}
!1107 = !DILocation(line: 627, column: 7, scope: !1074)
!1108 = !DILocation(line: 628, column: 9, scope: !1074)
!1109 = !DILocation(line: 629, column: 20, scope: !1110, inlinedAt: !1058)
!1110 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 629, column: 11)
!1111 = !DILocation(line: 630, column: 32, scope: !1110, inlinedAt: !1058)
!1112 = !DILocation(line: 630, column: 20, scope: !1110, inlinedAt: !1058)
!1113 = !DILocation(line: 630, column: 30, scope: !1110, inlinedAt: !1058)
!1114 = !DILocation(line: 630, column: 9, scope: !1110, inlinedAt: !1058)
!1115 = !DILocation(line: 631, column: 20, scope: !1116, inlinedAt: !1058)
!1116 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 631, column: 11)
!1117 = !DILocation(line: 631, column: 36, scope: !1118, inlinedAt: !1058)
!1118 = !DILexicalBlockFile(scope: !1116, file: !3, discriminator: 1)
!1119 = !DILocation(line: 631, column: 57, scope: !1118, inlinedAt: !1058)
!1120 = !DILocation(line: 631, column: 55, scope: !1118, inlinedAt: !1058)
!1121 = !DILocation(line: 631, column: 33, scope: !1118, inlinedAt: !1058)
!1122 = !DILocation(line: 631, column: 11, scope: !1123, inlinedAt: !1058)
!1123 = !DILexicalBlockFile(scope: !1070, file: !3, discriminator: 1)
!1124 = !DILocation(line: 105, column: 23, scope: !1087, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 632, column: 9, scope: !1116, inlinedAt: !1058)
!1126 = !DILocation(line: 107, column: 10, scope: !1087, inlinedAt: !1125)
!1127 = !DILocation(line: 107, column: 10, scope: !1101, inlinedAt: !1125)
!1128 = !DILocation(line: 107, column: 10, scope: !1103, inlinedAt: !1125)
!1129 = !DILocation(line: 634, column: 3, scope: !1130, inlinedAt: !1058)
!1130 = !DILexicalBlockFile(scope: !1051, file: !3, discriminator: 3)
!1131 = !DILocation(line: 105, column: 23, scope: !1087, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 636, column: 7, scope: !1133, inlinedAt: !1058)
!1133 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 635, column: 5)
!1134 = !DILocation(line: 107, column: 10, scope: !1087, inlinedAt: !1132)
!1135 = !DILocation(line: 107, column: 10, scope: !1101, inlinedAt: !1132)
!1136 = !DILocation(line: 107, column: 10, scope: !1103, inlinedAt: !1132)
!1137 = !DILocalVariable(name: "__fp", arg: 1, scope: !1138, file: !1088, line: 63, type: !770)
!1138 = distinct !DISubprogram(name: "getc_unlocked", scope: !1088, file: !1088, line: 63, type: !1139, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!59, !770}
!1141 = !{!1137}
!1142 = !DILocation(line: 63, column: 22, scope: !1138, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 637, column: 11, scope: !1133, inlinedAt: !1058)
!1144 = !DILocation(line: 65, column: 10, scope: !1138, inlinedAt: !1143)
!1145 = !{!1095, !688, i64 8}
!1146 = !{!1095, !688, i64 16}
!1147 = !DILocation(line: 65, column: 10, scope: !1148, inlinedAt: !1143)
!1148 = !DILexicalBlockFile(scope: !1138, file: !1088, discriminator: 1)
!1149 = distinct !{!1149, !1150, !1151}
!1150 = !DILocation(line: 634, column: 3, scope: !1051)
!1151 = !DILocation(line: 638, column: 5, scope: !1051)
!1152 = !DILocation(line: 65, column: 10, scope: !1153, inlinedAt: !1143)
!1153 = !DILexicalBlockFile(scope: !1138, file: !1088, discriminator: 2)
!1154 = !DILocation(line: 105, column: 23, scope: !1087, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 557, column: 7, scope: !1059, inlinedAt: !1032)
!1156 = !DILocation(line: 107, column: 10, scope: !1087, inlinedAt: !1155)
!1157 = !DILocation(line: 107, column: 10, scope: !1101, inlinedAt: !1155)
!1158 = !DILocation(line: 107, column: 10, scope: !1103, inlinedAt: !1155)
!1159 = !DILocation(line: 558, column: 11, scope: !1059, inlinedAt: !1032)
!1160 = !DILocation(line: 547, column: 3, scope: !1161, inlinedAt: !1032)
!1161 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 4)
!1162 = distinct !{!1162, !1163, !1164}
!1163 = !DILocation(line: 547, column: 3, scope: !1026)
!1164 = !DILocation(line: 559, column: 5, scope: !1026)
!1165 = !DILocation(line: 563, column: 17, scope: !1026, inlinedAt: !1032)
!1166 = !DILocation(line: 564, column: 16, scope: !1026, inlinedAt: !1032)
!1167 = !DILocation(line: 565, column: 8, scope: !1026, inlinedAt: !1032)
!1168 = !DILocation(line: 566, column: 14, scope: !1026, inlinedAt: !1032)
!1169 = !DILocation(line: 567, column: 7, scope: !1026, inlinedAt: !1032)
!1170 = !DILocalVariable(name: "c", arg: 1, scope: !1171, file: !3, line: 647, type: !59)
!1171 = distinct !DISubprogram(name: "same_para", scope: !3, file: !3, line: 647, type: !1172, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!66, !59}
!1174 = !{!1170}
!1175 = !DILocation(line: 647, column: 16, scope: !1171, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 568, column: 21, scope: !1026, inlinedAt: !1032)
!1177 = !DILocation(line: 649, column: 11, scope: !1171, inlinedAt: !1176)
!1178 = !DILocation(line: 649, column: 33, scope: !1171, inlinedAt: !1176)
!1179 = !DILocation(line: 649, column: 30, scope: !1171, inlinedAt: !1176)
!1180 = !DILocation(line: 650, column: 11, scope: !1171, inlinedAt: !1176)
!1181 = !DILocation(line: 650, column: 14, scope: !1182, inlinedAt: !1176)
!1182 = !DILexicalBlockFile(scope: !1171, file: !3, discriminator: 1)
!1183 = !DILocation(line: 650, column: 48, scope: !1182, inlinedAt: !1176)
!1184 = !DILocation(line: 650, column: 46, scope: !1182, inlinedAt: !1176)
!1185 = !DILocation(line: 650, column: 24, scope: !1182, inlinedAt: !1176)
!1186 = !DILocation(line: 651, column: 16, scope: !1182, inlinedAt: !1176)
!1187 = !DILocation(line: 651, column: 11, scope: !1171, inlinedAt: !1176)
!1188 = !DILocation(line: 651, column: 29, scope: !1189, inlinedAt: !1176)
!1189 = !DILexicalBlockFile(scope: !1171, file: !3, discriminator: 2)
!1190 = !DILocalVariable(name: "same_paragraph", arg: 1, scope: !1191, file: !3, line: 493, type: !66)
!1191 = distinct !DISubprogram(name: "set_other_indent", scope: !3, file: !3, line: 493, type: !1192, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !66}
!1194 = !{!1190}
!1195 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1196 = !DILocation(line: 493, column: 24, scope: !1191, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 568, column: 3, scope: !1039, inlinedAt: !1032)
!1198 = !DILocation(line: 495, column: 7, scope: !1191, inlinedAt: !1197)
!1199 = !DILocation(line: 496, column: 20, scope: !1200, inlinedAt: !1197)
!1200 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 495, column: 7)
!1201 = !DILocation(line: 572, column: 7, scope: !1026, inlinedAt: !1032)
!1202 = !DILocation(line: 497, column: 12, scope: !1200, inlinedAt: !1197)
!1203 = !DILocation(line: 501, column: 12, scope: !1204, inlinedAt: !1197)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 497, column: 12)
!1205 = !DILocation(line: 503, column: 26, scope: !1206, inlinedAt: !1197)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 503, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 502, column: 5)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 501, column: 12)
!1209 = !DILocation(line: 503, column: 29, scope: !1210, inlinedAt: !1197)
!1210 = !DILexicalBlockFile(scope: !1206, file: !3, discriminator: 1)
!1211 = !DILocation(line: 503, column: 42, scope: !1210, inlinedAt: !1197)
!1212 = !DILocation(line: 503, column: 39, scope: !1210, inlinedAt: !1197)
!1213 = !DILocation(line: 503, column: 11, scope: !1214, inlinedAt: !1197)
!1214 = !DILexicalBlockFile(scope: !1207, file: !3, discriminator: 1)
!1215 = !DILocation(line: 513, column: 16, scope: !1216, inlinedAt: !1197)
!1216 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 513, column: 16)
!1217 = !DILocation(line: 513, column: 29, scope: !1216, inlinedAt: !1197)
!1218 = !DILocation(line: 513, column: 16, scope: !1206, inlinedAt: !1197)
!1219 = !DILocation(line: 514, column: 37, scope: !1216, inlinedAt: !1197)
!1220 = !DILocation(line: 514, column: 24, scope: !1216, inlinedAt: !1197)
!1221 = !DILocation(line: 514, column: 9, scope: !1216, inlinedAt: !1197)
!1222 = !DILocation(line: 518, column: 22, scope: !1223, inlinedAt: !1197)
!1223 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 517, column: 5)
!1224 = !DILocation(line: 576, column: 12, scope: !1225, inlinedAt: !1032)
!1225 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 572, column: 7)
!1226 = !DILocation(line: 647, column: 16, scope: !1171, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 578, column: 11, scope: !1228, inlinedAt: !1032)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 578, column: 11)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 577, column: 5)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 576, column: 12)
!1231 = !DILocation(line: 650, column: 11, scope: !1171, inlinedAt: !1227)
!1232 = !DILocation(line: 650, column: 14, scope: !1182, inlinedAt: !1227)
!1233 = !DILocation(line: 650, column: 48, scope: !1182, inlinedAt: !1227)
!1234 = !DILocation(line: 650, column: 46, scope: !1182, inlinedAt: !1227)
!1235 = !DILocation(line: 650, column: 24, scope: !1182, inlinedAt: !1227)
!1236 = !DILocation(line: 578, column: 11, scope: !1229, inlinedAt: !1032)
!1237 = !DILocation(line: 582, column: 19, scope: !1238, inlinedAt: !1032)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 581, column: 13)
!1239 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 579, column: 9)
!1240 = !DILocation(line: 647, column: 16, scope: !1171, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 584, column: 18, scope: !1239, inlinedAt: !1032)
!1242 = !DILocation(line: 649, column: 11, scope: !1171, inlinedAt: !1241)
!1243 = !DILocation(line: 649, column: 33, scope: !1171, inlinedAt: !1241)
!1244 = !DILocation(line: 649, column: 30, scope: !1171, inlinedAt: !1241)
!1245 = !DILocation(line: 650, column: 11, scope: !1171, inlinedAt: !1241)
!1246 = !DILocation(line: 650, column: 14, scope: !1182, inlinedAt: !1241)
!1247 = !DILocation(line: 650, column: 48, scope: !1182, inlinedAt: !1241)
!1248 = !DILocation(line: 650, column: 46, scope: !1182, inlinedAt: !1241)
!1249 = !DILocation(line: 650, column: 24, scope: !1182, inlinedAt: !1241)
!1250 = !DILocation(line: 584, column: 32, scope: !1239, inlinedAt: !1032)
!1251 = !DILocation(line: 584, column: 48, scope: !1252, inlinedAt: !1032)
!1252 = !DILexicalBlockFile(scope: !1239, file: !3, discriminator: 1)
!1253 = !DILocation(line: 584, column: 45, scope: !1252, inlinedAt: !1032)
!1254 = !DILocation(line: 583, column: 13, scope: !1255, inlinedAt: !1032)
!1255 = !DILexicalBlockFile(scope: !1238, file: !3, discriminator: 1)
!1256 = distinct !{!1256, !1257, !1258}
!1257 = !DILocation(line: 580, column: 11, scope: !1239)
!1258 = !DILocation(line: 584, column: 60, scope: !1239)
!1259 = !DILocation(line: 587, column: 12, scope: !1230, inlinedAt: !1032)
!1260 = !DILocation(line: 647, column: 16, scope: !1171, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 600, column: 14, scope: !1262, inlinedAt: !1032)
!1262 = !DILexicalBlockFile(scope: !1263, file: !3, discriminator: 1)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 599, column: 5)
!1264 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 587, column: 12)
!1265 = !DILocation(line: 650, column: 11, scope: !1171, inlinedAt: !1261)
!1266 = !DILocation(line: 650, column: 14, scope: !1182, inlinedAt: !1261)
!1267 = !DILocation(line: 647, column: 16, scope: !1171, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 589, column: 11, scope: !1269, inlinedAt: !1032)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 589, column: 11)
!1270 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 588, column: 5)
!1271 = !DILocation(line: 650, column: 11, scope: !1171, inlinedAt: !1268)
!1272 = !DILocation(line: 650, column: 14, scope: !1182, inlinedAt: !1268)
!1273 = !DILocation(line: 650, column: 48, scope: !1182, inlinedAt: !1268)
!1274 = !DILocation(line: 650, column: 46, scope: !1182, inlinedAt: !1268)
!1275 = !DILocation(line: 650, column: 24, scope: !1182, inlinedAt: !1268)
!1276 = !DILocation(line: 589, column: 25, scope: !1269, inlinedAt: !1032)
!1277 = !DILocation(line: 589, column: 38, scope: !1278, inlinedAt: !1032)
!1278 = !DILexicalBlockFile(scope: !1269, file: !3, discriminator: 1)
!1279 = !DILocation(line: 589, column: 11, scope: !1280, inlinedAt: !1032)
!1280 = !DILexicalBlockFile(scope: !1270, file: !3, discriminator: 1)
!1281 = distinct !{!1281, !1282, !1284}
!1282 = !DILocation(line: 591, column: 11, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 590, column: 9)
!1284 = !DILocation(line: 595, column: 60, scope: !1283)
!1285 = !DILocation(line: 593, column: 19, scope: !1286, inlinedAt: !1032)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 592, column: 13)
!1287 = !DILocation(line: 647, column: 16, scope: !1171, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 595, column: 18, scope: !1283, inlinedAt: !1032)
!1289 = !DILocation(line: 649, column: 11, scope: !1171, inlinedAt: !1288)
!1290 = !DILocation(line: 649, column: 33, scope: !1171, inlinedAt: !1288)
!1291 = !DILocation(line: 649, column: 30, scope: !1171, inlinedAt: !1288)
!1292 = !DILocation(line: 650, column: 11, scope: !1171, inlinedAt: !1288)
!1293 = !DILocation(line: 650, column: 14, scope: !1182, inlinedAt: !1288)
!1294 = !DILocation(line: 650, column: 48, scope: !1182, inlinedAt: !1288)
!1295 = !DILocation(line: 650, column: 46, scope: !1182, inlinedAt: !1288)
!1296 = !DILocation(line: 650, column: 24, scope: !1182, inlinedAt: !1288)
!1297 = !DILocation(line: 595, column: 32, scope: !1283, inlinedAt: !1032)
!1298 = !DILocation(line: 595, column: 48, scope: !1299, inlinedAt: !1032)
!1299 = !DILexicalBlockFile(scope: !1283, file: !3, discriminator: 1)
!1300 = !DILocation(line: 595, column: 45, scope: !1299, inlinedAt: !1032)
!1301 = !DILocation(line: 594, column: 13, scope: !1302, inlinedAt: !1032)
!1302 = !DILexicalBlockFile(scope: !1286, file: !3, discriminator: 1)
!1303 = !DILocation(line: 650, column: 48, scope: !1182, inlinedAt: !1261)
!1304 = !DILocation(line: 650, column: 46, scope: !1182, inlinedAt: !1261)
!1305 = !DILocation(line: 650, column: 24, scope: !1182, inlinedAt: !1261)
!1306 = !DILocation(line: 600, column: 28, scope: !1262, inlinedAt: !1032)
!1307 = !DILocation(line: 600, column: 44, scope: !1308, inlinedAt: !1032)
!1308 = !DILexicalBlockFile(scope: !1263, file: !3, discriminator: 2)
!1309 = !DILocation(line: 600, column: 41, scope: !1308, inlinedAt: !1032)
!1310 = !DILocation(line: 600, column: 7, scope: !1311, inlinedAt: !1032)
!1311 = !DILexicalBlockFile(scope: !1263, file: !3, discriminator: 3)
!1312 = !DILocation(line: 601, column: 13, scope: !1263, inlinedAt: !1032)
!1313 = !DILocation(line: 649, column: 11, scope: !1171, inlinedAt: !1261)
!1314 = !DILocation(line: 649, column: 33, scope: !1171, inlinedAt: !1261)
!1315 = !DILocation(line: 649, column: 30, scope: !1171, inlinedAt: !1261)
!1316 = distinct !{!1316, !1317, !1318}
!1317 = !DILocation(line: 600, column: 7, scope: !1263)
!1318 = !DILocation(line: 601, column: 27, scope: !1263)
!1319 = !DILocation(line: 606, column: 3, scope: !1320, inlinedAt: !1032)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 606, column: 3)
!1321 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 606, column: 3)
!1322 = !DILocation(line: 606, column: 3, scope: !1321, inlinedAt: !1032)
!1323 = !DILocation(line: 606, column: 3, scope: !1324, inlinedAt: !1032)
!1324 = !DILexicalBlockFile(scope: !1320, file: !3, discriminator: 2)
!1325 = !DILocation(line: 608, column: 48, scope: !1026, inlinedAt: !1032)
!1326 = !DILocation(line: 608, column: 54, scope: !1026, inlinedAt: !1032)
!1327 = !DILocation(line: 608, column: 28, scope: !1026, inlinedAt: !1032)
!1328 = !DILocation(line: 554, column: 21, scope: !1329, inlinedAt: !1032)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 553, column: 9)
!1330 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 552, column: 11)
!1331 = !DILocation(line: 484, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 483, column: 5)
!1333 = !DILocalVariable(name: "finish", arg: 1, scope: !1334, file: !3, line: 958, type: !168)
!1334 = distinct !DISubprogram(name: "put_paragraph", scope: !3, file: !3, line: 958, type: !1335, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !168}
!1337 = !{!1333, !1338}
!1338 = !DILocalVariable(name: "w", scope: !1334, file: !3, line: 960, type: !168)
!1339 = !DILocation(line: 958, column: 22, scope: !1334, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 485, column: 7, scope: !1332)
!1341 = !DILocation(line: 962, column: 19, scope: !1334, inlinedAt: !1340)
!1342 = !DILocation(line: 962, column: 3, scope: !1334, inlinedAt: !1340)
!1343 = !{!1344, !688, i64 32}
!1344 = !{!"Word", !688, i64 0, !837, i64 8, !837, i64 12, !837, i64 16, !837, i64 16, !837, i64 16, !837, i64 16, !837, i64 20, !1096, i64 24, !688, i64 32}
!1345 = !DILocation(line: 960, column: 9, scope: !1334, inlinedAt: !1340)
!1346 = !DILocation(line: 963, column: 32, scope: !1347, inlinedAt: !1340)
!1347 = !DILexicalBlockFile(scope: !1348, file: !3, discriminator: 1)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 963, column: 3)
!1349 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 963, column: 3)
!1350 = !DILocation(line: 963, column: 3, scope: !1351, inlinedAt: !1340)
!1351 = !DILexicalBlockFile(scope: !1349, file: !3, discriminator: 1)
!1352 = !DILocation(line: 964, column: 18, scope: !1348, inlinedAt: !1340)
!1353 = distinct !{!1353, !1024, !1354}
!1354 = !DILocation(line: 486, column: 5, scope: !1014)
!1355 = !DILocation(line: 964, column: 5, scope: !1348, inlinedAt: !1340)
!1356 = !DILocation(line: 963, column: 50, scope: !1357, inlinedAt: !1340)
!1357 = !DILexicalBlockFile(scope: !1348, file: !3, discriminator: 2)
!1358 = !DILocation(line: 487, column: 1, scope: !1014)
!1359 = distinct !DISubprogram(name: "get_prefix", scope: !3, file: !3, line: 717, type: !1139, isLocal: true, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1360)
!1360 = !{!1361, !1362, !1363, !1366}
!1361 = !DILocalVariable(name: "f", arg: 1, scope: !1359, file: !3, line: 717, type: !770)
!1362 = !DILocalVariable(name: "c", scope: !1359, file: !3, line: 719, type: !59)
!1363 = !DILocalVariable(name: "p", scope: !1364, file: !3, line: 728, type: !56)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 727, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 723, column: 7)
!1366 = !DILocalVariable(name: "pc", scope: !1367, file: !3, line: 732, type: !55)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 731, column: 9)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 730, column: 7)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 730, column: 7)
!1370 = !DILocation(line: 717, column: 19, scope: !1359)
!1371 = !DILocation(line: 721, column: 13, scope: !1359)
!1372 = !DILocation(line: 63, column: 22, scope: !1138, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 722, column: 21, scope: !1359)
!1374 = !DILocation(line: 65, column: 10, scope: !1138, inlinedAt: !1373)
!1375 = !DILocation(line: 65, column: 10, scope: !1148, inlinedAt: !1373)
!1376 = !DILocation(line: 65, column: 10, scope: !1153, inlinedAt: !1373)
!1377 = !DILocation(line: 747, column: 25, scope: !1378, inlinedAt: !1382)
!1378 = distinct !DISubprogram(name: "get_space", scope: !3, file: !3, line: 747, type: !1052, isLocal: true, isDefinition: true, scopeLine: 748, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1379)
!1379 = !{!1380, !1381}
!1380 = !DILocalVariable(name: "f", arg: 1, scope: !1378, file: !3, line: 747, type: !770)
!1381 = !DILocalVariable(name: "c", arg: 2, scope: !1378, file: !3, line: 747, type: !59)
!1382 = distinct !DILocation(line: 722, column: 7, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1359, file: !3, discriminator: 1)
!1384 = !DILocation(line: 751, column: 11, scope: !1385, inlinedAt: !1382)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 750, column: 5)
!1386 = !DILocation(line: 752, column: 18, scope: !1387, inlinedAt: !1382)
!1387 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 751, column: 11)
!1388 = !DILocation(line: 752, column: 9, scope: !1387, inlinedAt: !1382)
!1389 = !DILocation(line: 756, column: 24, scope: !1390, inlinedAt: !1382)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 754, column: 9)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 753, column: 16)
!1392 = !DILocation(line: 756, column: 34, scope: !1390, inlinedAt: !1382)
!1393 = !DILocation(line: 756, column: 50, scope: !1390, inlinedAt: !1382)
!1394 = !DILocation(line: 63, column: 22, scope: !1138, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 760, column: 11, scope: !1385, inlinedAt: !1382)
!1396 = !DILocation(line: 65, column: 10, scope: !1138, inlinedAt: !1395)
!1397 = !DILocation(line: 65, column: 10, scope: !1148, inlinedAt: !1395)
!1398 = distinct !{!1398, !1399, !1400}
!1399 = !DILocation(line: 749, column: 3, scope: !1378)
!1400 = !DILocation(line: 761, column: 5, scope: !1378)
!1401 = !DILocation(line: 65, column: 10, scope: !1153, inlinedAt: !1395)
!1402 = !DILocation(line: 719, column: 7, scope: !1359)
!1403 = !DILocation(line: 723, column: 7, scope: !1365)
!1404 = !DILocation(line: 723, column: 21, scope: !1365)
!1405 = !DILocation(line: 723, column: 7, scope: !1359)
!1406 = !DILocation(line: 724, column: 26, scope: !1365)
!1407 = !DILocation(line: 724, column: 46, scope: !1365)
!1408 = !DILocation(line: 724, column: 44, scope: !1365)
!1409 = !DILocation(line: 724, column: 24, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1365, file: !3, discriminator: 3)
!1411 = !DILocation(line: 724, column: 5, scope: !1410)
!1412 = !DILocation(line: 729, column: 28, scope: !1364)
!1413 = !DILocation(line: 729, column: 26, scope: !1364)
!1414 = !DILocation(line: 730, column: 16, scope: !1369)
!1415 = !DILocation(line: 728, column: 19, scope: !1364)
!1416 = !DILocation(line: 730, column: 24, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1368, file: !3, discriminator: 1)
!1418 = !DILocation(line: 730, column: 27, scope: !1417)
!1419 = !DILocation(line: 730, column: 7, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1369, file: !3, discriminator: 1)
!1421 = !DILocation(line: 732, column: 25, scope: !1367)
!1422 = !DILocation(line: 733, column: 20, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 733, column: 15)
!1424 = !DILocation(line: 733, column: 17, scope: !1423)
!1425 = !DILocation(line: 733, column: 15, scope: !1367)
!1426 = !DILocation(line: 735, column: 20, scope: !1367)
!1427 = !DILocation(line: 63, column: 22, scope: !1138, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 736, column: 15, scope: !1367)
!1429 = !DILocation(line: 65, column: 10, scope: !1138, inlinedAt: !1428)
!1430 = !DILocation(line: 65, column: 10, scope: !1148, inlinedAt: !1428)
!1431 = !DILocation(line: 65, column: 10, scope: !1153, inlinedAt: !1428)
!1432 = !DILocation(line: 730, column: 37, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1368, file: !3, discriminator: 2)
!1434 = distinct !{!1434, !1435, !1436}
!1435 = !DILocation(line: 730, column: 7, scope: !1369)
!1436 = !DILocation(line: 737, column: 9, scope: !1369)
!1437 = !DILocation(line: 747, column: 25, scope: !1378, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 738, column: 11, scope: !1364)
!1439 = !DILocation(line: 751, column: 11, scope: !1385, inlinedAt: !1438)
!1440 = !DILocation(line: 752, column: 18, scope: !1387, inlinedAt: !1438)
!1441 = !DILocation(line: 752, column: 9, scope: !1387, inlinedAt: !1438)
!1442 = !DILocation(line: 756, column: 24, scope: !1390, inlinedAt: !1438)
!1443 = !DILocation(line: 756, column: 34, scope: !1390, inlinedAt: !1438)
!1444 = !DILocation(line: 756, column: 50, scope: !1390, inlinedAt: !1438)
!1445 = !DILocation(line: 63, column: 22, scope: !1138, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 760, column: 11, scope: !1385, inlinedAt: !1438)
!1447 = !DILocation(line: 65, column: 10, scope: !1138, inlinedAt: !1446)
!1448 = !DILocation(line: 65, column: 10, scope: !1148, inlinedAt: !1446)
!1449 = !DILocation(line: 65, column: 10, scope: !1153, inlinedAt: !1446)
!1450 = !DILocation(line: 741, column: 1, scope: !1359)
!1451 = distinct !DISubprogram(name: "put_space", scope: !3, file: !3, line: 1009, type: !675, isLocal: true, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1452)
!1452 = !{!1453, !1454, !1455}
!1453 = !DILocalVariable(name: "space", arg: 1, scope: !1451, file: !3, line: 1009, type: !59)
!1454 = !DILocalVariable(name: "space_target", scope: !1451, file: !3, line: 1011, type: !59)
!1455 = !DILocalVariable(name: "tab_target", scope: !1451, file: !3, line: 1011, type: !59)
!1456 = !DILocation(line: 1009, column: 16, scope: !1451)
!1457 = !DILocation(line: 1013, column: 18, scope: !1451)
!1458 = !DILocation(line: 1013, column: 29, scope: !1451)
!1459 = !DILocation(line: 1011, column: 7, scope: !1451)
!1460 = !DILocation(line: 1014, column: 7, scope: !1451)
!1461 = !DILocation(line: 1016, column: 33, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 1015, column: 5)
!1463 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 1014, column: 7)
!1464 = !DILocation(line: 1016, column: 44, scope: !1462)
!1465 = !DILocation(line: 1011, column: 21, scope: !1451)
!1466 = !DILocation(line: 1017, column: 22, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 1017, column: 11)
!1468 = !DILocation(line: 1017, column: 26, scope: !1467)
!1469 = !DILocation(line: 1018, column: 27, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1467, file: !3, discriminator: 1)
!1471 = !DILocation(line: 1017, column: 11, scope: !1462)
!1472 = !DILocation(line: 105, column: 23, scope: !1087, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 1020, column: 13, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1019, column: 11)
!1475 = !DILocation(line: 107, column: 10, scope: !1087, inlinedAt: !1473)
!1476 = !DILocation(line: 107, column: 10, scope: !1101, inlinedAt: !1473)
!1477 = !DILocation(line: 107, column: 10, scope: !1103, inlinedAt: !1473)
!1478 = !DILocation(line: 1021, column: 27, scope: !1474)
!1479 = !DILocation(line: 1021, column: 38, scope: !1474)
!1480 = !DILocation(line: 1021, column: 54, scope: !1474)
!1481 = !DILocation(line: 1021, column: 24, scope: !1474)
!1482 = !DILocation(line: 1018, column: 9, scope: !1470)
!1483 = !DILocation(line: 1024, column: 21, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1451, file: !3, discriminator: 1)
!1485 = !DILocation(line: 1024, column: 10, scope: !1484)
!1486 = !DILocation(line: 1024, column: 3, scope: !1484)
!1487 = !DILocation(line: 105, column: 23, scope: !1087, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 1026, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 1025, column: 5)
!1490 = !DILocation(line: 107, column: 10, scope: !1087, inlinedAt: !1488)
!1491 = !DILocation(line: 107, column: 10, scope: !1101, inlinedAt: !1488)
!1492 = !DILocation(line: 107, column: 10, scope: !1103, inlinedAt: !1488)
!1493 = !DILocation(line: 1027, column: 17, scope: !1489)
!1494 = distinct !{!1494, !1495, !1496}
!1495 = !DILocation(line: 1024, column: 3, scope: !1451)
!1496 = !DILocation(line: 1028, column: 5, scope: !1451)
!1497 = !DILocation(line: 1029, column: 1, scope: !1451)
!1498 = distinct !DISubprogram(name: "get_line", scope: !3, file: !3, line: 663, type: !1052, isLocal: true, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504}
!1500 = !DILocalVariable(name: "f", arg: 1, scope: !1498, file: !3, line: 663, type: !770)
!1501 = !DILocalVariable(name: "c", arg: 2, scope: !1498, file: !3, line: 663, type: !59)
!1502 = !DILocalVariable(name: "start", scope: !1498, file: !3, line: 665, type: !59)
!1503 = !DILocalVariable(name: "end_of_parabuf", scope: !1498, file: !3, line: 666, type: !45)
!1504 = !DILocalVariable(name: "end_of_word", scope: !1498, file: !3, line: 667, type: !168)
!1505 = !DILocation(line: 663, column: 17, scope: !1498)
!1506 = !DILocation(line: 663, column: 24, scope: !1498)
!1507 = !DILocation(line: 666, column: 9, scope: !1498)
!1508 = !DILocation(line: 667, column: 9, scope: !1498)
!1509 = !DILocation(line: 672, column: 3, scope: !1498)
!1510 = distinct !{!1510, !1509, !1511}
!1511 = !DILocation(line: 709, column: 31, scope: !1498)
!1512 = !DILocation(line: 677, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 673, column: 5)
!1514 = !DILocation(line: 677, column: 26, scope: !1513)
!1515 = !DILocation(line: 677, column: 24, scope: !1513)
!1516 = !{!1344, !688, i64 0}
!1517 = !DILocation(line: 678, column: 7, scope: !1513)
!1518 = distinct !{!1518, !1517, !1519}
!1519 = !DILocation(line: 688, column: 38, scope: !1513)
!1520 = !DILocation(line: 680, column: 15, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 680, column: 15)
!1522 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 679, column: 9)
!1523 = !DILocation(line: 680, column: 20, scope: !1521)
!1524 = !DILocation(line: 680, column: 15, scope: !1522)
!1525 = !DILocation(line: 493, column: 24, scope: !1191, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 682, column: 15, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 681, column: 13)
!1528 = !DILocation(line: 495, column: 7, scope: !1191, inlinedAt: !1526)
!1529 = !DILocation(line: 496, column: 20, scope: !1200, inlinedAt: !1526)
!1530 = !DILocation(line: 496, column: 5, scope: !1200, inlinedAt: !1526)
!1531 = !DILocation(line: 497, column: 12, scope: !1200, inlinedAt: !1526)
!1532 = !DILocation(line: 500, column: 5, scope: !1533, inlinedAt: !1526)
!1533 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 498, column: 5)
!1534 = !DILocation(line: 501, column: 12, scope: !1204, inlinedAt: !1526)
!1535 = !DILocation(line: 503, column: 29, scope: !1210, inlinedAt: !1526)
!1536 = !DILocation(line: 503, column: 42, scope: !1210, inlinedAt: !1526)
!1537 = !DILocation(line: 503, column: 39, scope: !1210, inlinedAt: !1526)
!1538 = !DILocation(line: 503, column: 11, scope: !1214, inlinedAt: !1526)
!1539 = !DILocation(line: 513, column: 16, scope: !1216, inlinedAt: !1526)
!1540 = !DILocation(line: 513, column: 29, scope: !1216, inlinedAt: !1526)
!1541 = !DILocation(line: 513, column: 16, scope: !1206, inlinedAt: !1526)
!1542 = !DILocation(line: 514, column: 37, scope: !1216, inlinedAt: !1526)
!1543 = !DILocation(line: 514, column: 24, scope: !1216, inlinedAt: !1526)
!1544 = !DILocation(line: 514, column: 9, scope: !1216, inlinedAt: !1526)
!1545 = !DILocation(line: 518, column: 22, scope: !1223, inlinedAt: !1526)
!1546 = !DILocation(line: 520, column: 1, scope: !1191, inlinedAt: !1526)
!1547 = !DILocation(line: 683, column: 15, scope: !1527)
!1548 = !DILocation(line: 684, column: 13, scope: !1527)
!1549 = !DILocation(line: 685, column: 16, scope: !1522)
!1550 = !DILocation(line: 685, column: 21, scope: !1522)
!1551 = !DILocation(line: 685, column: 19, scope: !1522)
!1552 = !DILocation(line: 63, column: 22, scope: !1138, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 686, column: 15, scope: !1522)
!1554 = !DILocation(line: 65, column: 10, scope: !1138, inlinedAt: !1553)
!1555 = !DILocation(line: 65, column: 10, scope: !1153, inlinedAt: !1553)
!1556 = !DILocation(line: 688, column: 23, scope: !1513)
!1557 = !DILocation(line: 65, column: 10, scope: !1148, inlinedAt: !1553)
!1558 = !DILocation(line: 688, column: 16, scope: !1513)
!1559 = !DILocation(line: 774, column: 17, scope: !1560, inlinedAt: !1566)
!1560 = distinct !DISubprogram(name: "check_punctuation", scope: !3, file: !3, line: 767, type: !1335, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1561)
!1561 = !{!1562, !1563, !1564, !1565}
!1562 = !DILocalVariable(name: "w", arg: 1, scope: !1560, file: !3, line: 767, type: !168)
!1563 = !DILocalVariable(name: "start", scope: !1560, file: !3, line: 769, type: !56)
!1564 = !DILocalVariable(name: "finish", scope: !1560, file: !3, line: 770, type: !56)
!1565 = !DILocalVariable(name: "fin", scope: !1560, file: !3, line: 771, type: !55)
!1566 = distinct !DILocation(line: 690, column: 7, scope: !1513)
!1567 = !DILocation(line: 688, column: 27, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1513, file: !3, discriminator: 1)
!1569 = !{!1097, !1097, i64 0}
!1570 = !DILocation(line: 688, column: 26, scope: !1568)
!1571 = !DILocation(line: 687, column: 9, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1522, file: !3, discriminator: 1)
!1573 = !DILocation(line: 689, column: 41, scope: !1513)
!1574 = !DILocation(line: 689, column: 48, scope: !1513)
!1575 = !DILocation(line: 689, column: 60, scope: !1513)
!1576 = !DILocation(line: 689, column: 46, scope: !1513)
!1577 = !DILocation(line: 689, column: 32, scope: !1513)
!1578 = !DILocation(line: 689, column: 39, scope: !1513)
!1579 = !{!1344, !837, i64 8}
!1580 = !DILocation(line: 689, column: 17, scope: !1513)
!1581 = !DILocation(line: 767, column: 26, scope: !1560, inlinedAt: !1566)
!1582 = !DILocation(line: 769, column: 26, scope: !1560, inlinedAt: !1566)
!1583 = !DILocation(line: 769, column: 15, scope: !1560, inlinedAt: !1566)
!1584 = !DILocation(line: 770, column: 30, scope: !1560, inlinedAt: !1566)
!1585 = !DILocation(line: 770, column: 15, scope: !1560, inlinedAt: !1566)
!1586 = !DILocation(line: 771, column: 23, scope: !1560, inlinedAt: !1566)
!1587 = !DILocation(line: 771, column: 17, scope: !1560, inlinedAt: !1566)
!1588 = !DILocation(line: 773, column: 14, scope: !1560, inlinedAt: !1566)
!1589 = !DILocation(line: 773, column: 6, scope: !1560, inlinedAt: !1566)
!1590 = !DILocation(line: 773, column: 12, scope: !1560, inlinedAt: !1566)
!1591 = !DILocation(line: 774, column: 12, scope: !1560, inlinedAt: !1566)
!1592 = !DILocation(line: 775, column: 16, scope: !1593, inlinedAt: !1566)
!1593 = !DILexicalBlockFile(scope: !1560, file: !3, discriminator: 1)
!1594 = !DILocation(line: 775, column: 25, scope: !1593, inlinedAt: !1566)
!1595 = !DILocation(line: 775, column: 28, scope: !1596, inlinedAt: !1566)
!1596 = !DILexicalBlockFile(scope: !1560, file: !3, discriminator: 2)
!1597 = !DILocation(line: 775, column: 3, scope: !1598, inlinedAt: !1566)
!1598 = !DILexicalBlockFile(scope: !1560, file: !3, discriminator: 3)
!1599 = !DILocation(line: 776, column: 11, scope: !1560, inlinedAt: !1566)
!1600 = distinct !{!1600, !1601, !1602}
!1601 = !DILocation(line: 775, column: 3, scope: !1560)
!1602 = !DILocation(line: 776, column: 11, scope: !1560)
!1603 = !DILocation(line: 777, column: 15, scope: !1560, inlinedAt: !1566)
!1604 = !DILocation(line: 777, column: 13, scope: !1560, inlinedAt: !1566)
!1605 = !DILocation(line: 665, column: 7, scope: !1498)
!1606 = !DILocation(line: 747, column: 18, scope: !1378, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 695, column: 11, scope: !1513)
!1608 = !DILocation(line: 747, column: 25, scope: !1378, inlinedAt: !1607)
!1609 = !DILocation(line: 749, column: 3, scope: !1378, inlinedAt: !1607)
!1610 = !DILocation(line: 751, column: 11, scope: !1385, inlinedAt: !1607)
!1611 = !DILocation(line: 752, column: 18, scope: !1387, inlinedAt: !1607)
!1612 = !DILocation(line: 752, column: 9, scope: !1387, inlinedAt: !1607)
!1613 = !DILocation(line: 756, column: 24, scope: !1390, inlinedAt: !1607)
!1614 = !DILocation(line: 756, column: 34, scope: !1390, inlinedAt: !1607)
!1615 = !DILocation(line: 756, column: 50, scope: !1390, inlinedAt: !1607)
!1616 = !DILocation(line: 63, column: 22, scope: !1138, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 760, column: 11, scope: !1385, inlinedAt: !1607)
!1618 = !DILocation(line: 65, column: 10, scope: !1138, inlinedAt: !1617)
!1619 = !DILocation(line: 65, column: 10, scope: !1148, inlinedAt: !1617)
!1620 = !DILocation(line: 65, column: 10, scope: !1153, inlinedAt: !1617)
!1621 = !DILocation(line: 696, column: 27, scope: !1513)
!1622 = !DILocation(line: 696, column: 37, scope: !1513)
!1623 = !DILocation(line: 696, column: 7, scope: !1513)
!1624 = !DILocation(line: 696, column: 19, scope: !1513)
!1625 = !DILocation(line: 696, column: 25, scope: !1513)
!1626 = !{!1344, !837, i64 12}
!1627 = !DILocation(line: 697, column: 30, scope: !1513)
!1628 = !DILocation(line: 698, column: 28, scope: !1513)
!1629 = !DILocation(line: 698, column: 44, scope: !1568)
!1630 = !DILocation(line: 698, column: 32, scope: !1568)
!1631 = !DILocation(line: 699, column: 32, scope: !1513)
!1632 = !DILocation(line: 699, column: 38, scope: !1568)
!1633 = !DILocation(line: 699, column: 46, scope: !1568)
!1634 = !DILocation(line: 699, column: 67, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1513, file: !3, discriminator: 2)
!1636 = !DILocation(line: 699, column: 46, scope: !1635)
!1637 = !DILocation(line: 697, column: 25, scope: !1568)
!1638 = !DILocation(line: 700, column: 21, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 700, column: 11)
!1640 = !DILocation(line: 700, column: 11, scope: !1635)
!1641 = !DILocation(line: 701, column: 41, scope: !1639)
!1642 = !DILocation(line: 701, column: 29, scope: !1639)
!1643 = !DILocation(line: 701, column: 27, scope: !1639)
!1644 = !DILocation(line: 701, column: 9, scope: !1639)
!1645 = !DILocation(line: 702, column: 22, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 702, column: 11)
!1647 = !DILocation(line: 702, column: 11, scope: !1513)
!1648 = !DILocation(line: 493, column: 24, scope: !1191, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 704, column: 11, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 703, column: 9)
!1651 = !DILocation(line: 495, column: 7, scope: !1191, inlinedAt: !1649)
!1652 = !DILocation(line: 496, column: 20, scope: !1200, inlinedAt: !1649)
!1653 = !DILocation(line: 496, column: 5, scope: !1200, inlinedAt: !1649)
!1654 = !DILocation(line: 497, column: 12, scope: !1200, inlinedAt: !1649)
!1655 = !DILocation(line: 501, column: 12, scope: !1204, inlinedAt: !1649)
!1656 = !DILocation(line: 503, column: 39, scope: !1210, inlinedAt: !1649)
!1657 = !DILocation(line: 503, column: 11, scope: !1214, inlinedAt: !1649)
!1658 = !DILocation(line: 513, column: 16, scope: !1216, inlinedAt: !1649)
!1659 = !DILocation(line: 513, column: 29, scope: !1216, inlinedAt: !1649)
!1660 = !DILocation(line: 513, column: 16, scope: !1206, inlinedAt: !1649)
!1661 = !DILocation(line: 514, column: 37, scope: !1216, inlinedAt: !1649)
!1662 = !DILocation(line: 514, column: 24, scope: !1216, inlinedAt: !1649)
!1663 = !DILocation(line: 514, column: 9, scope: !1216, inlinedAt: !1649)
!1664 = !DILocation(line: 520, column: 1, scope: !1191, inlinedAt: !1649)
!1665 = !DILocation(line: 705, column: 11, scope: !1650)
!1666 = !DILocation(line: 706, column: 9, scope: !1650)
!1667 = !DILocation(line: 707, column: 17, scope: !1513)
!1668 = !DILocation(line: 708, column: 5, scope: !1568)
!1669 = !DILocation(line: 710, column: 10, scope: !1498)
!1670 = !DILocation(line: 710, column: 3, scope: !1498)
!1671 = distinct !DISubprogram(name: "fmt_paragraph", scope: !3, file: !3, line: 848, type: !703, isLocal: true, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678}
!1673 = !DILocalVariable(name: "start", scope: !1671, file: !3, line: 850, type: !168)
!1674 = !DILocalVariable(name: "w", scope: !1671, file: !3, line: 850, type: !168)
!1675 = !DILocalVariable(name: "len", scope: !1671, file: !3, line: 851, type: !59)
!1676 = !DILocalVariable(name: "wcost", scope: !1671, file: !3, line: 852, type: !61)
!1677 = !DILocalVariable(name: "best", scope: !1671, file: !3, line: 852, type: !61)
!1678 = !DILocalVariable(name: "saved_length", scope: !1671, file: !3, line: 853, type: !59)
!1679 = !DILocation(line: 855, column: 3, scope: !1671)
!1680 = !DILocation(line: 855, column: 15, scope: !1671)
!1681 = !DILocation(line: 855, column: 25, scope: !1671)
!1682 = !{!1344, !1096, i64 24}
!1683 = !DILocation(line: 856, column: 30, scope: !1671)
!1684 = !DILocation(line: 853, column: 7, scope: !1671)
!1685 = !DILocation(line: 857, column: 24, scope: !1671)
!1686 = !DILocation(line: 857, column: 22, scope: !1671)
!1687 = !DILocation(line: 850, column: 9, scope: !1671)
!1688 = !DILocation(line: 859, column: 38, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1690, file: !3, discriminator: 1)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 859, column: 3)
!1691 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 859, column: 3)
!1692 = !DILocation(line: 859, column: 3, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1691, file: !3, discriminator: 1)
!1694 = !DILocation(line: 852, column: 15, scope: !1671)
!1695 = !DILocation(line: 862, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 860, column: 5)
!1697 = !DILocation(line: 851, column: 7, scope: !1671)
!1698 = !DILocation(line: 850, column: 17, scope: !1671)
!1699 = !DILocation(line: 867, column: 17, scope: !1696)
!1700 = !DILocation(line: 867, column: 11, scope: !1696)
!1701 = !DILocation(line: 868, column: 7, scope: !1696)
!1702 = distinct !{!1702, !1701, !1703}
!1703 = !DILocation(line: 893, column: 29, scope: !1696)
!1704 = !DILocation(line: 870, column: 12, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 869, column: 9)
!1706 = !DILocalVariable(name: "next", arg: 1, scope: !1707, file: !3, line: 937, type: !168)
!1707 = distinct !DISubprogram(name: "line_cost", scope: !3, file: !3, line: 937, type: !1708, isLocal: true, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1710)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!61, !168, !59}
!1710 = !{!1706, !1711, !1712, !1713}
!1711 = !DILocalVariable(name: "len", arg: 2, scope: !1707, file: !3, line: 937, type: !59)
!1712 = !DILocalVariable(name: "n", scope: !1707, file: !3, line: 939, type: !59)
!1713 = !DILocalVariable(name: "cost", scope: !1707, file: !3, line: 940, type: !61)
!1714 = !DILocation(line: 937, column: 18, scope: !1707, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 874, column: 19, scope: !1705)
!1716 = !DILocation(line: 937, column: 28, scope: !1707, inlinedAt: !1715)
!1717 = !DILocation(line: 942, column: 12, scope: !1718, inlinedAt: !1715)
!1718 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 942, column: 7)
!1719 = !DILocation(line: 942, column: 7, scope: !1707, inlinedAt: !1715)
!1720 = !DILocation(line: 944, column: 18, scope: !1707, inlinedAt: !1715)
!1721 = !DILocation(line: 939, column: 7, scope: !1707, inlinedAt: !1715)
!1722 = !DILocation(line: 945, column: 10, scope: !1707, inlinedAt: !1715)
!1723 = !DILocation(line: 940, column: 8, scope: !1707, inlinedAt: !1715)
!1724 = !DILocation(line: 946, column: 13, scope: !1725, inlinedAt: !1715)
!1725 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 946, column: 7)
!1726 = !DILocation(line: 946, column: 24, scope: !1725, inlinedAt: !1715)
!1727 = !DILocation(line: 946, column: 7, scope: !1707, inlinedAt: !1715)
!1728 = !DILocation(line: 948, column: 23, scope: !1729, inlinedAt: !1715)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 947, column: 5)
!1730 = !{!1344, !837, i64 20}
!1731 = !DILocation(line: 948, column: 15, scope: !1729, inlinedAt: !1715)
!1732 = !DILocation(line: 949, column: 15, scope: !1729, inlinedAt: !1715)
!1733 = !DILocation(line: 949, column: 12, scope: !1729, inlinedAt: !1715)
!1734 = !DILocation(line: 950, column: 5, scope: !1729, inlinedAt: !1715)
!1735 = !DILocation(line: 874, column: 43, scope: !1705)
!1736 = !DILocation(line: 874, column: 38, scope: !1705)
!1737 = !DILocation(line: 852, column: 8, scope: !1671)
!1738 = !DILocation(line: 875, column: 29, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 875, column: 15)
!1740 = !DILocation(line: 876, column: 22, scope: !1739)
!1741 = !DILocation(line: 876, column: 19, scope: !1739)
!1742 = !DILocation(line: 876, column: 13, scope: !1739)
!1743 = !DILocation(line: 877, column: 21, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 877, column: 15)
!1745 = !DILocation(line: 877, column: 15, scope: !1705)
!1746 = !DILocation(line: 880, column: 33, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 878, column: 13)
!1748 = !DILocation(line: 881, column: 34, scope: !1747)
!1749 = !DILocation(line: 882, column: 13, scope: !1747)
!1750 = !DILocation(line: 888, column: 15, scope: !1705)
!1751 = !DILocation(line: 891, column: 27, scope: !1705)
!1752 = !DILocation(line: 891, column: 38, scope: !1705)
!1753 = !DILocation(line: 891, column: 33, scope: !1705)
!1754 = !DILocation(line: 891, column: 15, scope: !1705)
!1755 = !DILocation(line: 893, column: 18, scope: !1696)
!1756 = !DILocation(line: 892, column: 9, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1705, file: !3, discriminator: 1)
!1758 = !DILocalVariable(name: "this", arg: 1, scope: !1759, file: !3, line: 904, type: !168)
!1759 = distinct !DISubprogram(name: "base_cost", scope: !3, file: !3, line: 904, type: !1760, isLocal: true, isDefinition: true, scopeLine: 905, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1762)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!61, !168}
!1762 = !{!1758, !1763}
!1763 = !DILocalVariable(name: "cost", scope: !1759, file: !3, line: 906, type: !61)
!1764 = !DILocation(line: 904, column: 18, scope: !1759, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 894, column: 33, scope: !1696)
!1766 = !DILocation(line: 906, column: 8, scope: !1759, inlinedAt: !1765)
!1767 = !DILocation(line: 910, column: 12, scope: !1768, inlinedAt: !1765)
!1768 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 910, column: 7)
!1769 = !DILocation(line: 910, column: 7, scope: !1759, inlinedAt: !1765)
!1770 = !DILocation(line: 912, column: 23, scope: !1771, inlinedAt: !1765)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 912, column: 11)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 911, column: 5)
!1773 = !DILocation(line: 912, column: 11, scope: !1771, inlinedAt: !1765)
!1774 = !DILocation(line: 912, column: 11, scope: !1772, inlinedAt: !1765)
!1775 = !DILocation(line: 914, column: 27, scope: !1776, inlinedAt: !1765)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 914, column: 15)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 913, column: 9)
!1778 = !DILocation(line: 914, column: 15, scope: !1776, inlinedAt: !1765)
!1779 = !DILocation(line: 919, column: 28, scope: !1780, inlinedAt: !1765)
!1780 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 919, column: 16)
!1781 = !DILocation(line: 919, column: 16, scope: !1780, inlinedAt: !1765)
!1782 = !DILocation(line: 919, column: 16, scope: !1771, inlinedAt: !1765)
!1783 = !DILocation(line: 921, column: 21, scope: !1784, inlinedAt: !1765)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 921, column: 16)
!1785 = !DILocation(line: 921, column: 32, scope: !1784, inlinedAt: !1765)
!1786 = !DILocation(line: 921, column: 47, scope: !1787, inlinedAt: !1765)
!1787 = !DILexicalBlockFile(scope: !1784, file: !3, discriminator: 1)
!1788 = !DILocation(line: 921, column: 35, scope: !1787, inlinedAt: !1765)
!1789 = !DILocation(line: 921, column: 16, scope: !1790, inlinedAt: !1765)
!1790 = !DILexicalBlockFile(scope: !1780, file: !3, discriminator: 1)
!1791 = !DILocation(line: 922, column: 17, scope: !1784, inlinedAt: !1765)
!1792 = !DILocation(line: 922, column: 14, scope: !1784, inlinedAt: !1765)
!1793 = !DILocation(line: 922, column: 9, scope: !1784, inlinedAt: !1765)
!1794 = !DILocation(line: 925, column: 13, scope: !1795, inlinedAt: !1765)
!1795 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 925, column: 7)
!1796 = !DILocation(line: 925, column: 7, scope: !1795, inlinedAt: !1765)
!1797 = !DILocation(line: 925, column: 7, scope: !1759, inlinedAt: !1765)
!1798 = !DILocation(line: 926, column: 10, scope: !1795, inlinedAt: !1765)
!1799 = !DILocation(line: 926, column: 5, scope: !1795, inlinedAt: !1765)
!1800 = !DILocation(line: 927, column: 18, scope: !1801, inlinedAt: !1765)
!1801 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 927, column: 12)
!1802 = !DILocation(line: 927, column: 12, scope: !1801, inlinedAt: !1765)
!1803 = !DILocation(line: 927, column: 12, scope: !1795, inlinedAt: !1765)
!1804 = !DILocation(line: 928, column: 13, scope: !1801, inlinedAt: !1765)
!1805 = !DILocation(line: 928, column: 10, scope: !1801, inlinedAt: !1765)
!1806 = !DILocation(line: 928, column: 5, scope: !1801, inlinedAt: !1765)
!1807 = !DILocation(line: 894, column: 31, scope: !1696)
!1808 = !DILocation(line: 894, column: 14, scope: !1696)
!1809 = !DILocation(line: 894, column: 24, scope: !1696)
!1810 = distinct !{!1810, !1811, !1812}
!1811 = !DILocation(line: 859, column: 3, scope: !1691)
!1812 = !DILocation(line: 895, column: 5, scope: !1691)
!1813 = !DILocation(line: 897, column: 22, scope: !1671)
!1814 = !DILocation(line: 898, column: 1, scope: !1671)
!1815 = distinct !DISubprogram(name: "put_line", scope: !3, file: !3, line: 971, type: !1816, isLocal: true, isDefinition: true, scopeLine: 972, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1818)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !168, !59}
!1818 = !{!1819, !1820, !1821}
!1819 = !DILocalVariable(name: "w", arg: 1, scope: !1815, file: !3, line: 971, type: !168)
!1820 = !DILocalVariable(name: "indent", arg: 2, scope: !1815, file: !3, line: 971, type: !59)
!1821 = !DILocalVariable(name: "endline", scope: !1815, file: !3, line: 973, type: !168)
!1822 = !DILocation(line: 971, column: 17, scope: !1815)
!1823 = !DILocation(line: 971, column: 24, scope: !1815)
!1824 = !DILocation(line: 975, column: 14, scope: !1815)
!1825 = !DILocation(line: 976, column: 14, scope: !1815)
!1826 = !DILocation(line: 976, column: 3, scope: !1815)
!1827 = !DILocation(line: 977, column: 3, scope: !1815)
!1828 = !DILocation(line: 978, column: 17, scope: !1815)
!1829 = !DILocation(line: 978, column: 14, scope: !1815)
!1830 = !DILocation(line: 979, column: 21, scope: !1815)
!1831 = !DILocation(line: 979, column: 3, scope: !1815)
!1832 = !DILocation(line: 981, column: 16, scope: !1815)
!1833 = !DILocation(line: 981, column: 27, scope: !1815)
!1834 = !DILocation(line: 973, column: 9, scope: !1815)
!1835 = !DILocation(line: 982, column: 3, scope: !1815)
!1836 = !DILocation(line: 982, column: 12, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1838, file: !3, discriminator: 1)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 982, column: 3)
!1839 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 982, column: 3)
!1840 = !DILocalVariable(name: "w", arg: 1, scope: !1841, file: !3, line: 995, type: !168)
!1841 = distinct !DISubprogram(name: "put_word", scope: !3, file: !3, line: 995, type: !1335, isLocal: true, isDefinition: true, scopeLine: 996, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1842)
!1842 = !{!1840, !1843, !1844}
!1843 = !DILocalVariable(name: "s", scope: !1841, file: !3, line: 997, type: !56)
!1844 = !DILocalVariable(name: "n", scope: !1841, file: !3, line: 998, type: !59)
!1845 = !DILocation(line: 995, column: 17, scope: !1841, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 984, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 983, column: 5)
!1848 = !DILocation(line: 1001, column: 15, scope: !1849, inlinedAt: !1846)
!1849 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 1001, column: 3)
!1850 = !DILocation(line: 998, column: 7, scope: !1841, inlinedAt: !1846)
!1851 = !DILocation(line: 1001, column: 25, scope: !1852, inlinedAt: !1846)
!1852 = !DILexicalBlockFile(scope: !1853, file: !3, discriminator: 1)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 1001, column: 3)
!1854 = !DILocation(line: 1001, column: 3, scope: !1855, inlinedAt: !1846)
!1855 = !DILexicalBlockFile(scope: !1849, file: !3, discriminator: 1)
!1856 = !DILocation(line: 1000, column: 10, scope: !1841, inlinedAt: !1846)
!1857 = !DILocation(line: 1002, column: 5, scope: !1853, inlinedAt: !1846)
!1858 = !DILocation(line: 997, column: 15, scope: !1841, inlinedAt: !1846)
!1859 = !DILocation(line: 107, column: 10, scope: !1087, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 1002, column: 5, scope: !1853, inlinedAt: !1846)
!1861 = !DILocation(line: 107, column: 10, scope: !1101, inlinedAt: !1860)
!1862 = !DILocation(line: 107, column: 10, scope: !1103, inlinedAt: !1860)
!1863 = !DILocation(line: 1001, column: 32, scope: !1864, inlinedAt: !1846)
!1864 = !DILexicalBlockFile(scope: !1853, file: !3, discriminator: 2)
!1865 = distinct !{!1865, !1866, !1867}
!1866 = !DILocation(line: 1001, column: 3, scope: !1849)
!1867 = !DILocation(line: 1002, column: 5, scope: !1849)
!1868 = !DILocation(line: 1003, column: 20, scope: !1841, inlinedAt: !1846)
!1869 = !DILocation(line: 1003, column: 14, scope: !1841, inlinedAt: !1846)
!1870 = !DILocation(line: 982, column: 3, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1839, file: !3, discriminator: 1)
!1872 = !DILocation(line: 985, column: 21, scope: !1847)
!1873 = !DILocation(line: 985, column: 7, scope: !1847)
!1874 = !DILocation(line: 982, column: 25, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1838, file: !3, discriminator: 2)
!1876 = !DILocation(line: 982, column: 3, scope: !1875)
!1877 = distinct !{!1877, !1878, !1879}
!1878 = !DILocation(line: 982, column: 3, scope: !1839)
!1879 = !DILocation(line: 986, column: 5, scope: !1839)
!1880 = !DILocation(line: 988, column: 20, scope: !1815)
!1881 = !DILocation(line: 105, column: 23, scope: !1087, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 989, column: 3, scope: !1815)
!1883 = !DILocation(line: 107, column: 10, scope: !1087, inlinedAt: !1882)
!1884 = !DILocation(line: 107, column: 10, scope: !1101, inlinedAt: !1882)
!1885 = !DILocation(line: 107, column: 10, scope: !1103, inlinedAt: !1882)
!1886 = !DILocation(line: 990, column: 1, scope: !1815)
!1887 = distinct !DISubprogram(name: "flush_paragraph", scope: !3, file: !3, line: 784, type: !703, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1888)
!1888 = !{!1889, !1890, !1891, !1892}
!1889 = !DILocalVariable(name: "split_point", scope: !1887, file: !3, line: 786, type: !168)
!1890 = !DILocalVariable(name: "w", scope: !1887, file: !3, line: 787, type: !168)
!1891 = !DILocalVariable(name: "shift", scope: !1887, file: !3, line: 788, type: !59)
!1892 = !DILocalVariable(name: "best_break", scope: !1887, file: !3, line: 789, type: !61)
!1893 = !DILocation(line: 793, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 793, column: 7)
!1895 = !DILocation(line: 793, column: 18, scope: !1894)
!1896 = !DILocation(line: 793, column: 7, scope: !1887)
!1897 = !DILocation(line: 795, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 794, column: 5)
!1899 = !DILocation(line: 796, column: 12, scope: !1898)
!1900 = !DILocation(line: 797, column: 7, scope: !1898)
!1901 = !DILocation(line: 806, column: 3, scope: !1887)
!1902 = !DILocation(line: 786, column: 9, scope: !1887)
!1903 = !DILocation(line: 789, column: 8, scope: !1887)
!1904 = !DILocation(line: 787, column: 9, scope: !1887)
!1905 = !DILocation(line: 812, column: 32, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1907, file: !3, discriminator: 1)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 812, column: 3)
!1908 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 812, column: 3)
!1909 = !DILocation(line: 812, column: 3, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1908, file: !3, discriminator: 1)
!1911 = !DILocation(line: 814, column: 14, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 814, column: 11)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 813, column: 5)
!1914 = !DILocation(line: 814, column: 29, scope: !1912)
!1915 = !DILocation(line: 814, column: 41, scope: !1912)
!1916 = !DILocation(line: 814, column: 24, scope: !1912)
!1917 = !DILocation(line: 814, column: 51, scope: !1912)
!1918 = !DILocation(line: 814, column: 11, scope: !1913)
!1919 = !DILocation(line: 819, column: 22, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 819, column: 11)
!1921 = !DILocation(line: 820, column: 20, scope: !1920)
!1922 = !DILocation(line: 819, column: 11, scope: !1913)
!1923 = distinct !{!1923, !1924, !1925}
!1924 = !DILocation(line: 812, column: 3, scope: !1908)
!1925 = !DILocation(line: 821, column: 5, scope: !1908)
!1926 = !DILocation(line: 958, column: 22, scope: !1334, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 822, column: 3, scope: !1887)
!1928 = !DILocation(line: 962, column: 19, scope: !1334, inlinedAt: !1927)
!1929 = !DILocation(line: 962, column: 3, scope: !1334, inlinedAt: !1927)
!1930 = !DILocation(line: 960, column: 9, scope: !1334, inlinedAt: !1927)
!1931 = !DILocation(line: 963, column: 32, scope: !1347, inlinedAt: !1927)
!1932 = !DILocation(line: 963, column: 3, scope: !1351, inlinedAt: !1927)
!1933 = !DILocation(line: 964, column: 18, scope: !1348, inlinedAt: !1927)
!1934 = !DILocation(line: 964, column: 5, scope: !1348, inlinedAt: !1927)
!1935 = !DILocation(line: 963, column: 50, scope: !1357, inlinedAt: !1927)
!1936 = distinct !{!1936, !1937, !1938}
!1937 = !DILocation(line: 963, column: 3, scope: !1349)
!1938 = !DILocation(line: 964, column: 30, scope: !1349)
!1939 = !DILocation(line: 827, column: 34, scope: !1887)
!1940 = !DILocation(line: 827, column: 40, scope: !1887)
!1941 = !DILocation(line: 827, column: 45, scope: !1887)
!1942 = !DILocation(line: 827, column: 3, scope: !1887)
!1943 = !DILocation(line: 828, column: 24, scope: !1887)
!1944 = !DILocation(line: 828, column: 29, scope: !1887)
!1945 = !DILocation(line: 829, column: 8, scope: !1887)
!1946 = !DILocation(line: 833, column: 30, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1948, file: !3, discriminator: 1)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 833, column: 3)
!1949 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 833, column: 3)
!1950 = !DILocation(line: 833, column: 27, scope: !1947)
!1951 = !DILocation(line: 833, column: 3, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1949, file: !3, discriminator: 1)
!1953 = !DILocation(line: 834, column: 8, scope: !1948)
!1954 = !DILocation(line: 834, column: 13, scope: !1948)
!1955 = !DILocation(line: 833, column: 43, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1948, file: !3, discriminator: 2)
!1957 = distinct !{!1957, !1958, !1959}
!1958 = !DILocation(line: 833, column: 3, scope: !1949)
!1959 = !DILocation(line: 834, column: 16, scope: !1949)
!1960 = !DILocation(line: 839, column: 3, scope: !1887)
!1961 = !DILocation(line: 840, column: 14, scope: !1887)
!1962 = !DILocation(line: 839, column: 43, scope: !1887)
!1963 = !DILocation(line: 839, column: 62, scope: !1887)
!1964 = !DILocation(line: 840, column: 29, scope: !1887)
!1965 = !DILocation(line: 841, column: 1, scope: !1887)
!1966 = !DILocation(line: 841, column: 1, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1887, file: !3, discriminator: 2)
!1968 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !186, file: !186, line: 41, type: !87, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !181, variables: !1969)
!1969 = !{!1970}
!1970 = !DILocalVariable(name: "file", arg: 1, scope: !1968, file: !186, line: 41, type: !56)
!1971 = !DILocation(line: 41, column: 41, scope: !1968)
!1972 = !DILocation(line: 43, column: 13, scope: !1968)
!1973 = !DILocation(line: 44, column: 1, scope: !1968)
!1974 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !186, file: !186, line: 78, type: !1192, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !181, variables: !1975)
!1975 = !{!1976}
!1976 = !DILocalVariable(name: "ignore", arg: 1, scope: !1974, file: !186, line: 78, type: !66)
!1977 = !DILocation(line: 78, column: 37, scope: !1974)
!1978 = !DILocation(line: 80, column: 16, scope: !1974)
!1979 = !{!1980, !1980, i64 0}
!1980 = !{!"_Bool", !689, i64 0}
!1981 = !DILocation(line: 81, column: 1, scope: !1974)
!1982 = distinct !DISubprogram(name: "close_stdout", scope: !186, file: !186, line: 107, type: !703, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !181, variables: !1983)
!1983 = !{!1984}
!1984 = !DILocalVariable(name: "write_error", scope: !1985, file: !186, line: 112, type: !56)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !186, line: 111, column: 5)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !186, line: 109, column: 7)
!1987 = !DILocation(line: 109, column: 21, scope: !1986)
!1988 = !DILocation(line: 109, column: 7, scope: !1986)
!1989 = !DILocation(line: 109, column: 29, scope: !1986)
!1990 = !DILocation(line: 110, column: 7, scope: !1986)
!1991 = !DILocation(line: 110, column: 12, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1986, file: !186, discriminator: 1)
!1993 = !{i8 0, i8 2}
!1994 = !DILocation(line: 114, column: 19, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1985, file: !186, line: 113, column: 11)
!1996 = !DILocation(line: 110, column: 25, scope: !1992)
!1997 = !DILocation(line: 110, column: 28, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1986, file: !186, discriminator: 2)
!1999 = !DILocation(line: 110, column: 34, scope: !1998)
!2000 = !DILocation(line: 109, column: 7, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1982, file: !186, discriminator: 1)
!2002 = !DILocation(line: 112, column: 33, scope: !1985)
!2003 = !DILocation(line: 112, column: 19, scope: !1985)
!2004 = !DILocation(line: 113, column: 11, scope: !1995)
!2005 = !DILocation(line: 113, column: 11, scope: !1985)
!2006 = !DILocation(line: 114, column: 36, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !1995, file: !186, discriminator: 1)
!2008 = !DILocation(line: 114, column: 9, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !1995, file: !186, discriminator: 2)
!2010 = !DILocation(line: 114, column: 9, scope: !1995)
!2011 = !DILocation(line: 117, column: 9, scope: !2007)
!2012 = !DILocation(line: 119, column: 14, scope: !1985)
!2013 = !DILocation(line: 119, column: 7, scope: !1985)
!2014 = !DILocation(line: 122, column: 22, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1982, file: !186, line: 122, column: 8)
!2016 = !DILocation(line: 122, column: 8, scope: !2015)
!2017 = !DILocation(line: 122, column: 30, scope: !2015)
!2018 = !DILocation(line: 122, column: 8, scope: !1982)
!2019 = !DILocation(line: 123, column: 13, scope: !2015)
!2020 = !DILocation(line: 123, column: 6, scope: !2015)
!2021 = !DILocation(line: 124, column: 1, scope: !1982)
!2022 = distinct !DISubprogram(name: "fdadvise", scope: !2023, file: !2023, line: 31, type: !2024, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !2028)
!2023 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !59, !2026, !2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !772, line: 91, baseType: !800)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!2028 = !{!2029, !2030, !2031, !2032, !2033}
!2029 = !DILocalVariable(name: "fd", arg: 1, scope: !2022, file: !2023, line: 31, type: !59)
!2030 = !DILocalVariable(name: "offset", arg: 2, scope: !2022, file: !2023, line: 31, type: !2026)
!2031 = !DILocalVariable(name: "len", arg: 3, scope: !2022, file: !2023, line: 31, type: !2026)
!2032 = !DILocalVariable(name: "advice", arg: 4, scope: !2022, file: !2023, line: 31, type: !2027)
!2033 = !DILocalVariable(name: "__x", scope: !2034, file: !2023, line: 34, type: !59)
!2034 = distinct !DILexicalBlock(scope: !2022, file: !2023, line: 34, column: 3)
!2035 = !DILocation(line: 31, column: 15, scope: !2022)
!2036 = !DILocation(line: 31, column: 25, scope: !2022)
!2037 = !DILocation(line: 31, column: 39, scope: !2022)
!2038 = !DILocation(line: 31, column: 54, scope: !2022)
!2039 = !DILocation(line: 34, column: 3, scope: !2034)
!2040 = !DILocation(line: 36, column: 1, scope: !2022)
!2041 = distinct !DISubprogram(name: "fadvise", scope: !2023, file: !2023, line: 39, type: !2042, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !2084)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !2044, !2027}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !772, line: 49, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !774, line: 241, size: 1728, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2046, file: !774, line: 242, baseType: !59, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2046, file: !774, line: 247, baseType: !45, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2046, file: !774, line: 248, baseType: !45, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2046, file: !774, line: 249, baseType: !45, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2046, file: !774, line: 250, baseType: !45, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2046, file: !774, line: 251, baseType: !45, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2046, file: !774, line: 252, baseType: !45, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2046, file: !774, line: 253, baseType: !45, size: 64, offset: 448)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2046, file: !774, line: 254, baseType: !45, size: 64, offset: 512)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2046, file: !774, line: 256, baseType: !45, size: 64, offset: 576)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2046, file: !774, line: 257, baseType: !45, size: 64, offset: 640)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2046, file: !774, line: 258, baseType: !45, size: 64, offset: 704)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2046, file: !774, line: 260, baseType: !2061, size: 64, offset: 768)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !774, line: 156, size: 192, elements: !2063)
!2063 = !{!2064, !2065, !2067}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2062, file: !774, line: 157, baseType: !2061, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2062, file: !774, line: 158, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2062, file: !774, line: 162, baseType: !59, size: 32, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2046, file: !774, line: 262, baseType: !2066, size: 64, offset: 832)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2046, file: !774, line: 264, baseType: !59, size: 32, offset: 896)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2046, file: !774, line: 268, baseType: !59, size: 32, offset: 928)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2046, file: !774, line: 270, baseType: !800, size: 64, offset: 960)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2046, file: !774, line: 274, baseType: !60, size: 16, offset: 1024)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2046, file: !774, line: 275, baseType: !804, size: 8, offset: 1040)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2046, file: !774, line: 276, baseType: !806, size: 8, offset: 1048)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2046, file: !774, line: 280, baseType: !810, size: 64, offset: 1088)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2046, file: !774, line: 289, baseType: !813, size: 64, offset: 1152)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2046, file: !774, line: 297, baseType: !47, size: 64, offset: 1216)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2046, file: !774, line: 298, baseType: !47, size: 64, offset: 1280)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2046, file: !774, line: 299, baseType: !47, size: 64, offset: 1344)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2046, file: !774, line: 300, baseType: !47, size: 64, offset: 1408)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2046, file: !774, line: 302, baseType: !48, size: 64, offset: 1472)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2046, file: !774, line: 303, baseType: !59, size: 32, offset: 1536)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2046, file: !774, line: 305, baseType: !821, size: 160, offset: 1568)
!2084 = !{!2085, !2086}
!2085 = !DILocalVariable(name: "fp", arg: 1, scope: !2041, file: !2023, line: 39, type: !2044)
!2086 = !DILocalVariable(name: "advice", arg: 2, scope: !2041, file: !2023, line: 39, type: !2027)
!2087 = !DILocation(line: 39, column: 16, scope: !2041)
!2088 = !DILocation(line: 39, column: 30, scope: !2041)
!2089 = !DILocation(line: 41, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2041, file: !2023, line: 41, column: 7)
!2091 = !DILocation(line: 41, column: 7, scope: !2041)
!2092 = !DILocation(line: 42, column: 15, scope: !2090)
!2093 = !DILocation(line: 31, column: 15, scope: !2022, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 42, column: 5, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2090, file: !2023, discriminator: 1)
!2096 = !DILocation(line: 31, column: 25, scope: !2022, inlinedAt: !2094)
!2097 = !DILocation(line: 31, column: 39, scope: !2022, inlinedAt: !2094)
!2098 = !DILocation(line: 31, column: 54, scope: !2022, inlinedAt: !2094)
!2099 = !DILocation(line: 34, column: 3, scope: !2034, inlinedAt: !2094)
!2100 = !DILocation(line: 42, column: 5, scope: !2090)
!2101 = !DILocation(line: 43, column: 1, scope: !2041)
!2102 = distinct !DISubprogram(name: "set_program_name", scope: !200, file: !200, line: 39, type: !87, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !196, variables: !2103)
!2103 = !{!2104, !2105, !2106}
!2104 = !DILocalVariable(name: "argv0", arg: 1, scope: !2102, file: !200, line: 39, type: !56)
!2105 = !DILocalVariable(name: "slash", scope: !2102, file: !200, line: 46, type: !56)
!2106 = !DILocalVariable(name: "base", scope: !2102, file: !200, line: 47, type: !56)
!2107 = !DILocation(line: 39, column: 31, scope: !2102)
!2108 = !DILocation(line: 51, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2102, file: !200, line: 51, column: 7)
!2110 = !DILocation(line: 51, column: 7, scope: !2102)
!2111 = !DILocation(line: 55, column: 14, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !200, line: 52, column: 5)
!2113 = !DILocation(line: 54, column: 7, scope: !2112)
!2114 = !DILocation(line: 56, column: 7, scope: !2112)
!2115 = !DILocation(line: 59, column: 11, scope: !2102)
!2116 = !DILocation(line: 46, column: 15, scope: !2102)
!2117 = !DILocation(line: 60, column: 17, scope: !2102)
!2118 = !DILocation(line: 60, column: 33, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2102, file: !200, discriminator: 1)
!2120 = !DILocation(line: 60, column: 11, scope: !2102)
!2121 = !DILocation(line: 47, column: 15, scope: !2102)
!2122 = !DILocation(line: 61, column: 12, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2102, file: !200, line: 61, column: 7)
!2124 = !DILocation(line: 61, column: 20, scope: !2123)
!2125 = !DILocation(line: 61, column: 25, scope: !2123)
!2126 = !DILocation(line: 61, column: 28, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2123, file: !200, discriminator: 1)
!2128 = !DILocation(line: 61, column: 61, scope: !2127)
!2129 = !DILocation(line: 61, column: 7, scope: !2119)
!2130 = !DILocation(line: 64, column: 11, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !200, line: 64, column: 11)
!2132 = distinct !DILexicalBlock(scope: !2123, file: !200, line: 62, column: 5)
!2133 = !DILocation(line: 64, column: 36, scope: !2131)
!2134 = !DILocation(line: 64, column: 11, scope: !2132)
!2135 = !DILocation(line: 66, column: 24, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2131, file: !200, line: 65, column: 9)
!2137 = !DILocation(line: 70, column: 41, scope: !2136)
!2138 = !DILocation(line: 72, column: 9, scope: !2136)
!2139 = !DILocation(line: 84, column: 16, scope: !2102)
!2140 = !DILocation(line: 90, column: 27, scope: !2102)
!2141 = !DILocation(line: 92, column: 1, scope: !2102)
!2142 = distinct !DISubprogram(name: "clone_quoting_options", scope: !215, file: !215, line: 114, type: !2143, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !2146)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!2145, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2146 = !{!2147, !2148, !2149}
!2147 = !DILocalVariable(name: "o", arg: 1, scope: !2142, file: !215, line: 114, type: !2145)
!2148 = !DILocalVariable(name: "e", scope: !2142, file: !215, line: 116, type: !59)
!2149 = !DILocalVariable(name: "p", scope: !2142, file: !215, line: 117, type: !2145)
!2150 = !DILocation(line: 114, column: 48, scope: !2142)
!2151 = !DILocation(line: 116, column: 11, scope: !2142)
!2152 = !DILocation(line: 116, column: 7, scope: !2142)
!2153 = !DILocation(line: 117, column: 40, scope: !2142)
!2154 = !DILocation(line: 117, column: 40, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2142, file: !215, discriminator: 3)
!2156 = !DILocation(line: 117, column: 31, scope: !2155)
!2157 = !DILocation(line: 117, column: 27, scope: !2142)
!2158 = !DILocation(line: 119, column: 9, scope: !2142)
!2159 = !DILocation(line: 120, column: 3, scope: !2142)
!2160 = distinct !DISubprogram(name: "get_quoting_style", scope: !215, file: !215, line: 125, type: !2161, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !2165)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!5, !2163}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!2165 = !{!2166}
!2166 = !DILocalVariable(name: "o", arg: 1, scope: !2160, file: !215, line: 125, type: !2163)
!2167 = !DILocation(line: 125, column: 50, scope: !2160)
!2168 = !DILocation(line: 127, column: 11, scope: !2160)
!2169 = !DILocation(line: 127, column: 46, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2160, file: !215, discriminator: 3)
!2171 = !{!2172, !689, i64 0}
!2172 = !{!"quoting_options", !689, i64 0, !837, i64 4, !689, i64 8, !688, i64 40, !688, i64 48}
!2173 = !DILocation(line: 127, column: 3, scope: !2170)
!2174 = distinct !DISubprogram(name: "set_quoting_style", scope: !215, file: !215, line: 133, type: !2175, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2145, !5}
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "o", arg: 1, scope: !2174, file: !215, line: 133, type: !2145)
!2179 = !DILocalVariable(name: "s", arg: 2, scope: !2174, file: !215, line: 133, type: !5)
!2180 = !DILocation(line: 133, column: 44, scope: !2174)
!2181 = !DILocation(line: 133, column: 66, scope: !2174)
!2182 = !DILocation(line: 135, column: 4, scope: !2174)
!2183 = !DILocation(line: 135, column: 39, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2174, file: !215, discriminator: 3)
!2185 = !DILocation(line: 135, column: 45, scope: !2184)
!2186 = !DILocation(line: 136, column: 1, scope: !2174)
!2187 = distinct !DISubprogram(name: "set_char_quoting", scope: !215, file: !215, line: 144, type: !2188, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!59, !2145, !46, !59}
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2197, !2198}
!2191 = !DILocalVariable(name: "o", arg: 1, scope: !2187, file: !215, line: 144, type: !2145)
!2192 = !DILocalVariable(name: "c", arg: 2, scope: !2187, file: !215, line: 144, type: !46)
!2193 = !DILocalVariable(name: "i", arg: 3, scope: !2187, file: !215, line: 144, type: !59)
!2194 = !DILocalVariable(name: "uc", scope: !2187, file: !215, line: 146, type: !55)
!2195 = !DILocalVariable(name: "p", scope: !2187, file: !215, line: 147, type: !2196)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2197 = !DILocalVariable(name: "shift", scope: !2187, file: !215, line: 149, type: !59)
!2198 = !DILocalVariable(name: "r", scope: !2187, file: !215, line: 150, type: !59)
!2199 = !DILocation(line: 144, column: 43, scope: !2187)
!2200 = !DILocation(line: 144, column: 51, scope: !2187)
!2201 = !DILocation(line: 144, column: 58, scope: !2187)
!2202 = !DILocation(line: 146, column: 17, scope: !2187)
!2203 = !DILocation(line: 148, column: 6, scope: !2187)
!2204 = !DILocation(line: 148, column: 62, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2187, file: !215, discriminator: 3)
!2206 = !DILocation(line: 148, column: 57, scope: !2205)
!2207 = !DILocation(line: 147, column: 17, scope: !2187)
!2208 = !DILocation(line: 149, column: 18, scope: !2187)
!2209 = !DILocation(line: 149, column: 15, scope: !2187)
!2210 = !DILocation(line: 149, column: 7, scope: !2187)
!2211 = !DILocation(line: 150, column: 12, scope: !2187)
!2212 = !DILocation(line: 150, column: 15, scope: !2187)
!2213 = !DILocation(line: 150, column: 25, scope: !2187)
!2214 = !DILocation(line: 150, column: 7, scope: !2187)
!2215 = !DILocation(line: 151, column: 13, scope: !2187)
!2216 = !DILocation(line: 151, column: 18, scope: !2187)
!2217 = !DILocation(line: 151, column: 23, scope: !2187)
!2218 = !DILocation(line: 151, column: 6, scope: !2187)
!2219 = !DILocation(line: 152, column: 3, scope: !2187)
!2220 = distinct !DISubprogram(name: "set_quoting_flags", scope: !215, file: !215, line: 160, type: !2221, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!59, !2145, !59}
!2223 = !{!2224, !2225, !2226}
!2224 = !DILocalVariable(name: "o", arg: 1, scope: !2220, file: !215, line: 160, type: !2145)
!2225 = !DILocalVariable(name: "i", arg: 2, scope: !2220, file: !215, line: 160, type: !59)
!2226 = !DILocalVariable(name: "r", scope: !2220, file: !215, line: 162, type: !59)
!2227 = !DILocation(line: 160, column: 44, scope: !2220)
!2228 = !DILocation(line: 160, column: 51, scope: !2220)
!2229 = !DILocation(line: 163, column: 8, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2220, file: !215, line: 163, column: 7)
!2231 = !DILocation(line: 163, column: 7, scope: !2220)
!2232 = !DILocation(line: 165, column: 10, scope: !2220)
!2233 = !{!2172, !837, i64 4}
!2234 = !DILocation(line: 162, column: 7, scope: !2220)
!2235 = !DILocation(line: 166, column: 12, scope: !2220)
!2236 = !DILocation(line: 167, column: 3, scope: !2220)
!2237 = distinct !DISubprogram(name: "set_custom_quoting", scope: !215, file: !215, line: 171, type: !2238, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !2145, !56, !56}
!2240 = !{!2241, !2242, !2243}
!2241 = !DILocalVariable(name: "o", arg: 1, scope: !2237, file: !215, line: 171, type: !2145)
!2242 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2237, file: !215, line: 172, type: !56)
!2243 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2237, file: !215, line: 172, type: !56)
!2244 = !DILocation(line: 171, column: 45, scope: !2237)
!2245 = !DILocation(line: 172, column: 33, scope: !2237)
!2246 = !DILocation(line: 172, column: 57, scope: !2237)
!2247 = !DILocation(line: 174, column: 8, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2237, file: !215, line: 174, column: 7)
!2249 = !DILocation(line: 174, column: 7, scope: !2237)
!2250 = !DILocation(line: 176, column: 6, scope: !2237)
!2251 = !DILocation(line: 176, column: 12, scope: !2237)
!2252 = !DILocation(line: 177, column: 8, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2237, file: !215, line: 177, column: 7)
!2254 = !DILocation(line: 177, column: 23, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2253, file: !215, discriminator: 1)
!2256 = !DILocation(line: 177, column: 19, scope: !2253)
!2257 = !DILocation(line: 178, column: 5, scope: !2253)
!2258 = !DILocation(line: 179, column: 6, scope: !2237)
!2259 = !DILocation(line: 179, column: 17, scope: !2237)
!2260 = !{!2172, !688, i64 40}
!2261 = !DILocation(line: 180, column: 6, scope: !2237)
!2262 = !DILocation(line: 180, column: 18, scope: !2237)
!2263 = !{!2172, !688, i64 48}
!2264 = !DILocation(line: 181, column: 1, scope: !2237)
!2265 = distinct !DISubprogram(name: "quotearg_buffer", scope: !215, file: !215, line: 776, type: !2266, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!48, !45, !48, !56, !48, !2163}
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2269 = !DILocalVariable(name: "buffer", arg: 1, scope: !2265, file: !215, line: 776, type: !45)
!2270 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2265, file: !215, line: 776, type: !48)
!2271 = !DILocalVariable(name: "arg", arg: 3, scope: !2265, file: !215, line: 777, type: !56)
!2272 = !DILocalVariable(name: "argsize", arg: 4, scope: !2265, file: !215, line: 777, type: !48)
!2273 = !DILocalVariable(name: "o", arg: 5, scope: !2265, file: !215, line: 778, type: !2163)
!2274 = !DILocalVariable(name: "p", scope: !2265, file: !215, line: 780, type: !2163)
!2275 = !DILocalVariable(name: "e", scope: !2265, file: !215, line: 781, type: !59)
!2276 = !DILocalVariable(name: "r", scope: !2265, file: !215, line: 782, type: !48)
!2277 = !DILocation(line: 776, column: 24, scope: !2265)
!2278 = !DILocation(line: 776, column: 39, scope: !2265)
!2279 = !DILocation(line: 777, column: 30, scope: !2265)
!2280 = !DILocation(line: 777, column: 42, scope: !2265)
!2281 = !DILocation(line: 778, column: 48, scope: !2265)
!2282 = !DILocation(line: 780, column: 37, scope: !2265)
!2283 = !DILocation(line: 780, column: 33, scope: !2265)
!2284 = !DILocation(line: 781, column: 11, scope: !2265)
!2285 = !DILocation(line: 781, column: 7, scope: !2265)
!2286 = !DILocation(line: 783, column: 43, scope: !2265)
!2287 = !DILocation(line: 783, column: 53, scope: !2265)
!2288 = !DILocation(line: 783, column: 60, scope: !2265)
!2289 = !DILocation(line: 784, column: 43, scope: !2265)
!2290 = !DILocation(line: 784, column: 58, scope: !2265)
!2291 = !DILocation(line: 782, column: 14, scope: !2265)
!2292 = !DILocation(line: 782, column: 10, scope: !2265)
!2293 = !DILocation(line: 785, column: 9, scope: !2265)
!2294 = !DILocation(line: 786, column: 3, scope: !2265)
!2295 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !215, file: !215, line: 248, type: !2296, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !2300)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!48, !45, !48, !56, !48, !5, !59, !2298, !56, !56}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!2300 = !{!2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2325, !2326, !2327, !2328, !2329, !2332, !2333, !2350, !2353, !2354, !2361}
!2301 = !DILocalVariable(name: "buffer", arg: 1, scope: !2295, file: !215, line: 248, type: !45)
!2302 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2295, file: !215, line: 248, type: !48)
!2303 = !DILocalVariable(name: "arg", arg: 3, scope: !2295, file: !215, line: 249, type: !56)
!2304 = !DILocalVariable(name: "argsize", arg: 4, scope: !2295, file: !215, line: 249, type: !48)
!2305 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2295, file: !215, line: 250, type: !5)
!2306 = !DILocalVariable(name: "flags", arg: 6, scope: !2295, file: !215, line: 250, type: !59)
!2307 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2295, file: !215, line: 251, type: !2298)
!2308 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2295, file: !215, line: 252, type: !56)
!2309 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2295, file: !215, line: 253, type: !56)
!2310 = !DILocalVariable(name: "i", scope: !2295, file: !215, line: 255, type: !48)
!2311 = !DILocalVariable(name: "len", scope: !2295, file: !215, line: 256, type: !48)
!2312 = !DILocalVariable(name: "orig_buffersize", scope: !2295, file: !215, line: 257, type: !48)
!2313 = !DILocalVariable(name: "quote_string", scope: !2295, file: !215, line: 258, type: !56)
!2314 = !DILocalVariable(name: "quote_string_len", scope: !2295, file: !215, line: 259, type: !48)
!2315 = !DILocalVariable(name: "backslash_escapes", scope: !2295, file: !215, line: 260, type: !66)
!2316 = !DILocalVariable(name: "unibyte_locale", scope: !2295, file: !215, line: 261, type: !66)
!2317 = !DILocalVariable(name: "elide_outer_quotes", scope: !2295, file: !215, line: 262, type: !66)
!2318 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2295, file: !215, line: 263, type: !66)
!2319 = !DILocalVariable(name: "encountered_single_quote", scope: !2295, file: !215, line: 264, type: !66)
!2320 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2295, file: !215, line: 265, type: !66)
!2321 = !DILocalVariable(name: "c", scope: !2322, file: !215, line: 394, type: !55)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !215, line: 393, column: 5)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !215, line: 392, column: 3)
!2324 = distinct !DILexicalBlock(scope: !2295, file: !215, line: 392, column: 3)
!2325 = !DILocalVariable(name: "esc", scope: !2322, file: !215, line: 395, type: !55)
!2326 = !DILocalVariable(name: "is_right_quote", scope: !2322, file: !215, line: 396, type: !66)
!2327 = !DILocalVariable(name: "escaping", scope: !2322, file: !215, line: 397, type: !66)
!2328 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2322, file: !215, line: 398, type: !66)
!2329 = !DILocalVariable(name: "m", scope: !2330, file: !215, line: 602, type: !48)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 600, column: 11)
!2331 = distinct !DILexicalBlock(scope: !2322, file: !215, line: 418, column: 9)
!2332 = !DILocalVariable(name: "printable", scope: !2330, file: !215, line: 604, type: !66)
!2333 = !DILocalVariable(name: "mbstate", scope: !2334, file: !215, line: 613, type: !2336)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !215, line: 612, column: 15)
!2335 = distinct !DILexicalBlock(scope: !2330, file: !215, line: 606, column: 17)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2337, line: 107, baseType: !2338)
!2337 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2337, line: 95, baseType: !2339)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2337, line: 83, size: 64, elements: !2340)
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2339, file: !2337, line: 85, baseType: !59, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2339, file: !2337, line: 94, baseType: !2343, size: 32, offset: 32)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2339, file: !2337, line: 86, size: 32, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2343, file: !2337, line: 89, baseType: !44, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2343, file: !2337, line: 93, baseType: !2347, size: 32)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !2348)
!2348 = !{!2349}
!2349 = !DISubrange(count: 4)
!2350 = !DILocalVariable(name: "w", scope: !2351, file: !215, line: 623, type: !2352)
!2351 = distinct !DILexicalBlock(scope: !2334, file: !215, line: 622, column: 19)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !49, line: 90, baseType: !59)
!2353 = !DILocalVariable(name: "bytes", scope: !2351, file: !215, line: 624, type: !48)
!2354 = !DILocalVariable(name: "j", scope: !2355, file: !215, line: 649, type: !48)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !215, line: 648, column: 27)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !215, line: 646, column: 29)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !215, line: 641, column: 23)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !215, line: 633, column: 30)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !215, line: 628, column: 30)
!2360 = distinct !DILexicalBlock(scope: !2351, file: !215, line: 626, column: 25)
!2361 = !DILocalVariable(name: "ilim", scope: !2362, file: !215, line: 676, type: !48)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !215, line: 673, column: 15)
!2363 = distinct !DILexicalBlock(scope: !2330, file: !215, line: 672, column: 17)
!2364 = !DILocation(line: 248, column: 33, scope: !2295)
!2365 = !DILocation(line: 248, column: 48, scope: !2295)
!2366 = !DILocation(line: 249, column: 39, scope: !2295)
!2367 = !DILocation(line: 249, column: 51, scope: !2295)
!2368 = !DILocation(line: 250, column: 46, scope: !2295)
!2369 = !DILocation(line: 250, column: 65, scope: !2295)
!2370 = !DILocation(line: 251, column: 47, scope: !2295)
!2371 = !DILocation(line: 252, column: 39, scope: !2295)
!2372 = !DILocation(line: 253, column: 39, scope: !2295)
!2373 = !DILocation(line: 256, column: 10, scope: !2295)
!2374 = !DILocation(line: 257, column: 10, scope: !2295)
!2375 = !DILocation(line: 258, column: 15, scope: !2295)
!2376 = !DILocation(line: 259, column: 10, scope: !2295)
!2377 = !DILocation(line: 260, column: 8, scope: !2295)
!2378 = !DILocation(line: 261, column: 25, scope: !2295)
!2379 = !DILocation(line: 261, column: 36, scope: !2295)
!2380 = !DILocation(line: 262, column: 8, scope: !2295)
!2381 = !DILocation(line: 263, column: 8, scope: !2295)
!2382 = !DILocation(line: 264, column: 8, scope: !2295)
!2383 = !DILocation(line: 265, column: 8, scope: !2295)
!2384 = !DILocation(line: 265, column: 3, scope: !2295)
!2385 = !DILocation(line: 308, column: 3, scope: !2295)
!2386 = !DILocation(line: 315, column: 11, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2295, file: !215, line: 309, column: 5)
!2388 = !DILocation(line: 315, column: 12, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2387, file: !215, line: 315, column: 11)
!2390 = !DILocation(line: 316, column: 9, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2392, file: !215, discriminator: 1)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !215, line: 316, column: 9)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !215, line: 316, column: 9)
!2394 = !DILocation(line: 316, column: 9, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2393, file: !215, discriminator: 1)
!2396 = !DILocation(line: 316, column: 9, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2392, file: !215, discriminator: 2)
!2398 = !DILocation(line: 354, column: 26, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !215, line: 332, column: 11)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !215, line: 331, column: 13)
!2401 = distinct !DILexicalBlock(scope: !2387, file: !215, line: 330, column: 7)
!2402 = !DILocation(line: 355, column: 27, scope: !2399)
!2403 = !DILocation(line: 356, column: 11, scope: !2399)
!2404 = !DILocation(line: 357, column: 14, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !215, line: 357, column: 13)
!2406 = !DILocation(line: 357, column: 13, scope: !2401)
!2407 = !DILocation(line: 358, column: 43, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2409, file: !215, discriminator: 1)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !215, line: 358, column: 11)
!2410 = distinct !DILexicalBlock(scope: !2405, file: !215, line: 358, column: 11)
!2411 = !DILocation(line: 358, column: 11, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !2410, file: !215, discriminator: 1)
!2413 = !DILocation(line: 359, column: 13, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2415, file: !215, discriminator: 1)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !215, line: 359, column: 13)
!2416 = distinct !DILexicalBlock(scope: !2409, file: !215, line: 359, column: 13)
!2417 = !DILocation(line: 359, column: 13, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2416, file: !215, discriminator: 1)
!2419 = !DILocation(line: 359, column: 13, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2415, file: !215, discriminator: 2)
!2421 = !DILocation(line: 359, column: 13, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2416, file: !215, discriminator: 3)
!2423 = !DILocation(line: 358, column: 70, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2409, file: !215, discriminator: 2)
!2425 = distinct !{!2425, !2426, !2427}
!2426 = !DILocation(line: 358, column: 11, scope: !2410)
!2427 = !DILocation(line: 359, column: 13, scope: !2410)
!2428 = !DILocation(line: 362, column: 28, scope: !2401)
!2429 = !DILocation(line: 364, column: 7, scope: !2387)
!2430 = !DILocation(line: 367, column: 7, scope: !2387)
!2431 = !DILocation(line: 370, column: 7, scope: !2387)
!2432 = !DILocation(line: 373, column: 12, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2387, file: !215, line: 373, column: 11)
!2434 = !DILocation(line: 373, column: 11, scope: !2387)
!2435 = !DILocation(line: 378, column: 12, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2387, file: !215, line: 378, column: 11)
!2437 = !DILocation(line: 378, column: 11, scope: !2387)
!2438 = !DILocation(line: 379, column: 9, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2440, file: !215, discriminator: 1)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !215, line: 379, column: 9)
!2441 = distinct !DILexicalBlock(scope: !2436, file: !215, line: 379, column: 9)
!2442 = !DILocation(line: 379, column: 9, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2441, file: !215, discriminator: 1)
!2444 = !DILocation(line: 379, column: 9, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2440, file: !215, discriminator: 2)
!2446 = !DILocation(line: 386, column: 7, scope: !2387)
!2447 = !DILocation(line: 389, column: 7, scope: !2387)
!2448 = !DILocation(line: 255, column: 10, scope: !2295)
!2449 = !DILocation(line: 392, column: 8, scope: !2324)
!2450 = !DILocation(line: 392, column: 27, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2323, file: !215, discriminator: 1)
!2452 = !DILocation(line: 392, column: 19, scope: !2451)
!2453 = !DILocation(line: 392, column: 60, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2323, file: !215, discriminator: 3)
!2455 = !DILocation(line: 392, column: 3, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2324, file: !215, discriminator: 4)
!2457 = !DILocation(line: 392, column: 41, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2323, file: !215, discriminator: 2)
!2459 = !DILocation(line: 392, column: 48, scope: !2458)
!2460 = !DILocation(line: 396, column: 12, scope: !2322)
!2461 = !DILocation(line: 397, column: 12, scope: !2322)
!2462 = !DILocation(line: 398, column: 12, scope: !2322)
!2463 = !DILocation(line: 401, column: 11, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2322, file: !215, line: 400, column: 11)
!2465 = !DILocation(line: 403, column: 17, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2464, file: !215, discriminator: 1)
!2467 = !DILocation(line: 404, column: 39, scope: !2464)
!2468 = !DILocation(line: 408, column: 32, scope: !2464)
!2469 = !DILocation(line: 404, column: 19, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2464, file: !215, discriminator: 2)
!2471 = !DILocation(line: 404, column: 15, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2464, file: !215, discriminator: 4)
!2473 = !DILocation(line: 409, column: 11, scope: !2464)
!2474 = !DILocation(line: 409, column: 26, scope: !2466)
!2475 = !DILocation(line: 409, column: 14, scope: !2466)
!2476 = !DILocation(line: 400, column: 11, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2322, file: !215, discriminator: 1)
!2478 = !DILocation(line: 416, column: 11, scope: !2322)
!2479 = !DILocation(line: 394, column: 21, scope: !2322)
!2480 = !DILocation(line: 417, column: 7, scope: !2322)
!2481 = !DILocation(line: 420, column: 15, scope: !2331)
!2482 = !DILocation(line: 422, column: 15, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2484, file: !215, discriminator: 1)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !215, line: 422, column: 15)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !215, line: 421, column: 13)
!2486 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 420, column: 15)
!2487 = !DILocation(line: 422, column: 15, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2489, file: !215, discriminator: 4)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !215, line: 422, column: 15)
!2490 = !DILocation(line: 422, column: 15, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2489, file: !215, discriminator: 3)
!2492 = !DILocation(line: 422, column: 15, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2494, file: !215, discriminator: 6)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !215, line: 422, column: 15)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !215, line: 422, column: 15)
!2496 = distinct !DILexicalBlock(scope: !2489, file: !215, line: 422, column: 15)
!2497 = !DILocation(line: 422, column: 15, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2495, file: !215, discriminator: 6)
!2499 = !DILocation(line: 422, column: 15, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2494, file: !215, discriminator: 7)
!2501 = !DILocation(line: 422, column: 15, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2495, file: !215, discriminator: 8)
!2503 = !DILocation(line: 422, column: 15, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2505, file: !215, discriminator: 11)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !215, line: 422, column: 15)
!2506 = distinct !DILexicalBlock(scope: !2496, file: !215, line: 422, column: 15)
!2507 = !DILocation(line: 422, column: 15, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2506, file: !215, discriminator: 11)
!2509 = !DILocation(line: 422, column: 15, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2505, file: !215, discriminator: 12)
!2511 = !DILocation(line: 422, column: 15, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2506, file: !215, discriminator: 13)
!2513 = !DILocation(line: 422, column: 15, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2515, file: !215, discriminator: 16)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !215, line: 422, column: 15)
!2516 = distinct !DILexicalBlock(scope: !2496, file: !215, line: 422, column: 15)
!2517 = !DILocation(line: 422, column: 15, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2516, file: !215, discriminator: 16)
!2519 = !DILocation(line: 422, column: 15, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2515, file: !215, discriminator: 17)
!2521 = !DILocation(line: 422, column: 15, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2516, file: !215, discriminator: 18)
!2523 = !DILocation(line: 422, column: 15, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2496, file: !215, discriminator: 20)
!2525 = !DILocation(line: 422, column: 15, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !215, discriminator: 22)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !215, line: 422, column: 15)
!2528 = distinct !DILexicalBlock(scope: !2484, file: !215, line: 422, column: 15)
!2529 = !DILocation(line: 422, column: 15, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !2528, file: !215, discriminator: 22)
!2531 = !DILocation(line: 422, column: 15, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !2527, file: !215, discriminator: 23)
!2533 = !DILocation(line: 422, column: 15, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2528, file: !215, discriminator: 24)
!2535 = !DILocation(line: 430, column: 19, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2485, file: !215, line: 429, column: 19)
!2537 = !DILocation(line: 430, column: 24, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2536, file: !215, discriminator: 1)
!2539 = !DILocation(line: 430, column: 28, scope: !2538)
!2540 = !DILocation(line: 430, column: 38, scope: !2538)
!2541 = !DILocation(line: 430, column: 48, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2536, file: !215, discriminator: 2)
!2543 = !DILocation(line: 430, column: 59, scope: !2542)
!2544 = !DILocation(line: 432, column: 19, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2546, file: !215, discriminator: 1)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !215, line: 432, column: 19)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !215, line: 432, column: 19)
!2548 = distinct !DILexicalBlock(scope: !2536, file: !215, line: 431, column: 17)
!2549 = !DILocation(line: 432, column: 19, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2547, file: !215, discriminator: 1)
!2551 = !DILocation(line: 432, column: 19, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2546, file: !215, discriminator: 2)
!2553 = !DILocation(line: 432, column: 19, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2547, file: !215, discriminator: 3)
!2555 = !DILocation(line: 433, column: 19, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2557, file: !215, discriminator: 1)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !215, line: 433, column: 19)
!2558 = distinct !DILexicalBlock(scope: !2548, file: !215, line: 433, column: 19)
!2559 = !DILocation(line: 433, column: 19, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !2558, file: !215, discriminator: 1)
!2561 = !DILocation(line: 433, column: 19, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2557, file: !215, discriminator: 2)
!2563 = !DILocation(line: 433, column: 19, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2558, file: !215, discriminator: 3)
!2565 = !DILocation(line: 434, column: 17, scope: !2548)
!2566 = !DILocation(line: 441, column: 20, scope: !2486)
!2567 = !DILocation(line: 446, column: 11, scope: !2331)
!2568 = !DILocation(line: 449, column: 19, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 447, column: 13)
!2570 = !DILocation(line: 455, column: 19, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2569, file: !215, line: 454, column: 19)
!2572 = !DILocation(line: 455, column: 24, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2571, file: !215, discriminator: 1)
!2574 = !DILocation(line: 455, column: 28, scope: !2573)
!2575 = !DILocation(line: 455, column: 38, scope: !2573)
!2576 = !DILocation(line: 455, column: 47, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2571, file: !215, discriminator: 2)
!2578 = !DILocation(line: 455, column: 41, scope: !2577)
!2579 = !DILocation(line: 455, column: 52, scope: !2577)
!2580 = !DILocation(line: 454, column: 19, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2569, file: !215, discriminator: 1)
!2582 = !DILocation(line: 456, column: 25, scope: !2571)
!2583 = !DILocation(line: 456, column: 17, scope: !2571)
!2584 = !DILocation(line: 463, column: 25, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2571, file: !215, line: 457, column: 19)
!2586 = !DILocation(line: 467, column: 21, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2588, file: !215, discriminator: 1)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !215, line: 467, column: 21)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !215, line: 467, column: 21)
!2590 = !DILocation(line: 467, column: 21, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2589, file: !215, discriminator: 1)
!2592 = !DILocation(line: 467, column: 21, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2588, file: !215, discriminator: 2)
!2594 = !DILocation(line: 467, column: 21, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !2589, file: !215, discriminator: 3)
!2596 = !DILocation(line: 468, column: 21, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2598, file: !215, discriminator: 1)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !215, line: 468, column: 21)
!2599 = distinct !DILexicalBlock(scope: !2585, file: !215, line: 468, column: 21)
!2600 = !DILocation(line: 468, column: 21, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2599, file: !215, discriminator: 1)
!2602 = !DILocation(line: 468, column: 21, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2598, file: !215, discriminator: 2)
!2604 = !DILocation(line: 468, column: 21, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !2599, file: !215, discriminator: 3)
!2606 = !DILocation(line: 469, column: 21, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2608, file: !215, discriminator: 1)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !215, line: 469, column: 21)
!2609 = distinct !DILexicalBlock(scope: !2585, file: !215, line: 469, column: 21)
!2610 = !DILocation(line: 469, column: 21, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2609, file: !215, discriminator: 1)
!2612 = !DILocation(line: 469, column: 21, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2608, file: !215, discriminator: 2)
!2614 = !DILocation(line: 469, column: 21, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2609, file: !215, discriminator: 3)
!2616 = !DILocation(line: 470, column: 21, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2618, file: !215, discriminator: 1)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !215, line: 470, column: 21)
!2619 = distinct !DILexicalBlock(scope: !2585, file: !215, line: 470, column: 21)
!2620 = !DILocation(line: 470, column: 21, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2619, file: !215, discriminator: 1)
!2622 = !DILocation(line: 470, column: 21, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2618, file: !215, discriminator: 2)
!2624 = !DILocation(line: 470, column: 21, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2619, file: !215, discriminator: 3)
!2626 = !DILocation(line: 471, column: 21, scope: !2585)
!2627 = !DILocation(line: 395, column: 21, scope: !2322)
!2628 = !DILocation(line: 484, column: 31, scope: !2331)
!2629 = !DILocation(line: 485, column: 31, scope: !2331)
!2630 = !DILocation(line: 487, column: 31, scope: !2331)
!2631 = !DILocation(line: 488, column: 31, scope: !2331)
!2632 = !DILocation(line: 489, column: 31, scope: !2331)
!2633 = !DILocation(line: 492, column: 15, scope: !2331)
!2634 = !DILocation(line: 494, column: 19, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !215, line: 493, column: 13)
!2636 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 492, column: 15)
!2637 = !DILocation(line: 501, column: 33, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 501, column: 15)
!2639 = !DILocation(line: 506, column: 15, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 505, column: 15)
!2641 = !DILocation(line: 510, column: 15, scope: !2331)
!2642 = !DILocation(line: 518, column: 26, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 518, column: 15)
!2644 = !DILocation(line: 518, column: 15, scope: !2331)
!2645 = !DILocation(line: 518, column: 40, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !2643, file: !215, discriminator: 1)
!2647 = !DILocation(line: 518, column: 47, scope: !2646)
!2648 = !DILocation(line: 522, column: 17, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 522, column: 15)
!2650 = !DILocation(line: 518, column: 18, scope: !2646)
!2651 = !DILocation(line: 518, column: 65, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2643, file: !215, discriminator: 2)
!2653 = !DILocation(line: 518, column: 15, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2331, file: !215, discriminator: 2)
!2655 = !DILocation(line: 522, column: 15, scope: !2331)
!2656 = !DILocation(line: 526, column: 11, scope: !2331)
!2657 = !DILocation(line: 541, column: 15, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 540, column: 15)
!2659 = !DILocation(line: 548, column: 15, scope: !2331)
!2660 = !DILocation(line: 550, column: 19, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !215, line: 549, column: 13)
!2662 = distinct !DILexicalBlock(scope: !2331, file: !215, line: 548, column: 15)
!2663 = !DILocation(line: 553, column: 19, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !215, line: 553, column: 19)
!2665 = !DILocation(line: 553, column: 35, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2664, file: !215, discriminator: 1)
!2667 = !DILocation(line: 553, column: 30, scope: !2664)
!2668 = !DILocation(line: 562, column: 15, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2670, file: !215, discriminator: 1)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !215, line: 562, column: 15)
!2671 = distinct !DILexicalBlock(scope: !2661, file: !215, line: 562, column: 15)
!2672 = !DILocation(line: 562, column: 15, scope: !2673)
!2673 = !DILexicalBlockFile(scope: !2671, file: !215, discriminator: 1)
!2674 = !DILocation(line: 562, column: 15, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2670, file: !215, discriminator: 2)
!2676 = !DILocation(line: 562, column: 15, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2671, file: !215, discriminator: 3)
!2678 = !DILocation(line: 563, column: 15, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2680, file: !215, discriminator: 1)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !215, line: 563, column: 15)
!2681 = distinct !DILexicalBlock(scope: !2661, file: !215, line: 563, column: 15)
!2682 = !DILocation(line: 563, column: 15, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2681, file: !215, discriminator: 1)
!2684 = !DILocation(line: 563, column: 15, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2680, file: !215, discriminator: 2)
!2686 = !DILocation(line: 563, column: 15, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2681, file: !215, discriminator: 3)
!2688 = !DILocation(line: 564, column: 15, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2690, file: !215, discriminator: 1)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !215, line: 564, column: 15)
!2691 = distinct !DILexicalBlock(scope: !2661, file: !215, line: 564, column: 15)
!2692 = !DILocation(line: 564, column: 15, scope: !2693)
!2693 = !DILexicalBlockFile(scope: !2691, file: !215, discriminator: 1)
!2694 = !DILocation(line: 564, column: 15, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2690, file: !215, discriminator: 2)
!2696 = !DILocation(line: 564, column: 15, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2691, file: !215, discriminator: 3)
!2698 = !DILocation(line: 566, column: 13, scope: !2661)
!2699 = !DILocation(line: 606, column: 17, scope: !2330)
!2700 = !DILocation(line: 602, column: 20, scope: !2330)
!2701 = !DILocation(line: 609, column: 29, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2335, file: !215, line: 607, column: 15)
!2703 = !DILocation(line: 609, column: 27, scope: !2702)
!2704 = !DILocation(line: 604, column: 18, scope: !2330)
!2705 = !DILocation(line: 610, column: 15, scope: !2702)
!2706 = !DILocation(line: 613, column: 17, scope: !2334)
!2707 = !DILocation(line: 614, column: 17, scope: !2334)
!2708 = !DILocation(line: 618, column: 29, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2334, file: !215, line: 618, column: 21)
!2710 = !DILocation(line: 618, column: 21, scope: !2334)
!2711 = distinct !{!2711, !2712, !2713}
!2712 = !DILocation(line: 621, column: 17, scope: !2334)
!2713 = !DILocation(line: 667, column: 44, scope: !2334)
!2714 = !DILocation(line: 619, column: 29, scope: !2709)
!2715 = !DILocation(line: 619, column: 19, scope: !2709)
!2716 = !DILocation(line: 623, column: 21, scope: !2351)
!2717 = !DILocation(line: 624, column: 56, scope: !2351)
!2718 = !DILocation(line: 624, column: 50, scope: !2351)
!2719 = !DILocation(line: 625, column: 53, scope: !2351)
!2720 = !DIExpression(DW_OP_deref)
!2721 = !DILocation(line: 613, column: 27, scope: !2334)
!2722 = !DILocation(line: 623, column: 29, scope: !2351)
!2723 = !DILocation(line: 624, column: 36, scope: !2351)
!2724 = !DILocation(line: 624, column: 28, scope: !2351)
!2725 = !DILocation(line: 626, column: 25, scope: !2351)
!2726 = !DILocation(line: 636, column: 38, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2728, file: !215, discriminator: 1)
!2728 = distinct !DILexicalBlock(scope: !2358, file: !215, line: 634, column: 23)
!2729 = !DILocation(line: 636, column: 48, scope: !2727)
!2730 = !DILocation(line: 636, column: 51, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !2728, file: !215, discriminator: 2)
!2732 = !DILocation(line: 636, column: 48, scope: !2731)
!2733 = !DILocation(line: 636, column: 25, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2728, file: !215, discriminator: 3)
!2735 = !DILocation(line: 637, column: 28, scope: !2728)
!2736 = !DILocation(line: 636, column: 34, scope: !2727)
!2737 = distinct !{!2737, !2738, !2735}
!2738 = !DILocation(line: 636, column: 25, scope: !2728)
!2739 = !DILocation(line: 650, column: 43, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2741, file: !215, discriminator: 1)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !215, line: 650, column: 29)
!2742 = distinct !DILexicalBlock(scope: !2355, file: !215, line: 650, column: 29)
!2743 = !DILocation(line: 647, column: 29, scope: !2356)
!2744 = !DILocation(line: 649, column: 36, scope: !2355)
!2745 = !DILocation(line: 651, column: 49, scope: !2741)
!2746 = !DILocation(line: 651, column: 39, scope: !2741)
!2747 = !DILocation(line: 651, column: 31, scope: !2741)
!2748 = !DILocation(line: 650, column: 53, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2741, file: !215, discriminator: 2)
!2750 = !DILocation(line: 650, column: 29, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2742, file: !215, discriminator: 1)
!2752 = distinct !{!2752, !2753, !2754}
!2753 = !DILocation(line: 650, column: 29, scope: !2742)
!2754 = !DILocation(line: 659, column: 33, scope: !2742)
!2755 = !DILocation(line: 666, column: 19, scope: !2334)
!2756 = !DILocation(line: 662, column: 41, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2357, file: !215, line: 662, column: 29)
!2758 = !DILocation(line: 662, column: 31, scope: !2757)
!2759 = !DILocation(line: 662, column: 29, scope: !2357)
!2760 = !DILocation(line: 664, column: 27, scope: !2357)
!2761 = !DILocation(line: 667, column: 26, scope: !2334)
!2762 = !DILocation(line: 667, column: 24, scope: !2334)
!2763 = !DILocation(line: 666, column: 19, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2351, file: !215, discriminator: 3)
!2765 = !DILocation(line: 668, column: 15, scope: !2335)
!2766 = !DILocation(line: 670, column: 40, scope: !2330)
!2767 = !DILocation(line: 672, column: 19, scope: !2363)
!2768 = !DILocation(line: 672, column: 45, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !2363, file: !215, discriminator: 1)
!2770 = !DILocation(line: 672, column: 23, scope: !2363)
!2771 = !DILocation(line: 676, column: 33, scope: !2362)
!2772 = !DILocation(line: 676, column: 24, scope: !2362)
!2773 = !DILocation(line: 678, column: 17, scope: !2362)
!2774 = !DILocation(line: 680, column: 43, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !215, line: 680, column: 25)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !215, line: 679, column: 19)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !215, line: 678, column: 17)
!2778 = distinct !DILexicalBlock(scope: !2362, file: !215, line: 678, column: 17)
!2779 = !DILocation(line: 682, column: 25, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !2781, file: !215, discriminator: 1)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !215, line: 682, column: 25)
!2782 = distinct !DILexicalBlock(scope: !2775, file: !215, line: 681, column: 23)
!2783 = !DILocation(line: 682, column: 25, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !2785, file: !215, discriminator: 4)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !215, line: 682, column: 25)
!2786 = !DILocation(line: 682, column: 25, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2785, file: !215, discriminator: 3)
!2788 = !DILocation(line: 682, column: 25, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2790, file: !215, discriminator: 6)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !215, line: 682, column: 25)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !215, line: 682, column: 25)
!2792 = distinct !DILexicalBlock(scope: !2785, file: !215, line: 682, column: 25)
!2793 = !DILocation(line: 682, column: 25, scope: !2794)
!2794 = !DILexicalBlockFile(scope: !2791, file: !215, discriminator: 6)
!2795 = !DILocation(line: 682, column: 25, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2790, file: !215, discriminator: 7)
!2797 = !DILocation(line: 682, column: 25, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2791, file: !215, discriminator: 8)
!2799 = !DILocation(line: 682, column: 25, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2801, file: !215, discriminator: 11)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !215, line: 682, column: 25)
!2802 = distinct !DILexicalBlock(scope: !2792, file: !215, line: 682, column: 25)
!2803 = !DILocation(line: 682, column: 25, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2802, file: !215, discriminator: 11)
!2805 = !DILocation(line: 682, column: 25, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2801, file: !215, discriminator: 12)
!2807 = !DILocation(line: 682, column: 25, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2802, file: !215, discriminator: 13)
!2809 = !DILocation(line: 682, column: 25, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !2811, file: !215, discriminator: 16)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !215, line: 682, column: 25)
!2812 = distinct !DILexicalBlock(scope: !2792, file: !215, line: 682, column: 25)
!2813 = !DILocation(line: 682, column: 25, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2812, file: !215, discriminator: 16)
!2815 = !DILocation(line: 682, column: 25, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2811, file: !215, discriminator: 17)
!2817 = !DILocation(line: 682, column: 25, scope: !2818)
!2818 = !DILexicalBlockFile(scope: !2812, file: !215, discriminator: 18)
!2819 = !DILocation(line: 682, column: 25, scope: !2820)
!2820 = !DILexicalBlockFile(scope: !2792, file: !215, discriminator: 20)
!2821 = !DILocation(line: 682, column: 25, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2823, file: !215, discriminator: 22)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !215, line: 682, column: 25)
!2824 = distinct !DILexicalBlock(scope: !2781, file: !215, line: 682, column: 25)
!2825 = !DILocation(line: 682, column: 25, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2824, file: !215, discriminator: 22)
!2827 = !DILocation(line: 682, column: 25, scope: !2828)
!2828 = !DILexicalBlockFile(scope: !2823, file: !215, discriminator: 23)
!2829 = !DILocation(line: 682, column: 25, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !2824, file: !215, discriminator: 24)
!2831 = !DILocation(line: 683, column: 25, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2833, file: !215, discriminator: 1)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !215, line: 683, column: 25)
!2834 = distinct !DILexicalBlock(scope: !2782, file: !215, line: 683, column: 25)
!2835 = !DILocation(line: 683, column: 25, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2834, file: !215, discriminator: 1)
!2837 = !DILocation(line: 683, column: 25, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2833, file: !215, discriminator: 2)
!2839 = !DILocation(line: 683, column: 25, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2834, file: !215, discriminator: 3)
!2841 = !DILocation(line: 684, column: 25, scope: !2842)
!2842 = !DILexicalBlockFile(scope: !2843, file: !215, discriminator: 1)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !215, line: 684, column: 25)
!2844 = distinct !DILexicalBlock(scope: !2782, file: !215, line: 684, column: 25)
!2845 = !DILocation(line: 684, column: 25, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !2844, file: !215, discriminator: 1)
!2847 = !DILocation(line: 684, column: 25, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2843, file: !215, discriminator: 2)
!2849 = !DILocation(line: 684, column: 25, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2844, file: !215, discriminator: 3)
!2851 = !DILocation(line: 685, column: 38, scope: !2782)
!2852 = !DILocation(line: 685, column: 33, scope: !2782)
!2853 = !DILocation(line: 686, column: 23, scope: !2782)
!2854 = !DILocation(line: 687, column: 30, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2775, file: !215, line: 687, column: 30)
!2856 = !DILocation(line: 687, column: 30, scope: !2775)
!2857 = !DILocation(line: 689, column: 25, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2859, file: !215, discriminator: 1)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !215, line: 689, column: 25)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !215, line: 689, column: 25)
!2861 = distinct !DILexicalBlock(scope: !2855, file: !215, line: 688, column: 23)
!2862 = !DILocation(line: 689, column: 25, scope: !2863)
!2863 = !DILexicalBlockFile(scope: !2860, file: !215, discriminator: 1)
!2864 = !DILocation(line: 689, column: 25, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2859, file: !215, discriminator: 2)
!2866 = !DILocation(line: 689, column: 25, scope: !2867)
!2867 = !DILexicalBlockFile(scope: !2860, file: !215, discriminator: 3)
!2868 = !DILocation(line: 691, column: 23, scope: !2861)
!2869 = !DILocation(line: 692, column: 35, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2776, file: !215, line: 692, column: 25)
!2871 = !DILocation(line: 692, column: 30, scope: !2870)
!2872 = !DILocation(line: 692, column: 25, scope: !2776)
!2873 = !DILocation(line: 694, column: 21, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2875, file: !215, discriminator: 1)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !215, line: 694, column: 21)
!2876 = distinct !DILexicalBlock(scope: !2776, file: !215, line: 694, column: 21)
!2877 = !DILocation(line: 694, column: 21, scope: !2878)
!2878 = !DILexicalBlockFile(scope: !2875, file: !215, discriminator: 2)
!2879 = !DILocation(line: 694, column: 21, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2881, file: !215, discriminator: 4)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !215, line: 694, column: 21)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !215, line: 694, column: 21)
!2883 = distinct !DILexicalBlock(scope: !2875, file: !215, line: 694, column: 21)
!2884 = !DILocation(line: 694, column: 21, scope: !2885)
!2885 = !DILexicalBlockFile(scope: !2882, file: !215, discriminator: 4)
!2886 = !DILocation(line: 694, column: 21, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2881, file: !215, discriminator: 5)
!2888 = !DILocation(line: 694, column: 21, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !2882, file: !215, discriminator: 6)
!2890 = !DILocation(line: 694, column: 21, scope: !2891)
!2891 = !DILexicalBlockFile(scope: !2892, file: !215, discriminator: 9)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !215, line: 694, column: 21)
!2893 = distinct !DILexicalBlock(scope: !2883, file: !215, line: 694, column: 21)
!2894 = !DILocation(line: 694, column: 21, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2893, file: !215, discriminator: 9)
!2896 = !DILocation(line: 694, column: 21, scope: !2897)
!2897 = !DILexicalBlockFile(scope: !2892, file: !215, discriminator: 10)
!2898 = !DILocation(line: 694, column: 21, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2893, file: !215, discriminator: 11)
!2900 = !DILocation(line: 694, column: 21, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2883, file: !215, discriminator: 13)
!2902 = !DILocation(line: 695, column: 21, scope: !2903)
!2903 = !DILexicalBlockFile(scope: !2904, file: !215, discriminator: 1)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !215, line: 695, column: 21)
!2905 = distinct !DILexicalBlock(scope: !2776, file: !215, line: 695, column: 21)
!2906 = !DILocation(line: 695, column: 21, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !2905, file: !215, discriminator: 1)
!2908 = !DILocation(line: 695, column: 21, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !2904, file: !215, discriminator: 2)
!2910 = !DILocation(line: 695, column: 21, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2905, file: !215, discriminator: 3)
!2912 = !DILocation(line: 696, column: 25, scope: !2776)
!2913 = !DILocation(line: 678, column: 17, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !2777, file: !215, discriminator: 1)
!2915 = distinct !{!2915, !2916, !2917}
!2916 = !DILocation(line: 678, column: 17, scope: !2778)
!2917 = !DILocation(line: 697, column: 19, scope: !2778)
!2918 = !DILocation(line: 704, column: 34, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2322, file: !215, line: 704, column: 11)
!2920 = !DILocation(line: 706, column: 14, scope: !2919)
!2921 = !DILocation(line: 707, column: 14, scope: !2919)
!2922 = !DILocation(line: 707, column: 35, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2919, file: !215, discriminator: 1)
!2924 = !DILocation(line: 707, column: 17, scope: !2923)
!2925 = !DILocation(line: 707, column: 53, scope: !2923)
!2926 = !DILocation(line: 707, column: 47, scope: !2923)
!2927 = !DILocation(line: 707, column: 65, scope: !2923)
!2928 = !DILocation(line: 708, column: 15, scope: !2923)
!2929 = !DILocation(line: 708, column: 11, scope: !2919)
!2930 = !DILocation(line: 704, column: 11, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2322, file: !215, discriminator: 2)
!2932 = !DILocation(line: 712, column: 7, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !2934, file: !215, discriminator: 1)
!2934 = distinct !DILexicalBlock(scope: !2322, file: !215, line: 712, column: 7)
!2935 = !DILocation(line: 712, column: 7, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2937, file: !215, discriminator: 4)
!2937 = distinct !DILexicalBlock(scope: !2934, file: !215, line: 712, column: 7)
!2938 = !DILocation(line: 712, column: 7, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2937, file: !215, discriminator: 3)
!2940 = !DILocation(line: 712, column: 7, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !2942, file: !215, discriminator: 6)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !215, line: 712, column: 7)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !215, line: 712, column: 7)
!2944 = distinct !DILexicalBlock(scope: !2937, file: !215, line: 712, column: 7)
!2945 = !DILocation(line: 712, column: 7, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2943, file: !215, discriminator: 6)
!2947 = !DILocation(line: 712, column: 7, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2942, file: !215, discriminator: 7)
!2949 = !DILocation(line: 712, column: 7, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2943, file: !215, discriminator: 8)
!2951 = !DILocation(line: 712, column: 7, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2953, file: !215, discriminator: 11)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !215, line: 712, column: 7)
!2954 = distinct !DILexicalBlock(scope: !2944, file: !215, line: 712, column: 7)
!2955 = !DILocation(line: 712, column: 7, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !2954, file: !215, discriminator: 11)
!2957 = !DILocation(line: 712, column: 7, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !2953, file: !215, discriminator: 12)
!2959 = !DILocation(line: 712, column: 7, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !2954, file: !215, discriminator: 13)
!2961 = !DILocation(line: 712, column: 7, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2963, file: !215, discriminator: 16)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !215, line: 712, column: 7)
!2964 = distinct !DILexicalBlock(scope: !2944, file: !215, line: 712, column: 7)
!2965 = !DILocation(line: 712, column: 7, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2964, file: !215, discriminator: 16)
!2967 = !DILocation(line: 712, column: 7, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2963, file: !215, discriminator: 17)
!2969 = !DILocation(line: 712, column: 7, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2964, file: !215, discriminator: 18)
!2971 = !DILocation(line: 712, column: 7, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2944, file: !215, discriminator: 20)
!2973 = !DILocation(line: 712, column: 7, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2975, file: !215, discriminator: 22)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !215, line: 712, column: 7)
!2976 = distinct !DILexicalBlock(scope: !2934, file: !215, line: 712, column: 7)
!2977 = !DILocation(line: 712, column: 7, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2976, file: !215, discriminator: 22)
!2979 = !DILocation(line: 712, column: 7, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2975, file: !215, discriminator: 23)
!2981 = !DILocation(line: 712, column: 7, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !2976, file: !215, discriminator: 24)
!2983 = !DILocation(line: 715, column: 7, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !2985, file: !215, discriminator: 1)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !215, line: 715, column: 7)
!2986 = distinct !DILexicalBlock(scope: !2322, file: !215, line: 715, column: 7)
!2987 = !DILocation(line: 715, column: 7, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2985, file: !215, discriminator: 2)
!2989 = !DILocation(line: 715, column: 7, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !2991, file: !215, discriminator: 4)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !215, line: 715, column: 7)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !215, line: 715, column: 7)
!2993 = distinct !DILexicalBlock(scope: !2985, file: !215, line: 715, column: 7)
!2994 = !DILocation(line: 715, column: 7, scope: !2995)
!2995 = !DILexicalBlockFile(scope: !2992, file: !215, discriminator: 4)
!2996 = !DILocation(line: 715, column: 7, scope: !2997)
!2997 = !DILexicalBlockFile(scope: !2991, file: !215, discriminator: 5)
!2998 = !DILocation(line: 715, column: 7, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !2992, file: !215, discriminator: 6)
!3000 = !DILocation(line: 715, column: 7, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !3002, file: !215, discriminator: 9)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !215, line: 715, column: 7)
!3003 = distinct !DILexicalBlock(scope: !2993, file: !215, line: 715, column: 7)
!3004 = !DILocation(line: 715, column: 7, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !3003, file: !215, discriminator: 9)
!3006 = !DILocation(line: 715, column: 7, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !3002, file: !215, discriminator: 10)
!3008 = !DILocation(line: 715, column: 7, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !3003, file: !215, discriminator: 11)
!3010 = !DILocation(line: 715, column: 7, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !2993, file: !215, discriminator: 13)
!3012 = !DILocation(line: 716, column: 7, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !3014, file: !215, discriminator: 1)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !215, line: 716, column: 7)
!3015 = distinct !DILexicalBlock(scope: !2322, file: !215, line: 716, column: 7)
!3016 = !DILocation(line: 716, column: 7, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3015, file: !215, discriminator: 1)
!3018 = !DILocation(line: 716, column: 7, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3014, file: !215, discriminator: 2)
!3020 = !DILocation(line: 716, column: 7, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !3015, file: !215, discriminator: 3)
!3022 = !DILocation(line: 718, column: 13, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2322, file: !215, line: 718, column: 11)
!3024 = !DILocation(line: 718, column: 11, scope: !2322)
!3025 = !DILocation(line: 720, column: 5, scope: !2323)
!3026 = !DILocation(line: 392, column: 75, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !2323, file: !215, discriminator: 5)
!3028 = !DILocation(line: 392, column: 3, scope: !3027)
!3029 = distinct !{!3029, !3030, !3031}
!3030 = !DILocation(line: 392, column: 3, scope: !2324)
!3031 = !DILocation(line: 720, column: 5, scope: !2324)
!3032 = !DILocation(line: 722, column: 11, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2295, file: !215, line: 722, column: 7)
!3034 = !DILocation(line: 722, column: 16, scope: !3033)
!3035 = !DILocation(line: 730, column: 51, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2295, file: !215, line: 730, column: 7)
!3037 = !DILocation(line: 731, column: 10, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3036, file: !215, discriminator: 1)
!3039 = !DILocation(line: 733, column: 11, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !215, line: 733, column: 11)
!3041 = distinct !DILexicalBlock(scope: !3036, file: !215, line: 732, column: 5)
!3042 = !DILocation(line: 733, column: 11, scope: !3041)
!3043 = !DILocation(line: 734, column: 16, scope: !3040)
!3044 = !DILocation(line: 734, column: 9, scope: !3040)
!3045 = !DILocation(line: 738, column: 18, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3040, file: !215, line: 738, column: 16)
!3047 = !DILocation(line: 738, column: 32, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !3046, file: !215, discriminator: 1)
!3049 = !DILocation(line: 738, column: 29, scope: !3046)
!3050 = !DILocation(line: 747, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2295, file: !215, line: 747, column: 7)
!3052 = !DILocation(line: 747, column: 20, scope: !3051)
!3053 = !DILocation(line: 748, column: 12, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3055, file: !215, discriminator: 1)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !215, line: 748, column: 5)
!3056 = distinct !DILexicalBlock(scope: !3051, file: !215, line: 748, column: 5)
!3057 = !DILocation(line: 748, column: 5, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !3056, file: !215, discriminator: 1)
!3059 = !DILocation(line: 749, column: 7, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !3061, file: !215, discriminator: 1)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !215, line: 749, column: 7)
!3062 = distinct !DILexicalBlock(scope: !3055, file: !215, line: 749, column: 7)
!3063 = !DILocation(line: 749, column: 7, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !3062, file: !215, discriminator: 1)
!3065 = !DILocation(line: 749, column: 7, scope: !3066)
!3066 = !DILexicalBlockFile(scope: !3061, file: !215, discriminator: 2)
!3067 = !DILocation(line: 749, column: 7, scope: !3068)
!3068 = !DILexicalBlockFile(scope: !3062, file: !215, discriminator: 3)
!3069 = !DILocation(line: 748, column: 39, scope: !3070)
!3070 = !DILexicalBlockFile(scope: !3055, file: !215, discriminator: 2)
!3071 = distinct !{!3071, !3072, !3073}
!3072 = !DILocation(line: 748, column: 5, scope: !3056)
!3073 = !DILocation(line: 749, column: 7, scope: !3056)
!3074 = !DILocation(line: 751, column: 11, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2295, file: !215, line: 751, column: 7)
!3076 = !DILocation(line: 751, column: 7, scope: !2295)
!3077 = !DILocation(line: 752, column: 5, scope: !3075)
!3078 = !DILocation(line: 752, column: 17, scope: !3075)
!3079 = !DILocation(line: 758, column: 21, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2295, file: !215, line: 758, column: 7)
!3081 = !DILocation(line: 758, column: 54, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !3080, file: !215, discriminator: 1)
!3083 = !DILocation(line: 758, column: 51, scope: !3080)
!3084 = !DILocation(line: 762, column: 42, scope: !2295)
!3085 = !DILocation(line: 760, column: 10, scope: !2295)
!3086 = !DILocation(line: 760, column: 3, scope: !2295)
!3087 = !DILocation(line: 764, column: 1, scope: !2295)
!3088 = distinct !DISubprogram(name: "gettext_quote", scope: !215, file: !215, line: 199, type: !3089, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!56, !56, !5}
!3091 = !{!3092, !3093, !3094, !3095}
!3092 = !DILocalVariable(name: "msgid", arg: 1, scope: !3088, file: !215, line: 199, type: !56)
!3093 = !DILocalVariable(name: "s", arg: 2, scope: !3088, file: !215, line: 199, type: !5)
!3094 = !DILocalVariable(name: "translation", scope: !3088, file: !215, line: 201, type: !56)
!3095 = !DILocalVariable(name: "locale_code", scope: !3088, file: !215, line: 202, type: !56)
!3096 = !DILocation(line: 199, column: 28, scope: !3088)
!3097 = !DILocation(line: 199, column: 54, scope: !3088)
!3098 = !DILocation(line: 201, column: 29, scope: !3088)
!3099 = !DILocation(line: 201, column: 15, scope: !3088)
!3100 = !DILocation(line: 204, column: 19, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3088, file: !215, line: 204, column: 7)
!3102 = !DILocation(line: 204, column: 7, scope: !3088)
!3103 = !DILocation(line: 225, column: 17, scope: !3088)
!3104 = !DILocation(line: 202, column: 15, scope: !3088)
!3105 = !DILocalVariable(name: "s2", arg: 2, scope: !3106, file: !3107, line: 160, type: !56)
!3106 = distinct !DISubprogram(name: "strcaseeq0", scope: !3107, file: !3107, line: 160, type: !3108, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3110)
!3107 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!59, !56, !56, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!3110 = !{!3111, !3105, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3111 = !DILocalVariable(name: "s1", arg: 1, scope: !3106, file: !3107, line: 160, type: !56)
!3112 = !DILocalVariable(name: "s20", arg: 3, scope: !3106, file: !3107, line: 160, type: !46)
!3113 = !DILocalVariable(name: "s21", arg: 4, scope: !3106, file: !3107, line: 160, type: !46)
!3114 = !DILocalVariable(name: "s22", arg: 5, scope: !3106, file: !3107, line: 160, type: !46)
!3115 = !DILocalVariable(name: "s23", arg: 6, scope: !3106, file: !3107, line: 160, type: !46)
!3116 = !DILocalVariable(name: "s24", arg: 7, scope: !3106, file: !3107, line: 160, type: !46)
!3117 = !DILocalVariable(name: "s25", arg: 8, scope: !3106, file: !3107, line: 160, type: !46)
!3118 = !DILocalVariable(name: "s26", arg: 9, scope: !3106, file: !3107, line: 160, type: !46)
!3119 = !DILocalVariable(name: "s27", arg: 10, scope: !3106, file: !3107, line: 160, type: !46)
!3120 = !DILocalVariable(name: "s28", arg: 11, scope: !3106, file: !3107, line: 160, type: !46)
!3121 = !DILocation(line: 160, column: 41, scope: !3106, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 226, column: 7, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3088, file: !215, line: 226, column: 7)
!3124 = !DILocation(line: 160, column: 120, scope: !3106, inlinedAt: !3122)
!3125 = !DILocation(line: 160, column: 130, scope: !3106, inlinedAt: !3122)
!3126 = !DILocation(line: 162, column: 7, scope: !3127, inlinedAt: !3122)
!3127 = !DILexicalBlockFile(scope: !3128, file: !3107, discriminator: 1)
!3128 = distinct !DILexicalBlock(scope: !3106, file: !3107, line: 162, column: 7)
!3129 = !DILocalVariable(name: "s2", arg: 2, scope: !3130, file: !3107, line: 146, type: !56)
!3130 = distinct !DISubprogram(name: "strcaseeq1", scope: !3107, file: !3107, line: 146, type: !3131, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!59, !56, !56, !46, !46, !46, !46, !46, !46, !46, !46}
!3133 = !{!3134, !3129, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142}
!3134 = !DILocalVariable(name: "s1", arg: 1, scope: !3130, file: !3107, line: 146, type: !56)
!3135 = !DILocalVariable(name: "s21", arg: 3, scope: !3130, file: !3107, line: 146, type: !46)
!3136 = !DILocalVariable(name: "s22", arg: 4, scope: !3130, file: !3107, line: 146, type: !46)
!3137 = !DILocalVariable(name: "s23", arg: 5, scope: !3130, file: !3107, line: 146, type: !46)
!3138 = !DILocalVariable(name: "s24", arg: 6, scope: !3130, file: !3107, line: 146, type: !46)
!3139 = !DILocalVariable(name: "s25", arg: 7, scope: !3130, file: !3107, line: 146, type: !46)
!3140 = !DILocalVariable(name: "s26", arg: 8, scope: !3130, file: !3107, line: 146, type: !46)
!3141 = !DILocalVariable(name: "s27", arg: 9, scope: !3130, file: !3107, line: 146, type: !46)
!3142 = !DILocalVariable(name: "s28", arg: 10, scope: !3130, file: !3107, line: 146, type: !46)
!3143 = !DILocation(line: 146, column: 41, scope: !3130, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 167, column: 16, scope: !3145, inlinedAt: !3122)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !3107, line: 164, column: 11)
!3146 = distinct !DILexicalBlock(scope: !3128, file: !3107, line: 163, column: 5)
!3147 = !DILocation(line: 146, column: 110, scope: !3130, inlinedAt: !3144)
!3148 = !DILocation(line: 146, column: 120, scope: !3130, inlinedAt: !3144)
!3149 = !DILocation(line: 148, column: 7, scope: !3150, inlinedAt: !3144)
!3150 = !DILexicalBlockFile(scope: !3151, file: !3107, discriminator: 1)
!3151 = distinct !DILexicalBlock(scope: !3130, file: !3107, line: 148, column: 7)
!3152 = !DILocalVariable(name: "s2", arg: 2, scope: !3153, file: !3107, line: 132, type: !56)
!3153 = distinct !DISubprogram(name: "strcaseeq2", scope: !3107, file: !3107, line: 132, type: !3154, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!59, !56, !56, !46, !46, !46, !46, !46, !46, !46}
!3156 = !{!3157, !3152, !3158, !3159, !3160, !3161, !3162, !3163, !3164}
!3157 = !DILocalVariable(name: "s1", arg: 1, scope: !3153, file: !3107, line: 132, type: !56)
!3158 = !DILocalVariable(name: "s22", arg: 3, scope: !3153, file: !3107, line: 132, type: !46)
!3159 = !DILocalVariable(name: "s23", arg: 4, scope: !3153, file: !3107, line: 132, type: !46)
!3160 = !DILocalVariable(name: "s24", arg: 5, scope: !3153, file: !3107, line: 132, type: !46)
!3161 = !DILocalVariable(name: "s25", arg: 6, scope: !3153, file: !3107, line: 132, type: !46)
!3162 = !DILocalVariable(name: "s26", arg: 7, scope: !3153, file: !3107, line: 132, type: !46)
!3163 = !DILocalVariable(name: "s27", arg: 8, scope: !3153, file: !3107, line: 132, type: !46)
!3164 = !DILocalVariable(name: "s28", arg: 9, scope: !3153, file: !3107, line: 132, type: !46)
!3165 = !DILocation(line: 132, column: 41, scope: !3153, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 153, column: 16, scope: !3167, inlinedAt: !3144)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !3107, line: 150, column: 11)
!3168 = distinct !DILexicalBlock(scope: !3151, file: !3107, line: 149, column: 5)
!3169 = !DILocation(line: 132, column: 100, scope: !3153, inlinedAt: !3166)
!3170 = !DILocation(line: 132, column: 110, scope: !3153, inlinedAt: !3166)
!3171 = !DILocation(line: 134, column: 7, scope: !3172, inlinedAt: !3166)
!3172 = !DILexicalBlockFile(scope: !3173, file: !3107, discriminator: 1)
!3173 = distinct !DILexicalBlock(scope: !3153, file: !3107, line: 134, column: 7)
!3174 = !DILocalVariable(name: "s2", arg: 2, scope: !3175, file: !3107, line: 118, type: !56)
!3175 = distinct !DISubprogram(name: "strcaseeq3", scope: !3107, file: !3107, line: 118, type: !3176, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!59, !56, !56, !46, !46, !46, !46, !46, !46}
!3178 = !{!3179, !3174, !3180, !3181, !3182, !3183, !3184, !3185}
!3179 = !DILocalVariable(name: "s1", arg: 1, scope: !3175, file: !3107, line: 118, type: !56)
!3180 = !DILocalVariable(name: "s23", arg: 3, scope: !3175, file: !3107, line: 118, type: !46)
!3181 = !DILocalVariable(name: "s24", arg: 4, scope: !3175, file: !3107, line: 118, type: !46)
!3182 = !DILocalVariable(name: "s25", arg: 5, scope: !3175, file: !3107, line: 118, type: !46)
!3183 = !DILocalVariable(name: "s26", arg: 6, scope: !3175, file: !3107, line: 118, type: !46)
!3184 = !DILocalVariable(name: "s27", arg: 7, scope: !3175, file: !3107, line: 118, type: !46)
!3185 = !DILocalVariable(name: "s28", arg: 8, scope: !3175, file: !3107, line: 118, type: !46)
!3186 = !DILocation(line: 118, column: 41, scope: !3175, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 139, column: 16, scope: !3188, inlinedAt: !3166)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !3107, line: 136, column: 11)
!3189 = distinct !DILexicalBlock(scope: !3173, file: !3107, line: 135, column: 5)
!3190 = !DILocation(line: 118, column: 90, scope: !3175, inlinedAt: !3187)
!3191 = !DILocation(line: 118, column: 100, scope: !3175, inlinedAt: !3187)
!3192 = !DILocation(line: 120, column: 7, scope: !3193, inlinedAt: !3187)
!3193 = !DILexicalBlockFile(scope: !3194, file: !3107, discriminator: 2)
!3194 = distinct !DILexicalBlock(scope: !3175, file: !3107, line: 120, column: 7)
!3195 = !DILocation(line: 120, column: 7, scope: !3196, inlinedAt: !3187)
!3196 = !DILexicalBlockFile(scope: !3175, file: !3107, discriminator: 2)
!3197 = !DILocalVariable(name: "s2", arg: 2, scope: !3198, file: !3107, line: 104, type: !56)
!3198 = distinct !DISubprogram(name: "strcaseeq4", scope: !3107, file: !3107, line: 104, type: !3199, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!59, !56, !56, !46, !46, !46, !46, !46}
!3201 = !{!3202, !3197, !3203, !3204, !3205, !3206, !3207}
!3202 = !DILocalVariable(name: "s1", arg: 1, scope: !3198, file: !3107, line: 104, type: !56)
!3203 = !DILocalVariable(name: "s24", arg: 3, scope: !3198, file: !3107, line: 104, type: !46)
!3204 = !DILocalVariable(name: "s25", arg: 4, scope: !3198, file: !3107, line: 104, type: !46)
!3205 = !DILocalVariable(name: "s26", arg: 5, scope: !3198, file: !3107, line: 104, type: !46)
!3206 = !DILocalVariable(name: "s27", arg: 6, scope: !3198, file: !3107, line: 104, type: !46)
!3207 = !DILocalVariable(name: "s28", arg: 7, scope: !3198, file: !3107, line: 104, type: !46)
!3208 = !DILocation(line: 104, column: 41, scope: !3198, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 125, column: 16, scope: !3210, inlinedAt: !3187)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !3107, line: 122, column: 11)
!3211 = distinct !DILexicalBlock(scope: !3194, file: !3107, line: 121, column: 5)
!3212 = !DILocation(line: 104, column: 80, scope: !3198, inlinedAt: !3209)
!3213 = !DILocation(line: 104, column: 90, scope: !3198, inlinedAt: !3209)
!3214 = !DILocation(line: 106, column: 7, scope: !3215, inlinedAt: !3209)
!3215 = !DILexicalBlockFile(scope: !3216, file: !3107, discriminator: 2)
!3216 = distinct !DILexicalBlock(scope: !3198, file: !3107, line: 106, column: 7)
!3217 = !DILocation(line: 106, column: 7, scope: !3218, inlinedAt: !3209)
!3218 = !DILexicalBlockFile(scope: !3198, file: !3107, discriminator: 2)
!3219 = !DILocalVariable(name: "s2", arg: 2, scope: !3220, file: !3107, line: 90, type: !56)
!3220 = distinct !DISubprogram(name: "strcaseeq5", scope: !3107, file: !3107, line: 90, type: !3221, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!59, !56, !56, !46, !46, !46, !46}
!3223 = !{!3224, !3219, !3225, !3226, !3227, !3228}
!3224 = !DILocalVariable(name: "s1", arg: 1, scope: !3220, file: !3107, line: 90, type: !56)
!3225 = !DILocalVariable(name: "s25", arg: 3, scope: !3220, file: !3107, line: 90, type: !46)
!3226 = !DILocalVariable(name: "s26", arg: 4, scope: !3220, file: !3107, line: 90, type: !46)
!3227 = !DILocalVariable(name: "s27", arg: 5, scope: !3220, file: !3107, line: 90, type: !46)
!3228 = !DILocalVariable(name: "s28", arg: 6, scope: !3220, file: !3107, line: 90, type: !46)
!3229 = !DILocation(line: 90, column: 41, scope: !3220, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 111, column: 16, scope: !3231, inlinedAt: !3209)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !3107, line: 108, column: 11)
!3232 = distinct !DILexicalBlock(scope: !3216, file: !3107, line: 107, column: 5)
!3233 = !DILocation(line: 90, column: 70, scope: !3220, inlinedAt: !3230)
!3234 = !DILocation(line: 90, column: 80, scope: !3220, inlinedAt: !3230)
!3235 = !DILocation(line: 92, column: 7, scope: !3236, inlinedAt: !3230)
!3236 = !DILexicalBlockFile(scope: !3237, file: !3107, discriminator: 2)
!3237 = distinct !DILexicalBlock(scope: !3220, file: !3107, line: 92, column: 7)
!3238 = !DILocation(line: 92, column: 7, scope: !3239, inlinedAt: !3230)
!3239 = !DILexicalBlockFile(scope: !3220, file: !3107, discriminator: 2)
!3240 = !DILocation(line: 227, column: 12, scope: !3123)
!3241 = !DILocation(line: 227, column: 21, scope: !3123)
!3242 = !DILocation(line: 227, column: 5, scope: !3123)
!3243 = !DILocation(line: 146, column: 41, scope: !3130, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 167, column: 16, scope: !3145, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 228, column: 7, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3088, file: !215, line: 228, column: 7)
!3247 = !DILocation(line: 146, column: 110, scope: !3130, inlinedAt: !3244)
!3248 = !DILocation(line: 146, column: 120, scope: !3130, inlinedAt: !3244)
!3249 = !DILocation(line: 148, column: 7, scope: !3150, inlinedAt: !3244)
!3250 = !DILocation(line: 132, column: 41, scope: !3153, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 153, column: 16, scope: !3167, inlinedAt: !3244)
!3252 = !DILocation(line: 132, column: 100, scope: !3153, inlinedAt: !3251)
!3253 = !DILocation(line: 132, column: 110, scope: !3153, inlinedAt: !3251)
!3254 = !DILocation(line: 134, column: 7, scope: !3255, inlinedAt: !3251)
!3255 = !DILexicalBlockFile(scope: !3173, file: !3107, discriminator: 2)
!3256 = !DILocation(line: 134, column: 7, scope: !3257, inlinedAt: !3251)
!3257 = !DILexicalBlockFile(scope: !3153, file: !3107, discriminator: 2)
!3258 = !DILocation(line: 118, column: 41, scope: !3175, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 139, column: 16, scope: !3188, inlinedAt: !3251)
!3260 = !DILocation(line: 118, column: 90, scope: !3175, inlinedAt: !3259)
!3261 = !DILocation(line: 118, column: 100, scope: !3175, inlinedAt: !3259)
!3262 = !DILocation(line: 120, column: 7, scope: !3193, inlinedAt: !3259)
!3263 = !DILocation(line: 120, column: 7, scope: !3196, inlinedAt: !3259)
!3264 = !DILocation(line: 104, column: 41, scope: !3198, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 125, column: 16, scope: !3210, inlinedAt: !3259)
!3266 = !DILocation(line: 104, column: 80, scope: !3198, inlinedAt: !3265)
!3267 = !DILocation(line: 104, column: 90, scope: !3198, inlinedAt: !3265)
!3268 = !DILocation(line: 106, column: 7, scope: !3215, inlinedAt: !3265)
!3269 = !DILocation(line: 106, column: 7, scope: !3218, inlinedAt: !3265)
!3270 = !DILocation(line: 90, column: 41, scope: !3220, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 111, column: 16, scope: !3231, inlinedAt: !3265)
!3272 = !DILocation(line: 90, column: 70, scope: !3220, inlinedAt: !3271)
!3273 = !DILocation(line: 90, column: 80, scope: !3220, inlinedAt: !3271)
!3274 = !DILocation(line: 92, column: 7, scope: !3236, inlinedAt: !3271)
!3275 = !DILocation(line: 92, column: 7, scope: !3239, inlinedAt: !3271)
!3276 = !DILocalVariable(name: "s2", arg: 2, scope: !3277, file: !3107, line: 76, type: !56)
!3277 = distinct !DISubprogram(name: "strcaseeq6", scope: !3107, file: !3107, line: 76, type: !3278, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!59, !56, !56, !46, !46, !46}
!3280 = !{!3281, !3276, !3282, !3283, !3284}
!3281 = !DILocalVariable(name: "s1", arg: 1, scope: !3277, file: !3107, line: 76, type: !56)
!3282 = !DILocalVariable(name: "s26", arg: 3, scope: !3277, file: !3107, line: 76, type: !46)
!3283 = !DILocalVariable(name: "s27", arg: 4, scope: !3277, file: !3107, line: 76, type: !46)
!3284 = !DILocalVariable(name: "s28", arg: 5, scope: !3277, file: !3107, line: 76, type: !46)
!3285 = !DILocation(line: 76, column: 41, scope: !3277, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 97, column: 16, scope: !3287, inlinedAt: !3271)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3107, line: 94, column: 11)
!3288 = distinct !DILexicalBlock(scope: !3237, file: !3107, line: 93, column: 5)
!3289 = !DILocation(line: 76, column: 60, scope: !3277, inlinedAt: !3286)
!3290 = !DILocation(line: 76, column: 70, scope: !3277, inlinedAt: !3286)
!3291 = !DILocation(line: 78, column: 7, scope: !3292, inlinedAt: !3286)
!3292 = !DILexicalBlockFile(scope: !3293, file: !3107, discriminator: 2)
!3293 = distinct !DILexicalBlock(scope: !3277, file: !3107, line: 78, column: 7)
!3294 = !DILocation(line: 78, column: 7, scope: !3295, inlinedAt: !3286)
!3295 = !DILexicalBlockFile(scope: !3277, file: !3107, discriminator: 2)
!3296 = !DILocalVariable(name: "s2", arg: 2, scope: !3297, file: !3107, line: 62, type: !56)
!3297 = distinct !DISubprogram(name: "strcaseeq7", scope: !3107, file: !3107, line: 62, type: !3298, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!59, !56, !56, !46, !46}
!3300 = !{!3301, !3296, !3302, !3303}
!3301 = !DILocalVariable(name: "s1", arg: 1, scope: !3297, file: !3107, line: 62, type: !56)
!3302 = !DILocalVariable(name: "s27", arg: 3, scope: !3297, file: !3107, line: 62, type: !46)
!3303 = !DILocalVariable(name: "s28", arg: 4, scope: !3297, file: !3107, line: 62, type: !46)
!3304 = !DILocation(line: 62, column: 41, scope: !3297, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 83, column: 16, scope: !3306, inlinedAt: !3286)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !3107, line: 80, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3293, file: !3107, line: 79, column: 5)
!3308 = !DILocation(line: 62, column: 50, scope: !3297, inlinedAt: !3305)
!3309 = !DILocation(line: 62, column: 60, scope: !3297, inlinedAt: !3305)
!3310 = !DILocation(line: 64, column: 7, scope: !3311, inlinedAt: !3305)
!3311 = !DILexicalBlockFile(scope: !3312, file: !3107, discriminator: 2)
!3312 = distinct !DILexicalBlock(scope: !3297, file: !3107, line: 64, column: 7)
!3313 = !DILocation(line: 228, column: 7, scope: !3088)
!3314 = !DILocation(line: 229, column: 12, scope: !3246)
!3315 = !DILocation(line: 229, column: 21, scope: !3246)
!3316 = !DILocation(line: 229, column: 5, scope: !3246)
!3317 = !DILocation(line: 231, column: 13, scope: !3088)
!3318 = !DILocation(line: 231, column: 11, scope: !3088)
!3319 = !DILocation(line: 231, column: 3, scope: !3088)
!3320 = !DILocation(line: 232, column: 1, scope: !3088)
!3321 = distinct !DISubprogram(name: "quotearg_alloc", scope: !215, file: !215, line: 791, type: !3322, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!45, !56, !48, !2163}
!3324 = !{!3325, !3326, !3327}
!3325 = !DILocalVariable(name: "arg", arg: 1, scope: !3321, file: !215, line: 791, type: !56)
!3326 = !DILocalVariable(name: "argsize", arg: 2, scope: !3321, file: !215, line: 791, type: !48)
!3327 = !DILocalVariable(name: "o", arg: 3, scope: !3321, file: !215, line: 792, type: !2163)
!3328 = !DILocation(line: 791, column: 29, scope: !3321)
!3329 = !DILocation(line: 791, column: 41, scope: !3321)
!3330 = !DILocation(line: 792, column: 47, scope: !3321)
!3331 = !DILocalVariable(name: "arg", arg: 1, scope: !3332, file: !215, line: 804, type: !56)
!3332 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !215, file: !215, line: 804, type: !3333, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!45, !56, !48, !627, !2163}
!3335 = !{!3331, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343}
!3336 = !DILocalVariable(name: "argsize", arg: 2, scope: !3332, file: !215, line: 804, type: !48)
!3337 = !DILocalVariable(name: "size", arg: 3, scope: !3332, file: !215, line: 804, type: !627)
!3338 = !DILocalVariable(name: "o", arg: 4, scope: !3332, file: !215, line: 805, type: !2163)
!3339 = !DILocalVariable(name: "p", scope: !3332, file: !215, line: 807, type: !2163)
!3340 = !DILocalVariable(name: "e", scope: !3332, file: !215, line: 808, type: !59)
!3341 = !DILocalVariable(name: "flags", scope: !3332, file: !215, line: 810, type: !59)
!3342 = !DILocalVariable(name: "bufsize", scope: !3332, file: !215, line: 811, type: !48)
!3343 = !DILocalVariable(name: "buf", scope: !3332, file: !215, line: 815, type: !45)
!3344 = !DILocation(line: 804, column: 33, scope: !3332, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 794, column: 10, scope: !3321)
!3346 = !DILocation(line: 804, column: 45, scope: !3332, inlinedAt: !3345)
!3347 = !DILocation(line: 804, column: 62, scope: !3332, inlinedAt: !3345)
!3348 = !DILocation(line: 805, column: 51, scope: !3332, inlinedAt: !3345)
!3349 = !DILocation(line: 807, column: 37, scope: !3332, inlinedAt: !3345)
!3350 = !DILocation(line: 807, column: 33, scope: !3332, inlinedAt: !3345)
!3351 = !DILocation(line: 808, column: 11, scope: !3332, inlinedAt: !3345)
!3352 = !DILocation(line: 808, column: 7, scope: !3332, inlinedAt: !3345)
!3353 = !DILocation(line: 810, column: 18, scope: !3332, inlinedAt: !3345)
!3354 = !DILocation(line: 810, column: 24, scope: !3332, inlinedAt: !3345)
!3355 = !DILocation(line: 810, column: 7, scope: !3332, inlinedAt: !3345)
!3356 = !DILocation(line: 811, column: 69, scope: !3332, inlinedAt: !3345)
!3357 = !DILocation(line: 812, column: 53, scope: !3332, inlinedAt: !3345)
!3358 = !DILocation(line: 813, column: 49, scope: !3332, inlinedAt: !3345)
!3359 = !DILocation(line: 814, column: 49, scope: !3332, inlinedAt: !3345)
!3360 = !DILocation(line: 811, column: 20, scope: !3332, inlinedAt: !3345)
!3361 = !DILocation(line: 814, column: 62, scope: !3332, inlinedAt: !3345)
!3362 = !DILocation(line: 811, column: 10, scope: !3332, inlinedAt: !3345)
!3363 = !DILocalVariable(name: "n", arg: 1, scope: !3364, file: !623, line: 220, type: !48)
!3364 = distinct !DISubprogram(name: "xcharalloc", scope: !623, file: !623, line: 220, type: !3365, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!45, !48}
!3367 = !{!3363}
!3368 = !DILocation(line: 220, column: 20, scope: !3364, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 815, column: 15, scope: !3332, inlinedAt: !3345)
!3370 = !DILocation(line: 222, column: 10, scope: !3364, inlinedAt: !3369)
!3371 = !DILocation(line: 815, column: 9, scope: !3332, inlinedAt: !3345)
!3372 = !DILocation(line: 816, column: 60, scope: !3332, inlinedAt: !3345)
!3373 = !DILocation(line: 818, column: 32, scope: !3332, inlinedAt: !3345)
!3374 = !DILocation(line: 818, column: 47, scope: !3332, inlinedAt: !3345)
!3375 = !DILocation(line: 816, column: 3, scope: !3332, inlinedAt: !3345)
!3376 = !DILocation(line: 819, column: 9, scope: !3332, inlinedAt: !3345)
!3377 = !DILocation(line: 794, column: 3, scope: !3321)
!3378 = !DILocation(line: 804, column: 33, scope: !3332)
!3379 = !DILocation(line: 804, column: 45, scope: !3332)
!3380 = !DILocation(line: 804, column: 62, scope: !3332)
!3381 = !DILocation(line: 805, column: 51, scope: !3332)
!3382 = !DILocation(line: 807, column: 37, scope: !3332)
!3383 = !DILocation(line: 807, column: 33, scope: !3332)
!3384 = !DILocation(line: 808, column: 11, scope: !3332)
!3385 = !DILocation(line: 808, column: 7, scope: !3332)
!3386 = !DILocation(line: 810, column: 18, scope: !3332)
!3387 = !DILocation(line: 810, column: 27, scope: !3332)
!3388 = !DILocation(line: 810, column: 24, scope: !3332)
!3389 = !DILocation(line: 810, column: 7, scope: !3332)
!3390 = !DILocation(line: 811, column: 69, scope: !3332)
!3391 = !DILocation(line: 812, column: 53, scope: !3332)
!3392 = !DILocation(line: 813, column: 49, scope: !3332)
!3393 = !DILocation(line: 814, column: 49, scope: !3332)
!3394 = !DILocation(line: 811, column: 20, scope: !3332)
!3395 = !DILocation(line: 814, column: 62, scope: !3332)
!3396 = !DILocation(line: 811, column: 10, scope: !3332)
!3397 = !DILocation(line: 220, column: 20, scope: !3364, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 815, column: 15, scope: !3332)
!3399 = !DILocation(line: 222, column: 10, scope: !3364, inlinedAt: !3398)
!3400 = !DILocation(line: 815, column: 9, scope: !3332)
!3401 = !DILocation(line: 816, column: 60, scope: !3332)
!3402 = !DILocation(line: 818, column: 32, scope: !3332)
!3403 = !DILocation(line: 818, column: 47, scope: !3332)
!3404 = !DILocation(line: 816, column: 3, scope: !3332)
!3405 = !DILocation(line: 819, column: 9, scope: !3332)
!3406 = !DILocation(line: 820, column: 7, scope: !3332)
!3407 = !DILocation(line: 821, column: 11, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3332, file: !215, line: 820, column: 7)
!3409 = !{!1096, !1096, i64 0}
!3410 = !DILocation(line: 821, column: 5, scope: !3408)
!3411 = !DILocation(line: 822, column: 3, scope: !3332)
!3412 = distinct !DISubprogram(name: "quotearg_free", scope: !215, file: !215, line: 840, type: !703, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3413)
!3413 = !{!3414, !3415}
!3414 = !DILocalVariable(name: "sv", scope: !3412, file: !215, line: 842, type: !239)
!3415 = !DILocalVariable(name: "i", scope: !3412, file: !215, line: 843, type: !59)
!3416 = !DILocation(line: 842, column: 24, scope: !3412)
!3417 = !DILocation(line: 842, column: 19, scope: !3412)
!3418 = !DILocation(line: 843, column: 7, scope: !3412)
!3419 = !DILocation(line: 844, column: 19, scope: !3420)
!3420 = !DILexicalBlockFile(scope: !3421, file: !215, discriminator: 1)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !215, line: 844, column: 3)
!3422 = distinct !DILexicalBlock(scope: !3412, file: !215, line: 844, column: 3)
!3423 = !DILocation(line: 844, column: 17, scope: !3420)
!3424 = !DILocation(line: 844, column: 3, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3422, file: !215, discriminator: 1)
!3426 = !DILocation(line: 845, column: 17, scope: !3421)
!3427 = !{!3428, !688, i64 8}
!3428 = !{!"slotvec", !1096, i64 0, !688, i64 8}
!3429 = !DILocation(line: 845, column: 5, scope: !3421)
!3430 = !DILocation(line: 844, column: 28, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3421, file: !215, discriminator: 2)
!3432 = distinct !{!3432, !3433, !3434}
!3433 = !DILocation(line: 844, column: 3, scope: !3422)
!3434 = !DILocation(line: 845, column: 20, scope: !3422)
!3435 = !DILocation(line: 846, column: 13, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3412, file: !215, line: 846, column: 7)
!3437 = !DILocation(line: 846, column: 17, scope: !3436)
!3438 = !DILocation(line: 846, column: 7, scope: !3412)
!3439 = !DILocation(line: 848, column: 7, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !215, line: 847, column: 5)
!3441 = !DILocation(line: 849, column: 21, scope: !3440)
!3442 = !{!3428, !1096, i64 0}
!3443 = !DILocation(line: 850, column: 20, scope: !3440)
!3444 = !DILocation(line: 851, column: 5, scope: !3440)
!3445 = !DILocation(line: 852, column: 10, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3412, file: !215, line: 852, column: 7)
!3447 = !DILocation(line: 852, column: 7, scope: !3412)
!3448 = !DILocation(line: 854, column: 13, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3446, file: !215, line: 853, column: 5)
!3450 = !DILocation(line: 854, column: 7, scope: !3449)
!3451 = !DILocation(line: 855, column: 15, scope: !3449)
!3452 = !DILocation(line: 856, column: 5, scope: !3449)
!3453 = !DILocation(line: 857, column: 10, scope: !3412)
!3454 = !DILocation(line: 858, column: 1, scope: !3412)
!3455 = distinct !DISubprogram(name: "quotearg_n", scope: !215, file: !215, line: 922, type: !3456, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!45, !59, !56}
!3458 = !{!3459, !3460}
!3459 = !DILocalVariable(name: "n", arg: 1, scope: !3455, file: !215, line: 922, type: !59)
!3460 = !DILocalVariable(name: "arg", arg: 2, scope: !3455, file: !215, line: 922, type: !56)
!3461 = !DILocation(line: 922, column: 17, scope: !3455)
!3462 = !DILocation(line: 922, column: 32, scope: !3455)
!3463 = !DILocation(line: 924, column: 10, scope: !3455)
!3464 = !DILocation(line: 924, column: 3, scope: !3455)
!3465 = distinct !DISubprogram(name: "quotearg_n_options", scope: !215, file: !215, line: 869, type: !3466, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!45, !59, !56, !48, !2163}
!3468 = !{!3469, !3470, !3471, !3472, !3473, !3474, !3475, !3478, !3480, !3481, !3482}
!3469 = !DILocalVariable(name: "n", arg: 1, scope: !3465, file: !215, line: 869, type: !59)
!3470 = !DILocalVariable(name: "arg", arg: 2, scope: !3465, file: !215, line: 869, type: !56)
!3471 = !DILocalVariable(name: "argsize", arg: 3, scope: !3465, file: !215, line: 869, type: !48)
!3472 = !DILocalVariable(name: "options", arg: 4, scope: !3465, file: !215, line: 870, type: !2163)
!3473 = !DILocalVariable(name: "e", scope: !3465, file: !215, line: 872, type: !59)
!3474 = !DILocalVariable(name: "sv", scope: !3465, file: !215, line: 874, type: !239)
!3475 = !DILocalVariable(name: "preallocated", scope: !3476, file: !215, line: 881, type: !66)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !215, line: 880, column: 5)
!3477 = distinct !DILexicalBlock(scope: !3465, file: !215, line: 879, column: 7)
!3478 = !DILocalVariable(name: "size", scope: !3479, file: !215, line: 894, type: !48)
!3479 = distinct !DILexicalBlock(scope: !3465, file: !215, line: 893, column: 3)
!3480 = !DILocalVariable(name: "val", scope: !3479, file: !215, line: 895, type: !45)
!3481 = !DILocalVariable(name: "flags", scope: !3479, file: !215, line: 897, type: !59)
!3482 = !DILocalVariable(name: "qsize", scope: !3479, file: !215, line: 898, type: !48)
!3483 = !DILocation(line: 869, column: 25, scope: !3465)
!3484 = !DILocation(line: 869, column: 40, scope: !3465)
!3485 = !DILocation(line: 869, column: 52, scope: !3465)
!3486 = !DILocation(line: 870, column: 51, scope: !3465)
!3487 = !DILocation(line: 872, column: 11, scope: !3465)
!3488 = !DILocation(line: 872, column: 7, scope: !3465)
!3489 = !DILocation(line: 874, column: 24, scope: !3465)
!3490 = !DILocation(line: 874, column: 19, scope: !3465)
!3491 = !DILocation(line: 876, column: 9, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3465, file: !215, line: 876, column: 7)
!3493 = !DILocation(line: 876, column: 7, scope: !3465)
!3494 = !DILocation(line: 877, column: 5, scope: !3492)
!3495 = !DILocation(line: 879, column: 7, scope: !3477)
!3496 = !DILocation(line: 879, column: 14, scope: !3477)
!3497 = !DILocation(line: 879, column: 7, scope: !3465)
!3498 = !DILocation(line: 881, column: 31, scope: !3476)
!3499 = !DILocation(line: 883, column: 67, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3476, file: !215, line: 883, column: 11)
!3501 = !DILocation(line: 883, column: 11, scope: !3476)
!3502 = !DILocation(line: 884, column: 9, scope: !3500)
!3503 = !DILocation(line: 886, column: 32, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !3476, file: !215, discriminator: 3)
!3505 = !DILocation(line: 886, column: 61, scope: !3504)
!3506 = !DILocation(line: 886, column: 58, scope: !3504)
!3507 = !DILocation(line: 886, column: 66, scope: !3504)
!3508 = !DILocation(line: 886, column: 22, scope: !3504)
!3509 = !DILocation(line: 886, column: 15, scope: !3504)
!3510 = !DILocation(line: 887, column: 11, scope: !3476)
!3511 = !DILocation(line: 888, column: 15, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3476, file: !215, line: 887, column: 11)
!3513 = !{i64 0, i64 8, !3409, i64 8, i64 8, !687}
!3514 = !DILocation(line: 888, column: 9, scope: !3512)
!3515 = !DILocation(line: 889, column: 20, scope: !3476)
!3516 = !DILocation(line: 889, column: 18, scope: !3476)
!3517 = !DILocation(line: 889, column: 7, scope: !3476)
!3518 = !DILocation(line: 889, column: 38, scope: !3476)
!3519 = !DILocation(line: 889, column: 31, scope: !3476)
!3520 = !DILocation(line: 889, column: 48, scope: !3476)
!3521 = !DILocation(line: 890, column: 14, scope: !3476)
!3522 = !DILocation(line: 891, column: 5, scope: !3476)
!3523 = !DILocation(line: 894, column: 19, scope: !3479)
!3524 = !DILocation(line: 894, column: 25, scope: !3479)
!3525 = !DILocation(line: 894, column: 12, scope: !3479)
!3526 = !DILocation(line: 895, column: 23, scope: !3479)
!3527 = !DILocation(line: 895, column: 11, scope: !3479)
!3528 = !DILocation(line: 897, column: 26, scope: !3479)
!3529 = !DILocation(line: 897, column: 32, scope: !3479)
!3530 = !DILocation(line: 897, column: 9, scope: !3479)
!3531 = !DILocation(line: 899, column: 55, scope: !3479)
!3532 = !DILocation(line: 900, column: 46, scope: !3479)
!3533 = !DILocation(line: 901, column: 55, scope: !3479)
!3534 = !DILocation(line: 902, column: 55, scope: !3479)
!3535 = !DILocation(line: 898, column: 20, scope: !3479)
!3536 = !DILocation(line: 898, column: 12, scope: !3479)
!3537 = !DILocation(line: 904, column: 14, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3479, file: !215, line: 904, column: 9)
!3539 = !DILocation(line: 904, column: 9, scope: !3479)
!3540 = !DILocation(line: 906, column: 35, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3538, file: !215, line: 905, column: 7)
!3542 = !DILocation(line: 906, column: 20, scope: !3541)
!3543 = !DILocation(line: 907, column: 17, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !215, line: 907, column: 13)
!3545 = !DILocation(line: 907, column: 13, scope: !3541)
!3546 = !DILocation(line: 908, column: 11, scope: !3544)
!3547 = !DILocation(line: 220, column: 20, scope: !3364, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 909, column: 27, scope: !3541)
!3549 = !DILocation(line: 222, column: 10, scope: !3364, inlinedAt: !3548)
!3550 = !DILocation(line: 909, column: 19, scope: !3541)
!3551 = !DILocation(line: 910, column: 69, scope: !3541)
!3552 = !DILocation(line: 912, column: 44, scope: !3541)
!3553 = !DILocation(line: 913, column: 44, scope: !3541)
!3554 = !DILocation(line: 910, column: 9, scope: !3541)
!3555 = !DILocation(line: 914, column: 7, scope: !3541)
!3556 = !DILocation(line: 916, column: 11, scope: !3479)
!3557 = !DILocation(line: 917, column: 5, scope: !3479)
!3558 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !215, file: !215, line: 928, type: !3559, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!45, !59, !56, !48}
!3561 = !{!3562, !3563, !3564}
!3562 = !DILocalVariable(name: "n", arg: 1, scope: !3558, file: !215, line: 928, type: !59)
!3563 = !DILocalVariable(name: "arg", arg: 2, scope: !3558, file: !215, line: 928, type: !56)
!3564 = !DILocalVariable(name: "argsize", arg: 3, scope: !3558, file: !215, line: 928, type: !48)
!3565 = !DILocation(line: 928, column: 21, scope: !3558)
!3566 = !DILocation(line: 928, column: 36, scope: !3558)
!3567 = !DILocation(line: 928, column: 48, scope: !3558)
!3568 = !DILocation(line: 930, column: 10, scope: !3558)
!3569 = !DILocation(line: 930, column: 3, scope: !3558)
!3570 = distinct !DISubprogram(name: "quotearg", scope: !215, file: !215, line: 934, type: !3571, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!45, !56}
!3573 = !{!3574}
!3574 = !DILocalVariable(name: "arg", arg: 1, scope: !3570, file: !215, line: 934, type: !56)
!3575 = !DILocation(line: 934, column: 23, scope: !3570)
!3576 = !DILocation(line: 922, column: 17, scope: !3455, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 936, column: 10, scope: !3570)
!3578 = !DILocation(line: 922, column: 32, scope: !3455, inlinedAt: !3577)
!3579 = !DILocation(line: 924, column: 10, scope: !3455, inlinedAt: !3577)
!3580 = !DILocation(line: 936, column: 3, scope: !3570)
!3581 = distinct !DISubprogram(name: "quotearg_mem", scope: !215, file: !215, line: 940, type: !3582, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!45, !56, !48}
!3584 = !{!3585, !3586}
!3585 = !DILocalVariable(name: "arg", arg: 1, scope: !3581, file: !215, line: 940, type: !56)
!3586 = !DILocalVariable(name: "argsize", arg: 2, scope: !3581, file: !215, line: 940, type: !48)
!3587 = !DILocation(line: 940, column: 27, scope: !3581)
!3588 = !DILocation(line: 940, column: 39, scope: !3581)
!3589 = !DILocation(line: 928, column: 21, scope: !3558, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 942, column: 10, scope: !3581)
!3591 = !DILocation(line: 928, column: 36, scope: !3558, inlinedAt: !3590)
!3592 = !DILocation(line: 928, column: 48, scope: !3558, inlinedAt: !3590)
!3593 = !DILocation(line: 930, column: 10, scope: !3558, inlinedAt: !3590)
!3594 = !DILocation(line: 942, column: 3, scope: !3581)
!3595 = distinct !DISubprogram(name: "quotearg_n_style", scope: !215, file: !215, line: 946, type: !3596, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!45, !59, !5, !56}
!3598 = !{!3599, !3600, !3601, !3602}
!3599 = !DILocalVariable(name: "n", arg: 1, scope: !3595, file: !215, line: 946, type: !59)
!3600 = !DILocalVariable(name: "s", arg: 2, scope: !3595, file: !215, line: 946, type: !5)
!3601 = !DILocalVariable(name: "arg", arg: 3, scope: !3595, file: !215, line: 946, type: !56)
!3602 = !DILocalVariable(name: "o", scope: !3595, file: !215, line: 948, type: !2164)
!3603 = !DILocalVariable(name: "o", scope: !3604, file: !215, line: 187, type: !220)
!3604 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !215, file: !215, line: 185, type: !3605, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!220, !5}
!3607 = !{!3608, !3603}
!3608 = !DILocalVariable(name: "style", arg: 1, scope: !3604, file: !215, line: 185, type: !5)
!3609 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3610 = !DILocation(line: 187, column: 26, scope: !3604, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 948, column: 36, scope: !3595)
!3612 = !DILocation(line: 946, column: 23, scope: !3595)
!3613 = !DILocation(line: 946, column: 45, scope: !3595)
!3614 = !DILocation(line: 946, column: 60, scope: !3595)
!3615 = !DILocation(line: 948, column: 3, scope: !3595)
!3616 = !DILocation(line: 948, column: 32, scope: !3595)
!3617 = !DILocation(line: 185, column: 48, scope: !3604, inlinedAt: !3611)
!3618 = !DILocation(line: 187, column: 3, scope: !3604, inlinedAt: !3611)
!3619 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3620 = !DILocation(line: 188, column: 13, scope: !3621, inlinedAt: !3611)
!3621 = distinct !DILexicalBlock(scope: !3604, file: !215, line: 188, column: 7)
!3622 = !DILocation(line: 188, column: 7, scope: !3604, inlinedAt: !3611)
!3623 = !DILocation(line: 189, column: 5, scope: !3621, inlinedAt: !3611)
!3624 = !{!3625}
!3625 = distinct !{!3625, !3626, !"quoting_options_from_style: argument 0"}
!3626 = distinct !{!3626, !"quoting_options_from_style"}
!3627 = !DILocation(line: 191, column: 10, scope: !3604, inlinedAt: !3611)
!3628 = !DILocation(line: 192, column: 1, scope: !3604, inlinedAt: !3611)
!3629 = !DILocation(line: 949, column: 10, scope: !3595)
!3630 = !DILocation(line: 950, column: 1, scope: !3595)
!3631 = !DILocation(line: 949, column: 3, scope: !3595)
!3632 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !215, file: !215, line: 953, type: !3633, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!45, !59, !5, !56, !48}
!3635 = !{!3636, !3637, !3638, !3639, !3640}
!3636 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !215, line: 953, type: !59)
!3637 = !DILocalVariable(name: "s", arg: 2, scope: !3632, file: !215, line: 953, type: !5)
!3638 = !DILocalVariable(name: "arg", arg: 3, scope: !3632, file: !215, line: 954, type: !56)
!3639 = !DILocalVariable(name: "argsize", arg: 4, scope: !3632, file: !215, line: 954, type: !48)
!3640 = !DILocalVariable(name: "o", scope: !3632, file: !215, line: 956, type: !2164)
!3641 = !DILocation(line: 187, column: 26, scope: !3604, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 956, column: 36, scope: !3632)
!3643 = !DILocation(line: 953, column: 27, scope: !3632)
!3644 = !DILocation(line: 953, column: 49, scope: !3632)
!3645 = !DILocation(line: 954, column: 35, scope: !3632)
!3646 = !DILocation(line: 954, column: 47, scope: !3632)
!3647 = !DILocation(line: 956, column: 3, scope: !3632)
!3648 = !DILocation(line: 956, column: 32, scope: !3632)
!3649 = !DILocation(line: 185, column: 48, scope: !3604, inlinedAt: !3642)
!3650 = !DILocation(line: 187, column: 3, scope: !3604, inlinedAt: !3642)
!3651 = !DILocation(line: 188, column: 13, scope: !3621, inlinedAt: !3642)
!3652 = !DILocation(line: 188, column: 7, scope: !3604, inlinedAt: !3642)
!3653 = !DILocation(line: 189, column: 5, scope: !3621, inlinedAt: !3642)
!3654 = !{!3655}
!3655 = distinct !{!3655, !3656, !"quoting_options_from_style: argument 0"}
!3656 = distinct !{!3656, !"quoting_options_from_style"}
!3657 = !DILocation(line: 191, column: 10, scope: !3604, inlinedAt: !3642)
!3658 = !DILocation(line: 192, column: 1, scope: !3604, inlinedAt: !3642)
!3659 = !DILocation(line: 957, column: 10, scope: !3632)
!3660 = !DILocation(line: 958, column: 1, scope: !3632)
!3661 = !DILocation(line: 957, column: 3, scope: !3632)
!3662 = distinct !DISubprogram(name: "quotearg_style", scope: !215, file: !215, line: 961, type: !3663, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!45, !5, !56}
!3665 = !{!3666, !3667}
!3666 = !DILocalVariable(name: "s", arg: 1, scope: !3662, file: !215, line: 961, type: !5)
!3667 = !DILocalVariable(name: "arg", arg: 2, scope: !3662, file: !215, line: 961, type: !56)
!3668 = !DILocation(line: 187, column: 26, scope: !3604, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 948, column: 36, scope: !3595, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 963, column: 10, scope: !3662)
!3671 = !DILocation(line: 961, column: 36, scope: !3662)
!3672 = !DILocation(line: 961, column: 51, scope: !3662)
!3673 = !DILocation(line: 946, column: 23, scope: !3595, inlinedAt: !3670)
!3674 = !DILocation(line: 946, column: 45, scope: !3595, inlinedAt: !3670)
!3675 = !DILocation(line: 946, column: 60, scope: !3595, inlinedAt: !3670)
!3676 = !DILocation(line: 948, column: 3, scope: !3595, inlinedAt: !3670)
!3677 = !DILocation(line: 948, column: 32, scope: !3595, inlinedAt: !3670)
!3678 = !DILocation(line: 185, column: 48, scope: !3604, inlinedAt: !3669)
!3679 = !DILocation(line: 187, column: 3, scope: !3604, inlinedAt: !3669)
!3680 = !DILocation(line: 188, column: 13, scope: !3621, inlinedAt: !3669)
!3681 = !DILocation(line: 188, column: 7, scope: !3604, inlinedAt: !3669)
!3682 = !DILocation(line: 189, column: 5, scope: !3621, inlinedAt: !3669)
!3683 = !{!3684}
!3684 = distinct !{!3684, !3685, !"quoting_options_from_style: argument 0"}
!3685 = distinct !{!3685, !"quoting_options_from_style"}
!3686 = !DILocation(line: 191, column: 10, scope: !3604, inlinedAt: !3669)
!3687 = !DILocation(line: 192, column: 1, scope: !3604, inlinedAt: !3669)
!3688 = !DILocation(line: 949, column: 10, scope: !3595, inlinedAt: !3670)
!3689 = !DILocation(line: 950, column: 1, scope: !3595, inlinedAt: !3670)
!3690 = !DILocation(line: 963, column: 3, scope: !3662)
!3691 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !215, file: !215, line: 967, type: !3692, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!45, !5, !56, !48}
!3694 = !{!3695, !3696, !3697}
!3695 = !DILocalVariable(name: "s", arg: 1, scope: !3691, file: !215, line: 967, type: !5)
!3696 = !DILocalVariable(name: "arg", arg: 2, scope: !3691, file: !215, line: 967, type: !56)
!3697 = !DILocalVariable(name: "argsize", arg: 3, scope: !3691, file: !215, line: 967, type: !48)
!3698 = !DILocation(line: 187, column: 26, scope: !3604, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 956, column: 36, scope: !3632, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 969, column: 10, scope: !3691)
!3701 = !DILocation(line: 967, column: 40, scope: !3691)
!3702 = !DILocation(line: 967, column: 55, scope: !3691)
!3703 = !DILocation(line: 967, column: 67, scope: !3691)
!3704 = !DILocation(line: 953, column: 27, scope: !3632, inlinedAt: !3700)
!3705 = !DILocation(line: 953, column: 49, scope: !3632, inlinedAt: !3700)
!3706 = !DILocation(line: 954, column: 35, scope: !3632, inlinedAt: !3700)
!3707 = !DILocation(line: 954, column: 47, scope: !3632, inlinedAt: !3700)
!3708 = !DILocation(line: 956, column: 3, scope: !3632, inlinedAt: !3700)
!3709 = !DILocation(line: 956, column: 32, scope: !3632, inlinedAt: !3700)
!3710 = !DILocation(line: 185, column: 48, scope: !3604, inlinedAt: !3699)
!3711 = !DILocation(line: 187, column: 3, scope: !3604, inlinedAt: !3699)
!3712 = !DILocation(line: 188, column: 13, scope: !3621, inlinedAt: !3699)
!3713 = !DILocation(line: 188, column: 7, scope: !3604, inlinedAt: !3699)
!3714 = !DILocation(line: 189, column: 5, scope: !3621, inlinedAt: !3699)
!3715 = !{!3716}
!3716 = distinct !{!3716, !3717, !"quoting_options_from_style: argument 0"}
!3717 = distinct !{!3717, !"quoting_options_from_style"}
!3718 = !DILocation(line: 191, column: 10, scope: !3604, inlinedAt: !3699)
!3719 = !DILocation(line: 192, column: 1, scope: !3604, inlinedAt: !3699)
!3720 = !DILocation(line: 957, column: 10, scope: !3632, inlinedAt: !3700)
!3721 = !DILocation(line: 958, column: 1, scope: !3632, inlinedAt: !3700)
!3722 = !DILocation(line: 969, column: 3, scope: !3691)
!3723 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !215, file: !215, line: 973, type: !3724, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!45, !56, !48, !46}
!3726 = !{!3727, !3728, !3729, !3730}
!3727 = !DILocalVariable(name: "arg", arg: 1, scope: !3723, file: !215, line: 973, type: !56)
!3728 = !DILocalVariable(name: "argsize", arg: 2, scope: !3723, file: !215, line: 973, type: !48)
!3729 = !DILocalVariable(name: "ch", arg: 3, scope: !3723, file: !215, line: 973, type: !46)
!3730 = !DILocalVariable(name: "options", scope: !3723, file: !215, line: 975, type: !220)
!3731 = !DILocation(line: 973, column: 32, scope: !3723)
!3732 = !DILocation(line: 973, column: 44, scope: !3723)
!3733 = !DILocation(line: 973, column: 58, scope: !3723)
!3734 = !DILocation(line: 975, column: 3, scope: !3723)
!3735 = !DILocation(line: 976, column: 13, scope: !3723)
!3736 = !{i64 0, i64 4, !847, i64 4, i64 4, !836, i64 8, i64 32, !847, i64 40, i64 8, !687, i64 48, i64 8, !687}
!3737 = !DILocation(line: 975, column: 26, scope: !3723)
!3738 = !DILocation(line: 144, column: 43, scope: !2187, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 977, column: 3, scope: !3723)
!3740 = !DILocation(line: 144, column: 51, scope: !2187, inlinedAt: !3739)
!3741 = !DILocation(line: 144, column: 58, scope: !2187, inlinedAt: !3739)
!3742 = !DILocation(line: 146, column: 17, scope: !2187, inlinedAt: !3739)
!3743 = !DILocation(line: 148, column: 62, scope: !2205, inlinedAt: !3739)
!3744 = !DILocation(line: 148, column: 57, scope: !2205, inlinedAt: !3739)
!3745 = !DILocation(line: 147, column: 17, scope: !2187, inlinedAt: !3739)
!3746 = !DILocation(line: 149, column: 18, scope: !2187, inlinedAt: !3739)
!3747 = !DILocation(line: 149, column: 15, scope: !2187, inlinedAt: !3739)
!3748 = !DILocation(line: 149, column: 7, scope: !2187, inlinedAt: !3739)
!3749 = !DILocation(line: 150, column: 12, scope: !2187, inlinedAt: !3739)
!3750 = !DILocation(line: 150, column: 15, scope: !2187, inlinedAt: !3739)
!3751 = !DILocation(line: 150, column: 25, scope: !2187, inlinedAt: !3739)
!3752 = !DILocation(line: 150, column: 7, scope: !2187, inlinedAt: !3739)
!3753 = !DILocation(line: 151, column: 18, scope: !2187, inlinedAt: !3739)
!3754 = !DILocation(line: 151, column: 23, scope: !2187, inlinedAt: !3739)
!3755 = !DILocation(line: 151, column: 6, scope: !2187, inlinedAt: !3739)
!3756 = !DILocation(line: 978, column: 10, scope: !3723)
!3757 = !DILocation(line: 979, column: 1, scope: !3723)
!3758 = !DILocation(line: 978, column: 3, scope: !3723)
!3759 = distinct !DISubprogram(name: "quotearg_char", scope: !215, file: !215, line: 982, type: !3760, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!45, !56, !46}
!3762 = !{!3763, !3764}
!3763 = !DILocalVariable(name: "arg", arg: 1, scope: !3759, file: !215, line: 982, type: !56)
!3764 = !DILocalVariable(name: "ch", arg: 2, scope: !3759, file: !215, line: 982, type: !46)
!3765 = !DILocation(line: 982, column: 28, scope: !3759)
!3766 = !DILocation(line: 982, column: 38, scope: !3759)
!3767 = !DILocation(line: 973, column: 32, scope: !3723, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 984, column: 10, scope: !3759)
!3769 = !DILocation(line: 973, column: 44, scope: !3723, inlinedAt: !3768)
!3770 = !DILocation(line: 973, column: 58, scope: !3723, inlinedAt: !3768)
!3771 = !DILocation(line: 975, column: 3, scope: !3723, inlinedAt: !3768)
!3772 = !DILocation(line: 976, column: 13, scope: !3723, inlinedAt: !3768)
!3773 = !DILocation(line: 975, column: 26, scope: !3723, inlinedAt: !3768)
!3774 = !DILocation(line: 144, column: 43, scope: !2187, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 977, column: 3, scope: !3723, inlinedAt: !3768)
!3776 = !DILocation(line: 144, column: 51, scope: !2187, inlinedAt: !3775)
!3777 = !DILocation(line: 144, column: 58, scope: !2187, inlinedAt: !3775)
!3778 = !DILocation(line: 146, column: 17, scope: !2187, inlinedAt: !3775)
!3779 = !DILocation(line: 148, column: 62, scope: !2205, inlinedAt: !3775)
!3780 = !DILocation(line: 148, column: 57, scope: !2205, inlinedAt: !3775)
!3781 = !DILocation(line: 147, column: 17, scope: !2187, inlinedAt: !3775)
!3782 = !DILocation(line: 149, column: 18, scope: !2187, inlinedAt: !3775)
!3783 = !DILocation(line: 149, column: 15, scope: !2187, inlinedAt: !3775)
!3784 = !DILocation(line: 149, column: 7, scope: !2187, inlinedAt: !3775)
!3785 = !DILocation(line: 150, column: 12, scope: !2187, inlinedAt: !3775)
!3786 = !DILocation(line: 150, column: 15, scope: !2187, inlinedAt: !3775)
!3787 = !DILocation(line: 150, column: 25, scope: !2187, inlinedAt: !3775)
!3788 = !DILocation(line: 150, column: 7, scope: !2187, inlinedAt: !3775)
!3789 = !DILocation(line: 151, column: 18, scope: !2187, inlinedAt: !3775)
!3790 = !DILocation(line: 151, column: 23, scope: !2187, inlinedAt: !3775)
!3791 = !DILocation(line: 151, column: 6, scope: !2187, inlinedAt: !3775)
!3792 = !DILocation(line: 978, column: 10, scope: !3723, inlinedAt: !3768)
!3793 = !DILocation(line: 979, column: 1, scope: !3723, inlinedAt: !3768)
!3794 = !DILocation(line: 984, column: 3, scope: !3759)
!3795 = distinct !DISubprogram(name: "quotearg_colon", scope: !215, file: !215, line: 988, type: !3571, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3796)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "arg", arg: 1, scope: !3795, file: !215, line: 988, type: !56)
!3798 = !DILocation(line: 988, column: 29, scope: !3795)
!3799 = !DILocation(line: 982, column: 28, scope: !3759, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 990, column: 10, scope: !3795)
!3801 = !DILocation(line: 982, column: 38, scope: !3759, inlinedAt: !3800)
!3802 = !DILocation(line: 973, column: 32, scope: !3723, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 984, column: 10, scope: !3759, inlinedAt: !3800)
!3804 = !DILocation(line: 973, column: 44, scope: !3723, inlinedAt: !3803)
!3805 = !DILocation(line: 973, column: 58, scope: !3723, inlinedAt: !3803)
!3806 = !DILocation(line: 975, column: 3, scope: !3723, inlinedAt: !3803)
!3807 = !DILocation(line: 976, column: 13, scope: !3723, inlinedAt: !3803)
!3808 = !DILocation(line: 975, column: 26, scope: !3723, inlinedAt: !3803)
!3809 = !DILocation(line: 144, column: 43, scope: !2187, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 977, column: 3, scope: !3723, inlinedAt: !3803)
!3811 = !DILocation(line: 144, column: 51, scope: !2187, inlinedAt: !3810)
!3812 = !DILocation(line: 144, column: 58, scope: !2187, inlinedAt: !3810)
!3813 = !DILocation(line: 146, column: 17, scope: !2187, inlinedAt: !3810)
!3814 = !DILocation(line: 148, column: 57, scope: !2205, inlinedAt: !3810)
!3815 = !DILocation(line: 147, column: 17, scope: !2187, inlinedAt: !3810)
!3816 = !DILocation(line: 149, column: 7, scope: !2187, inlinedAt: !3810)
!3817 = !DILocation(line: 150, column: 12, scope: !2187, inlinedAt: !3810)
!3818 = !DILocation(line: 151, column: 6, scope: !2187, inlinedAt: !3810)
!3819 = !DILocation(line: 978, column: 10, scope: !3723, inlinedAt: !3803)
!3820 = !DILocation(line: 979, column: 1, scope: !3723, inlinedAt: !3803)
!3821 = !DILocation(line: 990, column: 3, scope: !3795)
!3822 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !215, file: !215, line: 994, type: !3582, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3823)
!3823 = !{!3824, !3825}
!3824 = !DILocalVariable(name: "arg", arg: 1, scope: !3822, file: !215, line: 994, type: !56)
!3825 = !DILocalVariable(name: "argsize", arg: 2, scope: !3822, file: !215, line: 994, type: !48)
!3826 = !DILocation(line: 994, column: 33, scope: !3822)
!3827 = !DILocation(line: 994, column: 45, scope: !3822)
!3828 = !DILocation(line: 973, column: 32, scope: !3723, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 996, column: 10, scope: !3822)
!3830 = !DILocation(line: 973, column: 44, scope: !3723, inlinedAt: !3829)
!3831 = !DILocation(line: 973, column: 58, scope: !3723, inlinedAt: !3829)
!3832 = !DILocation(line: 975, column: 3, scope: !3723, inlinedAt: !3829)
!3833 = !DILocation(line: 976, column: 13, scope: !3723, inlinedAt: !3829)
!3834 = !DILocation(line: 975, column: 26, scope: !3723, inlinedAt: !3829)
!3835 = !DILocation(line: 144, column: 43, scope: !2187, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 977, column: 3, scope: !3723, inlinedAt: !3829)
!3837 = !DILocation(line: 144, column: 51, scope: !2187, inlinedAt: !3836)
!3838 = !DILocation(line: 144, column: 58, scope: !2187, inlinedAt: !3836)
!3839 = !DILocation(line: 146, column: 17, scope: !2187, inlinedAt: !3836)
!3840 = !DILocation(line: 148, column: 57, scope: !2205, inlinedAt: !3836)
!3841 = !DILocation(line: 147, column: 17, scope: !2187, inlinedAt: !3836)
!3842 = !DILocation(line: 149, column: 7, scope: !2187, inlinedAt: !3836)
!3843 = !DILocation(line: 150, column: 12, scope: !2187, inlinedAt: !3836)
!3844 = !DILocation(line: 151, column: 6, scope: !2187, inlinedAt: !3836)
!3845 = !DILocation(line: 978, column: 10, scope: !3723, inlinedAt: !3829)
!3846 = !DILocation(line: 979, column: 1, scope: !3723, inlinedAt: !3829)
!3847 = !DILocation(line: 996, column: 3, scope: !3822)
!3848 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !215, file: !215, line: 1000, type: !3596, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3849)
!3849 = !{!3850, !3851, !3852, !3853}
!3850 = !DILocalVariable(name: "n", arg: 1, scope: !3848, file: !215, line: 1000, type: !59)
!3851 = !DILocalVariable(name: "s", arg: 2, scope: !3848, file: !215, line: 1000, type: !5)
!3852 = !DILocalVariable(name: "arg", arg: 3, scope: !3848, file: !215, line: 1000, type: !56)
!3853 = !DILocalVariable(name: "options", scope: !3848, file: !215, line: 1002, type: !220)
!3854 = !DILocation(line: 187, column: 26, scope: !3604, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 1003, column: 13, scope: !3848)
!3856 = !DILocation(line: 1000, column: 29, scope: !3848)
!3857 = !DILocation(line: 1000, column: 51, scope: !3848)
!3858 = !DILocation(line: 1000, column: 66, scope: !3848)
!3859 = !DILocation(line: 1002, column: 3, scope: !3848)
!3860 = !DILocation(line: 185, column: 48, scope: !3604, inlinedAt: !3855)
!3861 = !DILocation(line: 187, column: 3, scope: !3604, inlinedAt: !3855)
!3862 = !DILocation(line: 188, column: 13, scope: !3621, inlinedAt: !3855)
!3863 = !DILocation(line: 188, column: 7, scope: !3604, inlinedAt: !3855)
!3864 = !DILocation(line: 189, column: 5, scope: !3621, inlinedAt: !3855)
!3865 = !{!3866}
!3866 = distinct !{!3866, !3867, !"quoting_options_from_style: argument 0"}
!3867 = distinct !{!3867, !"quoting_options_from_style"}
!3868 = !DILocation(line: 191, column: 10, scope: !3604, inlinedAt: !3855)
!3869 = !DILocation(line: 192, column: 1, scope: !3604, inlinedAt: !3855)
!3870 = !DILocation(line: 1003, column: 13, scope: !3848)
!3871 = !DILocation(line: 1002, column: 26, scope: !3848)
!3872 = !DILocation(line: 144, column: 43, scope: !2187, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 1004, column: 3, scope: !3848)
!3874 = !DILocation(line: 144, column: 51, scope: !2187, inlinedAt: !3873)
!3875 = !DILocation(line: 144, column: 58, scope: !2187, inlinedAt: !3873)
!3876 = !DILocation(line: 146, column: 17, scope: !2187, inlinedAt: !3873)
!3877 = !DILocation(line: 148, column: 57, scope: !2205, inlinedAt: !3873)
!3878 = !DILocation(line: 147, column: 17, scope: !2187, inlinedAt: !3873)
!3879 = !DILocation(line: 149, column: 7, scope: !2187, inlinedAt: !3873)
!3880 = !DILocation(line: 150, column: 12, scope: !2187, inlinedAt: !3873)
!3881 = !DILocation(line: 151, column: 6, scope: !2187, inlinedAt: !3873)
!3882 = !DILocation(line: 1005, column: 10, scope: !3848)
!3883 = !DILocation(line: 1006, column: 1, scope: !3848)
!3884 = !DILocation(line: 1005, column: 3, scope: !3848)
!3885 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !215, file: !215, line: 1009, type: !3886, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!45, !59, !56, !56, !56}
!3888 = !{!3889, !3890, !3891, !3892}
!3889 = !DILocalVariable(name: "n", arg: 1, scope: !3885, file: !215, line: 1009, type: !59)
!3890 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3885, file: !215, line: 1009, type: !56)
!3891 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3885, file: !215, line: 1010, type: !56)
!3892 = !DILocalVariable(name: "arg", arg: 4, scope: !3885, file: !215, line: 1010, type: !56)
!3893 = !DILocation(line: 1009, column: 24, scope: !3885)
!3894 = !DILocation(line: 1009, column: 39, scope: !3885)
!3895 = !DILocation(line: 1010, column: 32, scope: !3885)
!3896 = !DILocation(line: 1010, column: 57, scope: !3885)
!3897 = !DILocalVariable(name: "n", arg: 1, scope: !3898, file: !215, line: 1017, type: !59)
!3898 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !215, file: !215, line: 1017, type: !3899, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!45, !59, !56, !56, !56, !48}
!3901 = !{!3897, !3902, !3903, !3904, !3905, !3906}
!3902 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3898, file: !215, line: 1017, type: !56)
!3903 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3898, file: !215, line: 1018, type: !56)
!3904 = !DILocalVariable(name: "arg", arg: 4, scope: !3898, file: !215, line: 1019, type: !56)
!3905 = !DILocalVariable(name: "argsize", arg: 5, scope: !3898, file: !215, line: 1019, type: !48)
!3906 = !DILocalVariable(name: "o", scope: !3898, file: !215, line: 1021, type: !220)
!3907 = !DILocation(line: 1017, column: 28, scope: !3898, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 1012, column: 10, scope: !3885)
!3909 = !DILocation(line: 1017, column: 43, scope: !3898, inlinedAt: !3908)
!3910 = !DILocation(line: 1018, column: 36, scope: !3898, inlinedAt: !3908)
!3911 = !DILocation(line: 1019, column: 36, scope: !3898, inlinedAt: !3908)
!3912 = !DILocation(line: 1019, column: 48, scope: !3898, inlinedAt: !3908)
!3913 = !DILocation(line: 1021, column: 3, scope: !3898, inlinedAt: !3908)
!3914 = !DILocation(line: 1021, column: 30, scope: !3898, inlinedAt: !3908)
!3915 = !DILocation(line: 1021, column: 26, scope: !3898, inlinedAt: !3908)
!3916 = !DILocation(line: 171, column: 45, scope: !2237, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 1022, column: 3, scope: !3898, inlinedAt: !3908)
!3918 = !DILocation(line: 172, column: 33, scope: !2237, inlinedAt: !3917)
!3919 = !DILocation(line: 172, column: 57, scope: !2237, inlinedAt: !3917)
!3920 = !DILocation(line: 176, column: 6, scope: !2237, inlinedAt: !3917)
!3921 = !DILocation(line: 176, column: 12, scope: !2237, inlinedAt: !3917)
!3922 = !DILocation(line: 177, column: 8, scope: !2253, inlinedAt: !3917)
!3923 = !DILocation(line: 177, column: 23, scope: !2255, inlinedAt: !3917)
!3924 = !DILocation(line: 177, column: 19, scope: !2253, inlinedAt: !3917)
!3925 = !DILocation(line: 178, column: 5, scope: !2253, inlinedAt: !3917)
!3926 = !DILocation(line: 179, column: 6, scope: !2237, inlinedAt: !3917)
!3927 = !DILocation(line: 179, column: 17, scope: !2237, inlinedAt: !3917)
!3928 = !DILocation(line: 180, column: 6, scope: !2237, inlinedAt: !3917)
!3929 = !DILocation(line: 180, column: 18, scope: !2237, inlinedAt: !3917)
!3930 = !DILocation(line: 1023, column: 10, scope: !3898, inlinedAt: !3908)
!3931 = !DILocation(line: 1024, column: 1, scope: !3898, inlinedAt: !3908)
!3932 = !DILocation(line: 1012, column: 3, scope: !3885)
!3933 = !DILocation(line: 1017, column: 28, scope: !3898)
!3934 = !DILocation(line: 1017, column: 43, scope: !3898)
!3935 = !DILocation(line: 1018, column: 36, scope: !3898)
!3936 = !DILocation(line: 1019, column: 36, scope: !3898)
!3937 = !DILocation(line: 1019, column: 48, scope: !3898)
!3938 = !DILocation(line: 1021, column: 3, scope: !3898)
!3939 = !DILocation(line: 1021, column: 30, scope: !3898)
!3940 = !DILocation(line: 1021, column: 26, scope: !3898)
!3941 = !DILocation(line: 171, column: 45, scope: !2237, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 1022, column: 3, scope: !3898)
!3943 = !DILocation(line: 172, column: 33, scope: !2237, inlinedAt: !3942)
!3944 = !DILocation(line: 172, column: 57, scope: !2237, inlinedAt: !3942)
!3945 = !DILocation(line: 176, column: 6, scope: !2237, inlinedAt: !3942)
!3946 = !DILocation(line: 176, column: 12, scope: !2237, inlinedAt: !3942)
!3947 = !DILocation(line: 177, column: 8, scope: !2253, inlinedAt: !3942)
!3948 = !DILocation(line: 177, column: 23, scope: !2255, inlinedAt: !3942)
!3949 = !DILocation(line: 177, column: 19, scope: !2253, inlinedAt: !3942)
!3950 = !DILocation(line: 178, column: 5, scope: !2253, inlinedAt: !3942)
!3951 = !DILocation(line: 179, column: 6, scope: !2237, inlinedAt: !3942)
!3952 = !DILocation(line: 179, column: 17, scope: !2237, inlinedAt: !3942)
!3953 = !DILocation(line: 180, column: 6, scope: !2237, inlinedAt: !3942)
!3954 = !DILocation(line: 180, column: 18, scope: !2237, inlinedAt: !3942)
!3955 = !DILocation(line: 1023, column: 10, scope: !3898)
!3956 = !DILocation(line: 1024, column: 1, scope: !3898)
!3957 = !DILocation(line: 1023, column: 3, scope: !3898)
!3958 = distinct !DISubprogram(name: "quotearg_custom", scope: !215, file: !215, line: 1027, type: !3959, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !3961)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!45, !56, !56, !56}
!3961 = !{!3962, !3963, !3964}
!3962 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3958, file: !215, line: 1027, type: !56)
!3963 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3958, file: !215, line: 1027, type: !56)
!3964 = !DILocalVariable(name: "arg", arg: 3, scope: !3958, file: !215, line: 1028, type: !56)
!3965 = !DILocation(line: 1027, column: 30, scope: !3958)
!3966 = !DILocation(line: 1027, column: 54, scope: !3958)
!3967 = !DILocation(line: 1028, column: 30, scope: !3958)
!3968 = !DILocation(line: 1009, column: 24, scope: !3885, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 1030, column: 10, scope: !3958)
!3970 = !DILocation(line: 1009, column: 39, scope: !3885, inlinedAt: !3969)
!3971 = !DILocation(line: 1010, column: 32, scope: !3885, inlinedAt: !3969)
!3972 = !DILocation(line: 1010, column: 57, scope: !3885, inlinedAt: !3969)
!3973 = !DILocation(line: 1017, column: 28, scope: !3898, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 1012, column: 10, scope: !3885, inlinedAt: !3969)
!3975 = !DILocation(line: 1017, column: 43, scope: !3898, inlinedAt: !3974)
!3976 = !DILocation(line: 1018, column: 36, scope: !3898, inlinedAt: !3974)
!3977 = !DILocation(line: 1019, column: 36, scope: !3898, inlinedAt: !3974)
!3978 = !DILocation(line: 1019, column: 48, scope: !3898, inlinedAt: !3974)
!3979 = !DILocation(line: 1021, column: 3, scope: !3898, inlinedAt: !3974)
!3980 = !DILocation(line: 1021, column: 30, scope: !3898, inlinedAt: !3974)
!3981 = !DILocation(line: 1021, column: 26, scope: !3898, inlinedAt: !3974)
!3982 = !DILocation(line: 171, column: 45, scope: !2237, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 1022, column: 3, scope: !3898, inlinedAt: !3974)
!3984 = !DILocation(line: 172, column: 33, scope: !2237, inlinedAt: !3983)
!3985 = !DILocation(line: 172, column: 57, scope: !2237, inlinedAt: !3983)
!3986 = !DILocation(line: 176, column: 6, scope: !2237, inlinedAt: !3983)
!3987 = !DILocation(line: 176, column: 12, scope: !2237, inlinedAt: !3983)
!3988 = !DILocation(line: 177, column: 8, scope: !2253, inlinedAt: !3983)
!3989 = !DILocation(line: 177, column: 23, scope: !2255, inlinedAt: !3983)
!3990 = !DILocation(line: 177, column: 19, scope: !2253, inlinedAt: !3983)
!3991 = !DILocation(line: 178, column: 5, scope: !2253, inlinedAt: !3983)
!3992 = !DILocation(line: 179, column: 6, scope: !2237, inlinedAt: !3983)
!3993 = !DILocation(line: 179, column: 17, scope: !2237, inlinedAt: !3983)
!3994 = !DILocation(line: 180, column: 6, scope: !2237, inlinedAt: !3983)
!3995 = !DILocation(line: 180, column: 18, scope: !2237, inlinedAt: !3983)
!3996 = !DILocation(line: 1023, column: 10, scope: !3898, inlinedAt: !3974)
!3997 = !DILocation(line: 1024, column: 1, scope: !3898, inlinedAt: !3974)
!3998 = !DILocation(line: 1030, column: 3, scope: !3958)
!3999 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !215, file: !215, line: 1034, type: !4000, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!45, !56, !56, !56, !48}
!4002 = !{!4003, !4004, !4005, !4006}
!4003 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3999, file: !215, line: 1034, type: !56)
!4004 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3999, file: !215, line: 1034, type: !56)
!4005 = !DILocalVariable(name: "arg", arg: 3, scope: !3999, file: !215, line: 1035, type: !56)
!4006 = !DILocalVariable(name: "argsize", arg: 4, scope: !3999, file: !215, line: 1035, type: !48)
!4007 = !DILocation(line: 1034, column: 34, scope: !3999)
!4008 = !DILocation(line: 1034, column: 58, scope: !3999)
!4009 = !DILocation(line: 1035, column: 34, scope: !3999)
!4010 = !DILocation(line: 1035, column: 46, scope: !3999)
!4011 = !DILocation(line: 1017, column: 28, scope: !3898, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 1037, column: 10, scope: !3999)
!4013 = !DILocation(line: 1017, column: 43, scope: !3898, inlinedAt: !4012)
!4014 = !DILocation(line: 1018, column: 36, scope: !3898, inlinedAt: !4012)
!4015 = !DILocation(line: 1019, column: 36, scope: !3898, inlinedAt: !4012)
!4016 = !DILocation(line: 1019, column: 48, scope: !3898, inlinedAt: !4012)
!4017 = !DILocation(line: 1021, column: 3, scope: !3898, inlinedAt: !4012)
!4018 = !DILocation(line: 1021, column: 30, scope: !3898, inlinedAt: !4012)
!4019 = !DILocation(line: 1021, column: 26, scope: !3898, inlinedAt: !4012)
!4020 = !DILocation(line: 171, column: 45, scope: !2237, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 1022, column: 3, scope: !3898, inlinedAt: !4012)
!4022 = !DILocation(line: 172, column: 33, scope: !2237, inlinedAt: !4021)
!4023 = !DILocation(line: 172, column: 57, scope: !2237, inlinedAt: !4021)
!4024 = !DILocation(line: 176, column: 6, scope: !2237, inlinedAt: !4021)
!4025 = !DILocation(line: 176, column: 12, scope: !2237, inlinedAt: !4021)
!4026 = !DILocation(line: 177, column: 8, scope: !2253, inlinedAt: !4021)
!4027 = !DILocation(line: 177, column: 23, scope: !2255, inlinedAt: !4021)
!4028 = !DILocation(line: 177, column: 19, scope: !2253, inlinedAt: !4021)
!4029 = !DILocation(line: 178, column: 5, scope: !2253, inlinedAt: !4021)
!4030 = !DILocation(line: 179, column: 6, scope: !2237, inlinedAt: !4021)
!4031 = !DILocation(line: 179, column: 17, scope: !2237, inlinedAt: !4021)
!4032 = !DILocation(line: 180, column: 6, scope: !2237, inlinedAt: !4021)
!4033 = !DILocation(line: 180, column: 18, scope: !2237, inlinedAt: !4021)
!4034 = !DILocation(line: 1023, column: 10, scope: !3898, inlinedAt: !4012)
!4035 = !DILocation(line: 1024, column: 1, scope: !3898, inlinedAt: !4012)
!4036 = !DILocation(line: 1037, column: 3, scope: !3999)
!4037 = distinct !DISubprogram(name: "quote_n_mem", scope: !215, file: !215, line: 1052, type: !4038, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !4040)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!56, !59, !56, !48}
!4040 = !{!4041, !4042, !4043}
!4041 = !DILocalVariable(name: "n", arg: 1, scope: !4037, file: !215, line: 1052, type: !59)
!4042 = !DILocalVariable(name: "arg", arg: 2, scope: !4037, file: !215, line: 1052, type: !56)
!4043 = !DILocalVariable(name: "argsize", arg: 3, scope: !4037, file: !215, line: 1052, type: !48)
!4044 = !DILocation(line: 1052, column: 18, scope: !4037)
!4045 = !DILocation(line: 1052, column: 33, scope: !4037)
!4046 = !DILocation(line: 1052, column: 45, scope: !4037)
!4047 = !DILocation(line: 1054, column: 10, scope: !4037)
!4048 = !DILocation(line: 1054, column: 3, scope: !4037)
!4049 = distinct !DISubprogram(name: "quote_mem", scope: !215, file: !215, line: 1058, type: !4050, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!56, !56, !48}
!4052 = !{!4053, !4054}
!4053 = !DILocalVariable(name: "arg", arg: 1, scope: !4049, file: !215, line: 1058, type: !56)
!4054 = !DILocalVariable(name: "argsize", arg: 2, scope: !4049, file: !215, line: 1058, type: !48)
!4055 = !DILocation(line: 1058, column: 24, scope: !4049)
!4056 = !DILocation(line: 1058, column: 36, scope: !4049)
!4057 = !DILocation(line: 1052, column: 18, scope: !4037, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 1060, column: 10, scope: !4049)
!4059 = !DILocation(line: 1052, column: 33, scope: !4037, inlinedAt: !4058)
!4060 = !DILocation(line: 1052, column: 45, scope: !4037, inlinedAt: !4058)
!4061 = !DILocation(line: 1054, column: 10, scope: !4037, inlinedAt: !4058)
!4062 = !DILocation(line: 1060, column: 3, scope: !4049)
!4063 = distinct !DISubprogram(name: "quote_n", scope: !215, file: !215, line: 1064, type: !4064, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !4066)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!56, !59, !56}
!4066 = !{!4067, !4068}
!4067 = !DILocalVariable(name: "n", arg: 1, scope: !4063, file: !215, line: 1064, type: !59)
!4068 = !DILocalVariable(name: "arg", arg: 2, scope: !4063, file: !215, line: 1064, type: !56)
!4069 = !DILocation(line: 1064, column: 14, scope: !4063)
!4070 = !DILocation(line: 1064, column: 29, scope: !4063)
!4071 = !DILocation(line: 1052, column: 18, scope: !4037, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 1066, column: 10, scope: !4063)
!4073 = !DILocation(line: 1052, column: 33, scope: !4037, inlinedAt: !4072)
!4074 = !DILocation(line: 1052, column: 45, scope: !4037, inlinedAt: !4072)
!4075 = !DILocation(line: 1054, column: 10, scope: !4037, inlinedAt: !4072)
!4076 = !DILocation(line: 1066, column: 3, scope: !4063)
!4077 = distinct !DISubprogram(name: "quote", scope: !215, file: !215, line: 1070, type: !4078, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !203, variables: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!56, !56}
!4080 = !{!4081}
!4081 = !DILocalVariable(name: "arg", arg: 1, scope: !4077, file: !215, line: 1070, type: !56)
!4082 = !DILocation(line: 1070, column: 20, scope: !4077)
!4083 = !DILocation(line: 1064, column: 14, scope: !4063, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 1072, column: 10, scope: !4077)
!4085 = !DILocation(line: 1064, column: 29, scope: !4063, inlinedAt: !4084)
!4086 = !DILocation(line: 1052, column: 18, scope: !4037, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 1066, column: 10, scope: !4063, inlinedAt: !4084)
!4088 = !DILocation(line: 1052, column: 33, scope: !4037, inlinedAt: !4087)
!4089 = !DILocation(line: 1052, column: 45, scope: !4037, inlinedAt: !4087)
!4090 = !DILocation(line: 1054, column: 10, scope: !4037, inlinedAt: !4087)
!4091 = !DILocation(line: 1072, column: 3, scope: !4077)
!4092 = distinct !DISubprogram(name: "version_etc_arn", scope: !615, file: !615, line: 62, type: !4093, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !4136)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{null, !4095, !56, !56, !56, !4135, !48}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !772, line: 49, baseType: !4097)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !774, line: 241, size: 1728, elements: !4098)
!4098 = !{!4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4097, file: !774, line: 242, baseType: !59, size: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4097, file: !774, line: 247, baseType: !45, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4097, file: !774, line: 248, baseType: !45, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4097, file: !774, line: 249, baseType: !45, size: 64, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4097, file: !774, line: 250, baseType: !45, size: 64, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4097, file: !774, line: 251, baseType: !45, size: 64, offset: 320)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4097, file: !774, line: 252, baseType: !45, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4097, file: !774, line: 253, baseType: !45, size: 64, offset: 448)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4097, file: !774, line: 254, baseType: !45, size: 64, offset: 512)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4097, file: !774, line: 256, baseType: !45, size: 64, offset: 576)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4097, file: !774, line: 257, baseType: !45, size: 64, offset: 640)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4097, file: !774, line: 258, baseType: !45, size: 64, offset: 704)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4097, file: !774, line: 260, baseType: !4112, size: 64, offset: 768)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !774, line: 156, size: 192, elements: !4114)
!4114 = !{!4115, !4116, !4118}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4113, file: !774, line: 157, baseType: !4112, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4113, file: !774, line: 158, baseType: !4117, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4113, file: !774, line: 162, baseType: !59, size: 32, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4097, file: !774, line: 262, baseType: !4117, size: 64, offset: 832)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4097, file: !774, line: 264, baseType: !59, size: 32, offset: 896)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4097, file: !774, line: 268, baseType: !59, size: 32, offset: 928)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4097, file: !774, line: 270, baseType: !800, size: 64, offset: 960)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4097, file: !774, line: 274, baseType: !60, size: 16, offset: 1024)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4097, file: !774, line: 275, baseType: !804, size: 8, offset: 1040)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4097, file: !774, line: 276, baseType: !806, size: 8, offset: 1048)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4097, file: !774, line: 280, baseType: !810, size: 64, offset: 1088)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4097, file: !774, line: 289, baseType: !813, size: 64, offset: 1152)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4097, file: !774, line: 297, baseType: !47, size: 64, offset: 1216)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4097, file: !774, line: 298, baseType: !47, size: 64, offset: 1280)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4097, file: !774, line: 299, baseType: !47, size: 64, offset: 1344)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4097, file: !774, line: 300, baseType: !47, size: 64, offset: 1408)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4097, file: !774, line: 302, baseType: !48, size: 64, offset: 1472)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4097, file: !774, line: 303, baseType: !59, size: 32, offset: 1536)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4097, file: !774, line: 305, baseType: !821, size: 160, offset: 1568)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!4136 = !{!4137, !4138, !4139, !4140, !4141, !4142}
!4137 = !DILocalVariable(name: "stream", arg: 1, scope: !4092, file: !615, line: 62, type: !4095)
!4138 = !DILocalVariable(name: "command_name", arg: 2, scope: !4092, file: !615, line: 63, type: !56)
!4139 = !DILocalVariable(name: "package", arg: 3, scope: !4092, file: !615, line: 63, type: !56)
!4140 = !DILocalVariable(name: "version", arg: 4, scope: !4092, file: !615, line: 64, type: !56)
!4141 = !DILocalVariable(name: "authors", arg: 5, scope: !4092, file: !615, line: 65, type: !4135)
!4142 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4092, file: !615, line: 65, type: !48)
!4143 = !DILocation(line: 62, column: 24, scope: !4092)
!4144 = !DILocation(line: 63, column: 30, scope: !4092)
!4145 = !DILocation(line: 63, column: 56, scope: !4092)
!4146 = !DILocation(line: 64, column: 30, scope: !4092)
!4147 = !DILocation(line: 65, column: 39, scope: !4092)
!4148 = !DILocation(line: 65, column: 55, scope: !4092)
!4149 = !DILocation(line: 67, column: 7, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4092, file: !615, line: 67, column: 7)
!4151 = !DILocation(line: 67, column: 7, scope: !4092)
!4152 = !DILocation(line: 68, column: 5, scope: !4150)
!4153 = !DILocation(line: 70, column: 5, scope: !4150)
!4154 = !DILocation(line: 84, column: 3, scope: !4092)
!4155 = !DILocation(line: 84, column: 3, scope: !4156)
!4156 = !DILexicalBlockFile(scope: !4092, file: !615, discriminator: 1)
!4157 = !DILocation(line: 86, column: 3, scope: !4092)
!4158 = !DILocation(line: 86, column: 3, scope: !4156)
!4159 = !DILocation(line: 95, column: 3, scope: !4092)
!4160 = !DILocation(line: 99, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4092, file: !615, line: 96, column: 5)
!4162 = !DILocation(line: 102, column: 7, scope: !4161)
!4163 = !DILocation(line: 102, column: 7, scope: !4164)
!4164 = !DILexicalBlockFile(scope: !4161, file: !615, discriminator: 1)
!4165 = !DILocation(line: 103, column: 7, scope: !4161)
!4166 = !DILocation(line: 106, column: 7, scope: !4161)
!4167 = !DILocation(line: 106, column: 7, scope: !4164)
!4168 = !DILocation(line: 107, column: 7, scope: !4161)
!4169 = !DILocation(line: 110, column: 7, scope: !4161)
!4170 = !DILocation(line: 110, column: 7, scope: !4164)
!4171 = !DILocation(line: 112, column: 7, scope: !4161)
!4172 = !DILocation(line: 117, column: 7, scope: !4161)
!4173 = !DILocation(line: 117, column: 7, scope: !4164)
!4174 = !DILocation(line: 119, column: 7, scope: !4161)
!4175 = !DILocation(line: 124, column: 7, scope: !4161)
!4176 = !DILocation(line: 124, column: 7, scope: !4164)
!4177 = !DILocation(line: 126, column: 7, scope: !4161)
!4178 = !DILocation(line: 131, column: 7, scope: !4161)
!4179 = !DILocation(line: 131, column: 7, scope: !4164)
!4180 = !DILocation(line: 134, column: 7, scope: !4161)
!4181 = !DILocation(line: 139, column: 7, scope: !4161)
!4182 = !DILocation(line: 139, column: 7, scope: !4164)
!4183 = !DILocation(line: 142, column: 7, scope: !4161)
!4184 = !DILocation(line: 147, column: 7, scope: !4161)
!4185 = !DILocation(line: 147, column: 7, scope: !4164)
!4186 = !DILocation(line: 151, column: 7, scope: !4161)
!4187 = !DILocation(line: 156, column: 7, scope: !4161)
!4188 = !DILocation(line: 156, column: 7, scope: !4164)
!4189 = !DILocation(line: 160, column: 7, scope: !4161)
!4190 = !DILocation(line: 167, column: 7, scope: !4161)
!4191 = !DILocation(line: 167, column: 7, scope: !4164)
!4192 = !DILocation(line: 171, column: 7, scope: !4161)
!4193 = !DILocation(line: 173, column: 1, scope: !4092)
!4194 = distinct !DISubprogram(name: "version_etc_ar", scope: !615, file: !615, line: 180, type: !4195, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !4197)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{null, !4095, !56, !56, !56, !4135}
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203}
!4198 = !DILocalVariable(name: "stream", arg: 1, scope: !4194, file: !615, line: 180, type: !4095)
!4199 = !DILocalVariable(name: "command_name", arg: 2, scope: !4194, file: !615, line: 181, type: !56)
!4200 = !DILocalVariable(name: "package", arg: 3, scope: !4194, file: !615, line: 181, type: !56)
!4201 = !DILocalVariable(name: "version", arg: 4, scope: !4194, file: !615, line: 182, type: !56)
!4202 = !DILocalVariable(name: "authors", arg: 5, scope: !4194, file: !615, line: 182, type: !4135)
!4203 = !DILocalVariable(name: "n_authors", scope: !4194, file: !615, line: 184, type: !48)
!4204 = !DILocation(line: 180, column: 23, scope: !4194)
!4205 = !DILocation(line: 181, column: 29, scope: !4194)
!4206 = !DILocation(line: 181, column: 55, scope: !4194)
!4207 = !DILocation(line: 182, column: 29, scope: !4194)
!4208 = !DILocation(line: 182, column: 59, scope: !4194)
!4209 = !DILocation(line: 184, column: 10, scope: !4194)
!4210 = !DILocation(line: 186, column: 8, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4194, file: !615, line: 186, column: 3)
!4212 = !DILocation(line: 186, column: 23, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !4214, file: !615, discriminator: 1)
!4214 = distinct !DILexicalBlock(scope: !4211, file: !615, line: 186, column: 3)
!4215 = !DILocation(line: 186, column: 3, scope: !4216)
!4216 = !DILexicalBlockFile(scope: !4211, file: !615, discriminator: 1)
!4217 = !DILocation(line: 186, column: 52, scope: !4218)
!4218 = !DILexicalBlockFile(scope: !4214, file: !615, discriminator: 3)
!4219 = distinct !{!4219, !4220, !4221}
!4220 = !DILocation(line: 186, column: 3, scope: !4211)
!4221 = !DILocation(line: 187, column: 5, scope: !4211)
!4222 = !DILocation(line: 188, column: 3, scope: !4194)
!4223 = !DILocation(line: 189, column: 1, scope: !4194)
!4224 = distinct !DISubprogram(name: "version_etc_va", scope: !615, file: !615, line: 196, type: !4225, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !4234)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{null, !4095, !56, !56, !56, !4227}
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !612, line: 189, size: 192, elements: !4229)
!4229 = !{!4230, !4231, !4232, !4233}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4228, file: !612, line: 189, baseType: !44, size: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4228, file: !612, line: 189, baseType: !44, size: 32, offset: 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4228, file: !612, line: 189, baseType: !47, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4228, file: !612, line: 189, baseType: !47, size: 64, offset: 128)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4235 = !DILocalVariable(name: "stream", arg: 1, scope: !4224, file: !615, line: 196, type: !4095)
!4236 = !DILocalVariable(name: "command_name", arg: 2, scope: !4224, file: !615, line: 197, type: !56)
!4237 = !DILocalVariable(name: "package", arg: 3, scope: !4224, file: !615, line: 197, type: !56)
!4238 = !DILocalVariable(name: "version", arg: 4, scope: !4224, file: !615, line: 198, type: !56)
!4239 = !DILocalVariable(name: "authors", arg: 5, scope: !4224, file: !615, line: 198, type: !4227)
!4240 = !DILocalVariable(name: "n_authors", scope: !4224, file: !615, line: 200, type: !48)
!4241 = !DILocalVariable(name: "authtab", scope: !4224, file: !615, line: 201, type: !4242)
!4242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 640, elements: !125)
!4243 = !DILocation(line: 196, column: 23, scope: !4224)
!4244 = !DILocation(line: 197, column: 29, scope: !4224)
!4245 = !DILocation(line: 197, column: 55, scope: !4224)
!4246 = !DILocation(line: 198, column: 29, scope: !4224)
!4247 = !DILocation(line: 198, column: 46, scope: !4224)
!4248 = !DILocation(line: 201, column: 3, scope: !4224)
!4249 = !DILocation(line: 201, column: 15, scope: !4224)
!4250 = !DILocation(line: 200, column: 10, scope: !4224)
!4251 = !DILocation(line: 205, column: 35, scope: !4252)
!4252 = !DILexicalBlockFile(scope: !4253, file: !615, discriminator: 1)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !615, line: 203, column: 3)
!4254 = distinct !DILexicalBlock(scope: !4224, file: !615, line: 203, column: 3)
!4255 = !DILocation(line: 205, column: 35, scope: !4256)
!4256 = !DILexicalBlockFile(scope: !4253, file: !615, discriminator: 2)
!4257 = !DILocation(line: 205, column: 35, scope: !4258)
!4258 = !DILexicalBlockFile(scope: !4253, file: !615, discriminator: 3)
!4259 = !DILocation(line: 205, column: 35, scope: !4260)
!4260 = !DILexicalBlockFile(scope: !4253, file: !615, discriminator: 4)
!4261 = !DILocation(line: 205, column: 14, scope: !4260)
!4262 = !DILocation(line: 205, column: 33, scope: !4260)
!4263 = !DILocation(line: 205, column: 67, scope: !4260)
!4264 = !DILocation(line: 203, column: 3, scope: !4265)
!4265 = !DILexicalBlockFile(scope: !4254, file: !615, discriminator: 1)
!4266 = !DILocation(line: 208, column: 3, scope: !4224)
!4267 = !DILocation(line: 210, column: 1, scope: !4224)
!4268 = distinct !DISubprogram(name: "version_etc", scope: !615, file: !615, line: 227, type: !4269, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !4095, !56, !56, !56, null}
!4271 = !{!4272, !4273, !4274, !4275, !4276}
!4272 = !DILocalVariable(name: "stream", arg: 1, scope: !4268, file: !615, line: 227, type: !4095)
!4273 = !DILocalVariable(name: "command_name", arg: 2, scope: !4268, file: !615, line: 228, type: !56)
!4274 = !DILocalVariable(name: "package", arg: 3, scope: !4268, file: !615, line: 228, type: !56)
!4275 = !DILocalVariable(name: "version", arg: 4, scope: !4268, file: !615, line: 229, type: !56)
!4276 = !DILocalVariable(name: "authors", scope: !4268, file: !615, line: 231, type: !4277)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !772, line: 80, baseType: !4278)
!4278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4279, line: 50, baseType: !4280)
!4279 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !612, line: 231, baseType: !4281)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4228, size: 192, elements: !807)
!4282 = !DILocation(line: 227, column: 20, scope: !4268)
!4283 = !DILocation(line: 228, column: 26, scope: !4268)
!4284 = !DILocation(line: 228, column: 52, scope: !4268)
!4285 = !DILocation(line: 229, column: 26, scope: !4268)
!4286 = !DILocation(line: 231, column: 3, scope: !4268)
!4287 = !DILocation(line: 231, column: 11, scope: !4268)
!4288 = !DILocation(line: 233, column: 3, scope: !4268)
!4289 = !DILocation(line: 234, column: 3, scope: !4268)
!4290 = !DILocation(line: 235, column: 3, scope: !4268)
!4291 = !DILocation(line: 236, column: 1, scope: !4268)
!4292 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !615, file: !615, line: 239, type: !703, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !177)
!4293 = !DILocation(line: 245, column: 3, scope: !4292)
!4294 = !DILocation(line: 245, column: 3, scope: !4295)
!4295 = !DILexicalBlockFile(scope: !4292, file: !615, discriminator: 1)
!4296 = !DILocation(line: 251, column: 3, scope: !4292)
!4297 = !DILocation(line: 251, column: 3, scope: !4295)
!4298 = !DILocation(line: 256, column: 3, scope: !4292)
!4299 = !DILocation(line: 256, column: 3, scope: !4295)
!4300 = !DILocation(line: 258, column: 1, scope: !4292)
!4301 = distinct !DISubprogram(name: "xnmalloc", scope: !623, file: !623, line: 105, type: !4302, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!47, !48, !48}
!4304 = !{!4305, !4306}
!4305 = !DILocalVariable(name: "n", arg: 1, scope: !4301, file: !623, line: 105, type: !48)
!4306 = !DILocalVariable(name: "s", arg: 2, scope: !4301, file: !623, line: 105, type: !48)
!4307 = !DILocation(line: 105, column: 18, scope: !4301)
!4308 = !DILocation(line: 105, column: 28, scope: !4301)
!4309 = !DILocation(line: 107, column: 7, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4301, file: !623, line: 107, column: 7)
!4311 = !DILocation(line: 107, column: 7, scope: !4301)
!4312 = !DILocation(line: 108, column: 5, scope: !4310)
!4313 = !DILocation(line: 109, column: 21, scope: !4301)
!4314 = !DILocalVariable(name: "n", arg: 1, scope: !4315, file: !4316, line: 39, type: !48)
!4315 = distinct !DISubprogram(name: "xmalloc", scope: !4316, file: !4316, line: 39, type: !4317, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4319)
!4316 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!47, !48}
!4319 = !{!4314, !4320}
!4320 = !DILocalVariable(name: "p", scope: !4315, file: !4316, line: 41, type: !47)
!4321 = !DILocation(line: 39, column: 17, scope: !4315, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 109, column: 10, scope: !4301)
!4323 = !DILocation(line: 41, column: 13, scope: !4315, inlinedAt: !4322)
!4324 = !DILocation(line: 41, column: 9, scope: !4315, inlinedAt: !4322)
!4325 = !DILocation(line: 42, column: 8, scope: !4326, inlinedAt: !4322)
!4326 = distinct !DILexicalBlock(scope: !4315, file: !4316, line: 42, column: 7)
!4327 = !DILocation(line: 42, column: 15, scope: !4328, inlinedAt: !4322)
!4328 = !DILexicalBlockFile(scope: !4326, file: !4316, discriminator: 1)
!4329 = !DILocation(line: 42, column: 10, scope: !4326, inlinedAt: !4322)
!4330 = !DILocation(line: 43, column: 5, scope: !4326, inlinedAt: !4322)
!4331 = !DILocation(line: 109, column: 3, scope: !4301)
!4332 = !DILocation(line: 39, column: 17, scope: !4315)
!4333 = !DILocation(line: 41, column: 13, scope: !4315)
!4334 = !DILocation(line: 41, column: 9, scope: !4315)
!4335 = !DILocation(line: 42, column: 8, scope: !4326)
!4336 = !DILocation(line: 42, column: 15, scope: !4328)
!4337 = !DILocation(line: 42, column: 10, scope: !4326)
!4338 = !DILocation(line: 43, column: 5, scope: !4326)
!4339 = !DILocation(line: 44, column: 3, scope: !4315)
!4340 = distinct !DISubprogram(name: "xnrealloc", scope: !623, file: !623, line: 118, type: !4341, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!47, !47, !48, !48}
!4343 = !{!4344, !4345, !4346}
!4344 = !DILocalVariable(name: "p", arg: 1, scope: !4340, file: !623, line: 118, type: !47)
!4345 = !DILocalVariable(name: "n", arg: 2, scope: !4340, file: !623, line: 118, type: !48)
!4346 = !DILocalVariable(name: "s", arg: 3, scope: !4340, file: !623, line: 118, type: !48)
!4347 = !DILocation(line: 118, column: 18, scope: !4340)
!4348 = !DILocation(line: 118, column: 28, scope: !4340)
!4349 = !DILocation(line: 118, column: 38, scope: !4340)
!4350 = !DILocation(line: 120, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4340, file: !623, line: 120, column: 7)
!4352 = !DILocation(line: 120, column: 7, scope: !4340)
!4353 = !DILocation(line: 121, column: 5, scope: !4351)
!4354 = !DILocation(line: 122, column: 25, scope: !4340)
!4355 = !DILocalVariable(name: "p", arg: 1, scope: !4356, file: !4316, line: 51, type: !47)
!4356 = distinct !DISubprogram(name: "xrealloc", scope: !4316, file: !4316, line: 51, type: !4357, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4359)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!47, !47, !48}
!4359 = !{!4355, !4360}
!4360 = !DILocalVariable(name: "n", arg: 2, scope: !4356, file: !4316, line: 51, type: !48)
!4361 = !DILocation(line: 51, column: 17, scope: !4356, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 122, column: 10, scope: !4340)
!4363 = !DILocation(line: 51, column: 27, scope: !4356, inlinedAt: !4362)
!4364 = !DILocation(line: 53, column: 8, scope: !4365, inlinedAt: !4362)
!4365 = distinct !DILexicalBlock(scope: !4356, file: !4316, line: 53, column: 7)
!4366 = !DILocation(line: 53, column: 13, scope: !4367, inlinedAt: !4362)
!4367 = !DILexicalBlockFile(scope: !4365, file: !4316, discriminator: 1)
!4368 = !DILocation(line: 53, column: 10, scope: !4365, inlinedAt: !4362)
!4369 = !DILocation(line: 57, column: 7, scope: !4370, inlinedAt: !4362)
!4370 = distinct !DILexicalBlock(scope: !4365, file: !4316, line: 54, column: 5)
!4371 = !DILocation(line: 58, column: 7, scope: !4370, inlinedAt: !4362)
!4372 = !DILocation(line: 61, column: 7, scope: !4356, inlinedAt: !4362)
!4373 = !DILocation(line: 62, column: 8, scope: !4374, inlinedAt: !4362)
!4374 = distinct !DILexicalBlock(scope: !4356, file: !4316, line: 62, column: 7)
!4375 = !DILocation(line: 62, column: 13, scope: !4376, inlinedAt: !4362)
!4376 = !DILexicalBlockFile(scope: !4374, file: !4316, discriminator: 1)
!4377 = !DILocation(line: 62, column: 10, scope: !4374, inlinedAt: !4362)
!4378 = !DILocation(line: 63, column: 5, scope: !4374, inlinedAt: !4362)
!4379 = !DILocation(line: 122, column: 3, scope: !4340)
!4380 = !DILocation(line: 51, column: 17, scope: !4356)
!4381 = !DILocation(line: 51, column: 27, scope: !4356)
!4382 = !DILocation(line: 53, column: 8, scope: !4365)
!4383 = !DILocation(line: 53, column: 13, scope: !4367)
!4384 = !DILocation(line: 53, column: 10, scope: !4365)
!4385 = !DILocation(line: 57, column: 7, scope: !4370)
!4386 = !DILocation(line: 58, column: 7, scope: !4370)
!4387 = !DILocation(line: 61, column: 7, scope: !4356)
!4388 = !DILocation(line: 62, column: 8, scope: !4374)
!4389 = !DILocation(line: 62, column: 13, scope: !4376)
!4390 = !DILocation(line: 62, column: 10, scope: !4374)
!4391 = !DILocation(line: 63, column: 5, scope: !4374)
!4392 = !DILocation(line: 65, column: 1, scope: !4356)
!4393 = !DILocation(line: 180, column: 19, scope: !624)
!4394 = !DILocation(line: 180, column: 30, scope: !624)
!4395 = !DILocation(line: 180, column: 41, scope: !624)
!4396 = !DILocation(line: 182, column: 14, scope: !624)
!4397 = !DILocation(line: 182, column: 10, scope: !624)
!4398 = !DILocation(line: 184, column: 9, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !624, file: !623, line: 184, column: 7)
!4400 = !DILocation(line: 184, column: 7, scope: !624)
!4401 = !DILocation(line: 186, column: 13, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !623, line: 186, column: 11)
!4403 = distinct !DILexicalBlock(scope: !4399, file: !623, line: 185, column: 5)
!4404 = !DILocation(line: 186, column: 11, scope: !4403)
!4405 = !DILocation(line: 194, column: 30, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4402, file: !623, line: 187, column: 9)
!4407 = !DILocation(line: 195, column: 16, scope: !4406)
!4408 = !DILocation(line: 195, column: 13, scope: !4406)
!4409 = !DILocation(line: 196, column: 9, scope: !4406)
!4410 = !DILocation(line: 204, column: 69, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4412, file: !623, line: 204, column: 11)
!4412 = distinct !DILexicalBlock(scope: !4399, file: !623, line: 199, column: 5)
!4413 = !DILocation(line: 205, column: 11, scope: !4411)
!4414 = !DILocation(line: 204, column: 11, scope: !4412)
!4415 = !DILocation(line: 206, column: 9, scope: !4411)
!4416 = !DILocation(line: 210, column: 7, scope: !624)
!4417 = !DILocation(line: 211, column: 25, scope: !624)
!4418 = !DILocation(line: 51, column: 17, scope: !4356, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 211, column: 10, scope: !624)
!4420 = !DILocation(line: 51, column: 27, scope: !4356, inlinedAt: !4419)
!4421 = !DILocation(line: 53, column: 10, scope: !4365, inlinedAt: !4419)
!4422 = !DILocation(line: 207, column: 14, scope: !4412)
!4423 = !DILocation(line: 207, column: 18, scope: !4412)
!4424 = !DILocation(line: 207, column: 9, scope: !4412)
!4425 = !DILocation(line: 53, column: 8, scope: !4365, inlinedAt: !4419)
!4426 = !DILocation(line: 57, column: 7, scope: !4370, inlinedAt: !4419)
!4427 = !DILocation(line: 58, column: 7, scope: !4370, inlinedAt: !4419)
!4428 = !DILocation(line: 61, column: 7, scope: !4356, inlinedAt: !4419)
!4429 = !DILocation(line: 62, column: 8, scope: !4374, inlinedAt: !4419)
!4430 = !DILocation(line: 62, column: 13, scope: !4376, inlinedAt: !4419)
!4431 = !DILocation(line: 62, column: 10, scope: !4374, inlinedAt: !4419)
!4432 = !DILocation(line: 63, column: 5, scope: !4374, inlinedAt: !4419)
!4433 = !DILocation(line: 211, column: 3, scope: !624)
!4434 = distinct !DISubprogram(name: "xcharalloc", scope: !623, file: !623, line: 220, type: !3365, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4435)
!4435 = !{!4436}
!4436 = !DILocalVariable(name: "n", arg: 1, scope: !4434, file: !623, line: 220, type: !48)
!4437 = !DILocation(line: 220, column: 20, scope: !4434)
!4438 = !DILocation(line: 39, column: 17, scope: !4315, inlinedAt: !4439)
!4439 = distinct !DILocation(line: 222, column: 10, scope: !4434)
!4440 = !DILocation(line: 41, column: 13, scope: !4315, inlinedAt: !4439)
!4441 = !DILocation(line: 41, column: 9, scope: !4315, inlinedAt: !4439)
!4442 = !DILocation(line: 42, column: 8, scope: !4326, inlinedAt: !4439)
!4443 = !DILocation(line: 42, column: 15, scope: !4328, inlinedAt: !4439)
!4444 = !DILocation(line: 42, column: 10, scope: !4326, inlinedAt: !4439)
!4445 = !DILocation(line: 43, column: 5, scope: !4326, inlinedAt: !4439)
!4446 = !DILocation(line: 222, column: 3, scope: !4434)
!4447 = distinct !DISubprogram(name: "x2realloc", scope: !4316, file: !4316, line: 74, type: !4448, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4450)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!47, !47, !627}
!4450 = !{!4451, !4452}
!4451 = !DILocalVariable(name: "p", arg: 1, scope: !4447, file: !4316, line: 74, type: !47)
!4452 = !DILocalVariable(name: "pn", arg: 2, scope: !4447, file: !4316, line: 74, type: !627)
!4453 = !DILocation(line: 74, column: 18, scope: !4447)
!4454 = !DILocation(line: 74, column: 29, scope: !4447)
!4455 = !DILocation(line: 180, column: 19, scope: !624, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 76, column: 10, scope: !4447)
!4457 = !DILocation(line: 180, column: 30, scope: !624, inlinedAt: !4456)
!4458 = !DILocation(line: 180, column: 41, scope: !624, inlinedAt: !4456)
!4459 = !DILocation(line: 182, column: 14, scope: !624, inlinedAt: !4456)
!4460 = !DILocation(line: 182, column: 10, scope: !624, inlinedAt: !4456)
!4461 = !DILocation(line: 184, column: 9, scope: !4399, inlinedAt: !4456)
!4462 = !DILocation(line: 184, column: 7, scope: !624, inlinedAt: !4456)
!4463 = !DILocation(line: 186, column: 13, scope: !4402, inlinedAt: !4456)
!4464 = !DILocation(line: 186, column: 11, scope: !4403, inlinedAt: !4456)
!4465 = !DILocation(line: 210, column: 7, scope: !624, inlinedAt: !4456)
!4466 = !DILocation(line: 51, column: 17, scope: !4356, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 211, column: 10, scope: !624, inlinedAt: !4456)
!4468 = !DILocation(line: 51, column: 27, scope: !4356, inlinedAt: !4467)
!4469 = !DILocation(line: 53, column: 10, scope: !4365, inlinedAt: !4467)
!4470 = !DILocation(line: 205, column: 11, scope: !4411, inlinedAt: !4456)
!4471 = !DILocation(line: 204, column: 11, scope: !4412, inlinedAt: !4456)
!4472 = !DILocation(line: 206, column: 9, scope: !4411, inlinedAt: !4456)
!4473 = !DILocation(line: 207, column: 14, scope: !4412, inlinedAt: !4456)
!4474 = !DILocation(line: 207, column: 18, scope: !4412, inlinedAt: !4456)
!4475 = !DILocation(line: 207, column: 9, scope: !4412, inlinedAt: !4456)
!4476 = !DILocation(line: 53, column: 8, scope: !4365, inlinedAt: !4467)
!4477 = !DILocation(line: 57, column: 7, scope: !4370, inlinedAt: !4467)
!4478 = !DILocation(line: 58, column: 7, scope: !4370, inlinedAt: !4467)
!4479 = !DILocation(line: 61, column: 7, scope: !4356, inlinedAt: !4467)
!4480 = !DILocation(line: 62, column: 8, scope: !4374, inlinedAt: !4467)
!4481 = !DILocation(line: 62, column: 13, scope: !4376, inlinedAt: !4467)
!4482 = !DILocation(line: 62, column: 10, scope: !4374, inlinedAt: !4467)
!4483 = !DILocation(line: 63, column: 5, scope: !4374, inlinedAt: !4467)
!4484 = !DILocation(line: 76, column: 3, scope: !4447)
!4485 = distinct !DISubprogram(name: "xzalloc", scope: !4316, file: !4316, line: 84, type: !4317, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4486)
!4486 = !{!4487}
!4487 = !DILocalVariable(name: "s", arg: 1, scope: !4485, file: !4316, line: 84, type: !48)
!4488 = !DILocation(line: 84, column: 17, scope: !4485)
!4489 = !DILocation(line: 39, column: 17, scope: !4315, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 86, column: 18, scope: !4485)
!4491 = !DILocation(line: 41, column: 13, scope: !4315, inlinedAt: !4490)
!4492 = !DILocation(line: 41, column: 9, scope: !4315, inlinedAt: !4490)
!4493 = !DILocation(line: 42, column: 8, scope: !4326, inlinedAt: !4490)
!4494 = !DILocation(line: 42, column: 15, scope: !4328, inlinedAt: !4490)
!4495 = !DILocation(line: 42, column: 10, scope: !4326, inlinedAt: !4490)
!4496 = !DILocation(line: 43, column: 5, scope: !4326, inlinedAt: !4490)
!4497 = !DILocation(line: 86, column: 10, scope: !4485)
!4498 = !DILocation(line: 86, column: 3, scope: !4485)
!4499 = distinct !DISubprogram(name: "xcalloc", scope: !4316, file: !4316, line: 93, type: !4302, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4500)
!4500 = !{!4501, !4502, !4503}
!4501 = !DILocalVariable(name: "n", arg: 1, scope: !4499, file: !4316, line: 93, type: !48)
!4502 = !DILocalVariable(name: "s", arg: 2, scope: !4499, file: !4316, line: 93, type: !48)
!4503 = !DILocalVariable(name: "p", scope: !4499, file: !4316, line: 95, type: !47)
!4504 = !DILocation(line: 93, column: 17, scope: !4499)
!4505 = !DILocation(line: 93, column: 27, scope: !4499)
!4506 = !DILocation(line: 100, column: 7, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4499, file: !4316, line: 100, column: 7)
!4508 = !DILocation(line: 101, column: 7, scope: !4507)
!4509 = !DILocation(line: 101, column: 18, scope: !4510)
!4510 = !DILexicalBlockFile(scope: !4507, file: !4316, discriminator: 1)
!4511 = !DILocation(line: 95, column: 9, scope: !4499)
!4512 = !DILocation(line: 101, column: 16, scope: !4510)
!4513 = !DILocation(line: 100, column: 7, scope: !4514)
!4514 = !DILexicalBlockFile(scope: !4499, file: !4316, discriminator: 1)
!4515 = !DILocation(line: 102, column: 5, scope: !4507)
!4516 = !DILocation(line: 103, column: 3, scope: !4499)
!4517 = distinct !DISubprogram(name: "xmemdup", scope: !4316, file: !4316, line: 111, type: !4518, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4520)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!47, !51, !48}
!4520 = !{!4521, !4522}
!4521 = !DILocalVariable(name: "p", arg: 1, scope: !4517, file: !4316, line: 111, type: !51)
!4522 = !DILocalVariable(name: "s", arg: 2, scope: !4517, file: !4316, line: 111, type: !48)
!4523 = !DILocation(line: 111, column: 22, scope: !4517)
!4524 = !DILocation(line: 111, column: 32, scope: !4517)
!4525 = !DILocation(line: 39, column: 17, scope: !4315, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 113, column: 18, scope: !4517)
!4527 = !DILocation(line: 41, column: 13, scope: !4315, inlinedAt: !4526)
!4528 = !DILocation(line: 41, column: 9, scope: !4315, inlinedAt: !4526)
!4529 = !DILocation(line: 42, column: 8, scope: !4326, inlinedAt: !4526)
!4530 = !DILocation(line: 42, column: 15, scope: !4328, inlinedAt: !4526)
!4531 = !DILocation(line: 42, column: 10, scope: !4326, inlinedAt: !4526)
!4532 = !DILocation(line: 43, column: 5, scope: !4326, inlinedAt: !4526)
!4533 = !DILocation(line: 113, column: 10, scope: !4517)
!4534 = !DILocation(line: 113, column: 3, scope: !4517)
!4535 = distinct !DISubprogram(name: "xstrdup", scope: !4316, file: !4316, line: 119, type: !3571, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !4536)
!4536 = !{!4537}
!4537 = !DILocalVariable(name: "string", arg: 1, scope: !4535, file: !4316, line: 119, type: !56)
!4538 = !DILocation(line: 119, column: 22, scope: !4535)
!4539 = !DILocation(line: 121, column: 27, scope: !4535)
!4540 = !DILocation(line: 121, column: 43, scope: !4535)
!4541 = !DILocation(line: 111, column: 22, scope: !4517, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 121, column: 10, scope: !4543)
!4543 = !DILexicalBlockFile(scope: !4535, file: !4316, discriminator: 1)
!4544 = !DILocation(line: 111, column: 32, scope: !4517, inlinedAt: !4542)
!4545 = !DILocation(line: 39, column: 17, scope: !4315, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 113, column: 18, scope: !4517, inlinedAt: !4542)
!4547 = !DILocation(line: 41, column: 13, scope: !4315, inlinedAt: !4546)
!4548 = !DILocation(line: 41, column: 9, scope: !4315, inlinedAt: !4546)
!4549 = !DILocation(line: 42, column: 8, scope: !4326, inlinedAt: !4546)
!4550 = !DILocation(line: 42, column: 15, scope: !4328, inlinedAt: !4546)
!4551 = !DILocation(line: 42, column: 10, scope: !4326, inlinedAt: !4546)
!4552 = !DILocation(line: 43, column: 5, scope: !4326, inlinedAt: !4546)
!4553 = !DILocation(line: 113, column: 10, scope: !4517, inlinedAt: !4542)
!4554 = !DILocation(line: 121, column: 3, scope: !4535)
!4555 = distinct !DISubprogram(name: "xalloc_die", scope: !4556, file: !4556, line: 32, type: !703, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !636, variables: !177)
!4556 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4557 = !DILocation(line: 34, column: 10, scope: !4555)
!4558 = !DILocation(line: 34, column: 33, scope: !4555)
!4559 = !DILocation(line: 34, column: 3, scope: !4560)
!4560 = !DILexicalBlockFile(scope: !4555, file: !4556, discriminator: 1)
!4561 = !DILocation(line: 40, column: 3, scope: !4555)
!4562 = distinct !DISubprogram(name: "xnumtoumax", scope: !4563, file: !4563, line: 36, type: !4564, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !4569)
!4563 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!4566, !56, !59, !4566, !4566, !56, !56, !59}
!4566 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !4567, line: 136, baseType: !4568)
!4567 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !801, line: 62, baseType: !50)
!4569 = !{!4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4579}
!4570 = !DILocalVariable(name: "n_str", arg: 1, scope: !4562, file: !4563, line: 36, type: !56)
!4571 = !DILocalVariable(name: "base", arg: 2, scope: !4562, file: !4563, line: 36, type: !59)
!4572 = !DILocalVariable(name: "min", arg: 3, scope: !4562, file: !4563, line: 36, type: !4566)
!4573 = !DILocalVariable(name: "max", arg: 4, scope: !4562, file: !4563, line: 36, type: !4566)
!4574 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4562, file: !4563, line: 37, type: !56)
!4575 = !DILocalVariable(name: "err", arg: 6, scope: !4562, file: !4563, line: 37, type: !56)
!4576 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4562, file: !4563, line: 37, type: !59)
!4577 = !DILocalVariable(name: "s_err", scope: !4562, file: !4563, line: 39, type: !4578)
!4578 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !642, line: 39, baseType: !641)
!4579 = !DILocalVariable(name: "tnum", scope: !4562, file: !4563, line: 41, type: !4566)
!4580 = !DILocation(line: 36, column: 26, scope: !4562)
!4581 = !DILocation(line: 36, column: 37, scope: !4562)
!4582 = !DILocation(line: 36, column: 57, scope: !4562)
!4583 = !DILocation(line: 36, column: 76, scope: !4562)
!4584 = !DILocation(line: 37, column: 26, scope: !4562)
!4585 = !DILocation(line: 37, column: 48, scope: !4562)
!4586 = !DILocation(line: 37, column: 57, scope: !4562)
!4587 = !DILocation(line: 41, column: 3, scope: !4562)
!4588 = !DILocation(line: 41, column: 17, scope: !4562)
!4589 = !DILocation(line: 42, column: 11, scope: !4562)
!4590 = !DILocation(line: 39, column: 16, scope: !4562)
!4591 = !DILocation(line: 44, column: 7, scope: !4562)
!4592 = !DILocation(line: 69, column: 50, scope: !4593)
!4593 = !DILexicalBlockFile(scope: !4594, file: !4563, discriminator: 3)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !4563, line: 67, column: 5)
!4595 = distinct !DILexicalBlock(scope: !4562, file: !4563, line: 66, column: 7)
!4596 = !DILocation(line: 46, column: 11, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !4563, line: 46, column: 11)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !4563, line: 45, column: 5)
!4599 = distinct !DILexicalBlock(scope: !4562, file: !4563, line: 44, column: 7)
!4600 = !DILocation(line: 46, column: 16, scope: !4597)
!4601 = !DILocation(line: 46, column: 29, scope: !4602)
!4602 = !DILexicalBlockFile(scope: !4597, file: !4563, discriminator: 1)
!4603 = !DILocation(line: 46, column: 22, scope: !4597)
!4604 = !DILocation(line: 51, column: 20, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !4563, line: 51, column: 15)
!4606 = distinct !DILexicalBlock(scope: !4597, file: !4563, line: 47, column: 9)
!4607 = !DILocation(line: 52, column: 13, scope: !4605)
!4608 = !DILocation(line: 51, column: 15, scope: !4606)
!4609 = !DILocation(line: 59, column: 9, scope: !4606)
!4610 = !DILocation(line: 62, column: 5, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4599, file: !4563, line: 61, column: 12)
!4612 = !DILocation(line: 62, column: 11, scope: !4611)
!4613 = !DILocation(line: 64, column: 5, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4611, file: !4563, line: 63, column: 12)
!4615 = !DILocation(line: 64, column: 11, scope: !4614)
!4616 = !DILocation(line: 69, column: 14, scope: !4594)
!4617 = !DILocation(line: 69, column: 56, scope: !4593)
!4618 = !DILocation(line: 70, column: 29, scope: !4594)
!4619 = !DILocation(line: 69, column: 7, scope: !4620)
!4620 = !DILexicalBlockFile(scope: !4594, file: !4563, discriminator: 6)
!4621 = !DILocation(line: 71, column: 5, scope: !4594)
!4622 = !DILocation(line: 73, column: 10, scope: !4562)
!4623 = !DILocation(line: 74, column: 1, scope: !4562)
!4624 = !DILocation(line: 73, column: 3, scope: !4562)
!4625 = distinct !DISubprogram(name: "xdectoumax", scope: !4563, file: !4563, line: 82, type: !4626, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !4628)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!4566, !56, !4566, !4566, !56, !56, !59}
!4628 = !{!4629, !4630, !4631, !4632, !4633, !4634}
!4629 = !DILocalVariable(name: "n_str", arg: 1, scope: !4625, file: !4563, line: 82, type: !56)
!4630 = !DILocalVariable(name: "min", arg: 2, scope: !4625, file: !4563, line: 82, type: !4566)
!4631 = !DILocalVariable(name: "max", arg: 3, scope: !4625, file: !4563, line: 82, type: !4566)
!4632 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4625, file: !4563, line: 83, type: !56)
!4633 = !DILocalVariable(name: "err", arg: 5, scope: !4625, file: !4563, line: 83, type: !56)
!4634 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4625, file: !4563, line: 83, type: !59)
!4635 = !DILocation(line: 82, column: 26, scope: !4625)
!4636 = !DILocation(line: 82, column: 47, scope: !4625)
!4637 = !DILocation(line: 82, column: 66, scope: !4625)
!4638 = !DILocation(line: 83, column: 26, scope: !4625)
!4639 = !DILocation(line: 83, column: 48, scope: !4625)
!4640 = !DILocation(line: 83, column: 57, scope: !4625)
!4641 = !DILocation(line: 85, column: 10, scope: !4625)
!4642 = !DILocation(line: 85, column: 3, scope: !4625)
!4643 = distinct !DISubprogram(name: "xstrtoumax", scope: !4644, file: !4644, line: 88, type: !4645, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4648)
!4644 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!4578, !56, !747, !59, !4647, !56}
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4648 = !{!4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4661, !4662, !4665, !4666}
!4649 = !DILocalVariable(name: "s", arg: 1, scope: !4643, file: !4644, line: 88, type: !56)
!4650 = !DILocalVariable(name: "ptr", arg: 2, scope: !4643, file: !4644, line: 88, type: !747)
!4651 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4643, file: !4644, line: 88, type: !59)
!4652 = !DILocalVariable(name: "val", arg: 4, scope: !4643, file: !4644, line: 89, type: !4647)
!4653 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4643, file: !4644, line: 89, type: !56)
!4654 = !DILocalVariable(name: "t_ptr", scope: !4643, file: !4644, line: 91, type: !45)
!4655 = !DILocalVariable(name: "p", scope: !4643, file: !4644, line: 92, type: !747)
!4656 = !DILocalVariable(name: "tmp", scope: !4643, file: !4644, line: 93, type: !4566)
!4657 = !DILocalVariable(name: "err", scope: !4643, file: !4644, line: 94, type: !4578)
!4658 = !DILocalVariable(name: "q", scope: !4659, file: !4644, line: 104, type: !56)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !4644, line: 103, column: 5)
!4660 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 102, column: 7)
!4661 = !DILocalVariable(name: "ch", scope: !4659, file: !4644, line: 105, type: !55)
!4662 = !DILocalVariable(name: "base", scope: !4663, file: !4644, line: 141, type: !59)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !4644, line: 140, column: 5)
!4664 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 139, column: 7)
!4665 = !DILocalVariable(name: "suffixes", scope: !4663, file: !4644, line: 142, type: !59)
!4666 = !DILocalVariable(name: "overflow", scope: !4663, file: !4644, line: 143, type: !4578)
!4667 = !DILocation(line: 88, column: 24, scope: !4643)
!4668 = !DILocation(line: 88, column: 34, scope: !4643)
!4669 = !DILocation(line: 88, column: 43, scope: !4643)
!4670 = !DILocation(line: 89, column: 24, scope: !4643)
!4671 = !DILocation(line: 89, column: 41, scope: !4643)
!4672 = !DILocation(line: 91, column: 3, scope: !4643)
!4673 = !DILocation(line: 94, column: 16, scope: !4643)
!4674 = !DILocation(line: 96, column: 3, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !4644, line: 96, column: 3)
!4676 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 96, column: 3)
!4677 = !DILocation(line: 96, column: 3, scope: !4678)
!4678 = !DILexicalBlockFile(scope: !4675, file: !4644, discriminator: 3)
!4679 = !DILocation(line: 98, column: 8, scope: !4643)
!4680 = !DILocation(line: 92, column: 10, scope: !4643)
!4681 = !DILocation(line: 100, column: 3, scope: !4643)
!4682 = !DILocation(line: 100, column: 9, scope: !4643)
!4683 = !DILocation(line: 104, column: 19, scope: !4659)
!4684 = !DILocation(line: 106, column: 14, scope: !4685)
!4685 = !DILexicalBlockFile(scope: !4659, file: !4644, discriminator: 1)
!4686 = !DILocation(line: 106, column: 7, scope: !4659)
!4687 = !DILocation(line: 105, column: 21, scope: !4659)
!4688 = !DILocation(line: 106, column: 7, scope: !4685)
!4689 = !DILocation(line: 107, column: 15, scope: !4659)
!4690 = distinct !{!4690, !4686, !4691}
!4691 = !DILocation(line: 107, column: 17, scope: !4659)
!4692 = !DILocation(line: 109, column: 9, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4659, file: !4644, line: 108, column: 11)
!4694 = !DILocalVariable(name: "nptr", arg: 1, scope: !4695, file: !4696, line: 336, type: !4699)
!4695 = distinct !DISubprogram(name: "strtoumax", scope: !4696, file: !4696, line: 336, type: !4697, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4701)
!4696 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!4566, !4699, !4700, !59}
!4699 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!4700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !747)
!4701 = !{!4694, !4702, !4703}
!4702 = !DILocalVariable(name: "endptr", arg: 2, scope: !4695, file: !4696, line: 336, type: !4700)
!4703 = !DILocalVariable(name: "base", arg: 3, scope: !4695, file: !4696, line: 336, type: !59)
!4704 = !DILocation(line: 336, column: 1, scope: !4695, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 112, column: 9, scope: !4643)
!4706 = !DILocation(line: 339, column: 10, scope: !4695, inlinedAt: !4705)
!4707 = !DILocation(line: 93, column: 14, scope: !4643)
!4708 = !DILocation(line: 114, column: 7, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 114, column: 7)
!4710 = !DILocation(line: 114, column: 10, scope: !4709)
!4711 = !DILocation(line: 114, column: 7, scope: !4643)
!4712 = !DILocation(line: 118, column: 11, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !4644, line: 118, column: 11)
!4714 = distinct !DILexicalBlock(scope: !4709, file: !4644, line: 115, column: 5)
!4715 = !DILocation(line: 118, column: 26, scope: !4713)
!4716 = !DILocation(line: 118, column: 29, scope: !4717)
!4717 = !DILexicalBlockFile(scope: !4713, file: !4644, discriminator: 1)
!4718 = !DILocation(line: 118, column: 33, scope: !4717)
!4719 = !DILocation(line: 118, column: 36, scope: !4720)
!4720 = !DILexicalBlockFile(scope: !4713, file: !4644, discriminator: 5)
!4721 = !DILocation(line: 118, column: 11, scope: !4722)
!4722 = !DILexicalBlockFile(scope: !4714, file: !4644, discriminator: 5)
!4723 = !DILocation(line: 123, column: 12, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4709, file: !4644, line: 123, column: 12)
!4725 = !DILocation(line: 123, column: 12, scope: !4709)
!4726 = !DILocation(line: 128, column: 5, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4724, file: !4644, line: 124, column: 5)
!4728 = !DILocation(line: 133, column: 8, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4643, file: !4644, line: 133, column: 7)
!4730 = !DILocation(line: 133, column: 7, scope: !4643)
!4731 = !DILocation(line: 135, column: 12, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4729, file: !4644, line: 134, column: 5)
!4733 = !DILocation(line: 136, column: 7, scope: !4732)
!4734 = !DILocation(line: 139, column: 7, scope: !4664)
!4735 = !DILocation(line: 139, column: 11, scope: !4664)
!4736 = !DILocation(line: 139, column: 7, scope: !4643)
!4737 = !DILocation(line: 141, column: 11, scope: !4663)
!4738 = !DILocation(line: 142, column: 11, scope: !4663)
!4739 = !DILocation(line: 145, column: 12, scope: !4740)
!4740 = !DILexicalBlockFile(scope: !4741, file: !4644, discriminator: 3)
!4741 = distinct !DILexicalBlock(scope: !4663, file: !4644, line: 145, column: 11)
!4742 = !DILocation(line: 145, column: 11, scope: !4743)
!4743 = !DILexicalBlockFile(scope: !4663, file: !4644, discriminator: 3)
!4744 = !DILocation(line: 147, column: 16, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4741, file: !4644, line: 146, column: 9)
!4746 = !DILocation(line: 148, column: 22, scope: !4745)
!4747 = !DILocation(line: 148, column: 11, scope: !4745)
!4748 = !DILocation(line: 151, column: 7, scope: !4663)
!4749 = !DILocation(line: 163, column: 15, scope: !4750)
!4750 = !DILexicalBlockFile(scope: !4751, file: !4644, discriminator: 2)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !4644, line: 163, column: 15)
!4752 = distinct !DILexicalBlock(scope: !4663, file: !4644, line: 152, column: 9)
!4753 = !DILocation(line: 163, column: 15, scope: !4754)
!4754 = !DILexicalBlockFile(scope: !4752, file: !4644, discriminator: 2)
!4755 = !DILocation(line: 164, column: 21, scope: !4751)
!4756 = !DILocation(line: 164, column: 13, scope: !4751)
!4757 = !DILocation(line: 167, column: 21, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !4644, line: 167, column: 21)
!4759 = distinct !DILexicalBlock(scope: !4751, file: !4644, line: 165, column: 15)
!4760 = !DILocation(line: 167, column: 29, scope: !4758)
!4761 = !DILocation(line: 167, column: 21, scope: !4759)
!4762 = !DILocation(line: 175, column: 17, scope: !4759)
!4763 = !DILocation(line: 179, column: 7, scope: !4663)
!4764 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4765, file: !4644, line: 60, type: !59)
!4765 = distinct !DISubprogram(name: "bkm_scale", scope: !4644, file: !4644, line: 60, type: !4766, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4768)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!4578, !4647, !59}
!4768 = !{!4769, !4764}
!4769 = !DILocalVariable(name: "x", arg: 1, scope: !4765, file: !4644, line: 60, type: !4647)
!4770 = !DILocation(line: 60, column: 31, scope: !4765, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 182, column: 22, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4663, file: !4644, line: 180, column: 9)
!4773 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4771)
!4774 = distinct !DILexicalBlock(scope: !4765, file: !4644, line: 67, column: 7)
!4775 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4771)
!4776 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4771)
!4777 = !DILocation(line: 143, column: 20, scope: !4663)
!4778 = !DILocation(line: 183, column: 11, scope: !4772)
!4779 = !DILocation(line: 60, column: 31, scope: !4765, inlinedAt: !4780)
!4780 = distinct !DILocation(line: 189, column: 22, scope: !4772)
!4781 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4780)
!4782 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4780)
!4783 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4780)
!4784 = !DILocation(line: 190, column: 11, scope: !4772)
!4785 = !DILocalVariable(name: "power", arg: 3, scope: !4786, file: !4644, line: 77, type: !59)
!4786 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4644, file: !4644, line: 77, type: !4787, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4789)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!4578, !4647, !59, !59}
!4789 = !{!4790, !4791, !4785, !4792}
!4790 = !DILocalVariable(name: "x", arg: 1, scope: !4786, file: !4644, line: 77, type: !4647)
!4791 = !DILocalVariable(name: "base", arg: 2, scope: !4786, file: !4644, line: 77, type: !59)
!4792 = !DILocalVariable(name: "err", scope: !4786, file: !4644, line: 79, type: !4578)
!4793 = !DILocation(line: 77, column: 50, scope: !4786, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 197, column: 22, scope: !4772)
!4795 = !DILocation(line: 79, column: 16, scope: !4786, inlinedAt: !4794)
!4796 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4797)
!4797 = distinct !DILocation(line: 81, column: 12, scope: !4786, inlinedAt: !4794)
!4798 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4797)
!4799 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4797)
!4800 = !DILocation(line: 81, column: 9, scope: !4786, inlinedAt: !4794)
!4801 = !DILocation(line: 77, column: 50, scope: !4786, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 202, column: 22, scope: !4772)
!4803 = !DILocation(line: 79, column: 16, scope: !4786, inlinedAt: !4802)
!4804 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 81, column: 12, scope: !4786, inlinedAt: !4802)
!4806 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4805)
!4807 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4805)
!4808 = !DILocation(line: 81, column: 9, scope: !4786, inlinedAt: !4802)
!4809 = !DILocation(line: 77, column: 50, scope: !4786, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 207, column: 22, scope: !4772)
!4811 = !DILocation(line: 79, column: 16, scope: !4786, inlinedAt: !4810)
!4812 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 81, column: 12, scope: !4786, inlinedAt: !4810)
!4814 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4813)
!4815 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4813)
!4816 = !DILocation(line: 77, column: 50, scope: !4786, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 212, column: 22, scope: !4772)
!4818 = !DILocation(line: 79, column: 16, scope: !4786, inlinedAt: !4817)
!4819 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 81, column: 12, scope: !4786, inlinedAt: !4817)
!4821 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4820)
!4822 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4820)
!4823 = !DILocation(line: 81, column: 9, scope: !4786, inlinedAt: !4817)
!4824 = !DILocation(line: 77, column: 50, scope: !4786, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 216, column: 22, scope: !4772)
!4826 = !DILocation(line: 79, column: 16, scope: !4786, inlinedAt: !4825)
!4827 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 81, column: 12, scope: !4786, inlinedAt: !4825)
!4829 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4828)
!4830 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4828)
!4831 = !DILocation(line: 81, column: 9, scope: !4786, inlinedAt: !4825)
!4832 = !DILocation(line: 77, column: 50, scope: !4786, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 221, column: 22, scope: !4772)
!4834 = !DILocation(line: 79, column: 16, scope: !4786, inlinedAt: !4833)
!4835 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 81, column: 12, scope: !4786, inlinedAt: !4833)
!4837 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4836)
!4838 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4836)
!4839 = !DILocation(line: 81, column: 9, scope: !4786, inlinedAt: !4833)
!4840 = !DILocation(line: 60, column: 31, scope: !4765, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 225, column: 22, scope: !4772)
!4842 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4841)
!4843 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4841)
!4844 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4841)
!4845 = !DILocation(line: 226, column: 11, scope: !4772)
!4846 = !DILocation(line: 77, column: 50, scope: !4786, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 229, column: 22, scope: !4772)
!4848 = !DILocation(line: 79, column: 16, scope: !4786, inlinedAt: !4847)
!4849 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 81, column: 12, scope: !4786, inlinedAt: !4847)
!4851 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4850)
!4852 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4850)
!4853 = !DILocation(line: 81, column: 9, scope: !4786, inlinedAt: !4847)
!4854 = !DILocation(line: 77, column: 50, scope: !4786, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 233, column: 22, scope: !4772)
!4856 = !DILocation(line: 79, column: 16, scope: !4786, inlinedAt: !4855)
!4857 = !DILocation(line: 67, column: 39, scope: !4774, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 81, column: 12, scope: !4786, inlinedAt: !4855)
!4859 = !DILocation(line: 72, column: 6, scope: !4765, inlinedAt: !4858)
!4860 = !DILocation(line: 67, column: 7, scope: !4765, inlinedAt: !4858)
!4861 = !DILocation(line: 81, column: 9, scope: !4786, inlinedAt: !4855)
!4862 = !DILocation(line: 237, column: 16, scope: !4772)
!4863 = !DILocation(line: 238, column: 22, scope: !4772)
!4864 = !DILocation(line: 238, column: 11, scope: !4772)
!4865 = !DILocation(line: 241, column: 11, scope: !4663)
!4866 = !DILocation(line: 242, column: 10, scope: !4663)
!4867 = !DILocation(line: 243, column: 11, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4663, file: !4644, line: 243, column: 11)
!4869 = !DILocation(line: 244, column: 13, scope: !4868)
!4870 = !DILocation(line: 243, column: 11, scope: !4663)
!4871 = !DILocation(line: 247, column: 8, scope: !4643)
!4872 = !DILocation(line: 248, column: 3, scope: !4643)
!4873 = !DILocation(line: 249, column: 1, scope: !4643)
!4874 = distinct !DISubprogram(name: "rpl_calloc", scope: !4875, file: !4875, line: 42, type: !4302, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !4876)
!4875 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4876 = !{!4877, !4878, !4879, !4880}
!4877 = !DILocalVariable(name: "n", arg: 1, scope: !4874, file: !4875, line: 42, type: !48)
!4878 = !DILocalVariable(name: "s", arg: 2, scope: !4874, file: !4875, line: 42, type: !48)
!4879 = !DILocalVariable(name: "result", scope: !4874, file: !4875, line: 44, type: !47)
!4880 = !DILocalVariable(name: "bytes", scope: !4881, file: !4875, line: 56, type: !48)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !4875, line: 53, column: 5)
!4882 = distinct !DILexicalBlock(scope: !4874, file: !4875, line: 47, column: 7)
!4883 = !DILocation(line: 42, column: 20, scope: !4874)
!4884 = !DILocation(line: 42, column: 30, scope: !4874)
!4885 = !DILocation(line: 47, column: 9, scope: !4882)
!4886 = !DILocation(line: 47, column: 19, scope: !4887)
!4887 = !DILexicalBlockFile(scope: !4882, file: !4875, discriminator: 1)
!4888 = !DILocation(line: 47, column: 14, scope: !4882)
!4889 = !DILocation(line: 56, column: 24, scope: !4881)
!4890 = !DILocation(line: 56, column: 14, scope: !4881)
!4891 = !DILocation(line: 57, column: 17, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4881, file: !4875, line: 57, column: 11)
!4893 = !DILocation(line: 57, column: 21, scope: !4892)
!4894 = !DILocation(line: 57, column: 11, scope: !4881)
!4895 = !DILocation(line: 59, column: 11, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4892, file: !4875, line: 58, column: 9)
!4897 = !DILocation(line: 59, column: 17, scope: !4896)
!4898 = !DILocation(line: 65, column: 12, scope: !4874)
!4899 = !DILocation(line: 44, column: 9, scope: !4874)
!4900 = !DILocation(line: 72, column: 3, scope: !4874)
!4901 = !DILocation(line: 73, column: 1, scope: !4874)
!4902 = distinct !DISubprogram(name: "rpl_fclose", scope: !4903, file: !4903, line: 56, type: !4904, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !655, variables: !4946)
!4903 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!59, !4906}
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !772, line: 49, baseType: !4908)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !774, line: 241, size: 1728, elements: !4909)
!4909 = !{!4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4908, file: !774, line: 242, baseType: !59, size: 32)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4908, file: !774, line: 247, baseType: !45, size: 64, offset: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4908, file: !774, line: 248, baseType: !45, size: 64, offset: 128)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4908, file: !774, line: 249, baseType: !45, size: 64, offset: 192)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4908, file: !774, line: 250, baseType: !45, size: 64, offset: 256)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4908, file: !774, line: 251, baseType: !45, size: 64, offset: 320)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4908, file: !774, line: 252, baseType: !45, size: 64, offset: 384)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4908, file: !774, line: 253, baseType: !45, size: 64, offset: 448)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4908, file: !774, line: 254, baseType: !45, size: 64, offset: 512)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4908, file: !774, line: 256, baseType: !45, size: 64, offset: 576)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4908, file: !774, line: 257, baseType: !45, size: 64, offset: 640)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4908, file: !774, line: 258, baseType: !45, size: 64, offset: 704)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4908, file: !774, line: 260, baseType: !4923, size: 64, offset: 768)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !774, line: 156, size: 192, elements: !4925)
!4925 = !{!4926, !4927, !4929}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4924, file: !774, line: 157, baseType: !4923, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4924, file: !774, line: 158, baseType: !4928, size: 64, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4924, file: !774, line: 162, baseType: !59, size: 32, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4908, file: !774, line: 262, baseType: !4928, size: 64, offset: 832)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4908, file: !774, line: 264, baseType: !59, size: 32, offset: 896)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4908, file: !774, line: 268, baseType: !59, size: 32, offset: 928)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4908, file: !774, line: 270, baseType: !800, size: 64, offset: 960)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4908, file: !774, line: 274, baseType: !60, size: 16, offset: 1024)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4908, file: !774, line: 275, baseType: !804, size: 8, offset: 1040)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4908, file: !774, line: 276, baseType: !806, size: 8, offset: 1048)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4908, file: !774, line: 280, baseType: !810, size: 64, offset: 1088)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4908, file: !774, line: 289, baseType: !813, size: 64, offset: 1152)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4908, file: !774, line: 297, baseType: !47, size: 64, offset: 1216)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4908, file: !774, line: 298, baseType: !47, size: 64, offset: 1280)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4908, file: !774, line: 299, baseType: !47, size: 64, offset: 1344)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4908, file: !774, line: 300, baseType: !47, size: 64, offset: 1408)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4908, file: !774, line: 302, baseType: !48, size: 64, offset: 1472)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4908, file: !774, line: 303, baseType: !59, size: 32, offset: 1536)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4908, file: !774, line: 305, baseType: !821, size: 160, offset: 1568)
!4946 = !{!4947, !4948, !4949, !4950}
!4947 = !DILocalVariable(name: "fp", arg: 1, scope: !4902, file: !4903, line: 56, type: !4906)
!4948 = !DILocalVariable(name: "saved_errno", scope: !4902, file: !4903, line: 58, type: !59)
!4949 = !DILocalVariable(name: "fd", scope: !4902, file: !4903, line: 59, type: !59)
!4950 = !DILocalVariable(name: "result", scope: !4902, file: !4903, line: 60, type: !59)
!4951 = !DILocation(line: 56, column: 19, scope: !4902)
!4952 = !DILocation(line: 58, column: 7, scope: !4902)
!4953 = !DILocation(line: 60, column: 7, scope: !4902)
!4954 = !DILocation(line: 63, column: 8, scope: !4902)
!4955 = !DILocation(line: 59, column: 7, scope: !4902)
!4956 = !DILocation(line: 64, column: 10, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4902, file: !4903, line: 64, column: 7)
!4958 = !DILocation(line: 64, column: 7, scope: !4902)
!4959 = !DILocation(line: 65, column: 12, scope: !4957)
!4960 = !DILocation(line: 65, column: 5, scope: !4957)
!4961 = !DILocation(line: 70, column: 9, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4902, file: !4903, line: 70, column: 7)
!4963 = !DILocation(line: 70, column: 23, scope: !4962)
!4964 = !DILocation(line: 70, column: 33, scope: !4965)
!4965 = !DILexicalBlockFile(scope: !4962, file: !4903, discriminator: 1)
!4966 = !DILocation(line: 70, column: 26, scope: !4967)
!4967 = !DILexicalBlockFile(scope: !4962, file: !4903, discriminator: 3)
!4968 = !DILocation(line: 70, column: 59, scope: !4965)
!4969 = !DILocation(line: 71, column: 7, scope: !4962)
!4970 = !DILocation(line: 71, column: 10, scope: !4965)
!4971 = !DILocation(line: 70, column: 7, scope: !4972)
!4972 = !DILexicalBlockFile(scope: !4902, file: !4903, discriminator: 2)
!4973 = !DILocation(line: 98, column: 12, scope: !4902)
!4974 = !DILocation(line: 103, column: 7, scope: !4902)
!4975 = !DILocation(line: 72, column: 19, scope: !4962)
!4976 = !DILocation(line: 103, column: 19, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4902, file: !4903, line: 103, column: 7)
!4978 = !DILocation(line: 105, column: 13, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4977, file: !4903, line: 104, column: 5)
!4980 = !DILocation(line: 107, column: 5, scope: !4979)
!4981 = !DILocation(line: 110, column: 1, scope: !4902)
!4982 = distinct !DISubprogram(name: "rpl_fflush", scope: !4983, file: !4983, line: 127, type: !4984, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !5026)
!4983 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!59, !4986}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !772, line: 49, baseType: !4988)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !774, line: 241, size: 1728, elements: !4989)
!4989 = !{!4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4988, file: !774, line: 242, baseType: !59, size: 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4988, file: !774, line: 247, baseType: !45, size: 64, offset: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4988, file: !774, line: 248, baseType: !45, size: 64, offset: 128)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4988, file: !774, line: 249, baseType: !45, size: 64, offset: 192)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4988, file: !774, line: 250, baseType: !45, size: 64, offset: 256)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4988, file: !774, line: 251, baseType: !45, size: 64, offset: 320)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4988, file: !774, line: 252, baseType: !45, size: 64, offset: 384)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4988, file: !774, line: 253, baseType: !45, size: 64, offset: 448)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4988, file: !774, line: 254, baseType: !45, size: 64, offset: 512)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4988, file: !774, line: 256, baseType: !45, size: 64, offset: 576)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4988, file: !774, line: 257, baseType: !45, size: 64, offset: 640)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4988, file: !774, line: 258, baseType: !45, size: 64, offset: 704)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4988, file: !774, line: 260, baseType: !5003, size: 64, offset: 768)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !774, line: 156, size: 192, elements: !5005)
!5005 = !{!5006, !5007, !5009}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5004, file: !774, line: 157, baseType: !5003, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5004, file: !774, line: 158, baseType: !5008, size: 64, offset: 64)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5004, file: !774, line: 162, baseType: !59, size: 32, offset: 128)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4988, file: !774, line: 262, baseType: !5008, size: 64, offset: 832)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4988, file: !774, line: 264, baseType: !59, size: 32, offset: 896)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4988, file: !774, line: 268, baseType: !59, size: 32, offset: 928)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4988, file: !774, line: 270, baseType: !800, size: 64, offset: 960)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4988, file: !774, line: 274, baseType: !60, size: 16, offset: 1024)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4988, file: !774, line: 275, baseType: !804, size: 8, offset: 1040)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4988, file: !774, line: 276, baseType: !806, size: 8, offset: 1048)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4988, file: !774, line: 280, baseType: !810, size: 64, offset: 1088)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4988, file: !774, line: 289, baseType: !813, size: 64, offset: 1152)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4988, file: !774, line: 297, baseType: !47, size: 64, offset: 1216)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4988, file: !774, line: 298, baseType: !47, size: 64, offset: 1280)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4988, file: !774, line: 299, baseType: !47, size: 64, offset: 1344)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4988, file: !774, line: 300, baseType: !47, size: 64, offset: 1408)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4988, file: !774, line: 302, baseType: !48, size: 64, offset: 1472)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4988, file: !774, line: 303, baseType: !59, size: 32, offset: 1536)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4988, file: !774, line: 305, baseType: !821, size: 160, offset: 1568)
!5026 = !{!5027}
!5027 = !DILocalVariable(name: "stream", arg: 1, scope: !4982, file: !4983, line: 127, type: !4986)
!5028 = !DILocation(line: 127, column: 19, scope: !4982)
!5029 = !DILocation(line: 148, column: 14, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !4982, file: !4983, line: 148, column: 7)
!5031 = !DILocation(line: 148, column: 22, scope: !5030)
!5032 = !DILocation(line: 148, column: 27, scope: !5033)
!5033 = !DILexicalBlockFile(scope: !5030, file: !4983, discriminator: 1)
!5034 = !DILocation(line: 148, column: 7, scope: !5035)
!5035 = !DILexicalBlockFile(scope: !4982, file: !4983, discriminator: 1)
!5036 = !DILocation(line: 149, column: 12, scope: !5030)
!5037 = !DILocation(line: 149, column: 5, scope: !5030)
!5038 = !DILocalVariable(name: "fp", arg: 1, scope: !5039, file: !4983, line: 40, type: !4986)
!5039 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4983, file: !4983, line: 40, type: !5040, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !5042)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !4986}
!5042 = !{!5038}
!5043 = !DILocation(line: 40, column: 48, scope: !5039, inlinedAt: !5044)
!5044 = distinct !DILocation(line: 153, column: 3, scope: !4982)
!5045 = !DILocation(line: 42, column: 11, scope: !5046, inlinedAt: !5044)
!5046 = distinct !DILexicalBlock(scope: !5039, file: !4983, line: 42, column: 7)
!5047 = !{!1095, !837, i64 0}
!5048 = !DILocation(line: 42, column: 18, scope: !5046, inlinedAt: !5044)
!5049 = !DILocation(line: 42, column: 7, scope: !5039, inlinedAt: !5044)
!5050 = !DILocation(line: 44, column: 5, scope: !5046, inlinedAt: !5044)
!5051 = !DILocation(line: 155, column: 10, scope: !4982)
!5052 = !DILocation(line: 155, column: 3, scope: !4982)
!5053 = !DILocation(line: 229, column: 1, scope: !4982)
!5054 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5055, file: !5055, line: 28, type: !5056, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !5098)
!5055 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!59, !5058, !2026, !59}
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !772, line: 49, baseType: !5060)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !774, line: 241, size: 1728, elements: !5061)
!5061 = !{!5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5060, file: !774, line: 242, baseType: !59, size: 32)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5060, file: !774, line: 247, baseType: !45, size: 64, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5060, file: !774, line: 248, baseType: !45, size: 64, offset: 128)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5060, file: !774, line: 249, baseType: !45, size: 64, offset: 192)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5060, file: !774, line: 250, baseType: !45, size: 64, offset: 256)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5060, file: !774, line: 251, baseType: !45, size: 64, offset: 320)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5060, file: !774, line: 252, baseType: !45, size: 64, offset: 384)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5060, file: !774, line: 253, baseType: !45, size: 64, offset: 448)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5060, file: !774, line: 254, baseType: !45, size: 64, offset: 512)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5060, file: !774, line: 256, baseType: !45, size: 64, offset: 576)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5060, file: !774, line: 257, baseType: !45, size: 64, offset: 640)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5060, file: !774, line: 258, baseType: !45, size: 64, offset: 704)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5060, file: !774, line: 260, baseType: !5075, size: 64, offset: 768)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !774, line: 156, size: 192, elements: !5077)
!5077 = !{!5078, !5079, !5081}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5076, file: !774, line: 157, baseType: !5075, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5076, file: !774, line: 158, baseType: !5080, size: 64, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5076, file: !774, line: 162, baseType: !59, size: 32, offset: 128)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5060, file: !774, line: 262, baseType: !5080, size: 64, offset: 832)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5060, file: !774, line: 264, baseType: !59, size: 32, offset: 896)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5060, file: !774, line: 268, baseType: !59, size: 32, offset: 928)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5060, file: !774, line: 270, baseType: !800, size: 64, offset: 960)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5060, file: !774, line: 274, baseType: !60, size: 16, offset: 1024)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5060, file: !774, line: 275, baseType: !804, size: 8, offset: 1040)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5060, file: !774, line: 276, baseType: !806, size: 8, offset: 1048)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5060, file: !774, line: 280, baseType: !810, size: 64, offset: 1088)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5060, file: !774, line: 289, baseType: !813, size: 64, offset: 1152)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5060, file: !774, line: 297, baseType: !47, size: 64, offset: 1216)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5060, file: !774, line: 298, baseType: !47, size: 64, offset: 1280)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5060, file: !774, line: 299, baseType: !47, size: 64, offset: 1344)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5060, file: !774, line: 300, baseType: !47, size: 64, offset: 1408)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5060, file: !774, line: 302, baseType: !48, size: 64, offset: 1472)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5060, file: !774, line: 303, baseType: !59, size: 32, offset: 1536)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5060, file: !774, line: 305, baseType: !821, size: 160, offset: 1568)
!5098 = !{!5099, !5100, !5101, !5102}
!5099 = !DILocalVariable(name: "fp", arg: 1, scope: !5054, file: !5055, line: 28, type: !5058)
!5100 = !DILocalVariable(name: "offset", arg: 2, scope: !5054, file: !5055, line: 28, type: !2026)
!5101 = !DILocalVariable(name: "whence", arg: 3, scope: !5054, file: !5055, line: 28, type: !59)
!5102 = !DILocalVariable(name: "pos", scope: !5103, file: !5055, line: 116, type: !2026)
!5103 = distinct !DILexicalBlock(scope: !5104, file: !5055, line: 112, column: 5)
!5104 = distinct !DILexicalBlock(scope: !5054, file: !5055, line: 51, column: 7)
!5105 = !DILocation(line: 28, column: 15, scope: !5054)
!5106 = !DILocation(line: 28, column: 25, scope: !5054)
!5107 = !DILocation(line: 28, column: 37, scope: !5054)
!5108 = !DILocation(line: 51, column: 11, scope: !5104)
!5109 = !DILocation(line: 51, column: 31, scope: !5104)
!5110 = !DILocation(line: 51, column: 24, scope: !5104)
!5111 = !DILocation(line: 52, column: 7, scope: !5104)
!5112 = !DILocation(line: 52, column: 14, scope: !5113)
!5113 = !DILexicalBlockFile(scope: !5104, file: !5055, discriminator: 1)
!5114 = !DILocation(line: 52, column: 35, scope: !5113)
!5115 = !{!1095, !688, i64 32}
!5116 = !DILocation(line: 52, column: 28, scope: !5113)
!5117 = !DILocation(line: 53, column: 7, scope: !5104)
!5118 = !DILocation(line: 53, column: 14, scope: !5113)
!5119 = !{!1095, !688, i64 72}
!5120 = !DILocation(line: 53, column: 28, scope: !5113)
!5121 = !DILocation(line: 51, column: 7, scope: !5122)
!5122 = !DILexicalBlockFile(scope: !5054, file: !5055, discriminator: 1)
!5123 = !DILocation(line: 116, column: 26, scope: !5103)
!5124 = !DILocation(line: 116, column: 19, scope: !5125)
!5125 = !DILexicalBlockFile(scope: !5103, file: !5055, discriminator: 1)
!5126 = !DILocation(line: 116, column: 13, scope: !5103)
!5127 = !DILocation(line: 117, column: 15, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5103, file: !5055, line: 117, column: 11)
!5129 = !DILocation(line: 117, column: 11, scope: !5103)
!5130 = !DILocation(line: 127, column: 11, scope: !5103)
!5131 = !DILocation(line: 127, column: 18, scope: !5103)
!5132 = !DILocation(line: 128, column: 11, scope: !5103)
!5133 = !DILocation(line: 128, column: 19, scope: !5103)
!5134 = !{!1095, !1096, i64 144}
!5135 = !DILocation(line: 159, column: 7, scope: !5103)
!5136 = !DILocation(line: 161, column: 10, scope: !5054)
!5137 = !DILocation(line: 161, column: 3, scope: !5054)
!5138 = !DILocation(line: 162, column: 1, scope: !5054)
!5139 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5140, file: !5140, line: 334, type: !5141, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !661, variables: !5155)
!5140 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!48, !5143, !56, !48, !5144}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2337, line: 107, baseType: !5146)
!5146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2337, line: 95, baseType: !5147)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2337, line: 83, size: 64, elements: !5148)
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5147, file: !2337, line: 85, baseType: !59, size: 32)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5147, file: !2337, line: 94, baseType: !5151, size: 32, offset: 32)
!5151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5147, file: !2337, line: 86, size: 32, elements: !5152)
!5152 = !{!5153, !5154}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5151, file: !2337, line: 89, baseType: !44, size: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5151, file: !2337, line: 93, baseType: !2347, size: 32)
!5155 = !{!5156, !5157, !5158, !5159, !5160, !5161, !5162}
!5156 = !DILocalVariable(name: "pwc", arg: 1, scope: !5139, file: !5140, line: 334, type: !5143)
!5157 = !DILocalVariable(name: "s", arg: 2, scope: !5139, file: !5140, line: 334, type: !56)
!5158 = !DILocalVariable(name: "n", arg: 3, scope: !5139, file: !5140, line: 334, type: !48)
!5159 = !DILocalVariable(name: "ps", arg: 4, scope: !5139, file: !5140, line: 334, type: !5144)
!5160 = !DILocalVariable(name: "ret", scope: !5139, file: !5140, line: 336, type: !48)
!5161 = !DILocalVariable(name: "wc", scope: !5139, file: !5140, line: 337, type: !2352)
!5162 = !DILocalVariable(name: "uc", scope: !5163, file: !5140, line: 398, type: !55)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !5140, line: 397, column: 5)
!5164 = distinct !DILexicalBlock(scope: !5139, file: !5140, line: 396, column: 7)
!5165 = !DILocation(line: 334, column: 23, scope: !5139)
!5166 = !DILocation(line: 334, column: 40, scope: !5139)
!5167 = !DILocation(line: 334, column: 50, scope: !5139)
!5168 = !DILocation(line: 334, column: 64, scope: !5139)
!5169 = !DILocation(line: 337, column: 3, scope: !5139)
!5170 = !DILocation(line: 353, column: 9, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5139, file: !5140, line: 353, column: 7)
!5172 = !DILocation(line: 353, column: 7, scope: !5139)
!5173 = !DILocation(line: 388, column: 9, scope: !5139)
!5174 = !DILocation(line: 336, column: 10, scope: !5139)
!5175 = !DILocation(line: 396, column: 19, scope: !5164)
!5176 = !DILocation(line: 396, column: 31, scope: !5177)
!5177 = !DILexicalBlockFile(scope: !5164, file: !5140, discriminator: 1)
!5178 = !DILocation(line: 396, column: 26, scope: !5164)
!5179 = !DILocation(line: 396, column: 41, scope: !5180)
!5180 = !DILexicalBlockFile(scope: !5164, file: !5140, discriminator: 2)
!5181 = !DILocation(line: 396, column: 7, scope: !5182)
!5182 = !DILexicalBlockFile(scope: !5139, file: !5140, discriminator: 2)
!5183 = !DILocation(line: 398, column: 26, scope: !5163)
!5184 = !DILocation(line: 398, column: 21, scope: !5163)
!5185 = !DILocation(line: 399, column: 14, scope: !5163)
!5186 = !DILocation(line: 399, column: 12, scope: !5163)
!5187 = !DILocation(line: 405, column: 1, scope: !5139)
!5188 = distinct !DISubprogram(name: "close_stream", scope: !5189, file: !5189, line: 56, type: !5190, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !5232)
!5189 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!59, !5192}
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !772, line: 49, baseType: !5194)
!5194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !774, line: 241, size: 1728, elements: !5195)
!5195 = !{!5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5194, file: !774, line: 242, baseType: !59, size: 32)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5194, file: !774, line: 247, baseType: !45, size: 64, offset: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5194, file: !774, line: 248, baseType: !45, size: 64, offset: 128)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5194, file: !774, line: 249, baseType: !45, size: 64, offset: 192)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5194, file: !774, line: 250, baseType: !45, size: 64, offset: 256)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5194, file: !774, line: 251, baseType: !45, size: 64, offset: 320)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5194, file: !774, line: 252, baseType: !45, size: 64, offset: 384)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5194, file: !774, line: 253, baseType: !45, size: 64, offset: 448)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5194, file: !774, line: 254, baseType: !45, size: 64, offset: 512)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5194, file: !774, line: 256, baseType: !45, size: 64, offset: 576)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5194, file: !774, line: 257, baseType: !45, size: 64, offset: 640)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5194, file: !774, line: 258, baseType: !45, size: 64, offset: 704)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5194, file: !774, line: 260, baseType: !5209, size: 64, offset: 768)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !774, line: 156, size: 192, elements: !5211)
!5211 = !{!5212, !5213, !5215}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5210, file: !774, line: 157, baseType: !5209, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5210, file: !774, line: 158, baseType: !5214, size: 64, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5210, file: !774, line: 162, baseType: !59, size: 32, offset: 128)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5194, file: !774, line: 262, baseType: !5214, size: 64, offset: 832)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5194, file: !774, line: 264, baseType: !59, size: 32, offset: 896)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5194, file: !774, line: 268, baseType: !59, size: 32, offset: 928)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5194, file: !774, line: 270, baseType: !800, size: 64, offset: 960)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5194, file: !774, line: 274, baseType: !60, size: 16, offset: 1024)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5194, file: !774, line: 275, baseType: !804, size: 8, offset: 1040)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5194, file: !774, line: 276, baseType: !806, size: 8, offset: 1048)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5194, file: !774, line: 280, baseType: !810, size: 64, offset: 1088)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5194, file: !774, line: 289, baseType: !813, size: 64, offset: 1152)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5194, file: !774, line: 297, baseType: !47, size: 64, offset: 1216)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5194, file: !774, line: 298, baseType: !47, size: 64, offset: 1280)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5194, file: !774, line: 299, baseType: !47, size: 64, offset: 1344)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5194, file: !774, line: 300, baseType: !47, size: 64, offset: 1408)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5194, file: !774, line: 302, baseType: !48, size: 64, offset: 1472)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5194, file: !774, line: 303, baseType: !59, size: 32, offset: 1536)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5194, file: !774, line: 305, baseType: !821, size: 160, offset: 1568)
!5232 = !{!5233, !5234, !5236, !5237}
!5233 = !DILocalVariable(name: "stream", arg: 1, scope: !5188, file: !5189, line: 56, type: !5192)
!5234 = !DILocalVariable(name: "some_pending", scope: !5188, file: !5189, line: 58, type: !5235)
!5235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!5236 = !DILocalVariable(name: "prev_fail", scope: !5188, file: !5189, line: 59, type: !5235)
!5237 = !DILocalVariable(name: "fclose_fail", scope: !5188, file: !5189, line: 60, type: !5235)
!5238 = !DILocation(line: 56, column: 21, scope: !5188)
!5239 = !DILocation(line: 58, column: 30, scope: !5188)
!5240 = !DILocalVariable(name: "__stream", arg: 1, scope: !5241, file: !1088, line: 132, type: !5192)
!5241 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1088, file: !1088, line: 132, type: !5190, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !5242)
!5242 = !{!5240}
!5243 = !DILocation(line: 132, column: 1, scope: !5241, inlinedAt: !5244)
!5244 = distinct !DILocation(line: 59, column: 27, scope: !5188)
!5245 = !DILocation(line: 134, column: 10, scope: !5241, inlinedAt: !5244)
!5246 = !DILocation(line: 59, column: 43, scope: !5188)
!5247 = !DILocation(line: 60, column: 29, scope: !5188)
!5248 = !DILocation(line: 60, column: 45, scope: !5188)
!5249 = !DILocation(line: 70, column: 17, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5188, file: !5189, line: 70, column: 7)
!5251 = !DILocation(line: 70, column: 33, scope: !5252)
!5252 = !DILexicalBlockFile(scope: !5250, file: !5189, discriminator: 1)
!5253 = !DILocation(line: 70, column: 53, scope: !5254)
!5254 = !DILexicalBlockFile(scope: !5250, file: !5189, discriminator: 3)
!5255 = !DILocation(line: 70, column: 7, scope: !5256)
!5256 = !DILexicalBlockFile(scope: !5188, file: !5189, discriminator: 3)
!5257 = !DILocation(line: 72, column: 11, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5250, file: !5189, line: 71, column: 5)
!5259 = !DILocation(line: 73, column: 9, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5258, file: !5189, line: 72, column: 11)
!5261 = !DILocation(line: 73, column: 15, scope: !5260)
!5262 = !DILocation(line: 78, column: 1, scope: !5188)
!5263 = distinct !DISubprogram(name: "hard_locale", scope: !5264, file: !5264, line: 38, type: !1172, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !666, variables: !5265)
!5264 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5265 = !{!5266, !5267, !5268, !5269, !5276, !5277, !5279, !5280, !5282, !5283, !5285}
!5266 = !DILocalVariable(name: "category", arg: 1, scope: !5263, file: !5264, line: 38, type: !59)
!5267 = !DILocalVariable(name: "hard", scope: !5263, file: !5264, line: 40, type: !66)
!5268 = !DILocalVariable(name: "p", scope: !5263, file: !5264, line: 41, type: !56)
!5269 = !DILocalVariable(name: "__s1_len", scope: !5270, file: !5264, line: 47, type: !48)
!5270 = distinct !DILexicalBlock(scope: !5271, file: !5264, line: 47, column: 15)
!5271 = distinct !DILexicalBlock(scope: !5272, file: !5264, line: 47, column: 15)
!5272 = distinct !DILexicalBlock(scope: !5273, file: !5264, line: 46, column: 9)
!5273 = distinct !DILexicalBlock(scope: !5274, file: !5264, line: 45, column: 11)
!5274 = distinct !DILexicalBlock(scope: !5275, file: !5264, line: 44, column: 5)
!5275 = distinct !DILexicalBlock(scope: !5263, file: !5264, line: 43, column: 7)
!5276 = !DILocalVariable(name: "__s2_len", scope: !5270, file: !5264, line: 47, type: !48)
!5277 = !DILocalVariable(name: "__s2", scope: !5278, file: !5264, line: 47, type: !53)
!5278 = distinct !DILexicalBlock(scope: !5270, file: !5264, line: 47, column: 15)
!5279 = !DILocalVariable(name: "__result", scope: !5278, file: !5264, line: 47, type: !59)
!5280 = !DILocalVariable(name: "__s1_len", scope: !5281, file: !5264, line: 47, type: !48)
!5281 = distinct !DILexicalBlock(scope: !5271, file: !5264, line: 47, column: 39)
!5282 = !DILocalVariable(name: "__s2_len", scope: !5281, file: !5264, line: 47, type: !48)
!5283 = !DILocalVariable(name: "__s2", scope: !5284, file: !5264, line: 47, type: !53)
!5284 = distinct !DILexicalBlock(scope: !5281, file: !5264, line: 47, column: 39)
!5285 = !DILocalVariable(name: "__result", scope: !5284, file: !5264, line: 47, type: !59)
!5286 = !DILocation(line: 38, column: 18, scope: !5263)
!5287 = !DILocation(line: 40, column: 8, scope: !5263)
!5288 = !DILocation(line: 41, column: 19, scope: !5263)
!5289 = !DILocation(line: 41, column: 15, scope: !5263)
!5290 = !DILocation(line: 43, column: 7, scope: !5275)
!5291 = !DILocation(line: 43, column: 7, scope: !5263)
!5292 = !DILocation(line: 47, column: 15, scope: !5270)
!5293 = !DILocation(line: 47, column: 15, scope: !5278)
!5294 = !DILocation(line: 47, column: 15, scope: !5295)
!5295 = !DILexicalBlockFile(scope: !5278, file: !5264, discriminator: 2)
!5296 = !DILocation(line: 47, column: 15, scope: !5297)
!5297 = !DILexicalBlockFile(scope: !5298, file: !5264, discriminator: 3)
!5298 = distinct !DILexicalBlock(scope: !5278, file: !5264, line: 47, column: 15)
!5299 = !DILocation(line: 47, column: 15, scope: !5300)
!5300 = !DILexicalBlockFile(scope: !5298, file: !5264, discriminator: 2)
!5301 = !DILocation(line: 47, column: 15, scope: !5302)
!5302 = !DILexicalBlockFile(scope: !5303, file: !5264, discriminator: 4)
!5303 = distinct !DILexicalBlock(scope: !5298, file: !5264, line: 47, column: 15)
!5304 = !DILocation(line: 47, column: 15, scope: !5305)
!5305 = !DILexicalBlockFile(scope: !5270, file: !5264, discriminator: 11)
!5306 = !DILocation(line: 47, column: 36, scope: !5307)
!5307 = !DILexicalBlockFile(scope: !5271, file: !5264, discriminator: 13)
!5308 = !DILocation(line: 47, column: 39, scope: !5281)
!5309 = !DILocation(line: 47, column: 39, scope: !5310)
!5310 = !DILexicalBlockFile(scope: !5281, file: !5264, discriminator: 26)
!5311 = !DILocation(line: 47, column: 59, scope: !5312)
!5312 = !DILexicalBlockFile(scope: !5271, file: !5264, discriminator: 27)
!5313 = !DILocation(line: 47, column: 15, scope: !5314)
!5314 = !DILexicalBlockFile(scope: !5272, file: !5264, discriminator: 27)
!5315 = !DILocation(line: 48, column: 13, scope: !5271)
!5316 = !DILocation(line: 71, column: 3, scope: !5263)
!5317 = distinct !DISubprogram(name: "locale_charset", scope: !606, file: !606, line: 393, type: !5318, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !5320)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!56}
!5320 = !{!5321, !5322, !5323, !5328}
!5321 = !DILocalVariable(name: "codeset", scope: !5317, file: !606, line: 395, type: !56)
!5322 = !DILocalVariable(name: "aliases", scope: !5317, file: !606, line: 396, type: !56)
!5323 = !DILocalVariable(name: "__s1_len", scope: !5324, file: !606, line: 592, type: !48)
!5324 = distinct !DILexicalBlock(scope: !5325, file: !606, line: 592, column: 9)
!5325 = distinct !DILexicalBlock(scope: !5326, file: !606, line: 592, column: 9)
!5326 = distinct !DILexicalBlock(scope: !5327, file: !606, line: 589, column: 3)
!5327 = distinct !DILexicalBlock(scope: !5317, file: !606, line: 589, column: 3)
!5328 = !DILocalVariable(name: "__s2_len", scope: !5324, file: !606, line: 592, type: !48)
!5329 = !DILocalVariable(name: "buf1", scope: !5330, file: !606, line: 196, type: !5397)
!5330 = distinct !DILexicalBlock(scope: !5331, file: !606, line: 194, column: 21)
!5331 = distinct !DILexicalBlock(scope: !5332, file: !606, line: 193, column: 19)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !606, line: 193, column: 19)
!5333 = distinct !DILexicalBlock(scope: !5334, file: !606, line: 188, column: 17)
!5334 = distinct !DILexicalBlock(scope: !5335, file: !606, line: 181, column: 19)
!5335 = distinct !DILexicalBlock(scope: !5336, file: !606, line: 177, column: 13)
!5336 = distinct !DILexicalBlock(scope: !5337, file: !606, line: 173, column: 15)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !606, line: 161, column: 9)
!5338 = distinct !DILexicalBlock(scope: !5339, file: !606, line: 157, column: 11)
!5339 = distinct !DILexicalBlock(scope: !5340, file: !606, line: 130, column: 5)
!5340 = distinct !DILexicalBlock(scope: !5341, file: !606, line: 129, column: 7)
!5341 = distinct !DISubprogram(name: "get_charset_aliases", scope: !606, file: !606, line: 124, type: !5318, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !5342)
!5342 = !{!5343, !5344, !5345, !5346, !5347, !5349, !5350, !5351, !5352, !5393, !5394, !5395, !5329, !5396, !5400, !5401, !5402}
!5343 = !DILocalVariable(name: "cp", scope: !5341, file: !606, line: 126, type: !56)
!5344 = !DILocalVariable(name: "dir", scope: !5339, file: !606, line: 132, type: !56)
!5345 = !DILocalVariable(name: "base", scope: !5339, file: !606, line: 133, type: !56)
!5346 = !DILocalVariable(name: "file_name", scope: !5339, file: !606, line: 134, type: !45)
!5347 = !DILocalVariable(name: "dir_len", scope: !5348, file: !606, line: 144, type: !48)
!5348 = distinct !DILexicalBlock(scope: !5339, file: !606, line: 143, column: 7)
!5349 = !DILocalVariable(name: "base_len", scope: !5348, file: !606, line: 145, type: !48)
!5350 = !DILocalVariable(name: "add_slash", scope: !5348, file: !606, line: 146, type: !59)
!5351 = !DILocalVariable(name: "fd", scope: !5337, file: !606, line: 162, type: !59)
!5352 = !DILocalVariable(name: "fp", scope: !5335, file: !606, line: 178, type: !5353)
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5354, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !772, line: 49, baseType: !5355)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !774, line: 241, size: 1728, elements: !5356)
!5356 = !{!5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5355, file: !774, line: 242, baseType: !59, size: 32)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5355, file: !774, line: 247, baseType: !45, size: 64, offset: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5355, file: !774, line: 248, baseType: !45, size: 64, offset: 128)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5355, file: !774, line: 249, baseType: !45, size: 64, offset: 192)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5355, file: !774, line: 250, baseType: !45, size: 64, offset: 256)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5355, file: !774, line: 251, baseType: !45, size: 64, offset: 320)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5355, file: !774, line: 252, baseType: !45, size: 64, offset: 384)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5355, file: !774, line: 253, baseType: !45, size: 64, offset: 448)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5355, file: !774, line: 254, baseType: !45, size: 64, offset: 512)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5355, file: !774, line: 256, baseType: !45, size: 64, offset: 576)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5355, file: !774, line: 257, baseType: !45, size: 64, offset: 640)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5355, file: !774, line: 258, baseType: !45, size: 64, offset: 704)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5355, file: !774, line: 260, baseType: !5370, size: 64, offset: 768)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !774, line: 156, size: 192, elements: !5372)
!5372 = !{!5373, !5374, !5376}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5371, file: !774, line: 157, baseType: !5370, size: 64)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5371, file: !774, line: 158, baseType: !5375, size: 64, offset: 64)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5371, file: !774, line: 162, baseType: !59, size: 32, offset: 128)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5355, file: !774, line: 262, baseType: !5375, size: 64, offset: 832)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5355, file: !774, line: 264, baseType: !59, size: 32, offset: 896)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5355, file: !774, line: 268, baseType: !59, size: 32, offset: 928)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5355, file: !774, line: 270, baseType: !800, size: 64, offset: 960)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5355, file: !774, line: 274, baseType: !60, size: 16, offset: 1024)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5355, file: !774, line: 275, baseType: !804, size: 8, offset: 1040)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5355, file: !774, line: 276, baseType: !806, size: 8, offset: 1048)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5355, file: !774, line: 280, baseType: !810, size: 64, offset: 1088)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5355, file: !774, line: 289, baseType: !813, size: 64, offset: 1152)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5355, file: !774, line: 297, baseType: !47, size: 64, offset: 1216)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5355, file: !774, line: 298, baseType: !47, size: 64, offset: 1280)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5355, file: !774, line: 299, baseType: !47, size: 64, offset: 1344)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5355, file: !774, line: 300, baseType: !47, size: 64, offset: 1408)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5355, file: !774, line: 302, baseType: !48, size: 64, offset: 1472)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5355, file: !774, line: 303, baseType: !59, size: 32, offset: 1536)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5355, file: !774, line: 305, baseType: !821, size: 160, offset: 1568)
!5393 = !DILocalVariable(name: "res_ptr", scope: !5333, file: !606, line: 190, type: !45)
!5394 = !DILocalVariable(name: "res_size", scope: !5333, file: !606, line: 191, type: !48)
!5395 = !DILocalVariable(name: "c", scope: !5330, file: !606, line: 195, type: !59)
!5396 = !DILocalVariable(name: "buf2", scope: !5330, file: !606, line: 197, type: !5397)
!5397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 408, elements: !5398)
!5398 = !{!5399}
!5399 = !DISubrange(count: 51)
!5400 = !DILocalVariable(name: "l1", scope: !5330, file: !606, line: 198, type: !48)
!5401 = !DILocalVariable(name: "l2", scope: !5330, file: !606, line: 198, type: !48)
!5402 = !DILocalVariable(name: "old_res_ptr", scope: !5330, file: !606, line: 199, type: !45)
!5403 = !DILocation(line: 196, column: 28, scope: !5330, inlinedAt: !5404)
!5404 = distinct !DILocation(line: 589, column: 18, scope: !5327)
!5405 = !DILocation(line: 197, column: 28, scope: !5330, inlinedAt: !5404)
!5406 = !DILocation(line: 403, column: 13, scope: !5317)
!5407 = !DILocation(line: 395, column: 15, scope: !5317)
!5408 = !DILocation(line: 584, column: 15, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5317, file: !606, line: 584, column: 7)
!5410 = !DILocation(line: 584, column: 7, scope: !5317)
!5411 = !DILocation(line: 128, column: 8, scope: !5341, inlinedAt: !5404)
!5412 = !DILocation(line: 126, column: 15, scope: !5341, inlinedAt: !5404)
!5413 = !DILocation(line: 129, column: 10, scope: !5340, inlinedAt: !5404)
!5414 = !DILocation(line: 129, column: 7, scope: !5341, inlinedAt: !5404)
!5415 = !DILocation(line: 138, column: 13, scope: !5339, inlinedAt: !5404)
!5416 = !DILocation(line: 132, column: 19, scope: !5339, inlinedAt: !5404)
!5417 = !DILocation(line: 139, column: 15, scope: !5418, inlinedAt: !5404)
!5418 = distinct !DILexicalBlock(scope: !5339, file: !606, line: 139, column: 11)
!5419 = !DILocation(line: 139, column: 23, scope: !5418, inlinedAt: !5404)
!5420 = !DILocation(line: 139, column: 26, scope: !5421, inlinedAt: !5404)
!5421 = !DILexicalBlockFile(scope: !5418, file: !606, discriminator: 1)
!5422 = !DILocation(line: 139, column: 33, scope: !5421, inlinedAt: !5404)
!5423 = !DILocation(line: 139, column: 11, scope: !5424, inlinedAt: !5404)
!5424 = !DILexicalBlockFile(scope: !5339, file: !606, discriminator: 1)
!5425 = !DILocation(line: 140, column: 9, scope: !5418, inlinedAt: !5404)
!5426 = !DILocation(line: 144, column: 26, scope: !5348, inlinedAt: !5404)
!5427 = !DILocation(line: 144, column: 16, scope: !5348, inlinedAt: !5404)
!5428 = !DILocation(line: 145, column: 16, scope: !5348, inlinedAt: !5404)
!5429 = !DILocation(line: 146, column: 34, scope: !5348, inlinedAt: !5404)
!5430 = !DILocation(line: 146, column: 38, scope: !5348, inlinedAt: !5404)
!5431 = !DILocation(line: 146, column: 42, scope: !5432, inlinedAt: !5404)
!5432 = !DILexicalBlockFile(scope: !5348, file: !606, discriminator: 1)
!5433 = !DILocation(line: 146, column: 41, scope: !5432, inlinedAt: !5404)
!5434 = !DILocation(line: 147, column: 48, scope: !5348, inlinedAt: !5404)
!5435 = !DILocation(line: 147, column: 46, scope: !5348, inlinedAt: !5404)
!5436 = !DILocation(line: 147, column: 69, scope: !5348, inlinedAt: !5404)
!5437 = !DILocation(line: 147, column: 30, scope: !5348, inlinedAt: !5404)
!5438 = !DILocation(line: 134, column: 13, scope: !5339, inlinedAt: !5404)
!5439 = !DILocation(line: 148, column: 13, scope: !5348, inlinedAt: !5404)
!5440 = !DILocation(line: 150, column: 13, scope: !5441, inlinedAt: !5404)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !606, line: 149, column: 11)
!5442 = distinct !DILexicalBlock(scope: !5348, file: !606, line: 148, column: 13)
!5443 = !DILocation(line: 151, column: 17, scope: !5441, inlinedAt: !5404)
!5444 = !DILocation(line: 152, column: 34, scope: !5445, inlinedAt: !5404)
!5445 = distinct !DILexicalBlock(scope: !5441, file: !606, line: 151, column: 17)
!5446 = !DILocation(line: 153, column: 41, scope: !5441, inlinedAt: !5404)
!5447 = !DILocation(line: 153, column: 13, scope: !5441, inlinedAt: !5404)
!5448 = !DILocation(line: 157, column: 11, scope: !5339, inlinedAt: !5404)
!5449 = !DILocation(line: 171, column: 16, scope: !5337, inlinedAt: !5404)
!5450 = !DILocation(line: 162, column: 15, scope: !5337, inlinedAt: !5404)
!5451 = !DILocation(line: 173, column: 18, scope: !5336, inlinedAt: !5404)
!5452 = !DILocation(line: 173, column: 15, scope: !5337, inlinedAt: !5404)
!5453 = !DILocation(line: 180, column: 20, scope: !5335, inlinedAt: !5404)
!5454 = !DILocation(line: 178, column: 21, scope: !5335, inlinedAt: !5404)
!5455 = !DILocation(line: 181, column: 22, scope: !5334, inlinedAt: !5404)
!5456 = !DILocation(line: 181, column: 19, scope: !5335, inlinedAt: !5404)
!5457 = !DILocation(line: 190, column: 25, scope: !5333, inlinedAt: !5404)
!5458 = !DILocation(line: 184, column: 19, scope: !5459, inlinedAt: !5404)
!5459 = distinct !DILexicalBlock(scope: !5334, file: !606, line: 182, column: 17)
!5460 = !DILocation(line: 186, column: 17, scope: !5459, inlinedAt: !5404)
!5461 = !DILocation(line: 191, column: 26, scope: !5333, inlinedAt: !5404)
!5462 = !DILocation(line: 196, column: 23, scope: !5330, inlinedAt: !5404)
!5463 = !DILocation(line: 197, column: 23, scope: !5330, inlinedAt: !5404)
!5464 = !DILocalVariable(name: "__fp", arg: 1, scope: !5465, file: !1088, line: 63, type: !5353)
!5465 = distinct !DISubprogram(name: "getc_unlocked", scope: !1088, file: !1088, line: 63, type: !5466, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !5468)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!59, !5353}
!5468 = !{!5464}
!5469 = !DILocation(line: 63, column: 22, scope: !5465, inlinedAt: !5470)
!5470 = distinct !DILocation(line: 201, column: 27, scope: !5330, inlinedAt: !5404)
!5471 = !DILocation(line: 65, column: 10, scope: !5465, inlinedAt: !5470)
!5472 = !DILocation(line: 65, column: 10, scope: !5473, inlinedAt: !5470)
!5473 = !DILexicalBlockFile(scope: !5465, file: !1088, discriminator: 1)
!5474 = !DILocation(line: 65, column: 10, scope: !5475, inlinedAt: !5470)
!5475 = !DILexicalBlockFile(scope: !5465, file: !1088, discriminator: 2)
!5476 = !DILocation(line: 65, column: 10, scope: !5477, inlinedAt: !5470)
!5477 = !DILexicalBlockFile(scope: !5465, file: !1088, discriminator: 3)
!5478 = !DILocation(line: 195, column: 27, scope: !5330, inlinedAt: !5404)
!5479 = !DILocation(line: 202, column: 27, scope: !5330, inlinedAt: !5404)
!5480 = !DILocation(line: 63, column: 22, scope: !5465, inlinedAt: !5481)
!5481 = distinct !DILocation(line: 210, column: 33, scope: !5482, inlinedAt: !5404)
!5482 = distinct !DILexicalBlock(scope: !5483, file: !606, line: 207, column: 25)
!5483 = distinct !DILexicalBlock(scope: !5330, file: !606, line: 206, column: 27)
!5484 = !DILocation(line: 65, column: 10, scope: !5465, inlinedAt: !5481)
!5485 = !DILocation(line: 65, column: 10, scope: !5473, inlinedAt: !5481)
!5486 = !DILocation(line: 65, column: 10, scope: !5475, inlinedAt: !5481)
!5487 = !DILocation(line: 65, column: 10, scope: !5477, inlinedAt: !5481)
!5488 = !DILocation(line: 210, column: 29, scope: !5489, inlinedAt: !5404)
!5489 = !DILexicalBlockFile(scope: !5482, file: !606, discriminator: 1)
!5490 = distinct !{!5490, !5491, !5492}
!5491 = !DILocation(line: 193, column: 19, scope: !5332)
!5492 = !DILocation(line: 241, column: 21, scope: !5332)
!5493 = !DILocation(line: 216, column: 23, scope: !5330, inlinedAt: !5404)
!5494 = !DILocation(line: 217, column: 27, scope: !5495, inlinedAt: !5404)
!5495 = distinct !DILexicalBlock(scope: !5330, file: !606, line: 217, column: 27)
!5496 = !DILocation(line: 217, column: 64, scope: !5495, inlinedAt: !5404)
!5497 = !DILocation(line: 217, column: 27, scope: !5330, inlinedAt: !5404)
!5498 = !DILocation(line: 219, column: 28, scope: !5330, inlinedAt: !5404)
!5499 = !DILocation(line: 198, column: 30, scope: !5330, inlinedAt: !5404)
!5500 = !DILocation(line: 220, column: 28, scope: !5330, inlinedAt: !5404)
!5501 = !DILocation(line: 198, column: 34, scope: !5330, inlinedAt: !5404)
!5502 = !DILocation(line: 199, column: 29, scope: !5330, inlinedAt: !5404)
!5503 = !DILocation(line: 222, column: 36, scope: !5504, inlinedAt: !5404)
!5504 = distinct !DILexicalBlock(scope: !5330, file: !606, line: 222, column: 27)
!5505 = !DILocation(line: 222, column: 27, scope: !5330, inlinedAt: !5404)
!5506 = !DILocation(line: 225, column: 63, scope: !5507, inlinedAt: !5404)
!5507 = distinct !DILexicalBlock(scope: !5504, file: !606, line: 223, column: 25)
!5508 = !DILocation(line: 225, column: 46, scope: !5507, inlinedAt: !5404)
!5509 = !DILocation(line: 226, column: 25, scope: !5507, inlinedAt: !5404)
!5510 = !DILocation(line: 229, column: 36, scope: !5511, inlinedAt: !5404)
!5511 = distinct !DILexicalBlock(scope: !5504, file: !606, line: 228, column: 25)
!5512 = !DILocation(line: 230, column: 73, scope: !5511, inlinedAt: !5404)
!5513 = !DILocation(line: 230, column: 46, scope: !5511, inlinedAt: !5404)
!5514 = !DILocation(line: 232, column: 35, scope: !5515, inlinedAt: !5404)
!5515 = distinct !DILexicalBlock(scope: !5330, file: !606, line: 232, column: 27)
!5516 = !DILocation(line: 232, column: 27, scope: !5330, inlinedAt: !5404)
!5517 = !DILocation(line: 236, column: 27, scope: !5518, inlinedAt: !5404)
!5518 = distinct !DILexicalBlock(scope: !5515, file: !606, line: 233, column: 25)
!5519 = !DILocation(line: 237, column: 27, scope: !5518, inlinedAt: !5404)
!5520 = !DILocation(line: 239, column: 39, scope: !5330, inlinedAt: !5404)
!5521 = !DILocation(line: 239, column: 50, scope: !5330, inlinedAt: !5404)
!5522 = !DILocation(line: 239, column: 61, scope: !5330, inlinedAt: !5404)
!5523 = !DILocalVariable(name: "__dest", arg: 1, scope: !5524, file: !5525, line: 107, type: !5528)
!5524 = distinct !DISubprogram(name: "strcpy", scope: !5525, file: !5525, line: 107, type: !5526, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !5529)
!5525 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5526 = !DISubroutineType(types: !5527)
!5527 = !{!45, !5528, !4699}
!5528 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!5529 = !{!5523, !5530}
!5530 = !DILocalVariable(name: "__src", arg: 2, scope: !5524, file: !5525, line: 107, type: !4699)
!5531 = !DILocation(line: 107, column: 1, scope: !5524, inlinedAt: !5532)
!5532 = distinct !DILocation(line: 239, column: 23, scope: !5330, inlinedAt: !5404)
!5533 = !DILocation(line: 109, column: 49, scope: !5524, inlinedAt: !5532)
!5534 = !DILocation(line: 109, column: 10, scope: !5524, inlinedAt: !5532)
!5535 = !DILocation(line: 107, column: 1, scope: !5524, inlinedAt: !5536)
!5536 = distinct !DILocation(line: 240, column: 23, scope: !5330, inlinedAt: !5404)
!5537 = !DILocation(line: 109, column: 49, scope: !5524, inlinedAt: !5536)
!5538 = !DILocation(line: 109, column: 10, scope: !5524, inlinedAt: !5536)
!5539 = !DILocation(line: 241, column: 21, scope: !5331, inlinedAt: !5404)
!5540 = !DILocation(line: 242, column: 19, scope: !5333, inlinedAt: !5404)
!5541 = !DILocation(line: 243, column: 32, scope: !5542, inlinedAt: !5404)
!5542 = distinct !DILexicalBlock(scope: !5333, file: !606, line: 243, column: 23)
!5543 = !DILocation(line: 243, column: 23, scope: !5333, inlinedAt: !5404)
!5544 = !DILocation(line: 247, column: 33, scope: !5545, inlinedAt: !5404)
!5545 = distinct !DILexicalBlock(scope: !5542, file: !606, line: 246, column: 21)
!5546 = !DILocation(line: 247, column: 45, scope: !5545, inlinedAt: !5404)
!5547 = !DILocation(line: 253, column: 11, scope: !5337, inlinedAt: !5404)
!5548 = !DILocation(line: 377, column: 23, scope: !5339, inlinedAt: !5404)
!5549 = !DILocation(line: 378, column: 5, scope: !5339, inlinedAt: !5404)
!5550 = !DILocation(line: 396, column: 15, scope: !5317)
!5551 = !DILocation(line: 590, column: 8, scope: !5326)
!5552 = !DILocation(line: 590, column: 17, scope: !5326)
!5553 = !DILocation(line: 589, column: 3, scope: !5554)
!5554 = !DILexicalBlockFile(scope: !5327, file: !606, discriminator: 1)
!5555 = !DILocation(line: 592, column: 9, scope: !5324)
!5556 = !DILocation(line: 592, column: 35, scope: !5325)
!5557 = !DILocation(line: 593, column: 9, scope: !5325)
!5558 = !DILocation(line: 593, column: 24, scope: !5559)
!5559 = !DILexicalBlockFile(scope: !5325, file: !606, discriminator: 1)
!5560 = !DILocation(line: 593, column: 31, scope: !5559)
!5561 = !DILocation(line: 593, column: 34, scope: !5562)
!5562 = !DILexicalBlockFile(scope: !5325, file: !606, discriminator: 2)
!5563 = !DILocation(line: 593, column: 45, scope: !5562)
!5564 = !DILocation(line: 592, column: 9, scope: !5565)
!5565 = !DILexicalBlockFile(scope: !5326, file: !606, discriminator: 1)
!5566 = !DILocation(line: 595, column: 29, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5325, file: !606, line: 594, column: 7)
!5568 = !DILocation(line: 595, column: 27, scope: !5567)
!5569 = !DILocation(line: 595, column: 46, scope: !5567)
!5570 = !DILocation(line: 596, column: 9, scope: !5567)
!5571 = !DILocation(line: 591, column: 19, scope: !5326)
!5572 = !DILocation(line: 591, column: 36, scope: !5326)
!5573 = !DILocation(line: 591, column: 16, scope: !5326)
!5574 = !DILocation(line: 591, column: 52, scope: !5565)
!5575 = !DILocation(line: 591, column: 69, scope: !5326)
!5576 = !DILocation(line: 591, column: 49, scope: !5326)
!5577 = distinct !{!5577, !5578, !5579}
!5578 = !DILocation(line: 589, column: 3, scope: !5327)
!5579 = !DILocation(line: 597, column: 7, scope: !5327)
!5580 = !DILocation(line: 602, column: 7, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5317, file: !606, line: 602, column: 7)
!5582 = !DILocation(line: 602, column: 18, scope: !5581)
!5583 = !DILocation(line: 602, column: 7, scope: !5317)
!5584 = !DILocation(line: 612, column: 3, scope: !5317)
