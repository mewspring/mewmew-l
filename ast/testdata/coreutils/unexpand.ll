; ModuleID = 'coreutils-8.27/src/unexpand.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert blanks in each FILE to tabs, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [295 x i8] c"  -a, --all        convert all blanks, instead of just initial blanks\0A      --first-only  convert only leading sequences of blanks (overrides -a)\0A  -t, --tabs=N     have tabs N characters apart instead of 8 (enables -a)\0A  -t, --tabs=LIST  use comma separated LIST of tab positions (enables -a)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"unexpand\00", align 1
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
@.str.10 = private unnamed_addr constant [15 x i8] c",0123456789at:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"tab stop value is too large\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"first-only\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@convert_entire_line = local_unnamed_addr global i8 0, align 1, !dbg !85
@exit_status = local_unnamed_addr global i32 0, align 4, !dbg !129
@max_column_width = common local_unnamed_addr global i64 0, align 8, !dbg !210
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !212
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !214
@n_tabs_allocated = internal global i64 0, align 8, !dbg !216
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !218
@.str.8.11 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@.str.1.12 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.13 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3.14 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.4.15 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.9.18 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.10.19 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !220
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.24, i32 0, i32 0), i8* null], align 16, !dbg !225
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !230
@.str.6.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !131
@.str.5.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.7.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !233
@.str.38 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !239
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !244
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !247
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !254
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !261
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !273
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !280
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !292
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !299
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !306
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !294
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !308
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
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.95 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !314
@.str.1.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.124 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !323
@.str.3.128 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.129 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.130 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.131 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.132 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !717 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !721, metadata !722), !dbg !723
  %2 = icmp eq i32 %0, 0, !dbg !724
  br i1 %2, label %8, label %3, !dbg !726

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !727, !tbaa !730
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !727
  %6 = load i8*, i8** @program_name, align 8, !dbg !727, !tbaa !730
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !734
  br label %45, !dbg !736

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !738
  %10 = load i8*, i8** @program_name, align 8, !dbg !738, !tbaa !730
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !740
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !742
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !742, !tbaa !730
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !743
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !744
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !744, !tbaa !730
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !749
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !751
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !730
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !754
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !756
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !756, !tbaa !730
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !757
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !758
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !758, !tbaa !730
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !759
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !760
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !760, !tbaa !730
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !761
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !51, metadata !722) #10, !dbg !762
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !51, metadata !722) #10, !dbg !762
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !764
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !765
  %32 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !767
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !62, metadata !722) #10, !dbg !768
  %33 = icmp eq i8* %32, null, !dbg !769
  br i1 %33, label %40, label %34, !dbg !770

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #13, !dbg !771
  %36 = icmp eq i32 %35, 0, !dbg !771
  br i1 %36, label %40, label %37, !dbg !773

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !775
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !777
  br label %40, !dbg !779

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !780
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !781
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !782
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !783
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #14, !dbg !784
  unreachable, !dbg !784
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !785 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !789, metadata !722), !dbg !795
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !790, metadata !722), !dbg !796
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !791, metadata !722), !dbg !797
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !794, metadata !722), !dbg !798
  %5 = load i8*, i8** %1, align 8, !dbg !799, !tbaa !730
  tail call void @set_program_name(i8* %5) #10, !dbg !800
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !801
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !802
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !803
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !804
  br label %10, !dbg !805

; <label>:10:                                     ; preds = %41, %2
  %11 = phi i64 [ %46, %41 ], [ undef, %2 ]
  %12 = phi i8 [ %42, %41 ], [ 0, %2 ]
  %13 = phi i8 [ %19, %41 ], [ 0, %2 ]
  br label %14, !dbg !806

; <label>:14:                                     ; preds = %30, %10
  %15 = phi i8 [ %12, %10 ], [ 0, %30 ]
  %16 = phi i8 [ %13, %10 ], [ %19, %30 ]
  br label %18, !dbg !806

; <label>:17:                                     ; preds = %20
  br label %18, !dbg !806

; <label>:18:                                     ; preds = %17, %14
  %19 = phi i8 [ %16, %14 ], [ 1, %17 ]
  br label %20, !dbg !806

; <label>:20:                                     ; preds = %26, %18
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !792, metadata !722), !dbg !806
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !794, metadata !722), !dbg !798
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !791, metadata !722), !dbg !797
  %21 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !807
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !793, metadata !722), !dbg !809
  switch i32 %21, label %36 [
    i32 -1, label %50
    i32 63, label %22
    i32 97, label %23
    i32 116, label %24
    i32 128, label %17
    i32 44, label %27
    i32 -130, label %32
    i32 -131, label %33
  ], !dbg !810, !llvm.loop !811

; <label>:22:                                     ; preds = %20
  tail call void @usage(i32 1) #15, !dbg !813
  unreachable, !dbg !813

; <label>:23:                                     ; preds = %20
  store i8 1, i8* @convert_entire_line, align 1, !dbg !816, !tbaa !817
  br label %26, !dbg !819

; <label>:24:                                     ; preds = %20
  store i8 1, i8* @convert_entire_line, align 1, !dbg !820, !tbaa !817
  %25 = load i8*, i8** @optarg, align 8, !dbg !821, !tbaa !730
  tail call void @parse_tab_stops(i8* %25) #10, !dbg !822
  br label %26, !dbg !823

; <label>:26:                                     ; preds = %24, %23
  br label %20, !dbg !806, !llvm.loop !811

; <label>:27:                                     ; preds = %20
  %28 = and i8 %15, 1, !dbg !824
  %29 = icmp eq i8 %28, 0, !dbg !824
  br i1 %29, label %30, label %31, !dbg !826

; <label>:30:                                     ; preds = %27, %31
  br label %14, !dbg !806, !llvm.loop !811

; <label>:31:                                     ; preds = %27
  tail call void @add_tab_stop(i64 %11) #10, !dbg !827
  br label %30, !dbg !827

; <label>:32:                                     ; preds = %20
  tail call void @usage(i32 0) #15, !dbg !828
  unreachable, !dbg !828

; <label>:33:                                     ; preds = %20
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829, !tbaa !730
  %35 = load i8*, i8** @Version, align 8, !dbg !829, !tbaa !730
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #10, !dbg !829
  tail call void @exit(i32 0) #14, !dbg !830
  unreachable, !dbg !829

; <label>:36:                                     ; preds = %20
  %37 = and i8 %15, 1, !dbg !832
  %38 = icmp eq i8 %37, 0, !dbg !832
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !792, metadata !722), !dbg !806
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !791, metadata !722), !dbg !797
  %39 = select i1 %38, i64 0, i64 %11, !dbg !834
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !792, metadata !722), !dbg !806
  tail call void @llvm.dbg.value(metadata i8 %42, i64 0, metadata !791, metadata !722), !dbg !797
  %40 = icmp ugt i64 %39, 1844674407370955161, !dbg !835
  br i1 %40, label %48, label %41, !dbg !835

; <label>:41:                                     ; preds = %36
  %42 = select i1 %38, i8 1, i8 %15, !dbg !834
  %43 = mul i64 %39, 10, !dbg !837
  %44 = add nsw i32 %21, -48, !dbg !837
  %45 = sext i32 %44 to i64, !dbg !837
  %46 = add i64 %43, %45, !dbg !837
  %47 = icmp ult i64 %46, %39, !dbg !837
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !792, metadata !722), !dbg !806
  br i1 %47, label %48, label %10, !dbg !839, !llvm.loop !811

; <label>:48:                                     ; preds = %41, %36
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !841
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %49) #10, !dbg !842
  unreachable, !dbg !841

; <label>:50:                                     ; preds = %20
  %51 = icmp eq i8 %19, 0, !dbg !843
  br i1 %51, label %53, label %52, !dbg !845

; <label>:52:                                     ; preds = %50
  store i8 0, i8* @convert_entire_line, align 1, !dbg !846, !tbaa !817
  br label %53, !dbg !847

; <label>:53:                                     ; preds = %50, %52
  %54 = and i8 %15, 1, !dbg !848
  %55 = icmp eq i8 %54, 0, !dbg !848
  br i1 %55, label %57, label %56, !dbg !850

; <label>:56:                                     ; preds = %53
  tail call void @add_tab_stop(i64 %11) #10, !dbg !851
  br label %57, !dbg !851

; <label>:57:                                     ; preds = %53, %56
  tail call void @finalize_tab_stops() #10, !dbg !852
  %58 = load i32, i32* @optind, align 4, !dbg !853, !tbaa !854
  %59 = icmp slt i32 %58, %0, !dbg !856
  %60 = sext i32 %58 to i64, !dbg !857
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !857
  %62 = select i1 %59, i8** %61, i8** null, !dbg !858
  tail call void @set_file_list(i8** %62) #10, !dbg !859
  %63 = tail call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #10, !dbg !861
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, i64 0, metadata !864, metadata !722) #10, !dbg !923
  %64 = icmp eq %struct._IO_FILE* %63, null, !dbg !924
  br i1 %64, label %222, label %65, !dbg !926

; <label>:65:                                     ; preds = %57
  %66 = load i64, i64* @max_column_width, align 8, !dbg !927, !tbaa !928
  %67 = tail call noalias i8* @xmalloc(i64 %66) #10, !dbg !930
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !905, metadata !722) #10, !dbg !931
  %68 = bitcast i64* %3 to i8*
  br label %69, !dbg !932

; <label>:69:                                     ; preds = %221, %65
  %70 = phi %struct._IO_FILE* [ %63, %65 ], [ %99, %221 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %70, i64 0, metadata !864, metadata !722) #10, !dbg !923
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !908, metadata !722) #10, !dbg !933
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !910, metadata !722) #10, !dbg !935
  call void @llvm.lifetime.start(i64 8, i8* nonnull %68) #10, !dbg !936
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !911, metadata !722) #10, !dbg !937
  store i64 0, i64* %3, align 8, !dbg !937, !tbaa !928
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !912, metadata !722) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !722) #10, !dbg !939
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !914, metadata !722) #10, !dbg !940
  br label %71, !dbg !941, !llvm.loop !942

; <label>:71:                                     ; preds = %213, %69
  %72 = phi i8 [ 1, %69 ], [ %215, %213 ]
  %73 = phi i64 [ 0, %69 ], [ %216, %213 ]
  %74 = phi i8 [ 0, %69 ], [ %217, %213 ]
  %75 = phi i8 [ 1, %69 ], [ %218, %213 ]
  %76 = phi i64 [ 0, %69 ], [ %219, %213 ]
  %77 = phi %struct._IO_FILE* [ %70, %69 ], [ %99, %213 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %77, i64 0, metadata !864, metadata !722) #10, !dbg !923
  call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !914, metadata !722) #10, !dbg !940
  call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !913, metadata !722) #10, !dbg !939
  call void @llvm.dbg.value(metadata i8 %74, i64 0, metadata !912, metadata !722) #10, !dbg !938
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i8 %72, i64 0, metadata !908, metadata !722) #10, !dbg !933
  br label %78, !dbg !945

; <label>:78:                                     ; preds = %92, %71
  %79 = phi %struct._IO_FILE* [ %77, %71 ], [ %93, %92 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %79, i64 0, metadata !864, metadata !722) #10, !dbg !923
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %79, i64 0, metadata !946, metadata !722) #10, !dbg !952
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 1, !dbg !955
  %81 = load i8*, i8** %80, align 8, !dbg !955, !tbaa !956
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 2, !dbg !955
  %83 = load i8*, i8** %82, align 8, !dbg !955, !tbaa !959
  %84 = icmp ult i8* %81, %83, !dbg !955
  br i1 %84, label %85, label %89, !dbg !955, !prof !960

; <label>:85:                                     ; preds = %78
  %86 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !961
  store i8* %86, i8** %80, align 8, !dbg !961, !tbaa !956
  %87 = load i8, i8* %81, align 1, !dbg !961, !tbaa !963
  %88 = zext i8 %87 to i32, !dbg !961
  call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !906, metadata !722) #10, !dbg !964
  br label %97, !dbg !965

; <label>:89:                                     ; preds = %78
  %90 = call i32 @__uflow(%struct._IO_FILE* nonnull %79) #10, !dbg !966
  call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !906, metadata !722) #10, !dbg !964
  %91 = icmp slt i32 %90, 0, !dbg !968
  br i1 %91, label %92, label %95, !dbg !965

; <label>:92:                                     ; preds = %89
  %93 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* %79) #10, !dbg !969
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %93, i64 0, metadata !864, metadata !722) #10, !dbg !923
  %94 = icmp eq %struct._IO_FILE* %93, null, !dbg !971
  br i1 %94, label %95, label %78, !dbg !972, !llvm.loop !974

; <label>:95:                                     ; preds = %89, %92
  %96 = phi %struct._IO_FILE* [ null, %92 ], [ %79, %89 ]
  br label %97, !dbg !923

; <label>:97:                                     ; preds = %95, %85
  %98 = phi i32 [ %88, %85 ], [ %90, %95 ]
  %99 = phi %struct._IO_FILE* [ %79, %85 ], [ %96, %95 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %99, i64 0, metadata !864, metadata !722) #10, !dbg !923
  %100 = and i8 %72, 1, !dbg !977
  %101 = icmp eq i8 %100, 0, !dbg !977
  br i1 %101, label %186, label %102, !dbg !978

; <label>:102:                                    ; preds = %97
  %103 = tail call i16** @__ctype_b_loc() #1, !dbg !979
  %104 = load i16*, i16** %103, align 8, !dbg !979, !tbaa !730
  %105 = sext i32 %98 to i64, !dbg !979
  %106 = getelementptr inbounds i16, i16* %104, i64 %105, !dbg !979
  %107 = load i16, i16* %106, align 2, !dbg !979, !tbaa !980
  %108 = and i16 %107, 1, !dbg !979
  %109 = icmp ne i16 %108, 0, !dbg !981
  %110 = trunc i16 %108 to i8, !dbg !982
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !915, metadata !722) #10, !dbg !982
  br i1 %109, label %111, label %142, !dbg !983

; <label>:111:                                    ; preds = %102
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !919, metadata !984) #10, !dbg !985
  call void @llvm.lifetime.start(i64 1, i8* nonnull %4) #10, !dbg !986
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !911, metadata !984) #10, !dbg !937
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !919, metadata !984) #10, !dbg !985
  %112 = call i64 @get_next_tab_column(i64 %73, i64* nonnull %3, i8* nonnull %4) #10, !dbg !987
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !910, metadata !722) #10, !dbg !935
  %113 = load i8, i8* %4, align 1, !dbg !988, !tbaa !817, !range !990
  call void @llvm.dbg.value(metadata i8 %113, i64 0, metadata !919, metadata !722) #10, !dbg !985
  %114 = icmp eq i8 %113, 0, !dbg !988
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !908, metadata !722) #10, !dbg !933
  %115 = select i1 %114, i8 %72, i8 0, !dbg !991
  call void @llvm.dbg.value(metadata i8 %115, i64 0, metadata !908, metadata !722) #10, !dbg !933
  %116 = and i8 %115, 1, !dbg !992
  %117 = icmp eq i8 %116, 0, !dbg !992
  br i1 %117, label %138, label %118, !dbg !994

; <label>:118:                                    ; preds = %111
  %119 = icmp ult i64 %112, %73, !dbg !995
  br i1 %119, label %120, label %122, !dbg !998

; <label>:120:                                    ; preds = %118
  %121 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !999
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %121) #10, !dbg !1000
  unreachable, !dbg !999

; <label>:122:                                    ; preds = %118
  %123 = icmp eq i32 %98, 9, !dbg !1002
  br i1 %123, label %124, label %126, !dbg !1004

; <label>:124:                                    ; preds = %122
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !909, metadata !722) #10, !dbg !934
  %125 = icmp eq i64 %76, 0, !dbg !1005
  br i1 %125, label %134, label %132, !dbg !1008

; <label>:126:                                    ; preds = %122
  %127 = add i64 %73, 1, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !909, metadata !722) #10, !dbg !934
  %128 = and i8 %75, 1, !dbg !1011
  %129 = icmp ne i8 %128, 0, !dbg !1011
  %130 = icmp eq i64 %127, %112, !dbg !1013
  %131 = and i1 %129, %130, !dbg !1015
  br i1 %131, label %132, label %181, !dbg !1015

; <label>:132:                                    ; preds = %126, %124
  %133 = phi i64 [ %112, %124 ], [ %127, %126 ]
  call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !906, metadata !722) #10, !dbg !964
  store i8 9, i8* %67, align 1, !tbaa !963
  br label %134, !dbg !1016

; <label>:134:                                    ; preds = %132, %124
  %135 = phi i64 [ %133, %132 ], [ %112, %124 ]
  call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !906, metadata !722) #10, !dbg !964
  %136 = and i8 %74, 1, !dbg !1016
  %137 = zext i8 %136 to i64, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !914, metadata !722) #10, !dbg !940
  br label %138, !dbg !1017

; <label>:138:                                    ; preds = %134, %111
  %139 = phi i32 [ %98, %111 ], [ 9, %134 ]
  %140 = phi i64 [ %73, %111 ], [ %135, %134 ]
  %141 = phi i64 [ %76, %111 ], [ %137, %134 ]
  call void @llvm.dbg.value(metadata i64 %184, i64 0, metadata !914, metadata !722) #10, !dbg !940
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !722) #10, !dbg !939
  call void @llvm.dbg.value(metadata i8 %182, i64 0, metadata !912, metadata !722) #10, !dbg !938
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !906, metadata !722) #10, !dbg !964
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !919, metadata !984) #10, !dbg !985
  call void @llvm.lifetime.end(i64 1, i8* nonnull %4) #10, !dbg !1018
  br label %157

; <label>:142:                                    ; preds = %102
  %143 = icmp eq i32 %98, 8, !dbg !1019
  br i1 %143, label %144, label %152, !dbg !1021

; <label>:144:                                    ; preds = %142
  %145 = icmp ne i64 %73, 0, !dbg !1022
  %146 = zext i1 %145 to i64, !dbg !1024
  %147 = sub i64 %73, %146, !dbg !1025
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !910, metadata !722) #10, !dbg !935
  %148 = load i64, i64* %3, align 8, !dbg !1026, !tbaa !928
  call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !911, metadata !722) #10, !dbg !937
  %149 = icmp ne i64 %148, 0, !dbg !1027
  %150 = zext i1 %149 to i64, !dbg !1028
  %151 = sub i64 %148, %150, !dbg !1029
  call void @llvm.dbg.value(metadata i64 %151, i64 0, metadata !911, metadata !722) #10, !dbg !937
  store i64 %151, i64* %3, align 8, !dbg !1029, !tbaa !928
  br label %157, !dbg !1030

; <label>:152:                                    ; preds = %142
  %153 = add i64 %73, 1, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %153, i64 0, metadata !909, metadata !722) #10, !dbg !934
  %154 = icmp eq i64 %153, 0, !dbg !1033
  br i1 %154, label %155, label %157, !dbg !1035

; <label>:155:                                    ; preds = %152
  %156 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !1036
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %156) #10, !dbg !1037
  unreachable, !dbg !1036

; <label>:157:                                    ; preds = %152, %144, %138
  %158 = phi i32 [ 8, %144 ], [ %98, %152 ], [ %139, %138 ]
  %159 = phi i8 [ %72, %144 ], [ %72, %152 ], [ %115, %138 ]
  %160 = phi i64 [ %147, %144 ], [ %153, %152 ], [ %140, %138 ]
  %161 = phi i64 [ %76, %144 ], [ %76, %152 ], [ %141, %138 ]
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !914, metadata !722) #10, !dbg !940
  call void @llvm.dbg.value(metadata i8 %74, i64 0, metadata !912, metadata !722) #10, !dbg !938
  call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !908, metadata !722) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 %158, i64 0, metadata !906, metadata !722) #10, !dbg !964
  switch i64 %161, label %162 [
    i64 0, label %174
    i64 1, label %166
  ], !dbg !1039

; <label>:162:                                    ; preds = %157
  %163 = and i8 %74, 1, !dbg !1040
  %164 = icmp eq i8 %163, 0, !dbg !1040
  br i1 %164, label %166, label %165, !dbg !1045

; <label>:165:                                    ; preds = %162
  store i8 9, i8* %67, align 1, !dbg !1047, !tbaa !963
  br label %166, !dbg !1048

; <label>:166:                                    ; preds = %165, %162, %157
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1049, !tbaa !730
  %168 = call i64 @fwrite_unlocked(i8* %67, i64 1, i64 %161, %struct._IO_FILE* %167) #10, !dbg !1049
  %169 = icmp eq i64 %168, %161, !dbg !1051
  br i1 %169, label %174, label %170, !dbg !1052

; <label>:170:                                    ; preds = %166
  %171 = tail call i32* @__errno_location() #1, !dbg !1053
  %172 = load i32, i32* %171, align 4, !dbg !1053, !tbaa !854
  %173 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !1054
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %172, i8* %173) #10, !dbg !1056
  unreachable, !dbg !1053

; <label>:174:                                    ; preds = %166, %157
  %175 = phi i8 [ %74, %157 ], [ 0, %166 ]
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !914, metadata !722) #10, !dbg !940
  call void @llvm.dbg.value(metadata i8 %175, i64 0, metadata !912, metadata !722) #10, !dbg !938
  call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !913, metadata !722) #10, !dbg !939
  %176 = load i8, i8* @convert_entire_line, align 1, !dbg !1058, !tbaa !817, !range !990
  %177 = icmp ne i8 %176, 0, !dbg !1058
  %178 = or i1 %109, %177, !dbg !1059
  %179 = zext i1 %178 to i8, !dbg !1060
  %180 = and i8 %179, %159, !dbg !1062
  call void @llvm.dbg.value(metadata i8 %180, i64 0, metadata !908, metadata !722) #10, !dbg !933
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !722) #10, !dbg !939
  call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !906, metadata !722) #10, !dbg !964
  br label %186

; <label>:181:                                    ; preds = %126
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !912, metadata !722) #10, !dbg !938
  %182 = select i1 %130, i8 1, i8 %74, !dbg !1063
  call void @llvm.dbg.value(metadata i8 %182, i64 0, metadata !912, metadata !722) #10, !dbg !938
  %183 = trunc i32 %98 to i8, !dbg !1065
  %184 = add i64 %76, 1, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %184, i64 0, metadata !914, metadata !722) #10, !dbg !940
  %185 = getelementptr inbounds i8, i8* %67, i64 %76, !dbg !1067
  store i8 %183, i8* %185, align 1, !dbg !1068, !tbaa !963
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !722) #10, !dbg !939
  call void @llvm.dbg.value(metadata i64 %184, i64 0, metadata !914, metadata !722) #10, !dbg !940
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !722) #10, !dbg !939
  call void @llvm.dbg.value(metadata i8 %182, i64 0, metadata !912, metadata !722) #10, !dbg !938
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !906, metadata !722) #10, !dbg !964
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !919, metadata !984) #10, !dbg !985
  call void @llvm.lifetime.end(i64 1, i8* nonnull %4) #10, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %184, i64 0, metadata !914, metadata !722) #10, !dbg !940
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !913, metadata !722) #10, !dbg !939
  call void @llvm.dbg.value(metadata i8 %182, i64 0, metadata !912, metadata !722) #10, !dbg !938
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i8 %115, i64 0, metadata !908, metadata !722) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !906, metadata !722) #10, !dbg !964
  br label %213

; <label>:186:                                    ; preds = %174, %97
  %187 = phi i32 [ %98, %97 ], [ %158, %174 ]
  %188 = phi i8 [ %72, %97 ], [ %180, %174 ]
  %189 = phi i64 [ %73, %97 ], [ %160, %174 ]
  %190 = phi i8 [ %74, %97 ], [ %175, %174 ]
  %191 = phi i8 [ %75, %97 ], [ %110, %174 ]
  %192 = phi i64 [ %76, %97 ], [ 0, %174 ]
  call void @llvm.dbg.value(metadata i64 %192, i64 0, metadata !914, metadata !722) #10, !dbg !940
  call void @llvm.dbg.value(metadata i8 %191, i64 0, metadata !913, metadata !722) #10, !dbg !939
  call void @llvm.dbg.value(metadata i8 %190, i64 0, metadata !912, metadata !722) #10, !dbg !938
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i8 %188, i64 0, metadata !908, metadata !722) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !906, metadata !722) #10, !dbg !964
  %193 = icmp slt i32 %187, 0, !dbg !1069
  br i1 %193, label %194, label %195, !dbg !1071

; <label>:194:                                    ; preds = %186
  call void @free(i8* %67) #10, !dbg !1072
  call void @llvm.lifetime.end(i64 8, i8* nonnull %68) #10, !dbg !1074
  br label %222

; <label>:195:                                    ; preds = %186
  call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !1075, metadata !722) #10, !dbg !1080
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1083, !tbaa !730
  %197 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %196, i64 0, i32 5, !dbg !1083
  %198 = load i8*, i8** %197, align 8, !dbg !1083, !tbaa !1084
  %199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %196, i64 0, i32 6, !dbg !1083
  %200 = load i8*, i8** %199, align 8, !dbg !1083, !tbaa !1085
  %201 = icmp ult i8* %198, %200, !dbg !1083
  br i1 %201, label %202, label %205, !dbg !1083, !prof !960

; <label>:202:                                    ; preds = %195
  %203 = trunc i32 %187 to i8, !dbg !1086
  %204 = getelementptr inbounds i8, i8* %198, i64 1, !dbg !1086
  store i8* %204, i8** %197, align 8, !dbg !1086, !tbaa !1084
  store i8 %203, i8* %198, align 1, !dbg !1086, !tbaa !963
  br label %213, !dbg !1088

; <label>:205:                                    ; preds = %195
  %206 = and i32 %187, 255, !dbg !1089
  %207 = call i32 @__overflow(%struct._IO_FILE* %196, i32 %206) #10, !dbg !1089
  %208 = icmp slt i32 %207, 0, !dbg !1091
  br i1 %208, label %209, label %213, !dbg !1088

; <label>:209:                                    ; preds = %205
  %210 = tail call i32* @__errno_location() #1, !dbg !1092
  %211 = load i32, i32* %210, align 4, !dbg !1092, !tbaa !854
  %212 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !1093
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %211, i8* %212) #10, !dbg !1095
  unreachable, !dbg !1092

; <label>:213:                                    ; preds = %205, %202, %181
  %214 = phi i32 [ %187, %205 ], [ %98, %181 ], [ %187, %202 ]
  %215 = phi i8 [ %188, %205 ], [ %115, %181 ], [ %188, %202 ]
  %216 = phi i64 [ %189, %205 ], [ %127, %181 ], [ %189, %202 ]
  %217 = phi i8 [ %190, %205 ], [ %182, %181 ], [ %190, %202 ]
  %218 = phi i8 [ %191, %205 ], [ 1, %181 ], [ %191, %202 ]
  %219 = phi i64 [ %192, %205 ], [ %184, %181 ], [ %192, %202 ]
  call void @llvm.dbg.value(metadata i64 %219, i64 0, metadata !914, metadata !722) #10, !dbg !940
  call void @llvm.dbg.value(metadata i8 %218, i64 0, metadata !913, metadata !722) #10, !dbg !939
  call void @llvm.dbg.value(metadata i8 %217, i64 0, metadata !912, metadata !722) #10, !dbg !938
  call void @llvm.dbg.value(metadata i64 %216, i64 0, metadata !909, metadata !722) #10, !dbg !934
  call void @llvm.dbg.value(metadata i8 %215, i64 0, metadata !908, metadata !722) #10, !dbg !933
  call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !906, metadata !722) #10, !dbg !964
  %220 = icmp eq i32 %214, 10, !dbg !1097
  br i1 %220, label %221, label %71, !dbg !1098, !llvm.loop !942

; <label>:221:                                    ; preds = %213
  call void @llvm.lifetime.end(i64 8, i8* nonnull %68) #10, !dbg !1074
  br label %69

; <label>:222:                                    ; preds = %57, %194
  call void @cleanup_file_list_stdin() #10, !dbg !1099
  %223 = load i32, i32* @exit_status, align 4, !dbg !1100, !tbaa !854
  ret i32 %223, !dbg !1101
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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @add_tab_stop(i64) local_unnamed_addr #6 !dbg !1102 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1106, metadata !722), !dbg !1109
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1110, !tbaa !928
  %3 = icmp eq i64 %2, 0, !dbg !1110
  br i1 %3, label %9, label %4, !dbg !1110

; <label>:4:                                      ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1111, !tbaa !730
  %6 = add i64 %2, -1, !dbg !1113
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1111
  %8 = load i64, i64* %7, align 8, !dbg !1111, !tbaa !928
  br label %9, !dbg !1114

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1115
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1107, metadata !722), !dbg !1117
  %11 = icmp ugt i64 %10, %0, !dbg !1118
  %12 = sub i64 %0, %10, !dbg !1119
  %13 = select i1 %11, i64 0, i64 %12, !dbg !1120
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1108, metadata !722), !dbg !1121
  %14 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1122, !tbaa !928
  %15 = icmp eq i64 %2, %14, !dbg !1124
  br i1 %15, label %18, label %16, !dbg !1125

; <label>:16:                                     ; preds = %9
  %17 = load i64*, i64** @tab_list, align 8, !tbaa !730
  br label %36, !dbg !1125

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1126, !tbaa !730
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !120, metadata !722) #10, !dbg !1127
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !121, metadata !722) #10, !dbg !1129
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !122, metadata !722) #10, !dbg !1130
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !123, metadata !722) #10, !dbg !1131
  %20 = icmp eq i8* %19, null, !dbg !1132
  br i1 %20, label %21, label %23, !dbg !1134

; <label>:21:                                     ; preds = %18
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !722) #10, !dbg !1131
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !722) #10, !dbg !1131
  %22 = select i1 %3, i64 16, i64 %2, !dbg !1135
  br label %30, !dbg !1135

; <label>:23:                                     ; preds = %18
  %24 = icmp ult i64 %2, 768614336404564650, !dbg !1137
  br i1 %24, label %26, label %25, !dbg !1140

; <label>:25:                                     ; preds = %23
  tail call void @xalloc_die() #14, !dbg !1141
  unreachable, !dbg !1141

; <label>:26:                                     ; preds = %23
  %27 = lshr i64 %2, 1, !dbg !1142
  %28 = add i64 %2, 1, !dbg !1143
  %29 = add i64 %28, %27, !dbg !1144
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !123, metadata !722) #10, !dbg !1131
  br label %30

; <label>:30:                                     ; preds = %21, %26
  %31 = phi i64 [ %29, %26 ], [ %22, %21 ]
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !123, metadata !722) #10, !dbg !1131
  store i64 %31, i64* @n_tabs_allocated, align 8, !dbg !1145, !tbaa !928
  %32 = shl i64 %31, 3, !dbg !1146
  %33 = tail call i8* @xrealloc(i8* %19, i64 %32) #10, !dbg !1147
  store i8* %33, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1148, !tbaa !730
  %34 = bitcast i8* %33 to i64*, !dbg !1149
  %35 = load i64, i64* @first_free_tab, align 8, !tbaa !928
  br label %36, !dbg !1149

; <label>:36:                                     ; preds = %16, %30
  %37 = phi i64 [ %2, %16 ], [ %35, %30 ], !dbg !1150
  %38 = phi i64* [ %17, %16 ], [ %34, %30 ], !dbg !1151
  %39 = add i64 %37, 1, !dbg !1150
  store i64 %39, i64* @first_free_tab, align 8, !dbg !1150, !tbaa !928
  %40 = getelementptr inbounds i64, i64* %38, i64 %37, !dbg !1151
  store i64 %0, i64* %40, align 8, !dbg !1152, !tbaa !928
  %41 = load i64, i64* @max_column_width, align 8, !dbg !1153, !tbaa !928
  %42 = icmp ult i64 %41, %13, !dbg !1155
  br i1 %42, label %43, label %44, !dbg !1156

; <label>:43:                                     ; preds = %36
  store i64 %13, i64* @max_column_width, align 8, !dbg !1157, !tbaa !928
  br label %44, !dbg !1159

; <label>:44:                                     ; preds = %43, %36
  ret void, !dbg !1160
}

; Function Attrs: nounwind sspstrong uwtable
define void @parse_tab_stops(i8*) local_unnamed_addr #6 !dbg !1161 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1163, metadata !722), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1164, metadata !722), !dbg !1181
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1165, metadata !722), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1166, metadata !722), !dbg !1183
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1167, metadata !722), !dbg !1184
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1168, metadata !722), !dbg !1185
  br label %2, !dbg !1186

; <label>:2:                                      ; preds = %108, %1
  %3 = phi i64 [ 0, %1 ], [ %109, %108 ]
  %4 = phi i8 [ 0, %1 ], [ %110, %108 ]
  %5 = phi i8* [ null, %1 ], [ %111, %108 ]
  %6 = phi i8 [ 1, %1 ], [ %112, %108 ]
  %7 = phi i8 [ 0, %1 ], [ %113, %108 ]
  %8 = phi i8* [ %0, %1 ], [ %115, %108 ]
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1165, metadata !722), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1163, metadata !722), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8 %7, i64 0, metadata !1164, metadata !722), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !1168, metadata !722), !dbg !1185
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1167, metadata !722), !dbg !1184
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !1166, metadata !722), !dbg !1183
  %9 = load i8, i8* %8, align 1, !dbg !1187, !tbaa !963
  switch i8 %9, label %10 [
    i8 0, label %116
    i8 44, label %18
  ], !dbg !1189

; <label>:10:                                     ; preds = %2
  %11 = tail call i16** @__ctype_b_loc() #1, !dbg !1191
  %12 = load i16*, i16** %11, align 8, !dbg !1191, !tbaa !730
  %13 = zext i8 %9 to i64, !dbg !1191
  %14 = getelementptr inbounds i16, i16* %12, i64 %13, !dbg !1191
  %15 = load i16, i16* %14, align 2, !dbg !1191, !tbaa !980
  %16 = and i16 %15, 1, !dbg !1191
  %17 = icmp eq i16 %16, 0, !dbg !1191
  br i1 %17, label %73, label %18, !dbg !1193

; <label>:18:                                     ; preds = %2, %10
  %19 = and i8 %7, 1, !dbg !1195
  %20 = icmp eq i8 %19, 0, !dbg !1195
  br i1 %20, label %108, label %21, !dbg !1198

; <label>:21:                                     ; preds = %18
  %22 = and i8 %4, 1, !dbg !1199
  %23 = icmp eq i8 %22, 0, !dbg !1199
  br i1 %23, label %30, label %24, !dbg !1202

; <label>:24:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1203, metadata !722) #10, !dbg !1209
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1208, metadata !722) #10, !dbg !1213
  %25 = load i64, i64* @extend_size, align 8, !dbg !1214, !tbaa !928
  %26 = icmp eq i64 %25, 0, !dbg !1214
  br i1 %26, label %27, label %28, !dbg !1216

; <label>:27:                                     ; preds = %24
  store i64 %3, i64* @extend_size, align 8, !dbg !1217, !tbaa !928
  br label %108, !dbg !1218

; <label>:28:                                     ; preds = %24
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.11, i64 0, i64 0), i32 5) #10, !dbg !1219
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #10, !dbg !1221
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1208, metadata !722) #10, !dbg !1213
  store i64 %3, i64* @extend_size, align 8, !dbg !1217, !tbaa !928
  br label %177, !dbg !1218

; <label>:30:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1106, metadata !722) #10, !dbg !1222
  %31 = load i64, i64* @first_free_tab, align 8, !dbg !1224, !tbaa !928
  %32 = icmp eq i64 %31, 0, !dbg !1224
  br i1 %32, label %38, label %33, !dbg !1224

; <label>:33:                                     ; preds = %30
  %34 = load i64*, i64** @tab_list, align 8, !dbg !1225, !tbaa !730
  %35 = add i64 %31, -1, !dbg !1226
  %36 = getelementptr inbounds i64, i64* %34, i64 %35, !dbg !1225
  %37 = load i64, i64* %36, align 8, !dbg !1225, !tbaa !928
  br label %38, !dbg !1227

; <label>:38:                                     ; preds = %33, %30
  %39 = phi i64 [ %37, %33 ], [ 0, %30 ], !dbg !1228
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1107, metadata !722) #10, !dbg !1229
  %40 = icmp ult i64 %3, %39, !dbg !1230
  %41 = sub i64 %3, %39, !dbg !1231
  %42 = select i1 %40, i64 0, i64 %41, !dbg !1232
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1108, metadata !722) #10, !dbg !1233
  %43 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1234, !tbaa !928
  %44 = icmp eq i64 %31, %43, !dbg !1235
  br i1 %44, label %47, label %45, !dbg !1236

; <label>:45:                                     ; preds = %38
  %46 = load i64*, i64** @tab_list, align 8, !tbaa !730
  br label %65, !dbg !1236

; <label>:47:                                     ; preds = %38
  %48 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1237, !tbaa !730
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !120, metadata !722) #10, !dbg !1238
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !121, metadata !722) #10, !dbg !1240
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !122, metadata !722) #10, !dbg !1241
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !123, metadata !722) #10, !dbg !1242
  %49 = icmp eq i8* %48, null, !dbg !1243
  br i1 %49, label %50, label %52, !dbg !1244

; <label>:50:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !722) #10, !dbg !1242
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !722) #10, !dbg !1242
  %51 = select i1 %32, i64 16, i64 %31, !dbg !1245
  br label %59, !dbg !1245

; <label>:52:                                     ; preds = %47
  %53 = icmp ult i64 %31, 768614336404564650, !dbg !1246
  br i1 %53, label %55, label %54, !dbg !1247

; <label>:54:                                     ; preds = %52
  tail call void @xalloc_die() #14, !dbg !1248
  unreachable, !dbg !1248

; <label>:55:                                     ; preds = %52
  %56 = lshr i64 %31, 1, !dbg !1249
  %57 = add i64 %31, 1, !dbg !1250
  %58 = add i64 %57, %56, !dbg !1251
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !123, metadata !722) #10, !dbg !1242
  br label %59

; <label>:59:                                     ; preds = %55, %50
  %60 = phi i64 [ %58, %55 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !123, metadata !722) #10, !dbg !1242
  store i64 %60, i64* @n_tabs_allocated, align 8, !dbg !1252, !tbaa !928
  %61 = shl i64 %60, 3, !dbg !1253
  %62 = tail call i8* @xrealloc(i8* %48, i64 %61) #10, !dbg !1254
  store i8* %62, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1255, !tbaa !730
  %63 = bitcast i8* %62 to i64*, !dbg !1256
  %64 = load i64, i64* @first_free_tab, align 8, !tbaa !928
  br label %65, !dbg !1256

; <label>:65:                                     ; preds = %59, %45
  %66 = phi i64 [ %31, %45 ], [ %64, %59 ], !dbg !1257
  %67 = phi i64* [ %46, %45 ], [ %63, %59 ], !dbg !1258
  %68 = add i64 %66, 1, !dbg !1257
  store i64 %68, i64* @first_free_tab, align 8, !dbg !1257, !tbaa !928
  %69 = getelementptr inbounds i64, i64* %67, i64 %66, !dbg !1258
  store i64 %3, i64* %69, align 8, !dbg !1259, !tbaa !928
  %70 = load i64, i64* @max_column_width, align 8, !dbg !1260, !tbaa !928
  %71 = icmp ult i64 %70, %42, !dbg !1261
  br i1 %71, label %72, label %108, !dbg !1262

; <label>:72:                                     ; preds = %65
  store i64 %42, i64* @max_column_width, align 8, !dbg !1263, !tbaa !928
  br label %108, !dbg !1264

; <label>:73:                                     ; preds = %10
  %74 = icmp eq i8 %9, 47, !dbg !1265
  br i1 %74, label %75, label %81, !dbg !1266

; <label>:75:                                     ; preds = %73
  %76 = and i8 %7, 1, !dbg !1267
  %77 = icmp eq i8 %76, 0, !dbg !1267
  br i1 %77, label %108, label %78, !dbg !1270

; <label>:78:                                     ; preds = %75
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.12, i64 0, i64 0), i32 5) #10, !dbg !1271
  %80 = tail call i8* @quote(i8* %8) #10, !dbg !1273
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #10, !dbg !1274
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1168, metadata !722), !dbg !1185
  br label %108, !dbg !1276

; <label>:81:                                     ; preds = %73
  %82 = sext i8 %9 to i32, !dbg !1277
  %83 = add nsw i32 %82, -48, !dbg !1278
  %84 = icmp ult i32 %83, 10, !dbg !1278
  br i1 %84, label %85, label %105, !dbg !1279

; <label>:85:                                     ; preds = %81
  %86 = and i8 %7, 1, !dbg !1280
  %87 = icmp eq i8 %86, 0, !dbg !1280
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1165, metadata !722), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1164, metadata !722), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1167, metadata !722), !dbg !1184
  %88 = select i1 %87, i64 0, i64 %3, !dbg !1282
  %89 = select i1 %87, i8* %8, i8* %5, !dbg !1282
  %90 = select i1 %87, i8 1, i8 %7, !dbg !1282
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !1165, metadata !722), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8 %90, i64 0, metadata !1164, metadata !722), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1167, metadata !722), !dbg !1184
  %91 = icmp ugt i64 %88, 1844674407370955161, !dbg !1283
  br i1 %91, label %98, label %92, !dbg !1283

; <label>:92:                                     ; preds = %85
  %93 = mul i64 %88, 10, !dbg !1284
  %94 = sext i8 %9 to i64, !dbg !1284
  %95 = add nsw i64 %94, -48, !dbg !1284
  %96 = add i64 %95, %93, !dbg !1284
  %97 = icmp ult i64 %96, %88, !dbg !1284
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !1165, metadata !722), !dbg !1182
  br i1 %97, label %98, label %108, !dbg !1286

; <label>:98:                                     ; preds = %92, %85
  %99 = tail call i64 @strspn(i8* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.13, i64 0, i64 0)) #10, !dbg !1288
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1169, metadata !722), !dbg !1289
  %100 = tail call i8* @xstrndup(i8* %89, i64 %99) #10, !dbg !1290
  tail call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1179, metadata !722), !dbg !1291
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.14, i64 0, i64 0), i32 5) #10, !dbg !1292
  %102 = tail call i8* @quote(i8* %100) #10, !dbg !1293
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101, i8* %102) #10, !dbg !1295
  tail call void @free(i8* %100) #10, !dbg !1297
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1168, metadata !722), !dbg !1185
  %103 = getelementptr inbounds i8, i8* %89, i64 %99, !dbg !1298
  %104 = getelementptr inbounds i8, i8* %103, i64 -1, !dbg !1299
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1163, metadata !722), !dbg !1180
  br label %108, !dbg !1300

; <label>:105:                                    ; preds = %81
  %106 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4.15, i64 0, i64 0), i32 5) #10, !dbg !1301
  %107 = tail call i8* @quote(i8* %8) #10, !dbg !1303
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %106, i8* %107) #10, !dbg !1304
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1168, metadata !722), !dbg !1185
  br label %177, !dbg !1306

; <label>:108:                                    ; preds = %92, %72, %65, %27, %78, %75, %18, %98
  %109 = phi i64 [ %96, %92 ], [ %88, %98 ], [ %3, %18 ], [ %3, %75 ], [ %3, %78 ], [ %3, %27 ], [ %3, %65 ], [ %3, %72 ]
  %110 = phi i8 [ %4, %92 ], [ %4, %98 ], [ %4, %18 ], [ 1, %75 ], [ 1, %78 ], [ %4, %27 ], [ %4, %65 ], [ %4, %72 ]
  %111 = phi i8* [ %89, %92 ], [ %89, %98 ], [ %5, %18 ], [ %5, %75 ], [ %5, %78 ], [ %5, %27 ], [ %5, %65 ], [ %5, %72 ]
  %112 = phi i8 [ %6, %92 ], [ 0, %98 ], [ %6, %18 ], [ %6, %75 ], [ 0, %78 ], [ %6, %27 ], [ %6, %65 ], [ %6, %72 ]
  %113 = phi i8 [ %90, %92 ], [ %90, %98 ], [ 0, %18 ], [ %7, %75 ], [ %7, %78 ], [ 0, %27 ], [ 0, %65 ], [ 0, %72 ]
  %114 = phi i8* [ %8, %92 ], [ %104, %98 ], [ %8, %18 ], [ %8, %75 ], [ %8, %78 ], [ %8, %27 ], [ %8, %65 ], [ %8, %72 ]
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1165, metadata !722), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1163, metadata !722), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8 %113, i64 0, metadata !1164, metadata !722), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8 %112, i64 0, metadata !1168, metadata !722), !dbg !1185
  tail call void @llvm.dbg.value(metadata i8* %111, i64 0, metadata !1167, metadata !722), !dbg !1184
  tail call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !1166, metadata !722), !dbg !1183
  %115 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1307
  tail call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !1163, metadata !722), !dbg !1180
  br label %2, !dbg !1309, !llvm.loop !1310

; <label>:116:                                    ; preds = %2
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !1168, metadata !722), !dbg !1185
  %117 = and i8 %6, 1, !dbg !1313
  %118 = and i8 %117, %7, !dbg !1313
  %119 = icmp eq i8 %118, 0, !dbg !1313
  br i1 %119, label %173, label %120, !dbg !1313

; <label>:120:                                    ; preds = %116
  %121 = and i8 %4, 1, !dbg !1315
  %122 = icmp eq i8 %121, 0, !dbg !1315
  br i1 %122, label %130, label %123, !dbg !1318

; <label>:123:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1203, metadata !722) #10, !dbg !1319
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1208, metadata !722) #10, !dbg !1321
  %124 = load i64, i64* @extend_size, align 8, !dbg !1322, !tbaa !928
  %125 = icmp eq i64 %124, 0, !dbg !1322
  br i1 %125, label %128, label %126, !dbg !1323

; <label>:126:                                    ; preds = %123
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.11, i64 0, i64 0), i32 5) #10, !dbg !1324
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %127) #10, !dbg !1325
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1208, metadata !722) #10, !dbg !1321
  br label %128, !dbg !1326

; <label>:128:                                    ; preds = %123, %126
  %129 = phi i8 [ 0, %126 ], [ 1, %123 ]
  store i64 %3, i64* @extend_size, align 8, !dbg !1327, !tbaa !928
  tail call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1168, metadata !722), !dbg !1185
  br label %173, !dbg !1328

; <label>:130:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1106, metadata !722) #10, !dbg !1329
  %131 = load i64, i64* @first_free_tab, align 8, !dbg !1331, !tbaa !928
  %132 = icmp eq i64 %131, 0, !dbg !1331
  br i1 %132, label %138, label %133, !dbg !1331

; <label>:133:                                    ; preds = %130
  %134 = load i64*, i64** @tab_list, align 8, !dbg !1332, !tbaa !730
  %135 = add i64 %131, -1, !dbg !1333
  %136 = getelementptr inbounds i64, i64* %134, i64 %135, !dbg !1332
  %137 = load i64, i64* %136, align 8, !dbg !1332, !tbaa !928
  br label %138, !dbg !1334

; <label>:138:                                    ; preds = %133, %130
  %139 = phi i64 [ %137, %133 ], [ 0, %130 ], !dbg !1335
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !1107, metadata !722) #10, !dbg !1336
  %140 = icmp ult i64 %3, %139, !dbg !1337
  %141 = sub i64 %3, %139, !dbg !1338
  %142 = select i1 %140, i64 0, i64 %141, !dbg !1339
  tail call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1108, metadata !722) #10, !dbg !1340
  %143 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1341, !tbaa !928
  %144 = icmp eq i64 %131, %143, !dbg !1342
  br i1 %144, label %147, label %145, !dbg !1343

; <label>:145:                                    ; preds = %138
  %146 = load i64*, i64** @tab_list, align 8, !tbaa !730
  br label %165, !dbg !1343

; <label>:147:                                    ; preds = %138
  %148 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1344, !tbaa !730
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !120, metadata !722) #10, !dbg !1345
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !121, metadata !722) #10, !dbg !1347
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !122, metadata !722) #10, !dbg !1348
  tail call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !123, metadata !722) #10, !dbg !1349
  %149 = icmp eq i8* %148, null, !dbg !1350
  br i1 %149, label %150, label %152, !dbg !1351

; <label>:150:                                    ; preds = %147
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !722) #10, !dbg !1349
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !722) #10, !dbg !1349
  %151 = select i1 %132, i64 16, i64 %131, !dbg !1352
  br label %159, !dbg !1352

; <label>:152:                                    ; preds = %147
  %153 = icmp ult i64 %131, 768614336404564650, !dbg !1353
  br i1 %153, label %155, label %154, !dbg !1354

; <label>:154:                                    ; preds = %152
  tail call void @xalloc_die() #14, !dbg !1355
  unreachable, !dbg !1355

; <label>:155:                                    ; preds = %152
  %156 = lshr i64 %131, 1, !dbg !1356
  %157 = add i64 %131, 1, !dbg !1357
  %158 = add i64 %157, %156, !dbg !1358
  tail call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !123, metadata !722) #10, !dbg !1349
  br label %159

; <label>:159:                                    ; preds = %155, %150
  %160 = phi i64 [ %158, %155 ], [ %151, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !123, metadata !722) #10, !dbg !1349
  store i64 %160, i64* @n_tabs_allocated, align 8, !dbg !1359, !tbaa !928
  %161 = shl i64 %160, 3, !dbg !1360
  %162 = tail call i8* @xrealloc(i8* %148, i64 %161) #10, !dbg !1361
  store i8* %162, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1362, !tbaa !730
  %163 = bitcast i8* %162 to i64*, !dbg !1363
  %164 = load i64, i64* @first_free_tab, align 8, !tbaa !928
  br label %165, !dbg !1363

; <label>:165:                                    ; preds = %159, %145
  %166 = phi i64 [ %131, %145 ], [ %164, %159 ], !dbg !1364
  %167 = phi i64* [ %146, %145 ], [ %163, %159 ], !dbg !1365
  %168 = add i64 %166, 1, !dbg !1364
  store i64 %168, i64* @first_free_tab, align 8, !dbg !1364, !tbaa !928
  %169 = getelementptr inbounds i64, i64* %167, i64 %166, !dbg !1365
  store i64 %3, i64* %169, align 8, !dbg !1366, !tbaa !928
  %170 = load i64, i64* @max_column_width, align 8, !dbg !1367, !tbaa !928
  %171 = icmp ult i64 %170, %142, !dbg !1368
  br i1 %171, label %172, label %173, !dbg !1369

; <label>:172:                                    ; preds = %165
  store i64 %142, i64* @max_column_width, align 8, !dbg !1370, !tbaa !928
  br label %173, !dbg !1371

; <label>:173:                                    ; preds = %172, %165, %116, %128
  %174 = phi i8 [ %129, %128 ], [ %6, %116 ], [ %6, %165 ], [ %6, %172 ]
  tail call void @llvm.dbg.value(metadata i8 %174, i64 0, metadata !1168, metadata !722), !dbg !1185
  %175 = and i8 %174, 1, !dbg !1372
  %176 = icmp eq i8 %175, 0, !dbg !1372
  br i1 %176, label %177, label %178, !dbg !1374

; <label>:177:                                    ; preds = %105, %28, %173
  tail call void @exit(i32 1) #14, !dbg !1375
  unreachable, !dbg !1375

; <label>:178:                                    ; preds = %173
  ret void, !dbg !1376
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @finalize_tab_stops() local_unnamed_addr #6 !dbg !1377 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1378, !tbaa !730
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1379, !tbaa !928
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1380, metadata !722) #10, !dbg !1390
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1387, metadata !722) #10, !dbg !1392
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1388, metadata !722) #10, !dbg !1393
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1389, metadata !722) #10, !dbg !1394
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1389, metadata !722) #10, !dbg !1394
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1388, metadata !722) #10, !dbg !1393
  %3 = icmp eq i64 %2, 0, !dbg !1395
  br i1 %3, label %20, label %4, !dbg !1399

; <label>:4:                                      ; preds = %0
  br label %7, !dbg !1401

; <label>:5:                                      ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1389, metadata !722) #10, !dbg !1394
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1388, metadata !722) #10, !dbg !1393
  %6 = icmp ult i64 %17, %2, !dbg !1395
  br i1 %6, label %7, label %24, !dbg !1399, !llvm.loop !1404

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %17, %5 ], [ 0, %4 ]
  %9 = phi i64 [ %11, %5 ], [ 0, %4 ]
  %10 = getelementptr inbounds i64, i64* %1, i64 %8, !dbg !1401
  %11 = load i64, i64* %10, align 8, !dbg !1401, !tbaa !928
  %12 = icmp eq i64 %11, 0, !dbg !1407
  br i1 %12, label %13, label %15, !dbg !1408

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9.18, i64 0, i64 0), i32 5) #10, !dbg !1409
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %14) #10, !dbg !1410
  unreachable, !dbg !1409

; <label>:15:                                     ; preds = %7
  %16 = icmp ugt i64 %11, %9, !dbg !1412
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1388, metadata !722) #10, !dbg !1393
  %17 = add nuw i64 %8, 1, !dbg !1414
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1389, metadata !722) #10, !dbg !1394
  br i1 %16, label %5, label %18, !dbg !1416

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10.19, i64 0, i64 0), i32 5) #10, !dbg !1417
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19) #10, !dbg !1418
  unreachable, !dbg !1417

; <label>:20:                                     ; preds = %0
  %21 = load i64, i64* @extend_size, align 8, !dbg !1420, !tbaa !928
  %22 = icmp ne i64 %21, 0, !dbg !1420
  %23 = select i1 %22, i64 %21, i64 8, !dbg !1420
  store i64 %23, i64* @max_column_width, align 8, !dbg !1422, !tbaa !928
  br label %31, !dbg !1424

; <label>:24:                                     ; preds = %5
  %25 = icmp ne i64 %2, 1, !dbg !1425
  %26 = load i64, i64* @extend_size, align 8, !dbg !1427
  %27 = icmp ne i64 %26, 0, !dbg !1427
  %28 = or i1 %25, %27, !dbg !1429
  br i1 %28, label %31, label %29, !dbg !1429

; <label>:29:                                     ; preds = %24
  %30 = load i64, i64* %1, align 8, !dbg !1430, !tbaa !928
  br label %31, !dbg !1431

; <label>:31:                                     ; preds = %29, %24, %20
  %32 = phi i64 [ %23, %20 ], [ %30, %29 ], [ 0, %24 ]
  store i64 %32, i64* @tab_size, align 8, !tbaa !928
  ret void, !dbg !1432
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @get_next_tab_column(i64, i64* nocapture, i8* nocapture) local_unnamed_addr #6 !dbg !1433 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1438, metadata !722), !dbg !1445
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1439, metadata !722), !dbg !1446
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1440, metadata !722), !dbg !1447
  store i8 0, i8* %2, align 1, !dbg !1448, !tbaa !817
  %4 = load i64, i64* @tab_size, align 8, !dbg !1449, !tbaa !928
  %5 = icmp eq i64 %4, 0, !dbg !1449
  br i1 %5, label %6, label %12, !dbg !1451

; <label>:6:                                      ; preds = %3
  %7 = load i64, i64* %1, align 8, !dbg !1452, !tbaa !928
  %8 = load i64, i64* @first_free_tab, align 8, !dbg !1454, !tbaa !928
  %9 = icmp ult i64 %7, %8, !dbg !1455
  br i1 %9, label %10, label %25, !dbg !1456

; <label>:10:                                     ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !tbaa !730
  br label %16, !dbg !1456

; <label>:12:                                     ; preds = %3
  %13 = urem i64 %0, %4, !dbg !1458
  %14 = add i64 %4, %0, !dbg !1459
  %15 = sub i64 %14, %13, !dbg !1460
  br label %34, !dbg !1461

; <label>:16:                                     ; preds = %10, %21
  %17 = phi i64 [ %7, %10 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %11, i64 %17, !dbg !1462
  %19 = load i64, i64* %18, align 8, !dbg !1462, !tbaa !928
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1441, metadata !722), !dbg !1463
  %20 = icmp ugt i64 %19, %0, !dbg !1464
  br i1 %20, label %33, label %21

; <label>:21:                                     ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1466
  store i64 %22, i64* %1, align 8, !dbg !1466, !tbaa !928
  %23 = icmp ult i64 %22, %8, !dbg !1455
  br i1 %23, label %16, label %24, !dbg !1456, !llvm.loop !1468

; <label>:24:                                     ; preds = %21
  br label %25, !dbg !1471

; <label>:25:                                     ; preds = %24, %6
  %26 = load i64, i64* @extend_size, align 8, !dbg !1471, !tbaa !928
  %27 = icmp eq i64 %26, 0, !dbg !1471
  br i1 %27, label %32, label %28, !dbg !1473

; <label>:28:                                     ; preds = %25
  %29 = urem i64 %0, %26, !dbg !1474
  %30 = add i64 %26, %0, !dbg !1475
  %31 = sub i64 %30, %29, !dbg !1476
  br label %34, !dbg !1477

; <label>:32:                                     ; preds = %25
  store i8 1, i8* %2, align 1, !dbg !1478, !tbaa !817
  br label %34, !dbg !1479

; <label>:33:                                     ; preds = %16
  br label %34, !dbg !1480

; <label>:34:                                     ; preds = %33, %32, %28, %12
  %35 = phi i64 [ %15, %12 ], [ %31, %28 ], [ 0, %32 ], [ %19, %33 ]
  ret i64 %35, !dbg !1480
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_file_list(i8**) local_unnamed_addr #6 !dbg !1481 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !1485, metadata !722), !dbg !1486
  store i1 false, i1* @have_read_stdin, align 1
  %2 = icmp ne i8** %0, null, !dbg !1487
  %3 = select i1 %2, i8** %0, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), !dbg !1489
  store i8** %3, i8*** @file_list, align 8, !tbaa !730
  ret void, !dbg !1490
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @next_file(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !133 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !191, metadata !722), !dbg !1491
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1492
  br i1 %2, label %30, label %3, !dbg !1493

; <label>:3:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1494, metadata !722), !dbg !1499
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1502
  %5 = load i32, i32* %4, align 8, !dbg !1502, !tbaa !1503
  %6 = and i32 %5, 32, !dbg !1502
  %7 = icmp eq i32 %6, 0, !dbg !1504
  br i1 %7, label %13, label %8, !dbg !1505

; <label>:8:                                      ; preds = %3
  %9 = tail call i32* @__errno_location() #1, !dbg !1506
  %10 = load i32, i32* %9, align 4, !dbg !1506, !tbaa !854
  %11 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1508, !tbaa !730
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %11) #10, !dbg !1509
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.27, i64 0, i64 0), i8* %12) #10, !dbg !1511
  store i32 1, i32* @exit_status, align 4, !dbg !1513, !tbaa !854
  br label %13, !dbg !1514

; <label>:13:                                     ; preds = %3, %8
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !198, metadata !722), !dbg !1515
  %14 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1516, !tbaa !730
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !199, metadata !722), !dbg !1518
  %15 = load i8, i8* %14, align 1, !dbg !1516, !tbaa !963
  %16 = icmp eq i8 %15, 45, !dbg !1519
  br i1 %16, label %17, label %22, !dbg !1522

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1524
  %19 = load i8, i8* %18, align 1, !dbg !1524, !tbaa !963
  %20 = icmp eq i8 %19, 0, !dbg !1527
  br i1 %20, label %21, label %22, !dbg !1529

; <label>:21:                                     ; preds = %17
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #10, !dbg !1531
  br label %30, !dbg !1531

; <label>:22:                                     ; preds = %13, %17
  %23 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #10, !dbg !1532
  %24 = icmp eq i32 %23, 0, !dbg !1534
  br i1 %24, label %30, label %25, !dbg !1535

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #1, !dbg !1536
  %27 = load i32, i32* %26, align 4, !dbg !1536, !tbaa !854
  %28 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1538, !tbaa !730
  %29 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #10, !dbg !1539
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.27, i64 0, i64 0), i8* %29) #10, !dbg !1541
  store i32 1, i32* @exit_status, align 4, !dbg !1543, !tbaa !854
  br label %30, !dbg !1544

; <label>:30:                                     ; preds = %21, %25, %1, %22
  %31 = load i8**, i8*** @file_list, align 8, !dbg !1545, !tbaa !730
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !1545
  store i8** %32, i8*** @file_list, align 8, !dbg !1545, !tbaa !730
  %33 = load i8*, i8** %31, align 8, !dbg !1547, !tbaa !730
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !192, metadata !722), !dbg !1548
  %34 = icmp eq i8* %33, null, !dbg !1549
  br i1 %34, label %61, label %35, !dbg !1550

; <label>:35:                                     ; preds = %30
  br label %36, !dbg !1551

; <label>:36:                                     ; preds = %35, %52
  %37 = phi i8* [ %58, %52 ], [ %33, %35 ]
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !206, metadata !722), !dbg !1551
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !207, metadata !722), !dbg !1552
  %38 = load i8, i8* %37, align 1, !dbg !1553, !tbaa !963
  %39 = icmp eq i8 %38, 45, !dbg !1555
  br i1 %39, label %40, label %46, !dbg !1558

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1560
  %42 = load i8, i8* %41, align 1, !dbg !1560, !tbaa !963
  %43 = icmp eq i8 %42, 0, !dbg !1563
  br i1 %43, label %44, label %46, !dbg !1565

; <label>:44:                                     ; preds = %40
  store i1 true, i1* @have_read_stdin, align 1
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1567, !tbaa !730
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %45, i64 0, metadata !191, metadata !722), !dbg !1491
  br label %48, !dbg !1569

; <label>:46:                                     ; preds = %36, %40
  %47 = tail call %struct._IO_FILE* @fopen(i8* nonnull %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.28, i64 0, i64 0)), !dbg !1570
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %47, i64 0, metadata !191, metadata !722), !dbg !1491
  br label %48

; <label>:48:                                     ; preds = %46, %44
  %49 = phi %struct._IO_FILE* [ %45, %44 ], [ %47, %46 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %49, i64 0, metadata !191, metadata !722), !dbg !1491
  %50 = icmp eq %struct._IO_FILE* %49, null, !dbg !1571
  br i1 %50, label %52, label %51, !dbg !1573

; <label>:51:                                     ; preds = %48
  store i8* %37, i8** @next_file.prev_file, align 8, !dbg !1574, !tbaa !730
  tail call void @fadvise(%struct._IO_FILE* nonnull %49, i32 2) #10, !dbg !1576
  br label %61, !dbg !1577

; <label>:52:                                     ; preds = %48
  %53 = tail call i32* @__errno_location() #1, !dbg !1578
  %54 = load i32, i32* %53, align 4, !dbg !1578, !tbaa !854
  %55 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %37) #10, !dbg !1579
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.27, i64 0, i64 0), i8* %55) #10, !dbg !1581
  store i32 1, i32* @exit_status, align 4, !dbg !1583, !tbaa !854
  %56 = load i8**, i8*** @file_list, align 8, !dbg !1545, !tbaa !730
  %57 = getelementptr inbounds i8*, i8** %56, i64 1, !dbg !1545
  store i8** %57, i8*** @file_list, align 8, !dbg !1545, !tbaa !730
  %58 = load i8*, i8** %56, align 8, !dbg !1547, !tbaa !730
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !192, metadata !722), !dbg !1548
  %59 = icmp eq i8* %58, null, !dbg !1549
  br i1 %59, label %60, label %36, !dbg !1550, !llvm.loop !1584

; <label>:60:                                     ; preds = %52
  br label %61, !dbg !1587

; <label>:61:                                     ; preds = %60, %30, %51
  %62 = phi %struct._IO_FILE* [ %49, %51 ], [ null, %30 ], [ null, %60 ]
  ret %struct._IO_FILE* %62, !dbg !1587
}

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @cleanup_file_list_stdin() local_unnamed_addr #6 !dbg !1588 {
  %1 = load i1, i1* @have_read_stdin, align 1
  br i1 %1, label %2, label %9, !dbg !1589

; <label>:2:                                      ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1591, !tbaa !730
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #10, !dbg !1593
  %5 = icmp eq i32 %4, 0, !dbg !1594
  br i1 %5, label %9, label %6, !dbg !1595

; <label>:6:                                      ; preds = %2
  %7 = tail call i32* @__errno_location() #1, !dbg !1597
  %8 = load i32, i32* %7, align 4, !dbg !1597, !tbaa !854
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.24, i64 0, i64 0)) #10, !dbg !1598
  unreachable, !dbg !1597

; <label>:9:                                      ; preds = %2, %0
  ret void, !dbg !1599
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1600 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1602, metadata !722), !dbg !1603
  store i8* %0, i8** @file_name, align 8, !dbg !1604, !tbaa !730
  ret void, !dbg !1605
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1606 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1610, metadata !1611), !dbg !1612
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1613, !tbaa !817
  ret void, !dbg !1614
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1615 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1620, !tbaa !730
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1621
  %3 = icmp eq i32 %2, 0, !dbg !1622
  br i1 %3, label %21, label %4, !dbg !1623

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1624, !tbaa !817, !range !990
  %6 = icmp eq i8 %5, 0, !dbg !1624
  %7 = tail call i32* @__errno_location() #1, !dbg !1626
  br i1 %6, label %11, label %8, !dbg !1628

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1629, !tbaa !854
  %10 = icmp eq i32 %9, 32, !dbg !1631
  br i1 %10, label %21, label %11, !dbg !1632

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !1634
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1617, metadata !722), !dbg !1635
  %13 = load i8*, i8** @file_name, align 8, !dbg !1636, !tbaa !730
  %14 = icmp eq i8* %13, null, !dbg !1636
  %15 = load i32, i32* %7, align 4, !tbaa !854
  br i1 %14, label %18, label %16, !dbg !1637

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1638
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1640
  br label %19, !dbg !1642

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #10, !dbg !1643
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1644, !tbaa !854
  tail call void @_exit(i32 %20) #14, !dbg !1645
  unreachable, !dbg !1645

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1646, !tbaa !730
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1648
  %24 = icmp eq i32 %23, 0, !dbg !1649
  br i1 %24, label %27, label %25, !dbg !1650

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1651, !tbaa !854
  tail call void @_exit(i32 %26) #14, !dbg !1652
  unreachable, !dbg !1652

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1653
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1654 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1661, metadata !722), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1662, metadata !722), !dbg !1668
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1663, metadata !722), !dbg !1669
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1664, metadata !722), !dbg !1670
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1671
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1665, metadata !722), !dbg !1671
  ret void, !dbg !1672
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1673 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1717, metadata !722), !dbg !1719
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1718, metadata !722), !dbg !1720
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1721
  br i1 %3, label %7, label %4, !dbg !1723

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1724
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1661, metadata !722) #10, !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1662, metadata !722) #10, !dbg !1728
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1663, metadata !722) #10, !dbg !1729
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1664, metadata !722) #10, !dbg !1730
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1731
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1665, metadata !722) #10, !dbg !1731
  br label %7, !dbg !1732

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1733
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1734 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1736, metadata !722), !dbg !1739
  %2 = icmp eq i8* %0, null, !dbg !1740
  br i1 %2, label %3, label %6, !dbg !1742

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1743, !tbaa !730
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1745
  tail call void @abort() #14, !dbg !1746
  unreachable, !dbg !1746

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1747
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1737, metadata !722), !dbg !1748
  %8 = icmp ne i8* %7, null, !dbg !1749
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1750
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1752
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1738, metadata !722), !dbg !1753
  %11 = ptrtoint i8* %10 to i64, !dbg !1754
  %12 = ptrtoint i8* %0 to i64, !dbg !1754
  %13 = sub i64 %11, %12, !dbg !1754
  %14 = icmp sgt i64 %13, 6, !dbg !1756
  br i1 %14, label %15, label %24, !dbg !1757

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1758
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #13, !dbg !1758
  %18 = icmp eq i32 %17, 0, !dbg !1760
  br i1 %18, label %19, label %24, !dbg !1761

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1736, metadata !722), !dbg !1739
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #13, !dbg !1762
  %21 = icmp eq i32 %20, 0, !dbg !1765
  br i1 %21, label %22, label %24, !dbg !1766

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1767
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1736, metadata !722), !dbg !1739
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1769, !tbaa !730
  br label %24, !dbg !1770

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1736, metadata !722), !dbg !1739
  store i8* %25, i8** @program_name, align 8, !dbg !1771, !tbaa !730
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1772, !tbaa !730
  ret void, !dbg !1773
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1774 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1779, metadata !722), !dbg !1782
  %2 = tail call i32* @__errno_location() #1, !dbg !1783
  %3 = load i32, i32* %2, align 4, !dbg !1783, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1780, metadata !722), !dbg !1784
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1785
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1786
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1786
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1788
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1788
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1781, metadata !722), !dbg !1789
  store i32 %3, i32* %2, align 4, !dbg !1790, !tbaa !854
  ret %struct.quoting_options* %8, !dbg !1791
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1792 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1798, metadata !722), !dbg !1799
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1800
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1800
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1801
  %5 = load i32, i32* %4, align 8, !dbg !1801, !tbaa !1803
  ret i32 %5, !dbg !1805
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1806 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1810, metadata !722), !dbg !1812
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1811, metadata !722), !dbg !1813
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1814
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1814
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1815
  store i32 %1, i32* %5, align 8, !dbg !1817, !tbaa !1803
  ret void, !dbg !1818
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1819 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1823, metadata !722), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1824, metadata !722), !dbg !1832
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1825, metadata !722), !dbg !1833
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1826, metadata !722), !dbg !1834
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1835
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1835
  %6 = lshr i8 %1, 5, !dbg !1836
  %7 = zext i8 %6 to i64, !dbg !1836
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1838
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1827, metadata !722), !dbg !1839
  %9 = and i8 %1, 31, !dbg !1840
  %10 = zext i8 %9 to i32, !dbg !1841
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1829, metadata !722), !dbg !1842
  %11 = load i32, i32* %8, align 4, !dbg !1843, !tbaa !854
  %12 = lshr i32 %11, %10, !dbg !1844
  %13 = and i32 %12, 1, !dbg !1845
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1830, metadata !722), !dbg !1846
  %14 = and i32 %2, 1, !dbg !1847
  %15 = xor i32 %13, %14, !dbg !1848
  %16 = shl i32 %15, %10, !dbg !1849
  %17 = xor i32 %16, %11, !dbg !1850
  store i32 %17, i32* %8, align 4, !dbg !1850, !tbaa !854
  ret i32 %13, !dbg !1851
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1852 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1856, metadata !722), !dbg !1859
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1857, metadata !722), !dbg !1860
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1856, metadata !722), !dbg !1859
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1856, metadata !722), !dbg !1859
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1864
  %6 = load i32, i32* %5, align 4, !dbg !1864, !tbaa !1865
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1858, metadata !722), !dbg !1866
  store i32 %1, i32* %5, align 4, !dbg !1867, !tbaa !1865
  ret i32 %6, !dbg !1868
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1869 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1873, metadata !722), !dbg !1876
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1874, metadata !722), !dbg !1877
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1875, metadata !722), !dbg !1878
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1879
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1873, metadata !722), !dbg !1876
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1873, metadata !722), !dbg !1876
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1882
  store i32 10, i32* %6, align 8, !dbg !1883, !tbaa !1803
  %7 = icmp ne i8* %1, null, !dbg !1884
  %8 = icmp ne i8* %2, null, !dbg !1886
  %9 = and i1 %7, %8, !dbg !1888
  br i1 %9, label %11, label %10, !dbg !1888

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1889
  unreachable, !dbg !1889

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1890
  store i8* %1, i8** %12, align 8, !dbg !1891, !tbaa !1892
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1893
  store i8* %2, i8** %13, align 8, !dbg !1894, !tbaa !1895
  ret void, !dbg !1896
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1897 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1901, metadata !722), !dbg !1909
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1902, metadata !722), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1903, metadata !722), !dbg !1911
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1904, metadata !722), !dbg !1912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1905, metadata !722), !dbg !1913
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1914
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1914
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1906, metadata !722), !dbg !1915
  %8 = tail call i32* @__errno_location() #1, !dbg !1916
  %9 = load i32, i32* %8, align 4, !dbg !1916, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1907, metadata !722), !dbg !1917
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1918
  %11 = load i32, i32* %10, align 8, !dbg !1918, !tbaa !1803
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1919
  %13 = load i32, i32* %12, align 4, !dbg !1919, !tbaa !1865
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1920
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1921
  %16 = load i8*, i8** %15, align 8, !dbg !1921, !tbaa !1892
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1922
  %18 = load i8*, i8** %17, align 8, !dbg !1922, !tbaa !1895
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1923
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1908, metadata !722), !dbg !1924
  store i32 %9, i32* %8, align 4, !dbg !1925, !tbaa !854
  ret i64 %19, !dbg !1926
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1927 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1933, metadata !722), !dbg !1996
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1934, metadata !722), !dbg !1997
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1935, metadata !722), !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1936, metadata !722), !dbg !1999
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1937, metadata !722), !dbg !2000
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1938, metadata !722), !dbg !2001
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1939, metadata !722), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1940, metadata !722), !dbg !2003
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1941, metadata !722), !dbg !2004
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1943, metadata !722), !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1944, metadata !722), !dbg !2006
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1945, metadata !722), !dbg !2007
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1946, metadata !722), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1947, metadata !722), !dbg !2009
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2010
  %14 = icmp eq i64 %13, 1, !dbg !2011
  %15 = lshr i32 %5, 1, !dbg !2012
  %16 = trunc i32 %15 to i8, !dbg !2012
  %17 = and i8 %16, 1, !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1949, metadata !722), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1950, metadata !722), !dbg !2013
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1951, metadata !722), !dbg !2014
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1952, metadata !722), !dbg !2015
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2016

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1934, metadata !722), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1952, metadata !722), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1951, metadata !722), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1949, metadata !722), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1936, metadata !722), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1947, metadata !722), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1946, metadata !722), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1945, metadata !722), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1944, metadata !722), !dbg !2006
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1941, metadata !722), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1940, metadata !722), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1937, metadata !722), !dbg !2000
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
  ], !dbg !2017

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1937, metadata !722), !dbg !2000
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1949, metadata !722), !dbg !2012
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1949, metadata !722), !dbg !2012
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1937, metadata !722), !dbg !2000
  br label %95, !dbg !2018

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1949, metadata !722), !dbg !2012
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1937, metadata !722), !dbg !2000
  %43 = and i8 %36, 1, !dbg !2020
  %44 = icmp eq i8 %43, 0, !dbg !2020
  br i1 %44, label %45, label %95, !dbg !2018

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2022
  br i1 %46, label %95, label %47, !dbg !2026

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2028, !tbaa !963
  br label %95, !dbg !2028

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %28), !dbg !2030
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1940, metadata !722), !dbg !2003
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %28), !dbg !2034
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1941, metadata !722), !dbg !2004
  br label %51, !dbg !2035

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1941, metadata !722), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1940, metadata !722), !dbg !2003
  %54 = and i8 %36, 1, !dbg !2036
  %55 = icmp eq i8 %54, 0, !dbg !2036
  br i1 %55, label %56, label %73, !dbg !2038

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1945, metadata !722), !dbg !2007
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1943, metadata !722), !dbg !2005
  %57 = load i8, i8* %52, align 1, !dbg !2039, !tbaa !963
  %58 = icmp eq i8 %57, 0, !dbg !2043
  br i1 %58, label %73, label %59, !dbg !2043

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2045

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2045
  br i1 %64, label %65, label %67, !dbg !2049

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2051
  store i8 %61, i8* %66, align 1, !dbg !2051, !tbaa !963
  br label %67, !dbg !2051

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1943, metadata !722), !dbg !2005
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2055
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1945, metadata !722), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1945, metadata !722), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1943, metadata !722), !dbg !2005
  %70 = load i8, i8* %69, align 1, !dbg !2039, !tbaa !963
  %71 = icmp eq i8 %70, 0, !dbg !2043
  br i1 %71, label %72, label %60, !dbg !2043, !llvm.loop !2057

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2005

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1947, metadata !722), !dbg !2009
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1945, metadata !722), !dbg !2007
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1946, metadata !722), !dbg !2008
  br label %95, !dbg !2061

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1947, metadata !722), !dbg !2009
  br label %77, !dbg !2062

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1947, metadata !722), !dbg !2009
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1949, metadata !722), !dbg !2012
  br label %79, !dbg !2063

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1949, metadata !722), !dbg !2012
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1947, metadata !722), !dbg !2009
  %82 = and i8 %81, 1, !dbg !2064
  %83 = icmp eq i8 %82, 0, !dbg !2064
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1947, metadata !722), !dbg !2009
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2066
  br label %85, !dbg !2066

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1949, metadata !722), !dbg !2012
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1947, metadata !722), !dbg !2009
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1937, metadata !722), !dbg !2000
  %88 = and i8 %87, 1, !dbg !2067
  %89 = icmp eq i8 %88, 0, !dbg !2067
  br i1 %89, label %90, label %95, !dbg !2069

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2070
  br i1 %91, label %95, label %92, !dbg !2074

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2076, !tbaa !963
  br label %95, !dbg !2076

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1949, metadata !722), !dbg !2012
  br label %95, !dbg !2078

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2079
  unreachable, !dbg !2079

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1949, metadata !722), !dbg !2012
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1947, metadata !722), !dbg !2009
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1946, metadata !722), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1945, metadata !722), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1941, metadata !722), !dbg !2004
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1940, metadata !722), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1937, metadata !722), !dbg !2000
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1942, metadata !722), !dbg !2080
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
  br label %123, !dbg !2081

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1934, metadata !722), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1952, metadata !722), !dbg !2015
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1951, metadata !722), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1936, metadata !722), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1944, metadata !722), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1942, metadata !722), !dbg !2080
  %132 = icmp eq i64 %127, -1, !dbg !2082
  br i1 %132, label %135, label %133, !dbg !2084

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2085
  br i1 %134, label %597, label %139, !dbg !2087

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2089
  %137 = load i8, i8* %136, align 1, !dbg !2089, !tbaa !963
  %138 = icmp eq i8 %137, 0, !dbg !2091
  br i1 %138, label %597, label %139, !dbg !2087

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !722), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1959, metadata !722), !dbg !2093
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1960, metadata !722), !dbg !2094
  br i1 %109, label %140, label %155, !dbg !2095

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2097
  %142 = and i1 %110, %132, !dbg !2099
  br i1 %142, label %143, label %145, !dbg !2099

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1936, metadata !722), !dbg !1999
  br label %145, !dbg !2101

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1936, metadata !722), !dbg !1999
  %147 = icmp ugt i64 %141, %146, !dbg !2103
  br i1 %147, label %155, label %148, !dbg !2105

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2106
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2107
  %151 = icmp ne i32 %150, 0, !dbg !2108
  %152 = or i1 %151, %112, !dbg !2108
  %153 = xor i1 %151, true, !dbg !2108
  %154 = zext i1 %153 to i8, !dbg !2108
  br i1 %152, label %155, label %644, !dbg !2108

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1958, metadata !722), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1936, metadata !722), !dbg !1999
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2110
  %159 = load i8, i8* %158, align 1, !dbg !2110, !tbaa !963
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1953, metadata !722), !dbg !2111
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
  ], !dbg !2112

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2113

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2114

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1959, metadata !722), !dbg !2093
  %163 = and i8 %128, 1, !dbg !2119
  %164 = icmp eq i8 %163, 0, !dbg !2119
  %165 = and i1 %114, %164, !dbg !2122
  br i1 %165, label %166, label %182, !dbg !2122

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2124
  br i1 %167, label %168, label %170, !dbg !2129

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2131
  store i8 39, i8* %169, align 1, !dbg !2131, !tbaa !963
  br label %170, !dbg !2131

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1943, metadata !722), !dbg !2005
  %172 = icmp ult i64 %171, %131, !dbg !2135
  br i1 %172, label %173, label %175, !dbg !2139

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2141
  store i8 36, i8* %174, align 1, !dbg !2141, !tbaa !963
  br label %175, !dbg !2141

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1943, metadata !722), !dbg !2005
  %177 = icmp ult i64 %176, %131, !dbg !2145
  br i1 %177, label %178, label %180, !dbg !2149

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2151
  store i8 39, i8* %179, align 1, !dbg !2151, !tbaa !963
  br label %180, !dbg !2151

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1950, metadata !722), !dbg !2013
  br label %182, !dbg !2155

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1943, metadata !722), !dbg !2005
  %185 = icmp ult i64 %183, %131, !dbg !2157
  br i1 %185, label %186, label %188, !dbg !2161

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2163
  store i8 92, i8* %187, align 1, !dbg !2163, !tbaa !963
  br label %188, !dbg !2163

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1943, metadata !722), !dbg !2005
  br i1 %106, label %190, label %476, !dbg !2167

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2169
  %192 = icmp ult i64 %191, %156, !dbg !2171
  br i1 %192, label %193, label %476, !dbg !2172

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2173
  %195 = load i8, i8* %194, align 1, !dbg !2173, !tbaa !963
  %196 = add i8 %195, -48, !dbg !2175
  %197 = icmp ult i8 %196, 10, !dbg !2175
  br i1 %197, label %198, label %476, !dbg !2175

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2176
  br i1 %199, label %200, label %202, !dbg !2181

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2183
  store i8 48, i8* %201, align 1, !dbg !2183, !tbaa !963
  br label %202, !dbg !2183

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1943, metadata !722), !dbg !2005
  %204 = icmp ult i64 %203, %131, !dbg !2187
  br i1 %204, label %205, label %207, !dbg !2191

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2193
  store i8 48, i8* %206, align 1, !dbg !2193, !tbaa !963
  br label %207, !dbg !2193

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1943, metadata !722), !dbg !2005
  br label %476, !dbg !2197

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2198

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2199

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2200

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2202

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2204
  %215 = icmp ult i64 %214, %156, !dbg !2206
  br i1 %215, label %216, label %476, !dbg !2207

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2208
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2210
  %219 = load i8, i8* %218, align 1, !dbg !2210, !tbaa !963
  %220 = icmp eq i8 %219, 63, !dbg !2211
  br i1 %220, label %221, label %476, !dbg !2212

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2214
  %223 = load i8, i8* %222, align 1, !dbg !2214, !tbaa !963
  %224 = sext i8 %223 to i32, !dbg !2214
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
  ], !dbg !2215

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2216

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1953, metadata !722), !dbg !2111
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1942, metadata !722), !dbg !2080
  %227 = icmp ult i64 %125, %131, !dbg !2218
  br i1 %227, label %228, label %230, !dbg !2222

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2224
  store i8 63, i8* %229, align 1, !dbg !2224, !tbaa !963
  br label %230, !dbg !2224

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1943, metadata !722), !dbg !2005
  %232 = icmp ult i64 %231, %131, !dbg !2228
  br i1 %232, label %233, label %235, !dbg !2232

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2234
  store i8 34, i8* %234, align 1, !dbg !2234, !tbaa !963
  br label %235, !dbg !2234

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1943, metadata !722), !dbg !2005
  %237 = icmp ult i64 %236, %131, !dbg !2238
  br i1 %237, label %238, label %240, !dbg !2242

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2244
  store i8 34, i8* %239, align 1, !dbg !2244, !tbaa !963
  br label %240, !dbg !2244

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1943, metadata !722), !dbg !2005
  %242 = icmp ult i64 %241, %131, !dbg !2248
  br i1 %242, label %243, label %245, !dbg !2252

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2254
  store i8 63, i8* %244, align 1, !dbg !2254, !tbaa !963
  br label %245, !dbg !2254

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1943, metadata !722), !dbg !2005
  br label %476, !dbg !2258

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1957, metadata !722), !dbg !2259
  br label %257, !dbg !2260

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1957, metadata !722), !dbg !2259
  br label %257, !dbg !2261

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1957, metadata !722), !dbg !2259
  br label %255, !dbg !2262

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1957, metadata !722), !dbg !2259
  br label %255, !dbg !2263

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1957, metadata !722), !dbg !2259
  br label %257, !dbg !2264

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1957, metadata !722), !dbg !2259
  br i1 %114, label %253, label %254, !dbg !2265

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2266

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2269

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1957, metadata !722), !dbg !2259
  br i1 %118, label %257, label %644, !dbg !2271

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1957, metadata !722), !dbg !2259
  br i1 %105, label %503, label %476, !dbg !2273

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2274
  br i1 %260, label %261, label %266, !dbg !2276

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2277, !tbaa !963
  %263 = icmp ne i8 %262, 0, !dbg !2279
  %264 = icmp ne i64 %124, 0, !dbg !2280
  %265 = or i1 %264, %263, !dbg !2282
  br i1 %265, label %476, label %272, !dbg !2282

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2283
  %268 = icmp ne i64 %124, 0, !dbg !2280
  %269 = or i1 %268, %267, !dbg !2285
  br i1 %269, label %476, label %272, !dbg !2285

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2280
  br i1 %271, label %272, label %476, !dbg !2287

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1960, metadata !722), !dbg !2094
  br label %273, !dbg !2288

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1960, metadata !722), !dbg !2094
  br i1 %118, label %476, label %644, !dbg !2289

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1951, metadata !722), !dbg !2014
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1960, metadata !722), !dbg !2094
  br i1 %114, label %276, label %476, !dbg !2291

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2292

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2295
  %279 = icmp ne i64 %126, 0, !dbg !2297
  %280 = or i1 %279, %278, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1944, metadata !722), !dbg !2006
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1934, metadata !722), !dbg !1997
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2299
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1934, metadata !722), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1944, metadata !722), !dbg !2006
  %283 = icmp ult i64 %125, %282, !dbg !2300
  br i1 %283, label %284, label %286, !dbg !2304

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2306
  store i8 39, i8* %285, align 1, !dbg !2306, !tbaa !963
  br label %286, !dbg !2306

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1943, metadata !722), !dbg !2005
  %288 = icmp ult i64 %287, %282, !dbg !2310
  br i1 %288, label %289, label %291, !dbg !2314

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2316
  store i8 92, i8* %290, align 1, !dbg !2316, !tbaa !963
  br label %291, !dbg !2316

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1943, metadata !722), !dbg !2005
  %293 = icmp ult i64 %292, %282, !dbg !2320
  br i1 %293, label %294, label %296, !dbg !2324

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2326
  store i8 39, i8* %295, align 1, !dbg !2326, !tbaa !963
  br label %296, !dbg !2326

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1950, metadata !722), !dbg !2013
  br label %476, !dbg !2330

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2331

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1961, metadata !722), !dbg !2332
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2333
  %301 = load i16*, i16** %300, align 8, !dbg !2333, !tbaa !730
  %302 = zext i8 %159 to i64, !dbg !2333
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2333
  %304 = load i16, i16* %303, align 2, !dbg !2333, !tbaa !980
  %305 = lshr i16 %304, 14, !dbg !2335
  %306 = trunc i16 %305 to i8, !dbg !2335
  %307 = and i8 %306, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1964, metadata !722), !dbg !2336
  br label %368, !dbg !2337

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2338
  store i64 0, i64* %10, align 8, !dbg !2339
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1961, metadata !722), !dbg !2332
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1964, metadata !722), !dbg !2336
  %309 = icmp eq i64 %156, -1, !dbg !2340
  br i1 %309, label %310, label %312, !dbg !2342, !llvm.loop !2343

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1936, metadata !722), !dbg !1999
  br label %312, !dbg !2347, !llvm.loop !2343

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2336

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1964, metadata !722), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1961, metadata !722), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1936, metadata !722), !dbg !1999
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2348
  %317 = add i64 %315, %124, !dbg !2349
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2350
  %319 = sub i64 %313, %317, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1965, metadata !984), !dbg !2352
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1982, metadata !984), !dbg !2353
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1985, metadata !722), !dbg !2355
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2356

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1961, metadata !722), !dbg !2332
  %322 = icmp ugt i64 %313, %317, !dbg !2357
  br i1 %322, label %323, label %351, !dbg !2360

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2361

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2361
  %328 = load i8, i8* %327, align 1, !dbg !2361, !tbaa !963
  %329 = icmp eq i8 %328, 0, !dbg !2363
  br i1 %329, label %348, label %330, !dbg !2364

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1961, metadata !722), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1961, metadata !722), !dbg !2332
  %332 = add i64 %331, %124, !dbg !2367
  %333 = icmp ult i64 %332, %313, !dbg !2357
  br i1 %333, label %324, label %348, !dbg !2360, !llvm.loop !2368

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2370
  %336 = and i1 %116, %335, !dbg !2374
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1986, metadata !722), !dbg !2375
  br i1 %336, label %337, label %355, !dbg !2374

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2376

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2376
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2377
  %342 = load i8, i8* %341, align 1, !dbg !2377, !tbaa !963
  %343 = sext i8 %342 to i32, !dbg !2377
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2378

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1986, metadata !722), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1986, metadata !722), !dbg !2375
  %346 = icmp ult i64 %345, %320, !dbg !2370
  br i1 %346, label %338, label %354, !dbg !2381, !llvm.loop !2383

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2336

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2336

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2336

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1964, metadata !722), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1961, metadata !722), !dbg !2332
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2386
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2387

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2387, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1982, metadata !722), !dbg !2353
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2389
  %358 = icmp eq i32 %357, 0, !dbg !2389
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1964, metadata !722), !dbg !2336
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2390
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1964, metadata !722), !dbg !2336
  %360 = add i64 %320, %315, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1961, metadata !722), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1964, metadata !722), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1961, metadata !722), !dbg !2332
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2386
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1965, metadata !984), !dbg !2352
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2392
  %362 = icmp eq i32 %361, 0, !dbg !2393
  br i1 %362, label %314, label %363, !dbg !2394, !llvm.loop !2343

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2396

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2396
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1964, metadata !722), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1961, metadata !722), !dbg !2332
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2386
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2396
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1964, metadata !722), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1961, metadata !722), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1936, metadata !722), !dbg !1999
  %372 = and i8 %371, 1, !dbg !2397
  %373 = icmp ne i8 %372, 0, !dbg !2397
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1960, metadata !722), !dbg !2094
  %374 = icmp ult i64 %370, 2, !dbg !2398
  %375 = or i1 %373, %113, !dbg !2399
  %376 = and i1 %374, %375, !dbg !2401
  br i1 %376, label %476, label %377, !dbg !2401

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1993, metadata !722), !dbg !2403
  br label %379, !dbg !2404

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1959, metadata !722), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1958, metadata !722), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1953, metadata !722), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1942, metadata !722), !dbg !2080
  br i1 %375, label %432, label %386, !dbg !2405

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2410

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1959, metadata !722), !dbg !2093
  %388 = and i8 %382, 1, !dbg !2414
  %389 = icmp eq i8 %388, 0, !dbg !2414
  %390 = and i1 %114, %389, !dbg !2417
  br i1 %390, label %391, label %407, !dbg !2417

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2419
  br i1 %392, label %393, label %395, !dbg !2424

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2426
  store i8 39, i8* %394, align 1, !dbg !2426, !tbaa !963
  br label %395, !dbg !2426

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1943, metadata !722), !dbg !2005
  %397 = icmp ult i64 %396, %131, !dbg !2430
  br i1 %397, label %398, label %400, !dbg !2434

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2436
  store i8 36, i8* %399, align 1, !dbg !2436, !tbaa !963
  br label %400, !dbg !2436

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1943, metadata !722), !dbg !2005
  %402 = icmp ult i64 %401, %131, !dbg !2440
  br i1 %402, label %403, label %405, !dbg !2444

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2446
  store i8 39, i8* %404, align 1, !dbg !2446, !tbaa !963
  br label %405, !dbg !2446

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2448
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1950, metadata !722), !dbg !2013
  br label %407, !dbg !2450

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1943, metadata !722), !dbg !2005
  %410 = icmp ult i64 %408, %131, !dbg !2452
  br i1 %410, label %411, label %413, !dbg !2456

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2458
  store i8 92, i8* %412, align 1, !dbg !2458, !tbaa !963
  br label %413, !dbg !2458

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1943, metadata !722), !dbg !2005
  %415 = icmp ult i64 %414, %131, !dbg !2462
  br i1 %415, label %416, label %420, !dbg !2466

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2468
  %418 = or i8 %417, 48, !dbg !2468
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2468
  store i8 %418, i8* %419, align 1, !dbg !2468, !tbaa !963
  br label %420, !dbg !2468

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1943, metadata !722), !dbg !2005
  %422 = icmp ult i64 %421, %131, !dbg !2472
  br i1 %422, label %423, label %428, !dbg !2476

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2478
  %425 = and i8 %424, 7, !dbg !2478
  %426 = or i8 %425, 48, !dbg !2478
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2478
  store i8 %426, i8* %427, align 1, !dbg !2478, !tbaa !963
  br label %428, !dbg !2478

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1943, metadata !722), !dbg !2005
  %430 = and i8 %383, 7, !dbg !2482
  %431 = or i8 %430, 48, !dbg !2483
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1953, metadata !722), !dbg !2111
  br label %441, !dbg !2484

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2485
  %434 = icmp eq i8 %433, 0, !dbg !2485
  br i1 %434, label %441, label %435, !dbg !2487

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2488
  br i1 %436, label %437, label %439, !dbg !2493

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2495
  store i8 92, i8* %438, align 1, !dbg !2495, !tbaa !963
  br label %439, !dbg !2495

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1958, metadata !722), !dbg !2092
  br label %441, !dbg !2499

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1959, metadata !722), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1958, metadata !722), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1953, metadata !722), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1943, metadata !722), !dbg !2005
  %447 = add i64 %380, 1, !dbg !2500
  %448 = icmp ugt i64 %378, %447, !dbg !2502
  br i1 %448, label %449, label %541, !dbg !2503

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2504
  %451 = icmp ne i8 %450, 0, !dbg !2504
  %452 = and i8 %446, 1, !dbg !2508
  %453 = icmp eq i8 %452, 0, !dbg !2508
  %454 = and i1 %451, %453, !dbg !2504
  br i1 %454, label %455, label %466, !dbg !2504

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2510
  br i1 %456, label %457, label %459, !dbg !2515

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2517
  store i8 39, i8* %458, align 1, !dbg !2517, !tbaa !963
  br label %459, !dbg !2517

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1943, metadata !722), !dbg !2005
  %461 = icmp ult i64 %460, %131, !dbg !2521
  br i1 %461, label %462, label %464, !dbg !2525

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2527
  store i8 39, i8* %463, align 1, !dbg !2527, !tbaa !963
  br label %464, !dbg !2527

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1950, metadata !722), !dbg !2013
  br label %466, !dbg !2531

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1943, metadata !722), !dbg !2005
  %469 = icmp ult i64 %467, %131, !dbg !2533
  br i1 %469, label %470, label %472, !dbg !2537

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2539
  store i8 %444, i8* %471, align 1, !dbg !2539, !tbaa !963
  br label %472, !dbg !2539

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1942, metadata !722), !dbg !2080
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2543
  %475 = load i8, i8* %474, align 1, !dbg !2543, !tbaa !963
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1953, metadata !722), !dbg !2111
  br label %379, !dbg !2544, !llvm.loop !2546

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1934, metadata !722), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1960, metadata !722), !dbg !2094
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1959, metadata !722), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1958, metadata !722), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1953, metadata !722), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1951, metadata !722), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1936, metadata !722), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1944, metadata !722), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1942, metadata !722), !dbg !2080
  br i1 %107, label %488, label %487, !dbg !2549

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2551

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2552

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2553
  %491 = zext i8 %490 to i64, !dbg !2553
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2555
  %493 = load i32, i32* %492, align 4, !dbg !2555, !tbaa !854
  %494 = and i8 %483, 31, !dbg !2556
  %495 = zext i8 %494 to i32, !dbg !2557
  %496 = shl i32 1, %495, !dbg !2558
  %497 = and i32 %493, %496, !dbg !2558
  %498 = icmp eq i32 %497, 0, !dbg !2558
  %499 = icmp eq i8 %157, 0, !dbg !2559
  %500 = and i1 %499, %498, !dbg !2560
  br i1 %500, label %542, label %503, !dbg !2560

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2559
  br i1 %502, label %542, label %503, !dbg !2561

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1934, metadata !722), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1960, metadata !722), !dbg !2094
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1953, metadata !722), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1951, metadata !722), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1936, metadata !722), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1944, metadata !722), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1942, metadata !722), !dbg !2080
  br i1 %112, label %513, label %644, !dbg !2563

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1959, metadata !722), !dbg !2093
  %514 = and i8 %508, 1, !dbg !2566
  %515 = icmp eq i8 %514, 0, !dbg !2566
  %516 = and i1 %114, %515, !dbg !2569
  br i1 %516, label %517, label %533, !dbg !2569

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2571
  br i1 %518, label %519, label %521, !dbg !2576

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2578
  store i8 39, i8* %520, align 1, !dbg !2578, !tbaa !963
  br label %521, !dbg !2578

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1943, metadata !722), !dbg !2005
  %523 = icmp ult i64 %522, %512, !dbg !2582
  br i1 %523, label %524, label %526, !dbg !2586

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2588
  store i8 36, i8* %525, align 1, !dbg !2588, !tbaa !963
  br label %526, !dbg !2588

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1943, metadata !722), !dbg !2005
  %528 = icmp ult i64 %527, %512, !dbg !2592
  br i1 %528, label %529, label %531, !dbg !2596

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2598
  store i8 39, i8* %530, align 1, !dbg !2598, !tbaa !963
  br label %531, !dbg !2598

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1950, metadata !722), !dbg !2013
  br label %533, !dbg !2602

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1943, metadata !722), !dbg !2005
  %536 = icmp ult i64 %534, %512, !dbg !2604
  br i1 %536, label %537, label %539, !dbg !2608

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2610
  store i8 92, i8* %538, align 1, !dbg !2610, !tbaa !963
  br label %539, !dbg !2610

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1934, metadata !722), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1960, metadata !722), !dbg !2094
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1959, metadata !722), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1953, metadata !722), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1951, metadata !722), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1936, metadata !722), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1944, metadata !722), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1942, metadata !722), !dbg !2080
  br label %569, !dbg !2614

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1997

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1934, metadata !722), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1960, metadata !722), !dbg !2094
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1959, metadata !722), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1953, metadata !722), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1951, metadata !722), !dbg !2014
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1936, metadata !722), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1944, metadata !722), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1942, metadata !722), !dbg !2080
  %553 = and i8 %547, 1, !dbg !2614
  %554 = icmp ne i8 %553, 0, !dbg !2614
  %555 = and i8 %550, 1, !dbg !2618
  %556 = icmp eq i8 %555, 0, !dbg !2618
  %557 = and i1 %554, %556, !dbg !2614
  br i1 %557, label %558, label %569, !dbg !2614

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2620
  br i1 %559, label %560, label %562, !dbg !2625

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2627
  store i8 39, i8* %561, align 1, !dbg !2627, !tbaa !963
  br label %562, !dbg !2627

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1943, metadata !722), !dbg !2005
  %564 = icmp ult i64 %563, %552, !dbg !2631
  br i1 %564, label %565, label %567, !dbg !2635

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2637
  store i8 39, i8* %566, align 1, !dbg !2637, !tbaa !963
  br label %567, !dbg !2637

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1943, metadata !722), !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1950, metadata !722), !dbg !2013
  br label %569, !dbg !2641

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1950, metadata !722), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1943, metadata !722), !dbg !2005
  %579 = icmp ult i64 %577, %570, !dbg !2643
  br i1 %579, label %580, label %582, !dbg !2647

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2649
  store i8 %572, i8* %581, align 1, !dbg !2649, !tbaa !963
  br label %582, !dbg !2649

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1943, metadata !722), !dbg !2005
  %584 = and i8 %571, 1, !dbg !2653
  %585 = icmp eq i8 %584, 0, !dbg !2653
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1952, metadata !722), !dbg !2015
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2655
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1952, metadata !722), !dbg !2015
  br label %587, !dbg !2656

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1942, metadata !722), !dbg !2080
  br label %123, !dbg !2659, !llvm.loop !2660

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2663
  %600 = and i1 %114, %599, !dbg !2665
  %601 = xor i1 %600, true, !dbg !2665
  %602 = or i1 %112, %601, !dbg !2665
  br i1 %602, label %603, label %648, !dbg !2665

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2666
  %605 = xor i1 %604, true, !dbg !2666
  %606 = and i8 %129, 1, !dbg !2668
  %607 = icmp eq i8 %606, 0, !dbg !2668
  %608 = or i1 %607, %605, !dbg !2666
  br i1 %608, label %618, label %609, !dbg !2666

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2670
  %611 = icmp eq i8 %610, 0, !dbg !2670
  br i1 %611, label %614, label %612, !dbg !2673

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2674
  br label %659, !dbg !2675

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2676
  %616 = icmp ne i64 %126, 0, !dbg !2678
  %617 = and i1 %616, %615, !dbg !2680
  br i1 %617, label %27, label %618, !dbg !2680

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2681
  %620 = and i1 %619, %112, !dbg !2683
  br i1 %620, label %621, label %638, !dbg !2683

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1945, metadata !722), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1943, metadata !722), !dbg !2005
  %622 = load i8, i8* %100, align 1, !dbg !2684, !tbaa !963
  %623 = icmp eq i8 %622, 0, !dbg !2688
  br i1 %623, label %638, label %624, !dbg !2688

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2690

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2690
  br i1 %629, label %630, label %632, !dbg !2694

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2696
  store i8 %626, i8* %631, align 1, !dbg !2696, !tbaa !963
  br label %632, !dbg !2696

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1943, metadata !722), !dbg !2005
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1945, metadata !722), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1945, metadata !722), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1943, metadata !722), !dbg !2005
  %635 = load i8, i8* %634, align 1, !dbg !2684, !tbaa !963
  %636 = icmp eq i8 %635, 0, !dbg !2688
  br i1 %636, label %637, label %625, !dbg !2688, !llvm.loop !2702

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2005

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1943, metadata !722), !dbg !2005
  %640 = icmp ult i64 %639, %131, !dbg !2705
  br i1 %640, label %641, label %659, !dbg !2707

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2708
  store i8 0, i8* %642, align 1, !dbg !2709, !tbaa !963
  br label %659, !dbg !2708

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1997

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1997

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1997

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1934, metadata !722), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1936, metadata !722), !dbg !1999
  %653 = icmp ne i32 %650, 2, !dbg !2710
  %654 = icmp eq i8 %104, 0, !dbg !2712
  %655 = or i1 %653, %654, !dbg !2714
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1937, metadata !722), !dbg !2000
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2714
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1937, metadata !722), !dbg !2000
  %657 = and i32 %5, -3, !dbg !2715
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2716
  br label %659, !dbg !2717

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2718
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2719 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !722), !dbg !2727
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2724, metadata !722), !dbg !2728
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2729
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2725, metadata !722), !dbg !2730
  %4 = icmp eq i8* %3, %0, !dbg !2731
  br i1 %4, label %5, label %75, !dbg !2733

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2734
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2726, metadata !722), !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2736, metadata !722), !dbg !2752
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2750, metadata !722), !dbg !2755
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2751, metadata !722), !dbg !2756
  %7 = load i8, i8* %6, align 1, !tbaa !963
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2757
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2757

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2760, metadata !722), !dbg !2774
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2772, metadata !722), !dbg !2778
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2773, metadata !722), !dbg !2779
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !963
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2780
  %15 = icmp eq i32 %14, 84, !dbg !2780
  br i1 %15, label %16, label %72, !dbg !2780

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2783, metadata !722), !dbg !2796
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2794, metadata !722), !dbg !2800
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2795, metadata !722), !dbg !2801
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !963
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2802
  %21 = icmp eq i32 %20, 70, !dbg !2802
  br i1 %21, label %22, label %72, !dbg !2802

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2805, metadata !722), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2815, metadata !722), !dbg !2821
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2816, metadata !722), !dbg !2822
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !963
  %25 = icmp eq i8 %24, 45, !dbg !2823
  br i1 %25, label %26, label %72, !dbg !2826

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2828, metadata !722), !dbg !2839
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2837, metadata !722), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2838, metadata !722), !dbg !2844
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !963
  %29 = icmp eq i8 %28, 56, !dbg !2845
  br i1 %29, label %30, label %72, !dbg !2848

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2850, metadata !722), !dbg !2860
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2858, metadata !722), !dbg !2864
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2859, metadata !722), !dbg !2865
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !963
  %33 = icmp eq i8 %32, 0, !dbg !2866
  br i1 %33, label %34, label %72, !dbg !2869

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2871, !tbaa !963
  %36 = icmp eq i8 %35, 96, !dbg !2872
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2871
  br label %75, !dbg !2873

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2760, metadata !722), !dbg !2874
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2772, metadata !722), !dbg !2878
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2773, metadata !722), !dbg !2879
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !963
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2880
  %43 = icmp eq i32 %42, 66, !dbg !2880
  br i1 %43, label %44, label %72, !dbg !2880

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2783, metadata !722), !dbg !2881
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2794, metadata !722), !dbg !2883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2795, metadata !722), !dbg !2884
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !963
  %47 = icmp eq i8 %46, 49, !dbg !2885
  br i1 %47, label %48, label %72, !dbg !2887

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2805, metadata !722), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2815, metadata !722), !dbg !2891
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2816, metadata !722), !dbg !2892
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !963
  %51 = icmp eq i8 %50, 56, !dbg !2893
  br i1 %51, label %52, label %72, !dbg !2894

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2828, metadata !722), !dbg !2895
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2837, metadata !722), !dbg !2897
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2838, metadata !722), !dbg !2898
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !963
  %55 = icmp eq i8 %54, 48, !dbg !2899
  br i1 %55, label %56, label %72, !dbg !2900

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2850, metadata !722), !dbg !2901
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2858, metadata !722), !dbg !2903
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2859, metadata !722), !dbg !2904
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !963
  %59 = icmp eq i8 %58, 51, !dbg !2905
  br i1 %59, label %60, label %72, !dbg !2906

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2907, metadata !722), !dbg !2916
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2914, metadata !722), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2915, metadata !722), !dbg !2921
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !963
  %63 = icmp eq i8 %62, 48, !dbg !2922
  br i1 %63, label %64, label %72, !dbg !2925

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2927, metadata !722), !dbg !2935
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2933, metadata !722), !dbg !2939
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2934, metadata !722), !dbg !2940
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !963
  %67 = icmp eq i8 %66, 0, !dbg !2941
  br i1 %67, label %68, label %72, !dbg !2944

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2945, !tbaa !963
  %70 = icmp eq i8 %69, 96, !dbg !2946
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2945
  br label %75, !dbg !2947

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2948
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2949
  br label %75, !dbg !2950

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2951
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2952 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2956, metadata !722), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2957, metadata !722), !dbg !2960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2958, metadata !722), !dbg !2961
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2962, metadata !722) #10, !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2967, metadata !722) #10, !dbg !2977
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2968, metadata !722) #10, !dbg !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2969, metadata !722) #10, !dbg !2979
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2980
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2970, metadata !722) #10, !dbg !2981
  %6 = tail call i32* @__errno_location() #1, !dbg !2982
  %7 = load i32, i32* %6, align 4, !dbg !2982, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2971, metadata !722) #10, !dbg !2983
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2984
  %9 = load i32, i32* %8, align 4, !dbg !2984, !tbaa !1865
  %10 = or i32 %9, 1, !dbg !2985
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2972, metadata !722) #10, !dbg !2986
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2987
  %12 = load i32, i32* %11, align 8, !dbg !2987, !tbaa !1803
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2988
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2989
  %15 = load i8*, i8** %14, align 8, !dbg !2989, !tbaa !1892
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2990
  %17 = load i8*, i8** %16, align 8, !dbg !2990, !tbaa !1895
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2991
  %19 = add i64 %18, 1, !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2973, metadata !722) #10, !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2994, metadata !722) #10, !dbg !2999
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3001
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2974, metadata !722) #10, !dbg !3002
  %21 = load i32, i32* %11, align 8, !dbg !3003, !tbaa !1803
  %22 = load i8*, i8** %14, align 8, !dbg !3004, !tbaa !1892
  %23 = load i8*, i8** %16, align 8, !dbg !3005, !tbaa !1895
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3006
  store i32 %7, i32* %6, align 4, !dbg !3007, !tbaa !854
  ret i8* %20, !dbg !3008
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2963 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2962, metadata !722), !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2967, metadata !722), !dbg !3010
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2968, metadata !722), !dbg !3011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2969, metadata !722), !dbg !3012
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3013
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2970, metadata !722), !dbg !3014
  %7 = tail call i32* @__errno_location() #1, !dbg !3015
  %8 = load i32, i32* %7, align 4, !dbg !3015, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2971, metadata !722), !dbg !3016
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3017
  %10 = load i32, i32* %9, align 4, !dbg !3017, !tbaa !1865
  %11 = icmp ne i64* %2, null, !dbg !3018
  %12 = xor i1 %11, true, !dbg !3018
  %13 = zext i1 %12 to i32, !dbg !3018
  %14 = or i32 %10, %13, !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2972, metadata !722), !dbg !3020
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3021
  %16 = load i32, i32* %15, align 8, !dbg !3021, !tbaa !1803
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3022
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3023
  %19 = load i8*, i8** %18, align 8, !dbg !3023, !tbaa !1892
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3024
  %21 = load i8*, i8** %20, align 8, !dbg !3024, !tbaa !1895
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3025
  %23 = add i64 %22, 1, !dbg !3026
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2973, metadata !722), !dbg !3027
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2994, metadata !722) #10, !dbg !3028
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3030
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2974, metadata !722), !dbg !3031
  %25 = load i32, i32* %15, align 8, !dbg !3032, !tbaa !1803
  %26 = load i8*, i8** %18, align 8, !dbg !3033, !tbaa !1892
  %27 = load i8*, i8** %20, align 8, !dbg !3034, !tbaa !1895
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3035
  store i32 %8, i32* %7, align 4, !dbg !3036, !tbaa !854
  br i1 %11, label %29, label %30, !dbg !3037

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3038, !tbaa !928
  br label %30, !dbg !3040

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3041
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3042 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3046, !tbaa !730
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3044, metadata !722), !dbg !3047
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3045, metadata !722), !dbg !3048
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3045, metadata !722), !dbg !3048
  %2 = load i32, i32* @nslots, align 4, !dbg !3049, !tbaa !854
  %3 = icmp sgt i32 %2, 1, !dbg !3053
  br i1 %3, label %4, label %14, !dbg !3054

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3056

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3056
  %8 = load i8*, i8** %7, align 8, !dbg !3056, !tbaa !3057
  tail call void @free(i8* %8) #10, !dbg !3059
  %9 = add nuw i64 %6, 1, !dbg !3060
  %10 = load i32, i32* @nslots, align 4, !dbg !3049, !tbaa !854
  %11 = sext i32 %10 to i64, !dbg !3053
  %12 = icmp slt i64 %9, %11, !dbg !3053
  br i1 %12, label %5, label %13, !dbg !3054, !llvm.loop !3062

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3065

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3065
  %16 = load i8*, i8** %15, align 8, !dbg !3065, !tbaa !3057
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3067
  br i1 %17, label %19, label %18, !dbg !3068

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3069
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3071, !tbaa !3072
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3073, !tbaa !3057
  br label %19, !dbg !3074

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3075
  br i1 %20, label %23, label %21, !dbg !3077

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3078
  tail call void @free(i8* %22) #10, !dbg !3080
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3081, !tbaa !730
  br label %23, !dbg !3082

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3083, !tbaa !854
  ret void, !dbg !3084
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3085 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3089, metadata !722), !dbg !3091
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3090, metadata !722), !dbg !3092
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3093
  ret i8* %3, !dbg !3094
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3095 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3099, metadata !722), !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3100, metadata !722), !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3101, metadata !722), !dbg !3115
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3102, metadata !722), !dbg !3116
  %5 = tail call i32* @__errno_location() #1, !dbg !3117
  %6 = load i32, i32* %5, align 4, !dbg !3117, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3103, metadata !722), !dbg !3118
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3119, !tbaa !730
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3104, metadata !722), !dbg !3120
  %8 = icmp slt i32 %0, 0, !dbg !3121
  br i1 %8, label %9, label %10, !dbg !3123

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3124
  unreachable, !dbg !3124

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3125, !tbaa !854
  %12 = icmp sgt i32 %11, %0, !dbg !3126
  br i1 %12, label %34, label %13, !dbg !3127

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3128
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3129
  br i1 %15, label %16, label %17, !dbg !3131

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3132
  unreachable, !dbg !3132

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3133
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3133
  %20 = add nsw i32 %0, 1, !dbg !3135
  %21 = sext i32 %20 to i64, !dbg !3136
  %22 = shl nsw i64 %21, 4, !dbg !3137
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3138
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3138
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3104, metadata !722), !dbg !3120
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3139, !tbaa !730
  br i1 %14, label %25, label %26, !dbg !3140

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3141, !tbaa.struct !3143
  br label %26, !dbg !3144

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3145, !tbaa !854
  %28 = sext i32 %27 to i64, !dbg !3146
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3146
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3147
  %31 = sub nsw i32 %20, %27, !dbg !3148
  %32 = sext i32 %31 to i64, !dbg !3149
  %33 = shl nsw i64 %32, 4, !dbg !3150
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3147
  store i32 %20, i32* @nslots, align 4, !dbg !3151, !tbaa !854
  br label %34, !dbg !3152

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3104, metadata !722), !dbg !3120
  %36 = sext i32 %0 to i64, !dbg !3153
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3154
  %38 = load i64, i64* %37, align 8, !dbg !3154, !tbaa !3072
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3108, metadata !722), !dbg !3155
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3156
  %40 = load i8*, i8** %39, align 8, !dbg !3156, !tbaa !3057
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3110, metadata !722), !dbg !3157
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3158
  %42 = load i32, i32* %41, align 4, !dbg !3158, !tbaa !1865
  %43 = or i32 %42, 1, !dbg !3159
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3111, metadata !722), !dbg !3160
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3161
  %45 = load i32, i32* %44, align 8, !dbg !3161, !tbaa !1803
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3162
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3163
  %48 = load i8*, i8** %47, align 8, !dbg !3163, !tbaa !1892
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3164
  %50 = load i8*, i8** %49, align 8, !dbg !3164, !tbaa !1895
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3112, metadata !722), !dbg !3166
  %52 = icmp ugt i64 %38, %51, !dbg !3167
  br i1 %52, label %63, label %53, !dbg !3169

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3108, metadata !722), !dbg !3155
  store i64 %54, i64* %37, align 8, !dbg !3172, !tbaa !3072
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3173
  br i1 %55, label %57, label %56, !dbg !3175

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3176
  br label %57, !dbg !3176

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2994, metadata !722) #10, !dbg !3177
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3110, metadata !722), !dbg !3157
  store i8* %58, i8** %39, align 8, !dbg !3180, !tbaa !3057
  %59 = load i32, i32* %44, align 8, !dbg !3181, !tbaa !1803
  %60 = load i8*, i8** %47, align 8, !dbg !3182, !tbaa !1892
  %61 = load i8*, i8** %49, align 8, !dbg !3183, !tbaa !1895
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3184
  br label %63, !dbg !3185

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3110, metadata !722), !dbg !3157
  store i32 %6, i32* %5, align 4, !dbg !3186, !tbaa !854
  ret i8* %64, !dbg !3187
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3188 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3192, metadata !722), !dbg !3195
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3193, metadata !722), !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3194, metadata !722), !dbg !3197
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3198
  ret i8* %4, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3200 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3204, metadata !722), !dbg !3205
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3089, metadata !722) #10, !dbg !3206
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3090, metadata !722) #10, !dbg !3208
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3209
  ret i8* %2, !dbg !3210
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3211 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3215, metadata !722), !dbg !3217
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3216, metadata !722), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3192, metadata !722) #10, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3193, metadata !722) #10, !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3194, metadata !722) #10, !dbg !3222
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3223
  ret i8* %3, !dbg !3224
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3225 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3233, metadata !3239), !dbg !3240
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3229, metadata !722), !dbg !3242
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3230, metadata !722), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3231, metadata !722), !dbg !3244
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3245
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3245
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3232, metadata !984), !dbg !3246
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3238, metadata !722) #10, !dbg !3247
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3248
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3248
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3233, metadata !722) #10, !dbg !3240
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3233, metadata !3249) #10, !dbg !3240
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3240
  %8 = icmp eq i32 %1, 10, !dbg !3250
  br i1 %8, label %9, label %10, !dbg !3252

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3253, !noalias !3254
  unreachable, !dbg !3253

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3233, metadata !3249) #10, !dbg !3240
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3257
  store i32 %1, i32* %11, align 8, !dbg !3257, !alias.scope !3254
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3257
  %13 = bitcast i32* %12 to i8*, !dbg !3257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3257
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3232, metadata !984), !dbg !3246
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3259
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3260
  ret i8* %14, !dbg !3261
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3262 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3233, metadata !3239), !dbg !3271
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3266, metadata !722), !dbg !3273
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3267, metadata !722), !dbg !3274
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3268, metadata !722), !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3269, metadata !722), !dbg !3276
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3277
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3277
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3270, metadata !984), !dbg !3278
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3238, metadata !722) #10, !dbg !3279
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3280
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3280
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3233, metadata !722) #10, !dbg !3271
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3233, metadata !3249) #10, !dbg !3271
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3271
  %9 = icmp eq i32 %1, 10, !dbg !3281
  br i1 %9, label %10, label %11, !dbg !3282

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3283, !noalias !3284
  unreachable, !dbg !3283

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3233, metadata !3249) #10, !dbg !3271
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3287
  store i32 %1, i32* %12, align 8, !dbg !3287, !alias.scope !3284
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3287
  %14 = bitcast i32* %13 to i8*, !dbg !3287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3287
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3288
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3270, metadata !984), !dbg !3278
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3289
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3290
  ret i8* %15, !dbg !3291
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3292 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3233, metadata !3239), !dbg !3298
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3296, metadata !722), !dbg !3301
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3297, metadata !722), !dbg !3302
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3229, metadata !722) #10, !dbg !3303
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3230, metadata !722) #10, !dbg !3304
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3231, metadata !722) #10, !dbg !3305
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3306
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3306
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3232, metadata !984) #10, !dbg !3307
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3238, metadata !722) #10, !dbg !3308
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3309
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3309
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3233, metadata !722) #10, !dbg !3298
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3233, metadata !3249) #10, !dbg !3298
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3298
  %7 = icmp eq i32 %0, 10, !dbg !3310
  br i1 %7, label %8, label %9, !dbg !3311

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3312, !noalias !3313
  unreachable, !dbg !3312

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3233, metadata !3249) #10, !dbg !3298
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3316
  store i32 %0, i32* %10, align 8, !dbg !3316, !alias.scope !3313
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3316
  %12 = bitcast i32* %11 to i8*, !dbg !3316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3316
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3317
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3232, metadata !984) #10, !dbg !3307
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3318
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3319
  ret i8* %13, !dbg !3320
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3321 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3233, metadata !3239), !dbg !3328
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3325, metadata !722), !dbg !3331
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3326, metadata !722), !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3327, metadata !722), !dbg !3333
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3266, metadata !722) #10, !dbg !3334
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3267, metadata !722) #10, !dbg !3335
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3268, metadata !722) #10, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3269, metadata !722) #10, !dbg !3337
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3338
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3338
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3270, metadata !984) #10, !dbg !3339
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3238, metadata !722) #10, !dbg !3340
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3341
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3341
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3233, metadata !722) #10, !dbg !3328
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3233, metadata !3249) #10, !dbg !3328
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3328
  %8 = icmp eq i32 %0, 10, !dbg !3342
  br i1 %8, label %9, label %10, !dbg !3343

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3344, !noalias !3345
  unreachable, !dbg !3344

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3233, metadata !3249) #10, !dbg !3328
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3348
  store i32 %0, i32* %11, align 8, !dbg !3348, !alias.scope !3345
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3348
  %13 = bitcast i32* %12 to i8*, !dbg !3348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3348
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3270, metadata !984) #10, !dbg !3339
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3350
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3351
  ret i8* %14, !dbg !3352
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3353 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3357, metadata !722), !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3358, metadata !722), !dbg !3362
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3359, metadata !722), !dbg !3363
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3364
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3365, !tbaa.struct !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3360, metadata !984), !dbg !3367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1823, metadata !722), !dbg !3368
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1824, metadata !722), !dbg !3370
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1825, metadata !722), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1826, metadata !722), !dbg !3372
  %6 = lshr i8 %2, 5, !dbg !3373
  %7 = zext i8 %6 to i64, !dbg !3373
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3374
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1827, metadata !722), !dbg !3375
  %9 = and i8 %2, 31, !dbg !3376
  %10 = zext i8 %9 to i32, !dbg !3377
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1829, metadata !722), !dbg !3378
  %11 = load i32, i32* %8, align 4, !dbg !3379, !tbaa !854
  %12 = lshr i32 %11, %10, !dbg !3380
  %13 = and i32 %12, 1, !dbg !3381
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1830, metadata !722), !dbg !3382
  %14 = xor i32 %13, 1, !dbg !3383
  %15 = shl i32 %14, %10, !dbg !3384
  %16 = xor i32 %15, %11, !dbg !3385
  store i32 %16, i32* %8, align 4, !dbg !3385, !tbaa !854
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3360, metadata !984), !dbg !3367
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3386
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3387
  ret i8* %17, !dbg !3388
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3389 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3393, metadata !722), !dbg !3395
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3394, metadata !722), !dbg !3396
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3357, metadata !722) #10, !dbg !3397
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3358, metadata !722) #10, !dbg !3399
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3359, metadata !722) #10, !dbg !3400
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3401
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3402, !tbaa.struct !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3360, metadata !984) #10, !dbg !3403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1823, metadata !722) #10, !dbg !3404
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1824, metadata !722) #10, !dbg !3406
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1825, metadata !722) #10, !dbg !3407
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1826, metadata !722) #10, !dbg !3408
  %5 = lshr i8 %1, 5, !dbg !3409
  %6 = zext i8 %5 to i64, !dbg !3409
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3410
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1827, metadata !722) #10, !dbg !3411
  %8 = and i8 %1, 31, !dbg !3412
  %9 = zext i8 %8 to i32, !dbg !3413
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1829, metadata !722) #10, !dbg !3414
  %10 = load i32, i32* %7, align 4, !dbg !3415, !tbaa !854
  %11 = lshr i32 %10, %9, !dbg !3416
  %12 = and i32 %11, 1, !dbg !3417
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1830, metadata !722) #10, !dbg !3418
  %13 = xor i32 %12, 1, !dbg !3419
  %14 = shl i32 %13, %9, !dbg !3420
  %15 = xor i32 %14, %10, !dbg !3421
  store i32 %15, i32* %7, align 4, !dbg !3421, !tbaa !854
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3360, metadata !984) #10, !dbg !3403
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3422
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3423
  ret i8* %16, !dbg !3424
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3425 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3427, metadata !722), !dbg !3428
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3393, metadata !722) #10, !dbg !3429
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3394, metadata !722) #10, !dbg !3431
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3357, metadata !722) #10, !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3358, metadata !722) #10, !dbg !3434
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3359, metadata !722) #10, !dbg !3435
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3436
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3437, !tbaa.struct !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3360, metadata !984) #10, !dbg !3438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1823, metadata !722) #10, !dbg !3439
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1824, metadata !722) #10, !dbg !3441
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1825, metadata !722) #10, !dbg !3442
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1826, metadata !722) #10, !dbg !3443
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3444
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1827, metadata !722) #10, !dbg !3445
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1829, metadata !722) #10, !dbg !3446
  %5 = load i32, i32* %4, align 4, !dbg !3447, !tbaa !854
  %6 = or i32 %5, 67108864, !dbg !3448
  store i32 %6, i32* %4, align 4, !dbg !3448, !tbaa !854
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3360, metadata !984) #10, !dbg !3438
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3449
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3450
  ret i8* %7, !dbg !3451
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3452 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3454, metadata !722), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3455, metadata !722), !dbg !3457
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3357, metadata !722) #10, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3358, metadata !722) #10, !dbg !3460
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3359, metadata !722) #10, !dbg !3461
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3462
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3463, !tbaa.struct !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3360, metadata !984) #10, !dbg !3464
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1823, metadata !722) #10, !dbg !3465
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1824, metadata !722) #10, !dbg !3467
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1825, metadata !722) #10, !dbg !3468
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1826, metadata !722) #10, !dbg !3469
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3470
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1827, metadata !722) #10, !dbg !3471
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1829, metadata !722) #10, !dbg !3472
  %6 = load i32, i32* %5, align 4, !dbg !3473, !tbaa !854
  %7 = or i32 %6, 67108864, !dbg !3474
  store i32 %7, i32* %5, align 4, !dbg !3474, !tbaa !854
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3360, metadata !984) #10, !dbg !3464
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3475
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3476
  ret i8* %8, !dbg !3477
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3478 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3233, metadata !3239), !dbg !3484
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3480, metadata !722), !dbg !3486
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3481, metadata !722), !dbg !3487
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3482, metadata !722), !dbg !3488
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3489
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3238, metadata !722) #10, !dbg !3490
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3491
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3491
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3233, metadata !722) #10, !dbg !3484
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3233, metadata !3249) #10, !dbg !3484
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3484
  %9 = icmp eq i32 %1, 10, !dbg !3492
  br i1 %9, label %10, label %11, !dbg !3493

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3494, !noalias !3495
  unreachable, !dbg !3494

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3233, metadata !3249) #10, !dbg !3484
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3498
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3499
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3500
  store i32 %1, i32* %13, align 8, !dbg !3500
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3500
  %15 = bitcast i32* %14 to i8*, !dbg !3500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3500
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3483, metadata !984), !dbg !3501
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1823, metadata !722), !dbg !3502
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1824, metadata !722), !dbg !3504
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1825, metadata !722), !dbg !3505
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1826, metadata !722), !dbg !3506
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3507
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1827, metadata !722), !dbg !3508
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1829, metadata !722), !dbg !3509
  %17 = load i32, i32* %16, align 4, !dbg !3510, !tbaa !854
  %18 = or i32 %17, 67108864, !dbg !3511
  store i32 %18, i32* %16, align 4, !dbg !3511, !tbaa !854
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3483, metadata !984), !dbg !3501
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3512
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3513
  ret i8* %19, !dbg !3514
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3515 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3519, metadata !722), !dbg !3523
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3520, metadata !722), !dbg !3524
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3521, metadata !722), !dbg !3525
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3522, metadata !722), !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3527, metadata !722) #10, !dbg !3537
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3532, metadata !722) #10, !dbg !3539
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3533, metadata !722) #10, !dbg !3540
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3534, metadata !722) #10, !dbg !3541
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3535, metadata !722) #10, !dbg !3542
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3543
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3544, !tbaa.struct !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3536, metadata !984) #10, !dbg !3545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1873, metadata !722) #10, !dbg !3546
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1874, metadata !722) #10, !dbg !3548
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1875, metadata !722) #10, !dbg !3549
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1873, metadata !722) #10, !dbg !3546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1873, metadata !722) #10, !dbg !3546
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3550
  store i32 10, i32* %7, align 8, !dbg !3551, !tbaa !1803
  %8 = icmp ne i8* %1, null, !dbg !3552
  %9 = icmp ne i8* %2, null, !dbg !3553
  %10 = and i1 %8, %9, !dbg !3554
  br i1 %10, label %12, label %11, !dbg !3554

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3555
  unreachable, !dbg !3555

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3556
  store i8* %1, i8** %13, align 8, !dbg !3557, !tbaa !1892
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3558
  store i8* %2, i8** %14, align 8, !dbg !3559, !tbaa !1895
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3536, metadata !984) #10, !dbg !3545
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3560
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3561
  ret i8* %15, !dbg !3562
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3528 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3527, metadata !722), !dbg !3563
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3532, metadata !722), !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3533, metadata !722), !dbg !3565
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3534, metadata !722), !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3535, metadata !722), !dbg !3567
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3568
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3568
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3569, !tbaa.struct !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3536, metadata !984), !dbg !3570
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1873, metadata !722) #10, !dbg !3571
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1874, metadata !722) #10, !dbg !3573
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1875, metadata !722) #10, !dbg !3574
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1873, metadata !722) #10, !dbg !3571
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1873, metadata !722) #10, !dbg !3571
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3575
  store i32 10, i32* %8, align 8, !dbg !3576, !tbaa !1803
  %9 = icmp ne i8* %1, null, !dbg !3577
  %10 = icmp ne i8* %2, null, !dbg !3578
  %11 = and i1 %9, %10, !dbg !3579
  br i1 %11, label %13, label %12, !dbg !3579

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3580
  unreachable, !dbg !3580

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3581
  store i8* %1, i8** %14, align 8, !dbg !3582, !tbaa !1892
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3583
  store i8* %2, i8** %15, align 8, !dbg !3584, !tbaa !1895
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3536, metadata !984), !dbg !3570
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3585
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3586
  ret i8* %16, !dbg !3587
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3588 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3592, metadata !722), !dbg !3595
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3593, metadata !722), !dbg !3596
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3594, metadata !722), !dbg !3597
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3519, metadata !722) #10, !dbg !3598
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3520, metadata !722) #10, !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3521, metadata !722) #10, !dbg !3601
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3522, metadata !722) #10, !dbg !3602
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3527, metadata !722) #10, !dbg !3603
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3532, metadata !722) #10, !dbg !3605
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3533, metadata !722) #10, !dbg !3606
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3534, metadata !722) #10, !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3535, metadata !722) #10, !dbg !3608
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3609
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3610, !tbaa.struct !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3536, metadata !984) #10, !dbg !3611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1873, metadata !722) #10, !dbg !3612
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1874, metadata !722) #10, !dbg !3614
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1875, metadata !722) #10, !dbg !3615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1873, metadata !722) #10, !dbg !3612
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1873, metadata !722) #10, !dbg !3612
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3616
  store i32 10, i32* %6, align 8, !dbg !3617, !tbaa !1803
  %7 = icmp ne i8* %0, null, !dbg !3618
  %8 = icmp ne i8* %1, null, !dbg !3619
  %9 = and i1 %7, %8, !dbg !3620
  br i1 %9, label %11, label %10, !dbg !3620

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3621
  unreachable, !dbg !3621

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3622
  store i8* %0, i8** %12, align 8, !dbg !3623, !tbaa !1892
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3624
  store i8* %1, i8** %13, align 8, !dbg !3625, !tbaa !1895
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3536, metadata !984) #10, !dbg !3611
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3626
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3627
  ret i8* %14, !dbg !3628
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3629 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3633, metadata !722), !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3634, metadata !722), !dbg !3638
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3635, metadata !722), !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3636, metadata !722), !dbg !3640
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3527, metadata !722) #10, !dbg !3641
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3532, metadata !722) #10, !dbg !3643
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3533, metadata !722) #10, !dbg !3644
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3534, metadata !722) #10, !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3535, metadata !722) #10, !dbg !3646
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3647
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3648, !tbaa.struct !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3536, metadata !984) #10, !dbg !3649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1873, metadata !722) #10, !dbg !3650
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1874, metadata !722) #10, !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1875, metadata !722) #10, !dbg !3653
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1873, metadata !722) #10, !dbg !3650
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1873, metadata !722) #10, !dbg !3650
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3654
  store i32 10, i32* %7, align 8, !dbg !3655, !tbaa !1803
  %8 = icmp ne i8* %0, null, !dbg !3656
  %9 = icmp ne i8* %1, null, !dbg !3657
  %10 = and i1 %8, %9, !dbg !3658
  br i1 %10, label %12, label %11, !dbg !3658

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3659
  unreachable, !dbg !3659

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3660
  store i8* %0, i8** %13, align 8, !dbg !3661, !tbaa !1892
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3662
  store i8* %1, i8** %14, align 8, !dbg !3663, !tbaa !1895
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3536, metadata !984) #10, !dbg !3649
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3664
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3665
  ret i8* %15, !dbg !3666
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3667 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3671, metadata !722), !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3672, metadata !722), !dbg !3675
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3673, metadata !722), !dbg !3676
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3677
  ret i8* %4, !dbg !3678
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3679 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3683, metadata !722), !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3684, metadata !722), !dbg !3686
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3671, metadata !722) #10, !dbg !3687
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3672, metadata !722) #10, !dbg !3689
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3673, metadata !722) #10, !dbg !3690
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3691
  ret i8* %3, !dbg !3692
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3693 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3697, metadata !722), !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3698, metadata !722), !dbg !3700
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3671, metadata !722) #10, !dbg !3701
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3672, metadata !722) #10, !dbg !3703
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3673, metadata !722) #10, !dbg !3704
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3705
  ret i8* %3, !dbg !3706
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3707 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3711, metadata !722), !dbg !3712
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3697, metadata !722) #10, !dbg !3713
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3698, metadata !722) #10, !dbg !3715
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3671, metadata !722) #10, !dbg !3716
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3672, metadata !722) #10, !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3673, metadata !722) #10, !dbg !3719
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3720
  ret i8* %2, !dbg !3721
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3722 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3767, metadata !722), !dbg !3773
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3768, metadata !722), !dbg !3774
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3769, metadata !722), !dbg !3775
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3770, metadata !722), !dbg !3776
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3771, metadata !722), !dbg !3777
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3772, metadata !722), !dbg !3778
  %7 = icmp eq i8* %1, null, !dbg !3779
  br i1 %7, label %10, label %8, !dbg !3781

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3782
  br label %12, !dbg !3782

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3783
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #10, !dbg !3784
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3785
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.79, i64 0, i64 0), i32 5) #10, !dbg !3787
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3788
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
  ], !dbg !3789

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3790
  unreachable, !dbg !3790

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #10, !dbg !3792
  %20 = load i8*, i8** %4, align 8, !dbg !3792, !tbaa !730
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3793
  br label %146, !dbg !3795

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.81, i64 0, i64 0), i32 5) #10, !dbg !3796
  %24 = load i8*, i8** %4, align 8, !dbg !3796, !tbaa !730
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3796
  %26 = load i8*, i8** %25, align 8, !dbg !3796, !tbaa !730
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3797
  br label %146, !dbg !3798

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #10, !dbg !3799
  %30 = load i8*, i8** %4, align 8, !dbg !3799, !tbaa !730
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3799
  %32 = load i8*, i8** %31, align 8, !dbg !3799, !tbaa !730
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3799
  %34 = load i8*, i8** %33, align 8, !dbg !3799, !tbaa !730
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3800
  br label %146, !dbg !3801

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #10, !dbg !3802
  %38 = load i8*, i8** %4, align 8, !dbg !3802, !tbaa !730
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3802
  %40 = load i8*, i8** %39, align 8, !dbg !3802, !tbaa !730
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3802
  %42 = load i8*, i8** %41, align 8, !dbg !3802, !tbaa !730
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3802
  %44 = load i8*, i8** %43, align 8, !dbg !3802, !tbaa !730
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3803
  br label %146, !dbg !3804

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #10, !dbg !3805
  %48 = load i8*, i8** %4, align 8, !dbg !3805, !tbaa !730
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3805
  %50 = load i8*, i8** %49, align 8, !dbg !3805, !tbaa !730
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3805
  %52 = load i8*, i8** %51, align 8, !dbg !3805, !tbaa !730
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3805
  %54 = load i8*, i8** %53, align 8, !dbg !3805, !tbaa !730
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3805
  %56 = load i8*, i8** %55, align 8, !dbg !3805, !tbaa !730
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3806
  br label %146, !dbg !3807

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #10, !dbg !3808
  %60 = load i8*, i8** %4, align 8, !dbg !3808, !tbaa !730
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3808
  %62 = load i8*, i8** %61, align 8, !dbg !3808, !tbaa !730
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3808
  %64 = load i8*, i8** %63, align 8, !dbg !3808, !tbaa !730
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3808
  %66 = load i8*, i8** %65, align 8, !dbg !3808, !tbaa !730
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3808
  %68 = load i8*, i8** %67, align 8, !dbg !3808, !tbaa !730
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3808
  %70 = load i8*, i8** %69, align 8, !dbg !3808, !tbaa !730
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3809
  br label %146, !dbg !3810

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #10, !dbg !3811
  %74 = load i8*, i8** %4, align 8, !dbg !3811, !tbaa !730
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3811
  %76 = load i8*, i8** %75, align 8, !dbg !3811, !tbaa !730
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3811
  %78 = load i8*, i8** %77, align 8, !dbg !3811, !tbaa !730
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3811
  %80 = load i8*, i8** %79, align 8, !dbg !3811, !tbaa !730
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3811
  %82 = load i8*, i8** %81, align 8, !dbg !3811, !tbaa !730
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3811
  %84 = load i8*, i8** %83, align 8, !dbg !3811, !tbaa !730
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3811
  %86 = load i8*, i8** %85, align 8, !dbg !3811, !tbaa !730
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3812
  br label %146, !dbg !3813

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #10, !dbg !3814
  %90 = load i8*, i8** %4, align 8, !dbg !3814, !tbaa !730
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3814
  %92 = load i8*, i8** %91, align 8, !dbg !3814, !tbaa !730
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3814
  %94 = load i8*, i8** %93, align 8, !dbg !3814, !tbaa !730
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3814
  %96 = load i8*, i8** %95, align 8, !dbg !3814, !tbaa !730
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3814
  %98 = load i8*, i8** %97, align 8, !dbg !3814, !tbaa !730
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3814
  %100 = load i8*, i8** %99, align 8, !dbg !3814, !tbaa !730
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3814
  %102 = load i8*, i8** %101, align 8, !dbg !3814, !tbaa !730
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3814
  %104 = load i8*, i8** %103, align 8, !dbg !3814, !tbaa !730
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3815
  br label %146, !dbg !3816

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #10, !dbg !3817
  %108 = load i8*, i8** %4, align 8, !dbg !3817, !tbaa !730
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3817
  %110 = load i8*, i8** %109, align 8, !dbg !3817, !tbaa !730
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3817
  %112 = load i8*, i8** %111, align 8, !dbg !3817, !tbaa !730
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3817
  %114 = load i8*, i8** %113, align 8, !dbg !3817, !tbaa !730
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3817
  %116 = load i8*, i8** %115, align 8, !dbg !3817, !tbaa !730
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3817
  %118 = load i8*, i8** %117, align 8, !dbg !3817, !tbaa !730
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3817
  %120 = load i8*, i8** %119, align 8, !dbg !3817, !tbaa !730
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3817
  %122 = load i8*, i8** %121, align 8, !dbg !3817, !tbaa !730
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3817
  %124 = load i8*, i8** %123, align 8, !dbg !3817, !tbaa !730
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3818
  br label %146, !dbg !3819

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #10, !dbg !3820
  %128 = load i8*, i8** %4, align 8, !dbg !3820, !tbaa !730
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3820
  %130 = load i8*, i8** %129, align 8, !dbg !3820, !tbaa !730
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3820
  %132 = load i8*, i8** %131, align 8, !dbg !3820, !tbaa !730
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3820
  %134 = load i8*, i8** %133, align 8, !dbg !3820, !tbaa !730
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3820
  %136 = load i8*, i8** %135, align 8, !dbg !3820, !tbaa !730
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3820
  %138 = load i8*, i8** %137, align 8, !dbg !3820, !tbaa !730
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3820
  %140 = load i8*, i8** %139, align 8, !dbg !3820, !tbaa !730
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3820
  %142 = load i8*, i8** %141, align 8, !dbg !3820, !tbaa !730
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3820
  %144 = load i8*, i8** %143, align 8, !dbg !3820, !tbaa !730
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3821
  br label %146, !dbg !3822

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3823
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3824 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3828, metadata !722), !dbg !3834
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3829, metadata !722), !dbg !3835
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3830, metadata !722), !dbg !3836
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3831, metadata !722), !dbg !3837
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3832, metadata !722), !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3833, metadata !722), !dbg !3839
  br label %6, !dbg !3840

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3833, metadata !722), !dbg !3839
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3842
  %9 = load i8*, i8** %8, align 8, !dbg !3842, !tbaa !730
  %10 = icmp eq i8* %9, null, !dbg !3845
  %11 = add i64 %7, 1, !dbg !3847
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3833, metadata !722), !dbg !3839
  br i1 %10, label %12, label %6, !dbg !3845, !llvm.loop !3849

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3852
  ret void, !dbg !3853
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3854 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3865, metadata !722), !dbg !3873
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3866, metadata !722), !dbg !3874
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3867, metadata !722), !dbg !3875
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3868, metadata !722), !dbg !3876
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3869, metadata !722), !dbg !3877
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3878
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3878
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3871, metadata !722), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3870, metadata !722), !dbg !3880
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3881
  %12 = icmp ult i32 %11, 41, !dbg !3881
  br i1 %12, label %13, label %18, !dbg !3881

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3885
  %15 = sext i32 %11 to i64, !dbg !3885
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3885
  %17 = add i32 %11, 8, !dbg !3885
  store i32 %17, i32* %8, align 8, !dbg !3885
  br label %21, !dbg !3885

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3887
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3887
  store i8* %20, i8** %10, align 8, !dbg !3887
  br label %21, !dbg !3887

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3881
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3889
  %25 = load i8*, i8** %24, align 8, !dbg !3889
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3891
  store i8* %25, i8** %26, align 16, !dbg !3892, !tbaa !730
  %27 = icmp eq i8* %25, null, !dbg !3893
  br i1 %27, label %30, label %28, !dbg !3894

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %29 = icmp ult i32 %22, 41, !dbg !3881
  br i1 %29, label %35, label %32, !dbg !3881

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3896
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3897
  ret void, !dbg !3897

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3887
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3887
  store i8* %34, i8** %10, align 8, !dbg !3887
  br label %40, !dbg !3887

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3885
  %37 = sext i32 %22 to i64, !dbg !3885
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3885
  %39 = add i32 %22, 8, !dbg !3885
  store i32 %39, i32* %8, align 8, !dbg !3885
  br label %40, !dbg !3885

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3881
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3889
  %44 = load i8*, i8** %43, align 8, !dbg !3889
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3891
  store i8* %44, i8** %45, align 8, !dbg !3892, !tbaa !730
  %46 = icmp eq i8* %44, null, !dbg !3893
  br i1 %46, label %30, label %47, !dbg !3894

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %48 = icmp ult i32 %41, 41, !dbg !3881
  br i1 %48, label %52, label %49, !dbg !3881

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3887
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3887
  store i8* %51, i8** %10, align 8, !dbg !3887
  br label %57, !dbg !3887

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3885
  %54 = sext i32 %41 to i64, !dbg !3885
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3885
  %56 = add i32 %41, 8, !dbg !3885
  store i32 %56, i32* %8, align 8, !dbg !3885
  br label %57, !dbg !3885

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3881
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3889
  %61 = load i8*, i8** %60, align 8, !dbg !3889
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3891
  store i8* %61, i8** %62, align 16, !dbg !3892, !tbaa !730
  %63 = icmp eq i8* %61, null, !dbg !3893
  br i1 %63, label %30, label %64, !dbg !3894

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %65 = icmp ult i32 %58, 41, !dbg !3881
  br i1 %65, label %69, label %66, !dbg !3881

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3887
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3887
  store i8* %68, i8** %10, align 8, !dbg !3887
  br label %74, !dbg !3887

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3885
  %71 = sext i32 %58 to i64, !dbg !3885
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3885
  %73 = add i32 %58, 8, !dbg !3885
  store i32 %73, i32* %8, align 8, !dbg !3885
  br label %74, !dbg !3885

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3881
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3889
  %78 = load i8*, i8** %77, align 8, !dbg !3889
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3891
  store i8* %78, i8** %79, align 8, !dbg !3892, !tbaa !730
  %80 = icmp eq i8* %78, null, !dbg !3893
  br i1 %80, label %30, label %81, !dbg !3894

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %82 = icmp ult i32 %75, 41, !dbg !3881
  br i1 %82, label %86, label %83, !dbg !3881

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3887
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3887
  store i8* %85, i8** %10, align 8, !dbg !3887
  br label %91, !dbg !3887

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3885
  %88 = sext i32 %75 to i64, !dbg !3885
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3885
  %90 = add i32 %75, 8, !dbg !3885
  store i32 %90, i32* %8, align 8, !dbg !3885
  br label %91, !dbg !3885

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3881
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3889
  %95 = load i8*, i8** %94, align 8, !dbg !3889
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3891
  store i8* %95, i8** %96, align 16, !dbg !3892, !tbaa !730
  %97 = icmp eq i8* %95, null, !dbg !3893
  br i1 %97, label %30, label %98, !dbg !3894

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %99 = icmp ult i32 %92, 41, !dbg !3881
  br i1 %99, label %103, label %100, !dbg !3881

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3887
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3887
  store i8* %102, i8** %10, align 8, !dbg !3887
  br label %108, !dbg !3887

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3885
  %105 = sext i32 %92 to i64, !dbg !3885
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3885
  %107 = add i32 %92, 8, !dbg !3885
  store i32 %107, i32* %8, align 8, !dbg !3885
  br label %108, !dbg !3885

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3889
  %111 = load i8*, i8** %110, align 8, !dbg !3889
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3891
  store i8* %111, i8** %112, align 8, !dbg !3892, !tbaa !730
  %113 = icmp eq i8* %111, null, !dbg !3893
  br i1 %113, label %30, label %114, !dbg !3894

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %115 = load i8*, i8** %10, align 8, !dbg !3887
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3887
  store i8* %116, i8** %10, align 8, !dbg !3887
  %117 = bitcast i8* %115 to i8**, !dbg !3889
  %118 = load i8*, i8** %117, align 8, !dbg !3889
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3891
  store i8* %118, i8** %119, align 16, !dbg !3892, !tbaa !730
  %120 = icmp eq i8* %118, null, !dbg !3893
  br i1 %120, label %30, label %121, !dbg !3894

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %122 = load i8*, i8** %10, align 8, !dbg !3887
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3887
  store i8* %123, i8** %10, align 8, !dbg !3887
  %124 = bitcast i8* %122 to i8**, !dbg !3889
  %125 = load i8*, i8** %124, align 8, !dbg !3889
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3891
  store i8* %125, i8** %126, align 8, !dbg !3892, !tbaa !730
  %127 = icmp eq i8* %125, null, !dbg !3893
  br i1 %127, label %30, label %128, !dbg !3894

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %129 = load i8*, i8** %10, align 8, !dbg !3887
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3887
  store i8* %130, i8** %10, align 8, !dbg !3887
  %131 = bitcast i8* %129 to i8**, !dbg !3889
  %132 = load i8*, i8** %131, align 8, !dbg !3889
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3891
  store i8* %132, i8** %133, align 16, !dbg !3892, !tbaa !730
  %134 = icmp eq i8* %132, null, !dbg !3893
  br i1 %134, label %30, label %135, !dbg !3894

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %136 = load i8*, i8** %10, align 8, !dbg !3887
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3887
  store i8* %137, i8** %10, align 8, !dbg !3887
  %138 = bitcast i8* %136 to i8**, !dbg !3889
  %139 = load i8*, i8** %138, align 8, !dbg !3889
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3891
  store i8* %139, i8** %140, align 8, !dbg !3892, !tbaa !730
  %141 = icmp eq i8* %139, null, !dbg !3893
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3870, metadata !722), !dbg !3880
  %142 = select i1 %141, i64 9, i64 10, !dbg !3894
  br label %30, !dbg !3894
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3898 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3902, metadata !722), !dbg !3912
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3903, metadata !722), !dbg !3913
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3904, metadata !722), !dbg !3914
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3905, metadata !722), !dbg !3915
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3916
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3916
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3906, metadata !722), !dbg !3917
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3918
  call void @llvm.va_start(i8* nonnull %6), !dbg !3918
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3919
  call void @llvm.va_end(i8* nonnull %6), !dbg !3920
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3921
  ret void, !dbg !3921
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3922 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #10, !dbg !3923
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.93, i64 0, i64 0)) #10, !dbg !3924
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3926
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.94, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.95, i64 0, i64 0)) #10, !dbg !3927
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3928
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3928, !tbaa !730
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3929
  ret void, !dbg !3930
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3931 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3935, metadata !722), !dbg !3937
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3936, metadata !722), !dbg !3938
  %3 = udiv i64 9223372036854775807, %1, !dbg !3939
  %4 = icmp ult i64 %3, %0, !dbg !3939
  br i1 %4, label %5, label %6, !dbg !3941

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3942
  unreachable, !dbg !3942

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3943
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3944, metadata !722) #10, !dbg !3951
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3953
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3950, metadata !722) #10, !dbg !3954
  %9 = icmp eq i8* %8, null, !dbg !3955
  %10 = icmp ne i64 %7, 0, !dbg !3957
  %11 = and i1 %10, %9, !dbg !3959
  br i1 %11, label %12, label %13, !dbg !3959

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3960
  unreachable, !dbg !3960

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3961
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3945 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3944, metadata !722), !dbg !3962
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3963
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3950, metadata !722), !dbg !3964
  %3 = icmp eq i8* %2, null, !dbg !3965
  %4 = icmp ne i64 %0, 0, !dbg !3966
  %5 = and i1 %4, %3, !dbg !3967
  br i1 %5, label %6, label %7, !dbg !3967

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3968
  unreachable, !dbg !3968

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3969
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3970 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3974, metadata !722), !dbg !3977
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3975, metadata !722), !dbg !3978
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3976, metadata !722), !dbg !3979
  %4 = udiv i64 9223372036854775807, %2, !dbg !3980
  %5 = icmp ult i64 %4, %1, !dbg !3980
  br i1 %5, label %6, label %7, !dbg !3982

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3983
  unreachable, !dbg !3983

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3984
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3985, metadata !722) #10, !dbg !3991
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3990, metadata !722) #10, !dbg !3993
  %9 = icmp eq i64 %8, 0, !dbg !3994
  %10 = icmp ne i8* %0, null, !dbg !3996
  %11 = and i1 %10, %9, !dbg !3998
  br i1 %11, label %12, label %13, !dbg !3998

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3999
  br label %19, !dbg !4001

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4002
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3985, metadata !722) #10, !dbg !3991
  %15 = icmp eq i8* %14, null, !dbg !4003
  %16 = icmp ne i64 %8, 0, !dbg !4005
  %17 = and i1 %16, %15, !dbg !4007
  br i1 %17, label %18, label %19, !dbg !4007

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4008
  unreachable, !dbg !4008

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4009
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3986 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3985, metadata !722), !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3990, metadata !722), !dbg !4011
  %3 = icmp eq i64 %1, 0, !dbg !4012
  %4 = icmp ne i8* %0, null, !dbg !4013
  %5 = and i1 %4, %3, !dbg !4014
  br i1 %5, label %6, label %7, !dbg !4014

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4015
  br label %13, !dbg !4016

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4017
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3985, metadata !722), !dbg !4010
  %9 = icmp eq i8* %8, null, !dbg !4018
  %10 = icmp ne i64 %1, 0, !dbg !4019
  %11 = and i1 %10, %9, !dbg !4020
  br i1 %11, label %12, label %13, !dbg !4020

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4021
  unreachable, !dbg !4021

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4022
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !685 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !687, metadata !722), !dbg !4023
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !688, metadata !722), !dbg !4024
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !689, metadata !722), !dbg !4025
  %4 = load i64, i64* %1, align 8, !dbg !4026, !tbaa !928
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !690, metadata !722), !dbg !4027
  %5 = icmp eq i8* %0, null, !dbg !4028
  br i1 %5, label %6, label %13, !dbg !4030

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4031
  br i1 %7, label %8, label %17, !dbg !4034

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4035
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !690, metadata !722), !dbg !4027
  %10 = icmp ugt i64 %2, 128, !dbg !4037
  %11 = zext i1 %10 to i64, !dbg !4037
  %12 = add nuw nsw i64 %9, %11, !dbg !4038
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !690, metadata !722), !dbg !4027
  br label %17, !dbg !4039

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4040
  %15 = icmp ugt i64 %14, %4, !dbg !4043
  br i1 %15, label %20, label %16, !dbg !4044

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4045
  unreachable, !dbg !4045

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !690, metadata !722), !dbg !4027
  store i64 %18, i64* %1, align 8, !dbg !4046, !tbaa !928
  %19 = mul i64 %18, %2, !dbg !4047
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3985, metadata !722) #10, !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3990, metadata !722) #10, !dbg !4050
  br label %27, !dbg !4051

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4052
  %22 = add i64 %4, 1, !dbg !4053
  %23 = add i64 %22, %21, !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !690, metadata !722), !dbg !4027
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !690, metadata !722), !dbg !4027
  store i64 %23, i64* %1, align 8, !dbg !4046, !tbaa !928
  %24 = mul i64 %23, %2, !dbg !4047
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3985, metadata !722) #10, !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3990, metadata !722) #10, !dbg !4050
  %25 = icmp eq i64 %24, 0, !dbg !4055
  br i1 %25, label %26, label %27, !dbg !4051

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4056
  br label %34, !dbg !4057

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4058
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3985, metadata !722) #10, !dbg !4048
  %30 = icmp eq i8* %29, null, !dbg !4059
  %31 = icmp ne i64 %28, 0, !dbg !4060
  %32 = and i1 %31, %30, !dbg !4061
  br i1 %32, label %33, label %34, !dbg !4061

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4062
  unreachable, !dbg !4062

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4063
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4064 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4066, metadata !722), !dbg !4067
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3944, metadata !722) #10, !dbg !4068
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4070
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3950, metadata !722) #10, !dbg !4071
  %3 = icmp eq i8* %2, null, !dbg !4072
  %4 = icmp ne i64 %0, 0, !dbg !4073
  %5 = and i1 %4, %3, !dbg !4074
  br i1 %5, label %6, label %7, !dbg !4074

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4075
  unreachable, !dbg !4075

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4076
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4077 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4081, metadata !722), !dbg !4083
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4082, metadata !722), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !687, metadata !722) #10, !dbg !4085
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !688, metadata !722) #10, !dbg !4087
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !689, metadata !722) #10, !dbg !4088
  %3 = load i64, i64* %1, align 8, !dbg !4089, !tbaa !928
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !690, metadata !722) #10, !dbg !4090
  %4 = icmp eq i8* %0, null, !dbg !4091
  br i1 %4, label %5, label %8, !dbg !4092

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4093
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !690, metadata !722) #10, !dbg !4090
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !690, metadata !722) #10, !dbg !4090
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4094
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !690, metadata !722) #10, !dbg !4090
  store i64 %7, i64* %1, align 8, !dbg !4095, !tbaa !928
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3985, metadata !722) #10, !dbg !4096
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3990, metadata !722) #10, !dbg !4098
  br label %17, !dbg !4099

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4100
  br i1 %9, label %11, label %10, !dbg !4101

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4102
  unreachable, !dbg !4102

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4103
  %13 = add i64 %3, 1, !dbg !4104
  %14 = add i64 %13, %12, !dbg !4105
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !690, metadata !722) #10, !dbg !4090
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !690, metadata !722) #10, !dbg !4090
  store i64 %14, i64* %1, align 8, !dbg !4095, !tbaa !928
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3985, metadata !722) #10, !dbg !4096
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3990, metadata !722) #10, !dbg !4098
  %15 = icmp eq i64 %14, 0, !dbg !4106
  br i1 %15, label %16, label %17, !dbg !4099

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4107
  br label %24, !dbg !4108

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4109
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3985, metadata !722) #10, !dbg !4096
  %20 = icmp eq i8* %19, null, !dbg !4110
  %21 = icmp ne i64 %18, 0, !dbg !4111
  %22 = and i1 %21, %20, !dbg !4112
  br i1 %22, label %23, label %24, !dbg !4112

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4113
  unreachable, !dbg !4113

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4114
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4115 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4117, metadata !722), !dbg !4118
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3944, metadata !722) #10, !dbg !4119
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3950, metadata !722) #10, !dbg !4122
  %3 = icmp eq i8* %2, null, !dbg !4123
  %4 = icmp ne i64 %0, 0, !dbg !4124
  %5 = and i1 %4, %3, !dbg !4125
  br i1 %5, label %6, label %7, !dbg !4125

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4126
  unreachable, !dbg !4126

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4127
  ret i8* %2, !dbg !4128
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4129 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4131, metadata !722), !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4132, metadata !722), !dbg !4135
  %3 = udiv i64 9223372036854775807, %1, !dbg !4136
  %4 = icmp ult i64 %3, %0, !dbg !4136
  br i1 %4, label %8, label %5, !dbg !4138

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4139
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4133, metadata !722), !dbg !4141
  %7 = icmp eq i8* %6, null, !dbg !4142
  br i1 %7, label %8, label %9, !dbg !4143

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4145
  unreachable, !dbg !4145

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4146
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4147 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4151, metadata !722), !dbg !4153
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4152, metadata !722), !dbg !4154
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3944, metadata !722) #10, !dbg !4155
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4157
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3950, metadata !722) #10, !dbg !4158
  %4 = icmp eq i8* %3, null, !dbg !4159
  %5 = icmp ne i64 %1, 0, !dbg !4160
  %6 = and i1 %5, %4, !dbg !4161
  br i1 %6, label %7, label %8, !dbg !4161

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4162
  unreachable, !dbg !4162

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4163
  ret i8* %3, !dbg !4164
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4165 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4167, metadata !722), !dbg !4168
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4169
  %3 = add i64 %2, 1, !dbg !4170
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4151, metadata !722) #10, !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4152, metadata !722) #10, !dbg !4174
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3944, metadata !722) #10, !dbg !4175
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4177
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3950, metadata !722) #10, !dbg !4178
  %5 = icmp eq i8* %4, null, !dbg !4179
  %6 = icmp ne i64 %3, 0, !dbg !4180
  %7 = and i1 %6, %5, !dbg !4181
  br i1 %7, label %8, label %9, !dbg !4181

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4182
  unreachable, !dbg !4182

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4183
  ret i8* %4, !dbg !4184
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4185 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4187, !tbaa !854
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.106, i64 0, i64 0), i32 5) #10, !dbg !4188
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %2) #10, !dbg !4189
  tail call void @abort() #14, !dbg !4191
  unreachable, !dbg !4191
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4192 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4195, metadata !722), !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4196, metadata !722), !dbg !4199
  %3 = tail call noalias i8* @__strndup(i8* %0, i64 %1) #10, !dbg !4200
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4197, metadata !722), !dbg !4201
  %4 = icmp eq i8* %3, null, !dbg !4202
  br i1 %4, label %5, label %6, !dbg !4204

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4205
  unreachable, !dbg !4205

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !4206
}

; Function Attrs: nounwind
declare noalias i8* @__strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4207 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4210, metadata !722), !dbg !4216
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4211, metadata !722), !dbg !4217
  %3 = icmp eq i64 %0, 0, !dbg !4218
  %4 = icmp eq i64 %1, 0, !dbg !4219
  %5 = or i1 %3, %4, !dbg !4221
  br i1 %5, label %12, label %6, !dbg !4221

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4213, metadata !722), !dbg !4223
  %8 = udiv i64 %7, %1, !dbg !4224
  %9 = icmp eq i64 %8, %0, !dbg !4226
  br i1 %9, label %12, label %10, !dbg !4227

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4228
  store i32 12, i32* %11, align 4, !dbg !4230, !tbaa !854
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4210, metadata !722), !dbg !4216
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4211, metadata !722), !dbg !4217
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4231
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4212, metadata !722), !dbg !4232
  br label %16, !dbg !4233

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4234
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4235 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4280, metadata !722), !dbg !4284
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4281, metadata !722), !dbg !4285
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4283, metadata !722), !dbg !4286
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4287
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4282, metadata !722), !dbg !4288
  %3 = icmp slt i32 %2, 0, !dbg !4289
  br i1 %3, label %4, label %6, !dbg !4291

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4292
  br label %24, !dbg !4293

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4294
  %8 = icmp eq i32 %7, 0, !dbg !4294
  br i1 %8, label %13, label %9, !dbg !4296

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4297
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4299
  %12 = icmp eq i64 %11, -1, !dbg !4301
  br i1 %12, label %16, label %13, !dbg !4302

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4303
  %15 = icmp eq i32 %14, 0, !dbg !4303
  br i1 %15, label %16, label %18, !dbg !4304

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4281, metadata !722), !dbg !4285
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4306
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4283, metadata !722), !dbg !4286
  br label %24, !dbg !4307

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4308
  %20 = load i32, i32* %19, align 4, !dbg !4308, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4281, metadata !722), !dbg !4285
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4281, metadata !722), !dbg !4285
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4306
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4283, metadata !722), !dbg !4286
  %22 = icmp eq i32 %20, 0, !dbg !4309
  br i1 %22, label %24, label %23, !dbg !4307

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4311, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4283, metadata !722), !dbg !4286
  br label %24, !dbg !4313

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4314
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4315 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4360, metadata !722), !dbg !4361
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4362
  br i1 %2, label %6, label %3, !dbg !4364

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4365
  %5 = icmp eq i32 %4, 0, !dbg !4365
  br i1 %5, label %6, label %8, !dbg !4367

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4369
  br label %17, !dbg !4370

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4371, metadata !722) #10, !dbg !4376
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4378
  %10 = load i32, i32* %9, align 8, !dbg !4378, !tbaa !1503
  %11 = and i32 %10, 256, !dbg !4380
  %12 = icmp eq i32 %11, 0, !dbg !4380
  br i1 %12, label %15, label %13, !dbg !4381

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4382
  br label %15, !dbg !4382

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4383
  br label %17, !dbg !4384

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4385
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4386 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4431, metadata !722), !dbg !4437
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4432, metadata !722), !dbg !4438
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4433, metadata !722), !dbg !4439
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4440
  %5 = load i8*, i8** %4, align 8, !dbg !4440, !tbaa !959
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4441
  %7 = load i8*, i8** %6, align 8, !dbg !4441, !tbaa !956
  %8 = icmp eq i8* %5, %7, !dbg !4442
  br i1 %8, label %9, label %28, !dbg !4443

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4444
  %11 = load i8*, i8** %10, align 8, !dbg !4444, !tbaa !1084
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4446
  %13 = load i8*, i8** %12, align 8, !dbg !4446, !tbaa !4447
  %14 = icmp eq i8* %11, %13, !dbg !4448
  br i1 %14, label %15, label %28, !dbg !4449

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4450
  %17 = load i8*, i8** %16, align 8, !dbg !4450, !tbaa !4451
  %18 = icmp eq i8* %17, null, !dbg !4452
  br i1 %18, label %19, label %28, !dbg !4453

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4455
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4456
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4434, metadata !722), !dbg !4458
  %22 = icmp eq i64 %21, -1, !dbg !4459
  br i1 %22, label %30, label %23, !dbg !4461

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4462
  %25 = load i32, i32* %24, align 8, !dbg !4463, !tbaa !1503
  %26 = and i32 %25, -17, !dbg !4463
  store i32 %26, i32* %24, align 8, !dbg !4463, !tbaa !1503
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4464
  store i64 %21, i64* %27, align 8, !dbg !4465, !tbaa !4466
  br label %30, !dbg !4467

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4468
  br label %30, !dbg !4469

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4470
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4471 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4488, metadata !722), !dbg !4497
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4489, metadata !722), !dbg !4498
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4490, metadata !722), !dbg !4499
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4491, metadata !722), !dbg !4500
  %6 = bitcast i32* %5 to i8*, !dbg !4501
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4501
  %7 = icmp eq i32* %0, null, !dbg !4502
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4488, metadata !722), !dbg !4497
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4504
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4488, metadata !722), !dbg !4497
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4505
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4492, metadata !722), !dbg !4506
  %10 = icmp ugt i64 %9, -3, !dbg !4507
  %11 = icmp ne i64 %2, 0, !dbg !4508
  %12 = and i1 %11, %10, !dbg !4510
  br i1 %12, label %13, label %18, !dbg !4510

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4511
  br i1 %14, label %18, label %15, !dbg !4513

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4515, !tbaa !963
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4494, metadata !722), !dbg !4516
  %17 = zext i8 %16 to i32, !dbg !4517
  store i32 %17, i32* %8, align 4, !dbg !4518, !tbaa !854
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4519
  ret i64 %19, !dbg !4519
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4520 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4565, metadata !722), !dbg !4570
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4571
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4572, metadata !722), !dbg !4575
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4577
  %4 = load i32, i32* %3, align 8, !dbg !4577, !tbaa !1503
  %5 = and i32 %4, 32, !dbg !4577
  %6 = icmp eq i32 %5, 0, !dbg !4578
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4579
  %8 = icmp ne i32 %7, 0, !dbg !4580
  br i1 %6, label %9, label %19, !dbg !4581

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4583
  %11 = icmp ne i64 %2, 0, !dbg !4583
  %12 = or i1 %11, %10, !dbg !4583
  %13 = sext i1 %8 to i32, !dbg !4583
  br i1 %12, label %22, label %14, !dbg !4583

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4585
  %16 = load i32, i32* %15, align 4, !dbg !4585, !tbaa !854
  %17 = icmp ne i32 %16, 9, !dbg !4587
  %18 = sext i1 %17 to i32, !dbg !4587
  br label %22, !dbg !4587

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4589

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4591
  store i32 0, i32* %21, align 4, !dbg !4593, !tbaa !854
  br label %22, !dbg !4591

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4594
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4595 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4600, metadata !722), !dbg !4620
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4601, metadata !722), !dbg !4621
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4622
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4602, metadata !722), !dbg !4623
  %3 = icmp eq i8* %2, null, !dbg !4624
  br i1 %3, label %15, label %4, !dbg !4625

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4610, metadata !722), !dbg !4626
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4611, metadata !722), !dbg !4627
  %5 = load i8, i8* %2, align 1, !dbg !4628, !tbaa !963
  %6 = icmp eq i8 %5, 67, !dbg !4630
  br i1 %6, label %7, label %11, !dbg !4633

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4635
  %9 = load i8, i8* %8, align 1, !dbg !4635, !tbaa !963
  %10 = icmp eq i8 %9, 0, !dbg !4638
  br i1 %10, label %14, label %11, !dbg !4640

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4616, metadata !722), !dbg !4642
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.124, i64 0, i64 0)) #10, !dbg !4643
  %13 = icmp eq i32 %12, 0, !dbg !4645
  br i1 %13, label %14, label %15, !dbg !4647

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4601, metadata !722), !dbg !4621
  br label %15, !dbg !4649

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4650
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4651 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4663, metadata !722), !dbg !4737
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4730, metadata !722), !dbg !4739
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4740
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4655, metadata !722), !dbg !4741
  %4 = icmp eq i8* %3, null, !dbg !4742
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), i8* %3, !dbg !4744
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4655, metadata !722), !dbg !4741
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4745, !tbaa !730
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4677, metadata !722) #10, !dbg !4746
  %7 = icmp eq i8* %6, null, !dbg !4747
  br i1 %7, label %8, label %127, !dbg !4748

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.128, i64 0, i64 0)) #10, !dbg !4749
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4678, metadata !722) #10, !dbg !4750
  %10 = icmp eq i8* %9, null, !dbg !4751
  br i1 %10, label %14, label %11, !dbg !4753

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4754, !tbaa !963
  %13 = icmp eq i8 %12, 0, !dbg !4756
  br i1 %13, label %14, label %15, !dbg !4757

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4759

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.129, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4678, metadata !722) #10, !dbg !4750
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4760
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4681, metadata !722) #10, !dbg !4761
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4683, metadata !722) #10, !dbg !4762
  %18 = icmp eq i64 %17, 0, !dbg !4763
  br i1 %18, label %24, label %19, !dbg !4764

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4765
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4765
  %22 = load i8, i8* %21, align 1, !dbg !4765, !tbaa !963
  %23 = icmp ne i8 %22, 47, !dbg !4767
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4768
  %27 = add i64 %17, 14, !dbg !4769
  %28 = add i64 %27, %26, !dbg !4770
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4771
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4680, metadata !722) #10, !dbg !4772
  %30 = icmp eq i8* %29, null, !dbg !4773
  br i1 %30, label %125, label %31, !dbg !4773

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4774
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4777

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4778, !tbaa !963
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4780
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.130, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4781
  br label %37, !dbg !4782

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4780
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.130, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4781
  br label %37, !dbg !4782

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4783
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4685, metadata !722) #10, !dbg !4784
  %39 = icmp slt i32 %38, 0, !dbg !4785
  br i1 %39, label %123, label %40, !dbg !4786

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.131, i64 0, i64 0)) #10, !dbg !4787
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4686, metadata !722) #10, !dbg !4788
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4789
  br i1 %42, label %48, label %43, !dbg !4790

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4791

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4792
  br label %123, !dbg !4794

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4727, metadata !722) #10, !dbg !4791
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4728, metadata !722) #10, !dbg !4795
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4796
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4797
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4798, metadata !722) #10, !dbg !4803
  %53 = load i8*, i8** %46, align 8, !dbg !4805, !tbaa !956
  %54 = load i8*, i8** %47, align 8, !dbg !4805, !tbaa !959
  %55 = icmp ult i8* %53, %54, !dbg !4805
  br i1 %55, label %58, label %56, !dbg !4805, !prof !960

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4806
  br label %62, !dbg !4806

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4808
  store i8* %59, i8** %46, align 8, !dbg !4808, !tbaa !956
  %60 = load i8, i8* %53, align 1, !dbg !4808, !tbaa !963
  %61 = zext i8 %60 to i32, !dbg !4808
  br label %62, !dbg !4808

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4810
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4729, metadata !722) #10, !dbg !4812
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4813

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4814

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4798, metadata !722) #10, !dbg !4814
  %66 = load i8*, i8** %46, align 8, !dbg !4818, !tbaa !956
  %67 = load i8*, i8** %47, align 8, !dbg !4818, !tbaa !959
  %68 = icmp ult i8* %66, %67, !dbg !4818
  br i1 %68, label %71, label %69, !dbg !4818, !prof !960

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4819
  br label %75, !dbg !4819

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4820
  store i8* %72, i8** %46, align 8, !dbg !4820, !tbaa !956
  %73 = load i8, i8* %66, align 1, !dbg !4820, !tbaa !963
  %74 = zext i8 %73 to i32, !dbg !4820
  br label %75, !dbg !4820

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4821
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4729, metadata !722) #10, !dbg !4812
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4822, !llvm.loop !4824

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4827
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.132, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4828
  %80 = icmp slt i32 %79, 2, !dbg !4830
  br i1 %80, label %115, label %81, !dbg !4831

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4734, metadata !722) #10, !dbg !4833
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4834
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4735, metadata !722) #10, !dbg !4835
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4736, metadata !722) #10, !dbg !4836
  %84 = icmp eq i64 %51, 0, !dbg !4837
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4839

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4728, metadata !722) #10, !dbg !4795
  %89 = add i64 %86, 2, !dbg !4840
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4842
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4727, metadata !722) #10, !dbg !4791
  br label %95, !dbg !4843

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4844
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4728, metadata !722) #10, !dbg !4795
  %93 = add i64 %92, 1, !dbg !4846
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4847
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4727, metadata !722) #10, !dbg !4791
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4727, metadata !722) #10, !dbg !4791
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4728, metadata !722) #10, !dbg !4795
  %98 = icmp eq i8* %97, null, !dbg !4848
  br i1 %98, label %99, label %100, !dbg !4850

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4728, metadata !722) #10, !dbg !4795
  call void @free(i8* %52) #10, !dbg !4851
  br label %116, !dbg !4853

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4854
  %102 = xor i64 %83, -1, !dbg !4855
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4855
  %104 = xor i64 %82, -1, !dbg !4856
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4856
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4857, metadata !722) #10, !dbg !4866
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4865, metadata !722) #10, !dbg !4866
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4868
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4869
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4857, metadata !722) #10, !dbg !4870
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4865, metadata !722) #10, !dbg !4870
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4872
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4873
  br label %111, !dbg !4874

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4791

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4727, metadata !722) #10, !dbg !4791
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4728, metadata !722) #10, !dbg !4795
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4874
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4874
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4791

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4791

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4727, metadata !722) #10, !dbg !4791
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4728, metadata !722) #10, !dbg !4795
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4874
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4874
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4875
  %120 = icmp eq i64 %117, 0, !dbg !4876
  br i1 %120, label %123, label %121, !dbg !4878

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4879
  store i8 0, i8* %122, align 1, !dbg !4881, !tbaa !963
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4677, metadata !722) #10, !dbg !4746
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4677, metadata !722) #10, !dbg !4746
  call void @free(i8* %29) #10, !dbg !4882
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4677, metadata !722) #10, !dbg !4746
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4883, !tbaa !730
  br label %127, !dbg !4884

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4656, metadata !722), !dbg !4885
  %129 = load i8, i8* %128, align 1, !dbg !4886, !tbaa !963
  %130 = icmp eq i8 %129, 0, !dbg !4887
  br i1 %130, label %157, label %131, !dbg !4888

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4890

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4890
  %136 = icmp eq i32 %135, 0, !dbg !4891
  br i1 %136, label %143, label %137, !dbg !4892

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4893
  br i1 %138, label %139, label %147, !dbg !4895

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4896
  %141 = load i8, i8* %140, align 1, !dbg !4896, !tbaa !963
  %142 = icmp eq i8 %141, 0, !dbg !4898
  br i1 %142, label %143, label %147, !dbg !4899

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4901
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4903
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4904
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4655, metadata !722), !dbg !4741
  br label %157, !dbg !4905

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4906
  %149 = add i64 %148, 1, !dbg !4907
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4908
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4656, metadata !722), !dbg !4885
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4909
  %152 = add i64 %151, 1, !dbg !4910
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4911
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4656, metadata !722), !dbg !4885
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4656, metadata !722), !dbg !4885
  %154 = load i8, i8* %153, align 1, !dbg !4886, !tbaa !963
  %155 = icmp eq i8 %154, 0, !dbg !4887
  br i1 %155, label %156, label %132, !dbg !4888, !llvm.loop !4912

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4741

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4655, metadata !722), !dbg !4741
  %159 = load i8, i8* %158, align 1, !dbg !4915, !tbaa !963
  %160 = icmp eq i8 %159, 0, !dbg !4917
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), i8* %158, !dbg !4918
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4655, metadata !722), !dbg !4741
  ret i8* %161, !dbg !4919
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
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !87, !235, !241, !249, !670, !256, !263, !673, !316, !681, !692, !694, !696, !698, !700, !702, !704, !707, !709, !325}
!llvm.ident = !{!712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712, !712}
!llvm.module.flags = !{!713, !714, !715, !716}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 61, type: !73, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !42)
!3 = !DIFile(filename: "src/unexpand.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!20 = !{!21, !23, !24, !25, !30, !32, !34, !37, !39, !40, !41, !36}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !26, line: 136, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !28, line: 62, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 62, baseType: !29)
!31 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!42 = !{!43, !0}
!43 = !DIGlobalVariableExpression(var: !44)
!44 = distinct !DIGlobalVariable(name: "infomap", scope: !45, file: !46, line: 632, type: !70, isLocal: true, isDefinition: true)
!45 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !46, file: !46, line: 630, type: !47, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !49)
!46 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!47 = !DISubroutineType(types: !48)
!48 = !{null, !37}
!49 = !{!50, !51, !52, !59, !61, !62, !63, !66, !67, !69}
!50 = !DILocalVariable(name: "program", arg: 1, scope: !45, file: !46, line: 630, type: !37)
!51 = !DILocalVariable(name: "node", scope: !45, file: !46, line: 642, type: !37)
!52 = !DILocalVariable(name: "map_prog", scope: !45, file: !46, line: 643, type: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !45, file: !46, line: 632, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !55, file: !46, line: 632, baseType: !37, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !55, file: !46, line: 632, baseType: !37, size: 64, offset: 64)
!59 = !DILocalVariable(name: "__s1_len", scope: !60, file: !46, line: 645, type: !30)
!60 = distinct !DILexicalBlock(scope: !45, file: !46, line: 645, column: 33)
!61 = !DILocalVariable(name: "__s2_len", scope: !60, file: !46, line: 645, type: !30)
!62 = !DILocalVariable(name: "lc_messages", scope: !45, file: !46, line: 655, type: !37)
!63 = !DILocalVariable(name: "__s1_len", scope: !64, file: !46, line: 656, type: !30)
!64 = distinct !DILexicalBlock(scope: !65, file: !46, line: 656, column: 22)
!65 = distinct !DILexicalBlock(scope: !45, file: !46, line: 656, column: 7)
!66 = !DILocalVariable(name: "__s2_len", scope: !64, file: !46, line: 656, type: !30)
!67 = !DILocalVariable(name: "__s2", scope: !68, file: !46, line: 656, type: !34)
!68 = distinct !DILexicalBlock(scope: !64, file: !46, line: 656, column: 22)
!69 = !DILocalVariable(name: "__result", scope: !68, file: !46, line: 656, type: !39)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 896, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 7)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1536, elements: !83)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !76, line: 104, size: 256, elements: !77)
!76 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !{!78, !79, !80, !82}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !76, line: 106, baseType: !37, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !75, file: !76, line: 109, baseType: !39, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !75, file: !76, line: 110, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !76, line: 111, baseType: !39, size: 32, offset: 192)
!83 = !{!84}
!84 = !DISubrange(count: 6)
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !87, file: !88, line: 32, type: !224, isLocal: false, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !126, globals: !128)
!88 = !DIFile(filename: "src/expand-common.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!89 = !{!5, !90, !104, !113}
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !91, line: 32, size: 32, elements: !92)
!91 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!93 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!94 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!95 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!96 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!97 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!98 = !DIEnumerator(name: "c_quoting_style", value: 5)
!99 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!100 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!101 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!102 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!103 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 45, size: 32, elements: !106)
!105 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!107, !108, !109, !110, !111, !112}
!107 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!108 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!109 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!110 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!111 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!112 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !115, file: !114, line: 192, size: 32, elements: !124)
!114 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!115 = distinct !DISubprogram(name: "x2nrealloc", scope: !114, file: !114, line: 180, type: !116, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !119)
!116 = !DISubroutineType(types: !117)
!117 = !{!23, !23, !118, !30}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(name: "p", arg: 1, scope: !115, file: !114, line: 180, type: !23)
!121 = !DILocalVariable(name: "pn", arg: 2, scope: !115, file: !114, line: 180, type: !118)
!122 = !DILocalVariable(name: "s", arg: 3, scope: !115, file: !114, line: 180, type: !30)
!123 = !DILocalVariable(name: "n", scope: !115, file: !114, line: 182, type: !30)
!124 = !{!125}
!125 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!126 = !{!39, !40, !127, !24, !23, !25, !30, !32, !34, !37}
!127 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!128 = !{!85, !129, !131, !210, !212, !214, !216, !218, !220, !222, !225, !230}
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "exit_status", scope: !87, file: !88, line: 68, type: !39, isLocal: false, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "prev_file", scope: !133, file: !88, line: 280, type: !21, isLocal: true, isDefinition: true)
!133 = distinct !DISubprogram(name: "next_file", scope: !88, file: !88, line: 278, type: !134, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !190)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 49, baseType: !139)
!138 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 241, size: 1728, elements: !141)
!140 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !162, !163, !164, !165, !168, !169, !171, !175, !178, !180, !181, !182, !183, !184, !185, !186}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !139, file: !140, line: 242, baseType: !39, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !139, file: !140, line: 247, baseType: !21, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !139, file: !140, line: 248, baseType: !21, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !139, file: !140, line: 249, baseType: !21, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !139, file: !140, line: 250, baseType: !21, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !139, file: !140, line: 251, baseType: !21, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !139, file: !140, line: 252, baseType: !21, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !139, file: !140, line: 253, baseType: !21, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !139, file: !140, line: 254, baseType: !21, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !139, file: !140, line: 256, baseType: !21, size: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !139, file: !140, line: 257, baseType: !21, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !139, file: !140, line: 258, baseType: !21, size: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !139, file: !140, line: 260, baseType: !155, size: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 156, size: 192, elements: !157)
!157 = !{!158, !159, !161}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !156, file: !140, line: 157, baseType: !155, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !156, file: !140, line: 158, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !156, file: !140, line: 162, baseType: !39, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !139, file: !140, line: 262, baseType: !160, size: 64, offset: 832)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !139, file: !140, line: 264, baseType: !39, size: 32, offset: 896)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !139, file: !140, line: 268, baseType: !39, size: 32, offset: 928)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !139, file: !140, line: 270, baseType: !166, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !28, line: 140, baseType: !167)
!167 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !139, file: !140, line: 274, baseType: !40, size: 16, offset: 1024)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !139, file: !140, line: 275, baseType: !170, size: 8, offset: 1040)
!170 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !139, file: !140, line: 276, baseType: !172, size: 8, offset: 1048)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 1)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !139, file: !140, line: 280, baseType: !176, size: 64, offset: 1088)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !140, line: 150, baseType: null)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !139, file: !140, line: 289, baseType: !179, size: 64, offset: 1152)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !28, line: 141, baseType: !167)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !139, file: !140, line: 297, baseType: !23, size: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !139, file: !140, line: 298, baseType: !23, size: 64, offset: 1280)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !139, file: !140, line: 299, baseType: !23, size: 64, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !139, file: !140, line: 300, baseType: !23, size: 64, offset: 1408)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !139, file: !140, line: 302, baseType: !30, size: 64, offset: 1472)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !139, file: !140, line: 303, baseType: !39, size: 32, offset: 1536)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !139, file: !140, line: 305, baseType: !187, size: 160, offset: 1568)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 20)
!190 = !{!191, !192, !193, !198, !199, !201, !202, !206, !207, !209}
!191 = !DILocalVariable(name: "fp", arg: 1, scope: !133, file: !88, line: 278, type: !136)
!192 = !DILocalVariable(name: "file", scope: !133, file: !88, line: 281, type: !21)
!193 = !DILocalVariable(name: "__s1_len", scope: !194, file: !88, line: 290, type: !30)
!194 = distinct !DILexicalBlock(scope: !195, file: !88, line: 290, column: 11)
!195 = distinct !DILexicalBlock(scope: !196, file: !88, line: 290, column: 11)
!196 = distinct !DILexicalBlock(scope: !197, file: !88, line: 284, column: 5)
!197 = distinct !DILexicalBlock(scope: !133, file: !88, line: 283, column: 7)
!198 = !DILocalVariable(name: "__s2_len", scope: !194, file: !88, line: 290, type: !30)
!199 = !DILocalVariable(name: "__s2", scope: !200, file: !88, line: 290, type: !34)
!200 = distinct !DILexicalBlock(scope: !194, file: !88, line: 290, column: 11)
!201 = !DILocalVariable(name: "__result", scope: !200, file: !88, line: 290, type: !39)
!202 = !DILocalVariable(name: "__s1_len", scope: !203, file: !88, line: 301, type: !30)
!203 = distinct !DILexicalBlock(scope: !204, file: !88, line: 301, column: 11)
!204 = distinct !DILexicalBlock(scope: !205, file: !88, line: 301, column: 11)
!205 = distinct !DILexicalBlock(scope: !133, file: !88, line: 300, column: 5)
!206 = !DILocalVariable(name: "__s2_len", scope: !203, file: !88, line: 301, type: !30)
!207 = !DILocalVariable(name: "__s2", scope: !208, file: !88, line: 301, type: !34)
!208 = distinct !DILexicalBlock(scope: !203, file: !88, line: 301, column: 11)
!209 = !DILocalVariable(name: "__result", scope: !208, file: !88, line: 301, type: !39)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "max_column_width", scope: !87, file: !88, line: 41, type: !30, isLocal: false, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !87, file: !88, line: 53, type: !30, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215)
!215 = distinct !DIGlobalVariable(name: "tab_list", scope: !87, file: !88, line: 46, type: !24, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !87, file: !88, line: 49, type: !30, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "extend_size", scope: !87, file: !88, line: 38, type: !25, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221)
!221 = distinct !DIGlobalVariable(name: "tab_size", scope: !87, file: !88, line: 35, type: !25, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223)
!223 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !87, file: !88, line: 65, type: !224, isLocal: true, isDefinition: true)
!224 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!225 = !DIGlobalVariableExpression(var: !226)
!226 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !87, file: !88, line: 59, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 2)
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "file_list", scope: !87, file: !88, line: 56, type: !232, isLocal: true, isDefinition: true)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!233 = !DIGlobalVariableExpression(var: !234)
!234 = distinct !DIGlobalVariable(name: "Version", scope: !235, file: !236, line: 2, type: !37, isLocal: false, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, globals: !238)
!236 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!237 = !{}
!238 = !{!233}
!239 = !DIGlobalVariableExpression(var: !240)
!240 = distinct !DIGlobalVariable(name: "file_name", scope: !241, file: !246, line: 36, type: !37, isLocal: true, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, globals: !243)
!242 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!243 = !{!239, !244}
!244 = !DIGlobalVariableExpression(var: !245)
!245 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !241, file: !246, line: 46, type: !224, isLocal: true, isDefinition: true)
!246 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!247 = !DIGlobalVariableExpression(var: !248)
!248 = distinct !DIGlobalVariable(name: "exit_failure", scope: !249, file: !252, line: 24, type: !253, isLocal: false, isDefinition: true)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, globals: !251)
!250 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!251 = !{!247}
!252 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!253 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!254 = !DIGlobalVariableExpression(var: !255)
!255 = distinct !DIGlobalVariable(name: "program_name", scope: !256, file: !260, line: 33, type: !37, isLocal: false, isDefinition: true)
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !258, globals: !259)
!257 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!258 = !{!23, !21}
!259 = !{!254}
!260 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!261 = !DIGlobalVariableExpression(var: !262)
!262 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !263, file: !275, line: 77, type: !310, isLocal: false, isDefinition: true)
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !265, retainedTypes: !271, globals: !272)
!264 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!265 = !{!90, !266, !5}
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !91, line: 242, size: 32, elements: !267)
!267 = !{!268, !269, !270}
!268 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!269 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!270 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!271 = !{!39, !40, !30, !21}
!272 = !{!261, !273, !280, !292, !294, !299, !306, !308}
!273 = !DIGlobalVariableExpression(var: !274)
!274 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !263, file: !275, line: 93, type: !276, isLocal: false, isDefinition: true)
!275 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 320, elements: !278)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!278 = !{!279}
!279 = !DISubrange(count: 10)
!280 = !DIGlobalVariableExpression(var: !281)
!281 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !263, file: !275, line: 1043, type: !282, isLocal: false, isDefinition: true)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !275, line: 57, size: 448, elements: !283)
!283 = !{!284, !285, !286, !290, !291}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !282, file: !275, line: 60, baseType: !90, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !275, line: 63, baseType: !39, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !282, file: !275, line: 67, baseType: !287, size: 256, offset: 64)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 8)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !282, file: !275, line: 70, baseType: !37, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !282, file: !275, line: 73, baseType: !37, size: 64, offset: 384)
!292 = !DIGlobalVariableExpression(var: !293)
!293 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !263, file: !275, line: 108, type: !282, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295)
!295 = distinct !DIGlobalVariable(name: "slot0", scope: !263, file: !275, line: 834, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 256)
!299 = !DIGlobalVariableExpression(var: !300)
!300 = distinct !DIGlobalVariable(name: "slotvec", scope: !263, file: !275, line: 837, type: !301, isLocal: true, isDefinition: true)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !275, line: 826, size: 128, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !302, file: !275, line: 828, baseType: !30, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !302, file: !275, line: 829, baseType: !21, size: 64, offset: 64)
!306 = !DIGlobalVariableExpression(var: !307)
!307 = distinct !DIGlobalVariable(name: "nslots", scope: !263, file: !275, line: 835, type: !39, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309)
!309 = distinct !DIGlobalVariable(name: "slotvec0", scope: !263, file: !275, line: 836, type: !302, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 704, elements: !312)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!312 = !{!313}
!313 = !DISubrange(count: 11)
!314 = !DIGlobalVariableExpression(var: !315)
!315 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !316, file: !319, line: 26, type: !320, isLocal: false, isDefinition: true)
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, globals: !318)
!317 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!318 = !{!314}
!319 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 47)
!323 = !DIGlobalVariableExpression(var: !324)
!324 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !325, file: !668, line: 120, type: !669, isLocal: true, isDefinition: true)
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !666, globals: !667)
!326 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!327 = !{!328}
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !329, line: 41, size: 32, elements: !330)
!329 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!331 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!332 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!333 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!334 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!335 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!336 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!337 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!338 = !DIEnumerator(name: "DAY_1", value: 131079)
!339 = !DIEnumerator(name: "DAY_2", value: 131080)
!340 = !DIEnumerator(name: "DAY_3", value: 131081)
!341 = !DIEnumerator(name: "DAY_4", value: 131082)
!342 = !DIEnumerator(name: "DAY_5", value: 131083)
!343 = !DIEnumerator(name: "DAY_6", value: 131084)
!344 = !DIEnumerator(name: "DAY_7", value: 131085)
!345 = !DIEnumerator(name: "ABMON_1", value: 131086)
!346 = !DIEnumerator(name: "ABMON_2", value: 131087)
!347 = !DIEnumerator(name: "ABMON_3", value: 131088)
!348 = !DIEnumerator(name: "ABMON_4", value: 131089)
!349 = !DIEnumerator(name: "ABMON_5", value: 131090)
!350 = !DIEnumerator(name: "ABMON_6", value: 131091)
!351 = !DIEnumerator(name: "ABMON_7", value: 131092)
!352 = !DIEnumerator(name: "ABMON_8", value: 131093)
!353 = !DIEnumerator(name: "ABMON_9", value: 131094)
!354 = !DIEnumerator(name: "ABMON_10", value: 131095)
!355 = !DIEnumerator(name: "ABMON_11", value: 131096)
!356 = !DIEnumerator(name: "ABMON_12", value: 131097)
!357 = !DIEnumerator(name: "MON_1", value: 131098)
!358 = !DIEnumerator(name: "MON_2", value: 131099)
!359 = !DIEnumerator(name: "MON_3", value: 131100)
!360 = !DIEnumerator(name: "MON_4", value: 131101)
!361 = !DIEnumerator(name: "MON_5", value: 131102)
!362 = !DIEnumerator(name: "MON_6", value: 131103)
!363 = !DIEnumerator(name: "MON_7", value: 131104)
!364 = !DIEnumerator(name: "MON_8", value: 131105)
!365 = !DIEnumerator(name: "MON_9", value: 131106)
!366 = !DIEnumerator(name: "MON_10", value: 131107)
!367 = !DIEnumerator(name: "MON_11", value: 131108)
!368 = !DIEnumerator(name: "MON_12", value: 131109)
!369 = !DIEnumerator(name: "AM_STR", value: 131110)
!370 = !DIEnumerator(name: "PM_STR", value: 131111)
!371 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!372 = !DIEnumerator(name: "D_FMT", value: 131113)
!373 = !DIEnumerator(name: "T_FMT", value: 131114)
!374 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!375 = !DIEnumerator(name: "ERA", value: 131116)
!376 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!377 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!378 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!379 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!380 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!381 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!382 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!383 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!384 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!385 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!386 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!387 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!388 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!389 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!390 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!391 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!392 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!393 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!394 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!395 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!396 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!397 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!398 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!399 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!400 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!401 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!402 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!403 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!404 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!405 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!406 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!407 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!408 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!409 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!410 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!411 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!412 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!413 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!414 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!415 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!416 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!417 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!418 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!419 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!420 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!421 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!422 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!423 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!424 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!425 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!426 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!427 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!428 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!429 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!430 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!431 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!432 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!433 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!434 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!435 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!436 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!437 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!438 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!439 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!440 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!441 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!442 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!443 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!444 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!445 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!446 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!447 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!448 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!449 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!450 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!451 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!452 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!453 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!454 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!455 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!456 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!457 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!458 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!459 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!460 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!461 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!462 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!463 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!464 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!465 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!466 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!467 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!468 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!469 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!470 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!471 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!472 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!473 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!474 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!475 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!476 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!477 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!478 = !DIEnumerator(name: "CODESET", value: 14)
!479 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!480 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!481 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!482 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!525 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!526 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!527 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!528 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!529 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!530 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!531 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!532 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!533 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!534 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!535 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!537 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!538 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!539 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!540 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!550 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!551 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!552 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!553 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!554 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!555 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!556 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!557 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!558 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!559 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!560 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!561 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!562 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!563 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!564 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!565 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!566 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!567 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!568 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!569 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!570 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!571 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!572 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!589 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!590 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!593 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!594 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!595 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!596 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!597 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!598 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!599 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!600 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!601 = !DIEnumerator(name: "THOUSEP", value: 65537)
!602 = !DIEnumerator(name: "__GROUPING", value: 65538)
!603 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!604 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!605 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!606 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!607 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!608 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!609 = !DIEnumerator(name: "__YESSTR", value: 327682)
!610 = !DIEnumerator(name: "__NOSTR", value: 327683)
!611 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!612 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!613 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!614 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!615 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!616 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!617 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!618 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!619 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!620 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!621 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!622 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!623 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!624 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!625 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!626 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!627 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!628 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!629 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!630 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!631 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!632 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!633 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!634 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!635 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!636 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!637 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!638 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!639 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!640 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!641 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!642 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!643 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!644 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!645 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!646 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!647 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!651 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!652 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!664 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!665 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!666 = !{!23, !21, !41}
!667 = !{!323}
!668 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !672)
!671 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = !{!104}
!673 = distinct !DICompileUnit(language: DW_LANG_C99, file: !674, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !675, retainedTypes: !680)
!674 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!675 = !{!676}
!676 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !677, line: 41, size: 32, elements: !678)
!677 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = !{!679}
!679 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!680 = !{!23}
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !683, retainedTypes: !691)
!682 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!683 = !{!684}
!684 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !685, file: !114, line: 192, size: 32, elements: !124)
!685 = distinct !DISubprogram(name: "x2nrealloc", scope: !114, file: !114, line: 180, type: !116, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !686)
!686 = !{!687, !688, !689, !690}
!687 = !DILocalVariable(name: "p", arg: 1, scope: !685, file: !114, line: 180, type: !23)
!688 = !DILocalVariable(name: "pn", arg: 2, scope: !685, file: !114, line: 180, type: !118)
!689 = !DILocalVariable(name: "s", arg: 3, scope: !685, file: !114, line: 180, type: !30)
!690 = !DILocalVariable(name: "n", scope: !685, file: !114, line: 182, type: !30)
!691 = !{!30, !21, !23}
!692 = distinct !DICompileUnit(language: DW_LANG_C99, file: !693, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237)
!693 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!694 = distinct !DICompileUnit(language: DW_LANG_C99, file: !695, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237)
!695 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !680)
!697 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!698 = distinct !DICompileUnit(language: DW_LANG_C99, file: !699, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237)
!699 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!700 = distinct !DICompileUnit(language: DW_LANG_C99, file: !701, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !680)
!701 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!702 = distinct !DICompileUnit(language: DW_LANG_C99, file: !703, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !680)
!703 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!704 = distinct !DICompileUnit(language: DW_LANG_C99, file: !705, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !706)
!705 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!706 = !{!30}
!707 = distinct !DICompileUnit(language: DW_LANG_C99, file: !708, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237)
!708 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !711)
!710 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!711 = !{!30, !32, !34, !37}
!712 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!713 = !{i32 2, !"Dwarf Version", i32 4}
!714 = !{i32 2, !"Debug Info Version", i32 3}
!715 = !{i32 1, !"PIC Level", i32 2}
!716 = !{i32 1, !"PIE Level", i32 2}
!717 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !718, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !39}
!720 = !{!721}
!721 = !DILocalVariable(name: "status", arg: 1, scope: !717, file: !3, line: 72, type: !39)
!722 = !DIExpression()
!723 = !DILocation(line: 72, column: 12, scope: !717)
!724 = !DILocation(line: 74, column: 14, scope: !725)
!725 = distinct !DILexicalBlock(scope: !717, file: !3, line: 74, column: 7)
!726 = !DILocation(line: 74, column: 7, scope: !717)
!727 = !DILocation(line: 75, column: 5, scope: !728)
!728 = !DILexicalBlockFile(scope: !729, file: !3, discriminator: 1)
!729 = distinct !DILexicalBlock(scope: !725, file: !3, line: 75, column: 5)
!730 = !{!731, !731, i64 0}
!731 = !{!"any pointer", !732, i64 0}
!732 = !{!"omnipotent char", !733, i64 0}
!733 = !{!"Simple C/C++ TBAA"}
!734 = !DILocation(line: 75, column: 5, scope: !735)
!735 = !DILexicalBlockFile(scope: !729, file: !3, discriminator: 3)
!736 = !DILocation(line: 75, column: 5, scope: !737)
!737 = !DILexicalBlockFile(scope: !729, file: !3, discriminator: 2)
!738 = !DILocation(line: 78, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !725, file: !3, line: 77, column: 5)
!740 = !DILocation(line: 78, column: 7, scope: !741)
!741 = !DILexicalBlockFile(scope: !739, file: !3, discriminator: 1)
!742 = !DILocation(line: 82, column: 7, scope: !739)
!743 = !DILocation(line: 82, column: 7, scope: !741)
!744 = !DILocation(line: 580, column: 3, scope: !745, inlinedAt: !748)
!745 = distinct !DISubprogram(name: "emit_stdin_note", scope: !46, file: !46, line: 578, type: !746, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !237)
!746 = !DISubroutineType(types: !747)
!747 = !{null}
!748 = distinct !DILocation(line: 86, column: 7, scope: !739)
!749 = !DILocation(line: 580, column: 3, scope: !750, inlinedAt: !748)
!750 = !DILexicalBlockFile(scope: !745, file: !46, discriminator: 1)
!751 = !DILocation(line: 587, column: 3, scope: !752, inlinedAt: !753)
!752 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !46, file: !46, line: 585, type: !746, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !237)
!753 = distinct !DILocation(line: 87, column: 7, scope: !739)
!754 = !DILocation(line: 587, column: 3, scope: !755, inlinedAt: !753)
!755 = !DILexicalBlockFile(scope: !752, file: !46, discriminator: 1)
!756 = !DILocation(line: 89, column: 7, scope: !739)
!757 = !DILocation(line: 89, column: 7, scope: !741)
!758 = !DILocation(line: 95, column: 7, scope: !739)
!759 = !DILocation(line: 95, column: 7, scope: !741)
!760 = !DILocation(line: 96, column: 7, scope: !739)
!761 = !DILocation(line: 96, column: 7, scope: !741)
!762 = !DILocation(line: 642, column: 15, scope: !45, inlinedAt: !763)
!763 = distinct !DILocation(line: 97, column: 7, scope: !739)
!764 = !DILocation(line: 651, column: 3, scope: !45, inlinedAt: !763)
!765 = !DILocation(line: 651, column: 3, scope: !766, inlinedAt: !763)
!766 = !DILexicalBlockFile(scope: !45, file: !46, discriminator: 1)
!767 = !DILocation(line: 655, column: 29, scope: !45, inlinedAt: !763)
!768 = !DILocation(line: 655, column: 15, scope: !45, inlinedAt: !763)
!769 = !DILocation(line: 656, column: 7, scope: !65, inlinedAt: !763)
!770 = !DILocation(line: 656, column: 19, scope: !65, inlinedAt: !763)
!771 = !DILocation(line: 656, column: 22, scope: !772, inlinedAt: !763)
!772 = !DILexicalBlockFile(scope: !65, file: !46, discriminator: 16)
!773 = !DILocation(line: 656, column: 7, scope: !774, inlinedAt: !763)
!774 = !DILexicalBlockFile(scope: !45, file: !46, discriminator: 16)
!775 = !DILocation(line: 662, column: 7, scope: !776, inlinedAt: !763)
!776 = distinct !DILexicalBlock(scope: !65, file: !46, line: 657, column: 5)
!777 = !DILocation(line: 662, column: 7, scope: !778, inlinedAt: !763)
!778 = !DILexicalBlockFile(scope: !776, file: !46, discriminator: 1)
!779 = !DILocation(line: 664, column: 5, scope: !776, inlinedAt: !763)
!780 = !DILocation(line: 665, column: 3, scope: !45, inlinedAt: !763)
!781 = !DILocation(line: 665, column: 3, scope: !766, inlinedAt: !763)
!782 = !DILocation(line: 667, column: 3, scope: !45, inlinedAt: !763)
!783 = !DILocation(line: 667, column: 3, scope: !766, inlinedAt: !763)
!784 = !DILocation(line: 99, column: 3, scope: !717)
!785 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 257, type: !786, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{!39, !39, !232}
!788 = !{!789, !790, !791, !792, !793, !794}
!789 = !DILocalVariable(name: "argc", arg: 1, scope: !785, file: !3, line: 257, type: !39)
!790 = !DILocalVariable(name: "argv", arg: 2, scope: !785, file: !3, line: 257, type: !232)
!791 = !DILocalVariable(name: "have_tabval", scope: !785, file: !3, line: 259, type: !224)
!792 = !DILocalVariable(name: "tabval", scope: !785, file: !3, line: 260, type: !25)
!793 = !DILocalVariable(name: "c", scope: !785, file: !3, line: 261, type: !39)
!794 = !DILocalVariable(name: "convert_first_only", scope: !785, file: !3, line: 265, type: !224)
!795 = !DILocation(line: 257, column: 11, scope: !785)
!796 = !DILocation(line: 257, column: 24, scope: !785)
!797 = !DILocation(line: 259, column: 8, scope: !785)
!798 = !DILocation(line: 265, column: 8, scope: !785)
!799 = !DILocation(line: 268, column: 21, scope: !785)
!800 = !DILocation(line: 268, column: 3, scope: !785)
!801 = !DILocation(line: 269, column: 3, scope: !785)
!802 = !DILocation(line: 270, column: 3, scope: !785)
!803 = !DILocation(line: 271, column: 3, scope: !785)
!804 = !DILocation(line: 273, column: 3, scope: !785)
!805 = !DILocation(line: 275, column: 3, scope: !785)
!806 = !DILocation(line: 260, column: 13, scope: !785)
!807 = !DILocation(line: 275, column: 15, scope: !808)
!808 = !DILexicalBlockFile(scope: !785, file: !3, discriminator: 1)
!809 = !DILocation(line: 261, column: 7, scope: !785)
!810 = !DILocation(line: 275, column: 3, scope: !808)
!811 = distinct !{!811, !805, !812}
!812 = !DILocation(line: 309, column: 5, scope: !785)
!813 = !DILocation(line: 281, column: 11, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 279, column: 9)
!815 = distinct !DILexicalBlock(scope: !785, file: !3, line: 277, column: 5)
!816 = !DILocation(line: 283, column: 31, scope: !814)
!817 = !{!818, !818, i64 0}
!818 = !{!"_Bool", !732, i64 0}
!819 = !DILocation(line: 284, column: 11, scope: !814)
!820 = !DILocation(line: 286, column: 31, scope: !814)
!821 = !DILocation(line: 287, column: 28, scope: !814)
!822 = !DILocation(line: 287, column: 11, scope: !814)
!823 = !DILocation(line: 288, column: 11, scope: !814)
!824 = !DILocation(line: 293, column: 15, scope: !825)
!825 = distinct !DILexicalBlock(scope: !814, file: !3, line: 293, column: 15)
!826 = !DILocation(line: 293, column: 15, scope: !814)
!827 = !DILocation(line: 294, column: 13, scope: !825)
!828 = !DILocation(line: 297, column: 9, scope: !814)
!829 = !DILocation(line: 298, column: 9, scope: !814)
!830 = !DILocation(line: 298, column: 9, scope: !831)
!831 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 1)
!832 = !DILocation(line: 300, column: 16, scope: !833)
!833 = distinct !DILexicalBlock(scope: !814, file: !3, line: 300, column: 15)
!834 = !DILocation(line: 300, column: 15, scope: !814)
!835 = !DILocation(line: 305, column: 16, scope: !836)
!836 = distinct !DILexicalBlock(scope: !814, file: !3, line: 305, column: 15)
!837 = !DILocation(line: 305, column: 16, scope: !838)
!838 = !DILexicalBlockFile(scope: !836, file: !3, discriminator: 1)
!839 = !DILocation(line: 305, column: 15, scope: !840)
!840 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 4)
!841 = !DILocation(line: 306, column: 13, scope: !836)
!842 = !DILocation(line: 306, column: 13, scope: !838)
!843 = !DILocation(line: 311, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !785, file: !3, line: 311, column: 7)
!845 = !DILocation(line: 311, column: 7, scope: !785)
!846 = !DILocation(line: 312, column: 25, scope: !844)
!847 = !DILocation(line: 312, column: 5, scope: !844)
!848 = !DILocation(line: 314, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !785, file: !3, line: 314, column: 7)
!850 = !DILocation(line: 314, column: 7, scope: !785)
!851 = !DILocation(line: 315, column: 5, scope: !849)
!852 = !DILocation(line: 317, column: 3, scope: !785)
!853 = !DILocation(line: 319, column: 20, scope: !785)
!854 = !{!855, !855, i64 0}
!855 = !{!"int", !732, i64 0}
!856 = !DILocation(line: 319, column: 27, scope: !785)
!857 = !DILocation(line: 319, column: 38, scope: !808)
!858 = !DILocation(line: 319, column: 19, scope: !785)
!859 = !DILocation(line: 319, column: 3, scope: !860)
!860 = !DILexicalBlockFile(scope: !785, file: !3, discriminator: 3)
!861 = !DILocation(line: 109, column: 14, scope: !862, inlinedAt: !922)
!862 = distinct !DISubprogram(name: "unexpand", scope: !3, file: !3, line: 106, type: !746, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !863)
!863 = !{!864, !905, !906, !908, !909, !910, !911, !912, !913, !914, !915, !919}
!864 = !DILocalVariable(name: "fp", scope: !862, file: !3, line: 109, type: !865)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 49, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 241, size: 1728, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !867, file: !140, line: 242, baseType: !39, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !867, file: !140, line: 247, baseType: !21, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !867, file: !140, line: 248, baseType: !21, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !867, file: !140, line: 249, baseType: !21, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !867, file: !140, line: 250, baseType: !21, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !867, file: !140, line: 251, baseType: !21, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !867, file: !140, line: 252, baseType: !21, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !867, file: !140, line: 253, baseType: !21, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !867, file: !140, line: 254, baseType: !21, size: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !867, file: !140, line: 256, baseType: !21, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !867, file: !140, line: 257, baseType: !21, size: 64, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !867, file: !140, line: 258, baseType: !21, size: 64, offset: 704)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !867, file: !140, line: 260, baseType: !882, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 156, size: 192, elements: !884)
!884 = !{!885, !886, !888}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !883, file: !140, line: 157, baseType: !882, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !883, file: !140, line: 158, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !883, file: !140, line: 162, baseType: !39, size: 32, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !867, file: !140, line: 262, baseType: !887, size: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !867, file: !140, line: 264, baseType: !39, size: 32, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !867, file: !140, line: 268, baseType: !39, size: 32, offset: 928)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !867, file: !140, line: 270, baseType: !166, size: 64, offset: 960)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !867, file: !140, line: 274, baseType: !40, size: 16, offset: 1024)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !867, file: !140, line: 275, baseType: !170, size: 8, offset: 1040)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !867, file: !140, line: 276, baseType: !172, size: 8, offset: 1048)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !867, file: !140, line: 280, baseType: !176, size: 64, offset: 1088)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !867, file: !140, line: 289, baseType: !179, size: 64, offset: 1152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !867, file: !140, line: 297, baseType: !23, size: 64, offset: 1216)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !867, file: !140, line: 298, baseType: !23, size: 64, offset: 1280)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !867, file: !140, line: 299, baseType: !23, size: 64, offset: 1344)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !867, file: !140, line: 300, baseType: !23, size: 64, offset: 1408)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !867, file: !140, line: 302, baseType: !30, size: 64, offset: 1472)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !867, file: !140, line: 303, baseType: !39, size: 32, offset: 1536)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !867, file: !140, line: 305, baseType: !187, size: 160, offset: 1568)
!905 = !DILocalVariable(name: "pending_blank", scope: !862, file: !3, line: 114, type: !21)
!906 = !DILocalVariable(name: "c", scope: !907, file: !3, line: 127, type: !39)
!907 = distinct !DILexicalBlock(scope: !862, file: !3, line: 125, column: 5)
!908 = !DILocalVariable(name: "convert", scope: !907, file: !3, line: 130, type: !224)
!909 = !DILocalVariable(name: "column", scope: !907, file: !3, line: 137, type: !25)
!910 = !DILocalVariable(name: "next_tab_column", scope: !907, file: !3, line: 140, type: !25)
!911 = !DILocalVariable(name: "tab_index", scope: !907, file: !3, line: 143, type: !30)
!912 = !DILocalVariable(name: "one_blank_before_tab_stop", scope: !907, file: !3, line: 146, type: !224)
!913 = !DILocalVariable(name: "prev_blank", scope: !907, file: !3, line: 151, type: !224)
!914 = !DILocalVariable(name: "pending", scope: !907, file: !3, line: 154, type: !30)
!915 = !DILocalVariable(name: "blank", scope: !916, file: !3, line: 166, type: !224)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 165, column: 13)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 164, column: 15)
!918 = distinct !DILexicalBlock(scope: !907, file: !3, line: 160, column: 9)
!919 = !DILocalVariable(name: "last_tab", scope: !920, file: !3, line: 170, type: !224)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 169, column: 17)
!921 = distinct !DILexicalBlock(scope: !916, file: !3, line: 168, column: 19)
!922 = distinct !DILocation(line: 321, column: 3, scope: !785)
!923 = !DILocation(line: 109, column: 9, scope: !862, inlinedAt: !922)
!924 = !DILocation(line: 116, column: 8, scope: !925, inlinedAt: !922)
!925 = distinct !DILexicalBlock(scope: !862, file: !3, line: 116, column: 7)
!926 = !DILocation(line: 116, column: 7, scope: !862, inlinedAt: !922)
!927 = !DILocation(line: 122, column: 28, scope: !862, inlinedAt: !922)
!928 = !{!929, !929, i64 0}
!929 = !{!"long", !732, i64 0}
!930 = !DILocation(line: 122, column: 19, scope: !862, inlinedAt: !922)
!931 = !DILocation(line: 114, column: 9, scope: !862, inlinedAt: !922)
!932 = !DILocation(line: 124, column: 3, scope: !862, inlinedAt: !922)
!933 = !DILocation(line: 130, column: 12, scope: !907, inlinedAt: !922)
!934 = !DILocation(line: 137, column: 17, scope: !907, inlinedAt: !922)
!935 = !DILocation(line: 140, column: 17, scope: !907, inlinedAt: !922)
!936 = !DILocation(line: 143, column: 7, scope: !907, inlinedAt: !922)
!937 = !DILocation(line: 143, column: 14, scope: !907, inlinedAt: !922)
!938 = !DILocation(line: 146, column: 12, scope: !907, inlinedAt: !922)
!939 = !DILocation(line: 151, column: 12, scope: !907, inlinedAt: !922)
!940 = !DILocation(line: 154, column: 14, scope: !907, inlinedAt: !922)
!941 = !DILocation(line: 159, column: 7, scope: !907, inlinedAt: !922)
!942 = distinct !{!942, !943, !944}
!943 = !DILocation(line: 159, column: 7, scope: !907)
!944 = !DILocation(line: 252, column: 23, scope: !907)
!945 = !DILocation(line: 161, column: 11, scope: !918, inlinedAt: !922)
!946 = !DILocalVariable(name: "__fp", arg: 1, scope: !947, file: !948, line: 63, type: !865)
!947 = distinct !DISubprogram(name: "getc_unlocked", scope: !948, file: !948, line: 63, type: !949, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !951)
!948 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!949 = !DISubroutineType(types: !950)
!950 = !{!39, !865}
!951 = !{!946}
!952 = !DILocation(line: 63, column: 22, scope: !947, inlinedAt: !953)
!953 = distinct !DILocation(line: 161, column: 23, scope: !954, inlinedAt: !922)
!954 = !DILexicalBlockFile(scope: !918, file: !3, discriminator: 1)
!955 = !DILocation(line: 65, column: 10, scope: !947, inlinedAt: !953)
!956 = !{!957, !731, i64 8}
!957 = !{!"_IO_FILE", !855, i64 0, !731, i64 8, !731, i64 16, !731, i64 24, !731, i64 32, !731, i64 40, !731, i64 48, !731, i64 56, !731, i64 64, !731, i64 72, !731, i64 80, !731, i64 88, !731, i64 96, !731, i64 104, !855, i64 112, !855, i64 116, !929, i64 120, !958, i64 128, !732, i64 130, !732, i64 131, !731, i64 136, !929, i64 144, !731, i64 152, !731, i64 160, !731, i64 168, !731, i64 176, !929, i64 184, !855, i64 192, !732, i64 196}
!958 = !{!"short", !732, i64 0}
!959 = !{!957, !731, i64 16}
!960 = !{!"branch_weights", i32 2000, i32 1}
!961 = !DILocation(line: 65, column: 10, scope: !962, inlinedAt: !953)
!962 = !DILexicalBlockFile(scope: !947, file: !948, discriminator: 2)
!963 = !{!732, !732, i64 0}
!964 = !DILocation(line: 127, column: 11, scope: !907, inlinedAt: !922)
!965 = !DILocation(line: 161, column: 38, scope: !954, inlinedAt: !922)
!966 = !DILocation(line: 65, column: 10, scope: !967, inlinedAt: !953)
!967 = !DILexicalBlockFile(scope: !947, file: !948, discriminator: 1)
!968 = !DILocation(line: 161, column: 34, scope: !954, inlinedAt: !922)
!969 = !DILocation(line: 161, column: 47, scope: !970, inlinedAt: !922)
!970 = !DILexicalBlockFile(scope: !918, file: !3, discriminator: 2)
!971 = !DILocation(line: 161, column: 38, scope: !970, inlinedAt: !922)
!972 = !DILocation(line: 161, column: 11, scope: !973, inlinedAt: !922)
!973 = !DILexicalBlockFile(scope: !918, file: !3, discriminator: 3)
!974 = distinct !{!974, !975, !976}
!975 = !DILocation(line: 161, column: 11, scope: !918)
!976 = !DILocation(line: 162, column: 13, scope: !918)
!977 = !DILocation(line: 164, column: 15, scope: !917, inlinedAt: !922)
!978 = !DILocation(line: 164, column: 15, scope: !918, inlinedAt: !922)
!979 = !DILocation(line: 166, column: 31, scope: !916, inlinedAt: !922)
!980 = !{!958, !958, i64 0}
!981 = !DILocation(line: 166, column: 29, scope: !916, inlinedAt: !922)
!982 = !DILocation(line: 166, column: 20, scope: !916, inlinedAt: !922)
!983 = !DILocation(line: 168, column: 19, scope: !916, inlinedAt: !922)
!984 = !DIExpression(DW_OP_deref)
!985 = !DILocation(line: 170, column: 24, scope: !920, inlinedAt: !922)
!986 = !DILocation(line: 170, column: 19, scope: !920, inlinedAt: !922)
!987 = !DILocation(line: 172, column: 37, scope: !920, inlinedAt: !922)
!988 = !DILocation(line: 175, column: 23, scope: !989, inlinedAt: !922)
!989 = distinct !DILexicalBlock(scope: !920, file: !3, line: 175, column: 23)
!990 = !{i8 0, i8 2}
!991 = !DILocation(line: 175, column: 23, scope: !920, inlinedAt: !922)
!992 = !DILocation(line: 178, column: 23, scope: !993, inlinedAt: !922)
!993 = distinct !DILexicalBlock(scope: !920, file: !3, line: 178, column: 23)
!994 = !DILocation(line: 178, column: 23, scope: !920, inlinedAt: !922)
!995 = !DILocation(line: 180, column: 43, scope: !996, inlinedAt: !922)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 180, column: 27)
!997 = distinct !DILexicalBlock(scope: !993, file: !3, line: 179, column: 21)
!998 = !DILocation(line: 180, column: 27, scope: !997, inlinedAt: !922)
!999 = !DILocation(line: 181, column: 25, scope: !996, inlinedAt: !922)
!1000 = !DILocation(line: 181, column: 25, scope: !1001, inlinedAt: !922)
!1001 = !DILexicalBlockFile(scope: !996, file: !3, discriminator: 1)
!1002 = !DILocation(line: 183, column: 29, scope: !1003, inlinedAt: !922)
!1003 = distinct !DILexicalBlock(scope: !997, file: !3, line: 183, column: 27)
!1004 = !DILocation(line: 183, column: 27, scope: !997, inlinedAt: !922)
!1005 = !DILocation(line: 187, column: 31, scope: !1006, inlinedAt: !922)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 187, column: 31)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 184, column: 25)
!1008 = !DILocation(line: 187, column: 31, scope: !1007, inlinedAt: !922)
!1009 = !DILocation(line: 192, column: 33, scope: !1010, inlinedAt: !922)
!1010 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 191, column: 25)
!1011 = !DILocation(line: 194, column: 34, scope: !1012, inlinedAt: !922)
!1012 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 194, column: 31)
!1013 = !DILocation(line: 194, column: 55, scope: !1014, inlinedAt: !922)
!1014 = !DILexicalBlockFile(scope: !1012, file: !3, discriminator: 1)
!1015 = !DILocation(line: 194, column: 45, scope: !1012, inlinedAt: !922)
!1016 = !DILocation(line: 211, column: 33, scope: !997, inlinedAt: !922)
!1017 = !DILocation(line: 212, column: 21, scope: !997, inlinedAt: !922)
!1018 = !DILocation(line: 213, column: 17, scope: !921, inlinedAt: !922)
!1019 = !DILocation(line: 214, column: 26, scope: !1020, inlinedAt: !922)
!1020 = distinct !DILexicalBlock(scope: !921, file: !3, line: 214, column: 24)
!1021 = !DILocation(line: 214, column: 24, scope: !921, inlinedAt: !922)
!1022 = !DILocation(line: 218, column: 30, scope: !1023, inlinedAt: !922)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 215, column: 17)
!1024 = !DILocation(line: 218, column: 29, scope: !1023, inlinedAt: !922)
!1025 = !DILocation(line: 218, column: 26, scope: !1023, inlinedAt: !922)
!1026 = !DILocation(line: 220, column: 34, scope: !1023, inlinedAt: !922)
!1027 = !DILocation(line: 220, column: 33, scope: !1023, inlinedAt: !922)
!1028 = !DILocation(line: 220, column: 32, scope: !1023, inlinedAt: !922)
!1029 = !DILocation(line: 220, column: 29, scope: !1023, inlinedAt: !922)
!1030 = !DILocation(line: 221, column: 17, scope: !1023, inlinedAt: !922)
!1031 = !DILocation(line: 224, column: 25, scope: !1032, inlinedAt: !922)
!1032 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 223, column: 17)
!1033 = !DILocation(line: 225, column: 24, scope: !1034, inlinedAt: !922)
!1034 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 225, column: 23)
!1035 = !DILocation(line: 225, column: 23, scope: !1032, inlinedAt: !922)
!1036 = !DILocation(line: 226, column: 21, scope: !1034, inlinedAt: !922)
!1037 = !DILocation(line: 226, column: 21, scope: !1038, inlinedAt: !922)
!1038 = !DILexicalBlockFile(scope: !1034, file: !3, discriminator: 1)
!1039 = !DILocation(line: 229, column: 19, scope: !916, inlinedAt: !922)
!1040 = !DILocation(line: 231, column: 38, scope: !1041, inlinedAt: !922)
!1041 = !DILexicalBlockFile(scope: !1042, file: !3, discriminator: 1)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 231, column: 23)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 230, column: 17)
!1044 = distinct !DILexicalBlock(scope: !916, file: !3, line: 229, column: 19)
!1045 = !DILocation(line: 231, column: 23, scope: !1046, inlinedAt: !922)
!1046 = !DILexicalBlockFile(scope: !1043, file: !3, discriminator: 1)
!1047 = !DILocation(line: 232, column: 38, scope: !1042, inlinedAt: !922)
!1048 = !DILocation(line: 232, column: 21, scope: !1042, inlinedAt: !922)
!1049 = !DILocation(line: 233, column: 23, scope: !1050, inlinedAt: !922)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 233, column: 23)
!1051 = !DILocation(line: 233, column: 66, scope: !1050, inlinedAt: !922)
!1052 = !DILocation(line: 233, column: 23, scope: !1043, inlinedAt: !922)
!1053 = !DILocation(line: 234, column: 21, scope: !1050, inlinedAt: !922)
!1054 = !DILocation(line: 234, column: 21, scope: !1055, inlinedAt: !922)
!1055 = !DILexicalBlockFile(scope: !1050, file: !3, discriminator: 1)
!1056 = !DILocation(line: 234, column: 21, scope: !1057, inlinedAt: !922)
!1057 = !DILexicalBlockFile(scope: !1050, file: !3, discriminator: 2)
!1058 = !DILocation(line: 240, column: 26, scope: !916, inlinedAt: !922)
!1059 = !DILocation(line: 240, column: 46, scope: !916, inlinedAt: !922)
!1060 = !DILocation(line: 240, column: 46, scope: !1061, inlinedAt: !922)
!1061 = !DILexicalBlockFile(scope: !916, file: !3, discriminator: 2)
!1062 = !DILocation(line: 240, column: 23, scope: !1061, inlinedAt: !922)
!1063 = !DILocation(line: 198, column: 35, scope: !1064, inlinedAt: !922)
!1064 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 195, column: 29)
!1065 = !DILocation(line: 200, column: 58, scope: !1064, inlinedAt: !922)
!1066 = !DILocation(line: 200, column: 52, scope: !1064, inlinedAt: !922)
!1067 = !DILocation(line: 200, column: 31, scope: !1064, inlinedAt: !922)
!1068 = !DILocation(line: 200, column: 56, scope: !1064, inlinedAt: !922)
!1069 = !DILocation(line: 243, column: 17, scope: !1070, inlinedAt: !922)
!1070 = distinct !DILexicalBlock(scope: !918, file: !3, line: 243, column: 15)
!1071 = !DILocation(line: 243, column: 15, scope: !918, inlinedAt: !922)
!1072 = !DILocation(line: 245, column: 15, scope: !1073, inlinedAt: !922)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 244, column: 13)
!1074 = !DILocation(line: 253, column: 5, scope: !862, inlinedAt: !922)
!1075 = !DILocalVariable(name: "__c", arg: 1, scope: !1076, file: !948, line: 105, type: !39)
!1076 = distinct !DISubprogram(name: "putchar_unlocked", scope: !948, file: !948, line: 105, type: !1077, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1079)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!39, !39}
!1079 = !{!1075}
!1080 = !DILocation(line: 105, column: 23, scope: !1076, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 249, column: 15, scope: !1082, inlinedAt: !922)
!1082 = distinct !DILexicalBlock(scope: !918, file: !3, line: 249, column: 15)
!1083 = !DILocation(line: 107, column: 10, scope: !1076, inlinedAt: !1081)
!1084 = !{!957, !731, i64 40}
!1085 = !{!957, !731, i64 48}
!1086 = !DILocation(line: 107, column: 10, scope: !1087, inlinedAt: !1081)
!1087 = !DILexicalBlockFile(scope: !1076, file: !948, discriminator: 2)
!1088 = !DILocation(line: 249, column: 15, scope: !918, inlinedAt: !922)
!1089 = !DILocation(line: 107, column: 10, scope: !1090, inlinedAt: !1081)
!1090 = !DILexicalBlockFile(scope: !1076, file: !948, discriminator: 1)
!1091 = !DILocation(line: 249, column: 27, scope: !1082, inlinedAt: !922)
!1092 = !DILocation(line: 250, column: 13, scope: !1082, inlinedAt: !922)
!1093 = !DILocation(line: 250, column: 13, scope: !1094, inlinedAt: !922)
!1094 = !DILexicalBlockFile(scope: !1082, file: !3, discriminator: 1)
!1095 = !DILocation(line: 250, column: 13, scope: !1096, inlinedAt: !922)
!1096 = !DILexicalBlockFile(scope: !1082, file: !3, discriminator: 2)
!1097 = !DILocation(line: 252, column: 16, scope: !907, inlinedAt: !922)
!1098 = !DILocation(line: 251, column: 9, scope: !954, inlinedAt: !922)
!1099 = !DILocation(line: 323, column: 3, scope: !785)
!1100 = !DILocation(line: 325, column: 10, scope: !785)
!1101 = !DILocation(line: 326, column: 1, scope: !785)
!1102 = distinct !DISubprogram(name: "add_tab_stop", scope: !88, file: !88, line: 74, type: !1103, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !25}
!1105 = !{!1106, !1107, !1108}
!1106 = !DILocalVariable(name: "tabval", arg: 1, scope: !1102, file: !88, line: 74, type: !25)
!1107 = !DILocalVariable(name: "prev_column", scope: !1102, file: !88, line: 76, type: !25)
!1108 = !DILocalVariable(name: "column_width", scope: !1102, file: !88, line: 77, type: !25)
!1109 = !DILocation(line: 74, column: 25, scope: !1102)
!1110 = !DILocation(line: 76, column: 27, scope: !1102)
!1111 = !DILocation(line: 76, column: 44, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1102, file: !88, discriminator: 1)
!1113 = !DILocation(line: 76, column: 68, scope: !1112)
!1114 = !DILocation(line: 76, column: 27, scope: !1112)
!1115 = !DILocation(line: 76, column: 27, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1102, file: !88, discriminator: 3)
!1117 = !DILocation(line: 76, column: 13, scope: !1102)
!1118 = !DILocation(line: 77, column: 40, scope: !1102)
!1119 = !DILocation(line: 77, column: 59, scope: !1112)
!1120 = !DILocation(line: 77, column: 28, scope: !1102)
!1121 = !DILocation(line: 77, column: 13, scope: !1102)
!1122 = !DILocation(line: 79, column: 25, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1102, file: !88, line: 79, column: 7)
!1124 = !DILocation(line: 79, column: 22, scope: !1123)
!1125 = !DILocation(line: 79, column: 7, scope: !1102)
!1126 = !DILocation(line: 80, column: 16, scope: !1123)
!1127 = !DILocation(line: 180, column: 19, scope: !115, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 80, column: 16, scope: !1123)
!1129 = !DILocation(line: 180, column: 30, scope: !115, inlinedAt: !1128)
!1130 = !DILocation(line: 180, column: 41, scope: !115, inlinedAt: !1128)
!1131 = !DILocation(line: 182, column: 10, scope: !115, inlinedAt: !1128)
!1132 = !DILocation(line: 184, column: 9, scope: !1133, inlinedAt: !1128)
!1133 = distinct !DILexicalBlock(scope: !115, file: !114, line: 184, column: 7)
!1134 = !DILocation(line: 184, column: 7, scope: !115, inlinedAt: !1128)
!1135 = !DILocation(line: 186, column: 11, scope: !1136, inlinedAt: !1128)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !114, line: 185, column: 5)
!1137 = !DILocation(line: 205, column: 11, scope: !1138, inlinedAt: !1128)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !114, line: 204, column: 11)
!1139 = distinct !DILexicalBlock(scope: !1133, file: !114, line: 199, column: 5)
!1140 = !DILocation(line: 204, column: 11, scope: !1139, inlinedAt: !1128)
!1141 = !DILocation(line: 206, column: 9, scope: !1138, inlinedAt: !1128)
!1142 = !DILocation(line: 207, column: 14, scope: !1139, inlinedAt: !1128)
!1143 = !DILocation(line: 207, column: 18, scope: !1139, inlinedAt: !1128)
!1144 = !DILocation(line: 207, column: 9, scope: !1139, inlinedAt: !1128)
!1145 = !DILocation(line: 210, column: 7, scope: !115, inlinedAt: !1128)
!1146 = !DILocation(line: 211, column: 25, scope: !115, inlinedAt: !1128)
!1147 = !DILocation(line: 211, column: 10, scope: !115, inlinedAt: !1128)
!1148 = !DILocation(line: 80, column: 14, scope: !1123)
!1149 = !DILocation(line: 80, column: 5, scope: !1123)
!1150 = !DILocation(line: 81, column: 26, scope: !1102)
!1151 = !DILocation(line: 81, column: 3, scope: !1102)
!1152 = !DILocation(line: 81, column: 30, scope: !1102)
!1153 = !DILocation(line: 83, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1102, file: !88, line: 83, column: 7)
!1155 = !DILocation(line: 83, column: 24, scope: !1154)
!1156 = !DILocation(line: 83, column: 7, scope: !1102)
!1157 = !DILocation(line: 87, column: 24, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !88, line: 84, column: 5)
!1159 = !DILocation(line: 88, column: 5, scope: !1158)
!1160 = !DILocation(line: 89, column: 1, scope: !1102)
!1161 = distinct !DISubprogram(name: "parse_tab_stops", scope: !88, file: !88, line: 111, type: !47, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1179}
!1163 = !DILocalVariable(name: "stops", arg: 1, scope: !1161, file: !88, line: 111, type: !37)
!1164 = !DILocalVariable(name: "have_tabval", scope: !1161, file: !88, line: 113, type: !224)
!1165 = !DILocalVariable(name: "tabval", scope: !1161, file: !88, line: 114, type: !25)
!1166 = !DILocalVariable(name: "extend_tabval", scope: !1161, file: !88, line: 115, type: !224)
!1167 = !DILocalVariable(name: "num_start", scope: !1161, file: !88, line: 116, type: !37)
!1168 = !DILocalVariable(name: "ok", scope: !1161, file: !88, line: 117, type: !224)
!1169 = !DILocalVariable(name: "len", scope: !1170, file: !88, line: 160, type: !30)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !88, line: 159, column: 13)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !88, line: 158, column: 15)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !88, line: 149, column: 9)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !88, line: 148, column: 16)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !88, line: 138, column: 16)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !88, line: 121, column: 11)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !88, line: 120, column: 5)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !88, line: 119, column: 3)
!1178 = distinct !DILexicalBlock(scope: !1161, file: !88, line: 119, column: 3)
!1179 = !DILocalVariable(name: "bad_num", scope: !1170, file: !88, line: 161, type: !21)
!1180 = !DILocation(line: 111, column: 30, scope: !1161)
!1181 = !DILocation(line: 113, column: 8, scope: !1161)
!1182 = !DILocation(line: 114, column: 13, scope: !1161)
!1183 = !DILocation(line: 115, column: 8, scope: !1161)
!1184 = !DILocation(line: 116, column: 15, scope: !1161)
!1185 = !DILocation(line: 117, column: 8, scope: !1161)
!1186 = !DILocation(line: 119, column: 3, scope: !1161)
!1187 = !DILocation(line: 119, column: 10, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1177, file: !88, discriminator: 1)
!1189 = !DILocation(line: 119, column: 3, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1178, file: !88, discriminator: 1)
!1191 = !DILocation(line: 121, column: 28, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1175, file: !88, discriminator: 1)
!1193 = !DILocation(line: 121, column: 11, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1176, file: !88, discriminator: 1)
!1195 = !DILocation(line: 123, column: 15, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !88, line: 123, column: 15)
!1197 = distinct !DILexicalBlock(scope: !1175, file: !88, line: 122, column: 9)
!1198 = !DILocation(line: 123, column: 15, scope: !1197)
!1199 = !DILocation(line: 125, column: 19, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !88, line: 125, column: 19)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !88, line: 124, column: 13)
!1202 = !DILocation(line: 125, column: 19, scope: !1201)
!1203 = !DILocalVariable(name: "tabval", arg: 1, scope: !1204, file: !88, line: 92, type: !25)
!1204 = distinct !DISubprogram(name: "set_extend_size", scope: !88, file: !88, line: 92, type: !1205, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!224, !25}
!1207 = !{!1203, !1208}
!1208 = !DILocalVariable(name: "ok", scope: !1204, file: !88, line: 94, type: !224)
!1209 = !DILocation(line: 92, column: 28, scope: !1204, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 127, column: 25, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !88, line: 127, column: 23)
!1212 = distinct !DILexicalBlock(scope: !1200, file: !88, line: 126, column: 17)
!1213 = !DILocation(line: 94, column: 8, scope: !1204, inlinedAt: !1210)
!1214 = !DILocation(line: 96, column: 7, scope: !1215, inlinedAt: !1210)
!1215 = distinct !DILexicalBlock(scope: !1204, file: !88, line: 96, column: 7)
!1216 = !DILocation(line: 96, column: 7, scope: !1204, inlinedAt: !1210)
!1217 = !DILocation(line: 103, column: 15, scope: !1204, inlinedAt: !1210)
!1218 = !DILocation(line: 127, column: 23, scope: !1212)
!1219 = !DILocation(line: 99, column: 14, scope: !1220, inlinedAt: !1210)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !88, line: 97, column: 5)
!1221 = !DILocation(line: 98, column: 7, scope: !1220, inlinedAt: !1210)
!1222 = !DILocation(line: 74, column: 25, scope: !1102, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 134, column: 17, scope: !1200)
!1224 = !DILocation(line: 76, column: 27, scope: !1102, inlinedAt: !1223)
!1225 = !DILocation(line: 76, column: 44, scope: !1112, inlinedAt: !1223)
!1226 = !DILocation(line: 76, column: 68, scope: !1112, inlinedAt: !1223)
!1227 = !DILocation(line: 76, column: 27, scope: !1112, inlinedAt: !1223)
!1228 = !DILocation(line: 76, column: 27, scope: !1116, inlinedAt: !1223)
!1229 = !DILocation(line: 76, column: 13, scope: !1102, inlinedAt: !1223)
!1230 = !DILocation(line: 77, column: 40, scope: !1102, inlinedAt: !1223)
!1231 = !DILocation(line: 77, column: 59, scope: !1112, inlinedAt: !1223)
!1232 = !DILocation(line: 77, column: 28, scope: !1102, inlinedAt: !1223)
!1233 = !DILocation(line: 77, column: 13, scope: !1102, inlinedAt: !1223)
!1234 = !DILocation(line: 79, column: 25, scope: !1123, inlinedAt: !1223)
!1235 = !DILocation(line: 79, column: 22, scope: !1123, inlinedAt: !1223)
!1236 = !DILocation(line: 79, column: 7, scope: !1102, inlinedAt: !1223)
!1237 = !DILocation(line: 80, column: 16, scope: !1123, inlinedAt: !1223)
!1238 = !DILocation(line: 180, column: 19, scope: !115, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 80, column: 16, scope: !1123, inlinedAt: !1223)
!1240 = !DILocation(line: 180, column: 30, scope: !115, inlinedAt: !1239)
!1241 = !DILocation(line: 180, column: 41, scope: !115, inlinedAt: !1239)
!1242 = !DILocation(line: 182, column: 10, scope: !115, inlinedAt: !1239)
!1243 = !DILocation(line: 184, column: 9, scope: !1133, inlinedAt: !1239)
!1244 = !DILocation(line: 184, column: 7, scope: !115, inlinedAt: !1239)
!1245 = !DILocation(line: 186, column: 11, scope: !1136, inlinedAt: !1239)
!1246 = !DILocation(line: 205, column: 11, scope: !1138, inlinedAt: !1239)
!1247 = !DILocation(line: 204, column: 11, scope: !1139, inlinedAt: !1239)
!1248 = !DILocation(line: 206, column: 9, scope: !1138, inlinedAt: !1239)
!1249 = !DILocation(line: 207, column: 14, scope: !1139, inlinedAt: !1239)
!1250 = !DILocation(line: 207, column: 18, scope: !1139, inlinedAt: !1239)
!1251 = !DILocation(line: 207, column: 9, scope: !1139, inlinedAt: !1239)
!1252 = !DILocation(line: 210, column: 7, scope: !115, inlinedAt: !1239)
!1253 = !DILocation(line: 211, column: 25, scope: !115, inlinedAt: !1239)
!1254 = !DILocation(line: 211, column: 10, scope: !115, inlinedAt: !1239)
!1255 = !DILocation(line: 80, column: 14, scope: !1123, inlinedAt: !1223)
!1256 = !DILocation(line: 80, column: 5, scope: !1123, inlinedAt: !1223)
!1257 = !DILocation(line: 81, column: 26, scope: !1102, inlinedAt: !1223)
!1258 = !DILocation(line: 81, column: 3, scope: !1102, inlinedAt: !1223)
!1259 = !DILocation(line: 81, column: 30, scope: !1102, inlinedAt: !1223)
!1260 = !DILocation(line: 83, column: 7, scope: !1154, inlinedAt: !1223)
!1261 = !DILocation(line: 83, column: 24, scope: !1154, inlinedAt: !1223)
!1262 = !DILocation(line: 83, column: 7, scope: !1102, inlinedAt: !1223)
!1263 = !DILocation(line: 87, column: 24, scope: !1158, inlinedAt: !1223)
!1264 = !DILocation(line: 88, column: 5, scope: !1158, inlinedAt: !1223)
!1265 = !DILocation(line: 138, column: 23, scope: !1174)
!1266 = !DILocation(line: 138, column: 16, scope: !1175)
!1267 = !DILocation(line: 140, column: 15, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !88, line: 140, column: 15)
!1269 = distinct !DILexicalBlock(scope: !1174, file: !88, line: 139, column: 9)
!1270 = !DILocation(line: 140, column: 15, scope: !1269)
!1271 = !DILocation(line: 142, column: 28, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !88, line: 141, column: 13)
!1273 = !DILocation(line: 143, column: 22, scope: !1272)
!1274 = !DILocation(line: 142, column: 15, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1272, file: !88, discriminator: 1)
!1276 = !DILocation(line: 145, column: 13, scope: !1272)
!1277 = !DILocation(line: 138, column: 16, scope: !1174)
!1278 = !DILocation(line: 148, column: 16, scope: !1173)
!1279 = !DILocation(line: 148, column: 16, scope: !1174)
!1280 = !DILocation(line: 150, column: 16, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1172, file: !88, line: 150, column: 15)
!1282 = !DILocation(line: 150, column: 15, scope: !1172)
!1283 = !DILocation(line: 158, column: 16, scope: !1171)
!1284 = !DILocation(line: 158, column: 16, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1171, file: !88, discriminator: 1)
!1286 = !DILocation(line: 158, column: 15, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1172, file: !88, discriminator: 4)
!1288 = !DILocation(line: 160, column: 28, scope: !1170)
!1289 = !DILocation(line: 160, column: 22, scope: !1170)
!1290 = !DILocation(line: 161, column: 31, scope: !1170)
!1291 = !DILocation(line: 161, column: 21, scope: !1170)
!1292 = !DILocation(line: 162, column: 28, scope: !1170)
!1293 = !DILocation(line: 162, column: 59, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1170, file: !88, discriminator: 1)
!1295 = !DILocation(line: 162, column: 15, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1170, file: !88, discriminator: 2)
!1297 = !DILocation(line: 163, column: 15, scope: !1170)
!1298 = !DILocation(line: 165, column: 33, scope: !1170)
!1299 = !DILocation(line: 165, column: 39, scope: !1170)
!1300 = !DILocation(line: 166, column: 13, scope: !1170)
!1301 = !DILocation(line: 170, column: 24, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1173, file: !88, line: 169, column: 9)
!1303 = !DILocation(line: 171, column: 18, scope: !1302)
!1304 = !DILocation(line: 170, column: 11, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1302, file: !88, discriminator: 1)
!1306 = !DILocation(line: 173, column: 11, scope: !1302)
!1307 = !DILocation(line: 119, column: 23, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1177, file: !88, discriminator: 2)
!1309 = !DILocation(line: 119, column: 3, scope: !1308)
!1310 = distinct !{!1310, !1311, !1312}
!1311 = !DILocation(line: 119, column: 3, scope: !1178)
!1312 = !DILocation(line: 175, column: 5, scope: !1178)
!1313 = !DILocation(line: 177, column: 10, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1161, file: !88, line: 177, column: 7)
!1315 = !DILocation(line: 179, column: 11, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !88, line: 179, column: 11)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !88, line: 178, column: 5)
!1318 = !DILocation(line: 179, column: 11, scope: !1317)
!1319 = !DILocation(line: 92, column: 28, scope: !1204, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 180, column: 15, scope: !1316)
!1321 = !DILocation(line: 94, column: 8, scope: !1204, inlinedAt: !1320)
!1322 = !DILocation(line: 96, column: 7, scope: !1215, inlinedAt: !1320)
!1323 = !DILocation(line: 96, column: 7, scope: !1204, inlinedAt: !1320)
!1324 = !DILocation(line: 99, column: 14, scope: !1220, inlinedAt: !1320)
!1325 = !DILocation(line: 98, column: 7, scope: !1220, inlinedAt: !1320)
!1326 = !DILocation(line: 102, column: 5, scope: !1220, inlinedAt: !1320)
!1327 = !DILocation(line: 103, column: 15, scope: !1204, inlinedAt: !1320)
!1328 = !DILocation(line: 180, column: 9, scope: !1316)
!1329 = !DILocation(line: 74, column: 25, scope: !1102, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 182, column: 9, scope: !1316)
!1331 = !DILocation(line: 76, column: 27, scope: !1102, inlinedAt: !1330)
!1332 = !DILocation(line: 76, column: 44, scope: !1112, inlinedAt: !1330)
!1333 = !DILocation(line: 76, column: 68, scope: !1112, inlinedAt: !1330)
!1334 = !DILocation(line: 76, column: 27, scope: !1112, inlinedAt: !1330)
!1335 = !DILocation(line: 76, column: 27, scope: !1116, inlinedAt: !1330)
!1336 = !DILocation(line: 76, column: 13, scope: !1102, inlinedAt: !1330)
!1337 = !DILocation(line: 77, column: 40, scope: !1102, inlinedAt: !1330)
!1338 = !DILocation(line: 77, column: 59, scope: !1112, inlinedAt: !1330)
!1339 = !DILocation(line: 77, column: 28, scope: !1102, inlinedAt: !1330)
!1340 = !DILocation(line: 77, column: 13, scope: !1102, inlinedAt: !1330)
!1341 = !DILocation(line: 79, column: 25, scope: !1123, inlinedAt: !1330)
!1342 = !DILocation(line: 79, column: 22, scope: !1123, inlinedAt: !1330)
!1343 = !DILocation(line: 79, column: 7, scope: !1102, inlinedAt: !1330)
!1344 = !DILocation(line: 80, column: 16, scope: !1123, inlinedAt: !1330)
!1345 = !DILocation(line: 180, column: 19, scope: !115, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 80, column: 16, scope: !1123, inlinedAt: !1330)
!1347 = !DILocation(line: 180, column: 30, scope: !115, inlinedAt: !1346)
!1348 = !DILocation(line: 180, column: 41, scope: !115, inlinedAt: !1346)
!1349 = !DILocation(line: 182, column: 10, scope: !115, inlinedAt: !1346)
!1350 = !DILocation(line: 184, column: 9, scope: !1133, inlinedAt: !1346)
!1351 = !DILocation(line: 184, column: 7, scope: !115, inlinedAt: !1346)
!1352 = !DILocation(line: 186, column: 11, scope: !1136, inlinedAt: !1346)
!1353 = !DILocation(line: 205, column: 11, scope: !1138, inlinedAt: !1346)
!1354 = !DILocation(line: 204, column: 11, scope: !1139, inlinedAt: !1346)
!1355 = !DILocation(line: 206, column: 9, scope: !1138, inlinedAt: !1346)
!1356 = !DILocation(line: 207, column: 14, scope: !1139, inlinedAt: !1346)
!1357 = !DILocation(line: 207, column: 18, scope: !1139, inlinedAt: !1346)
!1358 = !DILocation(line: 207, column: 9, scope: !1139, inlinedAt: !1346)
!1359 = !DILocation(line: 210, column: 7, scope: !115, inlinedAt: !1346)
!1360 = !DILocation(line: 211, column: 25, scope: !115, inlinedAt: !1346)
!1361 = !DILocation(line: 211, column: 10, scope: !115, inlinedAt: !1346)
!1362 = !DILocation(line: 80, column: 14, scope: !1123, inlinedAt: !1330)
!1363 = !DILocation(line: 80, column: 5, scope: !1123, inlinedAt: !1330)
!1364 = !DILocation(line: 81, column: 26, scope: !1102, inlinedAt: !1330)
!1365 = !DILocation(line: 81, column: 3, scope: !1102, inlinedAt: !1330)
!1366 = !DILocation(line: 81, column: 30, scope: !1102, inlinedAt: !1330)
!1367 = !DILocation(line: 83, column: 7, scope: !1154, inlinedAt: !1330)
!1368 = !DILocation(line: 83, column: 24, scope: !1154, inlinedAt: !1330)
!1369 = !DILocation(line: 83, column: 7, scope: !1102, inlinedAt: !1330)
!1370 = !DILocation(line: 87, column: 24, scope: !1158, inlinedAt: !1330)
!1371 = !DILocation(line: 88, column: 5, scope: !1158, inlinedAt: !1330)
!1372 = !DILocation(line: 185, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1161, file: !88, line: 185, column: 7)
!1374 = !DILocation(line: 185, column: 7, scope: !1161)
!1375 = !DILocation(line: 186, column: 5, scope: !1373)
!1376 = !DILocation(line: 187, column: 1, scope: !1161)
!1377 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !88, file: !88, line: 217, type: !746, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !237)
!1378 = !DILocation(line: 219, column: 23, scope: !1377)
!1379 = !DILocation(line: 219, column: 33, scope: !1377)
!1380 = !DILocalVariable(name: "tabs", arg: 1, scope: !1381, file: !88, line: 193, type: !1384)
!1381 = distinct !DISubprogram(name: "validate_tab_stops", scope: !88, file: !88, line: 193, type: !1382, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1386)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !1384, !30}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!1386 = !{!1380, !1387, !1388, !1389}
!1387 = !DILocalVariable(name: "entries", arg: 2, scope: !1381, file: !88, line: 193, type: !30)
!1388 = !DILocalVariable(name: "prev_tab", scope: !1381, file: !88, line: 195, type: !25)
!1389 = !DILocalVariable(name: "i", scope: !1381, file: !88, line: 196, type: !30)
!1390 = !DILocation(line: 193, column: 38, scope: !1381, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 219, column: 3, scope: !1377)
!1392 = !DILocation(line: 193, column: 51, scope: !1381, inlinedAt: !1391)
!1393 = !DILocation(line: 195, column: 13, scope: !1381, inlinedAt: !1391)
!1394 = !DILocation(line: 196, column: 10, scope: !1381, inlinedAt: !1391)
!1395 = !DILocation(line: 198, column: 17, scope: !1396, inlinedAt: !1391)
!1396 = !DILexicalBlockFile(scope: !1397, file: !88, discriminator: 1)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !88, line: 198, column: 3)
!1398 = distinct !DILexicalBlock(scope: !1381, file: !88, line: 198, column: 3)
!1399 = !DILocation(line: 198, column: 3, scope: !1400, inlinedAt: !1391)
!1400 = !DILexicalBlockFile(scope: !1398, file: !88, discriminator: 1)
!1401 = !DILocation(line: 200, column: 11, scope: !1402, inlinedAt: !1391)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !88, line: 200, column: 11)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !88, line: 199, column: 5)
!1404 = distinct !{!1404, !1405, !1406}
!1405 = !DILocation(line: 198, column: 3, scope: !1398)
!1406 = !DILocation(line: 205, column: 5, scope: !1398)
!1407 = !DILocation(line: 200, column: 19, scope: !1402, inlinedAt: !1391)
!1408 = !DILocation(line: 200, column: 11, scope: !1403, inlinedAt: !1391)
!1409 = !DILocation(line: 201, column: 9, scope: !1402, inlinedAt: !1391)
!1410 = !DILocation(line: 201, column: 9, scope: !1411, inlinedAt: !1391)
!1411 = !DILexicalBlockFile(scope: !1402, file: !88, discriminator: 1)
!1412 = !DILocation(line: 202, column: 19, scope: !1413, inlinedAt: !1391)
!1413 = distinct !DILexicalBlock(scope: !1403, file: !88, line: 202, column: 11)
!1414 = !DILocation(line: 198, column: 29, scope: !1415, inlinedAt: !1391)
!1415 = !DILexicalBlockFile(scope: !1397, file: !88, discriminator: 2)
!1416 = !DILocation(line: 202, column: 11, scope: !1403, inlinedAt: !1391)
!1417 = !DILocation(line: 203, column: 9, scope: !1413, inlinedAt: !1391)
!1418 = !DILocation(line: 203, column: 9, scope: !1419, inlinedAt: !1391)
!1419 = !DILexicalBlockFile(scope: !1413, file: !88, discriminator: 1)
!1420 = !DILocation(line: 222, column: 35, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1377, file: !88, line: 221, column: 7)
!1422 = !DILocation(line: 222, column: 33, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1421, file: !88, discriminator: 3)
!1424 = !DILocation(line: 222, column: 5, scope: !1423)
!1425 = !DILocation(line: 223, column: 27, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !88, line: 223, column: 12)
!1427 = !DILocation(line: 223, column: 37, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1426, file: !88, discriminator: 1)
!1429 = !DILocation(line: 223, column: 32, scope: !1426)
!1430 = !DILocation(line: 224, column: 16, scope: !1426)
!1431 = !DILocation(line: 224, column: 5, scope: !1426)
!1432 = !DILocation(line: 227, column: 1, scope: !1377)
!1433 = distinct !DISubprogram(name: "get_next_tab_column", scope: !88, file: !88, line: 231, type: !1434, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1437)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!25, !1385, !118, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1437 = !{!1438, !1439, !1440, !1441}
!1438 = !DILocalVariable(name: "column", arg: 1, scope: !1433, file: !88, line: 231, type: !1385)
!1439 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1433, file: !88, line: 231, type: !118)
!1440 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1433, file: !88, line: 232, type: !1436)
!1441 = !DILocalVariable(name: "tab", scope: !1442, file: !88, line: 244, type: !25)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !88, line: 243, column: 5)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !88, line: 242, column: 3)
!1444 = distinct !DILexicalBlock(scope: !1433, file: !88, line: 242, column: 3)
!1445 = !DILocation(line: 231, column: 38, scope: !1433)
!1446 = !DILocation(line: 231, column: 54, scope: !1433)
!1447 = !DILocation(line: 232, column: 28, scope: !1433)
!1448 = !DILocation(line: 234, column: 13, scope: !1433)
!1449 = !DILocation(line: 237, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1433, file: !88, line: 237, column: 7)
!1451 = !DILocation(line: 237, column: 7, scope: !1433)
!1452 = !DILocation(line: 242, column: 11, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1443, file: !88, discriminator: 1)
!1454 = !DILocation(line: 242, column: 24, scope: !1453)
!1455 = !DILocation(line: 242, column: 22, scope: !1453)
!1456 = !DILocation(line: 242, column: 3, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1444, file: !88, discriminator: 1)
!1458 = !DILocation(line: 238, column: 40, scope: !1450)
!1459 = !DILocation(line: 238, column: 31, scope: !1450)
!1460 = !DILocation(line: 238, column: 19, scope: !1450)
!1461 = !DILocation(line: 238, column: 5, scope: !1450)
!1462 = !DILocation(line: 244, column: 25, scope: !1442)
!1463 = !DILocation(line: 244, column: 19, scope: !1442)
!1464 = !DILocation(line: 245, column: 20, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1442, file: !88, line: 245, column: 13)
!1466 = !DILocation(line: 242, column: 53, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1443, file: !88, discriminator: 2)
!1468 = distinct !{!1468, !1469, !1470}
!1469 = !DILocation(line: 242, column: 3, scope: !1444)
!1470 = !DILocation(line: 247, column: 5, scope: !1444)
!1471 = !DILocation(line: 250, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1433, file: !88, line: 250, column: 7)
!1473 = !DILocation(line: 250, column: 7, scope: !1433)
!1474 = !DILocation(line: 251, column: 43, scope: !1472)
!1475 = !DILocation(line: 251, column: 34, scope: !1472)
!1476 = !DILocation(line: 251, column: 19, scope: !1472)
!1477 = !DILocation(line: 251, column: 5, scope: !1472)
!1478 = !DILocation(line: 253, column: 13, scope: !1433)
!1479 = !DILocation(line: 254, column: 3, scope: !1433)
!1480 = !DILocation(line: 255, column: 1, scope: !1433)
!1481 = distinct !DISubprogram(name: "set_file_list", scope: !88, file: !88, line: 262, type: !1482, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !232}
!1484 = !{!1485}
!1485 = !DILocalVariable(name: "list", arg: 1, scope: !1481, file: !88, line: 262, type: !232)
!1486 = !DILocation(line: 262, column: 23, scope: !1481)
!1487 = !DILocation(line: 266, column: 8, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1481, file: !88, line: 266, column: 7)
!1489 = !DILocation(line: 266, column: 7, scope: !1481)
!1490 = !DILocation(line: 270, column: 1, scope: !1481)
!1491 = !DILocation(line: 278, column: 18, scope: !133)
!1492 = !DILocation(line: 283, column: 7, scope: !197)
!1493 = !DILocation(line: 283, column: 7, scope: !133)
!1494 = !DILocalVariable(name: "__stream", arg: 1, scope: !1495, file: !948, line: 132, type: !136)
!1495 = distinct !DISubprogram(name: "ferror_unlocked", scope: !948, file: !948, line: 132, type: !1496, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!39, !136}
!1498 = !{!1494}
!1499 = !DILocation(line: 132, column: 1, scope: !1495, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 285, column: 11, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !196, file: !88, line: 285, column: 11)
!1502 = !DILocation(line: 134, column: 10, scope: !1495, inlinedAt: !1500)
!1503 = !{!957, !855, i64 0}
!1504 = !DILocation(line: 285, column: 11, scope: !1501)
!1505 = !DILocation(line: 285, column: 11, scope: !196)
!1506 = !DILocation(line: 287, column: 21, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1501, file: !88, line: 286, column: 9)
!1508 = !DILocation(line: 287, column: 34, scope: !1507)
!1509 = !DILocation(line: 287, column: 34, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1507, file: !88, discriminator: 1)
!1511 = !DILocation(line: 287, column: 11, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1507, file: !88, discriminator: 2)
!1513 = !DILocation(line: 288, column: 23, scope: !1507)
!1514 = !DILocation(line: 289, column: 9, scope: !1507)
!1515 = !DILocation(line: 290, column: 11, scope: !194)
!1516 = !DILocation(line: 290, column: 11, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !200, file: !88, discriminator: 2)
!1518 = !DILocation(line: 290, column: 11, scope: !200)
!1519 = !DILocation(line: 290, column: 11, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1521, file: !88, discriminator: 3)
!1521 = distinct !DILexicalBlock(scope: !200, file: !88, line: 290, column: 11)
!1522 = !DILocation(line: 290, column: 11, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1521, file: !88, discriminator: 2)
!1524 = !DILocation(line: 290, column: 11, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1526, file: !88, discriminator: 4)
!1526 = distinct !DILexicalBlock(scope: !1521, file: !88, line: 290, column: 11)
!1527 = !DILocation(line: 290, column: 11, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !194, file: !88, discriminator: 11)
!1529 = !DILocation(line: 290, column: 11, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !196, file: !88, discriminator: 13)
!1531 = !DILocation(line: 291, column: 9, scope: !195)
!1532 = !DILocation(line: 292, column: 16, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !195, file: !88, line: 292, column: 16)
!1534 = !DILocation(line: 292, column: 28, scope: !1533)
!1535 = !DILocation(line: 292, column: 16, scope: !195)
!1536 = !DILocation(line: 294, column: 21, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !88, line: 293, column: 9)
!1538 = !DILocation(line: 294, column: 34, scope: !1537)
!1539 = !DILocation(line: 294, column: 34, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1537, file: !88, discriminator: 1)
!1541 = !DILocation(line: 294, column: 11, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1537, file: !88, discriminator: 2)
!1543 = !DILocation(line: 295, column: 23, scope: !1537)
!1544 = !DILocation(line: 296, column: 9, scope: !1537)
!1545 = !DILocation(line: 299, column: 28, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !133, file: !88, discriminator: 1)
!1547 = !DILocation(line: 299, column: 18, scope: !1546)
!1548 = !DILocation(line: 281, column: 9, scope: !133)
!1549 = !DILocation(line: 299, column: 32, scope: !1546)
!1550 = !DILocation(line: 299, column: 3, scope: !1546)
!1551 = !DILocation(line: 301, column: 11, scope: !203)
!1552 = !DILocation(line: 301, column: 11, scope: !208)
!1553 = !DILocation(line: 301, column: 11, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !208, file: !88, discriminator: 2)
!1555 = !DILocation(line: 301, column: 11, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1557, file: !88, discriminator: 3)
!1557 = distinct !DILexicalBlock(scope: !208, file: !88, line: 301, column: 11)
!1558 = !DILocation(line: 301, column: 11, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1557, file: !88, discriminator: 2)
!1560 = !DILocation(line: 301, column: 11, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1562, file: !88, discriminator: 4)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !88, line: 301, column: 11)
!1563 = !DILocation(line: 301, column: 11, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !204, file: !88, discriminator: 13)
!1565 = !DILocation(line: 301, column: 11, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !205, file: !88, discriminator: 13)
!1567 = !DILocation(line: 304, column: 16, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !204, file: !88, line: 302, column: 9)
!1569 = !DILocation(line: 305, column: 9, scope: !1568)
!1570 = !DILocation(line: 307, column: 14, scope: !204)
!1571 = !DILocation(line: 308, column: 11, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !205, file: !88, line: 308, column: 11)
!1573 = !DILocation(line: 308, column: 11, scope: !205)
!1574 = !DILocation(line: 310, column: 21, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !88, line: 309, column: 9)
!1576 = !DILocation(line: 311, column: 11, scope: !1575)
!1577 = !DILocation(line: 312, column: 11, scope: !1575)
!1578 = !DILocation(line: 314, column: 17, scope: !205)
!1579 = !DILocation(line: 314, column: 30, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !205, file: !88, discriminator: 1)
!1581 = !DILocation(line: 314, column: 7, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !205, file: !88, discriminator: 2)
!1583 = !DILocation(line: 315, column: 19, scope: !205)
!1584 = distinct !{!1584, !1585, !1586}
!1585 = !DILocation(line: 299, column: 3, scope: !133)
!1586 = !DILocation(line: 316, column: 5, scope: !133)
!1587 = !DILocation(line: 318, column: 1, scope: !133)
!1588 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !88, file: !88, line: 322, type: !746, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !237)
!1589 = !DILocation(line: 324, column: 25, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1588, file: !88, line: 324, column: 9)
!1591 = !DILocation(line: 324, column: 36, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1590, file: !88, discriminator: 1)
!1593 = !DILocation(line: 324, column: 28, scope: !1592)
!1594 = !DILocation(line: 324, column: 43, scope: !1592)
!1595 = !DILocation(line: 324, column: 9, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1588, file: !88, discriminator: 1)
!1597 = !DILocation(line: 325, column: 7, scope: !1590)
!1598 = !DILocation(line: 325, column: 7, scope: !1592)
!1599 = !DILocation(line: 326, column: 1, scope: !1588)
!1600 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !246, file: !246, line: 41, type: !47, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !1601)
!1601 = !{!1602}
!1602 = !DILocalVariable(name: "file", arg: 1, scope: !1600, file: !246, line: 41, type: !37)
!1603 = !DILocation(line: 41, column: 41, scope: !1600)
!1604 = !DILocation(line: 43, column: 13, scope: !1600)
!1605 = !DILocation(line: 44, column: 1, scope: !1600)
!1606 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !246, file: !246, line: 78, type: !1607, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !1609)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !224}
!1609 = !{!1610}
!1610 = !DILocalVariable(name: "ignore", arg: 1, scope: !1606, file: !246, line: 78, type: !224)
!1611 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1612 = !DILocation(line: 78, column: 37, scope: !1606)
!1613 = !DILocation(line: 80, column: 16, scope: !1606)
!1614 = !DILocation(line: 81, column: 1, scope: !1606)
!1615 = distinct !DISubprogram(name: "close_stdout", scope: !246, file: !246, line: 107, type: !746, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !1616)
!1616 = !{!1617}
!1617 = !DILocalVariable(name: "write_error", scope: !1618, file: !246, line: 112, type: !37)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !246, line: 111, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !246, line: 109, column: 7)
!1620 = !DILocation(line: 109, column: 21, scope: !1619)
!1621 = !DILocation(line: 109, column: 7, scope: !1619)
!1622 = !DILocation(line: 109, column: 29, scope: !1619)
!1623 = !DILocation(line: 110, column: 7, scope: !1619)
!1624 = !DILocation(line: 110, column: 12, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1619, file: !246, discriminator: 1)
!1626 = !DILocation(line: 114, column: 19, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !246, line: 113, column: 11)
!1628 = !DILocation(line: 110, column: 25, scope: !1625)
!1629 = !DILocation(line: 110, column: 28, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1619, file: !246, discriminator: 2)
!1631 = !DILocation(line: 110, column: 34, scope: !1630)
!1632 = !DILocation(line: 109, column: 7, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1615, file: !246, discriminator: 1)
!1634 = !DILocation(line: 112, column: 33, scope: !1618)
!1635 = !DILocation(line: 112, column: 19, scope: !1618)
!1636 = !DILocation(line: 113, column: 11, scope: !1627)
!1637 = !DILocation(line: 113, column: 11, scope: !1618)
!1638 = !DILocation(line: 114, column: 36, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1627, file: !246, discriminator: 1)
!1640 = !DILocation(line: 114, column: 9, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1627, file: !246, discriminator: 2)
!1642 = !DILocation(line: 114, column: 9, scope: !1627)
!1643 = !DILocation(line: 117, column: 9, scope: !1639)
!1644 = !DILocation(line: 119, column: 14, scope: !1618)
!1645 = !DILocation(line: 119, column: 7, scope: !1618)
!1646 = !DILocation(line: 122, column: 22, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1615, file: !246, line: 122, column: 8)
!1648 = !DILocation(line: 122, column: 8, scope: !1647)
!1649 = !DILocation(line: 122, column: 30, scope: !1647)
!1650 = !DILocation(line: 122, column: 8, scope: !1615)
!1651 = !DILocation(line: 123, column: 13, scope: !1647)
!1652 = !DILocation(line: 123, column: 6, scope: !1647)
!1653 = !DILocation(line: 124, column: 1, scope: !1615)
!1654 = distinct !DISubprogram(name: "fdadvise", scope: !1655, file: !1655, line: 31, type: !1656, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !1660)
!1655 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null, !39, !1658, !1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !138, line: 91, baseType: !166)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !105, line: 52, baseType: !104)
!1660 = !{!1661, !1662, !1663, !1664, !1665}
!1661 = !DILocalVariable(name: "fd", arg: 1, scope: !1654, file: !1655, line: 31, type: !39)
!1662 = !DILocalVariable(name: "offset", arg: 2, scope: !1654, file: !1655, line: 31, type: !1658)
!1663 = !DILocalVariable(name: "len", arg: 3, scope: !1654, file: !1655, line: 31, type: !1658)
!1664 = !DILocalVariable(name: "advice", arg: 4, scope: !1654, file: !1655, line: 31, type: !1659)
!1665 = !DILocalVariable(name: "__x", scope: !1666, file: !1655, line: 34, type: !39)
!1666 = distinct !DILexicalBlock(scope: !1654, file: !1655, line: 34, column: 3)
!1667 = !DILocation(line: 31, column: 15, scope: !1654)
!1668 = !DILocation(line: 31, column: 25, scope: !1654)
!1669 = !DILocation(line: 31, column: 39, scope: !1654)
!1670 = !DILocation(line: 31, column: 54, scope: !1654)
!1671 = !DILocation(line: 34, column: 3, scope: !1666)
!1672 = !DILocation(line: 36, column: 1, scope: !1654)
!1673 = distinct !DISubprogram(name: "fadvise", scope: !1655, file: !1655, line: 39, type: !1674, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !1716)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1676, !1659}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 49, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 241, size: 1728, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1678, file: !140, line: 242, baseType: !39, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1678, file: !140, line: 247, baseType: !21, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1678, file: !140, line: 248, baseType: !21, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1678, file: !140, line: 249, baseType: !21, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1678, file: !140, line: 250, baseType: !21, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1678, file: !140, line: 251, baseType: !21, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1678, file: !140, line: 252, baseType: !21, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1678, file: !140, line: 253, baseType: !21, size: 64, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1678, file: !140, line: 254, baseType: !21, size: 64, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1678, file: !140, line: 256, baseType: !21, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1678, file: !140, line: 257, baseType: !21, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1678, file: !140, line: 258, baseType: !21, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1678, file: !140, line: 260, baseType: !1693, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 156, size: 192, elements: !1695)
!1695 = !{!1696, !1697, !1699}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1694, file: !140, line: 157, baseType: !1693, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1694, file: !140, line: 158, baseType: !1698, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1694, file: !140, line: 162, baseType: !39, size: 32, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1678, file: !140, line: 262, baseType: !1698, size: 64, offset: 832)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1678, file: !140, line: 264, baseType: !39, size: 32, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1678, file: !140, line: 268, baseType: !39, size: 32, offset: 928)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1678, file: !140, line: 270, baseType: !166, size: 64, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1678, file: !140, line: 274, baseType: !40, size: 16, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1678, file: !140, line: 275, baseType: !170, size: 8, offset: 1040)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1678, file: !140, line: 276, baseType: !172, size: 8, offset: 1048)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1678, file: !140, line: 280, baseType: !176, size: 64, offset: 1088)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1678, file: !140, line: 289, baseType: !179, size: 64, offset: 1152)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1678, file: !140, line: 297, baseType: !23, size: 64, offset: 1216)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1678, file: !140, line: 298, baseType: !23, size: 64, offset: 1280)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1678, file: !140, line: 299, baseType: !23, size: 64, offset: 1344)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1678, file: !140, line: 300, baseType: !23, size: 64, offset: 1408)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1678, file: !140, line: 302, baseType: !30, size: 64, offset: 1472)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1678, file: !140, line: 303, baseType: !39, size: 32, offset: 1536)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1678, file: !140, line: 305, baseType: !187, size: 160, offset: 1568)
!1716 = !{!1717, !1718}
!1717 = !DILocalVariable(name: "fp", arg: 1, scope: !1673, file: !1655, line: 39, type: !1676)
!1718 = !DILocalVariable(name: "advice", arg: 2, scope: !1673, file: !1655, line: 39, type: !1659)
!1719 = !DILocation(line: 39, column: 16, scope: !1673)
!1720 = !DILocation(line: 39, column: 30, scope: !1673)
!1721 = !DILocation(line: 41, column: 7, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1673, file: !1655, line: 41, column: 7)
!1723 = !DILocation(line: 41, column: 7, scope: !1673)
!1724 = !DILocation(line: 42, column: 15, scope: !1722)
!1725 = !DILocation(line: 31, column: 15, scope: !1654, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 42, column: 5, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1722, file: !1655, discriminator: 1)
!1728 = !DILocation(line: 31, column: 25, scope: !1654, inlinedAt: !1726)
!1729 = !DILocation(line: 31, column: 39, scope: !1654, inlinedAt: !1726)
!1730 = !DILocation(line: 31, column: 54, scope: !1654, inlinedAt: !1726)
!1731 = !DILocation(line: 34, column: 3, scope: !1666, inlinedAt: !1726)
!1732 = !DILocation(line: 42, column: 5, scope: !1722)
!1733 = !DILocation(line: 43, column: 1, scope: !1673)
!1734 = distinct !DISubprogram(name: "set_program_name", scope: !260, file: !260, line: 39, type: !47, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !256, variables: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DILocalVariable(name: "argv0", arg: 1, scope: !1734, file: !260, line: 39, type: !37)
!1737 = !DILocalVariable(name: "slash", scope: !1734, file: !260, line: 46, type: !37)
!1738 = !DILocalVariable(name: "base", scope: !1734, file: !260, line: 47, type: !37)
!1739 = !DILocation(line: 39, column: 31, scope: !1734)
!1740 = !DILocation(line: 51, column: 13, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1734, file: !260, line: 51, column: 7)
!1742 = !DILocation(line: 51, column: 7, scope: !1734)
!1743 = !DILocation(line: 55, column: 14, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1741, file: !260, line: 52, column: 5)
!1745 = !DILocation(line: 54, column: 7, scope: !1744)
!1746 = !DILocation(line: 56, column: 7, scope: !1744)
!1747 = !DILocation(line: 59, column: 11, scope: !1734)
!1748 = !DILocation(line: 46, column: 15, scope: !1734)
!1749 = !DILocation(line: 60, column: 17, scope: !1734)
!1750 = !DILocation(line: 60, column: 33, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1734, file: !260, discriminator: 1)
!1752 = !DILocation(line: 60, column: 11, scope: !1734)
!1753 = !DILocation(line: 47, column: 15, scope: !1734)
!1754 = !DILocation(line: 61, column: 12, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1734, file: !260, line: 61, column: 7)
!1756 = !DILocation(line: 61, column: 20, scope: !1755)
!1757 = !DILocation(line: 61, column: 25, scope: !1755)
!1758 = !DILocation(line: 61, column: 28, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1755, file: !260, discriminator: 1)
!1760 = !DILocation(line: 61, column: 61, scope: !1759)
!1761 = !DILocation(line: 61, column: 7, scope: !1751)
!1762 = !DILocation(line: 64, column: 11, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !260, line: 64, column: 11)
!1764 = distinct !DILexicalBlock(scope: !1755, file: !260, line: 62, column: 5)
!1765 = !DILocation(line: 64, column: 36, scope: !1763)
!1766 = !DILocation(line: 64, column: 11, scope: !1764)
!1767 = !DILocation(line: 66, column: 24, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !260, line: 65, column: 9)
!1769 = !DILocation(line: 70, column: 41, scope: !1768)
!1770 = !DILocation(line: 72, column: 9, scope: !1768)
!1771 = !DILocation(line: 84, column: 16, scope: !1734)
!1772 = !DILocation(line: 90, column: 27, scope: !1734)
!1773 = !DILocation(line: 92, column: 1, scope: !1734)
!1774 = distinct !DISubprogram(name: "clone_quoting_options", scope: !275, file: !275, line: 114, type: !1775, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !1778)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1777, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!1778 = !{!1779, !1780, !1781}
!1779 = !DILocalVariable(name: "o", arg: 1, scope: !1774, file: !275, line: 114, type: !1777)
!1780 = !DILocalVariable(name: "e", scope: !1774, file: !275, line: 116, type: !39)
!1781 = !DILocalVariable(name: "p", scope: !1774, file: !275, line: 117, type: !1777)
!1782 = !DILocation(line: 114, column: 48, scope: !1774)
!1783 = !DILocation(line: 116, column: 11, scope: !1774)
!1784 = !DILocation(line: 116, column: 7, scope: !1774)
!1785 = !DILocation(line: 117, column: 40, scope: !1774)
!1786 = !DILocation(line: 117, column: 40, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1774, file: !275, discriminator: 3)
!1788 = !DILocation(line: 117, column: 31, scope: !1787)
!1789 = !DILocation(line: 117, column: 27, scope: !1774)
!1790 = !DILocation(line: 119, column: 9, scope: !1774)
!1791 = !DILocation(line: 120, column: 3, scope: !1774)
!1792 = distinct !DISubprogram(name: "get_quoting_style", scope: !275, file: !275, line: 125, type: !1793, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !1797)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!90, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!1797 = !{!1798}
!1798 = !DILocalVariable(name: "o", arg: 1, scope: !1792, file: !275, line: 125, type: !1795)
!1799 = !DILocation(line: 125, column: 50, scope: !1792)
!1800 = !DILocation(line: 127, column: 11, scope: !1792)
!1801 = !DILocation(line: 127, column: 46, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1792, file: !275, discriminator: 3)
!1803 = !{!1804, !732, i64 0}
!1804 = !{!"quoting_options", !732, i64 0, !855, i64 4, !732, i64 8, !731, i64 40, !731, i64 48}
!1805 = !DILocation(line: 127, column: 3, scope: !1802)
!1806 = distinct !DISubprogram(name: "set_quoting_style", scope: !275, file: !275, line: 133, type: !1807, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{null, !1777, !90}
!1809 = !{!1810, !1811}
!1810 = !DILocalVariable(name: "o", arg: 1, scope: !1806, file: !275, line: 133, type: !1777)
!1811 = !DILocalVariable(name: "s", arg: 2, scope: !1806, file: !275, line: 133, type: !90)
!1812 = !DILocation(line: 133, column: 44, scope: !1806)
!1813 = !DILocation(line: 133, column: 66, scope: !1806)
!1814 = !DILocation(line: 135, column: 4, scope: !1806)
!1815 = !DILocation(line: 135, column: 39, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1806, file: !275, discriminator: 3)
!1817 = !DILocation(line: 135, column: 45, scope: !1816)
!1818 = !DILocation(line: 136, column: 1, scope: !1806)
!1819 = distinct !DISubprogram(name: "set_char_quoting", scope: !275, file: !275, line: 144, type: !1820, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!39, !1777, !22, !39}
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1829, !1830}
!1823 = !DILocalVariable(name: "o", arg: 1, scope: !1819, file: !275, line: 144, type: !1777)
!1824 = !DILocalVariable(name: "c", arg: 2, scope: !1819, file: !275, line: 144, type: !22)
!1825 = !DILocalVariable(name: "i", arg: 3, scope: !1819, file: !275, line: 144, type: !39)
!1826 = !DILocalVariable(name: "uc", scope: !1819, file: !275, line: 146, type: !36)
!1827 = !DILocalVariable(name: "p", scope: !1819, file: !275, line: 147, type: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1829 = !DILocalVariable(name: "shift", scope: !1819, file: !275, line: 149, type: !39)
!1830 = !DILocalVariable(name: "r", scope: !1819, file: !275, line: 150, type: !39)
!1831 = !DILocation(line: 144, column: 43, scope: !1819)
!1832 = !DILocation(line: 144, column: 51, scope: !1819)
!1833 = !DILocation(line: 144, column: 58, scope: !1819)
!1834 = !DILocation(line: 146, column: 17, scope: !1819)
!1835 = !DILocation(line: 148, column: 6, scope: !1819)
!1836 = !DILocation(line: 148, column: 62, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1819, file: !275, discriminator: 3)
!1838 = !DILocation(line: 148, column: 57, scope: !1837)
!1839 = !DILocation(line: 147, column: 17, scope: !1819)
!1840 = !DILocation(line: 149, column: 18, scope: !1819)
!1841 = !DILocation(line: 149, column: 15, scope: !1819)
!1842 = !DILocation(line: 149, column: 7, scope: !1819)
!1843 = !DILocation(line: 150, column: 12, scope: !1819)
!1844 = !DILocation(line: 150, column: 15, scope: !1819)
!1845 = !DILocation(line: 150, column: 25, scope: !1819)
!1846 = !DILocation(line: 150, column: 7, scope: !1819)
!1847 = !DILocation(line: 151, column: 13, scope: !1819)
!1848 = !DILocation(line: 151, column: 18, scope: !1819)
!1849 = !DILocation(line: 151, column: 23, scope: !1819)
!1850 = !DILocation(line: 151, column: 6, scope: !1819)
!1851 = !DILocation(line: 152, column: 3, scope: !1819)
!1852 = distinct !DISubprogram(name: "set_quoting_flags", scope: !275, file: !275, line: 160, type: !1853, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !1855)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!39, !1777, !39}
!1855 = !{!1856, !1857, !1858}
!1856 = !DILocalVariable(name: "o", arg: 1, scope: !1852, file: !275, line: 160, type: !1777)
!1857 = !DILocalVariable(name: "i", arg: 2, scope: !1852, file: !275, line: 160, type: !39)
!1858 = !DILocalVariable(name: "r", scope: !1852, file: !275, line: 162, type: !39)
!1859 = !DILocation(line: 160, column: 44, scope: !1852)
!1860 = !DILocation(line: 160, column: 51, scope: !1852)
!1861 = !DILocation(line: 163, column: 8, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1852, file: !275, line: 163, column: 7)
!1863 = !DILocation(line: 163, column: 7, scope: !1852)
!1864 = !DILocation(line: 165, column: 10, scope: !1852)
!1865 = !{!1804, !855, i64 4}
!1866 = !DILocation(line: 162, column: 7, scope: !1852)
!1867 = !DILocation(line: 166, column: 12, scope: !1852)
!1868 = !DILocation(line: 167, column: 3, scope: !1852)
!1869 = distinct !DISubprogram(name: "set_custom_quoting", scope: !275, file: !275, line: 171, type: !1870, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !1872)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !1777, !37, !37}
!1872 = !{!1873, !1874, !1875}
!1873 = !DILocalVariable(name: "o", arg: 1, scope: !1869, file: !275, line: 171, type: !1777)
!1874 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1869, file: !275, line: 172, type: !37)
!1875 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1869, file: !275, line: 172, type: !37)
!1876 = !DILocation(line: 171, column: 45, scope: !1869)
!1877 = !DILocation(line: 172, column: 33, scope: !1869)
!1878 = !DILocation(line: 172, column: 57, scope: !1869)
!1879 = !DILocation(line: 174, column: 8, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1869, file: !275, line: 174, column: 7)
!1881 = !DILocation(line: 174, column: 7, scope: !1869)
!1882 = !DILocation(line: 176, column: 6, scope: !1869)
!1883 = !DILocation(line: 176, column: 12, scope: !1869)
!1884 = !DILocation(line: 177, column: 8, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1869, file: !275, line: 177, column: 7)
!1886 = !DILocation(line: 177, column: 23, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1885, file: !275, discriminator: 1)
!1888 = !DILocation(line: 177, column: 19, scope: !1885)
!1889 = !DILocation(line: 178, column: 5, scope: !1885)
!1890 = !DILocation(line: 179, column: 6, scope: !1869)
!1891 = !DILocation(line: 179, column: 17, scope: !1869)
!1892 = !{!1804, !731, i64 40}
!1893 = !DILocation(line: 180, column: 6, scope: !1869)
!1894 = !DILocation(line: 180, column: 18, scope: !1869)
!1895 = !{!1804, !731, i64 48}
!1896 = !DILocation(line: 181, column: 1, scope: !1869)
!1897 = distinct !DISubprogram(name: "quotearg_buffer", scope: !275, file: !275, line: 776, type: !1898, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !1900)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!30, !21, !30, !37, !30, !1795}
!1900 = !{!1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908}
!1901 = !DILocalVariable(name: "buffer", arg: 1, scope: !1897, file: !275, line: 776, type: !21)
!1902 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1897, file: !275, line: 776, type: !30)
!1903 = !DILocalVariable(name: "arg", arg: 3, scope: !1897, file: !275, line: 777, type: !37)
!1904 = !DILocalVariable(name: "argsize", arg: 4, scope: !1897, file: !275, line: 777, type: !30)
!1905 = !DILocalVariable(name: "o", arg: 5, scope: !1897, file: !275, line: 778, type: !1795)
!1906 = !DILocalVariable(name: "p", scope: !1897, file: !275, line: 780, type: !1795)
!1907 = !DILocalVariable(name: "e", scope: !1897, file: !275, line: 781, type: !39)
!1908 = !DILocalVariable(name: "r", scope: !1897, file: !275, line: 782, type: !30)
!1909 = !DILocation(line: 776, column: 24, scope: !1897)
!1910 = !DILocation(line: 776, column: 39, scope: !1897)
!1911 = !DILocation(line: 777, column: 30, scope: !1897)
!1912 = !DILocation(line: 777, column: 42, scope: !1897)
!1913 = !DILocation(line: 778, column: 48, scope: !1897)
!1914 = !DILocation(line: 780, column: 37, scope: !1897)
!1915 = !DILocation(line: 780, column: 33, scope: !1897)
!1916 = !DILocation(line: 781, column: 11, scope: !1897)
!1917 = !DILocation(line: 781, column: 7, scope: !1897)
!1918 = !DILocation(line: 783, column: 43, scope: !1897)
!1919 = !DILocation(line: 783, column: 53, scope: !1897)
!1920 = !DILocation(line: 783, column: 60, scope: !1897)
!1921 = !DILocation(line: 784, column: 43, scope: !1897)
!1922 = !DILocation(line: 784, column: 58, scope: !1897)
!1923 = !DILocation(line: 782, column: 14, scope: !1897)
!1924 = !DILocation(line: 782, column: 10, scope: !1897)
!1925 = !DILocation(line: 785, column: 9, scope: !1897)
!1926 = !DILocation(line: 786, column: 3, scope: !1897)
!1927 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !275, file: !275, line: 248, type: !1928, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !1932)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!30, !21, !30, !37, !30, !90, !39, !1930, !37, !37}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1957, !1958, !1959, !1960, !1961, !1964, !1965, !1982, !1985, !1986, !1993}
!1933 = !DILocalVariable(name: "buffer", arg: 1, scope: !1927, file: !275, line: 248, type: !21)
!1934 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1927, file: !275, line: 248, type: !30)
!1935 = !DILocalVariable(name: "arg", arg: 3, scope: !1927, file: !275, line: 249, type: !37)
!1936 = !DILocalVariable(name: "argsize", arg: 4, scope: !1927, file: !275, line: 249, type: !30)
!1937 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1927, file: !275, line: 250, type: !90)
!1938 = !DILocalVariable(name: "flags", arg: 6, scope: !1927, file: !275, line: 250, type: !39)
!1939 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1927, file: !275, line: 251, type: !1930)
!1940 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1927, file: !275, line: 252, type: !37)
!1941 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1927, file: !275, line: 253, type: !37)
!1942 = !DILocalVariable(name: "i", scope: !1927, file: !275, line: 255, type: !30)
!1943 = !DILocalVariable(name: "len", scope: !1927, file: !275, line: 256, type: !30)
!1944 = !DILocalVariable(name: "orig_buffersize", scope: !1927, file: !275, line: 257, type: !30)
!1945 = !DILocalVariable(name: "quote_string", scope: !1927, file: !275, line: 258, type: !37)
!1946 = !DILocalVariable(name: "quote_string_len", scope: !1927, file: !275, line: 259, type: !30)
!1947 = !DILocalVariable(name: "backslash_escapes", scope: !1927, file: !275, line: 260, type: !224)
!1948 = !DILocalVariable(name: "unibyte_locale", scope: !1927, file: !275, line: 261, type: !224)
!1949 = !DILocalVariable(name: "elide_outer_quotes", scope: !1927, file: !275, line: 262, type: !224)
!1950 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1927, file: !275, line: 263, type: !224)
!1951 = !DILocalVariable(name: "encountered_single_quote", scope: !1927, file: !275, line: 264, type: !224)
!1952 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1927, file: !275, line: 265, type: !224)
!1953 = !DILocalVariable(name: "c", scope: !1954, file: !275, line: 394, type: !36)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !275, line: 393, column: 5)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !275, line: 392, column: 3)
!1956 = distinct !DILexicalBlock(scope: !1927, file: !275, line: 392, column: 3)
!1957 = !DILocalVariable(name: "esc", scope: !1954, file: !275, line: 395, type: !36)
!1958 = !DILocalVariable(name: "is_right_quote", scope: !1954, file: !275, line: 396, type: !224)
!1959 = !DILocalVariable(name: "escaping", scope: !1954, file: !275, line: 397, type: !224)
!1960 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1954, file: !275, line: 398, type: !224)
!1961 = !DILocalVariable(name: "m", scope: !1962, file: !275, line: 602, type: !30)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 600, column: 11)
!1963 = distinct !DILexicalBlock(scope: !1954, file: !275, line: 418, column: 9)
!1964 = !DILocalVariable(name: "printable", scope: !1962, file: !275, line: 604, type: !224)
!1965 = !DILocalVariable(name: "mbstate", scope: !1966, file: !275, line: 613, type: !1968)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !275, line: 612, column: 15)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !275, line: 606, column: 17)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1969, line: 107, baseType: !1970)
!1969 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1969, line: 95, baseType: !1971)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1969, line: 83, size: 64, elements: !1972)
!1972 = !{!1973, !1974}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1971, file: !1969, line: 85, baseType: !39, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1971, file: !1969, line: 94, baseType: !1975, size: 32, offset: 32)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1971, file: !1969, line: 86, size: 32, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1975, file: !1969, line: 89, baseType: !127, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1975, file: !1969, line: 93, baseType: !1979, size: 32)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1980)
!1980 = !{!1981}
!1981 = !DISubrange(count: 4)
!1982 = !DILocalVariable(name: "w", scope: !1983, file: !275, line: 623, type: !1984)
!1983 = distinct !DILexicalBlock(scope: !1966, file: !275, line: 622, column: 19)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !31, line: 90, baseType: !39)
!1985 = !DILocalVariable(name: "bytes", scope: !1983, file: !275, line: 624, type: !30)
!1986 = !DILocalVariable(name: "j", scope: !1987, file: !275, line: 649, type: !30)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !275, line: 648, column: 27)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !275, line: 646, column: 29)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !275, line: 641, column: 23)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !275, line: 633, column: 30)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !275, line: 628, column: 30)
!1992 = distinct !DILexicalBlock(scope: !1983, file: !275, line: 626, column: 25)
!1993 = !DILocalVariable(name: "ilim", scope: !1994, file: !275, line: 676, type: !30)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !275, line: 673, column: 15)
!1995 = distinct !DILexicalBlock(scope: !1962, file: !275, line: 672, column: 17)
!1996 = !DILocation(line: 248, column: 33, scope: !1927)
!1997 = !DILocation(line: 248, column: 48, scope: !1927)
!1998 = !DILocation(line: 249, column: 39, scope: !1927)
!1999 = !DILocation(line: 249, column: 51, scope: !1927)
!2000 = !DILocation(line: 250, column: 46, scope: !1927)
!2001 = !DILocation(line: 250, column: 65, scope: !1927)
!2002 = !DILocation(line: 251, column: 47, scope: !1927)
!2003 = !DILocation(line: 252, column: 39, scope: !1927)
!2004 = !DILocation(line: 253, column: 39, scope: !1927)
!2005 = !DILocation(line: 256, column: 10, scope: !1927)
!2006 = !DILocation(line: 257, column: 10, scope: !1927)
!2007 = !DILocation(line: 258, column: 15, scope: !1927)
!2008 = !DILocation(line: 259, column: 10, scope: !1927)
!2009 = !DILocation(line: 260, column: 8, scope: !1927)
!2010 = !DILocation(line: 261, column: 25, scope: !1927)
!2011 = !DILocation(line: 261, column: 36, scope: !1927)
!2012 = !DILocation(line: 262, column: 8, scope: !1927)
!2013 = !DILocation(line: 263, column: 8, scope: !1927)
!2014 = !DILocation(line: 264, column: 8, scope: !1927)
!2015 = !DILocation(line: 265, column: 8, scope: !1927)
!2016 = !DILocation(line: 265, column: 3, scope: !1927)
!2017 = !DILocation(line: 308, column: 3, scope: !1927)
!2018 = !DILocation(line: 315, column: 11, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1927, file: !275, line: 309, column: 5)
!2020 = !DILocation(line: 315, column: 12, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2019, file: !275, line: 315, column: 11)
!2022 = !DILocation(line: 316, column: 9, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2024, file: !275, discriminator: 1)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !275, line: 316, column: 9)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !275, line: 316, column: 9)
!2026 = !DILocation(line: 316, column: 9, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2025, file: !275, discriminator: 1)
!2028 = !DILocation(line: 316, column: 9, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2024, file: !275, discriminator: 2)
!2030 = !DILocation(line: 354, column: 26, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !275, line: 332, column: 11)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !275, line: 331, column: 13)
!2033 = distinct !DILexicalBlock(scope: !2019, file: !275, line: 330, column: 7)
!2034 = !DILocation(line: 355, column: 27, scope: !2031)
!2035 = !DILocation(line: 356, column: 11, scope: !2031)
!2036 = !DILocation(line: 357, column: 14, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2033, file: !275, line: 357, column: 13)
!2038 = !DILocation(line: 357, column: 13, scope: !2033)
!2039 = !DILocation(line: 358, column: 43, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2041, file: !275, discriminator: 1)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !275, line: 358, column: 11)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !275, line: 358, column: 11)
!2043 = !DILocation(line: 358, column: 11, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2042, file: !275, discriminator: 1)
!2045 = !DILocation(line: 359, column: 13, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2047, file: !275, discriminator: 1)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !275, line: 359, column: 13)
!2048 = distinct !DILexicalBlock(scope: !2041, file: !275, line: 359, column: 13)
!2049 = !DILocation(line: 359, column: 13, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2048, file: !275, discriminator: 1)
!2051 = !DILocation(line: 359, column: 13, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2047, file: !275, discriminator: 2)
!2053 = !DILocation(line: 359, column: 13, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2048, file: !275, discriminator: 3)
!2055 = !DILocation(line: 358, column: 70, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2041, file: !275, discriminator: 2)
!2057 = distinct !{!2057, !2058, !2059}
!2058 = !DILocation(line: 358, column: 11, scope: !2042)
!2059 = !DILocation(line: 359, column: 13, scope: !2042)
!2060 = !DILocation(line: 362, column: 28, scope: !2033)
!2061 = !DILocation(line: 364, column: 7, scope: !2019)
!2062 = !DILocation(line: 367, column: 7, scope: !2019)
!2063 = !DILocation(line: 370, column: 7, scope: !2019)
!2064 = !DILocation(line: 373, column: 12, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2019, file: !275, line: 373, column: 11)
!2066 = !DILocation(line: 373, column: 11, scope: !2019)
!2067 = !DILocation(line: 378, column: 12, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2019, file: !275, line: 378, column: 11)
!2069 = !DILocation(line: 378, column: 11, scope: !2019)
!2070 = !DILocation(line: 379, column: 9, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2072, file: !275, discriminator: 1)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !275, line: 379, column: 9)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !275, line: 379, column: 9)
!2074 = !DILocation(line: 379, column: 9, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2073, file: !275, discriminator: 1)
!2076 = !DILocation(line: 379, column: 9, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2072, file: !275, discriminator: 2)
!2078 = !DILocation(line: 386, column: 7, scope: !2019)
!2079 = !DILocation(line: 389, column: 7, scope: !2019)
!2080 = !DILocation(line: 255, column: 10, scope: !1927)
!2081 = !DILocation(line: 392, column: 8, scope: !1956)
!2082 = !DILocation(line: 392, column: 27, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !1955, file: !275, discriminator: 1)
!2084 = !DILocation(line: 392, column: 19, scope: !2083)
!2085 = !DILocation(line: 392, column: 60, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !1955, file: !275, discriminator: 3)
!2087 = !DILocation(line: 392, column: 3, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !1956, file: !275, discriminator: 4)
!2089 = !DILocation(line: 392, column: 41, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !1955, file: !275, discriminator: 2)
!2091 = !DILocation(line: 392, column: 48, scope: !2090)
!2092 = !DILocation(line: 396, column: 12, scope: !1954)
!2093 = !DILocation(line: 397, column: 12, scope: !1954)
!2094 = !DILocation(line: 398, column: 12, scope: !1954)
!2095 = !DILocation(line: 401, column: 11, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1954, file: !275, line: 400, column: 11)
!2097 = !DILocation(line: 403, column: 17, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2096, file: !275, discriminator: 1)
!2099 = !DILocation(line: 404, column: 39, scope: !2096)
!2100 = !DILocation(line: 408, column: 32, scope: !2096)
!2101 = !DILocation(line: 404, column: 19, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2096, file: !275, discriminator: 2)
!2103 = !DILocation(line: 404, column: 15, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2096, file: !275, discriminator: 4)
!2105 = !DILocation(line: 409, column: 11, scope: !2096)
!2106 = !DILocation(line: 409, column: 26, scope: !2098)
!2107 = !DILocation(line: 409, column: 14, scope: !2098)
!2108 = !DILocation(line: 400, column: 11, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !1954, file: !275, discriminator: 1)
!2110 = !DILocation(line: 416, column: 11, scope: !1954)
!2111 = !DILocation(line: 394, column: 21, scope: !1954)
!2112 = !DILocation(line: 417, column: 7, scope: !1954)
!2113 = !DILocation(line: 420, column: 15, scope: !1963)
!2114 = !DILocation(line: 422, column: 15, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2116, file: !275, discriminator: 1)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !275, line: 422, column: 15)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !275, line: 421, column: 13)
!2118 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 420, column: 15)
!2119 = !DILocation(line: 422, column: 15, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2121, file: !275, discriminator: 4)
!2121 = distinct !DILexicalBlock(scope: !2116, file: !275, line: 422, column: 15)
!2122 = !DILocation(line: 422, column: 15, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2121, file: !275, discriminator: 3)
!2124 = !DILocation(line: 422, column: 15, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !275, discriminator: 6)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !275, line: 422, column: 15)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !275, line: 422, column: 15)
!2128 = distinct !DILexicalBlock(scope: !2121, file: !275, line: 422, column: 15)
!2129 = !DILocation(line: 422, column: 15, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2127, file: !275, discriminator: 6)
!2131 = !DILocation(line: 422, column: 15, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2126, file: !275, discriminator: 7)
!2133 = !DILocation(line: 422, column: 15, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2127, file: !275, discriminator: 8)
!2135 = !DILocation(line: 422, column: 15, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2137, file: !275, discriminator: 11)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !275, line: 422, column: 15)
!2138 = distinct !DILexicalBlock(scope: !2128, file: !275, line: 422, column: 15)
!2139 = !DILocation(line: 422, column: 15, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2138, file: !275, discriminator: 11)
!2141 = !DILocation(line: 422, column: 15, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2137, file: !275, discriminator: 12)
!2143 = !DILocation(line: 422, column: 15, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2138, file: !275, discriminator: 13)
!2145 = !DILocation(line: 422, column: 15, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2147, file: !275, discriminator: 16)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !275, line: 422, column: 15)
!2148 = distinct !DILexicalBlock(scope: !2128, file: !275, line: 422, column: 15)
!2149 = !DILocation(line: 422, column: 15, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2148, file: !275, discriminator: 16)
!2151 = !DILocation(line: 422, column: 15, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2147, file: !275, discriminator: 17)
!2153 = !DILocation(line: 422, column: 15, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2148, file: !275, discriminator: 18)
!2155 = !DILocation(line: 422, column: 15, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2128, file: !275, discriminator: 20)
!2157 = !DILocation(line: 422, column: 15, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2159, file: !275, discriminator: 22)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !275, line: 422, column: 15)
!2160 = distinct !DILexicalBlock(scope: !2116, file: !275, line: 422, column: 15)
!2161 = !DILocation(line: 422, column: 15, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2160, file: !275, discriminator: 22)
!2163 = !DILocation(line: 422, column: 15, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2159, file: !275, discriminator: 23)
!2165 = !DILocation(line: 422, column: 15, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2160, file: !275, discriminator: 24)
!2167 = !DILocation(line: 430, column: 19, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2117, file: !275, line: 429, column: 19)
!2169 = !DILocation(line: 430, column: 24, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2168, file: !275, discriminator: 1)
!2171 = !DILocation(line: 430, column: 28, scope: !2170)
!2172 = !DILocation(line: 430, column: 38, scope: !2170)
!2173 = !DILocation(line: 430, column: 48, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2168, file: !275, discriminator: 2)
!2175 = !DILocation(line: 430, column: 59, scope: !2174)
!2176 = !DILocation(line: 432, column: 19, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2178, file: !275, discriminator: 1)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !275, line: 432, column: 19)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !275, line: 432, column: 19)
!2180 = distinct !DILexicalBlock(scope: !2168, file: !275, line: 431, column: 17)
!2181 = !DILocation(line: 432, column: 19, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2179, file: !275, discriminator: 1)
!2183 = !DILocation(line: 432, column: 19, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2178, file: !275, discriminator: 2)
!2185 = !DILocation(line: 432, column: 19, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2179, file: !275, discriminator: 3)
!2187 = !DILocation(line: 433, column: 19, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2189, file: !275, discriminator: 1)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !275, line: 433, column: 19)
!2190 = distinct !DILexicalBlock(scope: !2180, file: !275, line: 433, column: 19)
!2191 = !DILocation(line: 433, column: 19, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2190, file: !275, discriminator: 1)
!2193 = !DILocation(line: 433, column: 19, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2189, file: !275, discriminator: 2)
!2195 = !DILocation(line: 433, column: 19, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2190, file: !275, discriminator: 3)
!2197 = !DILocation(line: 434, column: 17, scope: !2180)
!2198 = !DILocation(line: 441, column: 20, scope: !2118)
!2199 = !DILocation(line: 446, column: 11, scope: !1963)
!2200 = !DILocation(line: 449, column: 19, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 447, column: 13)
!2202 = !DILocation(line: 455, column: 19, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2201, file: !275, line: 454, column: 19)
!2204 = !DILocation(line: 455, column: 24, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2203, file: !275, discriminator: 1)
!2206 = !DILocation(line: 455, column: 28, scope: !2205)
!2207 = !DILocation(line: 455, column: 38, scope: !2205)
!2208 = !DILocation(line: 455, column: 47, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2203, file: !275, discriminator: 2)
!2210 = !DILocation(line: 455, column: 41, scope: !2209)
!2211 = !DILocation(line: 455, column: 52, scope: !2209)
!2212 = !DILocation(line: 454, column: 19, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2201, file: !275, discriminator: 1)
!2214 = !DILocation(line: 456, column: 25, scope: !2203)
!2215 = !DILocation(line: 456, column: 17, scope: !2203)
!2216 = !DILocation(line: 463, column: 25, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2203, file: !275, line: 457, column: 19)
!2218 = !DILocation(line: 467, column: 21, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !275, discriminator: 1)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !275, line: 467, column: 21)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !275, line: 467, column: 21)
!2222 = !DILocation(line: 467, column: 21, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2221, file: !275, discriminator: 1)
!2224 = !DILocation(line: 467, column: 21, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2220, file: !275, discriminator: 2)
!2226 = !DILocation(line: 467, column: 21, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2221, file: !275, discriminator: 3)
!2228 = !DILocation(line: 468, column: 21, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2230, file: !275, discriminator: 1)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !275, line: 468, column: 21)
!2231 = distinct !DILexicalBlock(scope: !2217, file: !275, line: 468, column: 21)
!2232 = !DILocation(line: 468, column: 21, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2231, file: !275, discriminator: 1)
!2234 = !DILocation(line: 468, column: 21, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2230, file: !275, discriminator: 2)
!2236 = !DILocation(line: 468, column: 21, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2231, file: !275, discriminator: 3)
!2238 = !DILocation(line: 469, column: 21, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2240, file: !275, discriminator: 1)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !275, line: 469, column: 21)
!2241 = distinct !DILexicalBlock(scope: !2217, file: !275, line: 469, column: 21)
!2242 = !DILocation(line: 469, column: 21, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2241, file: !275, discriminator: 1)
!2244 = !DILocation(line: 469, column: 21, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2240, file: !275, discriminator: 2)
!2246 = !DILocation(line: 469, column: 21, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2241, file: !275, discriminator: 3)
!2248 = !DILocation(line: 470, column: 21, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !275, discriminator: 1)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !275, line: 470, column: 21)
!2251 = distinct !DILexicalBlock(scope: !2217, file: !275, line: 470, column: 21)
!2252 = !DILocation(line: 470, column: 21, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2251, file: !275, discriminator: 1)
!2254 = !DILocation(line: 470, column: 21, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2250, file: !275, discriminator: 2)
!2256 = !DILocation(line: 470, column: 21, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2251, file: !275, discriminator: 3)
!2258 = !DILocation(line: 471, column: 21, scope: !2217)
!2259 = !DILocation(line: 395, column: 21, scope: !1954)
!2260 = !DILocation(line: 484, column: 31, scope: !1963)
!2261 = !DILocation(line: 485, column: 31, scope: !1963)
!2262 = !DILocation(line: 487, column: 31, scope: !1963)
!2263 = !DILocation(line: 488, column: 31, scope: !1963)
!2264 = !DILocation(line: 489, column: 31, scope: !1963)
!2265 = !DILocation(line: 492, column: 15, scope: !1963)
!2266 = !DILocation(line: 494, column: 19, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !275, line: 493, column: 13)
!2268 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 492, column: 15)
!2269 = !DILocation(line: 501, column: 33, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 501, column: 15)
!2271 = !DILocation(line: 506, column: 15, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 505, column: 15)
!2273 = !DILocation(line: 510, column: 15, scope: !1963)
!2274 = !DILocation(line: 518, column: 26, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 518, column: 15)
!2276 = !DILocation(line: 518, column: 15, scope: !1963)
!2277 = !DILocation(line: 518, column: 40, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2275, file: !275, discriminator: 1)
!2279 = !DILocation(line: 518, column: 47, scope: !2278)
!2280 = !DILocation(line: 522, column: 17, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 522, column: 15)
!2282 = !DILocation(line: 518, column: 18, scope: !2278)
!2283 = !DILocation(line: 518, column: 65, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2275, file: !275, discriminator: 2)
!2285 = !DILocation(line: 518, column: 15, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !1963, file: !275, discriminator: 2)
!2287 = !DILocation(line: 522, column: 15, scope: !1963)
!2288 = !DILocation(line: 526, column: 11, scope: !1963)
!2289 = !DILocation(line: 541, column: 15, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 540, column: 15)
!2291 = !DILocation(line: 548, column: 15, scope: !1963)
!2292 = !DILocation(line: 550, column: 19, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !275, line: 549, column: 13)
!2294 = distinct !DILexicalBlock(scope: !1963, file: !275, line: 548, column: 15)
!2295 = !DILocation(line: 553, column: 19, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2293, file: !275, line: 553, column: 19)
!2297 = !DILocation(line: 553, column: 35, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2296, file: !275, discriminator: 1)
!2299 = !DILocation(line: 553, column: 30, scope: !2296)
!2300 = !DILocation(line: 562, column: 15, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2302, file: !275, discriminator: 1)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !275, line: 562, column: 15)
!2303 = distinct !DILexicalBlock(scope: !2293, file: !275, line: 562, column: 15)
!2304 = !DILocation(line: 562, column: 15, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2303, file: !275, discriminator: 1)
!2306 = !DILocation(line: 562, column: 15, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2302, file: !275, discriminator: 2)
!2308 = !DILocation(line: 562, column: 15, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2303, file: !275, discriminator: 3)
!2310 = !DILocation(line: 563, column: 15, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2312, file: !275, discriminator: 1)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !275, line: 563, column: 15)
!2313 = distinct !DILexicalBlock(scope: !2293, file: !275, line: 563, column: 15)
!2314 = !DILocation(line: 563, column: 15, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2313, file: !275, discriminator: 1)
!2316 = !DILocation(line: 563, column: 15, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2312, file: !275, discriminator: 2)
!2318 = !DILocation(line: 563, column: 15, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2313, file: !275, discriminator: 3)
!2320 = !DILocation(line: 564, column: 15, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2322, file: !275, discriminator: 1)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !275, line: 564, column: 15)
!2323 = distinct !DILexicalBlock(scope: !2293, file: !275, line: 564, column: 15)
!2324 = !DILocation(line: 564, column: 15, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2323, file: !275, discriminator: 1)
!2326 = !DILocation(line: 564, column: 15, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2322, file: !275, discriminator: 2)
!2328 = !DILocation(line: 564, column: 15, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2323, file: !275, discriminator: 3)
!2330 = !DILocation(line: 566, column: 13, scope: !2293)
!2331 = !DILocation(line: 606, column: 17, scope: !1962)
!2332 = !DILocation(line: 602, column: 20, scope: !1962)
!2333 = !DILocation(line: 609, column: 29, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !1967, file: !275, line: 607, column: 15)
!2335 = !DILocation(line: 609, column: 27, scope: !2334)
!2336 = !DILocation(line: 604, column: 18, scope: !1962)
!2337 = !DILocation(line: 610, column: 15, scope: !2334)
!2338 = !DILocation(line: 613, column: 17, scope: !1966)
!2339 = !DILocation(line: 614, column: 17, scope: !1966)
!2340 = !DILocation(line: 618, column: 29, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !1966, file: !275, line: 618, column: 21)
!2342 = !DILocation(line: 618, column: 21, scope: !1966)
!2343 = distinct !{!2343, !2344, !2345}
!2344 = !DILocation(line: 621, column: 17, scope: !1966)
!2345 = !DILocation(line: 667, column: 44, scope: !1966)
!2346 = !DILocation(line: 619, column: 29, scope: !2341)
!2347 = !DILocation(line: 619, column: 19, scope: !2341)
!2348 = !DILocation(line: 623, column: 21, scope: !1983)
!2349 = !DILocation(line: 624, column: 56, scope: !1983)
!2350 = !DILocation(line: 624, column: 50, scope: !1983)
!2351 = !DILocation(line: 625, column: 53, scope: !1983)
!2352 = !DILocation(line: 613, column: 27, scope: !1966)
!2353 = !DILocation(line: 623, column: 29, scope: !1983)
!2354 = !DILocation(line: 624, column: 36, scope: !1983)
!2355 = !DILocation(line: 624, column: 28, scope: !1983)
!2356 = !DILocation(line: 626, column: 25, scope: !1983)
!2357 = !DILocation(line: 636, column: 38, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2359, file: !275, discriminator: 1)
!2359 = distinct !DILexicalBlock(scope: !1990, file: !275, line: 634, column: 23)
!2360 = !DILocation(line: 636, column: 48, scope: !2358)
!2361 = !DILocation(line: 636, column: 51, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2359, file: !275, discriminator: 2)
!2363 = !DILocation(line: 636, column: 48, scope: !2362)
!2364 = !DILocation(line: 636, column: 25, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2359, file: !275, discriminator: 3)
!2366 = !DILocation(line: 637, column: 28, scope: !2359)
!2367 = !DILocation(line: 636, column: 34, scope: !2358)
!2368 = distinct !{!2368, !2369, !2366}
!2369 = !DILocation(line: 636, column: 25, scope: !2359)
!2370 = !DILocation(line: 650, column: 43, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2372, file: !275, discriminator: 1)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !275, line: 650, column: 29)
!2373 = distinct !DILexicalBlock(scope: !1987, file: !275, line: 650, column: 29)
!2374 = !DILocation(line: 647, column: 29, scope: !1988)
!2375 = !DILocation(line: 649, column: 36, scope: !1987)
!2376 = !DILocation(line: 651, column: 49, scope: !2372)
!2377 = !DILocation(line: 651, column: 39, scope: !2372)
!2378 = !DILocation(line: 651, column: 31, scope: !2372)
!2379 = !DILocation(line: 650, column: 53, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2372, file: !275, discriminator: 2)
!2381 = !DILocation(line: 650, column: 29, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2373, file: !275, discriminator: 1)
!2383 = distinct !{!2383, !2384, !2385}
!2384 = !DILocation(line: 650, column: 29, scope: !2373)
!2385 = !DILocation(line: 659, column: 33, scope: !2373)
!2386 = !DILocation(line: 666, column: 19, scope: !1966)
!2387 = !DILocation(line: 662, column: 41, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !1989, file: !275, line: 662, column: 29)
!2389 = !DILocation(line: 662, column: 31, scope: !2388)
!2390 = !DILocation(line: 662, column: 29, scope: !1989)
!2391 = !DILocation(line: 664, column: 27, scope: !1989)
!2392 = !DILocation(line: 667, column: 26, scope: !1966)
!2393 = !DILocation(line: 667, column: 24, scope: !1966)
!2394 = !DILocation(line: 666, column: 19, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !1983, file: !275, discriminator: 3)
!2396 = !DILocation(line: 668, column: 15, scope: !1967)
!2397 = !DILocation(line: 670, column: 40, scope: !1962)
!2398 = !DILocation(line: 672, column: 19, scope: !1995)
!2399 = !DILocation(line: 672, column: 45, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !1995, file: !275, discriminator: 1)
!2401 = !DILocation(line: 672, column: 23, scope: !1995)
!2402 = !DILocation(line: 676, column: 33, scope: !1994)
!2403 = !DILocation(line: 676, column: 24, scope: !1994)
!2404 = !DILocation(line: 678, column: 17, scope: !1994)
!2405 = !DILocation(line: 680, column: 43, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !275, line: 680, column: 25)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !275, line: 679, column: 19)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !275, line: 678, column: 17)
!2409 = distinct !DILexicalBlock(scope: !1994, file: !275, line: 678, column: 17)
!2410 = !DILocation(line: 682, column: 25, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2412, file: !275, discriminator: 1)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !275, line: 682, column: 25)
!2413 = distinct !DILexicalBlock(scope: !2406, file: !275, line: 681, column: 23)
!2414 = !DILocation(line: 682, column: 25, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2416, file: !275, discriminator: 4)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !275, line: 682, column: 25)
!2417 = !DILocation(line: 682, column: 25, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2416, file: !275, discriminator: 3)
!2419 = !DILocation(line: 682, column: 25, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2421, file: !275, discriminator: 6)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !275, line: 682, column: 25)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !275, line: 682, column: 25)
!2423 = distinct !DILexicalBlock(scope: !2416, file: !275, line: 682, column: 25)
!2424 = !DILocation(line: 682, column: 25, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2422, file: !275, discriminator: 6)
!2426 = !DILocation(line: 682, column: 25, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2421, file: !275, discriminator: 7)
!2428 = !DILocation(line: 682, column: 25, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2422, file: !275, discriminator: 8)
!2430 = !DILocation(line: 682, column: 25, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2432, file: !275, discriminator: 11)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !275, line: 682, column: 25)
!2433 = distinct !DILexicalBlock(scope: !2423, file: !275, line: 682, column: 25)
!2434 = !DILocation(line: 682, column: 25, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2433, file: !275, discriminator: 11)
!2436 = !DILocation(line: 682, column: 25, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2432, file: !275, discriminator: 12)
!2438 = !DILocation(line: 682, column: 25, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2433, file: !275, discriminator: 13)
!2440 = !DILocation(line: 682, column: 25, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2442, file: !275, discriminator: 16)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !275, line: 682, column: 25)
!2443 = distinct !DILexicalBlock(scope: !2423, file: !275, line: 682, column: 25)
!2444 = !DILocation(line: 682, column: 25, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2443, file: !275, discriminator: 16)
!2446 = !DILocation(line: 682, column: 25, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2442, file: !275, discriminator: 17)
!2448 = !DILocation(line: 682, column: 25, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2443, file: !275, discriminator: 18)
!2450 = !DILocation(line: 682, column: 25, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2423, file: !275, discriminator: 20)
!2452 = !DILocation(line: 682, column: 25, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2454, file: !275, discriminator: 22)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !275, line: 682, column: 25)
!2455 = distinct !DILexicalBlock(scope: !2412, file: !275, line: 682, column: 25)
!2456 = !DILocation(line: 682, column: 25, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2455, file: !275, discriminator: 22)
!2458 = !DILocation(line: 682, column: 25, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2454, file: !275, discriminator: 23)
!2460 = !DILocation(line: 682, column: 25, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2455, file: !275, discriminator: 24)
!2462 = !DILocation(line: 683, column: 25, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2464, file: !275, discriminator: 1)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !275, line: 683, column: 25)
!2465 = distinct !DILexicalBlock(scope: !2413, file: !275, line: 683, column: 25)
!2466 = !DILocation(line: 683, column: 25, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2465, file: !275, discriminator: 1)
!2468 = !DILocation(line: 683, column: 25, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2464, file: !275, discriminator: 2)
!2470 = !DILocation(line: 683, column: 25, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2465, file: !275, discriminator: 3)
!2472 = !DILocation(line: 684, column: 25, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2474, file: !275, discriminator: 1)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !275, line: 684, column: 25)
!2475 = distinct !DILexicalBlock(scope: !2413, file: !275, line: 684, column: 25)
!2476 = !DILocation(line: 684, column: 25, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2475, file: !275, discriminator: 1)
!2478 = !DILocation(line: 684, column: 25, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2474, file: !275, discriminator: 2)
!2480 = !DILocation(line: 684, column: 25, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2475, file: !275, discriminator: 3)
!2482 = !DILocation(line: 685, column: 38, scope: !2413)
!2483 = !DILocation(line: 685, column: 33, scope: !2413)
!2484 = !DILocation(line: 686, column: 23, scope: !2413)
!2485 = !DILocation(line: 687, column: 30, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2406, file: !275, line: 687, column: 30)
!2487 = !DILocation(line: 687, column: 30, scope: !2406)
!2488 = !DILocation(line: 689, column: 25, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2490, file: !275, discriminator: 1)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !275, line: 689, column: 25)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !275, line: 689, column: 25)
!2492 = distinct !DILexicalBlock(scope: !2486, file: !275, line: 688, column: 23)
!2493 = !DILocation(line: 689, column: 25, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2491, file: !275, discriminator: 1)
!2495 = !DILocation(line: 689, column: 25, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2490, file: !275, discriminator: 2)
!2497 = !DILocation(line: 689, column: 25, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2491, file: !275, discriminator: 3)
!2499 = !DILocation(line: 691, column: 23, scope: !2492)
!2500 = !DILocation(line: 692, column: 35, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2407, file: !275, line: 692, column: 25)
!2502 = !DILocation(line: 692, column: 30, scope: !2501)
!2503 = !DILocation(line: 692, column: 25, scope: !2407)
!2504 = !DILocation(line: 694, column: 21, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2506, file: !275, discriminator: 1)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !275, line: 694, column: 21)
!2507 = distinct !DILexicalBlock(scope: !2407, file: !275, line: 694, column: 21)
!2508 = !DILocation(line: 694, column: 21, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2506, file: !275, discriminator: 2)
!2510 = !DILocation(line: 694, column: 21, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !2512, file: !275, discriminator: 4)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !275, line: 694, column: 21)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !275, line: 694, column: 21)
!2514 = distinct !DILexicalBlock(scope: !2506, file: !275, line: 694, column: 21)
!2515 = !DILocation(line: 694, column: 21, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2513, file: !275, discriminator: 4)
!2517 = !DILocation(line: 694, column: 21, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2512, file: !275, discriminator: 5)
!2519 = !DILocation(line: 694, column: 21, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2513, file: !275, discriminator: 6)
!2521 = !DILocation(line: 694, column: 21, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2523, file: !275, discriminator: 9)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !275, line: 694, column: 21)
!2524 = distinct !DILexicalBlock(scope: !2514, file: !275, line: 694, column: 21)
!2525 = !DILocation(line: 694, column: 21, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2524, file: !275, discriminator: 9)
!2527 = !DILocation(line: 694, column: 21, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2523, file: !275, discriminator: 10)
!2529 = !DILocation(line: 694, column: 21, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !2524, file: !275, discriminator: 11)
!2531 = !DILocation(line: 694, column: 21, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !2514, file: !275, discriminator: 13)
!2533 = !DILocation(line: 695, column: 21, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2535, file: !275, discriminator: 1)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !275, line: 695, column: 21)
!2536 = distinct !DILexicalBlock(scope: !2407, file: !275, line: 695, column: 21)
!2537 = !DILocation(line: 695, column: 21, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2536, file: !275, discriminator: 1)
!2539 = !DILocation(line: 695, column: 21, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2535, file: !275, discriminator: 2)
!2541 = !DILocation(line: 695, column: 21, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2536, file: !275, discriminator: 3)
!2543 = !DILocation(line: 696, column: 25, scope: !2407)
!2544 = !DILocation(line: 678, column: 17, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2408, file: !275, discriminator: 1)
!2546 = distinct !{!2546, !2547, !2548}
!2547 = !DILocation(line: 678, column: 17, scope: !2409)
!2548 = !DILocation(line: 697, column: 19, scope: !2409)
!2549 = !DILocation(line: 704, column: 34, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !1954, file: !275, line: 704, column: 11)
!2551 = !DILocation(line: 706, column: 14, scope: !2550)
!2552 = !DILocation(line: 707, column: 14, scope: !2550)
!2553 = !DILocation(line: 707, column: 35, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2550, file: !275, discriminator: 1)
!2555 = !DILocation(line: 707, column: 17, scope: !2554)
!2556 = !DILocation(line: 707, column: 53, scope: !2554)
!2557 = !DILocation(line: 707, column: 47, scope: !2554)
!2558 = !DILocation(line: 707, column: 65, scope: !2554)
!2559 = !DILocation(line: 708, column: 15, scope: !2554)
!2560 = !DILocation(line: 708, column: 11, scope: !2550)
!2561 = !DILocation(line: 704, column: 11, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !1954, file: !275, discriminator: 2)
!2563 = !DILocation(line: 712, column: 7, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2565, file: !275, discriminator: 1)
!2565 = distinct !DILexicalBlock(scope: !1954, file: !275, line: 712, column: 7)
!2566 = !DILocation(line: 712, column: 7, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2568, file: !275, discriminator: 4)
!2568 = distinct !DILexicalBlock(scope: !2565, file: !275, line: 712, column: 7)
!2569 = !DILocation(line: 712, column: 7, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2568, file: !275, discriminator: 3)
!2571 = !DILocation(line: 712, column: 7, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2573, file: !275, discriminator: 6)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !275, line: 712, column: 7)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !275, line: 712, column: 7)
!2575 = distinct !DILexicalBlock(scope: !2568, file: !275, line: 712, column: 7)
!2576 = !DILocation(line: 712, column: 7, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2574, file: !275, discriminator: 6)
!2578 = !DILocation(line: 712, column: 7, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2573, file: !275, discriminator: 7)
!2580 = !DILocation(line: 712, column: 7, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2574, file: !275, discriminator: 8)
!2582 = !DILocation(line: 712, column: 7, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2584, file: !275, discriminator: 11)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !275, line: 712, column: 7)
!2585 = distinct !DILexicalBlock(scope: !2575, file: !275, line: 712, column: 7)
!2586 = !DILocation(line: 712, column: 7, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2585, file: !275, discriminator: 11)
!2588 = !DILocation(line: 712, column: 7, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2584, file: !275, discriminator: 12)
!2590 = !DILocation(line: 712, column: 7, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2585, file: !275, discriminator: 13)
!2592 = !DILocation(line: 712, column: 7, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2594, file: !275, discriminator: 16)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !275, line: 712, column: 7)
!2595 = distinct !DILexicalBlock(scope: !2575, file: !275, line: 712, column: 7)
!2596 = !DILocation(line: 712, column: 7, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2595, file: !275, discriminator: 16)
!2598 = !DILocation(line: 712, column: 7, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2594, file: !275, discriminator: 17)
!2600 = !DILocation(line: 712, column: 7, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2595, file: !275, discriminator: 18)
!2602 = !DILocation(line: 712, column: 7, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2575, file: !275, discriminator: 20)
!2604 = !DILocation(line: 712, column: 7, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !2606, file: !275, discriminator: 22)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !275, line: 712, column: 7)
!2607 = distinct !DILexicalBlock(scope: !2565, file: !275, line: 712, column: 7)
!2608 = !DILocation(line: 712, column: 7, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2607, file: !275, discriminator: 22)
!2610 = !DILocation(line: 712, column: 7, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2606, file: !275, discriminator: 23)
!2612 = !DILocation(line: 712, column: 7, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2607, file: !275, discriminator: 24)
!2614 = !DILocation(line: 715, column: 7, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2616, file: !275, discriminator: 1)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !275, line: 715, column: 7)
!2617 = distinct !DILexicalBlock(scope: !1954, file: !275, line: 715, column: 7)
!2618 = !DILocation(line: 715, column: 7, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2616, file: !275, discriminator: 2)
!2620 = !DILocation(line: 715, column: 7, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2622, file: !275, discriminator: 4)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !275, line: 715, column: 7)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !275, line: 715, column: 7)
!2624 = distinct !DILexicalBlock(scope: !2616, file: !275, line: 715, column: 7)
!2625 = !DILocation(line: 715, column: 7, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2623, file: !275, discriminator: 4)
!2627 = !DILocation(line: 715, column: 7, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2622, file: !275, discriminator: 5)
!2629 = !DILocation(line: 715, column: 7, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2623, file: !275, discriminator: 6)
!2631 = !DILocation(line: 715, column: 7, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2633, file: !275, discriminator: 9)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !275, line: 715, column: 7)
!2634 = distinct !DILexicalBlock(scope: !2624, file: !275, line: 715, column: 7)
!2635 = !DILocation(line: 715, column: 7, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2634, file: !275, discriminator: 9)
!2637 = !DILocation(line: 715, column: 7, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2633, file: !275, discriminator: 10)
!2639 = !DILocation(line: 715, column: 7, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2634, file: !275, discriminator: 11)
!2641 = !DILocation(line: 715, column: 7, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2624, file: !275, discriminator: 13)
!2643 = !DILocation(line: 716, column: 7, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2645, file: !275, discriminator: 1)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !275, line: 716, column: 7)
!2646 = distinct !DILexicalBlock(scope: !1954, file: !275, line: 716, column: 7)
!2647 = !DILocation(line: 716, column: 7, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2646, file: !275, discriminator: 1)
!2649 = !DILocation(line: 716, column: 7, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2645, file: !275, discriminator: 2)
!2651 = !DILocation(line: 716, column: 7, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2646, file: !275, discriminator: 3)
!2653 = !DILocation(line: 718, column: 13, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !1954, file: !275, line: 718, column: 11)
!2655 = !DILocation(line: 718, column: 11, scope: !1954)
!2656 = !DILocation(line: 720, column: 5, scope: !1955)
!2657 = !DILocation(line: 392, column: 75, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !1955, file: !275, discriminator: 5)
!2659 = !DILocation(line: 392, column: 3, scope: !2658)
!2660 = distinct !{!2660, !2661, !2662}
!2661 = !DILocation(line: 392, column: 3, scope: !1956)
!2662 = !DILocation(line: 720, column: 5, scope: !1956)
!2663 = !DILocation(line: 722, column: 11, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !1927, file: !275, line: 722, column: 7)
!2665 = !DILocation(line: 722, column: 16, scope: !2664)
!2666 = !DILocation(line: 730, column: 51, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !1927, file: !275, line: 730, column: 7)
!2668 = !DILocation(line: 731, column: 10, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2667, file: !275, discriminator: 1)
!2670 = !DILocation(line: 733, column: 11, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !275, line: 733, column: 11)
!2672 = distinct !DILexicalBlock(scope: !2667, file: !275, line: 732, column: 5)
!2673 = !DILocation(line: 733, column: 11, scope: !2672)
!2674 = !DILocation(line: 734, column: 16, scope: !2671)
!2675 = !DILocation(line: 734, column: 9, scope: !2671)
!2676 = !DILocation(line: 738, column: 18, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2671, file: !275, line: 738, column: 16)
!2678 = !DILocation(line: 738, column: 32, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2677, file: !275, discriminator: 1)
!2680 = !DILocation(line: 738, column: 29, scope: !2677)
!2681 = !DILocation(line: 747, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !1927, file: !275, line: 747, column: 7)
!2683 = !DILocation(line: 747, column: 20, scope: !2682)
!2684 = !DILocation(line: 748, column: 12, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2686, file: !275, discriminator: 1)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !275, line: 748, column: 5)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !275, line: 748, column: 5)
!2688 = !DILocation(line: 748, column: 5, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2687, file: !275, discriminator: 1)
!2690 = !DILocation(line: 749, column: 7, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2692, file: !275, discriminator: 1)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !275, line: 749, column: 7)
!2693 = distinct !DILexicalBlock(scope: !2686, file: !275, line: 749, column: 7)
!2694 = !DILocation(line: 749, column: 7, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2693, file: !275, discriminator: 1)
!2696 = !DILocation(line: 749, column: 7, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2692, file: !275, discriminator: 2)
!2698 = !DILocation(line: 749, column: 7, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2693, file: !275, discriminator: 3)
!2700 = !DILocation(line: 748, column: 39, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2686, file: !275, discriminator: 2)
!2702 = distinct !{!2702, !2703, !2704}
!2703 = !DILocation(line: 748, column: 5, scope: !2687)
!2704 = !DILocation(line: 749, column: 7, scope: !2687)
!2705 = !DILocation(line: 751, column: 11, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !1927, file: !275, line: 751, column: 7)
!2707 = !DILocation(line: 751, column: 7, scope: !1927)
!2708 = !DILocation(line: 752, column: 5, scope: !2706)
!2709 = !DILocation(line: 752, column: 17, scope: !2706)
!2710 = !DILocation(line: 758, column: 21, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !1927, file: !275, line: 758, column: 7)
!2712 = !DILocation(line: 758, column: 54, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2711, file: !275, discriminator: 1)
!2714 = !DILocation(line: 758, column: 51, scope: !2711)
!2715 = !DILocation(line: 762, column: 42, scope: !1927)
!2716 = !DILocation(line: 760, column: 10, scope: !1927)
!2717 = !DILocation(line: 760, column: 3, scope: !1927)
!2718 = !DILocation(line: 764, column: 1, scope: !1927)
!2719 = distinct !DISubprogram(name: "gettext_quote", scope: !275, file: !275, line: 199, type: !2720, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!37, !37, !90}
!2722 = !{!2723, !2724, !2725, !2726}
!2723 = !DILocalVariable(name: "msgid", arg: 1, scope: !2719, file: !275, line: 199, type: !37)
!2724 = !DILocalVariable(name: "s", arg: 2, scope: !2719, file: !275, line: 199, type: !90)
!2725 = !DILocalVariable(name: "translation", scope: !2719, file: !275, line: 201, type: !37)
!2726 = !DILocalVariable(name: "locale_code", scope: !2719, file: !275, line: 202, type: !37)
!2727 = !DILocation(line: 199, column: 28, scope: !2719)
!2728 = !DILocation(line: 199, column: 54, scope: !2719)
!2729 = !DILocation(line: 201, column: 29, scope: !2719)
!2730 = !DILocation(line: 201, column: 15, scope: !2719)
!2731 = !DILocation(line: 204, column: 19, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2719, file: !275, line: 204, column: 7)
!2733 = !DILocation(line: 204, column: 7, scope: !2719)
!2734 = !DILocation(line: 225, column: 17, scope: !2719)
!2735 = !DILocation(line: 202, column: 15, scope: !2719)
!2736 = !DILocalVariable(name: "s2", arg: 2, scope: !2737, file: !2738, line: 160, type: !37)
!2737 = distinct !DISubprogram(name: "strcaseeq0", scope: !2738, file: !2738, line: 160, type: !2739, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2741)
!2738 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!39, !37, !37, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!2741 = !{!2742, !2736, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2742 = !DILocalVariable(name: "s1", arg: 1, scope: !2737, file: !2738, line: 160, type: !37)
!2743 = !DILocalVariable(name: "s20", arg: 3, scope: !2737, file: !2738, line: 160, type: !22)
!2744 = !DILocalVariable(name: "s21", arg: 4, scope: !2737, file: !2738, line: 160, type: !22)
!2745 = !DILocalVariable(name: "s22", arg: 5, scope: !2737, file: !2738, line: 160, type: !22)
!2746 = !DILocalVariable(name: "s23", arg: 6, scope: !2737, file: !2738, line: 160, type: !22)
!2747 = !DILocalVariable(name: "s24", arg: 7, scope: !2737, file: !2738, line: 160, type: !22)
!2748 = !DILocalVariable(name: "s25", arg: 8, scope: !2737, file: !2738, line: 160, type: !22)
!2749 = !DILocalVariable(name: "s26", arg: 9, scope: !2737, file: !2738, line: 160, type: !22)
!2750 = !DILocalVariable(name: "s27", arg: 10, scope: !2737, file: !2738, line: 160, type: !22)
!2751 = !DILocalVariable(name: "s28", arg: 11, scope: !2737, file: !2738, line: 160, type: !22)
!2752 = !DILocation(line: 160, column: 41, scope: !2737, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 226, column: 7, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2719, file: !275, line: 226, column: 7)
!2755 = !DILocation(line: 160, column: 120, scope: !2737, inlinedAt: !2753)
!2756 = !DILocation(line: 160, column: 130, scope: !2737, inlinedAt: !2753)
!2757 = !DILocation(line: 162, column: 7, scope: !2758, inlinedAt: !2753)
!2758 = !DILexicalBlockFile(scope: !2759, file: !2738, discriminator: 1)
!2759 = distinct !DILexicalBlock(scope: !2737, file: !2738, line: 162, column: 7)
!2760 = !DILocalVariable(name: "s2", arg: 2, scope: !2761, file: !2738, line: 146, type: !37)
!2761 = distinct !DISubprogram(name: "strcaseeq1", scope: !2738, file: !2738, line: 146, type: !2762, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!39, !37, !37, !22, !22, !22, !22, !22, !22, !22, !22}
!2764 = !{!2765, !2760, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!2765 = !DILocalVariable(name: "s1", arg: 1, scope: !2761, file: !2738, line: 146, type: !37)
!2766 = !DILocalVariable(name: "s21", arg: 3, scope: !2761, file: !2738, line: 146, type: !22)
!2767 = !DILocalVariable(name: "s22", arg: 4, scope: !2761, file: !2738, line: 146, type: !22)
!2768 = !DILocalVariable(name: "s23", arg: 5, scope: !2761, file: !2738, line: 146, type: !22)
!2769 = !DILocalVariable(name: "s24", arg: 6, scope: !2761, file: !2738, line: 146, type: !22)
!2770 = !DILocalVariable(name: "s25", arg: 7, scope: !2761, file: !2738, line: 146, type: !22)
!2771 = !DILocalVariable(name: "s26", arg: 8, scope: !2761, file: !2738, line: 146, type: !22)
!2772 = !DILocalVariable(name: "s27", arg: 9, scope: !2761, file: !2738, line: 146, type: !22)
!2773 = !DILocalVariable(name: "s28", arg: 10, scope: !2761, file: !2738, line: 146, type: !22)
!2774 = !DILocation(line: 146, column: 41, scope: !2761, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 167, column: 16, scope: !2776, inlinedAt: !2753)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !2738, line: 164, column: 11)
!2777 = distinct !DILexicalBlock(scope: !2759, file: !2738, line: 163, column: 5)
!2778 = !DILocation(line: 146, column: 110, scope: !2761, inlinedAt: !2775)
!2779 = !DILocation(line: 146, column: 120, scope: !2761, inlinedAt: !2775)
!2780 = !DILocation(line: 148, column: 7, scope: !2781, inlinedAt: !2775)
!2781 = !DILexicalBlockFile(scope: !2782, file: !2738, discriminator: 1)
!2782 = distinct !DILexicalBlock(scope: !2761, file: !2738, line: 148, column: 7)
!2783 = !DILocalVariable(name: "s2", arg: 2, scope: !2784, file: !2738, line: 132, type: !37)
!2784 = distinct !DISubprogram(name: "strcaseeq2", scope: !2738, file: !2738, line: 132, type: !2785, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2787)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!39, !37, !37, !22, !22, !22, !22, !22, !22, !22}
!2787 = !{!2788, !2783, !2789, !2790, !2791, !2792, !2793, !2794, !2795}
!2788 = !DILocalVariable(name: "s1", arg: 1, scope: !2784, file: !2738, line: 132, type: !37)
!2789 = !DILocalVariable(name: "s22", arg: 3, scope: !2784, file: !2738, line: 132, type: !22)
!2790 = !DILocalVariable(name: "s23", arg: 4, scope: !2784, file: !2738, line: 132, type: !22)
!2791 = !DILocalVariable(name: "s24", arg: 5, scope: !2784, file: !2738, line: 132, type: !22)
!2792 = !DILocalVariable(name: "s25", arg: 6, scope: !2784, file: !2738, line: 132, type: !22)
!2793 = !DILocalVariable(name: "s26", arg: 7, scope: !2784, file: !2738, line: 132, type: !22)
!2794 = !DILocalVariable(name: "s27", arg: 8, scope: !2784, file: !2738, line: 132, type: !22)
!2795 = !DILocalVariable(name: "s28", arg: 9, scope: !2784, file: !2738, line: 132, type: !22)
!2796 = !DILocation(line: 132, column: 41, scope: !2784, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 153, column: 16, scope: !2798, inlinedAt: !2775)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !2738, line: 150, column: 11)
!2799 = distinct !DILexicalBlock(scope: !2782, file: !2738, line: 149, column: 5)
!2800 = !DILocation(line: 132, column: 100, scope: !2784, inlinedAt: !2797)
!2801 = !DILocation(line: 132, column: 110, scope: !2784, inlinedAt: !2797)
!2802 = !DILocation(line: 134, column: 7, scope: !2803, inlinedAt: !2797)
!2803 = !DILexicalBlockFile(scope: !2804, file: !2738, discriminator: 1)
!2804 = distinct !DILexicalBlock(scope: !2784, file: !2738, line: 134, column: 7)
!2805 = !DILocalVariable(name: "s2", arg: 2, scope: !2806, file: !2738, line: 118, type: !37)
!2806 = distinct !DISubprogram(name: "strcaseeq3", scope: !2738, file: !2738, line: 118, type: !2807, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!39, !37, !37, !22, !22, !22, !22, !22, !22}
!2809 = !{!2810, !2805, !2811, !2812, !2813, !2814, !2815, !2816}
!2810 = !DILocalVariable(name: "s1", arg: 1, scope: !2806, file: !2738, line: 118, type: !37)
!2811 = !DILocalVariable(name: "s23", arg: 3, scope: !2806, file: !2738, line: 118, type: !22)
!2812 = !DILocalVariable(name: "s24", arg: 4, scope: !2806, file: !2738, line: 118, type: !22)
!2813 = !DILocalVariable(name: "s25", arg: 5, scope: !2806, file: !2738, line: 118, type: !22)
!2814 = !DILocalVariable(name: "s26", arg: 6, scope: !2806, file: !2738, line: 118, type: !22)
!2815 = !DILocalVariable(name: "s27", arg: 7, scope: !2806, file: !2738, line: 118, type: !22)
!2816 = !DILocalVariable(name: "s28", arg: 8, scope: !2806, file: !2738, line: 118, type: !22)
!2817 = !DILocation(line: 118, column: 41, scope: !2806, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 139, column: 16, scope: !2819, inlinedAt: !2797)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !2738, line: 136, column: 11)
!2820 = distinct !DILexicalBlock(scope: !2804, file: !2738, line: 135, column: 5)
!2821 = !DILocation(line: 118, column: 90, scope: !2806, inlinedAt: !2818)
!2822 = !DILocation(line: 118, column: 100, scope: !2806, inlinedAt: !2818)
!2823 = !DILocation(line: 120, column: 7, scope: !2824, inlinedAt: !2818)
!2824 = !DILexicalBlockFile(scope: !2825, file: !2738, discriminator: 2)
!2825 = distinct !DILexicalBlock(scope: !2806, file: !2738, line: 120, column: 7)
!2826 = !DILocation(line: 120, column: 7, scope: !2827, inlinedAt: !2818)
!2827 = !DILexicalBlockFile(scope: !2806, file: !2738, discriminator: 2)
!2828 = !DILocalVariable(name: "s2", arg: 2, scope: !2829, file: !2738, line: 104, type: !37)
!2829 = distinct !DISubprogram(name: "strcaseeq4", scope: !2738, file: !2738, line: 104, type: !2830, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!39, !37, !37, !22, !22, !22, !22, !22}
!2832 = !{!2833, !2828, !2834, !2835, !2836, !2837, !2838}
!2833 = !DILocalVariable(name: "s1", arg: 1, scope: !2829, file: !2738, line: 104, type: !37)
!2834 = !DILocalVariable(name: "s24", arg: 3, scope: !2829, file: !2738, line: 104, type: !22)
!2835 = !DILocalVariable(name: "s25", arg: 4, scope: !2829, file: !2738, line: 104, type: !22)
!2836 = !DILocalVariable(name: "s26", arg: 5, scope: !2829, file: !2738, line: 104, type: !22)
!2837 = !DILocalVariable(name: "s27", arg: 6, scope: !2829, file: !2738, line: 104, type: !22)
!2838 = !DILocalVariable(name: "s28", arg: 7, scope: !2829, file: !2738, line: 104, type: !22)
!2839 = !DILocation(line: 104, column: 41, scope: !2829, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 125, column: 16, scope: !2841, inlinedAt: !2818)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !2738, line: 122, column: 11)
!2842 = distinct !DILexicalBlock(scope: !2825, file: !2738, line: 121, column: 5)
!2843 = !DILocation(line: 104, column: 80, scope: !2829, inlinedAt: !2840)
!2844 = !DILocation(line: 104, column: 90, scope: !2829, inlinedAt: !2840)
!2845 = !DILocation(line: 106, column: 7, scope: !2846, inlinedAt: !2840)
!2846 = !DILexicalBlockFile(scope: !2847, file: !2738, discriminator: 2)
!2847 = distinct !DILexicalBlock(scope: !2829, file: !2738, line: 106, column: 7)
!2848 = !DILocation(line: 106, column: 7, scope: !2849, inlinedAt: !2840)
!2849 = !DILexicalBlockFile(scope: !2829, file: !2738, discriminator: 2)
!2850 = !DILocalVariable(name: "s2", arg: 2, scope: !2851, file: !2738, line: 90, type: !37)
!2851 = distinct !DISubprogram(name: "strcaseeq5", scope: !2738, file: !2738, line: 90, type: !2852, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!39, !37, !37, !22, !22, !22, !22}
!2854 = !{!2855, !2850, !2856, !2857, !2858, !2859}
!2855 = !DILocalVariable(name: "s1", arg: 1, scope: !2851, file: !2738, line: 90, type: !37)
!2856 = !DILocalVariable(name: "s25", arg: 3, scope: !2851, file: !2738, line: 90, type: !22)
!2857 = !DILocalVariable(name: "s26", arg: 4, scope: !2851, file: !2738, line: 90, type: !22)
!2858 = !DILocalVariable(name: "s27", arg: 5, scope: !2851, file: !2738, line: 90, type: !22)
!2859 = !DILocalVariable(name: "s28", arg: 6, scope: !2851, file: !2738, line: 90, type: !22)
!2860 = !DILocation(line: 90, column: 41, scope: !2851, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 111, column: 16, scope: !2862, inlinedAt: !2840)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !2738, line: 108, column: 11)
!2863 = distinct !DILexicalBlock(scope: !2847, file: !2738, line: 107, column: 5)
!2864 = !DILocation(line: 90, column: 70, scope: !2851, inlinedAt: !2861)
!2865 = !DILocation(line: 90, column: 80, scope: !2851, inlinedAt: !2861)
!2866 = !DILocation(line: 92, column: 7, scope: !2867, inlinedAt: !2861)
!2867 = !DILexicalBlockFile(scope: !2868, file: !2738, discriminator: 2)
!2868 = distinct !DILexicalBlock(scope: !2851, file: !2738, line: 92, column: 7)
!2869 = !DILocation(line: 92, column: 7, scope: !2870, inlinedAt: !2861)
!2870 = !DILexicalBlockFile(scope: !2851, file: !2738, discriminator: 2)
!2871 = !DILocation(line: 227, column: 12, scope: !2754)
!2872 = !DILocation(line: 227, column: 21, scope: !2754)
!2873 = !DILocation(line: 227, column: 5, scope: !2754)
!2874 = !DILocation(line: 146, column: 41, scope: !2761, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 167, column: 16, scope: !2776, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 228, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2719, file: !275, line: 228, column: 7)
!2878 = !DILocation(line: 146, column: 110, scope: !2761, inlinedAt: !2875)
!2879 = !DILocation(line: 146, column: 120, scope: !2761, inlinedAt: !2875)
!2880 = !DILocation(line: 148, column: 7, scope: !2781, inlinedAt: !2875)
!2881 = !DILocation(line: 132, column: 41, scope: !2784, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 153, column: 16, scope: !2798, inlinedAt: !2875)
!2883 = !DILocation(line: 132, column: 100, scope: !2784, inlinedAt: !2882)
!2884 = !DILocation(line: 132, column: 110, scope: !2784, inlinedAt: !2882)
!2885 = !DILocation(line: 134, column: 7, scope: !2886, inlinedAt: !2882)
!2886 = !DILexicalBlockFile(scope: !2804, file: !2738, discriminator: 2)
!2887 = !DILocation(line: 134, column: 7, scope: !2888, inlinedAt: !2882)
!2888 = !DILexicalBlockFile(scope: !2784, file: !2738, discriminator: 2)
!2889 = !DILocation(line: 118, column: 41, scope: !2806, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 139, column: 16, scope: !2819, inlinedAt: !2882)
!2891 = !DILocation(line: 118, column: 90, scope: !2806, inlinedAt: !2890)
!2892 = !DILocation(line: 118, column: 100, scope: !2806, inlinedAt: !2890)
!2893 = !DILocation(line: 120, column: 7, scope: !2824, inlinedAt: !2890)
!2894 = !DILocation(line: 120, column: 7, scope: !2827, inlinedAt: !2890)
!2895 = !DILocation(line: 104, column: 41, scope: !2829, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 125, column: 16, scope: !2841, inlinedAt: !2890)
!2897 = !DILocation(line: 104, column: 80, scope: !2829, inlinedAt: !2896)
!2898 = !DILocation(line: 104, column: 90, scope: !2829, inlinedAt: !2896)
!2899 = !DILocation(line: 106, column: 7, scope: !2846, inlinedAt: !2896)
!2900 = !DILocation(line: 106, column: 7, scope: !2849, inlinedAt: !2896)
!2901 = !DILocation(line: 90, column: 41, scope: !2851, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 111, column: 16, scope: !2862, inlinedAt: !2896)
!2903 = !DILocation(line: 90, column: 70, scope: !2851, inlinedAt: !2902)
!2904 = !DILocation(line: 90, column: 80, scope: !2851, inlinedAt: !2902)
!2905 = !DILocation(line: 92, column: 7, scope: !2867, inlinedAt: !2902)
!2906 = !DILocation(line: 92, column: 7, scope: !2870, inlinedAt: !2902)
!2907 = !DILocalVariable(name: "s2", arg: 2, scope: !2908, file: !2738, line: 76, type: !37)
!2908 = distinct !DISubprogram(name: "strcaseeq6", scope: !2738, file: !2738, line: 76, type: !2909, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!39, !37, !37, !22, !22, !22}
!2911 = !{!2912, !2907, !2913, !2914, !2915}
!2912 = !DILocalVariable(name: "s1", arg: 1, scope: !2908, file: !2738, line: 76, type: !37)
!2913 = !DILocalVariable(name: "s26", arg: 3, scope: !2908, file: !2738, line: 76, type: !22)
!2914 = !DILocalVariable(name: "s27", arg: 4, scope: !2908, file: !2738, line: 76, type: !22)
!2915 = !DILocalVariable(name: "s28", arg: 5, scope: !2908, file: !2738, line: 76, type: !22)
!2916 = !DILocation(line: 76, column: 41, scope: !2908, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 97, column: 16, scope: !2918, inlinedAt: !2902)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !2738, line: 94, column: 11)
!2919 = distinct !DILexicalBlock(scope: !2868, file: !2738, line: 93, column: 5)
!2920 = !DILocation(line: 76, column: 60, scope: !2908, inlinedAt: !2917)
!2921 = !DILocation(line: 76, column: 70, scope: !2908, inlinedAt: !2917)
!2922 = !DILocation(line: 78, column: 7, scope: !2923, inlinedAt: !2917)
!2923 = !DILexicalBlockFile(scope: !2924, file: !2738, discriminator: 2)
!2924 = distinct !DILexicalBlock(scope: !2908, file: !2738, line: 78, column: 7)
!2925 = !DILocation(line: 78, column: 7, scope: !2926, inlinedAt: !2917)
!2926 = !DILexicalBlockFile(scope: !2908, file: !2738, discriminator: 2)
!2927 = !DILocalVariable(name: "s2", arg: 2, scope: !2928, file: !2738, line: 62, type: !37)
!2928 = distinct !DISubprogram(name: "strcaseeq7", scope: !2738, file: !2738, line: 62, type: !2929, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!39, !37, !37, !22, !22}
!2931 = !{!2932, !2927, !2933, !2934}
!2932 = !DILocalVariable(name: "s1", arg: 1, scope: !2928, file: !2738, line: 62, type: !37)
!2933 = !DILocalVariable(name: "s27", arg: 3, scope: !2928, file: !2738, line: 62, type: !22)
!2934 = !DILocalVariable(name: "s28", arg: 4, scope: !2928, file: !2738, line: 62, type: !22)
!2935 = !DILocation(line: 62, column: 41, scope: !2928, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 83, column: 16, scope: !2937, inlinedAt: !2917)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !2738, line: 80, column: 11)
!2938 = distinct !DILexicalBlock(scope: !2924, file: !2738, line: 79, column: 5)
!2939 = !DILocation(line: 62, column: 50, scope: !2928, inlinedAt: !2936)
!2940 = !DILocation(line: 62, column: 60, scope: !2928, inlinedAt: !2936)
!2941 = !DILocation(line: 64, column: 7, scope: !2942, inlinedAt: !2936)
!2942 = !DILexicalBlockFile(scope: !2943, file: !2738, discriminator: 2)
!2943 = distinct !DILexicalBlock(scope: !2928, file: !2738, line: 64, column: 7)
!2944 = !DILocation(line: 228, column: 7, scope: !2719)
!2945 = !DILocation(line: 229, column: 12, scope: !2877)
!2946 = !DILocation(line: 229, column: 21, scope: !2877)
!2947 = !DILocation(line: 229, column: 5, scope: !2877)
!2948 = !DILocation(line: 231, column: 13, scope: !2719)
!2949 = !DILocation(line: 231, column: 11, scope: !2719)
!2950 = !DILocation(line: 231, column: 3, scope: !2719)
!2951 = !DILocation(line: 232, column: 1, scope: !2719)
!2952 = distinct !DISubprogram(name: "quotearg_alloc", scope: !275, file: !275, line: 791, type: !2953, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!21, !37, !30, !1795}
!2955 = !{!2956, !2957, !2958}
!2956 = !DILocalVariable(name: "arg", arg: 1, scope: !2952, file: !275, line: 791, type: !37)
!2957 = !DILocalVariable(name: "argsize", arg: 2, scope: !2952, file: !275, line: 791, type: !30)
!2958 = !DILocalVariable(name: "o", arg: 3, scope: !2952, file: !275, line: 792, type: !1795)
!2959 = !DILocation(line: 791, column: 29, scope: !2952)
!2960 = !DILocation(line: 791, column: 41, scope: !2952)
!2961 = !DILocation(line: 792, column: 47, scope: !2952)
!2962 = !DILocalVariable(name: "arg", arg: 1, scope: !2963, file: !275, line: 804, type: !37)
!2963 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !275, file: !275, line: 804, type: !2964, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!21, !37, !30, !118, !1795}
!2966 = !{!2962, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974}
!2967 = !DILocalVariable(name: "argsize", arg: 2, scope: !2963, file: !275, line: 804, type: !30)
!2968 = !DILocalVariable(name: "size", arg: 3, scope: !2963, file: !275, line: 804, type: !118)
!2969 = !DILocalVariable(name: "o", arg: 4, scope: !2963, file: !275, line: 805, type: !1795)
!2970 = !DILocalVariable(name: "p", scope: !2963, file: !275, line: 807, type: !1795)
!2971 = !DILocalVariable(name: "e", scope: !2963, file: !275, line: 808, type: !39)
!2972 = !DILocalVariable(name: "flags", scope: !2963, file: !275, line: 810, type: !39)
!2973 = !DILocalVariable(name: "bufsize", scope: !2963, file: !275, line: 811, type: !30)
!2974 = !DILocalVariable(name: "buf", scope: !2963, file: !275, line: 815, type: !21)
!2975 = !DILocation(line: 804, column: 33, scope: !2963, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 794, column: 10, scope: !2952)
!2977 = !DILocation(line: 804, column: 45, scope: !2963, inlinedAt: !2976)
!2978 = !DILocation(line: 804, column: 62, scope: !2963, inlinedAt: !2976)
!2979 = !DILocation(line: 805, column: 51, scope: !2963, inlinedAt: !2976)
!2980 = !DILocation(line: 807, column: 37, scope: !2963, inlinedAt: !2976)
!2981 = !DILocation(line: 807, column: 33, scope: !2963, inlinedAt: !2976)
!2982 = !DILocation(line: 808, column: 11, scope: !2963, inlinedAt: !2976)
!2983 = !DILocation(line: 808, column: 7, scope: !2963, inlinedAt: !2976)
!2984 = !DILocation(line: 810, column: 18, scope: !2963, inlinedAt: !2976)
!2985 = !DILocation(line: 810, column: 24, scope: !2963, inlinedAt: !2976)
!2986 = !DILocation(line: 810, column: 7, scope: !2963, inlinedAt: !2976)
!2987 = !DILocation(line: 811, column: 69, scope: !2963, inlinedAt: !2976)
!2988 = !DILocation(line: 812, column: 53, scope: !2963, inlinedAt: !2976)
!2989 = !DILocation(line: 813, column: 49, scope: !2963, inlinedAt: !2976)
!2990 = !DILocation(line: 814, column: 49, scope: !2963, inlinedAt: !2976)
!2991 = !DILocation(line: 811, column: 20, scope: !2963, inlinedAt: !2976)
!2992 = !DILocation(line: 814, column: 62, scope: !2963, inlinedAt: !2976)
!2993 = !DILocation(line: 811, column: 10, scope: !2963, inlinedAt: !2976)
!2994 = !DILocalVariable(name: "n", arg: 1, scope: !2995, file: !114, line: 220, type: !30)
!2995 = distinct !DISubprogram(name: "xcharalloc", scope: !114, file: !114, line: 220, type: !2996, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!21, !30}
!2998 = !{!2994}
!2999 = !DILocation(line: 220, column: 20, scope: !2995, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 815, column: 15, scope: !2963, inlinedAt: !2976)
!3001 = !DILocation(line: 222, column: 10, scope: !2995, inlinedAt: !3000)
!3002 = !DILocation(line: 815, column: 9, scope: !2963, inlinedAt: !2976)
!3003 = !DILocation(line: 816, column: 60, scope: !2963, inlinedAt: !2976)
!3004 = !DILocation(line: 818, column: 32, scope: !2963, inlinedAt: !2976)
!3005 = !DILocation(line: 818, column: 47, scope: !2963, inlinedAt: !2976)
!3006 = !DILocation(line: 816, column: 3, scope: !2963, inlinedAt: !2976)
!3007 = !DILocation(line: 819, column: 9, scope: !2963, inlinedAt: !2976)
!3008 = !DILocation(line: 794, column: 3, scope: !2952)
!3009 = !DILocation(line: 804, column: 33, scope: !2963)
!3010 = !DILocation(line: 804, column: 45, scope: !2963)
!3011 = !DILocation(line: 804, column: 62, scope: !2963)
!3012 = !DILocation(line: 805, column: 51, scope: !2963)
!3013 = !DILocation(line: 807, column: 37, scope: !2963)
!3014 = !DILocation(line: 807, column: 33, scope: !2963)
!3015 = !DILocation(line: 808, column: 11, scope: !2963)
!3016 = !DILocation(line: 808, column: 7, scope: !2963)
!3017 = !DILocation(line: 810, column: 18, scope: !2963)
!3018 = !DILocation(line: 810, column: 27, scope: !2963)
!3019 = !DILocation(line: 810, column: 24, scope: !2963)
!3020 = !DILocation(line: 810, column: 7, scope: !2963)
!3021 = !DILocation(line: 811, column: 69, scope: !2963)
!3022 = !DILocation(line: 812, column: 53, scope: !2963)
!3023 = !DILocation(line: 813, column: 49, scope: !2963)
!3024 = !DILocation(line: 814, column: 49, scope: !2963)
!3025 = !DILocation(line: 811, column: 20, scope: !2963)
!3026 = !DILocation(line: 814, column: 62, scope: !2963)
!3027 = !DILocation(line: 811, column: 10, scope: !2963)
!3028 = !DILocation(line: 220, column: 20, scope: !2995, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 815, column: 15, scope: !2963)
!3030 = !DILocation(line: 222, column: 10, scope: !2995, inlinedAt: !3029)
!3031 = !DILocation(line: 815, column: 9, scope: !2963)
!3032 = !DILocation(line: 816, column: 60, scope: !2963)
!3033 = !DILocation(line: 818, column: 32, scope: !2963)
!3034 = !DILocation(line: 818, column: 47, scope: !2963)
!3035 = !DILocation(line: 816, column: 3, scope: !2963)
!3036 = !DILocation(line: 819, column: 9, scope: !2963)
!3037 = !DILocation(line: 820, column: 7, scope: !2963)
!3038 = !DILocation(line: 821, column: 11, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2963, file: !275, line: 820, column: 7)
!3040 = !DILocation(line: 821, column: 5, scope: !3039)
!3041 = !DILocation(line: 822, column: 3, scope: !2963)
!3042 = distinct !DISubprogram(name: "quotearg_free", scope: !275, file: !275, line: 840, type: !746, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3043)
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "sv", scope: !3042, file: !275, line: 842, type: !301)
!3045 = !DILocalVariable(name: "i", scope: !3042, file: !275, line: 843, type: !39)
!3046 = !DILocation(line: 842, column: 24, scope: !3042)
!3047 = !DILocation(line: 842, column: 19, scope: !3042)
!3048 = !DILocation(line: 843, column: 7, scope: !3042)
!3049 = !DILocation(line: 844, column: 19, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !3051, file: !275, discriminator: 1)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !275, line: 844, column: 3)
!3052 = distinct !DILexicalBlock(scope: !3042, file: !275, line: 844, column: 3)
!3053 = !DILocation(line: 844, column: 17, scope: !3050)
!3054 = !DILocation(line: 844, column: 3, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !3052, file: !275, discriminator: 1)
!3056 = !DILocation(line: 845, column: 17, scope: !3051)
!3057 = !{!3058, !731, i64 8}
!3058 = !{!"slotvec", !929, i64 0, !731, i64 8}
!3059 = !DILocation(line: 845, column: 5, scope: !3051)
!3060 = !DILocation(line: 844, column: 28, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !3051, file: !275, discriminator: 2)
!3062 = distinct !{!3062, !3063, !3064}
!3063 = !DILocation(line: 844, column: 3, scope: !3052)
!3064 = !DILocation(line: 845, column: 20, scope: !3052)
!3065 = !DILocation(line: 846, column: 13, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3042, file: !275, line: 846, column: 7)
!3067 = !DILocation(line: 846, column: 17, scope: !3066)
!3068 = !DILocation(line: 846, column: 7, scope: !3042)
!3069 = !DILocation(line: 848, column: 7, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !275, line: 847, column: 5)
!3071 = !DILocation(line: 849, column: 21, scope: !3070)
!3072 = !{!3058, !929, i64 0}
!3073 = !DILocation(line: 850, column: 20, scope: !3070)
!3074 = !DILocation(line: 851, column: 5, scope: !3070)
!3075 = !DILocation(line: 852, column: 10, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3042, file: !275, line: 852, column: 7)
!3077 = !DILocation(line: 852, column: 7, scope: !3042)
!3078 = !DILocation(line: 854, column: 13, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3076, file: !275, line: 853, column: 5)
!3080 = !DILocation(line: 854, column: 7, scope: !3079)
!3081 = !DILocation(line: 855, column: 15, scope: !3079)
!3082 = !DILocation(line: 856, column: 5, scope: !3079)
!3083 = !DILocation(line: 857, column: 10, scope: !3042)
!3084 = !DILocation(line: 858, column: 1, scope: !3042)
!3085 = distinct !DISubprogram(name: "quotearg_n", scope: !275, file: !275, line: 922, type: !3086, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!21, !39, !37}
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3085, file: !275, line: 922, type: !39)
!3090 = !DILocalVariable(name: "arg", arg: 2, scope: !3085, file: !275, line: 922, type: !37)
!3091 = !DILocation(line: 922, column: 17, scope: !3085)
!3092 = !DILocation(line: 922, column: 32, scope: !3085)
!3093 = !DILocation(line: 924, column: 10, scope: !3085)
!3094 = !DILocation(line: 924, column: 3, scope: !3085)
!3095 = distinct !DISubprogram(name: "quotearg_n_options", scope: !275, file: !275, line: 869, type: !3096, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!21, !39, !37, !30, !1795}
!3098 = !{!3099, !3100, !3101, !3102, !3103, !3104, !3105, !3108, !3110, !3111, !3112}
!3099 = !DILocalVariable(name: "n", arg: 1, scope: !3095, file: !275, line: 869, type: !39)
!3100 = !DILocalVariable(name: "arg", arg: 2, scope: !3095, file: !275, line: 869, type: !37)
!3101 = !DILocalVariable(name: "argsize", arg: 3, scope: !3095, file: !275, line: 869, type: !30)
!3102 = !DILocalVariable(name: "options", arg: 4, scope: !3095, file: !275, line: 870, type: !1795)
!3103 = !DILocalVariable(name: "e", scope: !3095, file: !275, line: 872, type: !39)
!3104 = !DILocalVariable(name: "sv", scope: !3095, file: !275, line: 874, type: !301)
!3105 = !DILocalVariable(name: "preallocated", scope: !3106, file: !275, line: 881, type: !224)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !275, line: 880, column: 5)
!3107 = distinct !DILexicalBlock(scope: !3095, file: !275, line: 879, column: 7)
!3108 = !DILocalVariable(name: "size", scope: !3109, file: !275, line: 894, type: !30)
!3109 = distinct !DILexicalBlock(scope: !3095, file: !275, line: 893, column: 3)
!3110 = !DILocalVariable(name: "val", scope: !3109, file: !275, line: 895, type: !21)
!3111 = !DILocalVariable(name: "flags", scope: !3109, file: !275, line: 897, type: !39)
!3112 = !DILocalVariable(name: "qsize", scope: !3109, file: !275, line: 898, type: !30)
!3113 = !DILocation(line: 869, column: 25, scope: !3095)
!3114 = !DILocation(line: 869, column: 40, scope: !3095)
!3115 = !DILocation(line: 869, column: 52, scope: !3095)
!3116 = !DILocation(line: 870, column: 51, scope: !3095)
!3117 = !DILocation(line: 872, column: 11, scope: !3095)
!3118 = !DILocation(line: 872, column: 7, scope: !3095)
!3119 = !DILocation(line: 874, column: 24, scope: !3095)
!3120 = !DILocation(line: 874, column: 19, scope: !3095)
!3121 = !DILocation(line: 876, column: 9, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3095, file: !275, line: 876, column: 7)
!3123 = !DILocation(line: 876, column: 7, scope: !3095)
!3124 = !DILocation(line: 877, column: 5, scope: !3122)
!3125 = !DILocation(line: 879, column: 7, scope: !3107)
!3126 = !DILocation(line: 879, column: 14, scope: !3107)
!3127 = !DILocation(line: 879, column: 7, scope: !3095)
!3128 = !DILocation(line: 881, column: 31, scope: !3106)
!3129 = !DILocation(line: 883, column: 67, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3106, file: !275, line: 883, column: 11)
!3131 = !DILocation(line: 883, column: 11, scope: !3106)
!3132 = !DILocation(line: 884, column: 9, scope: !3130)
!3133 = !DILocation(line: 886, column: 32, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !3106, file: !275, discriminator: 3)
!3135 = !DILocation(line: 886, column: 61, scope: !3134)
!3136 = !DILocation(line: 886, column: 58, scope: !3134)
!3137 = !DILocation(line: 886, column: 66, scope: !3134)
!3138 = !DILocation(line: 886, column: 22, scope: !3134)
!3139 = !DILocation(line: 886, column: 15, scope: !3134)
!3140 = !DILocation(line: 887, column: 11, scope: !3106)
!3141 = !DILocation(line: 888, column: 15, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3106, file: !275, line: 887, column: 11)
!3143 = !{i64 0, i64 8, !928, i64 8, i64 8, !730}
!3144 = !DILocation(line: 888, column: 9, scope: !3142)
!3145 = !DILocation(line: 889, column: 20, scope: !3106)
!3146 = !DILocation(line: 889, column: 18, scope: !3106)
!3147 = !DILocation(line: 889, column: 7, scope: !3106)
!3148 = !DILocation(line: 889, column: 38, scope: !3106)
!3149 = !DILocation(line: 889, column: 31, scope: !3106)
!3150 = !DILocation(line: 889, column: 48, scope: !3106)
!3151 = !DILocation(line: 890, column: 14, scope: !3106)
!3152 = !DILocation(line: 891, column: 5, scope: !3106)
!3153 = !DILocation(line: 894, column: 19, scope: !3109)
!3154 = !DILocation(line: 894, column: 25, scope: !3109)
!3155 = !DILocation(line: 894, column: 12, scope: !3109)
!3156 = !DILocation(line: 895, column: 23, scope: !3109)
!3157 = !DILocation(line: 895, column: 11, scope: !3109)
!3158 = !DILocation(line: 897, column: 26, scope: !3109)
!3159 = !DILocation(line: 897, column: 32, scope: !3109)
!3160 = !DILocation(line: 897, column: 9, scope: !3109)
!3161 = !DILocation(line: 899, column: 55, scope: !3109)
!3162 = !DILocation(line: 900, column: 46, scope: !3109)
!3163 = !DILocation(line: 901, column: 55, scope: !3109)
!3164 = !DILocation(line: 902, column: 55, scope: !3109)
!3165 = !DILocation(line: 898, column: 20, scope: !3109)
!3166 = !DILocation(line: 898, column: 12, scope: !3109)
!3167 = !DILocation(line: 904, column: 14, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3109, file: !275, line: 904, column: 9)
!3169 = !DILocation(line: 904, column: 9, scope: !3109)
!3170 = !DILocation(line: 906, column: 35, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3168, file: !275, line: 905, column: 7)
!3172 = !DILocation(line: 906, column: 20, scope: !3171)
!3173 = !DILocation(line: 907, column: 17, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !275, line: 907, column: 13)
!3175 = !DILocation(line: 907, column: 13, scope: !3171)
!3176 = !DILocation(line: 908, column: 11, scope: !3174)
!3177 = !DILocation(line: 220, column: 20, scope: !2995, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 909, column: 27, scope: !3171)
!3179 = !DILocation(line: 222, column: 10, scope: !2995, inlinedAt: !3178)
!3180 = !DILocation(line: 909, column: 19, scope: !3171)
!3181 = !DILocation(line: 910, column: 69, scope: !3171)
!3182 = !DILocation(line: 912, column: 44, scope: !3171)
!3183 = !DILocation(line: 913, column: 44, scope: !3171)
!3184 = !DILocation(line: 910, column: 9, scope: !3171)
!3185 = !DILocation(line: 914, column: 7, scope: !3171)
!3186 = !DILocation(line: 916, column: 11, scope: !3109)
!3187 = !DILocation(line: 917, column: 5, scope: !3109)
!3188 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !275, file: !275, line: 928, type: !3189, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!21, !39, !37, !30}
!3191 = !{!3192, !3193, !3194}
!3192 = !DILocalVariable(name: "n", arg: 1, scope: !3188, file: !275, line: 928, type: !39)
!3193 = !DILocalVariable(name: "arg", arg: 2, scope: !3188, file: !275, line: 928, type: !37)
!3194 = !DILocalVariable(name: "argsize", arg: 3, scope: !3188, file: !275, line: 928, type: !30)
!3195 = !DILocation(line: 928, column: 21, scope: !3188)
!3196 = !DILocation(line: 928, column: 36, scope: !3188)
!3197 = !DILocation(line: 928, column: 48, scope: !3188)
!3198 = !DILocation(line: 930, column: 10, scope: !3188)
!3199 = !DILocation(line: 930, column: 3, scope: !3188)
!3200 = distinct !DISubprogram(name: "quotearg", scope: !275, file: !275, line: 934, type: !3201, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!21, !37}
!3203 = !{!3204}
!3204 = !DILocalVariable(name: "arg", arg: 1, scope: !3200, file: !275, line: 934, type: !37)
!3205 = !DILocation(line: 934, column: 23, scope: !3200)
!3206 = !DILocation(line: 922, column: 17, scope: !3085, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 936, column: 10, scope: !3200)
!3208 = !DILocation(line: 922, column: 32, scope: !3085, inlinedAt: !3207)
!3209 = !DILocation(line: 924, column: 10, scope: !3085, inlinedAt: !3207)
!3210 = !DILocation(line: 936, column: 3, scope: !3200)
!3211 = distinct !DISubprogram(name: "quotearg_mem", scope: !275, file: !275, line: 940, type: !3212, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!21, !37, !30}
!3214 = !{!3215, !3216}
!3215 = !DILocalVariable(name: "arg", arg: 1, scope: !3211, file: !275, line: 940, type: !37)
!3216 = !DILocalVariable(name: "argsize", arg: 2, scope: !3211, file: !275, line: 940, type: !30)
!3217 = !DILocation(line: 940, column: 27, scope: !3211)
!3218 = !DILocation(line: 940, column: 39, scope: !3211)
!3219 = !DILocation(line: 928, column: 21, scope: !3188, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 942, column: 10, scope: !3211)
!3221 = !DILocation(line: 928, column: 36, scope: !3188, inlinedAt: !3220)
!3222 = !DILocation(line: 928, column: 48, scope: !3188, inlinedAt: !3220)
!3223 = !DILocation(line: 930, column: 10, scope: !3188, inlinedAt: !3220)
!3224 = !DILocation(line: 942, column: 3, scope: !3211)
!3225 = distinct !DISubprogram(name: "quotearg_n_style", scope: !275, file: !275, line: 946, type: !3226, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!21, !39, !90, !37}
!3228 = !{!3229, !3230, !3231, !3232}
!3229 = !DILocalVariable(name: "n", arg: 1, scope: !3225, file: !275, line: 946, type: !39)
!3230 = !DILocalVariable(name: "s", arg: 2, scope: !3225, file: !275, line: 946, type: !90)
!3231 = !DILocalVariable(name: "arg", arg: 3, scope: !3225, file: !275, line: 946, type: !37)
!3232 = !DILocalVariable(name: "o", scope: !3225, file: !275, line: 948, type: !1796)
!3233 = !DILocalVariable(name: "o", scope: !3234, file: !275, line: 187, type: !282)
!3234 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !275, file: !275, line: 185, type: !3235, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!282, !90}
!3237 = !{!3238, !3233}
!3238 = !DILocalVariable(name: "style", arg: 1, scope: !3234, file: !275, line: 185, type: !90)
!3239 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3240 = !DILocation(line: 187, column: 26, scope: !3234, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 948, column: 36, scope: !3225)
!3242 = !DILocation(line: 946, column: 23, scope: !3225)
!3243 = !DILocation(line: 946, column: 45, scope: !3225)
!3244 = !DILocation(line: 946, column: 60, scope: !3225)
!3245 = !DILocation(line: 948, column: 3, scope: !3225)
!3246 = !DILocation(line: 948, column: 32, scope: !3225)
!3247 = !DILocation(line: 185, column: 48, scope: !3234, inlinedAt: !3241)
!3248 = !DILocation(line: 187, column: 3, scope: !3234, inlinedAt: !3241)
!3249 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3250 = !DILocation(line: 188, column: 13, scope: !3251, inlinedAt: !3241)
!3251 = distinct !DILexicalBlock(scope: !3234, file: !275, line: 188, column: 7)
!3252 = !DILocation(line: 188, column: 7, scope: !3234, inlinedAt: !3241)
!3253 = !DILocation(line: 189, column: 5, scope: !3251, inlinedAt: !3241)
!3254 = !{!3255}
!3255 = distinct !{!3255, !3256, !"quoting_options_from_style: argument 0"}
!3256 = distinct !{!3256, !"quoting_options_from_style"}
!3257 = !DILocation(line: 191, column: 10, scope: !3234, inlinedAt: !3241)
!3258 = !DILocation(line: 192, column: 1, scope: !3234, inlinedAt: !3241)
!3259 = !DILocation(line: 949, column: 10, scope: !3225)
!3260 = !DILocation(line: 950, column: 1, scope: !3225)
!3261 = !DILocation(line: 949, column: 3, scope: !3225)
!3262 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !275, file: !275, line: 953, type: !3263, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!21, !39, !90, !37, !30}
!3265 = !{!3266, !3267, !3268, !3269, !3270}
!3266 = !DILocalVariable(name: "n", arg: 1, scope: !3262, file: !275, line: 953, type: !39)
!3267 = !DILocalVariable(name: "s", arg: 2, scope: !3262, file: !275, line: 953, type: !90)
!3268 = !DILocalVariable(name: "arg", arg: 3, scope: !3262, file: !275, line: 954, type: !37)
!3269 = !DILocalVariable(name: "argsize", arg: 4, scope: !3262, file: !275, line: 954, type: !30)
!3270 = !DILocalVariable(name: "o", scope: !3262, file: !275, line: 956, type: !1796)
!3271 = !DILocation(line: 187, column: 26, scope: !3234, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 956, column: 36, scope: !3262)
!3273 = !DILocation(line: 953, column: 27, scope: !3262)
!3274 = !DILocation(line: 953, column: 49, scope: !3262)
!3275 = !DILocation(line: 954, column: 35, scope: !3262)
!3276 = !DILocation(line: 954, column: 47, scope: !3262)
!3277 = !DILocation(line: 956, column: 3, scope: !3262)
!3278 = !DILocation(line: 956, column: 32, scope: !3262)
!3279 = !DILocation(line: 185, column: 48, scope: !3234, inlinedAt: !3272)
!3280 = !DILocation(line: 187, column: 3, scope: !3234, inlinedAt: !3272)
!3281 = !DILocation(line: 188, column: 13, scope: !3251, inlinedAt: !3272)
!3282 = !DILocation(line: 188, column: 7, scope: !3234, inlinedAt: !3272)
!3283 = !DILocation(line: 189, column: 5, scope: !3251, inlinedAt: !3272)
!3284 = !{!3285}
!3285 = distinct !{!3285, !3286, !"quoting_options_from_style: argument 0"}
!3286 = distinct !{!3286, !"quoting_options_from_style"}
!3287 = !DILocation(line: 191, column: 10, scope: !3234, inlinedAt: !3272)
!3288 = !DILocation(line: 192, column: 1, scope: !3234, inlinedAt: !3272)
!3289 = !DILocation(line: 957, column: 10, scope: !3262)
!3290 = !DILocation(line: 958, column: 1, scope: !3262)
!3291 = !DILocation(line: 957, column: 3, scope: !3262)
!3292 = distinct !DISubprogram(name: "quotearg_style", scope: !275, file: !275, line: 961, type: !3293, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!21, !90, !37}
!3295 = !{!3296, !3297}
!3296 = !DILocalVariable(name: "s", arg: 1, scope: !3292, file: !275, line: 961, type: !90)
!3297 = !DILocalVariable(name: "arg", arg: 2, scope: !3292, file: !275, line: 961, type: !37)
!3298 = !DILocation(line: 187, column: 26, scope: !3234, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 948, column: 36, scope: !3225, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 963, column: 10, scope: !3292)
!3301 = !DILocation(line: 961, column: 36, scope: !3292)
!3302 = !DILocation(line: 961, column: 51, scope: !3292)
!3303 = !DILocation(line: 946, column: 23, scope: !3225, inlinedAt: !3300)
!3304 = !DILocation(line: 946, column: 45, scope: !3225, inlinedAt: !3300)
!3305 = !DILocation(line: 946, column: 60, scope: !3225, inlinedAt: !3300)
!3306 = !DILocation(line: 948, column: 3, scope: !3225, inlinedAt: !3300)
!3307 = !DILocation(line: 948, column: 32, scope: !3225, inlinedAt: !3300)
!3308 = !DILocation(line: 185, column: 48, scope: !3234, inlinedAt: !3299)
!3309 = !DILocation(line: 187, column: 3, scope: !3234, inlinedAt: !3299)
!3310 = !DILocation(line: 188, column: 13, scope: !3251, inlinedAt: !3299)
!3311 = !DILocation(line: 188, column: 7, scope: !3234, inlinedAt: !3299)
!3312 = !DILocation(line: 189, column: 5, scope: !3251, inlinedAt: !3299)
!3313 = !{!3314}
!3314 = distinct !{!3314, !3315, !"quoting_options_from_style: argument 0"}
!3315 = distinct !{!3315, !"quoting_options_from_style"}
!3316 = !DILocation(line: 191, column: 10, scope: !3234, inlinedAt: !3299)
!3317 = !DILocation(line: 192, column: 1, scope: !3234, inlinedAt: !3299)
!3318 = !DILocation(line: 949, column: 10, scope: !3225, inlinedAt: !3300)
!3319 = !DILocation(line: 950, column: 1, scope: !3225, inlinedAt: !3300)
!3320 = !DILocation(line: 963, column: 3, scope: !3292)
!3321 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !275, file: !275, line: 967, type: !3322, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!21, !90, !37, !30}
!3324 = !{!3325, !3326, !3327}
!3325 = !DILocalVariable(name: "s", arg: 1, scope: !3321, file: !275, line: 967, type: !90)
!3326 = !DILocalVariable(name: "arg", arg: 2, scope: !3321, file: !275, line: 967, type: !37)
!3327 = !DILocalVariable(name: "argsize", arg: 3, scope: !3321, file: !275, line: 967, type: !30)
!3328 = !DILocation(line: 187, column: 26, scope: !3234, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 956, column: 36, scope: !3262, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 969, column: 10, scope: !3321)
!3331 = !DILocation(line: 967, column: 40, scope: !3321)
!3332 = !DILocation(line: 967, column: 55, scope: !3321)
!3333 = !DILocation(line: 967, column: 67, scope: !3321)
!3334 = !DILocation(line: 953, column: 27, scope: !3262, inlinedAt: !3330)
!3335 = !DILocation(line: 953, column: 49, scope: !3262, inlinedAt: !3330)
!3336 = !DILocation(line: 954, column: 35, scope: !3262, inlinedAt: !3330)
!3337 = !DILocation(line: 954, column: 47, scope: !3262, inlinedAt: !3330)
!3338 = !DILocation(line: 956, column: 3, scope: !3262, inlinedAt: !3330)
!3339 = !DILocation(line: 956, column: 32, scope: !3262, inlinedAt: !3330)
!3340 = !DILocation(line: 185, column: 48, scope: !3234, inlinedAt: !3329)
!3341 = !DILocation(line: 187, column: 3, scope: !3234, inlinedAt: !3329)
!3342 = !DILocation(line: 188, column: 13, scope: !3251, inlinedAt: !3329)
!3343 = !DILocation(line: 188, column: 7, scope: !3234, inlinedAt: !3329)
!3344 = !DILocation(line: 189, column: 5, scope: !3251, inlinedAt: !3329)
!3345 = !{!3346}
!3346 = distinct !{!3346, !3347, !"quoting_options_from_style: argument 0"}
!3347 = distinct !{!3347, !"quoting_options_from_style"}
!3348 = !DILocation(line: 191, column: 10, scope: !3234, inlinedAt: !3329)
!3349 = !DILocation(line: 192, column: 1, scope: !3234, inlinedAt: !3329)
!3350 = !DILocation(line: 957, column: 10, scope: !3262, inlinedAt: !3330)
!3351 = !DILocation(line: 958, column: 1, scope: !3262, inlinedAt: !3330)
!3352 = !DILocation(line: 969, column: 3, scope: !3321)
!3353 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !275, file: !275, line: 973, type: !3354, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3356)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!21, !37, !30, !22}
!3356 = !{!3357, !3358, !3359, !3360}
!3357 = !DILocalVariable(name: "arg", arg: 1, scope: !3353, file: !275, line: 973, type: !37)
!3358 = !DILocalVariable(name: "argsize", arg: 2, scope: !3353, file: !275, line: 973, type: !30)
!3359 = !DILocalVariable(name: "ch", arg: 3, scope: !3353, file: !275, line: 973, type: !22)
!3360 = !DILocalVariable(name: "options", scope: !3353, file: !275, line: 975, type: !282)
!3361 = !DILocation(line: 973, column: 32, scope: !3353)
!3362 = !DILocation(line: 973, column: 44, scope: !3353)
!3363 = !DILocation(line: 973, column: 58, scope: !3353)
!3364 = !DILocation(line: 975, column: 3, scope: !3353)
!3365 = !DILocation(line: 976, column: 13, scope: !3353)
!3366 = !{i64 0, i64 4, !963, i64 4, i64 4, !854, i64 8, i64 32, !963, i64 40, i64 8, !730, i64 48, i64 8, !730}
!3367 = !DILocation(line: 975, column: 26, scope: !3353)
!3368 = !DILocation(line: 144, column: 43, scope: !1819, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 977, column: 3, scope: !3353)
!3370 = !DILocation(line: 144, column: 51, scope: !1819, inlinedAt: !3369)
!3371 = !DILocation(line: 144, column: 58, scope: !1819, inlinedAt: !3369)
!3372 = !DILocation(line: 146, column: 17, scope: !1819, inlinedAt: !3369)
!3373 = !DILocation(line: 148, column: 62, scope: !1837, inlinedAt: !3369)
!3374 = !DILocation(line: 148, column: 57, scope: !1837, inlinedAt: !3369)
!3375 = !DILocation(line: 147, column: 17, scope: !1819, inlinedAt: !3369)
!3376 = !DILocation(line: 149, column: 18, scope: !1819, inlinedAt: !3369)
!3377 = !DILocation(line: 149, column: 15, scope: !1819, inlinedAt: !3369)
!3378 = !DILocation(line: 149, column: 7, scope: !1819, inlinedAt: !3369)
!3379 = !DILocation(line: 150, column: 12, scope: !1819, inlinedAt: !3369)
!3380 = !DILocation(line: 150, column: 15, scope: !1819, inlinedAt: !3369)
!3381 = !DILocation(line: 150, column: 25, scope: !1819, inlinedAt: !3369)
!3382 = !DILocation(line: 150, column: 7, scope: !1819, inlinedAt: !3369)
!3383 = !DILocation(line: 151, column: 18, scope: !1819, inlinedAt: !3369)
!3384 = !DILocation(line: 151, column: 23, scope: !1819, inlinedAt: !3369)
!3385 = !DILocation(line: 151, column: 6, scope: !1819, inlinedAt: !3369)
!3386 = !DILocation(line: 978, column: 10, scope: !3353)
!3387 = !DILocation(line: 979, column: 1, scope: !3353)
!3388 = !DILocation(line: 978, column: 3, scope: !3353)
!3389 = distinct !DISubprogram(name: "quotearg_char", scope: !275, file: !275, line: 982, type: !3390, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!21, !37, !22}
!3392 = !{!3393, !3394}
!3393 = !DILocalVariable(name: "arg", arg: 1, scope: !3389, file: !275, line: 982, type: !37)
!3394 = !DILocalVariable(name: "ch", arg: 2, scope: !3389, file: !275, line: 982, type: !22)
!3395 = !DILocation(line: 982, column: 28, scope: !3389)
!3396 = !DILocation(line: 982, column: 38, scope: !3389)
!3397 = !DILocation(line: 973, column: 32, scope: !3353, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 984, column: 10, scope: !3389)
!3399 = !DILocation(line: 973, column: 44, scope: !3353, inlinedAt: !3398)
!3400 = !DILocation(line: 973, column: 58, scope: !3353, inlinedAt: !3398)
!3401 = !DILocation(line: 975, column: 3, scope: !3353, inlinedAt: !3398)
!3402 = !DILocation(line: 976, column: 13, scope: !3353, inlinedAt: !3398)
!3403 = !DILocation(line: 975, column: 26, scope: !3353, inlinedAt: !3398)
!3404 = !DILocation(line: 144, column: 43, scope: !1819, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 977, column: 3, scope: !3353, inlinedAt: !3398)
!3406 = !DILocation(line: 144, column: 51, scope: !1819, inlinedAt: !3405)
!3407 = !DILocation(line: 144, column: 58, scope: !1819, inlinedAt: !3405)
!3408 = !DILocation(line: 146, column: 17, scope: !1819, inlinedAt: !3405)
!3409 = !DILocation(line: 148, column: 62, scope: !1837, inlinedAt: !3405)
!3410 = !DILocation(line: 148, column: 57, scope: !1837, inlinedAt: !3405)
!3411 = !DILocation(line: 147, column: 17, scope: !1819, inlinedAt: !3405)
!3412 = !DILocation(line: 149, column: 18, scope: !1819, inlinedAt: !3405)
!3413 = !DILocation(line: 149, column: 15, scope: !1819, inlinedAt: !3405)
!3414 = !DILocation(line: 149, column: 7, scope: !1819, inlinedAt: !3405)
!3415 = !DILocation(line: 150, column: 12, scope: !1819, inlinedAt: !3405)
!3416 = !DILocation(line: 150, column: 15, scope: !1819, inlinedAt: !3405)
!3417 = !DILocation(line: 150, column: 25, scope: !1819, inlinedAt: !3405)
!3418 = !DILocation(line: 150, column: 7, scope: !1819, inlinedAt: !3405)
!3419 = !DILocation(line: 151, column: 18, scope: !1819, inlinedAt: !3405)
!3420 = !DILocation(line: 151, column: 23, scope: !1819, inlinedAt: !3405)
!3421 = !DILocation(line: 151, column: 6, scope: !1819, inlinedAt: !3405)
!3422 = !DILocation(line: 978, column: 10, scope: !3353, inlinedAt: !3398)
!3423 = !DILocation(line: 979, column: 1, scope: !3353, inlinedAt: !3398)
!3424 = !DILocation(line: 984, column: 3, scope: !3389)
!3425 = distinct !DISubprogram(name: "quotearg_colon", scope: !275, file: !275, line: 988, type: !3201, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3426)
!3426 = !{!3427}
!3427 = !DILocalVariable(name: "arg", arg: 1, scope: !3425, file: !275, line: 988, type: !37)
!3428 = !DILocation(line: 988, column: 29, scope: !3425)
!3429 = !DILocation(line: 982, column: 28, scope: !3389, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 990, column: 10, scope: !3425)
!3431 = !DILocation(line: 982, column: 38, scope: !3389, inlinedAt: !3430)
!3432 = !DILocation(line: 973, column: 32, scope: !3353, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 984, column: 10, scope: !3389, inlinedAt: !3430)
!3434 = !DILocation(line: 973, column: 44, scope: !3353, inlinedAt: !3433)
!3435 = !DILocation(line: 973, column: 58, scope: !3353, inlinedAt: !3433)
!3436 = !DILocation(line: 975, column: 3, scope: !3353, inlinedAt: !3433)
!3437 = !DILocation(line: 976, column: 13, scope: !3353, inlinedAt: !3433)
!3438 = !DILocation(line: 975, column: 26, scope: !3353, inlinedAt: !3433)
!3439 = !DILocation(line: 144, column: 43, scope: !1819, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 977, column: 3, scope: !3353, inlinedAt: !3433)
!3441 = !DILocation(line: 144, column: 51, scope: !1819, inlinedAt: !3440)
!3442 = !DILocation(line: 144, column: 58, scope: !1819, inlinedAt: !3440)
!3443 = !DILocation(line: 146, column: 17, scope: !1819, inlinedAt: !3440)
!3444 = !DILocation(line: 148, column: 57, scope: !1837, inlinedAt: !3440)
!3445 = !DILocation(line: 147, column: 17, scope: !1819, inlinedAt: !3440)
!3446 = !DILocation(line: 149, column: 7, scope: !1819, inlinedAt: !3440)
!3447 = !DILocation(line: 150, column: 12, scope: !1819, inlinedAt: !3440)
!3448 = !DILocation(line: 151, column: 6, scope: !1819, inlinedAt: !3440)
!3449 = !DILocation(line: 978, column: 10, scope: !3353, inlinedAt: !3433)
!3450 = !DILocation(line: 979, column: 1, scope: !3353, inlinedAt: !3433)
!3451 = !DILocation(line: 990, column: 3, scope: !3425)
!3452 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !275, file: !275, line: 994, type: !3212, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3453)
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "arg", arg: 1, scope: !3452, file: !275, line: 994, type: !37)
!3455 = !DILocalVariable(name: "argsize", arg: 2, scope: !3452, file: !275, line: 994, type: !30)
!3456 = !DILocation(line: 994, column: 33, scope: !3452)
!3457 = !DILocation(line: 994, column: 45, scope: !3452)
!3458 = !DILocation(line: 973, column: 32, scope: !3353, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 996, column: 10, scope: !3452)
!3460 = !DILocation(line: 973, column: 44, scope: !3353, inlinedAt: !3459)
!3461 = !DILocation(line: 973, column: 58, scope: !3353, inlinedAt: !3459)
!3462 = !DILocation(line: 975, column: 3, scope: !3353, inlinedAt: !3459)
!3463 = !DILocation(line: 976, column: 13, scope: !3353, inlinedAt: !3459)
!3464 = !DILocation(line: 975, column: 26, scope: !3353, inlinedAt: !3459)
!3465 = !DILocation(line: 144, column: 43, scope: !1819, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 977, column: 3, scope: !3353, inlinedAt: !3459)
!3467 = !DILocation(line: 144, column: 51, scope: !1819, inlinedAt: !3466)
!3468 = !DILocation(line: 144, column: 58, scope: !1819, inlinedAt: !3466)
!3469 = !DILocation(line: 146, column: 17, scope: !1819, inlinedAt: !3466)
!3470 = !DILocation(line: 148, column: 57, scope: !1837, inlinedAt: !3466)
!3471 = !DILocation(line: 147, column: 17, scope: !1819, inlinedAt: !3466)
!3472 = !DILocation(line: 149, column: 7, scope: !1819, inlinedAt: !3466)
!3473 = !DILocation(line: 150, column: 12, scope: !1819, inlinedAt: !3466)
!3474 = !DILocation(line: 151, column: 6, scope: !1819, inlinedAt: !3466)
!3475 = !DILocation(line: 978, column: 10, scope: !3353, inlinedAt: !3459)
!3476 = !DILocation(line: 979, column: 1, scope: !3353, inlinedAt: !3459)
!3477 = !DILocation(line: 996, column: 3, scope: !3452)
!3478 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !275, file: !275, line: 1000, type: !3226, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3479)
!3479 = !{!3480, !3481, !3482, !3483}
!3480 = !DILocalVariable(name: "n", arg: 1, scope: !3478, file: !275, line: 1000, type: !39)
!3481 = !DILocalVariable(name: "s", arg: 2, scope: !3478, file: !275, line: 1000, type: !90)
!3482 = !DILocalVariable(name: "arg", arg: 3, scope: !3478, file: !275, line: 1000, type: !37)
!3483 = !DILocalVariable(name: "options", scope: !3478, file: !275, line: 1002, type: !282)
!3484 = !DILocation(line: 187, column: 26, scope: !3234, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 1003, column: 13, scope: !3478)
!3486 = !DILocation(line: 1000, column: 29, scope: !3478)
!3487 = !DILocation(line: 1000, column: 51, scope: !3478)
!3488 = !DILocation(line: 1000, column: 66, scope: !3478)
!3489 = !DILocation(line: 1002, column: 3, scope: !3478)
!3490 = !DILocation(line: 185, column: 48, scope: !3234, inlinedAt: !3485)
!3491 = !DILocation(line: 187, column: 3, scope: !3234, inlinedAt: !3485)
!3492 = !DILocation(line: 188, column: 13, scope: !3251, inlinedAt: !3485)
!3493 = !DILocation(line: 188, column: 7, scope: !3234, inlinedAt: !3485)
!3494 = !DILocation(line: 189, column: 5, scope: !3251, inlinedAt: !3485)
!3495 = !{!3496}
!3496 = distinct !{!3496, !3497, !"quoting_options_from_style: argument 0"}
!3497 = distinct !{!3497, !"quoting_options_from_style"}
!3498 = !DILocation(line: 191, column: 10, scope: !3234, inlinedAt: !3485)
!3499 = !DILocation(line: 192, column: 1, scope: !3234, inlinedAt: !3485)
!3500 = !DILocation(line: 1003, column: 13, scope: !3478)
!3501 = !DILocation(line: 1002, column: 26, scope: !3478)
!3502 = !DILocation(line: 144, column: 43, scope: !1819, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 1004, column: 3, scope: !3478)
!3504 = !DILocation(line: 144, column: 51, scope: !1819, inlinedAt: !3503)
!3505 = !DILocation(line: 144, column: 58, scope: !1819, inlinedAt: !3503)
!3506 = !DILocation(line: 146, column: 17, scope: !1819, inlinedAt: !3503)
!3507 = !DILocation(line: 148, column: 57, scope: !1837, inlinedAt: !3503)
!3508 = !DILocation(line: 147, column: 17, scope: !1819, inlinedAt: !3503)
!3509 = !DILocation(line: 149, column: 7, scope: !1819, inlinedAt: !3503)
!3510 = !DILocation(line: 150, column: 12, scope: !1819, inlinedAt: !3503)
!3511 = !DILocation(line: 151, column: 6, scope: !1819, inlinedAt: !3503)
!3512 = !DILocation(line: 1005, column: 10, scope: !3478)
!3513 = !DILocation(line: 1006, column: 1, scope: !3478)
!3514 = !DILocation(line: 1005, column: 3, scope: !3478)
!3515 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !275, file: !275, line: 1009, type: !3516, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!21, !39, !37, !37, !37}
!3518 = !{!3519, !3520, !3521, !3522}
!3519 = !DILocalVariable(name: "n", arg: 1, scope: !3515, file: !275, line: 1009, type: !39)
!3520 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3515, file: !275, line: 1009, type: !37)
!3521 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3515, file: !275, line: 1010, type: !37)
!3522 = !DILocalVariable(name: "arg", arg: 4, scope: !3515, file: !275, line: 1010, type: !37)
!3523 = !DILocation(line: 1009, column: 24, scope: !3515)
!3524 = !DILocation(line: 1009, column: 39, scope: !3515)
!3525 = !DILocation(line: 1010, column: 32, scope: !3515)
!3526 = !DILocation(line: 1010, column: 57, scope: !3515)
!3527 = !DILocalVariable(name: "n", arg: 1, scope: !3528, file: !275, line: 1017, type: !39)
!3528 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !275, file: !275, line: 1017, type: !3529, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!21, !39, !37, !37, !37, !30}
!3531 = !{!3527, !3532, !3533, !3534, !3535, !3536}
!3532 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3528, file: !275, line: 1017, type: !37)
!3533 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3528, file: !275, line: 1018, type: !37)
!3534 = !DILocalVariable(name: "arg", arg: 4, scope: !3528, file: !275, line: 1019, type: !37)
!3535 = !DILocalVariable(name: "argsize", arg: 5, scope: !3528, file: !275, line: 1019, type: !30)
!3536 = !DILocalVariable(name: "o", scope: !3528, file: !275, line: 1021, type: !282)
!3537 = !DILocation(line: 1017, column: 28, scope: !3528, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 1012, column: 10, scope: !3515)
!3539 = !DILocation(line: 1017, column: 43, scope: !3528, inlinedAt: !3538)
!3540 = !DILocation(line: 1018, column: 36, scope: !3528, inlinedAt: !3538)
!3541 = !DILocation(line: 1019, column: 36, scope: !3528, inlinedAt: !3538)
!3542 = !DILocation(line: 1019, column: 48, scope: !3528, inlinedAt: !3538)
!3543 = !DILocation(line: 1021, column: 3, scope: !3528, inlinedAt: !3538)
!3544 = !DILocation(line: 1021, column: 30, scope: !3528, inlinedAt: !3538)
!3545 = !DILocation(line: 1021, column: 26, scope: !3528, inlinedAt: !3538)
!3546 = !DILocation(line: 171, column: 45, scope: !1869, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 1022, column: 3, scope: !3528, inlinedAt: !3538)
!3548 = !DILocation(line: 172, column: 33, scope: !1869, inlinedAt: !3547)
!3549 = !DILocation(line: 172, column: 57, scope: !1869, inlinedAt: !3547)
!3550 = !DILocation(line: 176, column: 6, scope: !1869, inlinedAt: !3547)
!3551 = !DILocation(line: 176, column: 12, scope: !1869, inlinedAt: !3547)
!3552 = !DILocation(line: 177, column: 8, scope: !1885, inlinedAt: !3547)
!3553 = !DILocation(line: 177, column: 23, scope: !1887, inlinedAt: !3547)
!3554 = !DILocation(line: 177, column: 19, scope: !1885, inlinedAt: !3547)
!3555 = !DILocation(line: 178, column: 5, scope: !1885, inlinedAt: !3547)
!3556 = !DILocation(line: 179, column: 6, scope: !1869, inlinedAt: !3547)
!3557 = !DILocation(line: 179, column: 17, scope: !1869, inlinedAt: !3547)
!3558 = !DILocation(line: 180, column: 6, scope: !1869, inlinedAt: !3547)
!3559 = !DILocation(line: 180, column: 18, scope: !1869, inlinedAt: !3547)
!3560 = !DILocation(line: 1023, column: 10, scope: !3528, inlinedAt: !3538)
!3561 = !DILocation(line: 1024, column: 1, scope: !3528, inlinedAt: !3538)
!3562 = !DILocation(line: 1012, column: 3, scope: !3515)
!3563 = !DILocation(line: 1017, column: 28, scope: !3528)
!3564 = !DILocation(line: 1017, column: 43, scope: !3528)
!3565 = !DILocation(line: 1018, column: 36, scope: !3528)
!3566 = !DILocation(line: 1019, column: 36, scope: !3528)
!3567 = !DILocation(line: 1019, column: 48, scope: !3528)
!3568 = !DILocation(line: 1021, column: 3, scope: !3528)
!3569 = !DILocation(line: 1021, column: 30, scope: !3528)
!3570 = !DILocation(line: 1021, column: 26, scope: !3528)
!3571 = !DILocation(line: 171, column: 45, scope: !1869, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 1022, column: 3, scope: !3528)
!3573 = !DILocation(line: 172, column: 33, scope: !1869, inlinedAt: !3572)
!3574 = !DILocation(line: 172, column: 57, scope: !1869, inlinedAt: !3572)
!3575 = !DILocation(line: 176, column: 6, scope: !1869, inlinedAt: !3572)
!3576 = !DILocation(line: 176, column: 12, scope: !1869, inlinedAt: !3572)
!3577 = !DILocation(line: 177, column: 8, scope: !1885, inlinedAt: !3572)
!3578 = !DILocation(line: 177, column: 23, scope: !1887, inlinedAt: !3572)
!3579 = !DILocation(line: 177, column: 19, scope: !1885, inlinedAt: !3572)
!3580 = !DILocation(line: 178, column: 5, scope: !1885, inlinedAt: !3572)
!3581 = !DILocation(line: 179, column: 6, scope: !1869, inlinedAt: !3572)
!3582 = !DILocation(line: 179, column: 17, scope: !1869, inlinedAt: !3572)
!3583 = !DILocation(line: 180, column: 6, scope: !1869, inlinedAt: !3572)
!3584 = !DILocation(line: 180, column: 18, scope: !1869, inlinedAt: !3572)
!3585 = !DILocation(line: 1023, column: 10, scope: !3528)
!3586 = !DILocation(line: 1024, column: 1, scope: !3528)
!3587 = !DILocation(line: 1023, column: 3, scope: !3528)
!3588 = distinct !DISubprogram(name: "quotearg_custom", scope: !275, file: !275, line: 1027, type: !3589, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!21, !37, !37, !37}
!3591 = !{!3592, !3593, !3594}
!3592 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3588, file: !275, line: 1027, type: !37)
!3593 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3588, file: !275, line: 1027, type: !37)
!3594 = !DILocalVariable(name: "arg", arg: 3, scope: !3588, file: !275, line: 1028, type: !37)
!3595 = !DILocation(line: 1027, column: 30, scope: !3588)
!3596 = !DILocation(line: 1027, column: 54, scope: !3588)
!3597 = !DILocation(line: 1028, column: 30, scope: !3588)
!3598 = !DILocation(line: 1009, column: 24, scope: !3515, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1030, column: 10, scope: !3588)
!3600 = !DILocation(line: 1009, column: 39, scope: !3515, inlinedAt: !3599)
!3601 = !DILocation(line: 1010, column: 32, scope: !3515, inlinedAt: !3599)
!3602 = !DILocation(line: 1010, column: 57, scope: !3515, inlinedAt: !3599)
!3603 = !DILocation(line: 1017, column: 28, scope: !3528, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 1012, column: 10, scope: !3515, inlinedAt: !3599)
!3605 = !DILocation(line: 1017, column: 43, scope: !3528, inlinedAt: !3604)
!3606 = !DILocation(line: 1018, column: 36, scope: !3528, inlinedAt: !3604)
!3607 = !DILocation(line: 1019, column: 36, scope: !3528, inlinedAt: !3604)
!3608 = !DILocation(line: 1019, column: 48, scope: !3528, inlinedAt: !3604)
!3609 = !DILocation(line: 1021, column: 3, scope: !3528, inlinedAt: !3604)
!3610 = !DILocation(line: 1021, column: 30, scope: !3528, inlinedAt: !3604)
!3611 = !DILocation(line: 1021, column: 26, scope: !3528, inlinedAt: !3604)
!3612 = !DILocation(line: 171, column: 45, scope: !1869, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 1022, column: 3, scope: !3528, inlinedAt: !3604)
!3614 = !DILocation(line: 172, column: 33, scope: !1869, inlinedAt: !3613)
!3615 = !DILocation(line: 172, column: 57, scope: !1869, inlinedAt: !3613)
!3616 = !DILocation(line: 176, column: 6, scope: !1869, inlinedAt: !3613)
!3617 = !DILocation(line: 176, column: 12, scope: !1869, inlinedAt: !3613)
!3618 = !DILocation(line: 177, column: 8, scope: !1885, inlinedAt: !3613)
!3619 = !DILocation(line: 177, column: 23, scope: !1887, inlinedAt: !3613)
!3620 = !DILocation(line: 177, column: 19, scope: !1885, inlinedAt: !3613)
!3621 = !DILocation(line: 178, column: 5, scope: !1885, inlinedAt: !3613)
!3622 = !DILocation(line: 179, column: 6, scope: !1869, inlinedAt: !3613)
!3623 = !DILocation(line: 179, column: 17, scope: !1869, inlinedAt: !3613)
!3624 = !DILocation(line: 180, column: 6, scope: !1869, inlinedAt: !3613)
!3625 = !DILocation(line: 180, column: 18, scope: !1869, inlinedAt: !3613)
!3626 = !DILocation(line: 1023, column: 10, scope: !3528, inlinedAt: !3604)
!3627 = !DILocation(line: 1024, column: 1, scope: !3528, inlinedAt: !3604)
!3628 = !DILocation(line: 1030, column: 3, scope: !3588)
!3629 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !275, file: !275, line: 1034, type: !3630, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3632)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!21, !37, !37, !37, !30}
!3632 = !{!3633, !3634, !3635, !3636}
!3633 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3629, file: !275, line: 1034, type: !37)
!3634 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3629, file: !275, line: 1034, type: !37)
!3635 = !DILocalVariable(name: "arg", arg: 3, scope: !3629, file: !275, line: 1035, type: !37)
!3636 = !DILocalVariable(name: "argsize", arg: 4, scope: !3629, file: !275, line: 1035, type: !30)
!3637 = !DILocation(line: 1034, column: 34, scope: !3629)
!3638 = !DILocation(line: 1034, column: 58, scope: !3629)
!3639 = !DILocation(line: 1035, column: 34, scope: !3629)
!3640 = !DILocation(line: 1035, column: 46, scope: !3629)
!3641 = !DILocation(line: 1017, column: 28, scope: !3528, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 1037, column: 10, scope: !3629)
!3643 = !DILocation(line: 1017, column: 43, scope: !3528, inlinedAt: !3642)
!3644 = !DILocation(line: 1018, column: 36, scope: !3528, inlinedAt: !3642)
!3645 = !DILocation(line: 1019, column: 36, scope: !3528, inlinedAt: !3642)
!3646 = !DILocation(line: 1019, column: 48, scope: !3528, inlinedAt: !3642)
!3647 = !DILocation(line: 1021, column: 3, scope: !3528, inlinedAt: !3642)
!3648 = !DILocation(line: 1021, column: 30, scope: !3528, inlinedAt: !3642)
!3649 = !DILocation(line: 1021, column: 26, scope: !3528, inlinedAt: !3642)
!3650 = !DILocation(line: 171, column: 45, scope: !1869, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 1022, column: 3, scope: !3528, inlinedAt: !3642)
!3652 = !DILocation(line: 172, column: 33, scope: !1869, inlinedAt: !3651)
!3653 = !DILocation(line: 172, column: 57, scope: !1869, inlinedAt: !3651)
!3654 = !DILocation(line: 176, column: 6, scope: !1869, inlinedAt: !3651)
!3655 = !DILocation(line: 176, column: 12, scope: !1869, inlinedAt: !3651)
!3656 = !DILocation(line: 177, column: 8, scope: !1885, inlinedAt: !3651)
!3657 = !DILocation(line: 177, column: 23, scope: !1887, inlinedAt: !3651)
!3658 = !DILocation(line: 177, column: 19, scope: !1885, inlinedAt: !3651)
!3659 = !DILocation(line: 178, column: 5, scope: !1885, inlinedAt: !3651)
!3660 = !DILocation(line: 179, column: 6, scope: !1869, inlinedAt: !3651)
!3661 = !DILocation(line: 179, column: 17, scope: !1869, inlinedAt: !3651)
!3662 = !DILocation(line: 180, column: 6, scope: !1869, inlinedAt: !3651)
!3663 = !DILocation(line: 180, column: 18, scope: !1869, inlinedAt: !3651)
!3664 = !DILocation(line: 1023, column: 10, scope: !3528, inlinedAt: !3642)
!3665 = !DILocation(line: 1024, column: 1, scope: !3528, inlinedAt: !3642)
!3666 = !DILocation(line: 1037, column: 3, scope: !3629)
!3667 = distinct !DISubprogram(name: "quote_n_mem", scope: !275, file: !275, line: 1052, type: !3668, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!37, !39, !37, !30}
!3670 = !{!3671, !3672, !3673}
!3671 = !DILocalVariable(name: "n", arg: 1, scope: !3667, file: !275, line: 1052, type: !39)
!3672 = !DILocalVariable(name: "arg", arg: 2, scope: !3667, file: !275, line: 1052, type: !37)
!3673 = !DILocalVariable(name: "argsize", arg: 3, scope: !3667, file: !275, line: 1052, type: !30)
!3674 = !DILocation(line: 1052, column: 18, scope: !3667)
!3675 = !DILocation(line: 1052, column: 33, scope: !3667)
!3676 = !DILocation(line: 1052, column: 45, scope: !3667)
!3677 = !DILocation(line: 1054, column: 10, scope: !3667)
!3678 = !DILocation(line: 1054, column: 3, scope: !3667)
!3679 = distinct !DISubprogram(name: "quote_mem", scope: !275, file: !275, line: 1058, type: !3680, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!37, !37, !30}
!3682 = !{!3683, !3684}
!3683 = !DILocalVariable(name: "arg", arg: 1, scope: !3679, file: !275, line: 1058, type: !37)
!3684 = !DILocalVariable(name: "argsize", arg: 2, scope: !3679, file: !275, line: 1058, type: !30)
!3685 = !DILocation(line: 1058, column: 24, scope: !3679)
!3686 = !DILocation(line: 1058, column: 36, scope: !3679)
!3687 = !DILocation(line: 1052, column: 18, scope: !3667, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 1060, column: 10, scope: !3679)
!3689 = !DILocation(line: 1052, column: 33, scope: !3667, inlinedAt: !3688)
!3690 = !DILocation(line: 1052, column: 45, scope: !3667, inlinedAt: !3688)
!3691 = !DILocation(line: 1054, column: 10, scope: !3667, inlinedAt: !3688)
!3692 = !DILocation(line: 1060, column: 3, scope: !3679)
!3693 = distinct !DISubprogram(name: "quote_n", scope: !275, file: !275, line: 1064, type: !3694, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!37, !39, !37}
!3696 = !{!3697, !3698}
!3697 = !DILocalVariable(name: "n", arg: 1, scope: !3693, file: !275, line: 1064, type: !39)
!3698 = !DILocalVariable(name: "arg", arg: 2, scope: !3693, file: !275, line: 1064, type: !37)
!3699 = !DILocation(line: 1064, column: 14, scope: !3693)
!3700 = !DILocation(line: 1064, column: 29, scope: !3693)
!3701 = !DILocation(line: 1052, column: 18, scope: !3667, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 1066, column: 10, scope: !3693)
!3703 = !DILocation(line: 1052, column: 33, scope: !3667, inlinedAt: !3702)
!3704 = !DILocation(line: 1052, column: 45, scope: !3667, inlinedAt: !3702)
!3705 = !DILocation(line: 1054, column: 10, scope: !3667, inlinedAt: !3702)
!3706 = !DILocation(line: 1066, column: 3, scope: !3693)
!3707 = distinct !DISubprogram(name: "quote", scope: !275, file: !275, line: 1070, type: !3708, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !263, variables: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!37, !37}
!3710 = !{!3711}
!3711 = !DILocalVariable(name: "arg", arg: 1, scope: !3707, file: !275, line: 1070, type: !37)
!3712 = !DILocation(line: 1070, column: 20, scope: !3707)
!3713 = !DILocation(line: 1064, column: 14, scope: !3693, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 1072, column: 10, scope: !3707)
!3715 = !DILocation(line: 1064, column: 29, scope: !3693, inlinedAt: !3714)
!3716 = !DILocation(line: 1052, column: 18, scope: !3667, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 1066, column: 10, scope: !3693, inlinedAt: !3714)
!3718 = !DILocation(line: 1052, column: 33, scope: !3667, inlinedAt: !3717)
!3719 = !DILocation(line: 1052, column: 45, scope: !3667, inlinedAt: !3717)
!3720 = !DILocation(line: 1054, column: 10, scope: !3667, inlinedAt: !3717)
!3721 = !DILocation(line: 1072, column: 3, scope: !3707)
!3722 = distinct !DISubprogram(name: "version_etc_arn", scope: !677, file: !677, line: 62, type: !3723, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !3766)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{null, !3725, !37, !37, !37, !3765, !30}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 49, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 241, size: 1728, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3727, file: !140, line: 242, baseType: !39, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3727, file: !140, line: 247, baseType: !21, size: 64, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3727, file: !140, line: 248, baseType: !21, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3727, file: !140, line: 249, baseType: !21, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3727, file: !140, line: 250, baseType: !21, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3727, file: !140, line: 251, baseType: !21, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3727, file: !140, line: 252, baseType: !21, size: 64, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3727, file: !140, line: 253, baseType: !21, size: 64, offset: 448)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3727, file: !140, line: 254, baseType: !21, size: 64, offset: 512)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3727, file: !140, line: 256, baseType: !21, size: 64, offset: 576)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3727, file: !140, line: 257, baseType: !21, size: 64, offset: 640)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3727, file: !140, line: 258, baseType: !21, size: 64, offset: 704)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3727, file: !140, line: 260, baseType: !3742, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 156, size: 192, elements: !3744)
!3744 = !{!3745, !3746, !3748}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3743, file: !140, line: 157, baseType: !3742, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3743, file: !140, line: 158, baseType: !3747, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3743, file: !140, line: 162, baseType: !39, size: 32, offset: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3727, file: !140, line: 262, baseType: !3747, size: 64, offset: 832)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3727, file: !140, line: 264, baseType: !39, size: 32, offset: 896)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3727, file: !140, line: 268, baseType: !39, size: 32, offset: 928)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3727, file: !140, line: 270, baseType: !166, size: 64, offset: 960)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3727, file: !140, line: 274, baseType: !40, size: 16, offset: 1024)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3727, file: !140, line: 275, baseType: !170, size: 8, offset: 1040)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3727, file: !140, line: 276, baseType: !172, size: 8, offset: 1048)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3727, file: !140, line: 280, baseType: !176, size: 64, offset: 1088)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3727, file: !140, line: 289, baseType: !179, size: 64, offset: 1152)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3727, file: !140, line: 297, baseType: !23, size: 64, offset: 1216)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3727, file: !140, line: 298, baseType: !23, size: 64, offset: 1280)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3727, file: !140, line: 299, baseType: !23, size: 64, offset: 1344)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3727, file: !140, line: 300, baseType: !23, size: 64, offset: 1408)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3727, file: !140, line: 302, baseType: !30, size: 64, offset: 1472)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3727, file: !140, line: 303, baseType: !39, size: 32, offset: 1536)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3727, file: !140, line: 305, baseType: !187, size: 160, offset: 1568)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772}
!3767 = !DILocalVariable(name: "stream", arg: 1, scope: !3722, file: !677, line: 62, type: !3725)
!3768 = !DILocalVariable(name: "command_name", arg: 2, scope: !3722, file: !677, line: 63, type: !37)
!3769 = !DILocalVariable(name: "package", arg: 3, scope: !3722, file: !677, line: 63, type: !37)
!3770 = !DILocalVariable(name: "version", arg: 4, scope: !3722, file: !677, line: 64, type: !37)
!3771 = !DILocalVariable(name: "authors", arg: 5, scope: !3722, file: !677, line: 65, type: !3765)
!3772 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3722, file: !677, line: 65, type: !30)
!3773 = !DILocation(line: 62, column: 24, scope: !3722)
!3774 = !DILocation(line: 63, column: 30, scope: !3722)
!3775 = !DILocation(line: 63, column: 56, scope: !3722)
!3776 = !DILocation(line: 64, column: 30, scope: !3722)
!3777 = !DILocation(line: 65, column: 39, scope: !3722)
!3778 = !DILocation(line: 65, column: 55, scope: !3722)
!3779 = !DILocation(line: 67, column: 7, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3722, file: !677, line: 67, column: 7)
!3781 = !DILocation(line: 67, column: 7, scope: !3722)
!3782 = !DILocation(line: 68, column: 5, scope: !3780)
!3783 = !DILocation(line: 70, column: 5, scope: !3780)
!3784 = !DILocation(line: 84, column: 3, scope: !3722)
!3785 = !DILocation(line: 84, column: 3, scope: !3786)
!3786 = !DILexicalBlockFile(scope: !3722, file: !677, discriminator: 1)
!3787 = !DILocation(line: 86, column: 3, scope: !3722)
!3788 = !DILocation(line: 86, column: 3, scope: !3786)
!3789 = !DILocation(line: 95, column: 3, scope: !3722)
!3790 = !DILocation(line: 99, column: 7, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3722, file: !677, line: 96, column: 5)
!3792 = !DILocation(line: 102, column: 7, scope: !3791)
!3793 = !DILocation(line: 102, column: 7, scope: !3794)
!3794 = !DILexicalBlockFile(scope: !3791, file: !677, discriminator: 1)
!3795 = !DILocation(line: 103, column: 7, scope: !3791)
!3796 = !DILocation(line: 106, column: 7, scope: !3791)
!3797 = !DILocation(line: 106, column: 7, scope: !3794)
!3798 = !DILocation(line: 107, column: 7, scope: !3791)
!3799 = !DILocation(line: 110, column: 7, scope: !3791)
!3800 = !DILocation(line: 110, column: 7, scope: !3794)
!3801 = !DILocation(line: 112, column: 7, scope: !3791)
!3802 = !DILocation(line: 117, column: 7, scope: !3791)
!3803 = !DILocation(line: 117, column: 7, scope: !3794)
!3804 = !DILocation(line: 119, column: 7, scope: !3791)
!3805 = !DILocation(line: 124, column: 7, scope: !3791)
!3806 = !DILocation(line: 124, column: 7, scope: !3794)
!3807 = !DILocation(line: 126, column: 7, scope: !3791)
!3808 = !DILocation(line: 131, column: 7, scope: !3791)
!3809 = !DILocation(line: 131, column: 7, scope: !3794)
!3810 = !DILocation(line: 134, column: 7, scope: !3791)
!3811 = !DILocation(line: 139, column: 7, scope: !3791)
!3812 = !DILocation(line: 139, column: 7, scope: !3794)
!3813 = !DILocation(line: 142, column: 7, scope: !3791)
!3814 = !DILocation(line: 147, column: 7, scope: !3791)
!3815 = !DILocation(line: 147, column: 7, scope: !3794)
!3816 = !DILocation(line: 151, column: 7, scope: !3791)
!3817 = !DILocation(line: 156, column: 7, scope: !3791)
!3818 = !DILocation(line: 156, column: 7, scope: !3794)
!3819 = !DILocation(line: 160, column: 7, scope: !3791)
!3820 = !DILocation(line: 167, column: 7, scope: !3791)
!3821 = !DILocation(line: 167, column: 7, scope: !3794)
!3822 = !DILocation(line: 171, column: 7, scope: !3791)
!3823 = !DILocation(line: 173, column: 1, scope: !3722)
!3824 = distinct !DISubprogram(name: "version_etc_ar", scope: !677, file: !677, line: 180, type: !3825, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{null, !3725, !37, !37, !37, !3765}
!3827 = !{!3828, !3829, !3830, !3831, !3832, !3833}
!3828 = !DILocalVariable(name: "stream", arg: 1, scope: !3824, file: !677, line: 180, type: !3725)
!3829 = !DILocalVariable(name: "command_name", arg: 2, scope: !3824, file: !677, line: 181, type: !37)
!3830 = !DILocalVariable(name: "package", arg: 3, scope: !3824, file: !677, line: 181, type: !37)
!3831 = !DILocalVariable(name: "version", arg: 4, scope: !3824, file: !677, line: 182, type: !37)
!3832 = !DILocalVariable(name: "authors", arg: 5, scope: !3824, file: !677, line: 182, type: !3765)
!3833 = !DILocalVariable(name: "n_authors", scope: !3824, file: !677, line: 184, type: !30)
!3834 = !DILocation(line: 180, column: 23, scope: !3824)
!3835 = !DILocation(line: 181, column: 29, scope: !3824)
!3836 = !DILocation(line: 181, column: 55, scope: !3824)
!3837 = !DILocation(line: 182, column: 29, scope: !3824)
!3838 = !DILocation(line: 182, column: 59, scope: !3824)
!3839 = !DILocation(line: 184, column: 10, scope: !3824)
!3840 = !DILocation(line: 186, column: 8, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3824, file: !677, line: 186, column: 3)
!3842 = !DILocation(line: 186, column: 23, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !3844, file: !677, discriminator: 1)
!3844 = distinct !DILexicalBlock(scope: !3841, file: !677, line: 186, column: 3)
!3845 = !DILocation(line: 186, column: 3, scope: !3846)
!3846 = !DILexicalBlockFile(scope: !3841, file: !677, discriminator: 1)
!3847 = !DILocation(line: 186, column: 52, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3844, file: !677, discriminator: 3)
!3849 = distinct !{!3849, !3850, !3851}
!3850 = !DILocation(line: 186, column: 3, scope: !3841)
!3851 = !DILocation(line: 187, column: 5, scope: !3841)
!3852 = !DILocation(line: 188, column: 3, scope: !3824)
!3853 = !DILocation(line: 189, column: 1, scope: !3824)
!3854 = distinct !DISubprogram(name: "version_etc_va", scope: !677, file: !677, line: 196, type: !3855, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !3864)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3725, !37, !37, !37, !3857}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !674, line: 189, size: 192, elements: !3859)
!3859 = !{!3860, !3861, !3862, !3863}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3858, file: !674, line: 189, baseType: !127, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3858, file: !674, line: 189, baseType: !127, size: 32, offset: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3858, file: !674, line: 189, baseType: !23, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3858, file: !674, line: 189, baseType: !23, size: 64, offset: 128)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871}
!3865 = !DILocalVariable(name: "stream", arg: 1, scope: !3854, file: !677, line: 196, type: !3725)
!3866 = !DILocalVariable(name: "command_name", arg: 2, scope: !3854, file: !677, line: 197, type: !37)
!3867 = !DILocalVariable(name: "package", arg: 3, scope: !3854, file: !677, line: 197, type: !37)
!3868 = !DILocalVariable(name: "version", arg: 4, scope: !3854, file: !677, line: 198, type: !37)
!3869 = !DILocalVariable(name: "authors", arg: 5, scope: !3854, file: !677, line: 198, type: !3857)
!3870 = !DILocalVariable(name: "n_authors", scope: !3854, file: !677, line: 200, type: !30)
!3871 = !DILocalVariable(name: "authtab", scope: !3854, file: !677, line: 201, type: !3872)
!3872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !278)
!3873 = !DILocation(line: 196, column: 23, scope: !3854)
!3874 = !DILocation(line: 197, column: 29, scope: !3854)
!3875 = !DILocation(line: 197, column: 55, scope: !3854)
!3876 = !DILocation(line: 198, column: 29, scope: !3854)
!3877 = !DILocation(line: 198, column: 46, scope: !3854)
!3878 = !DILocation(line: 201, column: 3, scope: !3854)
!3879 = !DILocation(line: 201, column: 15, scope: !3854)
!3880 = !DILocation(line: 200, column: 10, scope: !3854)
!3881 = !DILocation(line: 205, column: 35, scope: !3882)
!3882 = !DILexicalBlockFile(scope: !3883, file: !677, discriminator: 1)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !677, line: 203, column: 3)
!3884 = distinct !DILexicalBlock(scope: !3854, file: !677, line: 203, column: 3)
!3885 = !DILocation(line: 205, column: 35, scope: !3886)
!3886 = !DILexicalBlockFile(scope: !3883, file: !677, discriminator: 2)
!3887 = !DILocation(line: 205, column: 35, scope: !3888)
!3888 = !DILexicalBlockFile(scope: !3883, file: !677, discriminator: 3)
!3889 = !DILocation(line: 205, column: 35, scope: !3890)
!3890 = !DILexicalBlockFile(scope: !3883, file: !677, discriminator: 4)
!3891 = !DILocation(line: 205, column: 14, scope: !3890)
!3892 = !DILocation(line: 205, column: 33, scope: !3890)
!3893 = !DILocation(line: 205, column: 67, scope: !3890)
!3894 = !DILocation(line: 203, column: 3, scope: !3895)
!3895 = !DILexicalBlockFile(scope: !3884, file: !677, discriminator: 1)
!3896 = !DILocation(line: 208, column: 3, scope: !3854)
!3897 = !DILocation(line: 210, column: 1, scope: !3854)
!3898 = distinct !DISubprogram(name: "version_etc", scope: !677, file: !677, line: 227, type: !3899, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !3725, !37, !37, !37, null}
!3901 = !{!3902, !3903, !3904, !3905, !3906}
!3902 = !DILocalVariable(name: "stream", arg: 1, scope: !3898, file: !677, line: 227, type: !3725)
!3903 = !DILocalVariable(name: "command_name", arg: 2, scope: !3898, file: !677, line: 228, type: !37)
!3904 = !DILocalVariable(name: "package", arg: 3, scope: !3898, file: !677, line: 228, type: !37)
!3905 = !DILocalVariable(name: "version", arg: 4, scope: !3898, file: !677, line: 229, type: !37)
!3906 = !DILocalVariable(name: "authors", scope: !3898, file: !677, line: 231, type: !3907)
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !138, line: 80, baseType: !3908)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3909, line: 50, baseType: !3910)
!3909 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !674, line: 231, baseType: !3911)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3858, size: 192, elements: !173)
!3912 = !DILocation(line: 227, column: 20, scope: !3898)
!3913 = !DILocation(line: 228, column: 26, scope: !3898)
!3914 = !DILocation(line: 228, column: 52, scope: !3898)
!3915 = !DILocation(line: 229, column: 26, scope: !3898)
!3916 = !DILocation(line: 231, column: 3, scope: !3898)
!3917 = !DILocation(line: 231, column: 11, scope: !3898)
!3918 = !DILocation(line: 233, column: 3, scope: !3898)
!3919 = !DILocation(line: 234, column: 3, scope: !3898)
!3920 = !DILocation(line: 235, column: 3, scope: !3898)
!3921 = !DILocation(line: 236, column: 1, scope: !3898)
!3922 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !677, file: !677, line: 239, type: !746, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !237)
!3923 = !DILocation(line: 245, column: 3, scope: !3922)
!3924 = !DILocation(line: 245, column: 3, scope: !3925)
!3925 = !DILexicalBlockFile(scope: !3922, file: !677, discriminator: 1)
!3926 = !DILocation(line: 251, column: 3, scope: !3922)
!3927 = !DILocation(line: 251, column: 3, scope: !3925)
!3928 = !DILocation(line: 256, column: 3, scope: !3922)
!3929 = !DILocation(line: 256, column: 3, scope: !3925)
!3930 = !DILocation(line: 258, column: 1, scope: !3922)
!3931 = distinct !DISubprogram(name: "xnmalloc", scope: !114, file: !114, line: 105, type: !3932, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!23, !30, !30}
!3934 = !{!3935, !3936}
!3935 = !DILocalVariable(name: "n", arg: 1, scope: !3931, file: !114, line: 105, type: !30)
!3936 = !DILocalVariable(name: "s", arg: 2, scope: !3931, file: !114, line: 105, type: !30)
!3937 = !DILocation(line: 105, column: 18, scope: !3931)
!3938 = !DILocation(line: 105, column: 28, scope: !3931)
!3939 = !DILocation(line: 107, column: 7, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3931, file: !114, line: 107, column: 7)
!3941 = !DILocation(line: 107, column: 7, scope: !3931)
!3942 = !DILocation(line: 108, column: 5, scope: !3940)
!3943 = !DILocation(line: 109, column: 21, scope: !3931)
!3944 = !DILocalVariable(name: "n", arg: 1, scope: !3945, file: !3946, line: 39, type: !30)
!3945 = distinct !DISubprogram(name: "xmalloc", scope: !3946, file: !3946, line: 39, type: !3947, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !3949)
!3946 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!23, !30}
!3949 = !{!3944, !3950}
!3950 = !DILocalVariable(name: "p", scope: !3945, file: !3946, line: 41, type: !23)
!3951 = !DILocation(line: 39, column: 17, scope: !3945, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 109, column: 10, scope: !3931)
!3953 = !DILocation(line: 41, column: 13, scope: !3945, inlinedAt: !3952)
!3954 = !DILocation(line: 41, column: 9, scope: !3945, inlinedAt: !3952)
!3955 = !DILocation(line: 42, column: 8, scope: !3956, inlinedAt: !3952)
!3956 = distinct !DILexicalBlock(scope: !3945, file: !3946, line: 42, column: 7)
!3957 = !DILocation(line: 42, column: 15, scope: !3958, inlinedAt: !3952)
!3958 = !DILexicalBlockFile(scope: !3956, file: !3946, discriminator: 1)
!3959 = !DILocation(line: 42, column: 10, scope: !3956, inlinedAt: !3952)
!3960 = !DILocation(line: 43, column: 5, scope: !3956, inlinedAt: !3952)
!3961 = !DILocation(line: 109, column: 3, scope: !3931)
!3962 = !DILocation(line: 39, column: 17, scope: !3945)
!3963 = !DILocation(line: 41, column: 13, scope: !3945)
!3964 = !DILocation(line: 41, column: 9, scope: !3945)
!3965 = !DILocation(line: 42, column: 8, scope: !3956)
!3966 = !DILocation(line: 42, column: 15, scope: !3958)
!3967 = !DILocation(line: 42, column: 10, scope: !3956)
!3968 = !DILocation(line: 43, column: 5, scope: !3956)
!3969 = !DILocation(line: 44, column: 3, scope: !3945)
!3970 = distinct !DISubprogram(name: "xnrealloc", scope: !114, file: !114, line: 118, type: !3971, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!23, !23, !30, !30}
!3973 = !{!3974, !3975, !3976}
!3974 = !DILocalVariable(name: "p", arg: 1, scope: !3970, file: !114, line: 118, type: !23)
!3975 = !DILocalVariable(name: "n", arg: 2, scope: !3970, file: !114, line: 118, type: !30)
!3976 = !DILocalVariable(name: "s", arg: 3, scope: !3970, file: !114, line: 118, type: !30)
!3977 = !DILocation(line: 118, column: 18, scope: !3970)
!3978 = !DILocation(line: 118, column: 28, scope: !3970)
!3979 = !DILocation(line: 118, column: 38, scope: !3970)
!3980 = !DILocation(line: 120, column: 7, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3970, file: !114, line: 120, column: 7)
!3982 = !DILocation(line: 120, column: 7, scope: !3970)
!3983 = !DILocation(line: 121, column: 5, scope: !3981)
!3984 = !DILocation(line: 122, column: 25, scope: !3970)
!3985 = !DILocalVariable(name: "p", arg: 1, scope: !3986, file: !3946, line: 51, type: !23)
!3986 = distinct !DISubprogram(name: "xrealloc", scope: !3946, file: !3946, line: 51, type: !3987, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !3989)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!23, !23, !30}
!3989 = !{!3985, !3990}
!3990 = !DILocalVariable(name: "n", arg: 2, scope: !3986, file: !3946, line: 51, type: !30)
!3991 = !DILocation(line: 51, column: 17, scope: !3986, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 122, column: 10, scope: !3970)
!3993 = !DILocation(line: 51, column: 27, scope: !3986, inlinedAt: !3992)
!3994 = !DILocation(line: 53, column: 8, scope: !3995, inlinedAt: !3992)
!3995 = distinct !DILexicalBlock(scope: !3986, file: !3946, line: 53, column: 7)
!3996 = !DILocation(line: 53, column: 13, scope: !3997, inlinedAt: !3992)
!3997 = !DILexicalBlockFile(scope: !3995, file: !3946, discriminator: 1)
!3998 = !DILocation(line: 53, column: 10, scope: !3995, inlinedAt: !3992)
!3999 = !DILocation(line: 57, column: 7, scope: !4000, inlinedAt: !3992)
!4000 = distinct !DILexicalBlock(scope: !3995, file: !3946, line: 54, column: 5)
!4001 = !DILocation(line: 58, column: 7, scope: !4000, inlinedAt: !3992)
!4002 = !DILocation(line: 61, column: 7, scope: !3986, inlinedAt: !3992)
!4003 = !DILocation(line: 62, column: 8, scope: !4004, inlinedAt: !3992)
!4004 = distinct !DILexicalBlock(scope: !3986, file: !3946, line: 62, column: 7)
!4005 = !DILocation(line: 62, column: 13, scope: !4006, inlinedAt: !3992)
!4006 = !DILexicalBlockFile(scope: !4004, file: !3946, discriminator: 1)
!4007 = !DILocation(line: 62, column: 10, scope: !4004, inlinedAt: !3992)
!4008 = !DILocation(line: 63, column: 5, scope: !4004, inlinedAt: !3992)
!4009 = !DILocation(line: 122, column: 3, scope: !3970)
!4010 = !DILocation(line: 51, column: 17, scope: !3986)
!4011 = !DILocation(line: 51, column: 27, scope: !3986)
!4012 = !DILocation(line: 53, column: 8, scope: !3995)
!4013 = !DILocation(line: 53, column: 13, scope: !3997)
!4014 = !DILocation(line: 53, column: 10, scope: !3995)
!4015 = !DILocation(line: 57, column: 7, scope: !4000)
!4016 = !DILocation(line: 58, column: 7, scope: !4000)
!4017 = !DILocation(line: 61, column: 7, scope: !3986)
!4018 = !DILocation(line: 62, column: 8, scope: !4004)
!4019 = !DILocation(line: 62, column: 13, scope: !4006)
!4020 = !DILocation(line: 62, column: 10, scope: !4004)
!4021 = !DILocation(line: 63, column: 5, scope: !4004)
!4022 = !DILocation(line: 65, column: 1, scope: !3986)
!4023 = !DILocation(line: 180, column: 19, scope: !685)
!4024 = !DILocation(line: 180, column: 30, scope: !685)
!4025 = !DILocation(line: 180, column: 41, scope: !685)
!4026 = !DILocation(line: 182, column: 14, scope: !685)
!4027 = !DILocation(line: 182, column: 10, scope: !685)
!4028 = !DILocation(line: 184, column: 9, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !685, file: !114, line: 184, column: 7)
!4030 = !DILocation(line: 184, column: 7, scope: !685)
!4031 = !DILocation(line: 186, column: 13, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !114, line: 186, column: 11)
!4033 = distinct !DILexicalBlock(scope: !4029, file: !114, line: 185, column: 5)
!4034 = !DILocation(line: 186, column: 11, scope: !4033)
!4035 = !DILocation(line: 194, column: 30, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4032, file: !114, line: 187, column: 9)
!4037 = !DILocation(line: 195, column: 16, scope: !4036)
!4038 = !DILocation(line: 195, column: 13, scope: !4036)
!4039 = !DILocation(line: 196, column: 9, scope: !4036)
!4040 = !DILocation(line: 204, column: 69, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !114, line: 204, column: 11)
!4042 = distinct !DILexicalBlock(scope: !4029, file: !114, line: 199, column: 5)
!4043 = !DILocation(line: 205, column: 11, scope: !4041)
!4044 = !DILocation(line: 204, column: 11, scope: !4042)
!4045 = !DILocation(line: 206, column: 9, scope: !4041)
!4046 = !DILocation(line: 210, column: 7, scope: !685)
!4047 = !DILocation(line: 211, column: 25, scope: !685)
!4048 = !DILocation(line: 51, column: 17, scope: !3986, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 211, column: 10, scope: !685)
!4050 = !DILocation(line: 51, column: 27, scope: !3986, inlinedAt: !4049)
!4051 = !DILocation(line: 53, column: 10, scope: !3995, inlinedAt: !4049)
!4052 = !DILocation(line: 207, column: 14, scope: !4042)
!4053 = !DILocation(line: 207, column: 18, scope: !4042)
!4054 = !DILocation(line: 207, column: 9, scope: !4042)
!4055 = !DILocation(line: 53, column: 8, scope: !3995, inlinedAt: !4049)
!4056 = !DILocation(line: 57, column: 7, scope: !4000, inlinedAt: !4049)
!4057 = !DILocation(line: 58, column: 7, scope: !4000, inlinedAt: !4049)
!4058 = !DILocation(line: 61, column: 7, scope: !3986, inlinedAt: !4049)
!4059 = !DILocation(line: 62, column: 8, scope: !4004, inlinedAt: !4049)
!4060 = !DILocation(line: 62, column: 13, scope: !4006, inlinedAt: !4049)
!4061 = !DILocation(line: 62, column: 10, scope: !4004, inlinedAt: !4049)
!4062 = !DILocation(line: 63, column: 5, scope: !4004, inlinedAt: !4049)
!4063 = !DILocation(line: 211, column: 3, scope: !685)
!4064 = distinct !DISubprogram(name: "xcharalloc", scope: !114, file: !114, line: 220, type: !2996, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4065)
!4065 = !{!4066}
!4066 = !DILocalVariable(name: "n", arg: 1, scope: !4064, file: !114, line: 220, type: !30)
!4067 = !DILocation(line: 220, column: 20, scope: !4064)
!4068 = !DILocation(line: 39, column: 17, scope: !3945, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 222, column: 10, scope: !4064)
!4070 = !DILocation(line: 41, column: 13, scope: !3945, inlinedAt: !4069)
!4071 = !DILocation(line: 41, column: 9, scope: !3945, inlinedAt: !4069)
!4072 = !DILocation(line: 42, column: 8, scope: !3956, inlinedAt: !4069)
!4073 = !DILocation(line: 42, column: 15, scope: !3958, inlinedAt: !4069)
!4074 = !DILocation(line: 42, column: 10, scope: !3956, inlinedAt: !4069)
!4075 = !DILocation(line: 43, column: 5, scope: !3956, inlinedAt: !4069)
!4076 = !DILocation(line: 222, column: 3, scope: !4064)
!4077 = distinct !DISubprogram(name: "x2realloc", scope: !3946, file: !3946, line: 74, type: !4078, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!23, !23, !118}
!4080 = !{!4081, !4082}
!4081 = !DILocalVariable(name: "p", arg: 1, scope: !4077, file: !3946, line: 74, type: !23)
!4082 = !DILocalVariable(name: "pn", arg: 2, scope: !4077, file: !3946, line: 74, type: !118)
!4083 = !DILocation(line: 74, column: 18, scope: !4077)
!4084 = !DILocation(line: 74, column: 29, scope: !4077)
!4085 = !DILocation(line: 180, column: 19, scope: !685, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 76, column: 10, scope: !4077)
!4087 = !DILocation(line: 180, column: 30, scope: !685, inlinedAt: !4086)
!4088 = !DILocation(line: 180, column: 41, scope: !685, inlinedAt: !4086)
!4089 = !DILocation(line: 182, column: 14, scope: !685, inlinedAt: !4086)
!4090 = !DILocation(line: 182, column: 10, scope: !685, inlinedAt: !4086)
!4091 = !DILocation(line: 184, column: 9, scope: !4029, inlinedAt: !4086)
!4092 = !DILocation(line: 184, column: 7, scope: !685, inlinedAt: !4086)
!4093 = !DILocation(line: 186, column: 13, scope: !4032, inlinedAt: !4086)
!4094 = !DILocation(line: 186, column: 11, scope: !4033, inlinedAt: !4086)
!4095 = !DILocation(line: 210, column: 7, scope: !685, inlinedAt: !4086)
!4096 = !DILocation(line: 51, column: 17, scope: !3986, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 211, column: 10, scope: !685, inlinedAt: !4086)
!4098 = !DILocation(line: 51, column: 27, scope: !3986, inlinedAt: !4097)
!4099 = !DILocation(line: 53, column: 10, scope: !3995, inlinedAt: !4097)
!4100 = !DILocation(line: 205, column: 11, scope: !4041, inlinedAt: !4086)
!4101 = !DILocation(line: 204, column: 11, scope: !4042, inlinedAt: !4086)
!4102 = !DILocation(line: 206, column: 9, scope: !4041, inlinedAt: !4086)
!4103 = !DILocation(line: 207, column: 14, scope: !4042, inlinedAt: !4086)
!4104 = !DILocation(line: 207, column: 18, scope: !4042, inlinedAt: !4086)
!4105 = !DILocation(line: 207, column: 9, scope: !4042, inlinedAt: !4086)
!4106 = !DILocation(line: 53, column: 8, scope: !3995, inlinedAt: !4097)
!4107 = !DILocation(line: 57, column: 7, scope: !4000, inlinedAt: !4097)
!4108 = !DILocation(line: 58, column: 7, scope: !4000, inlinedAt: !4097)
!4109 = !DILocation(line: 61, column: 7, scope: !3986, inlinedAt: !4097)
!4110 = !DILocation(line: 62, column: 8, scope: !4004, inlinedAt: !4097)
!4111 = !DILocation(line: 62, column: 13, scope: !4006, inlinedAt: !4097)
!4112 = !DILocation(line: 62, column: 10, scope: !4004, inlinedAt: !4097)
!4113 = !DILocation(line: 63, column: 5, scope: !4004, inlinedAt: !4097)
!4114 = !DILocation(line: 76, column: 3, scope: !4077)
!4115 = distinct !DISubprogram(name: "xzalloc", scope: !3946, file: !3946, line: 84, type: !3947, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4116)
!4116 = !{!4117}
!4117 = !DILocalVariable(name: "s", arg: 1, scope: !4115, file: !3946, line: 84, type: !30)
!4118 = !DILocation(line: 84, column: 17, scope: !4115)
!4119 = !DILocation(line: 39, column: 17, scope: !3945, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 86, column: 18, scope: !4115)
!4121 = !DILocation(line: 41, column: 13, scope: !3945, inlinedAt: !4120)
!4122 = !DILocation(line: 41, column: 9, scope: !3945, inlinedAt: !4120)
!4123 = !DILocation(line: 42, column: 8, scope: !3956, inlinedAt: !4120)
!4124 = !DILocation(line: 42, column: 15, scope: !3958, inlinedAt: !4120)
!4125 = !DILocation(line: 42, column: 10, scope: !3956, inlinedAt: !4120)
!4126 = !DILocation(line: 43, column: 5, scope: !3956, inlinedAt: !4120)
!4127 = !DILocation(line: 86, column: 10, scope: !4115)
!4128 = !DILocation(line: 86, column: 3, scope: !4115)
!4129 = distinct !DISubprogram(name: "xcalloc", scope: !3946, file: !3946, line: 93, type: !3932, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4130)
!4130 = !{!4131, !4132, !4133}
!4131 = !DILocalVariable(name: "n", arg: 1, scope: !4129, file: !3946, line: 93, type: !30)
!4132 = !DILocalVariable(name: "s", arg: 2, scope: !4129, file: !3946, line: 93, type: !30)
!4133 = !DILocalVariable(name: "p", scope: !4129, file: !3946, line: 95, type: !23)
!4134 = !DILocation(line: 93, column: 17, scope: !4129)
!4135 = !DILocation(line: 93, column: 27, scope: !4129)
!4136 = !DILocation(line: 100, column: 7, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4129, file: !3946, line: 100, column: 7)
!4138 = !DILocation(line: 101, column: 7, scope: !4137)
!4139 = !DILocation(line: 101, column: 18, scope: !4140)
!4140 = !DILexicalBlockFile(scope: !4137, file: !3946, discriminator: 1)
!4141 = !DILocation(line: 95, column: 9, scope: !4129)
!4142 = !DILocation(line: 101, column: 16, scope: !4140)
!4143 = !DILocation(line: 100, column: 7, scope: !4144)
!4144 = !DILexicalBlockFile(scope: !4129, file: !3946, discriminator: 1)
!4145 = !DILocation(line: 102, column: 5, scope: !4137)
!4146 = !DILocation(line: 103, column: 3, scope: !4129)
!4147 = distinct !DISubprogram(name: "xmemdup", scope: !3946, file: !3946, line: 111, type: !4148, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4150)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!23, !32, !30}
!4150 = !{!4151, !4152}
!4151 = !DILocalVariable(name: "p", arg: 1, scope: !4147, file: !3946, line: 111, type: !32)
!4152 = !DILocalVariable(name: "s", arg: 2, scope: !4147, file: !3946, line: 111, type: !30)
!4153 = !DILocation(line: 111, column: 22, scope: !4147)
!4154 = !DILocation(line: 111, column: 32, scope: !4147)
!4155 = !DILocation(line: 39, column: 17, scope: !3945, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 113, column: 18, scope: !4147)
!4157 = !DILocation(line: 41, column: 13, scope: !3945, inlinedAt: !4156)
!4158 = !DILocation(line: 41, column: 9, scope: !3945, inlinedAt: !4156)
!4159 = !DILocation(line: 42, column: 8, scope: !3956, inlinedAt: !4156)
!4160 = !DILocation(line: 42, column: 15, scope: !3958, inlinedAt: !4156)
!4161 = !DILocation(line: 42, column: 10, scope: !3956, inlinedAt: !4156)
!4162 = !DILocation(line: 43, column: 5, scope: !3956, inlinedAt: !4156)
!4163 = !DILocation(line: 113, column: 10, scope: !4147)
!4164 = !DILocation(line: 113, column: 3, scope: !4147)
!4165 = distinct !DISubprogram(name: "xstrdup", scope: !3946, file: !3946, line: 119, type: !3201, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4166)
!4166 = !{!4167}
!4167 = !DILocalVariable(name: "string", arg: 1, scope: !4165, file: !3946, line: 119, type: !37)
!4168 = !DILocation(line: 119, column: 22, scope: !4165)
!4169 = !DILocation(line: 121, column: 27, scope: !4165)
!4170 = !DILocation(line: 121, column: 43, scope: !4165)
!4171 = !DILocation(line: 111, column: 22, scope: !4147, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 121, column: 10, scope: !4173)
!4173 = !DILexicalBlockFile(scope: !4165, file: !3946, discriminator: 1)
!4174 = !DILocation(line: 111, column: 32, scope: !4147, inlinedAt: !4172)
!4175 = !DILocation(line: 39, column: 17, scope: !3945, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 113, column: 18, scope: !4147, inlinedAt: !4172)
!4177 = !DILocation(line: 41, column: 13, scope: !3945, inlinedAt: !4176)
!4178 = !DILocation(line: 41, column: 9, scope: !3945, inlinedAt: !4176)
!4179 = !DILocation(line: 42, column: 8, scope: !3956, inlinedAt: !4176)
!4180 = !DILocation(line: 42, column: 15, scope: !3958, inlinedAt: !4176)
!4181 = !DILocation(line: 42, column: 10, scope: !3956, inlinedAt: !4176)
!4182 = !DILocation(line: 43, column: 5, scope: !3956, inlinedAt: !4176)
!4183 = !DILocation(line: 113, column: 10, scope: !4147, inlinedAt: !4172)
!4184 = !DILocation(line: 121, column: 3, scope: !4165)
!4185 = distinct !DISubprogram(name: "xalloc_die", scope: !4186, file: !4186, line: 32, type: !746, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !692, variables: !237)
!4186 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4187 = !DILocation(line: 34, column: 10, scope: !4185)
!4188 = !DILocation(line: 34, column: 33, scope: !4185)
!4189 = !DILocation(line: 34, column: 3, scope: !4190)
!4190 = !DILexicalBlockFile(scope: !4185, file: !4186, discriminator: 1)
!4191 = !DILocation(line: 40, column: 3, scope: !4185)
!4192 = distinct !DISubprogram(name: "xstrndup", scope: !4193, file: !4193, line: 30, type: !3212, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4194)
!4193 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4194 = !{!4195, !4196, !4197}
!4195 = !DILocalVariable(name: "string", arg: 1, scope: !4192, file: !4193, line: 30, type: !37)
!4196 = !DILocalVariable(name: "n", arg: 2, scope: !4192, file: !4193, line: 30, type: !30)
!4197 = !DILocalVariable(name: "s", scope: !4192, file: !4193, line: 32, type: !21)
!4198 = !DILocation(line: 30, column: 23, scope: !4192)
!4199 = !DILocation(line: 30, column: 38, scope: !4192)
!4200 = !DILocation(line: 32, column: 13, scope: !4192)
!4201 = !DILocation(line: 32, column: 9, scope: !4192)
!4202 = !DILocation(line: 33, column: 9, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4192, file: !4193, line: 33, column: 7)
!4204 = !DILocation(line: 33, column: 7, scope: !4192)
!4205 = !DILocation(line: 34, column: 5, scope: !4203)
!4206 = !DILocation(line: 35, column: 3, scope: !4192)
!4207 = distinct !DISubprogram(name: "rpl_calloc", scope: !4208, file: !4208, line: 42, type: !3932, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !696, variables: !4209)
!4208 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4209 = !{!4210, !4211, !4212, !4213}
!4210 = !DILocalVariable(name: "n", arg: 1, scope: !4207, file: !4208, line: 42, type: !30)
!4211 = !DILocalVariable(name: "s", arg: 2, scope: !4207, file: !4208, line: 42, type: !30)
!4212 = !DILocalVariable(name: "result", scope: !4207, file: !4208, line: 44, type: !23)
!4213 = !DILocalVariable(name: "bytes", scope: !4214, file: !4208, line: 56, type: !30)
!4214 = distinct !DILexicalBlock(scope: !4215, file: !4208, line: 53, column: 5)
!4215 = distinct !DILexicalBlock(scope: !4207, file: !4208, line: 47, column: 7)
!4216 = !DILocation(line: 42, column: 20, scope: !4207)
!4217 = !DILocation(line: 42, column: 30, scope: !4207)
!4218 = !DILocation(line: 47, column: 9, scope: !4215)
!4219 = !DILocation(line: 47, column: 19, scope: !4220)
!4220 = !DILexicalBlockFile(scope: !4215, file: !4208, discriminator: 1)
!4221 = !DILocation(line: 47, column: 14, scope: !4215)
!4222 = !DILocation(line: 56, column: 24, scope: !4214)
!4223 = !DILocation(line: 56, column: 14, scope: !4214)
!4224 = !DILocation(line: 57, column: 17, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4214, file: !4208, line: 57, column: 11)
!4226 = !DILocation(line: 57, column: 21, scope: !4225)
!4227 = !DILocation(line: 57, column: 11, scope: !4214)
!4228 = !DILocation(line: 59, column: 11, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4225, file: !4208, line: 58, column: 9)
!4230 = !DILocation(line: 59, column: 17, scope: !4229)
!4231 = !DILocation(line: 65, column: 12, scope: !4207)
!4232 = !DILocation(line: 44, column: 9, scope: !4207)
!4233 = !DILocation(line: 72, column: 3, scope: !4207)
!4234 = !DILocation(line: 73, column: 1, scope: !4207)
!4235 = distinct !DISubprogram(name: "rpl_fclose", scope: !4236, file: !4236, line: 56, type: !4237, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !698, variables: !4279)
!4236 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!39, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 49, baseType: !4241)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 241, size: 1728, elements: !4242)
!4242 = !{!4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4241, file: !140, line: 242, baseType: !39, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4241, file: !140, line: 247, baseType: !21, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4241, file: !140, line: 248, baseType: !21, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4241, file: !140, line: 249, baseType: !21, size: 64, offset: 192)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4241, file: !140, line: 250, baseType: !21, size: 64, offset: 256)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4241, file: !140, line: 251, baseType: !21, size: 64, offset: 320)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4241, file: !140, line: 252, baseType: !21, size: 64, offset: 384)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4241, file: !140, line: 253, baseType: !21, size: 64, offset: 448)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4241, file: !140, line: 254, baseType: !21, size: 64, offset: 512)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4241, file: !140, line: 256, baseType: !21, size: 64, offset: 576)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4241, file: !140, line: 257, baseType: !21, size: 64, offset: 640)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4241, file: !140, line: 258, baseType: !21, size: 64, offset: 704)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4241, file: !140, line: 260, baseType: !4256, size: 64, offset: 768)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 156, size: 192, elements: !4258)
!4258 = !{!4259, !4260, !4262}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4257, file: !140, line: 157, baseType: !4256, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4257, file: !140, line: 158, baseType: !4261, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4257, file: !140, line: 162, baseType: !39, size: 32, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4241, file: !140, line: 262, baseType: !4261, size: 64, offset: 832)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4241, file: !140, line: 264, baseType: !39, size: 32, offset: 896)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4241, file: !140, line: 268, baseType: !39, size: 32, offset: 928)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4241, file: !140, line: 270, baseType: !166, size: 64, offset: 960)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4241, file: !140, line: 274, baseType: !40, size: 16, offset: 1024)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4241, file: !140, line: 275, baseType: !170, size: 8, offset: 1040)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4241, file: !140, line: 276, baseType: !172, size: 8, offset: 1048)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4241, file: !140, line: 280, baseType: !176, size: 64, offset: 1088)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4241, file: !140, line: 289, baseType: !179, size: 64, offset: 1152)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4241, file: !140, line: 297, baseType: !23, size: 64, offset: 1216)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4241, file: !140, line: 298, baseType: !23, size: 64, offset: 1280)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4241, file: !140, line: 299, baseType: !23, size: 64, offset: 1344)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4241, file: !140, line: 300, baseType: !23, size: 64, offset: 1408)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4241, file: !140, line: 302, baseType: !30, size: 64, offset: 1472)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4241, file: !140, line: 303, baseType: !39, size: 32, offset: 1536)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4241, file: !140, line: 305, baseType: !187, size: 160, offset: 1568)
!4279 = !{!4280, !4281, !4282, !4283}
!4280 = !DILocalVariable(name: "fp", arg: 1, scope: !4235, file: !4236, line: 56, type: !4239)
!4281 = !DILocalVariable(name: "saved_errno", scope: !4235, file: !4236, line: 58, type: !39)
!4282 = !DILocalVariable(name: "fd", scope: !4235, file: !4236, line: 59, type: !39)
!4283 = !DILocalVariable(name: "result", scope: !4235, file: !4236, line: 60, type: !39)
!4284 = !DILocation(line: 56, column: 19, scope: !4235)
!4285 = !DILocation(line: 58, column: 7, scope: !4235)
!4286 = !DILocation(line: 60, column: 7, scope: !4235)
!4287 = !DILocation(line: 63, column: 8, scope: !4235)
!4288 = !DILocation(line: 59, column: 7, scope: !4235)
!4289 = !DILocation(line: 64, column: 10, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4235, file: !4236, line: 64, column: 7)
!4291 = !DILocation(line: 64, column: 7, scope: !4235)
!4292 = !DILocation(line: 65, column: 12, scope: !4290)
!4293 = !DILocation(line: 65, column: 5, scope: !4290)
!4294 = !DILocation(line: 70, column: 9, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4235, file: !4236, line: 70, column: 7)
!4296 = !DILocation(line: 70, column: 23, scope: !4295)
!4297 = !DILocation(line: 70, column: 33, scope: !4298)
!4298 = !DILexicalBlockFile(scope: !4295, file: !4236, discriminator: 1)
!4299 = !DILocation(line: 70, column: 26, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !4295, file: !4236, discriminator: 3)
!4301 = !DILocation(line: 70, column: 59, scope: !4298)
!4302 = !DILocation(line: 71, column: 7, scope: !4295)
!4303 = !DILocation(line: 71, column: 10, scope: !4298)
!4304 = !DILocation(line: 70, column: 7, scope: !4305)
!4305 = !DILexicalBlockFile(scope: !4235, file: !4236, discriminator: 2)
!4306 = !DILocation(line: 98, column: 12, scope: !4235)
!4307 = !DILocation(line: 103, column: 7, scope: !4235)
!4308 = !DILocation(line: 72, column: 19, scope: !4295)
!4309 = !DILocation(line: 103, column: 19, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4235, file: !4236, line: 103, column: 7)
!4311 = !DILocation(line: 105, column: 13, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4310, file: !4236, line: 104, column: 5)
!4313 = !DILocation(line: 107, column: 5, scope: !4312)
!4314 = !DILocation(line: 110, column: 1, scope: !4235)
!4315 = distinct !DISubprogram(name: "rpl_fflush", scope: !4316, file: !4316, line: 127, type: !4317, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !700, variables: !4359)
!4316 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!39, !4319}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 49, baseType: !4321)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 241, size: 1728, elements: !4322)
!4322 = !{!4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4321, file: !140, line: 242, baseType: !39, size: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4321, file: !140, line: 247, baseType: !21, size: 64, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4321, file: !140, line: 248, baseType: !21, size: 64, offset: 128)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4321, file: !140, line: 249, baseType: !21, size: 64, offset: 192)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4321, file: !140, line: 250, baseType: !21, size: 64, offset: 256)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4321, file: !140, line: 251, baseType: !21, size: 64, offset: 320)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4321, file: !140, line: 252, baseType: !21, size: 64, offset: 384)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4321, file: !140, line: 253, baseType: !21, size: 64, offset: 448)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4321, file: !140, line: 254, baseType: !21, size: 64, offset: 512)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4321, file: !140, line: 256, baseType: !21, size: 64, offset: 576)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4321, file: !140, line: 257, baseType: !21, size: 64, offset: 640)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4321, file: !140, line: 258, baseType: !21, size: 64, offset: 704)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4321, file: !140, line: 260, baseType: !4336, size: 64, offset: 768)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 156, size: 192, elements: !4338)
!4338 = !{!4339, !4340, !4342}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4337, file: !140, line: 157, baseType: !4336, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4337, file: !140, line: 158, baseType: !4341, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4337, file: !140, line: 162, baseType: !39, size: 32, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4321, file: !140, line: 262, baseType: !4341, size: 64, offset: 832)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4321, file: !140, line: 264, baseType: !39, size: 32, offset: 896)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4321, file: !140, line: 268, baseType: !39, size: 32, offset: 928)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4321, file: !140, line: 270, baseType: !166, size: 64, offset: 960)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4321, file: !140, line: 274, baseType: !40, size: 16, offset: 1024)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4321, file: !140, line: 275, baseType: !170, size: 8, offset: 1040)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4321, file: !140, line: 276, baseType: !172, size: 8, offset: 1048)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4321, file: !140, line: 280, baseType: !176, size: 64, offset: 1088)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4321, file: !140, line: 289, baseType: !179, size: 64, offset: 1152)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4321, file: !140, line: 297, baseType: !23, size: 64, offset: 1216)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4321, file: !140, line: 298, baseType: !23, size: 64, offset: 1280)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4321, file: !140, line: 299, baseType: !23, size: 64, offset: 1344)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4321, file: !140, line: 300, baseType: !23, size: 64, offset: 1408)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4321, file: !140, line: 302, baseType: !30, size: 64, offset: 1472)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4321, file: !140, line: 303, baseType: !39, size: 32, offset: 1536)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4321, file: !140, line: 305, baseType: !187, size: 160, offset: 1568)
!4359 = !{!4360}
!4360 = !DILocalVariable(name: "stream", arg: 1, scope: !4315, file: !4316, line: 127, type: !4319)
!4361 = !DILocation(line: 127, column: 19, scope: !4315)
!4362 = !DILocation(line: 148, column: 14, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4315, file: !4316, line: 148, column: 7)
!4364 = !DILocation(line: 148, column: 22, scope: !4363)
!4365 = !DILocation(line: 148, column: 27, scope: !4366)
!4366 = !DILexicalBlockFile(scope: !4363, file: !4316, discriminator: 1)
!4367 = !DILocation(line: 148, column: 7, scope: !4368)
!4368 = !DILexicalBlockFile(scope: !4315, file: !4316, discriminator: 1)
!4369 = !DILocation(line: 149, column: 12, scope: !4363)
!4370 = !DILocation(line: 149, column: 5, scope: !4363)
!4371 = !DILocalVariable(name: "fp", arg: 1, scope: !4372, file: !4316, line: 40, type: !4319)
!4372 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4316, file: !4316, line: 40, type: !4373, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !700, variables: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{null, !4319}
!4375 = !{!4371}
!4376 = !DILocation(line: 40, column: 48, scope: !4372, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 153, column: 3, scope: !4315)
!4378 = !DILocation(line: 42, column: 11, scope: !4379, inlinedAt: !4377)
!4379 = distinct !DILexicalBlock(scope: !4372, file: !4316, line: 42, column: 7)
!4380 = !DILocation(line: 42, column: 18, scope: !4379, inlinedAt: !4377)
!4381 = !DILocation(line: 42, column: 7, scope: !4372, inlinedAt: !4377)
!4382 = !DILocation(line: 44, column: 5, scope: !4379, inlinedAt: !4377)
!4383 = !DILocation(line: 155, column: 10, scope: !4315)
!4384 = !DILocation(line: 155, column: 3, scope: !4315)
!4385 = !DILocation(line: 229, column: 1, scope: !4315)
!4386 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4387, file: !4387, line: 28, type: !4388, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !702, variables: !4430)
!4387 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!39, !4390, !1658, !39}
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 49, baseType: !4392)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 241, size: 1728, elements: !4393)
!4393 = !{!4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4392, file: !140, line: 242, baseType: !39, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4392, file: !140, line: 247, baseType: !21, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4392, file: !140, line: 248, baseType: !21, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4392, file: !140, line: 249, baseType: !21, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4392, file: !140, line: 250, baseType: !21, size: 64, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4392, file: !140, line: 251, baseType: !21, size: 64, offset: 320)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4392, file: !140, line: 252, baseType: !21, size: 64, offset: 384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4392, file: !140, line: 253, baseType: !21, size: 64, offset: 448)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4392, file: !140, line: 254, baseType: !21, size: 64, offset: 512)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4392, file: !140, line: 256, baseType: !21, size: 64, offset: 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4392, file: !140, line: 257, baseType: !21, size: 64, offset: 640)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4392, file: !140, line: 258, baseType: !21, size: 64, offset: 704)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4392, file: !140, line: 260, baseType: !4407, size: 64, offset: 768)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 156, size: 192, elements: !4409)
!4409 = !{!4410, !4411, !4413}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4408, file: !140, line: 157, baseType: !4407, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4408, file: !140, line: 158, baseType: !4412, size: 64, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4408, file: !140, line: 162, baseType: !39, size: 32, offset: 128)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4392, file: !140, line: 262, baseType: !4412, size: 64, offset: 832)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4392, file: !140, line: 264, baseType: !39, size: 32, offset: 896)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4392, file: !140, line: 268, baseType: !39, size: 32, offset: 928)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4392, file: !140, line: 270, baseType: !166, size: 64, offset: 960)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4392, file: !140, line: 274, baseType: !40, size: 16, offset: 1024)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4392, file: !140, line: 275, baseType: !170, size: 8, offset: 1040)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4392, file: !140, line: 276, baseType: !172, size: 8, offset: 1048)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4392, file: !140, line: 280, baseType: !176, size: 64, offset: 1088)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4392, file: !140, line: 289, baseType: !179, size: 64, offset: 1152)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4392, file: !140, line: 297, baseType: !23, size: 64, offset: 1216)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4392, file: !140, line: 298, baseType: !23, size: 64, offset: 1280)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4392, file: !140, line: 299, baseType: !23, size: 64, offset: 1344)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4392, file: !140, line: 300, baseType: !23, size: 64, offset: 1408)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4392, file: !140, line: 302, baseType: !30, size: 64, offset: 1472)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4392, file: !140, line: 303, baseType: !39, size: 32, offset: 1536)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4392, file: !140, line: 305, baseType: !187, size: 160, offset: 1568)
!4430 = !{!4431, !4432, !4433, !4434}
!4431 = !DILocalVariable(name: "fp", arg: 1, scope: !4386, file: !4387, line: 28, type: !4390)
!4432 = !DILocalVariable(name: "offset", arg: 2, scope: !4386, file: !4387, line: 28, type: !1658)
!4433 = !DILocalVariable(name: "whence", arg: 3, scope: !4386, file: !4387, line: 28, type: !39)
!4434 = !DILocalVariable(name: "pos", scope: !4435, file: !4387, line: 116, type: !1658)
!4435 = distinct !DILexicalBlock(scope: !4436, file: !4387, line: 112, column: 5)
!4436 = distinct !DILexicalBlock(scope: !4386, file: !4387, line: 51, column: 7)
!4437 = !DILocation(line: 28, column: 15, scope: !4386)
!4438 = !DILocation(line: 28, column: 25, scope: !4386)
!4439 = !DILocation(line: 28, column: 37, scope: !4386)
!4440 = !DILocation(line: 51, column: 11, scope: !4436)
!4441 = !DILocation(line: 51, column: 31, scope: !4436)
!4442 = !DILocation(line: 51, column: 24, scope: !4436)
!4443 = !DILocation(line: 52, column: 7, scope: !4436)
!4444 = !DILocation(line: 52, column: 14, scope: !4445)
!4445 = !DILexicalBlockFile(scope: !4436, file: !4387, discriminator: 1)
!4446 = !DILocation(line: 52, column: 35, scope: !4445)
!4447 = !{!957, !731, i64 32}
!4448 = !DILocation(line: 52, column: 28, scope: !4445)
!4449 = !DILocation(line: 53, column: 7, scope: !4436)
!4450 = !DILocation(line: 53, column: 14, scope: !4445)
!4451 = !{!957, !731, i64 72}
!4452 = !DILocation(line: 53, column: 28, scope: !4445)
!4453 = !DILocation(line: 51, column: 7, scope: !4454)
!4454 = !DILexicalBlockFile(scope: !4386, file: !4387, discriminator: 1)
!4455 = !DILocation(line: 116, column: 26, scope: !4435)
!4456 = !DILocation(line: 116, column: 19, scope: !4457)
!4457 = !DILexicalBlockFile(scope: !4435, file: !4387, discriminator: 1)
!4458 = !DILocation(line: 116, column: 13, scope: !4435)
!4459 = !DILocation(line: 117, column: 15, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4435, file: !4387, line: 117, column: 11)
!4461 = !DILocation(line: 117, column: 11, scope: !4435)
!4462 = !DILocation(line: 127, column: 11, scope: !4435)
!4463 = !DILocation(line: 127, column: 18, scope: !4435)
!4464 = !DILocation(line: 128, column: 11, scope: !4435)
!4465 = !DILocation(line: 128, column: 19, scope: !4435)
!4466 = !{!957, !929, i64 144}
!4467 = !DILocation(line: 159, column: 7, scope: !4435)
!4468 = !DILocation(line: 161, column: 10, scope: !4386)
!4469 = !DILocation(line: 161, column: 3, scope: !4386)
!4470 = !DILocation(line: 162, column: 1, scope: !4386)
!4471 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4472, file: !4472, line: 334, type: !4473, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !704, variables: !4487)
!4472 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!30, !4475, !37, !30, !4476}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1969, line: 107, baseType: !4478)
!4478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1969, line: 95, baseType: !4479)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1969, line: 83, size: 64, elements: !4480)
!4480 = !{!4481, !4482}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4479, file: !1969, line: 85, baseType: !39, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4479, file: !1969, line: 94, baseType: !4483, size: 32, offset: 32)
!4483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4479, file: !1969, line: 86, size: 32, elements: !4484)
!4484 = !{!4485, !4486}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4483, file: !1969, line: 89, baseType: !127, size: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4483, file: !1969, line: 93, baseType: !1979, size: 32)
!4487 = !{!4488, !4489, !4490, !4491, !4492, !4493, !4494}
!4488 = !DILocalVariable(name: "pwc", arg: 1, scope: !4471, file: !4472, line: 334, type: !4475)
!4489 = !DILocalVariable(name: "s", arg: 2, scope: !4471, file: !4472, line: 334, type: !37)
!4490 = !DILocalVariable(name: "n", arg: 3, scope: !4471, file: !4472, line: 334, type: !30)
!4491 = !DILocalVariable(name: "ps", arg: 4, scope: !4471, file: !4472, line: 334, type: !4476)
!4492 = !DILocalVariable(name: "ret", scope: !4471, file: !4472, line: 336, type: !30)
!4493 = !DILocalVariable(name: "wc", scope: !4471, file: !4472, line: 337, type: !1984)
!4494 = !DILocalVariable(name: "uc", scope: !4495, file: !4472, line: 398, type: !36)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !4472, line: 397, column: 5)
!4496 = distinct !DILexicalBlock(scope: !4471, file: !4472, line: 396, column: 7)
!4497 = !DILocation(line: 334, column: 23, scope: !4471)
!4498 = !DILocation(line: 334, column: 40, scope: !4471)
!4499 = !DILocation(line: 334, column: 50, scope: !4471)
!4500 = !DILocation(line: 334, column: 64, scope: !4471)
!4501 = !DILocation(line: 337, column: 3, scope: !4471)
!4502 = !DILocation(line: 353, column: 9, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4471, file: !4472, line: 353, column: 7)
!4504 = !DILocation(line: 353, column: 7, scope: !4471)
!4505 = !DILocation(line: 388, column: 9, scope: !4471)
!4506 = !DILocation(line: 336, column: 10, scope: !4471)
!4507 = !DILocation(line: 396, column: 19, scope: !4496)
!4508 = !DILocation(line: 396, column: 31, scope: !4509)
!4509 = !DILexicalBlockFile(scope: !4496, file: !4472, discriminator: 1)
!4510 = !DILocation(line: 396, column: 26, scope: !4496)
!4511 = !DILocation(line: 396, column: 41, scope: !4512)
!4512 = !DILexicalBlockFile(scope: !4496, file: !4472, discriminator: 2)
!4513 = !DILocation(line: 396, column: 7, scope: !4514)
!4514 = !DILexicalBlockFile(scope: !4471, file: !4472, discriminator: 2)
!4515 = !DILocation(line: 398, column: 26, scope: !4495)
!4516 = !DILocation(line: 398, column: 21, scope: !4495)
!4517 = !DILocation(line: 399, column: 14, scope: !4495)
!4518 = !DILocation(line: 399, column: 12, scope: !4495)
!4519 = !DILocation(line: 405, column: 1, scope: !4471)
!4520 = distinct !DISubprogram(name: "close_stream", scope: !4521, file: !4521, line: 56, type: !4522, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !4564)
!4521 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!39, !4524}
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 49, baseType: !4526)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 241, size: 1728, elements: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4526, file: !140, line: 242, baseType: !39, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4526, file: !140, line: 247, baseType: !21, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4526, file: !140, line: 248, baseType: !21, size: 64, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4526, file: !140, line: 249, baseType: !21, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4526, file: !140, line: 250, baseType: !21, size: 64, offset: 256)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4526, file: !140, line: 251, baseType: !21, size: 64, offset: 320)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4526, file: !140, line: 252, baseType: !21, size: 64, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4526, file: !140, line: 253, baseType: !21, size: 64, offset: 448)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4526, file: !140, line: 254, baseType: !21, size: 64, offset: 512)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4526, file: !140, line: 256, baseType: !21, size: 64, offset: 576)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4526, file: !140, line: 257, baseType: !21, size: 64, offset: 640)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4526, file: !140, line: 258, baseType: !21, size: 64, offset: 704)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4526, file: !140, line: 260, baseType: !4541, size: 64, offset: 768)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 156, size: 192, elements: !4543)
!4543 = !{!4544, !4545, !4547}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4542, file: !140, line: 157, baseType: !4541, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4542, file: !140, line: 158, baseType: !4546, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4542, file: !140, line: 162, baseType: !39, size: 32, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4526, file: !140, line: 262, baseType: !4546, size: 64, offset: 832)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4526, file: !140, line: 264, baseType: !39, size: 32, offset: 896)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4526, file: !140, line: 268, baseType: !39, size: 32, offset: 928)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4526, file: !140, line: 270, baseType: !166, size: 64, offset: 960)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4526, file: !140, line: 274, baseType: !40, size: 16, offset: 1024)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4526, file: !140, line: 275, baseType: !170, size: 8, offset: 1040)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4526, file: !140, line: 276, baseType: !172, size: 8, offset: 1048)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4526, file: !140, line: 280, baseType: !176, size: 64, offset: 1088)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4526, file: !140, line: 289, baseType: !179, size: 64, offset: 1152)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4526, file: !140, line: 297, baseType: !23, size: 64, offset: 1216)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4526, file: !140, line: 298, baseType: !23, size: 64, offset: 1280)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4526, file: !140, line: 299, baseType: !23, size: 64, offset: 1344)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4526, file: !140, line: 300, baseType: !23, size: 64, offset: 1408)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4526, file: !140, line: 302, baseType: !30, size: 64, offset: 1472)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4526, file: !140, line: 303, baseType: !39, size: 32, offset: 1536)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4526, file: !140, line: 305, baseType: !187, size: 160, offset: 1568)
!4564 = !{!4565, !4566, !4568, !4569}
!4565 = !DILocalVariable(name: "stream", arg: 1, scope: !4520, file: !4521, line: 56, type: !4524)
!4566 = !DILocalVariable(name: "some_pending", scope: !4520, file: !4521, line: 58, type: !4567)
!4567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!4568 = !DILocalVariable(name: "prev_fail", scope: !4520, file: !4521, line: 59, type: !4567)
!4569 = !DILocalVariable(name: "fclose_fail", scope: !4520, file: !4521, line: 60, type: !4567)
!4570 = !DILocation(line: 56, column: 21, scope: !4520)
!4571 = !DILocation(line: 58, column: 30, scope: !4520)
!4572 = !DILocalVariable(name: "__stream", arg: 1, scope: !4573, file: !948, line: 132, type: !4524)
!4573 = distinct !DISubprogram(name: "ferror_unlocked", scope: !948, file: !948, line: 132, type: !4522, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !4574)
!4574 = !{!4572}
!4575 = !DILocation(line: 132, column: 1, scope: !4573, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 59, column: 27, scope: !4520)
!4577 = !DILocation(line: 134, column: 10, scope: !4573, inlinedAt: !4576)
!4578 = !DILocation(line: 59, column: 43, scope: !4520)
!4579 = !DILocation(line: 60, column: 29, scope: !4520)
!4580 = !DILocation(line: 60, column: 45, scope: !4520)
!4581 = !DILocation(line: 70, column: 17, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 70, column: 7)
!4583 = !DILocation(line: 70, column: 33, scope: !4584)
!4584 = !DILexicalBlockFile(scope: !4582, file: !4521, discriminator: 1)
!4585 = !DILocation(line: 70, column: 53, scope: !4586)
!4586 = !DILexicalBlockFile(scope: !4582, file: !4521, discriminator: 3)
!4587 = !DILocation(line: 70, column: 7, scope: !4588)
!4588 = !DILexicalBlockFile(scope: !4520, file: !4521, discriminator: 3)
!4589 = !DILocation(line: 72, column: 11, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4582, file: !4521, line: 71, column: 5)
!4591 = !DILocation(line: 73, column: 9, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4590, file: !4521, line: 72, column: 11)
!4593 = !DILocation(line: 73, column: 15, scope: !4592)
!4594 = !DILocation(line: 78, column: 1, scope: !4520)
!4595 = distinct !DISubprogram(name: "hard_locale", scope: !4596, file: !4596, line: 38, type: !4597, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !709, variables: !4599)
!4596 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!224, !39}
!4599 = !{!4600, !4601, !4602, !4603, !4610, !4611, !4613, !4614, !4616, !4617, !4619}
!4600 = !DILocalVariable(name: "category", arg: 1, scope: !4595, file: !4596, line: 38, type: !39)
!4601 = !DILocalVariable(name: "hard", scope: !4595, file: !4596, line: 40, type: !224)
!4602 = !DILocalVariable(name: "p", scope: !4595, file: !4596, line: 41, type: !37)
!4603 = !DILocalVariable(name: "__s1_len", scope: !4604, file: !4596, line: 47, type: !30)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !4596, line: 47, column: 15)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !4596, line: 47, column: 15)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !4596, line: 46, column: 9)
!4607 = distinct !DILexicalBlock(scope: !4608, file: !4596, line: 45, column: 11)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !4596, line: 44, column: 5)
!4609 = distinct !DILexicalBlock(scope: !4595, file: !4596, line: 43, column: 7)
!4610 = !DILocalVariable(name: "__s2_len", scope: !4604, file: !4596, line: 47, type: !30)
!4611 = !DILocalVariable(name: "__s2", scope: !4612, file: !4596, line: 47, type: !34)
!4612 = distinct !DILexicalBlock(scope: !4604, file: !4596, line: 47, column: 15)
!4613 = !DILocalVariable(name: "__result", scope: !4612, file: !4596, line: 47, type: !39)
!4614 = !DILocalVariable(name: "__s1_len", scope: !4615, file: !4596, line: 47, type: !30)
!4615 = distinct !DILexicalBlock(scope: !4605, file: !4596, line: 47, column: 39)
!4616 = !DILocalVariable(name: "__s2_len", scope: !4615, file: !4596, line: 47, type: !30)
!4617 = !DILocalVariable(name: "__s2", scope: !4618, file: !4596, line: 47, type: !34)
!4618 = distinct !DILexicalBlock(scope: !4615, file: !4596, line: 47, column: 39)
!4619 = !DILocalVariable(name: "__result", scope: !4618, file: !4596, line: 47, type: !39)
!4620 = !DILocation(line: 38, column: 18, scope: !4595)
!4621 = !DILocation(line: 40, column: 8, scope: !4595)
!4622 = !DILocation(line: 41, column: 19, scope: !4595)
!4623 = !DILocation(line: 41, column: 15, scope: !4595)
!4624 = !DILocation(line: 43, column: 7, scope: !4609)
!4625 = !DILocation(line: 43, column: 7, scope: !4595)
!4626 = !DILocation(line: 47, column: 15, scope: !4604)
!4627 = !DILocation(line: 47, column: 15, scope: !4612)
!4628 = !DILocation(line: 47, column: 15, scope: !4629)
!4629 = !DILexicalBlockFile(scope: !4612, file: !4596, discriminator: 2)
!4630 = !DILocation(line: 47, column: 15, scope: !4631)
!4631 = !DILexicalBlockFile(scope: !4632, file: !4596, discriminator: 3)
!4632 = distinct !DILexicalBlock(scope: !4612, file: !4596, line: 47, column: 15)
!4633 = !DILocation(line: 47, column: 15, scope: !4634)
!4634 = !DILexicalBlockFile(scope: !4632, file: !4596, discriminator: 2)
!4635 = !DILocation(line: 47, column: 15, scope: !4636)
!4636 = !DILexicalBlockFile(scope: !4637, file: !4596, discriminator: 4)
!4637 = distinct !DILexicalBlock(scope: !4632, file: !4596, line: 47, column: 15)
!4638 = !DILocation(line: 47, column: 15, scope: !4639)
!4639 = !DILexicalBlockFile(scope: !4604, file: !4596, discriminator: 11)
!4640 = !DILocation(line: 47, column: 36, scope: !4641)
!4641 = !DILexicalBlockFile(scope: !4605, file: !4596, discriminator: 13)
!4642 = !DILocation(line: 47, column: 39, scope: !4615)
!4643 = !DILocation(line: 47, column: 39, scope: !4644)
!4644 = !DILexicalBlockFile(scope: !4615, file: !4596, discriminator: 26)
!4645 = !DILocation(line: 47, column: 59, scope: !4646)
!4646 = !DILexicalBlockFile(scope: !4605, file: !4596, discriminator: 27)
!4647 = !DILocation(line: 47, column: 15, scope: !4648)
!4648 = !DILexicalBlockFile(scope: !4606, file: !4596, discriminator: 27)
!4649 = !DILocation(line: 48, column: 13, scope: !4605)
!4650 = !DILocation(line: 71, column: 3, scope: !4595)
!4651 = distinct !DISubprogram(name: "locale_charset", scope: !668, file: !668, line: 393, type: !4652, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !325, variables: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!37}
!4654 = !{!4655, !4656, !4657, !4662}
!4655 = !DILocalVariable(name: "codeset", scope: !4651, file: !668, line: 395, type: !37)
!4656 = !DILocalVariable(name: "aliases", scope: !4651, file: !668, line: 396, type: !37)
!4657 = !DILocalVariable(name: "__s1_len", scope: !4658, file: !668, line: 592, type: !30)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !668, line: 592, column: 9)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !668, line: 592, column: 9)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !668, line: 589, column: 3)
!4661 = distinct !DILexicalBlock(scope: !4651, file: !668, line: 589, column: 3)
!4662 = !DILocalVariable(name: "__s2_len", scope: !4658, file: !668, line: 592, type: !30)
!4663 = !DILocalVariable(name: "buf1", scope: !4664, file: !668, line: 196, type: !4731)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !668, line: 194, column: 21)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !668, line: 193, column: 19)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !668, line: 193, column: 19)
!4667 = distinct !DILexicalBlock(scope: !4668, file: !668, line: 188, column: 17)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !668, line: 181, column: 19)
!4669 = distinct !DILexicalBlock(scope: !4670, file: !668, line: 177, column: 13)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !668, line: 173, column: 15)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !668, line: 161, column: 9)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !668, line: 157, column: 11)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !668, line: 130, column: 5)
!4674 = distinct !DILexicalBlock(scope: !4675, file: !668, line: 129, column: 7)
!4675 = distinct !DISubprogram(name: "get_charset_aliases", scope: !668, file: !668, line: 124, type: !4652, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !325, variables: !4676)
!4676 = !{!4677, !4678, !4679, !4680, !4681, !4683, !4684, !4685, !4686, !4727, !4728, !4729, !4663, !4730, !4734, !4735, !4736}
!4677 = !DILocalVariable(name: "cp", scope: !4675, file: !668, line: 126, type: !37)
!4678 = !DILocalVariable(name: "dir", scope: !4673, file: !668, line: 132, type: !37)
!4679 = !DILocalVariable(name: "base", scope: !4673, file: !668, line: 133, type: !37)
!4680 = !DILocalVariable(name: "file_name", scope: !4673, file: !668, line: 134, type: !21)
!4681 = !DILocalVariable(name: "dir_len", scope: !4682, file: !668, line: 144, type: !30)
!4682 = distinct !DILexicalBlock(scope: !4673, file: !668, line: 143, column: 7)
!4683 = !DILocalVariable(name: "base_len", scope: !4682, file: !668, line: 145, type: !30)
!4684 = !DILocalVariable(name: "add_slash", scope: !4682, file: !668, line: 146, type: !39)
!4685 = !DILocalVariable(name: "fd", scope: !4671, file: !668, line: 162, type: !39)
!4686 = !DILocalVariable(name: "fp", scope: !4669, file: !668, line: 178, type: !4687)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !138, line: 49, baseType: !4689)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !140, line: 241, size: 1728, elements: !4690)
!4690 = !{!4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4689, file: !140, line: 242, baseType: !39, size: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4689, file: !140, line: 247, baseType: !21, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4689, file: !140, line: 248, baseType: !21, size: 64, offset: 128)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4689, file: !140, line: 249, baseType: !21, size: 64, offset: 192)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4689, file: !140, line: 250, baseType: !21, size: 64, offset: 256)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4689, file: !140, line: 251, baseType: !21, size: 64, offset: 320)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4689, file: !140, line: 252, baseType: !21, size: 64, offset: 384)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4689, file: !140, line: 253, baseType: !21, size: 64, offset: 448)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4689, file: !140, line: 254, baseType: !21, size: 64, offset: 512)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4689, file: !140, line: 256, baseType: !21, size: 64, offset: 576)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4689, file: !140, line: 257, baseType: !21, size: 64, offset: 640)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4689, file: !140, line: 258, baseType: !21, size: 64, offset: 704)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4689, file: !140, line: 260, baseType: !4704, size: 64, offset: 768)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !140, line: 156, size: 192, elements: !4706)
!4706 = !{!4707, !4708, !4710}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4705, file: !140, line: 157, baseType: !4704, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4705, file: !140, line: 158, baseType: !4709, size: 64, offset: 64)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4705, file: !140, line: 162, baseType: !39, size: 32, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4689, file: !140, line: 262, baseType: !4709, size: 64, offset: 832)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4689, file: !140, line: 264, baseType: !39, size: 32, offset: 896)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4689, file: !140, line: 268, baseType: !39, size: 32, offset: 928)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4689, file: !140, line: 270, baseType: !166, size: 64, offset: 960)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4689, file: !140, line: 274, baseType: !40, size: 16, offset: 1024)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4689, file: !140, line: 275, baseType: !170, size: 8, offset: 1040)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4689, file: !140, line: 276, baseType: !172, size: 8, offset: 1048)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4689, file: !140, line: 280, baseType: !176, size: 64, offset: 1088)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4689, file: !140, line: 289, baseType: !179, size: 64, offset: 1152)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4689, file: !140, line: 297, baseType: !23, size: 64, offset: 1216)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4689, file: !140, line: 298, baseType: !23, size: 64, offset: 1280)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4689, file: !140, line: 299, baseType: !23, size: 64, offset: 1344)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4689, file: !140, line: 300, baseType: !23, size: 64, offset: 1408)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4689, file: !140, line: 302, baseType: !30, size: 64, offset: 1472)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4689, file: !140, line: 303, baseType: !39, size: 32, offset: 1536)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4689, file: !140, line: 305, baseType: !187, size: 160, offset: 1568)
!4727 = !DILocalVariable(name: "res_ptr", scope: !4667, file: !668, line: 190, type: !21)
!4728 = !DILocalVariable(name: "res_size", scope: !4667, file: !668, line: 191, type: !30)
!4729 = !DILocalVariable(name: "c", scope: !4664, file: !668, line: 195, type: !39)
!4730 = !DILocalVariable(name: "buf2", scope: !4664, file: !668, line: 197, type: !4731)
!4731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 408, elements: !4732)
!4732 = !{!4733}
!4733 = !DISubrange(count: 51)
!4734 = !DILocalVariable(name: "l1", scope: !4664, file: !668, line: 198, type: !30)
!4735 = !DILocalVariable(name: "l2", scope: !4664, file: !668, line: 198, type: !30)
!4736 = !DILocalVariable(name: "old_res_ptr", scope: !4664, file: !668, line: 199, type: !21)
!4737 = !DILocation(line: 196, column: 28, scope: !4664, inlinedAt: !4738)
!4738 = distinct !DILocation(line: 589, column: 18, scope: !4661)
!4739 = !DILocation(line: 197, column: 28, scope: !4664, inlinedAt: !4738)
!4740 = !DILocation(line: 403, column: 13, scope: !4651)
!4741 = !DILocation(line: 395, column: 15, scope: !4651)
!4742 = !DILocation(line: 584, column: 15, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4651, file: !668, line: 584, column: 7)
!4744 = !DILocation(line: 584, column: 7, scope: !4651)
!4745 = !DILocation(line: 128, column: 8, scope: !4675, inlinedAt: !4738)
!4746 = !DILocation(line: 126, column: 15, scope: !4675, inlinedAt: !4738)
!4747 = !DILocation(line: 129, column: 10, scope: !4674, inlinedAt: !4738)
!4748 = !DILocation(line: 129, column: 7, scope: !4675, inlinedAt: !4738)
!4749 = !DILocation(line: 138, column: 13, scope: !4673, inlinedAt: !4738)
!4750 = !DILocation(line: 132, column: 19, scope: !4673, inlinedAt: !4738)
!4751 = !DILocation(line: 139, column: 15, scope: !4752, inlinedAt: !4738)
!4752 = distinct !DILexicalBlock(scope: !4673, file: !668, line: 139, column: 11)
!4753 = !DILocation(line: 139, column: 23, scope: !4752, inlinedAt: !4738)
!4754 = !DILocation(line: 139, column: 26, scope: !4755, inlinedAt: !4738)
!4755 = !DILexicalBlockFile(scope: !4752, file: !668, discriminator: 1)
!4756 = !DILocation(line: 139, column: 33, scope: !4755, inlinedAt: !4738)
!4757 = !DILocation(line: 139, column: 11, scope: !4758, inlinedAt: !4738)
!4758 = !DILexicalBlockFile(scope: !4673, file: !668, discriminator: 1)
!4759 = !DILocation(line: 140, column: 9, scope: !4752, inlinedAt: !4738)
!4760 = !DILocation(line: 144, column: 26, scope: !4682, inlinedAt: !4738)
!4761 = !DILocation(line: 144, column: 16, scope: !4682, inlinedAt: !4738)
!4762 = !DILocation(line: 145, column: 16, scope: !4682, inlinedAt: !4738)
!4763 = !DILocation(line: 146, column: 34, scope: !4682, inlinedAt: !4738)
!4764 = !DILocation(line: 146, column: 38, scope: !4682, inlinedAt: !4738)
!4765 = !DILocation(line: 146, column: 42, scope: !4766, inlinedAt: !4738)
!4766 = !DILexicalBlockFile(scope: !4682, file: !668, discriminator: 1)
!4767 = !DILocation(line: 146, column: 41, scope: !4766, inlinedAt: !4738)
!4768 = !DILocation(line: 147, column: 48, scope: !4682, inlinedAt: !4738)
!4769 = !DILocation(line: 147, column: 46, scope: !4682, inlinedAt: !4738)
!4770 = !DILocation(line: 147, column: 69, scope: !4682, inlinedAt: !4738)
!4771 = !DILocation(line: 147, column: 30, scope: !4682, inlinedAt: !4738)
!4772 = !DILocation(line: 134, column: 13, scope: !4673, inlinedAt: !4738)
!4773 = !DILocation(line: 148, column: 13, scope: !4682, inlinedAt: !4738)
!4774 = !DILocation(line: 150, column: 13, scope: !4775, inlinedAt: !4738)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !668, line: 149, column: 11)
!4776 = distinct !DILexicalBlock(scope: !4682, file: !668, line: 148, column: 13)
!4777 = !DILocation(line: 151, column: 17, scope: !4775, inlinedAt: !4738)
!4778 = !DILocation(line: 152, column: 34, scope: !4779, inlinedAt: !4738)
!4779 = distinct !DILexicalBlock(scope: !4775, file: !668, line: 151, column: 17)
!4780 = !DILocation(line: 153, column: 41, scope: !4775, inlinedAt: !4738)
!4781 = !DILocation(line: 153, column: 13, scope: !4775, inlinedAt: !4738)
!4782 = !DILocation(line: 157, column: 11, scope: !4673, inlinedAt: !4738)
!4783 = !DILocation(line: 171, column: 16, scope: !4671, inlinedAt: !4738)
!4784 = !DILocation(line: 162, column: 15, scope: !4671, inlinedAt: !4738)
!4785 = !DILocation(line: 173, column: 18, scope: !4670, inlinedAt: !4738)
!4786 = !DILocation(line: 173, column: 15, scope: !4671, inlinedAt: !4738)
!4787 = !DILocation(line: 180, column: 20, scope: !4669, inlinedAt: !4738)
!4788 = !DILocation(line: 178, column: 21, scope: !4669, inlinedAt: !4738)
!4789 = !DILocation(line: 181, column: 22, scope: !4668, inlinedAt: !4738)
!4790 = !DILocation(line: 181, column: 19, scope: !4669, inlinedAt: !4738)
!4791 = !DILocation(line: 190, column: 25, scope: !4667, inlinedAt: !4738)
!4792 = !DILocation(line: 184, column: 19, scope: !4793, inlinedAt: !4738)
!4793 = distinct !DILexicalBlock(scope: !4668, file: !668, line: 182, column: 17)
!4794 = !DILocation(line: 186, column: 17, scope: !4793, inlinedAt: !4738)
!4795 = !DILocation(line: 191, column: 26, scope: !4667, inlinedAt: !4738)
!4796 = !DILocation(line: 196, column: 23, scope: !4664, inlinedAt: !4738)
!4797 = !DILocation(line: 197, column: 23, scope: !4664, inlinedAt: !4738)
!4798 = !DILocalVariable(name: "__fp", arg: 1, scope: !4799, file: !948, line: 63, type: !4687)
!4799 = distinct !DISubprogram(name: "getc_unlocked", scope: !948, file: !948, line: 63, type: !4800, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !325, variables: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!39, !4687}
!4802 = !{!4798}
!4803 = !DILocation(line: 63, column: 22, scope: !4799, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 201, column: 27, scope: !4664, inlinedAt: !4738)
!4805 = !DILocation(line: 65, column: 10, scope: !4799, inlinedAt: !4804)
!4806 = !DILocation(line: 65, column: 10, scope: !4807, inlinedAt: !4804)
!4807 = !DILexicalBlockFile(scope: !4799, file: !948, discriminator: 1)
!4808 = !DILocation(line: 65, column: 10, scope: !4809, inlinedAt: !4804)
!4809 = !DILexicalBlockFile(scope: !4799, file: !948, discriminator: 2)
!4810 = !DILocation(line: 65, column: 10, scope: !4811, inlinedAt: !4804)
!4811 = !DILexicalBlockFile(scope: !4799, file: !948, discriminator: 3)
!4812 = !DILocation(line: 195, column: 27, scope: !4664, inlinedAt: !4738)
!4813 = !DILocation(line: 202, column: 27, scope: !4664, inlinedAt: !4738)
!4814 = !DILocation(line: 63, column: 22, scope: !4799, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 210, column: 33, scope: !4816, inlinedAt: !4738)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !668, line: 207, column: 25)
!4817 = distinct !DILexicalBlock(scope: !4664, file: !668, line: 206, column: 27)
!4818 = !DILocation(line: 65, column: 10, scope: !4799, inlinedAt: !4815)
!4819 = !DILocation(line: 65, column: 10, scope: !4807, inlinedAt: !4815)
!4820 = !DILocation(line: 65, column: 10, scope: !4809, inlinedAt: !4815)
!4821 = !DILocation(line: 65, column: 10, scope: !4811, inlinedAt: !4815)
!4822 = !DILocation(line: 210, column: 29, scope: !4823, inlinedAt: !4738)
!4823 = !DILexicalBlockFile(scope: !4816, file: !668, discriminator: 1)
!4824 = distinct !{!4824, !4825, !4826}
!4825 = !DILocation(line: 193, column: 19, scope: !4666)
!4826 = !DILocation(line: 241, column: 21, scope: !4666)
!4827 = !DILocation(line: 216, column: 23, scope: !4664, inlinedAt: !4738)
!4828 = !DILocation(line: 217, column: 27, scope: !4829, inlinedAt: !4738)
!4829 = distinct !DILexicalBlock(scope: !4664, file: !668, line: 217, column: 27)
!4830 = !DILocation(line: 217, column: 64, scope: !4829, inlinedAt: !4738)
!4831 = !DILocation(line: 217, column: 27, scope: !4664, inlinedAt: !4738)
!4832 = !DILocation(line: 219, column: 28, scope: !4664, inlinedAt: !4738)
!4833 = !DILocation(line: 198, column: 30, scope: !4664, inlinedAt: !4738)
!4834 = !DILocation(line: 220, column: 28, scope: !4664, inlinedAt: !4738)
!4835 = !DILocation(line: 198, column: 34, scope: !4664, inlinedAt: !4738)
!4836 = !DILocation(line: 199, column: 29, scope: !4664, inlinedAt: !4738)
!4837 = !DILocation(line: 222, column: 36, scope: !4838, inlinedAt: !4738)
!4838 = distinct !DILexicalBlock(scope: !4664, file: !668, line: 222, column: 27)
!4839 = !DILocation(line: 222, column: 27, scope: !4664, inlinedAt: !4738)
!4840 = !DILocation(line: 225, column: 63, scope: !4841, inlinedAt: !4738)
!4841 = distinct !DILexicalBlock(scope: !4838, file: !668, line: 223, column: 25)
!4842 = !DILocation(line: 225, column: 46, scope: !4841, inlinedAt: !4738)
!4843 = !DILocation(line: 226, column: 25, scope: !4841, inlinedAt: !4738)
!4844 = !DILocation(line: 229, column: 36, scope: !4845, inlinedAt: !4738)
!4845 = distinct !DILexicalBlock(scope: !4838, file: !668, line: 228, column: 25)
!4846 = !DILocation(line: 230, column: 73, scope: !4845, inlinedAt: !4738)
!4847 = !DILocation(line: 230, column: 46, scope: !4845, inlinedAt: !4738)
!4848 = !DILocation(line: 232, column: 35, scope: !4849, inlinedAt: !4738)
!4849 = distinct !DILexicalBlock(scope: !4664, file: !668, line: 232, column: 27)
!4850 = !DILocation(line: 232, column: 27, scope: !4664, inlinedAt: !4738)
!4851 = !DILocation(line: 236, column: 27, scope: !4852, inlinedAt: !4738)
!4852 = distinct !DILexicalBlock(scope: !4849, file: !668, line: 233, column: 25)
!4853 = !DILocation(line: 237, column: 27, scope: !4852, inlinedAt: !4738)
!4854 = !DILocation(line: 239, column: 39, scope: !4664, inlinedAt: !4738)
!4855 = !DILocation(line: 239, column: 50, scope: !4664, inlinedAt: !4738)
!4856 = !DILocation(line: 239, column: 61, scope: !4664, inlinedAt: !4738)
!4857 = !DILocalVariable(name: "__dest", arg: 1, scope: !4858, file: !4859, line: 107, type: !4862)
!4858 = distinct !DISubprogram(name: "strcpy", scope: !4859, file: !4859, line: 107, type: !4860, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !325, variables: !4864)
!4859 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!21, !4862, !4863}
!4862 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!4863 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!4864 = !{!4857, !4865}
!4865 = !DILocalVariable(name: "__src", arg: 2, scope: !4858, file: !4859, line: 107, type: !4863)
!4866 = !DILocation(line: 107, column: 1, scope: !4858, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 239, column: 23, scope: !4664, inlinedAt: !4738)
!4868 = !DILocation(line: 109, column: 49, scope: !4858, inlinedAt: !4867)
!4869 = !DILocation(line: 109, column: 10, scope: !4858, inlinedAt: !4867)
!4870 = !DILocation(line: 107, column: 1, scope: !4858, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 240, column: 23, scope: !4664, inlinedAt: !4738)
!4872 = !DILocation(line: 109, column: 49, scope: !4858, inlinedAt: !4871)
!4873 = !DILocation(line: 109, column: 10, scope: !4858, inlinedAt: !4871)
!4874 = !DILocation(line: 241, column: 21, scope: !4665, inlinedAt: !4738)
!4875 = !DILocation(line: 242, column: 19, scope: !4667, inlinedAt: !4738)
!4876 = !DILocation(line: 243, column: 32, scope: !4877, inlinedAt: !4738)
!4877 = distinct !DILexicalBlock(scope: !4667, file: !668, line: 243, column: 23)
!4878 = !DILocation(line: 243, column: 23, scope: !4667, inlinedAt: !4738)
!4879 = !DILocation(line: 247, column: 33, scope: !4880, inlinedAt: !4738)
!4880 = distinct !DILexicalBlock(scope: !4877, file: !668, line: 246, column: 21)
!4881 = !DILocation(line: 247, column: 45, scope: !4880, inlinedAt: !4738)
!4882 = !DILocation(line: 253, column: 11, scope: !4671, inlinedAt: !4738)
!4883 = !DILocation(line: 377, column: 23, scope: !4673, inlinedAt: !4738)
!4884 = !DILocation(line: 378, column: 5, scope: !4673, inlinedAt: !4738)
!4885 = !DILocation(line: 396, column: 15, scope: !4651)
!4886 = !DILocation(line: 590, column: 8, scope: !4660)
!4887 = !DILocation(line: 590, column: 17, scope: !4660)
!4888 = !DILocation(line: 589, column: 3, scope: !4889)
!4889 = !DILexicalBlockFile(scope: !4661, file: !668, discriminator: 1)
!4890 = !DILocation(line: 592, column: 9, scope: !4658)
!4891 = !DILocation(line: 592, column: 35, scope: !4659)
!4892 = !DILocation(line: 593, column: 9, scope: !4659)
!4893 = !DILocation(line: 593, column: 24, scope: !4894)
!4894 = !DILexicalBlockFile(scope: !4659, file: !668, discriminator: 1)
!4895 = !DILocation(line: 593, column: 31, scope: !4894)
!4896 = !DILocation(line: 593, column: 34, scope: !4897)
!4897 = !DILexicalBlockFile(scope: !4659, file: !668, discriminator: 2)
!4898 = !DILocation(line: 593, column: 45, scope: !4897)
!4899 = !DILocation(line: 592, column: 9, scope: !4900)
!4900 = !DILexicalBlockFile(scope: !4660, file: !668, discriminator: 1)
!4901 = !DILocation(line: 595, column: 29, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4659, file: !668, line: 594, column: 7)
!4903 = !DILocation(line: 595, column: 27, scope: !4902)
!4904 = !DILocation(line: 595, column: 46, scope: !4902)
!4905 = !DILocation(line: 596, column: 9, scope: !4902)
!4906 = !DILocation(line: 591, column: 19, scope: !4660)
!4907 = !DILocation(line: 591, column: 36, scope: !4660)
!4908 = !DILocation(line: 591, column: 16, scope: !4660)
!4909 = !DILocation(line: 591, column: 52, scope: !4900)
!4910 = !DILocation(line: 591, column: 69, scope: !4660)
!4911 = !DILocation(line: 591, column: 49, scope: !4660)
!4912 = distinct !{!4912, !4913, !4914}
!4913 = !DILocation(line: 589, column: 3, scope: !4661)
!4914 = !DILocation(line: 597, column: 7, scope: !4661)
!4915 = !DILocation(line: 602, column: 7, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4651, file: !668, line: 602, column: 7)
!4917 = !DILocation(line: 602, column: 18, scope: !4916)
!4918 = !DILocation(line: 602, column: 7, scope: !4651)
!4919 = !DILocation(line: 612, column: 3, scope: !4651)
