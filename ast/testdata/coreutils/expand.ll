; ModuleID = 'coreutils-8.27/src/expand.bc'
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
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [123 x i8] c"  -i, --initial       do not convert tabs after non blanks\0A  -t, --tabs=NUMBER   have tabs NUMBER characters apart, not 8\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"  -t, --tabs=LIST     use comma separated list of explicit tab positions\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !0
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !68
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@convert_entire_line = local_unnamed_addr global i8 0, align 1, !dbg !85
@exit_status = local_unnamed_addr global i32 0, align 4, !dbg !134
@max_column_width = common local_unnamed_addr global i64 0, align 8, !dbg !215
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !217
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !219
@n_tabs_allocated = internal global i64 0, align 8, !dbg !221
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !223
@.str.8.7 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@.str.1.8 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.2.9 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3.10 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.4.11 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@.str.9.14 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.10.15 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !225
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.20, i32 0, i32 0), i8* null], align 16, !dbg !230
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !235
@.str.6.20 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !136
@.str.5.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.7.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), align 8, !dbg !238
@.str.36 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !244
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !249
@.str.39 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.40 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !252
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !259
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !266
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !278
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !285
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !297
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !304
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !311
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !299
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !313
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.76 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.77 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.79 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.80 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.81 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.83 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.84 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.85 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.86 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.89 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.90 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.91 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.92 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !319
@.str.1.103 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !328
@.str.3.125 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.126 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.127 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.128 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.129 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !722 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !726, metadata !727), !dbg !728
  %2 = icmp eq i32 %0, 0, !dbg !729
  br i1 %2, label %8, label %3, !dbg !731

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !732, !tbaa !735
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !732
  %6 = load i8*, i8** @program_name, align 8, !dbg !732, !tbaa !735
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !739
  br label %48, !dbg !741

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !743
  %10 = load i8*, i8** @program_name, align 8, !dbg !743, !tbaa !735
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !745
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !747
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !735
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !748
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !749
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !735
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !754
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !756
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !756, !tbaa !735
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !759
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !761
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !735
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !762
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !763
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !735
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !764
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !765
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !765, !tbaa !735
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !766
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !767
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !767, !tbaa !735
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !768
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !46, metadata !727) #10, !dbg !769
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !46, metadata !727) #10, !dbg !769
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !771
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !772
  %35 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !774
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !57, metadata !727) #10, !dbg !775
  %36 = icmp eq i8* %35, null, !dbg !776
  br i1 %36, label %43, label %37, !dbg !777

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #13, !dbg !778
  %39 = icmp eq i32 %38, 0, !dbg !778
  br i1 %39, label %43, label %40, !dbg !780

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !782
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !784
  br label %43, !dbg !786

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !787
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !788
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !789
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !790
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #14, !dbg !791
  unreachable, !dbg !791
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !792 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !796, metadata !727), !dbg !805
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !797, metadata !727), !dbg !806
  %6 = load i8*, i8** %1, align 8, !dbg !807, !tbaa !735
  tail call void @set_program_name(i8* %6) #10, !dbg !808
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !809
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !810
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !811
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !812
  store i8 1, i8* @convert_entire_line, align 1, !dbg !813, !tbaa !814
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  br label %13, !dbg !816

; <label>:13:                                     ; preds = %23, %2
  %14 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !817
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !798, metadata !727), !dbg !819
  switch i32 %14, label %30 [
    i32 -1, label %31
    i32 105, label %15
    i32 116, label %16
    i32 48, label %18
    i32 49, label %18
    i32 50, label %18
    i32 51, label %18
    i32 52, label %18
    i32 53, label %18
    i32 54, label %18
    i32 55, label %18
    i32 56, label %18
    i32 57, label %18
    i32 -130, label %26
    i32 -131, label %27
  ], !dbg !820

; <label>:15:                                     ; preds = %13
  store i8 0, i8* @convert_entire_line, align 1, !dbg !821, !tbaa !814
  br label %23, !dbg !822

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** @optarg, align 8, !dbg !823, !tbaa !735
  call void @parse_tab_stops(i8* %17) #10, !dbg !824
  br label %23, !dbg !825

; <label>:18:                                     ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %19 = load i8*, i8** @optarg, align 8, !dbg !826, !tbaa !735
  %20 = icmp eq i8* %19, null, !dbg !826
  br i1 %20, label %24, label %21, !dbg !827

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !828
  call void @parse_tab_stops(i8* %22) #10, !dbg !829
  br label %23, !dbg !829

; <label>:23:                                     ; preds = %21, %24, %16, %15
  br label %13, !dbg !817, !llvm.loop !830

; <label>:24:                                     ; preds = %18
  call void @llvm.lifetime.start(i64 2, i8* nonnull %11) #10, !dbg !832
  call void @llvm.dbg.declare(metadata [2 x i8]* %5, metadata !799, metadata !727), !dbg !833
  %25 = trunc i32 %14 to i8, !dbg !834
  store i8 %25, i8* %11, align 1, !dbg !835, !tbaa !836
  store i8 0, i8* %12, align 1, !dbg !837, !tbaa !836
  call void @parse_tab_stops(i8* nonnull %11) #10, !dbg !838
  call void @llvm.lifetime.end(i64 2, i8* nonnull %11) #10, !dbg !839
  br label %23

; <label>:26:                                     ; preds = %13
  call void @usage(i32 0) #15, !dbg !840
  unreachable, !dbg !840

; <label>:27:                                     ; preds = %13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !841, !tbaa !735
  %29 = load i8*, i8** @Version, align 8, !dbg !841, !tbaa !735
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #10, !dbg !841
  call void @exit(i32 0) #14, !dbg !842
  unreachable, !dbg !841

; <label>:30:                                     ; preds = %13
  call void @usage(i32 1) #15, !dbg !844
  unreachable, !dbg !844

; <label>:31:                                     ; preds = %13
  call void @finalize_tab_stops() #10, !dbg !845
  %32 = load i32, i32* @optind, align 4, !dbg !846, !tbaa !847
  %33 = icmp slt i32 %32, %0, !dbg !849
  %34 = sext i32 %32 to i64, !dbg !850
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !850
  %36 = select i1 %33, i8** %35, i8** null, !dbg !851
  call void @set_file_list(i8** %36) #10, !dbg !852
  %37 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* null) #10, !dbg !854
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %37, i64 0, metadata !857, metadata !727) #10, !dbg !911
  %38 = icmp eq %struct._IO_FILE* %37, null, !dbg !912
  br i1 %38, label %163, label %39, !dbg !914

; <label>:39:                                     ; preds = %31
  %40 = bitcast i64* %3 to i8*
  br label %41, !dbg !911

; <label>:41:                                     ; preds = %161, %39
  %42 = phi %struct._IO_FILE* [ %68, %161 ], [ %37, %39 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, i64 0, metadata !857, metadata !727) #10, !dbg !911
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !900, metadata !727) #10, !dbg !915
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !901, metadata !727) #10, !dbg !916
  call void @llvm.lifetime.start(i64 8, i8* nonnull %40) #10, !dbg !917
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !902, metadata !727) #10, !dbg !918
  store i64 0, i64* %3, align 8, !dbg !918, !tbaa !919
  br label %43, !dbg !921, !llvm.loop !922

; <label>:43:                                     ; preds = %159, %41
  %44 = phi %struct._IO_FILE* [ %42, %41 ], [ %68, %159 ]
  %45 = phi i8 [ 1, %41 ], [ %138, %159 ]
  %46 = phi i64 [ 0, %41 ], [ %139, %159 ]
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !901, metadata !727) #10, !dbg !916
  call void @llvm.dbg.value(metadata i8 %45, i64 0, metadata !900, metadata !727) #10, !dbg !915
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %44, i64 0, metadata !857, metadata !727) #10, !dbg !911
  br label %47, !dbg !925

; <label>:47:                                     ; preds = %61, %43
  %48 = phi %struct._IO_FILE* [ %44, %43 ], [ %62, %61 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, i64 0, metadata !857, metadata !727) #10, !dbg !911
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %48, i64 0, metadata !926, metadata !727) #10, !dbg !932
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 1, !dbg !935
  %50 = load i8*, i8** %49, align 8, !dbg !935, !tbaa !936
  %51 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %48, i64 0, i32 2, !dbg !935
  %52 = load i8*, i8** %51, align 8, !dbg !935, !tbaa !939
  %53 = icmp ult i8* %50, %52, !dbg !935
  br i1 %53, label %54, label %58, !dbg !935, !prof !940

; <label>:54:                                     ; preds = %47
  %55 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !941
  store i8* %55, i8** %49, align 8, !dbg !941, !tbaa !936
  %56 = load i8, i8* %50, align 1, !dbg !941, !tbaa !836
  %57 = zext i8 %56 to i32, !dbg !941
  call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !898, metadata !727) #10, !dbg !943
  br label %66, !dbg !944

; <label>:58:                                     ; preds = %47
  %59 = call i32 @__uflow(%struct._IO_FILE* nonnull %48) #10, !dbg !945
  call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !898, metadata !727) #10, !dbg !943
  %60 = icmp slt i32 %59, 0, !dbg !947
  br i1 %60, label %61, label %64, !dbg !944

; <label>:61:                                     ; preds = %58
  %62 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* %48) #10, !dbg !948
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, i64 0, metadata !857, metadata !727) #10, !dbg !911
  %63 = icmp eq %struct._IO_FILE* %62, null, !dbg !950
  br i1 %63, label %64, label %47, !dbg !951, !llvm.loop !953

; <label>:64:                                     ; preds = %58, %61
  %65 = phi %struct._IO_FILE* [ null, %61 ], [ %48, %58 ]
  br label %66, !dbg !911

; <label>:66:                                     ; preds = %64, %54
  %67 = phi i32 [ %57, %54 ], [ %59, %64 ]
  %68 = phi %struct._IO_FILE* [ %48, %54 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, i64 0, metadata !857, metadata !727) #10, !dbg !911
  %69 = and i8 %45, 1, !dbg !956
  %70 = icmp eq i8 %69, 0, !dbg !956
  br i1 %70, label %136, label %71, !dbg !957

; <label>:71:                                     ; preds = %66
  switch i32 %67, label %115 [
    i32 9, label %72
    i32 8, label %107
  ], !dbg !958

; <label>:72:                                     ; preds = %71
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !909, metadata !959) #10, !dbg !960
  call void @llvm.lifetime.start(i64 1, i8* nonnull %4) #10, !dbg !961
  call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !902, metadata !959) #10, !dbg !918
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !909, metadata !959) #10, !dbg !960
  %73 = call i64 @get_next_tab_column(i64 %46, i64* nonnull %3, i8* nonnull %4) #10, !dbg !962
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !903, metadata !727) #10, !dbg !963
  %74 = load i8, i8* %4, align 1, !dbg !964, !tbaa !814, !range !966
  call void @llvm.dbg.value(metadata i8 %74, i64 0, metadata !909, metadata !727) #10, !dbg !960
  %75 = icmp eq i8 %74, 0, !dbg !964
  %76 = add i64 %46, 1, !dbg !967
  call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !903, metadata !727) #10, !dbg !963
  %77 = select i1 %75, i64 %73, i64 %76, !dbg !968
  call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !903, metadata !727) #10, !dbg !963
  %78 = icmp ult i64 %77, %46, !dbg !969
  br i1 %78, label %82, label %79, !dbg !971

; <label>:79:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !901, metadata !727) #10, !dbg !916
  call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !901, metadata !727) #10, !dbg !916
  %80 = icmp ult i64 %76, %77, !dbg !972
  br i1 %80, label %81, label %105, !dbg !974

; <label>:81:                                     ; preds = %79
  br label %84, !dbg !975

; <label>:82:                                     ; preds = %72
  %83 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !983
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %83) #10, !dbg !984
  unreachable, !dbg !983

; <label>:84:                                     ; preds = %81, %97
  %85 = phi i64 [ %98, %97 ], [ %76, %81 ]
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !980, metadata !727) #10, !dbg !975
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !986, !tbaa !735
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %86, i64 0, i32 5, !dbg !986
  %88 = load i8*, i8** %87, align 8, !dbg !986, !tbaa !987
  %89 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %86, i64 0, i32 6, !dbg !986
  %90 = load i8*, i8** %89, align 8, !dbg !986, !tbaa !988
  %91 = icmp ult i8* %88, %90, !dbg !986
  br i1 %91, label %92, label %94, !dbg !986, !prof !940

; <label>:92:                                     ; preds = %84
  %93 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !989
  store i8* %93, i8** %87, align 8, !dbg !989, !tbaa !987
  store i8 32, i8* %88, align 1, !dbg !989, !tbaa !836
  br label %97, !dbg !991

; <label>:94:                                     ; preds = %84
  %95 = call i32 @__overflow(%struct._IO_FILE* %86, i32 32) #10, !dbg !992
  %96 = icmp slt i32 %95, 0, !dbg !994
  br i1 %96, label %100, label %97, !dbg !991

; <label>:97:                                     ; preds = %94, %92
  call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !901, metadata !727) #10, !dbg !916
  %98 = add i64 %85, 1, !dbg !995
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !901, metadata !727) #10, !dbg !916
  %99 = icmp ult i64 %98, %77, !dbg !972
  br i1 %99, label %84, label %104, !dbg !974, !llvm.loop !996

; <label>:100:                                    ; preds = %94
  %101 = tail call i32* @__errno_location() #1, !dbg !999
  %102 = load i32, i32* %101, align 4, !dbg !999, !tbaa !847
  %103 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !1000
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %102, i8* %103) #10, !dbg !1002
  unreachable, !dbg !999

; <label>:104:                                    ; preds = %97
  br label %105, !dbg !943

; <label>:105:                                    ; preds = %104, %79
  %106 = phi i64 [ %76, %79 ], [ %98, %104 ]
  call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !898, metadata !727) #10, !dbg !943
  call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !909, metadata !959) #10, !dbg !960
  call void @llvm.lifetime.end(i64 1, i8* nonnull %4) #10, !dbg !1004
  br label %120, !dbg !1005

; <label>:107:                                    ; preds = %71
  %108 = icmp ne i64 %46, 0, !dbg !1006
  %109 = zext i1 %108 to i64, !dbg !1009
  %110 = sub i64 %46, %109, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !901, metadata !727) #10, !dbg !916
  %111 = load i64, i64* %3, align 8, !dbg !1011, !tbaa !919
  call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !902, metadata !727) #10, !dbg !918
  %112 = icmp ne i64 %111, 0, !dbg !1012
  %113 = zext i1 %112 to i64, !dbg !1013
  %114 = sub i64 %111, %113, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !902, metadata !727) #10, !dbg !918
  store i64 %114, i64* %3, align 8, !dbg !1014, !tbaa !919
  br label %120, !dbg !1015

; <label>:115:                                    ; preds = %71
  %116 = add i64 %46, 1, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !901, metadata !727) #10, !dbg !916
  %117 = icmp eq i64 %116, 0, !dbg !1018
  br i1 %117, label %118, label %120, !dbg !1020

; <label>:118:                                    ; preds = %115
  %119 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !1021
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %119) #10, !dbg !1022
  unreachable, !dbg !1021

; <label>:120:                                    ; preds = %115, %107, %105
  %121 = phi i32 [ 32, %105 ], [ 8, %107 ], [ %67, %115 ]
  %122 = phi i64 [ %106, %105 ], [ %110, %107 ], [ %116, %115 ]
  call void @llvm.dbg.value(metadata i64 %122, i64 0, metadata !901, metadata !727) #10, !dbg !916
  call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !898, metadata !727) #10, !dbg !943
  %123 = load i8, i8* @convert_entire_line, align 1, !dbg !1024, !tbaa !814, !range !966
  %124 = icmp eq i8 %123, 0, !dbg !1024
  br i1 %124, label %125, label %133, !dbg !1025

; <label>:125:                                    ; preds = %120
  %126 = tail call i16** @__ctype_b_loc() #1, !dbg !1026
  %127 = load i16*, i16** %126, align 8, !dbg !1026, !tbaa !735
  %128 = sext i32 %121 to i64, !dbg !1026
  %129 = getelementptr inbounds i16, i16* %127, i64 %128, !dbg !1026
  %130 = load i16, i16* %129, align 2, !dbg !1026, !tbaa !1028
  %131 = and i16 %130, 1, !dbg !1026
  %132 = icmp ne i16 %131, 0, !dbg !1029
  br label %133, !dbg !1030

; <label>:133:                                    ; preds = %125, %120
  %134 = phi i1 [ true, %120 ], [ %132, %125 ]
  %135 = zext i1 %134 to i8, !dbg !1031
  call void @llvm.dbg.value(metadata i8 %135, i64 0, metadata !900, metadata !727) #10, !dbg !915
  br label %136, !dbg !1033

; <label>:136:                                    ; preds = %133, %66
  %137 = phi i32 [ %121, %133 ], [ %67, %66 ]
  %138 = phi i8 [ %135, %133 ], [ %45, %66 ]
  %139 = phi i64 [ %122, %133 ], [ %46, %66 ]
  call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !901, metadata !727) #10, !dbg !916
  call void @llvm.dbg.value(metadata i8 %138, i64 0, metadata !900, metadata !727) #10, !dbg !915
  call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !898, metadata !727) #10, !dbg !943
  %140 = icmp slt i32 %137, 0, !dbg !1034
  br i1 %140, label %162, label %141, !dbg !1036

; <label>:141:                                    ; preds = %136
  call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !980, metadata !727) #10, !dbg !1037
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1040, !tbaa !735
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 5, !dbg !1040
  %144 = load i8*, i8** %143, align 8, !dbg !1040, !tbaa !987
  %145 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 6, !dbg !1040
  %146 = load i8*, i8** %145, align 8, !dbg !1040, !tbaa !988
  %147 = icmp ult i8* %144, %146, !dbg !1040
  br i1 %147, label %148, label %151, !dbg !1040, !prof !940

; <label>:148:                                    ; preds = %141
  %149 = trunc i32 %137 to i8, !dbg !1041
  %150 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !1041
  store i8* %150, i8** %143, align 8, !dbg !1041, !tbaa !987
  store i8 %149, i8* %144, align 1, !dbg !1041, !tbaa !836
  br label %159, !dbg !1042

; <label>:151:                                    ; preds = %141
  %152 = and i32 %137, 255, !dbg !1043
  %153 = call i32 @__overflow(%struct._IO_FILE* %142, i32 %152) #10, !dbg !1043
  %154 = icmp slt i32 %153, 0, !dbg !1044
  br i1 %154, label %155, label %159, !dbg !1042

; <label>:155:                                    ; preds = %151
  %156 = tail call i32* @__errno_location() #1, !dbg !1045
  %157 = load i32, i32* %156, align 4, !dbg !1045, !tbaa !847
  %158 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !1046
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %157, i8* %158) #10, !dbg !1048
  unreachable, !dbg !1045

; <label>:159:                                    ; preds = %151, %148
  %160 = icmp eq i32 %137, 10, !dbg !1050
  br i1 %160, label %161, label %43, !dbg !1051, !llvm.loop !922

; <label>:161:                                    ; preds = %159
  call void @llvm.lifetime.end(i64 8, i8* nonnull %40) #10, !dbg !1052
  br label %41

; <label>:162:                                    ; preds = %136
  call void @llvm.lifetime.end(i64 8, i8* nonnull %40) #10, !dbg !1052
  br label %163

; <label>:163:                                    ; preds = %31, %162
  call void @cleanup_file_list_stdin() #10, !dbg !1053
  %164 = load i32, i32* @exit_status, align 4, !dbg !1054, !tbaa !847
  ret i32 %164, !dbg !1055
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @add_tab_stop(i64) local_unnamed_addr #6 !dbg !1056 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1060, metadata !727), !dbg !1063
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1064, !tbaa !919
  %3 = icmp eq i64 %2, 0, !dbg !1064
  br i1 %3, label %9, label %4, !dbg !1064

; <label>:4:                                      ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1065, !tbaa !735
  %6 = add i64 %2, -1, !dbg !1067
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1065
  %8 = load i64, i64* %7, align 8, !dbg !1065, !tbaa !919
  br label %9, !dbg !1068

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1061, metadata !727), !dbg !1071
  %11 = icmp ugt i64 %10, %0, !dbg !1072
  %12 = sub i64 %0, %10, !dbg !1073
  %13 = select i1 %11, i64 0, i64 %12, !dbg !1074
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1062, metadata !727), !dbg !1075
  %14 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1076, !tbaa !919
  %15 = icmp eq i64 %2, %14, !dbg !1078
  br i1 %15, label %18, label %16, !dbg !1079

; <label>:16:                                     ; preds = %9
  %17 = load i64*, i64** @tab_list, align 8, !tbaa !735
  br label %36, !dbg !1079

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1080, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !120, metadata !727) #10, !dbg !1081
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !121, metadata !727) #10, !dbg !1083
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !122, metadata !727) #10, !dbg !1084
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !123, metadata !727) #10, !dbg !1085
  %20 = icmp eq i8* %19, null, !dbg !1086
  br i1 %20, label %21, label %23, !dbg !1088

; <label>:21:                                     ; preds = %18
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !727) #10, !dbg !1085
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !727) #10, !dbg !1085
  %22 = select i1 %3, i64 16, i64 %2, !dbg !1089
  br label %30, !dbg !1089

; <label>:23:                                     ; preds = %18
  %24 = icmp ult i64 %2, 768614336404564650, !dbg !1091
  br i1 %24, label %26, label %25, !dbg !1094

; <label>:25:                                     ; preds = %23
  tail call void @xalloc_die() #14, !dbg !1095
  unreachable, !dbg !1095

; <label>:26:                                     ; preds = %23
  %27 = lshr i64 %2, 1, !dbg !1096
  %28 = add i64 %2, 1, !dbg !1097
  %29 = add i64 %28, %27, !dbg !1098
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !123, metadata !727) #10, !dbg !1085
  br label %30

; <label>:30:                                     ; preds = %21, %26
  %31 = phi i64 [ %29, %26 ], [ %22, %21 ]
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !123, metadata !727) #10, !dbg !1085
  store i64 %31, i64* @n_tabs_allocated, align 8, !dbg !1099, !tbaa !919
  %32 = shl i64 %31, 3, !dbg !1100
  %33 = tail call i8* @xrealloc(i8* %19, i64 %32) #10, !dbg !1101
  store i8* %33, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1102, !tbaa !735
  %34 = bitcast i8* %33 to i64*, !dbg !1103
  %35 = load i64, i64* @first_free_tab, align 8, !tbaa !919
  br label %36, !dbg !1103

; <label>:36:                                     ; preds = %16, %30
  %37 = phi i64 [ %2, %16 ], [ %35, %30 ], !dbg !1104
  %38 = phi i64* [ %17, %16 ], [ %34, %30 ], !dbg !1105
  %39 = add i64 %37, 1, !dbg !1104
  store i64 %39, i64* @first_free_tab, align 8, !dbg !1104, !tbaa !919
  %40 = getelementptr inbounds i64, i64* %38, i64 %37, !dbg !1105
  store i64 %0, i64* %40, align 8, !dbg !1106, !tbaa !919
  %41 = load i64, i64* @max_column_width, align 8, !dbg !1107, !tbaa !919
  %42 = icmp ult i64 %41, %13, !dbg !1109
  br i1 %42, label %43, label %44, !dbg !1110

; <label>:43:                                     ; preds = %36
  store i64 %13, i64* @max_column_width, align 8, !dbg !1111, !tbaa !919
  br label %44, !dbg !1113

; <label>:44:                                     ; preds = %43, %36
  ret void, !dbg !1114
}

; Function Attrs: nounwind sspstrong uwtable
define void @parse_tab_stops(i8*) local_unnamed_addr #6 !dbg !1115 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1117, metadata !727), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1118, metadata !727), !dbg !1135
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1119, metadata !727), !dbg !1136
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1120, metadata !727), !dbg !1137
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1121, metadata !727), !dbg !1138
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1122, metadata !727), !dbg !1139
  br label %2, !dbg !1140

; <label>:2:                                      ; preds = %108, %1
  %3 = phi i64 [ 0, %1 ], [ %109, %108 ]
  %4 = phi i8 [ 0, %1 ], [ %110, %108 ]
  %5 = phi i8* [ null, %1 ], [ %111, %108 ]
  %6 = phi i8 [ 1, %1 ], [ %112, %108 ]
  %7 = phi i8 [ 0, %1 ], [ %113, %108 ]
  %8 = phi i8* [ %0, %1 ], [ %115, %108 ]
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1119, metadata !727), !dbg !1136
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1117, metadata !727), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 %7, i64 0, metadata !1118, metadata !727), !dbg !1135
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !1122, metadata !727), !dbg !1139
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1121, metadata !727), !dbg !1138
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !1120, metadata !727), !dbg !1137
  %9 = load i8, i8* %8, align 1, !dbg !1141, !tbaa !836
  switch i8 %9, label %10 [
    i8 0, label %116
    i8 44, label %18
  ], !dbg !1143

; <label>:10:                                     ; preds = %2
  %11 = tail call i16** @__ctype_b_loc() #1, !dbg !1145
  %12 = load i16*, i16** %11, align 8, !dbg !1145, !tbaa !735
  %13 = zext i8 %9 to i64, !dbg !1145
  %14 = getelementptr inbounds i16, i16* %12, i64 %13, !dbg !1145
  %15 = load i16, i16* %14, align 2, !dbg !1145, !tbaa !1028
  %16 = and i16 %15, 1, !dbg !1145
  %17 = icmp eq i16 %16, 0, !dbg !1145
  br i1 %17, label %73, label %18, !dbg !1147

; <label>:18:                                     ; preds = %2, %10
  %19 = and i8 %7, 1, !dbg !1149
  %20 = icmp eq i8 %19, 0, !dbg !1149
  br i1 %20, label %108, label %21, !dbg !1152

; <label>:21:                                     ; preds = %18
  %22 = and i8 %4, 1, !dbg !1153
  %23 = icmp eq i8 %22, 0, !dbg !1153
  br i1 %23, label %30, label %24, !dbg !1156

; <label>:24:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1157, metadata !727) #10, !dbg !1163
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1162, metadata !727) #10, !dbg !1167
  %25 = load i64, i64* @extend_size, align 8, !dbg !1168, !tbaa !919
  %26 = icmp eq i64 %25, 0, !dbg !1168
  br i1 %26, label %27, label %28, !dbg !1170

; <label>:27:                                     ; preds = %24
  store i64 %3, i64* @extend_size, align 8, !dbg !1171, !tbaa !919
  br label %108, !dbg !1172

; <label>:28:                                     ; preds = %24
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.7, i64 0, i64 0), i32 5) #10, !dbg !1173
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #10, !dbg !1175
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1162, metadata !727) #10, !dbg !1167
  store i64 %3, i64* @extend_size, align 8, !dbg !1171, !tbaa !919
  br label %177, !dbg !1172

; <label>:30:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1060, metadata !727) #10, !dbg !1176
  %31 = load i64, i64* @first_free_tab, align 8, !dbg !1178, !tbaa !919
  %32 = icmp eq i64 %31, 0, !dbg !1178
  br i1 %32, label %38, label %33, !dbg !1178

; <label>:33:                                     ; preds = %30
  %34 = load i64*, i64** @tab_list, align 8, !dbg !1179, !tbaa !735
  %35 = add i64 %31, -1, !dbg !1180
  %36 = getelementptr inbounds i64, i64* %34, i64 %35, !dbg !1179
  %37 = load i64, i64* %36, align 8, !dbg !1179, !tbaa !919
  br label %38, !dbg !1181

; <label>:38:                                     ; preds = %33, %30
  %39 = phi i64 [ %37, %33 ], [ 0, %30 ], !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1061, metadata !727) #10, !dbg !1183
  %40 = icmp ult i64 %3, %39, !dbg !1184
  %41 = sub i64 %3, %39, !dbg !1185
  %42 = select i1 %40, i64 0, i64 %41, !dbg !1186
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1062, metadata !727) #10, !dbg !1187
  %43 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1188, !tbaa !919
  %44 = icmp eq i64 %31, %43, !dbg !1189
  br i1 %44, label %47, label %45, !dbg !1190

; <label>:45:                                     ; preds = %38
  %46 = load i64*, i64** @tab_list, align 8, !tbaa !735
  br label %65, !dbg !1190

; <label>:47:                                     ; preds = %38
  %48 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1191, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !120, metadata !727) #10, !dbg !1192
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !121, metadata !727) #10, !dbg !1194
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !122, metadata !727) #10, !dbg !1195
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !123, metadata !727) #10, !dbg !1196
  %49 = icmp eq i8* %48, null, !dbg !1197
  br i1 %49, label %50, label %52, !dbg !1198

; <label>:50:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !727) #10, !dbg !1196
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !727) #10, !dbg !1196
  %51 = select i1 %32, i64 16, i64 %31, !dbg !1199
  br label %59, !dbg !1199

; <label>:52:                                     ; preds = %47
  %53 = icmp ult i64 %31, 768614336404564650, !dbg !1200
  br i1 %53, label %55, label %54, !dbg !1201

; <label>:54:                                     ; preds = %52
  tail call void @xalloc_die() #14, !dbg !1202
  unreachable, !dbg !1202

; <label>:55:                                     ; preds = %52
  %56 = lshr i64 %31, 1, !dbg !1203
  %57 = add i64 %31, 1, !dbg !1204
  %58 = add i64 %57, %56, !dbg !1205
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !123, metadata !727) #10, !dbg !1196
  br label %59

; <label>:59:                                     ; preds = %55, %50
  %60 = phi i64 [ %58, %55 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !123, metadata !727) #10, !dbg !1196
  store i64 %60, i64* @n_tabs_allocated, align 8, !dbg !1206, !tbaa !919
  %61 = shl i64 %60, 3, !dbg !1207
  %62 = tail call i8* @xrealloc(i8* %48, i64 %61) #10, !dbg !1208
  store i8* %62, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1209, !tbaa !735
  %63 = bitcast i8* %62 to i64*, !dbg !1210
  %64 = load i64, i64* @first_free_tab, align 8, !tbaa !919
  br label %65, !dbg !1210

; <label>:65:                                     ; preds = %59, %45
  %66 = phi i64 [ %31, %45 ], [ %64, %59 ], !dbg !1211
  %67 = phi i64* [ %46, %45 ], [ %63, %59 ], !dbg !1212
  %68 = add i64 %66, 1, !dbg !1211
  store i64 %68, i64* @first_free_tab, align 8, !dbg !1211, !tbaa !919
  %69 = getelementptr inbounds i64, i64* %67, i64 %66, !dbg !1212
  store i64 %3, i64* %69, align 8, !dbg !1213, !tbaa !919
  %70 = load i64, i64* @max_column_width, align 8, !dbg !1214, !tbaa !919
  %71 = icmp ult i64 %70, %42, !dbg !1215
  br i1 %71, label %72, label %108, !dbg !1216

; <label>:72:                                     ; preds = %65
  store i64 %42, i64* @max_column_width, align 8, !dbg !1217, !tbaa !919
  br label %108, !dbg !1218

; <label>:73:                                     ; preds = %10
  %74 = icmp eq i8 %9, 47, !dbg !1219
  br i1 %74, label %75, label %81, !dbg !1220

; <label>:75:                                     ; preds = %73
  %76 = and i8 %7, 1, !dbg !1221
  %77 = icmp eq i8 %76, 0, !dbg !1221
  br i1 %77, label %108, label %78, !dbg !1224

; <label>:78:                                     ; preds = %75
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.8, i64 0, i64 0), i32 5) #10, !dbg !1225
  %80 = tail call i8* @quote(i8* %8) #10, !dbg !1227
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %80) #10, !dbg !1228
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1122, metadata !727), !dbg !1139
  br label %108, !dbg !1230

; <label>:81:                                     ; preds = %73
  %82 = sext i8 %9 to i32, !dbg !1231
  %83 = add nsw i32 %82, -48, !dbg !1232
  %84 = icmp ult i32 %83, 10, !dbg !1232
  br i1 %84, label %85, label %105, !dbg !1233

; <label>:85:                                     ; preds = %81
  %86 = and i8 %7, 1, !dbg !1234
  %87 = icmp eq i8 %86, 0, !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1119, metadata !727), !dbg !1136
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1118, metadata !727), !dbg !1135
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1121, metadata !727), !dbg !1138
  %88 = select i1 %87, i64 0, i64 %3, !dbg !1236
  %89 = select i1 %87, i8* %8, i8* %5, !dbg !1236
  %90 = select i1 %87, i8 1, i8 %7, !dbg !1236
  tail call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !1119, metadata !727), !dbg !1136
  tail call void @llvm.dbg.value(metadata i8 %90, i64 0, metadata !1118, metadata !727), !dbg !1135
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1121, metadata !727), !dbg !1138
  %91 = icmp ugt i64 %88, 1844674407370955161, !dbg !1237
  br i1 %91, label %98, label %92, !dbg !1237

; <label>:92:                                     ; preds = %85
  %93 = mul i64 %88, 10, !dbg !1238
  %94 = sext i8 %9 to i64, !dbg !1238
  %95 = add nsw i64 %94, -48, !dbg !1238
  %96 = add i64 %95, %93, !dbg !1238
  %97 = icmp ult i64 %96, %88, !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !1119, metadata !727), !dbg !1136
  br i1 %97, label %98, label %108, !dbg !1240

; <label>:98:                                     ; preds = %92, %85
  %99 = tail call i64 @strspn(i8* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.9, i64 0, i64 0)) #10, !dbg !1242
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1123, metadata !727), !dbg !1243
  %100 = tail call i8* @xstrndup(i8* %89, i64 %99) #10, !dbg !1244
  tail call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1133, metadata !727), !dbg !1245
  %101 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.10, i64 0, i64 0), i32 5) #10, !dbg !1246
  %102 = tail call i8* @quote(i8* %100) #10, !dbg !1247
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %101, i8* %102) #10, !dbg !1249
  tail call void @free(i8* %100) #10, !dbg !1251
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1122, metadata !727), !dbg !1139
  %103 = getelementptr inbounds i8, i8* %89, i64 %99, !dbg !1252
  %104 = getelementptr inbounds i8, i8* %103, i64 -1, !dbg !1253
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1117, metadata !727), !dbg !1134
  br label %108, !dbg !1254

; <label>:105:                                    ; preds = %81
  %106 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4.11, i64 0, i64 0), i32 5) #10, !dbg !1255
  %107 = tail call i8* @quote(i8* %8) #10, !dbg !1257
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %106, i8* %107) #10, !dbg !1258
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1122, metadata !727), !dbg !1139
  br label %177, !dbg !1260

; <label>:108:                                    ; preds = %92, %72, %65, %27, %78, %75, %18, %98
  %109 = phi i64 [ %96, %92 ], [ %88, %98 ], [ %3, %18 ], [ %3, %75 ], [ %3, %78 ], [ %3, %27 ], [ %3, %65 ], [ %3, %72 ]
  %110 = phi i8 [ %4, %92 ], [ %4, %98 ], [ %4, %18 ], [ 1, %75 ], [ 1, %78 ], [ %4, %27 ], [ %4, %65 ], [ %4, %72 ]
  %111 = phi i8* [ %89, %92 ], [ %89, %98 ], [ %5, %18 ], [ %5, %75 ], [ %5, %78 ], [ %5, %27 ], [ %5, %65 ], [ %5, %72 ]
  %112 = phi i8 [ %6, %92 ], [ 0, %98 ], [ %6, %18 ], [ %6, %75 ], [ 0, %78 ], [ %6, %27 ], [ %6, %65 ], [ %6, %72 ]
  %113 = phi i8 [ %90, %92 ], [ %90, %98 ], [ 0, %18 ], [ %7, %75 ], [ %7, %78 ], [ 0, %27 ], [ 0, %65 ], [ 0, %72 ]
  %114 = phi i8* [ %8, %92 ], [ %104, %98 ], [ %8, %18 ], [ %8, %75 ], [ %8, %78 ], [ %8, %27 ], [ %8, %65 ], [ %8, %72 ]
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1119, metadata !727), !dbg !1136
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !1117, metadata !727), !dbg !1134
  tail call void @llvm.dbg.value(metadata i8 %113, i64 0, metadata !1118, metadata !727), !dbg !1135
  tail call void @llvm.dbg.value(metadata i8 %112, i64 0, metadata !1122, metadata !727), !dbg !1139
  tail call void @llvm.dbg.value(metadata i8* %111, i64 0, metadata !1121, metadata !727), !dbg !1138
  tail call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !1120, metadata !727), !dbg !1137
  %115 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1261
  tail call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !1117, metadata !727), !dbg !1134
  br label %2, !dbg !1263, !llvm.loop !1264

; <label>:116:                                    ; preds = %2
  tail call void @llvm.dbg.value(metadata i8 %6, i64 0, metadata !1122, metadata !727), !dbg !1139
  %117 = and i8 %6, 1, !dbg !1267
  %118 = and i8 %117, %7, !dbg !1267
  %119 = icmp eq i8 %118, 0, !dbg !1267
  br i1 %119, label %173, label %120, !dbg !1267

; <label>:120:                                    ; preds = %116
  %121 = and i8 %4, 1, !dbg !1269
  %122 = icmp eq i8 %121, 0, !dbg !1269
  br i1 %122, label %130, label %123, !dbg !1272

; <label>:123:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1157, metadata !727) #10, !dbg !1273
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1162, metadata !727) #10, !dbg !1275
  %124 = load i64, i64* @extend_size, align 8, !dbg !1276, !tbaa !919
  %125 = icmp eq i64 %124, 0, !dbg !1276
  br i1 %125, label %128, label %126, !dbg !1277

; <label>:126:                                    ; preds = %123
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.7, i64 0, i64 0), i32 5) #10, !dbg !1278
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %127) #10, !dbg !1279
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1162, metadata !727) #10, !dbg !1275
  br label %128, !dbg !1280

; <label>:128:                                    ; preds = %123, %126
  %129 = phi i8 [ 0, %126 ], [ 1, %123 ]
  store i64 %3, i64* @extend_size, align 8, !dbg !1281, !tbaa !919
  tail call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1122, metadata !727), !dbg !1139
  br label %173, !dbg !1282

; <label>:130:                                    ; preds = %120
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1060, metadata !727) #10, !dbg !1283
  %131 = load i64, i64* @first_free_tab, align 8, !dbg !1285, !tbaa !919
  %132 = icmp eq i64 %131, 0, !dbg !1285
  br i1 %132, label %138, label %133, !dbg !1285

; <label>:133:                                    ; preds = %130
  %134 = load i64*, i64** @tab_list, align 8, !dbg !1286, !tbaa !735
  %135 = add i64 %131, -1, !dbg !1287
  %136 = getelementptr inbounds i64, i64* %134, i64 %135, !dbg !1286
  %137 = load i64, i64* %136, align 8, !dbg !1286, !tbaa !919
  br label %138, !dbg !1288

; <label>:138:                                    ; preds = %133, %130
  %139 = phi i64 [ %137, %133 ], [ 0, %130 ], !dbg !1289
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !1061, metadata !727) #10, !dbg !1290
  %140 = icmp ult i64 %3, %139, !dbg !1291
  %141 = sub i64 %3, %139, !dbg !1292
  %142 = select i1 %140, i64 0, i64 %141, !dbg !1293
  tail call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1062, metadata !727) #10, !dbg !1294
  %143 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1295, !tbaa !919
  %144 = icmp eq i64 %131, %143, !dbg !1296
  br i1 %144, label %147, label %145, !dbg !1297

; <label>:145:                                    ; preds = %138
  %146 = load i64*, i64** @tab_list, align 8, !tbaa !735
  br label %165, !dbg !1297

; <label>:147:                                    ; preds = %138
  %148 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1298, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !120, metadata !727) #10, !dbg !1299
  tail call void @llvm.dbg.value(metadata i64* @n_tabs_allocated, i64 0, metadata !121, metadata !727) #10, !dbg !1301
  tail call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !122, metadata !727) #10, !dbg !1302
  tail call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !123, metadata !727) #10, !dbg !1303
  %149 = icmp eq i8* %148, null, !dbg !1304
  br i1 %149, label %150, label %152, !dbg !1305

; <label>:150:                                    ; preds = %147
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !727) #10, !dbg !1303
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !123, metadata !727) #10, !dbg !1303
  %151 = select i1 %132, i64 16, i64 %131, !dbg !1306
  br label %159, !dbg !1306

; <label>:152:                                    ; preds = %147
  %153 = icmp ult i64 %131, 768614336404564650, !dbg !1307
  br i1 %153, label %155, label %154, !dbg !1308

; <label>:154:                                    ; preds = %152
  tail call void @xalloc_die() #14, !dbg !1309
  unreachable, !dbg !1309

; <label>:155:                                    ; preds = %152
  %156 = lshr i64 %131, 1, !dbg !1310
  %157 = add i64 %131, 1, !dbg !1311
  %158 = add i64 %157, %156, !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !123, metadata !727) #10, !dbg !1303
  br label %159

; <label>:159:                                    ; preds = %155, %150
  %160 = phi i64 [ %158, %155 ], [ %151, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !123, metadata !727) #10, !dbg !1303
  store i64 %160, i64* @n_tabs_allocated, align 8, !dbg !1313, !tbaa !919
  %161 = shl i64 %160, 3, !dbg !1314
  %162 = tail call i8* @xrealloc(i8* %148, i64 %161) #10, !dbg !1315
  store i8* %162, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1316, !tbaa !735
  %163 = bitcast i8* %162 to i64*, !dbg !1317
  %164 = load i64, i64* @first_free_tab, align 8, !tbaa !919
  br label %165, !dbg !1317

; <label>:165:                                    ; preds = %159, %145
  %166 = phi i64 [ %131, %145 ], [ %164, %159 ], !dbg !1318
  %167 = phi i64* [ %146, %145 ], [ %163, %159 ], !dbg !1319
  %168 = add i64 %166, 1, !dbg !1318
  store i64 %168, i64* @first_free_tab, align 8, !dbg !1318, !tbaa !919
  %169 = getelementptr inbounds i64, i64* %167, i64 %166, !dbg !1319
  store i64 %3, i64* %169, align 8, !dbg !1320, !tbaa !919
  %170 = load i64, i64* @max_column_width, align 8, !dbg !1321, !tbaa !919
  %171 = icmp ult i64 %170, %142, !dbg !1322
  br i1 %171, label %172, label %173, !dbg !1323

; <label>:172:                                    ; preds = %165
  store i64 %142, i64* @max_column_width, align 8, !dbg !1324, !tbaa !919
  br label %173, !dbg !1325

; <label>:173:                                    ; preds = %172, %165, %116, %128
  %174 = phi i8 [ %129, %128 ], [ %6, %116 ], [ %6, %165 ], [ %6, %172 ]
  tail call void @llvm.dbg.value(metadata i8 %174, i64 0, metadata !1122, metadata !727), !dbg !1139
  %175 = and i8 %174, 1, !dbg !1326
  %176 = icmp eq i8 %175, 0, !dbg !1326
  br i1 %176, label %177, label %178, !dbg !1328

; <label>:177:                                    ; preds = %105, %28, %173
  tail call void @exit(i32 1) #14, !dbg !1329
  unreachable, !dbg !1329

; <label>:178:                                    ; preds = %173
  ret void, !dbg !1330
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @finalize_tab_stops() local_unnamed_addr #6 !dbg !1331 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1332, !tbaa !735
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1333, !tbaa !919
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1334, metadata !727) #10, !dbg !1344
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1341, metadata !727) #10, !dbg !1346
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1342, metadata !727) #10, !dbg !1347
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1343, metadata !727) #10, !dbg !1348
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1343, metadata !727) #10, !dbg !1348
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1342, metadata !727) #10, !dbg !1347
  %3 = icmp eq i64 %2, 0, !dbg !1349
  br i1 %3, label %20, label %4, !dbg !1353

; <label>:4:                                      ; preds = %0
  br label %7, !dbg !1355

; <label>:5:                                      ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1343, metadata !727) #10, !dbg !1348
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1342, metadata !727) #10, !dbg !1347
  %6 = icmp ult i64 %17, %2, !dbg !1349
  br i1 %6, label %7, label %24, !dbg !1353, !llvm.loop !1358

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %17, %5 ], [ 0, %4 ]
  %9 = phi i64 [ %11, %5 ], [ 0, %4 ]
  %10 = getelementptr inbounds i64, i64* %1, i64 %8, !dbg !1355
  %11 = load i64, i64* %10, align 8, !dbg !1355, !tbaa !919
  %12 = icmp eq i64 %11, 0, !dbg !1361
  br i1 %12, label %13, label %15, !dbg !1362

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9.14, i64 0, i64 0), i32 5) #10, !dbg !1363
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %14) #10, !dbg !1364
  unreachable, !dbg !1363

; <label>:15:                                     ; preds = %7
  %16 = icmp ugt i64 %11, %9, !dbg !1366
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1342, metadata !727) #10, !dbg !1347
  %17 = add nuw i64 %8, 1, !dbg !1368
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1343, metadata !727) #10, !dbg !1348
  br i1 %16, label %5, label %18, !dbg !1370

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10.15, i64 0, i64 0), i32 5) #10, !dbg !1371
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %19) #10, !dbg !1372
  unreachable, !dbg !1371

; <label>:20:                                     ; preds = %0
  %21 = load i64, i64* @extend_size, align 8, !dbg !1374, !tbaa !919
  %22 = icmp ne i64 %21, 0, !dbg !1374
  %23 = select i1 %22, i64 %21, i64 8, !dbg !1374
  store i64 %23, i64* @max_column_width, align 8, !dbg !1376, !tbaa !919
  br label %31, !dbg !1378

; <label>:24:                                     ; preds = %5
  %25 = icmp ne i64 %2, 1, !dbg !1379
  %26 = load i64, i64* @extend_size, align 8, !dbg !1381
  %27 = icmp ne i64 %26, 0, !dbg !1381
  %28 = or i1 %25, %27, !dbg !1383
  br i1 %28, label %31, label %29, !dbg !1383

; <label>:29:                                     ; preds = %24
  %30 = load i64, i64* %1, align 8, !dbg !1384, !tbaa !919
  br label %31, !dbg !1385

; <label>:31:                                     ; preds = %29, %24, %20
  %32 = phi i64 [ %23, %20 ], [ %30, %29 ], [ 0, %24 ]
  store i64 %32, i64* @tab_size, align 8, !tbaa !919
  ret void, !dbg !1386
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @get_next_tab_column(i64, i64* nocapture, i8* nocapture) local_unnamed_addr #6 !dbg !1387 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1392, metadata !727), !dbg !1399
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !1393, metadata !727), !dbg !1400
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1394, metadata !727), !dbg !1401
  store i8 0, i8* %2, align 1, !dbg !1402, !tbaa !814
  %4 = load i64, i64* @tab_size, align 8, !dbg !1403, !tbaa !919
  %5 = icmp eq i64 %4, 0, !dbg !1403
  br i1 %5, label %6, label %12, !dbg !1405

; <label>:6:                                      ; preds = %3
  %7 = load i64, i64* %1, align 8, !dbg !1406, !tbaa !919
  %8 = load i64, i64* @first_free_tab, align 8, !dbg !1408, !tbaa !919
  %9 = icmp ult i64 %7, %8, !dbg !1409
  br i1 %9, label %10, label %25, !dbg !1410

; <label>:10:                                     ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !tbaa !735
  br label %16, !dbg !1410

; <label>:12:                                     ; preds = %3
  %13 = urem i64 %0, %4, !dbg !1412
  %14 = add i64 %4, %0, !dbg !1413
  %15 = sub i64 %14, %13, !dbg !1414
  br label %34, !dbg !1415

; <label>:16:                                     ; preds = %10, %21
  %17 = phi i64 [ %7, %10 ], [ %22, %21 ]
  %18 = getelementptr inbounds i64, i64* %11, i64 %17, !dbg !1416
  %19 = load i64, i64* %18, align 8, !dbg !1416, !tbaa !919
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1395, metadata !727), !dbg !1417
  %20 = icmp ugt i64 %19, %0, !dbg !1418
  br i1 %20, label %33, label %21

; <label>:21:                                     ; preds = %16
  %22 = add nuw i64 %17, 1, !dbg !1420
  store i64 %22, i64* %1, align 8, !dbg !1420, !tbaa !919
  %23 = icmp ult i64 %22, %8, !dbg !1409
  br i1 %23, label %16, label %24, !dbg !1410, !llvm.loop !1422

; <label>:24:                                     ; preds = %21
  br label %25, !dbg !1425

; <label>:25:                                     ; preds = %24, %6
  %26 = load i64, i64* @extend_size, align 8, !dbg !1425, !tbaa !919
  %27 = icmp eq i64 %26, 0, !dbg !1425
  br i1 %27, label %32, label %28, !dbg !1427

; <label>:28:                                     ; preds = %25
  %29 = urem i64 %0, %26, !dbg !1428
  %30 = add i64 %26, %0, !dbg !1429
  %31 = sub i64 %30, %29, !dbg !1430
  br label %34, !dbg !1431

; <label>:32:                                     ; preds = %25
  store i8 1, i8* %2, align 1, !dbg !1432, !tbaa !814
  br label %34, !dbg !1433

; <label>:33:                                     ; preds = %16
  br label %34, !dbg !1434

; <label>:34:                                     ; preds = %33, %32, %28, %12
  %35 = phi i64 [ %15, %12 ], [ %31, %28 ], [ 0, %32 ], [ %19, %33 ]
  ret i64 %35, !dbg !1434
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_file_list(i8**) local_unnamed_addr #6 !dbg !1435 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !1439, metadata !727), !dbg !1440
  store i1 false, i1* @have_read_stdin, align 1
  %2 = icmp ne i8** %0, null, !dbg !1441
  %3 = select i1 %2, i8** %0, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), !dbg !1443
  store i8** %3, i8*** @file_list, align 8, !tbaa !735
  ret void, !dbg !1444
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @next_file(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !138 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !196, metadata !727), !dbg !1445
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1446
  br i1 %2, label %30, label %3, !dbg !1447

; <label>:3:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1448, metadata !727), !dbg !1453
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1456
  %5 = load i32, i32* %4, align 8, !dbg !1456, !tbaa !1457
  %6 = and i32 %5, 32, !dbg !1456
  %7 = icmp eq i32 %6, 0, !dbg !1458
  br i1 %7, label %13, label %8, !dbg !1459

; <label>:8:                                      ; preds = %3
  %9 = tail call i32* @__errno_location() #1, !dbg !1460
  %10 = load i32, i32* %9, align 4, !dbg !1460, !tbaa !847
  %11 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1462, !tbaa !735
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %11) #10, !dbg !1463
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.23, i64 0, i64 0), i8* %12) #10, !dbg !1465
  store i32 1, i32* @exit_status, align 4, !dbg !1467, !tbaa !847
  br label %13, !dbg !1468

; <label>:13:                                     ; preds = %3, %8
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !203, metadata !727), !dbg !1469
  %14 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1470, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !204, metadata !727), !dbg !1472
  %15 = load i8, i8* %14, align 1, !dbg !1470, !tbaa !836
  %16 = icmp eq i8 %15, 45, !dbg !1473
  br i1 %16, label %17, label %22, !dbg !1476

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1478
  %19 = load i8, i8* %18, align 1, !dbg !1478, !tbaa !836
  %20 = icmp eq i8 %19, 0, !dbg !1481
  br i1 %20, label %21, label %22, !dbg !1483

; <label>:21:                                     ; preds = %17
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #10, !dbg !1485
  br label %30, !dbg !1485

; <label>:22:                                     ; preds = %13, %17
  %23 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #10, !dbg !1486
  %24 = icmp eq i32 %23, 0, !dbg !1488
  br i1 %24, label %30, label %25, !dbg !1489

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #1, !dbg !1490
  %27 = load i32, i32* %26, align 4, !dbg !1490, !tbaa !847
  %28 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1492, !tbaa !735
  %29 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #10, !dbg !1493
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.23, i64 0, i64 0), i8* %29) #10, !dbg !1495
  store i32 1, i32* @exit_status, align 4, !dbg !1497, !tbaa !847
  br label %30, !dbg !1498

; <label>:30:                                     ; preds = %21, %25, %1, %22
  %31 = load i8**, i8*** @file_list, align 8, !dbg !1499, !tbaa !735
  %32 = getelementptr inbounds i8*, i8** %31, i64 1, !dbg !1499
  store i8** %32, i8*** @file_list, align 8, !dbg !1499, !tbaa !735
  %33 = load i8*, i8** %31, align 8, !dbg !1501, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !197, metadata !727), !dbg !1502
  %34 = icmp eq i8* %33, null, !dbg !1503
  br i1 %34, label %61, label %35, !dbg !1504

; <label>:35:                                     ; preds = %30
  br label %36, !dbg !1505

; <label>:36:                                     ; preds = %35, %52
  %37 = phi i8* [ %58, %52 ], [ %33, %35 ]
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !211, metadata !727), !dbg !1505
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !212, metadata !727), !dbg !1506
  %38 = load i8, i8* %37, align 1, !dbg !1507, !tbaa !836
  %39 = icmp eq i8 %38, 45, !dbg !1509
  br i1 %39, label %40, label %46, !dbg !1512

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1514
  %42 = load i8, i8* %41, align 1, !dbg !1514, !tbaa !836
  %43 = icmp eq i8 %42, 0, !dbg !1517
  br i1 %43, label %44, label %46, !dbg !1519

; <label>:44:                                     ; preds = %40
  store i1 true, i1* @have_read_stdin, align 1
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1521, !tbaa !735
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %45, i64 0, metadata !196, metadata !727), !dbg !1445
  br label %48, !dbg !1523

; <label>:46:                                     ; preds = %36, %40
  %47 = tail call %struct._IO_FILE* @fopen(i8* nonnull %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.24, i64 0, i64 0)), !dbg !1524
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %47, i64 0, metadata !196, metadata !727), !dbg !1445
  br label %48

; <label>:48:                                     ; preds = %46, %44
  %49 = phi %struct._IO_FILE* [ %45, %44 ], [ %47, %46 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %49, i64 0, metadata !196, metadata !727), !dbg !1445
  %50 = icmp eq %struct._IO_FILE* %49, null, !dbg !1525
  br i1 %50, label %52, label %51, !dbg !1527

; <label>:51:                                     ; preds = %48
  store i8* %37, i8** @next_file.prev_file, align 8, !dbg !1528, !tbaa !735
  tail call void @fadvise(%struct._IO_FILE* nonnull %49, i32 2) #10, !dbg !1530
  br label %61, !dbg !1531

; <label>:52:                                     ; preds = %48
  %53 = tail call i32* @__errno_location() #1, !dbg !1532
  %54 = load i32, i32* %53, align 4, !dbg !1532, !tbaa !847
  %55 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %37) #10, !dbg !1533
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.23, i64 0, i64 0), i8* %55) #10, !dbg !1535
  store i32 1, i32* @exit_status, align 4, !dbg !1537, !tbaa !847
  %56 = load i8**, i8*** @file_list, align 8, !dbg !1499, !tbaa !735
  %57 = getelementptr inbounds i8*, i8** %56, i64 1, !dbg !1499
  store i8** %57, i8*** @file_list, align 8, !dbg !1499, !tbaa !735
  %58 = load i8*, i8** %56, align 8, !dbg !1501, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !197, metadata !727), !dbg !1502
  %59 = icmp eq i8* %58, null, !dbg !1503
  br i1 %59, label %60, label %36, !dbg !1504, !llvm.loop !1538

; <label>:60:                                     ; preds = %52
  br label %61, !dbg !1541

; <label>:61:                                     ; preds = %60, %30, %51
  %62 = phi %struct._IO_FILE* [ %49, %51 ], [ null, %30 ], [ null, %60 ]
  ret %struct._IO_FILE* %62, !dbg !1541
}

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @cleanup_file_list_stdin() local_unnamed_addr #6 !dbg !1542 {
  %1 = load i1, i1* @have_read_stdin, align 1
  br i1 %1, label %2, label %9, !dbg !1543

; <label>:2:                                      ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1545, !tbaa !735
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* %3) #10, !dbg !1547
  %5 = icmp eq i32 %4, 0, !dbg !1548
  br i1 %5, label %9, label %6, !dbg !1549

; <label>:6:                                      ; preds = %2
  %7 = tail call i32* @__errno_location() #1, !dbg !1551
  %8 = load i32, i32* %7, align 4, !dbg !1551, !tbaa !847
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.20, i64 0, i64 0)) #10, !dbg !1552
  unreachable, !dbg !1551

; <label>:9:                                      ; preds = %2, %0
  ret void, !dbg !1553
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1554 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1556, metadata !727), !dbg !1557
  store i8* %0, i8** @file_name, align 8, !dbg !1558, !tbaa !735
  ret void, !dbg !1559
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1560 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1564, metadata !1565), !dbg !1566
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1567, !tbaa !814
  ret void, !dbg !1568
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1569 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1574, !tbaa !735
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1575
  %3 = icmp eq i32 %2, 0, !dbg !1576
  br i1 %3, label %21, label %4, !dbg !1577

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1578, !tbaa !814, !range !966
  %6 = icmp eq i8 %5, 0, !dbg !1578
  %7 = tail call i32* @__errno_location() #1, !dbg !1580
  br i1 %6, label %11, label %8, !dbg !1582

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1583, !tbaa !847
  %10 = icmp eq i32 %9, 32, !dbg !1585
  br i1 %10, label %21, label %11, !dbg !1586

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !1588
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1571, metadata !727), !dbg !1589
  %13 = load i8*, i8** @file_name, align 8, !dbg !1590, !tbaa !735
  %14 = icmp eq i8* %13, null, !dbg !1590
  %15 = load i32, i32* %7, align 4, !tbaa !847
  br i1 %14, label %18, label %16, !dbg !1591

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1592
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.40, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1594
  br label %19, !dbg !1596

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.41, i64 0, i64 0), i8* %12) #10, !dbg !1597
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1598, !tbaa !847
  tail call void @_exit(i32 %20) #14, !dbg !1599
  unreachable, !dbg !1599

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1600, !tbaa !735
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1602
  %24 = icmp eq i32 %23, 0, !dbg !1603
  br i1 %24, label %27, label %25, !dbg !1604

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1605, !tbaa !847
  tail call void @_exit(i32 %26) #14, !dbg !1606
  unreachable, !dbg !1606

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1607
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1608 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1615, metadata !727), !dbg !1621
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1616, metadata !727), !dbg !1622
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1617, metadata !727), !dbg !1623
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1618, metadata !727), !dbg !1624
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1625
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1619, metadata !727), !dbg !1625
  ret void, !dbg !1626
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1627 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1671, metadata !727), !dbg !1673
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1672, metadata !727), !dbg !1674
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1675
  br i1 %3, label %7, label %4, !dbg !1677

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1678
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1615, metadata !727) #10, !dbg !1679
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1616, metadata !727) #10, !dbg !1682
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1617, metadata !727) #10, !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1618, metadata !727) #10, !dbg !1684
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1619, metadata !727) #10, !dbg !1685
  br label %7, !dbg !1686

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1687
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1688 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1690, metadata !727), !dbg !1693
  %2 = icmp eq i8* %0, null, !dbg !1694
  br i1 %2, label %3, label %6, !dbg !1696

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1697, !tbaa !735
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1699
  tail call void @abort() #14, !dbg !1700
  unreachable, !dbg !1700

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1701
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1691, metadata !727), !dbg !1702
  %8 = icmp ne i8* %7, null, !dbg !1703
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1704
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1706
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1692, metadata !727), !dbg !1707
  %11 = ptrtoint i8* %10 to i64, !dbg !1708
  %12 = ptrtoint i8* %0 to i64, !dbg !1708
  %13 = sub i64 %11, %12, !dbg !1708
  %14 = icmp sgt i64 %13, 6, !dbg !1710
  br i1 %14, label %15, label %24, !dbg !1711

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1712
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #13, !dbg !1712
  %18 = icmp eq i32 %17, 0, !dbg !1714
  br i1 %18, label %19, label %24, !dbg !1715

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1690, metadata !727), !dbg !1693
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #13, !dbg !1716
  %21 = icmp eq i32 %20, 0, !dbg !1719
  br i1 %21, label %22, label %24, !dbg !1720

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1721
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1690, metadata !727), !dbg !1693
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1723, !tbaa !735
  br label %24, !dbg !1724

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1690, metadata !727), !dbg !1693
  store i8* %25, i8** @program_name, align 8, !dbg !1725, !tbaa !735
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1726, !tbaa !735
  ret void, !dbg !1727
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1728 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1733, metadata !727), !dbg !1736
  %2 = tail call i32* @__errno_location() #1, !dbg !1737
  %3 = load i32, i32* %2, align 4, !dbg !1737, !tbaa !847
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1734, metadata !727), !dbg !1738
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1739
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1740
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1740
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1742
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1735, metadata !727), !dbg !1743
  store i32 %3, i32* %2, align 4, !dbg !1744, !tbaa !847
  ret %struct.quoting_options* %8, !dbg !1745
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1746 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1752, metadata !727), !dbg !1753
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1754
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1754
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1755
  %5 = load i32, i32* %4, align 8, !dbg !1755, !tbaa !1757
  ret i32 %5, !dbg !1759
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1760 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1764, metadata !727), !dbg !1766
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1765, metadata !727), !dbg !1767
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1768
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1768
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1769
  store i32 %1, i32* %5, align 8, !dbg !1771, !tbaa !1757
  ret void, !dbg !1772
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1773 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1777, metadata !727), !dbg !1785
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1778, metadata !727), !dbg !1786
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1779, metadata !727), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1780, metadata !727), !dbg !1788
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1789
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1789
  %6 = lshr i8 %1, 5, !dbg !1790
  %7 = zext i8 %6 to i64, !dbg !1790
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1792
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1781, metadata !727), !dbg !1793
  %9 = and i8 %1, 31, !dbg !1794
  %10 = zext i8 %9 to i32, !dbg !1795
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1783, metadata !727), !dbg !1796
  %11 = load i32, i32* %8, align 4, !dbg !1797, !tbaa !847
  %12 = lshr i32 %11, %10, !dbg !1798
  %13 = and i32 %12, 1, !dbg !1799
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1784, metadata !727), !dbg !1800
  %14 = and i32 %2, 1, !dbg !1801
  %15 = xor i32 %13, %14, !dbg !1802
  %16 = shl i32 %15, %10, !dbg !1803
  %17 = xor i32 %16, %11, !dbg !1804
  store i32 %17, i32* %8, align 4, !dbg !1804, !tbaa !847
  ret i32 %13, !dbg !1805
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1806 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1810, metadata !727), !dbg !1813
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1811, metadata !727), !dbg !1814
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1815
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1810, metadata !727), !dbg !1813
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1817
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1810, metadata !727), !dbg !1813
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1818
  %6 = load i32, i32* %5, align 4, !dbg !1818, !tbaa !1819
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1812, metadata !727), !dbg !1820
  store i32 %1, i32* %5, align 4, !dbg !1821, !tbaa !1819
  ret i32 %6, !dbg !1822
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1823 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1827, metadata !727), !dbg !1830
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1828, metadata !727), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1829, metadata !727), !dbg !1832
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !727), !dbg !1830
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1835
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !727), !dbg !1830
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1836
  store i32 10, i32* %6, align 8, !dbg !1837, !tbaa !1757
  %7 = icmp ne i8* %1, null, !dbg !1838
  %8 = icmp ne i8* %2, null, !dbg !1840
  %9 = and i1 %7, %8, !dbg !1842
  br i1 %9, label %11, label %10, !dbg !1842

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1843
  unreachable, !dbg !1843

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1844
  store i8* %1, i8** %12, align 8, !dbg !1845, !tbaa !1846
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1847
  store i8* %2, i8** %13, align 8, !dbg !1848, !tbaa !1849
  ret void, !dbg !1850
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1851 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1855, metadata !727), !dbg !1863
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1856, metadata !727), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1857, metadata !727), !dbg !1865
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1858, metadata !727), !dbg !1866
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1859, metadata !727), !dbg !1867
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1868
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1860, metadata !727), !dbg !1869
  %8 = tail call i32* @__errno_location() #1, !dbg !1870
  %9 = load i32, i32* %8, align 4, !dbg !1870, !tbaa !847
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1861, metadata !727), !dbg !1871
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1872
  %11 = load i32, i32* %10, align 8, !dbg !1872, !tbaa !1757
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1873
  %13 = load i32, i32* %12, align 4, !dbg !1873, !tbaa !1819
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1874
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1875
  %16 = load i8*, i8** %15, align 8, !dbg !1875, !tbaa !1846
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1876
  %18 = load i8*, i8** %17, align 8, !dbg !1876, !tbaa !1849
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1877
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1862, metadata !727), !dbg !1878
  store i32 %9, i32* %8, align 4, !dbg !1879, !tbaa !847
  ret i64 %19, !dbg !1880
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1881 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1887, metadata !727), !dbg !1950
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1888, metadata !727), !dbg !1951
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1889, metadata !727), !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1890, metadata !727), !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1891, metadata !727), !dbg !1954
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1892, metadata !727), !dbg !1955
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1893, metadata !727), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1894, metadata !727), !dbg !1957
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1895, metadata !727), !dbg !1958
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1897, metadata !727), !dbg !1959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1898, metadata !727), !dbg !1960
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1899, metadata !727), !dbg !1961
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1900, metadata !727), !dbg !1962
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1901, metadata !727), !dbg !1963
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1964
  %14 = icmp eq i64 %13, 1, !dbg !1965
  %15 = lshr i32 %5, 1, !dbg !1966
  %16 = trunc i32 %15 to i8, !dbg !1966
  %17 = and i8 %16, 1, !dbg !1966
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1903, metadata !727), !dbg !1966
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !727), !dbg !1967
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1905, metadata !727), !dbg !1968
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1906, metadata !727), !dbg !1969
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1970

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1888, metadata !727), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1906, metadata !727), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1905, metadata !727), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1903, metadata !727), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1890, metadata !727), !dbg !1953
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1901, metadata !727), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1900, metadata !727), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1899, metadata !727), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1898, metadata !727), !dbg !1960
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1895, metadata !727), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1894, metadata !727), !dbg !1957
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1891, metadata !727), !dbg !1954
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
  ], !dbg !1971

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1891, metadata !727), !dbg !1954
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1903, metadata !727), !dbg !1966
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1903, metadata !727), !dbg !1966
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1891, metadata !727), !dbg !1954
  br label %95, !dbg !1972

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1903, metadata !727), !dbg !1966
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1891, metadata !727), !dbg !1954
  %43 = and i8 %36, 1, !dbg !1974
  %44 = icmp eq i8 %43, 0, !dbg !1974
  br i1 %44, label %45, label %95, !dbg !1972

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1976
  br i1 %46, label %95, label %47, !dbg !1980

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1982, !tbaa !836
  br label %95, !dbg !1982

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %28), !dbg !1984
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1894, metadata !727), !dbg !1957
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %28), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1895, metadata !727), !dbg !1958
  br label %51, !dbg !1989

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1895, metadata !727), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1894, metadata !727), !dbg !1957
  %54 = and i8 %36, 1, !dbg !1990
  %55 = icmp eq i8 %54, 0, !dbg !1990
  br i1 %55, label %56, label %73, !dbg !1992

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1899, metadata !727), !dbg !1961
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1897, metadata !727), !dbg !1959
  %57 = load i8, i8* %52, align 1, !dbg !1993, !tbaa !836
  %58 = icmp eq i8 %57, 0, !dbg !1997
  br i1 %58, label %73, label %59, !dbg !1997

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1999

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1999
  br i1 %64, label %65, label %67, !dbg !2003

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2005
  store i8 %61, i8* %66, align 1, !dbg !2005, !tbaa !836
  br label %67, !dbg !2005

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1897, metadata !727), !dbg !1959
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1899, metadata !727), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1899, metadata !727), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1897, metadata !727), !dbg !1959
  %70 = load i8, i8* %69, align 1, !dbg !1993, !tbaa !836
  %71 = icmp eq i8 %70, 0, !dbg !1997
  br i1 %71, label %72, label %60, !dbg !1997, !llvm.loop !2011

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1959

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1901, metadata !727), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1899, metadata !727), !dbg !1961
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1900, metadata !727), !dbg !1962
  br label %95, !dbg !2015

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1901, metadata !727), !dbg !1963
  br label %77, !dbg !2016

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1901, metadata !727), !dbg !1963
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1903, metadata !727), !dbg !1966
  br label %79, !dbg !2017

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1903, metadata !727), !dbg !1966
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1901, metadata !727), !dbg !1963
  %82 = and i8 %81, 1, !dbg !2018
  %83 = icmp eq i8 %82, 0, !dbg !2018
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1901, metadata !727), !dbg !1963
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2020
  br label %85, !dbg !2020

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1903, metadata !727), !dbg !1966
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1901, metadata !727), !dbg !1963
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1891, metadata !727), !dbg !1954
  %88 = and i8 %87, 1, !dbg !2021
  %89 = icmp eq i8 %88, 0, !dbg !2021
  br i1 %89, label %90, label %95, !dbg !2023

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2024
  br i1 %91, label %95, label %92, !dbg !2028

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2030, !tbaa !836
  br label %95, !dbg !2030

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1903, metadata !727), !dbg !1966
  br label %95, !dbg !2032

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2033
  unreachable, !dbg !2033

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1903, metadata !727), !dbg !1966
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1901, metadata !727), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1900, metadata !727), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1899, metadata !727), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1895, metadata !727), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1894, metadata !727), !dbg !1957
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1891, metadata !727), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1896, metadata !727), !dbg !2034
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
  br label %123, !dbg !2035

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1888, metadata !727), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1906, metadata !727), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1905, metadata !727), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1890, metadata !727), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1898, metadata !727), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1896, metadata !727), !dbg !2034
  %132 = icmp eq i64 %127, -1, !dbg !2036
  br i1 %132, label %135, label %133, !dbg !2038

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2039
  br i1 %134, label %597, label %139, !dbg !2041

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2043
  %137 = load i8, i8* %136, align 1, !dbg !2043, !tbaa !836
  %138 = icmp eq i8 %137, 0, !dbg !2045
  br i1 %138, label %597, label %139, !dbg !2041

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1912, metadata !727), !dbg !2046
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1913, metadata !727), !dbg !2047
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1914, metadata !727), !dbg !2048
  br i1 %109, label %140, label %155, !dbg !2049

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2051
  %142 = and i1 %110, %132, !dbg !2053
  br i1 %142, label %143, label %145, !dbg !2053

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1890, metadata !727), !dbg !1953
  br label %145, !dbg !2055

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1890, metadata !727), !dbg !1953
  %147 = icmp ugt i64 %141, %146, !dbg !2057
  br i1 %147, label %155, label %148, !dbg !2059

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2060
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2061
  %151 = icmp ne i32 %150, 0, !dbg !2062
  %152 = or i1 %151, %112, !dbg !2062
  %153 = xor i1 %151, true, !dbg !2062
  %154 = zext i1 %153 to i8, !dbg !2062
  br i1 %152, label %155, label %644, !dbg !2062

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1912, metadata !727), !dbg !2046
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1890, metadata !727), !dbg !1953
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2064
  %159 = load i8, i8* %158, align 1, !dbg !2064, !tbaa !836
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1907, metadata !727), !dbg !2065
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
  ], !dbg !2066

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2067

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2068

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1913, metadata !727), !dbg !2047
  %163 = and i8 %128, 1, !dbg !2073
  %164 = icmp eq i8 %163, 0, !dbg !2073
  %165 = and i1 %114, %164, !dbg !2076
  br i1 %165, label %166, label %182, !dbg !2076

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2078
  br i1 %167, label %168, label %170, !dbg !2083

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2085
  store i8 39, i8* %169, align 1, !dbg !2085, !tbaa !836
  br label %170, !dbg !2085

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1897, metadata !727), !dbg !1959
  %172 = icmp ult i64 %171, %131, !dbg !2089
  br i1 %172, label %173, label %175, !dbg !2093

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2095
  store i8 36, i8* %174, align 1, !dbg !2095, !tbaa !836
  br label %175, !dbg !2095

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1897, metadata !727), !dbg !1959
  %177 = icmp ult i64 %176, %131, !dbg !2099
  br i1 %177, label %178, label %180, !dbg !2103

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2105
  store i8 39, i8* %179, align 1, !dbg !2105, !tbaa !836
  br label %180, !dbg !2105

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1904, metadata !727), !dbg !1967
  br label %182, !dbg !2109

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1897, metadata !727), !dbg !1959
  %185 = icmp ult i64 %183, %131, !dbg !2111
  br i1 %185, label %186, label %188, !dbg !2115

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2117
  store i8 92, i8* %187, align 1, !dbg !2117, !tbaa !836
  br label %188, !dbg !2117

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1897, metadata !727), !dbg !1959
  br i1 %106, label %190, label %476, !dbg !2121

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2123
  %192 = icmp ult i64 %191, %156, !dbg !2125
  br i1 %192, label %193, label %476, !dbg !2126

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2127
  %195 = load i8, i8* %194, align 1, !dbg !2127, !tbaa !836
  %196 = add i8 %195, -48, !dbg !2129
  %197 = icmp ult i8 %196, 10, !dbg !2129
  br i1 %197, label %198, label %476, !dbg !2129

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2130
  br i1 %199, label %200, label %202, !dbg !2135

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2137
  store i8 48, i8* %201, align 1, !dbg !2137, !tbaa !836
  br label %202, !dbg !2137

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1897, metadata !727), !dbg !1959
  %204 = icmp ult i64 %203, %131, !dbg !2141
  br i1 %204, label %205, label %207, !dbg !2145

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2147
  store i8 48, i8* %206, align 1, !dbg !2147, !tbaa !836
  br label %207, !dbg !2147

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1897, metadata !727), !dbg !1959
  br label %476, !dbg !2151

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2152

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2153

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2154

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2156

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2158
  %215 = icmp ult i64 %214, %156, !dbg !2160
  br i1 %215, label %216, label %476, !dbg !2161

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2162
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2164
  %219 = load i8, i8* %218, align 1, !dbg !2164, !tbaa !836
  %220 = icmp eq i8 %219, 63, !dbg !2165
  br i1 %220, label %221, label %476, !dbg !2166

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2168
  %223 = load i8, i8* %222, align 1, !dbg !2168, !tbaa !836
  %224 = sext i8 %223 to i32, !dbg !2168
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
  ], !dbg !2169

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2170

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1907, metadata !727), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1896, metadata !727), !dbg !2034
  %227 = icmp ult i64 %125, %131, !dbg !2172
  br i1 %227, label %228, label %230, !dbg !2176

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2178
  store i8 63, i8* %229, align 1, !dbg !2178, !tbaa !836
  br label %230, !dbg !2178

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1897, metadata !727), !dbg !1959
  %232 = icmp ult i64 %231, %131, !dbg !2182
  br i1 %232, label %233, label %235, !dbg !2186

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2188
  store i8 34, i8* %234, align 1, !dbg !2188, !tbaa !836
  br label %235, !dbg !2188

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1897, metadata !727), !dbg !1959
  %237 = icmp ult i64 %236, %131, !dbg !2192
  br i1 %237, label %238, label %240, !dbg !2196

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2198
  store i8 34, i8* %239, align 1, !dbg !2198, !tbaa !836
  br label %240, !dbg !2198

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1897, metadata !727), !dbg !1959
  %242 = icmp ult i64 %241, %131, !dbg !2202
  br i1 %242, label %243, label %245, !dbg !2206

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2208
  store i8 63, i8* %244, align 1, !dbg !2208, !tbaa !836
  br label %245, !dbg !2208

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1897, metadata !727), !dbg !1959
  br label %476, !dbg !2212

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1911, metadata !727), !dbg !2213
  br label %257, !dbg !2214

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1911, metadata !727), !dbg !2213
  br label %257, !dbg !2215

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1911, metadata !727), !dbg !2213
  br label %255, !dbg !2216

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1911, metadata !727), !dbg !2213
  br label %255, !dbg !2217

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1911, metadata !727), !dbg !2213
  br label %257, !dbg !2218

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1911, metadata !727), !dbg !2213
  br i1 %114, label %253, label %254, !dbg !2219

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2220

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2223

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1911, metadata !727), !dbg !2213
  br i1 %118, label %257, label %644, !dbg !2225

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1911, metadata !727), !dbg !2213
  br i1 %105, label %503, label %476, !dbg !2227

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2228
  br i1 %260, label %261, label %266, !dbg !2230

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2231, !tbaa !836
  %263 = icmp ne i8 %262, 0, !dbg !2233
  %264 = icmp ne i64 %124, 0, !dbg !2234
  %265 = or i1 %264, %263, !dbg !2236
  br i1 %265, label %476, label %272, !dbg !2236

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2237
  %268 = icmp ne i64 %124, 0, !dbg !2234
  %269 = or i1 %268, %267, !dbg !2239
  br i1 %269, label %476, label %272, !dbg !2239

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2234
  br i1 %271, label %272, label %476, !dbg !2241

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1914, metadata !727), !dbg !2048
  br label %273, !dbg !2242

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1914, metadata !727), !dbg !2048
  br i1 %118, label %476, label %644, !dbg !2243

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1905, metadata !727), !dbg !1968
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1914, metadata !727), !dbg !2048
  br i1 %114, label %276, label %476, !dbg !2245

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2246

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2249
  %279 = icmp ne i64 %126, 0, !dbg !2251
  %280 = or i1 %279, %278, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1898, metadata !727), !dbg !1960
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1888, metadata !727), !dbg !1951
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2253
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1888, metadata !727), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1898, metadata !727), !dbg !1960
  %283 = icmp ult i64 %125, %282, !dbg !2254
  br i1 %283, label %284, label %286, !dbg !2258

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2260
  store i8 39, i8* %285, align 1, !dbg !2260, !tbaa !836
  br label %286, !dbg !2260

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1897, metadata !727), !dbg !1959
  %288 = icmp ult i64 %287, %282, !dbg !2264
  br i1 %288, label %289, label %291, !dbg !2268

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2270
  store i8 92, i8* %290, align 1, !dbg !2270, !tbaa !836
  br label %291, !dbg !2270

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1897, metadata !727), !dbg !1959
  %293 = icmp ult i64 %292, %282, !dbg !2274
  br i1 %293, label %294, label %296, !dbg !2278

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2280
  store i8 39, i8* %295, align 1, !dbg !2280, !tbaa !836
  br label %296, !dbg !2280

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !727), !dbg !1967
  br label %476, !dbg !2284

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2285

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1915, metadata !727), !dbg !2286
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2287
  %301 = load i16*, i16** %300, align 8, !dbg !2287, !tbaa !735
  %302 = zext i8 %159 to i64, !dbg !2287
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2287
  %304 = load i16, i16* %303, align 2, !dbg !2287, !tbaa !1028
  %305 = lshr i16 %304, 14, !dbg !2289
  %306 = trunc i16 %305 to i8, !dbg !2289
  %307 = and i8 %306, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1918, metadata !727), !dbg !2290
  br label %368, !dbg !2291

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2292
  store i64 0, i64* %10, align 8, !dbg !2293
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1915, metadata !727), !dbg !2286
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1918, metadata !727), !dbg !2290
  %309 = icmp eq i64 %156, -1, !dbg !2294
  br i1 %309, label %310, label %312, !dbg !2296, !llvm.loop !2297

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1890, metadata !727), !dbg !1953
  br label %312, !dbg !2301, !llvm.loop !2297

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2290

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1918, metadata !727), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1915, metadata !727), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1890, metadata !727), !dbg !1953
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2302
  %317 = add i64 %315, %124, !dbg !2303
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2304
  %319 = sub i64 %313, %317, !dbg !2305
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1919, metadata !959), !dbg !2306
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1936, metadata !959), !dbg !2307
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1939, metadata !727), !dbg !2309
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2310

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1915, metadata !727), !dbg !2286
  %322 = icmp ugt i64 %313, %317, !dbg !2311
  br i1 %322, label %323, label %351, !dbg !2314

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2315

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2315
  %328 = load i8, i8* %327, align 1, !dbg !2315, !tbaa !836
  %329 = icmp eq i8 %328, 0, !dbg !2317
  br i1 %329, label %348, label %330, !dbg !2318

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1915, metadata !727), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1915, metadata !727), !dbg !2286
  %332 = add i64 %331, %124, !dbg !2321
  %333 = icmp ult i64 %332, %313, !dbg !2311
  br i1 %333, label %324, label %348, !dbg !2314, !llvm.loop !2322

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2324
  %336 = and i1 %116, %335, !dbg !2328
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1940, metadata !727), !dbg !2329
  br i1 %336, label %337, label %355, !dbg !2328

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2330

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2330
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2331
  %342 = load i8, i8* %341, align 1, !dbg !2331, !tbaa !836
  %343 = sext i8 %342 to i32, !dbg !2331
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2332

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1940, metadata !727), !dbg !2329
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1940, metadata !727), !dbg !2329
  %346 = icmp ult i64 %345, %320, !dbg !2324
  br i1 %346, label %338, label %354, !dbg !2335, !llvm.loop !2337

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2290

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2290

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2290

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1918, metadata !727), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1915, metadata !727), !dbg !2286
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2340
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2341

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2341, !tbaa !847
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1936, metadata !727), !dbg !2307
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2343
  %358 = icmp eq i32 %357, 0, !dbg !2343
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1918, metadata !727), !dbg !2290
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2344
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1918, metadata !727), !dbg !2290
  %360 = add i64 %320, %315, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1915, metadata !727), !dbg !2286
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1918, metadata !727), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1915, metadata !727), !dbg !2286
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2340
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1919, metadata !959), !dbg !2306
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2346
  %362 = icmp eq i32 %361, 0, !dbg !2347
  br i1 %362, label %314, label %363, !dbg !2348, !llvm.loop !2297

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2350

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2350
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1918, metadata !727), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1915, metadata !727), !dbg !2286
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2340
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2350
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1918, metadata !727), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1915, metadata !727), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1890, metadata !727), !dbg !1953
  %372 = and i8 %371, 1, !dbg !2351
  %373 = icmp ne i8 %372, 0, !dbg !2351
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1914, metadata !727), !dbg !2048
  %374 = icmp ult i64 %370, 2, !dbg !2352
  %375 = or i1 %373, %113, !dbg !2353
  %376 = and i1 %374, %375, !dbg !2355
  br i1 %376, label %476, label %377, !dbg !2355

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1947, metadata !727), !dbg !2357
  br label %379, !dbg !2358

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1913, metadata !727), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1912, metadata !727), !dbg !2046
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1907, metadata !727), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1896, metadata !727), !dbg !2034
  br i1 %375, label %432, label %386, !dbg !2359

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2364

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1913, metadata !727), !dbg !2047
  %388 = and i8 %382, 1, !dbg !2368
  %389 = icmp eq i8 %388, 0, !dbg !2368
  %390 = and i1 %114, %389, !dbg !2371
  br i1 %390, label %391, label %407, !dbg !2371

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2373
  br i1 %392, label %393, label %395, !dbg !2378

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2380
  store i8 39, i8* %394, align 1, !dbg !2380, !tbaa !836
  br label %395, !dbg !2380

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1897, metadata !727), !dbg !1959
  %397 = icmp ult i64 %396, %131, !dbg !2384
  br i1 %397, label %398, label %400, !dbg !2388

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2390
  store i8 36, i8* %399, align 1, !dbg !2390, !tbaa !836
  br label %400, !dbg !2390

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1897, metadata !727), !dbg !1959
  %402 = icmp ult i64 %401, %131, !dbg !2394
  br i1 %402, label %403, label %405, !dbg !2398

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2400
  store i8 39, i8* %404, align 1, !dbg !2400, !tbaa !836
  br label %405, !dbg !2400

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1904, metadata !727), !dbg !1967
  br label %407, !dbg !2404

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1897, metadata !727), !dbg !1959
  %410 = icmp ult i64 %408, %131, !dbg !2406
  br i1 %410, label %411, label %413, !dbg !2410

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2412
  store i8 92, i8* %412, align 1, !dbg !2412, !tbaa !836
  br label %413, !dbg !2412

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1897, metadata !727), !dbg !1959
  %415 = icmp ult i64 %414, %131, !dbg !2416
  br i1 %415, label %416, label %420, !dbg !2420

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2422
  %418 = or i8 %417, 48, !dbg !2422
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2422
  store i8 %418, i8* %419, align 1, !dbg !2422, !tbaa !836
  br label %420, !dbg !2422

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1897, metadata !727), !dbg !1959
  %422 = icmp ult i64 %421, %131, !dbg !2426
  br i1 %422, label %423, label %428, !dbg !2430

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2432
  %425 = and i8 %424, 7, !dbg !2432
  %426 = or i8 %425, 48, !dbg !2432
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2432
  store i8 %426, i8* %427, align 1, !dbg !2432, !tbaa !836
  br label %428, !dbg !2432

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1897, metadata !727), !dbg !1959
  %430 = and i8 %383, 7, !dbg !2436
  %431 = or i8 %430, 48, !dbg !2437
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1907, metadata !727), !dbg !2065
  br label %441, !dbg !2438

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2439
  %434 = icmp eq i8 %433, 0, !dbg !2439
  br i1 %434, label %441, label %435, !dbg !2441

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2442
  br i1 %436, label %437, label %439, !dbg !2447

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2449
  store i8 92, i8* %438, align 1, !dbg !2449, !tbaa !836
  br label %439, !dbg !2449

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1912, metadata !727), !dbg !2046
  br label %441, !dbg !2453

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1913, metadata !727), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1912, metadata !727), !dbg !2046
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1907, metadata !727), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1897, metadata !727), !dbg !1959
  %447 = add i64 %380, 1, !dbg !2454
  %448 = icmp ugt i64 %378, %447, !dbg !2456
  br i1 %448, label %449, label %541, !dbg !2457

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2458
  %451 = icmp ne i8 %450, 0, !dbg !2458
  %452 = and i8 %446, 1, !dbg !2462
  %453 = icmp eq i8 %452, 0, !dbg !2462
  %454 = and i1 %451, %453, !dbg !2458
  br i1 %454, label %455, label %466, !dbg !2458

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2464
  br i1 %456, label %457, label %459, !dbg !2469

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2471
  store i8 39, i8* %458, align 1, !dbg !2471, !tbaa !836
  br label %459, !dbg !2471

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1897, metadata !727), !dbg !1959
  %461 = icmp ult i64 %460, %131, !dbg !2475
  br i1 %461, label %462, label %464, !dbg !2479

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2481
  store i8 39, i8* %463, align 1, !dbg !2481, !tbaa !836
  br label %464, !dbg !2481

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !727), !dbg !1967
  br label %466, !dbg !2485

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1897, metadata !727), !dbg !1959
  %469 = icmp ult i64 %467, %131, !dbg !2487
  br i1 %469, label %470, label %472, !dbg !2491

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2493
  store i8 %444, i8* %471, align 1, !dbg !2493, !tbaa !836
  br label %472, !dbg !2493

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1896, metadata !727), !dbg !2034
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2497
  %475 = load i8, i8* %474, align 1, !dbg !2497, !tbaa !836
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1907, metadata !727), !dbg !2065
  br label %379, !dbg !2498, !llvm.loop !2500

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1888, metadata !727), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1914, metadata !727), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1913, metadata !727), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1912, metadata !727), !dbg !2046
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1907, metadata !727), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1905, metadata !727), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1890, metadata !727), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1898, metadata !727), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1896, metadata !727), !dbg !2034
  br i1 %107, label %488, label %487, !dbg !2503

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2505

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2506

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2507
  %491 = zext i8 %490 to i64, !dbg !2507
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2509
  %493 = load i32, i32* %492, align 4, !dbg !2509, !tbaa !847
  %494 = and i8 %483, 31, !dbg !2510
  %495 = zext i8 %494 to i32, !dbg !2511
  %496 = shl i32 1, %495, !dbg !2512
  %497 = and i32 %493, %496, !dbg !2512
  %498 = icmp eq i32 %497, 0, !dbg !2512
  %499 = icmp eq i8 %157, 0, !dbg !2513
  %500 = and i1 %499, %498, !dbg !2514
  br i1 %500, label %542, label %503, !dbg !2514

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2513
  br i1 %502, label %542, label %503, !dbg !2515

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1888, metadata !727), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1914, metadata !727), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1907, metadata !727), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1905, metadata !727), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1890, metadata !727), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1898, metadata !727), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1896, metadata !727), !dbg !2034
  br i1 %112, label %513, label %644, !dbg !2517

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1913, metadata !727), !dbg !2047
  %514 = and i8 %508, 1, !dbg !2520
  %515 = icmp eq i8 %514, 0, !dbg !2520
  %516 = and i1 %114, %515, !dbg !2523
  br i1 %516, label %517, label %533, !dbg !2523

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2525
  br i1 %518, label %519, label %521, !dbg !2530

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2532
  store i8 39, i8* %520, align 1, !dbg !2532, !tbaa !836
  br label %521, !dbg !2532

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1897, metadata !727), !dbg !1959
  %523 = icmp ult i64 %522, %512, !dbg !2536
  br i1 %523, label %524, label %526, !dbg !2540

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2542
  store i8 36, i8* %525, align 1, !dbg !2542, !tbaa !836
  br label %526, !dbg !2542

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1897, metadata !727), !dbg !1959
  %528 = icmp ult i64 %527, %512, !dbg !2546
  br i1 %528, label %529, label %531, !dbg !2550

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2552
  store i8 39, i8* %530, align 1, !dbg !2552, !tbaa !836
  br label %531, !dbg !2552

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1904, metadata !727), !dbg !1967
  br label %533, !dbg !2556

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1897, metadata !727), !dbg !1959
  %536 = icmp ult i64 %534, %512, !dbg !2558
  br i1 %536, label %537, label %539, !dbg !2562

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2564
  store i8 92, i8* %538, align 1, !dbg !2564, !tbaa !836
  br label %539, !dbg !2564

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1888, metadata !727), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1914, metadata !727), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1913, metadata !727), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1907, metadata !727), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1905, metadata !727), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1890, metadata !727), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1898, metadata !727), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1896, metadata !727), !dbg !2034
  br label %569, !dbg !2568

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1951

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1888, metadata !727), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1914, metadata !727), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1913, metadata !727), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1907, metadata !727), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1905, metadata !727), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1890, metadata !727), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1898, metadata !727), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1896, metadata !727), !dbg !2034
  %553 = and i8 %547, 1, !dbg !2568
  %554 = icmp ne i8 %553, 0, !dbg !2568
  %555 = and i8 %550, 1, !dbg !2572
  %556 = icmp eq i8 %555, 0, !dbg !2572
  %557 = and i1 %554, %556, !dbg !2568
  br i1 %557, label %558, label %569, !dbg !2568

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2574
  br i1 %559, label %560, label %562, !dbg !2579

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2581
  store i8 39, i8* %561, align 1, !dbg !2581, !tbaa !836
  br label %562, !dbg !2581

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1897, metadata !727), !dbg !1959
  %564 = icmp ult i64 %563, %552, !dbg !2585
  br i1 %564, label %565, label %567, !dbg !2589

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2591
  store i8 39, i8* %566, align 1, !dbg !2591, !tbaa !836
  br label %567, !dbg !2591

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1897, metadata !727), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !727), !dbg !1967
  br label %569, !dbg !2595

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1904, metadata !727), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1897, metadata !727), !dbg !1959
  %579 = icmp ult i64 %577, %570, !dbg !2597
  br i1 %579, label %580, label %582, !dbg !2601

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2603
  store i8 %572, i8* %581, align 1, !dbg !2603, !tbaa !836
  br label %582, !dbg !2603

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1897, metadata !727), !dbg !1959
  %584 = and i8 %571, 1, !dbg !2607
  %585 = icmp eq i8 %584, 0, !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1906, metadata !727), !dbg !1969
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2609
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1906, metadata !727), !dbg !1969
  br label %587, !dbg !2610

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1896, metadata !727), !dbg !2034
  br label %123, !dbg !2613, !llvm.loop !2614

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2617
  %600 = and i1 %114, %599, !dbg !2619
  %601 = xor i1 %600, true, !dbg !2619
  %602 = or i1 %112, %601, !dbg !2619
  br i1 %602, label %603, label %648, !dbg !2619

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2620
  %605 = xor i1 %604, true, !dbg !2620
  %606 = and i8 %129, 1, !dbg !2622
  %607 = icmp eq i8 %606, 0, !dbg !2622
  %608 = or i1 %607, %605, !dbg !2620
  br i1 %608, label %618, label %609, !dbg !2620

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2624
  %611 = icmp eq i8 %610, 0, !dbg !2624
  br i1 %611, label %614, label %612, !dbg !2627

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2628
  br label %659, !dbg !2629

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2630
  %616 = icmp ne i64 %126, 0, !dbg !2632
  %617 = and i1 %616, %615, !dbg !2634
  br i1 %617, label %27, label %618, !dbg !2634

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2635
  %620 = and i1 %619, %112, !dbg !2637
  br i1 %620, label %621, label %638, !dbg !2637

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1899, metadata !727), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1897, metadata !727), !dbg !1959
  %622 = load i8, i8* %100, align 1, !dbg !2638, !tbaa !836
  %623 = icmp eq i8 %622, 0, !dbg !2642
  br i1 %623, label %638, label %624, !dbg !2642

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2644

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2644
  br i1 %629, label %630, label %632, !dbg !2648

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2650
  store i8 %626, i8* %631, align 1, !dbg !2650, !tbaa !836
  br label %632, !dbg !2650

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1897, metadata !727), !dbg !1959
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2654
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1899, metadata !727), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1899, metadata !727), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1897, metadata !727), !dbg !1959
  %635 = load i8, i8* %634, align 1, !dbg !2638, !tbaa !836
  %636 = icmp eq i8 %635, 0, !dbg !2642
  br i1 %636, label %637, label %625, !dbg !2642, !llvm.loop !2656

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1959

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1897, metadata !727), !dbg !1959
  %640 = icmp ult i64 %639, %131, !dbg !2659
  br i1 %640, label %641, label %659, !dbg !2661

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2662
  store i8 0, i8* %642, align 1, !dbg !2663, !tbaa !836
  br label %659, !dbg !2662

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1951

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1951

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1951

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1888, metadata !727), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1890, metadata !727), !dbg !1953
  %653 = icmp ne i32 %650, 2, !dbg !2664
  %654 = icmp eq i8 %104, 0, !dbg !2666
  %655 = or i1 %653, %654, !dbg !2668
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1891, metadata !727), !dbg !1954
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2668
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1891, metadata !727), !dbg !1954
  %657 = and i32 %5, -3, !dbg !2669
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2670
  br label %659, !dbg !2671

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2672
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2673 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2677, metadata !727), !dbg !2681
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2678, metadata !727), !dbg !2682
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2683
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2679, metadata !727), !dbg !2684
  %4 = icmp eq i8* %3, %0, !dbg !2685
  br i1 %4, label %5, label %75, !dbg !2687

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2688
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2680, metadata !727), !dbg !2689
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2690, metadata !727), !dbg !2706
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2704, metadata !727), !dbg !2709
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2705, metadata !727), !dbg !2710
  %7 = load i8, i8* %6, align 1, !tbaa !836
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2711
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2711

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2714, metadata !727), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2726, metadata !727), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2727, metadata !727), !dbg !2733
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !836
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2734
  %15 = icmp eq i32 %14, 84, !dbg !2734
  br i1 %15, label %16, label %72, !dbg !2734

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2737, metadata !727), !dbg !2750
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2748, metadata !727), !dbg !2754
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2749, metadata !727), !dbg !2755
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !836
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2756
  %21 = icmp eq i32 %20, 70, !dbg !2756
  br i1 %21, label %22, label %72, !dbg !2756

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2759, metadata !727), !dbg !2771
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2769, metadata !727), !dbg !2775
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2770, metadata !727), !dbg !2776
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !836
  %25 = icmp eq i8 %24, 45, !dbg !2777
  br i1 %25, label %26, label %72, !dbg !2780

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2782, metadata !727), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2791, metadata !727), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2792, metadata !727), !dbg !2798
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !836
  %29 = icmp eq i8 %28, 56, !dbg !2799
  br i1 %29, label %30, label %72, !dbg !2802

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2804, metadata !727), !dbg !2814
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2812, metadata !727), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2813, metadata !727), !dbg !2819
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !836
  %33 = icmp eq i8 %32, 0, !dbg !2820
  br i1 %33, label %34, label %72, !dbg !2823

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2825, !tbaa !836
  %36 = icmp eq i8 %35, 96, !dbg !2826
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !2825
  br label %75, !dbg !2827

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2714, metadata !727), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2726, metadata !727), !dbg !2832
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2727, metadata !727), !dbg !2833
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !836
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2834
  %43 = icmp eq i32 %42, 66, !dbg !2834
  br i1 %43, label %44, label %72, !dbg !2834

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2737, metadata !727), !dbg !2835
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2748, metadata !727), !dbg !2837
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2749, metadata !727), !dbg !2838
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !836
  %47 = icmp eq i8 %46, 49, !dbg !2839
  br i1 %47, label %48, label %72, !dbg !2841

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2759, metadata !727), !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2769, metadata !727), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2770, metadata !727), !dbg !2846
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !836
  %51 = icmp eq i8 %50, 56, !dbg !2847
  br i1 %51, label %52, label %72, !dbg !2848

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2782, metadata !727), !dbg !2849
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2791, metadata !727), !dbg !2851
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2792, metadata !727), !dbg !2852
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !836
  %55 = icmp eq i8 %54, 48, !dbg !2853
  br i1 %55, label %56, label %72, !dbg !2854

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2804, metadata !727), !dbg !2855
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2812, metadata !727), !dbg !2857
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2813, metadata !727), !dbg !2858
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !836
  %59 = icmp eq i8 %58, 51, !dbg !2859
  br i1 %59, label %60, label %72, !dbg !2860

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2861, metadata !727), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2868, metadata !727), !dbg !2874
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2869, metadata !727), !dbg !2875
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !836
  %63 = icmp eq i8 %62, 48, !dbg !2876
  br i1 %63, label %64, label %72, !dbg !2879

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2881, metadata !727), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2887, metadata !727), !dbg !2893
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2888, metadata !727), !dbg !2894
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !836
  %67 = icmp eq i8 %66, 0, !dbg !2895
  br i1 %67, label %68, label %72, !dbg !2898

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2899, !tbaa !836
  %70 = icmp eq i8 %69, 96, !dbg !2900
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2899
  br label %75, !dbg !2901

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2902
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2903
  br label %75, !dbg !2904

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2905
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2906 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2910, metadata !727), !dbg !2913
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2911, metadata !727), !dbg !2914
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2912, metadata !727), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2916, metadata !727) #10, !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2921, metadata !727) #10, !dbg !2931
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2922, metadata !727) #10, !dbg !2932
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2923, metadata !727) #10, !dbg !2933
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2934
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2924, metadata !727) #10, !dbg !2935
  %6 = tail call i32* @__errno_location() #1, !dbg !2936
  %7 = load i32, i32* %6, align 4, !dbg !2936, !tbaa !847
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2925, metadata !727) #10, !dbg !2937
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2938
  %9 = load i32, i32* %8, align 4, !dbg !2938, !tbaa !1819
  %10 = or i32 %9, 1, !dbg !2939
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2926, metadata !727) #10, !dbg !2940
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2941
  %12 = load i32, i32* %11, align 8, !dbg !2941, !tbaa !1757
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2942
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2943
  %15 = load i8*, i8** %14, align 8, !dbg !2943, !tbaa !1846
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2944
  %17 = load i8*, i8** %16, align 8, !dbg !2944, !tbaa !1849
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2945
  %19 = add i64 %18, 1, !dbg !2946
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2927, metadata !727) #10, !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2948, metadata !727) #10, !dbg !2953
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2928, metadata !727) #10, !dbg !2956
  %21 = load i32, i32* %11, align 8, !dbg !2957, !tbaa !1757
  %22 = load i8*, i8** %14, align 8, !dbg !2958, !tbaa !1846
  %23 = load i8*, i8** %16, align 8, !dbg !2959, !tbaa !1849
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2960
  store i32 %7, i32* %6, align 4, !dbg !2961, !tbaa !847
  ret i8* %20, !dbg !2962
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2917 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2916, metadata !727), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2921, metadata !727), !dbg !2964
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2922, metadata !727), !dbg !2965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2923, metadata !727), !dbg !2966
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2967
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2924, metadata !727), !dbg !2968
  %7 = tail call i32* @__errno_location() #1, !dbg !2969
  %8 = load i32, i32* %7, align 4, !dbg !2969, !tbaa !847
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2925, metadata !727), !dbg !2970
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2971
  %10 = load i32, i32* %9, align 4, !dbg !2971, !tbaa !1819
  %11 = icmp ne i64* %2, null, !dbg !2972
  %12 = xor i1 %11, true, !dbg !2972
  %13 = zext i1 %12 to i32, !dbg !2972
  %14 = or i32 %10, %13, !dbg !2973
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2926, metadata !727), !dbg !2974
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2975
  %16 = load i32, i32* %15, align 8, !dbg !2975, !tbaa !1757
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2976
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2977
  %19 = load i8*, i8** %18, align 8, !dbg !2977, !tbaa !1846
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2978
  %21 = load i8*, i8** %20, align 8, !dbg !2978, !tbaa !1849
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2979
  %23 = add i64 %22, 1, !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2927, metadata !727), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2948, metadata !727) #10, !dbg !2982
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2984
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2928, metadata !727), !dbg !2985
  %25 = load i32, i32* %15, align 8, !dbg !2986, !tbaa !1757
  %26 = load i8*, i8** %18, align 8, !dbg !2987, !tbaa !1846
  %27 = load i8*, i8** %20, align 8, !dbg !2988, !tbaa !1849
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2989
  store i32 %8, i32* %7, align 4, !dbg !2990, !tbaa !847
  br i1 %11, label %29, label %30, !dbg !2991

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2992, !tbaa !919
  br label %30, !dbg !2994

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2996 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3000, !tbaa !735
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2998, metadata !727), !dbg !3001
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2999, metadata !727), !dbg !3002
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2999, metadata !727), !dbg !3002
  %2 = load i32, i32* @nslots, align 4, !dbg !3003, !tbaa !847
  %3 = icmp sgt i32 %2, 1, !dbg !3007
  br i1 %3, label %4, label %14, !dbg !3008

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3010

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3010
  %8 = load i8*, i8** %7, align 8, !dbg !3010, !tbaa !3011
  tail call void @free(i8* %8) #10, !dbg !3013
  %9 = add nuw i64 %6, 1, !dbg !3014
  %10 = load i32, i32* @nslots, align 4, !dbg !3003, !tbaa !847
  %11 = sext i32 %10 to i64, !dbg !3007
  %12 = icmp slt i64 %9, %11, !dbg !3007
  br i1 %12, label %5, label %13, !dbg !3008, !llvm.loop !3016

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3019

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3019
  %16 = load i8*, i8** %15, align 8, !dbg !3019, !tbaa !3011
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3021
  br i1 %17, label %19, label %18, !dbg !3022

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3023
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3025, !tbaa !3026
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3027, !tbaa !3011
  br label %19, !dbg !3028

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3029
  br i1 %20, label %23, label %21, !dbg !3031

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3032
  tail call void @free(i8* %22) #10, !dbg !3034
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3035, !tbaa !735
  br label %23, !dbg !3036

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3037, !tbaa !847
  ret void, !dbg !3038
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3039 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3043, metadata !727), !dbg !3045
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3044, metadata !727), !dbg !3046
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3047
  ret i8* %3, !dbg !3048
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3049 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3053, metadata !727), !dbg !3067
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3054, metadata !727), !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3055, metadata !727), !dbg !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3056, metadata !727), !dbg !3070
  %5 = tail call i32* @__errno_location() #1, !dbg !3071
  %6 = load i32, i32* %5, align 4, !dbg !3071, !tbaa !847
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3057, metadata !727), !dbg !3072
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3073, !tbaa !735
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3058, metadata !727), !dbg !3074
  %8 = icmp slt i32 %0, 0, !dbg !3075
  br i1 %8, label %9, label %10, !dbg !3077

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3078
  unreachable, !dbg !3078

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3079, !tbaa !847
  %12 = icmp sgt i32 %11, %0, !dbg !3080
  br i1 %12, label %34, label %13, !dbg !3081

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3082
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3083
  br i1 %15, label %16, label %17, !dbg !3085

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3086
  unreachable, !dbg !3086

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3087
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3087
  %20 = add nsw i32 %0, 1, !dbg !3089
  %21 = sext i32 %20 to i64, !dbg !3090
  %22 = shl nsw i64 %21, 4, !dbg !3091
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3092
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3092
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3058, metadata !727), !dbg !3074
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3093, !tbaa !735
  br i1 %14, label %25, label %26, !dbg !3094

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3095, !tbaa.struct !3097
  br label %26, !dbg !3098

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3099, !tbaa !847
  %28 = sext i32 %27 to i64, !dbg !3100
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3100
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3101
  %31 = sub nsw i32 %20, %27, !dbg !3102
  %32 = sext i32 %31 to i64, !dbg !3103
  %33 = shl nsw i64 %32, 4, !dbg !3104
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3101
  store i32 %20, i32* @nslots, align 4, !dbg !3105, !tbaa !847
  br label %34, !dbg !3106

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3058, metadata !727), !dbg !3074
  %36 = sext i32 %0 to i64, !dbg !3107
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3108
  %38 = load i64, i64* %37, align 8, !dbg !3108, !tbaa !3026
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3062, metadata !727), !dbg !3109
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3110
  %40 = load i8*, i8** %39, align 8, !dbg !3110, !tbaa !3011
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3064, metadata !727), !dbg !3111
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3112
  %42 = load i32, i32* %41, align 4, !dbg !3112, !tbaa !1819
  %43 = or i32 %42, 1, !dbg !3113
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3065, metadata !727), !dbg !3114
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3115
  %45 = load i32, i32* %44, align 8, !dbg !3115, !tbaa !1757
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3116
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3117
  %48 = load i8*, i8** %47, align 8, !dbg !3117, !tbaa !1846
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3118
  %50 = load i8*, i8** %49, align 8, !dbg !3118, !tbaa !1849
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3066, metadata !727), !dbg !3120
  %52 = icmp ugt i64 %38, %51, !dbg !3121
  br i1 %52, label %63, label %53, !dbg !3123

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3062, metadata !727), !dbg !3109
  store i64 %54, i64* %37, align 8, !dbg !3126, !tbaa !3026
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3127
  br i1 %55, label %57, label %56, !dbg !3129

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3130
  br label %57, !dbg !3130

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2948, metadata !727) #10, !dbg !3131
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3133
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3064, metadata !727), !dbg !3111
  store i8* %58, i8** %39, align 8, !dbg !3134, !tbaa !3011
  %59 = load i32, i32* %44, align 8, !dbg !3135, !tbaa !1757
  %60 = load i8*, i8** %47, align 8, !dbg !3136, !tbaa !1846
  %61 = load i8*, i8** %49, align 8, !dbg !3137, !tbaa !1849
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3138
  br label %63, !dbg !3139

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3064, metadata !727), !dbg !3111
  store i32 %6, i32* %5, align 4, !dbg !3140, !tbaa !847
  ret i8* %64, !dbg !3141
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3142 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3146, metadata !727), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3147, metadata !727), !dbg !3150
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3148, metadata !727), !dbg !3151
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3152
  ret i8* %4, !dbg !3153
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3154 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3158, metadata !727), !dbg !3159
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3043, metadata !727) #10, !dbg !3160
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3044, metadata !727) #10, !dbg !3162
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3163
  ret i8* %2, !dbg !3164
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3165 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !727), !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3170, metadata !727), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3146, metadata !727) #10, !dbg !3173
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3147, metadata !727) #10, !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3148, metadata !727) #10, !dbg !3176
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3177
  ret i8* %3, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3179 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3187, metadata !3193), !dbg !3194
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3183, metadata !727), !dbg !3196
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3184, metadata !727), !dbg !3197
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3185, metadata !727), !dbg !3198
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3199
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3186, metadata !959), !dbg !3200
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3192, metadata !727) #10, !dbg !3201
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3202
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3202
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3187, metadata !727) #10, !dbg !3194
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3187, metadata !3203) #10, !dbg !3194
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3194
  %8 = icmp eq i32 %1, 10, !dbg !3204
  br i1 %8, label %9, label %10, !dbg !3206

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3207, !noalias !3208
  unreachable, !dbg !3207

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3187, metadata !3203) #10, !dbg !3194
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3211
  store i32 %1, i32* %11, align 8, !dbg !3211, !alias.scope !3208
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3211
  %13 = bitcast i32* %12 to i8*, !dbg !3211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3211
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3212
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3186, metadata !959), !dbg !3200
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3213
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3214
  ret i8* %14, !dbg !3215
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3216 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3187, metadata !3193), !dbg !3225
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3220, metadata !727), !dbg !3227
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3221, metadata !727), !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3222, metadata !727), !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3223, metadata !727), !dbg !3230
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3231
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3224, metadata !959), !dbg !3232
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3192, metadata !727) #10, !dbg !3233
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3234
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3234
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3187, metadata !727) #10, !dbg !3225
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3187, metadata !3203) #10, !dbg !3225
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3225
  %9 = icmp eq i32 %1, 10, !dbg !3235
  br i1 %9, label %10, label %11, !dbg !3236

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3237, !noalias !3238
  unreachable, !dbg !3237

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3187, metadata !3203) #10, !dbg !3225
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3241
  store i32 %1, i32* %12, align 8, !dbg !3241, !alias.scope !3238
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3241
  %14 = bitcast i32* %13 to i8*, !dbg !3241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3241
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3242
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3224, metadata !959), !dbg !3232
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3243
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3244
  ret i8* %15, !dbg !3245
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3246 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3187, metadata !3193), !dbg !3252
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3250, metadata !727), !dbg !3255
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3251, metadata !727), !dbg !3256
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3183, metadata !727) #10, !dbg !3257
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3184, metadata !727) #10, !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3185, metadata !727) #10, !dbg !3259
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3260
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3260
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3186, metadata !959) #10, !dbg !3261
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3192, metadata !727) #10, !dbg !3262
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3263
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3263
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3187, metadata !727) #10, !dbg !3252
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3187, metadata !3203) #10, !dbg !3252
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3252
  %7 = icmp eq i32 %0, 10, !dbg !3264
  br i1 %7, label %8, label %9, !dbg !3265

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3266, !noalias !3267
  unreachable, !dbg !3266

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3187, metadata !3203) #10, !dbg !3252
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3270
  store i32 %0, i32* %10, align 8, !dbg !3270, !alias.scope !3267
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3270
  %12 = bitcast i32* %11 to i8*, !dbg !3270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3270
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3271
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3186, metadata !959) #10, !dbg !3261
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3272
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3273
  ret i8* %13, !dbg !3274
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3275 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3187, metadata !3193), !dbg !3282
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3279, metadata !727), !dbg !3285
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3280, metadata !727), !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3281, metadata !727), !dbg !3287
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3220, metadata !727) #10, !dbg !3288
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3221, metadata !727) #10, !dbg !3289
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3222, metadata !727) #10, !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3223, metadata !727) #10, !dbg !3291
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3292
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3224, metadata !959) #10, !dbg !3293
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3192, metadata !727) #10, !dbg !3294
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3295
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3295
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3187, metadata !727) #10, !dbg !3282
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3187, metadata !3203) #10, !dbg !3282
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3282
  %8 = icmp eq i32 %0, 10, !dbg !3296
  br i1 %8, label %9, label %10, !dbg !3297

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3298, !noalias !3299
  unreachable, !dbg !3298

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3187, metadata !3203) #10, !dbg !3282
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3302
  store i32 %0, i32* %11, align 8, !dbg !3302, !alias.scope !3299
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3302
  %13 = bitcast i32* %12 to i8*, !dbg !3302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3302
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3303
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3224, metadata !959) #10, !dbg !3293
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3304
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3305
  ret i8* %14, !dbg !3306
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3307 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3311, metadata !727), !dbg !3315
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3312, metadata !727), !dbg !3316
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3313, metadata !727), !dbg !3317
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3318
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3318
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3319, !tbaa.struct !3320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3314, metadata !959), !dbg !3321
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1777, metadata !727), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1778, metadata !727), !dbg !3324
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !727), !dbg !3325
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1780, metadata !727), !dbg !3326
  %6 = lshr i8 %2, 5, !dbg !3327
  %7 = zext i8 %6 to i64, !dbg !3327
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3328
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1781, metadata !727), !dbg !3329
  %9 = and i8 %2, 31, !dbg !3330
  %10 = zext i8 %9 to i32, !dbg !3331
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1783, metadata !727), !dbg !3332
  %11 = load i32, i32* %8, align 4, !dbg !3333, !tbaa !847
  %12 = lshr i32 %11, %10, !dbg !3334
  %13 = and i32 %12, 1, !dbg !3335
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1784, metadata !727), !dbg !3336
  %14 = xor i32 %13, 1, !dbg !3337
  %15 = shl i32 %14, %10, !dbg !3338
  %16 = xor i32 %15, %11, !dbg !3339
  store i32 %16, i32* %8, align 4, !dbg !3339, !tbaa !847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3314, metadata !959), !dbg !3321
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3340
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3341
  ret i8* %17, !dbg !3342
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3343 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3347, metadata !727), !dbg !3349
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3348, metadata !727), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3311, metadata !727) #10, !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3312, metadata !727) #10, !dbg !3353
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3313, metadata !727) #10, !dbg !3354
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3355
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3356, !tbaa.struct !3320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3314, metadata !959) #10, !dbg !3357
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1777, metadata !727) #10, !dbg !3358
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1778, metadata !727) #10, !dbg !3360
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !727) #10, !dbg !3361
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1780, metadata !727) #10, !dbg !3362
  %5 = lshr i8 %1, 5, !dbg !3363
  %6 = zext i8 %5 to i64, !dbg !3363
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3364
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1781, metadata !727) #10, !dbg !3365
  %8 = and i8 %1, 31, !dbg !3366
  %9 = zext i8 %8 to i32, !dbg !3367
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1783, metadata !727) #10, !dbg !3368
  %10 = load i32, i32* %7, align 4, !dbg !3369, !tbaa !847
  %11 = lshr i32 %10, %9, !dbg !3370
  %12 = and i32 %11, 1, !dbg !3371
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1784, metadata !727) #10, !dbg !3372
  %13 = xor i32 %12, 1, !dbg !3373
  %14 = shl i32 %13, %9, !dbg !3374
  %15 = xor i32 %14, %10, !dbg !3375
  store i32 %15, i32* %7, align 4, !dbg !3375, !tbaa !847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3314, metadata !959) #10, !dbg !3357
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3376
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3377
  ret i8* %16, !dbg !3378
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3379 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3381, metadata !727), !dbg !3382
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3347, metadata !727) #10, !dbg !3383
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3348, metadata !727) #10, !dbg !3385
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3311, metadata !727) #10, !dbg !3386
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3312, metadata !727) #10, !dbg !3388
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3313, metadata !727) #10, !dbg !3389
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3390
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3391, !tbaa.struct !3320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3314, metadata !959) #10, !dbg !3392
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1777, metadata !727) #10, !dbg !3393
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1778, metadata !727) #10, !dbg !3395
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !727) #10, !dbg !3396
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1780, metadata !727) #10, !dbg !3397
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3398
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1781, metadata !727) #10, !dbg !3399
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1783, metadata !727) #10, !dbg !3400
  %5 = load i32, i32* %4, align 4, !dbg !3401, !tbaa !847
  %6 = or i32 %5, 67108864, !dbg !3402
  store i32 %6, i32* %4, align 4, !dbg !3402, !tbaa !847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3314, metadata !959) #10, !dbg !3392
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3403
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3404
  ret i8* %7, !dbg !3405
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3406 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3408, metadata !727), !dbg !3410
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3409, metadata !727), !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3311, metadata !727) #10, !dbg !3412
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3312, metadata !727) #10, !dbg !3414
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3313, metadata !727) #10, !dbg !3415
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3416
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3417, !tbaa.struct !3320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3314, metadata !959) #10, !dbg !3418
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1777, metadata !727) #10, !dbg !3419
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1778, metadata !727) #10, !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !727) #10, !dbg !3422
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1780, metadata !727) #10, !dbg !3423
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3424
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1781, metadata !727) #10, !dbg !3425
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1783, metadata !727) #10, !dbg !3426
  %6 = load i32, i32* %5, align 4, !dbg !3427, !tbaa !847
  %7 = or i32 %6, 67108864, !dbg !3428
  store i32 %7, i32* %5, align 4, !dbg !3428, !tbaa !847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3314, metadata !959) #10, !dbg !3418
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3429
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3430
  ret i8* %8, !dbg !3431
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3432 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3187, metadata !3193), !dbg !3438
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3434, metadata !727), !dbg !3440
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3435, metadata !727), !dbg !3441
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3436, metadata !727), !dbg !3442
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3443
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3443
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3192, metadata !727) #10, !dbg !3444
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3445
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3445
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3187, metadata !727) #10, !dbg !3438
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3187, metadata !3203) #10, !dbg !3438
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3438
  %9 = icmp eq i32 %1, 10, !dbg !3446
  br i1 %9, label %10, label %11, !dbg !3447

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3448, !noalias !3449
  unreachable, !dbg !3448

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3187, metadata !3203) #10, !dbg !3438
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3452
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3453
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3454
  store i32 %1, i32* %13, align 8, !dbg !3454
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3454
  %15 = bitcast i32* %14 to i8*, !dbg !3454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3454
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3437, metadata !959), !dbg !3455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1777, metadata !727), !dbg !3456
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1778, metadata !727), !dbg !3458
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !727), !dbg !3459
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1780, metadata !727), !dbg !3460
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3461
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1781, metadata !727), !dbg !3462
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1783, metadata !727), !dbg !3463
  %17 = load i32, i32* %16, align 4, !dbg !3464, !tbaa !847
  %18 = or i32 %17, 67108864, !dbg !3465
  store i32 %18, i32* %16, align 4, !dbg !3465, !tbaa !847
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3437, metadata !959), !dbg !3455
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3466
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3467
  ret i8* %19, !dbg !3468
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3469 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3473, metadata !727), !dbg !3477
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3474, metadata !727), !dbg !3478
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3475, metadata !727), !dbg !3479
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3476, metadata !727), !dbg !3480
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3481, metadata !727) #10, !dbg !3491
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3486, metadata !727) #10, !dbg !3493
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3487, metadata !727) #10, !dbg !3494
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3488, metadata !727) #10, !dbg !3495
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3489, metadata !727) #10, !dbg !3496
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3497
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3498, !tbaa.struct !3320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3490, metadata !959) #10, !dbg !3499
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !727) #10, !dbg !3500
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1828, metadata !727) #10, !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1829, metadata !727) #10, !dbg !3503
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !727) #10, !dbg !3500
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !727) #10, !dbg !3500
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3504
  store i32 10, i32* %7, align 8, !dbg !3505, !tbaa !1757
  %8 = icmp ne i8* %1, null, !dbg !3506
  %9 = icmp ne i8* %2, null, !dbg !3507
  %10 = and i1 %8, %9, !dbg !3508
  br i1 %10, label %12, label %11, !dbg !3508

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3509
  unreachable, !dbg !3509

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3510
  store i8* %1, i8** %13, align 8, !dbg !3511, !tbaa !1846
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3512
  store i8* %2, i8** %14, align 8, !dbg !3513, !tbaa !1849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3490, metadata !959) #10, !dbg !3499
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3514
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3515
  ret i8* %15, !dbg !3516
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3482 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3481, metadata !727), !dbg !3517
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3486, metadata !727), !dbg !3518
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3487, metadata !727), !dbg !3519
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3488, metadata !727), !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3489, metadata !727), !dbg !3521
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3522
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3523, !tbaa.struct !3320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3490, metadata !959), !dbg !3524
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1827, metadata !727) #10, !dbg !3525
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1828, metadata !727) #10, !dbg !3527
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1829, metadata !727) #10, !dbg !3528
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !727) #10, !dbg !3525
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1827, metadata !727) #10, !dbg !3525
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3529
  store i32 10, i32* %8, align 8, !dbg !3530, !tbaa !1757
  %9 = icmp ne i8* %1, null, !dbg !3531
  %10 = icmp ne i8* %2, null, !dbg !3532
  %11 = and i1 %9, %10, !dbg !3533
  br i1 %11, label %13, label %12, !dbg !3533

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3534
  unreachable, !dbg !3534

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3535
  store i8* %1, i8** %14, align 8, !dbg !3536, !tbaa !1846
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3537
  store i8* %2, i8** %15, align 8, !dbg !3538, !tbaa !1849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3490, metadata !959), !dbg !3524
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3539
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3540
  ret i8* %16, !dbg !3541
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3542 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3546, metadata !727), !dbg !3549
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3547, metadata !727), !dbg !3550
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3548, metadata !727), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3473, metadata !727) #10, !dbg !3552
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3474, metadata !727) #10, !dbg !3554
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3475, metadata !727) #10, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3476, metadata !727) #10, !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3481, metadata !727) #10, !dbg !3557
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3486, metadata !727) #10, !dbg !3559
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3487, metadata !727) #10, !dbg !3560
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3488, metadata !727) #10, !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3489, metadata !727) #10, !dbg !3562
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3563
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3564, !tbaa.struct !3320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3490, metadata !959) #10, !dbg !3565
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1827, metadata !727) #10, !dbg !3566
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1828, metadata !727) #10, !dbg !3568
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1829, metadata !727) #10, !dbg !3569
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !727) #10, !dbg !3566
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1827, metadata !727) #10, !dbg !3566
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3570
  store i32 10, i32* %6, align 8, !dbg !3571, !tbaa !1757
  %7 = icmp ne i8* %0, null, !dbg !3572
  %8 = icmp ne i8* %1, null, !dbg !3573
  %9 = and i1 %7, %8, !dbg !3574
  br i1 %9, label %11, label %10, !dbg !3574

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3575
  unreachable, !dbg !3575

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3576
  store i8* %0, i8** %12, align 8, !dbg !3577, !tbaa !1846
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3578
  store i8* %1, i8** %13, align 8, !dbg !3579, !tbaa !1849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3490, metadata !959) #10, !dbg !3565
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3580
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3581
  ret i8* %14, !dbg !3582
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3583 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3587, metadata !727), !dbg !3591
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3588, metadata !727), !dbg !3592
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3589, metadata !727), !dbg !3593
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3590, metadata !727), !dbg !3594
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3481, metadata !727) #10, !dbg !3595
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3486, metadata !727) #10, !dbg !3597
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3487, metadata !727) #10, !dbg !3598
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3488, metadata !727) #10, !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3489, metadata !727) #10, !dbg !3600
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3601
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3602, !tbaa.struct !3320
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3490, metadata !959) #10, !dbg !3603
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !727) #10, !dbg !3604
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1828, metadata !727) #10, !dbg !3606
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1829, metadata !727) #10, !dbg !3607
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !727) #10, !dbg !3604
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !727) #10, !dbg !3604
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3608
  store i32 10, i32* %7, align 8, !dbg !3609, !tbaa !1757
  %8 = icmp ne i8* %0, null, !dbg !3610
  %9 = icmp ne i8* %1, null, !dbg !3611
  %10 = and i1 %8, %9, !dbg !3612
  br i1 %10, label %12, label %11, !dbg !3612

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3613
  unreachable, !dbg !3613

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3614
  store i8* %0, i8** %13, align 8, !dbg !3615, !tbaa !1846
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3616
  store i8* %1, i8** %14, align 8, !dbg !3617, !tbaa !1849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3490, metadata !959) #10, !dbg !3603
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3618
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3619
  ret i8* %15, !dbg !3620
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3621 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3625, metadata !727), !dbg !3628
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3626, metadata !727), !dbg !3629
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3627, metadata !727), !dbg !3630
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3631
  ret i8* %4, !dbg !3632
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3633 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3637, metadata !727), !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3638, metadata !727), !dbg !3640
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3625, metadata !727) #10, !dbg !3641
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3626, metadata !727) #10, !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3627, metadata !727) #10, !dbg !3644
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3645
  ret i8* %3, !dbg !3646
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3647 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3651, metadata !727), !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3652, metadata !727), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3625, metadata !727) #10, !dbg !3655
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3626, metadata !727) #10, !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3627, metadata !727) #10, !dbg !3658
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3659
  ret i8* %3, !dbg !3660
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3661 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3665, metadata !727), !dbg !3666
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3651, metadata !727) #10, !dbg !3667
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3652, metadata !727) #10, !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3625, metadata !727) #10, !dbg !3670
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3626, metadata !727) #10, !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3627, metadata !727) #10, !dbg !3673
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3674
  ret i8* %2, !dbg !3675
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3676 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3721, metadata !727), !dbg !3727
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3722, metadata !727), !dbg !3728
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3723, metadata !727), !dbg !3729
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3724, metadata !727), !dbg !3730
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3725, metadata !727), !dbg !3731
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3726, metadata !727), !dbg !3732
  %7 = icmp eq i8* %1, null, !dbg !3733
  br i1 %7, label %10, label %8, !dbg !3735

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3736
  br label %12, !dbg !3736

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3737
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 5) #10, !dbg !3738
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3739
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.76, i64 0, i64 0), i32 5) #10, !dbg !3741
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3742
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
  ], !dbg !3743

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3744
  unreachable, !dbg !3744

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.77, i64 0, i64 0), i32 5) #10, !dbg !3746
  %20 = load i8*, i8** %4, align 8, !dbg !3746, !tbaa !735
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3747
  br label %146, !dbg !3749

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.78, i64 0, i64 0), i32 5) #10, !dbg !3750
  %24 = load i8*, i8** %4, align 8, !dbg !3750, !tbaa !735
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3750
  %26 = load i8*, i8** %25, align 8, !dbg !3750, !tbaa !735
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3751
  br label %146, !dbg !3752

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.79, i64 0, i64 0), i32 5) #10, !dbg !3753
  %30 = load i8*, i8** %4, align 8, !dbg !3753, !tbaa !735
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3753
  %32 = load i8*, i8** %31, align 8, !dbg !3753, !tbaa !735
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3753
  %34 = load i8*, i8** %33, align 8, !dbg !3753, !tbaa !735
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3754
  br label %146, !dbg !3755

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.80, i64 0, i64 0), i32 5) #10, !dbg !3756
  %38 = load i8*, i8** %4, align 8, !dbg !3756, !tbaa !735
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3756
  %40 = load i8*, i8** %39, align 8, !dbg !3756, !tbaa !735
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3756
  %42 = load i8*, i8** %41, align 8, !dbg !3756, !tbaa !735
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3756
  %44 = load i8*, i8** %43, align 8, !dbg !3756, !tbaa !735
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3757
  br label %146, !dbg !3758

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.81, i64 0, i64 0), i32 5) #10, !dbg !3759
  %48 = load i8*, i8** %4, align 8, !dbg !3759, !tbaa !735
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3759
  %50 = load i8*, i8** %49, align 8, !dbg !3759, !tbaa !735
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3759
  %52 = load i8*, i8** %51, align 8, !dbg !3759, !tbaa !735
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3759
  %54 = load i8*, i8** %53, align 8, !dbg !3759, !tbaa !735
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3759
  %56 = load i8*, i8** %55, align 8, !dbg !3759, !tbaa !735
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3760
  br label %146, !dbg !3761

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.82, i64 0, i64 0), i32 5) #10, !dbg !3762
  %60 = load i8*, i8** %4, align 8, !dbg !3762, !tbaa !735
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3762
  %62 = load i8*, i8** %61, align 8, !dbg !3762, !tbaa !735
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3762
  %64 = load i8*, i8** %63, align 8, !dbg !3762, !tbaa !735
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3762
  %66 = load i8*, i8** %65, align 8, !dbg !3762, !tbaa !735
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3762
  %68 = load i8*, i8** %67, align 8, !dbg !3762, !tbaa !735
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3762
  %70 = load i8*, i8** %69, align 8, !dbg !3762, !tbaa !735
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3763
  br label %146, !dbg !3764

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.83, i64 0, i64 0), i32 5) #10, !dbg !3765
  %74 = load i8*, i8** %4, align 8, !dbg !3765, !tbaa !735
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3765
  %76 = load i8*, i8** %75, align 8, !dbg !3765, !tbaa !735
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3765
  %78 = load i8*, i8** %77, align 8, !dbg !3765, !tbaa !735
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3765
  %80 = load i8*, i8** %79, align 8, !dbg !3765, !tbaa !735
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3765
  %82 = load i8*, i8** %81, align 8, !dbg !3765, !tbaa !735
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3765
  %84 = load i8*, i8** %83, align 8, !dbg !3765, !tbaa !735
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3765
  %86 = load i8*, i8** %85, align 8, !dbg !3765, !tbaa !735
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3766
  br label %146, !dbg !3767

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.84, i64 0, i64 0), i32 5) #10, !dbg !3768
  %90 = load i8*, i8** %4, align 8, !dbg !3768, !tbaa !735
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3768
  %92 = load i8*, i8** %91, align 8, !dbg !3768, !tbaa !735
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3768
  %94 = load i8*, i8** %93, align 8, !dbg !3768, !tbaa !735
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3768
  %96 = load i8*, i8** %95, align 8, !dbg !3768, !tbaa !735
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3768
  %98 = load i8*, i8** %97, align 8, !dbg !3768, !tbaa !735
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3768
  %100 = load i8*, i8** %99, align 8, !dbg !3768, !tbaa !735
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3768
  %102 = load i8*, i8** %101, align 8, !dbg !3768, !tbaa !735
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3768
  %104 = load i8*, i8** %103, align 8, !dbg !3768, !tbaa !735
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3769
  br label %146, !dbg !3770

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.85, i64 0, i64 0), i32 5) #10, !dbg !3771
  %108 = load i8*, i8** %4, align 8, !dbg !3771, !tbaa !735
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3771
  %110 = load i8*, i8** %109, align 8, !dbg !3771, !tbaa !735
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3771
  %112 = load i8*, i8** %111, align 8, !dbg !3771, !tbaa !735
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3771
  %114 = load i8*, i8** %113, align 8, !dbg !3771, !tbaa !735
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3771
  %116 = load i8*, i8** %115, align 8, !dbg !3771, !tbaa !735
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3771
  %118 = load i8*, i8** %117, align 8, !dbg !3771, !tbaa !735
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3771
  %120 = load i8*, i8** %119, align 8, !dbg !3771, !tbaa !735
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3771
  %122 = load i8*, i8** %121, align 8, !dbg !3771, !tbaa !735
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3771
  %124 = load i8*, i8** %123, align 8, !dbg !3771, !tbaa !735
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3772
  br label %146, !dbg !3773

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.86, i64 0, i64 0), i32 5) #10, !dbg !3774
  %128 = load i8*, i8** %4, align 8, !dbg !3774, !tbaa !735
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3774
  %130 = load i8*, i8** %129, align 8, !dbg !3774, !tbaa !735
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3774
  %132 = load i8*, i8** %131, align 8, !dbg !3774, !tbaa !735
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3774
  %134 = load i8*, i8** %133, align 8, !dbg !3774, !tbaa !735
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3774
  %136 = load i8*, i8** %135, align 8, !dbg !3774, !tbaa !735
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3774
  %138 = load i8*, i8** %137, align 8, !dbg !3774, !tbaa !735
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3774
  %140 = load i8*, i8** %139, align 8, !dbg !3774, !tbaa !735
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3774
  %142 = load i8*, i8** %141, align 8, !dbg !3774, !tbaa !735
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3774
  %144 = load i8*, i8** %143, align 8, !dbg !3774, !tbaa !735
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3775
  br label %146, !dbg !3776

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3777
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3778 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3782, metadata !727), !dbg !3788
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3783, metadata !727), !dbg !3789
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3784, metadata !727), !dbg !3790
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3785, metadata !727), !dbg !3791
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3786, metadata !727), !dbg !3792
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3787, metadata !727), !dbg !3793
  br label %6, !dbg !3794

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3787, metadata !727), !dbg !3793
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3796
  %9 = load i8*, i8** %8, align 8, !dbg !3796, !tbaa !735
  %10 = icmp eq i8* %9, null, !dbg !3799
  %11 = add i64 %7, 1, !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3787, metadata !727), !dbg !3793
  br i1 %10, label %12, label %6, !dbg !3799, !llvm.loop !3803

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3806
  ret void, !dbg !3807
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3808 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3819, metadata !727), !dbg !3827
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3820, metadata !727), !dbg !3828
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3821, metadata !727), !dbg !3829
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3822, metadata !727), !dbg !3830
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3823, metadata !727), !dbg !3831
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3832
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3832
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3825, metadata !727), !dbg !3833
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3824, metadata !727), !dbg !3834
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3835
  %12 = icmp ult i32 %11, 41, !dbg !3835
  br i1 %12, label %13, label %18, !dbg !3835

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3839
  %15 = sext i32 %11 to i64, !dbg !3839
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3839
  %17 = add i32 %11, 8, !dbg !3839
  store i32 %17, i32* %8, align 8, !dbg !3839
  br label %21, !dbg !3839

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3841
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3841
  store i8* %20, i8** %10, align 8, !dbg !3841
  br label %21, !dbg !3841

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3835
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3843
  %25 = load i8*, i8** %24, align 8, !dbg !3843
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3845
  store i8* %25, i8** %26, align 16, !dbg !3846, !tbaa !735
  %27 = icmp eq i8* %25, null, !dbg !3847
  br i1 %27, label %30, label %28, !dbg !3848

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %29 = icmp ult i32 %22, 41, !dbg !3835
  br i1 %29, label %35, label %32, !dbg !3835

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3850
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3851
  ret void, !dbg !3851

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3841
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3841
  store i8* %34, i8** %10, align 8, !dbg !3841
  br label %40, !dbg !3841

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3839
  %37 = sext i32 %22 to i64, !dbg !3839
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3839
  %39 = add i32 %22, 8, !dbg !3839
  store i32 %39, i32* %8, align 8, !dbg !3839
  br label %40, !dbg !3839

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3835
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3843
  %44 = load i8*, i8** %43, align 8, !dbg !3843
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3845
  store i8* %44, i8** %45, align 8, !dbg !3846, !tbaa !735
  %46 = icmp eq i8* %44, null, !dbg !3847
  br i1 %46, label %30, label %47, !dbg !3848

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %48 = icmp ult i32 %41, 41, !dbg !3835
  br i1 %48, label %52, label %49, !dbg !3835

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3841
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3841
  store i8* %51, i8** %10, align 8, !dbg !3841
  br label %57, !dbg !3841

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3839
  %54 = sext i32 %41 to i64, !dbg !3839
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3839
  %56 = add i32 %41, 8, !dbg !3839
  store i32 %56, i32* %8, align 8, !dbg !3839
  br label %57, !dbg !3839

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3835
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3843
  %61 = load i8*, i8** %60, align 8, !dbg !3843
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3845
  store i8* %61, i8** %62, align 16, !dbg !3846, !tbaa !735
  %63 = icmp eq i8* %61, null, !dbg !3847
  br i1 %63, label %30, label %64, !dbg !3848

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %65 = icmp ult i32 %58, 41, !dbg !3835
  br i1 %65, label %69, label %66, !dbg !3835

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3841
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3841
  store i8* %68, i8** %10, align 8, !dbg !3841
  br label %74, !dbg !3841

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3839
  %71 = sext i32 %58 to i64, !dbg !3839
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3839
  %73 = add i32 %58, 8, !dbg !3839
  store i32 %73, i32* %8, align 8, !dbg !3839
  br label %74, !dbg !3839

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3835
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3843
  %78 = load i8*, i8** %77, align 8, !dbg !3843
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3845
  store i8* %78, i8** %79, align 8, !dbg !3846, !tbaa !735
  %80 = icmp eq i8* %78, null, !dbg !3847
  br i1 %80, label %30, label %81, !dbg !3848

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %82 = icmp ult i32 %75, 41, !dbg !3835
  br i1 %82, label %86, label %83, !dbg !3835

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3841
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3841
  store i8* %85, i8** %10, align 8, !dbg !3841
  br label %91, !dbg !3841

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3839
  %88 = sext i32 %75 to i64, !dbg !3839
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3839
  %90 = add i32 %75, 8, !dbg !3839
  store i32 %90, i32* %8, align 8, !dbg !3839
  br label %91, !dbg !3839

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3835
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3843
  %95 = load i8*, i8** %94, align 8, !dbg !3843
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3845
  store i8* %95, i8** %96, align 16, !dbg !3846, !tbaa !735
  %97 = icmp eq i8* %95, null, !dbg !3847
  br i1 %97, label %30, label %98, !dbg !3848

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %99 = icmp ult i32 %92, 41, !dbg !3835
  br i1 %99, label %103, label %100, !dbg !3835

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3841
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3841
  store i8* %102, i8** %10, align 8, !dbg !3841
  br label %108, !dbg !3841

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3839
  %105 = sext i32 %92 to i64, !dbg !3839
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3839
  %107 = add i32 %92, 8, !dbg !3839
  store i32 %107, i32* %8, align 8, !dbg !3839
  br label %108, !dbg !3839

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3843
  %111 = load i8*, i8** %110, align 8, !dbg !3843
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3845
  store i8* %111, i8** %112, align 8, !dbg !3846, !tbaa !735
  %113 = icmp eq i8* %111, null, !dbg !3847
  br i1 %113, label %30, label %114, !dbg !3848

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %115 = load i8*, i8** %10, align 8, !dbg !3841
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3841
  store i8* %116, i8** %10, align 8, !dbg !3841
  %117 = bitcast i8* %115 to i8**, !dbg !3843
  %118 = load i8*, i8** %117, align 8, !dbg !3843
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3845
  store i8* %118, i8** %119, align 16, !dbg !3846, !tbaa !735
  %120 = icmp eq i8* %118, null, !dbg !3847
  br i1 %120, label %30, label %121, !dbg !3848

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %122 = load i8*, i8** %10, align 8, !dbg !3841
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3841
  store i8* %123, i8** %10, align 8, !dbg !3841
  %124 = bitcast i8* %122 to i8**, !dbg !3843
  %125 = load i8*, i8** %124, align 8, !dbg !3843
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3845
  store i8* %125, i8** %126, align 8, !dbg !3846, !tbaa !735
  %127 = icmp eq i8* %125, null, !dbg !3847
  br i1 %127, label %30, label %128, !dbg !3848

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %129 = load i8*, i8** %10, align 8, !dbg !3841
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3841
  store i8* %130, i8** %10, align 8, !dbg !3841
  %131 = bitcast i8* %129 to i8**, !dbg !3843
  %132 = load i8*, i8** %131, align 8, !dbg !3843
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3845
  store i8* %132, i8** %133, align 16, !dbg !3846, !tbaa !735
  %134 = icmp eq i8* %132, null, !dbg !3847
  br i1 %134, label %30, label %135, !dbg !3848

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %136 = load i8*, i8** %10, align 8, !dbg !3841
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3841
  store i8* %137, i8** %10, align 8, !dbg !3841
  %138 = bitcast i8* %136 to i8**, !dbg !3843
  %139 = load i8*, i8** %138, align 8, !dbg !3843
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3845
  store i8* %139, i8** %140, align 8, !dbg !3846, !tbaa !735
  %141 = icmp eq i8* %139, null, !dbg !3847
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3824, metadata !727), !dbg !3834
  %142 = select i1 %141, i64 9, i64 10, !dbg !3848
  br label %30, !dbg !3848
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3852 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3856, metadata !727), !dbg !3866
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3857, metadata !727), !dbg !3867
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3858, metadata !727), !dbg !3868
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3859, metadata !727), !dbg !3869
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3870
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3870
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3860, metadata !727), !dbg !3871
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3872
  call void @llvm.va_start(i8* nonnull %6), !dbg !3872
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3873
  call void @llvm.va_end(i8* nonnull %6), !dbg !3874
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3875
  ret void, !dbg !3875
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3876 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.89, i64 0, i64 0), i32 5) #10, !dbg !3877
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.90, i64 0, i64 0)) #10, !dbg !3878
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3880
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.92, i64 0, i64 0)) #10, !dbg !3881
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3882
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3882, !tbaa !735
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3883
  ret void, !dbg !3884
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3885 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3889, metadata !727), !dbg !3891
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3890, metadata !727), !dbg !3892
  %3 = udiv i64 9223372036854775807, %1, !dbg !3893
  %4 = icmp ult i64 %3, %0, !dbg !3893
  br i1 %4, label %5, label %6, !dbg !3895

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3896
  unreachable, !dbg !3896

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3897
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3898, metadata !727) #10, !dbg !3905
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3907
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3904, metadata !727) #10, !dbg !3908
  %9 = icmp eq i8* %8, null, !dbg !3909
  %10 = icmp ne i64 %7, 0, !dbg !3911
  %11 = and i1 %10, %9, !dbg !3913
  br i1 %11, label %12, label %13, !dbg !3913

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3914
  unreachable, !dbg !3914

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3915
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3899 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3898, metadata !727), !dbg !3916
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3917
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3904, metadata !727), !dbg !3918
  %3 = icmp eq i8* %2, null, !dbg !3919
  %4 = icmp ne i64 %0, 0, !dbg !3920
  %5 = and i1 %4, %3, !dbg !3921
  br i1 %5, label %6, label %7, !dbg !3921

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3922
  unreachable, !dbg !3922

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3923
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3924 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3928, metadata !727), !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3929, metadata !727), !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3930, metadata !727), !dbg !3933
  %4 = udiv i64 9223372036854775807, %2, !dbg !3934
  %5 = icmp ult i64 %4, %1, !dbg !3934
  br i1 %5, label %6, label %7, !dbg !3936

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3937
  unreachable, !dbg !3937

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3938
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3939, metadata !727) #10, !dbg !3945
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3944, metadata !727) #10, !dbg !3947
  %9 = icmp eq i64 %8, 0, !dbg !3948
  %10 = icmp ne i8* %0, null, !dbg !3950
  %11 = and i1 %10, %9, !dbg !3952
  br i1 %11, label %12, label %13, !dbg !3952

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3953
  br label %19, !dbg !3955

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3956
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3939, metadata !727) #10, !dbg !3945
  %15 = icmp eq i8* %14, null, !dbg !3957
  %16 = icmp ne i64 %8, 0, !dbg !3959
  %17 = and i1 %16, %15, !dbg !3961
  br i1 %17, label %18, label %19, !dbg !3961

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3962
  unreachable, !dbg !3962

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3963
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3940 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3939, metadata !727), !dbg !3964
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3944, metadata !727), !dbg !3965
  %3 = icmp eq i64 %1, 0, !dbg !3966
  %4 = icmp ne i8* %0, null, !dbg !3967
  %5 = and i1 %4, %3, !dbg !3968
  br i1 %5, label %6, label %7, !dbg !3968

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3969
  br label %13, !dbg !3970

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3971
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3939, metadata !727), !dbg !3964
  %9 = icmp eq i8* %8, null, !dbg !3972
  %10 = icmp ne i64 %1, 0, !dbg !3973
  %11 = and i1 %10, %9, !dbg !3974
  br i1 %11, label %12, label %13, !dbg !3974

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3975
  unreachable, !dbg !3975

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3976
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !690 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !692, metadata !727), !dbg !3977
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !693, metadata !727), !dbg !3978
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !694, metadata !727), !dbg !3979
  %4 = load i64, i64* %1, align 8, !dbg !3980, !tbaa !919
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !695, metadata !727), !dbg !3981
  %5 = icmp eq i8* %0, null, !dbg !3982
  br i1 %5, label %6, label %13, !dbg !3984

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3985
  br i1 %7, label %8, label %17, !dbg !3988

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3989
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !695, metadata !727), !dbg !3981
  %10 = icmp ugt i64 %2, 128, !dbg !3991
  %11 = zext i1 %10 to i64, !dbg !3991
  %12 = add nuw nsw i64 %9, %11, !dbg !3992
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !695, metadata !727), !dbg !3981
  br label %17, !dbg !3993

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3994
  %15 = icmp ugt i64 %14, %4, !dbg !3997
  br i1 %15, label %20, label %16, !dbg !3998

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3999
  unreachable, !dbg !3999

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !695, metadata !727), !dbg !3981
  store i64 %18, i64* %1, align 8, !dbg !4000, !tbaa !919
  %19 = mul i64 %18, %2, !dbg !4001
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3939, metadata !727) #10, !dbg !4002
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3944, metadata !727) #10, !dbg !4004
  br label %27, !dbg !4005

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4006
  %22 = add i64 %4, 1, !dbg !4007
  %23 = add i64 %22, %21, !dbg !4008
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !695, metadata !727), !dbg !3981
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !695, metadata !727), !dbg !3981
  store i64 %23, i64* %1, align 8, !dbg !4000, !tbaa !919
  %24 = mul i64 %23, %2, !dbg !4001
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3939, metadata !727) #10, !dbg !4002
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3944, metadata !727) #10, !dbg !4004
  %25 = icmp eq i64 %24, 0, !dbg !4009
  br i1 %25, label %26, label %27, !dbg !4005

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4010
  br label %34, !dbg !4011

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4012
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3939, metadata !727) #10, !dbg !4002
  %30 = icmp eq i8* %29, null, !dbg !4013
  %31 = icmp ne i64 %28, 0, !dbg !4014
  %32 = and i1 %31, %30, !dbg !4015
  br i1 %32, label %33, label %34, !dbg !4015

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4016
  unreachable, !dbg !4016

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4017
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4018 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4020, metadata !727), !dbg !4021
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3898, metadata !727) #10, !dbg !4022
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4024
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3904, metadata !727) #10, !dbg !4025
  %3 = icmp eq i8* %2, null, !dbg !4026
  %4 = icmp ne i64 %0, 0, !dbg !4027
  %5 = and i1 %4, %3, !dbg !4028
  br i1 %5, label %6, label %7, !dbg !4028

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4029
  unreachable, !dbg !4029

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4030
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4031 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4035, metadata !727), !dbg !4037
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4036, metadata !727), !dbg !4038
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !692, metadata !727) #10, !dbg !4039
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !693, metadata !727) #10, !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !694, metadata !727) #10, !dbg !4042
  %3 = load i64, i64* %1, align 8, !dbg !4043, !tbaa !919
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !695, metadata !727) #10, !dbg !4044
  %4 = icmp eq i8* %0, null, !dbg !4045
  br i1 %4, label %5, label %8, !dbg !4046

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !695, metadata !727) #10, !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !695, metadata !727) #10, !dbg !4044
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !695, metadata !727) #10, !dbg !4044
  store i64 %7, i64* %1, align 8, !dbg !4049, !tbaa !919
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3939, metadata !727) #10, !dbg !4050
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3944, metadata !727) #10, !dbg !4052
  br label %17, !dbg !4053

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4054
  br i1 %9, label %11, label %10, !dbg !4055

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4056
  unreachable, !dbg !4056

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4057
  %13 = add i64 %3, 1, !dbg !4058
  %14 = add i64 %13, %12, !dbg !4059
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !695, metadata !727) #10, !dbg !4044
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !695, metadata !727) #10, !dbg !4044
  store i64 %14, i64* %1, align 8, !dbg !4049, !tbaa !919
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3939, metadata !727) #10, !dbg !4050
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3944, metadata !727) #10, !dbg !4052
  %15 = icmp eq i64 %14, 0, !dbg !4060
  br i1 %15, label %16, label %17, !dbg !4053

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4061
  br label %24, !dbg !4062

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4063
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3939, metadata !727) #10, !dbg !4050
  %20 = icmp eq i8* %19, null, !dbg !4064
  %21 = icmp ne i64 %18, 0, !dbg !4065
  %22 = and i1 %21, %20, !dbg !4066
  br i1 %22, label %23, label %24, !dbg !4066

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4067
  unreachable, !dbg !4067

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4068
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4069 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4071, metadata !727), !dbg !4072
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3898, metadata !727) #10, !dbg !4073
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4075
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3904, metadata !727) #10, !dbg !4076
  %3 = icmp eq i8* %2, null, !dbg !4077
  %4 = icmp ne i64 %0, 0, !dbg !4078
  %5 = and i1 %4, %3, !dbg !4079
  br i1 %5, label %6, label %7, !dbg !4079

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4080
  unreachable, !dbg !4080

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4081
  ret i8* %2, !dbg !4082
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4083 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4085, metadata !727), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4086, metadata !727), !dbg !4089
  %3 = udiv i64 9223372036854775807, %1, !dbg !4090
  %4 = icmp ult i64 %3, %0, !dbg !4090
  br i1 %4, label %8, label %5, !dbg !4092

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4093
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4087, metadata !727), !dbg !4095
  %7 = icmp eq i8* %6, null, !dbg !4096
  br i1 %7, label %8, label %9, !dbg !4097

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4099
  unreachable, !dbg !4099

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4100
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4101 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4105, metadata !727), !dbg !4107
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4106, metadata !727), !dbg !4108
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3898, metadata !727) #10, !dbg !4109
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4111
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3904, metadata !727) #10, !dbg !4112
  %4 = icmp eq i8* %3, null, !dbg !4113
  %5 = icmp ne i64 %1, 0, !dbg !4114
  %6 = and i1 %5, %4, !dbg !4115
  br i1 %6, label %7, label %8, !dbg !4115

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4116
  unreachable, !dbg !4116

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4117
  ret i8* %3, !dbg !4118
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4119 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4121, metadata !727), !dbg !4122
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4123
  %3 = add i64 %2, 1, !dbg !4124
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4105, metadata !727) #10, !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4106, metadata !727) #10, !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3898, metadata !727) #10, !dbg !4129
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4131
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3904, metadata !727) #10, !dbg !4132
  %5 = icmp eq i8* %4, null, !dbg !4133
  %6 = icmp ne i64 %3, 0, !dbg !4134
  %7 = and i1 %6, %5, !dbg !4135
  br i1 %7, label %8, label %9, !dbg !4135

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4136
  unreachable, !dbg !4136

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4137
  ret i8* %4, !dbg !4138
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4139 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4141, !tbaa !847
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.103, i64 0, i64 0), i32 5) #10, !dbg !4142
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* %2) #10, !dbg !4143
  tail call void @abort() #14, !dbg !4145
  unreachable, !dbg !4145
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4146 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4149, metadata !727), !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4150, metadata !727), !dbg !4153
  %3 = tail call noalias i8* @__strndup(i8* %0, i64 %1) #10, !dbg !4154
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4151, metadata !727), !dbg !4155
  %4 = icmp eq i8* %3, null, !dbg !4156
  br i1 %4, label %5, label %6, !dbg !4158

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4159
  unreachable, !dbg !4159

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !4160
}

; Function Attrs: nounwind
declare noalias i8* @__strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4161 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4164, metadata !727), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4165, metadata !727), !dbg !4171
  %3 = icmp eq i64 %0, 0, !dbg !4172
  %4 = icmp eq i64 %1, 0, !dbg !4173
  %5 = or i1 %3, %4, !dbg !4175
  br i1 %5, label %12, label %6, !dbg !4175

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4167, metadata !727), !dbg !4177
  %8 = udiv i64 %7, %1, !dbg !4178
  %9 = icmp eq i64 %8, %0, !dbg !4180
  br i1 %9, label %12, label %10, !dbg !4181

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4182
  store i32 12, i32* %11, align 4, !dbg !4184, !tbaa !847
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4164, metadata !727), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4165, metadata !727), !dbg !4171
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4185
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4166, metadata !727), !dbg !4186
  br label %16, !dbg !4187

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4188
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4189 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4234, metadata !727), !dbg !4238
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4235, metadata !727), !dbg !4239
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4237, metadata !727), !dbg !4240
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4241
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4236, metadata !727), !dbg !4242
  %3 = icmp slt i32 %2, 0, !dbg !4243
  br i1 %3, label %4, label %6, !dbg !4245

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4246
  br label %24, !dbg !4247

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4248
  %8 = icmp eq i32 %7, 0, !dbg !4248
  br i1 %8, label %13, label %9, !dbg !4250

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4251
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4253
  %12 = icmp eq i64 %11, -1, !dbg !4255
  br i1 %12, label %16, label %13, !dbg !4256

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4257
  %15 = icmp eq i32 %14, 0, !dbg !4257
  br i1 %15, label %16, label %18, !dbg !4258

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4235, metadata !727), !dbg !4239
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4260
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4237, metadata !727), !dbg !4240
  br label %24, !dbg !4261

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4262
  %20 = load i32, i32* %19, align 4, !dbg !4262, !tbaa !847
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4235, metadata !727), !dbg !4239
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4235, metadata !727), !dbg !4239
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4260
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4237, metadata !727), !dbg !4240
  %22 = icmp eq i32 %20, 0, !dbg !4263
  br i1 %22, label %24, label %23, !dbg !4261

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4265, !tbaa !847
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4237, metadata !727), !dbg !4240
  br label %24, !dbg !4267

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4268
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4269 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4314, metadata !727), !dbg !4315
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4316
  br i1 %2, label %6, label %3, !dbg !4318

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4319
  %5 = icmp eq i32 %4, 0, !dbg !4319
  br i1 %5, label %6, label %8, !dbg !4321

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4323
  br label %17, !dbg !4324

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4325, metadata !727) #10, !dbg !4330
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4332
  %10 = load i32, i32* %9, align 8, !dbg !4332, !tbaa !1457
  %11 = and i32 %10, 256, !dbg !4334
  %12 = icmp eq i32 %11, 0, !dbg !4334
  br i1 %12, label %15, label %13, !dbg !4335

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4336
  br label %15, !dbg !4336

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4337
  br label %17, !dbg !4338

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4339
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4340 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4385, metadata !727), !dbg !4391
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4386, metadata !727), !dbg !4392
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4387, metadata !727), !dbg !4393
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4394
  %5 = load i8*, i8** %4, align 8, !dbg !4394, !tbaa !939
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4395
  %7 = load i8*, i8** %6, align 8, !dbg !4395, !tbaa !936
  %8 = icmp eq i8* %5, %7, !dbg !4396
  br i1 %8, label %9, label %28, !dbg !4397

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4398
  %11 = load i8*, i8** %10, align 8, !dbg !4398, !tbaa !987
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4400
  %13 = load i8*, i8** %12, align 8, !dbg !4400, !tbaa !4401
  %14 = icmp eq i8* %11, %13, !dbg !4402
  br i1 %14, label %15, label %28, !dbg !4403

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4404
  %17 = load i8*, i8** %16, align 8, !dbg !4404, !tbaa !4405
  %18 = icmp eq i8* %17, null, !dbg !4406
  br i1 %18, label %19, label %28, !dbg !4407

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4409
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4410
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4388, metadata !727), !dbg !4412
  %22 = icmp eq i64 %21, -1, !dbg !4413
  br i1 %22, label %30, label %23, !dbg !4415

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4416
  %25 = load i32, i32* %24, align 8, !dbg !4417, !tbaa !1457
  %26 = and i32 %25, -17, !dbg !4417
  store i32 %26, i32* %24, align 8, !dbg !4417, !tbaa !1457
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4418
  store i64 %21, i64* %27, align 8, !dbg !4419, !tbaa !4420
  br label %30, !dbg !4421

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4422
  br label %30, !dbg !4423

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4424
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4425 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4442, metadata !727), !dbg !4451
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4443, metadata !727), !dbg !4452
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4444, metadata !727), !dbg !4453
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4445, metadata !727), !dbg !4454
  %6 = bitcast i32* %5 to i8*, !dbg !4455
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4455
  %7 = icmp eq i32* %0, null, !dbg !4456
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4442, metadata !727), !dbg !4451
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4458
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4442, metadata !727), !dbg !4451
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4459
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4446, metadata !727), !dbg !4460
  %10 = icmp ugt i64 %9, -3, !dbg !4461
  %11 = icmp ne i64 %2, 0, !dbg !4462
  %12 = and i1 %11, %10, !dbg !4464
  br i1 %12, label %13, label %18, !dbg !4464

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4465
  br i1 %14, label %18, label %15, !dbg !4467

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4469, !tbaa !836
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4448, metadata !727), !dbg !4470
  %17 = zext i8 %16 to i32, !dbg !4471
  store i32 %17, i32* %8, align 4, !dbg !4472, !tbaa !847
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4473
  ret i64 %19, !dbg !4473
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4474 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4519, metadata !727), !dbg !4524
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4525
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4526, metadata !727), !dbg !4529
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4531
  %4 = load i32, i32* %3, align 8, !dbg !4531, !tbaa !1457
  %5 = and i32 %4, 32, !dbg !4531
  %6 = icmp eq i32 %5, 0, !dbg !4532
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4533
  %8 = icmp ne i32 %7, 0, !dbg !4534
  br i1 %6, label %9, label %19, !dbg !4535

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4537
  %11 = icmp ne i64 %2, 0, !dbg !4537
  %12 = or i1 %11, %10, !dbg !4537
  %13 = sext i1 %8 to i32, !dbg !4537
  br i1 %12, label %22, label %14, !dbg !4537

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4539
  %16 = load i32, i32* %15, align 4, !dbg !4539, !tbaa !847
  %17 = icmp ne i32 %16, 9, !dbg !4541
  %18 = sext i1 %17 to i32, !dbg !4541
  br label %22, !dbg !4541

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4543

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4545
  store i32 0, i32* %21, align 4, !dbg !4547, !tbaa !847
  br label %22, !dbg !4545

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4548
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4549 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4554, metadata !727), !dbg !4574
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4555, metadata !727), !dbg !4575
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4576
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4556, metadata !727), !dbg !4577
  %3 = icmp eq i8* %2, null, !dbg !4578
  br i1 %3, label %15, label %4, !dbg !4579

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4564, metadata !727), !dbg !4580
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4565, metadata !727), !dbg !4581
  %5 = load i8, i8* %2, align 1, !dbg !4582, !tbaa !836
  %6 = icmp eq i8 %5, 67, !dbg !4584
  br i1 %6, label %7, label %11, !dbg !4587

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4589
  %9 = load i8, i8* %8, align 1, !dbg !4589, !tbaa !836
  %10 = icmp eq i8 %9, 0, !dbg !4592
  br i1 %10, label %14, label %11, !dbg !4594

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4570, metadata !727), !dbg !4596
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0)) #10, !dbg !4597
  %13 = icmp eq i32 %12, 0, !dbg !4599
  br i1 %13, label %14, label %15, !dbg !4601

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4555, metadata !727), !dbg !4575
  br label %15, !dbg !4603

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4604
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4605 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4617, metadata !727), !dbg !4691
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4684, metadata !727), !dbg !4693
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4694
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4609, metadata !727), !dbg !4695
  %4 = icmp eq i8* %3, null, !dbg !4696
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), i8* %3, !dbg !4698
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4609, metadata !727), !dbg !4695
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4699, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4631, metadata !727) #10, !dbg !4700
  %7 = icmp eq i8* %6, null, !dbg !4701
  br i1 %7, label %8, label %127, !dbg !4702

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.125, i64 0, i64 0)) #10, !dbg !4703
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4632, metadata !727) #10, !dbg !4704
  %10 = icmp eq i8* %9, null, !dbg !4705
  br i1 %10, label %14, label %11, !dbg !4707

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4708, !tbaa !836
  %13 = icmp eq i8 %12, 0, !dbg !4710
  br i1 %13, label %14, label %15, !dbg !4711

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4713

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.126, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4632, metadata !727) #10, !dbg !4704
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4714
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4635, metadata !727) #10, !dbg !4715
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4637, metadata !727) #10, !dbg !4716
  %18 = icmp eq i64 %17, 0, !dbg !4717
  br i1 %18, label %24, label %19, !dbg !4718

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4719
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4719
  %22 = load i8, i8* %21, align 1, !dbg !4719, !tbaa !836
  %23 = icmp ne i8 %22, 47, !dbg !4721
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4722
  %27 = add i64 %17, 14, !dbg !4723
  %28 = add i64 %27, %26, !dbg !4724
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4725
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4634, metadata !727) #10, !dbg !4726
  %30 = icmp eq i8* %29, null, !dbg !4727
  br i1 %30, label %125, label %31, !dbg !4727

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4728
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4731

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4732, !tbaa !836
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4734
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.127, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4735
  br label %37, !dbg !4736

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4734
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.127, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4735
  br label %37, !dbg !4736

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4737
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4639, metadata !727) #10, !dbg !4738
  %39 = icmp slt i32 %38, 0, !dbg !4739
  br i1 %39, label %123, label %40, !dbg !4740

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.128, i64 0, i64 0)) #10, !dbg !4741
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4640, metadata !727) #10, !dbg !4742
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4743
  br i1 %42, label %48, label %43, !dbg !4744

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4745

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4746
  br label %123, !dbg !4748

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4681, metadata !727) #10, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4682, metadata !727) #10, !dbg !4749
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4750
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4751
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4752, metadata !727) #10, !dbg !4757
  %53 = load i8*, i8** %46, align 8, !dbg !4759, !tbaa !936
  %54 = load i8*, i8** %47, align 8, !dbg !4759, !tbaa !939
  %55 = icmp ult i8* %53, %54, !dbg !4759
  br i1 %55, label %58, label %56, !dbg !4759, !prof !940

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4760
  br label %62, !dbg !4760

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4762
  store i8* %59, i8** %46, align 8, !dbg !4762, !tbaa !936
  %60 = load i8, i8* %53, align 1, !dbg !4762, !tbaa !836
  %61 = zext i8 %60 to i32, !dbg !4762
  br label %62, !dbg !4762

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4764
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4683, metadata !727) #10, !dbg !4766
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4767

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4768

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4752, metadata !727) #10, !dbg !4768
  %66 = load i8*, i8** %46, align 8, !dbg !4772, !tbaa !936
  %67 = load i8*, i8** %47, align 8, !dbg !4772, !tbaa !939
  %68 = icmp ult i8* %66, %67, !dbg !4772
  br i1 %68, label %71, label %69, !dbg !4772, !prof !940

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4773
  br label %75, !dbg !4773

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4774
  store i8* %72, i8** %46, align 8, !dbg !4774, !tbaa !936
  %73 = load i8, i8* %66, align 1, !dbg !4774, !tbaa !836
  %74 = zext i8 %73 to i32, !dbg !4774
  br label %75, !dbg !4774

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4775
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4683, metadata !727) #10, !dbg !4766
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4776, !llvm.loop !4778

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4781
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.129, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4782
  %80 = icmp slt i32 %79, 2, !dbg !4784
  br i1 %80, label %115, label %81, !dbg !4785

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4786
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4688, metadata !727) #10, !dbg !4787
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4788
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4689, metadata !727) #10, !dbg !4789
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4690, metadata !727) #10, !dbg !4790
  %84 = icmp eq i64 %51, 0, !dbg !4791
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4793

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4682, metadata !727) #10, !dbg !4749
  %89 = add i64 %86, 2, !dbg !4794
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4796
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4681, metadata !727) #10, !dbg !4745
  br label %95, !dbg !4797

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4798
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4682, metadata !727) #10, !dbg !4749
  %93 = add i64 %92, 1, !dbg !4800
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4801
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4681, metadata !727) #10, !dbg !4745
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4681, metadata !727) #10, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4682, metadata !727) #10, !dbg !4749
  %98 = icmp eq i8* %97, null, !dbg !4802
  br i1 %98, label %99, label %100, !dbg !4804

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4682, metadata !727) #10, !dbg !4749
  call void @free(i8* %52) #10, !dbg !4805
  br label %116, !dbg !4807

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4808
  %102 = xor i64 %83, -1, !dbg !4809
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4809
  %104 = xor i64 %82, -1, !dbg !4810
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4810
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4811, metadata !727) #10, !dbg !4820
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4819, metadata !727) #10, !dbg !4820
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4822
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4823
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4811, metadata !727) #10, !dbg !4824
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4819, metadata !727) #10, !dbg !4824
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4826
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4827
  br label %111, !dbg !4828

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4745

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4681, metadata !727) #10, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4682, metadata !727) #10, !dbg !4749
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4828
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4828
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4745

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4745

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4681, metadata !727) #10, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4682, metadata !727) #10, !dbg !4749
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4828
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4828
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4829
  %120 = icmp eq i64 %117, 0, !dbg !4830
  br i1 %120, label %123, label %121, !dbg !4832

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4833
  store i8 0, i8* %122, align 1, !dbg !4835, !tbaa !836
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4631, metadata !727) #10, !dbg !4700
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4631, metadata !727) #10, !dbg !4700
  call void @free(i8* %29) #10, !dbg !4836
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4631, metadata !727) #10, !dbg !4700
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4837, !tbaa !735
  br label %127, !dbg !4838

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4610, metadata !727), !dbg !4839
  %129 = load i8, i8* %128, align 1, !dbg !4840, !tbaa !836
  %130 = icmp eq i8 %129, 0, !dbg !4841
  br i1 %130, label %157, label %131, !dbg !4842

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4844

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4844
  %136 = icmp eq i32 %135, 0, !dbg !4845
  br i1 %136, label %143, label %137, !dbg !4846

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4847
  br i1 %138, label %139, label %147, !dbg !4849

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4850
  %141 = load i8, i8* %140, align 1, !dbg !4850, !tbaa !836
  %142 = icmp eq i8 %141, 0, !dbg !4852
  br i1 %142, label %143, label %147, !dbg !4853

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4855
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4857
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4858
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4609, metadata !727), !dbg !4695
  br label %157, !dbg !4859

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4860
  %149 = add i64 %148, 1, !dbg !4861
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4862
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4610, metadata !727), !dbg !4839
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4863
  %152 = add i64 %151, 1, !dbg !4864
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4865
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4610, metadata !727), !dbg !4839
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4610, metadata !727), !dbg !4839
  %154 = load i8, i8* %153, align 1, !dbg !4840, !tbaa !836
  %155 = icmp eq i8 %154, 0, !dbg !4841
  br i1 %155, label %156, label %132, !dbg !4842, !llvm.loop !4866

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4695

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4609, metadata !727), !dbg !4695
  %159 = load i8, i8* %158, align 1, !dbg !4869, !tbaa !836
  %160 = icmp eq i8 %159, 0, !dbg !4871
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %158, !dbg !4872
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4609, metadata !727), !dbg !4695
  ret i8* %161, !dbg !4873
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

!llvm.dbg.cu = !{!2, !87, !240, !246, !254, !675, !261, !268, !678, !321, !686, !697, !699, !701, !703, !705, !707, !709, !712, !714, !330}
!llvm.ident = !{!717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717}
!llvm.module.flags = !{!718, !719, !720, !721}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 51, type: !82, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !37)
!3 = !DIFile(filename: "src/expand.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!20 = !{!21, !23, !24, !27, !29, !32, !34, !35, !36, !31}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 62, baseType: !26)
!25 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!37 = !{!38, !0, !68}
!38 = !DIGlobalVariableExpression(var: !39)
!39 = distinct !DIGlobalVariable(name: "infomap", scope: !40, file: !41, line: 632, type: !65, isLocal: true, isDefinition: true)
!40 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !41, file: !41, line: 630, type: !42, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !44)
!41 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !DISubroutineType(types: !43)
!43 = !{null, !32}
!44 = !{!45, !46, !47, !54, !56, !57, !58, !61, !62, !64}
!45 = !DILocalVariable(name: "program", arg: 1, scope: !40, file: !41, line: 630, type: !32)
!46 = !DILocalVariable(name: "node", scope: !40, file: !41, line: 642, type: !32)
!47 = !DILocalVariable(name: "map_prog", scope: !40, file: !41, line: 643, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !40, file: !41, line: 632, size: 128, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !50, file: !41, line: 632, baseType: !32, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !50, file: !41, line: 632, baseType: !32, size: 64, offset: 64)
!54 = !DILocalVariable(name: "__s1_len", scope: !55, file: !41, line: 645, type: !24)
!55 = distinct !DILexicalBlock(scope: !40, file: !41, line: 645, column: 33)
!56 = !DILocalVariable(name: "__s2_len", scope: !55, file: !41, line: 645, type: !24)
!57 = !DILocalVariable(name: "lc_messages", scope: !40, file: !41, line: 655, type: !32)
!58 = !DILocalVariable(name: "__s1_len", scope: !59, file: !41, line: 656, type: !24)
!59 = distinct !DILexicalBlock(scope: !60, file: !41, line: 656, column: 22)
!60 = distinct !DILexicalBlock(scope: !40, file: !41, line: 656, column: 7)
!61 = !DILocalVariable(name: "__s2_len", scope: !59, file: !41, line: 656, type: !24)
!62 = !DILocalVariable(name: "__s2", scope: !63, file: !41, line: 656, type: !29)
!63 = distinct !DILexicalBlock(scope: !59, file: !41, line: 656, column: 22)
!64 = !DILocalVariable(name: "__result", scope: !63, file: !41, line: 656, type: !34)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 896, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 7)
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 53, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1280, elements: !80)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !73, line: 104, size: 256, elements: !74)
!73 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !{!75, !76, !77, !79}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 106, baseType: !32, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !72, file: !73, line: 109, baseType: !34, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !72, file: !73, line: 110, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !73, line: 111, baseType: !34, size: 32, offset: 192)
!80 = !{!81}
!81 = !DISubrange(count: 5)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 272, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 34)
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !87, file: !88, line: 32, type: !229, isLocal: false, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !126, globals: !133)
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
!117 = !{!23, !23, !118, !24}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(name: "p", arg: 1, scope: !115, file: !114, line: 180, type: !23)
!121 = !DILocalVariable(name: "pn", arg: 2, scope: !115, file: !114, line: 180, type: !118)
!122 = !DILocalVariable(name: "s", arg: 3, scope: !115, file: !114, line: 180, type: !24)
!123 = !DILocalVariable(name: "n", scope: !115, file: !114, line: 182, type: !24)
!124 = !{!125}
!125 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!126 = !{!34, !35, !127, !128, !23, !129, !24, !27, !29, !32}
!127 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !130, line: 136, baseType: !131)
!130 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !132, line: 62, baseType: !26)
!132 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!133 = !{!85, !134, !136, !215, !217, !219, !221, !223, !225, !227, !230, !235}
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "exit_status", scope: !87, file: !88, line: 68, type: !34, isLocal: false, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137)
!137 = distinct !DIGlobalVariable(name: "prev_file", scope: !138, file: !88, line: 280, type: !21, isLocal: true, isDefinition: true)
!138 = distinct !DISubprogram(name: "next_file", scope: !88, file: !88, line: 278, type: !139, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !195)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 49, baseType: !144)
!143 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, elements: !146)
!145 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !167, !168, !169, !170, !173, !174, !176, !180, !183, !185, !186, !187, !188, !189, !190, !191}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !144, file: !145, line: 242, baseType: !34, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !144, file: !145, line: 247, baseType: !21, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !144, file: !145, line: 248, baseType: !21, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !144, file: !145, line: 249, baseType: !21, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !144, file: !145, line: 250, baseType: !21, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !144, file: !145, line: 251, baseType: !21, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !144, file: !145, line: 252, baseType: !21, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !144, file: !145, line: 253, baseType: !21, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !144, file: !145, line: 254, baseType: !21, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !144, file: !145, line: 256, baseType: !21, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !144, file: !145, line: 257, baseType: !21, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !144, file: !145, line: 258, baseType: !21, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !144, file: !145, line: 260, baseType: !160, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, elements: !162)
!162 = !{!163, !164, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !161, file: !145, line: 157, baseType: !160, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !161, file: !145, line: 158, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !161, file: !145, line: 162, baseType: !34, size: 32, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !144, file: !145, line: 262, baseType: !165, size: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !144, file: !145, line: 264, baseType: !34, size: 32, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !144, file: !145, line: 268, baseType: !34, size: 32, offset: 928)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !144, file: !145, line: 270, baseType: !171, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !132, line: 140, baseType: !172)
!172 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !144, file: !145, line: 274, baseType: !35, size: 16, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !144, file: !145, line: 275, baseType: !175, size: 8, offset: 1040)
!175 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !144, file: !145, line: 276, baseType: !177, size: 8, offset: 1048)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 1)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !144, file: !145, line: 280, baseType: !181, size: 64, offset: 1088)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !145, line: 150, baseType: null)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !144, file: !145, line: 289, baseType: !184, size: 64, offset: 1152)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !132, line: 141, baseType: !172)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !144, file: !145, line: 297, baseType: !23, size: 64, offset: 1216)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !144, file: !145, line: 298, baseType: !23, size: 64, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !144, file: !145, line: 299, baseType: !23, size: 64, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !144, file: !145, line: 300, baseType: !23, size: 64, offset: 1408)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !144, file: !145, line: 302, baseType: !24, size: 64, offset: 1472)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !144, file: !145, line: 303, baseType: !34, size: 32, offset: 1536)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !144, file: !145, line: 305, baseType: !192, size: 160, offset: 1568)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 20)
!195 = !{!196, !197, !198, !203, !204, !206, !207, !211, !212, !214}
!196 = !DILocalVariable(name: "fp", arg: 1, scope: !138, file: !88, line: 278, type: !141)
!197 = !DILocalVariable(name: "file", scope: !138, file: !88, line: 281, type: !21)
!198 = !DILocalVariable(name: "__s1_len", scope: !199, file: !88, line: 290, type: !24)
!199 = distinct !DILexicalBlock(scope: !200, file: !88, line: 290, column: 11)
!200 = distinct !DILexicalBlock(scope: !201, file: !88, line: 290, column: 11)
!201 = distinct !DILexicalBlock(scope: !202, file: !88, line: 284, column: 5)
!202 = distinct !DILexicalBlock(scope: !138, file: !88, line: 283, column: 7)
!203 = !DILocalVariable(name: "__s2_len", scope: !199, file: !88, line: 290, type: !24)
!204 = !DILocalVariable(name: "__s2", scope: !205, file: !88, line: 290, type: !29)
!205 = distinct !DILexicalBlock(scope: !199, file: !88, line: 290, column: 11)
!206 = !DILocalVariable(name: "__result", scope: !205, file: !88, line: 290, type: !34)
!207 = !DILocalVariable(name: "__s1_len", scope: !208, file: !88, line: 301, type: !24)
!208 = distinct !DILexicalBlock(scope: !209, file: !88, line: 301, column: 11)
!209 = distinct !DILexicalBlock(scope: !210, file: !88, line: 301, column: 11)
!210 = distinct !DILexicalBlock(scope: !138, file: !88, line: 300, column: 5)
!211 = !DILocalVariable(name: "__s2_len", scope: !208, file: !88, line: 301, type: !24)
!212 = !DILocalVariable(name: "__s2", scope: !213, file: !88, line: 301, type: !29)
!213 = distinct !DILexicalBlock(scope: !208, file: !88, line: 301, column: 11)
!214 = !DILocalVariable(name: "__result", scope: !213, file: !88, line: 301, type: !34)
!215 = !DIGlobalVariableExpression(var: !216)
!216 = distinct !DIGlobalVariable(name: "max_column_width", scope: !87, file: !88, line: 41, type: !24, isLocal: false, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218)
!218 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !87, file: !88, line: 53, type: !24, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220)
!220 = distinct !DIGlobalVariable(name: "tab_list", scope: !87, file: !88, line: 46, type: !128, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222)
!222 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !87, file: !88, line: 49, type: !24, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224)
!224 = distinct !DIGlobalVariable(name: "extend_size", scope: !87, file: !88, line: 38, type: !129, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226)
!226 = distinct !DIGlobalVariable(name: "tab_size", scope: !87, file: !88, line: 35, type: !129, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228)
!228 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !87, file: !88, line: 65, type: !229, isLocal: true, isDefinition: true)
!229 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !87, file: !88, line: 59, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 2)
!235 = !DIGlobalVariableExpression(var: !236)
!236 = distinct !DIGlobalVariable(name: "file_list", scope: !87, file: !88, line: 56, type: !237, isLocal: true, isDefinition: true)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "Version", scope: !240, file: !241, line: 2, type: !32, isLocal: false, isDefinition: true)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, globals: !243)
!241 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !{}
!243 = !{!238}
!244 = !DIGlobalVariableExpression(var: !245)
!245 = distinct !DIGlobalVariable(name: "file_name", scope: !246, file: !251, line: 36, type: !32, isLocal: true, isDefinition: true)
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, globals: !248)
!247 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!248 = !{!244, !249}
!249 = !DIGlobalVariableExpression(var: !250)
!250 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !246, file: !251, line: 46, type: !229, isLocal: true, isDefinition: true)
!251 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!252 = !DIGlobalVariableExpression(var: !253)
!253 = distinct !DIGlobalVariable(name: "exit_failure", scope: !254, file: !257, line: 24, type: !258, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, globals: !256)
!255 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!256 = !{!252}
!257 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!258 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!259 = !DIGlobalVariableExpression(var: !260)
!260 = distinct !DIGlobalVariable(name: "program_name", scope: !261, file: !265, line: 33, type: !32, isLocal: false, isDefinition: true)
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !263, globals: !264)
!262 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!263 = !{!23, !21}
!264 = !{!259}
!265 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!266 = !DIGlobalVariableExpression(var: !267)
!267 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !268, file: !280, line: 77, type: !315, isLocal: false, isDefinition: true)
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !270, retainedTypes: !276, globals: !277)
!269 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!270 = !{!90, !271, !5}
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !91, line: 242, size: 32, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!274 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!275 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!276 = !{!34, !35, !24, !21}
!277 = !{!266, !278, !285, !297, !299, !304, !311, !313}
!278 = !DIGlobalVariableExpression(var: !279)
!279 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !268, file: !280, line: 93, type: !281, isLocal: false, isDefinition: true)
!280 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 320, elements: !283)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!283 = !{!284}
!284 = !DISubrange(count: 10)
!285 = !DIGlobalVariableExpression(var: !286)
!286 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !268, file: !280, line: 1043, type: !287, isLocal: false, isDefinition: true)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !280, line: 57, size: 448, elements: !288)
!288 = !{!289, !290, !291, !295, !296}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !287, file: !280, line: 60, baseType: !90, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !280, line: 63, baseType: !34, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !287, file: !280, line: 67, baseType: !292, size: 256, offset: 64)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !287, file: !280, line: 70, baseType: !32, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !287, file: !280, line: 73, baseType: !32, size: 64, offset: 384)
!297 = !DIGlobalVariableExpression(var: !298)
!298 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !268, file: !280, line: 108, type: !287, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300)
!300 = distinct !DIGlobalVariable(name: "slot0", scope: !268, file: !280, line: 834, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 256)
!304 = !DIGlobalVariableExpression(var: !305)
!305 = distinct !DIGlobalVariable(name: "slotvec", scope: !268, file: !280, line: 837, type: !306, isLocal: true, isDefinition: true)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !280, line: 826, size: 128, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !307, file: !280, line: 828, baseType: !24, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !307, file: !280, line: 829, baseType: !21, size: 64, offset: 64)
!311 = !DIGlobalVariableExpression(var: !312)
!312 = distinct !DIGlobalVariable(name: "nslots", scope: !268, file: !280, line: 835, type: !34, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314)
!314 = distinct !DIGlobalVariable(name: "slotvec0", scope: !268, file: !280, line: 836, type: !307, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 704, elements: !317)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!317 = !{!318}
!318 = !DISubrange(count: 11)
!319 = !DIGlobalVariableExpression(var: !320)
!320 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !321, file: !324, line: 26, type: !325, isLocal: false, isDefinition: true)
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, globals: !323)
!322 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!323 = !{!319}
!324 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 376, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 47)
!328 = !DIGlobalVariableExpression(var: !329)
!329 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !330, file: !673, line: 120, type: !674, isLocal: true, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !332, retainedTypes: !671, globals: !672)
!331 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!332 = !{!333}
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !334, line: 41, size: 32, elements: !335)
!334 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!336 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!337 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!338 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!339 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!340 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!341 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!342 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!343 = !DIEnumerator(name: "DAY_1", value: 131079)
!344 = !DIEnumerator(name: "DAY_2", value: 131080)
!345 = !DIEnumerator(name: "DAY_3", value: 131081)
!346 = !DIEnumerator(name: "DAY_4", value: 131082)
!347 = !DIEnumerator(name: "DAY_5", value: 131083)
!348 = !DIEnumerator(name: "DAY_6", value: 131084)
!349 = !DIEnumerator(name: "DAY_7", value: 131085)
!350 = !DIEnumerator(name: "ABMON_1", value: 131086)
!351 = !DIEnumerator(name: "ABMON_2", value: 131087)
!352 = !DIEnumerator(name: "ABMON_3", value: 131088)
!353 = !DIEnumerator(name: "ABMON_4", value: 131089)
!354 = !DIEnumerator(name: "ABMON_5", value: 131090)
!355 = !DIEnumerator(name: "ABMON_6", value: 131091)
!356 = !DIEnumerator(name: "ABMON_7", value: 131092)
!357 = !DIEnumerator(name: "ABMON_8", value: 131093)
!358 = !DIEnumerator(name: "ABMON_9", value: 131094)
!359 = !DIEnumerator(name: "ABMON_10", value: 131095)
!360 = !DIEnumerator(name: "ABMON_11", value: 131096)
!361 = !DIEnumerator(name: "ABMON_12", value: 131097)
!362 = !DIEnumerator(name: "MON_1", value: 131098)
!363 = !DIEnumerator(name: "MON_2", value: 131099)
!364 = !DIEnumerator(name: "MON_3", value: 131100)
!365 = !DIEnumerator(name: "MON_4", value: 131101)
!366 = !DIEnumerator(name: "MON_5", value: 131102)
!367 = !DIEnumerator(name: "MON_6", value: 131103)
!368 = !DIEnumerator(name: "MON_7", value: 131104)
!369 = !DIEnumerator(name: "MON_8", value: 131105)
!370 = !DIEnumerator(name: "MON_9", value: 131106)
!371 = !DIEnumerator(name: "MON_10", value: 131107)
!372 = !DIEnumerator(name: "MON_11", value: 131108)
!373 = !DIEnumerator(name: "MON_12", value: 131109)
!374 = !DIEnumerator(name: "AM_STR", value: 131110)
!375 = !DIEnumerator(name: "PM_STR", value: 131111)
!376 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!377 = !DIEnumerator(name: "D_FMT", value: 131113)
!378 = !DIEnumerator(name: "T_FMT", value: 131114)
!379 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!380 = !DIEnumerator(name: "ERA", value: 131116)
!381 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!382 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!383 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!384 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!385 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!386 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!387 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!388 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!389 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!390 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!391 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!392 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!393 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!394 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!395 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!396 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!397 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!398 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!399 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!400 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!401 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!402 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!403 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!404 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!405 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!406 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!407 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!408 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!409 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!410 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!411 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!412 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!413 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!414 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!415 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!416 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!417 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!418 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!419 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!420 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!421 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!422 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!423 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!424 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!425 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!426 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!427 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!428 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!429 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!430 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!431 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!432 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!433 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!434 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!435 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!436 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!437 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!438 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!439 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!440 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!441 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!442 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!443 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!444 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!445 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!446 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!447 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!448 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!449 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!450 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!451 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!452 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!453 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!454 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!455 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!456 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!457 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!458 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!459 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!460 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!461 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!462 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!463 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!464 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!465 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!466 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!467 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!468 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!469 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!470 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!471 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!472 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!473 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!474 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!475 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!476 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!477 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!478 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!479 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!480 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!481 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!482 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!483 = !DIEnumerator(name: "CODESET", value: 14)
!484 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!485 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!486 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!487 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!512 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!530 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!531 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!532 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!533 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!534 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!535 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!537 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!538 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!539 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!540 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!541 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!542 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!543 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!555 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!556 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!557 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!558 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!559 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!560 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!561 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!562 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!563 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!564 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!565 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!566 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!567 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!568 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!569 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!570 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!571 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!572 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!573 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!574 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!575 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!576 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!577 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!580 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!594 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!595 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!598 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!599 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!600 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!601 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!602 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!603 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!604 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!605 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!606 = !DIEnumerator(name: "THOUSEP", value: 65537)
!607 = !DIEnumerator(name: "__GROUPING", value: 65538)
!608 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!609 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!610 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!611 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!612 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!613 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!614 = !DIEnumerator(name: "__YESSTR", value: 327682)
!615 = !DIEnumerator(name: "__NOSTR", value: 327683)
!616 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!617 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!618 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!619 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!620 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!621 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!622 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!623 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!624 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!625 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!626 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!627 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!628 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!629 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!630 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!631 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!632 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!633 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!634 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!635 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!636 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!637 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!638 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!639 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!640 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!641 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!642 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!643 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!644 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!645 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!646 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!647 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!648 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!649 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!650 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!651 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!652 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!653 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!654 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!655 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!669 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!670 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!671 = !{!23, !21, !36}
!672 = !{!328}
!673 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !677)
!676 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!677 = !{!104}
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !680, retainedTypes: !685)
!679 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!680 = !{!681}
!681 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !682, line: 41, size: 32, elements: !683)
!682 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!683 = !{!684}
!684 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!685 = !{!23}
!686 = distinct !DICompileUnit(language: DW_LANG_C99, file: !687, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !688, retainedTypes: !696)
!687 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!688 = !{!689}
!689 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !690, file: !114, line: 192, size: 32, elements: !124)
!690 = distinct !DISubprogram(name: "x2nrealloc", scope: !114, file: !114, line: 180, type: !116, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !691)
!691 = !{!692, !693, !694, !695}
!692 = !DILocalVariable(name: "p", arg: 1, scope: !690, file: !114, line: 180, type: !23)
!693 = !DILocalVariable(name: "pn", arg: 2, scope: !690, file: !114, line: 180, type: !118)
!694 = !DILocalVariable(name: "s", arg: 3, scope: !690, file: !114, line: 180, type: !24)
!695 = !DILocalVariable(name: "n", scope: !690, file: !114, line: 182, type: !24)
!696 = !{!24, !21, !23}
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242)
!698 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242)
!700 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !685)
!702 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242)
!704 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !685)
!706 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!707 = distinct !DICompileUnit(language: DW_LANG_C99, file: !708, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !685)
!708 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !711)
!710 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!711 = !{!24}
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242)
!713 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !715, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !716)
!715 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!716 = !{!24, !27, !29, !32}
!717 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!718 = !{i32 2, !"Dwarf Version", i32 4}
!719 = !{i32 2, !"Debug Info Version", i32 3}
!720 = !{i32 1, !"PIC Level", i32 2}
!721 = !{i32 1, !"PIE Level", i32 2}
!722 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 63, type: !723, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !34}
!725 = !{!726}
!726 = !DILocalVariable(name: "status", arg: 1, scope: !722, file: !3, line: 63, type: !34)
!727 = !DIExpression()
!728 = !DILocation(line: 63, column: 12, scope: !722)
!729 = !DILocation(line: 65, column: 14, scope: !730)
!730 = distinct !DILexicalBlock(scope: !722, file: !3, line: 65, column: 7)
!731 = !DILocation(line: 65, column: 7, scope: !722)
!732 = !DILocation(line: 66, column: 5, scope: !733)
!733 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 1)
!734 = distinct !DILexicalBlock(scope: !730, file: !3, line: 66, column: 5)
!735 = !{!736, !736, i64 0}
!736 = !{!"any pointer", !737, i64 0}
!737 = !{!"omnipotent char", !738, i64 0}
!738 = !{!"Simple C/C++ TBAA"}
!739 = !DILocation(line: 66, column: 5, scope: !740)
!740 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 3)
!741 = !DILocation(line: 66, column: 5, scope: !742)
!742 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 2)
!743 = !DILocation(line: 69, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !730, file: !3, line: 68, column: 5)
!745 = !DILocation(line: 69, column: 7, scope: !746)
!746 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 1)
!747 = !DILocation(line: 73, column: 7, scope: !744)
!748 = !DILocation(line: 73, column: 7, scope: !746)
!749 = !DILocation(line: 580, column: 3, scope: !750, inlinedAt: !753)
!750 = distinct !DISubprogram(name: "emit_stdin_note", scope: !41, file: !41, line: 578, type: !751, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !242)
!751 = !DISubroutineType(types: !752)
!752 = !{null}
!753 = distinct !DILocation(line: 77, column: 7, scope: !744)
!754 = !DILocation(line: 580, column: 3, scope: !755, inlinedAt: !753)
!755 = !DILexicalBlockFile(scope: !750, file: !41, discriminator: 1)
!756 = !DILocation(line: 587, column: 3, scope: !757, inlinedAt: !758)
!757 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !41, file: !41, line: 585, type: !751, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !242)
!758 = distinct !DILocation(line: 78, column: 7, scope: !744)
!759 = !DILocation(line: 587, column: 3, scope: !760, inlinedAt: !758)
!760 = !DILexicalBlockFile(scope: !757, file: !41, discriminator: 1)
!761 = !DILocation(line: 80, column: 7, scope: !744)
!762 = !DILocation(line: 80, column: 7, scope: !746)
!763 = !DILocation(line: 84, column: 7, scope: !744)
!764 = !DILocation(line: 84, column: 7, scope: !746)
!765 = !DILocation(line: 87, column: 7, scope: !744)
!766 = !DILocation(line: 87, column: 7, scope: !746)
!767 = !DILocation(line: 88, column: 7, scope: !744)
!768 = !DILocation(line: 88, column: 7, scope: !746)
!769 = !DILocation(line: 642, column: 15, scope: !40, inlinedAt: !770)
!770 = distinct !DILocation(line: 89, column: 7, scope: !744)
!771 = !DILocation(line: 651, column: 3, scope: !40, inlinedAt: !770)
!772 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !770)
!773 = !DILexicalBlockFile(scope: !40, file: !41, discriminator: 1)
!774 = !DILocation(line: 655, column: 29, scope: !40, inlinedAt: !770)
!775 = !DILocation(line: 655, column: 15, scope: !40, inlinedAt: !770)
!776 = !DILocation(line: 656, column: 7, scope: !60, inlinedAt: !770)
!777 = !DILocation(line: 656, column: 19, scope: !60, inlinedAt: !770)
!778 = !DILocation(line: 656, column: 22, scope: !779, inlinedAt: !770)
!779 = !DILexicalBlockFile(scope: !60, file: !41, discriminator: 16)
!780 = !DILocation(line: 656, column: 7, scope: !781, inlinedAt: !770)
!781 = !DILexicalBlockFile(scope: !40, file: !41, discriminator: 16)
!782 = !DILocation(line: 662, column: 7, scope: !783, inlinedAt: !770)
!783 = distinct !DILexicalBlock(scope: !60, file: !41, line: 657, column: 5)
!784 = !DILocation(line: 662, column: 7, scope: !785, inlinedAt: !770)
!785 = !DILexicalBlockFile(scope: !783, file: !41, discriminator: 1)
!786 = !DILocation(line: 664, column: 5, scope: !783, inlinedAt: !770)
!787 = !DILocation(line: 665, column: 3, scope: !40, inlinedAt: !770)
!788 = !DILocation(line: 665, column: 3, scope: !773, inlinedAt: !770)
!789 = !DILocation(line: 667, column: 3, scope: !40, inlinedAt: !770)
!790 = !DILocation(line: 667, column: 3, scope: !773, inlinedAt: !770)
!791 = !DILocation(line: 91, column: 3, scope: !722)
!792 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 184, type: !793, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{!34, !34, !237}
!795 = !{!796, !797, !798, !799}
!796 = !DILocalVariable(name: "argc", arg: 1, scope: !792, file: !3, line: 184, type: !34)
!797 = !DILocalVariable(name: "argv", arg: 2, scope: !792, file: !3, line: 184, type: !237)
!798 = !DILocalVariable(name: "c", scope: !792, file: !3, line: 186, type: !34)
!799 = !DILocalVariable(name: "tab_stop", scope: !800, file: !3, line: 215, type: !804)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 214, column: 13)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 211, column: 15)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 200, column: 9)
!803 = distinct !DILexicalBlock(scope: !792, file: !3, line: 198, column: 5)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16, elements: !233)
!805 = !DILocation(line: 184, column: 11, scope: !792)
!806 = !DILocation(line: 184, column: 24, scope: !792)
!807 = !DILocation(line: 189, column: 21, scope: !792)
!808 = !DILocation(line: 189, column: 3, scope: !792)
!809 = !DILocation(line: 190, column: 3, scope: !792)
!810 = !DILocation(line: 191, column: 3, scope: !792)
!811 = !DILocation(line: 192, column: 3, scope: !792)
!812 = !DILocation(line: 194, column: 3, scope: !792)
!813 = !DILocation(line: 195, column: 23, scope: !792)
!814 = !{!815, !815, i64 0}
!815 = !{!"_Bool", !737, i64 0}
!816 = !DILocation(line: 197, column: 3, scope: !792)
!817 = !DILocation(line: 197, column: 15, scope: !818)
!818 = !DILexicalBlockFile(scope: !792, file: !3, discriminator: 1)
!819 = !DILocation(line: 186, column: 7, scope: !792)
!820 = !DILocation(line: 197, column: 3, scope: !818)
!821 = !DILocation(line: 202, column: 31, scope: !802)
!822 = !DILocation(line: 203, column: 11, scope: !802)
!823 = !DILocation(line: 206, column: 28, scope: !802)
!824 = !DILocation(line: 206, column: 11, scope: !802)
!825 = !DILocation(line: 207, column: 11, scope: !802)
!826 = !DILocation(line: 211, column: 15, scope: !801)
!827 = !DILocation(line: 211, column: 15, scope: !802)
!828 = !DILocation(line: 212, column: 37, scope: !801)
!829 = !DILocation(line: 212, column: 13, scope: !801)
!830 = distinct !{!830, !816, !831}
!831 = !DILocation(line: 229, column: 5, scope: !792)
!832 = !DILocation(line: 215, column: 15, scope: !800)
!833 = !DILocation(line: 215, column: 20, scope: !800)
!834 = !DILocation(line: 216, column: 29, scope: !800)
!835 = !DILocation(line: 216, column: 27, scope: !800)
!836 = !{!737, !737, i64 0}
!837 = !DILocation(line: 217, column: 27, scope: !800)
!838 = !DILocation(line: 218, column: 15, scope: !800)
!839 = !DILocation(line: 219, column: 13, scope: !801)
!840 = !DILocation(line: 222, column: 9, scope: !802)
!841 = !DILocation(line: 224, column: 9, scope: !802)
!842 = !DILocation(line: 224, column: 9, scope: !843)
!843 = !DILexicalBlockFile(scope: !802, file: !3, discriminator: 1)
!844 = !DILocation(line: 227, column: 11, scope: !802)
!845 = !DILocation(line: 231, column: 3, scope: !792)
!846 = !DILocation(line: 233, column: 20, scope: !792)
!847 = !{!848, !848, i64 0}
!848 = !{!"int", !737, i64 0}
!849 = !DILocation(line: 233, column: 27, scope: !792)
!850 = !DILocation(line: 233, column: 38, scope: !818)
!851 = !DILocation(line: 233, column: 19, scope: !792)
!852 = !DILocation(line: 233, column: 3, scope: !853)
!853 = !DILexicalBlockFile(scope: !792, file: !3, discriminator: 3)
!854 = !DILocation(line: 102, column: 14, scope: !855, inlinedAt: !910)
!855 = distinct !DISubprogram(name: "expand", scope: !3, file: !3, line: 99, type: !751, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !856)
!856 = !{!857, !898, !900, !901, !902, !903, !909}
!857 = !DILocalVariable(name: "fp", scope: !855, file: !3, line: 102, type: !858)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 49, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !860, file: !145, line: 242, baseType: !34, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !860, file: !145, line: 247, baseType: !21, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !860, file: !145, line: 248, baseType: !21, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !860, file: !145, line: 249, baseType: !21, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !860, file: !145, line: 250, baseType: !21, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !860, file: !145, line: 251, baseType: !21, size: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !860, file: !145, line: 252, baseType: !21, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !860, file: !145, line: 253, baseType: !21, size: 64, offset: 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !860, file: !145, line: 254, baseType: !21, size: 64, offset: 512)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !860, file: !145, line: 256, baseType: !21, size: 64, offset: 576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !860, file: !145, line: 257, baseType: !21, size: 64, offset: 640)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !860, file: !145, line: 258, baseType: !21, size: 64, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !860, file: !145, line: 260, baseType: !875, size: 64, offset: 768)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, elements: !877)
!877 = !{!878, !879, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !876, file: !145, line: 157, baseType: !875, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !876, file: !145, line: 158, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !876, file: !145, line: 162, baseType: !34, size: 32, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !860, file: !145, line: 262, baseType: !880, size: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !860, file: !145, line: 264, baseType: !34, size: 32, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !860, file: !145, line: 268, baseType: !34, size: 32, offset: 928)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !860, file: !145, line: 270, baseType: !171, size: 64, offset: 960)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !860, file: !145, line: 274, baseType: !35, size: 16, offset: 1024)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !860, file: !145, line: 275, baseType: !175, size: 8, offset: 1040)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !860, file: !145, line: 276, baseType: !177, size: 8, offset: 1048)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !860, file: !145, line: 280, baseType: !181, size: 64, offset: 1088)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !860, file: !145, line: 289, baseType: !184, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !860, file: !145, line: 297, baseType: !23, size: 64, offset: 1216)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !860, file: !145, line: 298, baseType: !23, size: 64, offset: 1280)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !860, file: !145, line: 299, baseType: !23, size: 64, offset: 1344)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !860, file: !145, line: 300, baseType: !23, size: 64, offset: 1408)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !860, file: !145, line: 302, baseType: !24, size: 64, offset: 1472)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !860, file: !145, line: 303, baseType: !34, size: 32, offset: 1536)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !860, file: !145, line: 305, baseType: !192, size: 160, offset: 1568)
!898 = !DILocalVariable(name: "c", scope: !899, file: !3, line: 110, type: !34)
!899 = distinct !DILexicalBlock(scope: !855, file: !3, line: 108, column: 5)
!900 = !DILocalVariable(name: "convert", scope: !899, file: !3, line: 113, type: !229)
!901 = !DILocalVariable(name: "column", scope: !899, file: !3, line: 120, type: !129)
!902 = !DILocalVariable(name: "tab_index", scope: !899, file: !3, line: 123, type: !24)
!903 = !DILocalVariable(name: "next_tab_column", scope: !904, file: !3, line: 138, type: !129)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 136, column: 17)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 135, column: 19)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 134, column: 13)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 133, column: 15)
!908 = distinct !DILexicalBlock(scope: !899, file: !3, line: 129, column: 9)
!909 = !DILocalVariable(name: "last_tab", scope: !904, file: !3, line: 139, type: !229)
!910 = distinct !DILocation(line: 235, column: 3, scope: !792)
!911 = !DILocation(line: 102, column: 9, scope: !855, inlinedAt: !910)
!912 = !DILocation(line: 104, column: 8, scope: !913, inlinedAt: !910)
!913 = distinct !DILexicalBlock(scope: !855, file: !3, line: 104, column: 7)
!914 = !DILocation(line: 104, column: 7, scope: !855, inlinedAt: !910)
!915 = !DILocation(line: 113, column: 12, scope: !899, inlinedAt: !910)
!916 = !DILocation(line: 120, column: 17, scope: !899, inlinedAt: !910)
!917 = !DILocation(line: 123, column: 7, scope: !899, inlinedAt: !910)
!918 = !DILocation(line: 123, column: 14, scope: !899, inlinedAt: !910)
!919 = !{!920, !920, i64 0}
!920 = !{!"long", !737, i64 0}
!921 = !DILocation(line: 128, column: 7, scope: !899, inlinedAt: !910)
!922 = distinct !{!922, !923, !924}
!923 = !DILocation(line: 128, column: 7, scope: !899)
!924 = !DILocation(line: 179, column: 23, scope: !899)
!925 = !DILocation(line: 130, column: 11, scope: !908, inlinedAt: !910)
!926 = !DILocalVariable(name: "__fp", arg: 1, scope: !927, file: !928, line: 63, type: !858)
!927 = distinct !DISubprogram(name: "getc_unlocked", scope: !928, file: !928, line: 63, type: !929, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !931)
!928 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!929 = !DISubroutineType(types: !930)
!930 = !{!34, !858}
!931 = !{!926}
!932 = !DILocation(line: 63, column: 22, scope: !927, inlinedAt: !933)
!933 = distinct !DILocation(line: 130, column: 23, scope: !934, inlinedAt: !910)
!934 = !DILexicalBlockFile(scope: !908, file: !3, discriminator: 1)
!935 = !DILocation(line: 65, column: 10, scope: !927, inlinedAt: !933)
!936 = !{!937, !736, i64 8}
!937 = !{!"_IO_FILE", !848, i64 0, !736, i64 8, !736, i64 16, !736, i64 24, !736, i64 32, !736, i64 40, !736, i64 48, !736, i64 56, !736, i64 64, !736, i64 72, !736, i64 80, !736, i64 88, !736, i64 96, !736, i64 104, !848, i64 112, !848, i64 116, !920, i64 120, !938, i64 128, !737, i64 130, !737, i64 131, !736, i64 136, !920, i64 144, !736, i64 152, !736, i64 160, !736, i64 168, !736, i64 176, !920, i64 184, !848, i64 192, !737, i64 196}
!938 = !{!"short", !737, i64 0}
!939 = !{!937, !736, i64 16}
!940 = !{!"branch_weights", i32 2000, i32 1}
!941 = !DILocation(line: 65, column: 10, scope: !942, inlinedAt: !933)
!942 = !DILexicalBlockFile(scope: !927, file: !928, discriminator: 2)
!943 = !DILocation(line: 110, column: 11, scope: !899, inlinedAt: !910)
!944 = !DILocation(line: 130, column: 38, scope: !934, inlinedAt: !910)
!945 = !DILocation(line: 65, column: 10, scope: !946, inlinedAt: !933)
!946 = !DILexicalBlockFile(scope: !927, file: !928, discriminator: 1)
!947 = !DILocation(line: 130, column: 34, scope: !934, inlinedAt: !910)
!948 = !DILocation(line: 130, column: 47, scope: !949, inlinedAt: !910)
!949 = !DILexicalBlockFile(scope: !908, file: !3, discriminator: 2)
!950 = !DILocation(line: 130, column: 38, scope: !949, inlinedAt: !910)
!951 = !DILocation(line: 130, column: 11, scope: !952, inlinedAt: !910)
!952 = !DILexicalBlockFile(scope: !908, file: !3, discriminator: 3)
!953 = distinct !{!953, !954, !955}
!954 = !DILocation(line: 130, column: 11, scope: !908)
!955 = !DILocation(line: 131, column: 13, scope: !908)
!956 = !DILocation(line: 133, column: 15, scope: !907, inlinedAt: !910)
!957 = !DILocation(line: 133, column: 15, scope: !908, inlinedAt: !910)
!958 = !DILocation(line: 135, column: 19, scope: !906, inlinedAt: !910)
!959 = !DIExpression(DW_OP_deref)
!960 = !DILocation(line: 139, column: 24, scope: !904, inlinedAt: !910)
!961 = !DILocation(line: 139, column: 19, scope: !904, inlinedAt: !910)
!962 = !DILocation(line: 141, column: 37, scope: !904, inlinedAt: !910)
!963 = !DILocation(line: 138, column: 29, scope: !904, inlinedAt: !910)
!964 = !DILocation(line: 144, column: 23, scope: !965, inlinedAt: !910)
!965 = distinct !DILexicalBlock(scope: !904, file: !3, line: 144, column: 23)
!966 = !{i8 0, i8 2}
!967 = !DILocation(line: 145, column: 46, scope: !965, inlinedAt: !910)
!968 = !DILocation(line: 144, column: 23, scope: !904, inlinedAt: !910)
!969 = !DILocation(line: 147, column: 39, scope: !970, inlinedAt: !910)
!970 = distinct !DILexicalBlock(scope: !904, file: !3, line: 147, column: 23)
!971 = !DILocation(line: 147, column: 23, scope: !904, inlinedAt: !910)
!972 = !DILocation(line: 150, column: 35, scope: !973, inlinedAt: !910)
!973 = !DILexicalBlockFile(scope: !904, file: !3, discriminator: 1)
!974 = !DILocation(line: 150, column: 19, scope: !973, inlinedAt: !910)
!975 = !DILocation(line: 105, column: 23, scope: !976, inlinedAt: !981)
!976 = distinct !DISubprogram(name: "putchar_unlocked", scope: !928, file: !928, line: 105, type: !977, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{!34, !34}
!979 = !{!980}
!980 = !DILocalVariable(name: "__c", arg: 1, scope: !976, file: !928, line: 105, type: !34)
!981 = distinct !DILocation(line: 151, column: 25, scope: !982, inlinedAt: !910)
!982 = distinct !DILexicalBlock(scope: !904, file: !3, line: 151, column: 25)
!983 = !DILocation(line: 148, column: 21, scope: !970, inlinedAt: !910)
!984 = !DILocation(line: 148, column: 21, scope: !985, inlinedAt: !910)
!985 = !DILexicalBlockFile(scope: !970, file: !3, discriminator: 1)
!986 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !981)
!987 = !{!937, !736, i64 40}
!988 = !{!937, !736, i64 48}
!989 = !DILocation(line: 107, column: 10, scope: !990, inlinedAt: !981)
!990 = !DILexicalBlockFile(scope: !976, file: !928, discriminator: 2)
!991 = !DILocation(line: 151, column: 25, scope: !904, inlinedAt: !910)
!992 = !DILocation(line: 107, column: 10, scope: !993, inlinedAt: !981)
!993 = !DILexicalBlockFile(scope: !976, file: !928, discriminator: 1)
!994 = !DILocation(line: 151, column: 39, scope: !982, inlinedAt: !910)
!995 = !DILocation(line: 150, column: 26, scope: !973, inlinedAt: !910)
!996 = distinct !{!996, !997, !998}
!997 = !DILocation(line: 150, column: 19, scope: !904)
!998 = !DILocation(line: 152, column: 23, scope: !904)
!999 = !DILocation(line: 152, column: 23, scope: !982, inlinedAt: !910)
!1000 = !DILocation(line: 152, column: 23, scope: !1001, inlinedAt: !910)
!1001 = !DILexicalBlockFile(scope: !982, file: !3, discriminator: 1)
!1002 = !DILocation(line: 152, column: 23, scope: !1003, inlinedAt: !910)
!1003 = !DILexicalBlockFile(scope: !982, file: !3, discriminator: 2)
!1004 = !DILocation(line: 155, column: 17, scope: !905, inlinedAt: !910)
!1005 = !DILocation(line: 155, column: 17, scope: !904, inlinedAt: !910)
!1006 = !DILocation(line: 160, column: 30, scope: !1007, inlinedAt: !910)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 157, column: 17)
!1008 = distinct !DILexicalBlock(scope: !905, file: !3, line: 156, column: 24)
!1009 = !DILocation(line: 160, column: 29, scope: !1007, inlinedAt: !910)
!1010 = !DILocation(line: 160, column: 26, scope: !1007, inlinedAt: !910)
!1011 = !DILocation(line: 161, column: 34, scope: !1007, inlinedAt: !910)
!1012 = !DILocation(line: 161, column: 33, scope: !1007, inlinedAt: !910)
!1013 = !DILocation(line: 161, column: 32, scope: !1007, inlinedAt: !910)
!1014 = !DILocation(line: 161, column: 29, scope: !1007, inlinedAt: !910)
!1015 = !DILocation(line: 162, column: 17, scope: !1007, inlinedAt: !910)
!1016 = !DILocation(line: 165, column: 25, scope: !1017, inlinedAt: !910)
!1017 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 164, column: 17)
!1018 = !DILocation(line: 166, column: 24, scope: !1019, inlinedAt: !910)
!1019 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 166, column: 23)
!1020 = !DILocation(line: 166, column: 23, scope: !1017, inlinedAt: !910)
!1021 = !DILocation(line: 167, column: 21, scope: !1019, inlinedAt: !910)
!1022 = !DILocation(line: 167, column: 21, scope: !1023, inlinedAt: !910)
!1023 = !DILexicalBlockFile(scope: !1019, file: !3, discriminator: 1)
!1024 = !DILocation(line: 170, column: 26, scope: !906, inlinedAt: !910)
!1025 = !DILocation(line: 170, column: 46, scope: !906, inlinedAt: !910)
!1026 = !DILocation(line: 170, column: 52, scope: !1027, inlinedAt: !910)
!1027 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 1)
!1028 = !{!938, !938, i64 0}
!1029 = !DILocation(line: 170, column: 50, scope: !1027, inlinedAt: !910)
!1030 = !DILocation(line: 170, column: 46, scope: !1027, inlinedAt: !910)
!1031 = !DILocation(line: 170, column: 23, scope: !1032, inlinedAt: !910)
!1032 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 2)
!1033 = !DILocation(line: 171, column: 13, scope: !906, inlinedAt: !910)
!1034 = !DILocation(line: 173, column: 17, scope: !1035, inlinedAt: !910)
!1035 = distinct !DILexicalBlock(scope: !908, file: !3, line: 173, column: 15)
!1036 = !DILocation(line: 173, column: 15, scope: !908, inlinedAt: !910)
!1037 = !DILocation(line: 105, column: 23, scope: !976, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 176, column: 15, scope: !1039, inlinedAt: !910)
!1039 = distinct !DILexicalBlock(scope: !908, file: !3, line: 176, column: 15)
!1040 = !DILocation(line: 107, column: 10, scope: !976, inlinedAt: !1038)
!1041 = !DILocation(line: 107, column: 10, scope: !990, inlinedAt: !1038)
!1042 = !DILocation(line: 176, column: 15, scope: !908, inlinedAt: !910)
!1043 = !DILocation(line: 107, column: 10, scope: !993, inlinedAt: !1038)
!1044 = !DILocation(line: 176, column: 27, scope: !1039, inlinedAt: !910)
!1045 = !DILocation(line: 177, column: 13, scope: !1039, inlinedAt: !910)
!1046 = !DILocation(line: 177, column: 13, scope: !1047, inlinedAt: !910)
!1047 = !DILexicalBlockFile(scope: !1039, file: !3, discriminator: 1)
!1048 = !DILocation(line: 177, column: 13, scope: !1049, inlinedAt: !910)
!1049 = !DILexicalBlockFile(scope: !1039, file: !3, discriminator: 2)
!1050 = !DILocation(line: 179, column: 16, scope: !899, inlinedAt: !910)
!1051 = !DILocation(line: 178, column: 9, scope: !934, inlinedAt: !910)
!1052 = !DILocation(line: 180, column: 5, scope: !855, inlinedAt: !910)
!1053 = !DILocation(line: 237, column: 3, scope: !792)
!1054 = !DILocation(line: 239, column: 10, scope: !792)
!1055 = !DILocation(line: 239, column: 3, scope: !792)
!1056 = distinct !DISubprogram(name: "add_tab_stop", scope: !88, file: !88, line: 74, type: !1057, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !129}
!1059 = !{!1060, !1061, !1062}
!1060 = !DILocalVariable(name: "tabval", arg: 1, scope: !1056, file: !88, line: 74, type: !129)
!1061 = !DILocalVariable(name: "prev_column", scope: !1056, file: !88, line: 76, type: !129)
!1062 = !DILocalVariable(name: "column_width", scope: !1056, file: !88, line: 77, type: !129)
!1063 = !DILocation(line: 74, column: 25, scope: !1056)
!1064 = !DILocation(line: 76, column: 27, scope: !1056)
!1065 = !DILocation(line: 76, column: 44, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1056, file: !88, discriminator: 1)
!1067 = !DILocation(line: 76, column: 68, scope: !1066)
!1068 = !DILocation(line: 76, column: 27, scope: !1066)
!1069 = !DILocation(line: 76, column: 27, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1056, file: !88, discriminator: 3)
!1071 = !DILocation(line: 76, column: 13, scope: !1056)
!1072 = !DILocation(line: 77, column: 40, scope: !1056)
!1073 = !DILocation(line: 77, column: 59, scope: !1066)
!1074 = !DILocation(line: 77, column: 28, scope: !1056)
!1075 = !DILocation(line: 77, column: 13, scope: !1056)
!1076 = !DILocation(line: 79, column: 25, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1056, file: !88, line: 79, column: 7)
!1078 = !DILocation(line: 79, column: 22, scope: !1077)
!1079 = !DILocation(line: 79, column: 7, scope: !1056)
!1080 = !DILocation(line: 80, column: 16, scope: !1077)
!1081 = !DILocation(line: 180, column: 19, scope: !115, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 80, column: 16, scope: !1077)
!1083 = !DILocation(line: 180, column: 30, scope: !115, inlinedAt: !1082)
!1084 = !DILocation(line: 180, column: 41, scope: !115, inlinedAt: !1082)
!1085 = !DILocation(line: 182, column: 10, scope: !115, inlinedAt: !1082)
!1086 = !DILocation(line: 184, column: 9, scope: !1087, inlinedAt: !1082)
!1087 = distinct !DILexicalBlock(scope: !115, file: !114, line: 184, column: 7)
!1088 = !DILocation(line: 184, column: 7, scope: !115, inlinedAt: !1082)
!1089 = !DILocation(line: 186, column: 11, scope: !1090, inlinedAt: !1082)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !114, line: 185, column: 5)
!1091 = !DILocation(line: 205, column: 11, scope: !1092, inlinedAt: !1082)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !114, line: 204, column: 11)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !114, line: 199, column: 5)
!1094 = !DILocation(line: 204, column: 11, scope: !1093, inlinedAt: !1082)
!1095 = !DILocation(line: 206, column: 9, scope: !1092, inlinedAt: !1082)
!1096 = !DILocation(line: 207, column: 14, scope: !1093, inlinedAt: !1082)
!1097 = !DILocation(line: 207, column: 18, scope: !1093, inlinedAt: !1082)
!1098 = !DILocation(line: 207, column: 9, scope: !1093, inlinedAt: !1082)
!1099 = !DILocation(line: 210, column: 7, scope: !115, inlinedAt: !1082)
!1100 = !DILocation(line: 211, column: 25, scope: !115, inlinedAt: !1082)
!1101 = !DILocation(line: 211, column: 10, scope: !115, inlinedAt: !1082)
!1102 = !DILocation(line: 80, column: 14, scope: !1077)
!1103 = !DILocation(line: 80, column: 5, scope: !1077)
!1104 = !DILocation(line: 81, column: 26, scope: !1056)
!1105 = !DILocation(line: 81, column: 3, scope: !1056)
!1106 = !DILocation(line: 81, column: 30, scope: !1056)
!1107 = !DILocation(line: 83, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1056, file: !88, line: 83, column: 7)
!1109 = !DILocation(line: 83, column: 24, scope: !1108)
!1110 = !DILocation(line: 83, column: 7, scope: !1056)
!1111 = !DILocation(line: 87, column: 24, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !88, line: 84, column: 5)
!1113 = !DILocation(line: 88, column: 5, scope: !1112)
!1114 = !DILocation(line: 89, column: 1, scope: !1056)
!1115 = distinct !DISubprogram(name: "parse_tab_stops", scope: !88, file: !88, line: 111, type: !42, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1123, !1133}
!1117 = !DILocalVariable(name: "stops", arg: 1, scope: !1115, file: !88, line: 111, type: !32)
!1118 = !DILocalVariable(name: "have_tabval", scope: !1115, file: !88, line: 113, type: !229)
!1119 = !DILocalVariable(name: "tabval", scope: !1115, file: !88, line: 114, type: !129)
!1120 = !DILocalVariable(name: "extend_tabval", scope: !1115, file: !88, line: 115, type: !229)
!1121 = !DILocalVariable(name: "num_start", scope: !1115, file: !88, line: 116, type: !32)
!1122 = !DILocalVariable(name: "ok", scope: !1115, file: !88, line: 117, type: !229)
!1123 = !DILocalVariable(name: "len", scope: !1124, file: !88, line: 160, type: !24)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !88, line: 159, column: 13)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !88, line: 158, column: 15)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !88, line: 149, column: 9)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !88, line: 148, column: 16)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !88, line: 138, column: 16)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !88, line: 121, column: 11)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !88, line: 120, column: 5)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !88, line: 119, column: 3)
!1132 = distinct !DILexicalBlock(scope: !1115, file: !88, line: 119, column: 3)
!1133 = !DILocalVariable(name: "bad_num", scope: !1124, file: !88, line: 161, type: !21)
!1134 = !DILocation(line: 111, column: 30, scope: !1115)
!1135 = !DILocation(line: 113, column: 8, scope: !1115)
!1136 = !DILocation(line: 114, column: 13, scope: !1115)
!1137 = !DILocation(line: 115, column: 8, scope: !1115)
!1138 = !DILocation(line: 116, column: 15, scope: !1115)
!1139 = !DILocation(line: 117, column: 8, scope: !1115)
!1140 = !DILocation(line: 119, column: 3, scope: !1115)
!1141 = !DILocation(line: 119, column: 10, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1131, file: !88, discriminator: 1)
!1143 = !DILocation(line: 119, column: 3, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1132, file: !88, discriminator: 1)
!1145 = !DILocation(line: 121, column: 28, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1129, file: !88, discriminator: 1)
!1147 = !DILocation(line: 121, column: 11, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1130, file: !88, discriminator: 1)
!1149 = !DILocation(line: 123, column: 15, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !88, line: 123, column: 15)
!1151 = distinct !DILexicalBlock(scope: !1129, file: !88, line: 122, column: 9)
!1152 = !DILocation(line: 123, column: 15, scope: !1151)
!1153 = !DILocation(line: 125, column: 19, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !88, line: 125, column: 19)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !88, line: 124, column: 13)
!1156 = !DILocation(line: 125, column: 19, scope: !1155)
!1157 = !DILocalVariable(name: "tabval", arg: 1, scope: !1158, file: !88, line: 92, type: !129)
!1158 = distinct !DISubprogram(name: "set_extend_size", scope: !88, file: !88, line: 92, type: !1159, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1161)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!229, !129}
!1161 = !{!1157, !1162}
!1162 = !DILocalVariable(name: "ok", scope: !1158, file: !88, line: 94, type: !229)
!1163 = !DILocation(line: 92, column: 28, scope: !1158, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 127, column: 25, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !88, line: 127, column: 23)
!1166 = distinct !DILexicalBlock(scope: !1154, file: !88, line: 126, column: 17)
!1167 = !DILocation(line: 94, column: 8, scope: !1158, inlinedAt: !1164)
!1168 = !DILocation(line: 96, column: 7, scope: !1169, inlinedAt: !1164)
!1169 = distinct !DILexicalBlock(scope: !1158, file: !88, line: 96, column: 7)
!1170 = !DILocation(line: 96, column: 7, scope: !1158, inlinedAt: !1164)
!1171 = !DILocation(line: 103, column: 15, scope: !1158, inlinedAt: !1164)
!1172 = !DILocation(line: 127, column: 23, scope: !1166)
!1173 = !DILocation(line: 99, column: 14, scope: !1174, inlinedAt: !1164)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !88, line: 97, column: 5)
!1175 = !DILocation(line: 98, column: 7, scope: !1174, inlinedAt: !1164)
!1176 = !DILocation(line: 74, column: 25, scope: !1056, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 134, column: 17, scope: !1154)
!1178 = !DILocation(line: 76, column: 27, scope: !1056, inlinedAt: !1177)
!1179 = !DILocation(line: 76, column: 44, scope: !1066, inlinedAt: !1177)
!1180 = !DILocation(line: 76, column: 68, scope: !1066, inlinedAt: !1177)
!1181 = !DILocation(line: 76, column: 27, scope: !1066, inlinedAt: !1177)
!1182 = !DILocation(line: 76, column: 27, scope: !1070, inlinedAt: !1177)
!1183 = !DILocation(line: 76, column: 13, scope: !1056, inlinedAt: !1177)
!1184 = !DILocation(line: 77, column: 40, scope: !1056, inlinedAt: !1177)
!1185 = !DILocation(line: 77, column: 59, scope: !1066, inlinedAt: !1177)
!1186 = !DILocation(line: 77, column: 28, scope: !1056, inlinedAt: !1177)
!1187 = !DILocation(line: 77, column: 13, scope: !1056, inlinedAt: !1177)
!1188 = !DILocation(line: 79, column: 25, scope: !1077, inlinedAt: !1177)
!1189 = !DILocation(line: 79, column: 22, scope: !1077, inlinedAt: !1177)
!1190 = !DILocation(line: 79, column: 7, scope: !1056, inlinedAt: !1177)
!1191 = !DILocation(line: 80, column: 16, scope: !1077, inlinedAt: !1177)
!1192 = !DILocation(line: 180, column: 19, scope: !115, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 80, column: 16, scope: !1077, inlinedAt: !1177)
!1194 = !DILocation(line: 180, column: 30, scope: !115, inlinedAt: !1193)
!1195 = !DILocation(line: 180, column: 41, scope: !115, inlinedAt: !1193)
!1196 = !DILocation(line: 182, column: 10, scope: !115, inlinedAt: !1193)
!1197 = !DILocation(line: 184, column: 9, scope: !1087, inlinedAt: !1193)
!1198 = !DILocation(line: 184, column: 7, scope: !115, inlinedAt: !1193)
!1199 = !DILocation(line: 186, column: 11, scope: !1090, inlinedAt: !1193)
!1200 = !DILocation(line: 205, column: 11, scope: !1092, inlinedAt: !1193)
!1201 = !DILocation(line: 204, column: 11, scope: !1093, inlinedAt: !1193)
!1202 = !DILocation(line: 206, column: 9, scope: !1092, inlinedAt: !1193)
!1203 = !DILocation(line: 207, column: 14, scope: !1093, inlinedAt: !1193)
!1204 = !DILocation(line: 207, column: 18, scope: !1093, inlinedAt: !1193)
!1205 = !DILocation(line: 207, column: 9, scope: !1093, inlinedAt: !1193)
!1206 = !DILocation(line: 210, column: 7, scope: !115, inlinedAt: !1193)
!1207 = !DILocation(line: 211, column: 25, scope: !115, inlinedAt: !1193)
!1208 = !DILocation(line: 211, column: 10, scope: !115, inlinedAt: !1193)
!1209 = !DILocation(line: 80, column: 14, scope: !1077, inlinedAt: !1177)
!1210 = !DILocation(line: 80, column: 5, scope: !1077, inlinedAt: !1177)
!1211 = !DILocation(line: 81, column: 26, scope: !1056, inlinedAt: !1177)
!1212 = !DILocation(line: 81, column: 3, scope: !1056, inlinedAt: !1177)
!1213 = !DILocation(line: 81, column: 30, scope: !1056, inlinedAt: !1177)
!1214 = !DILocation(line: 83, column: 7, scope: !1108, inlinedAt: !1177)
!1215 = !DILocation(line: 83, column: 24, scope: !1108, inlinedAt: !1177)
!1216 = !DILocation(line: 83, column: 7, scope: !1056, inlinedAt: !1177)
!1217 = !DILocation(line: 87, column: 24, scope: !1112, inlinedAt: !1177)
!1218 = !DILocation(line: 88, column: 5, scope: !1112, inlinedAt: !1177)
!1219 = !DILocation(line: 138, column: 23, scope: !1128)
!1220 = !DILocation(line: 138, column: 16, scope: !1129)
!1221 = !DILocation(line: 140, column: 15, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !88, line: 140, column: 15)
!1223 = distinct !DILexicalBlock(scope: !1128, file: !88, line: 139, column: 9)
!1224 = !DILocation(line: 140, column: 15, scope: !1223)
!1225 = !DILocation(line: 142, column: 28, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !88, line: 141, column: 13)
!1227 = !DILocation(line: 143, column: 22, scope: !1226)
!1228 = !DILocation(line: 142, column: 15, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1226, file: !88, discriminator: 1)
!1230 = !DILocation(line: 145, column: 13, scope: !1226)
!1231 = !DILocation(line: 138, column: 16, scope: !1128)
!1232 = !DILocation(line: 148, column: 16, scope: !1127)
!1233 = !DILocation(line: 148, column: 16, scope: !1128)
!1234 = !DILocation(line: 150, column: 16, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1126, file: !88, line: 150, column: 15)
!1236 = !DILocation(line: 150, column: 15, scope: !1126)
!1237 = !DILocation(line: 158, column: 16, scope: !1125)
!1238 = !DILocation(line: 158, column: 16, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1125, file: !88, discriminator: 1)
!1240 = !DILocation(line: 158, column: 15, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1126, file: !88, discriminator: 4)
!1242 = !DILocation(line: 160, column: 28, scope: !1124)
!1243 = !DILocation(line: 160, column: 22, scope: !1124)
!1244 = !DILocation(line: 161, column: 31, scope: !1124)
!1245 = !DILocation(line: 161, column: 21, scope: !1124)
!1246 = !DILocation(line: 162, column: 28, scope: !1124)
!1247 = !DILocation(line: 162, column: 59, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1124, file: !88, discriminator: 1)
!1249 = !DILocation(line: 162, column: 15, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1124, file: !88, discriminator: 2)
!1251 = !DILocation(line: 163, column: 15, scope: !1124)
!1252 = !DILocation(line: 165, column: 33, scope: !1124)
!1253 = !DILocation(line: 165, column: 39, scope: !1124)
!1254 = !DILocation(line: 166, column: 13, scope: !1124)
!1255 = !DILocation(line: 170, column: 24, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1127, file: !88, line: 169, column: 9)
!1257 = !DILocation(line: 171, column: 18, scope: !1256)
!1258 = !DILocation(line: 170, column: 11, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1256, file: !88, discriminator: 1)
!1260 = !DILocation(line: 173, column: 11, scope: !1256)
!1261 = !DILocation(line: 119, column: 23, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1131, file: !88, discriminator: 2)
!1263 = !DILocation(line: 119, column: 3, scope: !1262)
!1264 = distinct !{!1264, !1265, !1266}
!1265 = !DILocation(line: 119, column: 3, scope: !1132)
!1266 = !DILocation(line: 175, column: 5, scope: !1132)
!1267 = !DILocation(line: 177, column: 10, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1115, file: !88, line: 177, column: 7)
!1269 = !DILocation(line: 179, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !88, line: 179, column: 11)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !88, line: 178, column: 5)
!1272 = !DILocation(line: 179, column: 11, scope: !1271)
!1273 = !DILocation(line: 92, column: 28, scope: !1158, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 180, column: 15, scope: !1270)
!1275 = !DILocation(line: 94, column: 8, scope: !1158, inlinedAt: !1274)
!1276 = !DILocation(line: 96, column: 7, scope: !1169, inlinedAt: !1274)
!1277 = !DILocation(line: 96, column: 7, scope: !1158, inlinedAt: !1274)
!1278 = !DILocation(line: 99, column: 14, scope: !1174, inlinedAt: !1274)
!1279 = !DILocation(line: 98, column: 7, scope: !1174, inlinedAt: !1274)
!1280 = !DILocation(line: 102, column: 5, scope: !1174, inlinedAt: !1274)
!1281 = !DILocation(line: 103, column: 15, scope: !1158, inlinedAt: !1274)
!1282 = !DILocation(line: 180, column: 9, scope: !1270)
!1283 = !DILocation(line: 74, column: 25, scope: !1056, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 182, column: 9, scope: !1270)
!1285 = !DILocation(line: 76, column: 27, scope: !1056, inlinedAt: !1284)
!1286 = !DILocation(line: 76, column: 44, scope: !1066, inlinedAt: !1284)
!1287 = !DILocation(line: 76, column: 68, scope: !1066, inlinedAt: !1284)
!1288 = !DILocation(line: 76, column: 27, scope: !1066, inlinedAt: !1284)
!1289 = !DILocation(line: 76, column: 27, scope: !1070, inlinedAt: !1284)
!1290 = !DILocation(line: 76, column: 13, scope: !1056, inlinedAt: !1284)
!1291 = !DILocation(line: 77, column: 40, scope: !1056, inlinedAt: !1284)
!1292 = !DILocation(line: 77, column: 59, scope: !1066, inlinedAt: !1284)
!1293 = !DILocation(line: 77, column: 28, scope: !1056, inlinedAt: !1284)
!1294 = !DILocation(line: 77, column: 13, scope: !1056, inlinedAt: !1284)
!1295 = !DILocation(line: 79, column: 25, scope: !1077, inlinedAt: !1284)
!1296 = !DILocation(line: 79, column: 22, scope: !1077, inlinedAt: !1284)
!1297 = !DILocation(line: 79, column: 7, scope: !1056, inlinedAt: !1284)
!1298 = !DILocation(line: 80, column: 16, scope: !1077, inlinedAt: !1284)
!1299 = !DILocation(line: 180, column: 19, scope: !115, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 80, column: 16, scope: !1077, inlinedAt: !1284)
!1301 = !DILocation(line: 180, column: 30, scope: !115, inlinedAt: !1300)
!1302 = !DILocation(line: 180, column: 41, scope: !115, inlinedAt: !1300)
!1303 = !DILocation(line: 182, column: 10, scope: !115, inlinedAt: !1300)
!1304 = !DILocation(line: 184, column: 9, scope: !1087, inlinedAt: !1300)
!1305 = !DILocation(line: 184, column: 7, scope: !115, inlinedAt: !1300)
!1306 = !DILocation(line: 186, column: 11, scope: !1090, inlinedAt: !1300)
!1307 = !DILocation(line: 205, column: 11, scope: !1092, inlinedAt: !1300)
!1308 = !DILocation(line: 204, column: 11, scope: !1093, inlinedAt: !1300)
!1309 = !DILocation(line: 206, column: 9, scope: !1092, inlinedAt: !1300)
!1310 = !DILocation(line: 207, column: 14, scope: !1093, inlinedAt: !1300)
!1311 = !DILocation(line: 207, column: 18, scope: !1093, inlinedAt: !1300)
!1312 = !DILocation(line: 207, column: 9, scope: !1093, inlinedAt: !1300)
!1313 = !DILocation(line: 210, column: 7, scope: !115, inlinedAt: !1300)
!1314 = !DILocation(line: 211, column: 25, scope: !115, inlinedAt: !1300)
!1315 = !DILocation(line: 211, column: 10, scope: !115, inlinedAt: !1300)
!1316 = !DILocation(line: 80, column: 14, scope: !1077, inlinedAt: !1284)
!1317 = !DILocation(line: 80, column: 5, scope: !1077, inlinedAt: !1284)
!1318 = !DILocation(line: 81, column: 26, scope: !1056, inlinedAt: !1284)
!1319 = !DILocation(line: 81, column: 3, scope: !1056, inlinedAt: !1284)
!1320 = !DILocation(line: 81, column: 30, scope: !1056, inlinedAt: !1284)
!1321 = !DILocation(line: 83, column: 7, scope: !1108, inlinedAt: !1284)
!1322 = !DILocation(line: 83, column: 24, scope: !1108, inlinedAt: !1284)
!1323 = !DILocation(line: 83, column: 7, scope: !1056, inlinedAt: !1284)
!1324 = !DILocation(line: 87, column: 24, scope: !1112, inlinedAt: !1284)
!1325 = !DILocation(line: 88, column: 5, scope: !1112, inlinedAt: !1284)
!1326 = !DILocation(line: 185, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1115, file: !88, line: 185, column: 7)
!1328 = !DILocation(line: 185, column: 7, scope: !1115)
!1329 = !DILocation(line: 186, column: 5, scope: !1327)
!1330 = !DILocation(line: 187, column: 1, scope: !1115)
!1331 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !88, file: !88, line: 217, type: !751, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !242)
!1332 = !DILocation(line: 219, column: 23, scope: !1331)
!1333 = !DILocation(line: 219, column: 33, scope: !1331)
!1334 = !DILocalVariable(name: "tabs", arg: 1, scope: !1335, file: !88, line: 193, type: !1338)
!1335 = distinct !DISubprogram(name: "validate_tab_stops", scope: !88, file: !88, line: 193, type: !1336, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1340)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !1338, !24}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1340 = !{!1334, !1341, !1342, !1343}
!1341 = !DILocalVariable(name: "entries", arg: 2, scope: !1335, file: !88, line: 193, type: !24)
!1342 = !DILocalVariable(name: "prev_tab", scope: !1335, file: !88, line: 195, type: !129)
!1343 = !DILocalVariable(name: "i", scope: !1335, file: !88, line: 196, type: !24)
!1344 = !DILocation(line: 193, column: 38, scope: !1335, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 219, column: 3, scope: !1331)
!1346 = !DILocation(line: 193, column: 51, scope: !1335, inlinedAt: !1345)
!1347 = !DILocation(line: 195, column: 13, scope: !1335, inlinedAt: !1345)
!1348 = !DILocation(line: 196, column: 10, scope: !1335, inlinedAt: !1345)
!1349 = !DILocation(line: 198, column: 17, scope: !1350, inlinedAt: !1345)
!1350 = !DILexicalBlockFile(scope: !1351, file: !88, discriminator: 1)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !88, line: 198, column: 3)
!1352 = distinct !DILexicalBlock(scope: !1335, file: !88, line: 198, column: 3)
!1353 = !DILocation(line: 198, column: 3, scope: !1354, inlinedAt: !1345)
!1354 = !DILexicalBlockFile(scope: !1352, file: !88, discriminator: 1)
!1355 = !DILocation(line: 200, column: 11, scope: !1356, inlinedAt: !1345)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !88, line: 200, column: 11)
!1357 = distinct !DILexicalBlock(scope: !1351, file: !88, line: 199, column: 5)
!1358 = distinct !{!1358, !1359, !1360}
!1359 = !DILocation(line: 198, column: 3, scope: !1352)
!1360 = !DILocation(line: 205, column: 5, scope: !1352)
!1361 = !DILocation(line: 200, column: 19, scope: !1356, inlinedAt: !1345)
!1362 = !DILocation(line: 200, column: 11, scope: !1357, inlinedAt: !1345)
!1363 = !DILocation(line: 201, column: 9, scope: !1356, inlinedAt: !1345)
!1364 = !DILocation(line: 201, column: 9, scope: !1365, inlinedAt: !1345)
!1365 = !DILexicalBlockFile(scope: !1356, file: !88, discriminator: 1)
!1366 = !DILocation(line: 202, column: 19, scope: !1367, inlinedAt: !1345)
!1367 = distinct !DILexicalBlock(scope: !1357, file: !88, line: 202, column: 11)
!1368 = !DILocation(line: 198, column: 29, scope: !1369, inlinedAt: !1345)
!1369 = !DILexicalBlockFile(scope: !1351, file: !88, discriminator: 2)
!1370 = !DILocation(line: 202, column: 11, scope: !1357, inlinedAt: !1345)
!1371 = !DILocation(line: 203, column: 9, scope: !1367, inlinedAt: !1345)
!1372 = !DILocation(line: 203, column: 9, scope: !1373, inlinedAt: !1345)
!1373 = !DILexicalBlockFile(scope: !1367, file: !88, discriminator: 1)
!1374 = !DILocation(line: 222, column: 35, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1331, file: !88, line: 221, column: 7)
!1376 = !DILocation(line: 222, column: 33, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1375, file: !88, discriminator: 3)
!1378 = !DILocation(line: 222, column: 5, scope: !1377)
!1379 = !DILocation(line: 223, column: 27, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !88, line: 223, column: 12)
!1381 = !DILocation(line: 223, column: 37, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1380, file: !88, discriminator: 1)
!1383 = !DILocation(line: 223, column: 32, scope: !1380)
!1384 = !DILocation(line: 224, column: 16, scope: !1380)
!1385 = !DILocation(line: 224, column: 5, scope: !1380)
!1386 = !DILocation(line: 227, column: 1, scope: !1331)
!1387 = distinct !DISubprogram(name: "get_next_tab_column", scope: !88, file: !88, line: 231, type: !1388, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1391)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!129, !1339, !118, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1391 = !{!1392, !1393, !1394, !1395}
!1392 = !DILocalVariable(name: "column", arg: 1, scope: !1387, file: !88, line: 231, type: !1339)
!1393 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1387, file: !88, line: 231, type: !118)
!1394 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1387, file: !88, line: 232, type: !1390)
!1395 = !DILocalVariable(name: "tab", scope: !1396, file: !88, line: 244, type: !129)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !88, line: 243, column: 5)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !88, line: 242, column: 3)
!1398 = distinct !DILexicalBlock(scope: !1387, file: !88, line: 242, column: 3)
!1399 = !DILocation(line: 231, column: 38, scope: !1387)
!1400 = !DILocation(line: 231, column: 54, scope: !1387)
!1401 = !DILocation(line: 232, column: 28, scope: !1387)
!1402 = !DILocation(line: 234, column: 13, scope: !1387)
!1403 = !DILocation(line: 237, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1387, file: !88, line: 237, column: 7)
!1405 = !DILocation(line: 237, column: 7, scope: !1387)
!1406 = !DILocation(line: 242, column: 11, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1397, file: !88, discriminator: 1)
!1408 = !DILocation(line: 242, column: 24, scope: !1407)
!1409 = !DILocation(line: 242, column: 22, scope: !1407)
!1410 = !DILocation(line: 242, column: 3, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1398, file: !88, discriminator: 1)
!1412 = !DILocation(line: 238, column: 40, scope: !1404)
!1413 = !DILocation(line: 238, column: 31, scope: !1404)
!1414 = !DILocation(line: 238, column: 19, scope: !1404)
!1415 = !DILocation(line: 238, column: 5, scope: !1404)
!1416 = !DILocation(line: 244, column: 25, scope: !1396)
!1417 = !DILocation(line: 244, column: 19, scope: !1396)
!1418 = !DILocation(line: 245, column: 20, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1396, file: !88, line: 245, column: 13)
!1420 = !DILocation(line: 242, column: 53, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1397, file: !88, discriminator: 2)
!1422 = distinct !{!1422, !1423, !1424}
!1423 = !DILocation(line: 242, column: 3, scope: !1398)
!1424 = !DILocation(line: 247, column: 5, scope: !1398)
!1425 = !DILocation(line: 250, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1387, file: !88, line: 250, column: 7)
!1427 = !DILocation(line: 250, column: 7, scope: !1387)
!1428 = !DILocation(line: 251, column: 43, scope: !1426)
!1429 = !DILocation(line: 251, column: 34, scope: !1426)
!1430 = !DILocation(line: 251, column: 19, scope: !1426)
!1431 = !DILocation(line: 251, column: 5, scope: !1426)
!1432 = !DILocation(line: 253, column: 13, scope: !1387)
!1433 = !DILocation(line: 254, column: 3, scope: !1387)
!1434 = !DILocation(line: 255, column: 1, scope: !1387)
!1435 = distinct !DISubprogram(name: "set_file_list", scope: !88, file: !88, line: 262, type: !1436, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !237}
!1438 = !{!1439}
!1439 = !DILocalVariable(name: "list", arg: 1, scope: !1435, file: !88, line: 262, type: !237)
!1440 = !DILocation(line: 262, column: 23, scope: !1435)
!1441 = !DILocation(line: 266, column: 8, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1435, file: !88, line: 266, column: 7)
!1443 = !DILocation(line: 266, column: 7, scope: !1435)
!1444 = !DILocation(line: 270, column: 1, scope: !1435)
!1445 = !DILocation(line: 278, column: 18, scope: !138)
!1446 = !DILocation(line: 283, column: 7, scope: !202)
!1447 = !DILocation(line: 283, column: 7, scope: !138)
!1448 = !DILocalVariable(name: "__stream", arg: 1, scope: !1449, file: !928, line: 132, type: !141)
!1449 = distinct !DISubprogram(name: "ferror_unlocked", scope: !928, file: !928, line: 132, type: !1450, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!34, !141}
!1452 = !{!1448}
!1453 = !DILocation(line: 132, column: 1, scope: !1449, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 285, column: 11, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !201, file: !88, line: 285, column: 11)
!1456 = !DILocation(line: 134, column: 10, scope: !1449, inlinedAt: !1454)
!1457 = !{!937, !848, i64 0}
!1458 = !DILocation(line: 285, column: 11, scope: !1455)
!1459 = !DILocation(line: 285, column: 11, scope: !201)
!1460 = !DILocation(line: 287, column: 21, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1455, file: !88, line: 286, column: 9)
!1462 = !DILocation(line: 287, column: 34, scope: !1461)
!1463 = !DILocation(line: 287, column: 34, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1461, file: !88, discriminator: 1)
!1465 = !DILocation(line: 287, column: 11, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1461, file: !88, discriminator: 2)
!1467 = !DILocation(line: 288, column: 23, scope: !1461)
!1468 = !DILocation(line: 289, column: 9, scope: !1461)
!1469 = !DILocation(line: 290, column: 11, scope: !199)
!1470 = !DILocation(line: 290, column: 11, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !205, file: !88, discriminator: 2)
!1472 = !DILocation(line: 290, column: 11, scope: !205)
!1473 = !DILocation(line: 290, column: 11, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1475, file: !88, discriminator: 3)
!1475 = distinct !DILexicalBlock(scope: !205, file: !88, line: 290, column: 11)
!1476 = !DILocation(line: 290, column: 11, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1475, file: !88, discriminator: 2)
!1478 = !DILocation(line: 290, column: 11, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !88, discriminator: 4)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !88, line: 290, column: 11)
!1481 = !DILocation(line: 290, column: 11, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !199, file: !88, discriminator: 11)
!1483 = !DILocation(line: 290, column: 11, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !201, file: !88, discriminator: 13)
!1485 = !DILocation(line: 291, column: 9, scope: !200)
!1486 = !DILocation(line: 292, column: 16, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !200, file: !88, line: 292, column: 16)
!1488 = !DILocation(line: 292, column: 28, scope: !1487)
!1489 = !DILocation(line: 292, column: 16, scope: !200)
!1490 = !DILocation(line: 294, column: 21, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !88, line: 293, column: 9)
!1492 = !DILocation(line: 294, column: 34, scope: !1491)
!1493 = !DILocation(line: 294, column: 34, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1491, file: !88, discriminator: 1)
!1495 = !DILocation(line: 294, column: 11, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1491, file: !88, discriminator: 2)
!1497 = !DILocation(line: 295, column: 23, scope: !1491)
!1498 = !DILocation(line: 296, column: 9, scope: !1491)
!1499 = !DILocation(line: 299, column: 28, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !138, file: !88, discriminator: 1)
!1501 = !DILocation(line: 299, column: 18, scope: !1500)
!1502 = !DILocation(line: 281, column: 9, scope: !138)
!1503 = !DILocation(line: 299, column: 32, scope: !1500)
!1504 = !DILocation(line: 299, column: 3, scope: !1500)
!1505 = !DILocation(line: 301, column: 11, scope: !208)
!1506 = !DILocation(line: 301, column: 11, scope: !213)
!1507 = !DILocation(line: 301, column: 11, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !213, file: !88, discriminator: 2)
!1509 = !DILocation(line: 301, column: 11, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1511, file: !88, discriminator: 3)
!1511 = distinct !DILexicalBlock(scope: !213, file: !88, line: 301, column: 11)
!1512 = !DILocation(line: 301, column: 11, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1511, file: !88, discriminator: 2)
!1514 = !DILocation(line: 301, column: 11, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !88, discriminator: 4)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !88, line: 301, column: 11)
!1517 = !DILocation(line: 301, column: 11, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !209, file: !88, discriminator: 13)
!1519 = !DILocation(line: 301, column: 11, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !210, file: !88, discriminator: 13)
!1521 = !DILocation(line: 304, column: 16, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !209, file: !88, line: 302, column: 9)
!1523 = !DILocation(line: 305, column: 9, scope: !1522)
!1524 = !DILocation(line: 307, column: 14, scope: !209)
!1525 = !DILocation(line: 308, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !210, file: !88, line: 308, column: 11)
!1527 = !DILocation(line: 308, column: 11, scope: !210)
!1528 = !DILocation(line: 310, column: 21, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !88, line: 309, column: 9)
!1530 = !DILocation(line: 311, column: 11, scope: !1529)
!1531 = !DILocation(line: 312, column: 11, scope: !1529)
!1532 = !DILocation(line: 314, column: 17, scope: !210)
!1533 = !DILocation(line: 314, column: 30, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !210, file: !88, discriminator: 1)
!1535 = !DILocation(line: 314, column: 7, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !210, file: !88, discriminator: 2)
!1537 = !DILocation(line: 315, column: 19, scope: !210)
!1538 = distinct !{!1538, !1539, !1540}
!1539 = !DILocation(line: 299, column: 3, scope: !138)
!1540 = !DILocation(line: 316, column: 5, scope: !138)
!1541 = !DILocation(line: 318, column: 1, scope: !138)
!1542 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !88, file: !88, line: 322, type: !751, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !87, variables: !242)
!1543 = !DILocation(line: 324, column: 25, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1542, file: !88, line: 324, column: 9)
!1545 = !DILocation(line: 324, column: 36, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1544, file: !88, discriminator: 1)
!1547 = !DILocation(line: 324, column: 28, scope: !1546)
!1548 = !DILocation(line: 324, column: 43, scope: !1546)
!1549 = !DILocation(line: 324, column: 9, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1542, file: !88, discriminator: 1)
!1551 = !DILocation(line: 325, column: 7, scope: !1544)
!1552 = !DILocation(line: 325, column: 7, scope: !1546)
!1553 = !DILocation(line: 326, column: 1, scope: !1542)
!1554 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !251, file: !251, line: 41, type: !42, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !246, variables: !1555)
!1555 = !{!1556}
!1556 = !DILocalVariable(name: "file", arg: 1, scope: !1554, file: !251, line: 41, type: !32)
!1557 = !DILocation(line: 41, column: 41, scope: !1554)
!1558 = !DILocation(line: 43, column: 13, scope: !1554)
!1559 = !DILocation(line: 44, column: 1, scope: !1554)
!1560 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !251, file: !251, line: 78, type: !1561, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !246, variables: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !229}
!1563 = !{!1564}
!1564 = !DILocalVariable(name: "ignore", arg: 1, scope: !1560, file: !251, line: 78, type: !229)
!1565 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1566 = !DILocation(line: 78, column: 37, scope: !1560)
!1567 = !DILocation(line: 80, column: 16, scope: !1560)
!1568 = !DILocation(line: 81, column: 1, scope: !1560)
!1569 = distinct !DISubprogram(name: "close_stdout", scope: !251, file: !251, line: 107, type: !751, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !246, variables: !1570)
!1570 = !{!1571}
!1571 = !DILocalVariable(name: "write_error", scope: !1572, file: !251, line: 112, type: !32)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !251, line: 111, column: 5)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !251, line: 109, column: 7)
!1574 = !DILocation(line: 109, column: 21, scope: !1573)
!1575 = !DILocation(line: 109, column: 7, scope: !1573)
!1576 = !DILocation(line: 109, column: 29, scope: !1573)
!1577 = !DILocation(line: 110, column: 7, scope: !1573)
!1578 = !DILocation(line: 110, column: 12, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1573, file: !251, discriminator: 1)
!1580 = !DILocation(line: 114, column: 19, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1572, file: !251, line: 113, column: 11)
!1582 = !DILocation(line: 110, column: 25, scope: !1579)
!1583 = !DILocation(line: 110, column: 28, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1573, file: !251, discriminator: 2)
!1585 = !DILocation(line: 110, column: 34, scope: !1584)
!1586 = !DILocation(line: 109, column: 7, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1569, file: !251, discriminator: 1)
!1588 = !DILocation(line: 112, column: 33, scope: !1572)
!1589 = !DILocation(line: 112, column: 19, scope: !1572)
!1590 = !DILocation(line: 113, column: 11, scope: !1581)
!1591 = !DILocation(line: 113, column: 11, scope: !1572)
!1592 = !DILocation(line: 114, column: 36, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1581, file: !251, discriminator: 1)
!1594 = !DILocation(line: 114, column: 9, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1581, file: !251, discriminator: 2)
!1596 = !DILocation(line: 114, column: 9, scope: !1581)
!1597 = !DILocation(line: 117, column: 9, scope: !1593)
!1598 = !DILocation(line: 119, column: 14, scope: !1572)
!1599 = !DILocation(line: 119, column: 7, scope: !1572)
!1600 = !DILocation(line: 122, column: 22, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1569, file: !251, line: 122, column: 8)
!1602 = !DILocation(line: 122, column: 8, scope: !1601)
!1603 = !DILocation(line: 122, column: 30, scope: !1601)
!1604 = !DILocation(line: 122, column: 8, scope: !1569)
!1605 = !DILocation(line: 123, column: 13, scope: !1601)
!1606 = !DILocation(line: 123, column: 6, scope: !1601)
!1607 = !DILocation(line: 124, column: 1, scope: !1569)
!1608 = distinct !DISubprogram(name: "fdadvise", scope: !1609, file: !1609, line: 31, type: !1610, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !675, variables: !1614)
!1609 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !34, !1612, !1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !143, line: 91, baseType: !171)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !105, line: 52, baseType: !104)
!1614 = !{!1615, !1616, !1617, !1618, !1619}
!1615 = !DILocalVariable(name: "fd", arg: 1, scope: !1608, file: !1609, line: 31, type: !34)
!1616 = !DILocalVariable(name: "offset", arg: 2, scope: !1608, file: !1609, line: 31, type: !1612)
!1617 = !DILocalVariable(name: "len", arg: 3, scope: !1608, file: !1609, line: 31, type: !1612)
!1618 = !DILocalVariable(name: "advice", arg: 4, scope: !1608, file: !1609, line: 31, type: !1613)
!1619 = !DILocalVariable(name: "__x", scope: !1620, file: !1609, line: 34, type: !34)
!1620 = distinct !DILexicalBlock(scope: !1608, file: !1609, line: 34, column: 3)
!1621 = !DILocation(line: 31, column: 15, scope: !1608)
!1622 = !DILocation(line: 31, column: 25, scope: !1608)
!1623 = !DILocation(line: 31, column: 39, scope: !1608)
!1624 = !DILocation(line: 31, column: 54, scope: !1608)
!1625 = !DILocation(line: 34, column: 3, scope: !1620)
!1626 = !DILocation(line: 36, column: 1, scope: !1608)
!1627 = distinct !DISubprogram(name: "fadvise", scope: !1609, file: !1609, line: 39, type: !1628, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !675, variables: !1670)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1630, !1613}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 49, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1632, file: !145, line: 242, baseType: !34, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1632, file: !145, line: 247, baseType: !21, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1632, file: !145, line: 248, baseType: !21, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1632, file: !145, line: 249, baseType: !21, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1632, file: !145, line: 250, baseType: !21, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1632, file: !145, line: 251, baseType: !21, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1632, file: !145, line: 252, baseType: !21, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1632, file: !145, line: 253, baseType: !21, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1632, file: !145, line: 254, baseType: !21, size: 64, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1632, file: !145, line: 256, baseType: !21, size: 64, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1632, file: !145, line: 257, baseType: !21, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1632, file: !145, line: 258, baseType: !21, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1632, file: !145, line: 260, baseType: !1647, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, elements: !1649)
!1649 = !{!1650, !1651, !1653}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1648, file: !145, line: 157, baseType: !1647, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1648, file: !145, line: 158, baseType: !1652, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1648, file: !145, line: 162, baseType: !34, size: 32, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1632, file: !145, line: 262, baseType: !1652, size: 64, offset: 832)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1632, file: !145, line: 264, baseType: !34, size: 32, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1632, file: !145, line: 268, baseType: !34, size: 32, offset: 928)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1632, file: !145, line: 270, baseType: !171, size: 64, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1632, file: !145, line: 274, baseType: !35, size: 16, offset: 1024)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1632, file: !145, line: 275, baseType: !175, size: 8, offset: 1040)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1632, file: !145, line: 276, baseType: !177, size: 8, offset: 1048)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1632, file: !145, line: 280, baseType: !181, size: 64, offset: 1088)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1632, file: !145, line: 289, baseType: !184, size: 64, offset: 1152)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1632, file: !145, line: 297, baseType: !23, size: 64, offset: 1216)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1632, file: !145, line: 298, baseType: !23, size: 64, offset: 1280)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1632, file: !145, line: 299, baseType: !23, size: 64, offset: 1344)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1632, file: !145, line: 300, baseType: !23, size: 64, offset: 1408)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1632, file: !145, line: 302, baseType: !24, size: 64, offset: 1472)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1632, file: !145, line: 303, baseType: !34, size: 32, offset: 1536)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1632, file: !145, line: 305, baseType: !192, size: 160, offset: 1568)
!1670 = !{!1671, !1672}
!1671 = !DILocalVariable(name: "fp", arg: 1, scope: !1627, file: !1609, line: 39, type: !1630)
!1672 = !DILocalVariable(name: "advice", arg: 2, scope: !1627, file: !1609, line: 39, type: !1613)
!1673 = !DILocation(line: 39, column: 16, scope: !1627)
!1674 = !DILocation(line: 39, column: 30, scope: !1627)
!1675 = !DILocation(line: 41, column: 7, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1627, file: !1609, line: 41, column: 7)
!1677 = !DILocation(line: 41, column: 7, scope: !1627)
!1678 = !DILocation(line: 42, column: 15, scope: !1676)
!1679 = !DILocation(line: 31, column: 15, scope: !1608, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 42, column: 5, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1676, file: !1609, discriminator: 1)
!1682 = !DILocation(line: 31, column: 25, scope: !1608, inlinedAt: !1680)
!1683 = !DILocation(line: 31, column: 39, scope: !1608, inlinedAt: !1680)
!1684 = !DILocation(line: 31, column: 54, scope: !1608, inlinedAt: !1680)
!1685 = !DILocation(line: 34, column: 3, scope: !1620, inlinedAt: !1680)
!1686 = !DILocation(line: 42, column: 5, scope: !1676)
!1687 = !DILocation(line: 43, column: 1, scope: !1627)
!1688 = distinct !DISubprogram(name: "set_program_name", scope: !265, file: !265, line: 39, type: !42, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !261, variables: !1689)
!1689 = !{!1690, !1691, !1692}
!1690 = !DILocalVariable(name: "argv0", arg: 1, scope: !1688, file: !265, line: 39, type: !32)
!1691 = !DILocalVariable(name: "slash", scope: !1688, file: !265, line: 46, type: !32)
!1692 = !DILocalVariable(name: "base", scope: !1688, file: !265, line: 47, type: !32)
!1693 = !DILocation(line: 39, column: 31, scope: !1688)
!1694 = !DILocation(line: 51, column: 13, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1688, file: !265, line: 51, column: 7)
!1696 = !DILocation(line: 51, column: 7, scope: !1688)
!1697 = !DILocation(line: 55, column: 14, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !265, line: 52, column: 5)
!1699 = !DILocation(line: 54, column: 7, scope: !1698)
!1700 = !DILocation(line: 56, column: 7, scope: !1698)
!1701 = !DILocation(line: 59, column: 11, scope: !1688)
!1702 = !DILocation(line: 46, column: 15, scope: !1688)
!1703 = !DILocation(line: 60, column: 17, scope: !1688)
!1704 = !DILocation(line: 60, column: 33, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1688, file: !265, discriminator: 1)
!1706 = !DILocation(line: 60, column: 11, scope: !1688)
!1707 = !DILocation(line: 47, column: 15, scope: !1688)
!1708 = !DILocation(line: 61, column: 12, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1688, file: !265, line: 61, column: 7)
!1710 = !DILocation(line: 61, column: 20, scope: !1709)
!1711 = !DILocation(line: 61, column: 25, scope: !1709)
!1712 = !DILocation(line: 61, column: 28, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1709, file: !265, discriminator: 1)
!1714 = !DILocation(line: 61, column: 61, scope: !1713)
!1715 = !DILocation(line: 61, column: 7, scope: !1705)
!1716 = !DILocation(line: 64, column: 11, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !265, line: 64, column: 11)
!1718 = distinct !DILexicalBlock(scope: !1709, file: !265, line: 62, column: 5)
!1719 = !DILocation(line: 64, column: 36, scope: !1717)
!1720 = !DILocation(line: 64, column: 11, scope: !1718)
!1721 = !DILocation(line: 66, column: 24, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !265, line: 65, column: 9)
!1723 = !DILocation(line: 70, column: 41, scope: !1722)
!1724 = !DILocation(line: 72, column: 9, scope: !1722)
!1725 = !DILocation(line: 84, column: 16, scope: !1688)
!1726 = !DILocation(line: 90, column: 27, scope: !1688)
!1727 = !DILocation(line: 92, column: 1, scope: !1688)
!1728 = distinct !DISubprogram(name: "clone_quoting_options", scope: !280, file: !280, line: 114, type: !1729, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1732)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!1731, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!1732 = !{!1733, !1734, !1735}
!1733 = !DILocalVariable(name: "o", arg: 1, scope: !1728, file: !280, line: 114, type: !1731)
!1734 = !DILocalVariable(name: "e", scope: !1728, file: !280, line: 116, type: !34)
!1735 = !DILocalVariable(name: "p", scope: !1728, file: !280, line: 117, type: !1731)
!1736 = !DILocation(line: 114, column: 48, scope: !1728)
!1737 = !DILocation(line: 116, column: 11, scope: !1728)
!1738 = !DILocation(line: 116, column: 7, scope: !1728)
!1739 = !DILocation(line: 117, column: 40, scope: !1728)
!1740 = !DILocation(line: 117, column: 40, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1728, file: !280, discriminator: 3)
!1742 = !DILocation(line: 117, column: 31, scope: !1741)
!1743 = !DILocation(line: 117, column: 27, scope: !1728)
!1744 = !DILocation(line: 119, column: 9, scope: !1728)
!1745 = !DILocation(line: 120, column: 3, scope: !1728)
!1746 = distinct !DISubprogram(name: "get_quoting_style", scope: !280, file: !280, line: 125, type: !1747, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1751)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!90, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!1751 = !{!1752}
!1752 = !DILocalVariable(name: "o", arg: 1, scope: !1746, file: !280, line: 125, type: !1749)
!1753 = !DILocation(line: 125, column: 50, scope: !1746)
!1754 = !DILocation(line: 127, column: 11, scope: !1746)
!1755 = !DILocation(line: 127, column: 46, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1746, file: !280, discriminator: 3)
!1757 = !{!1758, !737, i64 0}
!1758 = !{!"quoting_options", !737, i64 0, !848, i64 4, !737, i64 8, !736, i64 40, !736, i64 48}
!1759 = !DILocation(line: 127, column: 3, scope: !1756)
!1760 = distinct !DISubprogram(name: "set_quoting_style", scope: !280, file: !280, line: 133, type: !1761, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1731, !90}
!1763 = !{!1764, !1765}
!1764 = !DILocalVariable(name: "o", arg: 1, scope: !1760, file: !280, line: 133, type: !1731)
!1765 = !DILocalVariable(name: "s", arg: 2, scope: !1760, file: !280, line: 133, type: !90)
!1766 = !DILocation(line: 133, column: 44, scope: !1760)
!1767 = !DILocation(line: 133, column: 66, scope: !1760)
!1768 = !DILocation(line: 135, column: 4, scope: !1760)
!1769 = !DILocation(line: 135, column: 39, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1760, file: !280, discriminator: 3)
!1771 = !DILocation(line: 135, column: 45, scope: !1770)
!1772 = !DILocation(line: 136, column: 1, scope: !1760)
!1773 = distinct !DISubprogram(name: "set_char_quoting", scope: !280, file: !280, line: 144, type: !1774, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!34, !1731, !22, !34}
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1783, !1784}
!1777 = !DILocalVariable(name: "o", arg: 1, scope: !1773, file: !280, line: 144, type: !1731)
!1778 = !DILocalVariable(name: "c", arg: 2, scope: !1773, file: !280, line: 144, type: !22)
!1779 = !DILocalVariable(name: "i", arg: 3, scope: !1773, file: !280, line: 144, type: !34)
!1780 = !DILocalVariable(name: "uc", scope: !1773, file: !280, line: 146, type: !31)
!1781 = !DILocalVariable(name: "p", scope: !1773, file: !280, line: 147, type: !1782)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1783 = !DILocalVariable(name: "shift", scope: !1773, file: !280, line: 149, type: !34)
!1784 = !DILocalVariable(name: "r", scope: !1773, file: !280, line: 150, type: !34)
!1785 = !DILocation(line: 144, column: 43, scope: !1773)
!1786 = !DILocation(line: 144, column: 51, scope: !1773)
!1787 = !DILocation(line: 144, column: 58, scope: !1773)
!1788 = !DILocation(line: 146, column: 17, scope: !1773)
!1789 = !DILocation(line: 148, column: 6, scope: !1773)
!1790 = !DILocation(line: 148, column: 62, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1773, file: !280, discriminator: 3)
!1792 = !DILocation(line: 148, column: 57, scope: !1791)
!1793 = !DILocation(line: 147, column: 17, scope: !1773)
!1794 = !DILocation(line: 149, column: 18, scope: !1773)
!1795 = !DILocation(line: 149, column: 15, scope: !1773)
!1796 = !DILocation(line: 149, column: 7, scope: !1773)
!1797 = !DILocation(line: 150, column: 12, scope: !1773)
!1798 = !DILocation(line: 150, column: 15, scope: !1773)
!1799 = !DILocation(line: 150, column: 25, scope: !1773)
!1800 = !DILocation(line: 150, column: 7, scope: !1773)
!1801 = !DILocation(line: 151, column: 13, scope: !1773)
!1802 = !DILocation(line: 151, column: 18, scope: !1773)
!1803 = !DILocation(line: 151, column: 23, scope: !1773)
!1804 = !DILocation(line: 151, column: 6, scope: !1773)
!1805 = !DILocation(line: 152, column: 3, scope: !1773)
!1806 = distinct !DISubprogram(name: "set_quoting_flags", scope: !280, file: !280, line: 160, type: !1807, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!34, !1731, !34}
!1809 = !{!1810, !1811, !1812}
!1810 = !DILocalVariable(name: "o", arg: 1, scope: !1806, file: !280, line: 160, type: !1731)
!1811 = !DILocalVariable(name: "i", arg: 2, scope: !1806, file: !280, line: 160, type: !34)
!1812 = !DILocalVariable(name: "r", scope: !1806, file: !280, line: 162, type: !34)
!1813 = !DILocation(line: 160, column: 44, scope: !1806)
!1814 = !DILocation(line: 160, column: 51, scope: !1806)
!1815 = !DILocation(line: 163, column: 8, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1806, file: !280, line: 163, column: 7)
!1817 = !DILocation(line: 163, column: 7, scope: !1806)
!1818 = !DILocation(line: 165, column: 10, scope: !1806)
!1819 = !{!1758, !848, i64 4}
!1820 = !DILocation(line: 162, column: 7, scope: !1806)
!1821 = !DILocation(line: 166, column: 12, scope: !1806)
!1822 = !DILocation(line: 167, column: 3, scope: !1806)
!1823 = distinct !DISubprogram(name: "set_custom_quoting", scope: !280, file: !280, line: 171, type: !1824, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1731, !32, !32}
!1826 = !{!1827, !1828, !1829}
!1827 = !DILocalVariable(name: "o", arg: 1, scope: !1823, file: !280, line: 171, type: !1731)
!1828 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1823, file: !280, line: 172, type: !32)
!1829 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1823, file: !280, line: 172, type: !32)
!1830 = !DILocation(line: 171, column: 45, scope: !1823)
!1831 = !DILocation(line: 172, column: 33, scope: !1823)
!1832 = !DILocation(line: 172, column: 57, scope: !1823)
!1833 = !DILocation(line: 174, column: 8, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1823, file: !280, line: 174, column: 7)
!1835 = !DILocation(line: 174, column: 7, scope: !1823)
!1836 = !DILocation(line: 176, column: 6, scope: !1823)
!1837 = !DILocation(line: 176, column: 12, scope: !1823)
!1838 = !DILocation(line: 177, column: 8, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1823, file: !280, line: 177, column: 7)
!1840 = !DILocation(line: 177, column: 23, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1839, file: !280, discriminator: 1)
!1842 = !DILocation(line: 177, column: 19, scope: !1839)
!1843 = !DILocation(line: 178, column: 5, scope: !1839)
!1844 = !DILocation(line: 179, column: 6, scope: !1823)
!1845 = !DILocation(line: 179, column: 17, scope: !1823)
!1846 = !{!1758, !736, i64 40}
!1847 = !DILocation(line: 180, column: 6, scope: !1823)
!1848 = !DILocation(line: 180, column: 18, scope: !1823)
!1849 = !{!1758, !736, i64 48}
!1850 = !DILocation(line: 181, column: 1, scope: !1823)
!1851 = distinct !DISubprogram(name: "quotearg_buffer", scope: !280, file: !280, line: 776, type: !1852, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!24, !21, !24, !32, !24, !1749}
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1855 = !DILocalVariable(name: "buffer", arg: 1, scope: !1851, file: !280, line: 776, type: !21)
!1856 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1851, file: !280, line: 776, type: !24)
!1857 = !DILocalVariable(name: "arg", arg: 3, scope: !1851, file: !280, line: 777, type: !32)
!1858 = !DILocalVariable(name: "argsize", arg: 4, scope: !1851, file: !280, line: 777, type: !24)
!1859 = !DILocalVariable(name: "o", arg: 5, scope: !1851, file: !280, line: 778, type: !1749)
!1860 = !DILocalVariable(name: "p", scope: !1851, file: !280, line: 780, type: !1749)
!1861 = !DILocalVariable(name: "e", scope: !1851, file: !280, line: 781, type: !34)
!1862 = !DILocalVariable(name: "r", scope: !1851, file: !280, line: 782, type: !24)
!1863 = !DILocation(line: 776, column: 24, scope: !1851)
!1864 = !DILocation(line: 776, column: 39, scope: !1851)
!1865 = !DILocation(line: 777, column: 30, scope: !1851)
!1866 = !DILocation(line: 777, column: 42, scope: !1851)
!1867 = !DILocation(line: 778, column: 48, scope: !1851)
!1868 = !DILocation(line: 780, column: 37, scope: !1851)
!1869 = !DILocation(line: 780, column: 33, scope: !1851)
!1870 = !DILocation(line: 781, column: 11, scope: !1851)
!1871 = !DILocation(line: 781, column: 7, scope: !1851)
!1872 = !DILocation(line: 783, column: 43, scope: !1851)
!1873 = !DILocation(line: 783, column: 53, scope: !1851)
!1874 = !DILocation(line: 783, column: 60, scope: !1851)
!1875 = !DILocation(line: 784, column: 43, scope: !1851)
!1876 = !DILocation(line: 784, column: 58, scope: !1851)
!1877 = !DILocation(line: 782, column: 14, scope: !1851)
!1878 = !DILocation(line: 782, column: 10, scope: !1851)
!1879 = !DILocation(line: 785, column: 9, scope: !1851)
!1880 = !DILocation(line: 786, column: 3, scope: !1851)
!1881 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !280, file: !280, line: 248, type: !1882, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !1886)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!24, !21, !24, !32, !24, !90, !34, !1884, !32, !32}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1911, !1912, !1913, !1914, !1915, !1918, !1919, !1936, !1939, !1940, !1947}
!1887 = !DILocalVariable(name: "buffer", arg: 1, scope: !1881, file: !280, line: 248, type: !21)
!1888 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1881, file: !280, line: 248, type: !24)
!1889 = !DILocalVariable(name: "arg", arg: 3, scope: !1881, file: !280, line: 249, type: !32)
!1890 = !DILocalVariable(name: "argsize", arg: 4, scope: !1881, file: !280, line: 249, type: !24)
!1891 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1881, file: !280, line: 250, type: !90)
!1892 = !DILocalVariable(name: "flags", arg: 6, scope: !1881, file: !280, line: 250, type: !34)
!1893 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1881, file: !280, line: 251, type: !1884)
!1894 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1881, file: !280, line: 252, type: !32)
!1895 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1881, file: !280, line: 253, type: !32)
!1896 = !DILocalVariable(name: "i", scope: !1881, file: !280, line: 255, type: !24)
!1897 = !DILocalVariable(name: "len", scope: !1881, file: !280, line: 256, type: !24)
!1898 = !DILocalVariable(name: "orig_buffersize", scope: !1881, file: !280, line: 257, type: !24)
!1899 = !DILocalVariable(name: "quote_string", scope: !1881, file: !280, line: 258, type: !32)
!1900 = !DILocalVariable(name: "quote_string_len", scope: !1881, file: !280, line: 259, type: !24)
!1901 = !DILocalVariable(name: "backslash_escapes", scope: !1881, file: !280, line: 260, type: !229)
!1902 = !DILocalVariable(name: "unibyte_locale", scope: !1881, file: !280, line: 261, type: !229)
!1903 = !DILocalVariable(name: "elide_outer_quotes", scope: !1881, file: !280, line: 262, type: !229)
!1904 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1881, file: !280, line: 263, type: !229)
!1905 = !DILocalVariable(name: "encountered_single_quote", scope: !1881, file: !280, line: 264, type: !229)
!1906 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1881, file: !280, line: 265, type: !229)
!1907 = !DILocalVariable(name: "c", scope: !1908, file: !280, line: 394, type: !31)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !280, line: 393, column: 5)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !280, line: 392, column: 3)
!1910 = distinct !DILexicalBlock(scope: !1881, file: !280, line: 392, column: 3)
!1911 = !DILocalVariable(name: "esc", scope: !1908, file: !280, line: 395, type: !31)
!1912 = !DILocalVariable(name: "is_right_quote", scope: !1908, file: !280, line: 396, type: !229)
!1913 = !DILocalVariable(name: "escaping", scope: !1908, file: !280, line: 397, type: !229)
!1914 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1908, file: !280, line: 398, type: !229)
!1915 = !DILocalVariable(name: "m", scope: !1916, file: !280, line: 602, type: !24)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 600, column: 11)
!1917 = distinct !DILexicalBlock(scope: !1908, file: !280, line: 418, column: 9)
!1918 = !DILocalVariable(name: "printable", scope: !1916, file: !280, line: 604, type: !229)
!1919 = !DILocalVariable(name: "mbstate", scope: !1920, file: !280, line: 613, type: !1922)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !280, line: 612, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !280, line: 606, column: 17)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1923, line: 107, baseType: !1924)
!1923 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1923, line: 95, baseType: !1925)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 83, size: 64, elements: !1926)
!1926 = !{!1927, !1928}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1925, file: !1923, line: 85, baseType: !34, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1925, file: !1923, line: 94, baseType: !1929, size: 32, offset: 32)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1925, file: !1923, line: 86, size: 32, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1929, file: !1923, line: 89, baseType: !127, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1929, file: !1923, line: 93, baseType: !1933, size: 32)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1934)
!1934 = !{!1935}
!1935 = !DISubrange(count: 4)
!1936 = !DILocalVariable(name: "w", scope: !1937, file: !280, line: 623, type: !1938)
!1937 = distinct !DILexicalBlock(scope: !1920, file: !280, line: 622, column: 19)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !25, line: 90, baseType: !34)
!1939 = !DILocalVariable(name: "bytes", scope: !1937, file: !280, line: 624, type: !24)
!1940 = !DILocalVariable(name: "j", scope: !1941, file: !280, line: 649, type: !24)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !280, line: 648, column: 27)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !280, line: 646, column: 29)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !280, line: 641, column: 23)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !280, line: 633, column: 30)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !280, line: 628, column: 30)
!1946 = distinct !DILexicalBlock(scope: !1937, file: !280, line: 626, column: 25)
!1947 = !DILocalVariable(name: "ilim", scope: !1948, file: !280, line: 676, type: !24)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !280, line: 673, column: 15)
!1949 = distinct !DILexicalBlock(scope: !1916, file: !280, line: 672, column: 17)
!1950 = !DILocation(line: 248, column: 33, scope: !1881)
!1951 = !DILocation(line: 248, column: 48, scope: !1881)
!1952 = !DILocation(line: 249, column: 39, scope: !1881)
!1953 = !DILocation(line: 249, column: 51, scope: !1881)
!1954 = !DILocation(line: 250, column: 46, scope: !1881)
!1955 = !DILocation(line: 250, column: 65, scope: !1881)
!1956 = !DILocation(line: 251, column: 47, scope: !1881)
!1957 = !DILocation(line: 252, column: 39, scope: !1881)
!1958 = !DILocation(line: 253, column: 39, scope: !1881)
!1959 = !DILocation(line: 256, column: 10, scope: !1881)
!1960 = !DILocation(line: 257, column: 10, scope: !1881)
!1961 = !DILocation(line: 258, column: 15, scope: !1881)
!1962 = !DILocation(line: 259, column: 10, scope: !1881)
!1963 = !DILocation(line: 260, column: 8, scope: !1881)
!1964 = !DILocation(line: 261, column: 25, scope: !1881)
!1965 = !DILocation(line: 261, column: 36, scope: !1881)
!1966 = !DILocation(line: 262, column: 8, scope: !1881)
!1967 = !DILocation(line: 263, column: 8, scope: !1881)
!1968 = !DILocation(line: 264, column: 8, scope: !1881)
!1969 = !DILocation(line: 265, column: 8, scope: !1881)
!1970 = !DILocation(line: 265, column: 3, scope: !1881)
!1971 = !DILocation(line: 308, column: 3, scope: !1881)
!1972 = !DILocation(line: 315, column: 11, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1881, file: !280, line: 309, column: 5)
!1974 = !DILocation(line: 315, column: 12, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1973, file: !280, line: 315, column: 11)
!1976 = !DILocation(line: 316, column: 9, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !280, discriminator: 1)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !280, line: 316, column: 9)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !280, line: 316, column: 9)
!1980 = !DILocation(line: 316, column: 9, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1979, file: !280, discriminator: 1)
!1982 = !DILocation(line: 316, column: 9, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1978, file: !280, discriminator: 2)
!1984 = !DILocation(line: 354, column: 26, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !280, line: 332, column: 11)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !280, line: 331, column: 13)
!1987 = distinct !DILexicalBlock(scope: !1973, file: !280, line: 330, column: 7)
!1988 = !DILocation(line: 355, column: 27, scope: !1985)
!1989 = !DILocation(line: 356, column: 11, scope: !1985)
!1990 = !DILocation(line: 357, column: 14, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !280, line: 357, column: 13)
!1992 = !DILocation(line: 357, column: 13, scope: !1987)
!1993 = !DILocation(line: 358, column: 43, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1995, file: !280, discriminator: 1)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !280, line: 358, column: 11)
!1996 = distinct !DILexicalBlock(scope: !1991, file: !280, line: 358, column: 11)
!1997 = !DILocation(line: 358, column: 11, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1996, file: !280, discriminator: 1)
!1999 = !DILocation(line: 359, column: 13, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !2001, file: !280, discriminator: 1)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !280, line: 359, column: 13)
!2002 = distinct !DILexicalBlock(scope: !1995, file: !280, line: 359, column: 13)
!2003 = !DILocation(line: 359, column: 13, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2002, file: !280, discriminator: 1)
!2005 = !DILocation(line: 359, column: 13, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2001, file: !280, discriminator: 2)
!2007 = !DILocation(line: 359, column: 13, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !2002, file: !280, discriminator: 3)
!2009 = !DILocation(line: 358, column: 70, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !1995, file: !280, discriminator: 2)
!2011 = distinct !{!2011, !2012, !2013}
!2012 = !DILocation(line: 358, column: 11, scope: !1996)
!2013 = !DILocation(line: 359, column: 13, scope: !1996)
!2014 = !DILocation(line: 362, column: 28, scope: !1987)
!2015 = !DILocation(line: 364, column: 7, scope: !1973)
!2016 = !DILocation(line: 367, column: 7, scope: !1973)
!2017 = !DILocation(line: 370, column: 7, scope: !1973)
!2018 = !DILocation(line: 373, column: 12, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1973, file: !280, line: 373, column: 11)
!2020 = !DILocation(line: 373, column: 11, scope: !1973)
!2021 = !DILocation(line: 378, column: 12, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1973, file: !280, line: 378, column: 11)
!2023 = !DILocation(line: 378, column: 11, scope: !1973)
!2024 = !DILocation(line: 379, column: 9, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2026, file: !280, discriminator: 1)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !280, line: 379, column: 9)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !280, line: 379, column: 9)
!2028 = !DILocation(line: 379, column: 9, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2027, file: !280, discriminator: 1)
!2030 = !DILocation(line: 379, column: 9, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2026, file: !280, discriminator: 2)
!2032 = !DILocation(line: 386, column: 7, scope: !1973)
!2033 = !DILocation(line: 389, column: 7, scope: !1973)
!2034 = !DILocation(line: 255, column: 10, scope: !1881)
!2035 = !DILocation(line: 392, column: 8, scope: !1910)
!2036 = !DILocation(line: 392, column: 27, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !1909, file: !280, discriminator: 1)
!2038 = !DILocation(line: 392, column: 19, scope: !2037)
!2039 = !DILocation(line: 392, column: 60, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !1909, file: !280, discriminator: 3)
!2041 = !DILocation(line: 392, column: 3, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !1910, file: !280, discriminator: 4)
!2043 = !DILocation(line: 392, column: 41, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !1909, file: !280, discriminator: 2)
!2045 = !DILocation(line: 392, column: 48, scope: !2044)
!2046 = !DILocation(line: 396, column: 12, scope: !1908)
!2047 = !DILocation(line: 397, column: 12, scope: !1908)
!2048 = !DILocation(line: 398, column: 12, scope: !1908)
!2049 = !DILocation(line: 401, column: 11, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1908, file: !280, line: 400, column: 11)
!2051 = !DILocation(line: 403, column: 17, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2050, file: !280, discriminator: 1)
!2053 = !DILocation(line: 404, column: 39, scope: !2050)
!2054 = !DILocation(line: 408, column: 32, scope: !2050)
!2055 = !DILocation(line: 404, column: 19, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2050, file: !280, discriminator: 2)
!2057 = !DILocation(line: 404, column: 15, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2050, file: !280, discriminator: 4)
!2059 = !DILocation(line: 409, column: 11, scope: !2050)
!2060 = !DILocation(line: 409, column: 26, scope: !2052)
!2061 = !DILocation(line: 409, column: 14, scope: !2052)
!2062 = !DILocation(line: 400, column: 11, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !1908, file: !280, discriminator: 1)
!2064 = !DILocation(line: 416, column: 11, scope: !1908)
!2065 = !DILocation(line: 394, column: 21, scope: !1908)
!2066 = !DILocation(line: 417, column: 7, scope: !1908)
!2067 = !DILocation(line: 420, column: 15, scope: !1917)
!2068 = !DILocation(line: 422, column: 15, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2070, file: !280, discriminator: 1)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !280, line: 422, column: 15)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !280, line: 421, column: 13)
!2072 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 420, column: 15)
!2073 = !DILocation(line: 422, column: 15, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2075, file: !280, discriminator: 4)
!2075 = distinct !DILexicalBlock(scope: !2070, file: !280, line: 422, column: 15)
!2076 = !DILocation(line: 422, column: 15, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2075, file: !280, discriminator: 3)
!2078 = !DILocation(line: 422, column: 15, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2080, file: !280, discriminator: 6)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !280, line: 422, column: 15)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !280, line: 422, column: 15)
!2082 = distinct !DILexicalBlock(scope: !2075, file: !280, line: 422, column: 15)
!2083 = !DILocation(line: 422, column: 15, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2081, file: !280, discriminator: 6)
!2085 = !DILocation(line: 422, column: 15, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2080, file: !280, discriminator: 7)
!2087 = !DILocation(line: 422, column: 15, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2081, file: !280, discriminator: 8)
!2089 = !DILocation(line: 422, column: 15, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2091, file: !280, discriminator: 11)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !280, line: 422, column: 15)
!2092 = distinct !DILexicalBlock(scope: !2082, file: !280, line: 422, column: 15)
!2093 = !DILocation(line: 422, column: 15, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2092, file: !280, discriminator: 11)
!2095 = !DILocation(line: 422, column: 15, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2091, file: !280, discriminator: 12)
!2097 = !DILocation(line: 422, column: 15, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2092, file: !280, discriminator: 13)
!2099 = !DILocation(line: 422, column: 15, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2101, file: !280, discriminator: 16)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !280, line: 422, column: 15)
!2102 = distinct !DILexicalBlock(scope: !2082, file: !280, line: 422, column: 15)
!2103 = !DILocation(line: 422, column: 15, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2102, file: !280, discriminator: 16)
!2105 = !DILocation(line: 422, column: 15, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2101, file: !280, discriminator: 17)
!2107 = !DILocation(line: 422, column: 15, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2102, file: !280, discriminator: 18)
!2109 = !DILocation(line: 422, column: 15, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2082, file: !280, discriminator: 20)
!2111 = !DILocation(line: 422, column: 15, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2113, file: !280, discriminator: 22)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !280, line: 422, column: 15)
!2114 = distinct !DILexicalBlock(scope: !2070, file: !280, line: 422, column: 15)
!2115 = !DILocation(line: 422, column: 15, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2114, file: !280, discriminator: 22)
!2117 = !DILocation(line: 422, column: 15, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2113, file: !280, discriminator: 23)
!2119 = !DILocation(line: 422, column: 15, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2114, file: !280, discriminator: 24)
!2121 = !DILocation(line: 430, column: 19, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2071, file: !280, line: 429, column: 19)
!2123 = !DILocation(line: 430, column: 24, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2122, file: !280, discriminator: 1)
!2125 = !DILocation(line: 430, column: 28, scope: !2124)
!2126 = !DILocation(line: 430, column: 38, scope: !2124)
!2127 = !DILocation(line: 430, column: 48, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2122, file: !280, discriminator: 2)
!2129 = !DILocation(line: 430, column: 59, scope: !2128)
!2130 = !DILocation(line: 432, column: 19, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2132, file: !280, discriminator: 1)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !280, line: 432, column: 19)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !280, line: 432, column: 19)
!2134 = distinct !DILexicalBlock(scope: !2122, file: !280, line: 431, column: 17)
!2135 = !DILocation(line: 432, column: 19, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2133, file: !280, discriminator: 1)
!2137 = !DILocation(line: 432, column: 19, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2132, file: !280, discriminator: 2)
!2139 = !DILocation(line: 432, column: 19, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2133, file: !280, discriminator: 3)
!2141 = !DILocation(line: 433, column: 19, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2143, file: !280, discriminator: 1)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !280, line: 433, column: 19)
!2144 = distinct !DILexicalBlock(scope: !2134, file: !280, line: 433, column: 19)
!2145 = !DILocation(line: 433, column: 19, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2144, file: !280, discriminator: 1)
!2147 = !DILocation(line: 433, column: 19, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2143, file: !280, discriminator: 2)
!2149 = !DILocation(line: 433, column: 19, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2144, file: !280, discriminator: 3)
!2151 = !DILocation(line: 434, column: 17, scope: !2134)
!2152 = !DILocation(line: 441, column: 20, scope: !2072)
!2153 = !DILocation(line: 446, column: 11, scope: !1917)
!2154 = !DILocation(line: 449, column: 19, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 447, column: 13)
!2156 = !DILocation(line: 455, column: 19, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2155, file: !280, line: 454, column: 19)
!2158 = !DILocation(line: 455, column: 24, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2157, file: !280, discriminator: 1)
!2160 = !DILocation(line: 455, column: 28, scope: !2159)
!2161 = !DILocation(line: 455, column: 38, scope: !2159)
!2162 = !DILocation(line: 455, column: 47, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2157, file: !280, discriminator: 2)
!2164 = !DILocation(line: 455, column: 41, scope: !2163)
!2165 = !DILocation(line: 455, column: 52, scope: !2163)
!2166 = !DILocation(line: 454, column: 19, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2155, file: !280, discriminator: 1)
!2168 = !DILocation(line: 456, column: 25, scope: !2157)
!2169 = !DILocation(line: 456, column: 17, scope: !2157)
!2170 = !DILocation(line: 463, column: 25, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2157, file: !280, line: 457, column: 19)
!2172 = !DILocation(line: 467, column: 21, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2174, file: !280, discriminator: 1)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !280, line: 467, column: 21)
!2175 = distinct !DILexicalBlock(scope: !2171, file: !280, line: 467, column: 21)
!2176 = !DILocation(line: 467, column: 21, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2175, file: !280, discriminator: 1)
!2178 = !DILocation(line: 467, column: 21, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2174, file: !280, discriminator: 2)
!2180 = !DILocation(line: 467, column: 21, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2175, file: !280, discriminator: 3)
!2182 = !DILocation(line: 468, column: 21, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2184, file: !280, discriminator: 1)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !280, line: 468, column: 21)
!2185 = distinct !DILexicalBlock(scope: !2171, file: !280, line: 468, column: 21)
!2186 = !DILocation(line: 468, column: 21, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2185, file: !280, discriminator: 1)
!2188 = !DILocation(line: 468, column: 21, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2184, file: !280, discriminator: 2)
!2190 = !DILocation(line: 468, column: 21, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2185, file: !280, discriminator: 3)
!2192 = !DILocation(line: 469, column: 21, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2194, file: !280, discriminator: 1)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !280, line: 469, column: 21)
!2195 = distinct !DILexicalBlock(scope: !2171, file: !280, line: 469, column: 21)
!2196 = !DILocation(line: 469, column: 21, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2195, file: !280, discriminator: 1)
!2198 = !DILocation(line: 469, column: 21, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2194, file: !280, discriminator: 2)
!2200 = !DILocation(line: 469, column: 21, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2195, file: !280, discriminator: 3)
!2202 = !DILocation(line: 470, column: 21, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !280, discriminator: 1)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !280, line: 470, column: 21)
!2205 = distinct !DILexicalBlock(scope: !2171, file: !280, line: 470, column: 21)
!2206 = !DILocation(line: 470, column: 21, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2205, file: !280, discriminator: 1)
!2208 = !DILocation(line: 470, column: 21, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2204, file: !280, discriminator: 2)
!2210 = !DILocation(line: 470, column: 21, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2205, file: !280, discriminator: 3)
!2212 = !DILocation(line: 471, column: 21, scope: !2171)
!2213 = !DILocation(line: 395, column: 21, scope: !1908)
!2214 = !DILocation(line: 484, column: 31, scope: !1917)
!2215 = !DILocation(line: 485, column: 31, scope: !1917)
!2216 = !DILocation(line: 487, column: 31, scope: !1917)
!2217 = !DILocation(line: 488, column: 31, scope: !1917)
!2218 = !DILocation(line: 489, column: 31, scope: !1917)
!2219 = !DILocation(line: 492, column: 15, scope: !1917)
!2220 = !DILocation(line: 494, column: 19, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !280, line: 493, column: 13)
!2222 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 492, column: 15)
!2223 = !DILocation(line: 501, column: 33, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 501, column: 15)
!2225 = !DILocation(line: 506, column: 15, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 505, column: 15)
!2227 = !DILocation(line: 510, column: 15, scope: !1917)
!2228 = !DILocation(line: 518, column: 26, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 518, column: 15)
!2230 = !DILocation(line: 518, column: 15, scope: !1917)
!2231 = !DILocation(line: 518, column: 40, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2229, file: !280, discriminator: 1)
!2233 = !DILocation(line: 518, column: 47, scope: !2232)
!2234 = !DILocation(line: 522, column: 17, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 522, column: 15)
!2236 = !DILocation(line: 518, column: 18, scope: !2232)
!2237 = !DILocation(line: 518, column: 65, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2229, file: !280, discriminator: 2)
!2239 = !DILocation(line: 518, column: 15, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !1917, file: !280, discriminator: 2)
!2241 = !DILocation(line: 522, column: 15, scope: !1917)
!2242 = !DILocation(line: 526, column: 11, scope: !1917)
!2243 = !DILocation(line: 541, column: 15, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 540, column: 15)
!2245 = !DILocation(line: 548, column: 15, scope: !1917)
!2246 = !DILocation(line: 550, column: 19, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !280, line: 549, column: 13)
!2248 = distinct !DILexicalBlock(scope: !1917, file: !280, line: 548, column: 15)
!2249 = !DILocation(line: 553, column: 19, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !280, line: 553, column: 19)
!2251 = !DILocation(line: 553, column: 35, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2250, file: !280, discriminator: 1)
!2253 = !DILocation(line: 553, column: 30, scope: !2250)
!2254 = !DILocation(line: 562, column: 15, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2256, file: !280, discriminator: 1)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !280, line: 562, column: 15)
!2257 = distinct !DILexicalBlock(scope: !2247, file: !280, line: 562, column: 15)
!2258 = !DILocation(line: 562, column: 15, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2257, file: !280, discriminator: 1)
!2260 = !DILocation(line: 562, column: 15, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2256, file: !280, discriminator: 2)
!2262 = !DILocation(line: 562, column: 15, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2257, file: !280, discriminator: 3)
!2264 = !DILocation(line: 563, column: 15, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2266, file: !280, discriminator: 1)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !280, line: 563, column: 15)
!2267 = distinct !DILexicalBlock(scope: !2247, file: !280, line: 563, column: 15)
!2268 = !DILocation(line: 563, column: 15, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2267, file: !280, discriminator: 1)
!2270 = !DILocation(line: 563, column: 15, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2266, file: !280, discriminator: 2)
!2272 = !DILocation(line: 563, column: 15, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2267, file: !280, discriminator: 3)
!2274 = !DILocation(line: 564, column: 15, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2276, file: !280, discriminator: 1)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !280, line: 564, column: 15)
!2277 = distinct !DILexicalBlock(scope: !2247, file: !280, line: 564, column: 15)
!2278 = !DILocation(line: 564, column: 15, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2277, file: !280, discriminator: 1)
!2280 = !DILocation(line: 564, column: 15, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2276, file: !280, discriminator: 2)
!2282 = !DILocation(line: 564, column: 15, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2277, file: !280, discriminator: 3)
!2284 = !DILocation(line: 566, column: 13, scope: !2247)
!2285 = !DILocation(line: 606, column: 17, scope: !1916)
!2286 = !DILocation(line: 602, column: 20, scope: !1916)
!2287 = !DILocation(line: 609, column: 29, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !1921, file: !280, line: 607, column: 15)
!2289 = !DILocation(line: 609, column: 27, scope: !2288)
!2290 = !DILocation(line: 604, column: 18, scope: !1916)
!2291 = !DILocation(line: 610, column: 15, scope: !2288)
!2292 = !DILocation(line: 613, column: 17, scope: !1920)
!2293 = !DILocation(line: 614, column: 17, scope: !1920)
!2294 = !DILocation(line: 618, column: 29, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1920, file: !280, line: 618, column: 21)
!2296 = !DILocation(line: 618, column: 21, scope: !1920)
!2297 = distinct !{!2297, !2298, !2299}
!2298 = !DILocation(line: 621, column: 17, scope: !1920)
!2299 = !DILocation(line: 667, column: 44, scope: !1920)
!2300 = !DILocation(line: 619, column: 29, scope: !2295)
!2301 = !DILocation(line: 619, column: 19, scope: !2295)
!2302 = !DILocation(line: 623, column: 21, scope: !1937)
!2303 = !DILocation(line: 624, column: 56, scope: !1937)
!2304 = !DILocation(line: 624, column: 50, scope: !1937)
!2305 = !DILocation(line: 625, column: 53, scope: !1937)
!2306 = !DILocation(line: 613, column: 27, scope: !1920)
!2307 = !DILocation(line: 623, column: 29, scope: !1937)
!2308 = !DILocation(line: 624, column: 36, scope: !1937)
!2309 = !DILocation(line: 624, column: 28, scope: !1937)
!2310 = !DILocation(line: 626, column: 25, scope: !1937)
!2311 = !DILocation(line: 636, column: 38, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2313, file: !280, discriminator: 1)
!2313 = distinct !DILexicalBlock(scope: !1944, file: !280, line: 634, column: 23)
!2314 = !DILocation(line: 636, column: 48, scope: !2312)
!2315 = !DILocation(line: 636, column: 51, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2313, file: !280, discriminator: 2)
!2317 = !DILocation(line: 636, column: 48, scope: !2316)
!2318 = !DILocation(line: 636, column: 25, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2313, file: !280, discriminator: 3)
!2320 = !DILocation(line: 637, column: 28, scope: !2313)
!2321 = !DILocation(line: 636, column: 34, scope: !2312)
!2322 = distinct !{!2322, !2323, !2320}
!2323 = !DILocation(line: 636, column: 25, scope: !2313)
!2324 = !DILocation(line: 650, column: 43, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2326, file: !280, discriminator: 1)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !280, line: 650, column: 29)
!2327 = distinct !DILexicalBlock(scope: !1941, file: !280, line: 650, column: 29)
!2328 = !DILocation(line: 647, column: 29, scope: !1942)
!2329 = !DILocation(line: 649, column: 36, scope: !1941)
!2330 = !DILocation(line: 651, column: 49, scope: !2326)
!2331 = !DILocation(line: 651, column: 39, scope: !2326)
!2332 = !DILocation(line: 651, column: 31, scope: !2326)
!2333 = !DILocation(line: 650, column: 53, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2326, file: !280, discriminator: 2)
!2335 = !DILocation(line: 650, column: 29, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2327, file: !280, discriminator: 1)
!2337 = distinct !{!2337, !2338, !2339}
!2338 = !DILocation(line: 650, column: 29, scope: !2327)
!2339 = !DILocation(line: 659, column: 33, scope: !2327)
!2340 = !DILocation(line: 666, column: 19, scope: !1920)
!2341 = !DILocation(line: 662, column: 41, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !1943, file: !280, line: 662, column: 29)
!2343 = !DILocation(line: 662, column: 31, scope: !2342)
!2344 = !DILocation(line: 662, column: 29, scope: !1943)
!2345 = !DILocation(line: 664, column: 27, scope: !1943)
!2346 = !DILocation(line: 667, column: 26, scope: !1920)
!2347 = !DILocation(line: 667, column: 24, scope: !1920)
!2348 = !DILocation(line: 666, column: 19, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !1937, file: !280, discriminator: 3)
!2350 = !DILocation(line: 668, column: 15, scope: !1921)
!2351 = !DILocation(line: 670, column: 40, scope: !1916)
!2352 = !DILocation(line: 672, column: 19, scope: !1949)
!2353 = !DILocation(line: 672, column: 45, scope: !2354)
!2354 = !DILexicalBlockFile(scope: !1949, file: !280, discriminator: 1)
!2355 = !DILocation(line: 672, column: 23, scope: !1949)
!2356 = !DILocation(line: 676, column: 33, scope: !1948)
!2357 = !DILocation(line: 676, column: 24, scope: !1948)
!2358 = !DILocation(line: 678, column: 17, scope: !1948)
!2359 = !DILocation(line: 680, column: 43, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !280, line: 680, column: 25)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !280, line: 679, column: 19)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !280, line: 678, column: 17)
!2363 = distinct !DILexicalBlock(scope: !1948, file: !280, line: 678, column: 17)
!2364 = !DILocation(line: 682, column: 25, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2366, file: !280, discriminator: 1)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !280, line: 682, column: 25)
!2367 = distinct !DILexicalBlock(scope: !2360, file: !280, line: 681, column: 23)
!2368 = !DILocation(line: 682, column: 25, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2370, file: !280, discriminator: 4)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !280, line: 682, column: 25)
!2371 = !DILocation(line: 682, column: 25, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2370, file: !280, discriminator: 3)
!2373 = !DILocation(line: 682, column: 25, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !2375, file: !280, discriminator: 6)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !280, line: 682, column: 25)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !280, line: 682, column: 25)
!2377 = distinct !DILexicalBlock(scope: !2370, file: !280, line: 682, column: 25)
!2378 = !DILocation(line: 682, column: 25, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2376, file: !280, discriminator: 6)
!2380 = !DILocation(line: 682, column: 25, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2375, file: !280, discriminator: 7)
!2382 = !DILocation(line: 682, column: 25, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2376, file: !280, discriminator: 8)
!2384 = !DILocation(line: 682, column: 25, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2386, file: !280, discriminator: 11)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !280, line: 682, column: 25)
!2387 = distinct !DILexicalBlock(scope: !2377, file: !280, line: 682, column: 25)
!2388 = !DILocation(line: 682, column: 25, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2387, file: !280, discriminator: 11)
!2390 = !DILocation(line: 682, column: 25, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2386, file: !280, discriminator: 12)
!2392 = !DILocation(line: 682, column: 25, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2387, file: !280, discriminator: 13)
!2394 = !DILocation(line: 682, column: 25, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2396, file: !280, discriminator: 16)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !280, line: 682, column: 25)
!2397 = distinct !DILexicalBlock(scope: !2377, file: !280, line: 682, column: 25)
!2398 = !DILocation(line: 682, column: 25, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2397, file: !280, discriminator: 16)
!2400 = !DILocation(line: 682, column: 25, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2396, file: !280, discriminator: 17)
!2402 = !DILocation(line: 682, column: 25, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2397, file: !280, discriminator: 18)
!2404 = !DILocation(line: 682, column: 25, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2377, file: !280, discriminator: 20)
!2406 = !DILocation(line: 682, column: 25, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2408, file: !280, discriminator: 22)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !280, line: 682, column: 25)
!2409 = distinct !DILexicalBlock(scope: !2366, file: !280, line: 682, column: 25)
!2410 = !DILocation(line: 682, column: 25, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2409, file: !280, discriminator: 22)
!2412 = !DILocation(line: 682, column: 25, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2408, file: !280, discriminator: 23)
!2414 = !DILocation(line: 682, column: 25, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2409, file: !280, discriminator: 24)
!2416 = !DILocation(line: 683, column: 25, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2418, file: !280, discriminator: 1)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !280, line: 683, column: 25)
!2419 = distinct !DILexicalBlock(scope: !2367, file: !280, line: 683, column: 25)
!2420 = !DILocation(line: 683, column: 25, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2419, file: !280, discriminator: 1)
!2422 = !DILocation(line: 683, column: 25, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2418, file: !280, discriminator: 2)
!2424 = !DILocation(line: 683, column: 25, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2419, file: !280, discriminator: 3)
!2426 = !DILocation(line: 684, column: 25, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2428, file: !280, discriminator: 1)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !280, line: 684, column: 25)
!2429 = distinct !DILexicalBlock(scope: !2367, file: !280, line: 684, column: 25)
!2430 = !DILocation(line: 684, column: 25, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2429, file: !280, discriminator: 1)
!2432 = !DILocation(line: 684, column: 25, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2428, file: !280, discriminator: 2)
!2434 = !DILocation(line: 684, column: 25, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2429, file: !280, discriminator: 3)
!2436 = !DILocation(line: 685, column: 38, scope: !2367)
!2437 = !DILocation(line: 685, column: 33, scope: !2367)
!2438 = !DILocation(line: 686, column: 23, scope: !2367)
!2439 = !DILocation(line: 687, column: 30, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2360, file: !280, line: 687, column: 30)
!2441 = !DILocation(line: 687, column: 30, scope: !2360)
!2442 = !DILocation(line: 689, column: 25, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2444, file: !280, discriminator: 1)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !280, line: 689, column: 25)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !280, line: 689, column: 25)
!2446 = distinct !DILexicalBlock(scope: !2440, file: !280, line: 688, column: 23)
!2447 = !DILocation(line: 689, column: 25, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2445, file: !280, discriminator: 1)
!2449 = !DILocation(line: 689, column: 25, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2444, file: !280, discriminator: 2)
!2451 = !DILocation(line: 689, column: 25, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2445, file: !280, discriminator: 3)
!2453 = !DILocation(line: 691, column: 23, scope: !2446)
!2454 = !DILocation(line: 692, column: 35, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2361, file: !280, line: 692, column: 25)
!2456 = !DILocation(line: 692, column: 30, scope: !2455)
!2457 = !DILocation(line: 692, column: 25, scope: !2361)
!2458 = !DILocation(line: 694, column: 21, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2460, file: !280, discriminator: 1)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !280, line: 694, column: 21)
!2461 = distinct !DILexicalBlock(scope: !2361, file: !280, line: 694, column: 21)
!2462 = !DILocation(line: 694, column: 21, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2460, file: !280, discriminator: 2)
!2464 = !DILocation(line: 694, column: 21, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2466, file: !280, discriminator: 4)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !280, line: 694, column: 21)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !280, line: 694, column: 21)
!2468 = distinct !DILexicalBlock(scope: !2460, file: !280, line: 694, column: 21)
!2469 = !DILocation(line: 694, column: 21, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2467, file: !280, discriminator: 4)
!2471 = !DILocation(line: 694, column: 21, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2466, file: !280, discriminator: 5)
!2473 = !DILocation(line: 694, column: 21, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !2467, file: !280, discriminator: 6)
!2475 = !DILocation(line: 694, column: 21, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2477, file: !280, discriminator: 9)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !280, line: 694, column: 21)
!2478 = distinct !DILexicalBlock(scope: !2468, file: !280, line: 694, column: 21)
!2479 = !DILocation(line: 694, column: 21, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2478, file: !280, discriminator: 9)
!2481 = !DILocation(line: 694, column: 21, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2477, file: !280, discriminator: 10)
!2483 = !DILocation(line: 694, column: 21, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2478, file: !280, discriminator: 11)
!2485 = !DILocation(line: 694, column: 21, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2468, file: !280, discriminator: 13)
!2487 = !DILocation(line: 695, column: 21, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2489, file: !280, discriminator: 1)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !280, line: 695, column: 21)
!2490 = distinct !DILexicalBlock(scope: !2361, file: !280, line: 695, column: 21)
!2491 = !DILocation(line: 695, column: 21, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2490, file: !280, discriminator: 1)
!2493 = !DILocation(line: 695, column: 21, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2489, file: !280, discriminator: 2)
!2495 = !DILocation(line: 695, column: 21, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2490, file: !280, discriminator: 3)
!2497 = !DILocation(line: 696, column: 25, scope: !2361)
!2498 = !DILocation(line: 678, column: 17, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2362, file: !280, discriminator: 1)
!2500 = distinct !{!2500, !2501, !2502}
!2501 = !DILocation(line: 678, column: 17, scope: !2363)
!2502 = !DILocation(line: 697, column: 19, scope: !2363)
!2503 = !DILocation(line: 704, column: 34, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !1908, file: !280, line: 704, column: 11)
!2505 = !DILocation(line: 706, column: 14, scope: !2504)
!2506 = !DILocation(line: 707, column: 14, scope: !2504)
!2507 = !DILocation(line: 707, column: 35, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2504, file: !280, discriminator: 1)
!2509 = !DILocation(line: 707, column: 17, scope: !2508)
!2510 = !DILocation(line: 707, column: 53, scope: !2508)
!2511 = !DILocation(line: 707, column: 47, scope: !2508)
!2512 = !DILocation(line: 707, column: 65, scope: !2508)
!2513 = !DILocation(line: 708, column: 15, scope: !2508)
!2514 = !DILocation(line: 708, column: 11, scope: !2504)
!2515 = !DILocation(line: 704, column: 11, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !1908, file: !280, discriminator: 2)
!2517 = !DILocation(line: 712, column: 7, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2519, file: !280, discriminator: 1)
!2519 = distinct !DILexicalBlock(scope: !1908, file: !280, line: 712, column: 7)
!2520 = !DILocation(line: 712, column: 7, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2522, file: !280, discriminator: 4)
!2522 = distinct !DILexicalBlock(scope: !2519, file: !280, line: 712, column: 7)
!2523 = !DILocation(line: 712, column: 7, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2522, file: !280, discriminator: 3)
!2525 = !DILocation(line: 712, column: 7, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !280, discriminator: 6)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !280, line: 712, column: 7)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !280, line: 712, column: 7)
!2529 = distinct !DILexicalBlock(scope: !2522, file: !280, line: 712, column: 7)
!2530 = !DILocation(line: 712, column: 7, scope: !2531)
!2531 = !DILexicalBlockFile(scope: !2528, file: !280, discriminator: 6)
!2532 = !DILocation(line: 712, column: 7, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2527, file: !280, discriminator: 7)
!2534 = !DILocation(line: 712, column: 7, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2528, file: !280, discriminator: 8)
!2536 = !DILocation(line: 712, column: 7, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2538, file: !280, discriminator: 11)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !280, line: 712, column: 7)
!2539 = distinct !DILexicalBlock(scope: !2529, file: !280, line: 712, column: 7)
!2540 = !DILocation(line: 712, column: 7, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2539, file: !280, discriminator: 11)
!2542 = !DILocation(line: 712, column: 7, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2538, file: !280, discriminator: 12)
!2544 = !DILocation(line: 712, column: 7, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2539, file: !280, discriminator: 13)
!2546 = !DILocation(line: 712, column: 7, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2548, file: !280, discriminator: 16)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !280, line: 712, column: 7)
!2549 = distinct !DILexicalBlock(scope: !2529, file: !280, line: 712, column: 7)
!2550 = !DILocation(line: 712, column: 7, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2549, file: !280, discriminator: 16)
!2552 = !DILocation(line: 712, column: 7, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2548, file: !280, discriminator: 17)
!2554 = !DILocation(line: 712, column: 7, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2549, file: !280, discriminator: 18)
!2556 = !DILocation(line: 712, column: 7, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2529, file: !280, discriminator: 20)
!2558 = !DILocation(line: 712, column: 7, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2560, file: !280, discriminator: 22)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !280, line: 712, column: 7)
!2561 = distinct !DILexicalBlock(scope: !2519, file: !280, line: 712, column: 7)
!2562 = !DILocation(line: 712, column: 7, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2561, file: !280, discriminator: 22)
!2564 = !DILocation(line: 712, column: 7, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2560, file: !280, discriminator: 23)
!2566 = !DILocation(line: 712, column: 7, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2561, file: !280, discriminator: 24)
!2568 = !DILocation(line: 715, column: 7, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2570, file: !280, discriminator: 1)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !280, line: 715, column: 7)
!2571 = distinct !DILexicalBlock(scope: !1908, file: !280, line: 715, column: 7)
!2572 = !DILocation(line: 715, column: 7, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2570, file: !280, discriminator: 2)
!2574 = !DILocation(line: 715, column: 7, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2576, file: !280, discriminator: 4)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !280, line: 715, column: 7)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !280, line: 715, column: 7)
!2578 = distinct !DILexicalBlock(scope: !2570, file: !280, line: 715, column: 7)
!2579 = !DILocation(line: 715, column: 7, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2577, file: !280, discriminator: 4)
!2581 = !DILocation(line: 715, column: 7, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2576, file: !280, discriminator: 5)
!2583 = !DILocation(line: 715, column: 7, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2577, file: !280, discriminator: 6)
!2585 = !DILocation(line: 715, column: 7, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2587, file: !280, discriminator: 9)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !280, line: 715, column: 7)
!2588 = distinct !DILexicalBlock(scope: !2578, file: !280, line: 715, column: 7)
!2589 = !DILocation(line: 715, column: 7, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2588, file: !280, discriminator: 9)
!2591 = !DILocation(line: 715, column: 7, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2587, file: !280, discriminator: 10)
!2593 = !DILocation(line: 715, column: 7, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2588, file: !280, discriminator: 11)
!2595 = !DILocation(line: 715, column: 7, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2578, file: !280, discriminator: 13)
!2597 = !DILocation(line: 716, column: 7, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2599, file: !280, discriminator: 1)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !280, line: 716, column: 7)
!2600 = distinct !DILexicalBlock(scope: !1908, file: !280, line: 716, column: 7)
!2601 = !DILocation(line: 716, column: 7, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2600, file: !280, discriminator: 1)
!2603 = !DILocation(line: 716, column: 7, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2599, file: !280, discriminator: 2)
!2605 = !DILocation(line: 716, column: 7, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2600, file: !280, discriminator: 3)
!2607 = !DILocation(line: 718, column: 13, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !1908, file: !280, line: 718, column: 11)
!2609 = !DILocation(line: 718, column: 11, scope: !1908)
!2610 = !DILocation(line: 720, column: 5, scope: !1909)
!2611 = !DILocation(line: 392, column: 75, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !1909, file: !280, discriminator: 5)
!2613 = !DILocation(line: 392, column: 3, scope: !2612)
!2614 = distinct !{!2614, !2615, !2616}
!2615 = !DILocation(line: 392, column: 3, scope: !1910)
!2616 = !DILocation(line: 720, column: 5, scope: !1910)
!2617 = !DILocation(line: 722, column: 11, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !1881, file: !280, line: 722, column: 7)
!2619 = !DILocation(line: 722, column: 16, scope: !2618)
!2620 = !DILocation(line: 730, column: 51, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !1881, file: !280, line: 730, column: 7)
!2622 = !DILocation(line: 731, column: 10, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2621, file: !280, discriminator: 1)
!2624 = !DILocation(line: 733, column: 11, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !280, line: 733, column: 11)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !280, line: 732, column: 5)
!2627 = !DILocation(line: 733, column: 11, scope: !2626)
!2628 = !DILocation(line: 734, column: 16, scope: !2625)
!2629 = !DILocation(line: 734, column: 9, scope: !2625)
!2630 = !DILocation(line: 738, column: 18, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2625, file: !280, line: 738, column: 16)
!2632 = !DILocation(line: 738, column: 32, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2631, file: !280, discriminator: 1)
!2634 = !DILocation(line: 738, column: 29, scope: !2631)
!2635 = !DILocation(line: 747, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !1881, file: !280, line: 747, column: 7)
!2637 = !DILocation(line: 747, column: 20, scope: !2636)
!2638 = !DILocation(line: 748, column: 12, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2640, file: !280, discriminator: 1)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !280, line: 748, column: 5)
!2641 = distinct !DILexicalBlock(scope: !2636, file: !280, line: 748, column: 5)
!2642 = !DILocation(line: 748, column: 5, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2641, file: !280, discriminator: 1)
!2644 = !DILocation(line: 749, column: 7, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2646, file: !280, discriminator: 1)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !280, line: 749, column: 7)
!2647 = distinct !DILexicalBlock(scope: !2640, file: !280, line: 749, column: 7)
!2648 = !DILocation(line: 749, column: 7, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2647, file: !280, discriminator: 1)
!2650 = !DILocation(line: 749, column: 7, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2646, file: !280, discriminator: 2)
!2652 = !DILocation(line: 749, column: 7, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2647, file: !280, discriminator: 3)
!2654 = !DILocation(line: 748, column: 39, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2640, file: !280, discriminator: 2)
!2656 = distinct !{!2656, !2657, !2658}
!2657 = !DILocation(line: 748, column: 5, scope: !2641)
!2658 = !DILocation(line: 749, column: 7, scope: !2641)
!2659 = !DILocation(line: 751, column: 11, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !1881, file: !280, line: 751, column: 7)
!2661 = !DILocation(line: 751, column: 7, scope: !1881)
!2662 = !DILocation(line: 752, column: 5, scope: !2660)
!2663 = !DILocation(line: 752, column: 17, scope: !2660)
!2664 = !DILocation(line: 758, column: 21, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !1881, file: !280, line: 758, column: 7)
!2666 = !DILocation(line: 758, column: 54, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2665, file: !280, discriminator: 1)
!2668 = !DILocation(line: 758, column: 51, scope: !2665)
!2669 = !DILocation(line: 762, column: 42, scope: !1881)
!2670 = !DILocation(line: 760, column: 10, scope: !1881)
!2671 = !DILocation(line: 760, column: 3, scope: !1881)
!2672 = !DILocation(line: 764, column: 1, scope: !1881)
!2673 = distinct !DISubprogram(name: "gettext_quote", scope: !280, file: !280, line: 199, type: !2674, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!32, !32, !90}
!2676 = !{!2677, !2678, !2679, !2680}
!2677 = !DILocalVariable(name: "msgid", arg: 1, scope: !2673, file: !280, line: 199, type: !32)
!2678 = !DILocalVariable(name: "s", arg: 2, scope: !2673, file: !280, line: 199, type: !90)
!2679 = !DILocalVariable(name: "translation", scope: !2673, file: !280, line: 201, type: !32)
!2680 = !DILocalVariable(name: "locale_code", scope: !2673, file: !280, line: 202, type: !32)
!2681 = !DILocation(line: 199, column: 28, scope: !2673)
!2682 = !DILocation(line: 199, column: 54, scope: !2673)
!2683 = !DILocation(line: 201, column: 29, scope: !2673)
!2684 = !DILocation(line: 201, column: 15, scope: !2673)
!2685 = !DILocation(line: 204, column: 19, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2673, file: !280, line: 204, column: 7)
!2687 = !DILocation(line: 204, column: 7, scope: !2673)
!2688 = !DILocation(line: 225, column: 17, scope: !2673)
!2689 = !DILocation(line: 202, column: 15, scope: !2673)
!2690 = !DILocalVariable(name: "s2", arg: 2, scope: !2691, file: !2692, line: 160, type: !32)
!2691 = distinct !DISubprogram(name: "strcaseeq0", scope: !2692, file: !2692, line: 160, type: !2693, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2695)
!2692 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!34, !32, !32, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!2695 = !{!2696, !2690, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2696 = !DILocalVariable(name: "s1", arg: 1, scope: !2691, file: !2692, line: 160, type: !32)
!2697 = !DILocalVariable(name: "s20", arg: 3, scope: !2691, file: !2692, line: 160, type: !22)
!2698 = !DILocalVariable(name: "s21", arg: 4, scope: !2691, file: !2692, line: 160, type: !22)
!2699 = !DILocalVariable(name: "s22", arg: 5, scope: !2691, file: !2692, line: 160, type: !22)
!2700 = !DILocalVariable(name: "s23", arg: 6, scope: !2691, file: !2692, line: 160, type: !22)
!2701 = !DILocalVariable(name: "s24", arg: 7, scope: !2691, file: !2692, line: 160, type: !22)
!2702 = !DILocalVariable(name: "s25", arg: 8, scope: !2691, file: !2692, line: 160, type: !22)
!2703 = !DILocalVariable(name: "s26", arg: 9, scope: !2691, file: !2692, line: 160, type: !22)
!2704 = !DILocalVariable(name: "s27", arg: 10, scope: !2691, file: !2692, line: 160, type: !22)
!2705 = !DILocalVariable(name: "s28", arg: 11, scope: !2691, file: !2692, line: 160, type: !22)
!2706 = !DILocation(line: 160, column: 41, scope: !2691, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 226, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2673, file: !280, line: 226, column: 7)
!2709 = !DILocation(line: 160, column: 120, scope: !2691, inlinedAt: !2707)
!2710 = !DILocation(line: 160, column: 130, scope: !2691, inlinedAt: !2707)
!2711 = !DILocation(line: 162, column: 7, scope: !2712, inlinedAt: !2707)
!2712 = !DILexicalBlockFile(scope: !2713, file: !2692, discriminator: 1)
!2713 = distinct !DILexicalBlock(scope: !2691, file: !2692, line: 162, column: 7)
!2714 = !DILocalVariable(name: "s2", arg: 2, scope: !2715, file: !2692, line: 146, type: !32)
!2715 = distinct !DISubprogram(name: "strcaseeq1", scope: !2692, file: !2692, line: 146, type: !2716, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!34, !32, !32, !22, !22, !22, !22, !22, !22, !22, !22}
!2718 = !{!2719, !2714, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727}
!2719 = !DILocalVariable(name: "s1", arg: 1, scope: !2715, file: !2692, line: 146, type: !32)
!2720 = !DILocalVariable(name: "s21", arg: 3, scope: !2715, file: !2692, line: 146, type: !22)
!2721 = !DILocalVariable(name: "s22", arg: 4, scope: !2715, file: !2692, line: 146, type: !22)
!2722 = !DILocalVariable(name: "s23", arg: 5, scope: !2715, file: !2692, line: 146, type: !22)
!2723 = !DILocalVariable(name: "s24", arg: 6, scope: !2715, file: !2692, line: 146, type: !22)
!2724 = !DILocalVariable(name: "s25", arg: 7, scope: !2715, file: !2692, line: 146, type: !22)
!2725 = !DILocalVariable(name: "s26", arg: 8, scope: !2715, file: !2692, line: 146, type: !22)
!2726 = !DILocalVariable(name: "s27", arg: 9, scope: !2715, file: !2692, line: 146, type: !22)
!2727 = !DILocalVariable(name: "s28", arg: 10, scope: !2715, file: !2692, line: 146, type: !22)
!2728 = !DILocation(line: 146, column: 41, scope: !2715, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 167, column: 16, scope: !2730, inlinedAt: !2707)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !2692, line: 164, column: 11)
!2731 = distinct !DILexicalBlock(scope: !2713, file: !2692, line: 163, column: 5)
!2732 = !DILocation(line: 146, column: 110, scope: !2715, inlinedAt: !2729)
!2733 = !DILocation(line: 146, column: 120, scope: !2715, inlinedAt: !2729)
!2734 = !DILocation(line: 148, column: 7, scope: !2735, inlinedAt: !2729)
!2735 = !DILexicalBlockFile(scope: !2736, file: !2692, discriminator: 1)
!2736 = distinct !DILexicalBlock(scope: !2715, file: !2692, line: 148, column: 7)
!2737 = !DILocalVariable(name: "s2", arg: 2, scope: !2738, file: !2692, line: 132, type: !32)
!2738 = distinct !DISubprogram(name: "strcaseeq2", scope: !2692, file: !2692, line: 132, type: !2739, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!34, !32, !32, !22, !22, !22, !22, !22, !22, !22}
!2741 = !{!2742, !2737, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2742 = !DILocalVariable(name: "s1", arg: 1, scope: !2738, file: !2692, line: 132, type: !32)
!2743 = !DILocalVariable(name: "s22", arg: 3, scope: !2738, file: !2692, line: 132, type: !22)
!2744 = !DILocalVariable(name: "s23", arg: 4, scope: !2738, file: !2692, line: 132, type: !22)
!2745 = !DILocalVariable(name: "s24", arg: 5, scope: !2738, file: !2692, line: 132, type: !22)
!2746 = !DILocalVariable(name: "s25", arg: 6, scope: !2738, file: !2692, line: 132, type: !22)
!2747 = !DILocalVariable(name: "s26", arg: 7, scope: !2738, file: !2692, line: 132, type: !22)
!2748 = !DILocalVariable(name: "s27", arg: 8, scope: !2738, file: !2692, line: 132, type: !22)
!2749 = !DILocalVariable(name: "s28", arg: 9, scope: !2738, file: !2692, line: 132, type: !22)
!2750 = !DILocation(line: 132, column: 41, scope: !2738, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 153, column: 16, scope: !2752, inlinedAt: !2729)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !2692, line: 150, column: 11)
!2753 = distinct !DILexicalBlock(scope: !2736, file: !2692, line: 149, column: 5)
!2754 = !DILocation(line: 132, column: 100, scope: !2738, inlinedAt: !2751)
!2755 = !DILocation(line: 132, column: 110, scope: !2738, inlinedAt: !2751)
!2756 = !DILocation(line: 134, column: 7, scope: !2757, inlinedAt: !2751)
!2757 = !DILexicalBlockFile(scope: !2758, file: !2692, discriminator: 1)
!2758 = distinct !DILexicalBlock(scope: !2738, file: !2692, line: 134, column: 7)
!2759 = !DILocalVariable(name: "s2", arg: 2, scope: !2760, file: !2692, line: 118, type: !32)
!2760 = distinct !DISubprogram(name: "strcaseeq3", scope: !2692, file: !2692, line: 118, type: !2761, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!34, !32, !32, !22, !22, !22, !22, !22, !22}
!2763 = !{!2764, !2759, !2765, !2766, !2767, !2768, !2769, !2770}
!2764 = !DILocalVariable(name: "s1", arg: 1, scope: !2760, file: !2692, line: 118, type: !32)
!2765 = !DILocalVariable(name: "s23", arg: 3, scope: !2760, file: !2692, line: 118, type: !22)
!2766 = !DILocalVariable(name: "s24", arg: 4, scope: !2760, file: !2692, line: 118, type: !22)
!2767 = !DILocalVariable(name: "s25", arg: 5, scope: !2760, file: !2692, line: 118, type: !22)
!2768 = !DILocalVariable(name: "s26", arg: 6, scope: !2760, file: !2692, line: 118, type: !22)
!2769 = !DILocalVariable(name: "s27", arg: 7, scope: !2760, file: !2692, line: 118, type: !22)
!2770 = !DILocalVariable(name: "s28", arg: 8, scope: !2760, file: !2692, line: 118, type: !22)
!2771 = !DILocation(line: 118, column: 41, scope: !2760, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 139, column: 16, scope: !2773, inlinedAt: !2751)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !2692, line: 136, column: 11)
!2774 = distinct !DILexicalBlock(scope: !2758, file: !2692, line: 135, column: 5)
!2775 = !DILocation(line: 118, column: 90, scope: !2760, inlinedAt: !2772)
!2776 = !DILocation(line: 118, column: 100, scope: !2760, inlinedAt: !2772)
!2777 = !DILocation(line: 120, column: 7, scope: !2778, inlinedAt: !2772)
!2778 = !DILexicalBlockFile(scope: !2779, file: !2692, discriminator: 2)
!2779 = distinct !DILexicalBlock(scope: !2760, file: !2692, line: 120, column: 7)
!2780 = !DILocation(line: 120, column: 7, scope: !2781, inlinedAt: !2772)
!2781 = !DILexicalBlockFile(scope: !2760, file: !2692, discriminator: 2)
!2782 = !DILocalVariable(name: "s2", arg: 2, scope: !2783, file: !2692, line: 104, type: !32)
!2783 = distinct !DISubprogram(name: "strcaseeq4", scope: !2692, file: !2692, line: 104, type: !2784, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!34, !32, !32, !22, !22, !22, !22, !22}
!2786 = !{!2787, !2782, !2788, !2789, !2790, !2791, !2792}
!2787 = !DILocalVariable(name: "s1", arg: 1, scope: !2783, file: !2692, line: 104, type: !32)
!2788 = !DILocalVariable(name: "s24", arg: 3, scope: !2783, file: !2692, line: 104, type: !22)
!2789 = !DILocalVariable(name: "s25", arg: 4, scope: !2783, file: !2692, line: 104, type: !22)
!2790 = !DILocalVariable(name: "s26", arg: 5, scope: !2783, file: !2692, line: 104, type: !22)
!2791 = !DILocalVariable(name: "s27", arg: 6, scope: !2783, file: !2692, line: 104, type: !22)
!2792 = !DILocalVariable(name: "s28", arg: 7, scope: !2783, file: !2692, line: 104, type: !22)
!2793 = !DILocation(line: 104, column: 41, scope: !2783, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 125, column: 16, scope: !2795, inlinedAt: !2772)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !2692, line: 122, column: 11)
!2796 = distinct !DILexicalBlock(scope: !2779, file: !2692, line: 121, column: 5)
!2797 = !DILocation(line: 104, column: 80, scope: !2783, inlinedAt: !2794)
!2798 = !DILocation(line: 104, column: 90, scope: !2783, inlinedAt: !2794)
!2799 = !DILocation(line: 106, column: 7, scope: !2800, inlinedAt: !2794)
!2800 = !DILexicalBlockFile(scope: !2801, file: !2692, discriminator: 2)
!2801 = distinct !DILexicalBlock(scope: !2783, file: !2692, line: 106, column: 7)
!2802 = !DILocation(line: 106, column: 7, scope: !2803, inlinedAt: !2794)
!2803 = !DILexicalBlockFile(scope: !2783, file: !2692, discriminator: 2)
!2804 = !DILocalVariable(name: "s2", arg: 2, scope: !2805, file: !2692, line: 90, type: !32)
!2805 = distinct !DISubprogram(name: "strcaseeq5", scope: !2692, file: !2692, line: 90, type: !2806, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!34, !32, !32, !22, !22, !22, !22}
!2808 = !{!2809, !2804, !2810, !2811, !2812, !2813}
!2809 = !DILocalVariable(name: "s1", arg: 1, scope: !2805, file: !2692, line: 90, type: !32)
!2810 = !DILocalVariable(name: "s25", arg: 3, scope: !2805, file: !2692, line: 90, type: !22)
!2811 = !DILocalVariable(name: "s26", arg: 4, scope: !2805, file: !2692, line: 90, type: !22)
!2812 = !DILocalVariable(name: "s27", arg: 5, scope: !2805, file: !2692, line: 90, type: !22)
!2813 = !DILocalVariable(name: "s28", arg: 6, scope: !2805, file: !2692, line: 90, type: !22)
!2814 = !DILocation(line: 90, column: 41, scope: !2805, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 111, column: 16, scope: !2816, inlinedAt: !2794)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !2692, line: 108, column: 11)
!2817 = distinct !DILexicalBlock(scope: !2801, file: !2692, line: 107, column: 5)
!2818 = !DILocation(line: 90, column: 70, scope: !2805, inlinedAt: !2815)
!2819 = !DILocation(line: 90, column: 80, scope: !2805, inlinedAt: !2815)
!2820 = !DILocation(line: 92, column: 7, scope: !2821, inlinedAt: !2815)
!2821 = !DILexicalBlockFile(scope: !2822, file: !2692, discriminator: 2)
!2822 = distinct !DILexicalBlock(scope: !2805, file: !2692, line: 92, column: 7)
!2823 = !DILocation(line: 92, column: 7, scope: !2824, inlinedAt: !2815)
!2824 = !DILexicalBlockFile(scope: !2805, file: !2692, discriminator: 2)
!2825 = !DILocation(line: 227, column: 12, scope: !2708)
!2826 = !DILocation(line: 227, column: 21, scope: !2708)
!2827 = !DILocation(line: 227, column: 5, scope: !2708)
!2828 = !DILocation(line: 146, column: 41, scope: !2715, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 167, column: 16, scope: !2730, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 228, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2673, file: !280, line: 228, column: 7)
!2832 = !DILocation(line: 146, column: 110, scope: !2715, inlinedAt: !2829)
!2833 = !DILocation(line: 146, column: 120, scope: !2715, inlinedAt: !2829)
!2834 = !DILocation(line: 148, column: 7, scope: !2735, inlinedAt: !2829)
!2835 = !DILocation(line: 132, column: 41, scope: !2738, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 153, column: 16, scope: !2752, inlinedAt: !2829)
!2837 = !DILocation(line: 132, column: 100, scope: !2738, inlinedAt: !2836)
!2838 = !DILocation(line: 132, column: 110, scope: !2738, inlinedAt: !2836)
!2839 = !DILocation(line: 134, column: 7, scope: !2840, inlinedAt: !2836)
!2840 = !DILexicalBlockFile(scope: !2758, file: !2692, discriminator: 2)
!2841 = !DILocation(line: 134, column: 7, scope: !2842, inlinedAt: !2836)
!2842 = !DILexicalBlockFile(scope: !2738, file: !2692, discriminator: 2)
!2843 = !DILocation(line: 118, column: 41, scope: !2760, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 139, column: 16, scope: !2773, inlinedAt: !2836)
!2845 = !DILocation(line: 118, column: 90, scope: !2760, inlinedAt: !2844)
!2846 = !DILocation(line: 118, column: 100, scope: !2760, inlinedAt: !2844)
!2847 = !DILocation(line: 120, column: 7, scope: !2778, inlinedAt: !2844)
!2848 = !DILocation(line: 120, column: 7, scope: !2781, inlinedAt: !2844)
!2849 = !DILocation(line: 104, column: 41, scope: !2783, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 125, column: 16, scope: !2795, inlinedAt: !2844)
!2851 = !DILocation(line: 104, column: 80, scope: !2783, inlinedAt: !2850)
!2852 = !DILocation(line: 104, column: 90, scope: !2783, inlinedAt: !2850)
!2853 = !DILocation(line: 106, column: 7, scope: !2800, inlinedAt: !2850)
!2854 = !DILocation(line: 106, column: 7, scope: !2803, inlinedAt: !2850)
!2855 = !DILocation(line: 90, column: 41, scope: !2805, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 111, column: 16, scope: !2816, inlinedAt: !2850)
!2857 = !DILocation(line: 90, column: 70, scope: !2805, inlinedAt: !2856)
!2858 = !DILocation(line: 90, column: 80, scope: !2805, inlinedAt: !2856)
!2859 = !DILocation(line: 92, column: 7, scope: !2821, inlinedAt: !2856)
!2860 = !DILocation(line: 92, column: 7, scope: !2824, inlinedAt: !2856)
!2861 = !DILocalVariable(name: "s2", arg: 2, scope: !2862, file: !2692, line: 76, type: !32)
!2862 = distinct !DISubprogram(name: "strcaseeq6", scope: !2692, file: !2692, line: 76, type: !2863, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!34, !32, !32, !22, !22, !22}
!2865 = !{!2866, !2861, !2867, !2868, !2869}
!2866 = !DILocalVariable(name: "s1", arg: 1, scope: !2862, file: !2692, line: 76, type: !32)
!2867 = !DILocalVariable(name: "s26", arg: 3, scope: !2862, file: !2692, line: 76, type: !22)
!2868 = !DILocalVariable(name: "s27", arg: 4, scope: !2862, file: !2692, line: 76, type: !22)
!2869 = !DILocalVariable(name: "s28", arg: 5, scope: !2862, file: !2692, line: 76, type: !22)
!2870 = !DILocation(line: 76, column: 41, scope: !2862, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 97, column: 16, scope: !2872, inlinedAt: !2856)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !2692, line: 94, column: 11)
!2873 = distinct !DILexicalBlock(scope: !2822, file: !2692, line: 93, column: 5)
!2874 = !DILocation(line: 76, column: 60, scope: !2862, inlinedAt: !2871)
!2875 = !DILocation(line: 76, column: 70, scope: !2862, inlinedAt: !2871)
!2876 = !DILocation(line: 78, column: 7, scope: !2877, inlinedAt: !2871)
!2877 = !DILexicalBlockFile(scope: !2878, file: !2692, discriminator: 2)
!2878 = distinct !DILexicalBlock(scope: !2862, file: !2692, line: 78, column: 7)
!2879 = !DILocation(line: 78, column: 7, scope: !2880, inlinedAt: !2871)
!2880 = !DILexicalBlockFile(scope: !2862, file: !2692, discriminator: 2)
!2881 = !DILocalVariable(name: "s2", arg: 2, scope: !2882, file: !2692, line: 62, type: !32)
!2882 = distinct !DISubprogram(name: "strcaseeq7", scope: !2692, file: !2692, line: 62, type: !2883, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!34, !32, !32, !22, !22}
!2885 = !{!2886, !2881, !2887, !2888}
!2886 = !DILocalVariable(name: "s1", arg: 1, scope: !2882, file: !2692, line: 62, type: !32)
!2887 = !DILocalVariable(name: "s27", arg: 3, scope: !2882, file: !2692, line: 62, type: !22)
!2888 = !DILocalVariable(name: "s28", arg: 4, scope: !2882, file: !2692, line: 62, type: !22)
!2889 = !DILocation(line: 62, column: 41, scope: !2882, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 83, column: 16, scope: !2891, inlinedAt: !2871)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !2692, line: 80, column: 11)
!2892 = distinct !DILexicalBlock(scope: !2878, file: !2692, line: 79, column: 5)
!2893 = !DILocation(line: 62, column: 50, scope: !2882, inlinedAt: !2890)
!2894 = !DILocation(line: 62, column: 60, scope: !2882, inlinedAt: !2890)
!2895 = !DILocation(line: 64, column: 7, scope: !2896, inlinedAt: !2890)
!2896 = !DILexicalBlockFile(scope: !2897, file: !2692, discriminator: 2)
!2897 = distinct !DILexicalBlock(scope: !2882, file: !2692, line: 64, column: 7)
!2898 = !DILocation(line: 228, column: 7, scope: !2673)
!2899 = !DILocation(line: 229, column: 12, scope: !2831)
!2900 = !DILocation(line: 229, column: 21, scope: !2831)
!2901 = !DILocation(line: 229, column: 5, scope: !2831)
!2902 = !DILocation(line: 231, column: 13, scope: !2673)
!2903 = !DILocation(line: 231, column: 11, scope: !2673)
!2904 = !DILocation(line: 231, column: 3, scope: !2673)
!2905 = !DILocation(line: 232, column: 1, scope: !2673)
!2906 = distinct !DISubprogram(name: "quotearg_alloc", scope: !280, file: !280, line: 791, type: !2907, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!21, !32, !24, !1749}
!2909 = !{!2910, !2911, !2912}
!2910 = !DILocalVariable(name: "arg", arg: 1, scope: !2906, file: !280, line: 791, type: !32)
!2911 = !DILocalVariable(name: "argsize", arg: 2, scope: !2906, file: !280, line: 791, type: !24)
!2912 = !DILocalVariable(name: "o", arg: 3, scope: !2906, file: !280, line: 792, type: !1749)
!2913 = !DILocation(line: 791, column: 29, scope: !2906)
!2914 = !DILocation(line: 791, column: 41, scope: !2906)
!2915 = !DILocation(line: 792, column: 47, scope: !2906)
!2916 = !DILocalVariable(name: "arg", arg: 1, scope: !2917, file: !280, line: 804, type: !32)
!2917 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !280, file: !280, line: 804, type: !2918, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!21, !32, !24, !118, !1749}
!2920 = !{!2916, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2921 = !DILocalVariable(name: "argsize", arg: 2, scope: !2917, file: !280, line: 804, type: !24)
!2922 = !DILocalVariable(name: "size", arg: 3, scope: !2917, file: !280, line: 804, type: !118)
!2923 = !DILocalVariable(name: "o", arg: 4, scope: !2917, file: !280, line: 805, type: !1749)
!2924 = !DILocalVariable(name: "p", scope: !2917, file: !280, line: 807, type: !1749)
!2925 = !DILocalVariable(name: "e", scope: !2917, file: !280, line: 808, type: !34)
!2926 = !DILocalVariable(name: "flags", scope: !2917, file: !280, line: 810, type: !34)
!2927 = !DILocalVariable(name: "bufsize", scope: !2917, file: !280, line: 811, type: !24)
!2928 = !DILocalVariable(name: "buf", scope: !2917, file: !280, line: 815, type: !21)
!2929 = !DILocation(line: 804, column: 33, scope: !2917, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 794, column: 10, scope: !2906)
!2931 = !DILocation(line: 804, column: 45, scope: !2917, inlinedAt: !2930)
!2932 = !DILocation(line: 804, column: 62, scope: !2917, inlinedAt: !2930)
!2933 = !DILocation(line: 805, column: 51, scope: !2917, inlinedAt: !2930)
!2934 = !DILocation(line: 807, column: 37, scope: !2917, inlinedAt: !2930)
!2935 = !DILocation(line: 807, column: 33, scope: !2917, inlinedAt: !2930)
!2936 = !DILocation(line: 808, column: 11, scope: !2917, inlinedAt: !2930)
!2937 = !DILocation(line: 808, column: 7, scope: !2917, inlinedAt: !2930)
!2938 = !DILocation(line: 810, column: 18, scope: !2917, inlinedAt: !2930)
!2939 = !DILocation(line: 810, column: 24, scope: !2917, inlinedAt: !2930)
!2940 = !DILocation(line: 810, column: 7, scope: !2917, inlinedAt: !2930)
!2941 = !DILocation(line: 811, column: 69, scope: !2917, inlinedAt: !2930)
!2942 = !DILocation(line: 812, column: 53, scope: !2917, inlinedAt: !2930)
!2943 = !DILocation(line: 813, column: 49, scope: !2917, inlinedAt: !2930)
!2944 = !DILocation(line: 814, column: 49, scope: !2917, inlinedAt: !2930)
!2945 = !DILocation(line: 811, column: 20, scope: !2917, inlinedAt: !2930)
!2946 = !DILocation(line: 814, column: 62, scope: !2917, inlinedAt: !2930)
!2947 = !DILocation(line: 811, column: 10, scope: !2917, inlinedAt: !2930)
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !114, line: 220, type: !24)
!2949 = distinct !DISubprogram(name: "xcharalloc", scope: !114, file: !114, line: 220, type: !2950, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!21, !24}
!2952 = !{!2948}
!2953 = !DILocation(line: 220, column: 20, scope: !2949, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 815, column: 15, scope: !2917, inlinedAt: !2930)
!2955 = !DILocation(line: 222, column: 10, scope: !2949, inlinedAt: !2954)
!2956 = !DILocation(line: 815, column: 9, scope: !2917, inlinedAt: !2930)
!2957 = !DILocation(line: 816, column: 60, scope: !2917, inlinedAt: !2930)
!2958 = !DILocation(line: 818, column: 32, scope: !2917, inlinedAt: !2930)
!2959 = !DILocation(line: 818, column: 47, scope: !2917, inlinedAt: !2930)
!2960 = !DILocation(line: 816, column: 3, scope: !2917, inlinedAt: !2930)
!2961 = !DILocation(line: 819, column: 9, scope: !2917, inlinedAt: !2930)
!2962 = !DILocation(line: 794, column: 3, scope: !2906)
!2963 = !DILocation(line: 804, column: 33, scope: !2917)
!2964 = !DILocation(line: 804, column: 45, scope: !2917)
!2965 = !DILocation(line: 804, column: 62, scope: !2917)
!2966 = !DILocation(line: 805, column: 51, scope: !2917)
!2967 = !DILocation(line: 807, column: 37, scope: !2917)
!2968 = !DILocation(line: 807, column: 33, scope: !2917)
!2969 = !DILocation(line: 808, column: 11, scope: !2917)
!2970 = !DILocation(line: 808, column: 7, scope: !2917)
!2971 = !DILocation(line: 810, column: 18, scope: !2917)
!2972 = !DILocation(line: 810, column: 27, scope: !2917)
!2973 = !DILocation(line: 810, column: 24, scope: !2917)
!2974 = !DILocation(line: 810, column: 7, scope: !2917)
!2975 = !DILocation(line: 811, column: 69, scope: !2917)
!2976 = !DILocation(line: 812, column: 53, scope: !2917)
!2977 = !DILocation(line: 813, column: 49, scope: !2917)
!2978 = !DILocation(line: 814, column: 49, scope: !2917)
!2979 = !DILocation(line: 811, column: 20, scope: !2917)
!2980 = !DILocation(line: 814, column: 62, scope: !2917)
!2981 = !DILocation(line: 811, column: 10, scope: !2917)
!2982 = !DILocation(line: 220, column: 20, scope: !2949, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 815, column: 15, scope: !2917)
!2984 = !DILocation(line: 222, column: 10, scope: !2949, inlinedAt: !2983)
!2985 = !DILocation(line: 815, column: 9, scope: !2917)
!2986 = !DILocation(line: 816, column: 60, scope: !2917)
!2987 = !DILocation(line: 818, column: 32, scope: !2917)
!2988 = !DILocation(line: 818, column: 47, scope: !2917)
!2989 = !DILocation(line: 816, column: 3, scope: !2917)
!2990 = !DILocation(line: 819, column: 9, scope: !2917)
!2991 = !DILocation(line: 820, column: 7, scope: !2917)
!2992 = !DILocation(line: 821, column: 11, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2917, file: !280, line: 820, column: 7)
!2994 = !DILocation(line: 821, column: 5, scope: !2993)
!2995 = !DILocation(line: 822, column: 3, scope: !2917)
!2996 = distinct !DISubprogram(name: "quotearg_free", scope: !280, file: !280, line: 840, type: !751, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !2997)
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "sv", scope: !2996, file: !280, line: 842, type: !306)
!2999 = !DILocalVariable(name: "i", scope: !2996, file: !280, line: 843, type: !34)
!3000 = !DILocation(line: 842, column: 24, scope: !2996)
!3001 = !DILocation(line: 842, column: 19, scope: !2996)
!3002 = !DILocation(line: 843, column: 7, scope: !2996)
!3003 = !DILocation(line: 844, column: 19, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !3005, file: !280, discriminator: 1)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !280, line: 844, column: 3)
!3006 = distinct !DILexicalBlock(scope: !2996, file: !280, line: 844, column: 3)
!3007 = !DILocation(line: 844, column: 17, scope: !3004)
!3008 = !DILocation(line: 844, column: 3, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !3006, file: !280, discriminator: 1)
!3010 = !DILocation(line: 845, column: 17, scope: !3005)
!3011 = !{!3012, !736, i64 8}
!3012 = !{!"slotvec", !920, i64 0, !736, i64 8}
!3013 = !DILocation(line: 845, column: 5, scope: !3005)
!3014 = !DILocation(line: 844, column: 28, scope: !3015)
!3015 = !DILexicalBlockFile(scope: !3005, file: !280, discriminator: 2)
!3016 = distinct !{!3016, !3017, !3018}
!3017 = !DILocation(line: 844, column: 3, scope: !3006)
!3018 = !DILocation(line: 845, column: 20, scope: !3006)
!3019 = !DILocation(line: 846, column: 13, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2996, file: !280, line: 846, column: 7)
!3021 = !DILocation(line: 846, column: 17, scope: !3020)
!3022 = !DILocation(line: 846, column: 7, scope: !2996)
!3023 = !DILocation(line: 848, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3020, file: !280, line: 847, column: 5)
!3025 = !DILocation(line: 849, column: 21, scope: !3024)
!3026 = !{!3012, !920, i64 0}
!3027 = !DILocation(line: 850, column: 20, scope: !3024)
!3028 = !DILocation(line: 851, column: 5, scope: !3024)
!3029 = !DILocation(line: 852, column: 10, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2996, file: !280, line: 852, column: 7)
!3031 = !DILocation(line: 852, column: 7, scope: !2996)
!3032 = !DILocation(line: 854, column: 13, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3030, file: !280, line: 853, column: 5)
!3034 = !DILocation(line: 854, column: 7, scope: !3033)
!3035 = !DILocation(line: 855, column: 15, scope: !3033)
!3036 = !DILocation(line: 856, column: 5, scope: !3033)
!3037 = !DILocation(line: 857, column: 10, scope: !2996)
!3038 = !DILocation(line: 858, column: 1, scope: !2996)
!3039 = distinct !DISubprogram(name: "quotearg_n", scope: !280, file: !280, line: 922, type: !3040, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!21, !34, !32}
!3042 = !{!3043, !3044}
!3043 = !DILocalVariable(name: "n", arg: 1, scope: !3039, file: !280, line: 922, type: !34)
!3044 = !DILocalVariable(name: "arg", arg: 2, scope: !3039, file: !280, line: 922, type: !32)
!3045 = !DILocation(line: 922, column: 17, scope: !3039)
!3046 = !DILocation(line: 922, column: 32, scope: !3039)
!3047 = !DILocation(line: 924, column: 10, scope: !3039)
!3048 = !DILocation(line: 924, column: 3, scope: !3039)
!3049 = distinct !DISubprogram(name: "quotearg_n_options", scope: !280, file: !280, line: 869, type: !3050, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!21, !34, !32, !24, !1749}
!3052 = !{!3053, !3054, !3055, !3056, !3057, !3058, !3059, !3062, !3064, !3065, !3066}
!3053 = !DILocalVariable(name: "n", arg: 1, scope: !3049, file: !280, line: 869, type: !34)
!3054 = !DILocalVariable(name: "arg", arg: 2, scope: !3049, file: !280, line: 869, type: !32)
!3055 = !DILocalVariable(name: "argsize", arg: 3, scope: !3049, file: !280, line: 869, type: !24)
!3056 = !DILocalVariable(name: "options", arg: 4, scope: !3049, file: !280, line: 870, type: !1749)
!3057 = !DILocalVariable(name: "e", scope: !3049, file: !280, line: 872, type: !34)
!3058 = !DILocalVariable(name: "sv", scope: !3049, file: !280, line: 874, type: !306)
!3059 = !DILocalVariable(name: "preallocated", scope: !3060, file: !280, line: 881, type: !229)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !280, line: 880, column: 5)
!3061 = distinct !DILexicalBlock(scope: !3049, file: !280, line: 879, column: 7)
!3062 = !DILocalVariable(name: "size", scope: !3063, file: !280, line: 894, type: !24)
!3063 = distinct !DILexicalBlock(scope: !3049, file: !280, line: 893, column: 3)
!3064 = !DILocalVariable(name: "val", scope: !3063, file: !280, line: 895, type: !21)
!3065 = !DILocalVariable(name: "flags", scope: !3063, file: !280, line: 897, type: !34)
!3066 = !DILocalVariable(name: "qsize", scope: !3063, file: !280, line: 898, type: !24)
!3067 = !DILocation(line: 869, column: 25, scope: !3049)
!3068 = !DILocation(line: 869, column: 40, scope: !3049)
!3069 = !DILocation(line: 869, column: 52, scope: !3049)
!3070 = !DILocation(line: 870, column: 51, scope: !3049)
!3071 = !DILocation(line: 872, column: 11, scope: !3049)
!3072 = !DILocation(line: 872, column: 7, scope: !3049)
!3073 = !DILocation(line: 874, column: 24, scope: !3049)
!3074 = !DILocation(line: 874, column: 19, scope: !3049)
!3075 = !DILocation(line: 876, column: 9, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3049, file: !280, line: 876, column: 7)
!3077 = !DILocation(line: 876, column: 7, scope: !3049)
!3078 = !DILocation(line: 877, column: 5, scope: !3076)
!3079 = !DILocation(line: 879, column: 7, scope: !3061)
!3080 = !DILocation(line: 879, column: 14, scope: !3061)
!3081 = !DILocation(line: 879, column: 7, scope: !3049)
!3082 = !DILocation(line: 881, column: 31, scope: !3060)
!3083 = !DILocation(line: 883, column: 67, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3060, file: !280, line: 883, column: 11)
!3085 = !DILocation(line: 883, column: 11, scope: !3060)
!3086 = !DILocation(line: 884, column: 9, scope: !3084)
!3087 = !DILocation(line: 886, column: 32, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !3060, file: !280, discriminator: 3)
!3089 = !DILocation(line: 886, column: 61, scope: !3088)
!3090 = !DILocation(line: 886, column: 58, scope: !3088)
!3091 = !DILocation(line: 886, column: 66, scope: !3088)
!3092 = !DILocation(line: 886, column: 22, scope: !3088)
!3093 = !DILocation(line: 886, column: 15, scope: !3088)
!3094 = !DILocation(line: 887, column: 11, scope: !3060)
!3095 = !DILocation(line: 888, column: 15, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3060, file: !280, line: 887, column: 11)
!3097 = !{i64 0, i64 8, !919, i64 8, i64 8, !735}
!3098 = !DILocation(line: 888, column: 9, scope: !3096)
!3099 = !DILocation(line: 889, column: 20, scope: !3060)
!3100 = !DILocation(line: 889, column: 18, scope: !3060)
!3101 = !DILocation(line: 889, column: 7, scope: !3060)
!3102 = !DILocation(line: 889, column: 38, scope: !3060)
!3103 = !DILocation(line: 889, column: 31, scope: !3060)
!3104 = !DILocation(line: 889, column: 48, scope: !3060)
!3105 = !DILocation(line: 890, column: 14, scope: !3060)
!3106 = !DILocation(line: 891, column: 5, scope: !3060)
!3107 = !DILocation(line: 894, column: 19, scope: !3063)
!3108 = !DILocation(line: 894, column: 25, scope: !3063)
!3109 = !DILocation(line: 894, column: 12, scope: !3063)
!3110 = !DILocation(line: 895, column: 23, scope: !3063)
!3111 = !DILocation(line: 895, column: 11, scope: !3063)
!3112 = !DILocation(line: 897, column: 26, scope: !3063)
!3113 = !DILocation(line: 897, column: 32, scope: !3063)
!3114 = !DILocation(line: 897, column: 9, scope: !3063)
!3115 = !DILocation(line: 899, column: 55, scope: !3063)
!3116 = !DILocation(line: 900, column: 46, scope: !3063)
!3117 = !DILocation(line: 901, column: 55, scope: !3063)
!3118 = !DILocation(line: 902, column: 55, scope: !3063)
!3119 = !DILocation(line: 898, column: 20, scope: !3063)
!3120 = !DILocation(line: 898, column: 12, scope: !3063)
!3121 = !DILocation(line: 904, column: 14, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3063, file: !280, line: 904, column: 9)
!3123 = !DILocation(line: 904, column: 9, scope: !3063)
!3124 = !DILocation(line: 906, column: 35, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3122, file: !280, line: 905, column: 7)
!3126 = !DILocation(line: 906, column: 20, scope: !3125)
!3127 = !DILocation(line: 907, column: 17, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3125, file: !280, line: 907, column: 13)
!3129 = !DILocation(line: 907, column: 13, scope: !3125)
!3130 = !DILocation(line: 908, column: 11, scope: !3128)
!3131 = !DILocation(line: 220, column: 20, scope: !2949, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 909, column: 27, scope: !3125)
!3133 = !DILocation(line: 222, column: 10, scope: !2949, inlinedAt: !3132)
!3134 = !DILocation(line: 909, column: 19, scope: !3125)
!3135 = !DILocation(line: 910, column: 69, scope: !3125)
!3136 = !DILocation(line: 912, column: 44, scope: !3125)
!3137 = !DILocation(line: 913, column: 44, scope: !3125)
!3138 = !DILocation(line: 910, column: 9, scope: !3125)
!3139 = !DILocation(line: 914, column: 7, scope: !3125)
!3140 = !DILocation(line: 916, column: 11, scope: !3063)
!3141 = !DILocation(line: 917, column: 5, scope: !3063)
!3142 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !280, file: !280, line: 928, type: !3143, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!21, !34, !32, !24}
!3145 = !{!3146, !3147, !3148}
!3146 = !DILocalVariable(name: "n", arg: 1, scope: !3142, file: !280, line: 928, type: !34)
!3147 = !DILocalVariable(name: "arg", arg: 2, scope: !3142, file: !280, line: 928, type: !32)
!3148 = !DILocalVariable(name: "argsize", arg: 3, scope: !3142, file: !280, line: 928, type: !24)
!3149 = !DILocation(line: 928, column: 21, scope: !3142)
!3150 = !DILocation(line: 928, column: 36, scope: !3142)
!3151 = !DILocation(line: 928, column: 48, scope: !3142)
!3152 = !DILocation(line: 930, column: 10, scope: !3142)
!3153 = !DILocation(line: 930, column: 3, scope: !3142)
!3154 = distinct !DISubprogram(name: "quotearg", scope: !280, file: !280, line: 934, type: !3155, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!21, !32}
!3157 = !{!3158}
!3158 = !DILocalVariable(name: "arg", arg: 1, scope: !3154, file: !280, line: 934, type: !32)
!3159 = !DILocation(line: 934, column: 23, scope: !3154)
!3160 = !DILocation(line: 922, column: 17, scope: !3039, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 936, column: 10, scope: !3154)
!3162 = !DILocation(line: 922, column: 32, scope: !3039, inlinedAt: !3161)
!3163 = !DILocation(line: 924, column: 10, scope: !3039, inlinedAt: !3161)
!3164 = !DILocation(line: 936, column: 3, scope: !3154)
!3165 = distinct !DISubprogram(name: "quotearg_mem", scope: !280, file: !280, line: 940, type: !3166, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!21, !32, !24}
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "arg", arg: 1, scope: !3165, file: !280, line: 940, type: !32)
!3170 = !DILocalVariable(name: "argsize", arg: 2, scope: !3165, file: !280, line: 940, type: !24)
!3171 = !DILocation(line: 940, column: 27, scope: !3165)
!3172 = !DILocation(line: 940, column: 39, scope: !3165)
!3173 = !DILocation(line: 928, column: 21, scope: !3142, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 942, column: 10, scope: !3165)
!3175 = !DILocation(line: 928, column: 36, scope: !3142, inlinedAt: !3174)
!3176 = !DILocation(line: 928, column: 48, scope: !3142, inlinedAt: !3174)
!3177 = !DILocation(line: 930, column: 10, scope: !3142, inlinedAt: !3174)
!3178 = !DILocation(line: 942, column: 3, scope: !3165)
!3179 = distinct !DISubprogram(name: "quotearg_n_style", scope: !280, file: !280, line: 946, type: !3180, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!21, !34, !90, !32}
!3182 = !{!3183, !3184, !3185, !3186}
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3179, file: !280, line: 946, type: !34)
!3184 = !DILocalVariable(name: "s", arg: 2, scope: !3179, file: !280, line: 946, type: !90)
!3185 = !DILocalVariable(name: "arg", arg: 3, scope: !3179, file: !280, line: 946, type: !32)
!3186 = !DILocalVariable(name: "o", scope: !3179, file: !280, line: 948, type: !1750)
!3187 = !DILocalVariable(name: "o", scope: !3188, file: !280, line: 187, type: !287)
!3188 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !280, file: !280, line: 185, type: !3189, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!287, !90}
!3191 = !{!3192, !3187}
!3192 = !DILocalVariable(name: "style", arg: 1, scope: !3188, file: !280, line: 185, type: !90)
!3193 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3194 = !DILocation(line: 187, column: 26, scope: !3188, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 948, column: 36, scope: !3179)
!3196 = !DILocation(line: 946, column: 23, scope: !3179)
!3197 = !DILocation(line: 946, column: 45, scope: !3179)
!3198 = !DILocation(line: 946, column: 60, scope: !3179)
!3199 = !DILocation(line: 948, column: 3, scope: !3179)
!3200 = !DILocation(line: 948, column: 32, scope: !3179)
!3201 = !DILocation(line: 185, column: 48, scope: !3188, inlinedAt: !3195)
!3202 = !DILocation(line: 187, column: 3, scope: !3188, inlinedAt: !3195)
!3203 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3204 = !DILocation(line: 188, column: 13, scope: !3205, inlinedAt: !3195)
!3205 = distinct !DILexicalBlock(scope: !3188, file: !280, line: 188, column: 7)
!3206 = !DILocation(line: 188, column: 7, scope: !3188, inlinedAt: !3195)
!3207 = !DILocation(line: 189, column: 5, scope: !3205, inlinedAt: !3195)
!3208 = !{!3209}
!3209 = distinct !{!3209, !3210, !"quoting_options_from_style: argument 0"}
!3210 = distinct !{!3210, !"quoting_options_from_style"}
!3211 = !DILocation(line: 191, column: 10, scope: !3188, inlinedAt: !3195)
!3212 = !DILocation(line: 192, column: 1, scope: !3188, inlinedAt: !3195)
!3213 = !DILocation(line: 949, column: 10, scope: !3179)
!3214 = !DILocation(line: 950, column: 1, scope: !3179)
!3215 = !DILocation(line: 949, column: 3, scope: !3179)
!3216 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !280, file: !280, line: 953, type: !3217, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!21, !34, !90, !32, !24}
!3219 = !{!3220, !3221, !3222, !3223, !3224}
!3220 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !280, line: 953, type: !34)
!3221 = !DILocalVariable(name: "s", arg: 2, scope: !3216, file: !280, line: 953, type: !90)
!3222 = !DILocalVariable(name: "arg", arg: 3, scope: !3216, file: !280, line: 954, type: !32)
!3223 = !DILocalVariable(name: "argsize", arg: 4, scope: !3216, file: !280, line: 954, type: !24)
!3224 = !DILocalVariable(name: "o", scope: !3216, file: !280, line: 956, type: !1750)
!3225 = !DILocation(line: 187, column: 26, scope: !3188, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 956, column: 36, scope: !3216)
!3227 = !DILocation(line: 953, column: 27, scope: !3216)
!3228 = !DILocation(line: 953, column: 49, scope: !3216)
!3229 = !DILocation(line: 954, column: 35, scope: !3216)
!3230 = !DILocation(line: 954, column: 47, scope: !3216)
!3231 = !DILocation(line: 956, column: 3, scope: !3216)
!3232 = !DILocation(line: 956, column: 32, scope: !3216)
!3233 = !DILocation(line: 185, column: 48, scope: !3188, inlinedAt: !3226)
!3234 = !DILocation(line: 187, column: 3, scope: !3188, inlinedAt: !3226)
!3235 = !DILocation(line: 188, column: 13, scope: !3205, inlinedAt: !3226)
!3236 = !DILocation(line: 188, column: 7, scope: !3188, inlinedAt: !3226)
!3237 = !DILocation(line: 189, column: 5, scope: !3205, inlinedAt: !3226)
!3238 = !{!3239}
!3239 = distinct !{!3239, !3240, !"quoting_options_from_style: argument 0"}
!3240 = distinct !{!3240, !"quoting_options_from_style"}
!3241 = !DILocation(line: 191, column: 10, scope: !3188, inlinedAt: !3226)
!3242 = !DILocation(line: 192, column: 1, scope: !3188, inlinedAt: !3226)
!3243 = !DILocation(line: 957, column: 10, scope: !3216)
!3244 = !DILocation(line: 958, column: 1, scope: !3216)
!3245 = !DILocation(line: 957, column: 3, scope: !3216)
!3246 = distinct !DISubprogram(name: "quotearg_style", scope: !280, file: !280, line: 961, type: !3247, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!21, !90, !32}
!3249 = !{!3250, !3251}
!3250 = !DILocalVariable(name: "s", arg: 1, scope: !3246, file: !280, line: 961, type: !90)
!3251 = !DILocalVariable(name: "arg", arg: 2, scope: !3246, file: !280, line: 961, type: !32)
!3252 = !DILocation(line: 187, column: 26, scope: !3188, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 948, column: 36, scope: !3179, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 963, column: 10, scope: !3246)
!3255 = !DILocation(line: 961, column: 36, scope: !3246)
!3256 = !DILocation(line: 961, column: 51, scope: !3246)
!3257 = !DILocation(line: 946, column: 23, scope: !3179, inlinedAt: !3254)
!3258 = !DILocation(line: 946, column: 45, scope: !3179, inlinedAt: !3254)
!3259 = !DILocation(line: 946, column: 60, scope: !3179, inlinedAt: !3254)
!3260 = !DILocation(line: 948, column: 3, scope: !3179, inlinedAt: !3254)
!3261 = !DILocation(line: 948, column: 32, scope: !3179, inlinedAt: !3254)
!3262 = !DILocation(line: 185, column: 48, scope: !3188, inlinedAt: !3253)
!3263 = !DILocation(line: 187, column: 3, scope: !3188, inlinedAt: !3253)
!3264 = !DILocation(line: 188, column: 13, scope: !3205, inlinedAt: !3253)
!3265 = !DILocation(line: 188, column: 7, scope: !3188, inlinedAt: !3253)
!3266 = !DILocation(line: 189, column: 5, scope: !3205, inlinedAt: !3253)
!3267 = !{!3268}
!3268 = distinct !{!3268, !3269, !"quoting_options_from_style: argument 0"}
!3269 = distinct !{!3269, !"quoting_options_from_style"}
!3270 = !DILocation(line: 191, column: 10, scope: !3188, inlinedAt: !3253)
!3271 = !DILocation(line: 192, column: 1, scope: !3188, inlinedAt: !3253)
!3272 = !DILocation(line: 949, column: 10, scope: !3179, inlinedAt: !3254)
!3273 = !DILocation(line: 950, column: 1, scope: !3179, inlinedAt: !3254)
!3274 = !DILocation(line: 963, column: 3, scope: !3246)
!3275 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !280, file: !280, line: 967, type: !3276, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!21, !90, !32, !24}
!3278 = !{!3279, !3280, !3281}
!3279 = !DILocalVariable(name: "s", arg: 1, scope: !3275, file: !280, line: 967, type: !90)
!3280 = !DILocalVariable(name: "arg", arg: 2, scope: !3275, file: !280, line: 967, type: !32)
!3281 = !DILocalVariable(name: "argsize", arg: 3, scope: !3275, file: !280, line: 967, type: !24)
!3282 = !DILocation(line: 187, column: 26, scope: !3188, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 956, column: 36, scope: !3216, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 969, column: 10, scope: !3275)
!3285 = !DILocation(line: 967, column: 40, scope: !3275)
!3286 = !DILocation(line: 967, column: 55, scope: !3275)
!3287 = !DILocation(line: 967, column: 67, scope: !3275)
!3288 = !DILocation(line: 953, column: 27, scope: !3216, inlinedAt: !3284)
!3289 = !DILocation(line: 953, column: 49, scope: !3216, inlinedAt: !3284)
!3290 = !DILocation(line: 954, column: 35, scope: !3216, inlinedAt: !3284)
!3291 = !DILocation(line: 954, column: 47, scope: !3216, inlinedAt: !3284)
!3292 = !DILocation(line: 956, column: 3, scope: !3216, inlinedAt: !3284)
!3293 = !DILocation(line: 956, column: 32, scope: !3216, inlinedAt: !3284)
!3294 = !DILocation(line: 185, column: 48, scope: !3188, inlinedAt: !3283)
!3295 = !DILocation(line: 187, column: 3, scope: !3188, inlinedAt: !3283)
!3296 = !DILocation(line: 188, column: 13, scope: !3205, inlinedAt: !3283)
!3297 = !DILocation(line: 188, column: 7, scope: !3188, inlinedAt: !3283)
!3298 = !DILocation(line: 189, column: 5, scope: !3205, inlinedAt: !3283)
!3299 = !{!3300}
!3300 = distinct !{!3300, !3301, !"quoting_options_from_style: argument 0"}
!3301 = distinct !{!3301, !"quoting_options_from_style"}
!3302 = !DILocation(line: 191, column: 10, scope: !3188, inlinedAt: !3283)
!3303 = !DILocation(line: 192, column: 1, scope: !3188, inlinedAt: !3283)
!3304 = !DILocation(line: 957, column: 10, scope: !3216, inlinedAt: !3284)
!3305 = !DILocation(line: 958, column: 1, scope: !3216, inlinedAt: !3284)
!3306 = !DILocation(line: 969, column: 3, scope: !3275)
!3307 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !280, file: !280, line: 973, type: !3308, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!21, !32, !24, !22}
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DILocalVariable(name: "arg", arg: 1, scope: !3307, file: !280, line: 973, type: !32)
!3312 = !DILocalVariable(name: "argsize", arg: 2, scope: !3307, file: !280, line: 973, type: !24)
!3313 = !DILocalVariable(name: "ch", arg: 3, scope: !3307, file: !280, line: 973, type: !22)
!3314 = !DILocalVariable(name: "options", scope: !3307, file: !280, line: 975, type: !287)
!3315 = !DILocation(line: 973, column: 32, scope: !3307)
!3316 = !DILocation(line: 973, column: 44, scope: !3307)
!3317 = !DILocation(line: 973, column: 58, scope: !3307)
!3318 = !DILocation(line: 975, column: 3, scope: !3307)
!3319 = !DILocation(line: 976, column: 13, scope: !3307)
!3320 = !{i64 0, i64 4, !836, i64 4, i64 4, !847, i64 8, i64 32, !836, i64 40, i64 8, !735, i64 48, i64 8, !735}
!3321 = !DILocation(line: 975, column: 26, scope: !3307)
!3322 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 977, column: 3, scope: !3307)
!3324 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3323)
!3325 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3323)
!3326 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3323)
!3327 = !DILocation(line: 148, column: 62, scope: !1791, inlinedAt: !3323)
!3328 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3323)
!3329 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3323)
!3330 = !DILocation(line: 149, column: 18, scope: !1773, inlinedAt: !3323)
!3331 = !DILocation(line: 149, column: 15, scope: !1773, inlinedAt: !3323)
!3332 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3323)
!3333 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3323)
!3334 = !DILocation(line: 150, column: 15, scope: !1773, inlinedAt: !3323)
!3335 = !DILocation(line: 150, column: 25, scope: !1773, inlinedAt: !3323)
!3336 = !DILocation(line: 150, column: 7, scope: !1773, inlinedAt: !3323)
!3337 = !DILocation(line: 151, column: 18, scope: !1773, inlinedAt: !3323)
!3338 = !DILocation(line: 151, column: 23, scope: !1773, inlinedAt: !3323)
!3339 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3323)
!3340 = !DILocation(line: 978, column: 10, scope: !3307)
!3341 = !DILocation(line: 979, column: 1, scope: !3307)
!3342 = !DILocation(line: 978, column: 3, scope: !3307)
!3343 = distinct !DISubprogram(name: "quotearg_char", scope: !280, file: !280, line: 982, type: !3344, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!21, !32, !22}
!3346 = !{!3347, !3348}
!3347 = !DILocalVariable(name: "arg", arg: 1, scope: !3343, file: !280, line: 982, type: !32)
!3348 = !DILocalVariable(name: "ch", arg: 2, scope: !3343, file: !280, line: 982, type: !22)
!3349 = !DILocation(line: 982, column: 28, scope: !3343)
!3350 = !DILocation(line: 982, column: 38, scope: !3343)
!3351 = !DILocation(line: 973, column: 32, scope: !3307, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 984, column: 10, scope: !3343)
!3353 = !DILocation(line: 973, column: 44, scope: !3307, inlinedAt: !3352)
!3354 = !DILocation(line: 973, column: 58, scope: !3307, inlinedAt: !3352)
!3355 = !DILocation(line: 975, column: 3, scope: !3307, inlinedAt: !3352)
!3356 = !DILocation(line: 976, column: 13, scope: !3307, inlinedAt: !3352)
!3357 = !DILocation(line: 975, column: 26, scope: !3307, inlinedAt: !3352)
!3358 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 977, column: 3, scope: !3307, inlinedAt: !3352)
!3360 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3359)
!3361 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3359)
!3362 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3359)
!3363 = !DILocation(line: 148, column: 62, scope: !1791, inlinedAt: !3359)
!3364 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3359)
!3365 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3359)
!3366 = !DILocation(line: 149, column: 18, scope: !1773, inlinedAt: !3359)
!3367 = !DILocation(line: 149, column: 15, scope: !1773, inlinedAt: !3359)
!3368 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3359)
!3369 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3359)
!3370 = !DILocation(line: 150, column: 15, scope: !1773, inlinedAt: !3359)
!3371 = !DILocation(line: 150, column: 25, scope: !1773, inlinedAt: !3359)
!3372 = !DILocation(line: 150, column: 7, scope: !1773, inlinedAt: !3359)
!3373 = !DILocation(line: 151, column: 18, scope: !1773, inlinedAt: !3359)
!3374 = !DILocation(line: 151, column: 23, scope: !1773, inlinedAt: !3359)
!3375 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3359)
!3376 = !DILocation(line: 978, column: 10, scope: !3307, inlinedAt: !3352)
!3377 = !DILocation(line: 979, column: 1, scope: !3307, inlinedAt: !3352)
!3378 = !DILocation(line: 984, column: 3, scope: !3343)
!3379 = distinct !DISubprogram(name: "quotearg_colon", scope: !280, file: !280, line: 988, type: !3155, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3380)
!3380 = !{!3381}
!3381 = !DILocalVariable(name: "arg", arg: 1, scope: !3379, file: !280, line: 988, type: !32)
!3382 = !DILocation(line: 988, column: 29, scope: !3379)
!3383 = !DILocation(line: 982, column: 28, scope: !3343, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 990, column: 10, scope: !3379)
!3385 = !DILocation(line: 982, column: 38, scope: !3343, inlinedAt: !3384)
!3386 = !DILocation(line: 973, column: 32, scope: !3307, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 984, column: 10, scope: !3343, inlinedAt: !3384)
!3388 = !DILocation(line: 973, column: 44, scope: !3307, inlinedAt: !3387)
!3389 = !DILocation(line: 973, column: 58, scope: !3307, inlinedAt: !3387)
!3390 = !DILocation(line: 975, column: 3, scope: !3307, inlinedAt: !3387)
!3391 = !DILocation(line: 976, column: 13, scope: !3307, inlinedAt: !3387)
!3392 = !DILocation(line: 975, column: 26, scope: !3307, inlinedAt: !3387)
!3393 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 977, column: 3, scope: !3307, inlinedAt: !3387)
!3395 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3394)
!3396 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3394)
!3397 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3394)
!3398 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3394)
!3399 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3394)
!3400 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3394)
!3401 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3394)
!3402 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3394)
!3403 = !DILocation(line: 978, column: 10, scope: !3307, inlinedAt: !3387)
!3404 = !DILocation(line: 979, column: 1, scope: !3307, inlinedAt: !3387)
!3405 = !DILocation(line: 990, column: 3, scope: !3379)
!3406 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !280, file: !280, line: 994, type: !3166, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3407)
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "arg", arg: 1, scope: !3406, file: !280, line: 994, type: !32)
!3409 = !DILocalVariable(name: "argsize", arg: 2, scope: !3406, file: !280, line: 994, type: !24)
!3410 = !DILocation(line: 994, column: 33, scope: !3406)
!3411 = !DILocation(line: 994, column: 45, scope: !3406)
!3412 = !DILocation(line: 973, column: 32, scope: !3307, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 996, column: 10, scope: !3406)
!3414 = !DILocation(line: 973, column: 44, scope: !3307, inlinedAt: !3413)
!3415 = !DILocation(line: 973, column: 58, scope: !3307, inlinedAt: !3413)
!3416 = !DILocation(line: 975, column: 3, scope: !3307, inlinedAt: !3413)
!3417 = !DILocation(line: 976, column: 13, scope: !3307, inlinedAt: !3413)
!3418 = !DILocation(line: 975, column: 26, scope: !3307, inlinedAt: !3413)
!3419 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 977, column: 3, scope: !3307, inlinedAt: !3413)
!3421 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3420)
!3422 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3420)
!3423 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3420)
!3424 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3420)
!3425 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3420)
!3426 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3420)
!3427 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3420)
!3428 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3420)
!3429 = !DILocation(line: 978, column: 10, scope: !3307, inlinedAt: !3413)
!3430 = !DILocation(line: 979, column: 1, scope: !3307, inlinedAt: !3413)
!3431 = !DILocation(line: 996, column: 3, scope: !3406)
!3432 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !280, file: !280, line: 1000, type: !3180, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3433)
!3433 = !{!3434, !3435, !3436, !3437}
!3434 = !DILocalVariable(name: "n", arg: 1, scope: !3432, file: !280, line: 1000, type: !34)
!3435 = !DILocalVariable(name: "s", arg: 2, scope: !3432, file: !280, line: 1000, type: !90)
!3436 = !DILocalVariable(name: "arg", arg: 3, scope: !3432, file: !280, line: 1000, type: !32)
!3437 = !DILocalVariable(name: "options", scope: !3432, file: !280, line: 1002, type: !287)
!3438 = !DILocation(line: 187, column: 26, scope: !3188, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 1003, column: 13, scope: !3432)
!3440 = !DILocation(line: 1000, column: 29, scope: !3432)
!3441 = !DILocation(line: 1000, column: 51, scope: !3432)
!3442 = !DILocation(line: 1000, column: 66, scope: !3432)
!3443 = !DILocation(line: 1002, column: 3, scope: !3432)
!3444 = !DILocation(line: 185, column: 48, scope: !3188, inlinedAt: !3439)
!3445 = !DILocation(line: 187, column: 3, scope: !3188, inlinedAt: !3439)
!3446 = !DILocation(line: 188, column: 13, scope: !3205, inlinedAt: !3439)
!3447 = !DILocation(line: 188, column: 7, scope: !3188, inlinedAt: !3439)
!3448 = !DILocation(line: 189, column: 5, scope: !3205, inlinedAt: !3439)
!3449 = !{!3450}
!3450 = distinct !{!3450, !3451, !"quoting_options_from_style: argument 0"}
!3451 = distinct !{!3451, !"quoting_options_from_style"}
!3452 = !DILocation(line: 191, column: 10, scope: !3188, inlinedAt: !3439)
!3453 = !DILocation(line: 192, column: 1, scope: !3188, inlinedAt: !3439)
!3454 = !DILocation(line: 1003, column: 13, scope: !3432)
!3455 = !DILocation(line: 1002, column: 26, scope: !3432)
!3456 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 1004, column: 3, scope: !3432)
!3458 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3457)
!3459 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3457)
!3460 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3457)
!3461 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3457)
!3462 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3457)
!3463 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3457)
!3464 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3457)
!3465 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3457)
!3466 = !DILocation(line: 1005, column: 10, scope: !3432)
!3467 = !DILocation(line: 1006, column: 1, scope: !3432)
!3468 = !DILocation(line: 1005, column: 3, scope: !3432)
!3469 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !280, file: !280, line: 1009, type: !3470, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!21, !34, !32, !32, !32}
!3472 = !{!3473, !3474, !3475, !3476}
!3473 = !DILocalVariable(name: "n", arg: 1, scope: !3469, file: !280, line: 1009, type: !34)
!3474 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3469, file: !280, line: 1009, type: !32)
!3475 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3469, file: !280, line: 1010, type: !32)
!3476 = !DILocalVariable(name: "arg", arg: 4, scope: !3469, file: !280, line: 1010, type: !32)
!3477 = !DILocation(line: 1009, column: 24, scope: !3469)
!3478 = !DILocation(line: 1009, column: 39, scope: !3469)
!3479 = !DILocation(line: 1010, column: 32, scope: !3469)
!3480 = !DILocation(line: 1010, column: 57, scope: !3469)
!3481 = !DILocalVariable(name: "n", arg: 1, scope: !3482, file: !280, line: 1017, type: !34)
!3482 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !280, file: !280, line: 1017, type: !3483, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!21, !34, !32, !32, !32, !24}
!3485 = !{!3481, !3486, !3487, !3488, !3489, !3490}
!3486 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3482, file: !280, line: 1017, type: !32)
!3487 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3482, file: !280, line: 1018, type: !32)
!3488 = !DILocalVariable(name: "arg", arg: 4, scope: !3482, file: !280, line: 1019, type: !32)
!3489 = !DILocalVariable(name: "argsize", arg: 5, scope: !3482, file: !280, line: 1019, type: !24)
!3490 = !DILocalVariable(name: "o", scope: !3482, file: !280, line: 1021, type: !287)
!3491 = !DILocation(line: 1017, column: 28, scope: !3482, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 1012, column: 10, scope: !3469)
!3493 = !DILocation(line: 1017, column: 43, scope: !3482, inlinedAt: !3492)
!3494 = !DILocation(line: 1018, column: 36, scope: !3482, inlinedAt: !3492)
!3495 = !DILocation(line: 1019, column: 36, scope: !3482, inlinedAt: !3492)
!3496 = !DILocation(line: 1019, column: 48, scope: !3482, inlinedAt: !3492)
!3497 = !DILocation(line: 1021, column: 3, scope: !3482, inlinedAt: !3492)
!3498 = !DILocation(line: 1021, column: 30, scope: !3482, inlinedAt: !3492)
!3499 = !DILocation(line: 1021, column: 26, scope: !3482, inlinedAt: !3492)
!3500 = !DILocation(line: 171, column: 45, scope: !1823, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 1022, column: 3, scope: !3482, inlinedAt: !3492)
!3502 = !DILocation(line: 172, column: 33, scope: !1823, inlinedAt: !3501)
!3503 = !DILocation(line: 172, column: 57, scope: !1823, inlinedAt: !3501)
!3504 = !DILocation(line: 176, column: 6, scope: !1823, inlinedAt: !3501)
!3505 = !DILocation(line: 176, column: 12, scope: !1823, inlinedAt: !3501)
!3506 = !DILocation(line: 177, column: 8, scope: !1839, inlinedAt: !3501)
!3507 = !DILocation(line: 177, column: 23, scope: !1841, inlinedAt: !3501)
!3508 = !DILocation(line: 177, column: 19, scope: !1839, inlinedAt: !3501)
!3509 = !DILocation(line: 178, column: 5, scope: !1839, inlinedAt: !3501)
!3510 = !DILocation(line: 179, column: 6, scope: !1823, inlinedAt: !3501)
!3511 = !DILocation(line: 179, column: 17, scope: !1823, inlinedAt: !3501)
!3512 = !DILocation(line: 180, column: 6, scope: !1823, inlinedAt: !3501)
!3513 = !DILocation(line: 180, column: 18, scope: !1823, inlinedAt: !3501)
!3514 = !DILocation(line: 1023, column: 10, scope: !3482, inlinedAt: !3492)
!3515 = !DILocation(line: 1024, column: 1, scope: !3482, inlinedAt: !3492)
!3516 = !DILocation(line: 1012, column: 3, scope: !3469)
!3517 = !DILocation(line: 1017, column: 28, scope: !3482)
!3518 = !DILocation(line: 1017, column: 43, scope: !3482)
!3519 = !DILocation(line: 1018, column: 36, scope: !3482)
!3520 = !DILocation(line: 1019, column: 36, scope: !3482)
!3521 = !DILocation(line: 1019, column: 48, scope: !3482)
!3522 = !DILocation(line: 1021, column: 3, scope: !3482)
!3523 = !DILocation(line: 1021, column: 30, scope: !3482)
!3524 = !DILocation(line: 1021, column: 26, scope: !3482)
!3525 = !DILocation(line: 171, column: 45, scope: !1823, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 1022, column: 3, scope: !3482)
!3527 = !DILocation(line: 172, column: 33, scope: !1823, inlinedAt: !3526)
!3528 = !DILocation(line: 172, column: 57, scope: !1823, inlinedAt: !3526)
!3529 = !DILocation(line: 176, column: 6, scope: !1823, inlinedAt: !3526)
!3530 = !DILocation(line: 176, column: 12, scope: !1823, inlinedAt: !3526)
!3531 = !DILocation(line: 177, column: 8, scope: !1839, inlinedAt: !3526)
!3532 = !DILocation(line: 177, column: 23, scope: !1841, inlinedAt: !3526)
!3533 = !DILocation(line: 177, column: 19, scope: !1839, inlinedAt: !3526)
!3534 = !DILocation(line: 178, column: 5, scope: !1839, inlinedAt: !3526)
!3535 = !DILocation(line: 179, column: 6, scope: !1823, inlinedAt: !3526)
!3536 = !DILocation(line: 179, column: 17, scope: !1823, inlinedAt: !3526)
!3537 = !DILocation(line: 180, column: 6, scope: !1823, inlinedAt: !3526)
!3538 = !DILocation(line: 180, column: 18, scope: !1823, inlinedAt: !3526)
!3539 = !DILocation(line: 1023, column: 10, scope: !3482)
!3540 = !DILocation(line: 1024, column: 1, scope: !3482)
!3541 = !DILocation(line: 1023, column: 3, scope: !3482)
!3542 = distinct !DISubprogram(name: "quotearg_custom", scope: !280, file: !280, line: 1027, type: !3543, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!21, !32, !32, !32}
!3545 = !{!3546, !3547, !3548}
!3546 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3542, file: !280, line: 1027, type: !32)
!3547 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3542, file: !280, line: 1027, type: !32)
!3548 = !DILocalVariable(name: "arg", arg: 3, scope: !3542, file: !280, line: 1028, type: !32)
!3549 = !DILocation(line: 1027, column: 30, scope: !3542)
!3550 = !DILocation(line: 1027, column: 54, scope: !3542)
!3551 = !DILocation(line: 1028, column: 30, scope: !3542)
!3552 = !DILocation(line: 1009, column: 24, scope: !3469, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 1030, column: 10, scope: !3542)
!3554 = !DILocation(line: 1009, column: 39, scope: !3469, inlinedAt: !3553)
!3555 = !DILocation(line: 1010, column: 32, scope: !3469, inlinedAt: !3553)
!3556 = !DILocation(line: 1010, column: 57, scope: !3469, inlinedAt: !3553)
!3557 = !DILocation(line: 1017, column: 28, scope: !3482, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 1012, column: 10, scope: !3469, inlinedAt: !3553)
!3559 = !DILocation(line: 1017, column: 43, scope: !3482, inlinedAt: !3558)
!3560 = !DILocation(line: 1018, column: 36, scope: !3482, inlinedAt: !3558)
!3561 = !DILocation(line: 1019, column: 36, scope: !3482, inlinedAt: !3558)
!3562 = !DILocation(line: 1019, column: 48, scope: !3482, inlinedAt: !3558)
!3563 = !DILocation(line: 1021, column: 3, scope: !3482, inlinedAt: !3558)
!3564 = !DILocation(line: 1021, column: 30, scope: !3482, inlinedAt: !3558)
!3565 = !DILocation(line: 1021, column: 26, scope: !3482, inlinedAt: !3558)
!3566 = !DILocation(line: 171, column: 45, scope: !1823, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 1022, column: 3, scope: !3482, inlinedAt: !3558)
!3568 = !DILocation(line: 172, column: 33, scope: !1823, inlinedAt: !3567)
!3569 = !DILocation(line: 172, column: 57, scope: !1823, inlinedAt: !3567)
!3570 = !DILocation(line: 176, column: 6, scope: !1823, inlinedAt: !3567)
!3571 = !DILocation(line: 176, column: 12, scope: !1823, inlinedAt: !3567)
!3572 = !DILocation(line: 177, column: 8, scope: !1839, inlinedAt: !3567)
!3573 = !DILocation(line: 177, column: 23, scope: !1841, inlinedAt: !3567)
!3574 = !DILocation(line: 177, column: 19, scope: !1839, inlinedAt: !3567)
!3575 = !DILocation(line: 178, column: 5, scope: !1839, inlinedAt: !3567)
!3576 = !DILocation(line: 179, column: 6, scope: !1823, inlinedAt: !3567)
!3577 = !DILocation(line: 179, column: 17, scope: !1823, inlinedAt: !3567)
!3578 = !DILocation(line: 180, column: 6, scope: !1823, inlinedAt: !3567)
!3579 = !DILocation(line: 180, column: 18, scope: !1823, inlinedAt: !3567)
!3580 = !DILocation(line: 1023, column: 10, scope: !3482, inlinedAt: !3558)
!3581 = !DILocation(line: 1024, column: 1, scope: !3482, inlinedAt: !3558)
!3582 = !DILocation(line: 1030, column: 3, scope: !3542)
!3583 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !280, file: !280, line: 1034, type: !3584, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3586)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!21, !32, !32, !32, !24}
!3586 = !{!3587, !3588, !3589, !3590}
!3587 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3583, file: !280, line: 1034, type: !32)
!3588 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3583, file: !280, line: 1034, type: !32)
!3589 = !DILocalVariable(name: "arg", arg: 3, scope: !3583, file: !280, line: 1035, type: !32)
!3590 = !DILocalVariable(name: "argsize", arg: 4, scope: !3583, file: !280, line: 1035, type: !24)
!3591 = !DILocation(line: 1034, column: 34, scope: !3583)
!3592 = !DILocation(line: 1034, column: 58, scope: !3583)
!3593 = !DILocation(line: 1035, column: 34, scope: !3583)
!3594 = !DILocation(line: 1035, column: 46, scope: !3583)
!3595 = !DILocation(line: 1017, column: 28, scope: !3482, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 1037, column: 10, scope: !3583)
!3597 = !DILocation(line: 1017, column: 43, scope: !3482, inlinedAt: !3596)
!3598 = !DILocation(line: 1018, column: 36, scope: !3482, inlinedAt: !3596)
!3599 = !DILocation(line: 1019, column: 36, scope: !3482, inlinedAt: !3596)
!3600 = !DILocation(line: 1019, column: 48, scope: !3482, inlinedAt: !3596)
!3601 = !DILocation(line: 1021, column: 3, scope: !3482, inlinedAt: !3596)
!3602 = !DILocation(line: 1021, column: 30, scope: !3482, inlinedAt: !3596)
!3603 = !DILocation(line: 1021, column: 26, scope: !3482, inlinedAt: !3596)
!3604 = !DILocation(line: 171, column: 45, scope: !1823, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 1022, column: 3, scope: !3482, inlinedAt: !3596)
!3606 = !DILocation(line: 172, column: 33, scope: !1823, inlinedAt: !3605)
!3607 = !DILocation(line: 172, column: 57, scope: !1823, inlinedAt: !3605)
!3608 = !DILocation(line: 176, column: 6, scope: !1823, inlinedAt: !3605)
!3609 = !DILocation(line: 176, column: 12, scope: !1823, inlinedAt: !3605)
!3610 = !DILocation(line: 177, column: 8, scope: !1839, inlinedAt: !3605)
!3611 = !DILocation(line: 177, column: 23, scope: !1841, inlinedAt: !3605)
!3612 = !DILocation(line: 177, column: 19, scope: !1839, inlinedAt: !3605)
!3613 = !DILocation(line: 178, column: 5, scope: !1839, inlinedAt: !3605)
!3614 = !DILocation(line: 179, column: 6, scope: !1823, inlinedAt: !3605)
!3615 = !DILocation(line: 179, column: 17, scope: !1823, inlinedAt: !3605)
!3616 = !DILocation(line: 180, column: 6, scope: !1823, inlinedAt: !3605)
!3617 = !DILocation(line: 180, column: 18, scope: !1823, inlinedAt: !3605)
!3618 = !DILocation(line: 1023, column: 10, scope: !3482, inlinedAt: !3596)
!3619 = !DILocation(line: 1024, column: 1, scope: !3482, inlinedAt: !3596)
!3620 = !DILocation(line: 1037, column: 3, scope: !3583)
!3621 = distinct !DISubprogram(name: "quote_n_mem", scope: !280, file: !280, line: 1052, type: !3622, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!32, !34, !32, !24}
!3624 = !{!3625, !3626, !3627}
!3625 = !DILocalVariable(name: "n", arg: 1, scope: !3621, file: !280, line: 1052, type: !34)
!3626 = !DILocalVariable(name: "arg", arg: 2, scope: !3621, file: !280, line: 1052, type: !32)
!3627 = !DILocalVariable(name: "argsize", arg: 3, scope: !3621, file: !280, line: 1052, type: !24)
!3628 = !DILocation(line: 1052, column: 18, scope: !3621)
!3629 = !DILocation(line: 1052, column: 33, scope: !3621)
!3630 = !DILocation(line: 1052, column: 45, scope: !3621)
!3631 = !DILocation(line: 1054, column: 10, scope: !3621)
!3632 = !DILocation(line: 1054, column: 3, scope: !3621)
!3633 = distinct !DISubprogram(name: "quote_mem", scope: !280, file: !280, line: 1058, type: !3634, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!32, !32, !24}
!3636 = !{!3637, !3638}
!3637 = !DILocalVariable(name: "arg", arg: 1, scope: !3633, file: !280, line: 1058, type: !32)
!3638 = !DILocalVariable(name: "argsize", arg: 2, scope: !3633, file: !280, line: 1058, type: !24)
!3639 = !DILocation(line: 1058, column: 24, scope: !3633)
!3640 = !DILocation(line: 1058, column: 36, scope: !3633)
!3641 = !DILocation(line: 1052, column: 18, scope: !3621, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 1060, column: 10, scope: !3633)
!3643 = !DILocation(line: 1052, column: 33, scope: !3621, inlinedAt: !3642)
!3644 = !DILocation(line: 1052, column: 45, scope: !3621, inlinedAt: !3642)
!3645 = !DILocation(line: 1054, column: 10, scope: !3621, inlinedAt: !3642)
!3646 = !DILocation(line: 1060, column: 3, scope: !3633)
!3647 = distinct !DISubprogram(name: "quote_n", scope: !280, file: !280, line: 1064, type: !3648, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3650)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!32, !34, !32}
!3650 = !{!3651, !3652}
!3651 = !DILocalVariable(name: "n", arg: 1, scope: !3647, file: !280, line: 1064, type: !34)
!3652 = !DILocalVariable(name: "arg", arg: 2, scope: !3647, file: !280, line: 1064, type: !32)
!3653 = !DILocation(line: 1064, column: 14, scope: !3647)
!3654 = !DILocation(line: 1064, column: 29, scope: !3647)
!3655 = !DILocation(line: 1052, column: 18, scope: !3621, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 1066, column: 10, scope: !3647)
!3657 = !DILocation(line: 1052, column: 33, scope: !3621, inlinedAt: !3656)
!3658 = !DILocation(line: 1052, column: 45, scope: !3621, inlinedAt: !3656)
!3659 = !DILocation(line: 1054, column: 10, scope: !3621, inlinedAt: !3656)
!3660 = !DILocation(line: 1066, column: 3, scope: !3647)
!3661 = distinct !DISubprogram(name: "quote", scope: !280, file: !280, line: 1070, type: !3662, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !268, variables: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!32, !32}
!3664 = !{!3665}
!3665 = !DILocalVariable(name: "arg", arg: 1, scope: !3661, file: !280, line: 1070, type: !32)
!3666 = !DILocation(line: 1070, column: 20, scope: !3661)
!3667 = !DILocation(line: 1064, column: 14, scope: !3647, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 1072, column: 10, scope: !3661)
!3669 = !DILocation(line: 1064, column: 29, scope: !3647, inlinedAt: !3668)
!3670 = !DILocation(line: 1052, column: 18, scope: !3621, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1066, column: 10, scope: !3647, inlinedAt: !3668)
!3672 = !DILocation(line: 1052, column: 33, scope: !3621, inlinedAt: !3671)
!3673 = !DILocation(line: 1052, column: 45, scope: !3621, inlinedAt: !3671)
!3674 = !DILocation(line: 1054, column: 10, scope: !3621, inlinedAt: !3671)
!3675 = !DILocation(line: 1072, column: 3, scope: !3661)
!3676 = distinct !DISubprogram(name: "version_etc_arn", scope: !682, file: !682, line: 62, type: !3677, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !3720)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{null, !3679, !32, !32, !32, !3719, !24}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 49, baseType: !3681)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, elements: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3681, file: !145, line: 242, baseType: !34, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3681, file: !145, line: 247, baseType: !21, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3681, file: !145, line: 248, baseType: !21, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3681, file: !145, line: 249, baseType: !21, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3681, file: !145, line: 250, baseType: !21, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3681, file: !145, line: 251, baseType: !21, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3681, file: !145, line: 252, baseType: !21, size: 64, offset: 384)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3681, file: !145, line: 253, baseType: !21, size: 64, offset: 448)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3681, file: !145, line: 254, baseType: !21, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3681, file: !145, line: 256, baseType: !21, size: 64, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3681, file: !145, line: 257, baseType: !21, size: 64, offset: 640)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3681, file: !145, line: 258, baseType: !21, size: 64, offset: 704)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3681, file: !145, line: 260, baseType: !3696, size: 64, offset: 768)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, elements: !3698)
!3698 = !{!3699, !3700, !3702}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3697, file: !145, line: 157, baseType: !3696, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3697, file: !145, line: 158, baseType: !3701, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3697, file: !145, line: 162, baseType: !34, size: 32, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3681, file: !145, line: 262, baseType: !3701, size: 64, offset: 832)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3681, file: !145, line: 264, baseType: !34, size: 32, offset: 896)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3681, file: !145, line: 268, baseType: !34, size: 32, offset: 928)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3681, file: !145, line: 270, baseType: !171, size: 64, offset: 960)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3681, file: !145, line: 274, baseType: !35, size: 16, offset: 1024)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3681, file: !145, line: 275, baseType: !175, size: 8, offset: 1040)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3681, file: !145, line: 276, baseType: !177, size: 8, offset: 1048)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3681, file: !145, line: 280, baseType: !181, size: 64, offset: 1088)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3681, file: !145, line: 289, baseType: !184, size: 64, offset: 1152)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3681, file: !145, line: 297, baseType: !23, size: 64, offset: 1216)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3681, file: !145, line: 298, baseType: !23, size: 64, offset: 1280)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3681, file: !145, line: 299, baseType: !23, size: 64, offset: 1344)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3681, file: !145, line: 300, baseType: !23, size: 64, offset: 1408)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3681, file: !145, line: 302, baseType: !24, size: 64, offset: 1472)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3681, file: !145, line: 303, baseType: !34, size: 32, offset: 1536)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3681, file: !145, line: 305, baseType: !192, size: 160, offset: 1568)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726}
!3721 = !DILocalVariable(name: "stream", arg: 1, scope: !3676, file: !682, line: 62, type: !3679)
!3722 = !DILocalVariable(name: "command_name", arg: 2, scope: !3676, file: !682, line: 63, type: !32)
!3723 = !DILocalVariable(name: "package", arg: 3, scope: !3676, file: !682, line: 63, type: !32)
!3724 = !DILocalVariable(name: "version", arg: 4, scope: !3676, file: !682, line: 64, type: !32)
!3725 = !DILocalVariable(name: "authors", arg: 5, scope: !3676, file: !682, line: 65, type: !3719)
!3726 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3676, file: !682, line: 65, type: !24)
!3727 = !DILocation(line: 62, column: 24, scope: !3676)
!3728 = !DILocation(line: 63, column: 30, scope: !3676)
!3729 = !DILocation(line: 63, column: 56, scope: !3676)
!3730 = !DILocation(line: 64, column: 30, scope: !3676)
!3731 = !DILocation(line: 65, column: 39, scope: !3676)
!3732 = !DILocation(line: 65, column: 55, scope: !3676)
!3733 = !DILocation(line: 67, column: 7, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3676, file: !682, line: 67, column: 7)
!3735 = !DILocation(line: 67, column: 7, scope: !3676)
!3736 = !DILocation(line: 68, column: 5, scope: !3734)
!3737 = !DILocation(line: 70, column: 5, scope: !3734)
!3738 = !DILocation(line: 84, column: 3, scope: !3676)
!3739 = !DILocation(line: 84, column: 3, scope: !3740)
!3740 = !DILexicalBlockFile(scope: !3676, file: !682, discriminator: 1)
!3741 = !DILocation(line: 86, column: 3, scope: !3676)
!3742 = !DILocation(line: 86, column: 3, scope: !3740)
!3743 = !DILocation(line: 95, column: 3, scope: !3676)
!3744 = !DILocation(line: 99, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3676, file: !682, line: 96, column: 5)
!3746 = !DILocation(line: 102, column: 7, scope: !3745)
!3747 = !DILocation(line: 102, column: 7, scope: !3748)
!3748 = !DILexicalBlockFile(scope: !3745, file: !682, discriminator: 1)
!3749 = !DILocation(line: 103, column: 7, scope: !3745)
!3750 = !DILocation(line: 106, column: 7, scope: !3745)
!3751 = !DILocation(line: 106, column: 7, scope: !3748)
!3752 = !DILocation(line: 107, column: 7, scope: !3745)
!3753 = !DILocation(line: 110, column: 7, scope: !3745)
!3754 = !DILocation(line: 110, column: 7, scope: !3748)
!3755 = !DILocation(line: 112, column: 7, scope: !3745)
!3756 = !DILocation(line: 117, column: 7, scope: !3745)
!3757 = !DILocation(line: 117, column: 7, scope: !3748)
!3758 = !DILocation(line: 119, column: 7, scope: !3745)
!3759 = !DILocation(line: 124, column: 7, scope: !3745)
!3760 = !DILocation(line: 124, column: 7, scope: !3748)
!3761 = !DILocation(line: 126, column: 7, scope: !3745)
!3762 = !DILocation(line: 131, column: 7, scope: !3745)
!3763 = !DILocation(line: 131, column: 7, scope: !3748)
!3764 = !DILocation(line: 134, column: 7, scope: !3745)
!3765 = !DILocation(line: 139, column: 7, scope: !3745)
!3766 = !DILocation(line: 139, column: 7, scope: !3748)
!3767 = !DILocation(line: 142, column: 7, scope: !3745)
!3768 = !DILocation(line: 147, column: 7, scope: !3745)
!3769 = !DILocation(line: 147, column: 7, scope: !3748)
!3770 = !DILocation(line: 151, column: 7, scope: !3745)
!3771 = !DILocation(line: 156, column: 7, scope: !3745)
!3772 = !DILocation(line: 156, column: 7, scope: !3748)
!3773 = !DILocation(line: 160, column: 7, scope: !3745)
!3774 = !DILocation(line: 167, column: 7, scope: !3745)
!3775 = !DILocation(line: 167, column: 7, scope: !3748)
!3776 = !DILocation(line: 171, column: 7, scope: !3745)
!3777 = !DILocation(line: 173, column: 1, scope: !3676)
!3778 = distinct !DISubprogram(name: "version_etc_ar", scope: !682, file: !682, line: 180, type: !3779, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !3679, !32, !32, !32, !3719}
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787}
!3782 = !DILocalVariable(name: "stream", arg: 1, scope: !3778, file: !682, line: 180, type: !3679)
!3783 = !DILocalVariable(name: "command_name", arg: 2, scope: !3778, file: !682, line: 181, type: !32)
!3784 = !DILocalVariable(name: "package", arg: 3, scope: !3778, file: !682, line: 181, type: !32)
!3785 = !DILocalVariable(name: "version", arg: 4, scope: !3778, file: !682, line: 182, type: !32)
!3786 = !DILocalVariable(name: "authors", arg: 5, scope: !3778, file: !682, line: 182, type: !3719)
!3787 = !DILocalVariable(name: "n_authors", scope: !3778, file: !682, line: 184, type: !24)
!3788 = !DILocation(line: 180, column: 23, scope: !3778)
!3789 = !DILocation(line: 181, column: 29, scope: !3778)
!3790 = !DILocation(line: 181, column: 55, scope: !3778)
!3791 = !DILocation(line: 182, column: 29, scope: !3778)
!3792 = !DILocation(line: 182, column: 59, scope: !3778)
!3793 = !DILocation(line: 184, column: 10, scope: !3778)
!3794 = !DILocation(line: 186, column: 8, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3778, file: !682, line: 186, column: 3)
!3796 = !DILocation(line: 186, column: 23, scope: !3797)
!3797 = !DILexicalBlockFile(scope: !3798, file: !682, discriminator: 1)
!3798 = distinct !DILexicalBlock(scope: !3795, file: !682, line: 186, column: 3)
!3799 = !DILocation(line: 186, column: 3, scope: !3800)
!3800 = !DILexicalBlockFile(scope: !3795, file: !682, discriminator: 1)
!3801 = !DILocation(line: 186, column: 52, scope: !3802)
!3802 = !DILexicalBlockFile(scope: !3798, file: !682, discriminator: 3)
!3803 = distinct !{!3803, !3804, !3805}
!3804 = !DILocation(line: 186, column: 3, scope: !3795)
!3805 = !DILocation(line: 187, column: 5, scope: !3795)
!3806 = !DILocation(line: 188, column: 3, scope: !3778)
!3807 = !DILocation(line: 189, column: 1, scope: !3778)
!3808 = distinct !DISubprogram(name: "version_etc_va", scope: !682, file: !682, line: 196, type: !3809, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !3818)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3679, !32, !32, !32, !3811}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !679, line: 189, size: 192, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3812, file: !679, line: 189, baseType: !127, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3812, file: !679, line: 189, baseType: !127, size: 32, offset: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3812, file: !679, line: 189, baseType: !23, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3812, file: !679, line: 189, baseType: !23, size: 64, offset: 128)
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824, !3825}
!3819 = !DILocalVariable(name: "stream", arg: 1, scope: !3808, file: !682, line: 196, type: !3679)
!3820 = !DILocalVariable(name: "command_name", arg: 2, scope: !3808, file: !682, line: 197, type: !32)
!3821 = !DILocalVariable(name: "package", arg: 3, scope: !3808, file: !682, line: 197, type: !32)
!3822 = !DILocalVariable(name: "version", arg: 4, scope: !3808, file: !682, line: 198, type: !32)
!3823 = !DILocalVariable(name: "authors", arg: 5, scope: !3808, file: !682, line: 198, type: !3811)
!3824 = !DILocalVariable(name: "n_authors", scope: !3808, file: !682, line: 200, type: !24)
!3825 = !DILocalVariable(name: "authtab", scope: !3808, file: !682, line: 201, type: !3826)
!3826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 640, elements: !283)
!3827 = !DILocation(line: 196, column: 23, scope: !3808)
!3828 = !DILocation(line: 197, column: 29, scope: !3808)
!3829 = !DILocation(line: 197, column: 55, scope: !3808)
!3830 = !DILocation(line: 198, column: 29, scope: !3808)
!3831 = !DILocation(line: 198, column: 46, scope: !3808)
!3832 = !DILocation(line: 201, column: 3, scope: !3808)
!3833 = !DILocation(line: 201, column: 15, scope: !3808)
!3834 = !DILocation(line: 200, column: 10, scope: !3808)
!3835 = !DILocation(line: 205, column: 35, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3837, file: !682, discriminator: 1)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !682, line: 203, column: 3)
!3838 = distinct !DILexicalBlock(scope: !3808, file: !682, line: 203, column: 3)
!3839 = !DILocation(line: 205, column: 35, scope: !3840)
!3840 = !DILexicalBlockFile(scope: !3837, file: !682, discriminator: 2)
!3841 = !DILocation(line: 205, column: 35, scope: !3842)
!3842 = !DILexicalBlockFile(scope: !3837, file: !682, discriminator: 3)
!3843 = !DILocation(line: 205, column: 35, scope: !3844)
!3844 = !DILexicalBlockFile(scope: !3837, file: !682, discriminator: 4)
!3845 = !DILocation(line: 205, column: 14, scope: !3844)
!3846 = !DILocation(line: 205, column: 33, scope: !3844)
!3847 = !DILocation(line: 205, column: 67, scope: !3844)
!3848 = !DILocation(line: 203, column: 3, scope: !3849)
!3849 = !DILexicalBlockFile(scope: !3838, file: !682, discriminator: 1)
!3850 = !DILocation(line: 208, column: 3, scope: !3808)
!3851 = !DILocation(line: 210, column: 1, scope: !3808)
!3852 = distinct !DISubprogram(name: "version_etc", scope: !682, file: !682, line: 227, type: !3853, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3679, !32, !32, !32, null}
!3855 = !{!3856, !3857, !3858, !3859, !3860}
!3856 = !DILocalVariable(name: "stream", arg: 1, scope: !3852, file: !682, line: 227, type: !3679)
!3857 = !DILocalVariable(name: "command_name", arg: 2, scope: !3852, file: !682, line: 228, type: !32)
!3858 = !DILocalVariable(name: "package", arg: 3, scope: !3852, file: !682, line: 228, type: !32)
!3859 = !DILocalVariable(name: "version", arg: 4, scope: !3852, file: !682, line: 229, type: !32)
!3860 = !DILocalVariable(name: "authors", scope: !3852, file: !682, line: 231, type: !3861)
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !143, line: 80, baseType: !3862)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3863, line: 50, baseType: !3864)
!3863 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !679, line: 231, baseType: !3865)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3812, size: 192, elements: !178)
!3866 = !DILocation(line: 227, column: 20, scope: !3852)
!3867 = !DILocation(line: 228, column: 26, scope: !3852)
!3868 = !DILocation(line: 228, column: 52, scope: !3852)
!3869 = !DILocation(line: 229, column: 26, scope: !3852)
!3870 = !DILocation(line: 231, column: 3, scope: !3852)
!3871 = !DILocation(line: 231, column: 11, scope: !3852)
!3872 = !DILocation(line: 233, column: 3, scope: !3852)
!3873 = !DILocation(line: 234, column: 3, scope: !3852)
!3874 = !DILocation(line: 235, column: 3, scope: !3852)
!3875 = !DILocation(line: 236, column: 1, scope: !3852)
!3876 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !682, file: !682, line: 239, type: !751, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !242)
!3877 = !DILocation(line: 245, column: 3, scope: !3876)
!3878 = !DILocation(line: 245, column: 3, scope: !3879)
!3879 = !DILexicalBlockFile(scope: !3876, file: !682, discriminator: 1)
!3880 = !DILocation(line: 251, column: 3, scope: !3876)
!3881 = !DILocation(line: 251, column: 3, scope: !3879)
!3882 = !DILocation(line: 256, column: 3, scope: !3876)
!3883 = !DILocation(line: 256, column: 3, scope: !3879)
!3884 = !DILocation(line: 258, column: 1, scope: !3876)
!3885 = distinct !DISubprogram(name: "xnmalloc", scope: !114, file: !114, line: 105, type: !3886, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!23, !24, !24}
!3888 = !{!3889, !3890}
!3889 = !DILocalVariable(name: "n", arg: 1, scope: !3885, file: !114, line: 105, type: !24)
!3890 = !DILocalVariable(name: "s", arg: 2, scope: !3885, file: !114, line: 105, type: !24)
!3891 = !DILocation(line: 105, column: 18, scope: !3885)
!3892 = !DILocation(line: 105, column: 28, scope: !3885)
!3893 = !DILocation(line: 107, column: 7, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3885, file: !114, line: 107, column: 7)
!3895 = !DILocation(line: 107, column: 7, scope: !3885)
!3896 = !DILocation(line: 108, column: 5, scope: !3894)
!3897 = !DILocation(line: 109, column: 21, scope: !3885)
!3898 = !DILocalVariable(name: "n", arg: 1, scope: !3899, file: !3900, line: 39, type: !24)
!3899 = distinct !DISubprogram(name: "xmalloc", scope: !3900, file: !3900, line: 39, type: !3901, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3903)
!3900 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!23, !24}
!3903 = !{!3898, !3904}
!3904 = !DILocalVariable(name: "p", scope: !3899, file: !3900, line: 41, type: !23)
!3905 = !DILocation(line: 39, column: 17, scope: !3899, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 109, column: 10, scope: !3885)
!3907 = !DILocation(line: 41, column: 13, scope: !3899, inlinedAt: !3906)
!3908 = !DILocation(line: 41, column: 9, scope: !3899, inlinedAt: !3906)
!3909 = !DILocation(line: 42, column: 8, scope: !3910, inlinedAt: !3906)
!3910 = distinct !DILexicalBlock(scope: !3899, file: !3900, line: 42, column: 7)
!3911 = !DILocation(line: 42, column: 15, scope: !3912, inlinedAt: !3906)
!3912 = !DILexicalBlockFile(scope: !3910, file: !3900, discriminator: 1)
!3913 = !DILocation(line: 42, column: 10, scope: !3910, inlinedAt: !3906)
!3914 = !DILocation(line: 43, column: 5, scope: !3910, inlinedAt: !3906)
!3915 = !DILocation(line: 109, column: 3, scope: !3885)
!3916 = !DILocation(line: 39, column: 17, scope: !3899)
!3917 = !DILocation(line: 41, column: 13, scope: !3899)
!3918 = !DILocation(line: 41, column: 9, scope: !3899)
!3919 = !DILocation(line: 42, column: 8, scope: !3910)
!3920 = !DILocation(line: 42, column: 15, scope: !3912)
!3921 = !DILocation(line: 42, column: 10, scope: !3910)
!3922 = !DILocation(line: 43, column: 5, scope: !3910)
!3923 = !DILocation(line: 44, column: 3, scope: !3899)
!3924 = distinct !DISubprogram(name: "xnrealloc", scope: !114, file: !114, line: 118, type: !3925, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!23, !23, !24, !24}
!3927 = !{!3928, !3929, !3930}
!3928 = !DILocalVariable(name: "p", arg: 1, scope: !3924, file: !114, line: 118, type: !23)
!3929 = !DILocalVariable(name: "n", arg: 2, scope: !3924, file: !114, line: 118, type: !24)
!3930 = !DILocalVariable(name: "s", arg: 3, scope: !3924, file: !114, line: 118, type: !24)
!3931 = !DILocation(line: 118, column: 18, scope: !3924)
!3932 = !DILocation(line: 118, column: 28, scope: !3924)
!3933 = !DILocation(line: 118, column: 38, scope: !3924)
!3934 = !DILocation(line: 120, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3924, file: !114, line: 120, column: 7)
!3936 = !DILocation(line: 120, column: 7, scope: !3924)
!3937 = !DILocation(line: 121, column: 5, scope: !3935)
!3938 = !DILocation(line: 122, column: 25, scope: !3924)
!3939 = !DILocalVariable(name: "p", arg: 1, scope: !3940, file: !3900, line: 51, type: !23)
!3940 = distinct !DISubprogram(name: "xrealloc", scope: !3900, file: !3900, line: 51, type: !3941, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!23, !23, !24}
!3943 = !{!3939, !3944}
!3944 = !DILocalVariable(name: "n", arg: 2, scope: !3940, file: !3900, line: 51, type: !24)
!3945 = !DILocation(line: 51, column: 17, scope: !3940, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 122, column: 10, scope: !3924)
!3947 = !DILocation(line: 51, column: 27, scope: !3940, inlinedAt: !3946)
!3948 = !DILocation(line: 53, column: 8, scope: !3949, inlinedAt: !3946)
!3949 = distinct !DILexicalBlock(scope: !3940, file: !3900, line: 53, column: 7)
!3950 = !DILocation(line: 53, column: 13, scope: !3951, inlinedAt: !3946)
!3951 = !DILexicalBlockFile(scope: !3949, file: !3900, discriminator: 1)
!3952 = !DILocation(line: 53, column: 10, scope: !3949, inlinedAt: !3946)
!3953 = !DILocation(line: 57, column: 7, scope: !3954, inlinedAt: !3946)
!3954 = distinct !DILexicalBlock(scope: !3949, file: !3900, line: 54, column: 5)
!3955 = !DILocation(line: 58, column: 7, scope: !3954, inlinedAt: !3946)
!3956 = !DILocation(line: 61, column: 7, scope: !3940, inlinedAt: !3946)
!3957 = !DILocation(line: 62, column: 8, scope: !3958, inlinedAt: !3946)
!3958 = distinct !DILexicalBlock(scope: !3940, file: !3900, line: 62, column: 7)
!3959 = !DILocation(line: 62, column: 13, scope: !3960, inlinedAt: !3946)
!3960 = !DILexicalBlockFile(scope: !3958, file: !3900, discriminator: 1)
!3961 = !DILocation(line: 62, column: 10, scope: !3958, inlinedAt: !3946)
!3962 = !DILocation(line: 63, column: 5, scope: !3958, inlinedAt: !3946)
!3963 = !DILocation(line: 122, column: 3, scope: !3924)
!3964 = !DILocation(line: 51, column: 17, scope: !3940)
!3965 = !DILocation(line: 51, column: 27, scope: !3940)
!3966 = !DILocation(line: 53, column: 8, scope: !3949)
!3967 = !DILocation(line: 53, column: 13, scope: !3951)
!3968 = !DILocation(line: 53, column: 10, scope: !3949)
!3969 = !DILocation(line: 57, column: 7, scope: !3954)
!3970 = !DILocation(line: 58, column: 7, scope: !3954)
!3971 = !DILocation(line: 61, column: 7, scope: !3940)
!3972 = !DILocation(line: 62, column: 8, scope: !3958)
!3973 = !DILocation(line: 62, column: 13, scope: !3960)
!3974 = !DILocation(line: 62, column: 10, scope: !3958)
!3975 = !DILocation(line: 63, column: 5, scope: !3958)
!3976 = !DILocation(line: 65, column: 1, scope: !3940)
!3977 = !DILocation(line: 180, column: 19, scope: !690)
!3978 = !DILocation(line: 180, column: 30, scope: !690)
!3979 = !DILocation(line: 180, column: 41, scope: !690)
!3980 = !DILocation(line: 182, column: 14, scope: !690)
!3981 = !DILocation(line: 182, column: 10, scope: !690)
!3982 = !DILocation(line: 184, column: 9, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !690, file: !114, line: 184, column: 7)
!3984 = !DILocation(line: 184, column: 7, scope: !690)
!3985 = !DILocation(line: 186, column: 13, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !114, line: 186, column: 11)
!3987 = distinct !DILexicalBlock(scope: !3983, file: !114, line: 185, column: 5)
!3988 = !DILocation(line: 186, column: 11, scope: !3987)
!3989 = !DILocation(line: 194, column: 30, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3986, file: !114, line: 187, column: 9)
!3991 = !DILocation(line: 195, column: 16, scope: !3990)
!3992 = !DILocation(line: 195, column: 13, scope: !3990)
!3993 = !DILocation(line: 196, column: 9, scope: !3990)
!3994 = !DILocation(line: 204, column: 69, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !114, line: 204, column: 11)
!3996 = distinct !DILexicalBlock(scope: !3983, file: !114, line: 199, column: 5)
!3997 = !DILocation(line: 205, column: 11, scope: !3995)
!3998 = !DILocation(line: 204, column: 11, scope: !3996)
!3999 = !DILocation(line: 206, column: 9, scope: !3995)
!4000 = !DILocation(line: 210, column: 7, scope: !690)
!4001 = !DILocation(line: 211, column: 25, scope: !690)
!4002 = !DILocation(line: 51, column: 17, scope: !3940, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 211, column: 10, scope: !690)
!4004 = !DILocation(line: 51, column: 27, scope: !3940, inlinedAt: !4003)
!4005 = !DILocation(line: 53, column: 10, scope: !3949, inlinedAt: !4003)
!4006 = !DILocation(line: 207, column: 14, scope: !3996)
!4007 = !DILocation(line: 207, column: 18, scope: !3996)
!4008 = !DILocation(line: 207, column: 9, scope: !3996)
!4009 = !DILocation(line: 53, column: 8, scope: !3949, inlinedAt: !4003)
!4010 = !DILocation(line: 57, column: 7, scope: !3954, inlinedAt: !4003)
!4011 = !DILocation(line: 58, column: 7, scope: !3954, inlinedAt: !4003)
!4012 = !DILocation(line: 61, column: 7, scope: !3940, inlinedAt: !4003)
!4013 = !DILocation(line: 62, column: 8, scope: !3958, inlinedAt: !4003)
!4014 = !DILocation(line: 62, column: 13, scope: !3960, inlinedAt: !4003)
!4015 = !DILocation(line: 62, column: 10, scope: !3958, inlinedAt: !4003)
!4016 = !DILocation(line: 63, column: 5, scope: !3958, inlinedAt: !4003)
!4017 = !DILocation(line: 211, column: 3, scope: !690)
!4018 = distinct !DISubprogram(name: "xcharalloc", scope: !114, file: !114, line: 220, type: !2950, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !4019)
!4019 = !{!4020}
!4020 = !DILocalVariable(name: "n", arg: 1, scope: !4018, file: !114, line: 220, type: !24)
!4021 = !DILocation(line: 220, column: 20, scope: !4018)
!4022 = !DILocation(line: 39, column: 17, scope: !3899, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 222, column: 10, scope: !4018)
!4024 = !DILocation(line: 41, column: 13, scope: !3899, inlinedAt: !4023)
!4025 = !DILocation(line: 41, column: 9, scope: !3899, inlinedAt: !4023)
!4026 = !DILocation(line: 42, column: 8, scope: !3910, inlinedAt: !4023)
!4027 = !DILocation(line: 42, column: 15, scope: !3912, inlinedAt: !4023)
!4028 = !DILocation(line: 42, column: 10, scope: !3910, inlinedAt: !4023)
!4029 = !DILocation(line: 43, column: 5, scope: !3910, inlinedAt: !4023)
!4030 = !DILocation(line: 222, column: 3, scope: !4018)
!4031 = distinct !DISubprogram(name: "x2realloc", scope: !3900, file: !3900, line: 74, type: !4032, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !4034)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!23, !23, !118}
!4034 = !{!4035, !4036}
!4035 = !DILocalVariable(name: "p", arg: 1, scope: !4031, file: !3900, line: 74, type: !23)
!4036 = !DILocalVariable(name: "pn", arg: 2, scope: !4031, file: !3900, line: 74, type: !118)
!4037 = !DILocation(line: 74, column: 18, scope: !4031)
!4038 = !DILocation(line: 74, column: 29, scope: !4031)
!4039 = !DILocation(line: 180, column: 19, scope: !690, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 76, column: 10, scope: !4031)
!4041 = !DILocation(line: 180, column: 30, scope: !690, inlinedAt: !4040)
!4042 = !DILocation(line: 180, column: 41, scope: !690, inlinedAt: !4040)
!4043 = !DILocation(line: 182, column: 14, scope: !690, inlinedAt: !4040)
!4044 = !DILocation(line: 182, column: 10, scope: !690, inlinedAt: !4040)
!4045 = !DILocation(line: 184, column: 9, scope: !3983, inlinedAt: !4040)
!4046 = !DILocation(line: 184, column: 7, scope: !690, inlinedAt: !4040)
!4047 = !DILocation(line: 186, column: 13, scope: !3986, inlinedAt: !4040)
!4048 = !DILocation(line: 186, column: 11, scope: !3987, inlinedAt: !4040)
!4049 = !DILocation(line: 210, column: 7, scope: !690, inlinedAt: !4040)
!4050 = !DILocation(line: 51, column: 17, scope: !3940, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 211, column: 10, scope: !690, inlinedAt: !4040)
!4052 = !DILocation(line: 51, column: 27, scope: !3940, inlinedAt: !4051)
!4053 = !DILocation(line: 53, column: 10, scope: !3949, inlinedAt: !4051)
!4054 = !DILocation(line: 205, column: 11, scope: !3995, inlinedAt: !4040)
!4055 = !DILocation(line: 204, column: 11, scope: !3996, inlinedAt: !4040)
!4056 = !DILocation(line: 206, column: 9, scope: !3995, inlinedAt: !4040)
!4057 = !DILocation(line: 207, column: 14, scope: !3996, inlinedAt: !4040)
!4058 = !DILocation(line: 207, column: 18, scope: !3996, inlinedAt: !4040)
!4059 = !DILocation(line: 207, column: 9, scope: !3996, inlinedAt: !4040)
!4060 = !DILocation(line: 53, column: 8, scope: !3949, inlinedAt: !4051)
!4061 = !DILocation(line: 57, column: 7, scope: !3954, inlinedAt: !4051)
!4062 = !DILocation(line: 58, column: 7, scope: !3954, inlinedAt: !4051)
!4063 = !DILocation(line: 61, column: 7, scope: !3940, inlinedAt: !4051)
!4064 = !DILocation(line: 62, column: 8, scope: !3958, inlinedAt: !4051)
!4065 = !DILocation(line: 62, column: 13, scope: !3960, inlinedAt: !4051)
!4066 = !DILocation(line: 62, column: 10, scope: !3958, inlinedAt: !4051)
!4067 = !DILocation(line: 63, column: 5, scope: !3958, inlinedAt: !4051)
!4068 = !DILocation(line: 76, column: 3, scope: !4031)
!4069 = distinct !DISubprogram(name: "xzalloc", scope: !3900, file: !3900, line: 84, type: !3901, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !4070)
!4070 = !{!4071}
!4071 = !DILocalVariable(name: "s", arg: 1, scope: !4069, file: !3900, line: 84, type: !24)
!4072 = !DILocation(line: 84, column: 17, scope: !4069)
!4073 = !DILocation(line: 39, column: 17, scope: !3899, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 86, column: 18, scope: !4069)
!4075 = !DILocation(line: 41, column: 13, scope: !3899, inlinedAt: !4074)
!4076 = !DILocation(line: 41, column: 9, scope: !3899, inlinedAt: !4074)
!4077 = !DILocation(line: 42, column: 8, scope: !3910, inlinedAt: !4074)
!4078 = !DILocation(line: 42, column: 15, scope: !3912, inlinedAt: !4074)
!4079 = !DILocation(line: 42, column: 10, scope: !3910, inlinedAt: !4074)
!4080 = !DILocation(line: 43, column: 5, scope: !3910, inlinedAt: !4074)
!4081 = !DILocation(line: 86, column: 10, scope: !4069)
!4082 = !DILocation(line: 86, column: 3, scope: !4069)
!4083 = distinct !DISubprogram(name: "xcalloc", scope: !3900, file: !3900, line: 93, type: !3886, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !4084)
!4084 = !{!4085, !4086, !4087}
!4085 = !DILocalVariable(name: "n", arg: 1, scope: !4083, file: !3900, line: 93, type: !24)
!4086 = !DILocalVariable(name: "s", arg: 2, scope: !4083, file: !3900, line: 93, type: !24)
!4087 = !DILocalVariable(name: "p", scope: !4083, file: !3900, line: 95, type: !23)
!4088 = !DILocation(line: 93, column: 17, scope: !4083)
!4089 = !DILocation(line: 93, column: 27, scope: !4083)
!4090 = !DILocation(line: 100, column: 7, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4083, file: !3900, line: 100, column: 7)
!4092 = !DILocation(line: 101, column: 7, scope: !4091)
!4093 = !DILocation(line: 101, column: 18, scope: !4094)
!4094 = !DILexicalBlockFile(scope: !4091, file: !3900, discriminator: 1)
!4095 = !DILocation(line: 95, column: 9, scope: !4083)
!4096 = !DILocation(line: 101, column: 16, scope: !4094)
!4097 = !DILocation(line: 100, column: 7, scope: !4098)
!4098 = !DILexicalBlockFile(scope: !4083, file: !3900, discriminator: 1)
!4099 = !DILocation(line: 102, column: 5, scope: !4091)
!4100 = !DILocation(line: 103, column: 3, scope: !4083)
!4101 = distinct !DISubprogram(name: "xmemdup", scope: !3900, file: !3900, line: 111, type: !4102, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !4104)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!23, !27, !24}
!4104 = !{!4105, !4106}
!4105 = !DILocalVariable(name: "p", arg: 1, scope: !4101, file: !3900, line: 111, type: !27)
!4106 = !DILocalVariable(name: "s", arg: 2, scope: !4101, file: !3900, line: 111, type: !24)
!4107 = !DILocation(line: 111, column: 22, scope: !4101)
!4108 = !DILocation(line: 111, column: 32, scope: !4101)
!4109 = !DILocation(line: 39, column: 17, scope: !3899, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 113, column: 18, scope: !4101)
!4111 = !DILocation(line: 41, column: 13, scope: !3899, inlinedAt: !4110)
!4112 = !DILocation(line: 41, column: 9, scope: !3899, inlinedAt: !4110)
!4113 = !DILocation(line: 42, column: 8, scope: !3910, inlinedAt: !4110)
!4114 = !DILocation(line: 42, column: 15, scope: !3912, inlinedAt: !4110)
!4115 = !DILocation(line: 42, column: 10, scope: !3910, inlinedAt: !4110)
!4116 = !DILocation(line: 43, column: 5, scope: !3910, inlinedAt: !4110)
!4117 = !DILocation(line: 113, column: 10, scope: !4101)
!4118 = !DILocation(line: 113, column: 3, scope: !4101)
!4119 = distinct !DISubprogram(name: "xstrdup", scope: !3900, file: !3900, line: 119, type: !3155, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !4120)
!4120 = !{!4121}
!4121 = !DILocalVariable(name: "string", arg: 1, scope: !4119, file: !3900, line: 119, type: !32)
!4122 = !DILocation(line: 119, column: 22, scope: !4119)
!4123 = !DILocation(line: 121, column: 27, scope: !4119)
!4124 = !DILocation(line: 121, column: 43, scope: !4119)
!4125 = !DILocation(line: 111, column: 22, scope: !4101, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 121, column: 10, scope: !4127)
!4127 = !DILexicalBlockFile(scope: !4119, file: !3900, discriminator: 1)
!4128 = !DILocation(line: 111, column: 32, scope: !4101, inlinedAt: !4126)
!4129 = !DILocation(line: 39, column: 17, scope: !3899, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 113, column: 18, scope: !4101, inlinedAt: !4126)
!4131 = !DILocation(line: 41, column: 13, scope: !3899, inlinedAt: !4130)
!4132 = !DILocation(line: 41, column: 9, scope: !3899, inlinedAt: !4130)
!4133 = !DILocation(line: 42, column: 8, scope: !3910, inlinedAt: !4130)
!4134 = !DILocation(line: 42, column: 15, scope: !3912, inlinedAt: !4130)
!4135 = !DILocation(line: 42, column: 10, scope: !3910, inlinedAt: !4130)
!4136 = !DILocation(line: 43, column: 5, scope: !3910, inlinedAt: !4130)
!4137 = !DILocation(line: 113, column: 10, scope: !4101, inlinedAt: !4126)
!4138 = !DILocation(line: 121, column: 3, scope: !4119)
!4139 = distinct !DISubprogram(name: "xalloc_die", scope: !4140, file: !4140, line: 32, type: !751, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !697, variables: !242)
!4140 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4141 = !DILocation(line: 34, column: 10, scope: !4139)
!4142 = !DILocation(line: 34, column: 33, scope: !4139)
!4143 = !DILocation(line: 34, column: 3, scope: !4144)
!4144 = !DILexicalBlockFile(scope: !4139, file: !4140, discriminator: 1)
!4145 = !DILocation(line: 40, column: 3, scope: !4139)
!4146 = distinct !DISubprogram(name: "xstrndup", scope: !4147, file: !4147, line: 30, type: !3166, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !4148)
!4147 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4148 = !{!4149, !4150, !4151}
!4149 = !DILocalVariable(name: "string", arg: 1, scope: !4146, file: !4147, line: 30, type: !32)
!4150 = !DILocalVariable(name: "n", arg: 2, scope: !4146, file: !4147, line: 30, type: !24)
!4151 = !DILocalVariable(name: "s", scope: !4146, file: !4147, line: 32, type: !21)
!4152 = !DILocation(line: 30, column: 23, scope: !4146)
!4153 = !DILocation(line: 30, column: 38, scope: !4146)
!4154 = !DILocation(line: 32, column: 13, scope: !4146)
!4155 = !DILocation(line: 32, column: 9, scope: !4146)
!4156 = !DILocation(line: 33, column: 9, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4146, file: !4147, line: 33, column: 7)
!4158 = !DILocation(line: 33, column: 7, scope: !4146)
!4159 = !DILocation(line: 34, column: 5, scope: !4157)
!4160 = !DILocation(line: 35, column: 3, scope: !4146)
!4161 = distinct !DISubprogram(name: "rpl_calloc", scope: !4162, file: !4162, line: 42, type: !3886, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !4163)
!4162 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4163 = !{!4164, !4165, !4166, !4167}
!4164 = !DILocalVariable(name: "n", arg: 1, scope: !4161, file: !4162, line: 42, type: !24)
!4165 = !DILocalVariable(name: "s", arg: 2, scope: !4161, file: !4162, line: 42, type: !24)
!4166 = !DILocalVariable(name: "result", scope: !4161, file: !4162, line: 44, type: !23)
!4167 = !DILocalVariable(name: "bytes", scope: !4168, file: !4162, line: 56, type: !24)
!4168 = distinct !DILexicalBlock(scope: !4169, file: !4162, line: 53, column: 5)
!4169 = distinct !DILexicalBlock(scope: !4161, file: !4162, line: 47, column: 7)
!4170 = !DILocation(line: 42, column: 20, scope: !4161)
!4171 = !DILocation(line: 42, column: 30, scope: !4161)
!4172 = !DILocation(line: 47, column: 9, scope: !4169)
!4173 = !DILocation(line: 47, column: 19, scope: !4174)
!4174 = !DILexicalBlockFile(scope: !4169, file: !4162, discriminator: 1)
!4175 = !DILocation(line: 47, column: 14, scope: !4169)
!4176 = !DILocation(line: 56, column: 24, scope: !4168)
!4177 = !DILocation(line: 56, column: 14, scope: !4168)
!4178 = !DILocation(line: 57, column: 17, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4168, file: !4162, line: 57, column: 11)
!4180 = !DILocation(line: 57, column: 21, scope: !4179)
!4181 = !DILocation(line: 57, column: 11, scope: !4168)
!4182 = !DILocation(line: 59, column: 11, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !4162, line: 58, column: 9)
!4184 = !DILocation(line: 59, column: 17, scope: !4183)
!4185 = !DILocation(line: 65, column: 12, scope: !4161)
!4186 = !DILocation(line: 44, column: 9, scope: !4161)
!4187 = !DILocation(line: 72, column: 3, scope: !4161)
!4188 = !DILocation(line: 73, column: 1, scope: !4161)
!4189 = distinct !DISubprogram(name: "rpl_fclose", scope: !4190, file: !4190, line: 56, type: !4191, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !703, variables: !4233)
!4190 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!34, !4193}
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 49, baseType: !4195)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4195, file: !145, line: 242, baseType: !34, size: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4195, file: !145, line: 247, baseType: !21, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4195, file: !145, line: 248, baseType: !21, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4195, file: !145, line: 249, baseType: !21, size: 64, offset: 192)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4195, file: !145, line: 250, baseType: !21, size: 64, offset: 256)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4195, file: !145, line: 251, baseType: !21, size: 64, offset: 320)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4195, file: !145, line: 252, baseType: !21, size: 64, offset: 384)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4195, file: !145, line: 253, baseType: !21, size: 64, offset: 448)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4195, file: !145, line: 254, baseType: !21, size: 64, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4195, file: !145, line: 256, baseType: !21, size: 64, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4195, file: !145, line: 257, baseType: !21, size: 64, offset: 640)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4195, file: !145, line: 258, baseType: !21, size: 64, offset: 704)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4195, file: !145, line: 260, baseType: !4210, size: 64, offset: 768)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, elements: !4212)
!4212 = !{!4213, !4214, !4216}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4211, file: !145, line: 157, baseType: !4210, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4211, file: !145, line: 158, baseType: !4215, size: 64, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4211, file: !145, line: 162, baseType: !34, size: 32, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4195, file: !145, line: 262, baseType: !4215, size: 64, offset: 832)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4195, file: !145, line: 264, baseType: !34, size: 32, offset: 896)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4195, file: !145, line: 268, baseType: !34, size: 32, offset: 928)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4195, file: !145, line: 270, baseType: !171, size: 64, offset: 960)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4195, file: !145, line: 274, baseType: !35, size: 16, offset: 1024)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4195, file: !145, line: 275, baseType: !175, size: 8, offset: 1040)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4195, file: !145, line: 276, baseType: !177, size: 8, offset: 1048)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4195, file: !145, line: 280, baseType: !181, size: 64, offset: 1088)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4195, file: !145, line: 289, baseType: !184, size: 64, offset: 1152)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4195, file: !145, line: 297, baseType: !23, size: 64, offset: 1216)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4195, file: !145, line: 298, baseType: !23, size: 64, offset: 1280)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4195, file: !145, line: 299, baseType: !23, size: 64, offset: 1344)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4195, file: !145, line: 300, baseType: !23, size: 64, offset: 1408)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4195, file: !145, line: 302, baseType: !24, size: 64, offset: 1472)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4195, file: !145, line: 303, baseType: !34, size: 32, offset: 1536)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4195, file: !145, line: 305, baseType: !192, size: 160, offset: 1568)
!4233 = !{!4234, !4235, !4236, !4237}
!4234 = !DILocalVariable(name: "fp", arg: 1, scope: !4189, file: !4190, line: 56, type: !4193)
!4235 = !DILocalVariable(name: "saved_errno", scope: !4189, file: !4190, line: 58, type: !34)
!4236 = !DILocalVariable(name: "fd", scope: !4189, file: !4190, line: 59, type: !34)
!4237 = !DILocalVariable(name: "result", scope: !4189, file: !4190, line: 60, type: !34)
!4238 = !DILocation(line: 56, column: 19, scope: !4189)
!4239 = !DILocation(line: 58, column: 7, scope: !4189)
!4240 = !DILocation(line: 60, column: 7, scope: !4189)
!4241 = !DILocation(line: 63, column: 8, scope: !4189)
!4242 = !DILocation(line: 59, column: 7, scope: !4189)
!4243 = !DILocation(line: 64, column: 10, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4189, file: !4190, line: 64, column: 7)
!4245 = !DILocation(line: 64, column: 7, scope: !4189)
!4246 = !DILocation(line: 65, column: 12, scope: !4244)
!4247 = !DILocation(line: 65, column: 5, scope: !4244)
!4248 = !DILocation(line: 70, column: 9, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4189, file: !4190, line: 70, column: 7)
!4250 = !DILocation(line: 70, column: 23, scope: !4249)
!4251 = !DILocation(line: 70, column: 33, scope: !4252)
!4252 = !DILexicalBlockFile(scope: !4249, file: !4190, discriminator: 1)
!4253 = !DILocation(line: 70, column: 26, scope: !4254)
!4254 = !DILexicalBlockFile(scope: !4249, file: !4190, discriminator: 3)
!4255 = !DILocation(line: 70, column: 59, scope: !4252)
!4256 = !DILocation(line: 71, column: 7, scope: !4249)
!4257 = !DILocation(line: 71, column: 10, scope: !4252)
!4258 = !DILocation(line: 70, column: 7, scope: !4259)
!4259 = !DILexicalBlockFile(scope: !4189, file: !4190, discriminator: 2)
!4260 = !DILocation(line: 98, column: 12, scope: !4189)
!4261 = !DILocation(line: 103, column: 7, scope: !4189)
!4262 = !DILocation(line: 72, column: 19, scope: !4249)
!4263 = !DILocation(line: 103, column: 19, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4189, file: !4190, line: 103, column: 7)
!4265 = !DILocation(line: 105, column: 13, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4264, file: !4190, line: 104, column: 5)
!4267 = !DILocation(line: 107, column: 5, scope: !4266)
!4268 = !DILocation(line: 110, column: 1, scope: !4189)
!4269 = distinct !DISubprogram(name: "rpl_fflush", scope: !4270, file: !4270, line: 127, type: !4271, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4313)
!4270 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!34, !4273}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 49, baseType: !4275)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, elements: !4276)
!4276 = !{!4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4275, file: !145, line: 242, baseType: !34, size: 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4275, file: !145, line: 247, baseType: !21, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4275, file: !145, line: 248, baseType: !21, size: 64, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4275, file: !145, line: 249, baseType: !21, size: 64, offset: 192)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4275, file: !145, line: 250, baseType: !21, size: 64, offset: 256)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4275, file: !145, line: 251, baseType: !21, size: 64, offset: 320)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4275, file: !145, line: 252, baseType: !21, size: 64, offset: 384)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4275, file: !145, line: 253, baseType: !21, size: 64, offset: 448)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4275, file: !145, line: 254, baseType: !21, size: 64, offset: 512)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4275, file: !145, line: 256, baseType: !21, size: 64, offset: 576)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4275, file: !145, line: 257, baseType: !21, size: 64, offset: 640)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4275, file: !145, line: 258, baseType: !21, size: 64, offset: 704)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4275, file: !145, line: 260, baseType: !4290, size: 64, offset: 768)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, elements: !4292)
!4292 = !{!4293, !4294, !4296}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4291, file: !145, line: 157, baseType: !4290, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4291, file: !145, line: 158, baseType: !4295, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4291, file: !145, line: 162, baseType: !34, size: 32, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4275, file: !145, line: 262, baseType: !4295, size: 64, offset: 832)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4275, file: !145, line: 264, baseType: !34, size: 32, offset: 896)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4275, file: !145, line: 268, baseType: !34, size: 32, offset: 928)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4275, file: !145, line: 270, baseType: !171, size: 64, offset: 960)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4275, file: !145, line: 274, baseType: !35, size: 16, offset: 1024)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4275, file: !145, line: 275, baseType: !175, size: 8, offset: 1040)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4275, file: !145, line: 276, baseType: !177, size: 8, offset: 1048)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4275, file: !145, line: 280, baseType: !181, size: 64, offset: 1088)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4275, file: !145, line: 289, baseType: !184, size: 64, offset: 1152)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4275, file: !145, line: 297, baseType: !23, size: 64, offset: 1216)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4275, file: !145, line: 298, baseType: !23, size: 64, offset: 1280)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4275, file: !145, line: 299, baseType: !23, size: 64, offset: 1344)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4275, file: !145, line: 300, baseType: !23, size: 64, offset: 1408)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4275, file: !145, line: 302, baseType: !24, size: 64, offset: 1472)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4275, file: !145, line: 303, baseType: !34, size: 32, offset: 1536)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4275, file: !145, line: 305, baseType: !192, size: 160, offset: 1568)
!4313 = !{!4314}
!4314 = !DILocalVariable(name: "stream", arg: 1, scope: !4269, file: !4270, line: 127, type: !4273)
!4315 = !DILocation(line: 127, column: 19, scope: !4269)
!4316 = !DILocation(line: 148, column: 14, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4269, file: !4270, line: 148, column: 7)
!4318 = !DILocation(line: 148, column: 22, scope: !4317)
!4319 = !DILocation(line: 148, column: 27, scope: !4320)
!4320 = !DILexicalBlockFile(scope: !4317, file: !4270, discriminator: 1)
!4321 = !DILocation(line: 148, column: 7, scope: !4322)
!4322 = !DILexicalBlockFile(scope: !4269, file: !4270, discriminator: 1)
!4323 = !DILocation(line: 149, column: 12, scope: !4317)
!4324 = !DILocation(line: 149, column: 5, scope: !4317)
!4325 = !DILocalVariable(name: "fp", arg: 1, scope: !4326, file: !4270, line: 40, type: !4273)
!4326 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4270, file: !4270, line: 40, type: !4327, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4329)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !4273}
!4329 = !{!4325}
!4330 = !DILocation(line: 40, column: 48, scope: !4326, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 153, column: 3, scope: !4269)
!4332 = !DILocation(line: 42, column: 11, scope: !4333, inlinedAt: !4331)
!4333 = distinct !DILexicalBlock(scope: !4326, file: !4270, line: 42, column: 7)
!4334 = !DILocation(line: 42, column: 18, scope: !4333, inlinedAt: !4331)
!4335 = !DILocation(line: 42, column: 7, scope: !4326, inlinedAt: !4331)
!4336 = !DILocation(line: 44, column: 5, scope: !4333, inlinedAt: !4331)
!4337 = !DILocation(line: 155, column: 10, scope: !4269)
!4338 = !DILocation(line: 155, column: 3, scope: !4269)
!4339 = !DILocation(line: 229, column: 1, scope: !4269)
!4340 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4341, file: !4341, line: 28, type: !4342, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !4384)
!4341 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!34, !4344, !1612, !34}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 49, baseType: !4346)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4346, file: !145, line: 242, baseType: !34, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4346, file: !145, line: 247, baseType: !21, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4346, file: !145, line: 248, baseType: !21, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4346, file: !145, line: 249, baseType: !21, size: 64, offset: 192)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4346, file: !145, line: 250, baseType: !21, size: 64, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4346, file: !145, line: 251, baseType: !21, size: 64, offset: 320)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4346, file: !145, line: 252, baseType: !21, size: 64, offset: 384)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4346, file: !145, line: 253, baseType: !21, size: 64, offset: 448)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4346, file: !145, line: 254, baseType: !21, size: 64, offset: 512)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4346, file: !145, line: 256, baseType: !21, size: 64, offset: 576)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4346, file: !145, line: 257, baseType: !21, size: 64, offset: 640)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4346, file: !145, line: 258, baseType: !21, size: 64, offset: 704)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4346, file: !145, line: 260, baseType: !4361, size: 64, offset: 768)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, elements: !4363)
!4363 = !{!4364, !4365, !4367}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4362, file: !145, line: 157, baseType: !4361, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4362, file: !145, line: 158, baseType: !4366, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4362, file: !145, line: 162, baseType: !34, size: 32, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4346, file: !145, line: 262, baseType: !4366, size: 64, offset: 832)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4346, file: !145, line: 264, baseType: !34, size: 32, offset: 896)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4346, file: !145, line: 268, baseType: !34, size: 32, offset: 928)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4346, file: !145, line: 270, baseType: !171, size: 64, offset: 960)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4346, file: !145, line: 274, baseType: !35, size: 16, offset: 1024)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4346, file: !145, line: 275, baseType: !175, size: 8, offset: 1040)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4346, file: !145, line: 276, baseType: !177, size: 8, offset: 1048)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4346, file: !145, line: 280, baseType: !181, size: 64, offset: 1088)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4346, file: !145, line: 289, baseType: !184, size: 64, offset: 1152)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4346, file: !145, line: 297, baseType: !23, size: 64, offset: 1216)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4346, file: !145, line: 298, baseType: !23, size: 64, offset: 1280)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4346, file: !145, line: 299, baseType: !23, size: 64, offset: 1344)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4346, file: !145, line: 300, baseType: !23, size: 64, offset: 1408)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4346, file: !145, line: 302, baseType: !24, size: 64, offset: 1472)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4346, file: !145, line: 303, baseType: !34, size: 32, offset: 1536)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4346, file: !145, line: 305, baseType: !192, size: 160, offset: 1568)
!4384 = !{!4385, !4386, !4387, !4388}
!4385 = !DILocalVariable(name: "fp", arg: 1, scope: !4340, file: !4341, line: 28, type: !4344)
!4386 = !DILocalVariable(name: "offset", arg: 2, scope: !4340, file: !4341, line: 28, type: !1612)
!4387 = !DILocalVariable(name: "whence", arg: 3, scope: !4340, file: !4341, line: 28, type: !34)
!4388 = !DILocalVariable(name: "pos", scope: !4389, file: !4341, line: 116, type: !1612)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !4341, line: 112, column: 5)
!4390 = distinct !DILexicalBlock(scope: !4340, file: !4341, line: 51, column: 7)
!4391 = !DILocation(line: 28, column: 15, scope: !4340)
!4392 = !DILocation(line: 28, column: 25, scope: !4340)
!4393 = !DILocation(line: 28, column: 37, scope: !4340)
!4394 = !DILocation(line: 51, column: 11, scope: !4390)
!4395 = !DILocation(line: 51, column: 31, scope: !4390)
!4396 = !DILocation(line: 51, column: 24, scope: !4390)
!4397 = !DILocation(line: 52, column: 7, scope: !4390)
!4398 = !DILocation(line: 52, column: 14, scope: !4399)
!4399 = !DILexicalBlockFile(scope: !4390, file: !4341, discriminator: 1)
!4400 = !DILocation(line: 52, column: 35, scope: !4399)
!4401 = !{!937, !736, i64 32}
!4402 = !DILocation(line: 52, column: 28, scope: !4399)
!4403 = !DILocation(line: 53, column: 7, scope: !4390)
!4404 = !DILocation(line: 53, column: 14, scope: !4399)
!4405 = !{!937, !736, i64 72}
!4406 = !DILocation(line: 53, column: 28, scope: !4399)
!4407 = !DILocation(line: 51, column: 7, scope: !4408)
!4408 = !DILexicalBlockFile(scope: !4340, file: !4341, discriminator: 1)
!4409 = !DILocation(line: 116, column: 26, scope: !4389)
!4410 = !DILocation(line: 116, column: 19, scope: !4411)
!4411 = !DILexicalBlockFile(scope: !4389, file: !4341, discriminator: 1)
!4412 = !DILocation(line: 116, column: 13, scope: !4389)
!4413 = !DILocation(line: 117, column: 15, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4389, file: !4341, line: 117, column: 11)
!4415 = !DILocation(line: 117, column: 11, scope: !4389)
!4416 = !DILocation(line: 127, column: 11, scope: !4389)
!4417 = !DILocation(line: 127, column: 18, scope: !4389)
!4418 = !DILocation(line: 128, column: 11, scope: !4389)
!4419 = !DILocation(line: 128, column: 19, scope: !4389)
!4420 = !{!937, !920, i64 144}
!4421 = !DILocation(line: 159, column: 7, scope: !4389)
!4422 = !DILocation(line: 161, column: 10, scope: !4340)
!4423 = !DILocation(line: 161, column: 3, scope: !4340)
!4424 = !DILocation(line: 162, column: 1, scope: !4340)
!4425 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4426, file: !4426, line: 334, type: !4427, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !709, variables: !4441)
!4426 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!24, !4429, !32, !24, !4430}
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1923, line: 107, baseType: !4432)
!4432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1923, line: 95, baseType: !4433)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 83, size: 64, elements: !4434)
!4434 = !{!4435, !4436}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4433, file: !1923, line: 85, baseType: !34, size: 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4433, file: !1923, line: 94, baseType: !4437, size: 32, offset: 32)
!4437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4433, file: !1923, line: 86, size: 32, elements: !4438)
!4438 = !{!4439, !4440}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4437, file: !1923, line: 89, baseType: !127, size: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4437, file: !1923, line: 93, baseType: !1933, size: 32)
!4441 = !{!4442, !4443, !4444, !4445, !4446, !4447, !4448}
!4442 = !DILocalVariable(name: "pwc", arg: 1, scope: !4425, file: !4426, line: 334, type: !4429)
!4443 = !DILocalVariable(name: "s", arg: 2, scope: !4425, file: !4426, line: 334, type: !32)
!4444 = !DILocalVariable(name: "n", arg: 3, scope: !4425, file: !4426, line: 334, type: !24)
!4445 = !DILocalVariable(name: "ps", arg: 4, scope: !4425, file: !4426, line: 334, type: !4430)
!4446 = !DILocalVariable(name: "ret", scope: !4425, file: !4426, line: 336, type: !24)
!4447 = !DILocalVariable(name: "wc", scope: !4425, file: !4426, line: 337, type: !1938)
!4448 = !DILocalVariable(name: "uc", scope: !4449, file: !4426, line: 398, type: !31)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !4426, line: 397, column: 5)
!4450 = distinct !DILexicalBlock(scope: !4425, file: !4426, line: 396, column: 7)
!4451 = !DILocation(line: 334, column: 23, scope: !4425)
!4452 = !DILocation(line: 334, column: 40, scope: !4425)
!4453 = !DILocation(line: 334, column: 50, scope: !4425)
!4454 = !DILocation(line: 334, column: 64, scope: !4425)
!4455 = !DILocation(line: 337, column: 3, scope: !4425)
!4456 = !DILocation(line: 353, column: 9, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4425, file: !4426, line: 353, column: 7)
!4458 = !DILocation(line: 353, column: 7, scope: !4425)
!4459 = !DILocation(line: 388, column: 9, scope: !4425)
!4460 = !DILocation(line: 336, column: 10, scope: !4425)
!4461 = !DILocation(line: 396, column: 19, scope: !4450)
!4462 = !DILocation(line: 396, column: 31, scope: !4463)
!4463 = !DILexicalBlockFile(scope: !4450, file: !4426, discriminator: 1)
!4464 = !DILocation(line: 396, column: 26, scope: !4450)
!4465 = !DILocation(line: 396, column: 41, scope: !4466)
!4466 = !DILexicalBlockFile(scope: !4450, file: !4426, discriminator: 2)
!4467 = !DILocation(line: 396, column: 7, scope: !4468)
!4468 = !DILexicalBlockFile(scope: !4425, file: !4426, discriminator: 2)
!4469 = !DILocation(line: 398, column: 26, scope: !4449)
!4470 = !DILocation(line: 398, column: 21, scope: !4449)
!4471 = !DILocation(line: 399, column: 14, scope: !4449)
!4472 = !DILocation(line: 399, column: 12, scope: !4449)
!4473 = !DILocation(line: 405, column: 1, scope: !4425)
!4474 = distinct !DISubprogram(name: "close_stream", scope: !4475, file: !4475, line: 56, type: !4476, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !712, variables: !4518)
!4475 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!34, !4478}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 49, baseType: !4480)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4480, file: !145, line: 242, baseType: !34, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4480, file: !145, line: 247, baseType: !21, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4480, file: !145, line: 248, baseType: !21, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4480, file: !145, line: 249, baseType: !21, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4480, file: !145, line: 250, baseType: !21, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4480, file: !145, line: 251, baseType: !21, size: 64, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4480, file: !145, line: 252, baseType: !21, size: 64, offset: 384)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4480, file: !145, line: 253, baseType: !21, size: 64, offset: 448)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4480, file: !145, line: 254, baseType: !21, size: 64, offset: 512)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4480, file: !145, line: 256, baseType: !21, size: 64, offset: 576)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4480, file: !145, line: 257, baseType: !21, size: 64, offset: 640)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4480, file: !145, line: 258, baseType: !21, size: 64, offset: 704)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4480, file: !145, line: 260, baseType: !4495, size: 64, offset: 768)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, elements: !4497)
!4497 = !{!4498, !4499, !4501}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4496, file: !145, line: 157, baseType: !4495, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4496, file: !145, line: 158, baseType: !4500, size: 64, offset: 64)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4496, file: !145, line: 162, baseType: !34, size: 32, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4480, file: !145, line: 262, baseType: !4500, size: 64, offset: 832)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4480, file: !145, line: 264, baseType: !34, size: 32, offset: 896)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4480, file: !145, line: 268, baseType: !34, size: 32, offset: 928)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4480, file: !145, line: 270, baseType: !171, size: 64, offset: 960)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4480, file: !145, line: 274, baseType: !35, size: 16, offset: 1024)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4480, file: !145, line: 275, baseType: !175, size: 8, offset: 1040)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4480, file: !145, line: 276, baseType: !177, size: 8, offset: 1048)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4480, file: !145, line: 280, baseType: !181, size: 64, offset: 1088)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4480, file: !145, line: 289, baseType: !184, size: 64, offset: 1152)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4480, file: !145, line: 297, baseType: !23, size: 64, offset: 1216)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4480, file: !145, line: 298, baseType: !23, size: 64, offset: 1280)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4480, file: !145, line: 299, baseType: !23, size: 64, offset: 1344)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4480, file: !145, line: 300, baseType: !23, size: 64, offset: 1408)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4480, file: !145, line: 302, baseType: !24, size: 64, offset: 1472)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4480, file: !145, line: 303, baseType: !34, size: 32, offset: 1536)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4480, file: !145, line: 305, baseType: !192, size: 160, offset: 1568)
!4518 = !{!4519, !4520, !4522, !4523}
!4519 = !DILocalVariable(name: "stream", arg: 1, scope: !4474, file: !4475, line: 56, type: !4478)
!4520 = !DILocalVariable(name: "some_pending", scope: !4474, file: !4475, line: 58, type: !4521)
!4521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!4522 = !DILocalVariable(name: "prev_fail", scope: !4474, file: !4475, line: 59, type: !4521)
!4523 = !DILocalVariable(name: "fclose_fail", scope: !4474, file: !4475, line: 60, type: !4521)
!4524 = !DILocation(line: 56, column: 21, scope: !4474)
!4525 = !DILocation(line: 58, column: 30, scope: !4474)
!4526 = !DILocalVariable(name: "__stream", arg: 1, scope: !4527, file: !928, line: 132, type: !4478)
!4527 = distinct !DISubprogram(name: "ferror_unlocked", scope: !928, file: !928, line: 132, type: !4476, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !712, variables: !4528)
!4528 = !{!4526}
!4529 = !DILocation(line: 132, column: 1, scope: !4527, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 59, column: 27, scope: !4474)
!4531 = !DILocation(line: 134, column: 10, scope: !4527, inlinedAt: !4530)
!4532 = !DILocation(line: 59, column: 43, scope: !4474)
!4533 = !DILocation(line: 60, column: 29, scope: !4474)
!4534 = !DILocation(line: 60, column: 45, scope: !4474)
!4535 = !DILocation(line: 70, column: 17, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4474, file: !4475, line: 70, column: 7)
!4537 = !DILocation(line: 70, column: 33, scope: !4538)
!4538 = !DILexicalBlockFile(scope: !4536, file: !4475, discriminator: 1)
!4539 = !DILocation(line: 70, column: 53, scope: !4540)
!4540 = !DILexicalBlockFile(scope: !4536, file: !4475, discriminator: 3)
!4541 = !DILocation(line: 70, column: 7, scope: !4542)
!4542 = !DILexicalBlockFile(scope: !4474, file: !4475, discriminator: 3)
!4543 = !DILocation(line: 72, column: 11, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4536, file: !4475, line: 71, column: 5)
!4545 = !DILocation(line: 73, column: 9, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4544, file: !4475, line: 72, column: 11)
!4547 = !DILocation(line: 73, column: 15, scope: !4546)
!4548 = !DILocation(line: 78, column: 1, scope: !4474)
!4549 = distinct !DISubprogram(name: "hard_locale", scope: !4550, file: !4550, line: 38, type: !4551, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !714, variables: !4553)
!4550 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!229, !34}
!4553 = !{!4554, !4555, !4556, !4557, !4564, !4565, !4567, !4568, !4570, !4571, !4573}
!4554 = !DILocalVariable(name: "category", arg: 1, scope: !4549, file: !4550, line: 38, type: !34)
!4555 = !DILocalVariable(name: "hard", scope: !4549, file: !4550, line: 40, type: !229)
!4556 = !DILocalVariable(name: "p", scope: !4549, file: !4550, line: 41, type: !32)
!4557 = !DILocalVariable(name: "__s1_len", scope: !4558, file: !4550, line: 47, type: !24)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !4550, line: 47, column: 15)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !4550, line: 47, column: 15)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !4550, line: 46, column: 9)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !4550, line: 45, column: 11)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !4550, line: 44, column: 5)
!4563 = distinct !DILexicalBlock(scope: !4549, file: !4550, line: 43, column: 7)
!4564 = !DILocalVariable(name: "__s2_len", scope: !4558, file: !4550, line: 47, type: !24)
!4565 = !DILocalVariable(name: "__s2", scope: !4566, file: !4550, line: 47, type: !29)
!4566 = distinct !DILexicalBlock(scope: !4558, file: !4550, line: 47, column: 15)
!4567 = !DILocalVariable(name: "__result", scope: !4566, file: !4550, line: 47, type: !34)
!4568 = !DILocalVariable(name: "__s1_len", scope: !4569, file: !4550, line: 47, type: !24)
!4569 = distinct !DILexicalBlock(scope: !4559, file: !4550, line: 47, column: 39)
!4570 = !DILocalVariable(name: "__s2_len", scope: !4569, file: !4550, line: 47, type: !24)
!4571 = !DILocalVariable(name: "__s2", scope: !4572, file: !4550, line: 47, type: !29)
!4572 = distinct !DILexicalBlock(scope: !4569, file: !4550, line: 47, column: 39)
!4573 = !DILocalVariable(name: "__result", scope: !4572, file: !4550, line: 47, type: !34)
!4574 = !DILocation(line: 38, column: 18, scope: !4549)
!4575 = !DILocation(line: 40, column: 8, scope: !4549)
!4576 = !DILocation(line: 41, column: 19, scope: !4549)
!4577 = !DILocation(line: 41, column: 15, scope: !4549)
!4578 = !DILocation(line: 43, column: 7, scope: !4563)
!4579 = !DILocation(line: 43, column: 7, scope: !4549)
!4580 = !DILocation(line: 47, column: 15, scope: !4558)
!4581 = !DILocation(line: 47, column: 15, scope: !4566)
!4582 = !DILocation(line: 47, column: 15, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !4566, file: !4550, discriminator: 2)
!4584 = !DILocation(line: 47, column: 15, scope: !4585)
!4585 = !DILexicalBlockFile(scope: !4586, file: !4550, discriminator: 3)
!4586 = distinct !DILexicalBlock(scope: !4566, file: !4550, line: 47, column: 15)
!4587 = !DILocation(line: 47, column: 15, scope: !4588)
!4588 = !DILexicalBlockFile(scope: !4586, file: !4550, discriminator: 2)
!4589 = !DILocation(line: 47, column: 15, scope: !4590)
!4590 = !DILexicalBlockFile(scope: !4591, file: !4550, discriminator: 4)
!4591 = distinct !DILexicalBlock(scope: !4586, file: !4550, line: 47, column: 15)
!4592 = !DILocation(line: 47, column: 15, scope: !4593)
!4593 = !DILexicalBlockFile(scope: !4558, file: !4550, discriminator: 11)
!4594 = !DILocation(line: 47, column: 36, scope: !4595)
!4595 = !DILexicalBlockFile(scope: !4559, file: !4550, discriminator: 13)
!4596 = !DILocation(line: 47, column: 39, scope: !4569)
!4597 = !DILocation(line: 47, column: 39, scope: !4598)
!4598 = !DILexicalBlockFile(scope: !4569, file: !4550, discriminator: 26)
!4599 = !DILocation(line: 47, column: 59, scope: !4600)
!4600 = !DILexicalBlockFile(scope: !4559, file: !4550, discriminator: 27)
!4601 = !DILocation(line: 47, column: 15, scope: !4602)
!4602 = !DILexicalBlockFile(scope: !4560, file: !4550, discriminator: 27)
!4603 = !DILocation(line: 48, column: 13, scope: !4559)
!4604 = !DILocation(line: 71, column: 3, scope: !4549)
!4605 = distinct !DISubprogram(name: "locale_charset", scope: !673, file: !673, line: 393, type: !4606, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !330, variables: !4608)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!32}
!4608 = !{!4609, !4610, !4611, !4616}
!4609 = !DILocalVariable(name: "codeset", scope: !4605, file: !673, line: 395, type: !32)
!4610 = !DILocalVariable(name: "aliases", scope: !4605, file: !673, line: 396, type: !32)
!4611 = !DILocalVariable(name: "__s1_len", scope: !4612, file: !673, line: 592, type: !24)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !673, line: 592, column: 9)
!4613 = distinct !DILexicalBlock(scope: !4614, file: !673, line: 592, column: 9)
!4614 = distinct !DILexicalBlock(scope: !4615, file: !673, line: 589, column: 3)
!4615 = distinct !DILexicalBlock(scope: !4605, file: !673, line: 589, column: 3)
!4616 = !DILocalVariable(name: "__s2_len", scope: !4612, file: !673, line: 592, type: !24)
!4617 = !DILocalVariable(name: "buf1", scope: !4618, file: !673, line: 196, type: !4685)
!4618 = distinct !DILexicalBlock(scope: !4619, file: !673, line: 194, column: 21)
!4619 = distinct !DILexicalBlock(scope: !4620, file: !673, line: 193, column: 19)
!4620 = distinct !DILexicalBlock(scope: !4621, file: !673, line: 193, column: 19)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !673, line: 188, column: 17)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !673, line: 181, column: 19)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !673, line: 177, column: 13)
!4624 = distinct !DILexicalBlock(scope: !4625, file: !673, line: 173, column: 15)
!4625 = distinct !DILexicalBlock(scope: !4626, file: !673, line: 161, column: 9)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !673, line: 157, column: 11)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !673, line: 130, column: 5)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !673, line: 129, column: 7)
!4629 = distinct !DISubprogram(name: "get_charset_aliases", scope: !673, file: !673, line: 124, type: !4606, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !330, variables: !4630)
!4630 = !{!4631, !4632, !4633, !4634, !4635, !4637, !4638, !4639, !4640, !4681, !4682, !4683, !4617, !4684, !4688, !4689, !4690}
!4631 = !DILocalVariable(name: "cp", scope: !4629, file: !673, line: 126, type: !32)
!4632 = !DILocalVariable(name: "dir", scope: !4627, file: !673, line: 132, type: !32)
!4633 = !DILocalVariable(name: "base", scope: !4627, file: !673, line: 133, type: !32)
!4634 = !DILocalVariable(name: "file_name", scope: !4627, file: !673, line: 134, type: !21)
!4635 = !DILocalVariable(name: "dir_len", scope: !4636, file: !673, line: 144, type: !24)
!4636 = distinct !DILexicalBlock(scope: !4627, file: !673, line: 143, column: 7)
!4637 = !DILocalVariable(name: "base_len", scope: !4636, file: !673, line: 145, type: !24)
!4638 = !DILocalVariable(name: "add_slash", scope: !4636, file: !673, line: 146, type: !34)
!4639 = !DILocalVariable(name: "fd", scope: !4625, file: !673, line: 162, type: !34)
!4640 = !DILocalVariable(name: "fp", scope: !4623, file: !673, line: 178, type: !4641)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 49, baseType: !4643)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 241, size: 1728, elements: !4644)
!4644 = !{!4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4643, file: !145, line: 242, baseType: !34, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4643, file: !145, line: 247, baseType: !21, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4643, file: !145, line: 248, baseType: !21, size: 64, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4643, file: !145, line: 249, baseType: !21, size: 64, offset: 192)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4643, file: !145, line: 250, baseType: !21, size: 64, offset: 256)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4643, file: !145, line: 251, baseType: !21, size: 64, offset: 320)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4643, file: !145, line: 252, baseType: !21, size: 64, offset: 384)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4643, file: !145, line: 253, baseType: !21, size: 64, offset: 448)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4643, file: !145, line: 254, baseType: !21, size: 64, offset: 512)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4643, file: !145, line: 256, baseType: !21, size: 64, offset: 576)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4643, file: !145, line: 257, baseType: !21, size: 64, offset: 640)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4643, file: !145, line: 258, baseType: !21, size: 64, offset: 704)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4643, file: !145, line: 260, baseType: !4658, size: 64, offset: 768)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 156, size: 192, elements: !4660)
!4660 = !{!4661, !4662, !4664}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4659, file: !145, line: 157, baseType: !4658, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4659, file: !145, line: 158, baseType: !4663, size: 64, offset: 64)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4659, file: !145, line: 162, baseType: !34, size: 32, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4643, file: !145, line: 262, baseType: !4663, size: 64, offset: 832)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4643, file: !145, line: 264, baseType: !34, size: 32, offset: 896)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4643, file: !145, line: 268, baseType: !34, size: 32, offset: 928)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4643, file: !145, line: 270, baseType: !171, size: 64, offset: 960)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4643, file: !145, line: 274, baseType: !35, size: 16, offset: 1024)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4643, file: !145, line: 275, baseType: !175, size: 8, offset: 1040)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4643, file: !145, line: 276, baseType: !177, size: 8, offset: 1048)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4643, file: !145, line: 280, baseType: !181, size: 64, offset: 1088)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4643, file: !145, line: 289, baseType: !184, size: 64, offset: 1152)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4643, file: !145, line: 297, baseType: !23, size: 64, offset: 1216)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4643, file: !145, line: 298, baseType: !23, size: 64, offset: 1280)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4643, file: !145, line: 299, baseType: !23, size: 64, offset: 1344)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4643, file: !145, line: 300, baseType: !23, size: 64, offset: 1408)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4643, file: !145, line: 302, baseType: !24, size: 64, offset: 1472)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4643, file: !145, line: 303, baseType: !34, size: 32, offset: 1536)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4643, file: !145, line: 305, baseType: !192, size: 160, offset: 1568)
!4681 = !DILocalVariable(name: "res_ptr", scope: !4621, file: !673, line: 190, type: !21)
!4682 = !DILocalVariable(name: "res_size", scope: !4621, file: !673, line: 191, type: !24)
!4683 = !DILocalVariable(name: "c", scope: !4618, file: !673, line: 195, type: !34)
!4684 = !DILocalVariable(name: "buf2", scope: !4618, file: !673, line: 197, type: !4685)
!4685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 408, elements: !4686)
!4686 = !{!4687}
!4687 = !DISubrange(count: 51)
!4688 = !DILocalVariable(name: "l1", scope: !4618, file: !673, line: 198, type: !24)
!4689 = !DILocalVariable(name: "l2", scope: !4618, file: !673, line: 198, type: !24)
!4690 = !DILocalVariable(name: "old_res_ptr", scope: !4618, file: !673, line: 199, type: !21)
!4691 = !DILocation(line: 196, column: 28, scope: !4618, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 589, column: 18, scope: !4615)
!4693 = !DILocation(line: 197, column: 28, scope: !4618, inlinedAt: !4692)
!4694 = !DILocation(line: 403, column: 13, scope: !4605)
!4695 = !DILocation(line: 395, column: 15, scope: !4605)
!4696 = !DILocation(line: 584, column: 15, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4605, file: !673, line: 584, column: 7)
!4698 = !DILocation(line: 584, column: 7, scope: !4605)
!4699 = !DILocation(line: 128, column: 8, scope: !4629, inlinedAt: !4692)
!4700 = !DILocation(line: 126, column: 15, scope: !4629, inlinedAt: !4692)
!4701 = !DILocation(line: 129, column: 10, scope: !4628, inlinedAt: !4692)
!4702 = !DILocation(line: 129, column: 7, scope: !4629, inlinedAt: !4692)
!4703 = !DILocation(line: 138, column: 13, scope: !4627, inlinedAt: !4692)
!4704 = !DILocation(line: 132, column: 19, scope: !4627, inlinedAt: !4692)
!4705 = !DILocation(line: 139, column: 15, scope: !4706, inlinedAt: !4692)
!4706 = distinct !DILexicalBlock(scope: !4627, file: !673, line: 139, column: 11)
!4707 = !DILocation(line: 139, column: 23, scope: !4706, inlinedAt: !4692)
!4708 = !DILocation(line: 139, column: 26, scope: !4709, inlinedAt: !4692)
!4709 = !DILexicalBlockFile(scope: !4706, file: !673, discriminator: 1)
!4710 = !DILocation(line: 139, column: 33, scope: !4709, inlinedAt: !4692)
!4711 = !DILocation(line: 139, column: 11, scope: !4712, inlinedAt: !4692)
!4712 = !DILexicalBlockFile(scope: !4627, file: !673, discriminator: 1)
!4713 = !DILocation(line: 140, column: 9, scope: !4706, inlinedAt: !4692)
!4714 = !DILocation(line: 144, column: 26, scope: !4636, inlinedAt: !4692)
!4715 = !DILocation(line: 144, column: 16, scope: !4636, inlinedAt: !4692)
!4716 = !DILocation(line: 145, column: 16, scope: !4636, inlinedAt: !4692)
!4717 = !DILocation(line: 146, column: 34, scope: !4636, inlinedAt: !4692)
!4718 = !DILocation(line: 146, column: 38, scope: !4636, inlinedAt: !4692)
!4719 = !DILocation(line: 146, column: 42, scope: !4720, inlinedAt: !4692)
!4720 = !DILexicalBlockFile(scope: !4636, file: !673, discriminator: 1)
!4721 = !DILocation(line: 146, column: 41, scope: !4720, inlinedAt: !4692)
!4722 = !DILocation(line: 147, column: 48, scope: !4636, inlinedAt: !4692)
!4723 = !DILocation(line: 147, column: 46, scope: !4636, inlinedAt: !4692)
!4724 = !DILocation(line: 147, column: 69, scope: !4636, inlinedAt: !4692)
!4725 = !DILocation(line: 147, column: 30, scope: !4636, inlinedAt: !4692)
!4726 = !DILocation(line: 134, column: 13, scope: !4627, inlinedAt: !4692)
!4727 = !DILocation(line: 148, column: 13, scope: !4636, inlinedAt: !4692)
!4728 = !DILocation(line: 150, column: 13, scope: !4729, inlinedAt: !4692)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !673, line: 149, column: 11)
!4730 = distinct !DILexicalBlock(scope: !4636, file: !673, line: 148, column: 13)
!4731 = !DILocation(line: 151, column: 17, scope: !4729, inlinedAt: !4692)
!4732 = !DILocation(line: 152, column: 34, scope: !4733, inlinedAt: !4692)
!4733 = distinct !DILexicalBlock(scope: !4729, file: !673, line: 151, column: 17)
!4734 = !DILocation(line: 153, column: 41, scope: !4729, inlinedAt: !4692)
!4735 = !DILocation(line: 153, column: 13, scope: !4729, inlinedAt: !4692)
!4736 = !DILocation(line: 157, column: 11, scope: !4627, inlinedAt: !4692)
!4737 = !DILocation(line: 171, column: 16, scope: !4625, inlinedAt: !4692)
!4738 = !DILocation(line: 162, column: 15, scope: !4625, inlinedAt: !4692)
!4739 = !DILocation(line: 173, column: 18, scope: !4624, inlinedAt: !4692)
!4740 = !DILocation(line: 173, column: 15, scope: !4625, inlinedAt: !4692)
!4741 = !DILocation(line: 180, column: 20, scope: !4623, inlinedAt: !4692)
!4742 = !DILocation(line: 178, column: 21, scope: !4623, inlinedAt: !4692)
!4743 = !DILocation(line: 181, column: 22, scope: !4622, inlinedAt: !4692)
!4744 = !DILocation(line: 181, column: 19, scope: !4623, inlinedAt: !4692)
!4745 = !DILocation(line: 190, column: 25, scope: !4621, inlinedAt: !4692)
!4746 = !DILocation(line: 184, column: 19, scope: !4747, inlinedAt: !4692)
!4747 = distinct !DILexicalBlock(scope: !4622, file: !673, line: 182, column: 17)
!4748 = !DILocation(line: 186, column: 17, scope: !4747, inlinedAt: !4692)
!4749 = !DILocation(line: 191, column: 26, scope: !4621, inlinedAt: !4692)
!4750 = !DILocation(line: 196, column: 23, scope: !4618, inlinedAt: !4692)
!4751 = !DILocation(line: 197, column: 23, scope: !4618, inlinedAt: !4692)
!4752 = !DILocalVariable(name: "__fp", arg: 1, scope: !4753, file: !928, line: 63, type: !4641)
!4753 = distinct !DISubprogram(name: "getc_unlocked", scope: !928, file: !928, line: 63, type: !4754, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !330, variables: !4756)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!34, !4641}
!4756 = !{!4752}
!4757 = !DILocation(line: 63, column: 22, scope: !4753, inlinedAt: !4758)
!4758 = distinct !DILocation(line: 201, column: 27, scope: !4618, inlinedAt: !4692)
!4759 = !DILocation(line: 65, column: 10, scope: !4753, inlinedAt: !4758)
!4760 = !DILocation(line: 65, column: 10, scope: !4761, inlinedAt: !4758)
!4761 = !DILexicalBlockFile(scope: !4753, file: !928, discriminator: 1)
!4762 = !DILocation(line: 65, column: 10, scope: !4763, inlinedAt: !4758)
!4763 = !DILexicalBlockFile(scope: !4753, file: !928, discriminator: 2)
!4764 = !DILocation(line: 65, column: 10, scope: !4765, inlinedAt: !4758)
!4765 = !DILexicalBlockFile(scope: !4753, file: !928, discriminator: 3)
!4766 = !DILocation(line: 195, column: 27, scope: !4618, inlinedAt: !4692)
!4767 = !DILocation(line: 202, column: 27, scope: !4618, inlinedAt: !4692)
!4768 = !DILocation(line: 63, column: 22, scope: !4753, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 210, column: 33, scope: !4770, inlinedAt: !4692)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !673, line: 207, column: 25)
!4771 = distinct !DILexicalBlock(scope: !4618, file: !673, line: 206, column: 27)
!4772 = !DILocation(line: 65, column: 10, scope: !4753, inlinedAt: !4769)
!4773 = !DILocation(line: 65, column: 10, scope: !4761, inlinedAt: !4769)
!4774 = !DILocation(line: 65, column: 10, scope: !4763, inlinedAt: !4769)
!4775 = !DILocation(line: 65, column: 10, scope: !4765, inlinedAt: !4769)
!4776 = !DILocation(line: 210, column: 29, scope: !4777, inlinedAt: !4692)
!4777 = !DILexicalBlockFile(scope: !4770, file: !673, discriminator: 1)
!4778 = distinct !{!4778, !4779, !4780}
!4779 = !DILocation(line: 193, column: 19, scope: !4620)
!4780 = !DILocation(line: 241, column: 21, scope: !4620)
!4781 = !DILocation(line: 216, column: 23, scope: !4618, inlinedAt: !4692)
!4782 = !DILocation(line: 217, column: 27, scope: !4783, inlinedAt: !4692)
!4783 = distinct !DILexicalBlock(scope: !4618, file: !673, line: 217, column: 27)
!4784 = !DILocation(line: 217, column: 64, scope: !4783, inlinedAt: !4692)
!4785 = !DILocation(line: 217, column: 27, scope: !4618, inlinedAt: !4692)
!4786 = !DILocation(line: 219, column: 28, scope: !4618, inlinedAt: !4692)
!4787 = !DILocation(line: 198, column: 30, scope: !4618, inlinedAt: !4692)
!4788 = !DILocation(line: 220, column: 28, scope: !4618, inlinedAt: !4692)
!4789 = !DILocation(line: 198, column: 34, scope: !4618, inlinedAt: !4692)
!4790 = !DILocation(line: 199, column: 29, scope: !4618, inlinedAt: !4692)
!4791 = !DILocation(line: 222, column: 36, scope: !4792, inlinedAt: !4692)
!4792 = distinct !DILexicalBlock(scope: !4618, file: !673, line: 222, column: 27)
!4793 = !DILocation(line: 222, column: 27, scope: !4618, inlinedAt: !4692)
!4794 = !DILocation(line: 225, column: 63, scope: !4795, inlinedAt: !4692)
!4795 = distinct !DILexicalBlock(scope: !4792, file: !673, line: 223, column: 25)
!4796 = !DILocation(line: 225, column: 46, scope: !4795, inlinedAt: !4692)
!4797 = !DILocation(line: 226, column: 25, scope: !4795, inlinedAt: !4692)
!4798 = !DILocation(line: 229, column: 36, scope: !4799, inlinedAt: !4692)
!4799 = distinct !DILexicalBlock(scope: !4792, file: !673, line: 228, column: 25)
!4800 = !DILocation(line: 230, column: 73, scope: !4799, inlinedAt: !4692)
!4801 = !DILocation(line: 230, column: 46, scope: !4799, inlinedAt: !4692)
!4802 = !DILocation(line: 232, column: 35, scope: !4803, inlinedAt: !4692)
!4803 = distinct !DILexicalBlock(scope: !4618, file: !673, line: 232, column: 27)
!4804 = !DILocation(line: 232, column: 27, scope: !4618, inlinedAt: !4692)
!4805 = !DILocation(line: 236, column: 27, scope: !4806, inlinedAt: !4692)
!4806 = distinct !DILexicalBlock(scope: !4803, file: !673, line: 233, column: 25)
!4807 = !DILocation(line: 237, column: 27, scope: !4806, inlinedAt: !4692)
!4808 = !DILocation(line: 239, column: 39, scope: !4618, inlinedAt: !4692)
!4809 = !DILocation(line: 239, column: 50, scope: !4618, inlinedAt: !4692)
!4810 = !DILocation(line: 239, column: 61, scope: !4618, inlinedAt: !4692)
!4811 = !DILocalVariable(name: "__dest", arg: 1, scope: !4812, file: !4813, line: 107, type: !4816)
!4812 = distinct !DISubprogram(name: "strcpy", scope: !4813, file: !4813, line: 107, type: !4814, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !330, variables: !4818)
!4813 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!21, !4816, !4817}
!4816 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!4817 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!4818 = !{!4811, !4819}
!4819 = !DILocalVariable(name: "__src", arg: 2, scope: !4812, file: !4813, line: 107, type: !4817)
!4820 = !DILocation(line: 107, column: 1, scope: !4812, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 239, column: 23, scope: !4618, inlinedAt: !4692)
!4822 = !DILocation(line: 109, column: 49, scope: !4812, inlinedAt: !4821)
!4823 = !DILocation(line: 109, column: 10, scope: !4812, inlinedAt: !4821)
!4824 = !DILocation(line: 107, column: 1, scope: !4812, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 240, column: 23, scope: !4618, inlinedAt: !4692)
!4826 = !DILocation(line: 109, column: 49, scope: !4812, inlinedAt: !4825)
!4827 = !DILocation(line: 109, column: 10, scope: !4812, inlinedAt: !4825)
!4828 = !DILocation(line: 241, column: 21, scope: !4619, inlinedAt: !4692)
!4829 = !DILocation(line: 242, column: 19, scope: !4621, inlinedAt: !4692)
!4830 = !DILocation(line: 243, column: 32, scope: !4831, inlinedAt: !4692)
!4831 = distinct !DILexicalBlock(scope: !4621, file: !673, line: 243, column: 23)
!4832 = !DILocation(line: 243, column: 23, scope: !4621, inlinedAt: !4692)
!4833 = !DILocation(line: 247, column: 33, scope: !4834, inlinedAt: !4692)
!4834 = distinct !DILexicalBlock(scope: !4831, file: !673, line: 246, column: 21)
!4835 = !DILocation(line: 247, column: 45, scope: !4834, inlinedAt: !4692)
!4836 = !DILocation(line: 253, column: 11, scope: !4625, inlinedAt: !4692)
!4837 = !DILocation(line: 377, column: 23, scope: !4627, inlinedAt: !4692)
!4838 = !DILocation(line: 378, column: 5, scope: !4627, inlinedAt: !4692)
!4839 = !DILocation(line: 396, column: 15, scope: !4605)
!4840 = !DILocation(line: 590, column: 8, scope: !4614)
!4841 = !DILocation(line: 590, column: 17, scope: !4614)
!4842 = !DILocation(line: 589, column: 3, scope: !4843)
!4843 = !DILexicalBlockFile(scope: !4615, file: !673, discriminator: 1)
!4844 = !DILocation(line: 592, column: 9, scope: !4612)
!4845 = !DILocation(line: 592, column: 35, scope: !4613)
!4846 = !DILocation(line: 593, column: 9, scope: !4613)
!4847 = !DILocation(line: 593, column: 24, scope: !4848)
!4848 = !DILexicalBlockFile(scope: !4613, file: !673, discriminator: 1)
!4849 = !DILocation(line: 593, column: 31, scope: !4848)
!4850 = !DILocation(line: 593, column: 34, scope: !4851)
!4851 = !DILexicalBlockFile(scope: !4613, file: !673, discriminator: 2)
!4852 = !DILocation(line: 593, column: 45, scope: !4851)
!4853 = !DILocation(line: 592, column: 9, scope: !4854)
!4854 = !DILexicalBlockFile(scope: !4614, file: !673, discriminator: 1)
!4855 = !DILocation(line: 595, column: 29, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4613, file: !673, line: 594, column: 7)
!4857 = !DILocation(line: 595, column: 27, scope: !4856)
!4858 = !DILocation(line: 595, column: 46, scope: !4856)
!4859 = !DILocation(line: 596, column: 9, scope: !4856)
!4860 = !DILocation(line: 591, column: 19, scope: !4614)
!4861 = !DILocation(line: 591, column: 36, scope: !4614)
!4862 = !DILocation(line: 591, column: 16, scope: !4614)
!4863 = !DILocation(line: 591, column: 52, scope: !4854)
!4864 = !DILocation(line: 591, column: 69, scope: !4614)
!4865 = !DILocation(line: 591, column: 49, scope: !4614)
!4866 = distinct !{!4866, !4867, !4868}
!4867 = !DILocation(line: 589, column: 3, scope: !4615)
!4868 = !DILocation(line: 597, column: 7, scope: !4615)
!4869 = !DILocation(line: 602, column: 7, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4605, file: !673, line: 602, column: 7)
!4871 = !DILocation(line: 602, column: 18, scope: !4870)
!4872 = !DILocation(line: 602, column: 7, scope: !4605)
!4873 = !DILocation(line: 612, column: 3, scope: !4605)
