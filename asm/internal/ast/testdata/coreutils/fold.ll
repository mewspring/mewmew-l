; ModuleID = 'coreutils-8.27/src/fold.bc'
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
@.str.2 = private unnamed_addr constant [60 x i8] c"Wrap input lines in each FILE, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [147 x i8] c"  -b, --bytes         count bytes rather than columns\0A  -s, --spaces        break at spaces\0A  -w, --width=WIDTH   use WIDTH columns instead of 80\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fold\00", align 1
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
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@count_bytes = internal unnamed_addr global i1 false, align 1
@break_spaces = internal unnamed_addr global i1 false, align 1
@shortopts = internal constant [35 x i8] c"bsw:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !0
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !98
@optarg = external local_unnamed_addr global i8*, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fold_file.allocated_out = internal global i64 0, align 8, !dbg !213
@fold_file.line_out = internal unnamed_addr global i8* null, align 8, !dbg !112
@.str.31 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !218
@.str.16 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !224
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !229
@.str.19 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.20 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !232
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !239
@.str.38 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.40 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.44, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.50, i32 0, i32 0), i8* null], align 16, !dbg !246
@.str.41 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.42 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.43 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.44 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.45 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.46 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.47 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.48 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.49 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.50 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !258
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !265
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !278
@.str.11.51 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.52 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.53 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.54 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.55 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !285
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !292
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !280
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !294
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
@.str.19.81 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !300
@.str.1.94 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.101 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.102 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !309
@.str.3.121 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.122 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.123 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.124 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.125 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  br label %45, !dbg !741

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !743
  %10 = load i8*, i8** @program_name, align 8, !dbg !743, !tbaa !735
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !745
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !747
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !735
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !748
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !749
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !735
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !754
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !756
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !756, !tbaa !735
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !759
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !761
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !735
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !762
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !763
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !735
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !764
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !765
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !765, !tbaa !735
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !766
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !76, metadata !727) #10, !dbg !767
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !76, metadata !727) #10, !dbg !767
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !769
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !770
  %32 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !772
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !87, metadata !727) #10, !dbg !773
  %33 = icmp eq i8* %32, null, !dbg !774
  br i1 %33, label %40, label %34, !dbg !775

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #13, !dbg !776
  %36 = icmp eq i32 %35, 0, !dbg !776
  br i1 %36, label %40, label %37, !dbg !778

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !780
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !782
  br label %40, !dbg !784

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !785
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !786
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !787
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !788
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #14, !dbg !789
  unreachable, !dbg !789
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !790 {
  %3 = alloca [2 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !795, metadata !727), !dbg !806
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !796, metadata !727), !dbg !807
  tail call void @llvm.dbg.value(metadata i64 80, i64 0, metadata !797, metadata !727), !dbg !808
  %4 = load i8*, i8** %1, align 8, !dbg !809, !tbaa !735
  tail call void @set_program_name(i8* %4) #10, !dbg !810
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !811
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !812
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !813
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !814
  store i1 false, i1* @have_read_stdin, align 1
  store i1 false, i1* @count_bytes, align 1
  store i1 false, i1* @break_spaces, align 1
  call void @llvm.dbg.value(metadata i64 80, i64 0, metadata !797, metadata !727), !dbg !808
  %9 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !815
  call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !799, metadata !727), !dbg !817
  %10 = icmp eq i32 %9, -1, !dbg !818
  br i1 %10, label %44, label %11, !dbg !819

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  br label %14, !dbg !819

; <label>:14:                                     ; preds = %11, %39
  %15 = phi i32 [ %9, %11 ], [ %41, %39 ]
  %16 = phi i64 [ 80, %11 ], [ %40, %39 ]
  call void @llvm.lifetime.start(i64 2, i8* nonnull %12) #10, !dbg !820
  call void @llvm.dbg.declare(metadata [2 x i8]* %3, metadata !801, metadata !727), !dbg !821
  switch i32 %15, label %38 [
    i32 98, label %19
    i32 115, label %20
    i32 48, label %21
    i32 49, label %21
    i32 50, label %21
    i32 51, label %21
    i32 52, label %21
    i32 53, label %21
    i32 54, label %21
    i32 55, label %21
    i32 56, label %21
    i32 57, label %21
    i32 119, label %17
    i32 -130, label %34
    i32 -131, label %35
  ], !dbg !822

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** @optarg, align 8, !tbaa !735
  br label %30, !dbg !822

; <label>:19:                                     ; preds = %14
  store i1 true, i1* @count_bytes, align 1
  br label %39, !dbg !823

; <label>:20:                                     ; preds = %14
  store i1 true, i1* @break_spaces, align 1
  br label %39, !dbg !825

; <label>:21:                                     ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %22 = load i8*, i8** @optarg, align 8, !dbg !826, !tbaa !735
  %23 = icmp eq i8* %22, null, !dbg !826
  br i1 %23, label %26, label %24, !dbg !828

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !829
  br label %28, !dbg !830

; <label>:26:                                     ; preds = %21
  %27 = trunc i32 %15 to i8, !dbg !831
  store i8 %27, i8* %12, align 1, !dbg !833, !tbaa !834
  store i8 0, i8* %13, align 1, !dbg !835, !tbaa !834
  br label %28

; <label>:28:                                     ; preds = %26, %24
  %29 = phi i8* [ %12, %26 ], [ %25, %24 ]
  store i8* %29, i8** @optarg, align 8, !tbaa !735
  br label %30, !dbg !836

; <label>:30:                                     ; preds = %17, %28
  %31 = phi i8* [ %18, %17 ], [ %29, %28 ], !dbg !838
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !839
  %33 = call i64 @xdectoumax(i8* %31, i64 1, i64 -10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %32, i32 0) #10, !dbg !840
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !797, metadata !727), !dbg !808
  br label %39, !dbg !841

; <label>:34:                                     ; preds = %14
  call void @usage(i32 0) #15, !dbg !842
  unreachable, !dbg !842

; <label>:35:                                     ; preds = %14
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !843, !tbaa !735
  %37 = load i8*, i8** @Version, align 8, !dbg !843, !tbaa !735
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #10, !dbg !843
  call void @exit(i32 0) #14, !dbg !844
  unreachable, !dbg !843

; <label>:38:                                     ; preds = %14
  call void @usage(i32 1) #15, !dbg !846
  unreachable, !dbg !846

; <label>:39:                                     ; preds = %30, %20, %19
  %40 = phi i64 [ %33, %30 ], [ %16, %20 ], [ %16, %19 ]
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !797, metadata !727), !dbg !808
  call void @llvm.lifetime.end(i64 2, i8* nonnull %12) #10, !dbg !847
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !797, metadata !727), !dbg !808
  %41 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !815
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !799, metadata !727), !dbg !817
  %42 = icmp eq i32 %41, -1, !dbg !818
  br i1 %42, label %43, label %14, !dbg !819, !llvm.loop !848

; <label>:43:                                     ; preds = %39
  br label %44, !dbg !850

; <label>:44:                                     ; preds = %43, %2
  %45 = phi i64 [ 80, %2 ], [ %40, %43 ]
  %46 = load i32, i32* @optind, align 4, !dbg !850, !tbaa !852
  %47 = icmp eq i32 %46, %0, !dbg !854
  br i1 %47, label %52, label %48, !dbg !855

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !800, metadata !727), !dbg !856
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !798, metadata !727), !dbg !857
  %49 = icmp slt i32 %46, %0, !dbg !858
  br i1 %49, label %50, label %67, !dbg !863

; <label>:50:                                     ; preds = %48
  %51 = sext i32 %46 to i64, !dbg !865
  br label %55, !dbg !865

; <label>:52:                                     ; preds = %44
  %53 = call fastcc zeroext i1 @fold_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 %45), !dbg !866
  %54 = zext i1 %53 to i8, !dbg !867
  call void @llvm.dbg.value(metadata i8 %54, i64 0, metadata !800, metadata !727), !dbg !856
  br label %67, !dbg !868

; <label>:55:                                     ; preds = %55, %50
  %56 = phi i64 [ %51, %50 ], [ %63, %55 ]
  %57 = phi i8 [ 1, %50 ], [ %62, %55 ]
  %58 = getelementptr inbounds i8*, i8** %1, i64 %56, !dbg !865
  %59 = load i8*, i8** %58, align 8, !dbg !865, !tbaa !735
  %60 = call fastcc zeroext i1 @fold_file(i8* %59, i64 %45), !dbg !869
  %61 = zext i1 %60 to i8, !dbg !869
  %62 = and i8 %61, %57, !dbg !870
  call void @llvm.dbg.value(metadata i8 %62, i64 0, metadata !800, metadata !727), !dbg !856
  %63 = add nsw i64 %56, 1, !dbg !871
  call void @llvm.dbg.value(metadata i8 %62, i64 0, metadata !800, metadata !727), !dbg !856
  %64 = trunc i64 %63 to i32, !dbg !858
  %65 = icmp eq i32 %64, %0, !dbg !858
  br i1 %65, label %66, label %55, !dbg !863, !llvm.loop !873

; <label>:66:                                     ; preds = %55
  br label %67, !dbg !856

; <label>:67:                                     ; preds = %66, %48, %52
  %68 = phi i8 [ %54, %52 ], [ 1, %48 ], [ %62, %66 ]
  call void @llvm.dbg.value(metadata i8 %68, i64 0, metadata !800, metadata !727), !dbg !856
  %69 = load i1, i1* @have_read_stdin, align 1
  br i1 %69, label %70, label %77, !dbg !876

; <label>:70:                                     ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !878, !tbaa !735
  %72 = call i32 @rpl_fclose(%struct._IO_FILE* %71) #10, !dbg !880
  %73 = icmp eq i32 %72, -1, !dbg !881
  br i1 %73, label %74, label %77, !dbg !882

; <label>:74:                                     ; preds = %70
  %75 = tail call i32* @__errno_location() #1, !dbg !883
  %76 = load i32, i32* %75, align 4, !dbg !883, !tbaa !852
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !884
  unreachable, !dbg !883

; <label>:77:                                     ; preds = %70, %67
  %78 = and i8 %68, 1, !dbg !885
  %79 = xor i8 %78, 1, !dbg !885
  %80 = zext i8 %79 to i32, !dbg !885
  ret i32 %80, !dbg !886
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @fold_file(i8*, i64) unnamed_addr #6 !dbg !114 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !118, metadata !727), !dbg !887
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !119, metadata !727), !dbg !888
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !177, metadata !727), !dbg !889
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !178, metadata !727), !dbg !890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !183, metadata !727), !dbg !891
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !184, metadata !727), !dbg !892
  %3 = load i8, i8* %0, align 1, !dbg !893, !tbaa !834
  %4 = icmp eq i8 %3, 45, !dbg !895
  br i1 %4, label %5, label %11, !dbg !898

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !900
  %7 = load i8, i8* %6, align 1, !dbg !900, !tbaa !834
  %8 = icmp eq i8 %7, 0, !dbg !903
  br i1 %8, label %9, label %11, !dbg !905

; <label>:9:                                      ; preds = %5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !907, !tbaa !735
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, i64 0, metadata !120, metadata !727), !dbg !909
  store i1 true, i1* @have_read_stdin, align 1
  br label %13, !dbg !910

; <label>:11:                                     ; preds = %2, %5
  %12 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)), !dbg !911
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, i64 0, metadata !120, metadata !727), !dbg !909
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = phi %struct._IO_FILE* [ %10, %9 ], [ %12, %11 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !120, metadata !727), !dbg !909
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !912
  br i1 %15, label %16, label %20, !dbg !914

; <label>:16:                                     ; preds = %13
  %17 = tail call i32* @__errno_location() #1, !dbg !915
  %18 = load i32, i32* %17, align 4, !dbg !915, !tbaa !852
  %19 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !917
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %19) #10, !dbg !919
  br label %190, !dbg !921

; <label>:20:                                     ; preds = %13
  tail call void @fadvise(%struct._IO_FILE* nonnull %14, i32 2) #10, !dbg !922
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 1
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 2
  br label %23, !dbg !923

; <label>:23:                                     ; preds = %53, %20
  %24 = phi i64 [ 0, %20 ], [ %54, %53 ]
  %25 = phi i64 [ 0, %20 ], [ %55, %53 ]
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !177, metadata !727), !dbg !889
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !178, metadata !727), !dbg !890
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !924, metadata !727) #10, !dbg !930
  %26 = load i8*, i8** %21, align 8, !dbg !933, !tbaa !934
  %27 = load i8*, i8** %22, align 8, !dbg !933, !tbaa !938
  %28 = icmp ult i8* %26, %27, !dbg !933
  br i1 %28, label %29, label %33, !dbg !933, !prof !939

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !940
  store i8* %30, i8** %21, align 8, !dbg !940, !tbaa !934
  %31 = load i8, i8* %26, align 1, !dbg !940, !tbaa !834
  %32 = zext i8 %31 to i32, !dbg !940
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !176, metadata !727), !dbg !942
  br label %36, !dbg !943

; <label>:33:                                     ; preds = %23
  %34 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #10, !dbg !944
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !176, metadata !727), !dbg !942
  %35 = icmp eq i32 %34, -1, !dbg !946
  br i1 %35, label %154, label %36, !dbg !943

; <label>:36:                                     ; preds = %29, %33
  %37 = phi i32 [ %32, %29 ], [ %34, %33 ]
  %38 = add i64 %24, 1, !dbg !947
  %39 = load i64, i64* @fold_file.allocated_out, align 8, !dbg !949, !tbaa !950
  %40 = icmp ult i64 %38, %39, !dbg !951
  br i1 %40, label %44, label %41, !dbg !952

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** @fold_file.line_out, align 8, !dbg !953, !tbaa !735
  %43 = tail call i8* @x2realloc(i8* %42, i64* nonnull @fold_file.allocated_out) #10, !dbg !953
  store i8* %43, i8** @fold_file.line_out, align 8, !dbg !954, !tbaa !735
  br label %44, !dbg !955

; <label>:44:                                     ; preds = %36, %41
  %45 = icmp eq i32 %37, 10, !dbg !956
  %46 = trunc i32 %37 to i8
  br i1 %45, label %48, label %47, !dbg !958

; <label>:47:                                     ; preds = %44
  br label %57, !dbg !889

; <label>:48:                                     ; preds = %44
  %49 = load i8*, i8** @fold_file.line_out, align 8, !dbg !959, !tbaa !735
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !178, metadata !727), !dbg !890
  %50 = getelementptr inbounds i8, i8* %49, i64 %24, !dbg !959
  store i8 %46, i8* %50, align 1, !dbg !961, !tbaa !834
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !962, !tbaa !735
  %52 = tail call i64 @fwrite_unlocked(i8* %49, i64 1, i64 %38, %struct._IO_FILE* %51) #10, !dbg !962
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !178, metadata !727), !dbg !890
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !177, metadata !727), !dbg !889
  br label %53, !dbg !963

; <label>:53:                                     ; preds = %48, %142, %149
  %54 = phi i64 [ 0, %48 ], [ %140, %142 ], [ %152, %149 ]
  %55 = phi i64 [ 0, %48 ], [ %75, %142 ], [ %150, %149 ]
  br label %23, !dbg !889, !llvm.loop !964

; <label>:56:                                     ; preds = %133
  br label %146, !dbg !889

; <label>:57:                                     ; preds = %146, %47
  %58 = phi i64 [ %24, %47 ], [ %147, %146 ]
  %59 = phi i64 [ %25, %47 ], [ %148, %146 ]
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !177, metadata !727), !dbg !889
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !178, metadata !727), !dbg !890
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !966, metadata !727), !dbg !972
  tail call void @llvm.dbg.value(metadata i8 %46, i64 0, metadata !971, metadata !727), !dbg !974
  %60 = load i1, i1* @count_bytes, align 1
  br i1 %60, label %72, label %61, !dbg !975

; <label>:61:                                     ; preds = %57
  switch i8 %46, label %70 [
    i8 8, label %62
    i8 13, label %149
    i8 9, label %66
  ], !dbg !976

; <label>:62:                                     ; preds = %61
  %63 = icmp eq i64 %59, 0, !dbg !979
  %64 = add i64 %59, -1, !dbg !983
  tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !966, metadata !727), !dbg !972
  %65 = select i1 %63, i64 0, i64 %64, !dbg !984
  br label %74, !dbg !984

; <label>:66:                                     ; preds = %61
  %67 = and i64 %59, 7, !dbg !985
  %68 = add i64 %59, 8, !dbg !988
  %69 = sub i64 %68, %67, !dbg !989
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !966, metadata !727), !dbg !972
  br label %74, !dbg !990

; <label>:70:                                     ; preds = %61
  %71 = add i64 %59, 1, !dbg !991
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !966, metadata !727), !dbg !972
  br label %74

; <label>:72:                                     ; preds = %57
  %73 = add i64 %59, 1, !dbg !992
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !966, metadata !727), !dbg !972
  br label %74

; <label>:74:                                     ; preds = %66, %70, %72, %62
  %75 = phi i64 [ %65, %62 ], [ %73, %72 ], [ %69, %66 ], [ %71, %70 ]
  tail call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !177, metadata !727), !dbg !889
  %76 = icmp ugt i64 %75, %1, !dbg !993
  br i1 %76, label %77, label %149, !dbg !994

; <label>:77:                                     ; preds = %74
  %78 = load i1, i1* @break_spaces, align 1
  %79 = load i8*, i8** @fold_file.line_out, align 8
  br i1 %78, label %80, label %138, !dbg !995

; <label>:80:                                     ; preds = %77
  br label %81, !dbg !996

; <label>:81:                                     ; preds = %80, %84
  %82 = phi i64 [ %85, %84 ], [ %58, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !193, metadata !727), !dbg !996
  %83 = icmp eq i64 %82, 0, !dbg !997
  br i1 %83, label %137, label %84, !dbg !997

; <label>:84:                                     ; preds = %81
  %85 = add i64 %82, -1, !dbg !999
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !193, metadata !727), !dbg !996
  %86 = tail call i16** @__ctype_b_loc() #1, !dbg !1001
  %87 = load i16*, i16** %86, align 8, !dbg !1001, !tbaa !735
  %88 = getelementptr inbounds i8, i8* %79, i64 %85, !dbg !1001
  %89 = load i8, i8* %88, align 1, !dbg !1001, !tbaa !834
  %90 = zext i8 %89 to i64, !dbg !1001
  %91 = getelementptr inbounds i16, i16* %87, i64 %90, !dbg !1001
  %92 = load i16, i16* %91, align 2, !dbg !1001, !tbaa !1003
  %93 = and i16 %92, 1, !dbg !1001
  %94 = icmp eq i16 %93, 0, !dbg !1001
  br i1 %94, label %81, label %95, !dbg !1004, !llvm.loop !1005

; <label>:95:                                     ; preds = %84
  tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !193, metadata !727), !dbg !996
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1008, !tbaa !735
  %97 = tail call i64 @fwrite_unlocked(i8* nonnull %79, i64 1, i64 %82, %struct._IO_FILE* %96) #10, !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1009, metadata !727) #10, !dbg !1014
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1016, !tbaa !735
  %99 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %98, i64 0, i32 5, !dbg !1016
  %100 = load i8*, i8** %99, align 8, !dbg !1016, !tbaa !1017
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %98, i64 0, i32 6, !dbg !1016
  %102 = load i8*, i8** %101, align 8, !dbg !1016, !tbaa !1018
  %103 = icmp ult i8* %100, %102, !dbg !1016
  br i1 %103, label %106, label %104, !dbg !1016, !prof !939

; <label>:104:                                    ; preds = %95
  %105 = tail call i32 @__overflow(%struct._IO_FILE* %98, i32 10) #10, !dbg !1019
  br label %108, !dbg !1019

; <label>:106:                                    ; preds = %95
  %107 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !1021
  store i8* %107, i8** %99, align 8, !dbg !1021, !tbaa !1017
  store i8 10, i8* %100, align 1, !dbg !1021, !tbaa !834
  br label %108, !dbg !1021

; <label>:108:                                    ; preds = %104, %106
  %109 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1023, !tbaa !735
  %110 = getelementptr inbounds i8, i8* %109, i64 %82, !dbg !1024
  %111 = sub i64 %58, %82, !dbg !1025
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %109, i8* %110, i64 %111, i32 1, i1 false), !dbg !1026
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !178, metadata !727), !dbg !890
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !194, metadata !727), !dbg !1027
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !177, metadata !727), !dbg !889
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !177, metadata !727), !dbg !889
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !194, metadata !727), !dbg !1027
  %112 = icmp eq i64 %111, 0, !dbg !1028
  br i1 %112, label %146, label %113, !dbg !1032

; <label>:113:                                    ; preds = %108
  %114 = load i1, i1* @count_bytes, align 1
  br label %115, !dbg !1032

; <label>:115:                                    ; preds = %133, %113
  %116 = phi i64 [ 0, %113 ], [ %134, %133 ]
  %117 = phi i64 [ 0, %113 ], [ %135, %133 ]
  tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !966, metadata !727), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8 %120, i64 0, metadata !971, metadata !727), !dbg !1036
  br i1 %114, label %131, label %118, !dbg !1037

; <label>:118:                                    ; preds = %115
  %119 = getelementptr inbounds i8, i8* %109, i64 %117, !dbg !1038
  %120 = load i8, i8* %119, align 1, !dbg !1038, !tbaa !834
  switch i8 %120, label %129 [
    i8 8, label %121
    i8 13, label %133
    i8 9, label %125
  ], !dbg !1039

; <label>:121:                                    ; preds = %118
  %122 = icmp eq i64 %116, 0, !dbg !1040
  %123 = add i64 %116, -1, !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !966, metadata !727), !dbg !1034
  %124 = select i1 %122, i64 0, i64 %123, !dbg !1042
  br label %133, !dbg !1042

; <label>:125:                                    ; preds = %118
  %126 = and i64 %116, 7, !dbg !1043
  %127 = add i64 %116, 8, !dbg !1044
  %128 = sub i64 %127, %126, !dbg !1045
  tail call void @llvm.dbg.value(metadata i64 %128, i64 0, metadata !966, metadata !727), !dbg !1034
  br label %133, !dbg !1046

; <label>:129:                                    ; preds = %118
  %130 = add i64 %116, 1, !dbg !1047
  tail call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !966, metadata !727), !dbg !1034
  br label %133

; <label>:131:                                    ; preds = %115
  %132 = add i64 %116, 1, !dbg !1048
  tail call void @llvm.dbg.value(metadata i64 %132, i64 0, metadata !966, metadata !727), !dbg !1034
  br label %133

; <label>:133:                                    ; preds = %118, %125, %129, %131, %121
  %134 = phi i64 [ %124, %121 ], [ %132, %131 ], [ %128, %125 ], [ %130, %129 ], [ 0, %118 ]
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !177, metadata !727), !dbg !889
  %135 = add nuw i64 %117, 1, !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !194, metadata !727), !dbg !1027
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !177, metadata !727), !dbg !889
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !194, metadata !727), !dbg !1027
  %136 = icmp eq i64 %135, %111, !dbg !1028
  br i1 %136, label %56, label %115, !dbg !1032, !llvm.loop !1051

; <label>:137:                                    ; preds = %81
  br label %138, !dbg !889

; <label>:138:                                    ; preds = %137, %77
  tail call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !177, metadata !727), !dbg !889
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !178, metadata !727), !dbg !890
  %139 = icmp eq i64 %58, 0, !dbg !1054
  %140 = add i64 %58, 1
  tail call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !178, metadata !727), !dbg !890
  %141 = getelementptr inbounds i8, i8* %79, i64 %58
  br i1 %139, label %142, label %143, !dbg !1056

; <label>:142:                                    ; preds = %138
  store i8 %46, i8* %141, align 1, !dbg !1057, !tbaa !834
  br label %53, !dbg !1059

; <label>:143:                                    ; preds = %138
  store i8 10, i8* %141, align 1, !dbg !1060, !tbaa !834
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1061, !tbaa !735
  %145 = tail call i64 @fwrite_unlocked(i8* %79, i64 1, i64 %140, %struct._IO_FILE* %144) #10, !dbg !1061
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !178, metadata !727), !dbg !890
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !177, metadata !727), !dbg !889
  br label %146, !dbg !1062

; <label>:146:                                    ; preds = %143, %108, %56
  %147 = phi i64 [ 0, %143 ], [ 0, %108 ], [ %111, %56 ]
  %148 = phi i64 [ 0, %143 ], [ 0, %108 ], [ %134, %56 ]
  br label %57, !dbg !889

; <label>:149:                                    ; preds = %61, %74
  %150 = phi i64 [ %75, %74 ], [ 0, %61 ]
  %151 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1063, !tbaa !735
  %152 = add i64 %58, 1, !dbg !1064
  tail call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !178, metadata !727), !dbg !890
  %153 = getelementptr inbounds i8, i8* %151, i64 %58, !dbg !1063
  store i8 %46, i8* %153, align 1, !dbg !1065, !tbaa !834
  br label %53, !dbg !1066

; <label>:154:                                    ; preds = %33
  %155 = tail call i32* @__errno_location() #1, !dbg !1068
  %156 = load i32, i32* %155, align 4, !dbg !1068, !tbaa !852
  tail call void @llvm.dbg.value(metadata i32 %156, i64 0, metadata !179, metadata !727), !dbg !1069
  %157 = icmp eq i64 %24, 0, !dbg !1070
  br i1 %157, label %162, label %158, !dbg !1072

; <label>:158:                                    ; preds = %154
  %159 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1073, !tbaa !735
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1073, !tbaa !735
  %161 = tail call i64 @fwrite_unlocked(i8* %159, i64 1, i64 %24, %struct._IO_FILE* %160) #10, !dbg !1073
  br label %162, !dbg !1073

; <label>:162:                                    ; preds = %154, %158
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !1074, metadata !727), !dbg !1077
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1079
  %164 = load i32, i32* %163, align 8, !dbg !1079, !tbaa !1080
  %165 = and i32 %164, 32, !dbg !1079
  %166 = icmp eq i32 %165, 0, !dbg !1081
  br i1 %166, label %177, label %167, !dbg !1082

; <label>:167:                                    ; preds = %162
  %168 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1083
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %168) #10, !dbg !1084
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !202, metadata !727), !dbg !1086
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !203, metadata !727), !dbg !1087
  %169 = load i8, i8* %0, align 1, !dbg !1088, !tbaa !834
  %170 = icmp eq i8 %169, 45, !dbg !1090
  br i1 %170, label %171, label %175, !dbg !1093

; <label>:171:                                    ; preds = %167
  %172 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1095
  %173 = load i8, i8* %172, align 1, !dbg !1095, !tbaa !834
  %174 = icmp eq i8 %173, 0, !dbg !1098
  br i1 %174, label %190, label %175, !dbg !1100

; <label>:175:                                    ; preds = %167, %171
  %176 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %14) #10, !dbg !1102
  br label %190, !dbg !1102

; <label>:177:                                    ; preds = %162
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !209, metadata !727), !dbg !1103
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !210, metadata !727), !dbg !1104
  %178 = load i8, i8* %0, align 1, !dbg !1105, !tbaa !834
  %179 = icmp eq i8 %178, 45, !dbg !1107
  br i1 %179, label %180, label %184, !dbg !1110

; <label>:180:                                    ; preds = %177
  %181 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1112
  %182 = load i8, i8* %181, align 1, !dbg !1112, !tbaa !834
  %183 = icmp eq i8 %182, 0, !dbg !1115
  br i1 %183, label %190, label %184, !dbg !1117

; <label>:184:                                    ; preds = %177, %180
  %185 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %14) #10, !dbg !1119
  %186 = icmp eq i32 %185, -1, !dbg !1121
  br i1 %186, label %187, label %190, !dbg !1122

; <label>:187:                                    ; preds = %184
  %188 = load i32, i32* %155, align 4, !dbg !1124, !tbaa !852
  %189 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1126
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %189) #10, !dbg !1128
  br label %190, !dbg !1130

; <label>:190:                                    ; preds = %180, %184, %171, %175, %187, %16
  %191 = phi i1 [ false, %16 ], [ false, %187 ], [ false, %175 ], [ false, %171 ], [ true, %184 ], [ true, %180 ]
  ret i1 %191, !dbg !1131
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1132 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1134, metadata !727), !dbg !1135
  store i8* %0, i8** @file_name, align 8, !dbg !1136, !tbaa !735
  ret void, !dbg !1137
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1138 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1142, metadata !1143), !dbg !1144
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1145, !tbaa !1146
  ret void, !dbg !1148
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1149 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1154, !tbaa !735
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1155
  %3 = icmp eq i32 %2, 0, !dbg !1156
  br i1 %3, label %21, label %4, !dbg !1157

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1158, !tbaa !1146, !range !1160
  %6 = icmp eq i8 %5, 0, !dbg !1158
  %7 = tail call i32* @__errno_location() #1, !dbg !1161
  br i1 %6, label %11, label %8, !dbg !1163

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1164, !tbaa !852
  %10 = icmp eq i32 %9, 32, !dbg !1166
  br i1 %10, label %21, label %11, !dbg !1167

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !1169
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1151, metadata !727), !dbg !1170
  %13 = load i8*, i8** @file_name, align 8, !dbg !1171, !tbaa !735
  %14 = icmp eq i8* %13, null, !dbg !1171
  %15 = load i32, i32* %7, align 4, !tbaa !852
  br i1 %14, label %18, label %16, !dbg !1172

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1173
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1175
  br label %19, !dbg !1177

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.21, i64 0, i64 0), i8* %12) #10, !dbg !1178
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1179, !tbaa !852
  tail call void @_exit(i32 %20) #14, !dbg !1180
  unreachable, !dbg !1180

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1181, !tbaa !735
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1183
  %24 = icmp eq i32 %23, 0, !dbg !1184
  br i1 %24, label %27, label %25, !dbg !1185

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1186, !tbaa !852
  tail call void @_exit(i32 %26) #14, !dbg !1187
  unreachable, !dbg !1187

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1188
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1189 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1196, metadata !727), !dbg !1202
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1197, metadata !727), !dbg !1203
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1198, metadata !727), !dbg !1204
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1199, metadata !727), !dbg !1205
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1206
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1200, metadata !727), !dbg !1206
  ret void, !dbg !1207
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1208 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1252, metadata !727), !dbg !1254
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1253, metadata !727), !dbg !1255
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1256
  br i1 %3, label %7, label %4, !dbg !1258

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1259
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1196, metadata !727) #10, !dbg !1260
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1197, metadata !727) #10, !dbg !1263
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1198, metadata !727) #10, !dbg !1264
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1199, metadata !727) #10, !dbg !1265
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1266
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1200, metadata !727) #10, !dbg !1266
  br label %7, !dbg !1267

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1268
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1269 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1271, metadata !727), !dbg !1274
  %2 = icmp eq i8* %0, null, !dbg !1275
  br i1 %2, label %3, label %6, !dbg !1277

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1278, !tbaa !735
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1280
  tail call void @abort() #14, !dbg !1281
  unreachable, !dbg !1281

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1282
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1272, metadata !727), !dbg !1283
  %8 = icmp ne i8* %7, null, !dbg !1284
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1285
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1287
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1273, metadata !727), !dbg !1288
  %11 = ptrtoint i8* %10 to i64, !dbg !1289
  %12 = ptrtoint i8* %0 to i64, !dbg !1289
  %13 = sub i64 %11, %12, !dbg !1289
  %14 = icmp sgt i64 %13, 6, !dbg !1291
  br i1 %14, label %15, label %24, !dbg !1292

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1293
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.39, i64 0, i64 0), i64 7) #13, !dbg !1293
  %18 = icmp eq i32 %17, 0, !dbg !1295
  br i1 %18, label %19, label %24, !dbg !1296

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1271, metadata !727), !dbg !1274
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.40, i64 0, i64 0), i64 3) #13, !dbg !1297
  %21 = icmp eq i32 %20, 0, !dbg !1300
  br i1 %21, label %22, label %24, !dbg !1301

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1302
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1271, metadata !727), !dbg !1274
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1304, !tbaa !735
  br label %24, !dbg !1305

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1271, metadata !727), !dbg !1274
  store i8* %25, i8** @program_name, align 8, !dbg !1306, !tbaa !735
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1307, !tbaa !735
  ret void, !dbg !1308
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1309 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1314, metadata !727), !dbg !1317
  %2 = tail call i32* @__errno_location() #1, !dbg !1318
  %3 = load i32, i32* %2, align 4, !dbg !1318, !tbaa !852
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1315, metadata !727), !dbg !1319
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1320
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1321
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1321
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1323
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1316, metadata !727), !dbg !1324
  store i32 %3, i32* %2, align 4, !dbg !1325, !tbaa !852
  ret %struct.quoting_options* %8, !dbg !1326
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1327 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1333, metadata !727), !dbg !1334
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1335
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1335
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1336
  %5 = load i32, i32* %4, align 8, !dbg !1336, !tbaa !1338
  ret i32 %5, !dbg !1340
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1341 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1345, metadata !727), !dbg !1347
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1346, metadata !727), !dbg !1348
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1349
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1349
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1350
  store i32 %1, i32* %5, align 8, !dbg !1352, !tbaa !1338
  ret void, !dbg !1353
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1354 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1358, metadata !727), !dbg !1366
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1359, metadata !727), !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1360, metadata !727), !dbg !1368
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1361, metadata !727), !dbg !1369
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1370
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1370
  %6 = lshr i8 %1, 5, !dbg !1371
  %7 = zext i8 %6 to i64, !dbg !1371
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1373
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1362, metadata !727), !dbg !1374
  %9 = and i8 %1, 31, !dbg !1375
  %10 = zext i8 %9 to i32, !dbg !1376
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1364, metadata !727), !dbg !1377
  %11 = load i32, i32* %8, align 4, !dbg !1378, !tbaa !852
  %12 = lshr i32 %11, %10, !dbg !1379
  %13 = and i32 %12, 1, !dbg !1380
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1365, metadata !727), !dbg !1381
  %14 = and i32 %2, 1, !dbg !1382
  %15 = xor i32 %13, %14, !dbg !1383
  %16 = shl i32 %15, %10, !dbg !1384
  %17 = xor i32 %16, %11, !dbg !1385
  store i32 %17, i32* %8, align 4, !dbg !1385, !tbaa !852
  ret i32 %13, !dbg !1386
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1387 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1391, metadata !727), !dbg !1394
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1392, metadata !727), !dbg !1395
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1396
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1391, metadata !727), !dbg !1394
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1398
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1391, metadata !727), !dbg !1394
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1399
  %6 = load i32, i32* %5, align 4, !dbg !1399, !tbaa !1400
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1393, metadata !727), !dbg !1401
  store i32 %1, i32* %5, align 4, !dbg !1402, !tbaa !1400
  ret i32 %6, !dbg !1403
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1404 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1408, metadata !727), !dbg !1411
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1409, metadata !727), !dbg !1412
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1410, metadata !727), !dbg !1413
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1408, metadata !727), !dbg !1411
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1408, metadata !727), !dbg !1411
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1417
  store i32 10, i32* %6, align 8, !dbg !1418, !tbaa !1338
  %7 = icmp ne i8* %1, null, !dbg !1419
  %8 = icmp ne i8* %2, null, !dbg !1421
  %9 = and i1 %7, %8, !dbg !1423
  br i1 %9, label %11, label %10, !dbg !1423

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1424
  unreachable, !dbg !1424

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1425
  store i8* %1, i8** %12, align 8, !dbg !1426, !tbaa !1427
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1428
  store i8* %2, i8** %13, align 8, !dbg !1429, !tbaa !1430
  ret void, !dbg !1431
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1432 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1436, metadata !727), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1437, metadata !727), !dbg !1445
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1438, metadata !727), !dbg !1446
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1439, metadata !727), !dbg !1447
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1440, metadata !727), !dbg !1448
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1449
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1449
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1441, metadata !727), !dbg !1450
  %8 = tail call i32* @__errno_location() #1, !dbg !1451
  %9 = load i32, i32* %8, align 4, !dbg !1451, !tbaa !852
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1442, metadata !727), !dbg !1452
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1453
  %11 = load i32, i32* %10, align 8, !dbg !1453, !tbaa !1338
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1454
  %13 = load i32, i32* %12, align 4, !dbg !1454, !tbaa !1400
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1455
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1456
  %16 = load i8*, i8** %15, align 8, !dbg !1456, !tbaa !1427
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1457
  %18 = load i8*, i8** %17, align 8, !dbg !1457, !tbaa !1430
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1458
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1443, metadata !727), !dbg !1459
  store i32 %9, i32* %8, align 4, !dbg !1460, !tbaa !852
  ret i64 %19, !dbg !1461
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1462 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1468, metadata !727), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1469, metadata !727), !dbg !1532
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1470, metadata !727), !dbg !1533
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1471, metadata !727), !dbg !1534
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1472, metadata !727), !dbg !1535
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1473, metadata !727), !dbg !1536
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1474, metadata !727), !dbg !1537
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1475, metadata !727), !dbg !1538
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1476, metadata !727), !dbg !1539
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1478, metadata !727), !dbg !1540
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1479, metadata !727), !dbg !1541
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1480, metadata !727), !dbg !1542
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1481, metadata !727), !dbg !1543
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1482, metadata !727), !dbg !1544
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1545
  %14 = icmp eq i64 %13, 1, !dbg !1546
  %15 = lshr i32 %5, 1, !dbg !1547
  %16 = trunc i32 %15 to i8, !dbg !1547
  %17 = and i8 %16, 1, !dbg !1547
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1484, metadata !727), !dbg !1547
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1485, metadata !727), !dbg !1548
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1486, metadata !727), !dbg !1549
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1487, metadata !727), !dbg !1550
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1551

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1469, metadata !727), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1487, metadata !727), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1486, metadata !727), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1484, metadata !727), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1471, metadata !727), !dbg !1534
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1482, metadata !727), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1481, metadata !727), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1480, metadata !727), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1479, metadata !727), !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1476, metadata !727), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1475, metadata !727), !dbg !1538
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1472, metadata !727), !dbg !1535
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
  ], !dbg !1552

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1472, metadata !727), !dbg !1535
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1484, metadata !727), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1484, metadata !727), !dbg !1547
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1472, metadata !727), !dbg !1535
  br label %95, !dbg !1553

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1484, metadata !727), !dbg !1547
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1472, metadata !727), !dbg !1535
  %43 = and i8 %36, 1, !dbg !1555
  %44 = icmp eq i8 %43, 0, !dbg !1555
  br i1 %44, label %45, label %95, !dbg !1553

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1557
  br i1 %46, label %95, label %47, !dbg !1561

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1563, !tbaa !834
  br label %95, !dbg !1563

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.51, i64 0, i64 0), i32 %28), !dbg !1565
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1475, metadata !727), !dbg !1538
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), i32 %28), !dbg !1569
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1476, metadata !727), !dbg !1539
  br label %51, !dbg !1570

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1476, metadata !727), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1475, metadata !727), !dbg !1538
  %54 = and i8 %36, 1, !dbg !1571
  %55 = icmp eq i8 %54, 0, !dbg !1571
  br i1 %55, label %56, label %73, !dbg !1573

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1480, metadata !727), !dbg !1542
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1478, metadata !727), !dbg !1540
  %57 = load i8, i8* %52, align 1, !dbg !1574, !tbaa !834
  %58 = icmp eq i8 %57, 0, !dbg !1578
  br i1 %58, label %73, label %59, !dbg !1578

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1580

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1580
  br i1 %64, label %65, label %67, !dbg !1584

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1586
  store i8 %61, i8* %66, align 1, !dbg !1586, !tbaa !834
  br label %67, !dbg !1586

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1478, metadata !727), !dbg !1540
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1590
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1480, metadata !727), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1480, metadata !727), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1478, metadata !727), !dbg !1540
  %70 = load i8, i8* %69, align 1, !dbg !1574, !tbaa !834
  %71 = icmp eq i8 %70, 0, !dbg !1578
  br i1 %71, label %72, label %60, !dbg !1578, !llvm.loop !1592

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1540

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1482, metadata !727), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1480, metadata !727), !dbg !1542
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1481, metadata !727), !dbg !1543
  br label %95, !dbg !1596

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1482, metadata !727), !dbg !1544
  br label %77, !dbg !1597

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1482, metadata !727), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1484, metadata !727), !dbg !1547
  br label %79, !dbg !1598

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1484, metadata !727), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1482, metadata !727), !dbg !1544
  %82 = and i8 %81, 1, !dbg !1599
  %83 = icmp eq i8 %82, 0, !dbg !1599
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1482, metadata !727), !dbg !1544
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1601
  br label %85, !dbg !1601

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1484, metadata !727), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1482, metadata !727), !dbg !1544
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1472, metadata !727), !dbg !1535
  %88 = and i8 %87, 1, !dbg !1602
  %89 = icmp eq i8 %88, 0, !dbg !1602
  br i1 %89, label %90, label %95, !dbg !1604

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1605
  br i1 %91, label %95, label %92, !dbg !1609

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1611, !tbaa !834
  br label %95, !dbg !1611

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1484, metadata !727), !dbg !1547
  br label %95, !dbg !1613

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1614
  unreachable, !dbg !1614

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1484, metadata !727), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1482, metadata !727), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1481, metadata !727), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1480, metadata !727), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1476, metadata !727), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1475, metadata !727), !dbg !1538
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1472, metadata !727), !dbg !1535
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1477, metadata !727), !dbg !1615
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
  br label %123, !dbg !1616

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1469, metadata !727), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1487, metadata !727), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1486, metadata !727), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1471, metadata !727), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1479, metadata !727), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1477, metadata !727), !dbg !1615
  %132 = icmp eq i64 %127, -1, !dbg !1617
  br i1 %132, label %135, label %133, !dbg !1619

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1620
  br i1 %134, label %597, label %139, !dbg !1622

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1624
  %137 = load i8, i8* %136, align 1, !dbg !1624, !tbaa !834
  %138 = icmp eq i8 %137, 0, !dbg !1626
  br i1 %138, label %597, label %139, !dbg !1622

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1493, metadata !727), !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1494, metadata !727), !dbg !1628
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1495, metadata !727), !dbg !1629
  br i1 %109, label %140, label %155, !dbg !1630

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1632
  %142 = and i1 %110, %132, !dbg !1634
  br i1 %142, label %143, label %145, !dbg !1634

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1471, metadata !727), !dbg !1534
  br label %145, !dbg !1636

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1471, metadata !727), !dbg !1534
  %147 = icmp ugt i64 %141, %146, !dbg !1638
  br i1 %147, label %155, label %148, !dbg !1640

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1641
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1642
  %151 = icmp ne i32 %150, 0, !dbg !1643
  %152 = or i1 %151, %112, !dbg !1643
  %153 = xor i1 %151, true, !dbg !1643
  %154 = zext i1 %153 to i8, !dbg !1643
  br i1 %152, label %155, label %644, !dbg !1643

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1493, metadata !727), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1471, metadata !727), !dbg !1534
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1645
  %159 = load i8, i8* %158, align 1, !dbg !1645, !tbaa !834
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1488, metadata !727), !dbg !1646
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
  ], !dbg !1647

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1648

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1649

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1494, metadata !727), !dbg !1628
  %163 = and i8 %128, 1, !dbg !1654
  %164 = icmp eq i8 %163, 0, !dbg !1654
  %165 = and i1 %114, %164, !dbg !1657
  br i1 %165, label %166, label %182, !dbg !1657

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1659
  br i1 %167, label %168, label %170, !dbg !1664

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1666
  store i8 39, i8* %169, align 1, !dbg !1666, !tbaa !834
  br label %170, !dbg !1666

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1478, metadata !727), !dbg !1540
  %172 = icmp ult i64 %171, %131, !dbg !1670
  br i1 %172, label %173, label %175, !dbg !1674

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1676
  store i8 36, i8* %174, align 1, !dbg !1676, !tbaa !834
  br label %175, !dbg !1676

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1478, metadata !727), !dbg !1540
  %177 = icmp ult i64 %176, %131, !dbg !1680
  br i1 %177, label %178, label %180, !dbg !1684

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1686
  store i8 39, i8* %179, align 1, !dbg !1686, !tbaa !834
  br label %180, !dbg !1686

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1485, metadata !727), !dbg !1548
  br label %182, !dbg !1690

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1478, metadata !727), !dbg !1540
  %185 = icmp ult i64 %183, %131, !dbg !1692
  br i1 %185, label %186, label %188, !dbg !1696

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1698
  store i8 92, i8* %187, align 1, !dbg !1698, !tbaa !834
  br label %188, !dbg !1698

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1478, metadata !727), !dbg !1540
  br i1 %106, label %190, label %476, !dbg !1702

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1704
  %192 = icmp ult i64 %191, %156, !dbg !1706
  br i1 %192, label %193, label %476, !dbg !1707

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1708
  %195 = load i8, i8* %194, align 1, !dbg !1708, !tbaa !834
  %196 = add i8 %195, -48, !dbg !1710
  %197 = icmp ult i8 %196, 10, !dbg !1710
  br i1 %197, label %198, label %476, !dbg !1710

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1711
  br i1 %199, label %200, label %202, !dbg !1716

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1718
  store i8 48, i8* %201, align 1, !dbg !1718, !tbaa !834
  br label %202, !dbg !1718

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1478, metadata !727), !dbg !1540
  %204 = icmp ult i64 %203, %131, !dbg !1722
  br i1 %204, label %205, label %207, !dbg !1726

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1728
  store i8 48, i8* %206, align 1, !dbg !1728, !tbaa !834
  br label %207, !dbg !1728

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1478, metadata !727), !dbg !1540
  br label %476, !dbg !1732

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1733

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1734

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1735

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1737

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1739
  %215 = icmp ult i64 %214, %156, !dbg !1741
  br i1 %215, label %216, label %476, !dbg !1742

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1743
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1745
  %219 = load i8, i8* %218, align 1, !dbg !1745, !tbaa !834
  %220 = icmp eq i8 %219, 63, !dbg !1746
  br i1 %220, label %221, label %476, !dbg !1747

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1749
  %223 = load i8, i8* %222, align 1, !dbg !1749, !tbaa !834
  %224 = sext i8 %223 to i32, !dbg !1749
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
  ], !dbg !1750

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1751

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1488, metadata !727), !dbg !1646
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1477, metadata !727), !dbg !1615
  %227 = icmp ult i64 %125, %131, !dbg !1753
  br i1 %227, label %228, label %230, !dbg !1757

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1759
  store i8 63, i8* %229, align 1, !dbg !1759, !tbaa !834
  br label %230, !dbg !1759

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1478, metadata !727), !dbg !1540
  %232 = icmp ult i64 %231, %131, !dbg !1763
  br i1 %232, label %233, label %235, !dbg !1767

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1769
  store i8 34, i8* %234, align 1, !dbg !1769, !tbaa !834
  br label %235, !dbg !1769

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1478, metadata !727), !dbg !1540
  %237 = icmp ult i64 %236, %131, !dbg !1773
  br i1 %237, label %238, label %240, !dbg !1777

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1779
  store i8 34, i8* %239, align 1, !dbg !1779, !tbaa !834
  br label %240, !dbg !1779

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1478, metadata !727), !dbg !1540
  %242 = icmp ult i64 %241, %131, !dbg !1783
  br i1 %242, label %243, label %245, !dbg !1787

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1789
  store i8 63, i8* %244, align 1, !dbg !1789, !tbaa !834
  br label %245, !dbg !1789

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1478, metadata !727), !dbg !1540
  br label %476, !dbg !1793

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1492, metadata !727), !dbg !1794
  br label %257, !dbg !1795

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1492, metadata !727), !dbg !1794
  br label %257, !dbg !1796

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1492, metadata !727), !dbg !1794
  br label %255, !dbg !1797

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1492, metadata !727), !dbg !1794
  br label %255, !dbg !1798

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1492, metadata !727), !dbg !1794
  br label %257, !dbg !1799

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1492, metadata !727), !dbg !1794
  br i1 %114, label %253, label %254, !dbg !1800

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1801

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1804

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1492, metadata !727), !dbg !1794
  br i1 %118, label %257, label %644, !dbg !1806

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1492, metadata !727), !dbg !1794
  br i1 %105, label %503, label %476, !dbg !1808

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1809
  br i1 %260, label %261, label %266, !dbg !1811

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1812, !tbaa !834
  %263 = icmp ne i8 %262, 0, !dbg !1814
  %264 = icmp ne i64 %124, 0, !dbg !1815
  %265 = or i1 %264, %263, !dbg !1817
  br i1 %265, label %476, label %272, !dbg !1817

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1818
  %268 = icmp ne i64 %124, 0, !dbg !1815
  %269 = or i1 %268, %267, !dbg !1820
  br i1 %269, label %476, label %272, !dbg !1820

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1815
  br i1 %271, label %272, label %476, !dbg !1822

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1495, metadata !727), !dbg !1629
  br label %273, !dbg !1823

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1495, metadata !727), !dbg !1629
  br i1 %118, label %476, label %644, !dbg !1824

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1486, metadata !727), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1495, metadata !727), !dbg !1629
  br i1 %114, label %276, label %476, !dbg !1826

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1827

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1830
  %279 = icmp ne i64 %126, 0, !dbg !1832
  %280 = or i1 %279, %278, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1479, metadata !727), !dbg !1541
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1469, metadata !727), !dbg !1532
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1834
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1469, metadata !727), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1479, metadata !727), !dbg !1541
  %283 = icmp ult i64 %125, %282, !dbg !1835
  br i1 %283, label %284, label %286, !dbg !1839

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1841
  store i8 39, i8* %285, align 1, !dbg !1841, !tbaa !834
  br label %286, !dbg !1841

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1478, metadata !727), !dbg !1540
  %288 = icmp ult i64 %287, %282, !dbg !1845
  br i1 %288, label %289, label %291, !dbg !1849

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1851
  store i8 92, i8* %290, align 1, !dbg !1851, !tbaa !834
  br label %291, !dbg !1851

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1478, metadata !727), !dbg !1540
  %293 = icmp ult i64 %292, %282, !dbg !1855
  br i1 %293, label %294, label %296, !dbg !1859

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1861
  store i8 39, i8* %295, align 1, !dbg !1861, !tbaa !834
  br label %296, !dbg !1861

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1485, metadata !727), !dbg !1548
  br label %476, !dbg !1865

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1866

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1496, metadata !727), !dbg !1867
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1868
  %301 = load i16*, i16** %300, align 8, !dbg !1868, !tbaa !735
  %302 = zext i8 %159 to i64, !dbg !1868
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1868
  %304 = load i16, i16* %303, align 2, !dbg !1868, !tbaa !1003
  %305 = lshr i16 %304, 14, !dbg !1870
  %306 = trunc i16 %305 to i8, !dbg !1870
  %307 = and i8 %306, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1499, metadata !727), !dbg !1871
  br label %368, !dbg !1872

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1873
  store i64 0, i64* %10, align 8, !dbg !1874
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1496, metadata !727), !dbg !1867
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1499, metadata !727), !dbg !1871
  %309 = icmp eq i64 %156, -1, !dbg !1875
  br i1 %309, label %310, label %312, !dbg !1877, !llvm.loop !1878

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1471, metadata !727), !dbg !1534
  br label %312, !dbg !1882, !llvm.loop !1878

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1871

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1499, metadata !727), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1496, metadata !727), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1471, metadata !727), !dbg !1534
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1883
  %317 = add i64 %315, %124, !dbg !1884
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1885
  %319 = sub i64 %313, %317, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1500, metadata !1887), !dbg !1888
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1517, metadata !1887), !dbg !1889
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1520, metadata !727), !dbg !1891
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1892

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1496, metadata !727), !dbg !1867
  %322 = icmp ugt i64 %313, %317, !dbg !1893
  br i1 %322, label %323, label %351, !dbg !1896

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1897

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1897
  %328 = load i8, i8* %327, align 1, !dbg !1897, !tbaa !834
  %329 = icmp eq i8 %328, 0, !dbg !1899
  br i1 %329, label %348, label %330, !dbg !1900

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1496, metadata !727), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1496, metadata !727), !dbg !1867
  %332 = add i64 %331, %124, !dbg !1903
  %333 = icmp ult i64 %332, %313, !dbg !1893
  br i1 %333, label %324, label %348, !dbg !1896, !llvm.loop !1904

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1906
  %336 = and i1 %116, %335, !dbg !1910
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1521, metadata !727), !dbg !1911
  br i1 %336, label %337, label %355, !dbg !1910

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1912

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1912
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1913
  %342 = load i8, i8* %341, align 1, !dbg !1913, !tbaa !834
  %343 = sext i8 %342 to i32, !dbg !1913
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1914

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1521, metadata !727), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1521, metadata !727), !dbg !1911
  %346 = icmp ult i64 %345, %320, !dbg !1906
  br i1 %346, label %338, label %354, !dbg !1917, !llvm.loop !1919

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1871

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1871

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1871

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1499, metadata !727), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1496, metadata !727), !dbg !1867
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1922
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1923

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1923, !tbaa !852
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1517, metadata !727), !dbg !1889
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1925
  %358 = icmp eq i32 %357, 0, !dbg !1925
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1499, metadata !727), !dbg !1871
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1926
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1499, metadata !727), !dbg !1871
  %360 = add i64 %320, %315, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1496, metadata !727), !dbg !1867
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1499, metadata !727), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1496, metadata !727), !dbg !1867
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1922
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1500, metadata !1887), !dbg !1888
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1928
  %362 = icmp eq i32 %361, 0, !dbg !1929
  br i1 %362, label %314, label %363, !dbg !1930, !llvm.loop !1878

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1932

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1932
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1499, metadata !727), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1496, metadata !727), !dbg !1867
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1922
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1932
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1499, metadata !727), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1496, metadata !727), !dbg !1867
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1471, metadata !727), !dbg !1534
  %372 = and i8 %371, 1, !dbg !1933
  %373 = icmp ne i8 %372, 0, !dbg !1933
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1495, metadata !727), !dbg !1629
  %374 = icmp ult i64 %370, 2, !dbg !1934
  %375 = or i1 %373, %113, !dbg !1935
  %376 = and i1 %374, %375, !dbg !1937
  br i1 %376, label %476, label %377, !dbg !1937

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1528, metadata !727), !dbg !1939
  br label %379, !dbg !1940

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1494, metadata !727), !dbg !1628
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1493, metadata !727), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1488, metadata !727), !dbg !1646
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1477, metadata !727), !dbg !1615
  br i1 %375, label %432, label %386, !dbg !1941

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1946

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1494, metadata !727), !dbg !1628
  %388 = and i8 %382, 1, !dbg !1950
  %389 = icmp eq i8 %388, 0, !dbg !1950
  %390 = and i1 %114, %389, !dbg !1953
  br i1 %390, label %391, label %407, !dbg !1953

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1955
  br i1 %392, label %393, label %395, !dbg !1960

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1962
  store i8 39, i8* %394, align 1, !dbg !1962, !tbaa !834
  br label %395, !dbg !1962

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1478, metadata !727), !dbg !1540
  %397 = icmp ult i64 %396, %131, !dbg !1966
  br i1 %397, label %398, label %400, !dbg !1970

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1972
  store i8 36, i8* %399, align 1, !dbg !1972, !tbaa !834
  br label %400, !dbg !1972

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1478, metadata !727), !dbg !1540
  %402 = icmp ult i64 %401, %131, !dbg !1976
  br i1 %402, label %403, label %405, !dbg !1980

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1982
  store i8 39, i8* %404, align 1, !dbg !1982, !tbaa !834
  br label %405, !dbg !1982

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1485, metadata !727), !dbg !1548
  br label %407, !dbg !1986

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1478, metadata !727), !dbg !1540
  %410 = icmp ult i64 %408, %131, !dbg !1988
  br i1 %410, label %411, label %413, !dbg !1992

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1994
  store i8 92, i8* %412, align 1, !dbg !1994, !tbaa !834
  br label %413, !dbg !1994

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1478, metadata !727), !dbg !1540
  %415 = icmp ult i64 %414, %131, !dbg !1998
  br i1 %415, label %416, label %420, !dbg !2002

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2004
  %418 = or i8 %417, 48, !dbg !2004
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2004
  store i8 %418, i8* %419, align 1, !dbg !2004, !tbaa !834
  br label %420, !dbg !2004

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1478, metadata !727), !dbg !1540
  %422 = icmp ult i64 %421, %131, !dbg !2008
  br i1 %422, label %423, label %428, !dbg !2012

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2014
  %425 = and i8 %424, 7, !dbg !2014
  %426 = or i8 %425, 48, !dbg !2014
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2014
  store i8 %426, i8* %427, align 1, !dbg !2014, !tbaa !834
  br label %428, !dbg !2014

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1478, metadata !727), !dbg !1540
  %430 = and i8 %383, 7, !dbg !2018
  %431 = or i8 %430, 48, !dbg !2019
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1488, metadata !727), !dbg !1646
  br label %441, !dbg !2020

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2021
  %434 = icmp eq i8 %433, 0, !dbg !2021
  br i1 %434, label %441, label %435, !dbg !2023

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2024
  br i1 %436, label %437, label %439, !dbg !2029

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2031
  store i8 92, i8* %438, align 1, !dbg !2031, !tbaa !834
  br label %439, !dbg !2031

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1493, metadata !727), !dbg !1627
  br label %441, !dbg !2035

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1494, metadata !727), !dbg !1628
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1493, metadata !727), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1488, metadata !727), !dbg !1646
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1478, metadata !727), !dbg !1540
  %447 = add i64 %380, 1, !dbg !2036
  %448 = icmp ugt i64 %378, %447, !dbg !2038
  br i1 %448, label %449, label %541, !dbg !2039

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2040
  %451 = icmp ne i8 %450, 0, !dbg !2040
  %452 = and i8 %446, 1, !dbg !2044
  %453 = icmp eq i8 %452, 0, !dbg !2044
  %454 = and i1 %451, %453, !dbg !2040
  br i1 %454, label %455, label %466, !dbg !2040

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2046
  br i1 %456, label %457, label %459, !dbg !2051

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2053
  store i8 39, i8* %458, align 1, !dbg !2053, !tbaa !834
  br label %459, !dbg !2053

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1478, metadata !727), !dbg !1540
  %461 = icmp ult i64 %460, %131, !dbg !2057
  br i1 %461, label %462, label %464, !dbg !2061

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2063
  store i8 39, i8* %463, align 1, !dbg !2063, !tbaa !834
  br label %464, !dbg !2063

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1485, metadata !727), !dbg !1548
  br label %466, !dbg !2067

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1478, metadata !727), !dbg !1540
  %469 = icmp ult i64 %467, %131, !dbg !2069
  br i1 %469, label %470, label %472, !dbg !2073

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2075
  store i8 %444, i8* %471, align 1, !dbg !2075, !tbaa !834
  br label %472, !dbg !2075

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1477, metadata !727), !dbg !1615
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2079
  %475 = load i8, i8* %474, align 1, !dbg !2079, !tbaa !834
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1488, metadata !727), !dbg !1646
  br label %379, !dbg !2080, !llvm.loop !2082

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1469, metadata !727), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1495, metadata !727), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1494, metadata !727), !dbg !1628
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1493, metadata !727), !dbg !1627
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1488, metadata !727), !dbg !1646
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1486, metadata !727), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1471, metadata !727), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1479, metadata !727), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1477, metadata !727), !dbg !1615
  br i1 %107, label %488, label %487, !dbg !2085

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2087

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2088

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2089
  %491 = zext i8 %490 to i64, !dbg !2089
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2091
  %493 = load i32, i32* %492, align 4, !dbg !2091, !tbaa !852
  %494 = and i8 %483, 31, !dbg !2092
  %495 = zext i8 %494 to i32, !dbg !2093
  %496 = shl i32 1, %495, !dbg !2094
  %497 = and i32 %493, %496, !dbg !2094
  %498 = icmp eq i32 %497, 0, !dbg !2094
  %499 = icmp eq i8 %157, 0, !dbg !2095
  %500 = and i1 %499, %498, !dbg !2096
  br i1 %500, label %542, label %503, !dbg !2096

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2095
  br i1 %502, label %542, label %503, !dbg !2097

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1469, metadata !727), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1495, metadata !727), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1488, metadata !727), !dbg !1646
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1486, metadata !727), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1471, metadata !727), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1479, metadata !727), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1477, metadata !727), !dbg !1615
  br i1 %112, label %513, label %644, !dbg !2099

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1494, metadata !727), !dbg !1628
  %514 = and i8 %508, 1, !dbg !2102
  %515 = icmp eq i8 %514, 0, !dbg !2102
  %516 = and i1 %114, %515, !dbg !2105
  br i1 %516, label %517, label %533, !dbg !2105

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2107
  br i1 %518, label %519, label %521, !dbg !2112

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2114
  store i8 39, i8* %520, align 1, !dbg !2114, !tbaa !834
  br label %521, !dbg !2114

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1478, metadata !727), !dbg !1540
  %523 = icmp ult i64 %522, %512, !dbg !2118
  br i1 %523, label %524, label %526, !dbg !2122

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2124
  store i8 36, i8* %525, align 1, !dbg !2124, !tbaa !834
  br label %526, !dbg !2124

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1478, metadata !727), !dbg !1540
  %528 = icmp ult i64 %527, %512, !dbg !2128
  br i1 %528, label %529, label %531, !dbg !2132

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2134
  store i8 39, i8* %530, align 1, !dbg !2134, !tbaa !834
  br label %531, !dbg !2134

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1485, metadata !727), !dbg !1548
  br label %533, !dbg !2138

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1478, metadata !727), !dbg !1540
  %536 = icmp ult i64 %534, %512, !dbg !2140
  br i1 %536, label %537, label %539, !dbg !2144

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2146
  store i8 92, i8* %538, align 1, !dbg !2146, !tbaa !834
  br label %539, !dbg !2146

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1469, metadata !727), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1495, metadata !727), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1494, metadata !727), !dbg !1628
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1488, metadata !727), !dbg !1646
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1486, metadata !727), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1471, metadata !727), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1479, metadata !727), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1477, metadata !727), !dbg !1615
  br label %569, !dbg !2150

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1532

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1469, metadata !727), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1495, metadata !727), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1494, metadata !727), !dbg !1628
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1488, metadata !727), !dbg !1646
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1486, metadata !727), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1471, metadata !727), !dbg !1534
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1479, metadata !727), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1477, metadata !727), !dbg !1615
  %553 = and i8 %547, 1, !dbg !2150
  %554 = icmp ne i8 %553, 0, !dbg !2150
  %555 = and i8 %550, 1, !dbg !2154
  %556 = icmp eq i8 %555, 0, !dbg !2154
  %557 = and i1 %554, %556, !dbg !2150
  br i1 %557, label %558, label %569, !dbg !2150

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2156
  br i1 %559, label %560, label %562, !dbg !2161

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2163
  store i8 39, i8* %561, align 1, !dbg !2163, !tbaa !834
  br label %562, !dbg !2163

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1478, metadata !727), !dbg !1540
  %564 = icmp ult i64 %563, %552, !dbg !2167
  br i1 %564, label %565, label %567, !dbg !2171

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2173
  store i8 39, i8* %566, align 1, !dbg !2173, !tbaa !834
  br label %567, !dbg !2173

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1478, metadata !727), !dbg !1540
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1485, metadata !727), !dbg !1548
  br label %569, !dbg !2177

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1485, metadata !727), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1478, metadata !727), !dbg !1540
  %579 = icmp ult i64 %577, %570, !dbg !2179
  br i1 %579, label %580, label %582, !dbg !2183

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2185
  store i8 %572, i8* %581, align 1, !dbg !2185, !tbaa !834
  br label %582, !dbg !2185

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1478, metadata !727), !dbg !1540
  %584 = and i8 %571, 1, !dbg !2189
  %585 = icmp eq i8 %584, 0, !dbg !2189
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1487, metadata !727), !dbg !1550
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2191
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1487, metadata !727), !dbg !1550
  br label %587, !dbg !2192

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1477, metadata !727), !dbg !1615
  br label %123, !dbg !2195, !llvm.loop !2196

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2199
  %600 = and i1 %114, %599, !dbg !2201
  %601 = xor i1 %600, true, !dbg !2201
  %602 = or i1 %112, %601, !dbg !2201
  br i1 %602, label %603, label %648, !dbg !2201

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2202
  %605 = xor i1 %604, true, !dbg !2202
  %606 = and i8 %129, 1, !dbg !2204
  %607 = icmp eq i8 %606, 0, !dbg !2204
  %608 = or i1 %607, %605, !dbg !2202
  br i1 %608, label %618, label %609, !dbg !2202

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2206
  %611 = icmp eq i8 %610, 0, !dbg !2206
  br i1 %611, label %614, label %612, !dbg !2209

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2210
  br label %659, !dbg !2211

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2212
  %616 = icmp ne i64 %126, 0, !dbg !2214
  %617 = and i1 %616, %615, !dbg !2216
  br i1 %617, label %27, label %618, !dbg !2216

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2217
  %620 = and i1 %619, %112, !dbg !2219
  br i1 %620, label %621, label %638, !dbg !2219

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1480, metadata !727), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1478, metadata !727), !dbg !1540
  %622 = load i8, i8* %100, align 1, !dbg !2220, !tbaa !834
  %623 = icmp eq i8 %622, 0, !dbg !2224
  br i1 %623, label %638, label %624, !dbg !2224

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2226

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2226
  br i1 %629, label %630, label %632, !dbg !2230

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2232
  store i8 %626, i8* %631, align 1, !dbg !2232, !tbaa !834
  br label %632, !dbg !2232

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1478, metadata !727), !dbg !1540
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2236
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1480, metadata !727), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1480, metadata !727), !dbg !1542
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1478, metadata !727), !dbg !1540
  %635 = load i8, i8* %634, align 1, !dbg !2220, !tbaa !834
  %636 = icmp eq i8 %635, 0, !dbg !2224
  br i1 %636, label %637, label %625, !dbg !2224, !llvm.loop !2238

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1540

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1478, metadata !727), !dbg !1540
  %640 = icmp ult i64 %639, %131, !dbg !2241
  br i1 %640, label %641, label %659, !dbg !2243

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2244
  store i8 0, i8* %642, align 1, !dbg !2245, !tbaa !834
  br label %659, !dbg !2244

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1532

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1532

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1532

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1469, metadata !727), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1471, metadata !727), !dbg !1534
  %653 = icmp ne i32 %650, 2, !dbg !2246
  %654 = icmp eq i8 %104, 0, !dbg !2248
  %655 = or i1 %653, %654, !dbg !2250
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1472, metadata !727), !dbg !1535
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1472, metadata !727), !dbg !1535
  %657 = and i32 %5, -3, !dbg !2251
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2252
  br label %659, !dbg !2253

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2254
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2255 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2259, metadata !727), !dbg !2263
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2260, metadata !727), !dbg !2264
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2265
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2261, metadata !727), !dbg !2266
  %4 = icmp eq i8* %3, %0, !dbg !2267
  br i1 %4, label %5, label %75, !dbg !2269

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2270
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2262, metadata !727), !dbg !2271
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2272, metadata !727), !dbg !2288
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2286, metadata !727), !dbg !2291
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2287, metadata !727), !dbg !2292
  %7 = load i8, i8* %6, align 1, !tbaa !834
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2293
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2293

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2296, metadata !727), !dbg !2310
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2308, metadata !727), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2309, metadata !727), !dbg !2315
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !834
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2316
  %15 = icmp eq i32 %14, 84, !dbg !2316
  br i1 %15, label %16, label %72, !dbg !2316

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2319, metadata !727), !dbg !2332
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2330, metadata !727), !dbg !2336
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2331, metadata !727), !dbg !2337
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !834
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2338
  %21 = icmp eq i32 %20, 70, !dbg !2338
  br i1 %21, label %22, label %72, !dbg !2338

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2341, metadata !727), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2351, metadata !727), !dbg !2357
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2352, metadata !727), !dbg !2358
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !834
  %25 = icmp eq i8 %24, 45, !dbg !2359
  br i1 %25, label %26, label %72, !dbg !2362

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2364, metadata !727), !dbg !2375
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2373, metadata !727), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2374, metadata !727), !dbg !2380
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !834
  %29 = icmp eq i8 %28, 56, !dbg !2381
  br i1 %29, label %30, label %72, !dbg !2384

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2386, metadata !727), !dbg !2396
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2394, metadata !727), !dbg !2400
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2395, metadata !727), !dbg !2401
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !834
  %33 = icmp eq i8 %32, 0, !dbg !2402
  br i1 %33, label %34, label %72, !dbg !2405

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2407, !tbaa !834
  %36 = icmp eq i8 %35, 96, !dbg !2408
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.54, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.55, i64 0, i64 0), !dbg !2407
  br label %75, !dbg !2409

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2296, metadata !727), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2308, metadata !727), !dbg !2414
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2309, metadata !727), !dbg !2415
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !834
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2416
  %43 = icmp eq i32 %42, 66, !dbg !2416
  br i1 %43, label %44, label %72, !dbg !2416

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2319, metadata !727), !dbg !2417
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2330, metadata !727), !dbg !2419
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2331, metadata !727), !dbg !2420
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !834
  %47 = icmp eq i8 %46, 49, !dbg !2421
  br i1 %47, label %48, label %72, !dbg !2423

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2341, metadata !727), !dbg !2425
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2351, metadata !727), !dbg !2427
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2352, metadata !727), !dbg !2428
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !834
  %51 = icmp eq i8 %50, 56, !dbg !2429
  br i1 %51, label %52, label %72, !dbg !2430

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2364, metadata !727), !dbg !2431
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2373, metadata !727), !dbg !2433
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2374, metadata !727), !dbg !2434
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !834
  %55 = icmp eq i8 %54, 48, !dbg !2435
  br i1 %55, label %56, label %72, !dbg !2436

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2386, metadata !727), !dbg !2437
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2394, metadata !727), !dbg !2439
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2395, metadata !727), !dbg !2440
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !834
  %59 = icmp eq i8 %58, 51, !dbg !2441
  br i1 %59, label %60, label %72, !dbg !2442

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2443, metadata !727), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2450, metadata !727), !dbg !2456
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2451, metadata !727), !dbg !2457
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !834
  %63 = icmp eq i8 %62, 48, !dbg !2458
  br i1 %63, label %64, label %72, !dbg !2461

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2463, metadata !727), !dbg !2471
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2469, metadata !727), !dbg !2475
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2470, metadata !727), !dbg !2476
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !834
  %67 = icmp eq i8 %66, 0, !dbg !2477
  br i1 %67, label %68, label %72, !dbg !2480

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2481, !tbaa !834
  %70 = icmp eq i8 %69, 96, !dbg !2482
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2481
  br label %75, !dbg !2483

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2484
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.52, i64 0, i64 0), !dbg !2485
  br label %75, !dbg !2486

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2487
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2488 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2492, metadata !727), !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2493, metadata !727), !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2494, metadata !727), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2498, metadata !727) #10, !dbg !2511
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2503, metadata !727) #10, !dbg !2513
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2504, metadata !727) #10, !dbg !2514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2505, metadata !727) #10, !dbg !2515
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2516
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2506, metadata !727) #10, !dbg !2517
  %6 = tail call i32* @__errno_location() #1, !dbg !2518
  %7 = load i32, i32* %6, align 4, !dbg !2518, !tbaa !852
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2507, metadata !727) #10, !dbg !2519
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2520
  %9 = load i32, i32* %8, align 4, !dbg !2520, !tbaa !1400
  %10 = or i32 %9, 1, !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2508, metadata !727) #10, !dbg !2522
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2523
  %12 = load i32, i32* %11, align 8, !dbg !2523, !tbaa !1338
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2524
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2525
  %15 = load i8*, i8** %14, align 8, !dbg !2525, !tbaa !1427
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2526
  %17 = load i8*, i8** %16, align 8, !dbg !2526, !tbaa !1430
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2527
  %19 = add i64 %18, 1, !dbg !2528
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2509, metadata !727) #10, !dbg !2529
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2530, metadata !727) #10, !dbg !2535
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2510, metadata !727) #10, !dbg !2538
  %21 = load i32, i32* %11, align 8, !dbg !2539, !tbaa !1338
  %22 = load i8*, i8** %14, align 8, !dbg !2540, !tbaa !1427
  %23 = load i8*, i8** %16, align 8, !dbg !2541, !tbaa !1430
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2542
  store i32 %7, i32* %6, align 4, !dbg !2543, !tbaa !852
  ret i8* %20, !dbg !2544
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2499 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2498, metadata !727), !dbg !2545
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2503, metadata !727), !dbg !2546
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2504, metadata !727), !dbg !2547
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2505, metadata !727), !dbg !2548
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2549
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2549
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2506, metadata !727), !dbg !2550
  %7 = tail call i32* @__errno_location() #1, !dbg !2551
  %8 = load i32, i32* %7, align 4, !dbg !2551, !tbaa !852
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2507, metadata !727), !dbg !2552
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2553
  %10 = load i32, i32* %9, align 4, !dbg !2553, !tbaa !1400
  %11 = icmp ne i64* %2, null, !dbg !2554
  %12 = xor i1 %11, true, !dbg !2554
  %13 = zext i1 %12 to i32, !dbg !2554
  %14 = or i32 %10, %13, !dbg !2555
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2508, metadata !727), !dbg !2556
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2557
  %16 = load i32, i32* %15, align 8, !dbg !2557, !tbaa !1338
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2558
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2559
  %19 = load i8*, i8** %18, align 8, !dbg !2559, !tbaa !1427
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2560
  %21 = load i8*, i8** %20, align 8, !dbg !2560, !tbaa !1430
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2561
  %23 = add i64 %22, 1, !dbg !2562
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2509, metadata !727), !dbg !2563
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2530, metadata !727) #10, !dbg !2564
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2566
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2510, metadata !727), !dbg !2567
  %25 = load i32, i32* %15, align 8, !dbg !2568, !tbaa !1338
  %26 = load i8*, i8** %18, align 8, !dbg !2569, !tbaa !1427
  %27 = load i8*, i8** %20, align 8, !dbg !2570, !tbaa !1430
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2571
  store i32 %8, i32* %7, align 4, !dbg !2572, !tbaa !852
  br i1 %11, label %29, label %30, !dbg !2573

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2574, !tbaa !950
  br label %30, !dbg !2576

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2577
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2578 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2582, !tbaa !735
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2580, metadata !727), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2581, metadata !727), !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2581, metadata !727), !dbg !2584
  %2 = load i32, i32* @nslots, align 4, !dbg !2585, !tbaa !852
  %3 = icmp sgt i32 %2, 1, !dbg !2589
  br i1 %3, label %4, label %14, !dbg !2590

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2592

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2592
  %8 = load i8*, i8** %7, align 8, !dbg !2592, !tbaa !2593
  tail call void @free(i8* %8) #10, !dbg !2595
  %9 = add nuw i64 %6, 1, !dbg !2596
  %10 = load i32, i32* @nslots, align 4, !dbg !2585, !tbaa !852
  %11 = sext i32 %10 to i64, !dbg !2589
  %12 = icmp slt i64 %9, %11, !dbg !2589
  br i1 %12, label %5, label %13, !dbg !2590, !llvm.loop !2598

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2601

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2601
  %16 = load i8*, i8** %15, align 8, !dbg !2601, !tbaa !2593
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2603
  br i1 %17, label %19, label %18, !dbg !2604

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2605
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2607, !tbaa !2608
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2609, !tbaa !2593
  br label %19, !dbg !2610

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2611
  br i1 %20, label %23, label %21, !dbg !2613

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2614
  tail call void @free(i8* %22) #10, !dbg !2616
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2617, !tbaa !735
  br label %23, !dbg !2618

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2619, !tbaa !852
  ret void, !dbg !2620
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2621 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2625, metadata !727), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2626, metadata !727), !dbg !2628
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2629
  ret i8* %3, !dbg !2630
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2631 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2635, metadata !727), !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2636, metadata !727), !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2637, metadata !727), !dbg !2651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2638, metadata !727), !dbg !2652
  %5 = tail call i32* @__errno_location() #1, !dbg !2653
  %6 = load i32, i32* %5, align 4, !dbg !2653, !tbaa !852
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2639, metadata !727), !dbg !2654
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2655, !tbaa !735
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2640, metadata !727), !dbg !2656
  %8 = icmp slt i32 %0, 0, !dbg !2657
  br i1 %8, label %9, label %10, !dbg !2659

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2660
  unreachable, !dbg !2660

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2661, !tbaa !852
  %12 = icmp sgt i32 %11, %0, !dbg !2662
  br i1 %12, label %34, label %13, !dbg !2663

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2664
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2665
  br i1 %15, label %16, label %17, !dbg !2667

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2668
  unreachable, !dbg !2668

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2669
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2669
  %20 = add nsw i32 %0, 1, !dbg !2671
  %21 = sext i32 %20 to i64, !dbg !2672
  %22 = shl nsw i64 %21, 4, !dbg !2673
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2674
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2674
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2640, metadata !727), !dbg !2656
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2675, !tbaa !735
  br i1 %14, label %25, label %26, !dbg !2676

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2677, !tbaa.struct !2679
  br label %26, !dbg !2680

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2681, !tbaa !852
  %28 = sext i32 %27 to i64, !dbg !2682
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2682
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2683
  %31 = sub nsw i32 %20, %27, !dbg !2684
  %32 = sext i32 %31 to i64, !dbg !2685
  %33 = shl nsw i64 %32, 4, !dbg !2686
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2683
  store i32 %20, i32* @nslots, align 4, !dbg !2687, !tbaa !852
  br label %34, !dbg !2688

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2640, metadata !727), !dbg !2656
  %36 = sext i32 %0 to i64, !dbg !2689
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2690
  %38 = load i64, i64* %37, align 8, !dbg !2690, !tbaa !2608
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2644, metadata !727), !dbg !2691
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2692
  %40 = load i8*, i8** %39, align 8, !dbg !2692, !tbaa !2593
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2646, metadata !727), !dbg !2693
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2694
  %42 = load i32, i32* %41, align 4, !dbg !2694, !tbaa !1400
  %43 = or i32 %42, 1, !dbg !2695
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2647, metadata !727), !dbg !2696
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2697
  %45 = load i32, i32* %44, align 8, !dbg !2697, !tbaa !1338
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2698
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2699
  %48 = load i8*, i8** %47, align 8, !dbg !2699, !tbaa !1427
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2700
  %50 = load i8*, i8** %49, align 8, !dbg !2700, !tbaa !1430
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2648, metadata !727), !dbg !2702
  %52 = icmp ugt i64 %38, %51, !dbg !2703
  br i1 %52, label %63, label %53, !dbg !2705

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2644, metadata !727), !dbg !2691
  store i64 %54, i64* %37, align 8, !dbg !2708, !tbaa !2608
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2709
  br i1 %55, label %57, label %56, !dbg !2711

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2712
  br label %57, !dbg !2712

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2530, metadata !727) #10, !dbg !2713
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2715
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2646, metadata !727), !dbg !2693
  store i8* %58, i8** %39, align 8, !dbg !2716, !tbaa !2593
  %59 = load i32, i32* %44, align 8, !dbg !2717, !tbaa !1338
  %60 = load i8*, i8** %47, align 8, !dbg !2718, !tbaa !1427
  %61 = load i8*, i8** %49, align 8, !dbg !2719, !tbaa !1430
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2720
  br label %63, !dbg !2721

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2646, metadata !727), !dbg !2693
  store i32 %6, i32* %5, align 4, !dbg !2722, !tbaa !852
  ret i8* %64, !dbg !2723
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2724 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2728, metadata !727), !dbg !2731
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2729, metadata !727), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2730, metadata !727), !dbg !2733
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2734
  ret i8* %4, !dbg !2735
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2736 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2740, metadata !727), !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2625, metadata !727) #10, !dbg !2742
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2626, metadata !727) #10, !dbg !2744
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2745
  ret i8* %2, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2747 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2751, metadata !727), !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2752, metadata !727), !dbg !2754
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2728, metadata !727) #10, !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2729, metadata !727) #10, !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2730, metadata !727) #10, !dbg !2758
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2759
  ret i8* %3, !dbg !2760
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2761 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2769, metadata !2775), !dbg !2776
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2765, metadata !727), !dbg !2778
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2766, metadata !727), !dbg !2779
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2767, metadata !727), !dbg !2780
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2781
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2781
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2768, metadata !1887), !dbg !2782
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2774, metadata !727) #10, !dbg !2783
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2784
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2784
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2769, metadata !727) #10, !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2769, metadata !2785) #10, !dbg !2776
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2776
  %8 = icmp eq i32 %1, 10, !dbg !2786
  br i1 %8, label %9, label %10, !dbg !2788

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2789, !noalias !2790
  unreachable, !dbg !2789

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2769, metadata !2785) #10, !dbg !2776
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2793
  store i32 %1, i32* %11, align 8, !dbg !2793, !alias.scope !2790
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2793
  %13 = bitcast i32* %12 to i8*, !dbg !2793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2793
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2794
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2768, metadata !1887), !dbg !2782
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2795
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2796
  ret i8* %14, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2798 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2769, metadata !2775), !dbg !2807
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2802, metadata !727), !dbg !2809
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2803, metadata !727), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2804, metadata !727), !dbg !2811
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2805, metadata !727), !dbg !2812
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2813
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2813
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2806, metadata !1887), !dbg !2814
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2774, metadata !727) #10, !dbg !2815
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2816
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2816
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2769, metadata !727) #10, !dbg !2807
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2769, metadata !2785) #10, !dbg !2807
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2807
  %9 = icmp eq i32 %1, 10, !dbg !2817
  br i1 %9, label %10, label %11, !dbg !2818

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2819, !noalias !2820
  unreachable, !dbg !2819

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2769, metadata !2785) #10, !dbg !2807
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2823
  store i32 %1, i32* %12, align 8, !dbg !2823, !alias.scope !2820
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2823
  %14 = bitcast i32* %13 to i8*, !dbg !2823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2823
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2824
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2806, metadata !1887), !dbg !2814
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2825
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2826
  ret i8* %15, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2828 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2769, metadata !2775), !dbg !2834
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2832, metadata !727), !dbg !2837
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2833, metadata !727), !dbg !2838
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2765, metadata !727) #10, !dbg !2839
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2766, metadata !727) #10, !dbg !2840
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2767, metadata !727) #10, !dbg !2841
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2842
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2768, metadata !1887) #10, !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2774, metadata !727) #10, !dbg !2844
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2845
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2845
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2769, metadata !727) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2769, metadata !2785) #10, !dbg !2834
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2834
  %7 = icmp eq i32 %0, 10, !dbg !2846
  br i1 %7, label %8, label %9, !dbg !2847

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2848, !noalias !2849
  unreachable, !dbg !2848

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2769, metadata !2785) #10, !dbg !2834
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2852
  store i32 %0, i32* %10, align 8, !dbg !2852, !alias.scope !2849
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2852
  %12 = bitcast i32* %11 to i8*, !dbg !2852
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2852
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2853
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2768, metadata !1887) #10, !dbg !2843
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2854
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2855
  ret i8* %13, !dbg !2856
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2857 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2769, metadata !2775), !dbg !2864
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2861, metadata !727), !dbg !2867
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2862, metadata !727), !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2863, metadata !727), !dbg !2869
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2802, metadata !727) #10, !dbg !2870
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2803, metadata !727) #10, !dbg !2871
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2804, metadata !727) #10, !dbg !2872
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2805, metadata !727) #10, !dbg !2873
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2874
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2874
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2806, metadata !1887) #10, !dbg !2875
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2774, metadata !727) #10, !dbg !2876
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2877
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2877
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2769, metadata !727) #10, !dbg !2864
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2769, metadata !2785) #10, !dbg !2864
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2864
  %8 = icmp eq i32 %0, 10, !dbg !2878
  br i1 %8, label %9, label %10, !dbg !2879

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2880, !noalias !2881
  unreachable, !dbg !2880

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2769, metadata !2785) #10, !dbg !2864
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2884
  store i32 %0, i32* %11, align 8, !dbg !2884, !alias.scope !2881
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2884
  %13 = bitcast i32* %12 to i8*, !dbg !2884
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2884
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2806, metadata !1887) #10, !dbg !2875
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2886
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2887
  ret i8* %14, !dbg !2888
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2889 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2893, metadata !727), !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2894, metadata !727), !dbg !2898
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2895, metadata !727), !dbg !2899
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2900
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2900
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2901, !tbaa.struct !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2896, metadata !1887), !dbg !2903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1358, metadata !727), !dbg !2904
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1359, metadata !727), !dbg !2906
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1360, metadata !727), !dbg !2907
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1361, metadata !727), !dbg !2908
  %6 = lshr i8 %2, 5, !dbg !2909
  %7 = zext i8 %6 to i64, !dbg !2909
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2910
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1362, metadata !727), !dbg !2911
  %9 = and i8 %2, 31, !dbg !2912
  %10 = zext i8 %9 to i32, !dbg !2913
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1364, metadata !727), !dbg !2914
  %11 = load i32, i32* %8, align 4, !dbg !2915, !tbaa !852
  %12 = lshr i32 %11, %10, !dbg !2916
  %13 = and i32 %12, 1, !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1365, metadata !727), !dbg !2918
  %14 = xor i32 %13, 1, !dbg !2919
  %15 = shl i32 %14, %10, !dbg !2920
  %16 = xor i32 %15, %11, !dbg !2921
  store i32 %16, i32* %8, align 4, !dbg !2921, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2896, metadata !1887), !dbg !2903
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2922
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2923
  ret i8* %17, !dbg !2924
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2925 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2929, metadata !727), !dbg !2931
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2930, metadata !727), !dbg !2932
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2893, metadata !727) #10, !dbg !2933
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2894, metadata !727) #10, !dbg !2935
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2895, metadata !727) #10, !dbg !2936
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2937
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2937
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2938, !tbaa.struct !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2896, metadata !1887) #10, !dbg !2939
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1358, metadata !727) #10, !dbg !2940
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1359, metadata !727) #10, !dbg !2942
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1360, metadata !727) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1361, metadata !727) #10, !dbg !2944
  %5 = lshr i8 %1, 5, !dbg !2945
  %6 = zext i8 %5 to i64, !dbg !2945
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2946
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1362, metadata !727) #10, !dbg !2947
  %8 = and i8 %1, 31, !dbg !2948
  %9 = zext i8 %8 to i32, !dbg !2949
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1364, metadata !727) #10, !dbg !2950
  %10 = load i32, i32* %7, align 4, !dbg !2951, !tbaa !852
  %11 = lshr i32 %10, %9, !dbg !2952
  %12 = and i32 %11, 1, !dbg !2953
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1365, metadata !727) #10, !dbg !2954
  %13 = xor i32 %12, 1, !dbg !2955
  %14 = shl i32 %13, %9, !dbg !2956
  %15 = xor i32 %14, %10, !dbg !2957
  store i32 %15, i32* %7, align 4, !dbg !2957, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2896, metadata !1887) #10, !dbg !2939
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2958
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2959
  ret i8* %16, !dbg !2960
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2961 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2963, metadata !727), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2929, metadata !727) #10, !dbg !2965
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2930, metadata !727) #10, !dbg !2967
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2893, metadata !727) #10, !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2894, metadata !727) #10, !dbg !2970
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2895, metadata !727) #10, !dbg !2971
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2972
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2972
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2973, !tbaa.struct !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2896, metadata !1887) #10, !dbg !2974
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1358, metadata !727) #10, !dbg !2975
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1359, metadata !727) #10, !dbg !2977
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1360, metadata !727) #10, !dbg !2978
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1361, metadata !727) #10, !dbg !2979
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2980
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1362, metadata !727) #10, !dbg !2981
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1364, metadata !727) #10, !dbg !2982
  %5 = load i32, i32* %4, align 4, !dbg !2983, !tbaa !852
  %6 = or i32 %5, 67108864, !dbg !2984
  store i32 %6, i32* %4, align 4, !dbg !2984, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2896, metadata !1887) #10, !dbg !2974
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2985
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2986
  ret i8* %7, !dbg !2987
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2988 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2990, metadata !727), !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2991, metadata !727), !dbg !2993
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2893, metadata !727) #10, !dbg !2994
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2894, metadata !727) #10, !dbg !2996
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2895, metadata !727) #10, !dbg !2997
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2998
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2998
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2999, !tbaa.struct !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2896, metadata !1887) #10, !dbg !3000
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1358, metadata !727) #10, !dbg !3001
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1359, metadata !727) #10, !dbg !3003
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1360, metadata !727) #10, !dbg !3004
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1361, metadata !727) #10, !dbg !3005
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3006
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1362, metadata !727) #10, !dbg !3007
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1364, metadata !727) #10, !dbg !3008
  %6 = load i32, i32* %5, align 4, !dbg !3009, !tbaa !852
  %7 = or i32 %6, 67108864, !dbg !3010
  store i32 %7, i32* %5, align 4, !dbg !3010, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2896, metadata !1887) #10, !dbg !3000
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3011
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3012
  ret i8* %8, !dbg !3013
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3014 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2769, metadata !2775), !dbg !3020
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3016, metadata !727), !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3017, metadata !727), !dbg !3023
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3018, metadata !727), !dbg !3024
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3025
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3025
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2774, metadata !727) #10, !dbg !3026
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3027
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3027
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2769, metadata !727) #10, !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2769, metadata !2785) #10, !dbg !3020
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3020
  %9 = icmp eq i32 %1, 10, !dbg !3028
  br i1 %9, label %10, label %11, !dbg !3029

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3030, !noalias !3031
  unreachable, !dbg !3030

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2769, metadata !2785) #10, !dbg !3020
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3034
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3035
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3036
  store i32 %1, i32* %13, align 8, !dbg !3036
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3036
  %15 = bitcast i32* %14 to i8*, !dbg !3036
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3036
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3019, metadata !1887), !dbg !3037
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1358, metadata !727), !dbg !3038
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1359, metadata !727), !dbg !3040
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1360, metadata !727), !dbg !3041
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1361, metadata !727), !dbg !3042
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3043
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1362, metadata !727), !dbg !3044
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1364, metadata !727), !dbg !3045
  %17 = load i32, i32* %16, align 4, !dbg !3046, !tbaa !852
  %18 = or i32 %17, 67108864, !dbg !3047
  store i32 %18, i32* %16, align 4, !dbg !3047, !tbaa !852
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3019, metadata !1887), !dbg !3037
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3048
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3049
  ret i8* %19, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3051 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3055, metadata !727), !dbg !3059
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3056, metadata !727), !dbg !3060
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3057, metadata !727), !dbg !3061
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3058, metadata !727), !dbg !3062
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3063, metadata !727) #10, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3068, metadata !727) #10, !dbg !3075
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3069, metadata !727) #10, !dbg !3076
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3070, metadata !727) #10, !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3071, metadata !727) #10, !dbg !3078
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3079
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3080, !tbaa.struct !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3072, metadata !1887) #10, !dbg !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1408, metadata !727) #10, !dbg !3082
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1409, metadata !727) #10, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1410, metadata !727) #10, !dbg !3085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1408, metadata !727) #10, !dbg !3082
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1408, metadata !727) #10, !dbg !3082
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3086
  store i32 10, i32* %7, align 8, !dbg !3087, !tbaa !1338
  %8 = icmp ne i8* %1, null, !dbg !3088
  %9 = icmp ne i8* %2, null, !dbg !3089
  %10 = and i1 %8, %9, !dbg !3090
  br i1 %10, label %12, label %11, !dbg !3090

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3091
  unreachable, !dbg !3091

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3092
  store i8* %1, i8** %13, align 8, !dbg !3093, !tbaa !1427
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3094
  store i8* %2, i8** %14, align 8, !dbg !3095, !tbaa !1430
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3072, metadata !1887) #10, !dbg !3081
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3096
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3097
  ret i8* %15, !dbg !3098
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3064 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3063, metadata !727), !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3068, metadata !727), !dbg !3100
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3069, metadata !727), !dbg !3101
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3070, metadata !727), !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3071, metadata !727), !dbg !3103
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3104
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3105, !tbaa.struct !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3072, metadata !1887), !dbg !3106
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1408, metadata !727) #10, !dbg !3107
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1409, metadata !727) #10, !dbg !3109
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1410, metadata !727) #10, !dbg !3110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1408, metadata !727) #10, !dbg !3107
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1408, metadata !727) #10, !dbg !3107
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3111
  store i32 10, i32* %8, align 8, !dbg !3112, !tbaa !1338
  %9 = icmp ne i8* %1, null, !dbg !3113
  %10 = icmp ne i8* %2, null, !dbg !3114
  %11 = and i1 %9, %10, !dbg !3115
  br i1 %11, label %13, label %12, !dbg !3115

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3116
  unreachable, !dbg !3116

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3117
  store i8* %1, i8** %14, align 8, !dbg !3118, !tbaa !1427
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3119
  store i8* %2, i8** %15, align 8, !dbg !3120, !tbaa !1430
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3072, metadata !1887), !dbg !3106
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3121
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3122
  ret i8* %16, !dbg !3123
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3124 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3128, metadata !727), !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3129, metadata !727), !dbg !3132
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3130, metadata !727), !dbg !3133
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3055, metadata !727) #10, !dbg !3134
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3056, metadata !727) #10, !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3057, metadata !727) #10, !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3058, metadata !727) #10, !dbg !3138
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3063, metadata !727) #10, !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3068, metadata !727) #10, !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3069, metadata !727) #10, !dbg !3142
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3070, metadata !727) #10, !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3071, metadata !727) #10, !dbg !3144
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3145
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3146, !tbaa.struct !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3072, metadata !1887) #10, !dbg !3147
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1408, metadata !727) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1409, metadata !727) #10, !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1410, metadata !727) #10, !dbg !3151
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1408, metadata !727) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1408, metadata !727) #10, !dbg !3148
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3152
  store i32 10, i32* %6, align 8, !dbg !3153, !tbaa !1338
  %7 = icmp ne i8* %0, null, !dbg !3154
  %8 = icmp ne i8* %1, null, !dbg !3155
  %9 = and i1 %7, %8, !dbg !3156
  br i1 %9, label %11, label %10, !dbg !3156

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3157
  unreachable, !dbg !3157

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3158
  store i8* %0, i8** %12, align 8, !dbg !3159, !tbaa !1427
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3160
  store i8* %1, i8** %13, align 8, !dbg !3161, !tbaa !1430
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3072, metadata !1887) #10, !dbg !3147
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3162
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3163
  ret i8* %14, !dbg !3164
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3165 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !727), !dbg !3173
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3170, metadata !727), !dbg !3174
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3171, metadata !727), !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3172, metadata !727), !dbg !3176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3063, metadata !727) #10, !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3068, metadata !727) #10, !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3069, metadata !727) #10, !dbg !3180
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3070, metadata !727) #10, !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3071, metadata !727) #10, !dbg !3182
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3183
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3183
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3184, !tbaa.struct !2902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3072, metadata !1887) #10, !dbg !3185
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1408, metadata !727) #10, !dbg !3186
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1409, metadata !727) #10, !dbg !3188
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1410, metadata !727) #10, !dbg !3189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1408, metadata !727) #10, !dbg !3186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1408, metadata !727) #10, !dbg !3186
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3190
  store i32 10, i32* %7, align 8, !dbg !3191, !tbaa !1338
  %8 = icmp ne i8* %0, null, !dbg !3192
  %9 = icmp ne i8* %1, null, !dbg !3193
  %10 = and i1 %8, %9, !dbg !3194
  br i1 %10, label %12, label %11, !dbg !3194

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3195
  unreachable, !dbg !3195

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3196
  store i8* %0, i8** %13, align 8, !dbg !3197, !tbaa !1427
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3198
  store i8* %1, i8** %14, align 8, !dbg !3199, !tbaa !1430
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3072, metadata !1887) #10, !dbg !3185
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3200
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3201
  ret i8* %15, !dbg !3202
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3203 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3207, metadata !727), !dbg !3210
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3208, metadata !727), !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3209, metadata !727), !dbg !3212
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3213
  ret i8* %4, !dbg !3214
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3215 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3219, metadata !727), !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3220, metadata !727), !dbg !3222
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3207, metadata !727) #10, !dbg !3223
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3208, metadata !727) #10, !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3209, metadata !727) #10, !dbg !3226
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3227
  ret i8* %3, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3229 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3233, metadata !727), !dbg !3235
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3234, metadata !727), !dbg !3236
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3207, metadata !727) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3208, metadata !727) #10, !dbg !3239
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3209, metadata !727) #10, !dbg !3240
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3241
  ret i8* %3, !dbg !3242
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3243 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3247, metadata !727), !dbg !3248
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3233, metadata !727) #10, !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3234, metadata !727) #10, !dbg !3251
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3207, metadata !727) #10, !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3208, metadata !727) #10, !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3209, metadata !727) #10, !dbg !3255
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3256
  ret i8* %2, !dbg !3257
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3258 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3303, metadata !727), !dbg !3309
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3304, metadata !727), !dbg !3310
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3305, metadata !727), !dbg !3311
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3306, metadata !727), !dbg !3312
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3307, metadata !727), !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3308, metadata !727), !dbg !3314
  %7 = icmp eq i8* %1, null, !dbg !3315
  br i1 %7, label %10, label %8, !dbg !3317

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3318
  br label %12, !dbg !3318

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3319
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i32 5) #10, !dbg !3320
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3321
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.63, i64 0, i64 0), i32 5) #10, !dbg !3323
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3324
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
  ], !dbg !3325

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3326
  unreachable, !dbg !3326

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.64, i64 0, i64 0), i32 5) #10, !dbg !3328
  %20 = load i8*, i8** %4, align 8, !dbg !3328, !tbaa !735
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3329
  br label %146, !dbg !3331

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.65, i64 0, i64 0), i32 5) #10, !dbg !3332
  %24 = load i8*, i8** %4, align 8, !dbg !3332, !tbaa !735
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3332
  %26 = load i8*, i8** %25, align 8, !dbg !3332, !tbaa !735
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3333
  br label %146, !dbg !3334

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.66, i64 0, i64 0), i32 5) #10, !dbg !3335
  %30 = load i8*, i8** %4, align 8, !dbg !3335, !tbaa !735
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3335
  %32 = load i8*, i8** %31, align 8, !dbg !3335, !tbaa !735
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3335
  %34 = load i8*, i8** %33, align 8, !dbg !3335, !tbaa !735
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3336
  br label %146, !dbg !3337

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.67, i64 0, i64 0), i32 5) #10, !dbg !3338
  %38 = load i8*, i8** %4, align 8, !dbg !3338, !tbaa !735
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3338
  %40 = load i8*, i8** %39, align 8, !dbg !3338, !tbaa !735
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3338
  %42 = load i8*, i8** %41, align 8, !dbg !3338, !tbaa !735
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3338
  %44 = load i8*, i8** %43, align 8, !dbg !3338, !tbaa !735
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3339
  br label %146, !dbg !3340

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.68, i64 0, i64 0), i32 5) #10, !dbg !3341
  %48 = load i8*, i8** %4, align 8, !dbg !3341, !tbaa !735
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3341
  %50 = load i8*, i8** %49, align 8, !dbg !3341, !tbaa !735
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3341
  %52 = load i8*, i8** %51, align 8, !dbg !3341, !tbaa !735
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3341
  %54 = load i8*, i8** %53, align 8, !dbg !3341, !tbaa !735
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3341
  %56 = load i8*, i8** %55, align 8, !dbg !3341, !tbaa !735
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3342
  br label %146, !dbg !3343

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.69, i64 0, i64 0), i32 5) #10, !dbg !3344
  %60 = load i8*, i8** %4, align 8, !dbg !3344, !tbaa !735
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3344
  %62 = load i8*, i8** %61, align 8, !dbg !3344, !tbaa !735
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3344
  %64 = load i8*, i8** %63, align 8, !dbg !3344, !tbaa !735
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3344
  %66 = load i8*, i8** %65, align 8, !dbg !3344, !tbaa !735
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3344
  %68 = load i8*, i8** %67, align 8, !dbg !3344, !tbaa !735
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3344
  %70 = load i8*, i8** %69, align 8, !dbg !3344, !tbaa !735
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3345
  br label %146, !dbg !3346

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.70, i64 0, i64 0), i32 5) #10, !dbg !3347
  %74 = load i8*, i8** %4, align 8, !dbg !3347, !tbaa !735
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3347
  %76 = load i8*, i8** %75, align 8, !dbg !3347, !tbaa !735
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3347
  %78 = load i8*, i8** %77, align 8, !dbg !3347, !tbaa !735
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3347
  %80 = load i8*, i8** %79, align 8, !dbg !3347, !tbaa !735
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3347
  %82 = load i8*, i8** %81, align 8, !dbg !3347, !tbaa !735
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3347
  %84 = load i8*, i8** %83, align 8, !dbg !3347, !tbaa !735
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3347
  %86 = load i8*, i8** %85, align 8, !dbg !3347, !tbaa !735
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3348
  br label %146, !dbg !3349

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.71, i64 0, i64 0), i32 5) #10, !dbg !3350
  %90 = load i8*, i8** %4, align 8, !dbg !3350, !tbaa !735
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3350
  %92 = load i8*, i8** %91, align 8, !dbg !3350, !tbaa !735
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3350
  %94 = load i8*, i8** %93, align 8, !dbg !3350, !tbaa !735
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3350
  %96 = load i8*, i8** %95, align 8, !dbg !3350, !tbaa !735
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3350
  %98 = load i8*, i8** %97, align 8, !dbg !3350, !tbaa !735
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3350
  %100 = load i8*, i8** %99, align 8, !dbg !3350, !tbaa !735
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3350
  %102 = load i8*, i8** %101, align 8, !dbg !3350, !tbaa !735
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3350
  %104 = load i8*, i8** %103, align 8, !dbg !3350, !tbaa !735
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3351
  br label %146, !dbg !3352

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.72, i64 0, i64 0), i32 5) #10, !dbg !3353
  %108 = load i8*, i8** %4, align 8, !dbg !3353, !tbaa !735
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3353
  %110 = load i8*, i8** %109, align 8, !dbg !3353, !tbaa !735
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3353
  %112 = load i8*, i8** %111, align 8, !dbg !3353, !tbaa !735
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3353
  %114 = load i8*, i8** %113, align 8, !dbg !3353, !tbaa !735
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3353
  %116 = load i8*, i8** %115, align 8, !dbg !3353, !tbaa !735
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3353
  %118 = load i8*, i8** %117, align 8, !dbg !3353, !tbaa !735
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3353
  %120 = load i8*, i8** %119, align 8, !dbg !3353, !tbaa !735
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3353
  %122 = load i8*, i8** %121, align 8, !dbg !3353, !tbaa !735
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3353
  %124 = load i8*, i8** %123, align 8, !dbg !3353, !tbaa !735
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3354
  br label %146, !dbg !3355

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.73, i64 0, i64 0), i32 5) #10, !dbg !3356
  %128 = load i8*, i8** %4, align 8, !dbg !3356, !tbaa !735
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3356
  %130 = load i8*, i8** %129, align 8, !dbg !3356, !tbaa !735
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3356
  %132 = load i8*, i8** %131, align 8, !dbg !3356, !tbaa !735
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3356
  %134 = load i8*, i8** %133, align 8, !dbg !3356, !tbaa !735
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3356
  %136 = load i8*, i8** %135, align 8, !dbg !3356, !tbaa !735
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3356
  %138 = load i8*, i8** %137, align 8, !dbg !3356, !tbaa !735
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3356
  %140 = load i8*, i8** %139, align 8, !dbg !3356, !tbaa !735
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3356
  %142 = load i8*, i8** %141, align 8, !dbg !3356, !tbaa !735
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3356
  %144 = load i8*, i8** %143, align 8, !dbg !3356, !tbaa !735
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3357
  br label %146, !dbg !3358

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3360 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3364, metadata !727), !dbg !3370
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3365, metadata !727), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3366, metadata !727), !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3367, metadata !727), !dbg !3373
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3368, metadata !727), !dbg !3374
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3369, metadata !727), !dbg !3375
  br label %6, !dbg !3376

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3369, metadata !727), !dbg !3375
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3378
  %9 = load i8*, i8** %8, align 8, !dbg !3378, !tbaa !735
  %10 = icmp eq i8* %9, null, !dbg !3381
  %11 = add i64 %7, 1, !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3369, metadata !727), !dbg !3375
  br i1 %10, label %12, label %6, !dbg !3381, !llvm.loop !3385

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3388
  ret void, !dbg !3389
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3390 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3401, metadata !727), !dbg !3409
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3402, metadata !727), !dbg !3410
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3403, metadata !727), !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3404, metadata !727), !dbg !3412
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3405, metadata !727), !dbg !3413
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3414
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3414
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3407, metadata !727), !dbg !3415
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3406, metadata !727), !dbg !3416
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3417
  %12 = icmp ult i32 %11, 41, !dbg !3417
  br i1 %12, label %13, label %18, !dbg !3417

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3421
  %15 = sext i32 %11 to i64, !dbg !3421
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3421
  %17 = add i32 %11, 8, !dbg !3421
  store i32 %17, i32* %8, align 8, !dbg !3421
  br label %21, !dbg !3421

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3423
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3423
  store i8* %20, i8** %10, align 8, !dbg !3423
  br label %21, !dbg !3423

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3417
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3425
  %25 = load i8*, i8** %24, align 8, !dbg !3425
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3427
  store i8* %25, i8** %26, align 16, !dbg !3428, !tbaa !735
  %27 = icmp eq i8* %25, null, !dbg !3429
  br i1 %27, label %30, label %28, !dbg !3430

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %29 = icmp ult i32 %22, 41, !dbg !3417
  br i1 %29, label %35, label %32, !dbg !3417

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3432
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3433
  ret void, !dbg !3433

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3423
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3423
  store i8* %34, i8** %10, align 8, !dbg !3423
  br label %40, !dbg !3423

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3421
  %37 = sext i32 %22 to i64, !dbg !3421
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3421
  %39 = add i32 %22, 8, !dbg !3421
  store i32 %39, i32* %8, align 8, !dbg !3421
  br label %40, !dbg !3421

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3417
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3425
  %44 = load i8*, i8** %43, align 8, !dbg !3425
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3427
  store i8* %44, i8** %45, align 8, !dbg !3428, !tbaa !735
  %46 = icmp eq i8* %44, null, !dbg !3429
  br i1 %46, label %30, label %47, !dbg !3430

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %48 = icmp ult i32 %41, 41, !dbg !3417
  br i1 %48, label %52, label %49, !dbg !3417

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3423
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3423
  store i8* %51, i8** %10, align 8, !dbg !3423
  br label %57, !dbg !3423

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3421
  %54 = sext i32 %41 to i64, !dbg !3421
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3421
  %56 = add i32 %41, 8, !dbg !3421
  store i32 %56, i32* %8, align 8, !dbg !3421
  br label %57, !dbg !3421

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3417
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3425
  %61 = load i8*, i8** %60, align 8, !dbg !3425
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3427
  store i8* %61, i8** %62, align 16, !dbg !3428, !tbaa !735
  %63 = icmp eq i8* %61, null, !dbg !3429
  br i1 %63, label %30, label %64, !dbg !3430

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %65 = icmp ult i32 %58, 41, !dbg !3417
  br i1 %65, label %69, label %66, !dbg !3417

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3423
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3423
  store i8* %68, i8** %10, align 8, !dbg !3423
  br label %74, !dbg !3423

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3421
  %71 = sext i32 %58 to i64, !dbg !3421
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3421
  %73 = add i32 %58, 8, !dbg !3421
  store i32 %73, i32* %8, align 8, !dbg !3421
  br label %74, !dbg !3421

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3417
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3425
  %78 = load i8*, i8** %77, align 8, !dbg !3425
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3427
  store i8* %78, i8** %79, align 8, !dbg !3428, !tbaa !735
  %80 = icmp eq i8* %78, null, !dbg !3429
  br i1 %80, label %30, label %81, !dbg !3430

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %82 = icmp ult i32 %75, 41, !dbg !3417
  br i1 %82, label %86, label %83, !dbg !3417

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3423
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3423
  store i8* %85, i8** %10, align 8, !dbg !3423
  br label %91, !dbg !3423

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3421
  %88 = sext i32 %75 to i64, !dbg !3421
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3421
  %90 = add i32 %75, 8, !dbg !3421
  store i32 %90, i32* %8, align 8, !dbg !3421
  br label %91, !dbg !3421

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3417
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3425
  %95 = load i8*, i8** %94, align 8, !dbg !3425
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3427
  store i8* %95, i8** %96, align 16, !dbg !3428, !tbaa !735
  %97 = icmp eq i8* %95, null, !dbg !3429
  br i1 %97, label %30, label %98, !dbg !3430

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %99 = icmp ult i32 %92, 41, !dbg !3417
  br i1 %99, label %103, label %100, !dbg !3417

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3423
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3423
  store i8* %102, i8** %10, align 8, !dbg !3423
  br label %108, !dbg !3423

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3421
  %105 = sext i32 %92 to i64, !dbg !3421
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3421
  %107 = add i32 %92, 8, !dbg !3421
  store i32 %107, i32* %8, align 8, !dbg !3421
  br label %108, !dbg !3421

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3425
  %111 = load i8*, i8** %110, align 8, !dbg !3425
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3427
  store i8* %111, i8** %112, align 8, !dbg !3428, !tbaa !735
  %113 = icmp eq i8* %111, null, !dbg !3429
  br i1 %113, label %30, label %114, !dbg !3430

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %115 = load i8*, i8** %10, align 8, !dbg !3423
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3423
  store i8* %116, i8** %10, align 8, !dbg !3423
  %117 = bitcast i8* %115 to i8**, !dbg !3425
  %118 = load i8*, i8** %117, align 8, !dbg !3425
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3427
  store i8* %118, i8** %119, align 16, !dbg !3428, !tbaa !735
  %120 = icmp eq i8* %118, null, !dbg !3429
  br i1 %120, label %30, label %121, !dbg !3430

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %122 = load i8*, i8** %10, align 8, !dbg !3423
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3423
  store i8* %123, i8** %10, align 8, !dbg !3423
  %124 = bitcast i8* %122 to i8**, !dbg !3425
  %125 = load i8*, i8** %124, align 8, !dbg !3425
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3427
  store i8* %125, i8** %126, align 8, !dbg !3428, !tbaa !735
  %127 = icmp eq i8* %125, null, !dbg !3429
  br i1 %127, label %30, label %128, !dbg !3430

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %129 = load i8*, i8** %10, align 8, !dbg !3423
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3423
  store i8* %130, i8** %10, align 8, !dbg !3423
  %131 = bitcast i8* %129 to i8**, !dbg !3425
  %132 = load i8*, i8** %131, align 8, !dbg !3425
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3427
  store i8* %132, i8** %133, align 16, !dbg !3428, !tbaa !735
  %134 = icmp eq i8* %132, null, !dbg !3429
  br i1 %134, label %30, label %135, !dbg !3430

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %136 = load i8*, i8** %10, align 8, !dbg !3423
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3423
  store i8* %137, i8** %10, align 8, !dbg !3423
  %138 = bitcast i8* %136 to i8**, !dbg !3425
  %139 = load i8*, i8** %138, align 8, !dbg !3425
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3427
  store i8* %139, i8** %140, align 8, !dbg !3428, !tbaa !735
  %141 = icmp eq i8* %139, null, !dbg !3429
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3406, metadata !727), !dbg !3416
  %142 = select i1 %141, i64 9, i64 10, !dbg !3430
  br label %30, !dbg !3430
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3434 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3438, metadata !727), !dbg !3448
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3439, metadata !727), !dbg !3449
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3440, metadata !727), !dbg !3450
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3441, metadata !727), !dbg !3451
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3452
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3452
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3442, metadata !727), !dbg !3453
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3454
  call void @llvm.va_start(i8* nonnull %6), !dbg !3454
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3455
  call void @llvm.va_end(i8* nonnull %6), !dbg !3456
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3457
  ret void, !dbg !3457
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3458 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #10, !dbg !3459
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #10, !dbg !3460
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.78, i64 0, i64 0), i32 5) #10, !dbg !3462
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.80, i64 0, i64 0)) #10, !dbg !3463
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.81, i64 0, i64 0), i32 5) #10, !dbg !3464
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3464, !tbaa !735
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3465
  ret void, !dbg !3466
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3467 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3471, metadata !727), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3472, metadata !727), !dbg !3474
  %3 = udiv i64 9223372036854775807, %1, !dbg !3475
  %4 = icmp ult i64 %3, %0, !dbg !3475
  br i1 %4, label %5, label %6, !dbg !3477

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3478
  unreachable, !dbg !3478

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3480, metadata !727) #10, !dbg !3487
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3489
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3486, metadata !727) #10, !dbg !3490
  %9 = icmp eq i8* %8, null, !dbg !3491
  %10 = icmp ne i64 %7, 0, !dbg !3493
  %11 = and i1 %10, %9, !dbg !3495
  br i1 %11, label %12, label %13, !dbg !3495

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3496
  unreachable, !dbg !3496

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3497
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3481 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3480, metadata !727), !dbg !3498
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3499
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3486, metadata !727), !dbg !3500
  %3 = icmp eq i8* %2, null, !dbg !3501
  %4 = icmp ne i64 %0, 0, !dbg !3502
  %5 = and i1 %4, %3, !dbg !3503
  br i1 %5, label %6, label %7, !dbg !3503

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3504
  unreachable, !dbg !3504

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3505
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3506 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3510, metadata !727), !dbg !3513
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3511, metadata !727), !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3512, metadata !727), !dbg !3515
  %4 = udiv i64 9223372036854775807, %2, !dbg !3516
  %5 = icmp ult i64 %4, %1, !dbg !3516
  br i1 %5, label %6, label %7, !dbg !3518

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3519
  unreachable, !dbg !3519

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3520
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3521, metadata !727) #10, !dbg !3527
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3526, metadata !727) #10, !dbg !3529
  %9 = icmp eq i64 %8, 0, !dbg !3530
  %10 = icmp ne i8* %0, null, !dbg !3532
  %11 = and i1 %10, %9, !dbg !3534
  br i1 %11, label %12, label %13, !dbg !3534

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3535
  br label %19, !dbg !3537

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3538
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3521, metadata !727) #10, !dbg !3527
  %15 = icmp eq i8* %14, null, !dbg !3539
  %16 = icmp ne i64 %8, 0, !dbg !3541
  %17 = and i1 %16, %15, !dbg !3543
  br i1 %17, label %18, label %19, !dbg !3543

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3544
  unreachable, !dbg !3544

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3545
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3522 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3521, metadata !727), !dbg !3546
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3526, metadata !727), !dbg !3547
  %3 = icmp eq i64 %1, 0, !dbg !3548
  %4 = icmp ne i8* %0, null, !dbg !3549
  %5 = and i1 %4, %3, !dbg !3550
  br i1 %5, label %6, label %7, !dbg !3550

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3551
  br label %13, !dbg !3552

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3553
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3521, metadata !727), !dbg !3546
  %9 = icmp eq i8* %8, null, !dbg !3554
  %10 = icmp ne i64 %1, 0, !dbg !3555
  %11 = and i1 %10, %9, !dbg !3556
  br i1 %11, label %12, label %13, !dbg !3556

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3557
  unreachable, !dbg !3557

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3558
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !672 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !677, metadata !727), !dbg !3559
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !678, metadata !727), !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !679, metadata !727), !dbg !3561
  %4 = load i64, i64* %1, align 8, !dbg !3562, !tbaa !950
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !680, metadata !727), !dbg !3563
  %5 = icmp eq i8* %0, null, !dbg !3564
  br i1 %5, label %6, label %13, !dbg !3566

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3567
  br i1 %7, label %8, label %17, !dbg !3570

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !680, metadata !727), !dbg !3563
  %10 = icmp ugt i64 %2, 128, !dbg !3573
  %11 = zext i1 %10 to i64, !dbg !3573
  %12 = add nuw nsw i64 %9, %11, !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !680, metadata !727), !dbg !3563
  br label %17, !dbg !3575

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3576
  %15 = icmp ugt i64 %14, %4, !dbg !3579
  br i1 %15, label %20, label %16, !dbg !3580

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3581
  unreachable, !dbg !3581

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !680, metadata !727), !dbg !3563
  store i64 %18, i64* %1, align 8, !dbg !3582, !tbaa !950
  %19 = mul i64 %18, %2, !dbg !3583
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3521, metadata !727) #10, !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3526, metadata !727) #10, !dbg !3586
  br label %27, !dbg !3587

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3588
  %22 = add i64 %4, 1, !dbg !3589
  %23 = add i64 %22, %21, !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !680, metadata !727), !dbg !3563
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !680, metadata !727), !dbg !3563
  store i64 %23, i64* %1, align 8, !dbg !3582, !tbaa !950
  %24 = mul i64 %23, %2, !dbg !3583
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3521, metadata !727) #10, !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3526, metadata !727) #10, !dbg !3586
  %25 = icmp eq i64 %24, 0, !dbg !3591
  br i1 %25, label %26, label %27, !dbg !3587

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3592
  br label %34, !dbg !3593

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3594
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3521, metadata !727) #10, !dbg !3584
  %30 = icmp eq i8* %29, null, !dbg !3595
  %31 = icmp ne i64 %28, 0, !dbg !3596
  %32 = and i1 %31, %30, !dbg !3597
  br i1 %32, label %33, label %34, !dbg !3597

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3598
  unreachable, !dbg !3598

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3599
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3600 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3602, metadata !727), !dbg !3603
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3480, metadata !727) #10, !dbg !3604
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3606
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3486, metadata !727) #10, !dbg !3607
  %3 = icmp eq i8* %2, null, !dbg !3608
  %4 = icmp ne i64 %0, 0, !dbg !3609
  %5 = and i1 %4, %3, !dbg !3610
  br i1 %5, label %6, label %7, !dbg !3610

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3611
  unreachable, !dbg !3611

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3612
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3613 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3617, metadata !727), !dbg !3619
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3618, metadata !727), !dbg !3620
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !677, metadata !727) #10, !dbg !3621
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !678, metadata !727) #10, !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !679, metadata !727) #10, !dbg !3624
  %3 = load i64, i64* %1, align 8, !dbg !3625, !tbaa !950
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !680, metadata !727) #10, !dbg !3626
  %4 = icmp eq i8* %0, null, !dbg !3627
  br i1 %4, label %5, label %8, !dbg !3628

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3629
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !680, metadata !727) #10, !dbg !3626
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !680, metadata !727) #10, !dbg !3626
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !680, metadata !727) #10, !dbg !3626
  store i64 %7, i64* %1, align 8, !dbg !3631, !tbaa !950
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3521, metadata !727) #10, !dbg !3632
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3526, metadata !727) #10, !dbg !3634
  br label %17, !dbg !3635

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3636
  br i1 %9, label %11, label %10, !dbg !3637

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3638
  unreachable, !dbg !3638

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3639
  %13 = add i64 %3, 1, !dbg !3640
  %14 = add i64 %13, %12, !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !680, metadata !727) #10, !dbg !3626
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !680, metadata !727) #10, !dbg !3626
  store i64 %14, i64* %1, align 8, !dbg !3631, !tbaa !950
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3521, metadata !727) #10, !dbg !3632
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3526, metadata !727) #10, !dbg !3634
  %15 = icmp eq i64 %14, 0, !dbg !3642
  br i1 %15, label %16, label %17, !dbg !3635

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3643
  br label %24, !dbg !3644

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3645
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3521, metadata !727) #10, !dbg !3632
  %20 = icmp eq i8* %19, null, !dbg !3646
  %21 = icmp ne i64 %18, 0, !dbg !3647
  %22 = and i1 %21, %20, !dbg !3648
  br i1 %22, label %23, label %24, !dbg !3648

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3649
  unreachable, !dbg !3649

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3650
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3651 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3653, metadata !727), !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3480, metadata !727) #10, !dbg !3655
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3657
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3486, metadata !727) #10, !dbg !3658
  %3 = icmp eq i8* %2, null, !dbg !3659
  %4 = icmp ne i64 %0, 0, !dbg !3660
  %5 = and i1 %4, %3, !dbg !3661
  br i1 %5, label %6, label %7, !dbg !3661

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3662
  unreachable, !dbg !3662

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3663
  ret i8* %2, !dbg !3664
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3665 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3667, metadata !727), !dbg !3670
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3668, metadata !727), !dbg !3671
  %3 = udiv i64 9223372036854775807, %1, !dbg !3672
  %4 = icmp ult i64 %3, %0, !dbg !3672
  br i1 %4, label %8, label %5, !dbg !3674

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3669, metadata !727), !dbg !3677
  %7 = icmp eq i8* %6, null, !dbg !3678
  br i1 %7, label %8, label %9, !dbg !3679

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3681
  unreachable, !dbg !3681

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3682
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3683 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3687, metadata !727), !dbg !3689
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3688, metadata !727), !dbg !3690
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3480, metadata !727) #10, !dbg !3691
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3693
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3486, metadata !727) #10, !dbg !3694
  %4 = icmp eq i8* %3, null, !dbg !3695
  %5 = icmp ne i64 %1, 0, !dbg !3696
  %6 = and i1 %5, %4, !dbg !3697
  br i1 %6, label %7, label %8, !dbg !3697

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3698
  unreachable, !dbg !3698

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3699
  ret i8* %3, !dbg !3700
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3701 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3703, metadata !727), !dbg !3704
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3705
  %3 = add i64 %2, 1, !dbg !3706
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3687, metadata !727) #10, !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3688, metadata !727) #10, !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3480, metadata !727) #10, !dbg !3711
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3713
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3486, metadata !727) #10, !dbg !3714
  %5 = icmp eq i8* %4, null, !dbg !3715
  %6 = icmp ne i64 %3, 0, !dbg !3716
  %7 = and i1 %6, %5, !dbg !3717
  br i1 %7, label %8, label %9, !dbg !3717

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3718
  unreachable, !dbg !3718

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3719
  ret i8* %4, !dbg !3720
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3721 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3723, !tbaa !852
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.94, i64 0, i64 0), i32 5) #10, !dbg !3724
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), i8* %2) #10, !dbg !3725
  tail call void @abort() #14, !dbg !3727
  unreachable, !dbg !3727
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3728 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3736, metadata !727), !dbg !3746
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3737, metadata !727), !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3738, metadata !727), !dbg !3748
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3739, metadata !727), !dbg !3749
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3740, metadata !727), !dbg !3750
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3741, metadata !727), !dbg !3751
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3742, metadata !727), !dbg !3752
  %9 = bitcast i64* %8 to i8*, !dbg !3753
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10, !dbg !3753
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !3745, metadata !1887), !dbg !3754
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !3755
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3743, metadata !727), !dbg !3756
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !3757

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1, !dbg !3758
  br label %26, !dbg !3757

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3762, !tbaa !950
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3745, metadata !727), !dbg !3754
  %15 = icmp ult i64 %14, %2, !dbg !3766
  %16 = icmp ugt i64 %14, %3, !dbg !3767
  %17 = or i1 %15, %16, !dbg !3769
  br i1 %17, label %18, label %35, !dbg !3769

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3743, metadata !727), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3745, metadata !727), !dbg !3754
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3770
  %20 = tail call i32* @__errno_location() #1, !dbg !3773
  %21 = select i1 %19, i32 75, i32 34, !dbg !3774
  store i32 %21, i32* %20, align 4, !tbaa !852
  br label %26, !dbg !3775

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #1, !dbg !3776
  store i32 75, i32* %23, align 4, !dbg !3778, !tbaa !852
  br label %26, !dbg !3776

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #1, !dbg !3779
  store i32 0, i32* %25, align 4, !dbg !3781, !tbaa !852
  br label %26, !dbg !3779

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !3758
  %28 = icmp ne i32 %6, 0, !dbg !3782
  %29 = select i1 %28, i32 %6, i32 1, !dbg !3782
  %30 = load i32, i32* %27, align 4, !dbg !3758, !tbaa !852
  %31 = icmp eq i32 %30, 22, !dbg !3783
  %32 = select i1 %31, i32 0, i32 %30, !dbg !3758
  %33 = call i8* @quote(i8* %0) #10, !dbg !3784
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), i8* %5, i8* %33) #10, !dbg !3785
  %34 = load i64, i64* %8, align 8, !tbaa !950
  br label %35, !dbg !3787

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !3788
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !3745, metadata !727), !dbg !3754
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10, !dbg !3789
  ret i64 %36, !dbg !3790
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3791 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3795, metadata !727), !dbg !3801
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3796, metadata !727), !dbg !3802
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3797, metadata !727), !dbg !3803
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3798, metadata !727), !dbg !3804
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3799, metadata !727), !dbg !3805
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3800, metadata !727), !dbg !3806
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3807
  ret i64 %7, !dbg !3808
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3809 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3815, metadata !727), !dbg !3833
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3816, metadata !727), !dbg !3834
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3817, metadata !727), !dbg !3835
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3818, metadata !727), !dbg !3836
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3819, metadata !727), !dbg !3837
  %7 = bitcast i8** %6 to i8*, !dbg !3838
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !3838
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3823, metadata !727), !dbg !3839
  %8 = icmp ult i32 %2, 37, !dbg !3840
  br i1 %8, label %10, label %9, !dbg !3840

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.102, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14, !dbg !3843
  unreachable, !dbg !3843

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !3845
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3821, metadata !727), !dbg !3846
  %12 = tail call i32* @__errno_location() #1, !dbg !3847
  store i32 0, i32* %12, align 4, !dbg !3848, !tbaa !852
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3824, metadata !727), !dbg !3849
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !3850
  %14 = load i16*, i16** %13, align 8, !tbaa !735
  br label %15, !dbg !3852

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !834
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3827, metadata !727), !dbg !3853
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3824, metadata !727), !dbg !3849
  %18 = zext i8 %17 to i64, !dbg !3850
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3850
  %20 = load i16, i16* %19, align 2, !dbg !3850, !tbaa !1003
  %21 = and i16 %20, 8192, !dbg !3850
  %22 = icmp eq i16 %21, 0, !dbg !3854
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3855
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3824, metadata !727), !dbg !3849
  br i1 %22, label %24, label %15, !dbg !3854, !llvm.loop !3856

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !3845
  %26 = icmp eq i8 %17, 45, !dbg !3858
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3860, metadata !727) #10, !dbg !3870
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3868, metadata !727) #10, !dbg !3870
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3869, metadata !727) #10, !dbg !3870
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !3872
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3822, metadata !727), !dbg !3873
  %29 = load i8*, i8** %25, align 8, !dbg !3874, !tbaa !735
  %30 = icmp eq i8* %29, %0, !dbg !3876
  br i1 %30, label %31, label %40, !dbg !3877

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3878
  br i1 %32, label %265, label %33, !dbg !3881

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3882, !tbaa !834
  %35 = icmp eq i8 %34, 0, !dbg !3882
  br i1 %35, label %265, label %36, !dbg !3884

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3882
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !3885
  %39 = icmp eq i8* %38, null, !dbg !3885
  br i1 %39, label %265, label %47, !dbg !3887

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3889, !tbaa !852
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3891

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3823, metadata !727), !dbg !3839
  br label %43, !dbg !3892

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3823, metadata !727), !dbg !3839
  %45 = icmp eq i8* %4, null, !dbg !3894
  br i1 %45, label %46, label %47, !dbg !3896

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3822, metadata !727), !dbg !3873
  store i64 %28, i64* %3, align 8, !dbg !3897, !tbaa !950
  br label %265, !dbg !3899

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3900, !tbaa !834
  %51 = icmp eq i8 %50, 0, !dbg !3901
  br i1 %51, label %262, label %52, !dbg !3902

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !3900
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3828, metadata !727), !dbg !3903
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3831, metadata !727), !dbg !3904
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #10, !dbg !3905
  %55 = icmp eq i8* %54, null, !dbg !3905
  br i1 %55, label %56, label %58, !dbg !3908

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3822, metadata !727), !dbg !3873
  store i64 %49, i64* %3, align 8, !dbg !3910, !tbaa !950
  %57 = or i32 %48, 2, !dbg !3912
  br label %265, !dbg !3913

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
  ], !dbg !3914

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !3915
  %61 = icmp eq i8* %60, null, !dbg !3915
  br i1 %61, label %72, label %62, !dbg !3919

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3921
  %64 = load i8, i8* %63, align 1, !dbg !3921, !tbaa !834
  %65 = sext i8 %64 to i32, !dbg !3921
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3922

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3923
  %68 = load i8, i8* %67, align 1, !dbg !3923, !tbaa !834
  %69 = icmp eq i8 %68, 66, !dbg !3926
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3831, metadata !727), !dbg !3904
  %70 = select i1 %69, i64 3, i64 1, !dbg !3927
  br label %72, !dbg !3927

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3828, metadata !727), !dbg !3903
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3831, metadata !727), !dbg !3904
  br label %72, !dbg !3928

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
  ], !dbg !3929

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3930, metadata !727), !dbg !3936
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3939
  %77 = shl i64 %49, 9, !dbg !3941
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3942
  %79 = zext i1 %76 to i32, !dbg !3942
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3832, metadata !727), !dbg !3943
  br label %253, !dbg !3944

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3930, metadata !727), !dbg !3945
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3947
  %82 = shl i64 %49, 10, !dbg !3948
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3949
  %84 = zext i1 %81 to i32, !dbg !3949
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3832, metadata !727), !dbg !3943
  br label %253, !dbg !3950

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !3959
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3961
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3961
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !3959
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !3962
  %88 = mul i64 %49, %73, !dbg !3964
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3965
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  %90 = icmp ult i64 %86, %89, !dbg !3962
  %91 = mul i64 %89, %73, !dbg !3964
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3965
  %93 = or i1 %90, %87, !dbg !3966
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  %94 = icmp ult i64 %86, %92, !dbg !3962
  %95 = mul i64 %92, %73, !dbg !3964
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3965
  %97 = or i1 %94, %93, !dbg !3966
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  %98 = icmp ult i64 %86, %96, !dbg !3962
  %99 = mul i64 %96, %73, !dbg !3964
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3965
  %101 = or i1 %98, %97, !dbg !3966
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  %102 = icmp ult i64 %86, %100, !dbg !3962
  %103 = mul i64 %100, %73, !dbg !3964
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3965
  %105 = or i1 %102, %101, !dbg !3966
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  %106 = icmp ult i64 %86, %104, !dbg !3962
  %107 = mul i64 %104, %73, !dbg !3964
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3965
  %109 = or i1 %106, %105, !dbg !3966
  %110 = zext i1 %109 to i32, !dbg !3966
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3959
  br label %253, !dbg !3943

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3967
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !3970
  %114 = mul i64 %49, %73, !dbg !3972
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3973
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3951, metadata !727), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3951, metadata !727), !dbg !3967
  %116 = icmp ult i64 %112, %115, !dbg !3970
  %117 = mul i64 %115, %73, !dbg !3972
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3973
  %119 = or i1 %116, %113, !dbg !3974
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3951, metadata !727), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3951, metadata !727), !dbg !3967
  %120 = icmp ult i64 %112, %118, !dbg !3970
  %121 = mul i64 %118, %73, !dbg !3972
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3973
  %123 = or i1 %120, %119, !dbg !3974
  %124 = zext i1 %123 to i32, !dbg !3974
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3951, metadata !727), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3951, metadata !727), !dbg !3967
  br label %253, !dbg !3943

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3951, metadata !727), !dbg !3975
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3951, metadata !727), !dbg !3975
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !3978
  %128 = mul i64 %49, %73, !dbg !3980
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3981
  %130 = zext i1 %127 to i32, !dbg !3981
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3958, metadata !727), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3958, metadata !727), !dbg !3977
  br label %253, !dbg !3943

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3951, metadata !727), !dbg !3982
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3984
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3984
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3951, metadata !727), !dbg !3982
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !3985
  %134 = mul i64 %49, %73, !dbg !3987
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3988
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3951, metadata !727), !dbg !3982
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3951, metadata !727), !dbg !3982
  %136 = icmp ult i64 %132, %135, !dbg !3985
  %137 = mul i64 %135, %73, !dbg !3987
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3988
  %139 = or i1 %136, %133, !dbg !3989
  %140 = zext i1 %139 to i32, !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3951, metadata !727), !dbg !3982
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3951, metadata !727), !dbg !3982
  br label %253, !dbg !3943

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3992
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !3992
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3951, metadata !727), !dbg !3990
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !3993
  %144 = mul i64 %49, %73, !dbg !3995
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3996
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  %146 = icmp ult i64 %142, %145, !dbg !3993
  %147 = mul i64 %145, %73, !dbg !3995
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3996
  %149 = or i1 %146, %143, !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  %150 = icmp ult i64 %142, %148, !dbg !3993
  %151 = mul i64 %148, %73, !dbg !3995
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3996
  %153 = or i1 %150, %149, !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  %154 = icmp ult i64 %142, %152, !dbg !3993
  %155 = mul i64 %152, %73, !dbg !3995
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3996
  %157 = or i1 %154, %153, !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  %158 = icmp ult i64 %142, %156, !dbg !3993
  %159 = mul i64 %156, %73, !dbg !3995
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3996
  %161 = or i1 %158, %157, !dbg !3997
  %162 = zext i1 %161 to i32, !dbg !3997
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3990
  br label %253, !dbg !3943

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3998
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3951, metadata !727), !dbg !3998
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4001
  %166 = mul i64 %49, %73, !dbg !4003
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4004
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3998
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3998
  %168 = icmp ult i64 %164, %167, !dbg !4001
  %169 = mul i64 %167, %73, !dbg !4003
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4004
  %171 = or i1 %168, %165, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3998
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3998
  %172 = icmp ult i64 %164, %170, !dbg !4001
  %173 = mul i64 %170, %73, !dbg !4003
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4004
  %175 = or i1 %172, %171, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3998
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3998
  %176 = icmp ult i64 %164, %174, !dbg !4001
  %177 = mul i64 %174, %73, !dbg !4003
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4004
  %179 = or i1 %176, %175, !dbg !4005
  %180 = zext i1 %179 to i32, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3998
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3951, metadata !727), !dbg !3998
  br label %253, !dbg !3943

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3930, metadata !727), !dbg !4006
  %182 = icmp slt i64 %49, 0, !dbg !4008
  %183 = shl i64 %49, 1, !dbg !4009
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4010
  %185 = lshr i64 %49, 63, !dbg !4010
  %186 = trunc i64 %185 to i32, !dbg !4010
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3832, metadata !727), !dbg !3943
  br label %253, !dbg !4011

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3951, metadata !727), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !4014
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !4014
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3951, metadata !727), !dbg !4012
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4015
  %190 = mul i64 %49, %73, !dbg !4017
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4018
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  %192 = icmp ult i64 %188, %191, !dbg !4015
  %193 = mul i64 %191, %73, !dbg !4017
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4018
  %195 = or i1 %192, %189, !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  %196 = icmp ult i64 %188, %194, !dbg !4015
  %197 = mul i64 %194, %73, !dbg !4017
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4018
  %199 = or i1 %196, %195, !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  %200 = icmp ult i64 %188, %198, !dbg !4015
  %201 = mul i64 %198, %73, !dbg !4017
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4018
  %203 = or i1 %200, %199, !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  %204 = icmp ult i64 %188, %202, !dbg !4015
  %205 = mul i64 %202, %73, !dbg !4017
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4018
  %207 = or i1 %204, %203, !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  %208 = icmp ult i64 %188, %206, !dbg !4015
  %209 = mul i64 %206, %73, !dbg !4017
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4018
  %211 = or i1 %208, %207, !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  %212 = icmp ult i64 %188, %210, !dbg !4015
  %213 = mul i64 %210, %73, !dbg !4017
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4018
  %215 = or i1 %212, %211, !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  %216 = icmp ult i64 %188, %214, !dbg !4015
  %217 = mul i64 %214, %73, !dbg !4017
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4018
  %219 = or i1 %216, %215, !dbg !4019
  %220 = zext i1 %219 to i32, !dbg !4019
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4012
  br label %253, !dbg !3943

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4020
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !4022
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3958, metadata !727), !dbg !4022
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3951, metadata !727), !dbg !4020
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !4023
  %224 = mul i64 %49, %73, !dbg !4025
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4026
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  %226 = icmp ult i64 %222, %225, !dbg !4023
  %227 = mul i64 %225, %73, !dbg !4025
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4026
  %229 = or i1 %226, %223, !dbg !4027
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  %230 = icmp ult i64 %222, %228, !dbg !4023
  %231 = mul i64 %228, %73, !dbg !4025
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4026
  %233 = or i1 %230, %229, !dbg !4027
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  %234 = icmp ult i64 %222, %232, !dbg !4023
  %235 = mul i64 %232, %73, !dbg !4025
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4026
  %237 = or i1 %234, %233, !dbg !4027
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  %238 = icmp ult i64 %222, %236, !dbg !4023
  %239 = mul i64 %236, %73, !dbg !4025
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4026
  %241 = or i1 %238, %237, !dbg !4027
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  %242 = icmp ult i64 %222, %240, !dbg !4023
  %243 = mul i64 %240, %73, !dbg !4025
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4026
  %245 = or i1 %242, %241, !dbg !4027
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  %246 = icmp ult i64 %222, %244, !dbg !4023
  %247 = mul i64 %244, %73, !dbg !4025
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4026
  %249 = or i1 %246, %245, !dbg !4027
  %250 = zext i1 %249 to i32, !dbg !4027
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3951, metadata !727), !dbg !4020
  br label %253, !dbg !3943

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3822, metadata !727), !dbg !3873
  store i64 %49, i64* %3, align 8, !dbg !4028, !tbaa !950
  %252 = or i32 %48, 2, !dbg !4029
  br label %265, !dbg !4030

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3832, metadata !727), !dbg !3943
  %256 = or i32 %255, %48, !dbg !4031
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3823, metadata !727), !dbg !3839
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4032
  store i8* %257, i8** %25, align 8, !dbg !4032, !tbaa !735
  %258 = load i8, i8* %257, align 1, !dbg !4033, !tbaa !834
  %259 = icmp eq i8 %258, 0, !dbg !4033
  %260 = or i32 %256, 2, !dbg !4035
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3823, metadata !727), !dbg !3839
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4036
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3823, metadata !727), !dbg !3839
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3823, metadata !727), !dbg !3839
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3823, metadata !727), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3822, metadata !727), !dbg !3873
  store i64 %263, i64* %3, align 8, !dbg !4037, !tbaa !950
  br label %265, !dbg !4038

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !4039
  ret i32 %266, !dbg !4039
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4040 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4043, metadata !727), !dbg !4049
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4044, metadata !727), !dbg !4050
  %3 = icmp eq i64 %0, 0, !dbg !4051
  %4 = icmp eq i64 %1, 0, !dbg !4052
  %5 = or i1 %3, %4, !dbg !4054
  br i1 %5, label %12, label %6, !dbg !4054

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4055
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4046, metadata !727), !dbg !4056
  %8 = udiv i64 %7, %1, !dbg !4057
  %9 = icmp eq i64 %8, %0, !dbg !4059
  br i1 %9, label %12, label %10, !dbg !4060

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4061
  store i32 12, i32* %11, align 4, !dbg !4063, !tbaa !852
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4043, metadata !727), !dbg !4049
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4044, metadata !727), !dbg !4050
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4064
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4045, metadata !727), !dbg !4065
  br label %16, !dbg !4066

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4067
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4068 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4113, metadata !727), !dbg !4117
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4114, metadata !727), !dbg !4118
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4116, metadata !727), !dbg !4119
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4120
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4115, metadata !727), !dbg !4121
  %3 = icmp slt i32 %2, 0, !dbg !4122
  br i1 %3, label %4, label %6, !dbg !4124

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4125
  br label %24, !dbg !4126

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4127
  %8 = icmp eq i32 %7, 0, !dbg !4127
  br i1 %8, label %13, label %9, !dbg !4129

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4130
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4132
  %12 = icmp eq i64 %11, -1, !dbg !4134
  br i1 %12, label %16, label %13, !dbg !4135

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4136
  %15 = icmp eq i32 %14, 0, !dbg !4136
  br i1 %15, label %16, label %18, !dbg !4137

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4114, metadata !727), !dbg !4118
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4139
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4116, metadata !727), !dbg !4119
  br label %24, !dbg !4140

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4141
  %20 = load i32, i32* %19, align 4, !dbg !4141, !tbaa !852
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4114, metadata !727), !dbg !4118
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4114, metadata !727), !dbg !4118
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4139
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4116, metadata !727), !dbg !4119
  %22 = icmp eq i32 %20, 0, !dbg !4142
  br i1 %22, label %24, label %23, !dbg !4140

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4144, !tbaa !852
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4116, metadata !727), !dbg !4119
  br label %24, !dbg !4146

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4147
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4148 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4193, metadata !727), !dbg !4194
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4195
  br i1 %2, label %6, label %3, !dbg !4197

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4198
  %5 = icmp eq i32 %4, 0, !dbg !4198
  br i1 %5, label %6, label %8, !dbg !4200

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4202
  br label %17, !dbg !4203

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4204, metadata !727) #10, !dbg !4209
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4211
  %10 = load i32, i32* %9, align 8, !dbg !4211, !tbaa !1080
  %11 = and i32 %10, 256, !dbg !4213
  %12 = icmp eq i32 %11, 0, !dbg !4213
  br i1 %12, label %15, label %13, !dbg !4214

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4215
  br label %15, !dbg !4215

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4216
  br label %17, !dbg !4217

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4218
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4219 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4264, metadata !727), !dbg !4270
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4265, metadata !727), !dbg !4271
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4266, metadata !727), !dbg !4272
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4273
  %5 = load i8*, i8** %4, align 8, !dbg !4273, !tbaa !938
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4274
  %7 = load i8*, i8** %6, align 8, !dbg !4274, !tbaa !934
  %8 = icmp eq i8* %5, %7, !dbg !4275
  br i1 %8, label %9, label %28, !dbg !4276

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4277
  %11 = load i8*, i8** %10, align 8, !dbg !4277, !tbaa !1017
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4279
  %13 = load i8*, i8** %12, align 8, !dbg !4279, !tbaa !4280
  %14 = icmp eq i8* %11, %13, !dbg !4281
  br i1 %14, label %15, label %28, !dbg !4282

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4283
  %17 = load i8*, i8** %16, align 8, !dbg !4283, !tbaa !4284
  %18 = icmp eq i8* %17, null, !dbg !4285
  br i1 %18, label %19, label %28, !dbg !4286

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4288
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4289
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4267, metadata !727), !dbg !4291
  %22 = icmp eq i64 %21, -1, !dbg !4292
  br i1 %22, label %30, label %23, !dbg !4294

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4295
  %25 = load i32, i32* %24, align 8, !dbg !4296, !tbaa !1080
  %26 = and i32 %25, -17, !dbg !4296
  store i32 %26, i32* %24, align 8, !dbg !4296, !tbaa !1080
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4297
  store i64 %21, i64* %27, align 8, !dbg !4298, !tbaa !4299
  br label %30, !dbg !4300

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4301
  br label %30, !dbg !4302

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4303
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4304 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4321, metadata !727), !dbg !4330
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4322, metadata !727), !dbg !4331
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4323, metadata !727), !dbg !4332
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4324, metadata !727), !dbg !4333
  %6 = bitcast i32* %5 to i8*, !dbg !4334
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4334
  %7 = icmp eq i32* %0, null, !dbg !4335
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4321, metadata !727), !dbg !4330
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4337
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4321, metadata !727), !dbg !4330
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4325, metadata !727), !dbg !4339
  %10 = icmp ugt i64 %9, -3, !dbg !4340
  %11 = icmp ne i64 %2, 0, !dbg !4341
  %12 = and i1 %11, %10, !dbg !4343
  br i1 %12, label %13, label %18, !dbg !4343

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4344
  br i1 %14, label %18, label %15, !dbg !4346

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4348, !tbaa !834
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4327, metadata !727), !dbg !4349
  %17 = zext i8 %16 to i32, !dbg !4350
  store i32 %17, i32* %8, align 4, !dbg !4351, !tbaa !852
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4352
  ret i64 %19, !dbg !4352
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4353 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4398, metadata !727), !dbg !4403
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4404
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4405, metadata !727), !dbg !4408
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4410
  %4 = load i32, i32* %3, align 8, !dbg !4410, !tbaa !1080
  %5 = and i32 %4, 32, !dbg !4410
  %6 = icmp eq i32 %5, 0, !dbg !4411
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4412
  %8 = icmp ne i32 %7, 0, !dbg !4413
  br i1 %6, label %9, label %19, !dbg !4414

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4416
  %11 = icmp ne i64 %2, 0, !dbg !4416
  %12 = or i1 %11, %10, !dbg !4416
  %13 = sext i1 %8 to i32, !dbg !4416
  br i1 %12, label %22, label %14, !dbg !4416

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4418
  %16 = load i32, i32* %15, align 4, !dbg !4418, !tbaa !852
  %17 = icmp ne i32 %16, 9, !dbg !4420
  %18 = sext i1 %17 to i32, !dbg !4420
  br label %22, !dbg !4420

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4422

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4424
  store i32 0, i32* %21, align 4, !dbg !4426, !tbaa !852
  br label %22, !dbg !4424

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4427
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4428 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4433, metadata !727), !dbg !4453
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4434, metadata !727), !dbg !4454
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4455
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4435, metadata !727), !dbg !4456
  %3 = icmp eq i8* %2, null, !dbg !4457
  br i1 %3, label %15, label %4, !dbg !4458

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4443, metadata !727), !dbg !4459
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4444, metadata !727), !dbg !4460
  %5 = load i8, i8* %2, align 1, !dbg !4461, !tbaa !834
  %6 = icmp eq i8 %5, 67, !dbg !4463
  br i1 %6, label %7, label %11, !dbg !4466

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4468
  %9 = load i8, i8* %8, align 1, !dbg !4468, !tbaa !834
  %10 = icmp eq i8 %9, 0, !dbg !4471
  br i1 %10, label %14, label %11, !dbg !4473

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4449, metadata !727), !dbg !4475
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0)) #10, !dbg !4476
  %13 = icmp eq i32 %12, 0, !dbg !4478
  br i1 %13, label %14, label %15, !dbg !4480

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4434, metadata !727), !dbg !4454
  br label %15, !dbg !4482

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4483
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4484 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4496, metadata !727), !dbg !4570
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4563, metadata !727), !dbg !4572
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4573
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4488, metadata !727), !dbg !4574
  %4 = icmp eq i8* %3, null, !dbg !4575
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), i8* %3, !dbg !4577
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4488, metadata !727), !dbg !4574
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4578, !tbaa !735
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4510, metadata !727) #10, !dbg !4579
  %7 = icmp eq i8* %6, null, !dbg !4580
  br i1 %7, label %8, label %127, !dbg !4581

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.121, i64 0, i64 0)) #10, !dbg !4582
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4511, metadata !727) #10, !dbg !4583
  %10 = icmp eq i8* %9, null, !dbg !4584
  br i1 %10, label %14, label %11, !dbg !4586

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4587, !tbaa !834
  %13 = icmp eq i8 %12, 0, !dbg !4589
  br i1 %13, label %14, label %15, !dbg !4590

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4592

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.122, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4511, metadata !727) #10, !dbg !4583
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4593
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4514, metadata !727) #10, !dbg !4594
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4516, metadata !727) #10, !dbg !4595
  %18 = icmp eq i64 %17, 0, !dbg !4596
  br i1 %18, label %24, label %19, !dbg !4597

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4598
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4598
  %22 = load i8, i8* %21, align 1, !dbg !4598, !tbaa !834
  %23 = icmp ne i8 %22, 47, !dbg !4600
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4601
  %27 = add i64 %17, 14, !dbg !4602
  %28 = add i64 %27, %26, !dbg !4603
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4604
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4513, metadata !727) #10, !dbg !4605
  %30 = icmp eq i8* %29, null, !dbg !4606
  br i1 %30, label %125, label %31, !dbg !4606

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4607
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4610

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4611, !tbaa !834
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4613
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.123, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4614
  br label %37, !dbg !4615

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4613
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.123, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4614
  br label %37, !dbg !4615

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4616
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4518, metadata !727) #10, !dbg !4617
  %39 = icmp slt i32 %38, 0, !dbg !4618
  br i1 %39, label %123, label %40, !dbg !4619

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.124, i64 0, i64 0)) #10, !dbg !4620
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4519, metadata !727) #10, !dbg !4621
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4622
  br i1 %42, label %48, label %43, !dbg !4623

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4624

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4625
  br label %123, !dbg !4627

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4560, metadata !727) #10, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4561, metadata !727) #10, !dbg !4628
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4629
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4630
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4631, metadata !727) #10, !dbg !4636
  %53 = load i8*, i8** %46, align 8, !dbg !4638, !tbaa !934
  %54 = load i8*, i8** %47, align 8, !dbg !4638, !tbaa !938
  %55 = icmp ult i8* %53, %54, !dbg !4638
  br i1 %55, label %58, label %56, !dbg !4638, !prof !939

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4639
  br label %62, !dbg !4639

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4641
  store i8* %59, i8** %46, align 8, !dbg !4641, !tbaa !934
  %60 = load i8, i8* %53, align 1, !dbg !4641, !tbaa !834
  %61 = zext i8 %60 to i32, !dbg !4641
  br label %62, !dbg !4641

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4643
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4562, metadata !727) #10, !dbg !4645
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4646

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4647

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4631, metadata !727) #10, !dbg !4647
  %66 = load i8*, i8** %46, align 8, !dbg !4651, !tbaa !934
  %67 = load i8*, i8** %47, align 8, !dbg !4651, !tbaa !938
  %68 = icmp ult i8* %66, %67, !dbg !4651
  br i1 %68, label %71, label %69, !dbg !4651, !prof !939

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4652
  br label %75, !dbg !4652

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4653
  store i8* %72, i8** %46, align 8, !dbg !4653, !tbaa !934
  %73 = load i8, i8* %66, align 1, !dbg !4653, !tbaa !834
  %74 = zext i8 %73 to i32, !dbg !4653
  br label %75, !dbg !4653

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4654
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4562, metadata !727) #10, !dbg !4645
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4655, !llvm.loop !4657

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4660
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.125, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4661
  %80 = icmp slt i32 %79, 2, !dbg !4663
  br i1 %80, label %115, label %81, !dbg !4664

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4567, metadata !727) #10, !dbg !4666
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4667
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4568, metadata !727) #10, !dbg !4668
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4569, metadata !727) #10, !dbg !4669
  %84 = icmp eq i64 %51, 0, !dbg !4670
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4672

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4561, metadata !727) #10, !dbg !4628
  %89 = add i64 %86, 2, !dbg !4673
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4675
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4560, metadata !727) #10, !dbg !4624
  br label %95, !dbg !4676

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4677
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4561, metadata !727) #10, !dbg !4628
  %93 = add i64 %92, 1, !dbg !4679
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4680
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4560, metadata !727) #10, !dbg !4624
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4560, metadata !727) #10, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4561, metadata !727) #10, !dbg !4628
  %98 = icmp eq i8* %97, null, !dbg !4681
  br i1 %98, label %99, label %100, !dbg !4683

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4561, metadata !727) #10, !dbg !4628
  call void @free(i8* %52) #10, !dbg !4684
  br label %116, !dbg !4686

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4687
  %102 = xor i64 %83, -1, !dbg !4688
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4688
  %104 = xor i64 %82, -1, !dbg !4689
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4689
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4690, metadata !727) #10, !dbg !4698
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4697, metadata !727) #10, !dbg !4698
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4700
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4701
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4690, metadata !727) #10, !dbg !4702
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4697, metadata !727) #10, !dbg !4702
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4704
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4705
  br label %111, !dbg !4706

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4624

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4560, metadata !727) #10, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4561, metadata !727) #10, !dbg !4628
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4706
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4706
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4624

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4624

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4560, metadata !727) #10, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4561, metadata !727) #10, !dbg !4628
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4706
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4706
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4707
  %120 = icmp eq i64 %117, 0, !dbg !4708
  br i1 %120, label %123, label %121, !dbg !4710

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4711
  store i8 0, i8* %122, align 1, !dbg !4713, !tbaa !834
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4510, metadata !727) #10, !dbg !4579
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4510, metadata !727) #10, !dbg !4579
  call void @free(i8* %29) #10, !dbg !4714
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4510, metadata !727) #10, !dbg !4579
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4715, !tbaa !735
  br label %127, !dbg !4716

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4489, metadata !727), !dbg !4717
  %129 = load i8, i8* %128, align 1, !dbg !4718, !tbaa !834
  %130 = icmp eq i8 %129, 0, !dbg !4719
  br i1 %130, label %157, label %131, !dbg !4720

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4722

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4722
  %136 = icmp eq i32 %135, 0, !dbg !4723
  br i1 %136, label %143, label %137, !dbg !4724

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4725
  br i1 %138, label %139, label %147, !dbg !4727

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4728
  %141 = load i8, i8* %140, align 1, !dbg !4728, !tbaa !834
  %142 = icmp eq i8 %141, 0, !dbg !4730
  br i1 %142, label %143, label %147, !dbg !4731

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4733
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4735
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4736
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4488, metadata !727), !dbg !4574
  br label %157, !dbg !4737

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4738
  %149 = add i64 %148, 1, !dbg !4739
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4740
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4489, metadata !727), !dbg !4717
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4741
  %152 = add i64 %151, 1, !dbg !4742
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4743
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4489, metadata !727), !dbg !4717
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4489, metadata !727), !dbg !4717
  %154 = load i8, i8* %153, align 1, !dbg !4718, !tbaa !834
  %155 = icmp eq i8 %154, 0, !dbg !4719
  br i1 %155, label %156, label %132, !dbg !4720, !llvm.loop !4744

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4574

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4488, metadata !727), !dbg !4574
  %159 = load i8, i8* %158, align 1, !dbg !4747, !tbaa !834
  %160 = icmp eq i8 %159, 0, !dbg !4749
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0), i8* %158, !dbg !4750
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4488, metadata !727), !dbg !4574
  ret i8* %161, !dbg !4751
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

!llvm.dbg.cu = !{!2, !220, !226, !234, !656, !241, !248, !659, !302, !667, !684, !686, !697, !701, !703, !705, !707, !709, !712, !714, !311}
!llvm.ident = !{!717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717, !717}
!llvm.module.flags = !{!718, !719, !720, !721}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 47, type: !215, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !60)
!3 = !DIFile(filename: "src/fold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!43 = !{!44, !46, !47, !50, !52, !55, !57, !58, !59, !54}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 62, baseType: !49)
!48 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!60 = !{!61, !64, !66, !68, !0, !98, !112, !213}
!61 = !DIGlobalVariableExpression(var: !62)
!62 = distinct !DIGlobalVariable(name: "break_spaces", scope: !2, file: !3, line: 39, type: !63, isLocal: true, isDefinition: true)
!63 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!64 = !DIGlobalVariableExpression(var: !65)
!65 = distinct !DIGlobalVariable(name: "count_bytes", scope: !2, file: !3, line: 42, type: !63, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 45, type: !63, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "infomap", scope: !70, file: !71, line: 632, type: !95, isLocal: true, isDefinition: true)
!70 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !71, file: !71, line: 630, type: !72, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !74)
!71 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !DISubroutineType(types: !73)
!73 = !{null, !55}
!74 = !{!75, !76, !77, !84, !86, !87, !88, !91, !92, !94}
!75 = !DILocalVariable(name: "program", arg: 1, scope: !70, file: !71, line: 630, type: !55)
!76 = !DILocalVariable(name: "node", scope: !70, file: !71, line: 642, type: !55)
!77 = !DILocalVariable(name: "map_prog", scope: !70, file: !71, line: 643, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !70, file: !71, line: 632, size: 128, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !80, file: !71, line: 632, baseType: !55, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !71, line: 632, baseType: !55, size: 64, offset: 64)
!84 = !DILocalVariable(name: "__s1_len", scope: !85, file: !71, line: 645, type: !47)
!85 = distinct !DILexicalBlock(scope: !70, file: !71, line: 645, column: 33)
!86 = !DILocalVariable(name: "__s2_len", scope: !85, file: !71, line: 645, type: !47)
!87 = !DILocalVariable(name: "lc_messages", scope: !70, file: !71, line: 655, type: !55)
!88 = !DILocalVariable(name: "__s1_len", scope: !89, file: !71, line: 656, type: !47)
!89 = distinct !DILexicalBlock(scope: !90, file: !71, line: 656, column: 22)
!90 = distinct !DILexicalBlock(scope: !70, file: !71, line: 656, column: 7)
!91 = !DILocalVariable(name: "__s2_len", scope: !89, file: !71, line: 656, type: !47)
!92 = !DILocalVariable(name: "__s2", scope: !93, file: !71, line: 656, type: !52)
!93 = distinct !DILexicalBlock(scope: !89, file: !71, line: 656, column: 22)
!94 = !DILocalVariable(name: "__result", scope: !93, file: !71, line: 656, type: !57)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 896, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 7)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1536, elements: !110)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !103, line: 104, size: 256, elements: !104)
!103 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!104 = !{!105, !106, !107, !109}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 106, baseType: !55, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !102, file: !103, line: 109, baseType: !57, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !102, file: !103, line: 110, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !102, file: !103, line: 111, baseType: !57, size: 32, offset: 192)
!110 = !{!111}
!111 = !DISubrange(count: 6)
!112 = !DIGlobalVariableExpression(var: !113)
!113 = distinct !DIGlobalVariable(name: "line_out", scope: !114, file: !3, line: 126, type: !44, isLocal: true, isDefinition: true)
!114 = distinct !DISubprogram(name: "fold_file", scope: !3, file: !3, line: 120, type: !115, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!63, !55, !47}
!117 = !{!118, !119, !120, !176, !177, !178, !179, !180, !183, !184, !186, !187, !193, !194, !197, !202, !203, !205, !206, !209, !210, !212}
!118 = !DILocalVariable(name: "filename", arg: 1, scope: !114, file: !3, line: 120, type: !55)
!119 = !DILocalVariable(name: "width", arg: 2, scope: !114, file: !3, line: 120, type: !47)
!120 = !DILocalVariable(name: "istream", scope: !114, file: !3, line: 122, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !123, line: 49, baseType: !124)
!123 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !125, line: 241, size: 1728, elements: !126)
!125 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !147, !148, !149, !150, !154, !155, !157, !161, !164, !166, !167, !168, !169, !170, !171, !172}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !124, file: !125, line: 242, baseType: !57, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !124, file: !125, line: 247, baseType: !44, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !124, file: !125, line: 248, baseType: !44, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !124, file: !125, line: 249, baseType: !44, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !124, file: !125, line: 250, baseType: !44, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !124, file: !125, line: 251, baseType: !44, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !124, file: !125, line: 252, baseType: !44, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !124, file: !125, line: 253, baseType: !44, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !124, file: !125, line: 254, baseType: !44, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !124, file: !125, line: 256, baseType: !44, size: 64, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !124, file: !125, line: 257, baseType: !44, size: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !124, file: !125, line: 258, baseType: !44, size: 64, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !124, file: !125, line: 260, baseType: !140, size: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !125, line: 156, size: 192, elements: !142)
!142 = !{!143, !144, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !141, file: !125, line: 157, baseType: !140, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !141, file: !125, line: 158, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !141, file: !125, line: 162, baseType: !57, size: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !124, file: !125, line: 262, baseType: !145, size: 64, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !124, file: !125, line: 264, baseType: !57, size: 32, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !124, file: !125, line: 268, baseType: !57, size: 32, offset: 928)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !124, file: !125, line: 270, baseType: !151, size: 64, offset: 960)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !152, line: 140, baseType: !153)
!152 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !124, file: !125, line: 274, baseType: !58, size: 16, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !124, file: !125, line: 275, baseType: !156, size: 8, offset: 1040)
!156 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !124, file: !125, line: 276, baseType: !158, size: 8, offset: 1048)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 1)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !124, file: !125, line: 280, baseType: !162, size: 64, offset: 1088)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !125, line: 150, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !124, file: !125, line: 289, baseType: !165, size: 64, offset: 1152)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !152, line: 141, baseType: !153)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !124, file: !125, line: 297, baseType: !46, size: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !124, file: !125, line: 298, baseType: !46, size: 64, offset: 1280)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !124, file: !125, line: 299, baseType: !46, size: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !124, file: !125, line: 300, baseType: !46, size: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !124, file: !125, line: 302, baseType: !47, size: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !124, file: !125, line: 303, baseType: !57, size: 32, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !124, file: !125, line: 305, baseType: !173, size: 160, offset: 1568)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 20)
!176 = !DILocalVariable(name: "c", scope: !114, file: !3, line: 123, type: !57)
!177 = !DILocalVariable(name: "column", scope: !114, file: !3, line: 124, type: !47)
!178 = !DILocalVariable(name: "offset_out", scope: !114, file: !3, line: 125, type: !47)
!179 = !DILocalVariable(name: "saved_errno", scope: !114, file: !3, line: 128, type: !57)
!180 = !DILocalVariable(name: "__s1_len", scope: !181, file: !3, line: 130, type: !47)
!181 = distinct !DILexicalBlock(scope: !182, file: !3, line: 130, column: 7)
!182 = distinct !DILexicalBlock(scope: !114, file: !3, line: 130, column: 7)
!183 = !DILocalVariable(name: "__s2_len", scope: !181, file: !3, line: 130, type: !47)
!184 = !DILocalVariable(name: "__s2", scope: !185, file: !3, line: 130, type: !52)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 130, column: 7)
!186 = !DILocalVariable(name: "__result", scope: !185, file: !3, line: 130, type: !57)
!187 = !DILocalVariable(name: "found_blank", scope: !188, file: !3, line: 169, type: !63)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 168, column: 13)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 167, column: 15)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 163, column: 9)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 162, column: 11)
!192 = distinct !DILexicalBlock(scope: !114, file: !3, line: 147, column: 5)
!193 = !DILocalVariable(name: "logical_end", scope: !188, file: !3, line: 170, type: !47)
!194 = !DILocalVariable(name: "i", scope: !195, file: !3, line: 185, type: !47)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 184, column: 17)
!196 = distinct !DILexicalBlock(scope: !188, file: !3, line: 183, column: 19)
!197 = !DILocalVariable(name: "__s1_len", scope: !198, file: !3, line: 226, type: !47)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 226, column: 12)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 226, column: 11)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 224, column: 5)
!201 = distinct !DILexicalBlock(scope: !114, file: !3, line: 223, column: 7)
!202 = !DILocalVariable(name: "__s2_len", scope: !198, file: !3, line: 226, type: !47)
!203 = !DILocalVariable(name: "__s2", scope: !204, file: !3, line: 226, type: !52)
!204 = distinct !DILexicalBlock(scope: !198, file: !3, line: 226, column: 12)
!205 = !DILocalVariable(name: "__result", scope: !204, file: !3, line: 226, type: !57)
!206 = !DILocalVariable(name: "__s1_len", scope: !207, file: !3, line: 230, type: !47)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 230, column: 8)
!208 = distinct !DILexicalBlock(scope: !114, file: !3, line: 230, column: 7)
!209 = !DILocalVariable(name: "__s2_len", scope: !207, file: !3, line: 230, type: !47)
!210 = !DILocalVariable(name: "__s2", scope: !211, file: !3, line: 230, type: !52)
!211 = distinct !DILexicalBlock(scope: !207, file: !3, line: 230, column: 8)
!212 = !DILocalVariable(name: "__result", scope: !211, file: !3, line: 230, type: !57)
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "allocated_out", scope: !114, file: !3, line: 127, type: !47, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 280, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 35)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "Version", scope: !220, file: !221, line: 2, type: !55, isLocal: false, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, globals: !223)
!221 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!222 = !{}
!223 = !{!218}
!224 = !DIGlobalVariableExpression(var: !225)
!225 = distinct !DIGlobalVariable(name: "file_name", scope: !226, file: !231, line: 36, type: !55, isLocal: true, isDefinition: true)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, globals: !228)
!227 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!228 = !{!224, !229}
!229 = !DIGlobalVariableExpression(var: !230)
!230 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !226, file: !231, line: 46, type: !63, isLocal: true, isDefinition: true)
!231 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!232 = !DIGlobalVariableExpression(var: !233)
!233 = distinct !DIGlobalVariable(name: "exit_failure", scope: !234, file: !237, line: 24, type: !238, isLocal: false, isDefinition: true)
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, globals: !236)
!235 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!236 = !{!232}
!237 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!238 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!239 = !DIGlobalVariableExpression(var: !240)
!240 = distinct !DIGlobalVariable(name: "program_name", scope: !241, file: !245, line: 33, type: !55, isLocal: false, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !243, globals: !244)
!242 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!243 = !{!46, !44}
!244 = !{!239}
!245 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!246 = !DIGlobalVariableExpression(var: !247)
!247 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !248, file: !260, line: 77, type: !296, isLocal: false, isDefinition: true)
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !250, retainedTypes: !256, globals: !257)
!249 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!250 = !{!5, !251, !28}
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !252)
!252 = !{!253, !254, !255}
!253 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!254 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!255 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!256 = !{!57, !58, !47, !44}
!257 = !{!246, !258, !265, !278, !280, !285, !292, !294}
!258 = !DIGlobalVariableExpression(var: !259)
!259 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !248, file: !260, line: 93, type: !261, isLocal: false, isDefinition: true)
!260 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 320, elements: !263)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!263 = !{!264}
!264 = !DISubrange(count: 10)
!265 = !DIGlobalVariableExpression(var: !266)
!266 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !248, file: !260, line: 1043, type: !267, isLocal: false, isDefinition: true)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !260, line: 57, size: 448, elements: !268)
!268 = !{!269, !270, !271, !276, !277}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !267, file: !260, line: 60, baseType: !5, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !260, line: 63, baseType: !57, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !267, file: !260, line: 67, baseType: !272, size: 256, offset: 64)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 256, elements: !274)
!273 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!274 = !{!275}
!275 = !DISubrange(count: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !267, file: !260, line: 70, baseType: !55, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !267, file: !260, line: 73, baseType: !55, size: 64, offset: 384)
!278 = !DIGlobalVariableExpression(var: !279)
!279 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !248, file: !260, line: 108, type: !267, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281)
!281 = distinct !DIGlobalVariable(name: "slot0", scope: !248, file: !260, line: 834, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 256)
!285 = !DIGlobalVariableExpression(var: !286)
!286 = distinct !DIGlobalVariable(name: "slotvec", scope: !248, file: !260, line: 837, type: !287, isLocal: true, isDefinition: true)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !260, line: 826, size: 128, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !288, file: !260, line: 828, baseType: !47, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !288, file: !260, line: 829, baseType: !44, size: 64, offset: 64)
!292 = !DIGlobalVariableExpression(var: !293)
!293 = distinct !DIGlobalVariable(name: "nslots", scope: !248, file: !260, line: 835, type: !57, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295)
!295 = distinct !DIGlobalVariable(name: "slotvec0", scope: !248, file: !260, line: 836, type: !288, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 704, elements: !298)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!298 = !{!299}
!299 = !DISubrange(count: 11)
!300 = !DIGlobalVariableExpression(var: !301)
!301 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !302, file: !305, line: 26, type: !306, isLocal: false, isDefinition: true)
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, globals: !304)
!303 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!304 = !{!300}
!305 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 376, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 47)
!309 = !DIGlobalVariableExpression(var: !310)
!310 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !311, file: !654, line: 120, type: !655, isLocal: true, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !652, globals: !653)
!312 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!313 = !{!314}
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 41, size: 32, elements: !316)
!315 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!317 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!318 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!319 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!320 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!321 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!322 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!323 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!324 = !DIEnumerator(name: "DAY_1", value: 131079)
!325 = !DIEnumerator(name: "DAY_2", value: 131080)
!326 = !DIEnumerator(name: "DAY_3", value: 131081)
!327 = !DIEnumerator(name: "DAY_4", value: 131082)
!328 = !DIEnumerator(name: "DAY_5", value: 131083)
!329 = !DIEnumerator(name: "DAY_6", value: 131084)
!330 = !DIEnumerator(name: "DAY_7", value: 131085)
!331 = !DIEnumerator(name: "ABMON_1", value: 131086)
!332 = !DIEnumerator(name: "ABMON_2", value: 131087)
!333 = !DIEnumerator(name: "ABMON_3", value: 131088)
!334 = !DIEnumerator(name: "ABMON_4", value: 131089)
!335 = !DIEnumerator(name: "ABMON_5", value: 131090)
!336 = !DIEnumerator(name: "ABMON_6", value: 131091)
!337 = !DIEnumerator(name: "ABMON_7", value: 131092)
!338 = !DIEnumerator(name: "ABMON_8", value: 131093)
!339 = !DIEnumerator(name: "ABMON_9", value: 131094)
!340 = !DIEnumerator(name: "ABMON_10", value: 131095)
!341 = !DIEnumerator(name: "ABMON_11", value: 131096)
!342 = !DIEnumerator(name: "ABMON_12", value: 131097)
!343 = !DIEnumerator(name: "MON_1", value: 131098)
!344 = !DIEnumerator(name: "MON_2", value: 131099)
!345 = !DIEnumerator(name: "MON_3", value: 131100)
!346 = !DIEnumerator(name: "MON_4", value: 131101)
!347 = !DIEnumerator(name: "MON_5", value: 131102)
!348 = !DIEnumerator(name: "MON_6", value: 131103)
!349 = !DIEnumerator(name: "MON_7", value: 131104)
!350 = !DIEnumerator(name: "MON_8", value: 131105)
!351 = !DIEnumerator(name: "MON_9", value: 131106)
!352 = !DIEnumerator(name: "MON_10", value: 131107)
!353 = !DIEnumerator(name: "MON_11", value: 131108)
!354 = !DIEnumerator(name: "MON_12", value: 131109)
!355 = !DIEnumerator(name: "AM_STR", value: 131110)
!356 = !DIEnumerator(name: "PM_STR", value: 131111)
!357 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!358 = !DIEnumerator(name: "D_FMT", value: 131113)
!359 = !DIEnumerator(name: "T_FMT", value: 131114)
!360 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!361 = !DIEnumerator(name: "ERA", value: 131116)
!362 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!363 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!364 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!365 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!366 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!367 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!368 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!369 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!370 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!371 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!372 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!373 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!374 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!375 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!376 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!377 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!378 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!379 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!380 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!381 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!382 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!383 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!384 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!385 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!386 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!387 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!388 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!389 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!390 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!391 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!392 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!393 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!394 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!395 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!396 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!397 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!398 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!399 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!400 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!401 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!402 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!403 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!404 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!405 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!406 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!407 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!408 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!409 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!410 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!411 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!412 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!413 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!414 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!415 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!416 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!417 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!418 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!419 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!420 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!421 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!422 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!423 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!424 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!425 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!426 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!427 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!428 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!429 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!430 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!431 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!432 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!433 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!434 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!435 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!436 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!437 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!438 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!439 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!440 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!441 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!442 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!443 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!444 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!445 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!446 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!447 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!448 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!449 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!450 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!451 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!452 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!453 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!454 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!455 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!456 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!457 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!458 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!459 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!460 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!461 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!462 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!463 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!464 = !DIEnumerator(name: "CODESET", value: 14)
!465 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!466 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!467 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!468 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!511 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!512 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!513 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!514 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!515 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!516 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!517 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!518 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!519 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!520 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!521 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!536 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!537 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!538 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!539 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!540 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!541 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!542 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!543 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!544 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!545 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!546 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!547 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!548 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!549 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!550 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!551 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!552 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!553 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!554 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!555 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!556 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!557 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!558 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!575 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!576 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!579 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!580 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!581 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!582 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!583 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!584 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!585 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!586 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!587 = !DIEnumerator(name: "THOUSEP", value: 65537)
!588 = !DIEnumerator(name: "__GROUPING", value: 65538)
!589 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!590 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!591 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!592 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!593 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!594 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!595 = !DIEnumerator(name: "__YESSTR", value: 327682)
!596 = !DIEnumerator(name: "__NOSTR", value: 327683)
!597 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!598 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!599 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!600 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!601 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!602 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!603 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!604 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!605 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!606 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!607 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!608 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!609 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!610 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!611 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!612 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!613 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!614 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!615 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!616 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!617 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!618 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!619 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!620 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!621 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!622 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!623 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!624 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!625 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!626 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!627 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!628 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!629 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!630 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!631 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!632 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!633 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!650 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!651 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!652 = !{!46, !44, !59}
!653 = !{!309}
!654 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!655 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !658)
!657 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!658 = !{!19}
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !661, retainedTypes: !666)
!660 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!661 = !{!662}
!662 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !663, line: 41, size: 32, elements: !664)
!663 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!664 = !{!665}
!665 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!666 = !{!46}
!667 = distinct !DICompileUnit(language: DW_LANG_C99, file: !668, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !669, retainedTypes: !683)
!668 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = !{!670}
!670 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !672, file: !671, line: 192, size: 32, elements: !681)
!671 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = distinct !DISubprogram(name: "x2nrealloc", scope: !671, file: !671, line: 180, type: !673, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !676)
!673 = !DISubroutineType(types: !674)
!674 = !{!46, !46, !675, !47}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!676 = !{!677, !678, !679, !680}
!677 = !DILocalVariable(name: "p", arg: 1, scope: !672, file: !671, line: 180, type: !46)
!678 = !DILocalVariable(name: "pn", arg: 2, scope: !672, file: !671, line: 180, type: !675)
!679 = !DILocalVariable(name: "s", arg: 3, scope: !672, file: !671, line: 180, type: !47)
!680 = !DILocalVariable(name: "n", scope: !672, file: !671, line: 182, type: !47)
!681 = !{!682}
!682 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!683 = !{!47, !44, !46}
!684 = distinct !DICompileUnit(language: DW_LANG_C99, file: !685, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222)
!685 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!686 = distinct !DICompileUnit(language: DW_LANG_C99, file: !687, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !688)
!687 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!688 = !{!689}
!689 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !690, line: 26, size: 32, elements: !691)
!690 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = !{!692, !693, !694, !695, !696}
!692 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!693 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!694 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!695 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!696 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !699, retainedTypes: !700)
!698 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!699 = !{!689, !28}
!700 = !{!57, !58, !44}
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !666)
!702 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222)
!704 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !666)
!706 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!707 = distinct !DICompileUnit(language: DW_LANG_C99, file: !708, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !666)
!708 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !711)
!710 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!711 = !{!47}
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222)
!713 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !715, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !716)
!715 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!716 = !{!47, !50, !52, !55}
!717 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!718 = !{i32 2, !"Dwarf Version", i32 4}
!719 = !{i32 2, !"Debug Info Version", i32 3}
!720 = !{i32 1, !"PIC Level", i32 2}
!721 = !{i32 1, !"PIE Level", i32 2}
!722 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 60, type: !723, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !57}
!725 = !{!726}
!726 = !DILocalVariable(name: "status", arg: 1, scope: !722, file: !3, line: 60, type: !57)
!727 = !DIExpression()
!728 = !DILocation(line: 60, column: 12, scope: !722)
!729 = !DILocation(line: 62, column: 14, scope: !730)
!730 = distinct !DILexicalBlock(scope: !722, file: !3, line: 62, column: 7)
!731 = !DILocation(line: 62, column: 7, scope: !722)
!732 = !DILocation(line: 63, column: 5, scope: !733)
!733 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 1)
!734 = distinct !DILexicalBlock(scope: !730, file: !3, line: 63, column: 5)
!735 = !{!736, !736, i64 0}
!736 = !{!"any pointer", !737, i64 0}
!737 = !{!"omnipotent char", !738, i64 0}
!738 = !{!"Simple C/C++ TBAA"}
!739 = !DILocation(line: 63, column: 5, scope: !740)
!740 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 3)
!741 = !DILocation(line: 63, column: 5, scope: !742)
!742 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 2)
!743 = !DILocation(line: 66, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !730, file: !3, line: 65, column: 5)
!745 = !DILocation(line: 66, column: 7, scope: !746)
!746 = !DILexicalBlockFile(scope: !744, file: !3, discriminator: 1)
!747 = !DILocation(line: 70, column: 7, scope: !744)
!748 = !DILocation(line: 70, column: 7, scope: !746)
!749 = !DILocation(line: 580, column: 3, scope: !750, inlinedAt: !753)
!750 = distinct !DISubprogram(name: "emit_stdin_note", scope: !71, file: !71, line: 578, type: !751, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !222)
!751 = !DISubroutineType(types: !752)
!752 = !{null}
!753 = distinct !DILocation(line: 74, column: 7, scope: !744)
!754 = !DILocation(line: 580, column: 3, scope: !755, inlinedAt: !753)
!755 = !DILexicalBlockFile(scope: !750, file: !71, discriminator: 1)
!756 = !DILocation(line: 587, column: 3, scope: !757, inlinedAt: !758)
!757 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !71, file: !71, line: 585, type: !751, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !222)
!758 = distinct !DILocation(line: 75, column: 7, scope: !744)
!759 = !DILocation(line: 587, column: 3, scope: !760, inlinedAt: !758)
!760 = !DILexicalBlockFile(scope: !757, file: !71, discriminator: 1)
!761 = !DILocation(line: 77, column: 7, scope: !744)
!762 = !DILocation(line: 77, column: 7, scope: !746)
!763 = !DILocation(line: 82, column: 7, scope: !744)
!764 = !DILocation(line: 82, column: 7, scope: !746)
!765 = !DILocation(line: 83, column: 7, scope: !744)
!766 = !DILocation(line: 83, column: 7, scope: !746)
!767 = !DILocation(line: 642, column: 15, scope: !70, inlinedAt: !768)
!768 = distinct !DILocation(line: 84, column: 7, scope: !744)
!769 = !DILocation(line: 651, column: 3, scope: !70, inlinedAt: !768)
!770 = !DILocation(line: 651, column: 3, scope: !771, inlinedAt: !768)
!771 = !DILexicalBlockFile(scope: !70, file: !71, discriminator: 1)
!772 = !DILocation(line: 655, column: 29, scope: !70, inlinedAt: !768)
!773 = !DILocation(line: 655, column: 15, scope: !70, inlinedAt: !768)
!774 = !DILocation(line: 656, column: 7, scope: !90, inlinedAt: !768)
!775 = !DILocation(line: 656, column: 19, scope: !90, inlinedAt: !768)
!776 = !DILocation(line: 656, column: 22, scope: !777, inlinedAt: !768)
!777 = !DILexicalBlockFile(scope: !90, file: !71, discriminator: 16)
!778 = !DILocation(line: 656, column: 7, scope: !779, inlinedAt: !768)
!779 = !DILexicalBlockFile(scope: !70, file: !71, discriminator: 16)
!780 = !DILocation(line: 662, column: 7, scope: !781, inlinedAt: !768)
!781 = distinct !DILexicalBlock(scope: !90, file: !71, line: 657, column: 5)
!782 = !DILocation(line: 662, column: 7, scope: !783, inlinedAt: !768)
!783 = !DILexicalBlockFile(scope: !781, file: !71, discriminator: 1)
!784 = !DILocation(line: 664, column: 5, scope: !781, inlinedAt: !768)
!785 = !DILocation(line: 665, column: 3, scope: !70, inlinedAt: !768)
!786 = !DILocation(line: 665, column: 3, scope: !771, inlinedAt: !768)
!787 = !DILocation(line: 667, column: 3, scope: !70, inlinedAt: !768)
!788 = !DILocation(line: 667, column: 3, scope: !771, inlinedAt: !768)
!789 = !DILocation(line: 86, column: 3, scope: !722)
!790 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 240, type: !791, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !794)
!791 = !DISubroutineType(types: !792)
!792 = !{!57, !57, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!794 = !{!795, !796, !797, !798, !799, !800, !801}
!795 = !DILocalVariable(name: "argc", arg: 1, scope: !790, file: !3, line: 240, type: !57)
!796 = !DILocalVariable(name: "argv", arg: 2, scope: !790, file: !3, line: 240, type: !793)
!797 = !DILocalVariable(name: "width", scope: !790, file: !3, line: 242, type: !47)
!798 = !DILocalVariable(name: "i", scope: !790, file: !3, line: 243, type: !57)
!799 = !DILocalVariable(name: "optc", scope: !790, file: !3, line: 244, type: !57)
!800 = !DILocalVariable(name: "ok", scope: !790, file: !3, line: 245, type: !63)
!801 = !DILocalVariable(name: "optargbuf", scope: !802, file: !3, line: 259, type: !803)
!802 = distinct !DILexicalBlock(scope: !790, file: !3, line: 258, column: 5)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 2)
!806 = !DILocation(line: 240, column: 11, scope: !790)
!807 = !DILocation(line: 240, column: 24, scope: !790)
!808 = !DILocation(line: 242, column: 10, scope: !790)
!809 = !DILocation(line: 248, column: 21, scope: !790)
!810 = !DILocation(line: 248, column: 3, scope: !790)
!811 = !DILocation(line: 249, column: 3, scope: !790)
!812 = !DILocation(line: 250, column: 3, scope: !790)
!813 = !DILocation(line: 251, column: 3, scope: !790)
!814 = !DILocation(line: 253, column: 3, scope: !790)
!815 = !DILocation(line: 257, column: 18, scope: !816)
!816 = !DILexicalBlockFile(scope: !790, file: !3, discriminator: 1)
!817 = !DILocation(line: 244, column: 7, scope: !790)
!818 = !DILocation(line: 257, column: 71, scope: !816)
!819 = !DILocation(line: 257, column: 3, scope: !816)
!820 = !DILocation(line: 259, column: 7, scope: !802)
!821 = !DILocation(line: 259, column: 12, scope: !802)
!822 = !DILocation(line: 261, column: 7, scope: !802)
!823 = !DILocation(line: 265, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !802, file: !3, line: 262, column: 9)
!825 = !DILocation(line: 269, column: 11, scope: !824)
!826 = !DILocation(line: 273, column: 15, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !3, line: 273, column: 15)
!828 = !DILocation(line: 273, column: 15, scope: !824)
!829 = !DILocation(line: 274, column: 19, scope: !827)
!830 = !DILocation(line: 274, column: 13, scope: !827)
!831 = !DILocation(line: 277, column: 30, scope: !832)
!832 = distinct !DILexicalBlock(scope: !827, file: !3, line: 276, column: 13)
!833 = !DILocation(line: 277, column: 28, scope: !832)
!834 = !{!737, !737, i64 0}
!835 = !DILocation(line: 278, column: 28, scope: !832)
!836 = !DILocation(line: 273, column: 15, scope: !837)
!837 = !DILexicalBlockFile(scope: !827, file: !3, discriminator: 1)
!838 = !DILocation(line: 283, column: 31, scope: !824)
!839 = !DILocation(line: 284, column: 31, scope: !824)
!840 = !DILocation(line: 283, column: 19, scope: !824)
!841 = !DILocation(line: 285, column: 11, scope: !824)
!842 = !DILocation(line: 287, column: 9, scope: !824)
!843 = !DILocation(line: 289, column: 9, scope: !824)
!844 = !DILocation(line: 289, column: 9, scope: !845)
!845 = !DILexicalBlockFile(scope: !824, file: !3, discriminator: 1)
!846 = !DILocation(line: 292, column: 11, scope: !824)
!847 = !DILocation(line: 294, column: 5, scope: !790)
!848 = distinct !{!848, !849, !847}
!849 = !DILocation(line: 257, column: 3, scope: !790)
!850 = !DILocation(line: 296, column: 15, scope: !851)
!851 = distinct !DILexicalBlock(scope: !790, file: !3, line: 296, column: 7)
!852 = !{!853, !853, i64 0}
!853 = !{!"int", !737, i64 0}
!854 = !DILocation(line: 296, column: 12, scope: !851)
!855 = !DILocation(line: 296, column: 7, scope: !790)
!856 = !DILocation(line: 245, column: 8, scope: !790)
!857 = !DILocation(line: 243, column: 7, scope: !790)
!858 = !DILocation(line: 301, column: 26, scope: !859)
!859 = !DILexicalBlockFile(scope: !860, file: !3, discriminator: 1)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 301, column: 7)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 301, column: 7)
!862 = distinct !DILexicalBlock(scope: !851, file: !3, line: 299, column: 5)
!863 = !DILocation(line: 301, column: 7, scope: !864)
!864 = !DILexicalBlockFile(scope: !861, file: !3, discriminator: 1)
!865 = !DILocation(line: 302, column: 26, scope: !860)
!866 = !DILocation(line: 297, column: 10, scope: !851)
!867 = !DILocation(line: 297, column: 8, scope: !851)
!868 = !DILocation(line: 297, column: 5, scope: !851)
!869 = !DILocation(line: 302, column: 15, scope: !860)
!870 = !DILocation(line: 302, column: 12, scope: !860)
!871 = !DILocation(line: 301, column: 35, scope: !872)
!872 = !DILexicalBlockFile(scope: !860, file: !3, discriminator: 2)
!873 = distinct !{!873, !874, !875}
!874 = !DILocation(line: 301, column: 7, scope: !861)
!875 = !DILocation(line: 302, column: 40, scope: !861)
!876 = !DILocation(line: 305, column: 23, scope: !877)
!877 = distinct !DILexicalBlock(scope: !790, file: !3, line: 305, column: 7)
!878 = !DILocation(line: 305, column: 34, scope: !879)
!879 = !DILexicalBlockFile(scope: !877, file: !3, discriminator: 1)
!880 = !DILocation(line: 305, column: 26, scope: !879)
!881 = !DILocation(line: 305, column: 41, scope: !879)
!882 = !DILocation(line: 305, column: 7, scope: !816)
!883 = !DILocation(line: 306, column: 5, scope: !877)
!884 = !DILocation(line: 306, column: 5, scope: !879)
!885 = !DILocation(line: 308, column: 10, scope: !790)
!886 = !DILocation(line: 308, column: 3, scope: !790)
!887 = !DILocation(line: 120, column: 24, scope: !114)
!888 = !DILocation(line: 120, column: 41, scope: !114)
!889 = !DILocation(line: 124, column: 10, scope: !114)
!890 = !DILocation(line: 125, column: 10, scope: !114)
!891 = !DILocation(line: 130, column: 7, scope: !181)
!892 = !DILocation(line: 130, column: 7, scope: !185)
!893 = !DILocation(line: 130, column: 7, scope: !894)
!894 = !DILexicalBlockFile(scope: !185, file: !3, discriminator: 2)
!895 = !DILocation(line: 130, column: 7, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !3, discriminator: 3)
!897 = distinct !DILexicalBlock(scope: !185, file: !3, line: 130, column: 7)
!898 = !DILocation(line: 130, column: 7, scope: !899)
!899 = !DILexicalBlockFile(scope: !897, file: !3, discriminator: 2)
!900 = !DILocation(line: 130, column: 7, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !3, discriminator: 4)
!902 = distinct !DILexicalBlock(scope: !897, file: !3, line: 130, column: 7)
!903 = !DILocation(line: 130, column: 7, scope: !904)
!904 = !DILexicalBlockFile(scope: !182, file: !3, discriminator: 13)
!905 = !DILocation(line: 130, column: 7, scope: !906)
!906 = !DILexicalBlockFile(scope: !114, file: !3, discriminator: 13)
!907 = !DILocation(line: 132, column: 17, scope: !908)
!908 = distinct !DILexicalBlock(scope: !182, file: !3, line: 131, column: 5)
!909 = !DILocation(line: 122, column: 9, scope: !114)
!910 = !DILocation(line: 134, column: 5, scope: !908)
!911 = !DILocation(line: 136, column: 15, scope: !182)
!912 = !DILocation(line: 138, column: 15, scope: !913)
!913 = distinct !DILexicalBlock(scope: !114, file: !3, line: 138, column: 7)
!914 = !DILocation(line: 138, column: 7, scope: !114)
!915 = !DILocation(line: 140, column: 17, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !3, line: 139, column: 5)
!917 = !DILocation(line: 140, column: 30, scope: !918)
!918 = !DILexicalBlockFile(scope: !916, file: !3, discriminator: 1)
!919 = !DILocation(line: 140, column: 7, scope: !920)
!920 = !DILexicalBlockFile(scope: !916, file: !3, discriminator: 2)
!921 = !DILocation(line: 141, column: 7, scope: !916)
!922 = !DILocation(line: 144, column: 3, scope: !114)
!923 = !DILocation(line: 146, column: 3, scope: !114)
!924 = !DILocalVariable(name: "__fp", arg: 1, scope: !925, file: !926, line: 63, type: !121)
!925 = distinct !DISubprogram(name: "getc_unlocked", scope: !926, file: !926, line: 63, type: !927, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !929)
!926 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!927 = !DISubroutineType(types: !928)
!928 = !{!57, !121}
!929 = !{!924}
!930 = !DILocation(line: 63, column: 22, scope: !925, inlinedAt: !931)
!931 = distinct !DILocation(line: 146, column: 15, scope: !932)
!932 = !DILexicalBlockFile(scope: !114, file: !3, discriminator: 1)
!933 = !DILocation(line: 65, column: 10, scope: !925, inlinedAt: !931)
!934 = !{!935, !736, i64 8}
!935 = !{!"_IO_FILE", !853, i64 0, !736, i64 8, !736, i64 16, !736, i64 24, !736, i64 32, !736, i64 40, !736, i64 48, !736, i64 56, !736, i64 64, !736, i64 72, !736, i64 80, !736, i64 88, !736, i64 96, !736, i64 104, !853, i64 112, !853, i64 116, !936, i64 120, !937, i64 128, !737, i64 130, !737, i64 131, !736, i64 136, !936, i64 144, !736, i64 152, !736, i64 160, !736, i64 168, !736, i64 176, !936, i64 184, !853, i64 192, !737, i64 196}
!936 = !{!"long", !737, i64 0}
!937 = !{!"short", !737, i64 0}
!938 = !{!935, !736, i64 16}
!939 = !{!"branch_weights", i32 2000, i32 1}
!940 = !DILocation(line: 65, column: 10, scope: !941, inlinedAt: !931)
!941 = !DILexicalBlockFile(scope: !925, file: !926, discriminator: 2)
!942 = !DILocation(line: 123, column: 7, scope: !114)
!943 = !DILocation(line: 146, column: 3, scope: !932)
!944 = !DILocation(line: 65, column: 10, scope: !945, inlinedAt: !931)
!945 = !DILexicalBlockFile(scope: !925, file: !926, discriminator: 1)
!946 = !DILocation(line: 146, column: 31, scope: !932)
!947 = !DILocation(line: 148, column: 22, scope: !948)
!948 = distinct !DILexicalBlock(scope: !192, file: !3, line: 148, column: 11)
!949 = !DILocation(line: 148, column: 29, scope: !948)
!950 = !{!936, !936, i64 0}
!951 = !DILocation(line: 148, column: 26, scope: !948)
!952 = !DILocation(line: 148, column: 11, scope: !192)
!953 = !DILocation(line: 149, column: 20, scope: !948)
!954 = !DILocation(line: 149, column: 18, scope: !948)
!955 = !DILocation(line: 149, column: 9, scope: !948)
!956 = !DILocation(line: 151, column: 13, scope: !957)
!957 = distinct !DILexicalBlock(scope: !192, file: !3, line: 151, column: 11)
!958 = !DILocation(line: 151, column: 11, scope: !192)
!959 = !DILocation(line: 153, column: 11, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !3, line: 152, column: 9)
!961 = !DILocation(line: 153, column: 34, scope: !960)
!962 = !DILocation(line: 154, column: 11, scope: !960)
!963 = !DILocation(line: 156, column: 11, scope: !960)
!964 = distinct !{!964, !923, !965}
!965 = !DILocation(line: 216, column: 5, scope: !114)
!966 = !DILocalVariable(name: "column", arg: 1, scope: !967, file: !3, line: 94, type: !47)
!967 = distinct !DISubprogram(name: "adjust_column", scope: !3, file: !3, line: 94, type: !968, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!47, !47, !45}
!970 = !{!966, !971}
!971 = !DILocalVariable(name: "c", arg: 2, scope: !967, file: !3, line: 94, type: !45)
!972 = !DILocation(line: 94, column: 23, scope: !967, inlinedAt: !973)
!973 = distinct !DILocation(line: 160, column: 16, scope: !192)
!974 = !DILocation(line: 94, column: 36, scope: !967, inlinedAt: !973)
!975 = !DILocation(line: 96, column: 7, scope: !967, inlinedAt: !973)
!976 = !DILocation(line: 98, column: 11, scope: !977, inlinedAt: !973)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 97, column: 5)
!978 = distinct !DILexicalBlock(scope: !967, file: !3, line: 96, column: 7)
!979 = !DILocation(line: 100, column: 22, scope: !980, inlinedAt: !973)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 100, column: 15)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 99, column: 9)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 98, column: 11)
!983 = !DILocation(line: 101, column: 19, scope: !980, inlinedAt: !973)
!984 = !DILocation(line: 100, column: 15, scope: !981, inlinedAt: !973)
!985 = !DILocation(line: 106, column: 38, scope: !986, inlinedAt: !973)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 105, column: 16)
!987 = distinct !DILexicalBlock(scope: !982, file: !3, line: 103, column: 16)
!988 = !DILocation(line: 106, column: 29, scope: !986, inlinedAt: !973)
!989 = !DILocation(line: 106, column: 16, scope: !986, inlinedAt: !973)
!990 = !DILocation(line: 106, column: 9, scope: !986, inlinedAt: !973)
!991 = !DILocation(line: 108, column: 15, scope: !986, inlinedAt: !973)
!992 = !DILocation(line: 111, column: 11, scope: !978, inlinedAt: !973)
!993 = !DILocation(line: 162, column: 18, scope: !191)
!994 = !DILocation(line: 162, column: 11, scope: !192)
!995 = !DILocation(line: 167, column: 15, scope: !190)
!996 = !DILocation(line: 170, column: 22, scope: !188)
!997 = !DILocation(line: 173, column: 15, scope: !998)
!998 = !DILexicalBlockFile(scope: !188, file: !3, discriminator: 1)
!999 = !DILocation(line: 175, column: 19, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !188, file: !3, line: 174, column: 17)
!1001 = !DILocation(line: 176, column: 23, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 176, column: 23)
!1003 = !{!937, !937, i64 0}
!1004 = !DILocation(line: 176, column: 23, scope: !1000)
!1005 = distinct !{!1005, !1006, !1007}
!1006 = !DILocation(line: 173, column: 15, scope: !188)
!1007 = !DILocation(line: 181, column: 17, scope: !188)
!1008 = !DILocation(line: 189, column: 19, scope: !195)
!1009 = !DILocalVariable(name: "__c", arg: 1, scope: !1010, file: !926, line: 105, type: !57)
!1010 = distinct !DISubprogram(name: "putchar_unlocked", scope: !926, file: !926, line: 105, type: !1011, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!57, !57}
!1013 = !{!1009}
!1014 = !DILocation(line: 105, column: 23, scope: !1010, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 191, column: 19, scope: !195)
!1016 = !DILocation(line: 107, column: 10, scope: !1010, inlinedAt: !1015)
!1017 = !{!935, !736, i64 40}
!1018 = !{!935, !736, i64 48}
!1019 = !DILocation(line: 107, column: 10, scope: !1020, inlinedAt: !1015)
!1020 = !DILexicalBlockFile(scope: !1010, file: !926, discriminator: 1)
!1021 = !DILocation(line: 107, column: 10, scope: !1022, inlinedAt: !1015)
!1022 = !DILexicalBlockFile(scope: !1010, file: !926, discriminator: 2)
!1023 = !DILocation(line: 194, column: 28, scope: !195)
!1024 = !DILocation(line: 194, column: 47, scope: !195)
!1025 = !DILocation(line: 195, column: 39, scope: !195)
!1026 = !DILocation(line: 194, column: 19, scope: !195)
!1027 = !DILocation(line: 185, column: 26, scope: !195)
!1028 = !DILocation(line: 197, column: 42, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1030, file: !3, discriminator: 1)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 197, column: 19)
!1031 = distinct !DILexicalBlock(scope: !195, file: !3, line: 197, column: 19)
!1032 = !DILocation(line: 197, column: 19, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1031, file: !3, discriminator: 1)
!1034 = !DILocation(line: 94, column: 23, scope: !967, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 198, column: 30, scope: !1030)
!1036 = !DILocation(line: 94, column: 36, scope: !967, inlinedAt: !1035)
!1037 = !DILocation(line: 96, column: 7, scope: !967, inlinedAt: !1035)
!1038 = !DILocation(line: 198, column: 53, scope: !1030)
!1039 = !DILocation(line: 98, column: 11, scope: !977, inlinedAt: !1035)
!1040 = !DILocation(line: 100, column: 22, scope: !980, inlinedAt: !1035)
!1041 = !DILocation(line: 101, column: 19, scope: !980, inlinedAt: !1035)
!1042 = !DILocation(line: 100, column: 15, scope: !981, inlinedAt: !1035)
!1043 = !DILocation(line: 106, column: 38, scope: !986, inlinedAt: !1035)
!1044 = !DILocation(line: 106, column: 29, scope: !986, inlinedAt: !1035)
!1045 = !DILocation(line: 106, column: 16, scope: !986, inlinedAt: !1035)
!1046 = !DILocation(line: 106, column: 9, scope: !986, inlinedAt: !1035)
!1047 = !DILocation(line: 108, column: 15, scope: !986, inlinedAt: !1035)
!1048 = !DILocation(line: 111, column: 11, scope: !978, inlinedAt: !1035)
!1049 = !DILocation(line: 197, column: 57, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1030, file: !3, discriminator: 2)
!1051 = distinct !{!1051, !1052, !1053}
!1052 = !DILocation(line: 197, column: 19, scope: !1031)
!1053 = !DILocation(line: 198, column: 64, scope: !1031)
!1054 = !DILocation(line: 203, column: 26, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !190, file: !3, line: 203, column: 15)
!1056 = !DILocation(line: 203, column: 15, scope: !190)
!1057 = !DILocation(line: 205, column: 38, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 204, column: 13)
!1059 = !DILocation(line: 206, column: 15, scope: !1058)
!1060 = !DILocation(line: 209, column: 34, scope: !190)
!1061 = !DILocation(line: 210, column: 11, scope: !190)
!1062 = !DILocation(line: 212, column: 11, scope: !190)
!1063 = !DILocation(line: 215, column: 7, scope: !192)
!1064 = !DILocation(line: 215, column: 26, scope: !192)
!1065 = !DILocation(line: 215, column: 30, scope: !192)
!1066 = !DILocation(line: 146, column: 3, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !114, file: !3, discriminator: 2)
!1068 = !DILocation(line: 218, column: 17, scope: !114)
!1069 = !DILocation(line: 128, column: 7, scope: !114)
!1070 = !DILocation(line: 220, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !114, file: !3, line: 220, column: 7)
!1072 = !DILocation(line: 220, column: 7, scope: !114)
!1073 = !DILocation(line: 221, column: 5, scope: !1071)
!1074 = !DILocalVariable(name: "__stream", arg: 1, scope: !1075, file: !926, line: 132, type: !121)
!1075 = distinct !DISubprogram(name: "ferror_unlocked", scope: !926, file: !926, line: 132, type: !927, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1076)
!1076 = !{!1074}
!1077 = !DILocation(line: 132, column: 1, scope: !1075, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 223, column: 7, scope: !201)
!1079 = !DILocation(line: 134, column: 10, scope: !1075, inlinedAt: !1078)
!1080 = !{!935, !853, i64 0}
!1081 = !DILocation(line: 223, column: 7, scope: !201)
!1082 = !DILocation(line: 223, column: 7, scope: !114)
!1083 = !DILocation(line: 225, column: 36, scope: !200)
!1084 = !DILocation(line: 225, column: 7, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !200, file: !3, discriminator: 1)
!1086 = !DILocation(line: 226, column: 12, scope: !198)
!1087 = !DILocation(line: 226, column: 12, scope: !204)
!1088 = !DILocation(line: 226, column: 12, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !204, file: !3, discriminator: 2)
!1090 = !DILocation(line: 226, column: 12, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1092, file: !3, discriminator: 3)
!1092 = distinct !DILexicalBlock(scope: !204, file: !3, line: 226, column: 12)
!1093 = !DILocation(line: 226, column: 12, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1092, file: !3, discriminator: 2)
!1095 = !DILocation(line: 226, column: 12, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1097, file: !3, discriminator: 4)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 226, column: 12)
!1098 = !DILocation(line: 226, column: 12, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !198, file: !3, discriminator: 11)
!1100 = !DILocation(line: 226, column: 11, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !200, file: !3, discriminator: 13)
!1102 = !DILocation(line: 227, column: 9, scope: !199)
!1103 = !DILocation(line: 230, column: 8, scope: !207)
!1104 = !DILocation(line: 230, column: 8, scope: !211)
!1105 = !DILocation(line: 230, column: 8, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !211, file: !3, discriminator: 2)
!1107 = !DILocation(line: 230, column: 8, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1109, file: !3, discriminator: 3)
!1109 = distinct !DILexicalBlock(scope: !211, file: !3, line: 230, column: 8)
!1110 = !DILocation(line: 230, column: 8, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1109, file: !3, discriminator: 2)
!1112 = !DILocation(line: 230, column: 8, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1114, file: !3, discriminator: 4)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 230, column: 8)
!1115 = !DILocation(line: 230, column: 8, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !207, file: !3, discriminator: 11)
!1117 = !DILocation(line: 230, column: 30, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !208, file: !3, discriminator: 13)
!1119 = !DILocation(line: 230, column: 33, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !208, file: !3, discriminator: 14)
!1121 = !DILocation(line: 230, column: 50, scope: !1120)
!1122 = !DILocation(line: 230, column: 7, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !114, file: !3, discriminator: 14)
!1124 = !DILocation(line: 232, column: 17, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !208, file: !3, line: 231, column: 5)
!1126 = !DILocation(line: 232, column: 30, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1125, file: !3, discriminator: 1)
!1128 = !DILocation(line: 232, column: 7, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1125, file: !3, discriminator: 2)
!1130 = !DILocation(line: 233, column: 7, scope: !1125)
!1131 = !DILocation(line: 237, column: 1, scope: !114)
!1132 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !231, file: !231, line: 41, type: !72, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !226, variables: !1133)
!1133 = !{!1134}
!1134 = !DILocalVariable(name: "file", arg: 1, scope: !1132, file: !231, line: 41, type: !55)
!1135 = !DILocation(line: 41, column: 41, scope: !1132)
!1136 = !DILocation(line: 43, column: 13, scope: !1132)
!1137 = !DILocation(line: 44, column: 1, scope: !1132)
!1138 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !231, file: !231, line: 78, type: !1139, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !226, variables: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !63}
!1141 = !{!1142}
!1142 = !DILocalVariable(name: "ignore", arg: 1, scope: !1138, file: !231, line: 78, type: !63)
!1143 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1144 = !DILocation(line: 78, column: 37, scope: !1138)
!1145 = !DILocation(line: 80, column: 16, scope: !1138)
!1146 = !{!1147, !1147, i64 0}
!1147 = !{!"_Bool", !737, i64 0}
!1148 = !DILocation(line: 81, column: 1, scope: !1138)
!1149 = distinct !DISubprogram(name: "close_stdout", scope: !231, file: !231, line: 107, type: !751, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !226, variables: !1150)
!1150 = !{!1151}
!1151 = !DILocalVariable(name: "write_error", scope: !1152, file: !231, line: 112, type: !55)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !231, line: 111, column: 5)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !231, line: 109, column: 7)
!1154 = !DILocation(line: 109, column: 21, scope: !1153)
!1155 = !DILocation(line: 109, column: 7, scope: !1153)
!1156 = !DILocation(line: 109, column: 29, scope: !1153)
!1157 = !DILocation(line: 110, column: 7, scope: !1153)
!1158 = !DILocation(line: 110, column: 12, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1153, file: !231, discriminator: 1)
!1160 = !{i8 0, i8 2}
!1161 = !DILocation(line: 114, column: 19, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1152, file: !231, line: 113, column: 11)
!1163 = !DILocation(line: 110, column: 25, scope: !1159)
!1164 = !DILocation(line: 110, column: 28, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1153, file: !231, discriminator: 2)
!1166 = !DILocation(line: 110, column: 34, scope: !1165)
!1167 = !DILocation(line: 109, column: 7, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1149, file: !231, discriminator: 1)
!1169 = !DILocation(line: 112, column: 33, scope: !1152)
!1170 = !DILocation(line: 112, column: 19, scope: !1152)
!1171 = !DILocation(line: 113, column: 11, scope: !1162)
!1172 = !DILocation(line: 113, column: 11, scope: !1152)
!1173 = !DILocation(line: 114, column: 36, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1162, file: !231, discriminator: 1)
!1175 = !DILocation(line: 114, column: 9, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1162, file: !231, discriminator: 2)
!1177 = !DILocation(line: 114, column: 9, scope: !1162)
!1178 = !DILocation(line: 117, column: 9, scope: !1174)
!1179 = !DILocation(line: 119, column: 14, scope: !1152)
!1180 = !DILocation(line: 119, column: 7, scope: !1152)
!1181 = !DILocation(line: 122, column: 22, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1149, file: !231, line: 122, column: 8)
!1183 = !DILocation(line: 122, column: 8, scope: !1182)
!1184 = !DILocation(line: 122, column: 30, scope: !1182)
!1185 = !DILocation(line: 122, column: 8, scope: !1149)
!1186 = !DILocation(line: 123, column: 13, scope: !1182)
!1187 = !DILocation(line: 123, column: 6, scope: !1182)
!1188 = !DILocation(line: 124, column: 1, scope: !1149)
!1189 = distinct !DISubprogram(name: "fdadvise", scope: !1190, file: !1190, line: 31, type: !1191, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !1195)
!1190 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !57, !1193, !1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !123, line: 91, baseType: !151)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1195 = !{!1196, !1197, !1198, !1199, !1200}
!1196 = !DILocalVariable(name: "fd", arg: 1, scope: !1189, file: !1190, line: 31, type: !57)
!1197 = !DILocalVariable(name: "offset", arg: 2, scope: !1189, file: !1190, line: 31, type: !1193)
!1198 = !DILocalVariable(name: "len", arg: 3, scope: !1189, file: !1190, line: 31, type: !1193)
!1199 = !DILocalVariable(name: "advice", arg: 4, scope: !1189, file: !1190, line: 31, type: !1194)
!1200 = !DILocalVariable(name: "__x", scope: !1201, file: !1190, line: 34, type: !57)
!1201 = distinct !DILexicalBlock(scope: !1189, file: !1190, line: 34, column: 3)
!1202 = !DILocation(line: 31, column: 15, scope: !1189)
!1203 = !DILocation(line: 31, column: 25, scope: !1189)
!1204 = !DILocation(line: 31, column: 39, scope: !1189)
!1205 = !DILocation(line: 31, column: 54, scope: !1189)
!1206 = !DILocation(line: 34, column: 3, scope: !1201)
!1207 = !DILocation(line: 36, column: 1, scope: !1189)
!1208 = distinct !DISubprogram(name: "fadvise", scope: !1190, file: !1190, line: 39, type: !1209, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !656, variables: !1251)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !1211, !1194}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !123, line: 49, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !125, line: 241, size: 1728, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1213, file: !125, line: 242, baseType: !57, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1213, file: !125, line: 247, baseType: !44, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1213, file: !125, line: 248, baseType: !44, size: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1213, file: !125, line: 249, baseType: !44, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1213, file: !125, line: 250, baseType: !44, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1213, file: !125, line: 251, baseType: !44, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1213, file: !125, line: 252, baseType: !44, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1213, file: !125, line: 253, baseType: !44, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1213, file: !125, line: 254, baseType: !44, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1213, file: !125, line: 256, baseType: !44, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1213, file: !125, line: 257, baseType: !44, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1213, file: !125, line: 258, baseType: !44, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1213, file: !125, line: 260, baseType: !1228, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !125, line: 156, size: 192, elements: !1230)
!1230 = !{!1231, !1232, !1234}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1229, file: !125, line: 157, baseType: !1228, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1229, file: !125, line: 158, baseType: !1233, size: 64, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1229, file: !125, line: 162, baseType: !57, size: 32, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1213, file: !125, line: 262, baseType: !1233, size: 64, offset: 832)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1213, file: !125, line: 264, baseType: !57, size: 32, offset: 896)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1213, file: !125, line: 268, baseType: !57, size: 32, offset: 928)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1213, file: !125, line: 270, baseType: !151, size: 64, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1213, file: !125, line: 274, baseType: !58, size: 16, offset: 1024)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1213, file: !125, line: 275, baseType: !156, size: 8, offset: 1040)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1213, file: !125, line: 276, baseType: !158, size: 8, offset: 1048)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1213, file: !125, line: 280, baseType: !162, size: 64, offset: 1088)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1213, file: !125, line: 289, baseType: !165, size: 64, offset: 1152)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1213, file: !125, line: 297, baseType: !46, size: 64, offset: 1216)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1213, file: !125, line: 298, baseType: !46, size: 64, offset: 1280)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1213, file: !125, line: 299, baseType: !46, size: 64, offset: 1344)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1213, file: !125, line: 300, baseType: !46, size: 64, offset: 1408)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1213, file: !125, line: 302, baseType: !47, size: 64, offset: 1472)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1213, file: !125, line: 303, baseType: !57, size: 32, offset: 1536)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1213, file: !125, line: 305, baseType: !173, size: 160, offset: 1568)
!1251 = !{!1252, !1253}
!1252 = !DILocalVariable(name: "fp", arg: 1, scope: !1208, file: !1190, line: 39, type: !1211)
!1253 = !DILocalVariable(name: "advice", arg: 2, scope: !1208, file: !1190, line: 39, type: !1194)
!1254 = !DILocation(line: 39, column: 16, scope: !1208)
!1255 = !DILocation(line: 39, column: 30, scope: !1208)
!1256 = !DILocation(line: 41, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1208, file: !1190, line: 41, column: 7)
!1258 = !DILocation(line: 41, column: 7, scope: !1208)
!1259 = !DILocation(line: 42, column: 15, scope: !1257)
!1260 = !DILocation(line: 31, column: 15, scope: !1189, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 42, column: 5, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1257, file: !1190, discriminator: 1)
!1263 = !DILocation(line: 31, column: 25, scope: !1189, inlinedAt: !1261)
!1264 = !DILocation(line: 31, column: 39, scope: !1189, inlinedAt: !1261)
!1265 = !DILocation(line: 31, column: 54, scope: !1189, inlinedAt: !1261)
!1266 = !DILocation(line: 34, column: 3, scope: !1201, inlinedAt: !1261)
!1267 = !DILocation(line: 42, column: 5, scope: !1257)
!1268 = !DILocation(line: 43, column: 1, scope: !1208)
!1269 = distinct !DISubprogram(name: "set_program_name", scope: !245, file: !245, line: 39, type: !72, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !241, variables: !1270)
!1270 = !{!1271, !1272, !1273}
!1271 = !DILocalVariable(name: "argv0", arg: 1, scope: !1269, file: !245, line: 39, type: !55)
!1272 = !DILocalVariable(name: "slash", scope: !1269, file: !245, line: 46, type: !55)
!1273 = !DILocalVariable(name: "base", scope: !1269, file: !245, line: 47, type: !55)
!1274 = !DILocation(line: 39, column: 31, scope: !1269)
!1275 = !DILocation(line: 51, column: 13, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1269, file: !245, line: 51, column: 7)
!1277 = !DILocation(line: 51, column: 7, scope: !1269)
!1278 = !DILocation(line: 55, column: 14, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !245, line: 52, column: 5)
!1280 = !DILocation(line: 54, column: 7, scope: !1279)
!1281 = !DILocation(line: 56, column: 7, scope: !1279)
!1282 = !DILocation(line: 59, column: 11, scope: !1269)
!1283 = !DILocation(line: 46, column: 15, scope: !1269)
!1284 = !DILocation(line: 60, column: 17, scope: !1269)
!1285 = !DILocation(line: 60, column: 33, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1269, file: !245, discriminator: 1)
!1287 = !DILocation(line: 60, column: 11, scope: !1269)
!1288 = !DILocation(line: 47, column: 15, scope: !1269)
!1289 = !DILocation(line: 61, column: 12, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1269, file: !245, line: 61, column: 7)
!1291 = !DILocation(line: 61, column: 20, scope: !1290)
!1292 = !DILocation(line: 61, column: 25, scope: !1290)
!1293 = !DILocation(line: 61, column: 28, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1290, file: !245, discriminator: 1)
!1295 = !DILocation(line: 61, column: 61, scope: !1294)
!1296 = !DILocation(line: 61, column: 7, scope: !1286)
!1297 = !DILocation(line: 64, column: 11, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !245, line: 64, column: 11)
!1299 = distinct !DILexicalBlock(scope: !1290, file: !245, line: 62, column: 5)
!1300 = !DILocation(line: 64, column: 36, scope: !1298)
!1301 = !DILocation(line: 64, column: 11, scope: !1299)
!1302 = !DILocation(line: 66, column: 24, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !245, line: 65, column: 9)
!1304 = !DILocation(line: 70, column: 41, scope: !1303)
!1305 = !DILocation(line: 72, column: 9, scope: !1303)
!1306 = !DILocation(line: 84, column: 16, scope: !1269)
!1307 = !DILocation(line: 90, column: 27, scope: !1269)
!1308 = !DILocation(line: 92, column: 1, scope: !1269)
!1309 = distinct !DISubprogram(name: "clone_quoting_options", scope: !260, file: !260, line: 114, type: !1310, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !1313)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1312, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1313 = !{!1314, !1315, !1316}
!1314 = !DILocalVariable(name: "o", arg: 1, scope: !1309, file: !260, line: 114, type: !1312)
!1315 = !DILocalVariable(name: "e", scope: !1309, file: !260, line: 116, type: !57)
!1316 = !DILocalVariable(name: "p", scope: !1309, file: !260, line: 117, type: !1312)
!1317 = !DILocation(line: 114, column: 48, scope: !1309)
!1318 = !DILocation(line: 116, column: 11, scope: !1309)
!1319 = !DILocation(line: 116, column: 7, scope: !1309)
!1320 = !DILocation(line: 117, column: 40, scope: !1309)
!1321 = !DILocation(line: 117, column: 40, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1309, file: !260, discriminator: 3)
!1323 = !DILocation(line: 117, column: 31, scope: !1322)
!1324 = !DILocation(line: 117, column: 27, scope: !1309)
!1325 = !DILocation(line: 119, column: 9, scope: !1309)
!1326 = !DILocation(line: 120, column: 3, scope: !1309)
!1327 = distinct !DISubprogram(name: "get_quoting_style", scope: !260, file: !260, line: 125, type: !1328, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !1332)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!5, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!1332 = !{!1333}
!1333 = !DILocalVariable(name: "o", arg: 1, scope: !1327, file: !260, line: 125, type: !1330)
!1334 = !DILocation(line: 125, column: 50, scope: !1327)
!1335 = !DILocation(line: 127, column: 11, scope: !1327)
!1336 = !DILocation(line: 127, column: 46, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1327, file: !260, discriminator: 3)
!1338 = !{!1339, !737, i64 0}
!1339 = !{!"quoting_options", !737, i64 0, !853, i64 4, !737, i64 8, !736, i64 40, !736, i64 48}
!1340 = !DILocation(line: 127, column: 3, scope: !1337)
!1341 = distinct !DISubprogram(name: "set_quoting_style", scope: !260, file: !260, line: 133, type: !1342, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !1312, !5}
!1344 = !{!1345, !1346}
!1345 = !DILocalVariable(name: "o", arg: 1, scope: !1341, file: !260, line: 133, type: !1312)
!1346 = !DILocalVariable(name: "s", arg: 2, scope: !1341, file: !260, line: 133, type: !5)
!1347 = !DILocation(line: 133, column: 44, scope: !1341)
!1348 = !DILocation(line: 133, column: 66, scope: !1341)
!1349 = !DILocation(line: 135, column: 4, scope: !1341)
!1350 = !DILocation(line: 135, column: 39, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1341, file: !260, discriminator: 3)
!1352 = !DILocation(line: 135, column: 45, scope: !1351)
!1353 = !DILocation(line: 136, column: 1, scope: !1341)
!1354 = distinct !DISubprogram(name: "set_char_quoting", scope: !260, file: !260, line: 144, type: !1355, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!57, !1312, !45, !57}
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1364, !1365}
!1358 = !DILocalVariable(name: "o", arg: 1, scope: !1354, file: !260, line: 144, type: !1312)
!1359 = !DILocalVariable(name: "c", arg: 2, scope: !1354, file: !260, line: 144, type: !45)
!1360 = !DILocalVariable(name: "i", arg: 3, scope: !1354, file: !260, line: 144, type: !57)
!1361 = !DILocalVariable(name: "uc", scope: !1354, file: !260, line: 146, type: !54)
!1362 = !DILocalVariable(name: "p", scope: !1354, file: !260, line: 147, type: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1364 = !DILocalVariable(name: "shift", scope: !1354, file: !260, line: 149, type: !57)
!1365 = !DILocalVariable(name: "r", scope: !1354, file: !260, line: 150, type: !57)
!1366 = !DILocation(line: 144, column: 43, scope: !1354)
!1367 = !DILocation(line: 144, column: 51, scope: !1354)
!1368 = !DILocation(line: 144, column: 58, scope: !1354)
!1369 = !DILocation(line: 146, column: 17, scope: !1354)
!1370 = !DILocation(line: 148, column: 6, scope: !1354)
!1371 = !DILocation(line: 148, column: 62, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1354, file: !260, discriminator: 3)
!1373 = !DILocation(line: 148, column: 57, scope: !1372)
!1374 = !DILocation(line: 147, column: 17, scope: !1354)
!1375 = !DILocation(line: 149, column: 18, scope: !1354)
!1376 = !DILocation(line: 149, column: 15, scope: !1354)
!1377 = !DILocation(line: 149, column: 7, scope: !1354)
!1378 = !DILocation(line: 150, column: 12, scope: !1354)
!1379 = !DILocation(line: 150, column: 15, scope: !1354)
!1380 = !DILocation(line: 150, column: 25, scope: !1354)
!1381 = !DILocation(line: 150, column: 7, scope: !1354)
!1382 = !DILocation(line: 151, column: 13, scope: !1354)
!1383 = !DILocation(line: 151, column: 18, scope: !1354)
!1384 = !DILocation(line: 151, column: 23, scope: !1354)
!1385 = !DILocation(line: 151, column: 6, scope: !1354)
!1386 = !DILocation(line: 152, column: 3, scope: !1354)
!1387 = distinct !DISubprogram(name: "set_quoting_flags", scope: !260, file: !260, line: 160, type: !1388, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!57, !1312, !57}
!1390 = !{!1391, !1392, !1393}
!1391 = !DILocalVariable(name: "o", arg: 1, scope: !1387, file: !260, line: 160, type: !1312)
!1392 = !DILocalVariable(name: "i", arg: 2, scope: !1387, file: !260, line: 160, type: !57)
!1393 = !DILocalVariable(name: "r", scope: !1387, file: !260, line: 162, type: !57)
!1394 = !DILocation(line: 160, column: 44, scope: !1387)
!1395 = !DILocation(line: 160, column: 51, scope: !1387)
!1396 = !DILocation(line: 163, column: 8, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1387, file: !260, line: 163, column: 7)
!1398 = !DILocation(line: 163, column: 7, scope: !1387)
!1399 = !DILocation(line: 165, column: 10, scope: !1387)
!1400 = !{!1339, !853, i64 4}
!1401 = !DILocation(line: 162, column: 7, scope: !1387)
!1402 = !DILocation(line: 166, column: 12, scope: !1387)
!1403 = !DILocation(line: 167, column: 3, scope: !1387)
!1404 = distinct !DISubprogram(name: "set_custom_quoting", scope: !260, file: !260, line: 171, type: !1405, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !1312, !55, !55}
!1407 = !{!1408, !1409, !1410}
!1408 = !DILocalVariable(name: "o", arg: 1, scope: !1404, file: !260, line: 171, type: !1312)
!1409 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1404, file: !260, line: 172, type: !55)
!1410 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1404, file: !260, line: 172, type: !55)
!1411 = !DILocation(line: 171, column: 45, scope: !1404)
!1412 = !DILocation(line: 172, column: 33, scope: !1404)
!1413 = !DILocation(line: 172, column: 57, scope: !1404)
!1414 = !DILocation(line: 174, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1404, file: !260, line: 174, column: 7)
!1416 = !DILocation(line: 174, column: 7, scope: !1404)
!1417 = !DILocation(line: 176, column: 6, scope: !1404)
!1418 = !DILocation(line: 176, column: 12, scope: !1404)
!1419 = !DILocation(line: 177, column: 8, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1404, file: !260, line: 177, column: 7)
!1421 = !DILocation(line: 177, column: 23, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1420, file: !260, discriminator: 1)
!1423 = !DILocation(line: 177, column: 19, scope: !1420)
!1424 = !DILocation(line: 178, column: 5, scope: !1420)
!1425 = !DILocation(line: 179, column: 6, scope: !1404)
!1426 = !DILocation(line: 179, column: 17, scope: !1404)
!1427 = !{!1339, !736, i64 40}
!1428 = !DILocation(line: 180, column: 6, scope: !1404)
!1429 = !DILocation(line: 180, column: 18, scope: !1404)
!1430 = !{!1339, !736, i64 48}
!1431 = !DILocation(line: 181, column: 1, scope: !1404)
!1432 = distinct !DISubprogram(name: "quotearg_buffer", scope: !260, file: !260, line: 776, type: !1433, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!47, !44, !47, !55, !47, !1330}
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1436 = !DILocalVariable(name: "buffer", arg: 1, scope: !1432, file: !260, line: 776, type: !44)
!1437 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1432, file: !260, line: 776, type: !47)
!1438 = !DILocalVariable(name: "arg", arg: 3, scope: !1432, file: !260, line: 777, type: !55)
!1439 = !DILocalVariable(name: "argsize", arg: 4, scope: !1432, file: !260, line: 777, type: !47)
!1440 = !DILocalVariable(name: "o", arg: 5, scope: !1432, file: !260, line: 778, type: !1330)
!1441 = !DILocalVariable(name: "p", scope: !1432, file: !260, line: 780, type: !1330)
!1442 = !DILocalVariable(name: "e", scope: !1432, file: !260, line: 781, type: !57)
!1443 = !DILocalVariable(name: "r", scope: !1432, file: !260, line: 782, type: !47)
!1444 = !DILocation(line: 776, column: 24, scope: !1432)
!1445 = !DILocation(line: 776, column: 39, scope: !1432)
!1446 = !DILocation(line: 777, column: 30, scope: !1432)
!1447 = !DILocation(line: 777, column: 42, scope: !1432)
!1448 = !DILocation(line: 778, column: 48, scope: !1432)
!1449 = !DILocation(line: 780, column: 37, scope: !1432)
!1450 = !DILocation(line: 780, column: 33, scope: !1432)
!1451 = !DILocation(line: 781, column: 11, scope: !1432)
!1452 = !DILocation(line: 781, column: 7, scope: !1432)
!1453 = !DILocation(line: 783, column: 43, scope: !1432)
!1454 = !DILocation(line: 783, column: 53, scope: !1432)
!1455 = !DILocation(line: 783, column: 60, scope: !1432)
!1456 = !DILocation(line: 784, column: 43, scope: !1432)
!1457 = !DILocation(line: 784, column: 58, scope: !1432)
!1458 = !DILocation(line: 782, column: 14, scope: !1432)
!1459 = !DILocation(line: 782, column: 10, scope: !1432)
!1460 = !DILocation(line: 785, column: 9, scope: !1432)
!1461 = !DILocation(line: 786, column: 3, scope: !1432)
!1462 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !260, file: !260, line: 248, type: !1463, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !1467)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!47, !44, !47, !55, !47, !5, !57, !1465, !55, !55}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1492, !1493, !1494, !1495, !1496, !1499, !1500, !1517, !1520, !1521, !1528}
!1468 = !DILocalVariable(name: "buffer", arg: 1, scope: !1462, file: !260, line: 248, type: !44)
!1469 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1462, file: !260, line: 248, type: !47)
!1470 = !DILocalVariable(name: "arg", arg: 3, scope: !1462, file: !260, line: 249, type: !55)
!1471 = !DILocalVariable(name: "argsize", arg: 4, scope: !1462, file: !260, line: 249, type: !47)
!1472 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1462, file: !260, line: 250, type: !5)
!1473 = !DILocalVariable(name: "flags", arg: 6, scope: !1462, file: !260, line: 250, type: !57)
!1474 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1462, file: !260, line: 251, type: !1465)
!1475 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1462, file: !260, line: 252, type: !55)
!1476 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1462, file: !260, line: 253, type: !55)
!1477 = !DILocalVariable(name: "i", scope: !1462, file: !260, line: 255, type: !47)
!1478 = !DILocalVariable(name: "len", scope: !1462, file: !260, line: 256, type: !47)
!1479 = !DILocalVariable(name: "orig_buffersize", scope: !1462, file: !260, line: 257, type: !47)
!1480 = !DILocalVariable(name: "quote_string", scope: !1462, file: !260, line: 258, type: !55)
!1481 = !DILocalVariable(name: "quote_string_len", scope: !1462, file: !260, line: 259, type: !47)
!1482 = !DILocalVariable(name: "backslash_escapes", scope: !1462, file: !260, line: 260, type: !63)
!1483 = !DILocalVariable(name: "unibyte_locale", scope: !1462, file: !260, line: 261, type: !63)
!1484 = !DILocalVariable(name: "elide_outer_quotes", scope: !1462, file: !260, line: 262, type: !63)
!1485 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1462, file: !260, line: 263, type: !63)
!1486 = !DILocalVariable(name: "encountered_single_quote", scope: !1462, file: !260, line: 264, type: !63)
!1487 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1462, file: !260, line: 265, type: !63)
!1488 = !DILocalVariable(name: "c", scope: !1489, file: !260, line: 394, type: !54)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !260, line: 393, column: 5)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !260, line: 392, column: 3)
!1491 = distinct !DILexicalBlock(scope: !1462, file: !260, line: 392, column: 3)
!1492 = !DILocalVariable(name: "esc", scope: !1489, file: !260, line: 395, type: !54)
!1493 = !DILocalVariable(name: "is_right_quote", scope: !1489, file: !260, line: 396, type: !63)
!1494 = !DILocalVariable(name: "escaping", scope: !1489, file: !260, line: 397, type: !63)
!1495 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1489, file: !260, line: 398, type: !63)
!1496 = !DILocalVariable(name: "m", scope: !1497, file: !260, line: 602, type: !47)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 600, column: 11)
!1498 = distinct !DILexicalBlock(scope: !1489, file: !260, line: 418, column: 9)
!1499 = !DILocalVariable(name: "printable", scope: !1497, file: !260, line: 604, type: !63)
!1500 = !DILocalVariable(name: "mbstate", scope: !1501, file: !260, line: 613, type: !1503)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !260, line: 612, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !260, line: 606, column: 17)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1504, line: 107, baseType: !1505)
!1504 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1504, line: 95, baseType: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1504, line: 83, size: 64, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1506, file: !1504, line: 85, baseType: !57, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1506, file: !1504, line: 94, baseType: !1510, size: 32, offset: 32)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1506, file: !1504, line: 86, size: 32, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1510, file: !1504, line: 89, baseType: !273, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1510, file: !1504, line: 93, baseType: !1514, size: 32)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !1515)
!1515 = !{!1516}
!1516 = !DISubrange(count: 4)
!1517 = !DILocalVariable(name: "w", scope: !1518, file: !260, line: 623, type: !1519)
!1518 = distinct !DILexicalBlock(scope: !1501, file: !260, line: 622, column: 19)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !48, line: 90, baseType: !57)
!1520 = !DILocalVariable(name: "bytes", scope: !1518, file: !260, line: 624, type: !47)
!1521 = !DILocalVariable(name: "j", scope: !1522, file: !260, line: 649, type: !47)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !260, line: 648, column: 27)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !260, line: 646, column: 29)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !260, line: 641, column: 23)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !260, line: 633, column: 30)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !260, line: 628, column: 30)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !260, line: 626, column: 25)
!1528 = !DILocalVariable(name: "ilim", scope: !1529, file: !260, line: 676, type: !47)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !260, line: 673, column: 15)
!1530 = distinct !DILexicalBlock(scope: !1497, file: !260, line: 672, column: 17)
!1531 = !DILocation(line: 248, column: 33, scope: !1462)
!1532 = !DILocation(line: 248, column: 48, scope: !1462)
!1533 = !DILocation(line: 249, column: 39, scope: !1462)
!1534 = !DILocation(line: 249, column: 51, scope: !1462)
!1535 = !DILocation(line: 250, column: 46, scope: !1462)
!1536 = !DILocation(line: 250, column: 65, scope: !1462)
!1537 = !DILocation(line: 251, column: 47, scope: !1462)
!1538 = !DILocation(line: 252, column: 39, scope: !1462)
!1539 = !DILocation(line: 253, column: 39, scope: !1462)
!1540 = !DILocation(line: 256, column: 10, scope: !1462)
!1541 = !DILocation(line: 257, column: 10, scope: !1462)
!1542 = !DILocation(line: 258, column: 15, scope: !1462)
!1543 = !DILocation(line: 259, column: 10, scope: !1462)
!1544 = !DILocation(line: 260, column: 8, scope: !1462)
!1545 = !DILocation(line: 261, column: 25, scope: !1462)
!1546 = !DILocation(line: 261, column: 36, scope: !1462)
!1547 = !DILocation(line: 262, column: 8, scope: !1462)
!1548 = !DILocation(line: 263, column: 8, scope: !1462)
!1549 = !DILocation(line: 264, column: 8, scope: !1462)
!1550 = !DILocation(line: 265, column: 8, scope: !1462)
!1551 = !DILocation(line: 265, column: 3, scope: !1462)
!1552 = !DILocation(line: 308, column: 3, scope: !1462)
!1553 = !DILocation(line: 315, column: 11, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1462, file: !260, line: 309, column: 5)
!1555 = !DILocation(line: 315, column: 12, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1554, file: !260, line: 315, column: 11)
!1557 = !DILocation(line: 316, column: 9, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1559, file: !260, discriminator: 1)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !260, line: 316, column: 9)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !260, line: 316, column: 9)
!1561 = !DILocation(line: 316, column: 9, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1560, file: !260, discriminator: 1)
!1563 = !DILocation(line: 316, column: 9, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1559, file: !260, discriminator: 2)
!1565 = !DILocation(line: 354, column: 26, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !260, line: 332, column: 11)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !260, line: 331, column: 13)
!1568 = distinct !DILexicalBlock(scope: !1554, file: !260, line: 330, column: 7)
!1569 = !DILocation(line: 355, column: 27, scope: !1566)
!1570 = !DILocation(line: 356, column: 11, scope: !1566)
!1571 = !DILocation(line: 357, column: 14, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !260, line: 357, column: 13)
!1573 = !DILocation(line: 357, column: 13, scope: !1568)
!1574 = !DILocation(line: 358, column: 43, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1576, file: !260, discriminator: 1)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !260, line: 358, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !260, line: 358, column: 11)
!1578 = !DILocation(line: 358, column: 11, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1577, file: !260, discriminator: 1)
!1580 = !DILocation(line: 359, column: 13, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1582, file: !260, discriminator: 1)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !260, line: 359, column: 13)
!1583 = distinct !DILexicalBlock(scope: !1576, file: !260, line: 359, column: 13)
!1584 = !DILocation(line: 359, column: 13, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1583, file: !260, discriminator: 1)
!1586 = !DILocation(line: 359, column: 13, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1582, file: !260, discriminator: 2)
!1588 = !DILocation(line: 359, column: 13, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1583, file: !260, discriminator: 3)
!1590 = !DILocation(line: 358, column: 70, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1576, file: !260, discriminator: 2)
!1592 = distinct !{!1592, !1593, !1594}
!1593 = !DILocation(line: 358, column: 11, scope: !1577)
!1594 = !DILocation(line: 359, column: 13, scope: !1577)
!1595 = !DILocation(line: 362, column: 28, scope: !1568)
!1596 = !DILocation(line: 364, column: 7, scope: !1554)
!1597 = !DILocation(line: 367, column: 7, scope: !1554)
!1598 = !DILocation(line: 370, column: 7, scope: !1554)
!1599 = !DILocation(line: 373, column: 12, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1554, file: !260, line: 373, column: 11)
!1601 = !DILocation(line: 373, column: 11, scope: !1554)
!1602 = !DILocation(line: 378, column: 12, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1554, file: !260, line: 378, column: 11)
!1604 = !DILocation(line: 378, column: 11, scope: !1554)
!1605 = !DILocation(line: 379, column: 9, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !260, discriminator: 1)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !260, line: 379, column: 9)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !260, line: 379, column: 9)
!1609 = !DILocation(line: 379, column: 9, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1608, file: !260, discriminator: 1)
!1611 = !DILocation(line: 379, column: 9, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1607, file: !260, discriminator: 2)
!1613 = !DILocation(line: 386, column: 7, scope: !1554)
!1614 = !DILocation(line: 389, column: 7, scope: !1554)
!1615 = !DILocation(line: 255, column: 10, scope: !1462)
!1616 = !DILocation(line: 392, column: 8, scope: !1491)
!1617 = !DILocation(line: 392, column: 27, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1490, file: !260, discriminator: 1)
!1619 = !DILocation(line: 392, column: 19, scope: !1618)
!1620 = !DILocation(line: 392, column: 60, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1490, file: !260, discriminator: 3)
!1622 = !DILocation(line: 392, column: 3, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1491, file: !260, discriminator: 4)
!1624 = !DILocation(line: 392, column: 41, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1490, file: !260, discriminator: 2)
!1626 = !DILocation(line: 392, column: 48, scope: !1625)
!1627 = !DILocation(line: 396, column: 12, scope: !1489)
!1628 = !DILocation(line: 397, column: 12, scope: !1489)
!1629 = !DILocation(line: 398, column: 12, scope: !1489)
!1630 = !DILocation(line: 401, column: 11, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1489, file: !260, line: 400, column: 11)
!1632 = !DILocation(line: 403, column: 17, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1631, file: !260, discriminator: 1)
!1634 = !DILocation(line: 404, column: 39, scope: !1631)
!1635 = !DILocation(line: 408, column: 32, scope: !1631)
!1636 = !DILocation(line: 404, column: 19, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1631, file: !260, discriminator: 2)
!1638 = !DILocation(line: 404, column: 15, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1631, file: !260, discriminator: 4)
!1640 = !DILocation(line: 409, column: 11, scope: !1631)
!1641 = !DILocation(line: 409, column: 26, scope: !1633)
!1642 = !DILocation(line: 409, column: 14, scope: !1633)
!1643 = !DILocation(line: 400, column: 11, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1489, file: !260, discriminator: 1)
!1645 = !DILocation(line: 416, column: 11, scope: !1489)
!1646 = !DILocation(line: 394, column: 21, scope: !1489)
!1647 = !DILocation(line: 417, column: 7, scope: !1489)
!1648 = !DILocation(line: 420, column: 15, scope: !1498)
!1649 = !DILocation(line: 422, column: 15, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !260, discriminator: 1)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !260, line: 422, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !260, line: 421, column: 13)
!1653 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 420, column: 15)
!1654 = !DILocation(line: 422, column: 15, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1656, file: !260, discriminator: 4)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !260, line: 422, column: 15)
!1657 = !DILocation(line: 422, column: 15, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1656, file: !260, discriminator: 3)
!1659 = !DILocation(line: 422, column: 15, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1661, file: !260, discriminator: 6)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !260, line: 422, column: 15)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !260, line: 422, column: 15)
!1663 = distinct !DILexicalBlock(scope: !1656, file: !260, line: 422, column: 15)
!1664 = !DILocation(line: 422, column: 15, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1662, file: !260, discriminator: 6)
!1666 = !DILocation(line: 422, column: 15, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1661, file: !260, discriminator: 7)
!1668 = !DILocation(line: 422, column: 15, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1662, file: !260, discriminator: 8)
!1670 = !DILocation(line: 422, column: 15, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !260, discriminator: 11)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !260, line: 422, column: 15)
!1673 = distinct !DILexicalBlock(scope: !1663, file: !260, line: 422, column: 15)
!1674 = !DILocation(line: 422, column: 15, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1673, file: !260, discriminator: 11)
!1676 = !DILocation(line: 422, column: 15, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1672, file: !260, discriminator: 12)
!1678 = !DILocation(line: 422, column: 15, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1673, file: !260, discriminator: 13)
!1680 = !DILocation(line: 422, column: 15, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !260, discriminator: 16)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !260, line: 422, column: 15)
!1683 = distinct !DILexicalBlock(scope: !1663, file: !260, line: 422, column: 15)
!1684 = !DILocation(line: 422, column: 15, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1683, file: !260, discriminator: 16)
!1686 = !DILocation(line: 422, column: 15, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1682, file: !260, discriminator: 17)
!1688 = !DILocation(line: 422, column: 15, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1683, file: !260, discriminator: 18)
!1690 = !DILocation(line: 422, column: 15, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1663, file: !260, discriminator: 20)
!1692 = !DILocation(line: 422, column: 15, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1694, file: !260, discriminator: 22)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !260, line: 422, column: 15)
!1695 = distinct !DILexicalBlock(scope: !1651, file: !260, line: 422, column: 15)
!1696 = !DILocation(line: 422, column: 15, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1695, file: !260, discriminator: 22)
!1698 = !DILocation(line: 422, column: 15, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1694, file: !260, discriminator: 23)
!1700 = !DILocation(line: 422, column: 15, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1695, file: !260, discriminator: 24)
!1702 = !DILocation(line: 430, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1652, file: !260, line: 429, column: 19)
!1704 = !DILocation(line: 430, column: 24, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1703, file: !260, discriminator: 1)
!1706 = !DILocation(line: 430, column: 28, scope: !1705)
!1707 = !DILocation(line: 430, column: 38, scope: !1705)
!1708 = !DILocation(line: 430, column: 48, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1703, file: !260, discriminator: 2)
!1710 = !DILocation(line: 430, column: 59, scope: !1709)
!1711 = !DILocation(line: 432, column: 19, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1713, file: !260, discriminator: 1)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !260, line: 432, column: 19)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !260, line: 432, column: 19)
!1715 = distinct !DILexicalBlock(scope: !1703, file: !260, line: 431, column: 17)
!1716 = !DILocation(line: 432, column: 19, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1714, file: !260, discriminator: 1)
!1718 = !DILocation(line: 432, column: 19, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1713, file: !260, discriminator: 2)
!1720 = !DILocation(line: 432, column: 19, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1714, file: !260, discriminator: 3)
!1722 = !DILocation(line: 433, column: 19, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1724, file: !260, discriminator: 1)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !260, line: 433, column: 19)
!1725 = distinct !DILexicalBlock(scope: !1715, file: !260, line: 433, column: 19)
!1726 = !DILocation(line: 433, column: 19, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1725, file: !260, discriminator: 1)
!1728 = !DILocation(line: 433, column: 19, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1724, file: !260, discriminator: 2)
!1730 = !DILocation(line: 433, column: 19, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1725, file: !260, discriminator: 3)
!1732 = !DILocation(line: 434, column: 17, scope: !1715)
!1733 = !DILocation(line: 441, column: 20, scope: !1653)
!1734 = !DILocation(line: 446, column: 11, scope: !1498)
!1735 = !DILocation(line: 449, column: 19, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 447, column: 13)
!1737 = !DILocation(line: 455, column: 19, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !260, line: 454, column: 19)
!1739 = !DILocation(line: 455, column: 24, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1738, file: !260, discriminator: 1)
!1741 = !DILocation(line: 455, column: 28, scope: !1740)
!1742 = !DILocation(line: 455, column: 38, scope: !1740)
!1743 = !DILocation(line: 455, column: 47, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1738, file: !260, discriminator: 2)
!1745 = !DILocation(line: 455, column: 41, scope: !1744)
!1746 = !DILocation(line: 455, column: 52, scope: !1744)
!1747 = !DILocation(line: 454, column: 19, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1736, file: !260, discriminator: 1)
!1749 = !DILocation(line: 456, column: 25, scope: !1738)
!1750 = !DILocation(line: 456, column: 17, scope: !1738)
!1751 = !DILocation(line: 463, column: 25, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1738, file: !260, line: 457, column: 19)
!1753 = !DILocation(line: 467, column: 21, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1755, file: !260, discriminator: 1)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !260, line: 467, column: 21)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !260, line: 467, column: 21)
!1757 = !DILocation(line: 467, column: 21, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1756, file: !260, discriminator: 1)
!1759 = !DILocation(line: 467, column: 21, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1755, file: !260, discriminator: 2)
!1761 = !DILocation(line: 467, column: 21, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1756, file: !260, discriminator: 3)
!1763 = !DILocation(line: 468, column: 21, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1765, file: !260, discriminator: 1)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !260, line: 468, column: 21)
!1766 = distinct !DILexicalBlock(scope: !1752, file: !260, line: 468, column: 21)
!1767 = !DILocation(line: 468, column: 21, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1766, file: !260, discriminator: 1)
!1769 = !DILocation(line: 468, column: 21, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1765, file: !260, discriminator: 2)
!1771 = !DILocation(line: 468, column: 21, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1766, file: !260, discriminator: 3)
!1773 = !DILocation(line: 469, column: 21, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1775, file: !260, discriminator: 1)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !260, line: 469, column: 21)
!1776 = distinct !DILexicalBlock(scope: !1752, file: !260, line: 469, column: 21)
!1777 = !DILocation(line: 469, column: 21, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1776, file: !260, discriminator: 1)
!1779 = !DILocation(line: 469, column: 21, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1775, file: !260, discriminator: 2)
!1781 = !DILocation(line: 469, column: 21, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1776, file: !260, discriminator: 3)
!1783 = !DILocation(line: 470, column: 21, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !260, discriminator: 1)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !260, line: 470, column: 21)
!1786 = distinct !DILexicalBlock(scope: !1752, file: !260, line: 470, column: 21)
!1787 = !DILocation(line: 470, column: 21, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1786, file: !260, discriminator: 1)
!1789 = !DILocation(line: 470, column: 21, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1785, file: !260, discriminator: 2)
!1791 = !DILocation(line: 470, column: 21, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1786, file: !260, discriminator: 3)
!1793 = !DILocation(line: 471, column: 21, scope: !1752)
!1794 = !DILocation(line: 395, column: 21, scope: !1489)
!1795 = !DILocation(line: 484, column: 31, scope: !1498)
!1796 = !DILocation(line: 485, column: 31, scope: !1498)
!1797 = !DILocation(line: 487, column: 31, scope: !1498)
!1798 = !DILocation(line: 488, column: 31, scope: !1498)
!1799 = !DILocation(line: 489, column: 31, scope: !1498)
!1800 = !DILocation(line: 492, column: 15, scope: !1498)
!1801 = !DILocation(line: 494, column: 19, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !260, line: 493, column: 13)
!1803 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 492, column: 15)
!1804 = !DILocation(line: 501, column: 33, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 501, column: 15)
!1806 = !DILocation(line: 506, column: 15, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 505, column: 15)
!1808 = !DILocation(line: 510, column: 15, scope: !1498)
!1809 = !DILocation(line: 518, column: 26, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 518, column: 15)
!1811 = !DILocation(line: 518, column: 15, scope: !1498)
!1812 = !DILocation(line: 518, column: 40, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1810, file: !260, discriminator: 1)
!1814 = !DILocation(line: 518, column: 47, scope: !1813)
!1815 = !DILocation(line: 522, column: 17, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 522, column: 15)
!1817 = !DILocation(line: 518, column: 18, scope: !1813)
!1818 = !DILocation(line: 518, column: 65, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1810, file: !260, discriminator: 2)
!1820 = !DILocation(line: 518, column: 15, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1498, file: !260, discriminator: 2)
!1822 = !DILocation(line: 522, column: 15, scope: !1498)
!1823 = !DILocation(line: 526, column: 11, scope: !1498)
!1824 = !DILocation(line: 541, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 540, column: 15)
!1826 = !DILocation(line: 548, column: 15, scope: !1498)
!1827 = !DILocation(line: 550, column: 19, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !260, line: 549, column: 13)
!1829 = distinct !DILexicalBlock(scope: !1498, file: !260, line: 548, column: 15)
!1830 = !DILocation(line: 553, column: 19, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !260, line: 553, column: 19)
!1832 = !DILocation(line: 553, column: 35, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1831, file: !260, discriminator: 1)
!1834 = !DILocation(line: 553, column: 30, scope: !1831)
!1835 = !DILocation(line: 562, column: 15, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1837, file: !260, discriminator: 1)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !260, line: 562, column: 15)
!1838 = distinct !DILexicalBlock(scope: !1828, file: !260, line: 562, column: 15)
!1839 = !DILocation(line: 562, column: 15, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1838, file: !260, discriminator: 1)
!1841 = !DILocation(line: 562, column: 15, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1837, file: !260, discriminator: 2)
!1843 = !DILocation(line: 562, column: 15, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1838, file: !260, discriminator: 3)
!1845 = !DILocation(line: 563, column: 15, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1847, file: !260, discriminator: 1)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !260, line: 563, column: 15)
!1848 = distinct !DILexicalBlock(scope: !1828, file: !260, line: 563, column: 15)
!1849 = !DILocation(line: 563, column: 15, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1848, file: !260, discriminator: 1)
!1851 = !DILocation(line: 563, column: 15, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1847, file: !260, discriminator: 2)
!1853 = !DILocation(line: 563, column: 15, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1848, file: !260, discriminator: 3)
!1855 = !DILocation(line: 564, column: 15, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1857, file: !260, discriminator: 1)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !260, line: 564, column: 15)
!1858 = distinct !DILexicalBlock(scope: !1828, file: !260, line: 564, column: 15)
!1859 = !DILocation(line: 564, column: 15, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1858, file: !260, discriminator: 1)
!1861 = !DILocation(line: 564, column: 15, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1857, file: !260, discriminator: 2)
!1863 = !DILocation(line: 564, column: 15, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1858, file: !260, discriminator: 3)
!1865 = !DILocation(line: 566, column: 13, scope: !1828)
!1866 = !DILocation(line: 606, column: 17, scope: !1497)
!1867 = !DILocation(line: 602, column: 20, scope: !1497)
!1868 = !DILocation(line: 609, column: 29, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1502, file: !260, line: 607, column: 15)
!1870 = !DILocation(line: 609, column: 27, scope: !1869)
!1871 = !DILocation(line: 604, column: 18, scope: !1497)
!1872 = !DILocation(line: 610, column: 15, scope: !1869)
!1873 = !DILocation(line: 613, column: 17, scope: !1501)
!1874 = !DILocation(line: 614, column: 17, scope: !1501)
!1875 = !DILocation(line: 618, column: 29, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1501, file: !260, line: 618, column: 21)
!1877 = !DILocation(line: 618, column: 21, scope: !1501)
!1878 = distinct !{!1878, !1879, !1880}
!1879 = !DILocation(line: 621, column: 17, scope: !1501)
!1880 = !DILocation(line: 667, column: 44, scope: !1501)
!1881 = !DILocation(line: 619, column: 29, scope: !1876)
!1882 = !DILocation(line: 619, column: 19, scope: !1876)
!1883 = !DILocation(line: 623, column: 21, scope: !1518)
!1884 = !DILocation(line: 624, column: 56, scope: !1518)
!1885 = !DILocation(line: 624, column: 50, scope: !1518)
!1886 = !DILocation(line: 625, column: 53, scope: !1518)
!1887 = !DIExpression(DW_OP_deref)
!1888 = !DILocation(line: 613, column: 27, scope: !1501)
!1889 = !DILocation(line: 623, column: 29, scope: !1518)
!1890 = !DILocation(line: 624, column: 36, scope: !1518)
!1891 = !DILocation(line: 624, column: 28, scope: !1518)
!1892 = !DILocation(line: 626, column: 25, scope: !1518)
!1893 = !DILocation(line: 636, column: 38, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !260, discriminator: 1)
!1895 = distinct !DILexicalBlock(scope: !1525, file: !260, line: 634, column: 23)
!1896 = !DILocation(line: 636, column: 48, scope: !1894)
!1897 = !DILocation(line: 636, column: 51, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1895, file: !260, discriminator: 2)
!1899 = !DILocation(line: 636, column: 48, scope: !1898)
!1900 = !DILocation(line: 636, column: 25, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1895, file: !260, discriminator: 3)
!1902 = !DILocation(line: 637, column: 28, scope: !1895)
!1903 = !DILocation(line: 636, column: 34, scope: !1894)
!1904 = distinct !{!1904, !1905, !1902}
!1905 = !DILocation(line: 636, column: 25, scope: !1895)
!1906 = !DILocation(line: 650, column: 43, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1908, file: !260, discriminator: 1)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !260, line: 650, column: 29)
!1909 = distinct !DILexicalBlock(scope: !1522, file: !260, line: 650, column: 29)
!1910 = !DILocation(line: 647, column: 29, scope: !1523)
!1911 = !DILocation(line: 649, column: 36, scope: !1522)
!1912 = !DILocation(line: 651, column: 49, scope: !1908)
!1913 = !DILocation(line: 651, column: 39, scope: !1908)
!1914 = !DILocation(line: 651, column: 31, scope: !1908)
!1915 = !DILocation(line: 650, column: 53, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1908, file: !260, discriminator: 2)
!1917 = !DILocation(line: 650, column: 29, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1909, file: !260, discriminator: 1)
!1919 = distinct !{!1919, !1920, !1921}
!1920 = !DILocation(line: 650, column: 29, scope: !1909)
!1921 = !DILocation(line: 659, column: 33, scope: !1909)
!1922 = !DILocation(line: 666, column: 19, scope: !1501)
!1923 = !DILocation(line: 662, column: 41, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1524, file: !260, line: 662, column: 29)
!1925 = !DILocation(line: 662, column: 31, scope: !1924)
!1926 = !DILocation(line: 662, column: 29, scope: !1524)
!1927 = !DILocation(line: 664, column: 27, scope: !1524)
!1928 = !DILocation(line: 667, column: 26, scope: !1501)
!1929 = !DILocation(line: 667, column: 24, scope: !1501)
!1930 = !DILocation(line: 666, column: 19, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1518, file: !260, discriminator: 3)
!1932 = !DILocation(line: 668, column: 15, scope: !1502)
!1933 = !DILocation(line: 670, column: 40, scope: !1497)
!1934 = !DILocation(line: 672, column: 19, scope: !1530)
!1935 = !DILocation(line: 672, column: 45, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1530, file: !260, discriminator: 1)
!1937 = !DILocation(line: 672, column: 23, scope: !1530)
!1938 = !DILocation(line: 676, column: 33, scope: !1529)
!1939 = !DILocation(line: 676, column: 24, scope: !1529)
!1940 = !DILocation(line: 678, column: 17, scope: !1529)
!1941 = !DILocation(line: 680, column: 43, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !260, line: 680, column: 25)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !260, line: 679, column: 19)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !260, line: 678, column: 17)
!1945 = distinct !DILexicalBlock(scope: !1529, file: !260, line: 678, column: 17)
!1946 = !DILocation(line: 682, column: 25, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1948, file: !260, discriminator: 1)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !260, line: 682, column: 25)
!1949 = distinct !DILexicalBlock(scope: !1942, file: !260, line: 681, column: 23)
!1950 = !DILocation(line: 682, column: 25, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1952, file: !260, discriminator: 4)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !260, line: 682, column: 25)
!1953 = !DILocation(line: 682, column: 25, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1952, file: !260, discriminator: 3)
!1955 = !DILocation(line: 682, column: 25, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1957, file: !260, discriminator: 6)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !260, line: 682, column: 25)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !260, line: 682, column: 25)
!1959 = distinct !DILexicalBlock(scope: !1952, file: !260, line: 682, column: 25)
!1960 = !DILocation(line: 682, column: 25, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1958, file: !260, discriminator: 6)
!1962 = !DILocation(line: 682, column: 25, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1957, file: !260, discriminator: 7)
!1964 = !DILocation(line: 682, column: 25, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1958, file: !260, discriminator: 8)
!1966 = !DILocation(line: 682, column: 25, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1968, file: !260, discriminator: 11)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !260, line: 682, column: 25)
!1969 = distinct !DILexicalBlock(scope: !1959, file: !260, line: 682, column: 25)
!1970 = !DILocation(line: 682, column: 25, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1969, file: !260, discriminator: 11)
!1972 = !DILocation(line: 682, column: 25, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1968, file: !260, discriminator: 12)
!1974 = !DILocation(line: 682, column: 25, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1969, file: !260, discriminator: 13)
!1976 = !DILocation(line: 682, column: 25, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !260, discriminator: 16)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !260, line: 682, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1959, file: !260, line: 682, column: 25)
!1980 = !DILocation(line: 682, column: 25, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1979, file: !260, discriminator: 16)
!1982 = !DILocation(line: 682, column: 25, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1978, file: !260, discriminator: 17)
!1984 = !DILocation(line: 682, column: 25, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1979, file: !260, discriminator: 18)
!1986 = !DILocation(line: 682, column: 25, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1959, file: !260, discriminator: 20)
!1988 = !DILocation(line: 682, column: 25, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1990, file: !260, discriminator: 22)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !260, line: 682, column: 25)
!1991 = distinct !DILexicalBlock(scope: !1948, file: !260, line: 682, column: 25)
!1992 = !DILocation(line: 682, column: 25, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1991, file: !260, discriminator: 22)
!1994 = !DILocation(line: 682, column: 25, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1990, file: !260, discriminator: 23)
!1996 = !DILocation(line: 682, column: 25, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1991, file: !260, discriminator: 24)
!1998 = !DILocation(line: 683, column: 25, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !2000, file: !260, discriminator: 1)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !260, line: 683, column: 25)
!2001 = distinct !DILexicalBlock(scope: !1949, file: !260, line: 683, column: 25)
!2002 = !DILocation(line: 683, column: 25, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2001, file: !260, discriminator: 1)
!2004 = !DILocation(line: 683, column: 25, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2000, file: !260, discriminator: 2)
!2006 = !DILocation(line: 683, column: 25, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2001, file: !260, discriminator: 3)
!2008 = !DILocation(line: 684, column: 25, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !260, discriminator: 1)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !260, line: 684, column: 25)
!2011 = distinct !DILexicalBlock(scope: !1949, file: !260, line: 684, column: 25)
!2012 = !DILocation(line: 684, column: 25, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2011, file: !260, discriminator: 1)
!2014 = !DILocation(line: 684, column: 25, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2010, file: !260, discriminator: 2)
!2016 = !DILocation(line: 684, column: 25, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2011, file: !260, discriminator: 3)
!2018 = !DILocation(line: 685, column: 38, scope: !1949)
!2019 = !DILocation(line: 685, column: 33, scope: !1949)
!2020 = !DILocation(line: 686, column: 23, scope: !1949)
!2021 = !DILocation(line: 687, column: 30, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1942, file: !260, line: 687, column: 30)
!2023 = !DILocation(line: 687, column: 30, scope: !1942)
!2024 = !DILocation(line: 689, column: 25, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2026, file: !260, discriminator: 1)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !260, line: 689, column: 25)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !260, line: 689, column: 25)
!2028 = distinct !DILexicalBlock(scope: !2022, file: !260, line: 688, column: 23)
!2029 = !DILocation(line: 689, column: 25, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2027, file: !260, discriminator: 1)
!2031 = !DILocation(line: 689, column: 25, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2026, file: !260, discriminator: 2)
!2033 = !DILocation(line: 689, column: 25, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2027, file: !260, discriminator: 3)
!2035 = !DILocation(line: 691, column: 23, scope: !2028)
!2036 = !DILocation(line: 692, column: 35, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1943, file: !260, line: 692, column: 25)
!2038 = !DILocation(line: 692, column: 30, scope: !2037)
!2039 = !DILocation(line: 692, column: 25, scope: !1943)
!2040 = !DILocation(line: 694, column: 21, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2042, file: !260, discriminator: 1)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !260, line: 694, column: 21)
!2043 = distinct !DILexicalBlock(scope: !1943, file: !260, line: 694, column: 21)
!2044 = !DILocation(line: 694, column: 21, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2042, file: !260, discriminator: 2)
!2046 = !DILocation(line: 694, column: 21, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2048, file: !260, discriminator: 4)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !260, line: 694, column: 21)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !260, line: 694, column: 21)
!2050 = distinct !DILexicalBlock(scope: !2042, file: !260, line: 694, column: 21)
!2051 = !DILocation(line: 694, column: 21, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2049, file: !260, discriminator: 4)
!2053 = !DILocation(line: 694, column: 21, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2048, file: !260, discriminator: 5)
!2055 = !DILocation(line: 694, column: 21, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2049, file: !260, discriminator: 6)
!2057 = !DILocation(line: 694, column: 21, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2059, file: !260, discriminator: 9)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !260, line: 694, column: 21)
!2060 = distinct !DILexicalBlock(scope: !2050, file: !260, line: 694, column: 21)
!2061 = !DILocation(line: 694, column: 21, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2060, file: !260, discriminator: 9)
!2063 = !DILocation(line: 694, column: 21, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2059, file: !260, discriminator: 10)
!2065 = !DILocation(line: 694, column: 21, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2060, file: !260, discriminator: 11)
!2067 = !DILocation(line: 694, column: 21, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2050, file: !260, discriminator: 13)
!2069 = !DILocation(line: 695, column: 21, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2071, file: !260, discriminator: 1)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !260, line: 695, column: 21)
!2072 = distinct !DILexicalBlock(scope: !1943, file: !260, line: 695, column: 21)
!2073 = !DILocation(line: 695, column: 21, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2072, file: !260, discriminator: 1)
!2075 = !DILocation(line: 695, column: 21, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2071, file: !260, discriminator: 2)
!2077 = !DILocation(line: 695, column: 21, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2072, file: !260, discriminator: 3)
!2079 = !DILocation(line: 696, column: 25, scope: !1943)
!2080 = !DILocation(line: 678, column: 17, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !1944, file: !260, discriminator: 1)
!2082 = distinct !{!2082, !2083, !2084}
!2083 = !DILocation(line: 678, column: 17, scope: !1945)
!2084 = !DILocation(line: 697, column: 19, scope: !1945)
!2085 = !DILocation(line: 704, column: 34, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1489, file: !260, line: 704, column: 11)
!2087 = !DILocation(line: 706, column: 14, scope: !2086)
!2088 = !DILocation(line: 707, column: 14, scope: !2086)
!2089 = !DILocation(line: 707, column: 35, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2086, file: !260, discriminator: 1)
!2091 = !DILocation(line: 707, column: 17, scope: !2090)
!2092 = !DILocation(line: 707, column: 53, scope: !2090)
!2093 = !DILocation(line: 707, column: 47, scope: !2090)
!2094 = !DILocation(line: 707, column: 65, scope: !2090)
!2095 = !DILocation(line: 708, column: 15, scope: !2090)
!2096 = !DILocation(line: 708, column: 11, scope: !2086)
!2097 = !DILocation(line: 704, column: 11, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !1489, file: !260, discriminator: 2)
!2099 = !DILocation(line: 712, column: 7, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2101, file: !260, discriminator: 1)
!2101 = distinct !DILexicalBlock(scope: !1489, file: !260, line: 712, column: 7)
!2102 = !DILocation(line: 712, column: 7, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2104, file: !260, discriminator: 4)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !260, line: 712, column: 7)
!2105 = !DILocation(line: 712, column: 7, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2104, file: !260, discriminator: 3)
!2107 = !DILocation(line: 712, column: 7, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2109, file: !260, discriminator: 6)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !260, line: 712, column: 7)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !260, line: 712, column: 7)
!2111 = distinct !DILexicalBlock(scope: !2104, file: !260, line: 712, column: 7)
!2112 = !DILocation(line: 712, column: 7, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2110, file: !260, discriminator: 6)
!2114 = !DILocation(line: 712, column: 7, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2109, file: !260, discriminator: 7)
!2116 = !DILocation(line: 712, column: 7, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2110, file: !260, discriminator: 8)
!2118 = !DILocation(line: 712, column: 7, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2120, file: !260, discriminator: 11)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !260, line: 712, column: 7)
!2121 = distinct !DILexicalBlock(scope: !2111, file: !260, line: 712, column: 7)
!2122 = !DILocation(line: 712, column: 7, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2121, file: !260, discriminator: 11)
!2124 = !DILocation(line: 712, column: 7, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2120, file: !260, discriminator: 12)
!2126 = !DILocation(line: 712, column: 7, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2121, file: !260, discriminator: 13)
!2128 = !DILocation(line: 712, column: 7, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2130, file: !260, discriminator: 16)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !260, line: 712, column: 7)
!2131 = distinct !DILexicalBlock(scope: !2111, file: !260, line: 712, column: 7)
!2132 = !DILocation(line: 712, column: 7, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2131, file: !260, discriminator: 16)
!2134 = !DILocation(line: 712, column: 7, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2130, file: !260, discriminator: 17)
!2136 = !DILocation(line: 712, column: 7, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2131, file: !260, discriminator: 18)
!2138 = !DILocation(line: 712, column: 7, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2111, file: !260, discriminator: 20)
!2140 = !DILocation(line: 712, column: 7, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2142, file: !260, discriminator: 22)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !260, line: 712, column: 7)
!2143 = distinct !DILexicalBlock(scope: !2101, file: !260, line: 712, column: 7)
!2144 = !DILocation(line: 712, column: 7, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2143, file: !260, discriminator: 22)
!2146 = !DILocation(line: 712, column: 7, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2142, file: !260, discriminator: 23)
!2148 = !DILocation(line: 712, column: 7, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2143, file: !260, discriminator: 24)
!2150 = !DILocation(line: 715, column: 7, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2152, file: !260, discriminator: 1)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !260, line: 715, column: 7)
!2153 = distinct !DILexicalBlock(scope: !1489, file: !260, line: 715, column: 7)
!2154 = !DILocation(line: 715, column: 7, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2152, file: !260, discriminator: 2)
!2156 = !DILocation(line: 715, column: 7, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2158, file: !260, discriminator: 4)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !260, line: 715, column: 7)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !260, line: 715, column: 7)
!2160 = distinct !DILexicalBlock(scope: !2152, file: !260, line: 715, column: 7)
!2161 = !DILocation(line: 715, column: 7, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2159, file: !260, discriminator: 4)
!2163 = !DILocation(line: 715, column: 7, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2158, file: !260, discriminator: 5)
!2165 = !DILocation(line: 715, column: 7, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2159, file: !260, discriminator: 6)
!2167 = !DILocation(line: 715, column: 7, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2169, file: !260, discriminator: 9)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !260, line: 715, column: 7)
!2170 = distinct !DILexicalBlock(scope: !2160, file: !260, line: 715, column: 7)
!2171 = !DILocation(line: 715, column: 7, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2170, file: !260, discriminator: 9)
!2173 = !DILocation(line: 715, column: 7, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2169, file: !260, discriminator: 10)
!2175 = !DILocation(line: 715, column: 7, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2170, file: !260, discriminator: 11)
!2177 = !DILocation(line: 715, column: 7, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2160, file: !260, discriminator: 13)
!2179 = !DILocation(line: 716, column: 7, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2181, file: !260, discriminator: 1)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !260, line: 716, column: 7)
!2182 = distinct !DILexicalBlock(scope: !1489, file: !260, line: 716, column: 7)
!2183 = !DILocation(line: 716, column: 7, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2182, file: !260, discriminator: 1)
!2185 = !DILocation(line: 716, column: 7, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2181, file: !260, discriminator: 2)
!2187 = !DILocation(line: 716, column: 7, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2182, file: !260, discriminator: 3)
!2189 = !DILocation(line: 718, column: 13, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !1489, file: !260, line: 718, column: 11)
!2191 = !DILocation(line: 718, column: 11, scope: !1489)
!2192 = !DILocation(line: 720, column: 5, scope: !1490)
!2193 = !DILocation(line: 392, column: 75, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !1490, file: !260, discriminator: 5)
!2195 = !DILocation(line: 392, column: 3, scope: !2194)
!2196 = distinct !{!2196, !2197, !2198}
!2197 = !DILocation(line: 392, column: 3, scope: !1491)
!2198 = !DILocation(line: 720, column: 5, scope: !1491)
!2199 = !DILocation(line: 722, column: 11, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1462, file: !260, line: 722, column: 7)
!2201 = !DILocation(line: 722, column: 16, scope: !2200)
!2202 = !DILocation(line: 730, column: 51, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !1462, file: !260, line: 730, column: 7)
!2204 = !DILocation(line: 731, column: 10, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2203, file: !260, discriminator: 1)
!2206 = !DILocation(line: 733, column: 11, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !260, line: 733, column: 11)
!2208 = distinct !DILexicalBlock(scope: !2203, file: !260, line: 732, column: 5)
!2209 = !DILocation(line: 733, column: 11, scope: !2208)
!2210 = !DILocation(line: 734, column: 16, scope: !2207)
!2211 = !DILocation(line: 734, column: 9, scope: !2207)
!2212 = !DILocation(line: 738, column: 18, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2207, file: !260, line: 738, column: 16)
!2214 = !DILocation(line: 738, column: 32, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2213, file: !260, discriminator: 1)
!2216 = !DILocation(line: 738, column: 29, scope: !2213)
!2217 = !DILocation(line: 747, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !1462, file: !260, line: 747, column: 7)
!2219 = !DILocation(line: 747, column: 20, scope: !2218)
!2220 = !DILocation(line: 748, column: 12, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !2222, file: !260, discriminator: 1)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !260, line: 748, column: 5)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !260, line: 748, column: 5)
!2224 = !DILocation(line: 748, column: 5, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2223, file: !260, discriminator: 1)
!2226 = !DILocation(line: 749, column: 7, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2228, file: !260, discriminator: 1)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !260, line: 749, column: 7)
!2229 = distinct !DILexicalBlock(scope: !2222, file: !260, line: 749, column: 7)
!2230 = !DILocation(line: 749, column: 7, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2229, file: !260, discriminator: 1)
!2232 = !DILocation(line: 749, column: 7, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2228, file: !260, discriminator: 2)
!2234 = !DILocation(line: 749, column: 7, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2229, file: !260, discriminator: 3)
!2236 = !DILocation(line: 748, column: 39, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2222, file: !260, discriminator: 2)
!2238 = distinct !{!2238, !2239, !2240}
!2239 = !DILocation(line: 748, column: 5, scope: !2223)
!2240 = !DILocation(line: 749, column: 7, scope: !2223)
!2241 = !DILocation(line: 751, column: 11, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !1462, file: !260, line: 751, column: 7)
!2243 = !DILocation(line: 751, column: 7, scope: !1462)
!2244 = !DILocation(line: 752, column: 5, scope: !2242)
!2245 = !DILocation(line: 752, column: 17, scope: !2242)
!2246 = !DILocation(line: 758, column: 21, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1462, file: !260, line: 758, column: 7)
!2248 = !DILocation(line: 758, column: 54, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2247, file: !260, discriminator: 1)
!2250 = !DILocation(line: 758, column: 51, scope: !2247)
!2251 = !DILocation(line: 762, column: 42, scope: !1462)
!2252 = !DILocation(line: 760, column: 10, scope: !1462)
!2253 = !DILocation(line: 760, column: 3, scope: !1462)
!2254 = !DILocation(line: 764, column: 1, scope: !1462)
!2255 = distinct !DISubprogram(name: "gettext_quote", scope: !260, file: !260, line: 199, type: !2256, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!55, !55, !5}
!2258 = !{!2259, !2260, !2261, !2262}
!2259 = !DILocalVariable(name: "msgid", arg: 1, scope: !2255, file: !260, line: 199, type: !55)
!2260 = !DILocalVariable(name: "s", arg: 2, scope: !2255, file: !260, line: 199, type: !5)
!2261 = !DILocalVariable(name: "translation", scope: !2255, file: !260, line: 201, type: !55)
!2262 = !DILocalVariable(name: "locale_code", scope: !2255, file: !260, line: 202, type: !55)
!2263 = !DILocation(line: 199, column: 28, scope: !2255)
!2264 = !DILocation(line: 199, column: 54, scope: !2255)
!2265 = !DILocation(line: 201, column: 29, scope: !2255)
!2266 = !DILocation(line: 201, column: 15, scope: !2255)
!2267 = !DILocation(line: 204, column: 19, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2255, file: !260, line: 204, column: 7)
!2269 = !DILocation(line: 204, column: 7, scope: !2255)
!2270 = !DILocation(line: 225, column: 17, scope: !2255)
!2271 = !DILocation(line: 202, column: 15, scope: !2255)
!2272 = !DILocalVariable(name: "s2", arg: 2, scope: !2273, file: !2274, line: 160, type: !55)
!2273 = distinct !DISubprogram(name: "strcaseeq0", scope: !2274, file: !2274, line: 160, type: !2275, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2277)
!2274 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!57, !55, !55, !45, !45, !45, !45, !45, !45, !45, !45, !45}
!2277 = !{!2278, !2272, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2278 = !DILocalVariable(name: "s1", arg: 1, scope: !2273, file: !2274, line: 160, type: !55)
!2279 = !DILocalVariable(name: "s20", arg: 3, scope: !2273, file: !2274, line: 160, type: !45)
!2280 = !DILocalVariable(name: "s21", arg: 4, scope: !2273, file: !2274, line: 160, type: !45)
!2281 = !DILocalVariable(name: "s22", arg: 5, scope: !2273, file: !2274, line: 160, type: !45)
!2282 = !DILocalVariable(name: "s23", arg: 6, scope: !2273, file: !2274, line: 160, type: !45)
!2283 = !DILocalVariable(name: "s24", arg: 7, scope: !2273, file: !2274, line: 160, type: !45)
!2284 = !DILocalVariable(name: "s25", arg: 8, scope: !2273, file: !2274, line: 160, type: !45)
!2285 = !DILocalVariable(name: "s26", arg: 9, scope: !2273, file: !2274, line: 160, type: !45)
!2286 = !DILocalVariable(name: "s27", arg: 10, scope: !2273, file: !2274, line: 160, type: !45)
!2287 = !DILocalVariable(name: "s28", arg: 11, scope: !2273, file: !2274, line: 160, type: !45)
!2288 = !DILocation(line: 160, column: 41, scope: !2273, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 226, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2255, file: !260, line: 226, column: 7)
!2291 = !DILocation(line: 160, column: 120, scope: !2273, inlinedAt: !2289)
!2292 = !DILocation(line: 160, column: 130, scope: !2273, inlinedAt: !2289)
!2293 = !DILocation(line: 162, column: 7, scope: !2294, inlinedAt: !2289)
!2294 = !DILexicalBlockFile(scope: !2295, file: !2274, discriminator: 1)
!2295 = distinct !DILexicalBlock(scope: !2273, file: !2274, line: 162, column: 7)
!2296 = !DILocalVariable(name: "s2", arg: 2, scope: !2297, file: !2274, line: 146, type: !55)
!2297 = distinct !DISubprogram(name: "strcaseeq1", scope: !2274, file: !2274, line: 146, type: !2298, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!57, !55, !55, !45, !45, !45, !45, !45, !45, !45, !45}
!2300 = !{!2301, !2296, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!2301 = !DILocalVariable(name: "s1", arg: 1, scope: !2297, file: !2274, line: 146, type: !55)
!2302 = !DILocalVariable(name: "s21", arg: 3, scope: !2297, file: !2274, line: 146, type: !45)
!2303 = !DILocalVariable(name: "s22", arg: 4, scope: !2297, file: !2274, line: 146, type: !45)
!2304 = !DILocalVariable(name: "s23", arg: 5, scope: !2297, file: !2274, line: 146, type: !45)
!2305 = !DILocalVariable(name: "s24", arg: 6, scope: !2297, file: !2274, line: 146, type: !45)
!2306 = !DILocalVariable(name: "s25", arg: 7, scope: !2297, file: !2274, line: 146, type: !45)
!2307 = !DILocalVariable(name: "s26", arg: 8, scope: !2297, file: !2274, line: 146, type: !45)
!2308 = !DILocalVariable(name: "s27", arg: 9, scope: !2297, file: !2274, line: 146, type: !45)
!2309 = !DILocalVariable(name: "s28", arg: 10, scope: !2297, file: !2274, line: 146, type: !45)
!2310 = !DILocation(line: 146, column: 41, scope: !2297, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 167, column: 16, scope: !2312, inlinedAt: !2289)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !2274, line: 164, column: 11)
!2313 = distinct !DILexicalBlock(scope: !2295, file: !2274, line: 163, column: 5)
!2314 = !DILocation(line: 146, column: 110, scope: !2297, inlinedAt: !2311)
!2315 = !DILocation(line: 146, column: 120, scope: !2297, inlinedAt: !2311)
!2316 = !DILocation(line: 148, column: 7, scope: !2317, inlinedAt: !2311)
!2317 = !DILexicalBlockFile(scope: !2318, file: !2274, discriminator: 1)
!2318 = distinct !DILexicalBlock(scope: !2297, file: !2274, line: 148, column: 7)
!2319 = !DILocalVariable(name: "s2", arg: 2, scope: !2320, file: !2274, line: 132, type: !55)
!2320 = distinct !DISubprogram(name: "strcaseeq2", scope: !2274, file: !2274, line: 132, type: !2321, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!57, !55, !55, !45, !45, !45, !45, !45, !45, !45}
!2323 = !{!2324, !2319, !2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2324 = !DILocalVariable(name: "s1", arg: 1, scope: !2320, file: !2274, line: 132, type: !55)
!2325 = !DILocalVariable(name: "s22", arg: 3, scope: !2320, file: !2274, line: 132, type: !45)
!2326 = !DILocalVariable(name: "s23", arg: 4, scope: !2320, file: !2274, line: 132, type: !45)
!2327 = !DILocalVariable(name: "s24", arg: 5, scope: !2320, file: !2274, line: 132, type: !45)
!2328 = !DILocalVariable(name: "s25", arg: 6, scope: !2320, file: !2274, line: 132, type: !45)
!2329 = !DILocalVariable(name: "s26", arg: 7, scope: !2320, file: !2274, line: 132, type: !45)
!2330 = !DILocalVariable(name: "s27", arg: 8, scope: !2320, file: !2274, line: 132, type: !45)
!2331 = !DILocalVariable(name: "s28", arg: 9, scope: !2320, file: !2274, line: 132, type: !45)
!2332 = !DILocation(line: 132, column: 41, scope: !2320, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 153, column: 16, scope: !2334, inlinedAt: !2311)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !2274, line: 150, column: 11)
!2335 = distinct !DILexicalBlock(scope: !2318, file: !2274, line: 149, column: 5)
!2336 = !DILocation(line: 132, column: 100, scope: !2320, inlinedAt: !2333)
!2337 = !DILocation(line: 132, column: 110, scope: !2320, inlinedAt: !2333)
!2338 = !DILocation(line: 134, column: 7, scope: !2339, inlinedAt: !2333)
!2339 = !DILexicalBlockFile(scope: !2340, file: !2274, discriminator: 1)
!2340 = distinct !DILexicalBlock(scope: !2320, file: !2274, line: 134, column: 7)
!2341 = !DILocalVariable(name: "s2", arg: 2, scope: !2342, file: !2274, line: 118, type: !55)
!2342 = distinct !DISubprogram(name: "strcaseeq3", scope: !2274, file: !2274, line: 118, type: !2343, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!57, !55, !55, !45, !45, !45, !45, !45, !45}
!2345 = !{!2346, !2341, !2347, !2348, !2349, !2350, !2351, !2352}
!2346 = !DILocalVariable(name: "s1", arg: 1, scope: !2342, file: !2274, line: 118, type: !55)
!2347 = !DILocalVariable(name: "s23", arg: 3, scope: !2342, file: !2274, line: 118, type: !45)
!2348 = !DILocalVariable(name: "s24", arg: 4, scope: !2342, file: !2274, line: 118, type: !45)
!2349 = !DILocalVariable(name: "s25", arg: 5, scope: !2342, file: !2274, line: 118, type: !45)
!2350 = !DILocalVariable(name: "s26", arg: 6, scope: !2342, file: !2274, line: 118, type: !45)
!2351 = !DILocalVariable(name: "s27", arg: 7, scope: !2342, file: !2274, line: 118, type: !45)
!2352 = !DILocalVariable(name: "s28", arg: 8, scope: !2342, file: !2274, line: 118, type: !45)
!2353 = !DILocation(line: 118, column: 41, scope: !2342, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 139, column: 16, scope: !2355, inlinedAt: !2333)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !2274, line: 136, column: 11)
!2356 = distinct !DILexicalBlock(scope: !2340, file: !2274, line: 135, column: 5)
!2357 = !DILocation(line: 118, column: 90, scope: !2342, inlinedAt: !2354)
!2358 = !DILocation(line: 118, column: 100, scope: !2342, inlinedAt: !2354)
!2359 = !DILocation(line: 120, column: 7, scope: !2360, inlinedAt: !2354)
!2360 = !DILexicalBlockFile(scope: !2361, file: !2274, discriminator: 2)
!2361 = distinct !DILexicalBlock(scope: !2342, file: !2274, line: 120, column: 7)
!2362 = !DILocation(line: 120, column: 7, scope: !2363, inlinedAt: !2354)
!2363 = !DILexicalBlockFile(scope: !2342, file: !2274, discriminator: 2)
!2364 = !DILocalVariable(name: "s2", arg: 2, scope: !2365, file: !2274, line: 104, type: !55)
!2365 = distinct !DISubprogram(name: "strcaseeq4", scope: !2274, file: !2274, line: 104, type: !2366, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!57, !55, !55, !45, !45, !45, !45, !45}
!2368 = !{!2369, !2364, !2370, !2371, !2372, !2373, !2374}
!2369 = !DILocalVariable(name: "s1", arg: 1, scope: !2365, file: !2274, line: 104, type: !55)
!2370 = !DILocalVariable(name: "s24", arg: 3, scope: !2365, file: !2274, line: 104, type: !45)
!2371 = !DILocalVariable(name: "s25", arg: 4, scope: !2365, file: !2274, line: 104, type: !45)
!2372 = !DILocalVariable(name: "s26", arg: 5, scope: !2365, file: !2274, line: 104, type: !45)
!2373 = !DILocalVariable(name: "s27", arg: 6, scope: !2365, file: !2274, line: 104, type: !45)
!2374 = !DILocalVariable(name: "s28", arg: 7, scope: !2365, file: !2274, line: 104, type: !45)
!2375 = !DILocation(line: 104, column: 41, scope: !2365, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 125, column: 16, scope: !2377, inlinedAt: !2354)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !2274, line: 122, column: 11)
!2378 = distinct !DILexicalBlock(scope: !2361, file: !2274, line: 121, column: 5)
!2379 = !DILocation(line: 104, column: 80, scope: !2365, inlinedAt: !2376)
!2380 = !DILocation(line: 104, column: 90, scope: !2365, inlinedAt: !2376)
!2381 = !DILocation(line: 106, column: 7, scope: !2382, inlinedAt: !2376)
!2382 = !DILexicalBlockFile(scope: !2383, file: !2274, discriminator: 2)
!2383 = distinct !DILexicalBlock(scope: !2365, file: !2274, line: 106, column: 7)
!2384 = !DILocation(line: 106, column: 7, scope: !2385, inlinedAt: !2376)
!2385 = !DILexicalBlockFile(scope: !2365, file: !2274, discriminator: 2)
!2386 = !DILocalVariable(name: "s2", arg: 2, scope: !2387, file: !2274, line: 90, type: !55)
!2387 = distinct !DISubprogram(name: "strcaseeq5", scope: !2274, file: !2274, line: 90, type: !2388, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!57, !55, !55, !45, !45, !45, !45}
!2390 = !{!2391, !2386, !2392, !2393, !2394, !2395}
!2391 = !DILocalVariable(name: "s1", arg: 1, scope: !2387, file: !2274, line: 90, type: !55)
!2392 = !DILocalVariable(name: "s25", arg: 3, scope: !2387, file: !2274, line: 90, type: !45)
!2393 = !DILocalVariable(name: "s26", arg: 4, scope: !2387, file: !2274, line: 90, type: !45)
!2394 = !DILocalVariable(name: "s27", arg: 5, scope: !2387, file: !2274, line: 90, type: !45)
!2395 = !DILocalVariable(name: "s28", arg: 6, scope: !2387, file: !2274, line: 90, type: !45)
!2396 = !DILocation(line: 90, column: 41, scope: !2387, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 111, column: 16, scope: !2398, inlinedAt: !2376)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !2274, line: 108, column: 11)
!2399 = distinct !DILexicalBlock(scope: !2383, file: !2274, line: 107, column: 5)
!2400 = !DILocation(line: 90, column: 70, scope: !2387, inlinedAt: !2397)
!2401 = !DILocation(line: 90, column: 80, scope: !2387, inlinedAt: !2397)
!2402 = !DILocation(line: 92, column: 7, scope: !2403, inlinedAt: !2397)
!2403 = !DILexicalBlockFile(scope: !2404, file: !2274, discriminator: 2)
!2404 = distinct !DILexicalBlock(scope: !2387, file: !2274, line: 92, column: 7)
!2405 = !DILocation(line: 92, column: 7, scope: !2406, inlinedAt: !2397)
!2406 = !DILexicalBlockFile(scope: !2387, file: !2274, discriminator: 2)
!2407 = !DILocation(line: 227, column: 12, scope: !2290)
!2408 = !DILocation(line: 227, column: 21, scope: !2290)
!2409 = !DILocation(line: 227, column: 5, scope: !2290)
!2410 = !DILocation(line: 146, column: 41, scope: !2297, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 167, column: 16, scope: !2312, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 228, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2255, file: !260, line: 228, column: 7)
!2414 = !DILocation(line: 146, column: 110, scope: !2297, inlinedAt: !2411)
!2415 = !DILocation(line: 146, column: 120, scope: !2297, inlinedAt: !2411)
!2416 = !DILocation(line: 148, column: 7, scope: !2317, inlinedAt: !2411)
!2417 = !DILocation(line: 132, column: 41, scope: !2320, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 153, column: 16, scope: !2334, inlinedAt: !2411)
!2419 = !DILocation(line: 132, column: 100, scope: !2320, inlinedAt: !2418)
!2420 = !DILocation(line: 132, column: 110, scope: !2320, inlinedAt: !2418)
!2421 = !DILocation(line: 134, column: 7, scope: !2422, inlinedAt: !2418)
!2422 = !DILexicalBlockFile(scope: !2340, file: !2274, discriminator: 2)
!2423 = !DILocation(line: 134, column: 7, scope: !2424, inlinedAt: !2418)
!2424 = !DILexicalBlockFile(scope: !2320, file: !2274, discriminator: 2)
!2425 = !DILocation(line: 118, column: 41, scope: !2342, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 139, column: 16, scope: !2355, inlinedAt: !2418)
!2427 = !DILocation(line: 118, column: 90, scope: !2342, inlinedAt: !2426)
!2428 = !DILocation(line: 118, column: 100, scope: !2342, inlinedAt: !2426)
!2429 = !DILocation(line: 120, column: 7, scope: !2360, inlinedAt: !2426)
!2430 = !DILocation(line: 120, column: 7, scope: !2363, inlinedAt: !2426)
!2431 = !DILocation(line: 104, column: 41, scope: !2365, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 125, column: 16, scope: !2377, inlinedAt: !2426)
!2433 = !DILocation(line: 104, column: 80, scope: !2365, inlinedAt: !2432)
!2434 = !DILocation(line: 104, column: 90, scope: !2365, inlinedAt: !2432)
!2435 = !DILocation(line: 106, column: 7, scope: !2382, inlinedAt: !2432)
!2436 = !DILocation(line: 106, column: 7, scope: !2385, inlinedAt: !2432)
!2437 = !DILocation(line: 90, column: 41, scope: !2387, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 111, column: 16, scope: !2398, inlinedAt: !2432)
!2439 = !DILocation(line: 90, column: 70, scope: !2387, inlinedAt: !2438)
!2440 = !DILocation(line: 90, column: 80, scope: !2387, inlinedAt: !2438)
!2441 = !DILocation(line: 92, column: 7, scope: !2403, inlinedAt: !2438)
!2442 = !DILocation(line: 92, column: 7, scope: !2406, inlinedAt: !2438)
!2443 = !DILocalVariable(name: "s2", arg: 2, scope: !2444, file: !2274, line: 76, type: !55)
!2444 = distinct !DISubprogram(name: "strcaseeq6", scope: !2274, file: !2274, line: 76, type: !2445, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!57, !55, !55, !45, !45, !45}
!2447 = !{!2448, !2443, !2449, !2450, !2451}
!2448 = !DILocalVariable(name: "s1", arg: 1, scope: !2444, file: !2274, line: 76, type: !55)
!2449 = !DILocalVariable(name: "s26", arg: 3, scope: !2444, file: !2274, line: 76, type: !45)
!2450 = !DILocalVariable(name: "s27", arg: 4, scope: !2444, file: !2274, line: 76, type: !45)
!2451 = !DILocalVariable(name: "s28", arg: 5, scope: !2444, file: !2274, line: 76, type: !45)
!2452 = !DILocation(line: 76, column: 41, scope: !2444, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 97, column: 16, scope: !2454, inlinedAt: !2438)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !2274, line: 94, column: 11)
!2455 = distinct !DILexicalBlock(scope: !2404, file: !2274, line: 93, column: 5)
!2456 = !DILocation(line: 76, column: 60, scope: !2444, inlinedAt: !2453)
!2457 = !DILocation(line: 76, column: 70, scope: !2444, inlinedAt: !2453)
!2458 = !DILocation(line: 78, column: 7, scope: !2459, inlinedAt: !2453)
!2459 = !DILexicalBlockFile(scope: !2460, file: !2274, discriminator: 2)
!2460 = distinct !DILexicalBlock(scope: !2444, file: !2274, line: 78, column: 7)
!2461 = !DILocation(line: 78, column: 7, scope: !2462, inlinedAt: !2453)
!2462 = !DILexicalBlockFile(scope: !2444, file: !2274, discriminator: 2)
!2463 = !DILocalVariable(name: "s2", arg: 2, scope: !2464, file: !2274, line: 62, type: !55)
!2464 = distinct !DISubprogram(name: "strcaseeq7", scope: !2274, file: !2274, line: 62, type: !2465, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!57, !55, !55, !45, !45}
!2467 = !{!2468, !2463, !2469, !2470}
!2468 = !DILocalVariable(name: "s1", arg: 1, scope: !2464, file: !2274, line: 62, type: !55)
!2469 = !DILocalVariable(name: "s27", arg: 3, scope: !2464, file: !2274, line: 62, type: !45)
!2470 = !DILocalVariable(name: "s28", arg: 4, scope: !2464, file: !2274, line: 62, type: !45)
!2471 = !DILocation(line: 62, column: 41, scope: !2464, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 83, column: 16, scope: !2473, inlinedAt: !2453)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !2274, line: 80, column: 11)
!2474 = distinct !DILexicalBlock(scope: !2460, file: !2274, line: 79, column: 5)
!2475 = !DILocation(line: 62, column: 50, scope: !2464, inlinedAt: !2472)
!2476 = !DILocation(line: 62, column: 60, scope: !2464, inlinedAt: !2472)
!2477 = !DILocation(line: 64, column: 7, scope: !2478, inlinedAt: !2472)
!2478 = !DILexicalBlockFile(scope: !2479, file: !2274, discriminator: 2)
!2479 = distinct !DILexicalBlock(scope: !2464, file: !2274, line: 64, column: 7)
!2480 = !DILocation(line: 228, column: 7, scope: !2255)
!2481 = !DILocation(line: 229, column: 12, scope: !2413)
!2482 = !DILocation(line: 229, column: 21, scope: !2413)
!2483 = !DILocation(line: 229, column: 5, scope: !2413)
!2484 = !DILocation(line: 231, column: 13, scope: !2255)
!2485 = !DILocation(line: 231, column: 11, scope: !2255)
!2486 = !DILocation(line: 231, column: 3, scope: !2255)
!2487 = !DILocation(line: 232, column: 1, scope: !2255)
!2488 = distinct !DISubprogram(name: "quotearg_alloc", scope: !260, file: !260, line: 791, type: !2489, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!44, !55, !47, !1330}
!2491 = !{!2492, !2493, !2494}
!2492 = !DILocalVariable(name: "arg", arg: 1, scope: !2488, file: !260, line: 791, type: !55)
!2493 = !DILocalVariable(name: "argsize", arg: 2, scope: !2488, file: !260, line: 791, type: !47)
!2494 = !DILocalVariable(name: "o", arg: 3, scope: !2488, file: !260, line: 792, type: !1330)
!2495 = !DILocation(line: 791, column: 29, scope: !2488)
!2496 = !DILocation(line: 791, column: 41, scope: !2488)
!2497 = !DILocation(line: 792, column: 47, scope: !2488)
!2498 = !DILocalVariable(name: "arg", arg: 1, scope: !2499, file: !260, line: 804, type: !55)
!2499 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !260, file: !260, line: 804, type: !2500, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!44, !55, !47, !675, !1330}
!2502 = !{!2498, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2503 = !DILocalVariable(name: "argsize", arg: 2, scope: !2499, file: !260, line: 804, type: !47)
!2504 = !DILocalVariable(name: "size", arg: 3, scope: !2499, file: !260, line: 804, type: !675)
!2505 = !DILocalVariable(name: "o", arg: 4, scope: !2499, file: !260, line: 805, type: !1330)
!2506 = !DILocalVariable(name: "p", scope: !2499, file: !260, line: 807, type: !1330)
!2507 = !DILocalVariable(name: "e", scope: !2499, file: !260, line: 808, type: !57)
!2508 = !DILocalVariable(name: "flags", scope: !2499, file: !260, line: 810, type: !57)
!2509 = !DILocalVariable(name: "bufsize", scope: !2499, file: !260, line: 811, type: !47)
!2510 = !DILocalVariable(name: "buf", scope: !2499, file: !260, line: 815, type: !44)
!2511 = !DILocation(line: 804, column: 33, scope: !2499, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 794, column: 10, scope: !2488)
!2513 = !DILocation(line: 804, column: 45, scope: !2499, inlinedAt: !2512)
!2514 = !DILocation(line: 804, column: 62, scope: !2499, inlinedAt: !2512)
!2515 = !DILocation(line: 805, column: 51, scope: !2499, inlinedAt: !2512)
!2516 = !DILocation(line: 807, column: 37, scope: !2499, inlinedAt: !2512)
!2517 = !DILocation(line: 807, column: 33, scope: !2499, inlinedAt: !2512)
!2518 = !DILocation(line: 808, column: 11, scope: !2499, inlinedAt: !2512)
!2519 = !DILocation(line: 808, column: 7, scope: !2499, inlinedAt: !2512)
!2520 = !DILocation(line: 810, column: 18, scope: !2499, inlinedAt: !2512)
!2521 = !DILocation(line: 810, column: 24, scope: !2499, inlinedAt: !2512)
!2522 = !DILocation(line: 810, column: 7, scope: !2499, inlinedAt: !2512)
!2523 = !DILocation(line: 811, column: 69, scope: !2499, inlinedAt: !2512)
!2524 = !DILocation(line: 812, column: 53, scope: !2499, inlinedAt: !2512)
!2525 = !DILocation(line: 813, column: 49, scope: !2499, inlinedAt: !2512)
!2526 = !DILocation(line: 814, column: 49, scope: !2499, inlinedAt: !2512)
!2527 = !DILocation(line: 811, column: 20, scope: !2499, inlinedAt: !2512)
!2528 = !DILocation(line: 814, column: 62, scope: !2499, inlinedAt: !2512)
!2529 = !DILocation(line: 811, column: 10, scope: !2499, inlinedAt: !2512)
!2530 = !DILocalVariable(name: "n", arg: 1, scope: !2531, file: !671, line: 220, type: !47)
!2531 = distinct !DISubprogram(name: "xcharalloc", scope: !671, file: !671, line: 220, type: !2532, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!44, !47}
!2534 = !{!2530}
!2535 = !DILocation(line: 220, column: 20, scope: !2531, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 815, column: 15, scope: !2499, inlinedAt: !2512)
!2537 = !DILocation(line: 222, column: 10, scope: !2531, inlinedAt: !2536)
!2538 = !DILocation(line: 815, column: 9, scope: !2499, inlinedAt: !2512)
!2539 = !DILocation(line: 816, column: 60, scope: !2499, inlinedAt: !2512)
!2540 = !DILocation(line: 818, column: 32, scope: !2499, inlinedAt: !2512)
!2541 = !DILocation(line: 818, column: 47, scope: !2499, inlinedAt: !2512)
!2542 = !DILocation(line: 816, column: 3, scope: !2499, inlinedAt: !2512)
!2543 = !DILocation(line: 819, column: 9, scope: !2499, inlinedAt: !2512)
!2544 = !DILocation(line: 794, column: 3, scope: !2488)
!2545 = !DILocation(line: 804, column: 33, scope: !2499)
!2546 = !DILocation(line: 804, column: 45, scope: !2499)
!2547 = !DILocation(line: 804, column: 62, scope: !2499)
!2548 = !DILocation(line: 805, column: 51, scope: !2499)
!2549 = !DILocation(line: 807, column: 37, scope: !2499)
!2550 = !DILocation(line: 807, column: 33, scope: !2499)
!2551 = !DILocation(line: 808, column: 11, scope: !2499)
!2552 = !DILocation(line: 808, column: 7, scope: !2499)
!2553 = !DILocation(line: 810, column: 18, scope: !2499)
!2554 = !DILocation(line: 810, column: 27, scope: !2499)
!2555 = !DILocation(line: 810, column: 24, scope: !2499)
!2556 = !DILocation(line: 810, column: 7, scope: !2499)
!2557 = !DILocation(line: 811, column: 69, scope: !2499)
!2558 = !DILocation(line: 812, column: 53, scope: !2499)
!2559 = !DILocation(line: 813, column: 49, scope: !2499)
!2560 = !DILocation(line: 814, column: 49, scope: !2499)
!2561 = !DILocation(line: 811, column: 20, scope: !2499)
!2562 = !DILocation(line: 814, column: 62, scope: !2499)
!2563 = !DILocation(line: 811, column: 10, scope: !2499)
!2564 = !DILocation(line: 220, column: 20, scope: !2531, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 815, column: 15, scope: !2499)
!2566 = !DILocation(line: 222, column: 10, scope: !2531, inlinedAt: !2565)
!2567 = !DILocation(line: 815, column: 9, scope: !2499)
!2568 = !DILocation(line: 816, column: 60, scope: !2499)
!2569 = !DILocation(line: 818, column: 32, scope: !2499)
!2570 = !DILocation(line: 818, column: 47, scope: !2499)
!2571 = !DILocation(line: 816, column: 3, scope: !2499)
!2572 = !DILocation(line: 819, column: 9, scope: !2499)
!2573 = !DILocation(line: 820, column: 7, scope: !2499)
!2574 = !DILocation(line: 821, column: 11, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2499, file: !260, line: 820, column: 7)
!2576 = !DILocation(line: 821, column: 5, scope: !2575)
!2577 = !DILocation(line: 822, column: 3, scope: !2499)
!2578 = distinct !DISubprogram(name: "quotearg_free", scope: !260, file: !260, line: 840, type: !751, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2579)
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "sv", scope: !2578, file: !260, line: 842, type: !287)
!2581 = !DILocalVariable(name: "i", scope: !2578, file: !260, line: 843, type: !57)
!2582 = !DILocation(line: 842, column: 24, scope: !2578)
!2583 = !DILocation(line: 842, column: 19, scope: !2578)
!2584 = !DILocation(line: 843, column: 7, scope: !2578)
!2585 = !DILocation(line: 844, column: 19, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2587, file: !260, discriminator: 1)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !260, line: 844, column: 3)
!2588 = distinct !DILexicalBlock(scope: !2578, file: !260, line: 844, column: 3)
!2589 = !DILocation(line: 844, column: 17, scope: !2586)
!2590 = !DILocation(line: 844, column: 3, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2588, file: !260, discriminator: 1)
!2592 = !DILocation(line: 845, column: 17, scope: !2587)
!2593 = !{!2594, !736, i64 8}
!2594 = !{!"slotvec", !936, i64 0, !736, i64 8}
!2595 = !DILocation(line: 845, column: 5, scope: !2587)
!2596 = !DILocation(line: 844, column: 28, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2587, file: !260, discriminator: 2)
!2598 = distinct !{!2598, !2599, !2600}
!2599 = !DILocation(line: 844, column: 3, scope: !2588)
!2600 = !DILocation(line: 845, column: 20, scope: !2588)
!2601 = !DILocation(line: 846, column: 13, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2578, file: !260, line: 846, column: 7)
!2603 = !DILocation(line: 846, column: 17, scope: !2602)
!2604 = !DILocation(line: 846, column: 7, scope: !2578)
!2605 = !DILocation(line: 848, column: 7, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !260, line: 847, column: 5)
!2607 = !DILocation(line: 849, column: 21, scope: !2606)
!2608 = !{!2594, !936, i64 0}
!2609 = !DILocation(line: 850, column: 20, scope: !2606)
!2610 = !DILocation(line: 851, column: 5, scope: !2606)
!2611 = !DILocation(line: 852, column: 10, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2578, file: !260, line: 852, column: 7)
!2613 = !DILocation(line: 852, column: 7, scope: !2578)
!2614 = !DILocation(line: 854, column: 13, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2612, file: !260, line: 853, column: 5)
!2616 = !DILocation(line: 854, column: 7, scope: !2615)
!2617 = !DILocation(line: 855, column: 15, scope: !2615)
!2618 = !DILocation(line: 856, column: 5, scope: !2615)
!2619 = !DILocation(line: 857, column: 10, scope: !2578)
!2620 = !DILocation(line: 858, column: 1, scope: !2578)
!2621 = distinct !DISubprogram(name: "quotearg_n", scope: !260, file: !260, line: 922, type: !2622, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!44, !57, !55}
!2624 = !{!2625, !2626}
!2625 = !DILocalVariable(name: "n", arg: 1, scope: !2621, file: !260, line: 922, type: !57)
!2626 = !DILocalVariable(name: "arg", arg: 2, scope: !2621, file: !260, line: 922, type: !55)
!2627 = !DILocation(line: 922, column: 17, scope: !2621)
!2628 = !DILocation(line: 922, column: 32, scope: !2621)
!2629 = !DILocation(line: 924, column: 10, scope: !2621)
!2630 = !DILocation(line: 924, column: 3, scope: !2621)
!2631 = distinct !DISubprogram(name: "quotearg_n_options", scope: !260, file: !260, line: 869, type: !2632, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!44, !57, !55, !47, !1330}
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2644, !2646, !2647, !2648}
!2635 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !260, line: 869, type: !57)
!2636 = !DILocalVariable(name: "arg", arg: 2, scope: !2631, file: !260, line: 869, type: !55)
!2637 = !DILocalVariable(name: "argsize", arg: 3, scope: !2631, file: !260, line: 869, type: !47)
!2638 = !DILocalVariable(name: "options", arg: 4, scope: !2631, file: !260, line: 870, type: !1330)
!2639 = !DILocalVariable(name: "e", scope: !2631, file: !260, line: 872, type: !57)
!2640 = !DILocalVariable(name: "sv", scope: !2631, file: !260, line: 874, type: !287)
!2641 = !DILocalVariable(name: "preallocated", scope: !2642, file: !260, line: 881, type: !63)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !260, line: 880, column: 5)
!2643 = distinct !DILexicalBlock(scope: !2631, file: !260, line: 879, column: 7)
!2644 = !DILocalVariable(name: "size", scope: !2645, file: !260, line: 894, type: !47)
!2645 = distinct !DILexicalBlock(scope: !2631, file: !260, line: 893, column: 3)
!2646 = !DILocalVariable(name: "val", scope: !2645, file: !260, line: 895, type: !44)
!2647 = !DILocalVariable(name: "flags", scope: !2645, file: !260, line: 897, type: !57)
!2648 = !DILocalVariable(name: "qsize", scope: !2645, file: !260, line: 898, type: !47)
!2649 = !DILocation(line: 869, column: 25, scope: !2631)
!2650 = !DILocation(line: 869, column: 40, scope: !2631)
!2651 = !DILocation(line: 869, column: 52, scope: !2631)
!2652 = !DILocation(line: 870, column: 51, scope: !2631)
!2653 = !DILocation(line: 872, column: 11, scope: !2631)
!2654 = !DILocation(line: 872, column: 7, scope: !2631)
!2655 = !DILocation(line: 874, column: 24, scope: !2631)
!2656 = !DILocation(line: 874, column: 19, scope: !2631)
!2657 = !DILocation(line: 876, column: 9, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2631, file: !260, line: 876, column: 7)
!2659 = !DILocation(line: 876, column: 7, scope: !2631)
!2660 = !DILocation(line: 877, column: 5, scope: !2658)
!2661 = !DILocation(line: 879, column: 7, scope: !2643)
!2662 = !DILocation(line: 879, column: 14, scope: !2643)
!2663 = !DILocation(line: 879, column: 7, scope: !2631)
!2664 = !DILocation(line: 881, column: 31, scope: !2642)
!2665 = !DILocation(line: 883, column: 67, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2642, file: !260, line: 883, column: 11)
!2667 = !DILocation(line: 883, column: 11, scope: !2642)
!2668 = !DILocation(line: 884, column: 9, scope: !2666)
!2669 = !DILocation(line: 886, column: 32, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2642, file: !260, discriminator: 3)
!2671 = !DILocation(line: 886, column: 61, scope: !2670)
!2672 = !DILocation(line: 886, column: 58, scope: !2670)
!2673 = !DILocation(line: 886, column: 66, scope: !2670)
!2674 = !DILocation(line: 886, column: 22, scope: !2670)
!2675 = !DILocation(line: 886, column: 15, scope: !2670)
!2676 = !DILocation(line: 887, column: 11, scope: !2642)
!2677 = !DILocation(line: 888, column: 15, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2642, file: !260, line: 887, column: 11)
!2679 = !{i64 0, i64 8, !950, i64 8, i64 8, !735}
!2680 = !DILocation(line: 888, column: 9, scope: !2678)
!2681 = !DILocation(line: 889, column: 20, scope: !2642)
!2682 = !DILocation(line: 889, column: 18, scope: !2642)
!2683 = !DILocation(line: 889, column: 7, scope: !2642)
!2684 = !DILocation(line: 889, column: 38, scope: !2642)
!2685 = !DILocation(line: 889, column: 31, scope: !2642)
!2686 = !DILocation(line: 889, column: 48, scope: !2642)
!2687 = !DILocation(line: 890, column: 14, scope: !2642)
!2688 = !DILocation(line: 891, column: 5, scope: !2642)
!2689 = !DILocation(line: 894, column: 19, scope: !2645)
!2690 = !DILocation(line: 894, column: 25, scope: !2645)
!2691 = !DILocation(line: 894, column: 12, scope: !2645)
!2692 = !DILocation(line: 895, column: 23, scope: !2645)
!2693 = !DILocation(line: 895, column: 11, scope: !2645)
!2694 = !DILocation(line: 897, column: 26, scope: !2645)
!2695 = !DILocation(line: 897, column: 32, scope: !2645)
!2696 = !DILocation(line: 897, column: 9, scope: !2645)
!2697 = !DILocation(line: 899, column: 55, scope: !2645)
!2698 = !DILocation(line: 900, column: 46, scope: !2645)
!2699 = !DILocation(line: 901, column: 55, scope: !2645)
!2700 = !DILocation(line: 902, column: 55, scope: !2645)
!2701 = !DILocation(line: 898, column: 20, scope: !2645)
!2702 = !DILocation(line: 898, column: 12, scope: !2645)
!2703 = !DILocation(line: 904, column: 14, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2645, file: !260, line: 904, column: 9)
!2705 = !DILocation(line: 904, column: 9, scope: !2645)
!2706 = !DILocation(line: 906, column: 35, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !260, line: 905, column: 7)
!2708 = !DILocation(line: 906, column: 20, scope: !2707)
!2709 = !DILocation(line: 907, column: 17, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !260, line: 907, column: 13)
!2711 = !DILocation(line: 907, column: 13, scope: !2707)
!2712 = !DILocation(line: 908, column: 11, scope: !2710)
!2713 = !DILocation(line: 220, column: 20, scope: !2531, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 909, column: 27, scope: !2707)
!2715 = !DILocation(line: 222, column: 10, scope: !2531, inlinedAt: !2714)
!2716 = !DILocation(line: 909, column: 19, scope: !2707)
!2717 = !DILocation(line: 910, column: 69, scope: !2707)
!2718 = !DILocation(line: 912, column: 44, scope: !2707)
!2719 = !DILocation(line: 913, column: 44, scope: !2707)
!2720 = !DILocation(line: 910, column: 9, scope: !2707)
!2721 = !DILocation(line: 914, column: 7, scope: !2707)
!2722 = !DILocation(line: 916, column: 11, scope: !2645)
!2723 = !DILocation(line: 917, column: 5, scope: !2645)
!2724 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !260, file: !260, line: 928, type: !2725, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!44, !57, !55, !47}
!2727 = !{!2728, !2729, !2730}
!2728 = !DILocalVariable(name: "n", arg: 1, scope: !2724, file: !260, line: 928, type: !57)
!2729 = !DILocalVariable(name: "arg", arg: 2, scope: !2724, file: !260, line: 928, type: !55)
!2730 = !DILocalVariable(name: "argsize", arg: 3, scope: !2724, file: !260, line: 928, type: !47)
!2731 = !DILocation(line: 928, column: 21, scope: !2724)
!2732 = !DILocation(line: 928, column: 36, scope: !2724)
!2733 = !DILocation(line: 928, column: 48, scope: !2724)
!2734 = !DILocation(line: 930, column: 10, scope: !2724)
!2735 = !DILocation(line: 930, column: 3, scope: !2724)
!2736 = distinct !DISubprogram(name: "quotearg", scope: !260, file: !260, line: 934, type: !2737, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!44, !55}
!2739 = !{!2740}
!2740 = !DILocalVariable(name: "arg", arg: 1, scope: !2736, file: !260, line: 934, type: !55)
!2741 = !DILocation(line: 934, column: 23, scope: !2736)
!2742 = !DILocation(line: 922, column: 17, scope: !2621, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 936, column: 10, scope: !2736)
!2744 = !DILocation(line: 922, column: 32, scope: !2621, inlinedAt: !2743)
!2745 = !DILocation(line: 924, column: 10, scope: !2621, inlinedAt: !2743)
!2746 = !DILocation(line: 936, column: 3, scope: !2736)
!2747 = distinct !DISubprogram(name: "quotearg_mem", scope: !260, file: !260, line: 940, type: !2748, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!44, !55, !47}
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2747, file: !260, line: 940, type: !55)
!2752 = !DILocalVariable(name: "argsize", arg: 2, scope: !2747, file: !260, line: 940, type: !47)
!2753 = !DILocation(line: 940, column: 27, scope: !2747)
!2754 = !DILocation(line: 940, column: 39, scope: !2747)
!2755 = !DILocation(line: 928, column: 21, scope: !2724, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 942, column: 10, scope: !2747)
!2757 = !DILocation(line: 928, column: 36, scope: !2724, inlinedAt: !2756)
!2758 = !DILocation(line: 928, column: 48, scope: !2724, inlinedAt: !2756)
!2759 = !DILocation(line: 930, column: 10, scope: !2724, inlinedAt: !2756)
!2760 = !DILocation(line: 942, column: 3, scope: !2747)
!2761 = distinct !DISubprogram(name: "quotearg_n_style", scope: !260, file: !260, line: 946, type: !2762, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!44, !57, !5, !55}
!2764 = !{!2765, !2766, !2767, !2768}
!2765 = !DILocalVariable(name: "n", arg: 1, scope: !2761, file: !260, line: 946, type: !57)
!2766 = !DILocalVariable(name: "s", arg: 2, scope: !2761, file: !260, line: 946, type: !5)
!2767 = !DILocalVariable(name: "arg", arg: 3, scope: !2761, file: !260, line: 946, type: !55)
!2768 = !DILocalVariable(name: "o", scope: !2761, file: !260, line: 948, type: !1331)
!2769 = !DILocalVariable(name: "o", scope: !2770, file: !260, line: 187, type: !267)
!2770 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !260, file: !260, line: 185, type: !2771, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!267, !5}
!2773 = !{!2774, !2769}
!2774 = !DILocalVariable(name: "style", arg: 1, scope: !2770, file: !260, line: 185, type: !5)
!2775 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2776 = !DILocation(line: 187, column: 26, scope: !2770, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 948, column: 36, scope: !2761)
!2778 = !DILocation(line: 946, column: 23, scope: !2761)
!2779 = !DILocation(line: 946, column: 45, scope: !2761)
!2780 = !DILocation(line: 946, column: 60, scope: !2761)
!2781 = !DILocation(line: 948, column: 3, scope: !2761)
!2782 = !DILocation(line: 948, column: 32, scope: !2761)
!2783 = !DILocation(line: 185, column: 48, scope: !2770, inlinedAt: !2777)
!2784 = !DILocation(line: 187, column: 3, scope: !2770, inlinedAt: !2777)
!2785 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2786 = !DILocation(line: 188, column: 13, scope: !2787, inlinedAt: !2777)
!2787 = distinct !DILexicalBlock(scope: !2770, file: !260, line: 188, column: 7)
!2788 = !DILocation(line: 188, column: 7, scope: !2770, inlinedAt: !2777)
!2789 = !DILocation(line: 189, column: 5, scope: !2787, inlinedAt: !2777)
!2790 = !{!2791}
!2791 = distinct !{!2791, !2792, !"quoting_options_from_style: argument 0"}
!2792 = distinct !{!2792, !"quoting_options_from_style"}
!2793 = !DILocation(line: 191, column: 10, scope: !2770, inlinedAt: !2777)
!2794 = !DILocation(line: 192, column: 1, scope: !2770, inlinedAt: !2777)
!2795 = !DILocation(line: 949, column: 10, scope: !2761)
!2796 = !DILocation(line: 950, column: 1, scope: !2761)
!2797 = !DILocation(line: 949, column: 3, scope: !2761)
!2798 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !260, file: !260, line: 953, type: !2799, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!44, !57, !5, !55, !47}
!2801 = !{!2802, !2803, !2804, !2805, !2806}
!2802 = !DILocalVariable(name: "n", arg: 1, scope: !2798, file: !260, line: 953, type: !57)
!2803 = !DILocalVariable(name: "s", arg: 2, scope: !2798, file: !260, line: 953, type: !5)
!2804 = !DILocalVariable(name: "arg", arg: 3, scope: !2798, file: !260, line: 954, type: !55)
!2805 = !DILocalVariable(name: "argsize", arg: 4, scope: !2798, file: !260, line: 954, type: !47)
!2806 = !DILocalVariable(name: "o", scope: !2798, file: !260, line: 956, type: !1331)
!2807 = !DILocation(line: 187, column: 26, scope: !2770, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 956, column: 36, scope: !2798)
!2809 = !DILocation(line: 953, column: 27, scope: !2798)
!2810 = !DILocation(line: 953, column: 49, scope: !2798)
!2811 = !DILocation(line: 954, column: 35, scope: !2798)
!2812 = !DILocation(line: 954, column: 47, scope: !2798)
!2813 = !DILocation(line: 956, column: 3, scope: !2798)
!2814 = !DILocation(line: 956, column: 32, scope: !2798)
!2815 = !DILocation(line: 185, column: 48, scope: !2770, inlinedAt: !2808)
!2816 = !DILocation(line: 187, column: 3, scope: !2770, inlinedAt: !2808)
!2817 = !DILocation(line: 188, column: 13, scope: !2787, inlinedAt: !2808)
!2818 = !DILocation(line: 188, column: 7, scope: !2770, inlinedAt: !2808)
!2819 = !DILocation(line: 189, column: 5, scope: !2787, inlinedAt: !2808)
!2820 = !{!2821}
!2821 = distinct !{!2821, !2822, !"quoting_options_from_style: argument 0"}
!2822 = distinct !{!2822, !"quoting_options_from_style"}
!2823 = !DILocation(line: 191, column: 10, scope: !2770, inlinedAt: !2808)
!2824 = !DILocation(line: 192, column: 1, scope: !2770, inlinedAt: !2808)
!2825 = !DILocation(line: 957, column: 10, scope: !2798)
!2826 = !DILocation(line: 958, column: 1, scope: !2798)
!2827 = !DILocation(line: 957, column: 3, scope: !2798)
!2828 = distinct !DISubprogram(name: "quotearg_style", scope: !260, file: !260, line: 961, type: !2829, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!44, !5, !55}
!2831 = !{!2832, !2833}
!2832 = !DILocalVariable(name: "s", arg: 1, scope: !2828, file: !260, line: 961, type: !5)
!2833 = !DILocalVariable(name: "arg", arg: 2, scope: !2828, file: !260, line: 961, type: !55)
!2834 = !DILocation(line: 187, column: 26, scope: !2770, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 948, column: 36, scope: !2761, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 963, column: 10, scope: !2828)
!2837 = !DILocation(line: 961, column: 36, scope: !2828)
!2838 = !DILocation(line: 961, column: 51, scope: !2828)
!2839 = !DILocation(line: 946, column: 23, scope: !2761, inlinedAt: !2836)
!2840 = !DILocation(line: 946, column: 45, scope: !2761, inlinedAt: !2836)
!2841 = !DILocation(line: 946, column: 60, scope: !2761, inlinedAt: !2836)
!2842 = !DILocation(line: 948, column: 3, scope: !2761, inlinedAt: !2836)
!2843 = !DILocation(line: 948, column: 32, scope: !2761, inlinedAt: !2836)
!2844 = !DILocation(line: 185, column: 48, scope: !2770, inlinedAt: !2835)
!2845 = !DILocation(line: 187, column: 3, scope: !2770, inlinedAt: !2835)
!2846 = !DILocation(line: 188, column: 13, scope: !2787, inlinedAt: !2835)
!2847 = !DILocation(line: 188, column: 7, scope: !2770, inlinedAt: !2835)
!2848 = !DILocation(line: 189, column: 5, scope: !2787, inlinedAt: !2835)
!2849 = !{!2850}
!2850 = distinct !{!2850, !2851, !"quoting_options_from_style: argument 0"}
!2851 = distinct !{!2851, !"quoting_options_from_style"}
!2852 = !DILocation(line: 191, column: 10, scope: !2770, inlinedAt: !2835)
!2853 = !DILocation(line: 192, column: 1, scope: !2770, inlinedAt: !2835)
!2854 = !DILocation(line: 949, column: 10, scope: !2761, inlinedAt: !2836)
!2855 = !DILocation(line: 950, column: 1, scope: !2761, inlinedAt: !2836)
!2856 = !DILocation(line: 963, column: 3, scope: !2828)
!2857 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !260, file: !260, line: 967, type: !2858, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!44, !5, !55, !47}
!2860 = !{!2861, !2862, !2863}
!2861 = !DILocalVariable(name: "s", arg: 1, scope: !2857, file: !260, line: 967, type: !5)
!2862 = !DILocalVariable(name: "arg", arg: 2, scope: !2857, file: !260, line: 967, type: !55)
!2863 = !DILocalVariable(name: "argsize", arg: 3, scope: !2857, file: !260, line: 967, type: !47)
!2864 = !DILocation(line: 187, column: 26, scope: !2770, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 956, column: 36, scope: !2798, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 969, column: 10, scope: !2857)
!2867 = !DILocation(line: 967, column: 40, scope: !2857)
!2868 = !DILocation(line: 967, column: 55, scope: !2857)
!2869 = !DILocation(line: 967, column: 67, scope: !2857)
!2870 = !DILocation(line: 953, column: 27, scope: !2798, inlinedAt: !2866)
!2871 = !DILocation(line: 953, column: 49, scope: !2798, inlinedAt: !2866)
!2872 = !DILocation(line: 954, column: 35, scope: !2798, inlinedAt: !2866)
!2873 = !DILocation(line: 954, column: 47, scope: !2798, inlinedAt: !2866)
!2874 = !DILocation(line: 956, column: 3, scope: !2798, inlinedAt: !2866)
!2875 = !DILocation(line: 956, column: 32, scope: !2798, inlinedAt: !2866)
!2876 = !DILocation(line: 185, column: 48, scope: !2770, inlinedAt: !2865)
!2877 = !DILocation(line: 187, column: 3, scope: !2770, inlinedAt: !2865)
!2878 = !DILocation(line: 188, column: 13, scope: !2787, inlinedAt: !2865)
!2879 = !DILocation(line: 188, column: 7, scope: !2770, inlinedAt: !2865)
!2880 = !DILocation(line: 189, column: 5, scope: !2787, inlinedAt: !2865)
!2881 = !{!2882}
!2882 = distinct !{!2882, !2883, !"quoting_options_from_style: argument 0"}
!2883 = distinct !{!2883, !"quoting_options_from_style"}
!2884 = !DILocation(line: 191, column: 10, scope: !2770, inlinedAt: !2865)
!2885 = !DILocation(line: 192, column: 1, scope: !2770, inlinedAt: !2865)
!2886 = !DILocation(line: 957, column: 10, scope: !2798, inlinedAt: !2866)
!2887 = !DILocation(line: 958, column: 1, scope: !2798, inlinedAt: !2866)
!2888 = !DILocation(line: 969, column: 3, scope: !2857)
!2889 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !260, file: !260, line: 973, type: !2890, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!44, !55, !47, !45}
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DILocalVariable(name: "arg", arg: 1, scope: !2889, file: !260, line: 973, type: !55)
!2894 = !DILocalVariable(name: "argsize", arg: 2, scope: !2889, file: !260, line: 973, type: !47)
!2895 = !DILocalVariable(name: "ch", arg: 3, scope: !2889, file: !260, line: 973, type: !45)
!2896 = !DILocalVariable(name: "options", scope: !2889, file: !260, line: 975, type: !267)
!2897 = !DILocation(line: 973, column: 32, scope: !2889)
!2898 = !DILocation(line: 973, column: 44, scope: !2889)
!2899 = !DILocation(line: 973, column: 58, scope: !2889)
!2900 = !DILocation(line: 975, column: 3, scope: !2889)
!2901 = !DILocation(line: 976, column: 13, scope: !2889)
!2902 = !{i64 0, i64 4, !834, i64 4, i64 4, !852, i64 8, i64 32, !834, i64 40, i64 8, !735, i64 48, i64 8, !735}
!2903 = !DILocation(line: 975, column: 26, scope: !2889)
!2904 = !DILocation(line: 144, column: 43, scope: !1354, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 977, column: 3, scope: !2889)
!2906 = !DILocation(line: 144, column: 51, scope: !1354, inlinedAt: !2905)
!2907 = !DILocation(line: 144, column: 58, scope: !1354, inlinedAt: !2905)
!2908 = !DILocation(line: 146, column: 17, scope: !1354, inlinedAt: !2905)
!2909 = !DILocation(line: 148, column: 62, scope: !1372, inlinedAt: !2905)
!2910 = !DILocation(line: 148, column: 57, scope: !1372, inlinedAt: !2905)
!2911 = !DILocation(line: 147, column: 17, scope: !1354, inlinedAt: !2905)
!2912 = !DILocation(line: 149, column: 18, scope: !1354, inlinedAt: !2905)
!2913 = !DILocation(line: 149, column: 15, scope: !1354, inlinedAt: !2905)
!2914 = !DILocation(line: 149, column: 7, scope: !1354, inlinedAt: !2905)
!2915 = !DILocation(line: 150, column: 12, scope: !1354, inlinedAt: !2905)
!2916 = !DILocation(line: 150, column: 15, scope: !1354, inlinedAt: !2905)
!2917 = !DILocation(line: 150, column: 25, scope: !1354, inlinedAt: !2905)
!2918 = !DILocation(line: 150, column: 7, scope: !1354, inlinedAt: !2905)
!2919 = !DILocation(line: 151, column: 18, scope: !1354, inlinedAt: !2905)
!2920 = !DILocation(line: 151, column: 23, scope: !1354, inlinedAt: !2905)
!2921 = !DILocation(line: 151, column: 6, scope: !1354, inlinedAt: !2905)
!2922 = !DILocation(line: 978, column: 10, scope: !2889)
!2923 = !DILocation(line: 979, column: 1, scope: !2889)
!2924 = !DILocation(line: 978, column: 3, scope: !2889)
!2925 = distinct !DISubprogram(name: "quotearg_char", scope: !260, file: !260, line: 982, type: !2926, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!44, !55, !45}
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "arg", arg: 1, scope: !2925, file: !260, line: 982, type: !55)
!2930 = !DILocalVariable(name: "ch", arg: 2, scope: !2925, file: !260, line: 982, type: !45)
!2931 = !DILocation(line: 982, column: 28, scope: !2925)
!2932 = !DILocation(line: 982, column: 38, scope: !2925)
!2933 = !DILocation(line: 973, column: 32, scope: !2889, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 984, column: 10, scope: !2925)
!2935 = !DILocation(line: 973, column: 44, scope: !2889, inlinedAt: !2934)
!2936 = !DILocation(line: 973, column: 58, scope: !2889, inlinedAt: !2934)
!2937 = !DILocation(line: 975, column: 3, scope: !2889, inlinedAt: !2934)
!2938 = !DILocation(line: 976, column: 13, scope: !2889, inlinedAt: !2934)
!2939 = !DILocation(line: 975, column: 26, scope: !2889, inlinedAt: !2934)
!2940 = !DILocation(line: 144, column: 43, scope: !1354, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 977, column: 3, scope: !2889, inlinedAt: !2934)
!2942 = !DILocation(line: 144, column: 51, scope: !1354, inlinedAt: !2941)
!2943 = !DILocation(line: 144, column: 58, scope: !1354, inlinedAt: !2941)
!2944 = !DILocation(line: 146, column: 17, scope: !1354, inlinedAt: !2941)
!2945 = !DILocation(line: 148, column: 62, scope: !1372, inlinedAt: !2941)
!2946 = !DILocation(line: 148, column: 57, scope: !1372, inlinedAt: !2941)
!2947 = !DILocation(line: 147, column: 17, scope: !1354, inlinedAt: !2941)
!2948 = !DILocation(line: 149, column: 18, scope: !1354, inlinedAt: !2941)
!2949 = !DILocation(line: 149, column: 15, scope: !1354, inlinedAt: !2941)
!2950 = !DILocation(line: 149, column: 7, scope: !1354, inlinedAt: !2941)
!2951 = !DILocation(line: 150, column: 12, scope: !1354, inlinedAt: !2941)
!2952 = !DILocation(line: 150, column: 15, scope: !1354, inlinedAt: !2941)
!2953 = !DILocation(line: 150, column: 25, scope: !1354, inlinedAt: !2941)
!2954 = !DILocation(line: 150, column: 7, scope: !1354, inlinedAt: !2941)
!2955 = !DILocation(line: 151, column: 18, scope: !1354, inlinedAt: !2941)
!2956 = !DILocation(line: 151, column: 23, scope: !1354, inlinedAt: !2941)
!2957 = !DILocation(line: 151, column: 6, scope: !1354, inlinedAt: !2941)
!2958 = !DILocation(line: 978, column: 10, scope: !2889, inlinedAt: !2934)
!2959 = !DILocation(line: 979, column: 1, scope: !2889, inlinedAt: !2934)
!2960 = !DILocation(line: 984, column: 3, scope: !2925)
!2961 = distinct !DISubprogram(name: "quotearg_colon", scope: !260, file: !260, line: 988, type: !2737, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2962)
!2962 = !{!2963}
!2963 = !DILocalVariable(name: "arg", arg: 1, scope: !2961, file: !260, line: 988, type: !55)
!2964 = !DILocation(line: 988, column: 29, scope: !2961)
!2965 = !DILocation(line: 982, column: 28, scope: !2925, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 990, column: 10, scope: !2961)
!2967 = !DILocation(line: 982, column: 38, scope: !2925, inlinedAt: !2966)
!2968 = !DILocation(line: 973, column: 32, scope: !2889, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 984, column: 10, scope: !2925, inlinedAt: !2966)
!2970 = !DILocation(line: 973, column: 44, scope: !2889, inlinedAt: !2969)
!2971 = !DILocation(line: 973, column: 58, scope: !2889, inlinedAt: !2969)
!2972 = !DILocation(line: 975, column: 3, scope: !2889, inlinedAt: !2969)
!2973 = !DILocation(line: 976, column: 13, scope: !2889, inlinedAt: !2969)
!2974 = !DILocation(line: 975, column: 26, scope: !2889, inlinedAt: !2969)
!2975 = !DILocation(line: 144, column: 43, scope: !1354, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 977, column: 3, scope: !2889, inlinedAt: !2969)
!2977 = !DILocation(line: 144, column: 51, scope: !1354, inlinedAt: !2976)
!2978 = !DILocation(line: 144, column: 58, scope: !1354, inlinedAt: !2976)
!2979 = !DILocation(line: 146, column: 17, scope: !1354, inlinedAt: !2976)
!2980 = !DILocation(line: 148, column: 57, scope: !1372, inlinedAt: !2976)
!2981 = !DILocation(line: 147, column: 17, scope: !1354, inlinedAt: !2976)
!2982 = !DILocation(line: 149, column: 7, scope: !1354, inlinedAt: !2976)
!2983 = !DILocation(line: 150, column: 12, scope: !1354, inlinedAt: !2976)
!2984 = !DILocation(line: 151, column: 6, scope: !1354, inlinedAt: !2976)
!2985 = !DILocation(line: 978, column: 10, scope: !2889, inlinedAt: !2969)
!2986 = !DILocation(line: 979, column: 1, scope: !2889, inlinedAt: !2969)
!2987 = !DILocation(line: 990, column: 3, scope: !2961)
!2988 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !260, file: !260, line: 994, type: !2748, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !2989)
!2989 = !{!2990, !2991}
!2990 = !DILocalVariable(name: "arg", arg: 1, scope: !2988, file: !260, line: 994, type: !55)
!2991 = !DILocalVariable(name: "argsize", arg: 2, scope: !2988, file: !260, line: 994, type: !47)
!2992 = !DILocation(line: 994, column: 33, scope: !2988)
!2993 = !DILocation(line: 994, column: 45, scope: !2988)
!2994 = !DILocation(line: 973, column: 32, scope: !2889, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 996, column: 10, scope: !2988)
!2996 = !DILocation(line: 973, column: 44, scope: !2889, inlinedAt: !2995)
!2997 = !DILocation(line: 973, column: 58, scope: !2889, inlinedAt: !2995)
!2998 = !DILocation(line: 975, column: 3, scope: !2889, inlinedAt: !2995)
!2999 = !DILocation(line: 976, column: 13, scope: !2889, inlinedAt: !2995)
!3000 = !DILocation(line: 975, column: 26, scope: !2889, inlinedAt: !2995)
!3001 = !DILocation(line: 144, column: 43, scope: !1354, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 977, column: 3, scope: !2889, inlinedAt: !2995)
!3003 = !DILocation(line: 144, column: 51, scope: !1354, inlinedAt: !3002)
!3004 = !DILocation(line: 144, column: 58, scope: !1354, inlinedAt: !3002)
!3005 = !DILocation(line: 146, column: 17, scope: !1354, inlinedAt: !3002)
!3006 = !DILocation(line: 148, column: 57, scope: !1372, inlinedAt: !3002)
!3007 = !DILocation(line: 147, column: 17, scope: !1354, inlinedAt: !3002)
!3008 = !DILocation(line: 149, column: 7, scope: !1354, inlinedAt: !3002)
!3009 = !DILocation(line: 150, column: 12, scope: !1354, inlinedAt: !3002)
!3010 = !DILocation(line: 151, column: 6, scope: !1354, inlinedAt: !3002)
!3011 = !DILocation(line: 978, column: 10, scope: !2889, inlinedAt: !2995)
!3012 = !DILocation(line: 979, column: 1, scope: !2889, inlinedAt: !2995)
!3013 = !DILocation(line: 996, column: 3, scope: !2988)
!3014 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !260, file: !260, line: 1000, type: !2762, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !3015)
!3015 = !{!3016, !3017, !3018, !3019}
!3016 = !DILocalVariable(name: "n", arg: 1, scope: !3014, file: !260, line: 1000, type: !57)
!3017 = !DILocalVariable(name: "s", arg: 2, scope: !3014, file: !260, line: 1000, type: !5)
!3018 = !DILocalVariable(name: "arg", arg: 3, scope: !3014, file: !260, line: 1000, type: !55)
!3019 = !DILocalVariable(name: "options", scope: !3014, file: !260, line: 1002, type: !267)
!3020 = !DILocation(line: 187, column: 26, scope: !2770, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 1003, column: 13, scope: !3014)
!3022 = !DILocation(line: 1000, column: 29, scope: !3014)
!3023 = !DILocation(line: 1000, column: 51, scope: !3014)
!3024 = !DILocation(line: 1000, column: 66, scope: !3014)
!3025 = !DILocation(line: 1002, column: 3, scope: !3014)
!3026 = !DILocation(line: 185, column: 48, scope: !2770, inlinedAt: !3021)
!3027 = !DILocation(line: 187, column: 3, scope: !2770, inlinedAt: !3021)
!3028 = !DILocation(line: 188, column: 13, scope: !2787, inlinedAt: !3021)
!3029 = !DILocation(line: 188, column: 7, scope: !2770, inlinedAt: !3021)
!3030 = !DILocation(line: 189, column: 5, scope: !2787, inlinedAt: !3021)
!3031 = !{!3032}
!3032 = distinct !{!3032, !3033, !"quoting_options_from_style: argument 0"}
!3033 = distinct !{!3033, !"quoting_options_from_style"}
!3034 = !DILocation(line: 191, column: 10, scope: !2770, inlinedAt: !3021)
!3035 = !DILocation(line: 192, column: 1, scope: !2770, inlinedAt: !3021)
!3036 = !DILocation(line: 1003, column: 13, scope: !3014)
!3037 = !DILocation(line: 1002, column: 26, scope: !3014)
!3038 = !DILocation(line: 144, column: 43, scope: !1354, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1004, column: 3, scope: !3014)
!3040 = !DILocation(line: 144, column: 51, scope: !1354, inlinedAt: !3039)
!3041 = !DILocation(line: 144, column: 58, scope: !1354, inlinedAt: !3039)
!3042 = !DILocation(line: 146, column: 17, scope: !1354, inlinedAt: !3039)
!3043 = !DILocation(line: 148, column: 57, scope: !1372, inlinedAt: !3039)
!3044 = !DILocation(line: 147, column: 17, scope: !1354, inlinedAt: !3039)
!3045 = !DILocation(line: 149, column: 7, scope: !1354, inlinedAt: !3039)
!3046 = !DILocation(line: 150, column: 12, scope: !1354, inlinedAt: !3039)
!3047 = !DILocation(line: 151, column: 6, scope: !1354, inlinedAt: !3039)
!3048 = !DILocation(line: 1005, column: 10, scope: !3014)
!3049 = !DILocation(line: 1006, column: 1, scope: !3014)
!3050 = !DILocation(line: 1005, column: 3, scope: !3014)
!3051 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !260, file: !260, line: 1009, type: !3052, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!44, !57, !55, !55, !55}
!3054 = !{!3055, !3056, !3057, !3058}
!3055 = !DILocalVariable(name: "n", arg: 1, scope: !3051, file: !260, line: 1009, type: !57)
!3056 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3051, file: !260, line: 1009, type: !55)
!3057 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3051, file: !260, line: 1010, type: !55)
!3058 = !DILocalVariable(name: "arg", arg: 4, scope: !3051, file: !260, line: 1010, type: !55)
!3059 = !DILocation(line: 1009, column: 24, scope: !3051)
!3060 = !DILocation(line: 1009, column: 39, scope: !3051)
!3061 = !DILocation(line: 1010, column: 32, scope: !3051)
!3062 = !DILocation(line: 1010, column: 57, scope: !3051)
!3063 = !DILocalVariable(name: "n", arg: 1, scope: !3064, file: !260, line: 1017, type: !57)
!3064 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !260, file: !260, line: 1017, type: !3065, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!44, !57, !55, !55, !55, !47}
!3067 = !{!3063, !3068, !3069, !3070, !3071, !3072}
!3068 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3064, file: !260, line: 1017, type: !55)
!3069 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3064, file: !260, line: 1018, type: !55)
!3070 = !DILocalVariable(name: "arg", arg: 4, scope: !3064, file: !260, line: 1019, type: !55)
!3071 = !DILocalVariable(name: "argsize", arg: 5, scope: !3064, file: !260, line: 1019, type: !47)
!3072 = !DILocalVariable(name: "o", scope: !3064, file: !260, line: 1021, type: !267)
!3073 = !DILocation(line: 1017, column: 28, scope: !3064, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 1012, column: 10, scope: !3051)
!3075 = !DILocation(line: 1017, column: 43, scope: !3064, inlinedAt: !3074)
!3076 = !DILocation(line: 1018, column: 36, scope: !3064, inlinedAt: !3074)
!3077 = !DILocation(line: 1019, column: 36, scope: !3064, inlinedAt: !3074)
!3078 = !DILocation(line: 1019, column: 48, scope: !3064, inlinedAt: !3074)
!3079 = !DILocation(line: 1021, column: 3, scope: !3064, inlinedAt: !3074)
!3080 = !DILocation(line: 1021, column: 30, scope: !3064, inlinedAt: !3074)
!3081 = !DILocation(line: 1021, column: 26, scope: !3064, inlinedAt: !3074)
!3082 = !DILocation(line: 171, column: 45, scope: !1404, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 1022, column: 3, scope: !3064, inlinedAt: !3074)
!3084 = !DILocation(line: 172, column: 33, scope: !1404, inlinedAt: !3083)
!3085 = !DILocation(line: 172, column: 57, scope: !1404, inlinedAt: !3083)
!3086 = !DILocation(line: 176, column: 6, scope: !1404, inlinedAt: !3083)
!3087 = !DILocation(line: 176, column: 12, scope: !1404, inlinedAt: !3083)
!3088 = !DILocation(line: 177, column: 8, scope: !1420, inlinedAt: !3083)
!3089 = !DILocation(line: 177, column: 23, scope: !1422, inlinedAt: !3083)
!3090 = !DILocation(line: 177, column: 19, scope: !1420, inlinedAt: !3083)
!3091 = !DILocation(line: 178, column: 5, scope: !1420, inlinedAt: !3083)
!3092 = !DILocation(line: 179, column: 6, scope: !1404, inlinedAt: !3083)
!3093 = !DILocation(line: 179, column: 17, scope: !1404, inlinedAt: !3083)
!3094 = !DILocation(line: 180, column: 6, scope: !1404, inlinedAt: !3083)
!3095 = !DILocation(line: 180, column: 18, scope: !1404, inlinedAt: !3083)
!3096 = !DILocation(line: 1023, column: 10, scope: !3064, inlinedAt: !3074)
!3097 = !DILocation(line: 1024, column: 1, scope: !3064, inlinedAt: !3074)
!3098 = !DILocation(line: 1012, column: 3, scope: !3051)
!3099 = !DILocation(line: 1017, column: 28, scope: !3064)
!3100 = !DILocation(line: 1017, column: 43, scope: !3064)
!3101 = !DILocation(line: 1018, column: 36, scope: !3064)
!3102 = !DILocation(line: 1019, column: 36, scope: !3064)
!3103 = !DILocation(line: 1019, column: 48, scope: !3064)
!3104 = !DILocation(line: 1021, column: 3, scope: !3064)
!3105 = !DILocation(line: 1021, column: 30, scope: !3064)
!3106 = !DILocation(line: 1021, column: 26, scope: !3064)
!3107 = !DILocation(line: 171, column: 45, scope: !1404, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 1022, column: 3, scope: !3064)
!3109 = !DILocation(line: 172, column: 33, scope: !1404, inlinedAt: !3108)
!3110 = !DILocation(line: 172, column: 57, scope: !1404, inlinedAt: !3108)
!3111 = !DILocation(line: 176, column: 6, scope: !1404, inlinedAt: !3108)
!3112 = !DILocation(line: 176, column: 12, scope: !1404, inlinedAt: !3108)
!3113 = !DILocation(line: 177, column: 8, scope: !1420, inlinedAt: !3108)
!3114 = !DILocation(line: 177, column: 23, scope: !1422, inlinedAt: !3108)
!3115 = !DILocation(line: 177, column: 19, scope: !1420, inlinedAt: !3108)
!3116 = !DILocation(line: 178, column: 5, scope: !1420, inlinedAt: !3108)
!3117 = !DILocation(line: 179, column: 6, scope: !1404, inlinedAt: !3108)
!3118 = !DILocation(line: 179, column: 17, scope: !1404, inlinedAt: !3108)
!3119 = !DILocation(line: 180, column: 6, scope: !1404, inlinedAt: !3108)
!3120 = !DILocation(line: 180, column: 18, scope: !1404, inlinedAt: !3108)
!3121 = !DILocation(line: 1023, column: 10, scope: !3064)
!3122 = !DILocation(line: 1024, column: 1, scope: !3064)
!3123 = !DILocation(line: 1023, column: 3, scope: !3064)
!3124 = distinct !DISubprogram(name: "quotearg_custom", scope: !260, file: !260, line: 1027, type: !3125, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!44, !55, !55, !55}
!3127 = !{!3128, !3129, !3130}
!3128 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3124, file: !260, line: 1027, type: !55)
!3129 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3124, file: !260, line: 1027, type: !55)
!3130 = !DILocalVariable(name: "arg", arg: 3, scope: !3124, file: !260, line: 1028, type: !55)
!3131 = !DILocation(line: 1027, column: 30, scope: !3124)
!3132 = !DILocation(line: 1027, column: 54, scope: !3124)
!3133 = !DILocation(line: 1028, column: 30, scope: !3124)
!3134 = !DILocation(line: 1009, column: 24, scope: !3051, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 1030, column: 10, scope: !3124)
!3136 = !DILocation(line: 1009, column: 39, scope: !3051, inlinedAt: !3135)
!3137 = !DILocation(line: 1010, column: 32, scope: !3051, inlinedAt: !3135)
!3138 = !DILocation(line: 1010, column: 57, scope: !3051, inlinedAt: !3135)
!3139 = !DILocation(line: 1017, column: 28, scope: !3064, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 1012, column: 10, scope: !3051, inlinedAt: !3135)
!3141 = !DILocation(line: 1017, column: 43, scope: !3064, inlinedAt: !3140)
!3142 = !DILocation(line: 1018, column: 36, scope: !3064, inlinedAt: !3140)
!3143 = !DILocation(line: 1019, column: 36, scope: !3064, inlinedAt: !3140)
!3144 = !DILocation(line: 1019, column: 48, scope: !3064, inlinedAt: !3140)
!3145 = !DILocation(line: 1021, column: 3, scope: !3064, inlinedAt: !3140)
!3146 = !DILocation(line: 1021, column: 30, scope: !3064, inlinedAt: !3140)
!3147 = !DILocation(line: 1021, column: 26, scope: !3064, inlinedAt: !3140)
!3148 = !DILocation(line: 171, column: 45, scope: !1404, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 1022, column: 3, scope: !3064, inlinedAt: !3140)
!3150 = !DILocation(line: 172, column: 33, scope: !1404, inlinedAt: !3149)
!3151 = !DILocation(line: 172, column: 57, scope: !1404, inlinedAt: !3149)
!3152 = !DILocation(line: 176, column: 6, scope: !1404, inlinedAt: !3149)
!3153 = !DILocation(line: 176, column: 12, scope: !1404, inlinedAt: !3149)
!3154 = !DILocation(line: 177, column: 8, scope: !1420, inlinedAt: !3149)
!3155 = !DILocation(line: 177, column: 23, scope: !1422, inlinedAt: !3149)
!3156 = !DILocation(line: 177, column: 19, scope: !1420, inlinedAt: !3149)
!3157 = !DILocation(line: 178, column: 5, scope: !1420, inlinedAt: !3149)
!3158 = !DILocation(line: 179, column: 6, scope: !1404, inlinedAt: !3149)
!3159 = !DILocation(line: 179, column: 17, scope: !1404, inlinedAt: !3149)
!3160 = !DILocation(line: 180, column: 6, scope: !1404, inlinedAt: !3149)
!3161 = !DILocation(line: 180, column: 18, scope: !1404, inlinedAt: !3149)
!3162 = !DILocation(line: 1023, column: 10, scope: !3064, inlinedAt: !3140)
!3163 = !DILocation(line: 1024, column: 1, scope: !3064, inlinedAt: !3140)
!3164 = !DILocation(line: 1030, column: 3, scope: !3124)
!3165 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !260, file: !260, line: 1034, type: !3166, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!44, !55, !55, !55, !47}
!3168 = !{!3169, !3170, !3171, !3172}
!3169 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3165, file: !260, line: 1034, type: !55)
!3170 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3165, file: !260, line: 1034, type: !55)
!3171 = !DILocalVariable(name: "arg", arg: 3, scope: !3165, file: !260, line: 1035, type: !55)
!3172 = !DILocalVariable(name: "argsize", arg: 4, scope: !3165, file: !260, line: 1035, type: !47)
!3173 = !DILocation(line: 1034, column: 34, scope: !3165)
!3174 = !DILocation(line: 1034, column: 58, scope: !3165)
!3175 = !DILocation(line: 1035, column: 34, scope: !3165)
!3176 = !DILocation(line: 1035, column: 46, scope: !3165)
!3177 = !DILocation(line: 1017, column: 28, scope: !3064, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 1037, column: 10, scope: !3165)
!3179 = !DILocation(line: 1017, column: 43, scope: !3064, inlinedAt: !3178)
!3180 = !DILocation(line: 1018, column: 36, scope: !3064, inlinedAt: !3178)
!3181 = !DILocation(line: 1019, column: 36, scope: !3064, inlinedAt: !3178)
!3182 = !DILocation(line: 1019, column: 48, scope: !3064, inlinedAt: !3178)
!3183 = !DILocation(line: 1021, column: 3, scope: !3064, inlinedAt: !3178)
!3184 = !DILocation(line: 1021, column: 30, scope: !3064, inlinedAt: !3178)
!3185 = !DILocation(line: 1021, column: 26, scope: !3064, inlinedAt: !3178)
!3186 = !DILocation(line: 171, column: 45, scope: !1404, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 1022, column: 3, scope: !3064, inlinedAt: !3178)
!3188 = !DILocation(line: 172, column: 33, scope: !1404, inlinedAt: !3187)
!3189 = !DILocation(line: 172, column: 57, scope: !1404, inlinedAt: !3187)
!3190 = !DILocation(line: 176, column: 6, scope: !1404, inlinedAt: !3187)
!3191 = !DILocation(line: 176, column: 12, scope: !1404, inlinedAt: !3187)
!3192 = !DILocation(line: 177, column: 8, scope: !1420, inlinedAt: !3187)
!3193 = !DILocation(line: 177, column: 23, scope: !1422, inlinedAt: !3187)
!3194 = !DILocation(line: 177, column: 19, scope: !1420, inlinedAt: !3187)
!3195 = !DILocation(line: 178, column: 5, scope: !1420, inlinedAt: !3187)
!3196 = !DILocation(line: 179, column: 6, scope: !1404, inlinedAt: !3187)
!3197 = !DILocation(line: 179, column: 17, scope: !1404, inlinedAt: !3187)
!3198 = !DILocation(line: 180, column: 6, scope: !1404, inlinedAt: !3187)
!3199 = !DILocation(line: 180, column: 18, scope: !1404, inlinedAt: !3187)
!3200 = !DILocation(line: 1023, column: 10, scope: !3064, inlinedAt: !3178)
!3201 = !DILocation(line: 1024, column: 1, scope: !3064, inlinedAt: !3178)
!3202 = !DILocation(line: 1037, column: 3, scope: !3165)
!3203 = distinct !DISubprogram(name: "quote_n_mem", scope: !260, file: !260, line: 1052, type: !3204, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!55, !57, !55, !47}
!3206 = !{!3207, !3208, !3209}
!3207 = !DILocalVariable(name: "n", arg: 1, scope: !3203, file: !260, line: 1052, type: !57)
!3208 = !DILocalVariable(name: "arg", arg: 2, scope: !3203, file: !260, line: 1052, type: !55)
!3209 = !DILocalVariable(name: "argsize", arg: 3, scope: !3203, file: !260, line: 1052, type: !47)
!3210 = !DILocation(line: 1052, column: 18, scope: !3203)
!3211 = !DILocation(line: 1052, column: 33, scope: !3203)
!3212 = !DILocation(line: 1052, column: 45, scope: !3203)
!3213 = !DILocation(line: 1054, column: 10, scope: !3203)
!3214 = !DILocation(line: 1054, column: 3, scope: !3203)
!3215 = distinct !DISubprogram(name: "quote_mem", scope: !260, file: !260, line: 1058, type: !3216, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!55, !55, !47}
!3218 = !{!3219, !3220}
!3219 = !DILocalVariable(name: "arg", arg: 1, scope: !3215, file: !260, line: 1058, type: !55)
!3220 = !DILocalVariable(name: "argsize", arg: 2, scope: !3215, file: !260, line: 1058, type: !47)
!3221 = !DILocation(line: 1058, column: 24, scope: !3215)
!3222 = !DILocation(line: 1058, column: 36, scope: !3215)
!3223 = !DILocation(line: 1052, column: 18, scope: !3203, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 1060, column: 10, scope: !3215)
!3225 = !DILocation(line: 1052, column: 33, scope: !3203, inlinedAt: !3224)
!3226 = !DILocation(line: 1052, column: 45, scope: !3203, inlinedAt: !3224)
!3227 = !DILocation(line: 1054, column: 10, scope: !3203, inlinedAt: !3224)
!3228 = !DILocation(line: 1060, column: 3, scope: !3215)
!3229 = distinct !DISubprogram(name: "quote_n", scope: !260, file: !260, line: 1064, type: !3230, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!55, !57, !55}
!3232 = !{!3233, !3234}
!3233 = !DILocalVariable(name: "n", arg: 1, scope: !3229, file: !260, line: 1064, type: !57)
!3234 = !DILocalVariable(name: "arg", arg: 2, scope: !3229, file: !260, line: 1064, type: !55)
!3235 = !DILocation(line: 1064, column: 14, scope: !3229)
!3236 = !DILocation(line: 1064, column: 29, scope: !3229)
!3237 = !DILocation(line: 1052, column: 18, scope: !3203, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 1066, column: 10, scope: !3229)
!3239 = !DILocation(line: 1052, column: 33, scope: !3203, inlinedAt: !3238)
!3240 = !DILocation(line: 1052, column: 45, scope: !3203, inlinedAt: !3238)
!3241 = !DILocation(line: 1054, column: 10, scope: !3203, inlinedAt: !3238)
!3242 = !DILocation(line: 1066, column: 3, scope: !3229)
!3243 = distinct !DISubprogram(name: "quote", scope: !260, file: !260, line: 1070, type: !3244, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !248, variables: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!55, !55}
!3246 = !{!3247}
!3247 = !DILocalVariable(name: "arg", arg: 1, scope: !3243, file: !260, line: 1070, type: !55)
!3248 = !DILocation(line: 1070, column: 20, scope: !3243)
!3249 = !DILocation(line: 1064, column: 14, scope: !3229, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 1072, column: 10, scope: !3243)
!3251 = !DILocation(line: 1064, column: 29, scope: !3229, inlinedAt: !3250)
!3252 = !DILocation(line: 1052, column: 18, scope: !3203, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 1066, column: 10, scope: !3229, inlinedAt: !3250)
!3254 = !DILocation(line: 1052, column: 33, scope: !3203, inlinedAt: !3253)
!3255 = !DILocation(line: 1052, column: 45, scope: !3203, inlinedAt: !3253)
!3256 = !DILocation(line: 1054, column: 10, scope: !3203, inlinedAt: !3253)
!3257 = !DILocation(line: 1072, column: 3, scope: !3243)
!3258 = distinct !DISubprogram(name: "version_etc_arn", scope: !663, file: !663, line: 62, type: !3259, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !3302)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{null, !3261, !55, !55, !55, !3301, !47}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !123, line: 49, baseType: !3263)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !125, line: 241, size: 1728, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3263, file: !125, line: 242, baseType: !57, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3263, file: !125, line: 247, baseType: !44, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3263, file: !125, line: 248, baseType: !44, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3263, file: !125, line: 249, baseType: !44, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3263, file: !125, line: 250, baseType: !44, size: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3263, file: !125, line: 251, baseType: !44, size: 64, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3263, file: !125, line: 252, baseType: !44, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3263, file: !125, line: 253, baseType: !44, size: 64, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3263, file: !125, line: 254, baseType: !44, size: 64, offset: 512)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3263, file: !125, line: 256, baseType: !44, size: 64, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3263, file: !125, line: 257, baseType: !44, size: 64, offset: 640)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3263, file: !125, line: 258, baseType: !44, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3263, file: !125, line: 260, baseType: !3278, size: 64, offset: 768)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !125, line: 156, size: 192, elements: !3280)
!3280 = !{!3281, !3282, !3284}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3279, file: !125, line: 157, baseType: !3278, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3279, file: !125, line: 158, baseType: !3283, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3279, file: !125, line: 162, baseType: !57, size: 32, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3263, file: !125, line: 262, baseType: !3283, size: 64, offset: 832)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3263, file: !125, line: 264, baseType: !57, size: 32, offset: 896)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3263, file: !125, line: 268, baseType: !57, size: 32, offset: 928)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3263, file: !125, line: 270, baseType: !151, size: 64, offset: 960)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3263, file: !125, line: 274, baseType: !58, size: 16, offset: 1024)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3263, file: !125, line: 275, baseType: !156, size: 8, offset: 1040)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3263, file: !125, line: 276, baseType: !158, size: 8, offset: 1048)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3263, file: !125, line: 280, baseType: !162, size: 64, offset: 1088)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3263, file: !125, line: 289, baseType: !165, size: 64, offset: 1152)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3263, file: !125, line: 297, baseType: !46, size: 64, offset: 1216)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3263, file: !125, line: 298, baseType: !46, size: 64, offset: 1280)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3263, file: !125, line: 299, baseType: !46, size: 64, offset: 1344)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3263, file: !125, line: 300, baseType: !46, size: 64, offset: 1408)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3263, file: !125, line: 302, baseType: !47, size: 64, offset: 1472)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3263, file: !125, line: 303, baseType: !57, size: 32, offset: 1536)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3263, file: !125, line: 305, baseType: !173, size: 160, offset: 1568)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308}
!3303 = !DILocalVariable(name: "stream", arg: 1, scope: !3258, file: !663, line: 62, type: !3261)
!3304 = !DILocalVariable(name: "command_name", arg: 2, scope: !3258, file: !663, line: 63, type: !55)
!3305 = !DILocalVariable(name: "package", arg: 3, scope: !3258, file: !663, line: 63, type: !55)
!3306 = !DILocalVariable(name: "version", arg: 4, scope: !3258, file: !663, line: 64, type: !55)
!3307 = !DILocalVariable(name: "authors", arg: 5, scope: !3258, file: !663, line: 65, type: !3301)
!3308 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3258, file: !663, line: 65, type: !47)
!3309 = !DILocation(line: 62, column: 24, scope: !3258)
!3310 = !DILocation(line: 63, column: 30, scope: !3258)
!3311 = !DILocation(line: 63, column: 56, scope: !3258)
!3312 = !DILocation(line: 64, column: 30, scope: !3258)
!3313 = !DILocation(line: 65, column: 39, scope: !3258)
!3314 = !DILocation(line: 65, column: 55, scope: !3258)
!3315 = !DILocation(line: 67, column: 7, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3258, file: !663, line: 67, column: 7)
!3317 = !DILocation(line: 67, column: 7, scope: !3258)
!3318 = !DILocation(line: 68, column: 5, scope: !3316)
!3319 = !DILocation(line: 70, column: 5, scope: !3316)
!3320 = !DILocation(line: 84, column: 3, scope: !3258)
!3321 = !DILocation(line: 84, column: 3, scope: !3322)
!3322 = !DILexicalBlockFile(scope: !3258, file: !663, discriminator: 1)
!3323 = !DILocation(line: 86, column: 3, scope: !3258)
!3324 = !DILocation(line: 86, column: 3, scope: !3322)
!3325 = !DILocation(line: 95, column: 3, scope: !3258)
!3326 = !DILocation(line: 99, column: 7, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3258, file: !663, line: 96, column: 5)
!3328 = !DILocation(line: 102, column: 7, scope: !3327)
!3329 = !DILocation(line: 102, column: 7, scope: !3330)
!3330 = !DILexicalBlockFile(scope: !3327, file: !663, discriminator: 1)
!3331 = !DILocation(line: 103, column: 7, scope: !3327)
!3332 = !DILocation(line: 106, column: 7, scope: !3327)
!3333 = !DILocation(line: 106, column: 7, scope: !3330)
!3334 = !DILocation(line: 107, column: 7, scope: !3327)
!3335 = !DILocation(line: 110, column: 7, scope: !3327)
!3336 = !DILocation(line: 110, column: 7, scope: !3330)
!3337 = !DILocation(line: 112, column: 7, scope: !3327)
!3338 = !DILocation(line: 117, column: 7, scope: !3327)
!3339 = !DILocation(line: 117, column: 7, scope: !3330)
!3340 = !DILocation(line: 119, column: 7, scope: !3327)
!3341 = !DILocation(line: 124, column: 7, scope: !3327)
!3342 = !DILocation(line: 124, column: 7, scope: !3330)
!3343 = !DILocation(line: 126, column: 7, scope: !3327)
!3344 = !DILocation(line: 131, column: 7, scope: !3327)
!3345 = !DILocation(line: 131, column: 7, scope: !3330)
!3346 = !DILocation(line: 134, column: 7, scope: !3327)
!3347 = !DILocation(line: 139, column: 7, scope: !3327)
!3348 = !DILocation(line: 139, column: 7, scope: !3330)
!3349 = !DILocation(line: 142, column: 7, scope: !3327)
!3350 = !DILocation(line: 147, column: 7, scope: !3327)
!3351 = !DILocation(line: 147, column: 7, scope: !3330)
!3352 = !DILocation(line: 151, column: 7, scope: !3327)
!3353 = !DILocation(line: 156, column: 7, scope: !3327)
!3354 = !DILocation(line: 156, column: 7, scope: !3330)
!3355 = !DILocation(line: 160, column: 7, scope: !3327)
!3356 = !DILocation(line: 167, column: 7, scope: !3327)
!3357 = !DILocation(line: 167, column: 7, scope: !3330)
!3358 = !DILocation(line: 171, column: 7, scope: !3327)
!3359 = !DILocation(line: 173, column: 1, scope: !3258)
!3360 = distinct !DISubprogram(name: "version_etc_ar", scope: !663, file: !663, line: 180, type: !3361, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3261, !55, !55, !55, !3301}
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369}
!3364 = !DILocalVariable(name: "stream", arg: 1, scope: !3360, file: !663, line: 180, type: !3261)
!3365 = !DILocalVariable(name: "command_name", arg: 2, scope: !3360, file: !663, line: 181, type: !55)
!3366 = !DILocalVariable(name: "package", arg: 3, scope: !3360, file: !663, line: 181, type: !55)
!3367 = !DILocalVariable(name: "version", arg: 4, scope: !3360, file: !663, line: 182, type: !55)
!3368 = !DILocalVariable(name: "authors", arg: 5, scope: !3360, file: !663, line: 182, type: !3301)
!3369 = !DILocalVariable(name: "n_authors", scope: !3360, file: !663, line: 184, type: !47)
!3370 = !DILocation(line: 180, column: 23, scope: !3360)
!3371 = !DILocation(line: 181, column: 29, scope: !3360)
!3372 = !DILocation(line: 181, column: 55, scope: !3360)
!3373 = !DILocation(line: 182, column: 29, scope: !3360)
!3374 = !DILocation(line: 182, column: 59, scope: !3360)
!3375 = !DILocation(line: 184, column: 10, scope: !3360)
!3376 = !DILocation(line: 186, column: 8, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3360, file: !663, line: 186, column: 3)
!3378 = !DILocation(line: 186, column: 23, scope: !3379)
!3379 = !DILexicalBlockFile(scope: !3380, file: !663, discriminator: 1)
!3380 = distinct !DILexicalBlock(scope: !3377, file: !663, line: 186, column: 3)
!3381 = !DILocation(line: 186, column: 3, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !3377, file: !663, discriminator: 1)
!3383 = !DILocation(line: 186, column: 52, scope: !3384)
!3384 = !DILexicalBlockFile(scope: !3380, file: !663, discriminator: 3)
!3385 = distinct !{!3385, !3386, !3387}
!3386 = !DILocation(line: 186, column: 3, scope: !3377)
!3387 = !DILocation(line: 187, column: 5, scope: !3377)
!3388 = !DILocation(line: 188, column: 3, scope: !3360)
!3389 = !DILocation(line: 189, column: 1, scope: !3360)
!3390 = distinct !DISubprogram(name: "version_etc_va", scope: !663, file: !663, line: 196, type: !3391, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !3400)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !3261, !55, !55, !55, !3393}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !660, line: 189, size: 192, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3399}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3394, file: !660, line: 189, baseType: !273, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3394, file: !660, line: 189, baseType: !273, size: 32, offset: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3394, file: !660, line: 189, baseType: !46, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3394, file: !660, line: 189, baseType: !46, size: 64, offset: 128)
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407}
!3401 = !DILocalVariable(name: "stream", arg: 1, scope: !3390, file: !663, line: 196, type: !3261)
!3402 = !DILocalVariable(name: "command_name", arg: 2, scope: !3390, file: !663, line: 197, type: !55)
!3403 = !DILocalVariable(name: "package", arg: 3, scope: !3390, file: !663, line: 197, type: !55)
!3404 = !DILocalVariable(name: "version", arg: 4, scope: !3390, file: !663, line: 198, type: !55)
!3405 = !DILocalVariable(name: "authors", arg: 5, scope: !3390, file: !663, line: 198, type: !3393)
!3406 = !DILocalVariable(name: "n_authors", scope: !3390, file: !663, line: 200, type: !47)
!3407 = !DILocalVariable(name: "authtab", scope: !3390, file: !663, line: 201, type: !3408)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 640, elements: !263)
!3409 = !DILocation(line: 196, column: 23, scope: !3390)
!3410 = !DILocation(line: 197, column: 29, scope: !3390)
!3411 = !DILocation(line: 197, column: 55, scope: !3390)
!3412 = !DILocation(line: 198, column: 29, scope: !3390)
!3413 = !DILocation(line: 198, column: 46, scope: !3390)
!3414 = !DILocation(line: 201, column: 3, scope: !3390)
!3415 = !DILocation(line: 201, column: 15, scope: !3390)
!3416 = !DILocation(line: 200, column: 10, scope: !3390)
!3417 = !DILocation(line: 205, column: 35, scope: !3418)
!3418 = !DILexicalBlockFile(scope: !3419, file: !663, discriminator: 1)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !663, line: 203, column: 3)
!3420 = distinct !DILexicalBlock(scope: !3390, file: !663, line: 203, column: 3)
!3421 = !DILocation(line: 205, column: 35, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3419, file: !663, discriminator: 2)
!3423 = !DILocation(line: 205, column: 35, scope: !3424)
!3424 = !DILexicalBlockFile(scope: !3419, file: !663, discriminator: 3)
!3425 = !DILocation(line: 205, column: 35, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3419, file: !663, discriminator: 4)
!3427 = !DILocation(line: 205, column: 14, scope: !3426)
!3428 = !DILocation(line: 205, column: 33, scope: !3426)
!3429 = !DILocation(line: 205, column: 67, scope: !3426)
!3430 = !DILocation(line: 203, column: 3, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3420, file: !663, discriminator: 1)
!3432 = !DILocation(line: 208, column: 3, scope: !3390)
!3433 = !DILocation(line: 210, column: 1, scope: !3390)
!3434 = distinct !DISubprogram(name: "version_etc", scope: !663, file: !663, line: 227, type: !3435, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !3261, !55, !55, !55, null}
!3437 = !{!3438, !3439, !3440, !3441, !3442}
!3438 = !DILocalVariable(name: "stream", arg: 1, scope: !3434, file: !663, line: 227, type: !3261)
!3439 = !DILocalVariable(name: "command_name", arg: 2, scope: !3434, file: !663, line: 228, type: !55)
!3440 = !DILocalVariable(name: "package", arg: 3, scope: !3434, file: !663, line: 228, type: !55)
!3441 = !DILocalVariable(name: "version", arg: 4, scope: !3434, file: !663, line: 229, type: !55)
!3442 = !DILocalVariable(name: "authors", scope: !3434, file: !663, line: 231, type: !3443)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !123, line: 80, baseType: !3444)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3445, line: 50, baseType: !3446)
!3445 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !660, line: 231, baseType: !3447)
!3447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3394, size: 192, elements: !159)
!3448 = !DILocation(line: 227, column: 20, scope: !3434)
!3449 = !DILocation(line: 228, column: 26, scope: !3434)
!3450 = !DILocation(line: 228, column: 52, scope: !3434)
!3451 = !DILocation(line: 229, column: 26, scope: !3434)
!3452 = !DILocation(line: 231, column: 3, scope: !3434)
!3453 = !DILocation(line: 231, column: 11, scope: !3434)
!3454 = !DILocation(line: 233, column: 3, scope: !3434)
!3455 = !DILocation(line: 234, column: 3, scope: !3434)
!3456 = !DILocation(line: 235, column: 3, scope: !3434)
!3457 = !DILocation(line: 236, column: 1, scope: !3434)
!3458 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !663, file: !663, line: 239, type: !751, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !222)
!3459 = !DILocation(line: 245, column: 3, scope: !3458)
!3460 = !DILocation(line: 245, column: 3, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3458, file: !663, discriminator: 1)
!3462 = !DILocation(line: 251, column: 3, scope: !3458)
!3463 = !DILocation(line: 251, column: 3, scope: !3461)
!3464 = !DILocation(line: 256, column: 3, scope: !3458)
!3465 = !DILocation(line: 256, column: 3, scope: !3461)
!3466 = !DILocation(line: 258, column: 1, scope: !3458)
!3467 = distinct !DISubprogram(name: "xnmalloc", scope: !671, file: !671, line: 105, type: !3468, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!46, !47, !47}
!3470 = !{!3471, !3472}
!3471 = !DILocalVariable(name: "n", arg: 1, scope: !3467, file: !671, line: 105, type: !47)
!3472 = !DILocalVariable(name: "s", arg: 2, scope: !3467, file: !671, line: 105, type: !47)
!3473 = !DILocation(line: 105, column: 18, scope: !3467)
!3474 = !DILocation(line: 105, column: 28, scope: !3467)
!3475 = !DILocation(line: 107, column: 7, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3467, file: !671, line: 107, column: 7)
!3477 = !DILocation(line: 107, column: 7, scope: !3467)
!3478 = !DILocation(line: 108, column: 5, scope: !3476)
!3479 = !DILocation(line: 109, column: 21, scope: !3467)
!3480 = !DILocalVariable(name: "n", arg: 1, scope: !3481, file: !3482, line: 39, type: !47)
!3481 = distinct !DISubprogram(name: "xmalloc", scope: !3482, file: !3482, line: 39, type: !3483, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3485)
!3482 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!46, !47}
!3485 = !{!3480, !3486}
!3486 = !DILocalVariable(name: "p", scope: !3481, file: !3482, line: 41, type: !46)
!3487 = !DILocation(line: 39, column: 17, scope: !3481, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 109, column: 10, scope: !3467)
!3489 = !DILocation(line: 41, column: 13, scope: !3481, inlinedAt: !3488)
!3490 = !DILocation(line: 41, column: 9, scope: !3481, inlinedAt: !3488)
!3491 = !DILocation(line: 42, column: 8, scope: !3492, inlinedAt: !3488)
!3492 = distinct !DILexicalBlock(scope: !3481, file: !3482, line: 42, column: 7)
!3493 = !DILocation(line: 42, column: 15, scope: !3494, inlinedAt: !3488)
!3494 = !DILexicalBlockFile(scope: !3492, file: !3482, discriminator: 1)
!3495 = !DILocation(line: 42, column: 10, scope: !3492, inlinedAt: !3488)
!3496 = !DILocation(line: 43, column: 5, scope: !3492, inlinedAt: !3488)
!3497 = !DILocation(line: 109, column: 3, scope: !3467)
!3498 = !DILocation(line: 39, column: 17, scope: !3481)
!3499 = !DILocation(line: 41, column: 13, scope: !3481)
!3500 = !DILocation(line: 41, column: 9, scope: !3481)
!3501 = !DILocation(line: 42, column: 8, scope: !3492)
!3502 = !DILocation(line: 42, column: 15, scope: !3494)
!3503 = !DILocation(line: 42, column: 10, scope: !3492)
!3504 = !DILocation(line: 43, column: 5, scope: !3492)
!3505 = !DILocation(line: 44, column: 3, scope: !3481)
!3506 = distinct !DISubprogram(name: "xnrealloc", scope: !671, file: !671, line: 118, type: !3507, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!46, !46, !47, !47}
!3509 = !{!3510, !3511, !3512}
!3510 = !DILocalVariable(name: "p", arg: 1, scope: !3506, file: !671, line: 118, type: !46)
!3511 = !DILocalVariable(name: "n", arg: 2, scope: !3506, file: !671, line: 118, type: !47)
!3512 = !DILocalVariable(name: "s", arg: 3, scope: !3506, file: !671, line: 118, type: !47)
!3513 = !DILocation(line: 118, column: 18, scope: !3506)
!3514 = !DILocation(line: 118, column: 28, scope: !3506)
!3515 = !DILocation(line: 118, column: 38, scope: !3506)
!3516 = !DILocation(line: 120, column: 7, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3506, file: !671, line: 120, column: 7)
!3518 = !DILocation(line: 120, column: 7, scope: !3506)
!3519 = !DILocation(line: 121, column: 5, scope: !3517)
!3520 = !DILocation(line: 122, column: 25, scope: !3506)
!3521 = !DILocalVariable(name: "p", arg: 1, scope: !3522, file: !3482, line: 51, type: !46)
!3522 = distinct !DISubprogram(name: "xrealloc", scope: !3482, file: !3482, line: 51, type: !3523, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!46, !46, !47}
!3525 = !{!3521, !3526}
!3526 = !DILocalVariable(name: "n", arg: 2, scope: !3522, file: !3482, line: 51, type: !47)
!3527 = !DILocation(line: 51, column: 17, scope: !3522, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 122, column: 10, scope: !3506)
!3529 = !DILocation(line: 51, column: 27, scope: !3522, inlinedAt: !3528)
!3530 = !DILocation(line: 53, column: 8, scope: !3531, inlinedAt: !3528)
!3531 = distinct !DILexicalBlock(scope: !3522, file: !3482, line: 53, column: 7)
!3532 = !DILocation(line: 53, column: 13, scope: !3533, inlinedAt: !3528)
!3533 = !DILexicalBlockFile(scope: !3531, file: !3482, discriminator: 1)
!3534 = !DILocation(line: 53, column: 10, scope: !3531, inlinedAt: !3528)
!3535 = !DILocation(line: 57, column: 7, scope: !3536, inlinedAt: !3528)
!3536 = distinct !DILexicalBlock(scope: !3531, file: !3482, line: 54, column: 5)
!3537 = !DILocation(line: 58, column: 7, scope: !3536, inlinedAt: !3528)
!3538 = !DILocation(line: 61, column: 7, scope: !3522, inlinedAt: !3528)
!3539 = !DILocation(line: 62, column: 8, scope: !3540, inlinedAt: !3528)
!3540 = distinct !DILexicalBlock(scope: !3522, file: !3482, line: 62, column: 7)
!3541 = !DILocation(line: 62, column: 13, scope: !3542, inlinedAt: !3528)
!3542 = !DILexicalBlockFile(scope: !3540, file: !3482, discriminator: 1)
!3543 = !DILocation(line: 62, column: 10, scope: !3540, inlinedAt: !3528)
!3544 = !DILocation(line: 63, column: 5, scope: !3540, inlinedAt: !3528)
!3545 = !DILocation(line: 122, column: 3, scope: !3506)
!3546 = !DILocation(line: 51, column: 17, scope: !3522)
!3547 = !DILocation(line: 51, column: 27, scope: !3522)
!3548 = !DILocation(line: 53, column: 8, scope: !3531)
!3549 = !DILocation(line: 53, column: 13, scope: !3533)
!3550 = !DILocation(line: 53, column: 10, scope: !3531)
!3551 = !DILocation(line: 57, column: 7, scope: !3536)
!3552 = !DILocation(line: 58, column: 7, scope: !3536)
!3553 = !DILocation(line: 61, column: 7, scope: !3522)
!3554 = !DILocation(line: 62, column: 8, scope: !3540)
!3555 = !DILocation(line: 62, column: 13, scope: !3542)
!3556 = !DILocation(line: 62, column: 10, scope: !3540)
!3557 = !DILocation(line: 63, column: 5, scope: !3540)
!3558 = !DILocation(line: 65, column: 1, scope: !3522)
!3559 = !DILocation(line: 180, column: 19, scope: !672)
!3560 = !DILocation(line: 180, column: 30, scope: !672)
!3561 = !DILocation(line: 180, column: 41, scope: !672)
!3562 = !DILocation(line: 182, column: 14, scope: !672)
!3563 = !DILocation(line: 182, column: 10, scope: !672)
!3564 = !DILocation(line: 184, column: 9, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !672, file: !671, line: 184, column: 7)
!3566 = !DILocation(line: 184, column: 7, scope: !672)
!3567 = !DILocation(line: 186, column: 13, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !671, line: 186, column: 11)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !671, line: 185, column: 5)
!3570 = !DILocation(line: 186, column: 11, scope: !3569)
!3571 = !DILocation(line: 194, column: 30, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3568, file: !671, line: 187, column: 9)
!3573 = !DILocation(line: 195, column: 16, scope: !3572)
!3574 = !DILocation(line: 195, column: 13, scope: !3572)
!3575 = !DILocation(line: 196, column: 9, scope: !3572)
!3576 = !DILocation(line: 204, column: 69, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !671, line: 204, column: 11)
!3578 = distinct !DILexicalBlock(scope: !3565, file: !671, line: 199, column: 5)
!3579 = !DILocation(line: 205, column: 11, scope: !3577)
!3580 = !DILocation(line: 204, column: 11, scope: !3578)
!3581 = !DILocation(line: 206, column: 9, scope: !3577)
!3582 = !DILocation(line: 210, column: 7, scope: !672)
!3583 = !DILocation(line: 211, column: 25, scope: !672)
!3584 = !DILocation(line: 51, column: 17, scope: !3522, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 211, column: 10, scope: !672)
!3586 = !DILocation(line: 51, column: 27, scope: !3522, inlinedAt: !3585)
!3587 = !DILocation(line: 53, column: 10, scope: !3531, inlinedAt: !3585)
!3588 = !DILocation(line: 207, column: 14, scope: !3578)
!3589 = !DILocation(line: 207, column: 18, scope: !3578)
!3590 = !DILocation(line: 207, column: 9, scope: !3578)
!3591 = !DILocation(line: 53, column: 8, scope: !3531, inlinedAt: !3585)
!3592 = !DILocation(line: 57, column: 7, scope: !3536, inlinedAt: !3585)
!3593 = !DILocation(line: 58, column: 7, scope: !3536, inlinedAt: !3585)
!3594 = !DILocation(line: 61, column: 7, scope: !3522, inlinedAt: !3585)
!3595 = !DILocation(line: 62, column: 8, scope: !3540, inlinedAt: !3585)
!3596 = !DILocation(line: 62, column: 13, scope: !3542, inlinedAt: !3585)
!3597 = !DILocation(line: 62, column: 10, scope: !3540, inlinedAt: !3585)
!3598 = !DILocation(line: 63, column: 5, scope: !3540, inlinedAt: !3585)
!3599 = !DILocation(line: 211, column: 3, scope: !672)
!3600 = distinct !DISubprogram(name: "xcharalloc", scope: !671, file: !671, line: 220, type: !2532, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3601)
!3601 = !{!3602}
!3602 = !DILocalVariable(name: "n", arg: 1, scope: !3600, file: !671, line: 220, type: !47)
!3603 = !DILocation(line: 220, column: 20, scope: !3600)
!3604 = !DILocation(line: 39, column: 17, scope: !3481, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 222, column: 10, scope: !3600)
!3606 = !DILocation(line: 41, column: 13, scope: !3481, inlinedAt: !3605)
!3607 = !DILocation(line: 41, column: 9, scope: !3481, inlinedAt: !3605)
!3608 = !DILocation(line: 42, column: 8, scope: !3492, inlinedAt: !3605)
!3609 = !DILocation(line: 42, column: 15, scope: !3494, inlinedAt: !3605)
!3610 = !DILocation(line: 42, column: 10, scope: !3492, inlinedAt: !3605)
!3611 = !DILocation(line: 43, column: 5, scope: !3492, inlinedAt: !3605)
!3612 = !DILocation(line: 222, column: 3, scope: !3600)
!3613 = distinct !DISubprogram(name: "x2realloc", scope: !3482, file: !3482, line: 74, type: !3614, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!46, !46, !675}
!3616 = !{!3617, !3618}
!3617 = !DILocalVariable(name: "p", arg: 1, scope: !3613, file: !3482, line: 74, type: !46)
!3618 = !DILocalVariable(name: "pn", arg: 2, scope: !3613, file: !3482, line: 74, type: !675)
!3619 = !DILocation(line: 74, column: 18, scope: !3613)
!3620 = !DILocation(line: 74, column: 29, scope: !3613)
!3621 = !DILocation(line: 180, column: 19, scope: !672, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 76, column: 10, scope: !3613)
!3623 = !DILocation(line: 180, column: 30, scope: !672, inlinedAt: !3622)
!3624 = !DILocation(line: 180, column: 41, scope: !672, inlinedAt: !3622)
!3625 = !DILocation(line: 182, column: 14, scope: !672, inlinedAt: !3622)
!3626 = !DILocation(line: 182, column: 10, scope: !672, inlinedAt: !3622)
!3627 = !DILocation(line: 184, column: 9, scope: !3565, inlinedAt: !3622)
!3628 = !DILocation(line: 184, column: 7, scope: !672, inlinedAt: !3622)
!3629 = !DILocation(line: 186, column: 13, scope: !3568, inlinedAt: !3622)
!3630 = !DILocation(line: 186, column: 11, scope: !3569, inlinedAt: !3622)
!3631 = !DILocation(line: 210, column: 7, scope: !672, inlinedAt: !3622)
!3632 = !DILocation(line: 51, column: 17, scope: !3522, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 211, column: 10, scope: !672, inlinedAt: !3622)
!3634 = !DILocation(line: 51, column: 27, scope: !3522, inlinedAt: !3633)
!3635 = !DILocation(line: 53, column: 10, scope: !3531, inlinedAt: !3633)
!3636 = !DILocation(line: 205, column: 11, scope: !3577, inlinedAt: !3622)
!3637 = !DILocation(line: 204, column: 11, scope: !3578, inlinedAt: !3622)
!3638 = !DILocation(line: 206, column: 9, scope: !3577, inlinedAt: !3622)
!3639 = !DILocation(line: 207, column: 14, scope: !3578, inlinedAt: !3622)
!3640 = !DILocation(line: 207, column: 18, scope: !3578, inlinedAt: !3622)
!3641 = !DILocation(line: 207, column: 9, scope: !3578, inlinedAt: !3622)
!3642 = !DILocation(line: 53, column: 8, scope: !3531, inlinedAt: !3633)
!3643 = !DILocation(line: 57, column: 7, scope: !3536, inlinedAt: !3633)
!3644 = !DILocation(line: 58, column: 7, scope: !3536, inlinedAt: !3633)
!3645 = !DILocation(line: 61, column: 7, scope: !3522, inlinedAt: !3633)
!3646 = !DILocation(line: 62, column: 8, scope: !3540, inlinedAt: !3633)
!3647 = !DILocation(line: 62, column: 13, scope: !3542, inlinedAt: !3633)
!3648 = !DILocation(line: 62, column: 10, scope: !3540, inlinedAt: !3633)
!3649 = !DILocation(line: 63, column: 5, scope: !3540, inlinedAt: !3633)
!3650 = !DILocation(line: 76, column: 3, scope: !3613)
!3651 = distinct !DISubprogram(name: "xzalloc", scope: !3482, file: !3482, line: 84, type: !3483, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3652)
!3652 = !{!3653}
!3653 = !DILocalVariable(name: "s", arg: 1, scope: !3651, file: !3482, line: 84, type: !47)
!3654 = !DILocation(line: 84, column: 17, scope: !3651)
!3655 = !DILocation(line: 39, column: 17, scope: !3481, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 86, column: 18, scope: !3651)
!3657 = !DILocation(line: 41, column: 13, scope: !3481, inlinedAt: !3656)
!3658 = !DILocation(line: 41, column: 9, scope: !3481, inlinedAt: !3656)
!3659 = !DILocation(line: 42, column: 8, scope: !3492, inlinedAt: !3656)
!3660 = !DILocation(line: 42, column: 15, scope: !3494, inlinedAt: !3656)
!3661 = !DILocation(line: 42, column: 10, scope: !3492, inlinedAt: !3656)
!3662 = !DILocation(line: 43, column: 5, scope: !3492, inlinedAt: !3656)
!3663 = !DILocation(line: 86, column: 10, scope: !3651)
!3664 = !DILocation(line: 86, column: 3, scope: !3651)
!3665 = distinct !DISubprogram(name: "xcalloc", scope: !3482, file: !3482, line: 93, type: !3468, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3666)
!3666 = !{!3667, !3668, !3669}
!3667 = !DILocalVariable(name: "n", arg: 1, scope: !3665, file: !3482, line: 93, type: !47)
!3668 = !DILocalVariable(name: "s", arg: 2, scope: !3665, file: !3482, line: 93, type: !47)
!3669 = !DILocalVariable(name: "p", scope: !3665, file: !3482, line: 95, type: !46)
!3670 = !DILocation(line: 93, column: 17, scope: !3665)
!3671 = !DILocation(line: 93, column: 27, scope: !3665)
!3672 = !DILocation(line: 100, column: 7, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3665, file: !3482, line: 100, column: 7)
!3674 = !DILocation(line: 101, column: 7, scope: !3673)
!3675 = !DILocation(line: 101, column: 18, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !3673, file: !3482, discriminator: 1)
!3677 = !DILocation(line: 95, column: 9, scope: !3665)
!3678 = !DILocation(line: 101, column: 16, scope: !3676)
!3679 = !DILocation(line: 100, column: 7, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !3665, file: !3482, discriminator: 1)
!3681 = !DILocation(line: 102, column: 5, scope: !3673)
!3682 = !DILocation(line: 103, column: 3, scope: !3665)
!3683 = distinct !DISubprogram(name: "xmemdup", scope: !3482, file: !3482, line: 111, type: !3684, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!46, !50, !47}
!3686 = !{!3687, !3688}
!3687 = !DILocalVariable(name: "p", arg: 1, scope: !3683, file: !3482, line: 111, type: !50)
!3688 = !DILocalVariable(name: "s", arg: 2, scope: !3683, file: !3482, line: 111, type: !47)
!3689 = !DILocation(line: 111, column: 22, scope: !3683)
!3690 = !DILocation(line: 111, column: 32, scope: !3683)
!3691 = !DILocation(line: 39, column: 17, scope: !3481, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 113, column: 18, scope: !3683)
!3693 = !DILocation(line: 41, column: 13, scope: !3481, inlinedAt: !3692)
!3694 = !DILocation(line: 41, column: 9, scope: !3481, inlinedAt: !3692)
!3695 = !DILocation(line: 42, column: 8, scope: !3492, inlinedAt: !3692)
!3696 = !DILocation(line: 42, column: 15, scope: !3494, inlinedAt: !3692)
!3697 = !DILocation(line: 42, column: 10, scope: !3492, inlinedAt: !3692)
!3698 = !DILocation(line: 43, column: 5, scope: !3492, inlinedAt: !3692)
!3699 = !DILocation(line: 113, column: 10, scope: !3683)
!3700 = !DILocation(line: 113, column: 3, scope: !3683)
!3701 = distinct !DISubprogram(name: "xstrdup", scope: !3482, file: !3482, line: 119, type: !2737, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !3702)
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "string", arg: 1, scope: !3701, file: !3482, line: 119, type: !55)
!3704 = !DILocation(line: 119, column: 22, scope: !3701)
!3705 = !DILocation(line: 121, column: 27, scope: !3701)
!3706 = !DILocation(line: 121, column: 43, scope: !3701)
!3707 = !DILocation(line: 111, column: 22, scope: !3683, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 121, column: 10, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !3701, file: !3482, discriminator: 1)
!3710 = !DILocation(line: 111, column: 32, scope: !3683, inlinedAt: !3708)
!3711 = !DILocation(line: 39, column: 17, scope: !3481, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 113, column: 18, scope: !3683, inlinedAt: !3708)
!3713 = !DILocation(line: 41, column: 13, scope: !3481, inlinedAt: !3712)
!3714 = !DILocation(line: 41, column: 9, scope: !3481, inlinedAt: !3712)
!3715 = !DILocation(line: 42, column: 8, scope: !3492, inlinedAt: !3712)
!3716 = !DILocation(line: 42, column: 15, scope: !3494, inlinedAt: !3712)
!3717 = !DILocation(line: 42, column: 10, scope: !3492, inlinedAt: !3712)
!3718 = !DILocation(line: 43, column: 5, scope: !3492, inlinedAt: !3712)
!3719 = !DILocation(line: 113, column: 10, scope: !3683, inlinedAt: !3708)
!3720 = !DILocation(line: 121, column: 3, scope: !3701)
!3721 = distinct !DISubprogram(name: "xalloc_die", scope: !3722, file: !3722, line: 32, type: !751, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !684, variables: !222)
!3722 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3723 = !DILocation(line: 34, column: 10, scope: !3721)
!3724 = !DILocation(line: 34, column: 33, scope: !3721)
!3725 = !DILocation(line: 34, column: 3, scope: !3726)
!3726 = !DILexicalBlockFile(scope: !3721, file: !3722, discriminator: 1)
!3727 = !DILocation(line: 40, column: 3, scope: !3721)
!3728 = distinct !DISubprogram(name: "xnumtoumax", scope: !3729, file: !3729, line: 36, type: !3730, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3735)
!3729 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!3732, !55, !57, !3732, !3732, !55, !55, !57}
!3732 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3733, line: 136, baseType: !3734)
!3733 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !152, line: 62, baseType: !49)
!3735 = !{!3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3745}
!3736 = !DILocalVariable(name: "n_str", arg: 1, scope: !3728, file: !3729, line: 36, type: !55)
!3737 = !DILocalVariable(name: "base", arg: 2, scope: !3728, file: !3729, line: 36, type: !57)
!3738 = !DILocalVariable(name: "min", arg: 3, scope: !3728, file: !3729, line: 36, type: !3732)
!3739 = !DILocalVariable(name: "max", arg: 4, scope: !3728, file: !3729, line: 36, type: !3732)
!3740 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3728, file: !3729, line: 37, type: !55)
!3741 = !DILocalVariable(name: "err", arg: 6, scope: !3728, file: !3729, line: 37, type: !55)
!3742 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3728, file: !3729, line: 37, type: !57)
!3743 = !DILocalVariable(name: "s_err", scope: !3728, file: !3729, line: 39, type: !3744)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !690, line: 39, baseType: !689)
!3745 = !DILocalVariable(name: "tnum", scope: !3728, file: !3729, line: 41, type: !3732)
!3746 = !DILocation(line: 36, column: 26, scope: !3728)
!3747 = !DILocation(line: 36, column: 37, scope: !3728)
!3748 = !DILocation(line: 36, column: 57, scope: !3728)
!3749 = !DILocation(line: 36, column: 76, scope: !3728)
!3750 = !DILocation(line: 37, column: 26, scope: !3728)
!3751 = !DILocation(line: 37, column: 48, scope: !3728)
!3752 = !DILocation(line: 37, column: 57, scope: !3728)
!3753 = !DILocation(line: 41, column: 3, scope: !3728)
!3754 = !DILocation(line: 41, column: 17, scope: !3728)
!3755 = !DILocation(line: 42, column: 11, scope: !3728)
!3756 = !DILocation(line: 39, column: 16, scope: !3728)
!3757 = !DILocation(line: 44, column: 7, scope: !3728)
!3758 = !DILocation(line: 69, column: 50, scope: !3759)
!3759 = !DILexicalBlockFile(scope: !3760, file: !3729, discriminator: 3)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !3729, line: 67, column: 5)
!3761 = distinct !DILexicalBlock(scope: !3728, file: !3729, line: 66, column: 7)
!3762 = !DILocation(line: 46, column: 11, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3729, line: 46, column: 11)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !3729, line: 45, column: 5)
!3765 = distinct !DILexicalBlock(scope: !3728, file: !3729, line: 44, column: 7)
!3766 = !DILocation(line: 46, column: 16, scope: !3763)
!3767 = !DILocation(line: 46, column: 29, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !3763, file: !3729, discriminator: 1)
!3769 = !DILocation(line: 46, column: 22, scope: !3763)
!3770 = !DILocation(line: 51, column: 20, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3772, file: !3729, line: 51, column: 15)
!3772 = distinct !DILexicalBlock(scope: !3763, file: !3729, line: 47, column: 9)
!3773 = !DILocation(line: 52, column: 13, scope: !3771)
!3774 = !DILocation(line: 51, column: 15, scope: !3772)
!3775 = !DILocation(line: 59, column: 9, scope: !3772)
!3776 = !DILocation(line: 62, column: 5, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3765, file: !3729, line: 61, column: 12)
!3778 = !DILocation(line: 62, column: 11, scope: !3777)
!3779 = !DILocation(line: 64, column: 5, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !3729, line: 63, column: 12)
!3781 = !DILocation(line: 64, column: 11, scope: !3780)
!3782 = !DILocation(line: 69, column: 14, scope: !3760)
!3783 = !DILocation(line: 69, column: 56, scope: !3759)
!3784 = !DILocation(line: 70, column: 29, scope: !3760)
!3785 = !DILocation(line: 69, column: 7, scope: !3786)
!3786 = !DILexicalBlockFile(scope: !3760, file: !3729, discriminator: 6)
!3787 = !DILocation(line: 71, column: 5, scope: !3760)
!3788 = !DILocation(line: 73, column: 10, scope: !3728)
!3789 = !DILocation(line: 74, column: 1, scope: !3728)
!3790 = !DILocation(line: 73, column: 3, scope: !3728)
!3791 = distinct !DISubprogram(name: "xdectoumax", scope: !3729, file: !3729, line: 82, type: !3792, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3794)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!3732, !55, !3732, !3732, !55, !55, !57}
!3794 = !{!3795, !3796, !3797, !3798, !3799, !3800}
!3795 = !DILocalVariable(name: "n_str", arg: 1, scope: !3791, file: !3729, line: 82, type: !55)
!3796 = !DILocalVariable(name: "min", arg: 2, scope: !3791, file: !3729, line: 82, type: !3732)
!3797 = !DILocalVariable(name: "max", arg: 3, scope: !3791, file: !3729, line: 82, type: !3732)
!3798 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3791, file: !3729, line: 83, type: !55)
!3799 = !DILocalVariable(name: "err", arg: 5, scope: !3791, file: !3729, line: 83, type: !55)
!3800 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3791, file: !3729, line: 83, type: !57)
!3801 = !DILocation(line: 82, column: 26, scope: !3791)
!3802 = !DILocation(line: 82, column: 47, scope: !3791)
!3803 = !DILocation(line: 82, column: 66, scope: !3791)
!3804 = !DILocation(line: 83, column: 26, scope: !3791)
!3805 = !DILocation(line: 83, column: 48, scope: !3791)
!3806 = !DILocation(line: 83, column: 57, scope: !3791)
!3807 = !DILocation(line: 85, column: 10, scope: !3791)
!3808 = !DILocation(line: 85, column: 3, scope: !3791)
!3809 = distinct !DISubprogram(name: "xstrtoumax", scope: !3810, file: !3810, line: 88, type: !3811, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !3814)
!3810 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!3744, !55, !793, !57, !3813, !55}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3814 = !{!3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3827, !3828, !3831, !3832}
!3815 = !DILocalVariable(name: "s", arg: 1, scope: !3809, file: !3810, line: 88, type: !55)
!3816 = !DILocalVariable(name: "ptr", arg: 2, scope: !3809, file: !3810, line: 88, type: !793)
!3817 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3809, file: !3810, line: 88, type: !57)
!3818 = !DILocalVariable(name: "val", arg: 4, scope: !3809, file: !3810, line: 89, type: !3813)
!3819 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3809, file: !3810, line: 89, type: !55)
!3820 = !DILocalVariable(name: "t_ptr", scope: !3809, file: !3810, line: 91, type: !44)
!3821 = !DILocalVariable(name: "p", scope: !3809, file: !3810, line: 92, type: !793)
!3822 = !DILocalVariable(name: "tmp", scope: !3809, file: !3810, line: 93, type: !3732)
!3823 = !DILocalVariable(name: "err", scope: !3809, file: !3810, line: 94, type: !3744)
!3824 = !DILocalVariable(name: "q", scope: !3825, file: !3810, line: 104, type: !55)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !3810, line: 103, column: 5)
!3826 = distinct !DILexicalBlock(scope: !3809, file: !3810, line: 102, column: 7)
!3827 = !DILocalVariable(name: "ch", scope: !3825, file: !3810, line: 105, type: !54)
!3828 = !DILocalVariable(name: "base", scope: !3829, file: !3810, line: 141, type: !57)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !3810, line: 140, column: 5)
!3830 = distinct !DILexicalBlock(scope: !3809, file: !3810, line: 139, column: 7)
!3831 = !DILocalVariable(name: "suffixes", scope: !3829, file: !3810, line: 142, type: !57)
!3832 = !DILocalVariable(name: "overflow", scope: !3829, file: !3810, line: 143, type: !3744)
!3833 = !DILocation(line: 88, column: 24, scope: !3809)
!3834 = !DILocation(line: 88, column: 34, scope: !3809)
!3835 = !DILocation(line: 88, column: 43, scope: !3809)
!3836 = !DILocation(line: 89, column: 24, scope: !3809)
!3837 = !DILocation(line: 89, column: 41, scope: !3809)
!3838 = !DILocation(line: 91, column: 3, scope: !3809)
!3839 = !DILocation(line: 94, column: 16, scope: !3809)
!3840 = !DILocation(line: 96, column: 3, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3810, line: 96, column: 3)
!3842 = distinct !DILexicalBlock(scope: !3809, file: !3810, line: 96, column: 3)
!3843 = !DILocation(line: 96, column: 3, scope: !3844)
!3844 = !DILexicalBlockFile(scope: !3841, file: !3810, discriminator: 3)
!3845 = !DILocation(line: 98, column: 8, scope: !3809)
!3846 = !DILocation(line: 92, column: 10, scope: !3809)
!3847 = !DILocation(line: 100, column: 3, scope: !3809)
!3848 = !DILocation(line: 100, column: 9, scope: !3809)
!3849 = !DILocation(line: 104, column: 19, scope: !3825)
!3850 = !DILocation(line: 106, column: 14, scope: !3851)
!3851 = !DILexicalBlockFile(scope: !3825, file: !3810, discriminator: 1)
!3852 = !DILocation(line: 106, column: 7, scope: !3825)
!3853 = !DILocation(line: 105, column: 21, scope: !3825)
!3854 = !DILocation(line: 106, column: 7, scope: !3851)
!3855 = !DILocation(line: 107, column: 15, scope: !3825)
!3856 = distinct !{!3856, !3852, !3857}
!3857 = !DILocation(line: 107, column: 17, scope: !3825)
!3858 = !DILocation(line: 109, column: 9, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3825, file: !3810, line: 108, column: 11)
!3860 = !DILocalVariable(name: "nptr", arg: 1, scope: !3861, file: !3862, line: 336, type: !3865)
!3861 = distinct !DISubprogram(name: "strtoumax", scope: !3862, file: !3862, line: 336, type: !3863, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !3867)
!3862 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!3732, !3865, !3866, !57}
!3865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!3866 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !793)
!3867 = !{!3860, !3868, !3869}
!3868 = !DILocalVariable(name: "endptr", arg: 2, scope: !3861, file: !3862, line: 336, type: !3866)
!3869 = !DILocalVariable(name: "base", arg: 3, scope: !3861, file: !3862, line: 336, type: !57)
!3870 = !DILocation(line: 336, column: 1, scope: !3861, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 112, column: 9, scope: !3809)
!3872 = !DILocation(line: 339, column: 10, scope: !3861, inlinedAt: !3871)
!3873 = !DILocation(line: 93, column: 14, scope: !3809)
!3874 = !DILocation(line: 114, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3809, file: !3810, line: 114, column: 7)
!3876 = !DILocation(line: 114, column: 10, scope: !3875)
!3877 = !DILocation(line: 114, column: 7, scope: !3809)
!3878 = !DILocation(line: 118, column: 11, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3810, line: 118, column: 11)
!3880 = distinct !DILexicalBlock(scope: !3875, file: !3810, line: 115, column: 5)
!3881 = !DILocation(line: 118, column: 26, scope: !3879)
!3882 = !DILocation(line: 118, column: 29, scope: !3883)
!3883 = !DILexicalBlockFile(scope: !3879, file: !3810, discriminator: 1)
!3884 = !DILocation(line: 118, column: 33, scope: !3883)
!3885 = !DILocation(line: 118, column: 36, scope: !3886)
!3886 = !DILexicalBlockFile(scope: !3879, file: !3810, discriminator: 5)
!3887 = !DILocation(line: 118, column: 11, scope: !3888)
!3888 = !DILexicalBlockFile(scope: !3880, file: !3810, discriminator: 5)
!3889 = !DILocation(line: 123, column: 12, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3875, file: !3810, line: 123, column: 12)
!3891 = !DILocation(line: 123, column: 12, scope: !3875)
!3892 = !DILocation(line: 128, column: 5, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3890, file: !3810, line: 124, column: 5)
!3894 = !DILocation(line: 133, column: 8, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3809, file: !3810, line: 133, column: 7)
!3896 = !DILocation(line: 133, column: 7, scope: !3809)
!3897 = !DILocation(line: 135, column: 12, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3895, file: !3810, line: 134, column: 5)
!3899 = !DILocation(line: 136, column: 7, scope: !3898)
!3900 = !DILocation(line: 139, column: 7, scope: !3830)
!3901 = !DILocation(line: 139, column: 11, scope: !3830)
!3902 = !DILocation(line: 139, column: 7, scope: !3809)
!3903 = !DILocation(line: 141, column: 11, scope: !3829)
!3904 = !DILocation(line: 142, column: 11, scope: !3829)
!3905 = !DILocation(line: 145, column: 12, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !3907, file: !3810, discriminator: 3)
!3907 = distinct !DILexicalBlock(scope: !3829, file: !3810, line: 145, column: 11)
!3908 = !DILocation(line: 145, column: 11, scope: !3909)
!3909 = !DILexicalBlockFile(scope: !3829, file: !3810, discriminator: 3)
!3910 = !DILocation(line: 147, column: 16, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3907, file: !3810, line: 146, column: 9)
!3912 = !DILocation(line: 148, column: 22, scope: !3911)
!3913 = !DILocation(line: 148, column: 11, scope: !3911)
!3914 = !DILocation(line: 151, column: 7, scope: !3829)
!3915 = !DILocation(line: 163, column: 15, scope: !3916)
!3916 = !DILexicalBlockFile(scope: !3917, file: !3810, discriminator: 2)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !3810, line: 163, column: 15)
!3918 = distinct !DILexicalBlock(scope: !3829, file: !3810, line: 152, column: 9)
!3919 = !DILocation(line: 163, column: 15, scope: !3920)
!3920 = !DILexicalBlockFile(scope: !3918, file: !3810, discriminator: 2)
!3921 = !DILocation(line: 164, column: 21, scope: !3917)
!3922 = !DILocation(line: 164, column: 13, scope: !3917)
!3923 = !DILocation(line: 167, column: 21, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !3810, line: 167, column: 21)
!3925 = distinct !DILexicalBlock(scope: !3917, file: !3810, line: 165, column: 15)
!3926 = !DILocation(line: 167, column: 29, scope: !3924)
!3927 = !DILocation(line: 167, column: 21, scope: !3925)
!3928 = !DILocation(line: 175, column: 17, scope: !3925)
!3929 = !DILocation(line: 179, column: 7, scope: !3829)
!3930 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3931, file: !3810, line: 60, type: !57)
!3931 = distinct !DISubprogram(name: "bkm_scale", scope: !3810, file: !3810, line: 60, type: !3932, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!3744, !3813, !57}
!3934 = !{!3935, !3930}
!3935 = !DILocalVariable(name: "x", arg: 1, scope: !3931, file: !3810, line: 60, type: !3813)
!3936 = !DILocation(line: 60, column: 31, scope: !3931, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 182, column: 22, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3829, file: !3810, line: 180, column: 9)
!3939 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !3937)
!3940 = distinct !DILexicalBlock(scope: !3931, file: !3810, line: 67, column: 7)
!3941 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !3937)
!3942 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !3937)
!3943 = !DILocation(line: 143, column: 20, scope: !3829)
!3944 = !DILocation(line: 183, column: 11, scope: !3938)
!3945 = !DILocation(line: 60, column: 31, scope: !3931, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 189, column: 22, scope: !3938)
!3947 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !3946)
!3948 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !3946)
!3949 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !3946)
!3950 = !DILocation(line: 190, column: 11, scope: !3938)
!3951 = !DILocalVariable(name: "power", arg: 3, scope: !3952, file: !3810, line: 77, type: !57)
!3952 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3810, file: !3810, line: 77, type: !3953, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !3955)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!3744, !3813, !57, !57}
!3955 = !{!3956, !3957, !3951, !3958}
!3956 = !DILocalVariable(name: "x", arg: 1, scope: !3952, file: !3810, line: 77, type: !3813)
!3957 = !DILocalVariable(name: "base", arg: 2, scope: !3952, file: !3810, line: 77, type: !57)
!3958 = !DILocalVariable(name: "err", scope: !3952, file: !3810, line: 79, type: !3744)
!3959 = !DILocation(line: 77, column: 50, scope: !3952, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 197, column: 22, scope: !3938)
!3961 = !DILocation(line: 79, column: 16, scope: !3952, inlinedAt: !3960)
!3962 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 81, column: 12, scope: !3952, inlinedAt: !3960)
!3964 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !3963)
!3965 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !3963)
!3966 = !DILocation(line: 81, column: 9, scope: !3952, inlinedAt: !3960)
!3967 = !DILocation(line: 77, column: 50, scope: !3952, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 202, column: 22, scope: !3938)
!3969 = !DILocation(line: 79, column: 16, scope: !3952, inlinedAt: !3968)
!3970 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 81, column: 12, scope: !3952, inlinedAt: !3968)
!3972 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !3971)
!3973 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !3971)
!3974 = !DILocation(line: 81, column: 9, scope: !3952, inlinedAt: !3968)
!3975 = !DILocation(line: 77, column: 50, scope: !3952, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 207, column: 22, scope: !3938)
!3977 = !DILocation(line: 79, column: 16, scope: !3952, inlinedAt: !3976)
!3978 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 81, column: 12, scope: !3952, inlinedAt: !3976)
!3980 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !3979)
!3981 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !3979)
!3982 = !DILocation(line: 77, column: 50, scope: !3952, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 212, column: 22, scope: !3938)
!3984 = !DILocation(line: 79, column: 16, scope: !3952, inlinedAt: !3983)
!3985 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 81, column: 12, scope: !3952, inlinedAt: !3983)
!3987 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !3986)
!3988 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !3986)
!3989 = !DILocation(line: 81, column: 9, scope: !3952, inlinedAt: !3983)
!3990 = !DILocation(line: 77, column: 50, scope: !3952, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 216, column: 22, scope: !3938)
!3992 = !DILocation(line: 79, column: 16, scope: !3952, inlinedAt: !3991)
!3993 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 81, column: 12, scope: !3952, inlinedAt: !3991)
!3995 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !3994)
!3996 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !3994)
!3997 = !DILocation(line: 81, column: 9, scope: !3952, inlinedAt: !3991)
!3998 = !DILocation(line: 77, column: 50, scope: !3952, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 221, column: 22, scope: !3938)
!4000 = !DILocation(line: 79, column: 16, scope: !3952, inlinedAt: !3999)
!4001 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 81, column: 12, scope: !3952, inlinedAt: !3999)
!4003 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !4002)
!4004 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !4002)
!4005 = !DILocation(line: 81, column: 9, scope: !3952, inlinedAt: !3999)
!4006 = !DILocation(line: 60, column: 31, scope: !3931, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 225, column: 22, scope: !3938)
!4008 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !4007)
!4009 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !4007)
!4010 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !4007)
!4011 = !DILocation(line: 226, column: 11, scope: !3938)
!4012 = !DILocation(line: 77, column: 50, scope: !3952, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 229, column: 22, scope: !3938)
!4014 = !DILocation(line: 79, column: 16, scope: !3952, inlinedAt: !4013)
!4015 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 81, column: 12, scope: !3952, inlinedAt: !4013)
!4017 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !4016)
!4018 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !4016)
!4019 = !DILocation(line: 81, column: 9, scope: !3952, inlinedAt: !4013)
!4020 = !DILocation(line: 77, column: 50, scope: !3952, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 233, column: 22, scope: !3938)
!4022 = !DILocation(line: 79, column: 16, scope: !3952, inlinedAt: !4021)
!4023 = !DILocation(line: 67, column: 39, scope: !3940, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 81, column: 12, scope: !3952, inlinedAt: !4021)
!4025 = !DILocation(line: 72, column: 6, scope: !3931, inlinedAt: !4024)
!4026 = !DILocation(line: 67, column: 7, scope: !3931, inlinedAt: !4024)
!4027 = !DILocation(line: 81, column: 9, scope: !3952, inlinedAt: !4021)
!4028 = !DILocation(line: 237, column: 16, scope: !3938)
!4029 = !DILocation(line: 238, column: 22, scope: !3938)
!4030 = !DILocation(line: 238, column: 11, scope: !3938)
!4031 = !DILocation(line: 241, column: 11, scope: !3829)
!4032 = !DILocation(line: 242, column: 10, scope: !3829)
!4033 = !DILocation(line: 243, column: 11, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !3829, file: !3810, line: 243, column: 11)
!4035 = !DILocation(line: 244, column: 13, scope: !4034)
!4036 = !DILocation(line: 243, column: 11, scope: !3829)
!4037 = !DILocation(line: 247, column: 8, scope: !3809)
!4038 = !DILocation(line: 248, column: 3, scope: !3809)
!4039 = !DILocation(line: 249, column: 1, scope: !3809)
!4040 = distinct !DISubprogram(name: "rpl_calloc", scope: !4041, file: !4041, line: 42, type: !3468, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !4042)
!4041 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4042 = !{!4043, !4044, !4045, !4046}
!4043 = !DILocalVariable(name: "n", arg: 1, scope: !4040, file: !4041, line: 42, type: !47)
!4044 = !DILocalVariable(name: "s", arg: 2, scope: !4040, file: !4041, line: 42, type: !47)
!4045 = !DILocalVariable(name: "result", scope: !4040, file: !4041, line: 44, type: !46)
!4046 = !DILocalVariable(name: "bytes", scope: !4047, file: !4041, line: 56, type: !47)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !4041, line: 53, column: 5)
!4048 = distinct !DILexicalBlock(scope: !4040, file: !4041, line: 47, column: 7)
!4049 = !DILocation(line: 42, column: 20, scope: !4040)
!4050 = !DILocation(line: 42, column: 30, scope: !4040)
!4051 = !DILocation(line: 47, column: 9, scope: !4048)
!4052 = !DILocation(line: 47, column: 19, scope: !4053)
!4053 = !DILexicalBlockFile(scope: !4048, file: !4041, discriminator: 1)
!4054 = !DILocation(line: 47, column: 14, scope: !4048)
!4055 = !DILocation(line: 56, column: 24, scope: !4047)
!4056 = !DILocation(line: 56, column: 14, scope: !4047)
!4057 = !DILocation(line: 57, column: 17, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4047, file: !4041, line: 57, column: 11)
!4059 = !DILocation(line: 57, column: 21, scope: !4058)
!4060 = !DILocation(line: 57, column: 11, scope: !4047)
!4061 = !DILocation(line: 59, column: 11, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4058, file: !4041, line: 58, column: 9)
!4063 = !DILocation(line: 59, column: 17, scope: !4062)
!4064 = !DILocation(line: 65, column: 12, scope: !4040)
!4065 = !DILocation(line: 44, column: 9, scope: !4040)
!4066 = !DILocation(line: 72, column: 3, scope: !4040)
!4067 = !DILocation(line: 73, column: 1, scope: !4040)
!4068 = distinct !DISubprogram(name: "rpl_fclose", scope: !4069, file: !4069, line: 56, type: !4070, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !703, variables: !4112)
!4069 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!57, !4072}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !123, line: 49, baseType: !4074)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !125, line: 241, size: 1728, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4074, file: !125, line: 242, baseType: !57, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4074, file: !125, line: 247, baseType: !44, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4074, file: !125, line: 248, baseType: !44, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4074, file: !125, line: 249, baseType: !44, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4074, file: !125, line: 250, baseType: !44, size: 64, offset: 256)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4074, file: !125, line: 251, baseType: !44, size: 64, offset: 320)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4074, file: !125, line: 252, baseType: !44, size: 64, offset: 384)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4074, file: !125, line: 253, baseType: !44, size: 64, offset: 448)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4074, file: !125, line: 254, baseType: !44, size: 64, offset: 512)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4074, file: !125, line: 256, baseType: !44, size: 64, offset: 576)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4074, file: !125, line: 257, baseType: !44, size: 64, offset: 640)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4074, file: !125, line: 258, baseType: !44, size: 64, offset: 704)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4074, file: !125, line: 260, baseType: !4089, size: 64, offset: 768)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !125, line: 156, size: 192, elements: !4091)
!4091 = !{!4092, !4093, !4095}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4090, file: !125, line: 157, baseType: !4089, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4090, file: !125, line: 158, baseType: !4094, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4090, file: !125, line: 162, baseType: !57, size: 32, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4074, file: !125, line: 262, baseType: !4094, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4074, file: !125, line: 264, baseType: !57, size: 32, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4074, file: !125, line: 268, baseType: !57, size: 32, offset: 928)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4074, file: !125, line: 270, baseType: !151, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4074, file: !125, line: 274, baseType: !58, size: 16, offset: 1024)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4074, file: !125, line: 275, baseType: !156, size: 8, offset: 1040)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4074, file: !125, line: 276, baseType: !158, size: 8, offset: 1048)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4074, file: !125, line: 280, baseType: !162, size: 64, offset: 1088)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4074, file: !125, line: 289, baseType: !165, size: 64, offset: 1152)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4074, file: !125, line: 297, baseType: !46, size: 64, offset: 1216)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4074, file: !125, line: 298, baseType: !46, size: 64, offset: 1280)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4074, file: !125, line: 299, baseType: !46, size: 64, offset: 1344)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4074, file: !125, line: 300, baseType: !46, size: 64, offset: 1408)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4074, file: !125, line: 302, baseType: !47, size: 64, offset: 1472)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4074, file: !125, line: 303, baseType: !57, size: 32, offset: 1536)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4074, file: !125, line: 305, baseType: !173, size: 160, offset: 1568)
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DILocalVariable(name: "fp", arg: 1, scope: !4068, file: !4069, line: 56, type: !4072)
!4114 = !DILocalVariable(name: "saved_errno", scope: !4068, file: !4069, line: 58, type: !57)
!4115 = !DILocalVariable(name: "fd", scope: !4068, file: !4069, line: 59, type: !57)
!4116 = !DILocalVariable(name: "result", scope: !4068, file: !4069, line: 60, type: !57)
!4117 = !DILocation(line: 56, column: 19, scope: !4068)
!4118 = !DILocation(line: 58, column: 7, scope: !4068)
!4119 = !DILocation(line: 60, column: 7, scope: !4068)
!4120 = !DILocation(line: 63, column: 8, scope: !4068)
!4121 = !DILocation(line: 59, column: 7, scope: !4068)
!4122 = !DILocation(line: 64, column: 10, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4068, file: !4069, line: 64, column: 7)
!4124 = !DILocation(line: 64, column: 7, scope: !4068)
!4125 = !DILocation(line: 65, column: 12, scope: !4123)
!4126 = !DILocation(line: 65, column: 5, scope: !4123)
!4127 = !DILocation(line: 70, column: 9, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4068, file: !4069, line: 70, column: 7)
!4129 = !DILocation(line: 70, column: 23, scope: !4128)
!4130 = !DILocation(line: 70, column: 33, scope: !4131)
!4131 = !DILexicalBlockFile(scope: !4128, file: !4069, discriminator: 1)
!4132 = !DILocation(line: 70, column: 26, scope: !4133)
!4133 = !DILexicalBlockFile(scope: !4128, file: !4069, discriminator: 3)
!4134 = !DILocation(line: 70, column: 59, scope: !4131)
!4135 = !DILocation(line: 71, column: 7, scope: !4128)
!4136 = !DILocation(line: 71, column: 10, scope: !4131)
!4137 = !DILocation(line: 70, column: 7, scope: !4138)
!4138 = !DILexicalBlockFile(scope: !4068, file: !4069, discriminator: 2)
!4139 = !DILocation(line: 98, column: 12, scope: !4068)
!4140 = !DILocation(line: 103, column: 7, scope: !4068)
!4141 = !DILocation(line: 72, column: 19, scope: !4128)
!4142 = !DILocation(line: 103, column: 19, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4068, file: !4069, line: 103, column: 7)
!4144 = !DILocation(line: 105, column: 13, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4143, file: !4069, line: 104, column: 5)
!4146 = !DILocation(line: 107, column: 5, scope: !4145)
!4147 = !DILocation(line: 110, column: 1, scope: !4068)
!4148 = distinct !DISubprogram(name: "rpl_fflush", scope: !4149, file: !4149, line: 127, type: !4150, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4192)
!4149 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!57, !4152}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !123, line: 49, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !125, line: 241, size: 1728, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4154, file: !125, line: 242, baseType: !57, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4154, file: !125, line: 247, baseType: !44, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4154, file: !125, line: 248, baseType: !44, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4154, file: !125, line: 249, baseType: !44, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4154, file: !125, line: 250, baseType: !44, size: 64, offset: 256)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4154, file: !125, line: 251, baseType: !44, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4154, file: !125, line: 252, baseType: !44, size: 64, offset: 384)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4154, file: !125, line: 253, baseType: !44, size: 64, offset: 448)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4154, file: !125, line: 254, baseType: !44, size: 64, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4154, file: !125, line: 256, baseType: !44, size: 64, offset: 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4154, file: !125, line: 257, baseType: !44, size: 64, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4154, file: !125, line: 258, baseType: !44, size: 64, offset: 704)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4154, file: !125, line: 260, baseType: !4169, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !125, line: 156, size: 192, elements: !4171)
!4171 = !{!4172, !4173, !4175}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4170, file: !125, line: 157, baseType: !4169, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4170, file: !125, line: 158, baseType: !4174, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4170, file: !125, line: 162, baseType: !57, size: 32, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4154, file: !125, line: 262, baseType: !4174, size: 64, offset: 832)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4154, file: !125, line: 264, baseType: !57, size: 32, offset: 896)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4154, file: !125, line: 268, baseType: !57, size: 32, offset: 928)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4154, file: !125, line: 270, baseType: !151, size: 64, offset: 960)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4154, file: !125, line: 274, baseType: !58, size: 16, offset: 1024)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4154, file: !125, line: 275, baseType: !156, size: 8, offset: 1040)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4154, file: !125, line: 276, baseType: !158, size: 8, offset: 1048)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4154, file: !125, line: 280, baseType: !162, size: 64, offset: 1088)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4154, file: !125, line: 289, baseType: !165, size: 64, offset: 1152)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4154, file: !125, line: 297, baseType: !46, size: 64, offset: 1216)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4154, file: !125, line: 298, baseType: !46, size: 64, offset: 1280)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4154, file: !125, line: 299, baseType: !46, size: 64, offset: 1344)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4154, file: !125, line: 300, baseType: !46, size: 64, offset: 1408)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4154, file: !125, line: 302, baseType: !47, size: 64, offset: 1472)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4154, file: !125, line: 303, baseType: !57, size: 32, offset: 1536)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4154, file: !125, line: 305, baseType: !173, size: 160, offset: 1568)
!4192 = !{!4193}
!4193 = !DILocalVariable(name: "stream", arg: 1, scope: !4148, file: !4149, line: 127, type: !4152)
!4194 = !DILocation(line: 127, column: 19, scope: !4148)
!4195 = !DILocation(line: 148, column: 14, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4148, file: !4149, line: 148, column: 7)
!4197 = !DILocation(line: 148, column: 22, scope: !4196)
!4198 = !DILocation(line: 148, column: 27, scope: !4199)
!4199 = !DILexicalBlockFile(scope: !4196, file: !4149, discriminator: 1)
!4200 = !DILocation(line: 148, column: 7, scope: !4201)
!4201 = !DILexicalBlockFile(scope: !4148, file: !4149, discriminator: 1)
!4202 = !DILocation(line: 149, column: 12, scope: !4196)
!4203 = !DILocation(line: 149, column: 5, scope: !4196)
!4204 = !DILocalVariable(name: "fp", arg: 1, scope: !4205, file: !4149, line: 40, type: !4152)
!4205 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4149, file: !4149, line: 40, type: !4206, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !4208)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{null, !4152}
!4208 = !{!4204}
!4209 = !DILocation(line: 40, column: 48, scope: !4205, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 153, column: 3, scope: !4148)
!4211 = !DILocation(line: 42, column: 11, scope: !4212, inlinedAt: !4210)
!4212 = distinct !DILexicalBlock(scope: !4205, file: !4149, line: 42, column: 7)
!4213 = !DILocation(line: 42, column: 18, scope: !4212, inlinedAt: !4210)
!4214 = !DILocation(line: 42, column: 7, scope: !4205, inlinedAt: !4210)
!4215 = !DILocation(line: 44, column: 5, scope: !4212, inlinedAt: !4210)
!4216 = !DILocation(line: 155, column: 10, scope: !4148)
!4217 = !DILocation(line: 155, column: 3, scope: !4148)
!4218 = !DILocation(line: 229, column: 1, scope: !4148)
!4219 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4220, file: !4220, line: 28, type: !4221, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !707, variables: !4263)
!4220 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!57, !4223, !1193, !57}
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !123, line: 49, baseType: !4225)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !125, line: 241, size: 1728, elements: !4226)
!4226 = !{!4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4225, file: !125, line: 242, baseType: !57, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4225, file: !125, line: 247, baseType: !44, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4225, file: !125, line: 248, baseType: !44, size: 64, offset: 128)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4225, file: !125, line: 249, baseType: !44, size: 64, offset: 192)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4225, file: !125, line: 250, baseType: !44, size: 64, offset: 256)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4225, file: !125, line: 251, baseType: !44, size: 64, offset: 320)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4225, file: !125, line: 252, baseType: !44, size: 64, offset: 384)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4225, file: !125, line: 253, baseType: !44, size: 64, offset: 448)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4225, file: !125, line: 254, baseType: !44, size: 64, offset: 512)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4225, file: !125, line: 256, baseType: !44, size: 64, offset: 576)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4225, file: !125, line: 257, baseType: !44, size: 64, offset: 640)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4225, file: !125, line: 258, baseType: !44, size: 64, offset: 704)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4225, file: !125, line: 260, baseType: !4240, size: 64, offset: 768)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !125, line: 156, size: 192, elements: !4242)
!4242 = !{!4243, !4244, !4246}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4241, file: !125, line: 157, baseType: !4240, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4241, file: !125, line: 158, baseType: !4245, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4241, file: !125, line: 162, baseType: !57, size: 32, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4225, file: !125, line: 262, baseType: !4245, size: 64, offset: 832)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4225, file: !125, line: 264, baseType: !57, size: 32, offset: 896)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4225, file: !125, line: 268, baseType: !57, size: 32, offset: 928)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4225, file: !125, line: 270, baseType: !151, size: 64, offset: 960)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4225, file: !125, line: 274, baseType: !58, size: 16, offset: 1024)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4225, file: !125, line: 275, baseType: !156, size: 8, offset: 1040)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4225, file: !125, line: 276, baseType: !158, size: 8, offset: 1048)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4225, file: !125, line: 280, baseType: !162, size: 64, offset: 1088)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4225, file: !125, line: 289, baseType: !165, size: 64, offset: 1152)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4225, file: !125, line: 297, baseType: !46, size: 64, offset: 1216)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4225, file: !125, line: 298, baseType: !46, size: 64, offset: 1280)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4225, file: !125, line: 299, baseType: !46, size: 64, offset: 1344)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4225, file: !125, line: 300, baseType: !46, size: 64, offset: 1408)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4225, file: !125, line: 302, baseType: !47, size: 64, offset: 1472)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4225, file: !125, line: 303, baseType: !57, size: 32, offset: 1536)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4225, file: !125, line: 305, baseType: !173, size: 160, offset: 1568)
!4263 = !{!4264, !4265, !4266, !4267}
!4264 = !DILocalVariable(name: "fp", arg: 1, scope: !4219, file: !4220, line: 28, type: !4223)
!4265 = !DILocalVariable(name: "offset", arg: 2, scope: !4219, file: !4220, line: 28, type: !1193)
!4266 = !DILocalVariable(name: "whence", arg: 3, scope: !4219, file: !4220, line: 28, type: !57)
!4267 = !DILocalVariable(name: "pos", scope: !4268, file: !4220, line: 116, type: !1193)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !4220, line: 112, column: 5)
!4269 = distinct !DILexicalBlock(scope: !4219, file: !4220, line: 51, column: 7)
!4270 = !DILocation(line: 28, column: 15, scope: !4219)
!4271 = !DILocation(line: 28, column: 25, scope: !4219)
!4272 = !DILocation(line: 28, column: 37, scope: !4219)
!4273 = !DILocation(line: 51, column: 11, scope: !4269)
!4274 = !DILocation(line: 51, column: 31, scope: !4269)
!4275 = !DILocation(line: 51, column: 24, scope: !4269)
!4276 = !DILocation(line: 52, column: 7, scope: !4269)
!4277 = !DILocation(line: 52, column: 14, scope: !4278)
!4278 = !DILexicalBlockFile(scope: !4269, file: !4220, discriminator: 1)
!4279 = !DILocation(line: 52, column: 35, scope: !4278)
!4280 = !{!935, !736, i64 32}
!4281 = !DILocation(line: 52, column: 28, scope: !4278)
!4282 = !DILocation(line: 53, column: 7, scope: !4269)
!4283 = !DILocation(line: 53, column: 14, scope: !4278)
!4284 = !{!935, !736, i64 72}
!4285 = !DILocation(line: 53, column: 28, scope: !4278)
!4286 = !DILocation(line: 51, column: 7, scope: !4287)
!4287 = !DILexicalBlockFile(scope: !4219, file: !4220, discriminator: 1)
!4288 = !DILocation(line: 116, column: 26, scope: !4268)
!4289 = !DILocation(line: 116, column: 19, scope: !4290)
!4290 = !DILexicalBlockFile(scope: !4268, file: !4220, discriminator: 1)
!4291 = !DILocation(line: 116, column: 13, scope: !4268)
!4292 = !DILocation(line: 117, column: 15, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4268, file: !4220, line: 117, column: 11)
!4294 = !DILocation(line: 117, column: 11, scope: !4268)
!4295 = !DILocation(line: 127, column: 11, scope: !4268)
!4296 = !DILocation(line: 127, column: 18, scope: !4268)
!4297 = !DILocation(line: 128, column: 11, scope: !4268)
!4298 = !DILocation(line: 128, column: 19, scope: !4268)
!4299 = !{!935, !936, i64 144}
!4300 = !DILocation(line: 159, column: 7, scope: !4268)
!4301 = !DILocation(line: 161, column: 10, scope: !4219)
!4302 = !DILocation(line: 161, column: 3, scope: !4219)
!4303 = !DILocation(line: 162, column: 1, scope: !4219)
!4304 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4305, file: !4305, line: 334, type: !4306, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !709, variables: !4320)
!4305 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!47, !4308, !55, !47, !4309}
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1504, line: 107, baseType: !4311)
!4311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1504, line: 95, baseType: !4312)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1504, line: 83, size: 64, elements: !4313)
!4313 = !{!4314, !4315}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4312, file: !1504, line: 85, baseType: !57, size: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4312, file: !1504, line: 94, baseType: !4316, size: 32, offset: 32)
!4316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4312, file: !1504, line: 86, size: 32, elements: !4317)
!4317 = !{!4318, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4316, file: !1504, line: 89, baseType: !273, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4316, file: !1504, line: 93, baseType: !1514, size: 32)
!4320 = !{!4321, !4322, !4323, !4324, !4325, !4326, !4327}
!4321 = !DILocalVariable(name: "pwc", arg: 1, scope: !4304, file: !4305, line: 334, type: !4308)
!4322 = !DILocalVariable(name: "s", arg: 2, scope: !4304, file: !4305, line: 334, type: !55)
!4323 = !DILocalVariable(name: "n", arg: 3, scope: !4304, file: !4305, line: 334, type: !47)
!4324 = !DILocalVariable(name: "ps", arg: 4, scope: !4304, file: !4305, line: 334, type: !4309)
!4325 = !DILocalVariable(name: "ret", scope: !4304, file: !4305, line: 336, type: !47)
!4326 = !DILocalVariable(name: "wc", scope: !4304, file: !4305, line: 337, type: !1519)
!4327 = !DILocalVariable(name: "uc", scope: !4328, file: !4305, line: 398, type: !54)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !4305, line: 397, column: 5)
!4329 = distinct !DILexicalBlock(scope: !4304, file: !4305, line: 396, column: 7)
!4330 = !DILocation(line: 334, column: 23, scope: !4304)
!4331 = !DILocation(line: 334, column: 40, scope: !4304)
!4332 = !DILocation(line: 334, column: 50, scope: !4304)
!4333 = !DILocation(line: 334, column: 64, scope: !4304)
!4334 = !DILocation(line: 337, column: 3, scope: !4304)
!4335 = !DILocation(line: 353, column: 9, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4304, file: !4305, line: 353, column: 7)
!4337 = !DILocation(line: 353, column: 7, scope: !4304)
!4338 = !DILocation(line: 388, column: 9, scope: !4304)
!4339 = !DILocation(line: 336, column: 10, scope: !4304)
!4340 = !DILocation(line: 396, column: 19, scope: !4329)
!4341 = !DILocation(line: 396, column: 31, scope: !4342)
!4342 = !DILexicalBlockFile(scope: !4329, file: !4305, discriminator: 1)
!4343 = !DILocation(line: 396, column: 26, scope: !4329)
!4344 = !DILocation(line: 396, column: 41, scope: !4345)
!4345 = !DILexicalBlockFile(scope: !4329, file: !4305, discriminator: 2)
!4346 = !DILocation(line: 396, column: 7, scope: !4347)
!4347 = !DILexicalBlockFile(scope: !4304, file: !4305, discriminator: 2)
!4348 = !DILocation(line: 398, column: 26, scope: !4328)
!4349 = !DILocation(line: 398, column: 21, scope: !4328)
!4350 = !DILocation(line: 399, column: 14, scope: !4328)
!4351 = !DILocation(line: 399, column: 12, scope: !4328)
!4352 = !DILocation(line: 405, column: 1, scope: !4304)
!4353 = distinct !DISubprogram(name: "close_stream", scope: !4354, file: !4354, line: 56, type: !4355, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !712, variables: !4397)
!4354 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!57, !4357}
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !123, line: 49, baseType: !4359)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !125, line: 241, size: 1728, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4359, file: !125, line: 242, baseType: !57, size: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4359, file: !125, line: 247, baseType: !44, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4359, file: !125, line: 248, baseType: !44, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4359, file: !125, line: 249, baseType: !44, size: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4359, file: !125, line: 250, baseType: !44, size: 64, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4359, file: !125, line: 251, baseType: !44, size: 64, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4359, file: !125, line: 252, baseType: !44, size: 64, offset: 384)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4359, file: !125, line: 253, baseType: !44, size: 64, offset: 448)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4359, file: !125, line: 254, baseType: !44, size: 64, offset: 512)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4359, file: !125, line: 256, baseType: !44, size: 64, offset: 576)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4359, file: !125, line: 257, baseType: !44, size: 64, offset: 640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4359, file: !125, line: 258, baseType: !44, size: 64, offset: 704)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4359, file: !125, line: 260, baseType: !4374, size: 64, offset: 768)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !125, line: 156, size: 192, elements: !4376)
!4376 = !{!4377, !4378, !4380}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4375, file: !125, line: 157, baseType: !4374, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4375, file: !125, line: 158, baseType: !4379, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4375, file: !125, line: 162, baseType: !57, size: 32, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4359, file: !125, line: 262, baseType: !4379, size: 64, offset: 832)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4359, file: !125, line: 264, baseType: !57, size: 32, offset: 896)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4359, file: !125, line: 268, baseType: !57, size: 32, offset: 928)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4359, file: !125, line: 270, baseType: !151, size: 64, offset: 960)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4359, file: !125, line: 274, baseType: !58, size: 16, offset: 1024)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4359, file: !125, line: 275, baseType: !156, size: 8, offset: 1040)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4359, file: !125, line: 276, baseType: !158, size: 8, offset: 1048)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4359, file: !125, line: 280, baseType: !162, size: 64, offset: 1088)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4359, file: !125, line: 289, baseType: !165, size: 64, offset: 1152)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4359, file: !125, line: 297, baseType: !46, size: 64, offset: 1216)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4359, file: !125, line: 298, baseType: !46, size: 64, offset: 1280)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4359, file: !125, line: 299, baseType: !46, size: 64, offset: 1344)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4359, file: !125, line: 300, baseType: !46, size: 64, offset: 1408)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4359, file: !125, line: 302, baseType: !47, size: 64, offset: 1472)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4359, file: !125, line: 303, baseType: !57, size: 32, offset: 1536)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4359, file: !125, line: 305, baseType: !173, size: 160, offset: 1568)
!4397 = !{!4398, !4399, !4401, !4402}
!4398 = !DILocalVariable(name: "stream", arg: 1, scope: !4353, file: !4354, line: 56, type: !4357)
!4399 = !DILocalVariable(name: "some_pending", scope: !4353, file: !4354, line: 58, type: !4400)
!4400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!4401 = !DILocalVariable(name: "prev_fail", scope: !4353, file: !4354, line: 59, type: !4400)
!4402 = !DILocalVariable(name: "fclose_fail", scope: !4353, file: !4354, line: 60, type: !4400)
!4403 = !DILocation(line: 56, column: 21, scope: !4353)
!4404 = !DILocation(line: 58, column: 30, scope: !4353)
!4405 = !DILocalVariable(name: "__stream", arg: 1, scope: !4406, file: !926, line: 132, type: !4357)
!4406 = distinct !DISubprogram(name: "ferror_unlocked", scope: !926, file: !926, line: 132, type: !4355, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !712, variables: !4407)
!4407 = !{!4405}
!4408 = !DILocation(line: 132, column: 1, scope: !4406, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 59, column: 27, scope: !4353)
!4410 = !DILocation(line: 134, column: 10, scope: !4406, inlinedAt: !4409)
!4411 = !DILocation(line: 59, column: 43, scope: !4353)
!4412 = !DILocation(line: 60, column: 29, scope: !4353)
!4413 = !DILocation(line: 60, column: 45, scope: !4353)
!4414 = !DILocation(line: 70, column: 17, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4353, file: !4354, line: 70, column: 7)
!4416 = !DILocation(line: 70, column: 33, scope: !4417)
!4417 = !DILexicalBlockFile(scope: !4415, file: !4354, discriminator: 1)
!4418 = !DILocation(line: 70, column: 53, scope: !4419)
!4419 = !DILexicalBlockFile(scope: !4415, file: !4354, discriminator: 3)
!4420 = !DILocation(line: 70, column: 7, scope: !4421)
!4421 = !DILexicalBlockFile(scope: !4353, file: !4354, discriminator: 3)
!4422 = !DILocation(line: 72, column: 11, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4415, file: !4354, line: 71, column: 5)
!4424 = !DILocation(line: 73, column: 9, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4423, file: !4354, line: 72, column: 11)
!4426 = !DILocation(line: 73, column: 15, scope: !4425)
!4427 = !DILocation(line: 78, column: 1, scope: !4353)
!4428 = distinct !DISubprogram(name: "hard_locale", scope: !4429, file: !4429, line: 38, type: !4430, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !714, variables: !4432)
!4429 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!63, !57}
!4432 = !{!4433, !4434, !4435, !4436, !4443, !4444, !4446, !4447, !4449, !4450, !4452}
!4433 = !DILocalVariable(name: "category", arg: 1, scope: !4428, file: !4429, line: 38, type: !57)
!4434 = !DILocalVariable(name: "hard", scope: !4428, file: !4429, line: 40, type: !63)
!4435 = !DILocalVariable(name: "p", scope: !4428, file: !4429, line: 41, type: !55)
!4436 = !DILocalVariable(name: "__s1_len", scope: !4437, file: !4429, line: 47, type: !47)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !4429, line: 47, column: 15)
!4438 = distinct !DILexicalBlock(scope: !4439, file: !4429, line: 47, column: 15)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !4429, line: 46, column: 9)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !4429, line: 45, column: 11)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !4429, line: 44, column: 5)
!4442 = distinct !DILexicalBlock(scope: !4428, file: !4429, line: 43, column: 7)
!4443 = !DILocalVariable(name: "__s2_len", scope: !4437, file: !4429, line: 47, type: !47)
!4444 = !DILocalVariable(name: "__s2", scope: !4445, file: !4429, line: 47, type: !52)
!4445 = distinct !DILexicalBlock(scope: !4437, file: !4429, line: 47, column: 15)
!4446 = !DILocalVariable(name: "__result", scope: !4445, file: !4429, line: 47, type: !57)
!4447 = !DILocalVariable(name: "__s1_len", scope: !4448, file: !4429, line: 47, type: !47)
!4448 = distinct !DILexicalBlock(scope: !4438, file: !4429, line: 47, column: 39)
!4449 = !DILocalVariable(name: "__s2_len", scope: !4448, file: !4429, line: 47, type: !47)
!4450 = !DILocalVariable(name: "__s2", scope: !4451, file: !4429, line: 47, type: !52)
!4451 = distinct !DILexicalBlock(scope: !4448, file: !4429, line: 47, column: 39)
!4452 = !DILocalVariable(name: "__result", scope: !4451, file: !4429, line: 47, type: !57)
!4453 = !DILocation(line: 38, column: 18, scope: !4428)
!4454 = !DILocation(line: 40, column: 8, scope: !4428)
!4455 = !DILocation(line: 41, column: 19, scope: !4428)
!4456 = !DILocation(line: 41, column: 15, scope: !4428)
!4457 = !DILocation(line: 43, column: 7, scope: !4442)
!4458 = !DILocation(line: 43, column: 7, scope: !4428)
!4459 = !DILocation(line: 47, column: 15, scope: !4437)
!4460 = !DILocation(line: 47, column: 15, scope: !4445)
!4461 = !DILocation(line: 47, column: 15, scope: !4462)
!4462 = !DILexicalBlockFile(scope: !4445, file: !4429, discriminator: 2)
!4463 = !DILocation(line: 47, column: 15, scope: !4464)
!4464 = !DILexicalBlockFile(scope: !4465, file: !4429, discriminator: 3)
!4465 = distinct !DILexicalBlock(scope: !4445, file: !4429, line: 47, column: 15)
!4466 = !DILocation(line: 47, column: 15, scope: !4467)
!4467 = !DILexicalBlockFile(scope: !4465, file: !4429, discriminator: 2)
!4468 = !DILocation(line: 47, column: 15, scope: !4469)
!4469 = !DILexicalBlockFile(scope: !4470, file: !4429, discriminator: 4)
!4470 = distinct !DILexicalBlock(scope: !4465, file: !4429, line: 47, column: 15)
!4471 = !DILocation(line: 47, column: 15, scope: !4472)
!4472 = !DILexicalBlockFile(scope: !4437, file: !4429, discriminator: 11)
!4473 = !DILocation(line: 47, column: 36, scope: !4474)
!4474 = !DILexicalBlockFile(scope: !4438, file: !4429, discriminator: 13)
!4475 = !DILocation(line: 47, column: 39, scope: !4448)
!4476 = !DILocation(line: 47, column: 39, scope: !4477)
!4477 = !DILexicalBlockFile(scope: !4448, file: !4429, discriminator: 26)
!4478 = !DILocation(line: 47, column: 59, scope: !4479)
!4479 = !DILexicalBlockFile(scope: !4438, file: !4429, discriminator: 27)
!4480 = !DILocation(line: 47, column: 15, scope: !4481)
!4481 = !DILexicalBlockFile(scope: !4439, file: !4429, discriminator: 27)
!4482 = !DILocation(line: 48, column: 13, scope: !4438)
!4483 = !DILocation(line: 71, column: 3, scope: !4428)
!4484 = distinct !DISubprogram(name: "locale_charset", scope: !654, file: !654, line: 393, type: !4485, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !311, variables: !4487)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!55}
!4487 = !{!4488, !4489, !4490, !4495}
!4488 = !DILocalVariable(name: "codeset", scope: !4484, file: !654, line: 395, type: !55)
!4489 = !DILocalVariable(name: "aliases", scope: !4484, file: !654, line: 396, type: !55)
!4490 = !DILocalVariable(name: "__s1_len", scope: !4491, file: !654, line: 592, type: !47)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !654, line: 592, column: 9)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !654, line: 592, column: 9)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !654, line: 589, column: 3)
!4494 = distinct !DILexicalBlock(scope: !4484, file: !654, line: 589, column: 3)
!4495 = !DILocalVariable(name: "__s2_len", scope: !4491, file: !654, line: 592, type: !47)
!4496 = !DILocalVariable(name: "buf1", scope: !4497, file: !654, line: 196, type: !4564)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !654, line: 194, column: 21)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !654, line: 193, column: 19)
!4499 = distinct !DILexicalBlock(scope: !4500, file: !654, line: 193, column: 19)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !654, line: 188, column: 17)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !654, line: 181, column: 19)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !654, line: 177, column: 13)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !654, line: 173, column: 15)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !654, line: 161, column: 9)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !654, line: 157, column: 11)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !654, line: 130, column: 5)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !654, line: 129, column: 7)
!4508 = distinct !DISubprogram(name: "get_charset_aliases", scope: !654, file: !654, line: 124, type: !4485, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !311, variables: !4509)
!4509 = !{!4510, !4511, !4512, !4513, !4514, !4516, !4517, !4518, !4519, !4560, !4561, !4562, !4496, !4563, !4567, !4568, !4569}
!4510 = !DILocalVariable(name: "cp", scope: !4508, file: !654, line: 126, type: !55)
!4511 = !DILocalVariable(name: "dir", scope: !4506, file: !654, line: 132, type: !55)
!4512 = !DILocalVariable(name: "base", scope: !4506, file: !654, line: 133, type: !55)
!4513 = !DILocalVariable(name: "file_name", scope: !4506, file: !654, line: 134, type: !44)
!4514 = !DILocalVariable(name: "dir_len", scope: !4515, file: !654, line: 144, type: !47)
!4515 = distinct !DILexicalBlock(scope: !4506, file: !654, line: 143, column: 7)
!4516 = !DILocalVariable(name: "base_len", scope: !4515, file: !654, line: 145, type: !47)
!4517 = !DILocalVariable(name: "add_slash", scope: !4515, file: !654, line: 146, type: !57)
!4518 = !DILocalVariable(name: "fd", scope: !4504, file: !654, line: 162, type: !57)
!4519 = !DILocalVariable(name: "fp", scope: !4502, file: !654, line: 178, type: !4520)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !123, line: 49, baseType: !4522)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !125, line: 241, size: 1728, elements: !4523)
!4523 = !{!4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4522, file: !125, line: 242, baseType: !57, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4522, file: !125, line: 247, baseType: !44, size: 64, offset: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4522, file: !125, line: 248, baseType: !44, size: 64, offset: 128)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4522, file: !125, line: 249, baseType: !44, size: 64, offset: 192)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4522, file: !125, line: 250, baseType: !44, size: 64, offset: 256)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4522, file: !125, line: 251, baseType: !44, size: 64, offset: 320)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4522, file: !125, line: 252, baseType: !44, size: 64, offset: 384)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4522, file: !125, line: 253, baseType: !44, size: 64, offset: 448)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4522, file: !125, line: 254, baseType: !44, size: 64, offset: 512)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4522, file: !125, line: 256, baseType: !44, size: 64, offset: 576)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4522, file: !125, line: 257, baseType: !44, size: 64, offset: 640)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4522, file: !125, line: 258, baseType: !44, size: 64, offset: 704)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4522, file: !125, line: 260, baseType: !4537, size: 64, offset: 768)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !125, line: 156, size: 192, elements: !4539)
!4539 = !{!4540, !4541, !4543}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4538, file: !125, line: 157, baseType: !4537, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4538, file: !125, line: 158, baseType: !4542, size: 64, offset: 64)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4538, file: !125, line: 162, baseType: !57, size: 32, offset: 128)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4522, file: !125, line: 262, baseType: !4542, size: 64, offset: 832)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4522, file: !125, line: 264, baseType: !57, size: 32, offset: 896)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4522, file: !125, line: 268, baseType: !57, size: 32, offset: 928)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4522, file: !125, line: 270, baseType: !151, size: 64, offset: 960)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4522, file: !125, line: 274, baseType: !58, size: 16, offset: 1024)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4522, file: !125, line: 275, baseType: !156, size: 8, offset: 1040)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4522, file: !125, line: 276, baseType: !158, size: 8, offset: 1048)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4522, file: !125, line: 280, baseType: !162, size: 64, offset: 1088)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4522, file: !125, line: 289, baseType: !165, size: 64, offset: 1152)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4522, file: !125, line: 297, baseType: !46, size: 64, offset: 1216)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4522, file: !125, line: 298, baseType: !46, size: 64, offset: 1280)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4522, file: !125, line: 299, baseType: !46, size: 64, offset: 1344)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4522, file: !125, line: 300, baseType: !46, size: 64, offset: 1408)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4522, file: !125, line: 302, baseType: !47, size: 64, offset: 1472)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4522, file: !125, line: 303, baseType: !57, size: 32, offset: 1536)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4522, file: !125, line: 305, baseType: !173, size: 160, offset: 1568)
!4560 = !DILocalVariable(name: "res_ptr", scope: !4500, file: !654, line: 190, type: !44)
!4561 = !DILocalVariable(name: "res_size", scope: !4500, file: !654, line: 191, type: !47)
!4562 = !DILocalVariable(name: "c", scope: !4497, file: !654, line: 195, type: !57)
!4563 = !DILocalVariable(name: "buf2", scope: !4497, file: !654, line: 197, type: !4564)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 408, elements: !4565)
!4565 = !{!4566}
!4566 = !DISubrange(count: 51)
!4567 = !DILocalVariable(name: "l1", scope: !4497, file: !654, line: 198, type: !47)
!4568 = !DILocalVariable(name: "l2", scope: !4497, file: !654, line: 198, type: !47)
!4569 = !DILocalVariable(name: "old_res_ptr", scope: !4497, file: !654, line: 199, type: !44)
!4570 = !DILocation(line: 196, column: 28, scope: !4497, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 589, column: 18, scope: !4494)
!4572 = !DILocation(line: 197, column: 28, scope: !4497, inlinedAt: !4571)
!4573 = !DILocation(line: 403, column: 13, scope: !4484)
!4574 = !DILocation(line: 395, column: 15, scope: !4484)
!4575 = !DILocation(line: 584, column: 15, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4484, file: !654, line: 584, column: 7)
!4577 = !DILocation(line: 584, column: 7, scope: !4484)
!4578 = !DILocation(line: 128, column: 8, scope: !4508, inlinedAt: !4571)
!4579 = !DILocation(line: 126, column: 15, scope: !4508, inlinedAt: !4571)
!4580 = !DILocation(line: 129, column: 10, scope: !4507, inlinedAt: !4571)
!4581 = !DILocation(line: 129, column: 7, scope: !4508, inlinedAt: !4571)
!4582 = !DILocation(line: 138, column: 13, scope: !4506, inlinedAt: !4571)
!4583 = !DILocation(line: 132, column: 19, scope: !4506, inlinedAt: !4571)
!4584 = !DILocation(line: 139, column: 15, scope: !4585, inlinedAt: !4571)
!4585 = distinct !DILexicalBlock(scope: !4506, file: !654, line: 139, column: 11)
!4586 = !DILocation(line: 139, column: 23, scope: !4585, inlinedAt: !4571)
!4587 = !DILocation(line: 139, column: 26, scope: !4588, inlinedAt: !4571)
!4588 = !DILexicalBlockFile(scope: !4585, file: !654, discriminator: 1)
!4589 = !DILocation(line: 139, column: 33, scope: !4588, inlinedAt: !4571)
!4590 = !DILocation(line: 139, column: 11, scope: !4591, inlinedAt: !4571)
!4591 = !DILexicalBlockFile(scope: !4506, file: !654, discriminator: 1)
!4592 = !DILocation(line: 140, column: 9, scope: !4585, inlinedAt: !4571)
!4593 = !DILocation(line: 144, column: 26, scope: !4515, inlinedAt: !4571)
!4594 = !DILocation(line: 144, column: 16, scope: !4515, inlinedAt: !4571)
!4595 = !DILocation(line: 145, column: 16, scope: !4515, inlinedAt: !4571)
!4596 = !DILocation(line: 146, column: 34, scope: !4515, inlinedAt: !4571)
!4597 = !DILocation(line: 146, column: 38, scope: !4515, inlinedAt: !4571)
!4598 = !DILocation(line: 146, column: 42, scope: !4599, inlinedAt: !4571)
!4599 = !DILexicalBlockFile(scope: !4515, file: !654, discriminator: 1)
!4600 = !DILocation(line: 146, column: 41, scope: !4599, inlinedAt: !4571)
!4601 = !DILocation(line: 147, column: 48, scope: !4515, inlinedAt: !4571)
!4602 = !DILocation(line: 147, column: 46, scope: !4515, inlinedAt: !4571)
!4603 = !DILocation(line: 147, column: 69, scope: !4515, inlinedAt: !4571)
!4604 = !DILocation(line: 147, column: 30, scope: !4515, inlinedAt: !4571)
!4605 = !DILocation(line: 134, column: 13, scope: !4506, inlinedAt: !4571)
!4606 = !DILocation(line: 148, column: 13, scope: !4515, inlinedAt: !4571)
!4607 = !DILocation(line: 150, column: 13, scope: !4608, inlinedAt: !4571)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !654, line: 149, column: 11)
!4609 = distinct !DILexicalBlock(scope: !4515, file: !654, line: 148, column: 13)
!4610 = !DILocation(line: 151, column: 17, scope: !4608, inlinedAt: !4571)
!4611 = !DILocation(line: 152, column: 34, scope: !4612, inlinedAt: !4571)
!4612 = distinct !DILexicalBlock(scope: !4608, file: !654, line: 151, column: 17)
!4613 = !DILocation(line: 153, column: 41, scope: !4608, inlinedAt: !4571)
!4614 = !DILocation(line: 153, column: 13, scope: !4608, inlinedAt: !4571)
!4615 = !DILocation(line: 157, column: 11, scope: !4506, inlinedAt: !4571)
!4616 = !DILocation(line: 171, column: 16, scope: !4504, inlinedAt: !4571)
!4617 = !DILocation(line: 162, column: 15, scope: !4504, inlinedAt: !4571)
!4618 = !DILocation(line: 173, column: 18, scope: !4503, inlinedAt: !4571)
!4619 = !DILocation(line: 173, column: 15, scope: !4504, inlinedAt: !4571)
!4620 = !DILocation(line: 180, column: 20, scope: !4502, inlinedAt: !4571)
!4621 = !DILocation(line: 178, column: 21, scope: !4502, inlinedAt: !4571)
!4622 = !DILocation(line: 181, column: 22, scope: !4501, inlinedAt: !4571)
!4623 = !DILocation(line: 181, column: 19, scope: !4502, inlinedAt: !4571)
!4624 = !DILocation(line: 190, column: 25, scope: !4500, inlinedAt: !4571)
!4625 = !DILocation(line: 184, column: 19, scope: !4626, inlinedAt: !4571)
!4626 = distinct !DILexicalBlock(scope: !4501, file: !654, line: 182, column: 17)
!4627 = !DILocation(line: 186, column: 17, scope: !4626, inlinedAt: !4571)
!4628 = !DILocation(line: 191, column: 26, scope: !4500, inlinedAt: !4571)
!4629 = !DILocation(line: 196, column: 23, scope: !4497, inlinedAt: !4571)
!4630 = !DILocation(line: 197, column: 23, scope: !4497, inlinedAt: !4571)
!4631 = !DILocalVariable(name: "__fp", arg: 1, scope: !4632, file: !926, line: 63, type: !4520)
!4632 = distinct !DISubprogram(name: "getc_unlocked", scope: !926, file: !926, line: 63, type: !4633, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !311, variables: !4635)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!57, !4520}
!4635 = !{!4631}
!4636 = !DILocation(line: 63, column: 22, scope: !4632, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 201, column: 27, scope: !4497, inlinedAt: !4571)
!4638 = !DILocation(line: 65, column: 10, scope: !4632, inlinedAt: !4637)
!4639 = !DILocation(line: 65, column: 10, scope: !4640, inlinedAt: !4637)
!4640 = !DILexicalBlockFile(scope: !4632, file: !926, discriminator: 1)
!4641 = !DILocation(line: 65, column: 10, scope: !4642, inlinedAt: !4637)
!4642 = !DILexicalBlockFile(scope: !4632, file: !926, discriminator: 2)
!4643 = !DILocation(line: 65, column: 10, scope: !4644, inlinedAt: !4637)
!4644 = !DILexicalBlockFile(scope: !4632, file: !926, discriminator: 3)
!4645 = !DILocation(line: 195, column: 27, scope: !4497, inlinedAt: !4571)
!4646 = !DILocation(line: 202, column: 27, scope: !4497, inlinedAt: !4571)
!4647 = !DILocation(line: 63, column: 22, scope: !4632, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 210, column: 33, scope: !4649, inlinedAt: !4571)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !654, line: 207, column: 25)
!4650 = distinct !DILexicalBlock(scope: !4497, file: !654, line: 206, column: 27)
!4651 = !DILocation(line: 65, column: 10, scope: !4632, inlinedAt: !4648)
!4652 = !DILocation(line: 65, column: 10, scope: !4640, inlinedAt: !4648)
!4653 = !DILocation(line: 65, column: 10, scope: !4642, inlinedAt: !4648)
!4654 = !DILocation(line: 65, column: 10, scope: !4644, inlinedAt: !4648)
!4655 = !DILocation(line: 210, column: 29, scope: !4656, inlinedAt: !4571)
!4656 = !DILexicalBlockFile(scope: !4649, file: !654, discriminator: 1)
!4657 = distinct !{!4657, !4658, !4659}
!4658 = !DILocation(line: 193, column: 19, scope: !4499)
!4659 = !DILocation(line: 241, column: 21, scope: !4499)
!4660 = !DILocation(line: 216, column: 23, scope: !4497, inlinedAt: !4571)
!4661 = !DILocation(line: 217, column: 27, scope: !4662, inlinedAt: !4571)
!4662 = distinct !DILexicalBlock(scope: !4497, file: !654, line: 217, column: 27)
!4663 = !DILocation(line: 217, column: 64, scope: !4662, inlinedAt: !4571)
!4664 = !DILocation(line: 217, column: 27, scope: !4497, inlinedAt: !4571)
!4665 = !DILocation(line: 219, column: 28, scope: !4497, inlinedAt: !4571)
!4666 = !DILocation(line: 198, column: 30, scope: !4497, inlinedAt: !4571)
!4667 = !DILocation(line: 220, column: 28, scope: !4497, inlinedAt: !4571)
!4668 = !DILocation(line: 198, column: 34, scope: !4497, inlinedAt: !4571)
!4669 = !DILocation(line: 199, column: 29, scope: !4497, inlinedAt: !4571)
!4670 = !DILocation(line: 222, column: 36, scope: !4671, inlinedAt: !4571)
!4671 = distinct !DILexicalBlock(scope: !4497, file: !654, line: 222, column: 27)
!4672 = !DILocation(line: 222, column: 27, scope: !4497, inlinedAt: !4571)
!4673 = !DILocation(line: 225, column: 63, scope: !4674, inlinedAt: !4571)
!4674 = distinct !DILexicalBlock(scope: !4671, file: !654, line: 223, column: 25)
!4675 = !DILocation(line: 225, column: 46, scope: !4674, inlinedAt: !4571)
!4676 = !DILocation(line: 226, column: 25, scope: !4674, inlinedAt: !4571)
!4677 = !DILocation(line: 229, column: 36, scope: !4678, inlinedAt: !4571)
!4678 = distinct !DILexicalBlock(scope: !4671, file: !654, line: 228, column: 25)
!4679 = !DILocation(line: 230, column: 73, scope: !4678, inlinedAt: !4571)
!4680 = !DILocation(line: 230, column: 46, scope: !4678, inlinedAt: !4571)
!4681 = !DILocation(line: 232, column: 35, scope: !4682, inlinedAt: !4571)
!4682 = distinct !DILexicalBlock(scope: !4497, file: !654, line: 232, column: 27)
!4683 = !DILocation(line: 232, column: 27, scope: !4497, inlinedAt: !4571)
!4684 = !DILocation(line: 236, column: 27, scope: !4685, inlinedAt: !4571)
!4685 = distinct !DILexicalBlock(scope: !4682, file: !654, line: 233, column: 25)
!4686 = !DILocation(line: 237, column: 27, scope: !4685, inlinedAt: !4571)
!4687 = !DILocation(line: 239, column: 39, scope: !4497, inlinedAt: !4571)
!4688 = !DILocation(line: 239, column: 50, scope: !4497, inlinedAt: !4571)
!4689 = !DILocation(line: 239, column: 61, scope: !4497, inlinedAt: !4571)
!4690 = !DILocalVariable(name: "__dest", arg: 1, scope: !4691, file: !4692, line: 107, type: !4695)
!4691 = distinct !DISubprogram(name: "strcpy", scope: !4692, file: !4692, line: 107, type: !4693, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !311, variables: !4696)
!4692 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!44, !4695, !3865}
!4695 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!4696 = !{!4690, !4697}
!4697 = !DILocalVariable(name: "__src", arg: 2, scope: !4691, file: !4692, line: 107, type: !3865)
!4698 = !DILocation(line: 107, column: 1, scope: !4691, inlinedAt: !4699)
!4699 = distinct !DILocation(line: 239, column: 23, scope: !4497, inlinedAt: !4571)
!4700 = !DILocation(line: 109, column: 49, scope: !4691, inlinedAt: !4699)
!4701 = !DILocation(line: 109, column: 10, scope: !4691, inlinedAt: !4699)
!4702 = !DILocation(line: 107, column: 1, scope: !4691, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 240, column: 23, scope: !4497, inlinedAt: !4571)
!4704 = !DILocation(line: 109, column: 49, scope: !4691, inlinedAt: !4703)
!4705 = !DILocation(line: 109, column: 10, scope: !4691, inlinedAt: !4703)
!4706 = !DILocation(line: 241, column: 21, scope: !4498, inlinedAt: !4571)
!4707 = !DILocation(line: 242, column: 19, scope: !4500, inlinedAt: !4571)
!4708 = !DILocation(line: 243, column: 32, scope: !4709, inlinedAt: !4571)
!4709 = distinct !DILexicalBlock(scope: !4500, file: !654, line: 243, column: 23)
!4710 = !DILocation(line: 243, column: 23, scope: !4500, inlinedAt: !4571)
!4711 = !DILocation(line: 247, column: 33, scope: !4712, inlinedAt: !4571)
!4712 = distinct !DILexicalBlock(scope: !4709, file: !654, line: 246, column: 21)
!4713 = !DILocation(line: 247, column: 45, scope: !4712, inlinedAt: !4571)
!4714 = !DILocation(line: 253, column: 11, scope: !4504, inlinedAt: !4571)
!4715 = !DILocation(line: 377, column: 23, scope: !4506, inlinedAt: !4571)
!4716 = !DILocation(line: 378, column: 5, scope: !4506, inlinedAt: !4571)
!4717 = !DILocation(line: 396, column: 15, scope: !4484)
!4718 = !DILocation(line: 590, column: 8, scope: !4493)
!4719 = !DILocation(line: 590, column: 17, scope: !4493)
!4720 = !DILocation(line: 589, column: 3, scope: !4721)
!4721 = !DILexicalBlockFile(scope: !4494, file: !654, discriminator: 1)
!4722 = !DILocation(line: 592, column: 9, scope: !4491)
!4723 = !DILocation(line: 592, column: 35, scope: !4492)
!4724 = !DILocation(line: 593, column: 9, scope: !4492)
!4725 = !DILocation(line: 593, column: 24, scope: !4726)
!4726 = !DILexicalBlockFile(scope: !4492, file: !654, discriminator: 1)
!4727 = !DILocation(line: 593, column: 31, scope: !4726)
!4728 = !DILocation(line: 593, column: 34, scope: !4729)
!4729 = !DILexicalBlockFile(scope: !4492, file: !654, discriminator: 2)
!4730 = !DILocation(line: 593, column: 45, scope: !4729)
!4731 = !DILocation(line: 592, column: 9, scope: !4732)
!4732 = !DILexicalBlockFile(scope: !4493, file: !654, discriminator: 1)
!4733 = !DILocation(line: 595, column: 29, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4492, file: !654, line: 594, column: 7)
!4735 = !DILocation(line: 595, column: 27, scope: !4734)
!4736 = !DILocation(line: 595, column: 46, scope: !4734)
!4737 = !DILocation(line: 596, column: 9, scope: !4734)
!4738 = !DILocation(line: 591, column: 19, scope: !4493)
!4739 = !DILocation(line: 591, column: 36, scope: !4493)
!4740 = !DILocation(line: 591, column: 16, scope: !4493)
!4741 = !DILocation(line: 591, column: 52, scope: !4732)
!4742 = !DILocation(line: 591, column: 69, scope: !4493)
!4743 = !DILocation(line: 591, column: 49, scope: !4493)
!4744 = distinct !{!4744, !4745, !4746}
!4745 = !DILocation(line: 589, column: 3, scope: !4494)
!4746 = !DILocation(line: 597, column: 7, scope: !4494)
!4747 = !DILocation(line: 602, column: 7, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4484, file: !654, line: 602, column: 7)
!4749 = !DILocation(line: 602, column: 18, scope: !4748)
!4750 = !DILocation(line: 602, column: 7, scope: !4484)
!4751 = !DILocation(line: 612, column: 3, scope: !4484)
