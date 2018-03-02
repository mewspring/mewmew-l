; ModuleID = 'coreutils-8.27/src/sum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Print checksum and block counts for each FILE.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [124 x i8] c"\0A  -r              use BSD sum algorithm, use 1K blocks\0A  -s, --sysv      use System V sum algorithm, use 512 bytes blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [18 x i8] c"Kayvan Aghaiepour\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"sysv\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"%05d %5s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !103
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !109
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !114
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !117
@.str.39 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.41 = private unnamed_addr constant [6 x i8] c"%.0Lf\00", align 1
@.str.3.42 = private unnamed_addr constant [6 x i8] c"%.1Lf\00", align 1
@power_letter = internal unnamed_addr constant [9 x i8] c"\00KMGTPEZY", align 1, !dbg !124
@.str.4.43 = private unnamed_addr constant [11 x i8] c"BLOCK_SIZE\00", align 1
@.str.5.44 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.9.45 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@block_size_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.48, i32 0, i32 0), i8* null], align 16, !dbg !139
@block_size_opts = internal constant [2 x i32] [i32 176, i32 144], align 4, !dbg !146
@.str.6.46 = private unnamed_addr constant [18 x i8] c"eEgGkKmMpPtTyYzZ0\00", align 1
@.str.7.47 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.8.48 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !155
@.str.53 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.65, i32 0, i32 0), i8* null], align 16, !dbg !162
@.str.56 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.57 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.58 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.59 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.60 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.61 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.62 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.63 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.64 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.65 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !190
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !197
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !210
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.69 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.70 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.71 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !217
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !224
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !212
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !226
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.94 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.98 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !231
@.str.1.109 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.113 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.114 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !240
@.str.127 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.128 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.129 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.130 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.131 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !253
@.str.3.140 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.141 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.142 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.143 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.144 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !678 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !682, metadata !683), !dbg !684
  %2 = icmp eq i32 %0, 0, !dbg !685
  br i1 %2, label %8, label %3, !dbg !687

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !688, !tbaa !691
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !688
  %6 = load i8*, i8** @program_name, align 8, !dbg !688, !tbaa !691
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !695
  br label %42, !dbg !697

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !699
  %10 = load i8*, i8** @program_name, align 8, !dbg !699, !tbaa !691
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !701
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !703
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !691
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !704
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !705
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !691
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !708
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !710
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !691
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !711
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !712
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !691
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !713
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !714
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !691
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !715
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !68, metadata !683) #10, !dbg !716
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !68, metadata !683) #10, !dbg !716
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !718
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !719
  %29 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !721
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !79, metadata !683) #10, !dbg !722
  %30 = icmp eq i8* %29, null, !dbg !723
  br i1 %30, label %37, label %31, !dbg !724

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #13, !dbg !725
  %33 = icmp eq i32 %32, 0, !dbg !725
  br i1 %33, label %37, label %34, !dbg !727

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !729
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !731
  br label %37, !dbg !733

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !734
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !735
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !736
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !737
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #14, !dbg !738
  unreachable, !dbg !738
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !739 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !744, metadata !683), !dbg !753
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !745, metadata !683), !dbg !754
  tail call void @llvm.dbg.value(metadata i1 (i8*, i32)* @bsd_sum_file, i64 0, metadata !749, metadata !683), !dbg !755
  %3 = load i8*, i8** %1, align 8, !dbg !756, !tbaa !691
  tail call void @set_program_name(i8* %3) #10, !dbg !757
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !758
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !759
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !760
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !761
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !691
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #10, !dbg !763
  store i1 false, i1* @have_read_stdin, align 1
  br label %10, !dbg !764

; <label>:10:                                     ; preds = %14, %2
  %11 = phi i1 (i8*, i32)* [ @bsd_sum_file, %2 ], [ %15, %14 ]
  tail call void @llvm.dbg.value(metadata i1 (i8*, i32)* %11, i64 0, metadata !749, metadata !683), !dbg !755
  %12 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !765
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !747, metadata !683), !dbg !767
  switch i32 %12, label %20 [
    i32 -1, label %21
    i32 114, label %14
    i32 115, label %13
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !768

; <label>:13:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i1 (i8*, i32)* @sysv_sum_file, i64 0, metadata !749, metadata !683), !dbg !755
  br label %14, !dbg !769

; <label>:14:                                     ; preds = %13, %10
  %15 = phi i1 (i8*, i32)* [ @sysv_sum_file, %13 ], [ @bsd_sum_file, %10 ]
  br label %10, !dbg !755, !llvm.loop !772

; <label>:16:                                     ; preds = %10
  tail call void @usage(i32 0) #15, !dbg !774
  unreachable, !dbg !774

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !775, !tbaa !691
  %19 = load i8*, i8** @Version, align 8, !dbg !775, !tbaa !691
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #10, !dbg !775
  tail call void @exit(i32 0) #14, !dbg !776
  unreachable, !dbg !775

; <label>:20:                                     ; preds = %10
  tail call void @usage(i32 1) #15, !dbg !778
  unreachable, !dbg !778

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* @optind, align 4, !dbg !779, !tbaa !780
  %23 = sub nsw i32 %0, %22, !dbg !782
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !748, metadata !683), !dbg !783
  %24 = icmp slt i32 %23, 1, !dbg !784
  br i1 %24, label %28, label %25, !dbg !786

; <label>:25:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !746, metadata !683), !dbg !787
  %26 = icmp slt i32 %22, %0, !dbg !788
  br i1 %26, label %27, label %44, !dbg !792

; <label>:27:                                     ; preds = %25
  br label %31, !dbg !794

; <label>:28:                                     ; preds = %21
  %29 = tail call zeroext i1 %11(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 %23) #10, !dbg !795
  %30 = zext i1 %29 to i8, !dbg !796
  tail call void @llvm.dbg.value(metadata i8 %30, i64 0, metadata !746, metadata !683), !dbg !787
  br label %44, !dbg !797

; <label>:31:                                     ; preds = %27, %31
  %32 = phi i32 [ %41, %31 ], [ %22, %27 ]
  %33 = phi i8 [ %39, %31 ], [ 1, %27 ]
  %34 = sext i32 %32 to i64, !dbg !794
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !794
  %36 = load i8*, i8** %35, align 8, !dbg !794, !tbaa !691
  %37 = tail call zeroext i1 %11(i8* %36, i32 %23) #10, !dbg !798
  %38 = zext i1 %37 to i8, !dbg !798
  %39 = and i8 %38, %33, !dbg !799
  tail call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !746, metadata !683), !dbg !787
  %40 = load i32, i32* @optind, align 4, !dbg !800, !tbaa !780
  %41 = add nsw i32 %40, 1, !dbg !800
  store i32 %41, i32* @optind, align 4, !dbg !800, !tbaa !780
  tail call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !746, metadata !683), !dbg !787
  %42 = icmp slt i32 %41, %0, !dbg !788
  br i1 %42, label %31, label %43, !dbg !792, !llvm.loop !802

; <label>:43:                                     ; preds = %31
  br label %44, !dbg !787

; <label>:44:                                     ; preds = %43, %25, %28
  %45 = phi i8 [ %30, %28 ], [ 1, %25 ], [ %39, %43 ]
  tail call void @llvm.dbg.value(metadata i8 %45, i64 0, metadata !746, metadata !683), !dbg !787
  %46 = load i1, i1* @have_read_stdin, align 1
  br i1 %46, label %47, label %55, !dbg !805

; <label>:47:                                     ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !807, !tbaa !691
  %49 = tail call i32 @rpl_fclose(%struct._IO_FILE* %48) #10, !dbg !809
  %50 = icmp eq i32 %49, -1, !dbg !810
  br i1 %50, label %51, label %55, !dbg !811

; <label>:51:                                     ; preds = %47
  %52 = tail call i32* @__errno_location() #1, !dbg !812
  %53 = load i32, i32* %52, align 4, !dbg !812, !tbaa !780
  %54 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !813
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %54) #10, !dbg !814
  unreachable, !dbg !812

; <label>:55:                                     ; preds = %47, %44
  %56 = and i8 %45, 1, !dbg !816
  %57 = xor i8 %56, 1, !dbg !816
  %58 = zext i8 %57 to i32, !dbg !816
  ret i32 %58, !dbg !817
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @bsd_sum_file(i8*, i32) unnamed_addr #6 !dbg !818 {
  %3 = alloca [652 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !820, metadata !683), !dbg !893
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !821, metadata !683), !dbg !894
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !876, metadata !683), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !877, metadata !683), !dbg !896
  %4 = getelementptr inbounds [652 x i8], [652 x i8]* %3, i64 0, i64 0, !dbg !897
  call void @llvm.lifetime.start(i64 652, i8* nonnull %4) #10, !dbg !897
  tail call void @llvm.dbg.declare(metadata [652 x i8]* %3, metadata !882, metadata !683), !dbg !898
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !889, metadata !683), !dbg !899
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !890, metadata !683), !dbg !900
  %5 = load i8, i8* %0, align 1, !dbg !901, !tbaa !903
  %6 = icmp eq i8 %5, 45, !dbg !904
  br i1 %6, label %7, label %13, !dbg !907

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !909
  %9 = load i8, i8* %8, align 1, !dbg !909, !tbaa !903
  %10 = icmp eq i8 %9, 0, !dbg !912
  br i1 %10, label %11, label %13, !dbg !914

; <label>:11:                                     ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !915, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, i64 0, metadata !822, metadata !683), !dbg !918
  store i1 true, i1* @have_read_stdin, align 1
  br label %20, !dbg !919

; <label>:13:                                     ; preds = %2, %7
  %14 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)), !dbg !920
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, i64 0, metadata !822, metadata !683), !dbg !918
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !922
  br i1 %15, label %16, label %20, !dbg !924

; <label>:16:                                     ; preds = %13
  %17 = tail call i32* @__errno_location() #1, !dbg !925
  %18 = load i32, i32* %17, align 4, !dbg !925, !tbaa !780
  %19 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !927
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %19) #10, !dbg !929
  br label %82, !dbg !931

; <label>:20:                                     ; preds = %13, %11
  %21 = phi i1 [ true, %11 ], [ false, %13 ]
  %22 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, i64 0, metadata !822, metadata !683), !dbg !918
  tail call void @fadvise(%struct._IO_FILE* %22, i32 2) #10, !dbg !932
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %22, i64 0, i32 1
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %22, i64 0, i32 2
  br label %25, !dbg !933

; <label>:25:                                     ; preds = %38, %20
  %26 = phi i64 [ 0, %20 ], [ %40, %38 ]
  %27 = phi i32 [ 0, %20 ], [ %45, %38 ]
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !876, metadata !683), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !877, metadata !683), !dbg !896
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, i64 0, metadata !934, metadata !683) #10, !dbg !940
  %28 = load i8*, i8** %23, align 8, !dbg !943, !tbaa !944
  %29 = load i8*, i8** %24, align 8, !dbg !943, !tbaa !948
  %30 = icmp ult i8* %28, %29, !dbg !943
  br i1 %30, label %31, label %35, !dbg !943, !prof !949

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !950
  store i8* %32, i8** %23, align 8, !dbg !950, !tbaa !944
  %33 = load i8, i8* %28, align 1, !dbg !950, !tbaa !903
  %34 = zext i8 %33 to i32, !dbg !950
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !881, metadata !683), !dbg !952
  br label %38, !dbg !953

; <label>:35:                                     ; preds = %25
  %36 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %22) #10, !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !881, metadata !683), !dbg !952
  %37 = icmp eq i32 %36, -1, !dbg !956
  br i1 %37, label %46, label %38, !dbg !953

; <label>:38:                                     ; preds = %31, %35
  %39 = phi i32 [ %34, %31 ], [ %36, %35 ]
  %40 = add i64 %26, 1, !dbg !957
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !877, metadata !683), !dbg !896
  %41 = lshr i32 %27, 1, !dbg !959
  %42 = shl nuw nsw i32 %27, 15, !dbg !960
  %43 = or i32 %41, %42, !dbg !961
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !876, metadata !683), !dbg !895
  %44 = add i32 %39, %43, !dbg !962
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !876, metadata !683), !dbg !895
  %45 = and i32 %44, 65535, !dbg !963
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !876, metadata !683), !dbg !895
  br label %25, !dbg !964, !llvm.loop !966

; <label>:46:                                     ; preds = %35
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, i64 0, metadata !968, metadata !683), !dbg !971
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %22, i64 0, i32 0, !dbg !974
  %48 = load i32, i32* %47, align 8, !dbg !974, !tbaa !975
  %49 = and i32 %48, 32, !dbg !974
  %50 = icmp eq i32 %49, 0, !dbg !976
  br i1 %50, label %57, label %51, !dbg !977

; <label>:51:                                     ; preds = %46
  %52 = tail call i32* @__errno_location() #1, !dbg !978
  %53 = load i32, i32* %52, align 4, !dbg !978, !tbaa !780
  %54 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !980
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %54) #10, !dbg !982
  br i1 %21, label %82, label %55, !dbg !984

; <label>:55:                                     ; preds = %51
  %56 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %22) #10, !dbg !985
  br label %82, !dbg !985

; <label>:57:                                     ; preds = %46
  br i1 %21, label %65, label %58, !dbg !987

; <label>:58:                                     ; preds = %57
  %59 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %22) #10, !dbg !989
  %60 = icmp eq i32 %59, 0, !dbg !991
  br i1 %60, label %65, label %61, !dbg !992

; <label>:61:                                     ; preds = %58
  %62 = tail call i32* @__errno_location() #1, !dbg !993
  %63 = load i32, i32* %62, align 4, !dbg !993, !tbaa !780
  %64 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !995
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %64) #10, !dbg !997
  br label %82, !dbg !999

; <label>:65:                                     ; preds = %58, %57
  %66 = call i8* @human_readable(i64 %26, i8* nonnull %4, i32 0, i64 1, i64 1024) #10, !dbg !1000
  %67 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i32 %27, i8* %66) #10, !dbg !1001
  %68 = icmp sgt i32 %1, 1, !dbg !1002
  br i1 %68, label %69, label %71, !dbg !1004

; <label>:69:                                     ; preds = %65
  %70 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #10, !dbg !1005
  br label %71, !dbg !1005

; <label>:71:                                     ; preds = %69, %65
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1006, metadata !683) #10, !dbg !1011
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1013, !tbaa !691
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 5, !dbg !1013
  %74 = load i8*, i8** %73, align 8, !dbg !1013, !tbaa !1014
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 6, !dbg !1013
  %76 = load i8*, i8** %75, align 8, !dbg !1013, !tbaa !1015
  %77 = icmp ult i8* %74, %76, !dbg !1013
  br i1 %77, label %80, label %78, !dbg !1013, !prof !949

; <label>:78:                                     ; preds = %71
  %79 = call i32 @__overflow(%struct._IO_FILE* %72, i32 10) #10, !dbg !1016
  br label %82, !dbg !1016

; <label>:80:                                     ; preds = %71
  %81 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1018
  store i8* %81, i8** %73, align 8, !dbg !1018, !tbaa !1014
  store i8 10, i8* %74, align 1, !dbg !1018, !tbaa !903
  br label %82, !dbg !1018

; <label>:82:                                     ; preds = %80, %78, %51, %55, %61, %16
  %83 = phi i1 [ false, %61 ], [ false, %16 ], [ false, %55 ], [ false, %51 ], [ true, %78 ], [ true, %80 ]
  call void @llvm.lifetime.end(i64 652, i8* nonnull %4) #10, !dbg !1020
  ret i1 %83, !dbg !1020
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @sysv_sum_file(i8*, i32) unnamed_addr #6 !dbg !1021 {
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [652 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1023, metadata !683), !dbg !1045
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1024, metadata !683), !dbg !1046
  %5 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !1047
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %5) #10, !dbg !1047
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !1026, metadata !683), !dbg !1048
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1030, metadata !683), !dbg !1049
  %6 = getelementptr inbounds [652 x i8], [652 x i8]* %4, i64 0, i64 0, !dbg !1050
  call void @llvm.lifetime.start(i64 652, i8* nonnull %6) #10, !dbg !1050
  tail call void @llvm.dbg.declare(metadata [652 x i8]* %4, metadata !1031, metadata !683), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1034, metadata !683), !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1038, metadata !683), !dbg !1053
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1039, metadata !683), !dbg !1054
  %7 = load i8, i8* %0, align 1, !dbg !1055, !tbaa !903
  %8 = icmp eq i8 %7, 45, !dbg !1057
  br i1 %8, label %9, label %20, !dbg !1060

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1062
  %11 = load i8, i8* %10, align 1, !dbg !1062, !tbaa !903
  %12 = icmp eq i8 %11, 0, !dbg !1065
  br i1 %12, label %13, label %20, !dbg !1067

; <label>:13:                                     ; preds = %9
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1025, metadata !683), !dbg !1068
  store i1 true, i1* @have_read_stdin, align 1
  br label %14, !dbg !1069

; <label>:14:                                     ; preds = %20, %13
  %15 = phi i1 [ false, %20 ], [ true, %13 ]
  %16 = phi i32 [ %21, %20 ], [ 0, %13 ]
  %17 = bitcast [8192 x i8]* %3 to <4 x i8>*
  %18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 4
  %19 = bitcast i8* %18 to <4 x i8>*
  br label %27, !dbg !1068

; <label>:20:                                     ; preds = %2, %9
  %21 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %0, i32 0) #10, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !1025, metadata !683), !dbg !1068
  %22 = icmp eq i32 %21, -1, !dbg !1074
  br i1 %22, label %23, label %14, !dbg !1076

; <label>:23:                                     ; preds = %20
  %24 = tail call i32* @__errno_location() #1, !dbg !1077
  %25 = load i32, i32* %24, align 4, !dbg !1077, !tbaa !780
  %26 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1079
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %26) #10, !dbg !1081
  br label %150, !dbg !1083

; <label>:27:                                     ; preds = %14, %115
  %28 = phi i32 [ %116, %115 ], [ 0, %14 ]
  %29 = phi i64 [ %117, %115 ], [ 0, %14 ]
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !1025, metadata !683), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1030, metadata !683), !dbg !1049
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1034, metadata !683), !dbg !1052
  %30 = call i64 @safe_read(i32 %16, i8* nonnull %5, i64 8192) #10, !dbg !1084
  call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1044, metadata !683), !dbg !1085
  switch i64 %30, label %31 [
    i64 0, label %118
    i64 -1, label %99
  ], !dbg !1086

; <label>:31:                                     ; preds = %27
  %32 = icmp ult i64 %30, 8, !dbg !1087
  br i1 %32, label %33, label %36, !dbg !1087

; <label>:33:                                     ; preds = %89, %36, %31
  %34 = phi i64 [ 0, %36 ], [ 0, %31 ], [ %37, %89 ]
  %35 = phi i32 [ %28, %36 ], [ %28, %31 ], [ %97, %89 ]
  br label %105, !dbg !1087

; <label>:36:                                     ; preds = %31
  %37 = and i64 %30, -8, !dbg !1087
  %38 = icmp eq i64 %37, 0, !dbg !1087
  br i1 %38, label %33, label %39, !dbg !1087

; <label>:39:                                     ; preds = %36
  %40 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %28, i32 0, !dbg !1087
  %41 = add i64 %37, -8, !dbg !1087
  %42 = lshr exact i64 %41, 3, !dbg !1087
  %43 = and i64 %42, 1, !dbg !1087
  %44 = icmp eq i64 %43, 0, !dbg !1087
  br i1 %44, label %45, label %52, !dbg !1087

; <label>:45:                                     ; preds = %39
  br label %46, !dbg !1087

; <label>:46:                                     ; preds = %45
  %47 = load <4 x i8>, <4 x i8>* %17, align 16, !dbg !1087, !tbaa !903
  %48 = load <4 x i8>, <4 x i8>* %19, align 4, !dbg !1087, !tbaa !903
  %49 = zext <4 x i8> %47 to <4 x i32>, !dbg !1087
  %50 = zext <4 x i8> %48 to <4 x i32>, !dbg !1087
  %51 = add <4 x i32> %49, %40, !dbg !1090
  br label %52, !dbg !1091

; <label>:52:                                     ; preds = %39, %46
  %53 = phi <4 x i32> [ %51, %46 ], [ undef, %39 ]
  %54 = phi <4 x i32> [ %50, %46 ], [ undef, %39 ]
  %55 = phi i64 [ 8, %46 ], [ 0, %39 ]
  %56 = phi <4 x i32> [ %51, %46 ], [ %40, %39 ]
  %57 = phi <4 x i32> [ %50, %46 ], [ zeroinitializer, %39 ]
  br label %58, !dbg !1087

; <label>:58:                                     ; preds = %52
  %59 = icmp eq i64 %42, 0, !dbg !1087
  br i1 %59, label %89, label %60, !dbg !1087

; <label>:60:                                     ; preds = %58
  br label %61, !dbg !1087

; <label>:61:                                     ; preds = %61, %60
  %62 = phi i64 [ %55, %60 ], [ %86, %61 ], !dbg !1091
  %63 = phi <4 x i32> [ %56, %60 ], [ %84, %61 ]
  %64 = phi <4 x i32> [ %57, %60 ], [ %85, %61 ]
  %65 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %62, !dbg !1087
  %66 = bitcast i8* %65 to <4 x i8>*, !dbg !1087
  %67 = load <4 x i8>, <4 x i8>* %66, align 8, !dbg !1087, !tbaa !903
  %68 = getelementptr i8, i8* %65, i64 4, !dbg !1087
  %69 = bitcast i8* %68 to <4 x i8>*, !dbg !1087
  %70 = load <4 x i8>, <4 x i8>* %69, align 4, !dbg !1087, !tbaa !903
  %71 = zext <4 x i8> %67 to <4 x i32>, !dbg !1087
  %72 = zext <4 x i8> %70 to <4 x i32>, !dbg !1087
  %73 = add <4 x i32> %71, %63, !dbg !1090
  %74 = add <4 x i32> %72, %64, !dbg !1090
  %75 = add i64 %62, 8, !dbg !1091
  %76 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %75, !dbg !1087
  %77 = bitcast i8* %76 to <4 x i8>*, !dbg !1087
  %78 = load <4 x i8>, <4 x i8>* %77, align 8, !dbg !1087, !tbaa !903
  %79 = getelementptr i8, i8* %76, i64 4, !dbg !1087
  %80 = bitcast i8* %79 to <4 x i8>*, !dbg !1087
  %81 = load <4 x i8>, <4 x i8>* %80, align 4, !dbg !1087, !tbaa !903
  %82 = zext <4 x i8> %78 to <4 x i32>, !dbg !1087
  %83 = zext <4 x i8> %81 to <4 x i32>, !dbg !1087
  %84 = add <4 x i32> %82, %73, !dbg !1090
  %85 = add <4 x i32> %83, %74, !dbg !1090
  %86 = add i64 %62, 16, !dbg !1091
  %87 = icmp eq i64 %86, %37, !dbg !1091
  br i1 %87, label %88, label %61, !dbg !1091, !llvm.loop !1093

; <label>:88:                                     ; preds = %61
  br label %89, !dbg !1090

; <label>:89:                                     ; preds = %58, %88
  %90 = phi <4 x i32> [ %53, %58 ], [ %84, %88 ]
  %91 = phi <4 x i32> [ %54, %58 ], [ %85, %88 ]
  %92 = add <4 x i32> %91, %90, !dbg !1090
  %93 = shufflevector <4 x i32> %92, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !1090
  %94 = add <4 x i32> %92, %93, !dbg !1090
  %95 = shufflevector <4 x i32> %94, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !1090
  %96 = add <4 x i32> %94, %95, !dbg !1090
  %97 = extractelement <4 x i32> %96, i32 0, !dbg !1090
  %98 = icmp eq i64 %30, %37
  br i1 %98, label %115, label %33, !dbg !1087

; <label>:99:                                     ; preds = %27
  %100 = tail call i32* @__errno_location() #1, !dbg !1098
  %101 = load i32, i32* %100, align 4, !dbg !1098, !tbaa !780
  %102 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1101
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %102) #10, !dbg !1103
  br i1 %15, label %150, label %103, !dbg !1105

; <label>:103:                                    ; preds = %99
  %104 = call i32 @close(i32 %16) #10, !dbg !1106
  br label %150, !dbg !1106

; <label>:105:                                    ; preds = %33, %105
  %106 = phi i64 [ %112, %105 ], [ %34, %33 ]
  %107 = phi i32 [ %111, %105 ], [ %35, %33 ]
  %108 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %106, !dbg !1087
  %109 = load i8, i8* %108, align 1, !dbg !1087, !tbaa !903
  %110 = zext i8 %109 to i32, !dbg !1087
  %111 = add i32 %110, %107, !dbg !1090
  call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !1034, metadata !683), !dbg !1052
  %112 = add nuw i64 %106, 1, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !1042, metadata !683), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !1042, metadata !683), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !1034, metadata !683), !dbg !1052
  %113 = icmp eq i64 %112, %30, !dbg !1109
  br i1 %113, label %114, label %105, !dbg !1111, !llvm.loop !1113

; <label>:114:                                    ; preds = %105
  br label %115, !dbg !1115

; <label>:115:                                    ; preds = %114, %89
  %116 = phi i32 [ %97, %89 ], [ %111, %114 ]
  %117 = add i64 %30, %29, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %117, i64 0, metadata !1030, metadata !683), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1030, metadata !683), !dbg !1049
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1034, metadata !683), !dbg !1052
  br label %27

; <label>:118:                                    ; preds = %27
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !1030, metadata !683), !dbg !1049
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1034, metadata !683), !dbg !1052
  br i1 %15, label %126, label %119, !dbg !1116

; <label>:119:                                    ; preds = %118
  %120 = call i32 @close(i32 %16) #10, !dbg !1118
  %121 = icmp eq i32 %120, 0, !dbg !1120
  br i1 %121, label %126, label %122, !dbg !1121

; <label>:122:                                    ; preds = %119
  %123 = tail call i32* @__errno_location() #1, !dbg !1123
  %124 = load i32, i32* %123, align 4, !dbg !1123, !tbaa !780
  %125 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1125
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %125) #10, !dbg !1127
  br label %150, !dbg !1129

; <label>:126:                                    ; preds = %119, %118
  %127 = and i32 %28, 65535, !dbg !1130
  %128 = lshr i32 %28, 16, !dbg !1131
  %129 = add nuw nsw i32 %127, %128, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !1032, metadata !683), !dbg !1133
  %130 = add i32 %128, %28, !dbg !1134
  %131 = and i32 %130, 65535, !dbg !1134
  %132 = lshr i32 %129, 16, !dbg !1135
  %133 = add nuw nsw i32 %131, %132, !dbg !1136
  call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !1033, metadata !683), !dbg !1137
  %134 = call i8* @human_readable(i64 %29, i8* nonnull %6, i32 0, i64 1, i64 512) #10, !dbg !1138
  %135 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %133, i8* %134) #10, !dbg !1139
  %136 = icmp eq i32 %1, 0, !dbg !1140
  br i1 %136, label %139, label %137, !dbg !1142

; <label>:137:                                    ; preds = %126
  %138 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %0) #10, !dbg !1143
  br label %139, !dbg !1143

; <label>:139:                                    ; preds = %126, %137
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1006, metadata !683) #10, !dbg !1144
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1146, !tbaa !691
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 5, !dbg !1146
  %142 = load i8*, i8** %141, align 8, !dbg !1146, !tbaa !1014
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 6, !dbg !1146
  %144 = load i8*, i8** %143, align 8, !dbg !1146, !tbaa !1015
  %145 = icmp ult i8* %142, %144, !dbg !1146
  br i1 %145, label %148, label %146, !dbg !1146, !prof !949

; <label>:146:                                    ; preds = %139
  %147 = call i32 @__overflow(%struct._IO_FILE* %140, i32 10) #10, !dbg !1147
  br label %150, !dbg !1147

; <label>:148:                                    ; preds = %139
  %149 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !1148
  store i8* %149, i8** %141, align 8, !dbg !1148, !tbaa !1014
  store i8 10, i8* %142, align 1, !dbg !1148, !tbaa !903
  br label %150, !dbg !1148

; <label>:150:                                    ; preds = %99, %103, %148, %146, %122, %23
  %151 = phi i1 [ false, %122 ], [ false, %23 ], [ true, %146 ], [ true, %148 ], [ false, %103 ], [ false, %99 ]
  call void @llvm.lifetime.end(i64 652, i8* nonnull %6) #10, !dbg !1149
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %5) #10, !dbg !1149
  ret i1 %151, !dbg !1149
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1150 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1152, metadata !683), !dbg !1153
  store i8* %0, i8** @file_name, align 8, !dbg !1154, !tbaa !691
  ret void, !dbg !1155
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1156 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1160, metadata !1161), !dbg !1162
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1163, !tbaa !1164
  ret void, !dbg !1166
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1167 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1172, !tbaa !691
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1173
  %3 = icmp eq i32 %2, 0, !dbg !1174
  br i1 %3, label %21, label %4, !dbg !1175

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1176, !tbaa !1164, !range !1178
  %6 = icmp eq i8 %5, 0, !dbg !1176
  %7 = tail call i32* @__errno_location() #1, !dbg !1179
  br i1 %6, label %11, label %8, !dbg !1181

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1182, !tbaa !780
  %10 = icmp eq i32 %9, 32, !dbg !1184
  br i1 %10, label %21, label %11, !dbg !1185

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !1187
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1169, metadata !683), !dbg !1188
  %13 = load i8*, i8** @file_name, align 8, !dbg !1189, !tbaa !691
  %14 = icmp eq i8* %13, null, !dbg !1189
  %15 = load i32, i32* %7, align 4, !tbaa !780
  br i1 %14, label %18, label %16, !dbg !1190

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1191
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1193
  br label %19, !dbg !1195

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #10, !dbg !1196
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1197, !tbaa !780
  tail call void @_exit(i32 %20) #14, !dbg !1198
  unreachable, !dbg !1198

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1199, !tbaa !691
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1201
  %24 = icmp eq i32 %23, 0, !dbg !1202
  br i1 %24, label %27, label %25, !dbg !1203

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1204, !tbaa !780
  tail call void @_exit(i32 %26) #14, !dbg !1205
  unreachable, !dbg !1205

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1206
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1207 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1214, metadata !683), !dbg !1220
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1215, metadata !683), !dbg !1221
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1216, metadata !683), !dbg !1222
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1217, metadata !683), !dbg !1223
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1224
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1218, metadata !683), !dbg !1224
  ret void, !dbg !1225
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1226 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1270, metadata !683), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1271, metadata !683), !dbg !1273
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1274
  br i1 %3, label %7, label %4, !dbg !1276

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1214, metadata !683) #10, !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1215, metadata !683) #10, !dbg !1281
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1216, metadata !683) #10, !dbg !1282
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1217, metadata !683) #10, !dbg !1283
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1284
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1218, metadata !683) #10, !dbg !1284
  br label %7, !dbg !1285

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1286
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @human_readable(i64, i8*, i32, i64, i64) local_unnamed_addr #6 !dbg !1287 {
  %6 = alloca [41 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [41 x i8]* %6, metadata !1375, metadata !683), !dbg !1395
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1291, metadata !683), !dbg !1398
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1292, metadata !683), !dbg !1399
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1293, metadata !683), !dbg !1400
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1294, metadata !683), !dbg !1401
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1295, metadata !683), !dbg !1402
  %7 = and i32 %2, 3, !dbg !1403
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1296, metadata !683), !dbg !1404
  %8 = and i32 %2, 32, !dbg !1405
  %9 = icmp ne i32 %8, 0, !dbg !1406
  %10 = select i1 %9, i32 1024, i32 1000, !dbg !1406
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1297, metadata !683), !dbg !1407
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1300, metadata !683), !dbg !1408
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !1301, metadata !683), !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1307, metadata !683), !dbg !1410
  %11 = tail call %struct.lconv* @localeconv() #10, !dbg !1411
  tail call void @llvm.dbg.value(metadata %struct.lconv* %11, i64 0, metadata !1310, metadata !683), !dbg !1412
  %12 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 0, !dbg !1413
  %13 = load i8*, i8** %12, align 8, !dbg !1413, !tbaa !1414
  %14 = tail call i64 @strlen(i8* %13) #13, !dbg !1416
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1340, metadata !683), !dbg !1417
  %15 = add i64 %14, -1, !dbg !1418
  %16 = icmp ult i64 %15, 16, !dbg !1418
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1306, metadata !683), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1307, metadata !683), !dbg !1410
  %17 = select i1 %16, i64 %14, i64 1, !dbg !1418
  %18 = select i1 %16, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), !dbg !1418
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1306, metadata !683), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1307, metadata !683), !dbg !1410
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 2, !dbg !1421
  %20 = load i8*, i8** %19, align 8, !dbg !1421, !tbaa !1422
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1308, metadata !683), !dbg !1423
  %21 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 1, !dbg !1424
  %22 = load i8*, i8** %21, align 8, !dbg !1424, !tbaa !1426
  %23 = tail call i64 @strlen(i8* %22) #13, !dbg !1427
  %24 = icmp ult i64 %23, 17, !dbg !1428
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1309, metadata !683), !dbg !1429
  %25 = select i1 %24, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.40, i64 0, i64 0), !dbg !1430
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1309, metadata !683), !dbg !1429
  %26 = getelementptr inbounds i8, i8* %1, i64 647, !dbg !1431
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1303, metadata !683), !dbg !1432
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1302, metadata !683), !dbg !1433
  %27 = icmp ugt i64 %4, %3, !dbg !1434
  br i1 %27, label %36, label %28, !dbg !1435

; <label>:28:                                     ; preds = %5
  %29 = urem i64 %3, %4, !dbg !1436
  %30 = icmp eq i64 %29, 0, !dbg !1437
  br i1 %30, label %31, label %56, !dbg !1438

; <label>:31:                                     ; preds = %28
  %32 = udiv i64 %3, %4, !dbg !1439
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1341, metadata !683), !dbg !1440
  %33 = mul i64 %32, %0, !dbg !1441
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1298, metadata !683), !dbg !1442
  %34 = udiv i64 %33, %32, !dbg !1443
  %35 = icmp eq i64 %34, %0, !dbg !1445
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1299, metadata !683), !dbg !1446
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1305, metadata !683), !dbg !1447
  br i1 %35, label %149, label %56

; <label>:36:                                     ; preds = %5
  %37 = icmp eq i64 %3, 0, !dbg !1448
  br i1 %37, label %56, label %38, !dbg !1449

; <label>:38:                                     ; preds = %36
  %39 = urem i64 %4, %3, !dbg !1450
  %40 = icmp eq i64 %39, 0, !dbg !1452
  br i1 %40, label %41, label %56, !dbg !1453

; <label>:41:                                     ; preds = %38
  %42 = udiv i64 %4, %3, !dbg !1455
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1346, metadata !683), !dbg !1456
  %43 = urem i64 %0, %42, !dbg !1457
  %44 = mul i64 %43, 10, !dbg !1458
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1349, metadata !683), !dbg !1459
  %45 = urem i64 %44, %42, !dbg !1460
  %46 = shl i64 %45, 1, !dbg !1461
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !1350, metadata !683), !dbg !1462
  %47 = udiv i64 %0, %42, !dbg !1463
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !1298, metadata !683), !dbg !1442
  %48 = udiv i64 %44, %42, !dbg !1464
  %49 = trunc i64 %48 to i32, !dbg !1465
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !1299, metadata !683), !dbg !1446
  %50 = icmp ult i64 %46, %42, !dbg !1466
  %51 = icmp ne i64 %46, 0, !dbg !1467
  %52 = zext i1 %51 to i32, !dbg !1467
  %53 = icmp ult i64 %42, %46, !dbg !1469
  %54 = select i1 %53, i32 3, i32 2, !dbg !1471
  %55 = select i1 %50, i32 %52, i32 %54, !dbg !1472
  br label %149, !dbg !1472

; <label>:56:                                     ; preds = %31, %36, %38, %28
  %57 = uitofp i64 %4 to x86_fp80, !dbg !1473
  tail call void @llvm.dbg.value(metadata x86_fp80 %57, i64 0, metadata !1351, metadata !683), !dbg !1474
  %58 = uitofp i64 %0 to x86_fp80, !dbg !1475
  %59 = uitofp i64 %3 to x86_fp80, !dbg !1476
  %60 = fdiv x86_fp80 %59, %57, !dbg !1477
  %61 = fmul x86_fp80 %58, %60, !dbg !1478
  tail call void @llvm.dbg.value(metadata x86_fp80 %61, i64 0, metadata !1354, metadata !683), !dbg !1479
  %62 = and i32 %2, 16, !dbg !1480
  %63 = icmp eq i32 %62, 0, !dbg !1480
  br i1 %63, label %66, label %64, !dbg !1481, !llvm.loop !1482

; <label>:64:                                     ; preds = %56
  %65 = uitofp i32 %10 to x86_fp80
  br label %84, !dbg !1485

; <label>:66:                                     ; preds = %56
  %67 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false), !dbg !1486
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1488, metadata !683), !dbg !1497
  tail call void @llvm.dbg.value(metadata x86_fp80 %61, i64 0, metadata !1493, metadata !683), !dbg !1499
  %68 = icmp ne i32 %7, 1, !dbg !1500
  %69 = fcmp olt x86_fp80 %61, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1501
  %70 = and i1 %68, %69, !dbg !1503
  br i1 %70, label %71, label %80, !dbg !1503

; <label>:71:                                     ; preds = %66
  %72 = fptoui x86_fp80 %61 to i64, !dbg !1504
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !1494, metadata !683), !dbg !1505
  %73 = icmp eq i32 %7, 0, !dbg !1506
  %74 = uitofp i64 %72 to x86_fp80, !dbg !1507
  %75 = fcmp une x86_fp80 %74, %61, !dbg !1509
  %76 = and i1 %73, %75, !dbg !1510
  %77 = zext i1 %76 to i64, !dbg !1511
  %78 = add i64 %77, %72, !dbg !1513
  %79 = uitofp i64 %78 to x86_fp80, !dbg !1514
  tail call void @llvm.dbg.value(metadata x86_fp80 %79, i64 0, metadata !1493, metadata !683), !dbg !1499
  br label %80, !dbg !1515

; <label>:80:                                     ; preds = %66, %71
  %81 = phi x86_fp80 [ %79, %71 ], [ %61, %66 ]
  tail call void @llvm.dbg.value(metadata x86_fp80 %81, i64 0, metadata !1493, metadata !683), !dbg !1499
  %82 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.41, i64 0, i64 0), x86_fp80 %81) #10, !dbg !1516
  %83 = tail call i64 @strlen(i8* %1) #13, !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !1355, metadata !683), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1356, metadata !683), !dbg !1520
  br label %140, !dbg !1521

; <label>:84:                                     ; preds = %64
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  tail call void @llvm.dbg.value(metadata x86_fp80 %65, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %85 = fmul x86_fp80 %65, %65, !dbg !1522
  %86 = fcmp ugt x86_fp80 %85, %61, !dbg !1523
  br i1 %86, label %87, label %384, !dbg !1524, !llvm.loop !1482

; <label>:87:                                     ; preds = %404, %400, %396, %392, %388, %384, %84, %408
  %88 = phi x86_fp80 [ %65, %84 ], [ %385, %384 ], [ %389, %388 ], [ %393, %392 ], [ %397, %396 ], [ %401, %400 ], [ %405, %404 ], [ %409, %408 ]
  %89 = phi i32 [ 1, %84 ], [ 2, %384 ], [ 3, %388 ], [ 4, %392 ], [ 5, %396 ], [ 6, %400 ], [ 7, %404 ], [ 8, %408 ]
  %90 = fdiv x86_fp80 %61, %88, !dbg !1525
  tail call void @llvm.dbg.value(metadata x86_fp80 %90, i64 0, metadata !1354, metadata !683), !dbg !1479
  %91 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false), !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1488, metadata !683), !dbg !1527
  tail call void @llvm.dbg.value(metadata x86_fp80 %90, i64 0, metadata !1493, metadata !683), !dbg !1529
  %92 = icmp ne i32 %7, 1, !dbg !1530
  %93 = fcmp olt x86_fp80 %90, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1531
  %94 = and i1 %92, %93, !dbg !1532
  br i1 %94, label %95, label %104, !dbg !1532

; <label>:95:                                     ; preds = %87
  %96 = fptoui x86_fp80 %90 to i64, !dbg !1533
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !1494, metadata !683), !dbg !1534
  %97 = icmp eq i32 %7, 0, !dbg !1535
  %98 = uitofp i64 %96 to x86_fp80, !dbg !1536
  %99 = fcmp une x86_fp80 %98, %90, !dbg !1537
  %100 = and i1 %97, %99, !dbg !1538
  %101 = zext i1 %100 to i64, !dbg !1539
  %102 = add i64 %101, %96, !dbg !1540
  %103 = uitofp i64 %102 to x86_fp80, !dbg !1541
  tail call void @llvm.dbg.value(metadata x86_fp80 %103, i64 0, metadata !1493, metadata !683), !dbg !1529
  br label %104, !dbg !1542

; <label>:104:                                    ; preds = %87, %95
  %105 = phi x86_fp80 [ %103, %95 ], [ %90, %87 ]
  tail call void @llvm.dbg.value(metadata x86_fp80 %105, i64 0, metadata !1493, metadata !683), !dbg !1529
  %106 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.42, i64 0, i64 0), x86_fp80 %105) #10, !dbg !1543
  %107 = tail call i64 @strlen(i8* %1) #13, !dbg !1545
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !1355, metadata !683), !dbg !1519
  %108 = add i64 %17, 1, !dbg !1546
  tail call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !1356, metadata !683), !dbg !1520
  %109 = zext i32 %8 to i64, !dbg !1547
  %110 = lshr exact i64 %109, 5, !dbg !1547
  %111 = xor i64 %110, 3, !dbg !1547
  %112 = add i64 %111, %17, !dbg !1549
  %113 = icmp ult i64 %112, %107, !dbg !1550
  br i1 %113, label %122, label %114, !dbg !1551

; <label>:114:                                    ; preds = %104
  %115 = and i32 %2, 8, !dbg !1552
  %116 = icmp eq i32 %115, 0, !dbg !1552
  br i1 %116, label %140, label %117, !dbg !1554

; <label>:117:                                    ; preds = %114
  %118 = add i64 %107, -1, !dbg !1555
  %119 = getelementptr inbounds i8, i8* %1, i64 %118, !dbg !1556
  %120 = load i8, i8* %119, align 1, !dbg !1556, !tbaa !903
  %121 = icmp eq i8 %120, 48, !dbg !1557
  br i1 %121, label %122, label %140, !dbg !1558

; <label>:122:                                    ; preds = %117, %104
  %123 = fmul x86_fp80 %90, 0xK4002A000000000000000, !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1488, metadata !683), !dbg !1561
  tail call void @llvm.dbg.value(metadata x86_fp80 %123, i64 0, metadata !1493, metadata !683), !dbg !1563
  %124 = fcmp olt x86_fp80 %123, 0xK403EFFFFFFFFFFFFFFFF, !dbg !1564
  %125 = and i1 %92, %124, !dbg !1565
  br i1 %125, label %126, label %135, !dbg !1565

; <label>:126:                                    ; preds = %122
  %127 = fptoui x86_fp80 %123 to i64, !dbg !1566
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1494, metadata !683), !dbg !1567
  %128 = icmp eq i32 %7, 0, !dbg !1568
  %129 = uitofp i64 %127 to x86_fp80, !dbg !1569
  %130 = fcmp une x86_fp80 %129, %123, !dbg !1570
  %131 = and i1 %128, %130, !dbg !1571
  %132 = zext i1 %131 to i64, !dbg !1572
  %133 = add i64 %132, %127, !dbg !1573
  %134 = uitofp i64 %133 to x86_fp80, !dbg !1574
  tail call void @llvm.dbg.value(metadata x86_fp80 %134, i64 0, metadata !1493, metadata !683), !dbg !1563
  br label %135, !dbg !1575

; <label>:135:                                    ; preds = %122, %126
  %136 = phi x86_fp80 [ %134, %126 ], [ %123, %122 ]
  tail call void @llvm.dbg.value(metadata x86_fp80 %136, i64 0, metadata !1493, metadata !683), !dbg !1563
  %137 = fdiv x86_fp80 %136, 0xK4002A000000000000000, !dbg !1559
  %138 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.41, i64 0, i64 0), x86_fp80 %137) #10, !dbg !1576
  %139 = tail call i64 @strlen(i8* %1) #13, !dbg !1578
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !1355, metadata !683), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1356, metadata !683), !dbg !1520
  br label %140, !dbg !1579

; <label>:140:                                    ; preds = %117, %135, %114, %80
  %141 = phi i64 [ %83, %80 ], [ %139, %135 ], [ %107, %117 ], [ %107, %114 ]
  %142 = phi i64 [ 0, %80 ], [ 0, %135 ], [ %108, %117 ], [ %108, %114 ]
  %143 = phi i32 [ -1, %80 ], [ %89, %135 ], [ %89, %117 ], [ %89, %114 ]
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !1300, metadata !683), !dbg !1408
  tail call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !1356, metadata !683), !dbg !1520
  tail call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !1355, metadata !683), !dbg !1519
  %144 = sub i64 0, %141, !dbg !1580
  %145 = getelementptr inbounds i8, i8* %26, i64 %144, !dbg !1580
  tail call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !1302, metadata !683), !dbg !1433
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %145, i8* %1, i64 %141, i32 1, i1 false), !dbg !1581
  %146 = getelementptr inbounds i8, i8* %145, i64 %141, !dbg !1582
  %147 = sub i64 0, %142, !dbg !1583
  %148 = getelementptr inbounds i8, i8* %146, i64 %147, !dbg !1583
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !1304, metadata !683), !dbg !1584
  br label %269, !dbg !1585

; <label>:149:                                    ; preds = %31, %41
  %150 = phi i32 [ 0, %31 ], [ %55, %41 ]
  %151 = phi i32 [ 0, %31 ], [ %49, %41 ]
  %152 = phi i64 [ %33, %31 ], [ %47, %41 ]
  tail call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !1298, metadata !683), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %151, i64 0, metadata !1299, metadata !683), !dbg !1446
  tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !1305, metadata !683), !dbg !1447
  %153 = and i32 %2, 16, !dbg !1586
  %154 = icmp ne i32 %153, 0, !dbg !1586
  br i1 %154, label %155, label %222, !dbg !1587

; <label>:155:                                    ; preds = %149
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  %156 = zext i32 %10 to i64, !dbg !1588
  %157 = icmp ugt i64 %156, %152, !dbg !1589
  br i1 %157, label %222, label %158, !dbg !1590, !llvm.loop !1591

; <label>:158:                                    ; preds = %155
  br label %159, !dbg !1442

; <label>:159:                                    ; preds = %158, %184
  %160 = phi i32 [ %185, %184 ], [ %150, %158 ]
  %161 = phi i32 [ %186, %184 ], [ 0, %158 ]
  %162 = phi i32 [ %174, %184 ], [ %151, %158 ]
  %163 = phi i64 [ %173, %184 ], [ %152, %158 ]
  tail call void @llvm.dbg.value(metadata i64 %163, i64 0, metadata !1298, metadata !683), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %162, i64 0, metadata !1299, metadata !683), !dbg !1446
  tail call void @llvm.dbg.value(metadata i32 %161, i64 0, metadata !1300, metadata !683), !dbg !1408
  tail call void @llvm.dbg.value(metadata i32 %160, i64 0, metadata !1305, metadata !683), !dbg !1447
  %164 = urem i64 %163, %156, !dbg !1594
  %165 = mul nuw nsw i64 %164, 10, !dbg !1595
  %166 = zext i32 %162 to i64, !dbg !1596
  %167 = add nuw nsw i64 %165, %166, !dbg !1597
  %168 = trunc i64 %167 to i32, !dbg !1598
  tail call void @llvm.dbg.value(metadata i32 %168, i64 0, metadata !1360, metadata !683), !dbg !1599
  %169 = urem i32 %168, %10, !dbg !1600
  %170 = shl nuw nsw i32 %169, 1, !dbg !1601
  %171 = ashr i32 %160, 1, !dbg !1602
  %172 = add nsw i32 %170, %171, !dbg !1603
  tail call void @llvm.dbg.value(metadata i32 %172, i64 0, metadata !1367, metadata !683), !dbg !1604
  %173 = udiv i64 %163, %156, !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !1298, metadata !683), !dbg !1442
  %174 = udiv i32 %168, %10, !dbg !1606
  tail call void @llvm.dbg.value(metadata i32 %174, i64 0, metadata !1299, metadata !683), !dbg !1446
  %175 = icmp ult i32 %172, %10, !dbg !1607
  br i1 %175, label %176, label %180, !dbg !1608

; <label>:176:                                    ; preds = %159
  %177 = sub nsw i32 0, %160, !dbg !1609
  %178 = icmp ne i32 %172, %177, !dbg !1609
  %179 = zext i1 %178 to i32, !dbg !1609
  br label %184, !dbg !1610

; <label>:180:                                    ; preds = %159
  %181 = add i32 %172, %160, !dbg !1612
  %182 = icmp ult i32 %10, %181, !dbg !1613
  %183 = select i1 %182, i32 3, i32 2, !dbg !1614
  br label %184, !dbg !1615

; <label>:184:                                    ; preds = %180, %176
  %185 = phi i32 [ %179, %176 ], [ %183, %180 ], !dbg !1617
  tail call void @llvm.dbg.value(metadata i32 %185, i64 0, metadata !1305, metadata !683), !dbg !1447
  %186 = add nuw nsw i32 %161, 1, !dbg !1619
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !1300, metadata !683), !dbg !1408
  %187 = icmp ule i64 %156, %173, !dbg !1620
  %188 = icmp slt i32 %186, 8, !dbg !1621
  %189 = and i1 %188, %187, !dbg !1623
  br i1 %189, label %159, label %190, !dbg !1623, !llvm.loop !1591

; <label>:190:                                    ; preds = %184
  %191 = icmp ult i64 %173, 10, !dbg !1624
  br i1 %191, label %192, label %222, !dbg !1626

; <label>:192:                                    ; preds = %190
  %193 = icmp eq i32 %7, 1, !dbg !1627
  br i1 %193, label %194, label %198, !dbg !1630

; <label>:194:                                    ; preds = %192
  %195 = and i32 %174, 1, !dbg !1631
  %196 = add nuw nsw i32 %185, %195, !dbg !1632
  %197 = icmp ugt i32 %196, 2, !dbg !1633
  br i1 %197, label %202, label %208, !dbg !1634

; <label>:198:                                    ; preds = %192
  %199 = icmp eq i32 %7, 0, !dbg !1636
  %200 = icmp ne i32 %185, 0, !dbg !1637
  %201 = and i1 %199, %200, !dbg !1638
  br i1 %201, label %202, label %208, !dbg !1638

; <label>:202:                                    ; preds = %198, %194
  %203 = add nsw i32 %174, 1, !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %203, i64 0, metadata !1299, metadata !683), !dbg !1446
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1305, metadata !683), !dbg !1447
  %204 = icmp eq i32 %203, 10, !dbg !1641
  %205 = add i64 %173, 1, !dbg !1643
  tail call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !1298, metadata !683), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1299, metadata !683), !dbg !1446
  br i1 %204, label %206, label %208

; <label>:206:                                    ; preds = %202
  tail call void @llvm.dbg.value(metadata i64 %205, i64 0, metadata !1298, metadata !683), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1305, metadata !683), !dbg !1447
  %207 = icmp ult i64 %205, 10, !dbg !1645
  br i1 %207, label %208, label %222, !dbg !1647

; <label>:208:                                    ; preds = %202, %198, %194, %206
  %209 = phi i64 [ %205, %206 ], [ %173, %194 ], [ %173, %198 ], [ %173, %202 ]
  %210 = phi i32 [ 0, %206 ], [ %174, %194 ], [ %174, %198 ], [ %203, %202 ]
  %211 = phi i32 [ 0, %206 ], [ %185, %194 ], [ %185, %198 ], [ 0, %202 ]
  %212 = icmp ne i32 %210, 0, !dbg !1648
  %213 = and i32 %2, 8, !dbg !1650
  %214 = icmp eq i32 %213, 0, !dbg !1650
  %215 = or i1 %214, %212, !dbg !1652
  br i1 %215, label %216, label %222, !dbg !1652

; <label>:216:                                    ; preds = %208
  %217 = add nsw i32 %210, 48, !dbg !1653
  %218 = trunc i32 %217 to i8, !dbg !1655
  %219 = getelementptr inbounds i8, i8* %1, i64 646, !dbg !1656
  tail call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !1302, metadata !683), !dbg !1433
  store i8 %218, i8* %219, align 1, !dbg !1657, !tbaa !903
  %220 = sub i64 0, %17, !dbg !1658
  %221 = getelementptr inbounds i8, i8* %219, i64 %220, !dbg !1658
  tail call void @llvm.dbg.value(metadata i8* %221, i64 0, metadata !1302, metadata !683), !dbg !1433
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %221, i8* %18, i64 %17, i32 1, i1 false), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1305, metadata !683), !dbg !1447
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1299, metadata !683), !dbg !1446
  br label %222, !dbg !1660

; <label>:222:                                    ; preds = %208, %155, %206, %216, %190, %149
  %223 = phi i32 [ 0, %216 ], [ 0, %206 ], [ %185, %190 ], [ %150, %155 ], [ %150, %149 ], [ %211, %208 ]
  %224 = phi i8* [ %221, %216 ], [ %26, %206 ], [ %26, %190 ], [ %26, %155 ], [ %26, %149 ], [ %26, %208 ]
  %225 = phi i32 [ %186, %216 ], [ %186, %206 ], [ %186, %190 ], [ 0, %155 ], [ -1, %149 ], [ %186, %208 ]
  %226 = phi i32 [ 0, %216 ], [ 0, %206 ], [ %174, %190 ], [ %151, %155 ], [ %151, %149 ], [ 0, %208 ]
  %227 = phi i64 [ %209, %216 ], [ 10, %206 ], [ %173, %190 ], [ %152, %155 ], [ %152, %149 ], [ %209, %208 ]
  tail call void @llvm.dbg.value(metadata i64 %227, i64 0, metadata !1298, metadata !683), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !1299, metadata !683), !dbg !1446
  tail call void @llvm.dbg.value(metadata i32 %225, i64 0, metadata !1300, metadata !683), !dbg !1408
  tail call void @llvm.dbg.value(metadata i8* %224, i64 0, metadata !1302, metadata !683), !dbg !1433
  tail call void @llvm.dbg.value(metadata i32 %223, i64 0, metadata !1305, metadata !683), !dbg !1447
  %228 = trunc i32 %2 to i2, !dbg !1661
  switch i2 %228, label %255 [
    i2 1, label %229
    i2 0, label %237
  ], !dbg !1661

; <label>:229:                                    ; preds = %222
  %230 = sext i32 %223 to i64, !dbg !1662
  %231 = and i64 %227, 1, !dbg !1664
  %232 = sub nsw i64 0, %231, !dbg !1665
  %233 = icmp ne i64 %230, %232, !dbg !1665
  %234 = zext i1 %233 to i32, !dbg !1665
  %235 = add nsw i32 %234, %226, !dbg !1666
  %236 = icmp sgt i32 %235, 5, !dbg !1667
  br i1 %236, label %240, label %255, !dbg !1668

; <label>:237:                                    ; preds = %222
  %238 = add nsw i32 %226, %223, !dbg !1670
  %239 = icmp sgt i32 %238, 0, !dbg !1671
  br i1 %239, label %240, label %255, !dbg !1672

; <label>:240:                                    ; preds = %237, %229
  %241 = add i64 %227, 1, !dbg !1674
  tail call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1298, metadata !683), !dbg !1442
  %242 = zext i32 %10 to i64, !dbg !1676
  %243 = icmp eq i64 %241, %242, !dbg !1679
  %244 = and i1 %154, %243, !dbg !1680
  %245 = icmp slt i32 %225, 8, !dbg !1681
  %246 = and i1 %245, %244, !dbg !1680
  br i1 %246, label %247, label %255, !dbg !1680

; <label>:247:                                    ; preds = %240
  %248 = add nsw i32 %225, 1, !dbg !1683
  tail call void @llvm.dbg.value(metadata i32 %248, i64 0, metadata !1300, metadata !683), !dbg !1408
  %249 = and i32 %2, 8, !dbg !1685
  %250 = icmp eq i32 %249, 0, !dbg !1685
  br i1 %250, label %251, label %255, !dbg !1687

; <label>:251:                                    ; preds = %247
  %252 = getelementptr inbounds i8, i8* %224, i64 -1, !dbg !1688
  tail call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !1302, metadata !683), !dbg !1433
  store i8 48, i8* %252, align 1, !dbg !1690, !tbaa !903
  %253 = sub i64 0, %17, !dbg !1691
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !1691
  tail call void @llvm.dbg.value(metadata i8* %254, i64 0, metadata !1302, metadata !683), !dbg !1433
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* %18, i64 %17, i32 1, i1 false), !dbg !1692
  br label %255, !dbg !1693

; <label>:255:                                    ; preds = %251, %247, %222, %240, %237, %229
  %256 = phi i8* [ %224, %240 ], [ %224, %229 ], [ %224, %237 ], [ %224, %222 ], [ %224, %247 ], [ %254, %251 ]
  %257 = phi i32 [ %225, %240 ], [ %225, %229 ], [ %225, %237 ], [ %225, %222 ], [ %248, %247 ], [ %248, %251 ]
  %258 = phi i64 [ %241, %240 ], [ %227, %229 ], [ %227, %237 ], [ %227, %222 ], [ 1, %247 ], [ 1, %251 ]
  tail call void @llvm.dbg.value(metadata i64 %258, i64 0, metadata !1298, metadata !683), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %257, i64 0, metadata !1300, metadata !683), !dbg !1408
  tail call void @llvm.dbg.value(metadata i8* %256, i64 0, metadata !1302, metadata !683), !dbg !1433
  tail call void @llvm.dbg.value(metadata i8* %256, i64 0, metadata !1304, metadata !683), !dbg !1584
  br label %259, !dbg !1694, !llvm.loop !1695

; <label>:259:                                    ; preds = %259, %255
  %260 = phi i8* [ %256, %255 ], [ %265, %259 ]
  %261 = phi i64 [ %258, %255 ], [ %266, %259 ]
  tail call void @llvm.dbg.value(metadata i64 %261, i64 0, metadata !1298, metadata !683), !dbg !1442
  tail call void @llvm.dbg.value(metadata i8* %260, i64 0, metadata !1302, metadata !683), !dbg !1433
  %262 = urem i64 %261, 10, !dbg !1697
  %263 = trunc i64 %262 to i8, !dbg !1698
  %264 = or i8 %263, 48, !dbg !1699
  %265 = getelementptr inbounds i8, i8* %260, i64 -1, !dbg !1700
  tail call void @llvm.dbg.value(metadata i8* %265, i64 0, metadata !1302, metadata !683), !dbg !1433
  store i8 %264, i8* %265, align 1, !dbg !1701, !tbaa !903
  %266 = udiv i64 %261, 10, !dbg !1702
  tail call void @llvm.dbg.value(metadata i64 %266, i64 0, metadata !1298, metadata !683), !dbg !1442
  %267 = icmp ugt i64 %261, 9, !dbg !1703
  br i1 %267, label %259, label %268, !dbg !1704, !llvm.loop !1695

; <label>:268:                                    ; preds = %259
  br label %269, !dbg !1408

; <label>:269:                                    ; preds = %268, %140
  %270 = phi i8* [ %148, %140 ], [ %256, %268 ]
  %271 = phi i8* [ %145, %140 ], [ %265, %268 ]
  %272 = phi i32 [ %143, %140 ], [ %257, %268 ]
  tail call void @llvm.dbg.value(metadata i32 %272, i64 0, metadata !1300, metadata !683), !dbg !1408
  tail call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1302, metadata !683), !dbg !1433
  tail call void @llvm.dbg.value(metadata i8* %270, i64 0, metadata !1304, metadata !683), !dbg !1584
  %273 = and i32 %2, 4, !dbg !1706
  %274 = icmp eq i32 %273, 0, !dbg !1706
  br i1 %274, label %307, label %275, !dbg !1707

; <label>:275:                                    ; preds = %269
  %276 = ptrtoint i8* %270 to i64, !dbg !1708
  %277 = ptrtoint i8* %271 to i64, !dbg !1708
  %278 = sub i64 %276, %277, !dbg !1708
  tail call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1380, metadata !683) #10, !dbg !1709
  tail call void @llvm.dbg.value(metadata i64 %278, i64 0, metadata !1381, metadata !683) #10, !dbg !1710
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1382, metadata !683) #10, !dbg !1711
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1383, metadata !683) #10, !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1385, metadata !683) #10, !dbg !1713
  %279 = tail call i64 @strlen(i8* %25) #13, !dbg !1714
  tail call void @llvm.dbg.value(metadata i64 %279, i64 0, metadata !1386, metadata !683) #10, !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %278, i64 0, metadata !1387, metadata !683) #10, !dbg !1716
  %280 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 0, !dbg !1717
  call void @llvm.lifetime.start(i64 41, i8* nonnull %280) #10, !dbg !1717
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %280, i8* %271, i64 %278, i32 1, i1 false) #10, !dbg !1718
  tail call void @llvm.dbg.value(metadata i8* %270, i64 0, metadata !1384, metadata !683) #10, !dbg !1719
  %281 = sub i64 0, %279
  br label %282, !dbg !1720

; <label>:282:                                    ; preds = %304, %275
  %283 = phi i8* [ %270, %275 ], [ %305, %304 ]
  %284 = phi i64 [ -1, %275 ], [ %298, %304 ]
  %285 = phi i8* [ %20, %275 ], [ %296, %304 ]
  %286 = phi i64 [ %278, %275 ], [ %301, %304 ]
  tail call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1387, metadata !683) #10, !dbg !1716
  tail call void @llvm.dbg.value(metadata i8* %285, i64 0, metadata !1382, metadata !683) #10, !dbg !1711
  tail call void @llvm.dbg.value(metadata i64 %284, i64 0, metadata !1385, metadata !683) #10, !dbg !1713
  tail call void @llvm.dbg.value(metadata i8* %283, i64 0, metadata !1384, metadata !683) #10, !dbg !1719
  %287 = load i8, i8* %285, align 1, !dbg !1721, !tbaa !903
  tail call void @llvm.dbg.value(metadata i8 %287, i64 0, metadata !1388, metadata !683) #10, !dbg !1722
  %288 = icmp eq i8 %287, 0, !dbg !1723
  br i1 %288, label %294, label %289, !dbg !1725

; <label>:289:                                    ; preds = %282
  %290 = icmp ult i8 %287, 127, !dbg !1726
  %291 = zext i8 %287 to i64, !dbg !1728
  %292 = select i1 %290, i64 %291, i64 %286, !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1385, metadata !683) #10, !dbg !1713
  %293 = getelementptr inbounds i8, i8* %285, i64 1, !dbg !1731
  tail call void @llvm.dbg.value(metadata i8* %293, i64 0, metadata !1382, metadata !683) #10, !dbg !1711
  br label %294, !dbg !1732

; <label>:294:                                    ; preds = %289, %282
  %295 = phi i64 [ %292, %289 ], [ %284, %282 ]
  %296 = phi i8* [ %293, %289 ], [ %285, %282 ]
  tail call void @llvm.dbg.value(metadata i8* %296, i64 0, metadata !1382, metadata !683) #10, !dbg !1711
  tail call void @llvm.dbg.value(metadata i64 %295, i64 0, metadata !1385, metadata !683) #10, !dbg !1713
  %297 = icmp ult i64 %286, %295, !dbg !1733
  tail call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1385, metadata !683) #10, !dbg !1713
  %298 = select i1 %297, i64 %286, i64 %295, !dbg !1735
  tail call void @llvm.dbg.value(metadata i64 %298, i64 0, metadata !1385, metadata !683) #10, !dbg !1713
  %299 = sub i64 0, %298, !dbg !1736
  %300 = getelementptr inbounds i8, i8* %283, i64 %299, !dbg !1736
  tail call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !1384, metadata !683) #10, !dbg !1719
  %301 = sub i64 %286, %298, !dbg !1737
  tail call void @llvm.dbg.value(metadata i64 %301, i64 0, metadata !1387, metadata !683) #10, !dbg !1716
  %302 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %301, !dbg !1738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %300, i8* %302, i64 %298, i32 1, i1 false) #10, !dbg !1739
  %303 = icmp eq i64 %301, 0, !dbg !1740
  br i1 %303, label %306, label %304, !dbg !1742

; <label>:304:                                    ; preds = %294
  %305 = getelementptr inbounds i8, i8* %300, i64 %281, !dbg !1743
  tail call void @llvm.dbg.value(metadata i8* %305, i64 0, metadata !1384, metadata !683) #10, !dbg !1719
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %305, i8* %25, i64 %279, i32 1, i1 false) #10, !dbg !1744
  tail call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !1384, metadata !683) #10, !dbg !1719
  br label %282

; <label>:306:                                    ; preds = %294
  tail call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !1384, metadata !683) #10, !dbg !1719
  call void @llvm.lifetime.end(i64 41, i8* nonnull %280) #10, !dbg !1745
  tail call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !1302, metadata !683), !dbg !1433
  br label %307, !dbg !1746

; <label>:307:                                    ; preds = %269, %306
  %308 = phi i8* [ %300, %306 ], [ %271, %269 ]
  tail call void @llvm.dbg.value(metadata i8* %308, i64 0, metadata !1302, metadata !683), !dbg !1433
  %309 = trunc i32 %2 to i8, !dbg !1747
  %310 = icmp slt i8 %309, 0, !dbg !1747
  br i1 %310, label %311, label %356, !dbg !1748

; <label>:311:                                    ; preds = %307
  %312 = icmp slt i32 %272, 0, !dbg !1749
  br i1 %312, label %313, label %322, !dbg !1750

; <label>:313:                                    ; preds = %311
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  %314 = icmp ugt i64 %4, 1, !dbg !1752
  br i1 %314, label %315, label %322, !dbg !1756

; <label>:315:                                    ; preds = %313
  %316 = zext i32 %10 to i64
  br label %317, !dbg !1756

; <label>:317:                                    ; preds = %315
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  br i1 false, label %320, label %318, !dbg !1758

; <label>:318:                                    ; preds = %317
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %319 = icmp ult i64 %316, %4, !dbg !1752
  br i1 %319, label %358, label %320, !dbg !1756, !llvm.loop !1759

; <label>:320:                                    ; preds = %383, %382, %379, %378, %375, %374, %371, %370, %367, %366, %363, %362, %359, %358, %318, %317
  %321 = phi i32 [ 8, %317 ], [ 1, %318 ], [ 8, %358 ], [ 2, %359 ], [ 8, %362 ], [ 3, %363 ], [ 8, %366 ], [ 4, %367 ], [ 8, %370 ], [ 5, %371 ], [ 8, %374 ], [ 6, %375 ], [ 8, %378 ], [ 7, %379 ], [ 8, %382 ], [ 8, %383 ]
  br label %322, !dbg !1408

; <label>:322:                                    ; preds = %320, %313, %311
  %323 = phi i32 [ %272, %311 ], [ 0, %313 ], [ %321, %320 ]
  tail call void @llvm.dbg.value(metadata i32 %323, i64 0, metadata !1300, metadata !683), !dbg !1408
  %324 = and i32 %2, 256, !dbg !1762
  %325 = or i32 %323, %324, !dbg !1764
  %326 = icmp eq i32 %325, 0, !dbg !1764
  %327 = and i32 %2, 64, !dbg !1765
  %328 = icmp eq i32 %327, 0, !dbg !1765
  %329 = or i1 %328, %326, !dbg !1767
  br i1 %329, label %332, label %330, !dbg !1767

; <label>:330:                                    ; preds = %322
  %331 = getelementptr inbounds i8, i8* %1, i64 648, !dbg !1768
  tail call void @llvm.dbg.value(metadata i8* %331, i64 0, metadata !1303, metadata !683), !dbg !1432
  store i8 32, i8* %26, align 1, !dbg !1769, !tbaa !903
  br label %332, !dbg !1770

; <label>:332:                                    ; preds = %322, %330
  %333 = phi i8* [ %331, %330 ], [ %26, %322 ]
  tail call void @llvm.dbg.value(metadata i8* %333, i64 0, metadata !1303, metadata !683), !dbg !1432
  %334 = icmp ne i32 %323, 0, !dbg !1771
  br i1 %334, label %335, label %346, !dbg !1773

; <label>:335:                                    ; preds = %332
  %336 = icmp eq i32 %8, 0, !dbg !1774
  %337 = icmp eq i32 %323, 1, !dbg !1775
  %338 = and i1 %336, %337, !dbg !1777
  br i1 %338, label %343, label %339, !dbg !1777

; <label>:339:                                    ; preds = %335
  %340 = sext i32 %323 to i64, !dbg !1778
  %341 = getelementptr inbounds [9 x i8], [9 x i8]* @power_letter, i64 0, i64 %340, !dbg !1778
  %342 = load i8, i8* %341, align 1, !dbg !1778, !tbaa !903
  br label %343, !dbg !1779

; <label>:343:                                    ; preds = %335, %339
  %344 = phi i8 [ %342, %339 ], [ 107, %335 ]
  %345 = getelementptr inbounds i8, i8* %333, i64 1, !dbg !1781
  tail call void @llvm.dbg.value(metadata i8* %345, i64 0, metadata !1303, metadata !683), !dbg !1432
  store i8 %344, i8* %333, align 1, !dbg !1783, !tbaa !903
  br label %346, !dbg !1784

; <label>:346:                                    ; preds = %343, %332
  %347 = phi i8* [ %345, %343 ], [ %333, %332 ]
  tail call void @llvm.dbg.value(metadata i8* %347, i64 0, metadata !1303, metadata !683), !dbg !1432
  %348 = icmp eq i32 %324, 0, !dbg !1785
  br i1 %348, label %356, label %349, !dbg !1787

; <label>:349:                                    ; preds = %346
  %350 = and i1 %9, %334, !dbg !1788
  br i1 %350, label %351, label %353, !dbg !1788

; <label>:351:                                    ; preds = %349
  %352 = getelementptr inbounds i8, i8* %347, i64 1, !dbg !1791
  tail call void @llvm.dbg.value(metadata i8* %352, i64 0, metadata !1303, metadata !683), !dbg !1432
  store i8 105, i8* %347, align 1, !dbg !1792, !tbaa !903
  br label %353, !dbg !1793

; <label>:353:                                    ; preds = %351, %349
  %354 = phi i8* [ %352, %351 ], [ %347, %349 ]
  tail call void @llvm.dbg.value(metadata i8* %354, i64 0, metadata !1303, metadata !683), !dbg !1432
  %355 = getelementptr inbounds i8, i8* %354, i64 1, !dbg !1794
  tail call void @llvm.dbg.value(metadata i8* %355, i64 0, metadata !1303, metadata !683), !dbg !1432
  store i8 66, i8* %354, align 1, !dbg !1795, !tbaa !903
  br label %356, !dbg !1796

; <label>:356:                                    ; preds = %346, %353, %307
  %357 = phi i8* [ %355, %353 ], [ %347, %346 ], [ %26, %307 ]
  tail call void @llvm.dbg.value(metadata i8* %357, i64 0, metadata !1303, metadata !683), !dbg !1432
  store i8 0, i8* %357, align 1, !dbg !1797, !tbaa !903
  ret i8* %308, !dbg !1798

; <label>:358:                                    ; preds = %318
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  br i1 false, label %320, label %359, !dbg !1758

; <label>:359:                                    ; preds = %358
  %360 = mul nuw nsw i64 %316, %316, !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %361 = icmp ult i64 %360, %4, !dbg !1752
  br i1 %361, label %362, label %320, !dbg !1756, !llvm.loop !1759

; <label>:362:                                    ; preds = %359
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  br i1 false, label %320, label %363, !dbg !1758

; <label>:363:                                    ; preds = %362
  %364 = mul nuw nsw i64 %360, %316, !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %365 = icmp ult i64 %364, %4, !dbg !1752
  br i1 %365, label %366, label %320, !dbg !1756, !llvm.loop !1759

; <label>:366:                                    ; preds = %363
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  br i1 false, label %320, label %367, !dbg !1758

; <label>:367:                                    ; preds = %366
  %368 = mul nuw nsw i64 %364, %316, !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %369 = icmp ult i64 %368, %4, !dbg !1752
  br i1 %369, label %370, label %320, !dbg !1756, !llvm.loop !1759

; <label>:370:                                    ; preds = %367
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  br i1 false, label %320, label %371, !dbg !1758

; <label>:371:                                    ; preds = %370
  %372 = mul nuw nsw i64 %368, %316, !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %373 = icmp ult i64 %372, %4, !dbg !1752
  br i1 %373, label %374, label %320, !dbg !1756, !llvm.loop !1759

; <label>:374:                                    ; preds = %371
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  br i1 false, label %320, label %375, !dbg !1758

; <label>:375:                                    ; preds = %374
  %376 = mul i64 %372, %316, !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %377 = icmp ult i64 %376, %4, !dbg !1752
  br i1 %377, label %378, label %320, !dbg !1756, !llvm.loop !1759

; <label>:378:                                    ; preds = %375
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  br i1 false, label %320, label %379, !dbg !1758

; <label>:379:                                    ; preds = %378
  %380 = mul i64 %376, %316, !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %316, i64 0, metadata !1370, metadata !683), !dbg !1751
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %381 = icmp ult i64 %380, %4, !dbg !1752
  br i1 %381, label %382, label %320, !dbg !1756, !llvm.loop !1759

; <label>:382:                                    ; preds = %379
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  br i1 true, label %320, label %383, !dbg !1758

; <label>:383:                                    ; preds = %382
  br label %320

; <label>:384:                                    ; preds = %84
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  %385 = fmul x86_fp80 %65, %65, !dbg !1801
  tail call void @llvm.dbg.value(metadata x86_fp80 %65, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %386 = fmul x86_fp80 %65, %385, !dbg !1522
  %387 = fcmp ugt x86_fp80 %386, %61, !dbg !1523
  br i1 %387, label %87, label %388, !dbg !1524, !llvm.loop !1482

; <label>:388:                                    ; preds = %384
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  %389 = fmul x86_fp80 %65, %385, !dbg !1801
  tail call void @llvm.dbg.value(metadata x86_fp80 %65, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %390 = fmul x86_fp80 %65, %389, !dbg !1522
  %391 = fcmp ugt x86_fp80 %390, %61, !dbg !1523
  br i1 %391, label %87, label %392, !dbg !1524, !llvm.loop !1482

; <label>:392:                                    ; preds = %388
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  %393 = fmul x86_fp80 %65, %389, !dbg !1801
  tail call void @llvm.dbg.value(metadata x86_fp80 %65, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %394 = fmul x86_fp80 %65, %393, !dbg !1522
  %395 = fcmp ugt x86_fp80 %394, %61, !dbg !1523
  br i1 %395, label %87, label %396, !dbg !1524, !llvm.loop !1482

; <label>:396:                                    ; preds = %392
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  %397 = fmul x86_fp80 %65, %393, !dbg !1801
  tail call void @llvm.dbg.value(metadata x86_fp80 %65, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %398 = fmul x86_fp80 %65, %397, !dbg !1522
  %399 = fcmp ugt x86_fp80 %398, %61, !dbg !1523
  br i1 %399, label %87, label %400, !dbg !1524, !llvm.loop !1482

; <label>:400:                                    ; preds = %396
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  %401 = fmul x86_fp80 %65, %397, !dbg !1801
  tail call void @llvm.dbg.value(metadata x86_fp80 %65, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %402 = fmul x86_fp80 %65, %401, !dbg !1522
  %403 = fcmp ugt x86_fp80 %402, %61, !dbg !1523
  br i1 %403, label %87, label %404, !dbg !1524, !llvm.loop !1482

; <label>:404:                                    ; preds = %400
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  %405 = fmul x86_fp80 %65, %401, !dbg !1801
  tail call void @llvm.dbg.value(metadata x86_fp80 %65, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  %406 = fmul x86_fp80 %65, %405, !dbg !1522
  %407 = fcmp ugt x86_fp80 %406, %61, !dbg !1523
  br i1 %407, label %87, label %408, !dbg !1524, !llvm.loop !1482

; <label>:408:                                    ; preds = %404
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK3FFF8000000000000000, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1300, metadata !683), !dbg !1408
  %409 = fmul x86_fp80 %65, %405, !dbg !1801
  tail call void @llvm.dbg.value(metadata x86_fp80 %65, i64 0, metadata !1357, metadata !683), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1300, metadata !683), !dbg !1408
  br label %87
}

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i32 @human_options(i8*, i32* nocapture, i64*) local_unnamed_addr #6 !dbg !1803 {
  %4 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1808, metadata !683), !dbg !1813
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !1809, metadata !683), !dbg !1814
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1810, metadata !683), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1816, metadata !683) #10, !dbg !1831
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1821, metadata !683) #10, !dbg !1833
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !1822, metadata !683) #10, !dbg !1834
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  %5 = icmp eq i8* %0, null, !dbg !1836
  br i1 %5, label %6, label %16, !dbg !1837

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.43, i64 0, i64 0)) #10, !dbg !1838
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1816, metadata !683) #10, !dbg !1831
  %8 = icmp eq i8* %7, null, !dbg !1840
  br i1 %8, label %9, label %16, !dbg !1841

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.44, i64 0, i64 0)) #10, !dbg !1842
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1816, metadata !683) #10, !dbg !1831
  %11 = icmp eq i8* %10, null, !dbg !1843
  br i1 %11, label %12, label %16, !dbg !1844

; <label>:12:                                     ; preds = %9
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.45, i64 0, i64 0)) #10, !dbg !1846
  %14 = icmp ne i8* %13, null, !dbg !1846
  %15 = select i1 %14, i64 512, i64 1024, !dbg !1846
  br label %67, !dbg !1851

; <label>:16:                                     ; preds = %9, %6, %3
  %17 = phi i8* [ %0, %3 ], [ %7, %6 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1816, metadata !683) #10, !dbg !1831
  %18 = load i8, i8* %17, align 1, !dbg !1852, !tbaa !903
  %19 = icmp eq i8 %18, 39, !dbg !1854
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  %20 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1855
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1816, metadata !683) #10, !dbg !1831
  %21 = select i1 %19, i8* %20, i8* %17, !dbg !1857
  %22 = select i1 %19, i32 4, i32 0, !dbg !1857
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1816, metadata !683) #10, !dbg !1831
  %23 = tail call i64 @argmatch(i8* %21, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @block_size_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @block_size_opts to i8*), i64 4) #13, !dbg !1858
  %24 = trunc i64 %23 to i32, !dbg !1858
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !1823, metadata !683) #10, !dbg !1859
  %25 = icmp sgt i32 %24, -1, !dbg !1860
  br i1 %25, label %26, label %32, !dbg !1861

; <label>:26:                                     ; preds = %16
  %27 = shl i64 %23, 32, !dbg !1862
  %28 = ashr exact i64 %27, 32, !dbg !1862
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* @block_size_opts, i64 0, i64 %28, !dbg !1862
  %30 = load i32, i32* %29, align 4, !dbg !1862, !tbaa !780
  %31 = or i32 %30, %22, !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  br label %67, !dbg !1865

; <label>:32:                                     ; preds = %16
  %33 = bitcast i8** %4 to i8*, !dbg !1866
  call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #10, !dbg !1866
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !1825, metadata !1867) #10, !dbg !1868
  %34 = call i32 @xstrtoumax(i8* %21, i8** nonnull %4, i32 0, i64* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.46, i64 0, i64 0)) #10, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !1830, metadata !683) #10, !dbg !1870
  %35 = icmp eq i32 %34, 0, !dbg !1871
  br i1 %35, label %36, label %66, !dbg !1873

; <label>:36:                                     ; preds = %32
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1816, metadata !683) #10, !dbg !1831
  %37 = load i8, i8* %21, align 1, !dbg !1874, !tbaa !903
  %38 = add i8 %37, -48, !dbg !1878
  %39 = icmp ult i8 %38, 10, !dbg !1878
  br i1 %39, label %64, label %40, !dbg !1879

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %4, align 8, !tbaa !691
  br label %46, !dbg !1879

; <label>:42:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1816, metadata !683) #10, !dbg !1831
  %43 = load i8, i8* %49, align 1, !dbg !1874, !tbaa !903
  %44 = add i8 %43, -48, !dbg !1878
  %45 = icmp ult i8 %44, 10, !dbg !1878
  br i1 %45, label %63, label %46, !dbg !1879, !llvm.loop !1881

; <label>:46:                                     ; preds = %42, %40
  %47 = phi i8* [ %21, %40 ], [ %49, %42 ]
  call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1825, metadata !683) #10, !dbg !1868
  %48 = icmp eq i8* %47, %41, !dbg !1884
  %49 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1886
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1816, metadata !683) #10, !dbg !1831
  br i1 %48, label %50, label %42, !dbg !1888

; <label>:50:                                     ; preds = %46
  %51 = or i32 %22, 128, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  %52 = getelementptr inbounds i8, i8* %41, i64 -1, !dbg !1891
  %53 = load i8, i8* %52, align 1, !dbg !1891, !tbaa !903
  %54 = icmp eq i8 %53, 66, !dbg !1893
  %55 = or i32 %22, 384, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  %56 = select i1 %54, i32 %55, i32 %51, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !1825, metadata !683) #10, !dbg !1868
  br i1 %54, label %57, label %61, !dbg !1896

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds i8, i8* %41, i64 -2, !dbg !1898
  %59 = load i8, i8* %58, align 1, !dbg !1898, !tbaa !903
  %60 = icmp eq i8 %59, 105, !dbg !1900
  br i1 %60, label %61, label %64, !dbg !1901

; <label>:61:                                     ; preds = %57, %50
  %62 = or i32 %56, 32, !dbg !1903
  call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  br label %64, !dbg !1904

; <label>:63:                                     ; preds = %42
  br label %64, !dbg !1835

; <label>:64:                                     ; preds = %63, %61, %57, %36
  %65 = phi i32 [ %55, %57 ], [ %62, %61 ], [ %22, %36 ], [ %22, %63 ]
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #10, !dbg !1905
  br label %70

; <label>:66:                                     ; preds = %32
  store i32 0, i32* %1, align 4, !dbg !1906, !tbaa !780
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #10, !dbg !1905
  br label %72

; <label>:67:                                     ; preds = %26, %12
  %68 = phi i64 [ 1, %26 ], [ %15, %12 ]
  %69 = phi i32 [ %31, %26 ], [ 0, %12 ]
  store i64 %68, i64* %2, align 8, !tbaa !1908
  br label %70, !dbg !1835

; <label>:70:                                     ; preds = %67, %64
  %71 = phi i32 [ %69, %67 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !1824, metadata !683) #10, !dbg !1835
  store i32 %71, i32* %1, align 4, !dbg !1909, !tbaa !780
  br label %72, !dbg !1910

; <label>:72:                                     ; preds = %66, %70
  %73 = phi i32 [ 0, %70 ], [ %34, %66 ]
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !1811, metadata !683), !dbg !1911
  %74 = load i64, i64* %2, align 8, !dbg !1912, !tbaa !1908
  %75 = icmp eq i64 %74, 0, !dbg !1914
  br i1 %75, label %76, label %80, !dbg !1915

; <label>:76:                                     ; preds = %72
  %77 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.45, i64 0, i64 0)) #10, !dbg !1916
  %78 = icmp ne i8* %77, null, !dbg !1916
  %79 = select i1 %78, i64 512, i64 1024, !dbg !1916
  store i64 %79, i64* %2, align 8, !dbg !1919, !tbaa !1908
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1811, metadata !683), !dbg !1911
  br label %80, !dbg !1920

; <label>:80:                                     ; preds = %76, %72
  %81 = phi i32 [ 4, %76 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !1811, metadata !683), !dbg !1911
  ret i32 %81, !dbg !1921
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1922 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1924, metadata !683), !dbg !1927
  %2 = icmp eq i8* %0, null, !dbg !1928
  br i1 %2, label %3, label %6, !dbg !1930

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1931, !tbaa !691
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1933
  tail call void @abort() #14, !dbg !1934
  unreachable, !dbg !1934

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1935
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1925, metadata !683), !dbg !1936
  %8 = icmp ne i8* %7, null, !dbg !1937
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1938
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1940
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1926, metadata !683), !dbg !1941
  %11 = ptrtoint i8* %10 to i64, !dbg !1942
  %12 = ptrtoint i8* %0 to i64, !dbg !1942
  %13 = sub i64 %11, %12, !dbg !1942
  %14 = icmp sgt i64 %13, 6, !dbg !1944
  br i1 %14, label %15, label %24, !dbg !1945

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1946
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.54, i64 0, i64 0), i64 7) #13, !dbg !1946
  %18 = icmp eq i32 %17, 0, !dbg !1948
  br i1 %18, label %19, label %24, !dbg !1949

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1924, metadata !683), !dbg !1927
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.55, i64 0, i64 0), i64 3) #13, !dbg !1950
  %21 = icmp eq i32 %20, 0, !dbg !1953
  br i1 %21, label %22, label %24, !dbg !1954

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1955
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1924, metadata !683), !dbg !1927
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1957, !tbaa !691
  br label %24, !dbg !1958

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1924, metadata !683), !dbg !1927
  store i8* %25, i8** @program_name, align 8, !dbg !1959, !tbaa !691
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1960, !tbaa !691
  ret void, !dbg !1961
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1962 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1967, metadata !683), !dbg !1970
  %2 = tail call i32* @__errno_location() #1, !dbg !1971
  %3 = load i32, i32* %2, align 4, !dbg !1971, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1968, metadata !683), !dbg !1972
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1973
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1974
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1974
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1976
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1976
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1969, metadata !683), !dbg !1977
  store i32 %3, i32* %2, align 4, !dbg !1978, !tbaa !780
  ret %struct.quoting_options* %8, !dbg !1979
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1980 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1986, metadata !683), !dbg !1987
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1988
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1988
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1989
  %5 = load i32, i32* %4, align 8, !dbg !1989, !tbaa !1991
  ret i32 %5, !dbg !1993
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1994 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1998, metadata !683), !dbg !2000
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1999, metadata !683), !dbg !2001
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2002
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2002
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2003
  store i32 %1, i32* %5, align 8, !dbg !2005, !tbaa !1991
  ret void, !dbg !2006
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2007 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2011, metadata !683), !dbg !2019
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2012, metadata !683), !dbg !2020
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2013, metadata !683), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2014, metadata !683), !dbg !2022
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2023
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2023
  %6 = lshr i8 %1, 5, !dbg !2024
  %7 = zext i8 %6 to i64, !dbg !2024
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2026
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2015, metadata !683), !dbg !2027
  %9 = and i8 %1, 31, !dbg !2028
  %10 = zext i8 %9 to i32, !dbg !2029
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2017, metadata !683), !dbg !2030
  %11 = load i32, i32* %8, align 4, !dbg !2031, !tbaa !780
  %12 = lshr i32 %11, %10, !dbg !2032
  %13 = and i32 %12, 1, !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2018, metadata !683), !dbg !2034
  %14 = and i32 %2, 1, !dbg !2035
  %15 = xor i32 %13, %14, !dbg !2036
  %16 = shl i32 %15, %10, !dbg !2037
  %17 = xor i32 %16, %11, !dbg !2038
  store i32 %17, i32* %8, align 4, !dbg !2038, !tbaa !780
  ret i32 %13, !dbg !2039
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2040 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2044, metadata !683), !dbg !2047
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2045, metadata !683), !dbg !2048
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2049
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2044, metadata !683), !dbg !2047
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2051
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2044, metadata !683), !dbg !2047
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2052
  %6 = load i32, i32* %5, align 4, !dbg !2052, !tbaa !2053
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2046, metadata !683), !dbg !2054
  store i32 %1, i32* %5, align 4, !dbg !2055, !tbaa !2053
  ret i32 %6, !dbg !2056
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2057 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2061, metadata !683), !dbg !2064
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2062, metadata !683), !dbg !2065
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2063, metadata !683), !dbg !2066
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2061, metadata !683), !dbg !2064
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2061, metadata !683), !dbg !2064
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2070
  store i32 10, i32* %6, align 8, !dbg !2071, !tbaa !1991
  %7 = icmp ne i8* %1, null, !dbg !2072
  %8 = icmp ne i8* %2, null, !dbg !2074
  %9 = and i1 %7, %8, !dbg !2076
  br i1 %9, label %11, label %10, !dbg !2076

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2077
  unreachable, !dbg !2077

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2078
  store i8* %1, i8** %12, align 8, !dbg !2079, !tbaa !2080
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2081
  store i8* %2, i8** %13, align 8, !dbg !2082, !tbaa !2083
  ret void, !dbg !2084
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2085 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2089, metadata !683), !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2090, metadata !683), !dbg !2098
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2091, metadata !683), !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2092, metadata !683), !dbg !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2093, metadata !683), !dbg !2101
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2102
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2102
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2094, metadata !683), !dbg !2103
  %8 = tail call i32* @__errno_location() #1, !dbg !2104
  %9 = load i32, i32* %8, align 4, !dbg !2104, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2095, metadata !683), !dbg !2105
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2106
  %11 = load i32, i32* %10, align 8, !dbg !2106, !tbaa !1991
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2107
  %13 = load i32, i32* %12, align 4, !dbg !2107, !tbaa !2053
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2108
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2109
  %16 = load i8*, i8** %15, align 8, !dbg !2109, !tbaa !2080
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2110
  %18 = load i8*, i8** %17, align 8, !dbg !2110, !tbaa !2083
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2111
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2096, metadata !683), !dbg !2112
  store i32 %9, i32* %8, align 4, !dbg !2113, !tbaa !780
  ret i64 %19, !dbg !2114
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2115 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2121, metadata !683), !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2122, metadata !683), !dbg !2183
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2123, metadata !683), !dbg !2184
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2124, metadata !683), !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2125, metadata !683), !dbg !2186
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2126, metadata !683), !dbg !2187
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2127, metadata !683), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2128, metadata !683), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2129, metadata !683), !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2131, metadata !683), !dbg !2191
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2132, metadata !683), !dbg !2192
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2133, metadata !683), !dbg !2193
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2134, metadata !683), !dbg !2194
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2135, metadata !683), !dbg !2195
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2196
  %14 = icmp eq i64 %13, 1, !dbg !2197
  %15 = lshr i32 %5, 1, !dbg !2198
  %16 = trunc i32 %15 to i8, !dbg !2198
  %17 = and i8 %16, 1, !dbg !2198
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2137, metadata !683), !dbg !2198
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2138, metadata !683), !dbg !2199
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2139, metadata !683), !dbg !2200
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2140, metadata !683), !dbg !2201
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2202

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2122, metadata !683), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2140, metadata !683), !dbg !2201
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2139, metadata !683), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2137, metadata !683), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2124, metadata !683), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2135, metadata !683), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2134, metadata !683), !dbg !2194
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2133, metadata !683), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2132, metadata !683), !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2129, metadata !683), !dbg !2190
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2128, metadata !683), !dbg !2189
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2125, metadata !683), !dbg !2186
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
  ], !dbg !2203

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2125, metadata !683), !dbg !2186
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2137, metadata !683), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2137, metadata !683), !dbg !2198
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2125, metadata !683), !dbg !2186
  br label %95, !dbg !2204

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2137, metadata !683), !dbg !2198
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2125, metadata !683), !dbg !2186
  %43 = and i8 %36, 1, !dbg !2206
  %44 = icmp eq i8 %43, 0, !dbg !2206
  br i1 %44, label %45, label %95, !dbg !2204

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2208
  br i1 %46, label %95, label %47, !dbg !2212

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2214, !tbaa !903
  br label %95, !dbg !2214

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.66, i64 0, i64 0), i32 %28), !dbg !2216
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2128, metadata !683), !dbg !2189
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), i32 %28), !dbg !2220
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2129, metadata !683), !dbg !2190
  br label %51, !dbg !2221

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2129, metadata !683), !dbg !2190
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2128, metadata !683), !dbg !2189
  %54 = and i8 %36, 1, !dbg !2222
  %55 = icmp eq i8 %54, 0, !dbg !2222
  br i1 %55, label %56, label %73, !dbg !2224

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2133, metadata !683), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2131, metadata !683), !dbg !2191
  %57 = load i8, i8* %52, align 1, !dbg !2225, !tbaa !903
  %58 = icmp eq i8 %57, 0, !dbg !2229
  br i1 %58, label %73, label %59, !dbg !2229

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2231

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2231
  br i1 %64, label %65, label %67, !dbg !2235

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2237
  store i8 %61, i8* %66, align 1, !dbg !2237, !tbaa !903
  br label %67, !dbg !2237

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2131, metadata !683), !dbg !2191
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2241
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2133, metadata !683), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2133, metadata !683), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2131, metadata !683), !dbg !2191
  %70 = load i8, i8* %69, align 1, !dbg !2225, !tbaa !903
  %71 = icmp eq i8 %70, 0, !dbg !2229
  br i1 %71, label %72, label %60, !dbg !2229, !llvm.loop !2243

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2191

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2135, metadata !683), !dbg !2195
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2133, metadata !683), !dbg !2193
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2134, metadata !683), !dbg !2194
  br label %95, !dbg !2247

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2135, metadata !683), !dbg !2195
  br label %77, !dbg !2248

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2135, metadata !683), !dbg !2195
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2137, metadata !683), !dbg !2198
  br label %79, !dbg !2249

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2137, metadata !683), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2135, metadata !683), !dbg !2195
  %82 = and i8 %81, 1, !dbg !2250
  %83 = icmp eq i8 %82, 0, !dbg !2250
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2135, metadata !683), !dbg !2195
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2252
  br label %85, !dbg !2252

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2137, metadata !683), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2135, metadata !683), !dbg !2195
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2125, metadata !683), !dbg !2186
  %88 = and i8 %87, 1, !dbg !2253
  %89 = icmp eq i8 %88, 0, !dbg !2253
  br i1 %89, label %90, label %95, !dbg !2255

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2256
  br i1 %91, label %95, label %92, !dbg !2260

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2262, !tbaa !903
  br label %95, !dbg !2262

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2137, metadata !683), !dbg !2198
  br label %95, !dbg !2264

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2265
  unreachable, !dbg !2265

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2137, metadata !683), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2135, metadata !683), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2134, metadata !683), !dbg !2194
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2133, metadata !683), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2129, metadata !683), !dbg !2190
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2128, metadata !683), !dbg !2189
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2125, metadata !683), !dbg !2186
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2130, metadata !683), !dbg !2266
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
  br label %123, !dbg !2267

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2122, metadata !683), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2140, metadata !683), !dbg !2201
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2139, metadata !683), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2124, metadata !683), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2132, metadata !683), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2130, metadata !683), !dbg !2266
  %132 = icmp eq i64 %127, -1, !dbg !2268
  br i1 %132, label %135, label %133, !dbg !2270

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2271
  br i1 %134, label %597, label %139, !dbg !2273

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2275
  %137 = load i8, i8* %136, align 1, !dbg !2275, !tbaa !903
  %138 = icmp eq i8 %137, 0, !dbg !2277
  br i1 %138, label %597, label %139, !dbg !2273

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2146, metadata !683), !dbg !2278
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2147, metadata !683), !dbg !2279
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2148, metadata !683), !dbg !2280
  br i1 %109, label %140, label %155, !dbg !2281

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2283
  %142 = and i1 %110, %132, !dbg !2285
  br i1 %142, label %143, label %145, !dbg !2285

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2124, metadata !683), !dbg !2185
  br label %145, !dbg !2287

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2124, metadata !683), !dbg !2185
  %147 = icmp ugt i64 %141, %146, !dbg !2289
  br i1 %147, label %155, label %148, !dbg !2291

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2292
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2293
  %151 = icmp ne i32 %150, 0, !dbg !2294
  %152 = or i1 %151, %112, !dbg !2294
  %153 = xor i1 %151, true, !dbg !2294
  %154 = zext i1 %153 to i8, !dbg !2294
  br i1 %152, label %155, label %644, !dbg !2294

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2146, metadata !683), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2124, metadata !683), !dbg !2185
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2296
  %159 = load i8, i8* %158, align 1, !dbg !2296, !tbaa !903
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2141, metadata !683), !dbg !2297
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
  ], !dbg !2298

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2299

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2300

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2147, metadata !683), !dbg !2279
  %163 = and i8 %128, 1, !dbg !2305
  %164 = icmp eq i8 %163, 0, !dbg !2305
  %165 = and i1 %114, %164, !dbg !2308
  br i1 %165, label %166, label %182, !dbg !2308

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2310
  br i1 %167, label %168, label %170, !dbg !2315

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2317
  store i8 39, i8* %169, align 1, !dbg !2317, !tbaa !903
  br label %170, !dbg !2317

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2131, metadata !683), !dbg !2191
  %172 = icmp ult i64 %171, %131, !dbg !2321
  br i1 %172, label %173, label %175, !dbg !2325

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2327
  store i8 36, i8* %174, align 1, !dbg !2327, !tbaa !903
  br label %175, !dbg !2327

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2131, metadata !683), !dbg !2191
  %177 = icmp ult i64 %176, %131, !dbg !2331
  br i1 %177, label %178, label %180, !dbg !2335

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2337
  store i8 39, i8* %179, align 1, !dbg !2337, !tbaa !903
  br label %180, !dbg !2337

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2138, metadata !683), !dbg !2199
  br label %182, !dbg !2341

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2131, metadata !683), !dbg !2191
  %185 = icmp ult i64 %183, %131, !dbg !2343
  br i1 %185, label %186, label %188, !dbg !2347

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2349
  store i8 92, i8* %187, align 1, !dbg !2349, !tbaa !903
  br label %188, !dbg !2349

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2131, metadata !683), !dbg !2191
  br i1 %106, label %190, label %476, !dbg !2353

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2355
  %192 = icmp ult i64 %191, %156, !dbg !2357
  br i1 %192, label %193, label %476, !dbg !2358

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2359
  %195 = load i8, i8* %194, align 1, !dbg !2359, !tbaa !903
  %196 = add i8 %195, -48, !dbg !2361
  %197 = icmp ult i8 %196, 10, !dbg !2361
  br i1 %197, label %198, label %476, !dbg !2361

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2362
  br i1 %199, label %200, label %202, !dbg !2367

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2369
  store i8 48, i8* %201, align 1, !dbg !2369, !tbaa !903
  br label %202, !dbg !2369

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2131, metadata !683), !dbg !2191
  %204 = icmp ult i64 %203, %131, !dbg !2373
  br i1 %204, label %205, label %207, !dbg !2377

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2379
  store i8 48, i8* %206, align 1, !dbg !2379, !tbaa !903
  br label %207, !dbg !2379

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2131, metadata !683), !dbg !2191
  br label %476, !dbg !2383

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2384

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2385

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2386

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2388

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2390
  %215 = icmp ult i64 %214, %156, !dbg !2392
  br i1 %215, label %216, label %476, !dbg !2393

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2394
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2396
  %219 = load i8, i8* %218, align 1, !dbg !2396, !tbaa !903
  %220 = icmp eq i8 %219, 63, !dbg !2397
  br i1 %220, label %221, label %476, !dbg !2398

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2400
  %223 = load i8, i8* %222, align 1, !dbg !2400, !tbaa !903
  %224 = sext i8 %223 to i32, !dbg !2400
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
  ], !dbg !2401

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2402

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2141, metadata !683), !dbg !2297
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2130, metadata !683), !dbg !2266
  %227 = icmp ult i64 %125, %131, !dbg !2404
  br i1 %227, label %228, label %230, !dbg !2408

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2410
  store i8 63, i8* %229, align 1, !dbg !2410, !tbaa !903
  br label %230, !dbg !2410

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2131, metadata !683), !dbg !2191
  %232 = icmp ult i64 %231, %131, !dbg !2414
  br i1 %232, label %233, label %235, !dbg !2418

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2420
  store i8 34, i8* %234, align 1, !dbg !2420, !tbaa !903
  br label %235, !dbg !2420

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2131, metadata !683), !dbg !2191
  %237 = icmp ult i64 %236, %131, !dbg !2424
  br i1 %237, label %238, label %240, !dbg !2428

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2430
  store i8 34, i8* %239, align 1, !dbg !2430, !tbaa !903
  br label %240, !dbg !2430

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2131, metadata !683), !dbg !2191
  %242 = icmp ult i64 %241, %131, !dbg !2434
  br i1 %242, label %243, label %245, !dbg !2438

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2440
  store i8 63, i8* %244, align 1, !dbg !2440, !tbaa !903
  br label %245, !dbg !2440

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2131, metadata !683), !dbg !2191
  br label %476, !dbg !2444

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2145, metadata !683), !dbg !2445
  br label %257, !dbg !2446

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2145, metadata !683), !dbg !2445
  br label %257, !dbg !2447

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2145, metadata !683), !dbg !2445
  br label %255, !dbg !2448

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2145, metadata !683), !dbg !2445
  br label %255, !dbg !2449

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2145, metadata !683), !dbg !2445
  br label %257, !dbg !2450

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2145, metadata !683), !dbg !2445
  br i1 %114, label %253, label %254, !dbg !2451

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2452

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2455

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2145, metadata !683), !dbg !2445
  br i1 %118, label %257, label %644, !dbg !2457

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2145, metadata !683), !dbg !2445
  br i1 %105, label %503, label %476, !dbg !2459

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2460
  br i1 %260, label %261, label %266, !dbg !2462

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2463, !tbaa !903
  %263 = icmp ne i8 %262, 0, !dbg !2465
  %264 = icmp ne i64 %124, 0, !dbg !2466
  %265 = or i1 %264, %263, !dbg !2468
  br i1 %265, label %476, label %272, !dbg !2468

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2469
  %268 = icmp ne i64 %124, 0, !dbg !2466
  %269 = or i1 %268, %267, !dbg !2471
  br i1 %269, label %476, label %272, !dbg !2471

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2466
  br i1 %271, label %272, label %476, !dbg !2473

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2148, metadata !683), !dbg !2280
  br label %273, !dbg !2474

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2148, metadata !683), !dbg !2280
  br i1 %118, label %476, label %644, !dbg !2475

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2139, metadata !683), !dbg !2200
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2148, metadata !683), !dbg !2280
  br i1 %114, label %276, label %476, !dbg !2477

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2478

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2481
  %279 = icmp ne i64 %126, 0, !dbg !2483
  %280 = or i1 %279, %278, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2132, metadata !683), !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2122, metadata !683), !dbg !2183
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2485
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2122, metadata !683), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2132, metadata !683), !dbg !2192
  %283 = icmp ult i64 %125, %282, !dbg !2486
  br i1 %283, label %284, label %286, !dbg !2490

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2492
  store i8 39, i8* %285, align 1, !dbg !2492, !tbaa !903
  br label %286, !dbg !2492

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2494
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2131, metadata !683), !dbg !2191
  %288 = icmp ult i64 %287, %282, !dbg !2496
  br i1 %288, label %289, label %291, !dbg !2500

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2502
  store i8 92, i8* %290, align 1, !dbg !2502, !tbaa !903
  br label %291, !dbg !2502

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2131, metadata !683), !dbg !2191
  %293 = icmp ult i64 %292, %282, !dbg !2506
  br i1 %293, label %294, label %296, !dbg !2510

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2512
  store i8 39, i8* %295, align 1, !dbg !2512, !tbaa !903
  br label %296, !dbg !2512

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2138, metadata !683), !dbg !2199
  br label %476, !dbg !2516

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2517

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2149, metadata !683), !dbg !2518
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2519
  %301 = load i16*, i16** %300, align 8, !dbg !2519, !tbaa !691
  %302 = zext i8 %159 to i64, !dbg !2519
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2519
  %304 = load i16, i16* %303, align 2, !dbg !2519, !tbaa !2521
  %305 = lshr i16 %304, 14, !dbg !2522
  %306 = trunc i16 %305 to i8, !dbg !2522
  %307 = and i8 %306, 1, !dbg !2522
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2152, metadata !683), !dbg !2523
  br label %368, !dbg !2524

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2525
  store i64 0, i64* %10, align 8, !dbg !2526
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2149, metadata !683), !dbg !2518
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2152, metadata !683), !dbg !2523
  %309 = icmp eq i64 %156, -1, !dbg !2527
  br i1 %309, label %310, label %312, !dbg !2529, !llvm.loop !2530

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2124, metadata !683), !dbg !2185
  br label %312, !dbg !2534, !llvm.loop !2530

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2523

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2152, metadata !683), !dbg !2523
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2149, metadata !683), !dbg !2518
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2124, metadata !683), !dbg !2185
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2535
  %317 = add i64 %315, %124, !dbg !2536
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2537
  %319 = sub i64 %313, %317, !dbg !2538
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2153, metadata !1867), !dbg !2539
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2168, metadata !1867), !dbg !2540
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2171, metadata !683), !dbg !2542
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2543

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2149, metadata !683), !dbg !2518
  %322 = icmp ugt i64 %313, %317, !dbg !2544
  br i1 %322, label %323, label %351, !dbg !2547

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2548

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2548
  %328 = load i8, i8* %327, align 1, !dbg !2548, !tbaa !903
  %329 = icmp eq i8 %328, 0, !dbg !2550
  br i1 %329, label %348, label %330, !dbg !2551

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2149, metadata !683), !dbg !2518
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2149, metadata !683), !dbg !2518
  %332 = add i64 %331, %124, !dbg !2554
  %333 = icmp ult i64 %332, %313, !dbg !2544
  br i1 %333, label %324, label %348, !dbg !2547, !llvm.loop !2555

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2557
  %336 = and i1 %116, %335, !dbg !2561
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2172, metadata !683), !dbg !2562
  br i1 %336, label %337, label %355, !dbg !2561

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2563

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2563
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2564
  %342 = load i8, i8* %341, align 1, !dbg !2564, !tbaa !903
  %343 = sext i8 %342 to i32, !dbg !2564
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2565

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2172, metadata !683), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2172, metadata !683), !dbg !2562
  %346 = icmp ult i64 %345, %320, !dbg !2557
  br i1 %346, label %338, label %354, !dbg !2568, !llvm.loop !2570

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2523

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2523

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2523

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2152, metadata !683), !dbg !2523
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2149, metadata !683), !dbg !2518
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2573
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2574

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2574, !tbaa !780
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2168, metadata !683), !dbg !2540
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2576
  %358 = icmp eq i32 %357, 0, !dbg !2576
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2152, metadata !683), !dbg !2523
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2577
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2152, metadata !683), !dbg !2523
  %360 = add i64 %320, %315, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2149, metadata !683), !dbg !2518
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2152, metadata !683), !dbg !2523
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2149, metadata !683), !dbg !2518
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2573
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2153, metadata !1867), !dbg !2539
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2579
  %362 = icmp eq i32 %361, 0, !dbg !2580
  br i1 %362, label %314, label %363, !dbg !2581, !llvm.loop !2530

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2583

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2583
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2152, metadata !683), !dbg !2523
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2149, metadata !683), !dbg !2518
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2573
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2583
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2152, metadata !683), !dbg !2523
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2149, metadata !683), !dbg !2518
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2124, metadata !683), !dbg !2185
  %372 = and i8 %371, 1, !dbg !2584
  %373 = icmp ne i8 %372, 0, !dbg !2584
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2148, metadata !683), !dbg !2280
  %374 = icmp ult i64 %370, 2, !dbg !2585
  %375 = or i1 %373, %113, !dbg !2586
  %376 = and i1 %374, %375, !dbg !2588
  br i1 %376, label %476, label %377, !dbg !2588

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2179, metadata !683), !dbg !2590
  br label %379, !dbg !2591

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2147, metadata !683), !dbg !2279
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2146, metadata !683), !dbg !2278
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2141, metadata !683), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2130, metadata !683), !dbg !2266
  br i1 %375, label %432, label %386, !dbg !2592

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2597

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2147, metadata !683), !dbg !2279
  %388 = and i8 %382, 1, !dbg !2601
  %389 = icmp eq i8 %388, 0, !dbg !2601
  %390 = and i1 %114, %389, !dbg !2604
  br i1 %390, label %391, label %407, !dbg !2604

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2606
  br i1 %392, label %393, label %395, !dbg !2611

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2613
  store i8 39, i8* %394, align 1, !dbg !2613, !tbaa !903
  br label %395, !dbg !2613

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2131, metadata !683), !dbg !2191
  %397 = icmp ult i64 %396, %131, !dbg !2617
  br i1 %397, label %398, label %400, !dbg !2621

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2623
  store i8 36, i8* %399, align 1, !dbg !2623, !tbaa !903
  br label %400, !dbg !2623

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2131, metadata !683), !dbg !2191
  %402 = icmp ult i64 %401, %131, !dbg !2627
  br i1 %402, label %403, label %405, !dbg !2631

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2633
  store i8 39, i8* %404, align 1, !dbg !2633, !tbaa !903
  br label %405, !dbg !2633

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2138, metadata !683), !dbg !2199
  br label %407, !dbg !2637

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2131, metadata !683), !dbg !2191
  %410 = icmp ult i64 %408, %131, !dbg !2639
  br i1 %410, label %411, label %413, !dbg !2643

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2645
  store i8 92, i8* %412, align 1, !dbg !2645, !tbaa !903
  br label %413, !dbg !2645

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2131, metadata !683), !dbg !2191
  %415 = icmp ult i64 %414, %131, !dbg !2649
  br i1 %415, label %416, label %420, !dbg !2653

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2655
  %418 = or i8 %417, 48, !dbg !2655
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2655
  store i8 %418, i8* %419, align 1, !dbg !2655, !tbaa !903
  br label %420, !dbg !2655

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2131, metadata !683), !dbg !2191
  %422 = icmp ult i64 %421, %131, !dbg !2659
  br i1 %422, label %423, label %428, !dbg !2663

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2665
  %425 = and i8 %424, 7, !dbg !2665
  %426 = or i8 %425, 48, !dbg !2665
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2665
  store i8 %426, i8* %427, align 1, !dbg !2665, !tbaa !903
  br label %428, !dbg !2665

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2131, metadata !683), !dbg !2191
  %430 = and i8 %383, 7, !dbg !2669
  %431 = or i8 %430, 48, !dbg !2670
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2141, metadata !683), !dbg !2297
  br label %441, !dbg !2671

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2672
  %434 = icmp eq i8 %433, 0, !dbg !2672
  br i1 %434, label %441, label %435, !dbg !2674

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2675
  br i1 %436, label %437, label %439, !dbg !2680

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2682
  store i8 92, i8* %438, align 1, !dbg !2682, !tbaa !903
  br label %439, !dbg !2682

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2146, metadata !683), !dbg !2278
  br label %441, !dbg !2686

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2147, metadata !683), !dbg !2279
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2146, metadata !683), !dbg !2278
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2141, metadata !683), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2131, metadata !683), !dbg !2191
  %447 = add i64 %380, 1, !dbg !2687
  %448 = icmp ugt i64 %378, %447, !dbg !2689
  br i1 %448, label %449, label %541, !dbg !2690

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2691
  %451 = icmp ne i8 %450, 0, !dbg !2691
  %452 = and i8 %446, 1, !dbg !2695
  %453 = icmp eq i8 %452, 0, !dbg !2695
  %454 = and i1 %451, %453, !dbg !2691
  br i1 %454, label %455, label %466, !dbg !2691

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2697
  br i1 %456, label %457, label %459, !dbg !2702

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2704
  store i8 39, i8* %458, align 1, !dbg !2704, !tbaa !903
  br label %459, !dbg !2704

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2131, metadata !683), !dbg !2191
  %461 = icmp ult i64 %460, %131, !dbg !2708
  br i1 %461, label %462, label %464, !dbg !2712

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2714
  store i8 39, i8* %463, align 1, !dbg !2714, !tbaa !903
  br label %464, !dbg !2714

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2138, metadata !683), !dbg !2199
  br label %466, !dbg !2718

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2131, metadata !683), !dbg !2191
  %469 = icmp ult i64 %467, %131, !dbg !2720
  br i1 %469, label %470, label %472, !dbg !2724

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2726
  store i8 %444, i8* %471, align 1, !dbg !2726, !tbaa !903
  br label %472, !dbg !2726

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2130, metadata !683), !dbg !2266
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2730
  %475 = load i8, i8* %474, align 1, !dbg !2730, !tbaa !903
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2141, metadata !683), !dbg !2297
  br label %379, !dbg !2731, !llvm.loop !2733

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2122, metadata !683), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2148, metadata !683), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2147, metadata !683), !dbg !2279
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2146, metadata !683), !dbg !2278
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2141, metadata !683), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2139, metadata !683), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2124, metadata !683), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2132, metadata !683), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2130, metadata !683), !dbg !2266
  br i1 %107, label %488, label %487, !dbg !2736

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2738

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2739

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2740
  %491 = zext i8 %490 to i64, !dbg !2740
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2742
  %493 = load i32, i32* %492, align 4, !dbg !2742, !tbaa !780
  %494 = and i8 %483, 31, !dbg !2743
  %495 = zext i8 %494 to i32, !dbg !2744
  %496 = shl i32 1, %495, !dbg !2745
  %497 = and i32 %493, %496, !dbg !2745
  %498 = icmp eq i32 %497, 0, !dbg !2745
  %499 = icmp eq i8 %157, 0, !dbg !2746
  %500 = and i1 %499, %498, !dbg !2747
  br i1 %500, label %542, label %503, !dbg !2747

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2746
  br i1 %502, label %542, label %503, !dbg !2748

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2122, metadata !683), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2148, metadata !683), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2141, metadata !683), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2139, metadata !683), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2124, metadata !683), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2132, metadata !683), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2130, metadata !683), !dbg !2266
  br i1 %112, label %513, label %644, !dbg !2750

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2147, metadata !683), !dbg !2279
  %514 = and i8 %508, 1, !dbg !2753
  %515 = icmp eq i8 %514, 0, !dbg !2753
  %516 = and i1 %114, %515, !dbg !2756
  br i1 %516, label %517, label %533, !dbg !2756

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2758
  br i1 %518, label %519, label %521, !dbg !2763

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2765
  store i8 39, i8* %520, align 1, !dbg !2765, !tbaa !903
  br label %521, !dbg !2765

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2767
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2131, metadata !683), !dbg !2191
  %523 = icmp ult i64 %522, %512, !dbg !2769
  br i1 %523, label %524, label %526, !dbg !2773

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2775
  store i8 36, i8* %525, align 1, !dbg !2775, !tbaa !903
  br label %526, !dbg !2775

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2131, metadata !683), !dbg !2191
  %528 = icmp ult i64 %527, %512, !dbg !2779
  br i1 %528, label %529, label %531, !dbg !2783

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2785
  store i8 39, i8* %530, align 1, !dbg !2785, !tbaa !903
  br label %531, !dbg !2785

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2138, metadata !683), !dbg !2199
  br label %533, !dbg !2789

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2131, metadata !683), !dbg !2191
  %536 = icmp ult i64 %534, %512, !dbg !2791
  br i1 %536, label %537, label %539, !dbg !2795

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2797
  store i8 92, i8* %538, align 1, !dbg !2797, !tbaa !903
  br label %539, !dbg !2797

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2799
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2122, metadata !683), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2148, metadata !683), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2147, metadata !683), !dbg !2279
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2141, metadata !683), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2139, metadata !683), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2124, metadata !683), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2132, metadata !683), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2130, metadata !683), !dbg !2266
  br label %569, !dbg !2801

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2183

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2122, metadata !683), !dbg !2183
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2148, metadata !683), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2147, metadata !683), !dbg !2279
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2141, metadata !683), !dbg !2297
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2139, metadata !683), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2124, metadata !683), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2132, metadata !683), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2130, metadata !683), !dbg !2266
  %553 = and i8 %547, 1, !dbg !2801
  %554 = icmp ne i8 %553, 0, !dbg !2801
  %555 = and i8 %550, 1, !dbg !2805
  %556 = icmp eq i8 %555, 0, !dbg !2805
  %557 = and i1 %554, %556, !dbg !2801
  br i1 %557, label %558, label %569, !dbg !2801

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2807
  br i1 %559, label %560, label %562, !dbg !2812

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2814
  store i8 39, i8* %561, align 1, !dbg !2814, !tbaa !903
  br label %562, !dbg !2814

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2131, metadata !683), !dbg !2191
  %564 = icmp ult i64 %563, %552, !dbg !2818
  br i1 %564, label %565, label %567, !dbg !2822

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2824
  store i8 39, i8* %566, align 1, !dbg !2824, !tbaa !903
  br label %567, !dbg !2824

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2826
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2131, metadata !683), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2138, metadata !683), !dbg !2199
  br label %569, !dbg !2828

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2138, metadata !683), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2131, metadata !683), !dbg !2191
  %579 = icmp ult i64 %577, %570, !dbg !2830
  br i1 %579, label %580, label %582, !dbg !2834

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2836
  store i8 %572, i8* %581, align 1, !dbg !2836, !tbaa !903
  br label %582, !dbg !2836

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2131, metadata !683), !dbg !2191
  %584 = and i8 %571, 1, !dbg !2840
  %585 = icmp eq i8 %584, 0, !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2140, metadata !683), !dbg !2201
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2842
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2140, metadata !683), !dbg !2201
  br label %587, !dbg !2843

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2130, metadata !683), !dbg !2266
  br label %123, !dbg !2846, !llvm.loop !2847

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2850
  %600 = and i1 %114, %599, !dbg !2852
  %601 = xor i1 %600, true, !dbg !2852
  %602 = or i1 %112, %601, !dbg !2852
  br i1 %602, label %603, label %648, !dbg !2852

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2853
  %605 = xor i1 %604, true, !dbg !2853
  %606 = and i8 %129, 1, !dbg !2855
  %607 = icmp eq i8 %606, 0, !dbg !2855
  %608 = or i1 %607, %605, !dbg !2853
  br i1 %608, label %618, label %609, !dbg !2853

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2857
  %611 = icmp eq i8 %610, 0, !dbg !2857
  br i1 %611, label %614, label %612, !dbg !2860

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2861
  br label %659, !dbg !2862

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2863
  %616 = icmp ne i64 %126, 0, !dbg !2865
  %617 = and i1 %616, %615, !dbg !2867
  br i1 %617, label %27, label %618, !dbg !2867

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2868
  %620 = and i1 %619, %112, !dbg !2870
  br i1 %620, label %621, label %638, !dbg !2870

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2133, metadata !683), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2131, metadata !683), !dbg !2191
  %622 = load i8, i8* %100, align 1, !dbg !2871, !tbaa !903
  %623 = icmp eq i8 %622, 0, !dbg !2875
  br i1 %623, label %638, label %624, !dbg !2875

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2877

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2877
  br i1 %629, label %630, label %632, !dbg !2881

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2883
  store i8 %626, i8* %631, align 1, !dbg !2883, !tbaa !903
  br label %632, !dbg !2883

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2131, metadata !683), !dbg !2191
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2133, metadata !683), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2133, metadata !683), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2131, metadata !683), !dbg !2191
  %635 = load i8, i8* %634, align 1, !dbg !2871, !tbaa !903
  %636 = icmp eq i8 %635, 0, !dbg !2875
  br i1 %636, label %637, label %625, !dbg !2875, !llvm.loop !2889

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2191

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2131, metadata !683), !dbg !2191
  %640 = icmp ult i64 %639, %131, !dbg !2892
  br i1 %640, label %641, label %659, !dbg !2894

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2895
  store i8 0, i8* %642, align 1, !dbg !2896, !tbaa !903
  br label %659, !dbg !2895

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2183

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2183

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2183

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2122, metadata !683), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2124, metadata !683), !dbg !2185
  %653 = icmp ne i32 %650, 2, !dbg !2897
  %654 = icmp eq i8 %104, 0, !dbg !2899
  %655 = or i1 %653, %654, !dbg !2901
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2125, metadata !683), !dbg !2186
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2125, metadata !683), !dbg !2186
  %657 = and i32 %5, -3, !dbg !2902
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2903
  br label %659, !dbg !2904

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2905
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2906 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2910, metadata !683), !dbg !2914
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2911, metadata !683), !dbg !2915
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2912, metadata !683), !dbg !2917
  %4 = icmp eq i8* %3, %0, !dbg !2918
  br i1 %4, label %5, label %75, !dbg !2920

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2921
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2913, metadata !683), !dbg !2922
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2923, metadata !683), !dbg !2939
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2937, metadata !683), !dbg !2942
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2938, metadata !683), !dbg !2943
  %7 = load i8, i8* %6, align 1, !tbaa !903
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2944
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2944

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2947, metadata !683), !dbg !2961
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2959, metadata !683), !dbg !2965
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2960, metadata !683), !dbg !2966
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !903
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2967
  %15 = icmp eq i32 %14, 84, !dbg !2967
  br i1 %15, label %16, label %72, !dbg !2967

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2970, metadata !683), !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2981, metadata !683), !dbg !2987
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2982, metadata !683), !dbg !2988
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !903
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2989
  %21 = icmp eq i32 %20, 70, !dbg !2989
  br i1 %21, label %22, label %72, !dbg !2989

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2992, metadata !683), !dbg !3004
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3002, metadata !683), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3003, metadata !683), !dbg !3009
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !903
  %25 = icmp eq i8 %24, 45, !dbg !3010
  br i1 %25, label %26, label %72, !dbg !3013

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3015, metadata !683), !dbg !3026
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3024, metadata !683), !dbg !3030
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3025, metadata !683), !dbg !3031
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !903
  %29 = icmp eq i8 %28, 56, !dbg !3032
  br i1 %29, label %30, label %72, !dbg !3035

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3037, metadata !683), !dbg !3047
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3045, metadata !683), !dbg !3051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3046, metadata !683), !dbg !3052
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !903
  %33 = icmp eq i8 %32, 0, !dbg !3053
  br i1 %33, label %34, label %72, !dbg !3056

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3058, !tbaa !903
  %36 = icmp eq i8 %35, 96, !dbg !3059
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.70, i64 0, i64 0), !dbg !3058
  br label %75, !dbg !3060

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2947, metadata !683), !dbg !3061
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2959, metadata !683), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2960, metadata !683), !dbg !3066
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !903
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3067
  %43 = icmp eq i32 %42, 66, !dbg !3067
  br i1 %43, label %44, label %72, !dbg !3067

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2970, metadata !683), !dbg !3068
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2981, metadata !683), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2982, metadata !683), !dbg !3071
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !903
  %47 = icmp eq i8 %46, 49, !dbg !3072
  br i1 %47, label %48, label %72, !dbg !3074

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2992, metadata !683), !dbg !3076
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3002, metadata !683), !dbg !3078
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3003, metadata !683), !dbg !3079
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !903
  %51 = icmp eq i8 %50, 56, !dbg !3080
  br i1 %51, label %52, label %72, !dbg !3081

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3015, metadata !683), !dbg !3082
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3024, metadata !683), !dbg !3084
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3025, metadata !683), !dbg !3085
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !903
  %55 = icmp eq i8 %54, 48, !dbg !3086
  br i1 %55, label %56, label %72, !dbg !3087

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3037, metadata !683), !dbg !3088
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3045, metadata !683), !dbg !3090
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3046, metadata !683), !dbg !3091
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !903
  %59 = icmp eq i8 %58, 51, !dbg !3092
  br i1 %59, label %60, label %72, !dbg !3093

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3094, metadata !683), !dbg !3103
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3101, metadata !683), !dbg !3107
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3102, metadata !683), !dbg !3108
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !903
  %63 = icmp eq i8 %62, 48, !dbg !3109
  br i1 %63, label %64, label %72, !dbg !3112

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3114, metadata !683), !dbg !3122
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3120, metadata !683), !dbg !3126
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3121, metadata !683), !dbg !3127
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !903
  %67 = icmp eq i8 %66, 0, !dbg !3128
  br i1 %67, label %68, label %72, !dbg !3131

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3132, !tbaa !903
  %70 = icmp eq i8 %69, 96, !dbg !3133
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.71, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !3132
  br label %75, !dbg !3134

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3135
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), !dbg !3136
  br label %75, !dbg !3137

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3138
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3139 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3143, metadata !683), !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3144, metadata !683), !dbg !3147
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3145, metadata !683), !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3149, metadata !683) #10, !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3154, metadata !683) #10, !dbg !3164
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3155, metadata !683) #10, !dbg !3165
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3156, metadata !683) #10, !dbg !3166
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3167
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3167
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3157, metadata !683) #10, !dbg !3168
  %6 = tail call i32* @__errno_location() #1, !dbg !3169
  %7 = load i32, i32* %6, align 4, !dbg !3169, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3158, metadata !683) #10, !dbg !3170
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3171
  %9 = load i32, i32* %8, align 4, !dbg !3171, !tbaa !2053
  %10 = or i32 %9, 1, !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3159, metadata !683) #10, !dbg !3173
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3174
  %12 = load i32, i32* %11, align 8, !dbg !3174, !tbaa !1991
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3175
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3176
  %15 = load i8*, i8** %14, align 8, !dbg !3176, !tbaa !2080
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3177
  %17 = load i8*, i8** %16, align 8, !dbg !3177, !tbaa !2083
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3178
  %19 = add i64 %18, 1, !dbg !3179
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3160, metadata !683) #10, !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3181, metadata !683) #10, !dbg !3186
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3188
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3161, metadata !683) #10, !dbg !3189
  %21 = load i32, i32* %11, align 8, !dbg !3190, !tbaa !1991
  %22 = load i8*, i8** %14, align 8, !dbg !3191, !tbaa !2080
  %23 = load i8*, i8** %16, align 8, !dbg !3192, !tbaa !2083
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3193
  store i32 %7, i32* %6, align 4, !dbg !3194, !tbaa !780
  ret i8* %20, !dbg !3195
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3150 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3149, metadata !683), !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3154, metadata !683), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3155, metadata !683), !dbg !3198
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3156, metadata !683), !dbg !3199
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3200
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3200
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3157, metadata !683), !dbg !3201
  %7 = tail call i32* @__errno_location() #1, !dbg !3202
  %8 = load i32, i32* %7, align 4, !dbg !3202, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3158, metadata !683), !dbg !3203
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3204
  %10 = load i32, i32* %9, align 4, !dbg !3204, !tbaa !2053
  %11 = icmp ne i64* %2, null, !dbg !3205
  %12 = xor i1 %11, true, !dbg !3205
  %13 = zext i1 %12 to i32, !dbg !3205
  %14 = or i32 %10, %13, !dbg !3206
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3159, metadata !683), !dbg !3207
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3208
  %16 = load i32, i32* %15, align 8, !dbg !3208, !tbaa !1991
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3209
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3210
  %19 = load i8*, i8** %18, align 8, !dbg !3210, !tbaa !2080
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3211
  %21 = load i8*, i8** %20, align 8, !dbg !3211, !tbaa !2083
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3212
  %23 = add i64 %22, 1, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3160, metadata !683), !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3181, metadata !683) #10, !dbg !3215
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3217
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3161, metadata !683), !dbg !3218
  %25 = load i32, i32* %15, align 8, !dbg !3219, !tbaa !1991
  %26 = load i8*, i8** %18, align 8, !dbg !3220, !tbaa !2080
  %27 = load i8*, i8** %20, align 8, !dbg !3221, !tbaa !2083
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3222
  store i32 %8, i32* %7, align 4, !dbg !3223, !tbaa !780
  br i1 %11, label %29, label %30, !dbg !3224

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3225, !tbaa !1908
  br label %30, !dbg !3227

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3229 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3233, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3231, metadata !683), !dbg !3234
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3232, metadata !683), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3232, metadata !683), !dbg !3235
  %2 = load i32, i32* @nslots, align 4, !dbg !3236, !tbaa !780
  %3 = icmp sgt i32 %2, 1, !dbg !3240
  br i1 %3, label %4, label %14, !dbg !3241

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3243

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3243
  %8 = load i8*, i8** %7, align 8, !dbg !3243, !tbaa !3244
  tail call void @free(i8* %8) #10, !dbg !3246
  %9 = add nuw i64 %6, 1, !dbg !3247
  %10 = load i32, i32* @nslots, align 4, !dbg !3236, !tbaa !780
  %11 = sext i32 %10 to i64, !dbg !3240
  %12 = icmp slt i64 %9, %11, !dbg !3240
  br i1 %12, label %5, label %13, !dbg !3241, !llvm.loop !3249

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3252

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3252
  %16 = load i8*, i8** %15, align 8, !dbg !3252, !tbaa !3244
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3254
  br i1 %17, label %19, label %18, !dbg !3255

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3256
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3258, !tbaa !3259
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3260, !tbaa !3244
  br label %19, !dbg !3261

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3262
  br i1 %20, label %23, label %21, !dbg !3264

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3265
  tail call void @free(i8* %22) #10, !dbg !3267
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3268, !tbaa !691
  br label %23, !dbg !3269

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3270, !tbaa !780
  ret void, !dbg !3271
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3272 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3276, metadata !683), !dbg !3278
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3277, metadata !683), !dbg !3279
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3280
  ret i8* %3, !dbg !3281
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3282 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3286, metadata !683), !dbg !3300
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3287, metadata !683), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3288, metadata !683), !dbg !3302
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3289, metadata !683), !dbg !3303
  %5 = tail call i32* @__errno_location() #1, !dbg !3304
  %6 = load i32, i32* %5, align 4, !dbg !3304, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3290, metadata !683), !dbg !3305
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3306, !tbaa !691
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3291, metadata !683), !dbg !3307
  %8 = icmp slt i32 %0, 0, !dbg !3308
  br i1 %8, label %9, label %10, !dbg !3310

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3311
  unreachable, !dbg !3311

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3312, !tbaa !780
  %12 = icmp sgt i32 %11, %0, !dbg !3313
  br i1 %12, label %34, label %13, !dbg !3314

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3315
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3316
  br i1 %15, label %16, label %17, !dbg !3318

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3319
  unreachable, !dbg !3319

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3320
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3320
  %20 = add nsw i32 %0, 1, !dbg !3322
  %21 = sext i32 %20 to i64, !dbg !3323
  %22 = shl nsw i64 %21, 4, !dbg !3324
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3325
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3325
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3291, metadata !683), !dbg !3307
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3326, !tbaa !691
  br i1 %14, label %25, label %26, !dbg !3327

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3328, !tbaa.struct !3330
  br label %26, !dbg !3331

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3332, !tbaa !780
  %28 = sext i32 %27 to i64, !dbg !3333
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3333
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3334
  %31 = sub nsw i32 %20, %27, !dbg !3335
  %32 = sext i32 %31 to i64, !dbg !3336
  %33 = shl nsw i64 %32, 4, !dbg !3337
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3334
  store i32 %20, i32* @nslots, align 4, !dbg !3338, !tbaa !780
  br label %34, !dbg !3339

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3291, metadata !683), !dbg !3307
  %36 = sext i32 %0 to i64, !dbg !3340
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3341
  %38 = load i64, i64* %37, align 8, !dbg !3341, !tbaa !3259
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3295, metadata !683), !dbg !3342
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3343
  %40 = load i8*, i8** %39, align 8, !dbg !3343, !tbaa !3244
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3297, metadata !683), !dbg !3344
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3345
  %42 = load i32, i32* %41, align 4, !dbg !3345, !tbaa !2053
  %43 = or i32 %42, 1, !dbg !3346
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3298, metadata !683), !dbg !3347
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3348
  %45 = load i32, i32* %44, align 8, !dbg !3348, !tbaa !1991
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3349
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3350
  %48 = load i8*, i8** %47, align 8, !dbg !3350, !tbaa !2080
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3351
  %50 = load i8*, i8** %49, align 8, !dbg !3351, !tbaa !2083
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3299, metadata !683), !dbg !3353
  %52 = icmp ugt i64 %38, %51, !dbg !3354
  br i1 %52, label %63, label %53, !dbg !3356

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3295, metadata !683), !dbg !3342
  store i64 %54, i64* %37, align 8, !dbg !3359, !tbaa !3259
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3360
  br i1 %55, label %57, label %56, !dbg !3362

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3363
  br label %57, !dbg !3363

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3181, metadata !683) #10, !dbg !3364
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3297, metadata !683), !dbg !3344
  store i8* %58, i8** %39, align 8, !dbg !3367, !tbaa !3244
  %59 = load i32, i32* %44, align 8, !dbg !3368, !tbaa !1991
  %60 = load i8*, i8** %47, align 8, !dbg !3369, !tbaa !2080
  %61 = load i8*, i8** %49, align 8, !dbg !3370, !tbaa !2083
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3371
  br label %63, !dbg !3372

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3297, metadata !683), !dbg !3344
  store i32 %6, i32* %5, align 4, !dbg !3373, !tbaa !780
  ret i8* %64, !dbg !3374
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3375 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3379, metadata !683), !dbg !3382
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3380, metadata !683), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3381, metadata !683), !dbg !3384
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3385
  ret i8* %4, !dbg !3386
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3387 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3391, metadata !683), !dbg !3392
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3276, metadata !683) #10, !dbg !3393
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3277, metadata !683) #10, !dbg !3395
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3396
  ret i8* %2, !dbg !3397
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3398 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3402, metadata !683), !dbg !3404
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3403, metadata !683), !dbg !3405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3379, metadata !683) #10, !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3380, metadata !683) #10, !dbg !3408
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3381, metadata !683) #10, !dbg !3409
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3410
  ret i8* %3, !dbg !3411
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3412 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3420, metadata !3426), !dbg !3427
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3416, metadata !683), !dbg !3429
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3417, metadata !683), !dbg !3430
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3418, metadata !683), !dbg !3431
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3432
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3432
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3419, metadata !1867), !dbg !3433
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3425, metadata !683) #10, !dbg !3434
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3435
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3435
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3420, metadata !683) #10, !dbg !3427
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3420, metadata !3436) #10, !dbg !3427
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3427
  %8 = icmp eq i32 %1, 10, !dbg !3437
  br i1 %8, label %9, label %10, !dbg !3439

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3440, !noalias !3441
  unreachable, !dbg !3440

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3420, metadata !3436) #10, !dbg !3427
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3444
  store i32 %1, i32* %11, align 8, !dbg !3444, !alias.scope !3441
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3444
  %13 = bitcast i32* %12 to i8*, !dbg !3444
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3444
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3445
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3419, metadata !1867), !dbg !3433
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3446
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3447
  ret i8* %14, !dbg !3448
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3449 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3420, metadata !3426), !dbg !3458
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3453, metadata !683), !dbg !3460
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3454, metadata !683), !dbg !3461
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3455, metadata !683), !dbg !3462
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3456, metadata !683), !dbg !3463
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3464
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3464
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3457, metadata !1867), !dbg !3465
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3425, metadata !683) #10, !dbg !3466
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3467
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3467
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3420, metadata !683) #10, !dbg !3458
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3420, metadata !3436) #10, !dbg !3458
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3458
  %9 = icmp eq i32 %1, 10, !dbg !3468
  br i1 %9, label %10, label %11, !dbg !3469

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3470, !noalias !3471
  unreachable, !dbg !3470

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3420, metadata !3436) #10, !dbg !3458
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3474
  store i32 %1, i32* %12, align 8, !dbg !3474, !alias.scope !3471
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3474
  %14 = bitcast i32* %13 to i8*, !dbg !3474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3474
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3457, metadata !1867), !dbg !3465
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3476
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3477
  ret i8* %15, !dbg !3478
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3479 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3420, metadata !3426), !dbg !3485
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3483, metadata !683), !dbg !3488
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3484, metadata !683), !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3416, metadata !683) #10, !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3417, metadata !683) #10, !dbg !3491
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3418, metadata !683) #10, !dbg !3492
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3493
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3493
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3419, metadata !1867) #10, !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3425, metadata !683) #10, !dbg !3495
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3496
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3496
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3420, metadata !683) #10, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3420, metadata !3436) #10, !dbg !3485
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3485
  %7 = icmp eq i32 %0, 10, !dbg !3497
  br i1 %7, label %8, label %9, !dbg !3498

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3499, !noalias !3500
  unreachable, !dbg !3499

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3420, metadata !3436) #10, !dbg !3485
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3503
  store i32 %0, i32* %10, align 8, !dbg !3503, !alias.scope !3500
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3503
  %12 = bitcast i32* %11 to i8*, !dbg !3503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3503
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3504
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3419, metadata !1867) #10, !dbg !3494
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3505
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3506
  ret i8* %13, !dbg !3507
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3508 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3420, metadata !3426), !dbg !3515
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3512, metadata !683), !dbg !3518
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3513, metadata !683), !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3514, metadata !683), !dbg !3520
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3453, metadata !683) #10, !dbg !3521
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3454, metadata !683) #10, !dbg !3522
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3455, metadata !683) #10, !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3456, metadata !683) #10, !dbg !3524
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3525
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3525
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3457, metadata !1867) #10, !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3425, metadata !683) #10, !dbg !3527
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3528
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3528
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3420, metadata !683) #10, !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3420, metadata !3436) #10, !dbg !3515
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3515
  %8 = icmp eq i32 %0, 10, !dbg !3529
  br i1 %8, label %9, label %10, !dbg !3530

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3531, !noalias !3532
  unreachable, !dbg !3531

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3420, metadata !3436) #10, !dbg !3515
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3535
  store i32 %0, i32* %11, align 8, !dbg !3535, !alias.scope !3532
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3535
  %13 = bitcast i32* %12 to i8*, !dbg !3535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3535
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3536
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3457, metadata !1867) #10, !dbg !3526
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3537
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3538
  ret i8* %14, !dbg !3539
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3540 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3544, metadata !683), !dbg !3548
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3545, metadata !683), !dbg !3549
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3546, metadata !683), !dbg !3550
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3551
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3552, !tbaa.struct !3553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3547, metadata !1867), !dbg !3554
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2011, metadata !683), !dbg !3555
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2012, metadata !683), !dbg !3557
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2013, metadata !683), !dbg !3558
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2014, metadata !683), !dbg !3559
  %6 = lshr i8 %2, 5, !dbg !3560
  %7 = zext i8 %6 to i64, !dbg !3560
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3561
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2015, metadata !683), !dbg !3562
  %9 = and i8 %2, 31, !dbg !3563
  %10 = zext i8 %9 to i32, !dbg !3564
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2017, metadata !683), !dbg !3565
  %11 = load i32, i32* %8, align 4, !dbg !3566, !tbaa !780
  %12 = lshr i32 %11, %10, !dbg !3567
  %13 = and i32 %12, 1, !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2018, metadata !683), !dbg !3569
  %14 = xor i32 %13, 1, !dbg !3570
  %15 = shl i32 %14, %10, !dbg !3571
  %16 = xor i32 %15, %11, !dbg !3572
  store i32 %16, i32* %8, align 4, !dbg !3572, !tbaa !780
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3547, metadata !1867), !dbg !3554
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3573
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3574
  ret i8* %17, !dbg !3575
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3576 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3580, metadata !683), !dbg !3582
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3581, metadata !683), !dbg !3583
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3544, metadata !683) #10, !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3545, metadata !683) #10, !dbg !3586
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3546, metadata !683) #10, !dbg !3587
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3588
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3589, !tbaa.struct !3553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3547, metadata !1867) #10, !dbg !3590
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2011, metadata !683) #10, !dbg !3591
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2012, metadata !683) #10, !dbg !3593
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2013, metadata !683) #10, !dbg !3594
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2014, metadata !683) #10, !dbg !3595
  %5 = lshr i8 %1, 5, !dbg !3596
  %6 = zext i8 %5 to i64, !dbg !3596
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3597
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2015, metadata !683) #10, !dbg !3598
  %8 = and i8 %1, 31, !dbg !3599
  %9 = zext i8 %8 to i32, !dbg !3600
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2017, metadata !683) #10, !dbg !3601
  %10 = load i32, i32* %7, align 4, !dbg !3602, !tbaa !780
  %11 = lshr i32 %10, %9, !dbg !3603
  %12 = and i32 %11, 1, !dbg !3604
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2018, metadata !683) #10, !dbg !3605
  %13 = xor i32 %12, 1, !dbg !3606
  %14 = shl i32 %13, %9, !dbg !3607
  %15 = xor i32 %14, %10, !dbg !3608
  store i32 %15, i32* %7, align 4, !dbg !3608, !tbaa !780
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3547, metadata !1867) #10, !dbg !3590
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3609
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3610
  ret i8* %16, !dbg !3611
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3612 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3614, metadata !683), !dbg !3615
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3580, metadata !683) #10, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3581, metadata !683) #10, !dbg !3618
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3544, metadata !683) #10, !dbg !3619
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3545, metadata !683) #10, !dbg !3621
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3546, metadata !683) #10, !dbg !3622
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3623
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3623
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3624, !tbaa.struct !3553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3547, metadata !1867) #10, !dbg !3625
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2011, metadata !683) #10, !dbg !3626
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2012, metadata !683) #10, !dbg !3628
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2013, metadata !683) #10, !dbg !3629
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2014, metadata !683) #10, !dbg !3630
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3631
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2015, metadata !683) #10, !dbg !3632
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2017, metadata !683) #10, !dbg !3633
  %5 = load i32, i32* %4, align 4, !dbg !3634, !tbaa !780
  %6 = or i32 %5, 67108864, !dbg !3635
  store i32 %6, i32* %4, align 4, !dbg !3635, !tbaa !780
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3547, metadata !1867) #10, !dbg !3625
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3636
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3637
  ret i8* %7, !dbg !3638
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3639 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3641, metadata !683), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3642, metadata !683), !dbg !3644
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3544, metadata !683) #10, !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3545, metadata !683) #10, !dbg !3647
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3546, metadata !683) #10, !dbg !3648
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3649
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3649
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3650, !tbaa.struct !3553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3547, metadata !1867) #10, !dbg !3651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2011, metadata !683) #10, !dbg !3652
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2012, metadata !683) #10, !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2013, metadata !683) #10, !dbg !3655
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2014, metadata !683) #10, !dbg !3656
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3657
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2015, metadata !683) #10, !dbg !3658
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2017, metadata !683) #10, !dbg !3659
  %6 = load i32, i32* %5, align 4, !dbg !3660, !tbaa !780
  %7 = or i32 %6, 67108864, !dbg !3661
  store i32 %7, i32* %5, align 4, !dbg !3661, !tbaa !780
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3547, metadata !1867) #10, !dbg !3651
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3662
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3663
  ret i8* %8, !dbg !3664
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3665 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3420, metadata !3426), !dbg !3671
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3667, metadata !683), !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3668, metadata !683), !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3669, metadata !683), !dbg !3675
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3676
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3676
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3425, metadata !683) #10, !dbg !3677
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3678
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3678
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3420, metadata !683) #10, !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3420, metadata !3436) #10, !dbg !3671
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3671
  %9 = icmp eq i32 %1, 10, !dbg !3679
  br i1 %9, label %10, label %11, !dbg !3680

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3681, !noalias !3682
  unreachable, !dbg !3681

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3420, metadata !3436) #10, !dbg !3671
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3685
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3686
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3687
  store i32 %1, i32* %13, align 8, !dbg !3687
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3687
  %15 = bitcast i32* %14 to i8*, !dbg !3687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3687
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3670, metadata !1867), !dbg !3688
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2011, metadata !683), !dbg !3689
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2012, metadata !683), !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2013, metadata !683), !dbg !3692
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2014, metadata !683), !dbg !3693
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3694
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2015, metadata !683), !dbg !3695
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2017, metadata !683), !dbg !3696
  %17 = load i32, i32* %16, align 4, !dbg !3697, !tbaa !780
  %18 = or i32 %17, 67108864, !dbg !3698
  store i32 %18, i32* %16, align 4, !dbg !3698, !tbaa !780
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3670, metadata !1867), !dbg !3688
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3699
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3700
  ret i8* %19, !dbg !3701
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3702 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3706, metadata !683), !dbg !3710
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3707, metadata !683), !dbg !3711
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3708, metadata !683), !dbg !3712
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3709, metadata !683), !dbg !3713
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3714, metadata !683) #10, !dbg !3724
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3719, metadata !683) #10, !dbg !3726
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3720, metadata !683) #10, !dbg !3727
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3721, metadata !683) #10, !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3722, metadata !683) #10, !dbg !3729
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3730
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3730
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3731, !tbaa.struct !3553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3723, metadata !1867) #10, !dbg !3732
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2061, metadata !683) #10, !dbg !3733
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2062, metadata !683) #10, !dbg !3735
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2063, metadata !683) #10, !dbg !3736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2061, metadata !683) #10, !dbg !3733
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2061, metadata !683) #10, !dbg !3733
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3737
  store i32 10, i32* %7, align 8, !dbg !3738, !tbaa !1991
  %8 = icmp ne i8* %1, null, !dbg !3739
  %9 = icmp ne i8* %2, null, !dbg !3740
  %10 = and i1 %8, %9, !dbg !3741
  br i1 %10, label %12, label %11, !dbg !3741

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3742
  unreachable, !dbg !3742

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3743
  store i8* %1, i8** %13, align 8, !dbg !3744, !tbaa !2080
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3745
  store i8* %2, i8** %14, align 8, !dbg !3746, !tbaa !2083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3723, metadata !1867) #10, !dbg !3732
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3747
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3748
  ret i8* %15, !dbg !3749
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3715 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3714, metadata !683), !dbg !3750
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3719, metadata !683), !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3720, metadata !683), !dbg !3752
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3721, metadata !683), !dbg !3753
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3722, metadata !683), !dbg !3754
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3755
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3756, !tbaa.struct !3553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3723, metadata !1867), !dbg !3757
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2061, metadata !683) #10, !dbg !3758
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2062, metadata !683) #10, !dbg !3760
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2063, metadata !683) #10, !dbg !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2061, metadata !683) #10, !dbg !3758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2061, metadata !683) #10, !dbg !3758
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3762
  store i32 10, i32* %8, align 8, !dbg !3763, !tbaa !1991
  %9 = icmp ne i8* %1, null, !dbg !3764
  %10 = icmp ne i8* %2, null, !dbg !3765
  %11 = and i1 %9, %10, !dbg !3766
  br i1 %11, label %13, label %12, !dbg !3766

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3767
  unreachable, !dbg !3767

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3768
  store i8* %1, i8** %14, align 8, !dbg !3769, !tbaa !2080
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3770
  store i8* %2, i8** %15, align 8, !dbg !3771, !tbaa !2083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3723, metadata !1867), !dbg !3757
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3772
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3773
  ret i8* %16, !dbg !3774
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3775 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3779, metadata !683), !dbg !3782
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3780, metadata !683), !dbg !3783
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3781, metadata !683), !dbg !3784
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3706, metadata !683) #10, !dbg !3785
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3707, metadata !683) #10, !dbg !3787
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3708, metadata !683) #10, !dbg !3788
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3709, metadata !683) #10, !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3714, metadata !683) #10, !dbg !3790
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3719, metadata !683) #10, !dbg !3792
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3720, metadata !683) #10, !dbg !3793
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3721, metadata !683) #10, !dbg !3794
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3722, metadata !683) #10, !dbg !3795
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3796
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3797, !tbaa.struct !3553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3723, metadata !1867) #10, !dbg !3798
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2061, metadata !683) #10, !dbg !3799
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2062, metadata !683) #10, !dbg !3801
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2063, metadata !683) #10, !dbg !3802
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2061, metadata !683) #10, !dbg !3799
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2061, metadata !683) #10, !dbg !3799
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3803
  store i32 10, i32* %6, align 8, !dbg !3804, !tbaa !1991
  %7 = icmp ne i8* %0, null, !dbg !3805
  %8 = icmp ne i8* %1, null, !dbg !3806
  %9 = and i1 %7, %8, !dbg !3807
  br i1 %9, label %11, label %10, !dbg !3807

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3808
  unreachable, !dbg !3808

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3809
  store i8* %0, i8** %12, align 8, !dbg !3810, !tbaa !2080
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3811
  store i8* %1, i8** %13, align 8, !dbg !3812, !tbaa !2083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3723, metadata !1867) #10, !dbg !3798
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3813
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3814
  ret i8* %14, !dbg !3815
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3816 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3820, metadata !683), !dbg !3824
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3821, metadata !683), !dbg !3825
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3822, metadata !683), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3823, metadata !683), !dbg !3827
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3714, metadata !683) #10, !dbg !3828
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3719, metadata !683) #10, !dbg !3830
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3720, metadata !683) #10, !dbg !3831
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3721, metadata !683) #10, !dbg !3832
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3722, metadata !683) #10, !dbg !3833
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3834
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3835, !tbaa.struct !3553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3723, metadata !1867) #10, !dbg !3836
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2061, metadata !683) #10, !dbg !3837
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2062, metadata !683) #10, !dbg !3839
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2063, metadata !683) #10, !dbg !3840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2061, metadata !683) #10, !dbg !3837
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2061, metadata !683) #10, !dbg !3837
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3841
  store i32 10, i32* %7, align 8, !dbg !3842, !tbaa !1991
  %8 = icmp ne i8* %0, null, !dbg !3843
  %9 = icmp ne i8* %1, null, !dbg !3844
  %10 = and i1 %8, %9, !dbg !3845
  br i1 %10, label %12, label %11, !dbg !3845

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3846
  unreachable, !dbg !3846

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3847
  store i8* %0, i8** %13, align 8, !dbg !3848, !tbaa !2080
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3849
  store i8* %1, i8** %14, align 8, !dbg !3850, !tbaa !2083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3723, metadata !1867) #10, !dbg !3836
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3851
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3852
  ret i8* %15, !dbg !3853
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3854 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3858, metadata !683), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3859, metadata !683), !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3860, metadata !683), !dbg !3863
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3864
  ret i8* %4, !dbg !3865
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3866 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3870, metadata !683), !dbg !3872
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3871, metadata !683), !dbg !3873
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3858, metadata !683) #10, !dbg !3874
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3859, metadata !683) #10, !dbg !3876
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3860, metadata !683) #10, !dbg !3877
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3878
  ret i8* %3, !dbg !3879
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3880 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3884, metadata !683), !dbg !3886
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3885, metadata !683), !dbg !3887
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3858, metadata !683) #10, !dbg !3888
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3859, metadata !683) #10, !dbg !3890
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3860, metadata !683) #10, !dbg !3891
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3892
  ret i8* %3, !dbg !3893
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3894 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3898, metadata !683), !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3884, metadata !683) #10, !dbg !3900
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3885, metadata !683) #10, !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3858, metadata !683) #10, !dbg !3903
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3859, metadata !683) #10, !dbg !3905
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3860, metadata !683) #10, !dbg !3906
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3907
  ret i8* %2, !dbg !3908
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !608 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !612, metadata !683), !dbg !3909
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !613, metadata !683), !dbg !3910
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !614, metadata !683), !dbg !3911
  br label %4, !dbg !3912

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6, !dbg !3911

; <label>:6:                                      ; preds = %4, %9
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !614, metadata !683), !dbg !3911
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10, !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !615, metadata !683), !dbg !3914
  %8 = icmp sgt i64 %7, -1, !dbg !3915
  br i1 %8, label %17, label %9, !dbg !3917

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !3918
  %11 = load i32, i32* %10, align 4, !dbg !3918, !tbaa !780
  %12 = icmp eq i32 %11, 4, !dbg !3918
  br i1 %12, label %6, label %13, !dbg !3920, !llvm.loop !3921

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3924
  %15 = icmp ugt i64 %5, 2147475456, !dbg !3926
  %16 = and i1 %15, %14, !dbg !3928
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19, !dbg !3929

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !3929

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7, !dbg !3929
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3930 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3975, metadata !683), !dbg !3981
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3976, metadata !683), !dbg !3982
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3977, metadata !683), !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3978, metadata !683), !dbg !3984
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3979, metadata !683), !dbg !3985
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3980, metadata !683), !dbg !3986
  %7 = icmp eq i8* %1, null, !dbg !3987
  br i1 %7, label %10, label %8, !dbg !3989

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3990
  br label %12, !dbg !3990

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3991
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #10, !dbg !3992
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3993
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.81, i64 0, i64 0), i32 5) #10, !dbg !3995
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3996
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
  ], !dbg !3997

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3998
  unreachable, !dbg !3998

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #10, !dbg !4000
  %20 = load i8*, i8** %4, align 8, !dbg !4000, !tbaa !691
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4001
  br label %146, !dbg !4003

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.83, i64 0, i64 0), i32 5) #10, !dbg !4004
  %24 = load i8*, i8** %4, align 8, !dbg !4004, !tbaa !691
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4004
  %26 = load i8*, i8** %25, align 8, !dbg !4004, !tbaa !691
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4005
  br label %146, !dbg !4006

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #10, !dbg !4007
  %30 = load i8*, i8** %4, align 8, !dbg !4007, !tbaa !691
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4007
  %32 = load i8*, i8** %31, align 8, !dbg !4007, !tbaa !691
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4007
  %34 = load i8*, i8** %33, align 8, !dbg !4007, !tbaa !691
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4008
  br label %146, !dbg !4009

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #10, !dbg !4010
  %38 = load i8*, i8** %4, align 8, !dbg !4010, !tbaa !691
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4010
  %40 = load i8*, i8** %39, align 8, !dbg !4010, !tbaa !691
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4010
  %42 = load i8*, i8** %41, align 8, !dbg !4010, !tbaa !691
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4010
  %44 = load i8*, i8** %43, align 8, !dbg !4010, !tbaa !691
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4011
  br label %146, !dbg !4012

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #10, !dbg !4013
  %48 = load i8*, i8** %4, align 8, !dbg !4013, !tbaa !691
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4013
  %50 = load i8*, i8** %49, align 8, !dbg !4013, !tbaa !691
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4013
  %52 = load i8*, i8** %51, align 8, !dbg !4013, !tbaa !691
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4013
  %54 = load i8*, i8** %53, align 8, !dbg !4013, !tbaa !691
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4013
  %56 = load i8*, i8** %55, align 8, !dbg !4013, !tbaa !691
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4014
  br label %146, !dbg !4015

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #10, !dbg !4016
  %60 = load i8*, i8** %4, align 8, !dbg !4016, !tbaa !691
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4016
  %62 = load i8*, i8** %61, align 8, !dbg !4016, !tbaa !691
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4016
  %64 = load i8*, i8** %63, align 8, !dbg !4016, !tbaa !691
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4016
  %66 = load i8*, i8** %65, align 8, !dbg !4016, !tbaa !691
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4016
  %68 = load i8*, i8** %67, align 8, !dbg !4016, !tbaa !691
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4016
  %70 = load i8*, i8** %69, align 8, !dbg !4016, !tbaa !691
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4017
  br label %146, !dbg !4018

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #10, !dbg !4019
  %74 = load i8*, i8** %4, align 8, !dbg !4019, !tbaa !691
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4019
  %76 = load i8*, i8** %75, align 8, !dbg !4019, !tbaa !691
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4019
  %78 = load i8*, i8** %77, align 8, !dbg !4019, !tbaa !691
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4019
  %80 = load i8*, i8** %79, align 8, !dbg !4019, !tbaa !691
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4019
  %82 = load i8*, i8** %81, align 8, !dbg !4019, !tbaa !691
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4019
  %84 = load i8*, i8** %83, align 8, !dbg !4019, !tbaa !691
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4019
  %86 = load i8*, i8** %85, align 8, !dbg !4019, !tbaa !691
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4020
  br label %146, !dbg !4021

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #10, !dbg !4022
  %90 = load i8*, i8** %4, align 8, !dbg !4022, !tbaa !691
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4022
  %92 = load i8*, i8** %91, align 8, !dbg !4022, !tbaa !691
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4022
  %94 = load i8*, i8** %93, align 8, !dbg !4022, !tbaa !691
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4022
  %96 = load i8*, i8** %95, align 8, !dbg !4022, !tbaa !691
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4022
  %98 = load i8*, i8** %97, align 8, !dbg !4022, !tbaa !691
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4022
  %100 = load i8*, i8** %99, align 8, !dbg !4022, !tbaa !691
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4022
  %102 = load i8*, i8** %101, align 8, !dbg !4022, !tbaa !691
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4022
  %104 = load i8*, i8** %103, align 8, !dbg !4022, !tbaa !691
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4023
  br label %146, !dbg !4024

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #10, !dbg !4025
  %108 = load i8*, i8** %4, align 8, !dbg !4025, !tbaa !691
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4025
  %110 = load i8*, i8** %109, align 8, !dbg !4025, !tbaa !691
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4025
  %112 = load i8*, i8** %111, align 8, !dbg !4025, !tbaa !691
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4025
  %114 = load i8*, i8** %113, align 8, !dbg !4025, !tbaa !691
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4025
  %116 = load i8*, i8** %115, align 8, !dbg !4025, !tbaa !691
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4025
  %118 = load i8*, i8** %117, align 8, !dbg !4025, !tbaa !691
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4025
  %120 = load i8*, i8** %119, align 8, !dbg !4025, !tbaa !691
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4025
  %122 = load i8*, i8** %121, align 8, !dbg !4025, !tbaa !691
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4025
  %124 = load i8*, i8** %123, align 8, !dbg !4025, !tbaa !691
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4026
  br label %146, !dbg !4027

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #10, !dbg !4028
  %128 = load i8*, i8** %4, align 8, !dbg !4028, !tbaa !691
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4028
  %130 = load i8*, i8** %129, align 8, !dbg !4028, !tbaa !691
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4028
  %132 = load i8*, i8** %131, align 8, !dbg !4028, !tbaa !691
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4028
  %134 = load i8*, i8** %133, align 8, !dbg !4028, !tbaa !691
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4028
  %136 = load i8*, i8** %135, align 8, !dbg !4028, !tbaa !691
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4028
  %138 = load i8*, i8** %137, align 8, !dbg !4028, !tbaa !691
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4028
  %140 = load i8*, i8** %139, align 8, !dbg !4028, !tbaa !691
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4028
  %142 = load i8*, i8** %141, align 8, !dbg !4028, !tbaa !691
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4028
  %144 = load i8*, i8** %143, align 8, !dbg !4028, !tbaa !691
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4029
  br label %146, !dbg !4030

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4031
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4032 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4036, metadata !683), !dbg !4042
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4037, metadata !683), !dbg !4043
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4038, metadata !683), !dbg !4044
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4039, metadata !683), !dbg !4045
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4040, metadata !683), !dbg !4046
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4041, metadata !683), !dbg !4047
  br label %6, !dbg !4048

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4041, metadata !683), !dbg !4047
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4050
  %9 = load i8*, i8** %8, align 8, !dbg !4050, !tbaa !691
  %10 = icmp eq i8* %9, null, !dbg !4053
  %11 = add i64 %7, 1, !dbg !4055
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4041, metadata !683), !dbg !4047
  br i1 %10, label %12, label %6, !dbg !4053, !llvm.loop !4057

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4060
  ret void, !dbg !4061
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4062 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4073, metadata !683), !dbg !4081
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4074, metadata !683), !dbg !4082
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4075, metadata !683), !dbg !4083
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4076, metadata !683), !dbg !4084
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4077, metadata !683), !dbg !4085
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4086
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4086
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4079, metadata !683), !dbg !4087
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4078, metadata !683), !dbg !4088
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4089
  %12 = icmp ult i32 %11, 41, !dbg !4089
  br i1 %12, label %13, label %18, !dbg !4089

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4093
  %15 = sext i32 %11 to i64, !dbg !4093
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4093
  %17 = add i32 %11, 8, !dbg !4093
  store i32 %17, i32* %8, align 8, !dbg !4093
  br label %21, !dbg !4093

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4095
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4095
  store i8* %20, i8** %10, align 8, !dbg !4095
  br label %21, !dbg !4095

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4089
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4097
  %25 = load i8*, i8** %24, align 8, !dbg !4097
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4099
  store i8* %25, i8** %26, align 16, !dbg !4100, !tbaa !691
  %27 = icmp eq i8* %25, null, !dbg !4101
  br i1 %27, label %30, label %28, !dbg !4102

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %29 = icmp ult i32 %22, 41, !dbg !4089
  br i1 %29, label %35, label %32, !dbg !4089

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4104
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4105
  ret void, !dbg !4105

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4095
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4095
  store i8* %34, i8** %10, align 8, !dbg !4095
  br label %40, !dbg !4095

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4093
  %37 = sext i32 %22 to i64, !dbg !4093
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4093
  %39 = add i32 %22, 8, !dbg !4093
  store i32 %39, i32* %8, align 8, !dbg !4093
  br label %40, !dbg !4093

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4089
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4097
  %44 = load i8*, i8** %43, align 8, !dbg !4097
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4099
  store i8* %44, i8** %45, align 8, !dbg !4100, !tbaa !691
  %46 = icmp eq i8* %44, null, !dbg !4101
  br i1 %46, label %30, label %47, !dbg !4102

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %48 = icmp ult i32 %41, 41, !dbg !4089
  br i1 %48, label %52, label %49, !dbg !4089

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4095
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4095
  store i8* %51, i8** %10, align 8, !dbg !4095
  br label %57, !dbg !4095

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4093
  %54 = sext i32 %41 to i64, !dbg !4093
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4093
  %56 = add i32 %41, 8, !dbg !4093
  store i32 %56, i32* %8, align 8, !dbg !4093
  br label %57, !dbg !4093

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4089
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4097
  %61 = load i8*, i8** %60, align 8, !dbg !4097
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4099
  store i8* %61, i8** %62, align 16, !dbg !4100, !tbaa !691
  %63 = icmp eq i8* %61, null, !dbg !4101
  br i1 %63, label %30, label %64, !dbg !4102

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %65 = icmp ult i32 %58, 41, !dbg !4089
  br i1 %65, label %69, label %66, !dbg !4089

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4095
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4095
  store i8* %68, i8** %10, align 8, !dbg !4095
  br label %74, !dbg !4095

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4093
  %71 = sext i32 %58 to i64, !dbg !4093
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4093
  %73 = add i32 %58, 8, !dbg !4093
  store i32 %73, i32* %8, align 8, !dbg !4093
  br label %74, !dbg !4093

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4089
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4097
  %78 = load i8*, i8** %77, align 8, !dbg !4097
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4099
  store i8* %78, i8** %79, align 8, !dbg !4100, !tbaa !691
  %80 = icmp eq i8* %78, null, !dbg !4101
  br i1 %80, label %30, label %81, !dbg !4102

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %82 = icmp ult i32 %75, 41, !dbg !4089
  br i1 %82, label %86, label %83, !dbg !4089

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4095
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4095
  store i8* %85, i8** %10, align 8, !dbg !4095
  br label %91, !dbg !4095

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4093
  %88 = sext i32 %75 to i64, !dbg !4093
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4093
  %90 = add i32 %75, 8, !dbg !4093
  store i32 %90, i32* %8, align 8, !dbg !4093
  br label %91, !dbg !4093

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4089
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4097
  %95 = load i8*, i8** %94, align 8, !dbg !4097
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4099
  store i8* %95, i8** %96, align 16, !dbg !4100, !tbaa !691
  %97 = icmp eq i8* %95, null, !dbg !4101
  br i1 %97, label %30, label %98, !dbg !4102

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %99 = icmp ult i32 %92, 41, !dbg !4089
  br i1 %99, label %103, label %100, !dbg !4089

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4095
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4095
  store i8* %102, i8** %10, align 8, !dbg !4095
  br label %108, !dbg !4095

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4093
  %105 = sext i32 %92 to i64, !dbg !4093
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4093
  %107 = add i32 %92, 8, !dbg !4093
  store i32 %107, i32* %8, align 8, !dbg !4093
  br label %108, !dbg !4093

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4097
  %111 = load i8*, i8** %110, align 8, !dbg !4097
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4099
  store i8* %111, i8** %112, align 8, !dbg !4100, !tbaa !691
  %113 = icmp eq i8* %111, null, !dbg !4101
  br i1 %113, label %30, label %114, !dbg !4102

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %115 = load i8*, i8** %10, align 8, !dbg !4095
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4095
  store i8* %116, i8** %10, align 8, !dbg !4095
  %117 = bitcast i8* %115 to i8**, !dbg !4097
  %118 = load i8*, i8** %117, align 8, !dbg !4097
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4099
  store i8* %118, i8** %119, align 16, !dbg !4100, !tbaa !691
  %120 = icmp eq i8* %118, null, !dbg !4101
  br i1 %120, label %30, label %121, !dbg !4102

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %122 = load i8*, i8** %10, align 8, !dbg !4095
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4095
  store i8* %123, i8** %10, align 8, !dbg !4095
  %124 = bitcast i8* %122 to i8**, !dbg !4097
  %125 = load i8*, i8** %124, align 8, !dbg !4097
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4099
  store i8* %125, i8** %126, align 8, !dbg !4100, !tbaa !691
  %127 = icmp eq i8* %125, null, !dbg !4101
  br i1 %127, label %30, label %128, !dbg !4102

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %129 = load i8*, i8** %10, align 8, !dbg !4095
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4095
  store i8* %130, i8** %10, align 8, !dbg !4095
  %131 = bitcast i8* %129 to i8**, !dbg !4097
  %132 = load i8*, i8** %131, align 8, !dbg !4097
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4099
  store i8* %132, i8** %133, align 16, !dbg !4100, !tbaa !691
  %134 = icmp eq i8* %132, null, !dbg !4101
  br i1 %134, label %30, label %135, !dbg !4102

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %136 = load i8*, i8** %10, align 8, !dbg !4095
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4095
  store i8* %137, i8** %10, align 8, !dbg !4095
  %138 = bitcast i8* %136 to i8**, !dbg !4097
  %139 = load i8*, i8** %138, align 8, !dbg !4097
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4099
  store i8* %139, i8** %140, align 8, !dbg !4100, !tbaa !691
  %141 = icmp eq i8* %139, null, !dbg !4101
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4078, metadata !683), !dbg !4088
  %142 = select i1 %141, i64 9, i64 10, !dbg !4102
  br label %30, !dbg !4102
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4106 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4110, metadata !683), !dbg !4120
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4111, metadata !683), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4112, metadata !683), !dbg !4122
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4113, metadata !683), !dbg !4123
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4124
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4124
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4114, metadata !683), !dbg !4125
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4126
  call void @llvm.va_start(i8* nonnull %6), !dbg !4126
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4127
  call void @llvm.va_end(i8* nonnull %6), !dbg !4128
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4129
  ret void, !dbg !4129
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4130 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.94, i64 0, i64 0), i32 5) #10, !dbg !4131
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.95, i64 0, i64 0)) #10, !dbg !4132
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #10, !dbg !4134
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.98, i64 0, i64 0)) #10, !dbg !4135
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !4136
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4136, !tbaa !691
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4137
  ret void, !dbg !4138
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4139 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4143, metadata !683), !dbg !4145
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4144, metadata !683), !dbg !4146
  %3 = udiv i64 9223372036854775807, %1, !dbg !4147
  %4 = icmp ult i64 %3, %0, !dbg !4147
  br i1 %4, label %5, label %6, !dbg !4149

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4150
  unreachable, !dbg !4150

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4151
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4152, metadata !683) #10, !dbg !4159
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4161
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4158, metadata !683) #10, !dbg !4162
  %9 = icmp eq i8* %8, null, !dbg !4163
  %10 = icmp ne i64 %7, 0, !dbg !4165
  %11 = and i1 %10, %9, !dbg !4167
  br i1 %11, label %12, label %13, !dbg !4167

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4168
  unreachable, !dbg !4168

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4169
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4153 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4152, metadata !683), !dbg !4170
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4171
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4158, metadata !683), !dbg !4172
  %3 = icmp eq i8* %2, null, !dbg !4173
  %4 = icmp ne i64 %0, 0, !dbg !4174
  %5 = and i1 %4, %3, !dbg !4175
  br i1 %5, label %6, label %7, !dbg !4175

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4176
  unreachable, !dbg !4176

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4177
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4178 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4182, metadata !683), !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4183, metadata !683), !dbg !4186
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4184, metadata !683), !dbg !4187
  %4 = udiv i64 9223372036854775807, %2, !dbg !4188
  %5 = icmp ult i64 %4, %1, !dbg !4188
  br i1 %5, label %6, label %7, !dbg !4190

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4191
  unreachable, !dbg !4191

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4192
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4193, metadata !683) #10, !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4198, metadata !683) #10, !dbg !4201
  %9 = icmp eq i64 %8, 0, !dbg !4202
  %10 = icmp ne i8* %0, null, !dbg !4204
  %11 = and i1 %10, %9, !dbg !4206
  br i1 %11, label %12, label %13, !dbg !4206

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4207
  br label %19, !dbg !4209

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4210
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4193, metadata !683) #10, !dbg !4199
  %15 = icmp eq i8* %14, null, !dbg !4211
  %16 = icmp ne i64 %8, 0, !dbg !4213
  %17 = and i1 %16, %15, !dbg !4215
  br i1 %17, label %18, label %19, !dbg !4215

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4216
  unreachable, !dbg !4216

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4217
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4194 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4193, metadata !683), !dbg !4218
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4198, metadata !683), !dbg !4219
  %3 = icmp eq i64 %1, 0, !dbg !4220
  %4 = icmp ne i8* %0, null, !dbg !4221
  %5 = and i1 %4, %3, !dbg !4222
  br i1 %5, label %6, label %7, !dbg !4222

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4223
  br label %13, !dbg !4224

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4225
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4193, metadata !683), !dbg !4218
  %9 = icmp eq i8* %8, null, !dbg !4226
  %10 = icmp ne i64 %1, 0, !dbg !4227
  %11 = and i1 %10, %9, !dbg !4228
  br i1 %11, label %12, label %13, !dbg !4228

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4229
  unreachable, !dbg !4229

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4230
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !639 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !644, metadata !683), !dbg !4231
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !645, metadata !683), !dbg !4232
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !646, metadata !683), !dbg !4233
  %4 = load i64, i64* %1, align 8, !dbg !4234, !tbaa !1908
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !647, metadata !683), !dbg !4235
  %5 = icmp eq i8* %0, null, !dbg !4236
  br i1 %5, label %6, label %13, !dbg !4238

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4239
  br i1 %7, label %8, label %17, !dbg !4242

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !647, metadata !683), !dbg !4235
  %10 = icmp ugt i64 %2, 128, !dbg !4245
  %11 = zext i1 %10 to i64, !dbg !4245
  %12 = add nuw nsw i64 %9, %11, !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !647, metadata !683), !dbg !4235
  br label %17, !dbg !4247

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4248
  %15 = icmp ugt i64 %14, %4, !dbg !4251
  br i1 %15, label %20, label %16, !dbg !4252

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4253
  unreachable, !dbg !4253

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !647, metadata !683), !dbg !4235
  store i64 %18, i64* %1, align 8, !dbg !4254, !tbaa !1908
  %19 = mul i64 %18, %2, !dbg !4255
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4193, metadata !683) #10, !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4198, metadata !683) #10, !dbg !4258
  br label %27, !dbg !4259

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4260
  %22 = add i64 %4, 1, !dbg !4261
  %23 = add i64 %22, %21, !dbg !4262
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !647, metadata !683), !dbg !4235
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !647, metadata !683), !dbg !4235
  store i64 %23, i64* %1, align 8, !dbg !4254, !tbaa !1908
  %24 = mul i64 %23, %2, !dbg !4255
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4193, metadata !683) #10, !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4198, metadata !683) #10, !dbg !4258
  %25 = icmp eq i64 %24, 0, !dbg !4263
  br i1 %25, label %26, label %27, !dbg !4259

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4264
  br label %34, !dbg !4265

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4266
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4193, metadata !683) #10, !dbg !4256
  %30 = icmp eq i8* %29, null, !dbg !4267
  %31 = icmp ne i64 %28, 0, !dbg !4268
  %32 = and i1 %31, %30, !dbg !4269
  br i1 %32, label %33, label %34, !dbg !4269

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4270
  unreachable, !dbg !4270

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4271
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4272 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4274, metadata !683), !dbg !4275
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4152, metadata !683) #10, !dbg !4276
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4278
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4158, metadata !683) #10, !dbg !4279
  %3 = icmp eq i8* %2, null, !dbg !4280
  %4 = icmp ne i64 %0, 0, !dbg !4281
  %5 = and i1 %4, %3, !dbg !4282
  br i1 %5, label %6, label %7, !dbg !4282

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4283
  unreachable, !dbg !4283

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4284
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4285 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4289, metadata !683), !dbg !4291
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4290, metadata !683), !dbg !4292
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !644, metadata !683) #10, !dbg !4293
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !645, metadata !683) #10, !dbg !4295
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !646, metadata !683) #10, !dbg !4296
  %3 = load i64, i64* %1, align 8, !dbg !4297, !tbaa !1908
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !647, metadata !683) #10, !dbg !4298
  %4 = icmp eq i8* %0, null, !dbg !4299
  br i1 %4, label %5, label %8, !dbg !4300

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4301
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !647, metadata !683) #10, !dbg !4298
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !647, metadata !683) #10, !dbg !4298
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4302
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !647, metadata !683) #10, !dbg !4298
  store i64 %7, i64* %1, align 8, !dbg !4303, !tbaa !1908
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4193, metadata !683) #10, !dbg !4304
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4198, metadata !683) #10, !dbg !4306
  br label %17, !dbg !4307

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4308
  br i1 %9, label %11, label %10, !dbg !4309

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4310
  unreachable, !dbg !4310

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4311
  %13 = add i64 %3, 1, !dbg !4312
  %14 = add i64 %13, %12, !dbg !4313
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !647, metadata !683) #10, !dbg !4298
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !647, metadata !683) #10, !dbg !4298
  store i64 %14, i64* %1, align 8, !dbg !4303, !tbaa !1908
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4193, metadata !683) #10, !dbg !4304
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4198, metadata !683) #10, !dbg !4306
  %15 = icmp eq i64 %14, 0, !dbg !4314
  br i1 %15, label %16, label %17, !dbg !4307

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4315
  br label %24, !dbg !4316

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4317
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4193, metadata !683) #10, !dbg !4304
  %20 = icmp eq i8* %19, null, !dbg !4318
  %21 = icmp ne i64 %18, 0, !dbg !4319
  %22 = and i1 %21, %20, !dbg !4320
  br i1 %22, label %23, label %24, !dbg !4320

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4321
  unreachable, !dbg !4321

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4322
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4323 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4325, metadata !683), !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4152, metadata !683) #10, !dbg !4327
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4329
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4158, metadata !683) #10, !dbg !4330
  %3 = icmp eq i8* %2, null, !dbg !4331
  %4 = icmp ne i64 %0, 0, !dbg !4332
  %5 = and i1 %4, %3, !dbg !4333
  br i1 %5, label %6, label %7, !dbg !4333

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4334
  unreachable, !dbg !4334

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4335
  ret i8* %2, !dbg !4336
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4337 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4339, metadata !683), !dbg !4342
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4340, metadata !683), !dbg !4343
  %3 = udiv i64 9223372036854775807, %1, !dbg !4344
  %4 = icmp ult i64 %3, %0, !dbg !4344
  br i1 %4, label %8, label %5, !dbg !4346

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4347
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4341, metadata !683), !dbg !4349
  %7 = icmp eq i8* %6, null, !dbg !4350
  br i1 %7, label %8, label %9, !dbg !4351

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4353
  unreachable, !dbg !4353

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4354
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4355 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4359, metadata !683), !dbg !4361
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4360, metadata !683), !dbg !4362
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4152, metadata !683) #10, !dbg !4363
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4365
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4158, metadata !683) #10, !dbg !4366
  %4 = icmp eq i8* %3, null, !dbg !4367
  %5 = icmp ne i64 %1, 0, !dbg !4368
  %6 = and i1 %5, %4, !dbg !4369
  br i1 %6, label %7, label %8, !dbg !4369

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4370
  unreachable, !dbg !4370

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4371
  ret i8* %3, !dbg !4372
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4373 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4375, metadata !683), !dbg !4376
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4377
  %3 = add i64 %2, 1, !dbg !4378
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4359, metadata !683) #10, !dbg !4379
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4360, metadata !683) #10, !dbg !4382
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4152, metadata !683) #10, !dbg !4383
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4385
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4158, metadata !683) #10, !dbg !4386
  %5 = icmp eq i8* %4, null, !dbg !4387
  %6 = icmp ne i64 %3, 0, !dbg !4388
  %7 = and i1 %6, %5, !dbg !4389
  br i1 %7, label %8, label %9, !dbg !4389

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4390
  unreachable, !dbg !4390

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4391
  ret i8* %4, !dbg !4392
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4393 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4395, !tbaa !780
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.109, i64 0, i64 0), i32 5) #10, !dbg !4396
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8* %2) #10, !dbg !4397
  tail call void @abort() #14, !dbg !4399
  unreachable, !dbg !4399
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4400 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4405, metadata !683), !dbg !4423
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4406, metadata !683), !dbg !4424
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4407, metadata !683), !dbg !4425
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4408, metadata !683), !dbg !4426
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4409, metadata !683), !dbg !4427
  %7 = bitcast i8** %6 to i8*, !dbg !4428
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !4428
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4413, metadata !683), !dbg !4429
  %8 = icmp ult i32 %2, 37, !dbg !4430
  br i1 %8, label %10, label %9, !dbg !4430

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.113, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.114, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14, !dbg !4433
  unreachable, !dbg !4433

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !4435
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4411, metadata !683), !dbg !4436
  %12 = tail call i32* @__errno_location() #1, !dbg !4437
  store i32 0, i32* %12, align 4, !dbg !4438, !tbaa !780
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4414, metadata !683), !dbg !4439
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !4440
  %14 = load i16*, i16** %13, align 8, !tbaa !691
  br label %15, !dbg !4442

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !903
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4417, metadata !683), !dbg !4443
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4414, metadata !683), !dbg !4439
  %18 = zext i8 %17 to i64, !dbg !4440
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4440
  %20 = load i16, i16* %19, align 2, !dbg !4440, !tbaa !2521
  %21 = and i16 %20, 8192, !dbg !4440
  %22 = icmp eq i16 %21, 0, !dbg !4444
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4445
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4414, metadata !683), !dbg !4439
  br i1 %22, label %24, label %15, !dbg !4444, !llvm.loop !4446

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !4435
  %26 = icmp eq i8 %17, 45, !dbg !4448
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4450, metadata !683) #10, !dbg !4460
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4458, metadata !683) #10, !dbg !4460
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4459, metadata !683) #10, !dbg !4460
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !4462
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4412, metadata !683), !dbg !4463
  %29 = load i8*, i8** %25, align 8, !dbg !4464, !tbaa !691
  %30 = icmp eq i8* %29, %0, !dbg !4466
  br i1 %30, label %31, label %40, !dbg !4467

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4468
  br i1 %32, label %265, label %33, !dbg !4471

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4472, !tbaa !903
  %35 = icmp eq i8 %34, 0, !dbg !4472
  br i1 %35, label %265, label %36, !dbg !4474

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4472
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !4475
  %39 = icmp eq i8* %38, null, !dbg !4475
  br i1 %39, label %265, label %47, !dbg !4477

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4479, !tbaa !780
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4481

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4413, metadata !683), !dbg !4429
  br label %43, !dbg !4482

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4413, metadata !683), !dbg !4429
  %45 = icmp eq i8* %4, null, !dbg !4484
  br i1 %45, label %46, label %47, !dbg !4486

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4412, metadata !683), !dbg !4463
  store i64 %28, i64* %3, align 8, !dbg !4487, !tbaa !1908
  br label %265, !dbg !4489

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4490, !tbaa !903
  %51 = icmp eq i8 %50, 0, !dbg !4491
  br i1 %51, label %262, label %52, !dbg !4492

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !4490
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4418, metadata !683), !dbg !4493
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4421, metadata !683), !dbg !4494
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #10, !dbg !4495
  %55 = icmp eq i8* %54, null, !dbg !4495
  br i1 %55, label %56, label %58, !dbg !4498

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4412, metadata !683), !dbg !4463
  store i64 %49, i64* %3, align 8, !dbg !4500, !tbaa !1908
  %57 = or i32 %48, 2, !dbg !4502
  br label %265, !dbg !4503

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
  ], !dbg !4504

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !4505
  %61 = icmp eq i8* %60, null, !dbg !4505
  br i1 %61, label %72, label %62, !dbg !4509

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4511
  %64 = load i8, i8* %63, align 1, !dbg !4511, !tbaa !903
  %65 = sext i8 %64 to i32, !dbg !4511
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4512

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4513
  %68 = load i8, i8* %67, align 1, !dbg !4513, !tbaa !903
  %69 = icmp eq i8 %68, 66, !dbg !4516
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4421, metadata !683), !dbg !4494
  %70 = select i1 %69, i64 3, i64 1, !dbg !4517
  br label %72, !dbg !4517

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4418, metadata !683), !dbg !4493
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4421, metadata !683), !dbg !4494
  br label %72, !dbg !4518

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
  ], !dbg !4519

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4520, metadata !683), !dbg !4526
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4529
  %77 = shl i64 %49, 9, !dbg !4531
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4532
  %79 = zext i1 %76 to i32, !dbg !4532
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4422, metadata !683), !dbg !4533
  br label %253, !dbg !4534

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4520, metadata !683), !dbg !4535
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4537
  %82 = shl i64 %49, 10, !dbg !4538
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4539
  %84 = zext i1 %81 to i32, !dbg !4539
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4422, metadata !683), !dbg !4533
  br label %253, !dbg !4540

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4549
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4551
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4551
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4549
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !4552
  %88 = mul i64 %49, %73, !dbg !4554
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4555
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  %90 = icmp ult i64 %86, %89, !dbg !4552
  %91 = mul i64 %89, %73, !dbg !4554
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4555
  %93 = or i1 %90, %87, !dbg !4556
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  %94 = icmp ult i64 %86, %92, !dbg !4552
  %95 = mul i64 %92, %73, !dbg !4554
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4555
  %97 = or i1 %94, %93, !dbg !4556
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  %98 = icmp ult i64 %86, %96, !dbg !4552
  %99 = mul i64 %96, %73, !dbg !4554
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4555
  %101 = or i1 %98, %97, !dbg !4556
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  %102 = icmp ult i64 %86, %100, !dbg !4552
  %103 = mul i64 %100, %73, !dbg !4554
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4555
  %105 = or i1 %102, %101, !dbg !4556
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  %106 = icmp ult i64 %86, %104, !dbg !4552
  %107 = mul i64 %104, %73, !dbg !4554
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4555
  %109 = or i1 %106, %105, !dbg !4556
  %110 = zext i1 %109 to i32, !dbg !4556
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4549
  br label %253, !dbg !4533

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4557
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4559
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4557
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !4560
  %114 = mul i64 %49, %73, !dbg !4562
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4563
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4541, metadata !683), !dbg !4557
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4541, metadata !683), !dbg !4557
  %116 = icmp ult i64 %112, %115, !dbg !4560
  %117 = mul i64 %115, %73, !dbg !4562
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4563
  %119 = or i1 %116, %113, !dbg !4564
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4541, metadata !683), !dbg !4557
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4541, metadata !683), !dbg !4557
  %120 = icmp ult i64 %112, %118, !dbg !4560
  %121 = mul i64 %118, %73, !dbg !4562
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4563
  %123 = or i1 %120, %119, !dbg !4564
  %124 = zext i1 %123 to i32, !dbg !4564
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4541, metadata !683), !dbg !4557
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4541, metadata !683), !dbg !4557
  br label %253, !dbg !4533

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4541, metadata !683), !dbg !4565
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4567
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4567
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4541, metadata !683), !dbg !4565
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !4568
  %128 = mul i64 %49, %73, !dbg !4570
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4571
  %130 = zext i1 %127 to i32, !dbg !4571
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4548, metadata !683), !dbg !4567
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4548, metadata !683), !dbg !4567
  br label %253, !dbg !4533

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4541, metadata !683), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4574
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4574
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4541, metadata !683), !dbg !4572
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !4575
  %134 = mul i64 %49, %73, !dbg !4577
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4578
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4541, metadata !683), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4541, metadata !683), !dbg !4572
  %136 = icmp ult i64 %132, %135, !dbg !4575
  %137 = mul i64 %135, %73, !dbg !4577
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4578
  %139 = or i1 %136, %133, !dbg !4579
  %140 = zext i1 %139 to i32, !dbg !4579
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4541, metadata !683), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4541, metadata !683), !dbg !4572
  br label %253, !dbg !4533

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4580
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4582
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4582
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4541, metadata !683), !dbg !4580
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !4583
  %144 = mul i64 %49, %73, !dbg !4585
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4586
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  %146 = icmp ult i64 %142, %145, !dbg !4583
  %147 = mul i64 %145, %73, !dbg !4585
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4586
  %149 = or i1 %146, %143, !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  %150 = icmp ult i64 %142, %148, !dbg !4583
  %151 = mul i64 %148, %73, !dbg !4585
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4586
  %153 = or i1 %150, %149, !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  %154 = icmp ult i64 %142, %152, !dbg !4583
  %155 = mul i64 %152, %73, !dbg !4585
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4586
  %157 = or i1 %154, %153, !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  %158 = icmp ult i64 %142, %156, !dbg !4583
  %159 = mul i64 %156, %73, !dbg !4585
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4586
  %161 = or i1 %158, %157, !dbg !4587
  %162 = zext i1 %161 to i32, !dbg !4587
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4580
  br label %253, !dbg !4533

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4588
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4590
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4590
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4541, metadata !683), !dbg !4588
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4591
  %166 = mul i64 %49, %73, !dbg !4593
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4594
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4588
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4588
  %168 = icmp ult i64 %164, %167, !dbg !4591
  %169 = mul i64 %167, %73, !dbg !4593
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4594
  %171 = or i1 %168, %165, !dbg !4595
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4588
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4588
  %172 = icmp ult i64 %164, %170, !dbg !4591
  %173 = mul i64 %170, %73, !dbg !4593
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4594
  %175 = or i1 %172, %171, !dbg !4595
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4588
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4588
  %176 = icmp ult i64 %164, %174, !dbg !4591
  %177 = mul i64 %174, %73, !dbg !4593
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4594
  %179 = or i1 %176, %175, !dbg !4595
  %180 = zext i1 %179 to i32, !dbg !4595
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4588
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4541, metadata !683), !dbg !4588
  br label %253, !dbg !4533

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4520, metadata !683), !dbg !4596
  %182 = icmp slt i64 %49, 0, !dbg !4598
  %183 = shl i64 %49, 1, !dbg !4599
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4600
  %185 = lshr i64 %49, 63, !dbg !4600
  %186 = trunc i64 %185 to i32, !dbg !4600
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4422, metadata !683), !dbg !4533
  br label %253, !dbg !4601

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4541, metadata !683), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4604
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4604
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4541, metadata !683), !dbg !4602
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4605
  %190 = mul i64 %49, %73, !dbg !4607
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4608
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  %192 = icmp ult i64 %188, %191, !dbg !4605
  %193 = mul i64 %191, %73, !dbg !4607
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4608
  %195 = or i1 %192, %189, !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  %196 = icmp ult i64 %188, %194, !dbg !4605
  %197 = mul i64 %194, %73, !dbg !4607
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4608
  %199 = or i1 %196, %195, !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  %200 = icmp ult i64 %188, %198, !dbg !4605
  %201 = mul i64 %198, %73, !dbg !4607
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4608
  %203 = or i1 %200, %199, !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  %204 = icmp ult i64 %188, %202, !dbg !4605
  %205 = mul i64 %202, %73, !dbg !4607
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4608
  %207 = or i1 %204, %203, !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  %208 = icmp ult i64 %188, %206, !dbg !4605
  %209 = mul i64 %206, %73, !dbg !4607
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4608
  %211 = or i1 %208, %207, !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  %212 = icmp ult i64 %188, %210, !dbg !4605
  %213 = mul i64 %210, %73, !dbg !4607
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4608
  %215 = or i1 %212, %211, !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  %216 = icmp ult i64 %188, %214, !dbg !4605
  %217 = mul i64 %214, %73, !dbg !4607
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4608
  %219 = or i1 %216, %215, !dbg !4609
  %220 = zext i1 %219 to i32, !dbg !4609
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4602
  br label %253, !dbg !4533

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4548, metadata !683), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4541, metadata !683), !dbg !4610
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !4613
  %224 = mul i64 %49, %73, !dbg !4615
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4616
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  %226 = icmp ult i64 %222, %225, !dbg !4613
  %227 = mul i64 %225, %73, !dbg !4615
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4616
  %229 = or i1 %226, %223, !dbg !4617
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  %230 = icmp ult i64 %222, %228, !dbg !4613
  %231 = mul i64 %228, %73, !dbg !4615
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4616
  %233 = or i1 %230, %229, !dbg !4617
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  %234 = icmp ult i64 %222, %232, !dbg !4613
  %235 = mul i64 %232, %73, !dbg !4615
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4616
  %237 = or i1 %234, %233, !dbg !4617
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  %238 = icmp ult i64 %222, %236, !dbg !4613
  %239 = mul i64 %236, %73, !dbg !4615
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4616
  %241 = or i1 %238, %237, !dbg !4617
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  %242 = icmp ult i64 %222, %240, !dbg !4613
  %243 = mul i64 %240, %73, !dbg !4615
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4616
  %245 = or i1 %242, %241, !dbg !4617
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  %246 = icmp ult i64 %222, %244, !dbg !4613
  %247 = mul i64 %244, %73, !dbg !4615
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4616
  %249 = or i1 %246, %245, !dbg !4617
  %250 = zext i1 %249 to i32, !dbg !4617
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4541, metadata !683), !dbg !4610
  br label %253, !dbg !4533

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4412, metadata !683), !dbg !4463
  store i64 %49, i64* %3, align 8, !dbg !4618, !tbaa !1908
  %252 = or i32 %48, 2, !dbg !4619
  br label %265, !dbg !4620

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4422, metadata !683), !dbg !4533
  %256 = or i32 %255, %48, !dbg !4621
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4413, metadata !683), !dbg !4429
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4622
  store i8* %257, i8** %25, align 8, !dbg !4622, !tbaa !691
  %258 = load i8, i8* %257, align 1, !dbg !4623, !tbaa !903
  %259 = icmp eq i8 %258, 0, !dbg !4623
  %260 = or i32 %256, 2, !dbg !4625
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4413, metadata !683), !dbg !4429
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4626
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4413, metadata !683), !dbg !4429
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4413, metadata !683), !dbg !4429
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4413, metadata !683), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4412, metadata !683), !dbg !4463
  store i64 %263, i64* %3, align 8, !dbg !4627, !tbaa !1908
  br label %265, !dbg !4628

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !4629
  ret i32 %266, !dbg !4629
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4630 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4633, metadata !683), !dbg !4639
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4634, metadata !683), !dbg !4640
  %3 = icmp eq i64 %0, 0, !dbg !4641
  %4 = icmp eq i64 %1, 0, !dbg !4642
  %5 = or i1 %3, %4, !dbg !4644
  br i1 %5, label %12, label %6, !dbg !4644

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4645
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4636, metadata !683), !dbg !4646
  %8 = udiv i64 %7, %1, !dbg !4647
  %9 = icmp eq i64 %8, %0, !dbg !4649
  br i1 %9, label %12, label %10, !dbg !4650

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4651
  store i32 12, i32* %11, align 4, !dbg !4653, !tbaa !780
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4633, metadata !683), !dbg !4639
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4634, metadata !683), !dbg !4640
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4654
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4635, metadata !683), !dbg !4655
  br label %16, !dbg !4656

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4657
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4658 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4703, metadata !683), !dbg !4707
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4704, metadata !683), !dbg !4708
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4706, metadata !683), !dbg !4709
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4710
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4705, metadata !683), !dbg !4711
  %3 = icmp slt i32 %2, 0, !dbg !4712
  br i1 %3, label %4, label %6, !dbg !4714

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4715
  br label %24, !dbg !4716

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4717
  %8 = icmp eq i32 %7, 0, !dbg !4717
  br i1 %8, label %13, label %9, !dbg !4719

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4720
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4722
  %12 = icmp eq i64 %11, -1, !dbg !4724
  br i1 %12, label %16, label %13, !dbg !4725

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4726
  %15 = icmp eq i32 %14, 0, !dbg !4726
  br i1 %15, label %16, label %18, !dbg !4727

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4704, metadata !683), !dbg !4708
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4729
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4706, metadata !683), !dbg !4709
  br label %24, !dbg !4730

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4731
  %20 = load i32, i32* %19, align 4, !dbg !4731, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4704, metadata !683), !dbg !4708
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4704, metadata !683), !dbg !4708
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4729
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4706, metadata !683), !dbg !4709
  %22 = icmp eq i32 %20, 0, !dbg !4732
  br i1 %22, label %24, label %23, !dbg !4730

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4734, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4706, metadata !683), !dbg !4709
  br label %24, !dbg !4736

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4737
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4738 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4783, metadata !683), !dbg !4784
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4785
  br i1 %2, label %6, label %3, !dbg !4787

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4788
  %5 = icmp eq i32 %4, 0, !dbg !4788
  br i1 %5, label %6, label %8, !dbg !4790

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4792
  br label %17, !dbg !4793

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4794, metadata !683) #10, !dbg !4799
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4801
  %10 = load i32, i32* %9, align 8, !dbg !4801, !tbaa !975
  %11 = and i32 %10, 256, !dbg !4803
  %12 = icmp eq i32 %11, 0, !dbg !4803
  br i1 %12, label %15, label %13, !dbg !4804

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4805
  br label %15, !dbg !4805

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4806
  br label %17, !dbg !4807

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4808
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4809 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4854, metadata !683), !dbg !4860
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4855, metadata !683), !dbg !4861
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4856, metadata !683), !dbg !4862
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4863
  %5 = load i8*, i8** %4, align 8, !dbg !4863, !tbaa !948
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4864
  %7 = load i8*, i8** %6, align 8, !dbg !4864, !tbaa !944
  %8 = icmp eq i8* %5, %7, !dbg !4865
  br i1 %8, label %9, label %28, !dbg !4866

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4867
  %11 = load i8*, i8** %10, align 8, !dbg !4867, !tbaa !1014
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4869
  %13 = load i8*, i8** %12, align 8, !dbg !4869, !tbaa !4870
  %14 = icmp eq i8* %11, %13, !dbg !4871
  br i1 %14, label %15, label %28, !dbg !4872

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4873
  %17 = load i8*, i8** %16, align 8, !dbg !4873, !tbaa !4874
  %18 = icmp eq i8* %17, null, !dbg !4875
  br i1 %18, label %19, label %28, !dbg !4876

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4878
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4879
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4857, metadata !683), !dbg !4881
  %22 = icmp eq i64 %21, -1, !dbg !4882
  br i1 %22, label %30, label %23, !dbg !4884

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4885
  %25 = load i32, i32* %24, align 8, !dbg !4886, !tbaa !975
  %26 = and i32 %25, -17, !dbg !4886
  store i32 %26, i32* %24, align 8, !dbg !4886, !tbaa !975
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4887
  store i64 %21, i64* %27, align 8, !dbg !4888, !tbaa !4889
  br label %30, !dbg !4890

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4891
  br label %30, !dbg !4892

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4893
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4894 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4911, metadata !683), !dbg !4920
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4912, metadata !683), !dbg !4921
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4913, metadata !683), !dbg !4922
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4914, metadata !683), !dbg !4923
  %6 = bitcast i32* %5 to i8*, !dbg !4924
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4924
  %7 = icmp eq i32* %0, null, !dbg !4925
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4911, metadata !683), !dbg !4920
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4927
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4911, metadata !683), !dbg !4920
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4928
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4915, metadata !683), !dbg !4929
  %10 = icmp ugt i64 %9, -3, !dbg !4930
  %11 = icmp ne i64 %2, 0, !dbg !4931
  %12 = and i1 %11, %10, !dbg !4933
  br i1 %12, label %13, label %18, !dbg !4933

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4934
  br i1 %14, label %18, label %15, !dbg !4936

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4938, !tbaa !903
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4917, metadata !683), !dbg !4939
  %17 = zext i8 %16 to i32, !dbg !4940
  store i32 %17, i32* %8, align 4, !dbg !4941, !tbaa !780
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4942
  ret i64 %19, !dbg !4942
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 !dbg !4943 {
  tail call void @usage(i32 1) #10, !dbg !4944
  ret void, !dbg !4945
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #11 !dbg !4946 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4951, metadata !683), !dbg !4966
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4952, metadata !683), !dbg !4967
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4953, metadata !683), !dbg !4968
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4954, metadata !683), !dbg !4969
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4957, metadata !683), !dbg !4970
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4958, metadata !683), !dbg !4971
  %5 = tail call i64 @strlen(i8* %0) #13, !dbg !4972
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4956, metadata !683), !dbg !4973
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4955, metadata !683), !dbg !4974
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4958, metadata !683), !dbg !4971
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4957, metadata !683), !dbg !4970
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4955, metadata !683), !dbg !4974
  %6 = load i8*, i8** %1, align 8, !dbg !4975, !tbaa !691
  %7 = icmp eq i8* %6, null, !dbg !4977
  br i1 %7, label %39, label %8, !dbg !4977

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !4977

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #13, !dbg !4979
  %16 = icmp eq i32 %15, 0, !dbg !4979
  br i1 %16, label %17, label %31, !dbg !4981

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #13, !dbg !4983
  %19 = icmp eq i64 %18, %5, !dbg !4986
  br i1 %19, label %45, label %20, !dbg !4987

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !4988
  br i1 %21, label %31, label %22, !dbg !4990

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23, !dbg !4991

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3, !dbg !4994
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !4996
  %26 = mul i64 %14, %3, !dbg !4997
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !4998
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #13, !dbg !4999
  %29 = icmp eq i32 %28, 0, !dbg !4999
  br i1 %29, label %31, label %30, !dbg !5000

; <label>:30:                                     ; preds = %23, %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4958, metadata !683), !dbg !4971
  br label %31, !dbg !5002

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ]
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ]
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !4958, metadata !683), !dbg !4971
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !4957, metadata !683), !dbg !4970
  %34 = add i64 %14, 1, !dbg !5004
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !4955, metadata !683), !dbg !4974
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !4958, metadata !683), !dbg !4971
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !4957, metadata !683), !dbg !4970
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !4955, metadata !683), !dbg !4974
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !4975
  %36 = load i8*, i8** %35, align 8, !dbg !4975, !tbaa !691
  %37 = icmp eq i8* %36, null, !dbg !4977
  br i1 %37, label %38, label %10, !dbg !4977, !llvm.loop !5006

; <label>:38:                                     ; preds = %31
  br label %39, !dbg !5009

; <label>:39:                                     ; preds = %38, %4
  %40 = phi i64 [ -1, %4 ], [ %32, %38 ]
  %41 = phi i8 [ 0, %4 ], [ %33, %38 ]
  %42 = and i8 %41, 1, !dbg !5009
  %43 = icmp eq i8 %42, 0, !dbg !5009
  %44 = select i1 %43, i64 %40, i64 -2, !dbg !5011
  br label %46, !dbg !5011

; <label>:45:                                     ; preds = %17
  br label %46, !dbg !5012

; <label>:46:                                     ; preds = %45, %39
  %47 = phi i64 [ %44, %39 ], [ %14, %45 ]
  ret i64 %47, !dbg !5012
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 !dbg !5013 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5017, metadata !683), !dbg !5021
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5018, metadata !683), !dbg !5022
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5019, metadata !683), !dbg !5023
  %4 = icmp eq i64 %2, -1, !dbg !5024
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.128, i64 0, i64 0), !dbg !5025
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #10, !dbg !5026
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5020, metadata !683), !dbg !5027
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #10, !dbg !5028
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #10, !dbg !5029
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #10, !dbg !5030
  ret void, !dbg !5032
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5033 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !5037, metadata !683), !dbg !5042
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5038, metadata !683), !dbg !5043
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5039, metadata !683), !dbg !5044
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5041, metadata !683), !dbg !5045
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.129, i64 0, i64 0), i32 5) #10, !dbg !5046
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5046, !tbaa !691
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #10, !dbg !5047
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5040, metadata !683), !dbg !5049
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5041, metadata !683), !dbg !5045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5040, metadata !683), !dbg !5049
  %7 = load i8*, i8** %0, align 8, !dbg !5050, !tbaa !691
  %8 = icmp eq i8* %7, null, !dbg !5054
  br i1 %8, label %35, label %9, !dbg !5054

; <label>:9:                                      ; preds = %3
  br label %10, !dbg !5056

; <label>:10:                                     ; preds = %9, %28
  %11 = phi i8* [ %32, %28 ], [ %7, %9 ], !dbg !5058
  %12 = phi i8* [ %29, %28 ], [ null, %9 ]
  %13 = phi i64 [ %30, %28 ], [ 0, %9 ]
  %14 = icmp eq i64 %13, 0, !dbg !5056
  %15 = mul i64 %13, %2
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  br i1 %14, label %20, label %17, !dbg !5060

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #13, !dbg !5061
  %19 = icmp eq i32 %18, 0, !dbg !5061
  br i1 %19, label %24, label %20, !dbg !5063

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5058, !tbaa !691
  %22 = tail call i8* @quote(i8* nonnull %11) #10, !dbg !5058
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.130, i64 0, i64 0), i8* %22) #10, !dbg !5064
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5041, metadata !683), !dbg !5045
  br label %28, !dbg !5066

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5067, !tbaa !691
  %26 = tail call i8* @quote(i8* nonnull %11) #10, !dbg !5067
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.131, i64 0, i64 0), i8* %26) #10, !dbg !5069
  br label %28

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i8* [ %16, %20 ], [ %12, %24 ]
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5041, metadata !683), !dbg !5045
  %30 = add i64 %13, 1, !dbg !5071
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5040, metadata !683), !dbg !5049
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5041, metadata !683), !dbg !5045
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5040, metadata !683), !dbg !5049
  %31 = getelementptr inbounds i8*, i8** %0, i64 %30, !dbg !5050
  %32 = load i8*, i8** %31, align 8, !dbg !5050, !tbaa !691
  %33 = icmp eq i8* %32, null, !dbg !5054
  br i1 %33, label %34, label %10, !dbg !5054, !llvm.loop !5073

; <label>:34:                                     ; preds = %28
  br label %35, !dbg !5076

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5076, !tbaa !691
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !5077, metadata !683) #10, !dbg !5123
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, i64 0, metadata !5122, metadata !683) #10, !dbg !5125
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !5126
  %38 = load i8*, i8** %37, align 8, !dbg !5126, !tbaa !1014
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !5126
  %40 = load i8*, i8** %39, align 8, !dbg !5126, !tbaa !1015
  %41 = icmp ult i8* %38, %40, !dbg !5126
  br i1 %41, label %44, label %42, !dbg !5126, !prof !949

; <label>:42:                                     ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #10, !dbg !5127
  br label %46, !dbg !5127

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !5129
  store i8* %45, i8** %37, align 8, !dbg !5129, !tbaa !1014
  store i8 10, i8* %38, align 1, !dbg !5129, !tbaa !903
  br label %46, !dbg !5129

; <label>:46:                                     ; preds = %42, %44
  ret void, !dbg !5131
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 !dbg !5132 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5136, metadata !683), !dbg !5143
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5137, metadata !683), !dbg !5144
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !5138, metadata !683), !dbg !5145
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5139, metadata !683), !dbg !5146
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !5140, metadata !683), !dbg !5147
  tail call void @llvm.dbg.value(metadata void ()* %5, i64 0, metadata !5141, metadata !683), !dbg !5148
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #13, !dbg !5149
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5142, metadata !683), !dbg !5150
  %8 = icmp sgt i64 %7, -1, !dbg !5151
  br i1 %8, label %15, label %9, !dbg !5153

; <label>:9:                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5017, metadata !683) #10, !dbg !5154
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5018, metadata !683) #10, !dbg !5156
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5019, metadata !683) #10, !dbg !5157
  %10 = icmp eq i64 %7, -1, !dbg !5158
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.128, i64 0, i64 0), !dbg !5159
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #10, !dbg !5160
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !5020, metadata !683) #10, !dbg !5161
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #10, !dbg !5162
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #10, !dbg !5163
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #10, !dbg !5164
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4), !dbg !5165
  tail call void %5() #10, !dbg !5166
  br label %15, !dbg !5167

; <label>:15:                                     ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ]
  ret i64 %16, !dbg !5168
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #11 !dbg !5169 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5173, metadata !683), !dbg !5178
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !5174, metadata !683), !dbg !5179
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5175, metadata !683), !dbg !5180
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5176, metadata !683), !dbg !5181
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5177, metadata !683), !dbg !5182
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5177, metadata !683), !dbg !5182
  %5 = load i8*, i8** %1, align 8, !dbg !5183, !tbaa !691
  %6 = icmp eq i8* %5, null, !dbg !5187
  br i1 %6, label %22, label %7, !dbg !5187

; <label>:7:                                      ; preds = %4
  br label %12, !dbg !5189

; <label>:8:                                      ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !5177, metadata !683), !dbg !5182
  %9 = getelementptr inbounds i8*, i8** %1, i64 %19, !dbg !5183
  %10 = load i8*, i8** %9, align 8, !dbg !5183, !tbaa !691
  %11 = icmp eq i8* %10, null, !dbg !5187
  br i1 %11, label %20, label %12, !dbg !5187, !llvm.loop !5191

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i8* [ %10, %8 ], [ %5, %7 ]
  %14 = phi i64 [ %19, %8 ], [ 0, %7 ]
  %15 = mul i64 %14, %3, !dbg !5189
  %16 = getelementptr inbounds i8, i8* %2, i64 %15, !dbg !5194
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #13, !dbg !5195
  %18 = icmp eq i32 %17, 0, !dbg !5195
  %19 = add i64 %14, 1, !dbg !5196
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !5177, metadata !683), !dbg !5182
  br i1 %18, label %20, label %8, !dbg !5198

; <label>:20:                                     ; preds = %8, %12
  %21 = phi i8* [ null, %8 ], [ %13, %12 ]
  br label %22, !dbg !5199

; <label>:22:                                     ; preds = %20, %4
  %23 = phi i8* [ null, %4 ], [ %21, %20 ]
  ret i8* %23, !dbg !5199
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5200 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5245, metadata !683), !dbg !5250
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5251
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5252, metadata !683), !dbg !5255
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5257
  %4 = load i32, i32* %3, align 8, !dbg !5257, !tbaa !975
  %5 = and i32 %4, 32, !dbg !5257
  %6 = icmp eq i32 %5, 0, !dbg !5258
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5259
  %8 = icmp ne i32 %7, 0, !dbg !5260
  br i1 %6, label %9, label %19, !dbg !5261

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5263
  %11 = icmp ne i64 %2, 0, !dbg !5263
  %12 = or i1 %11, %10, !dbg !5263
  %13 = sext i1 %8 to i32, !dbg !5263
  br i1 %12, label %22, label %14, !dbg !5263

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5265
  %16 = load i32, i32* %15, align 4, !dbg !5265, !tbaa !780
  %17 = icmp ne i32 %16, 9, !dbg !5267
  %18 = sext i1 %17 to i32, !dbg !5267
  br label %22, !dbg !5267

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5269

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5271
  store i32 0, i32* %21, align 4, !dbg !5273, !tbaa !780
  br label %22, !dbg !5271

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5274
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5275 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5280, metadata !683), !dbg !5300
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5281, metadata !683), !dbg !5301
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5302
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5282, metadata !683), !dbg !5303
  %3 = icmp eq i8* %2, null, !dbg !5304
  br i1 %3, label %15, label %4, !dbg !5305

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5290, metadata !683), !dbg !5306
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5291, metadata !683), !dbg !5307
  %5 = load i8, i8* %2, align 1, !dbg !5308, !tbaa !903
  %6 = icmp eq i8 %5, 67, !dbg !5310
  br i1 %6, label %7, label %11, !dbg !5313

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5315
  %9 = load i8, i8* %8, align 1, !dbg !5315, !tbaa !903
  %10 = icmp eq i8 %9, 0, !dbg !5318
  br i1 %10, label %14, label %11, !dbg !5320

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5296, metadata !683), !dbg !5322
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0)) #10, !dbg !5323
  %13 = icmp eq i32 %12, 0, !dbg !5325
  br i1 %13, label %14, label %15, !dbg !5327

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5281, metadata !683), !dbg !5301
  br label %15, !dbg !5329

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5330
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5331 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5342, metadata !683), !dbg !5416
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5409, metadata !683), !dbg !5418
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5419
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5334, metadata !683), !dbg !5420
  %4 = icmp eq i8* %3, null, !dbg !5421
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %3, !dbg !5423
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5334, metadata !683), !dbg !5420
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5424, !tbaa !691
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5356, metadata !683) #10, !dbg !5425
  %7 = icmp eq i8* %6, null, !dbg !5426
  br i1 %7, label %8, label %127, !dbg !5427

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.140, i64 0, i64 0)) #10, !dbg !5428
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5357, metadata !683) #10, !dbg !5429
  %10 = icmp eq i8* %9, null, !dbg !5430
  br i1 %10, label %14, label %11, !dbg !5432

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5433, !tbaa !903
  %13 = icmp eq i8 %12, 0, !dbg !5435
  br i1 %13, label %14, label %15, !dbg !5436

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5438

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.141, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5357, metadata !683) #10, !dbg !5429
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5439
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5360, metadata !683) #10, !dbg !5440
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5362, metadata !683) #10, !dbg !5441
  %18 = icmp eq i64 %17, 0, !dbg !5442
  br i1 %18, label %24, label %19, !dbg !5443

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5444
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5444
  %22 = load i8, i8* %21, align 1, !dbg !5444, !tbaa !903
  %23 = icmp ne i8 %22, 47, !dbg !5446
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5447
  %27 = add i64 %17, 14, !dbg !5448
  %28 = add i64 %27, %26, !dbg !5449
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5450
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5359, metadata !683) #10, !dbg !5451
  %30 = icmp eq i8* %29, null, !dbg !5452
  br i1 %30, label %125, label %31, !dbg !5452

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5453
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5456

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5457, !tbaa !903
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5459
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5460
  br label %37, !dbg !5461

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5459
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5460
  br label %37, !dbg !5461

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5462
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5364, metadata !683) #10, !dbg !5463
  %39 = icmp slt i32 %38, 0, !dbg !5464
  br i1 %39, label %123, label %40, !dbg !5465

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.143, i64 0, i64 0)) #10, !dbg !5466
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5365, metadata !683) #10, !dbg !5467
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5468
  br i1 %42, label %48, label %43, !dbg !5469

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5470

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !5471
  br label %123, !dbg !5473

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5406, metadata !683) #10, !dbg !5470
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5407, metadata !683) #10, !dbg !5474
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !5475
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !5476
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5477, metadata !683) #10, !dbg !5482
  %53 = load i8*, i8** %46, align 8, !dbg !5484, !tbaa !944
  %54 = load i8*, i8** %47, align 8, !dbg !5484, !tbaa !948
  %55 = icmp ult i8* %53, %54, !dbg !5484
  br i1 %55, label %58, label %56, !dbg !5484, !prof !949

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5485
  br label %62, !dbg !5485

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5487
  store i8* %59, i8** %46, align 8, !dbg !5487, !tbaa !944
  %60 = load i8, i8* %53, align 1, !dbg !5487, !tbaa !903
  %61 = zext i8 %60 to i32, !dbg !5487
  br label %62, !dbg !5487

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5489
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5408, metadata !683) #10, !dbg !5491
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5492

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5493

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5477, metadata !683) #10, !dbg !5493
  %66 = load i8*, i8** %46, align 8, !dbg !5497, !tbaa !944
  %67 = load i8*, i8** %47, align 8, !dbg !5497, !tbaa !948
  %68 = icmp ult i8* %66, %67, !dbg !5497
  br i1 %68, label %71, label %69, !dbg !5497, !prof !949

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5498
  br label %75, !dbg !5498

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5499
  store i8* %72, i8** %46, align 8, !dbg !5499, !tbaa !944
  %73 = load i8, i8* %66, align 1, !dbg !5499, !tbaa !903
  %74 = zext i8 %73 to i32, !dbg !5499
  br label %75, !dbg !5499

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5500
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5408, metadata !683) #10, !dbg !5491
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5501, !llvm.loop !5503

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !5506
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.144, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !5507
  %80 = icmp slt i32 %79, 2, !dbg !5509
  br i1 %80, label %115, label %81, !dbg !5510

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5511
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5413, metadata !683) #10, !dbg !5512
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5513
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5414, metadata !683) #10, !dbg !5514
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5415, metadata !683) #10, !dbg !5515
  %84 = icmp eq i64 %51, 0, !dbg !5516
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5518

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5407, metadata !683) #10, !dbg !5474
  %89 = add i64 %86, 2, !dbg !5519
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !5521
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5406, metadata !683) #10, !dbg !5470
  br label %95, !dbg !5522

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5523
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5407, metadata !683) #10, !dbg !5474
  %93 = add i64 %92, 1, !dbg !5525
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !5526
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5406, metadata !683) #10, !dbg !5470
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5406, metadata !683) #10, !dbg !5470
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5407, metadata !683) #10, !dbg !5474
  %98 = icmp eq i8* %97, null, !dbg !5527
  br i1 %98, label %99, label %100, !dbg !5529

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5407, metadata !683) #10, !dbg !5474
  call void @free(i8* %52) #10, !dbg !5530
  br label %116, !dbg !5532

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5533
  %102 = xor i64 %83, -1, !dbg !5534
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5534
  %104 = xor i64 %82, -1, !dbg !5535
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5535
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5536, metadata !683) #10, !dbg !5544
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5543, metadata !683) #10, !dbg !5544
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !5546
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !5547
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5536, metadata !683) #10, !dbg !5548
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5543, metadata !683) #10, !dbg !5548
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !5550
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !5551
  br label %111, !dbg !5552

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5470

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5406, metadata !683) #10, !dbg !5470
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5407, metadata !683) #10, !dbg !5474
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5552
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5552
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5470

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5470

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5406, metadata !683) #10, !dbg !5470
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5407, metadata !683) #10, !dbg !5474
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5552
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5552
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5553
  %120 = icmp eq i64 %117, 0, !dbg !5554
  br i1 %120, label %123, label %121, !dbg !5556

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5557
  store i8 0, i8* %122, align 1, !dbg !5559, !tbaa !903
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5356, metadata !683) #10, !dbg !5425
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5356, metadata !683) #10, !dbg !5425
  call void @free(i8* %29) #10, !dbg !5560
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5356, metadata !683) #10, !dbg !5425
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5561, !tbaa !691
  br label %127, !dbg !5562

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5335, metadata !683), !dbg !5563
  %129 = load i8, i8* %128, align 1, !dbg !5564, !tbaa !903
  %130 = icmp eq i8 %129, 0, !dbg !5565
  br i1 %130, label %157, label %131, !dbg !5566

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5568

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !5568
  %136 = icmp eq i32 %135, 0, !dbg !5569
  br i1 %136, label %143, label %137, !dbg !5570

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5571
  br i1 %138, label %139, label %147, !dbg !5573

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5574
  %141 = load i8, i8* %140, align 1, !dbg !5574, !tbaa !903
  %142 = icmp eq i8 %141, 0, !dbg !5576
  br i1 %142, label %143, label %147, !dbg !5577

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5579
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5581
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5582
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5334, metadata !683), !dbg !5420
  br label %157, !dbg !5583

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5584
  %149 = add i64 %148, 1, !dbg !5585
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5586
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5335, metadata !683), !dbg !5563
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5587
  %152 = add i64 %151, 1, !dbg !5588
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5589
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5335, metadata !683), !dbg !5563
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5335, metadata !683), !dbg !5563
  %154 = load i8, i8* %153, align 1, !dbg !5564, !tbaa !903
  %155 = icmp eq i8 %154, 0, !dbg !5565
  br i1 %155, label %156, label %132, !dbg !5566, !llvm.loop !5590

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5420

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5334, metadata !683), !dbg !5420
  %159 = load i8, i8* %158, align 1, !dbg !5593, !tbaa !903
  %160 = icmp eq i8 %159, 0, !dbg !5595
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i8* %158, !dbg !5596
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5334, metadata !683), !dbg !5420
  ret i8* %161, !dbg !5597
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

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
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !105, !111, !119, !600, !126, !157, !164, !603, !626, !233, !634, !651, !653, !657, !659, !661, !663, !665, !242, !668, !670, !255}
!llvm.ident = !{!673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673, !673}
!llvm.module.flags = !{!674, !675, !676, !677}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 44, type: !91, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !41, globals: !56)
!3 = !DIFile(filename: "src/sum.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 43, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/human.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!31 = !DIEnumerator(name: "human_ceiling", value: 0)
!32 = !DIEnumerator(name: "human_round_to_nearest", value: 1)
!33 = !DIEnumerator(name: "human_floor", value: 2)
!34 = !DIEnumerator(name: "human_group_digits", value: 4)
!35 = !DIEnumerator(name: "human_suppress_point_zero", value: 8)
!36 = !DIEnumerator(name: "human_autoscale", value: 16)
!37 = !DIEnumerator(name: "human_base_1024", value: 32)
!38 = !DIEnumerator(name: "human_space_before_unit", value: 64)
!39 = !DIEnumerator(name: "human_SI", value: 128)
!40 = !DIEnumerator(name: "human_B", value: 256)
!41 = !{!42, !44, !45, !48, !50, !53, !55, !52}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 62, baseType: !47)
!46 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!47 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!56 = !{!57, !60, !0}
!57 = !DIGlobalVariableExpression(var: !58)
!58 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 42, type: !59, isLocal: true, isDefinition: true)
!59 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "infomap", scope: !62, file: !63, line: 632, type: !88, isLocal: true, isDefinition: true)
!62 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !63, file: !63, line: 630, type: !64, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !66)
!63 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!64 = !DISubroutineType(types: !65)
!65 = !{null, !53}
!66 = !{!67, !68, !69, !76, !78, !79, !80, !83, !84, !86}
!67 = !DILocalVariable(name: "program", arg: 1, scope: !62, file: !63, line: 630, type: !53)
!68 = !DILocalVariable(name: "node", scope: !62, file: !63, line: 642, type: !53)
!69 = !DILocalVariable(name: "map_prog", scope: !62, file: !63, line: 643, type: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !62, file: !63, line: 632, size: 128, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !72, file: !63, line: 632, baseType: !53, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !72, file: !63, line: 632, baseType: !53, size: 64, offset: 64)
!76 = !DILocalVariable(name: "__s1_len", scope: !77, file: !63, line: 645, type: !45)
!77 = distinct !DILexicalBlock(scope: !62, file: !63, line: 645, column: 33)
!78 = !DILocalVariable(name: "__s2_len", scope: !77, file: !63, line: 645, type: !45)
!79 = !DILocalVariable(name: "lc_messages", scope: !62, file: !63, line: 655, type: !53)
!80 = !DILocalVariable(name: "__s1_len", scope: !81, file: !63, line: 656, type: !45)
!81 = distinct !DILexicalBlock(scope: !82, file: !63, line: 656, column: 22)
!82 = distinct !DILexicalBlock(scope: !62, file: !63, line: 656, column: 7)
!83 = !DILocalVariable(name: "__s2_len", scope: !81, file: !63, line: 656, type: !45)
!84 = !DILocalVariable(name: "__s2", scope: !85, file: !63, line: 656, type: !50)
!85 = distinct !DILexicalBlock(scope: !81, file: !63, line: 656, column: 22)
!86 = !DILocalVariable(name: "__result", scope: !85, file: !63, line: 656, type: !87)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 896, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 7)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 1024, elements: !101)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !94, line: 104, size: 256, elements: !95)
!94 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{!96, !97, !98, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !94, line: 106, baseType: !53, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !93, file: !94, line: 109, baseType: !87, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !93, file: !94, line: 110, baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !93, file: !94, line: 111, baseType: !87, size: 32, offset: 192)
!101 = !{!102}
!102 = !DISubrange(count: 4)
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "Version", scope: !105, file: !106, line: 2, type: !53, isLocal: false, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, globals: !108)
!106 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !{}
!108 = !{!103}
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "file_name", scope: !111, file: !116, line: 36, type: !53, isLocal: true, isDefinition: true)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, globals: !113)
!112 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !{!109, !114}
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !111, file: !116, line: 46, type: !59, isLocal: true, isDefinition: true)
!116 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "exit_failure", scope: !119, file: !122, line: 24, type: !123, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, globals: !121)
!120 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!117}
!122 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!124 = !DIGlobalVariableExpression(var: !125)
!125 = distinct !DIGlobalVariable(name: "power_letter", scope: !126, file: !141, line: 36, type: !152, isLocal: true, isDefinition: true)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !128, retainedTypes: !137, globals: !138)
!127 = !DIFile(filename: "./lib/human.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !{!28, !129}
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !130, line: 26, size: 32, elements: !131)
!130 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!132, !133, !134, !135, !136}
!132 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!133 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!134 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!135 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!136 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!137 = !{!53}
!138 = !{!124, !139, !146}
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "block_size_args", scope: !126, file: !141, line: 398, type: !142, isLocal: true, isDefinition: true)
!141 = !DIFile(filename: "lib/human.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 192, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!144 = !{!145}
!145 = !DISubrange(count: 3)
!146 = !DIGlobalVariableExpression(var: !147)
!147 = distinct !DIGlobalVariable(name: "block_size_opts", scope: !126, file: !141, line: 399, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !150)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!150 = !{!151}
!151 = !DISubrange(count: 2)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 72, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 9)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "program_name", scope: !157, file: !161, line: 33, type: !53, isLocal: false, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !159, globals: !160)
!158 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!159 = !{!44, !42}
!160 = !{!155}
!161 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !164, file: !192, line: 77, type: !228, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !187, globals: !189)
!165 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!166 = !{!5, !167, !172}
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !168)
!168 = !{!169, !170, !171}
!169 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!170 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!171 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !173, line: 46, size: 32, elements: !174)
!173 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!175 = !DIEnumerator(name: "_ISupper", value: 256)
!176 = !DIEnumerator(name: "_ISlower", value: 512)
!177 = !DIEnumerator(name: "_ISalpha", value: 1024)
!178 = !DIEnumerator(name: "_ISdigit", value: 2048)
!179 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!180 = !DIEnumerator(name: "_ISspace", value: 8192)
!181 = !DIEnumerator(name: "_ISprint", value: 16384)
!182 = !DIEnumerator(name: "_ISgraph", value: 32768)
!183 = !DIEnumerator(name: "_ISblank", value: 1)
!184 = !DIEnumerator(name: "_IScntrl", value: 2)
!185 = !DIEnumerator(name: "_ISpunct", value: 4)
!186 = !DIEnumerator(name: "_ISalnum", value: 8)
!187 = !{!87, !188, !45, !42}
!188 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!189 = !{!162, !190, !197, !210, !212, !217, !224, !226}
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !164, file: !192, line: 93, type: !193, isLocal: false, isDefinition: true)
!192 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 320, elements: !195)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!195 = !{!196}
!196 = !DISubrange(count: 10)
!197 = !DIGlobalVariableExpression(var: !198)
!198 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !164, file: !192, line: 1043, type: !199, isLocal: false, isDefinition: true)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !192, line: 57, size: 448, elements: !200)
!200 = !{!201, !202, !203, !208, !209}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !199, file: !192, line: 60, baseType: !5, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !192, line: 63, baseType: !87, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !199, file: !192, line: 67, baseType: !204, size: 256, offset: 64)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !206)
!205 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!206 = !{!207}
!207 = !DISubrange(count: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !199, file: !192, line: 70, baseType: !53, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !199, file: !192, line: 73, baseType: !53, size: 64, offset: 384)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !164, file: !192, line: 108, type: !199, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "slot0", scope: !164, file: !192, line: 834, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 256)
!217 = !DIGlobalVariableExpression(var: !218)
!218 = distinct !DIGlobalVariable(name: "slotvec", scope: !164, file: !192, line: 837, type: !219, isLocal: true, isDefinition: true)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !192, line: 826, size: 128, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !220, file: !192, line: 828, baseType: !45, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !220, file: !192, line: 829, baseType: !42, size: 64, offset: 64)
!224 = !DIGlobalVariableExpression(var: !225)
!225 = distinct !DIGlobalVariable(name: "nslots", scope: !164, file: !192, line: 835, type: !87, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227)
!227 = distinct !DIGlobalVariable(name: "slotvec0", scope: !164, file: !192, line: 836, type: !220, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 704, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 11)
!231 = !DIGlobalVariableExpression(var: !232)
!232 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !233, file: !236, line: 26, type: !237, isLocal: false, isDefinition: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, globals: !235)
!234 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!235 = !{!231}
!236 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 376, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 47)
!240 = !DIGlobalVariableExpression(var: !241)
!241 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !242, file: !247, line: 69, type: !248, isLocal: false, isDefinition: true)
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !244, retainedTypes: !245, globals: !246)
!243 = !DIFile(filename: "./lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!244 = !{!5}
!245 = !{!45, !44, !52}
!246 = !{!240}
!247 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !249, line: 55, baseType: !250)
!249 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null}
!253 = !DIGlobalVariableExpression(var: !254)
!254 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !255, file: !598, line: 120, type: !599, isLocal: true, isDefinition: true)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !257, retainedTypes: !596, globals: !597)
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
!596 = !{!44, !42, !55}
!597 = !{!253}
!598 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !602)
!601 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = !{!19}
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !605)
!604 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = !{!606}
!606 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !608, file: !607, line: 62, size: 32, elements: !624)
!607 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = distinct !DISubprogram(name: "safe_read", scope: !607, file: !607, line: 56, type: !609, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{!45, !87, !44, !45}
!611 = !{!612, !613, !614, !615}
!612 = !DILocalVariable(name: "fd", arg: 1, scope: !608, file: !607, line: 56, type: !87)
!613 = !DILocalVariable(name: "buf", arg: 2, scope: !608, file: !607, line: 56, type: !44)
!614 = !DILocalVariable(name: "count", arg: 3, scope: !608, file: !607, line: 56, type: !45)
!615 = !DILocalVariable(name: "result", scope: !616, file: !607, line: 66, type: !619)
!616 = distinct !DILexicalBlock(scope: !617, file: !607, line: 65, column: 5)
!617 = distinct !DILexicalBlock(scope: !618, file: !607, line: 64, column: 3)
!618 = distinct !DILexicalBlock(scope: !608, file: !607, line: 64, column: 3)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !620, line: 109, baseType: !621)
!620 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !622, line: 181, baseType: !623)
!622 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!623 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!624 = !{!625}
!625 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !628, retainedTypes: !633)
!627 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = !{!629}
!629 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !630, line: 41, size: 32, elements: !631)
!630 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!631 = !{!632}
!632 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!633 = !{!44}
!634 = distinct !DICompileUnit(language: DW_LANG_C99, file: !635, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !636, retainedTypes: !650)
!635 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!636 = !{!637}
!637 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !639, file: !638, line: 192, size: 32, elements: !648)
!638 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = distinct !DISubprogram(name: "x2nrealloc", scope: !638, file: !638, line: 180, type: !640, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !643)
!640 = !DISubroutineType(types: !641)
!641 = !{!44, !44, !642, !45}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!643 = !{!644, !645, !646, !647}
!644 = !DILocalVariable(name: "p", arg: 1, scope: !639, file: !638, line: 180, type: !44)
!645 = !DILocalVariable(name: "pn", arg: 2, scope: !639, file: !638, line: 180, type: !642)
!646 = !DILocalVariable(name: "s", arg: 3, scope: !639, file: !638, line: 180, type: !45)
!647 = !DILocalVariable(name: "n", scope: !639, file: !638, line: 182, type: !45)
!648 = !{!649}
!649 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!650 = !{!45, !42, !44}
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!652 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !655, retainedTypes: !656)
!654 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!655 = !{!129, !172}
!656 = !{!87, !188, !42}
!657 = distinct !DICompileUnit(language: DW_LANG_C99, file: !658, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !633)
!658 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!659 = distinct !DICompileUnit(language: DW_LANG_C99, file: !660, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!660 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !633)
!662 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !633)
!664 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!665 = distinct !DICompileUnit(language: DW_LANG_C99, file: !666, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !667)
!666 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!667 = !{!45}
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107)
!669 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !672)
!671 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = !{!45, !48, !50, !53}
!673 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!674 = !{i32 2, !"Dwarf Version", i32 4}
!675 = !{i32 2, !"Debug Info Version", i32 3}
!676 = !{i32 1, !"PIC Level", i32 2}
!677 = !{i32 1, !"PIE Level", i32 2}
!678 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !679, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !87}
!681 = !{!682}
!682 = !DILocalVariable(name: "status", arg: 1, scope: !678, file: !3, line: 53, type: !87)
!683 = !DIExpression()
!684 = !DILocation(line: 53, column: 12, scope: !678)
!685 = !DILocation(line: 55, column: 14, scope: !686)
!686 = distinct !DILexicalBlock(scope: !678, file: !3, line: 55, column: 7)
!687 = !DILocation(line: 55, column: 7, scope: !678)
!688 = !DILocation(line: 56, column: 5, scope: !689)
!689 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 1)
!690 = distinct !DILexicalBlock(scope: !686, file: !3, line: 56, column: 5)
!691 = !{!692, !692, i64 0}
!692 = !{!"any pointer", !693, i64 0}
!693 = !{!"omnipotent char", !694, i64 0}
!694 = !{!"Simple C/C++ TBAA"}
!695 = !DILocation(line: 56, column: 5, scope: !696)
!696 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 3)
!697 = !DILocation(line: 56, column: 5, scope: !698)
!698 = !DILexicalBlockFile(scope: !690, file: !3, discriminator: 2)
!699 = !DILocation(line: 59, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !686, file: !3, line: 58, column: 5)
!701 = !DILocation(line: 59, column: 7, scope: !702)
!702 = !DILexicalBlockFile(scope: !700, file: !3, discriminator: 1)
!703 = !DILocation(line: 63, column: 7, scope: !700)
!704 = !DILocation(line: 63, column: 7, scope: !702)
!705 = !DILocation(line: 580, column: 3, scope: !706, inlinedAt: !707)
!706 = distinct !DISubprogram(name: "emit_stdin_note", scope: !63, file: !63, line: 578, type: !251, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !107)
!707 = distinct !DILocation(line: 67, column: 7, scope: !700)
!708 = !DILocation(line: 580, column: 3, scope: !709, inlinedAt: !707)
!709 = !DILexicalBlockFile(scope: !706, file: !63, discriminator: 1)
!710 = !DILocation(line: 69, column: 7, scope: !700)
!711 = !DILocation(line: 69, column: 7, scope: !702)
!712 = !DILocation(line: 74, column: 7, scope: !700)
!713 = !DILocation(line: 74, column: 7, scope: !702)
!714 = !DILocation(line: 75, column: 7, scope: !700)
!715 = !DILocation(line: 75, column: 7, scope: !702)
!716 = !DILocation(line: 642, column: 15, scope: !62, inlinedAt: !717)
!717 = distinct !DILocation(line: 76, column: 7, scope: !700)
!718 = !DILocation(line: 651, column: 3, scope: !62, inlinedAt: !717)
!719 = !DILocation(line: 651, column: 3, scope: !720, inlinedAt: !717)
!720 = !DILexicalBlockFile(scope: !62, file: !63, discriminator: 1)
!721 = !DILocation(line: 655, column: 29, scope: !62, inlinedAt: !717)
!722 = !DILocation(line: 655, column: 15, scope: !62, inlinedAt: !717)
!723 = !DILocation(line: 656, column: 7, scope: !82, inlinedAt: !717)
!724 = !DILocation(line: 656, column: 19, scope: !82, inlinedAt: !717)
!725 = !DILocation(line: 656, column: 22, scope: !726, inlinedAt: !717)
!726 = !DILexicalBlockFile(scope: !82, file: !63, discriminator: 16)
!727 = !DILocation(line: 656, column: 7, scope: !728, inlinedAt: !717)
!728 = !DILexicalBlockFile(scope: !62, file: !63, discriminator: 16)
!729 = !DILocation(line: 662, column: 7, scope: !730, inlinedAt: !717)
!730 = distinct !DILexicalBlock(scope: !82, file: !63, line: 657, column: 5)
!731 = !DILocation(line: 662, column: 7, scope: !732, inlinedAt: !717)
!732 = !DILexicalBlockFile(scope: !730, file: !63, discriminator: 1)
!733 = !DILocation(line: 664, column: 5, scope: !730, inlinedAt: !717)
!734 = !DILocation(line: 665, column: 3, scope: !62, inlinedAt: !717)
!735 = !DILocation(line: 665, column: 3, scope: !720, inlinedAt: !717)
!736 = !DILocation(line: 667, column: 3, scope: !62, inlinedAt: !717)
!737 = !DILocation(line: 667, column: 3, scope: !720, inlinedAt: !717)
!738 = !DILocation(line: 78, column: 3, scope: !678)
!739 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 222, type: !740, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !743)
!740 = !DISubroutineType(types: !741)
!741 = !{!87, !87, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!743 = !{!744, !745, !746, !747, !748, !749}
!744 = !DILocalVariable(name: "argc", arg: 1, scope: !739, file: !3, line: 222, type: !87)
!745 = !DILocalVariable(name: "argv", arg: 2, scope: !739, file: !3, line: 222, type: !742)
!746 = !DILocalVariable(name: "ok", scope: !739, file: !3, line: 224, type: !59)
!747 = !DILocalVariable(name: "optc", scope: !739, file: !3, line: 225, type: !87)
!748 = !DILocalVariable(name: "files_given", scope: !739, file: !3, line: 226, type: !87)
!749 = !DILocalVariable(name: "sum_func", scope: !739, file: !3, line: 227, type: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!59, !53, !87}
!753 = !DILocation(line: 222, column: 11, scope: !739)
!754 = !DILocation(line: 222, column: 24, scope: !739)
!755 = !DILocation(line: 227, column: 10, scope: !739)
!756 = !DILocation(line: 230, column: 21, scope: !739)
!757 = !DILocation(line: 230, column: 3, scope: !739)
!758 = !DILocation(line: 231, column: 3, scope: !739)
!759 = !DILocation(line: 232, column: 3, scope: !739)
!760 = !DILocation(line: 233, column: 3, scope: !739)
!761 = !DILocation(line: 235, column: 3, scope: !739)
!762 = !DILocation(line: 239, column: 12, scope: !739)
!763 = !DILocation(line: 239, column: 3, scope: !739)
!764 = !DILocation(line: 243, column: 3, scope: !739)
!765 = !DILocation(line: 243, column: 18, scope: !766)
!766 = !DILexicalBlockFile(scope: !739, file: !3, discriminator: 1)
!767 = !DILocation(line: 225, column: 7, scope: !739)
!768 = !DILocation(line: 243, column: 3, scope: !766)
!769 = !DILocation(line: 253, column: 11, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 246, column: 9)
!771 = distinct !DILexicalBlock(scope: !739, file: !3, line: 244, column: 5)
!772 = distinct !{!772, !764, !773}
!773 = !DILocation(line: 262, column: 5, scope: !739)
!774 = !DILocation(line: 255, column: 9, scope: !770)
!775 = !DILocation(line: 257, column: 9, scope: !770)
!776 = !DILocation(line: 257, column: 9, scope: !777)
!777 = !DILexicalBlockFile(scope: !770, file: !3, discriminator: 1)
!778 = !DILocation(line: 260, column: 11, scope: !770)
!779 = !DILocation(line: 264, column: 24, scope: !739)
!780 = !{!781, !781, i64 0}
!781 = !{!"int", !693, i64 0}
!782 = !DILocation(line: 264, column: 22, scope: !739)
!783 = !DILocation(line: 226, column: 7, scope: !739)
!784 = !DILocation(line: 265, column: 19, scope: !785)
!785 = distinct !DILexicalBlock(scope: !739, file: !3, line: 265, column: 7)
!786 = !DILocation(line: 265, column: 7, scope: !739)
!787 = !DILocation(line: 224, column: 8, scope: !739)
!788 = !DILocation(line: 268, column: 28, scope: !789)
!789 = !DILexicalBlockFile(scope: !790, file: !3, discriminator: 1)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 268, column: 5)
!791 = distinct !DILexicalBlock(scope: !785, file: !3, line: 268, column: 5)
!792 = !DILocation(line: 268, column: 5, scope: !793)
!793 = !DILexicalBlockFile(scope: !791, file: !3, discriminator: 1)
!794 = !DILocation(line: 269, column: 23, scope: !790)
!795 = !DILocation(line: 266, column: 10, scope: !785)
!796 = !DILocation(line: 266, column: 8, scope: !785)
!797 = !DILocation(line: 266, column: 5, scope: !785)
!798 = !DILocation(line: 269, column: 13, scope: !790)
!799 = !DILocation(line: 269, column: 10, scope: !790)
!800 = !DILocation(line: 268, column: 42, scope: !801)
!801 = !DILexicalBlockFile(scope: !790, file: !3, discriminator: 2)
!802 = distinct !{!802, !803, !804}
!803 = !DILocation(line: 268, column: 5, scope: !791)
!804 = !DILocation(line: 269, column: 48, scope: !791)
!805 = !DILocation(line: 271, column: 23, scope: !806)
!806 = distinct !DILexicalBlock(scope: !739, file: !3, line: 271, column: 7)
!807 = !DILocation(line: 271, column: 34, scope: !808)
!808 = !DILexicalBlockFile(scope: !806, file: !3, discriminator: 1)
!809 = !DILocation(line: 271, column: 26, scope: !808)
!810 = !DILocation(line: 271, column: 41, scope: !808)
!811 = !DILocation(line: 271, column: 7, scope: !766)
!812 = !DILocation(line: 272, column: 5, scope: !806)
!813 = !DILocation(line: 272, column: 5, scope: !808)
!814 = !DILocation(line: 272, column: 5, scope: !815)
!815 = !DILexicalBlockFile(scope: !806, file: !3, discriminator: 2)
!816 = !DILocation(line: 273, column: 10, scope: !739)
!817 = !DILocation(line: 274, column: 1, scope: !739)
!818 = distinct !DISubprogram(name: "bsd_sum_file", scope: !3, file: !3, line: 88, type: !751, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !819)
!819 = !{!820, !821, !822, !876, !877, !881, !882, !886, !887, !889, !890, !892}
!820 = !DILocalVariable(name: "file", arg: 1, scope: !818, file: !3, line: 88, type: !53)
!821 = !DILocalVariable(name: "print_name", arg: 2, scope: !818, file: !3, line: 88, type: !87)
!822 = !DILocalVariable(name: "fp", scope: !818, file: !3, line: 90, type: !823)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !825, line: 49, baseType: !826)
!825 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !827, line: 241, size: 1728, elements: !828)
!827 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!828 = !{!829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !849, !850, !851, !852, !854, !855, !857, !861, !864, !866, !867, !868, !869, !870, !871, !872}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !826, file: !827, line: 242, baseType: !87, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !826, file: !827, line: 247, baseType: !42, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !826, file: !827, line: 248, baseType: !42, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !826, file: !827, line: 249, baseType: !42, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !826, file: !827, line: 250, baseType: !42, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !826, file: !827, line: 251, baseType: !42, size: 64, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !826, file: !827, line: 252, baseType: !42, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !826, file: !827, line: 253, baseType: !42, size: 64, offset: 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !826, file: !827, line: 254, baseType: !42, size: 64, offset: 512)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !826, file: !827, line: 256, baseType: !42, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !826, file: !827, line: 257, baseType: !42, size: 64, offset: 640)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !826, file: !827, line: 258, baseType: !42, size: 64, offset: 704)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !826, file: !827, line: 260, baseType: !842, size: 64, offset: 768)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !827, line: 156, size: 192, elements: !844)
!844 = !{!845, !846, !848}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !843, file: !827, line: 157, baseType: !842, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !843, file: !827, line: 158, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !843, file: !827, line: 162, baseType: !87, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !826, file: !827, line: 262, baseType: !847, size: 64, offset: 832)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !826, file: !827, line: 264, baseType: !87, size: 32, offset: 896)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !826, file: !827, line: 268, baseType: !87, size: 32, offset: 928)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !826, file: !827, line: 270, baseType: !853, size: 64, offset: 960)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !622, line: 140, baseType: !623)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !826, file: !827, line: 274, baseType: !188, size: 16, offset: 1024)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !826, file: !827, line: 275, baseType: !856, size: 8, offset: 1040)
!856 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !826, file: !827, line: 276, baseType: !858, size: 8, offset: 1048)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 1)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !826, file: !827, line: 280, baseType: !862, size: 64, offset: 1088)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !827, line: 150, baseType: null)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !826, file: !827, line: 289, baseType: !865, size: 64, offset: 1152)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !622, line: 141, baseType: !623)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !826, file: !827, line: 297, baseType: !44, size: 64, offset: 1216)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !826, file: !827, line: 298, baseType: !44, size: 64, offset: 1280)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !826, file: !827, line: 299, baseType: !44, size: 64, offset: 1344)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !826, file: !827, line: 300, baseType: !44, size: 64, offset: 1408)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !826, file: !827, line: 302, baseType: !45, size: 64, offset: 1472)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !826, file: !827, line: 303, baseType: !87, size: 32, offset: 1536)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !826, file: !827, line: 305, baseType: !873, size: 160, offset: 1568)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 20)
!876 = !DILocalVariable(name: "checksum", scope: !818, file: !3, line: 91, type: !87)
!877 = !DILocalVariable(name: "total_bytes", scope: !818, file: !3, line: 92, type: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !879, line: 136, baseType: !880)
!879 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !622, line: 62, baseType: !47)
!881 = !DILocalVariable(name: "ch", scope: !818, file: !3, line: 93, type: !87)
!882 = !DILocalVariable(name: "hbuf", scope: !818, file: !3, line: 94, type: !883)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 5216, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 652)
!886 = !DILocalVariable(name: "is_stdin", scope: !818, file: !3, line: 95, type: !59)
!887 = !DILocalVariable(name: "__s1_len", scope: !888, file: !3, line: 95, type: !45)
!888 = distinct !DILexicalBlock(scope: !818, file: !3, line: 95, column: 19)
!889 = !DILocalVariable(name: "__s2_len", scope: !888, file: !3, line: 95, type: !45)
!890 = !DILocalVariable(name: "__s2", scope: !891, file: !3, line: 95, type: !50)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 95, column: 19)
!892 = !DILocalVariable(name: "__result", scope: !891, file: !3, line: 95, type: !87)
!893 = !DILocation(line: 88, column: 27, scope: !818)
!894 = !DILocation(line: 88, column: 37, scope: !818)
!895 = !DILocation(line: 91, column: 7, scope: !818)
!896 = !DILocation(line: 92, column: 13, scope: !818)
!897 = !DILocation(line: 94, column: 3, scope: !818)
!898 = !DILocation(line: 94, column: 8, scope: !818)
!899 = !DILocation(line: 95, column: 19, scope: !888)
!900 = !DILocation(line: 95, column: 19, scope: !891)
!901 = !DILocation(line: 95, column: 19, scope: !902)
!902 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 2)
!903 = !{!693, !693, i64 0}
!904 = !DILocation(line: 95, column: 19, scope: !905)
!905 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 3)
!906 = distinct !DILexicalBlock(scope: !891, file: !3, line: 95, column: 19)
!907 = !DILocation(line: 95, column: 19, scope: !908)
!908 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 2)
!909 = !DILocation(line: 95, column: 19, scope: !910)
!910 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 4)
!911 = distinct !DILexicalBlock(scope: !906, file: !3, line: 95, column: 19)
!912 = !DILocation(line: 95, column: 19, scope: !913)
!913 = !DILexicalBlockFile(scope: !888, file: !3, discriminator: 11)
!914 = !DILocation(line: 97, column: 7, scope: !818)
!915 = !DILocation(line: 99, column: 12, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 98, column: 5)
!917 = distinct !DILexicalBlock(scope: !818, file: !3, line: 97, column: 7)
!918 = !DILocation(line: 90, column: 9, scope: !818)
!919 = !DILocation(line: 102, column: 5, scope: !916)
!920 = !DILocation(line: 105, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 104, column: 5)
!922 = !DILocation(line: 106, column: 14, scope: !923)
!923 = distinct !DILexicalBlock(scope: !921, file: !3, line: 106, column: 11)
!924 = !DILocation(line: 106, column: 11, scope: !921)
!925 = !DILocation(line: 108, column: 21, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !3, line: 107, column: 9)
!927 = !DILocation(line: 108, column: 34, scope: !928)
!928 = !DILexicalBlockFile(scope: !926, file: !3, discriminator: 1)
!929 = !DILocation(line: 108, column: 11, scope: !930)
!930 = !DILexicalBlockFile(scope: !926, file: !3, discriminator: 2)
!931 = !DILocation(line: 109, column: 11, scope: !926)
!932 = !DILocation(line: 113, column: 3, scope: !818)
!933 = !DILocation(line: 115, column: 3, scope: !818)
!934 = !DILocalVariable(name: "__fp", arg: 1, scope: !935, file: !936, line: 63, type: !823)
!935 = distinct !DISubprogram(name: "getc_unlocked", scope: !936, file: !936, line: 63, type: !937, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !939)
!936 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!937 = !DISubroutineType(types: !938)
!938 = !{!87, !823}
!939 = !{!934}
!940 = !DILocation(line: 63, column: 22, scope: !935, inlinedAt: !941)
!941 = distinct !DILocation(line: 115, column: 16, scope: !942)
!942 = !DILexicalBlockFile(scope: !818, file: !3, discriminator: 1)
!943 = !DILocation(line: 65, column: 10, scope: !935, inlinedAt: !941)
!944 = !{!945, !692, i64 8}
!945 = !{!"_IO_FILE", !781, i64 0, !692, i64 8, !692, i64 16, !692, i64 24, !692, i64 32, !692, i64 40, !692, i64 48, !692, i64 56, !692, i64 64, !692, i64 72, !692, i64 80, !692, i64 88, !692, i64 96, !692, i64 104, !781, i64 112, !781, i64 116, !946, i64 120, !947, i64 128, !693, i64 130, !693, i64 131, !692, i64 136, !946, i64 144, !692, i64 152, !692, i64 160, !692, i64 168, !692, i64 176, !946, i64 184, !781, i64 192, !693, i64 196}
!946 = !{!"long", !693, i64 0}
!947 = !{!"short", !693, i64 0}
!948 = !{!945, !692, i64 16}
!949 = !{!"branch_weights", i32 2000, i32 1}
!950 = !DILocation(line: 65, column: 10, scope: !951, inlinedAt: !941)
!951 = !DILexicalBlockFile(scope: !935, file: !936, discriminator: 2)
!952 = !DILocation(line: 93, column: 7, scope: !818)
!953 = !DILocation(line: 115, column: 3, scope: !942)
!954 = !DILocation(line: 65, column: 10, scope: !955, inlinedAt: !941)
!955 = !DILexicalBlockFile(scope: !935, file: !936, discriminator: 1)
!956 = !DILocation(line: 115, column: 27, scope: !942)
!957 = !DILocation(line: 117, column: 18, scope: !958)
!958 = distinct !DILexicalBlock(scope: !818, file: !3, line: 116, column: 5)
!959 = !DILocation(line: 118, column: 28, scope: !958)
!960 = !DILocation(line: 118, column: 52, scope: !958)
!961 = !DILocation(line: 118, column: 34, scope: !958)
!962 = !DILocation(line: 119, column: 16, scope: !958)
!963 = !DILocation(line: 120, column: 16, scope: !958)
!964 = !DILocation(line: 115, column: 3, scope: !965)
!965 = !DILexicalBlockFile(scope: !818, file: !3, discriminator: 2)
!966 = distinct !{!966, !933, !967}
!967 = !DILocation(line: 121, column: 5, scope: !818)
!968 = !DILocalVariable(name: "__stream", arg: 1, scope: !969, file: !936, line: 132, type: !823)
!969 = distinct !DISubprogram(name: "ferror_unlocked", scope: !936, file: !936, line: 132, type: !937, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !970)
!970 = !{!968}
!971 = !DILocation(line: 132, column: 1, scope: !969, inlinedAt: !972)
!972 = distinct !DILocation(line: 123, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !818, file: !3, line: 123, column: 7)
!974 = !DILocation(line: 134, column: 10, scope: !969, inlinedAt: !972)
!975 = !{!945, !781, i64 0}
!976 = !DILocation(line: 123, column: 7, scope: !973)
!977 = !DILocation(line: 123, column: 7, scope: !818)
!978 = !DILocation(line: 125, column: 17, scope: !979)
!979 = distinct !DILexicalBlock(scope: !973, file: !3, line: 124, column: 5)
!980 = !DILocation(line: 125, column: 30, scope: !981)
!981 = !DILexicalBlockFile(scope: !979, file: !3, discriminator: 1)
!982 = !DILocation(line: 125, column: 7, scope: !983)
!983 = !DILexicalBlockFile(scope: !979, file: !3, discriminator: 2)
!984 = !DILocation(line: 126, column: 11, scope: !979)
!985 = !DILocation(line: 127, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !979, file: !3, line: 126, column: 11)
!987 = !DILocation(line: 131, column: 17, scope: !988)
!988 = distinct !DILexicalBlock(scope: !818, file: !3, line: 131, column: 7)
!989 = !DILocation(line: 131, column: 20, scope: !990)
!990 = !DILexicalBlockFile(scope: !988, file: !3, discriminator: 1)
!991 = !DILocation(line: 131, column: 32, scope: !990)
!992 = !DILocation(line: 131, column: 7, scope: !942)
!993 = !DILocation(line: 133, column: 17, scope: !994)
!994 = distinct !DILexicalBlock(scope: !988, file: !3, line: 132, column: 5)
!995 = !DILocation(line: 133, column: 30, scope: !996)
!996 = !DILexicalBlockFile(scope: !994, file: !3, discriminator: 1)
!997 = !DILocation(line: 133, column: 7, scope: !998)
!998 = !DILexicalBlockFile(scope: !994, file: !3, discriminator: 2)
!999 = !DILocation(line: 134, column: 7, scope: !994)
!1000 = !DILocation(line: 137, column: 3, scope: !818)
!1001 = !DILocation(line: 137, column: 3, scope: !942)
!1002 = !DILocation(line: 139, column: 18, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !818, file: !3, line: 139, column: 7)
!1004 = !DILocation(line: 139, column: 7, scope: !818)
!1005 = !DILocation(line: 140, column: 5, scope: !1003)
!1006 = !DILocalVariable(name: "__c", arg: 1, scope: !1007, file: !936, line: 105, type: !87)
!1007 = distinct !DISubprogram(name: "putchar_unlocked", scope: !936, file: !936, line: 105, type: !1008, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1010)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!87, !87}
!1010 = !{!1006}
!1011 = !DILocation(line: 105, column: 23, scope: !1007, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 141, column: 3, scope: !818)
!1013 = !DILocation(line: 107, column: 10, scope: !1007, inlinedAt: !1012)
!1014 = !{!945, !692, i64 40}
!1015 = !{!945, !692, i64 48}
!1016 = !DILocation(line: 107, column: 10, scope: !1017, inlinedAt: !1012)
!1017 = !DILexicalBlockFile(scope: !1007, file: !936, discriminator: 1)
!1018 = !DILocation(line: 107, column: 10, scope: !1019, inlinedAt: !1012)
!1019 = !DILexicalBlockFile(scope: !1007, file: !936, discriminator: 2)
!1020 = !DILocation(line: 144, column: 1, scope: !818)
!1021 = distinct !DISubprogram(name: "sysv_sum_file", scope: !3, file: !3, line: 152, type: !751, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1038, !1039, !1041, !1042, !1044}
!1023 = !DILocalVariable(name: "file", arg: 1, scope: !1021, file: !3, line: 152, type: !53)
!1024 = !DILocalVariable(name: "print_name", arg: 2, scope: !1021, file: !3, line: 152, type: !87)
!1025 = !DILocalVariable(name: "fd", scope: !1021, file: !3, line: 154, type: !87)
!1026 = !DILocalVariable(name: "buf", scope: !1021, file: !3, line: 155, type: !1027)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 65536, elements: !1028)
!1028 = !{!1029}
!1029 = !DISubrange(count: 8192)
!1030 = !DILocalVariable(name: "total_bytes", scope: !1021, file: !3, line: 156, type: !878)
!1031 = !DILocalVariable(name: "hbuf", scope: !1021, file: !3, line: 157, type: !883)
!1032 = !DILocalVariable(name: "r", scope: !1021, file: !3, line: 158, type: !87)
!1033 = !DILocalVariable(name: "checksum", scope: !1021, file: !3, line: 159, type: !87)
!1034 = !DILocalVariable(name: "s", scope: !1021, file: !3, line: 162, type: !205)
!1035 = !DILocalVariable(name: "is_stdin", scope: !1021, file: !3, line: 164, type: !59)
!1036 = !DILocalVariable(name: "__s1_len", scope: !1037, file: !3, line: 164, type: !45)
!1037 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 164, column: 19)
!1038 = !DILocalVariable(name: "__s2_len", scope: !1037, file: !3, line: 164, type: !45)
!1039 = !DILocalVariable(name: "__s2", scope: !1040, file: !3, line: 164, type: !50)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 164, column: 19)
!1041 = !DILocalVariable(name: "__result", scope: !1040, file: !3, line: 164, type: !87)
!1042 = !DILocalVariable(name: "i", scope: !1043, file: !3, line: 184, type: !45)
!1043 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 183, column: 5)
!1044 = !DILocalVariable(name: "bytes_read", scope: !1043, file: !3, line: 185, type: !45)
!1045 = !DILocation(line: 152, column: 28, scope: !1021)
!1046 = !DILocation(line: 152, column: 38, scope: !1021)
!1047 = !DILocation(line: 155, column: 3, scope: !1021)
!1048 = !DILocation(line: 155, column: 17, scope: !1021)
!1049 = !DILocation(line: 156, column: 13, scope: !1021)
!1050 = !DILocation(line: 157, column: 3, scope: !1021)
!1051 = !DILocation(line: 157, column: 8, scope: !1021)
!1052 = !DILocation(line: 162, column: 16, scope: !1021)
!1053 = !DILocation(line: 164, column: 19, scope: !1037)
!1054 = !DILocation(line: 164, column: 19, scope: !1040)
!1055 = !DILocation(line: 164, column: 19, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1040, file: !3, discriminator: 2)
!1057 = !DILocation(line: 164, column: 19, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1059, file: !3, discriminator: 3)
!1059 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 164, column: 19)
!1060 = !DILocation(line: 164, column: 19, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1059, file: !3, discriminator: 2)
!1062 = !DILocation(line: 164, column: 19, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1064, file: !3, discriminator: 4)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 164, column: 19)
!1065 = !DILocation(line: 164, column: 19, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1037, file: !3, discriminator: 11)
!1067 = !DILocation(line: 166, column: 7, scope: !1021)
!1068 = !DILocation(line: 154, column: 7, scope: !1021)
!1069 = !DILocation(line: 171, column: 5, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 167, column: 5)
!1071 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 166, column: 7)
!1072 = !DILocation(line: 174, column: 12, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 173, column: 5)
!1074 = !DILocation(line: 175, column: 14, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 175, column: 11)
!1076 = !DILocation(line: 175, column: 11, scope: !1073)
!1077 = !DILocation(line: 177, column: 21, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 176, column: 9)
!1079 = !DILocation(line: 177, column: 34, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1078, file: !3, discriminator: 1)
!1081 = !DILocation(line: 177, column: 11, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1078, file: !3, discriminator: 2)
!1083 = !DILocation(line: 178, column: 11, scope: !1078)
!1084 = !DILocation(line: 185, column: 27, scope: !1043)
!1085 = !DILocation(line: 185, column: 14, scope: !1043)
!1086 = !DILocation(line: 187, column: 11, scope: !1043)
!1087 = !DILocation(line: 199, column: 14, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 198, column: 7)
!1089 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 198, column: 7)
!1090 = !DILocation(line: 199, column: 11, scope: !1088)
!1091 = !DILocation(line: 198, column: 36, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1088, file: !3, discriminator: 2)
!1093 = distinct !{!1093, !1094, !1095, !1096, !1097}
!1094 = !DILocation(line: 198, column: 7, scope: !1089)
!1095 = !DILocation(line: 199, column: 19, scope: !1089)
!1096 = !{!"llvm.loop.vectorize.width", i32 1}
!1097 = !{!"llvm.loop.interleave.count", i32 1}
!1098 = !DILocation(line: 192, column: 21, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 191, column: 9)
!1100 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 190, column: 11)
!1101 = !DILocation(line: 192, column: 34, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1099, file: !3, discriminator: 1)
!1103 = !DILocation(line: 192, column: 11, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1099, file: !3, discriminator: 2)
!1105 = !DILocation(line: 193, column: 15, scope: !1099)
!1106 = !DILocation(line: 194, column: 13, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 193, column: 15)
!1108 = !DILocation(line: 184, column: 14, scope: !1043)
!1109 = !DILocation(line: 198, column: 21, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1088, file: !3, discriminator: 1)
!1111 = !DILocation(line: 198, column: 7, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1089, file: !3, discriminator: 1)
!1113 = distinct !{!1113, !1094, !1095, !1114, !1096, !1097}
!1114 = !{!"llvm.loop.unroll.runtime.disable"}
!1115 = !DILocation(line: 200, column: 19, scope: !1043)
!1116 = !DILocation(line: 203, column: 17, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 203, column: 7)
!1118 = !DILocation(line: 203, column: 20, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1117, file: !3, discriminator: 1)
!1120 = !DILocation(line: 203, column: 31, scope: !1119)
!1121 = !DILocation(line: 203, column: 7, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1021, file: !3, discriminator: 1)
!1123 = !DILocation(line: 205, column: 17, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 204, column: 5)
!1125 = !DILocation(line: 205, column: 30, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1124, file: !3, discriminator: 1)
!1127 = !DILocation(line: 205, column: 7, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1124, file: !3, discriminator: 2)
!1129 = !DILocation(line: 206, column: 7, scope: !1124)
!1130 = !DILocation(line: 209, column: 10, scope: !1021)
!1131 = !DILocation(line: 209, column: 40, scope: !1021)
!1132 = !DILocation(line: 209, column: 20, scope: !1021)
!1133 = !DILocation(line: 158, column: 7, scope: !1021)
!1134 = !DILocation(line: 210, column: 17, scope: !1021)
!1135 = !DILocation(line: 210, column: 32, scope: !1021)
!1136 = !DILocation(line: 210, column: 27, scope: !1021)
!1137 = !DILocation(line: 159, column: 7, scope: !1021)
!1138 = !DILocation(line: 212, column: 3, scope: !1021)
!1139 = !DILocation(line: 212, column: 3, scope: !1122)
!1140 = !DILocation(line: 214, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 214, column: 7)
!1142 = !DILocation(line: 214, column: 7, scope: !1021)
!1143 = !DILocation(line: 215, column: 5, scope: !1141)
!1144 = !DILocation(line: 105, column: 23, scope: !1007, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 216, column: 3, scope: !1021)
!1146 = !DILocation(line: 107, column: 10, scope: !1007, inlinedAt: !1145)
!1147 = !DILocation(line: 107, column: 10, scope: !1017, inlinedAt: !1145)
!1148 = !DILocation(line: 107, column: 10, scope: !1019, inlinedAt: !1145)
!1149 = !DILocation(line: 219, column: 1, scope: !1021)
!1150 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !116, file: !116, line: 41, type: !64, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1151)
!1151 = !{!1152}
!1152 = !DILocalVariable(name: "file", arg: 1, scope: !1150, file: !116, line: 41, type: !53)
!1153 = !DILocation(line: 41, column: 41, scope: !1150)
!1154 = !DILocation(line: 43, column: 13, scope: !1150)
!1155 = !DILocation(line: 44, column: 1, scope: !1150)
!1156 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !116, file: !116, line: 78, type: !1157, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !59}
!1159 = !{!1160}
!1160 = !DILocalVariable(name: "ignore", arg: 1, scope: !1156, file: !116, line: 78, type: !59)
!1161 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1162 = !DILocation(line: 78, column: 37, scope: !1156)
!1163 = !DILocation(line: 80, column: 16, scope: !1156)
!1164 = !{!1165, !1165, i64 0}
!1165 = !{!"_Bool", !693, i64 0}
!1166 = !DILocation(line: 81, column: 1, scope: !1156)
!1167 = distinct !DISubprogram(name: "close_stdout", scope: !116, file: !116, line: 107, type: !251, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !111, variables: !1168)
!1168 = !{!1169}
!1169 = !DILocalVariable(name: "write_error", scope: !1170, file: !116, line: 112, type: !53)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !116, line: 111, column: 5)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !116, line: 109, column: 7)
!1172 = !DILocation(line: 109, column: 21, scope: !1171)
!1173 = !DILocation(line: 109, column: 7, scope: !1171)
!1174 = !DILocation(line: 109, column: 29, scope: !1171)
!1175 = !DILocation(line: 110, column: 7, scope: !1171)
!1176 = !DILocation(line: 110, column: 12, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1171, file: !116, discriminator: 1)
!1178 = !{i8 0, i8 2}
!1179 = !DILocation(line: 114, column: 19, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1170, file: !116, line: 113, column: 11)
!1181 = !DILocation(line: 110, column: 25, scope: !1177)
!1182 = !DILocation(line: 110, column: 28, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1171, file: !116, discriminator: 2)
!1184 = !DILocation(line: 110, column: 34, scope: !1183)
!1185 = !DILocation(line: 109, column: 7, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1167, file: !116, discriminator: 1)
!1187 = !DILocation(line: 112, column: 33, scope: !1170)
!1188 = !DILocation(line: 112, column: 19, scope: !1170)
!1189 = !DILocation(line: 113, column: 11, scope: !1180)
!1190 = !DILocation(line: 113, column: 11, scope: !1170)
!1191 = !DILocation(line: 114, column: 36, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1180, file: !116, discriminator: 1)
!1193 = !DILocation(line: 114, column: 9, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1180, file: !116, discriminator: 2)
!1195 = !DILocation(line: 114, column: 9, scope: !1180)
!1196 = !DILocation(line: 117, column: 9, scope: !1192)
!1197 = !DILocation(line: 119, column: 14, scope: !1170)
!1198 = !DILocation(line: 119, column: 7, scope: !1170)
!1199 = !DILocation(line: 122, column: 22, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1167, file: !116, line: 122, column: 8)
!1201 = !DILocation(line: 122, column: 8, scope: !1200)
!1202 = !DILocation(line: 122, column: 30, scope: !1200)
!1203 = !DILocation(line: 122, column: 8, scope: !1167)
!1204 = !DILocation(line: 123, column: 13, scope: !1200)
!1205 = !DILocation(line: 123, column: 6, scope: !1200)
!1206 = !DILocation(line: 124, column: 1, scope: !1167)
!1207 = distinct !DISubprogram(name: "fdadvise", scope: !1208, file: !1208, line: 31, type: !1209, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !1213)
!1208 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !87, !1211, !1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !825, line: 91, baseType: !853)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1213 = !{!1214, !1215, !1216, !1217, !1218}
!1214 = !DILocalVariable(name: "fd", arg: 1, scope: !1207, file: !1208, line: 31, type: !87)
!1215 = !DILocalVariable(name: "offset", arg: 2, scope: !1207, file: !1208, line: 31, type: !1211)
!1216 = !DILocalVariable(name: "len", arg: 3, scope: !1207, file: !1208, line: 31, type: !1211)
!1217 = !DILocalVariable(name: "advice", arg: 4, scope: !1207, file: !1208, line: 31, type: !1212)
!1218 = !DILocalVariable(name: "__x", scope: !1219, file: !1208, line: 34, type: !87)
!1219 = distinct !DILexicalBlock(scope: !1207, file: !1208, line: 34, column: 3)
!1220 = !DILocation(line: 31, column: 15, scope: !1207)
!1221 = !DILocation(line: 31, column: 25, scope: !1207)
!1222 = !DILocation(line: 31, column: 39, scope: !1207)
!1223 = !DILocation(line: 31, column: 54, scope: !1207)
!1224 = !DILocation(line: 34, column: 3, scope: !1219)
!1225 = !DILocation(line: 36, column: 1, scope: !1207)
!1226 = distinct !DISubprogram(name: "fadvise", scope: !1208, file: !1208, line: 39, type: !1227, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !1269)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1229, !1212}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !825, line: 49, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !827, line: 241, size: 1728, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1231, file: !827, line: 242, baseType: !87, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1231, file: !827, line: 247, baseType: !42, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1231, file: !827, line: 248, baseType: !42, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1231, file: !827, line: 249, baseType: !42, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1231, file: !827, line: 250, baseType: !42, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1231, file: !827, line: 251, baseType: !42, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1231, file: !827, line: 252, baseType: !42, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1231, file: !827, line: 253, baseType: !42, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1231, file: !827, line: 254, baseType: !42, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1231, file: !827, line: 256, baseType: !42, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1231, file: !827, line: 257, baseType: !42, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1231, file: !827, line: 258, baseType: !42, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1231, file: !827, line: 260, baseType: !1246, size: 64, offset: 768)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !827, line: 156, size: 192, elements: !1248)
!1248 = !{!1249, !1250, !1252}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1247, file: !827, line: 157, baseType: !1246, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1247, file: !827, line: 158, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1247, file: !827, line: 162, baseType: !87, size: 32, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1231, file: !827, line: 262, baseType: !1251, size: 64, offset: 832)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1231, file: !827, line: 264, baseType: !87, size: 32, offset: 896)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1231, file: !827, line: 268, baseType: !87, size: 32, offset: 928)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1231, file: !827, line: 270, baseType: !853, size: 64, offset: 960)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1231, file: !827, line: 274, baseType: !188, size: 16, offset: 1024)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1231, file: !827, line: 275, baseType: !856, size: 8, offset: 1040)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1231, file: !827, line: 276, baseType: !858, size: 8, offset: 1048)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1231, file: !827, line: 280, baseType: !862, size: 64, offset: 1088)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1231, file: !827, line: 289, baseType: !865, size: 64, offset: 1152)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1231, file: !827, line: 297, baseType: !44, size: 64, offset: 1216)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1231, file: !827, line: 298, baseType: !44, size: 64, offset: 1280)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1231, file: !827, line: 299, baseType: !44, size: 64, offset: 1344)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1231, file: !827, line: 300, baseType: !44, size: 64, offset: 1408)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1231, file: !827, line: 302, baseType: !45, size: 64, offset: 1472)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1231, file: !827, line: 303, baseType: !87, size: 32, offset: 1536)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1231, file: !827, line: 305, baseType: !873, size: 160, offset: 1568)
!1269 = !{!1270, !1271}
!1270 = !DILocalVariable(name: "fp", arg: 1, scope: !1226, file: !1208, line: 39, type: !1229)
!1271 = !DILocalVariable(name: "advice", arg: 2, scope: !1226, file: !1208, line: 39, type: !1212)
!1272 = !DILocation(line: 39, column: 16, scope: !1226)
!1273 = !DILocation(line: 39, column: 30, scope: !1226)
!1274 = !DILocation(line: 41, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1226, file: !1208, line: 41, column: 7)
!1276 = !DILocation(line: 41, column: 7, scope: !1226)
!1277 = !DILocation(line: 42, column: 15, scope: !1275)
!1278 = !DILocation(line: 31, column: 15, scope: !1207, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 42, column: 5, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1275, file: !1208, discriminator: 1)
!1281 = !DILocation(line: 31, column: 25, scope: !1207, inlinedAt: !1279)
!1282 = !DILocation(line: 31, column: 39, scope: !1207, inlinedAt: !1279)
!1283 = !DILocation(line: 31, column: 54, scope: !1207, inlinedAt: !1279)
!1284 = !DILocation(line: 34, column: 3, scope: !1219, inlinedAt: !1279)
!1285 = !DILocation(line: 42, column: 5, scope: !1275)
!1286 = !DILocation(line: 43, column: 1, scope: !1226)
!1287 = distinct !DISubprogram(name: "human_readable", scope: !141, file: !141, line: 153, type: !1288, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1290)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!42, !878, !42, !87, !878, !878}
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1340, !1341, !1346, !1349, !1350, !1351, !1354, !1355, !1356, !1357, !1360, !1367, !1368, !1370}
!1291 = !DILocalVariable(name: "n", arg: 1, scope: !1287, file: !141, line: 153, type: !878)
!1292 = !DILocalVariable(name: "buf", arg: 2, scope: !1287, file: !141, line: 153, type: !42)
!1293 = !DILocalVariable(name: "opts", arg: 3, scope: !1287, file: !141, line: 153, type: !87)
!1294 = !DILocalVariable(name: "from_block_size", arg: 4, scope: !1287, file: !141, line: 154, type: !878)
!1295 = !DILocalVariable(name: "to_block_size", arg: 5, scope: !1287, file: !141, line: 154, type: !878)
!1296 = !DILocalVariable(name: "inexact_style", scope: !1287, file: !141, line: 156, type: !87)
!1297 = !DILocalVariable(name: "base", scope: !1287, file: !141, line: 158, type: !205)
!1298 = !DILocalVariable(name: "amt", scope: !1287, file: !141, line: 159, type: !878)
!1299 = !DILocalVariable(name: "tenths", scope: !1287, file: !141, line: 160, type: !87)
!1300 = !DILocalVariable(name: "exponent", scope: !1287, file: !141, line: 161, type: !87)
!1301 = !DILocalVariable(name: "exponent_max", scope: !1287, file: !141, line: 162, type: !87)
!1302 = !DILocalVariable(name: "p", scope: !1287, file: !141, line: 163, type: !42)
!1303 = !DILocalVariable(name: "psuffix", scope: !1287, file: !141, line: 164, type: !42)
!1304 = !DILocalVariable(name: "integerlim", scope: !1287, file: !141, line: 165, type: !53)
!1305 = !DILocalVariable(name: "rounding", scope: !1287, file: !141, line: 171, type: !87)
!1306 = !DILocalVariable(name: "decimal_point", scope: !1287, file: !141, line: 173, type: !53)
!1307 = !DILocalVariable(name: "decimal_pointlen", scope: !1287, file: !141, line: 174, type: !45)
!1308 = !DILocalVariable(name: "grouping", scope: !1287, file: !141, line: 175, type: !53)
!1309 = !DILocalVariable(name: "thousands_sep", scope: !1287, file: !141, line: 176, type: !53)
!1310 = !DILocalVariable(name: "l", scope: !1287, file: !141, line: 177, type: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1314, line: 53, size: 768, elements: !1315)
!1314 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !1313, file: !1314, line: 57, baseType: !42, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !1313, file: !1314, line: 58, baseType: !42, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !1313, file: !1314, line: 64, baseType: !42, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !1313, file: !1314, line: 70, baseType: !42, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !1313, file: !1314, line: 71, baseType: !42, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !1313, file: !1314, line: 72, baseType: !42, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !1313, file: !1314, line: 73, baseType: !42, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !1313, file: !1314, line: 74, baseType: !42, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !1313, file: !1314, line: 75, baseType: !42, size: 64, offset: 512)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !1313, file: !1314, line: 76, baseType: !42, size: 64, offset: 576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !1313, file: !1314, line: 77, baseType: !43, size: 8, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !1313, file: !1314, line: 78, baseType: !43, size: 8, offset: 648)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !1313, file: !1314, line: 80, baseType: !43, size: 8, offset: 656)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !1313, file: !1314, line: 82, baseType: !43, size: 8, offset: 664)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !1313, file: !1314, line: 84, baseType: !43, size: 8, offset: 672)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !1313, file: !1314, line: 86, baseType: !43, size: 8, offset: 680)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !1313, file: !1314, line: 93, baseType: !43, size: 8, offset: 688)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !1313, file: !1314, line: 94, baseType: !43, size: 8, offset: 696)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !1313, file: !1314, line: 97, baseType: !43, size: 8, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !1313, file: !1314, line: 99, baseType: !43, size: 8, offset: 712)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !1313, file: !1314, line: 101, baseType: !43, size: 8, offset: 720)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !1313, file: !1314, line: 103, baseType: !43, size: 8, offset: 728)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !1313, file: !1314, line: 110, baseType: !43, size: 8, offset: 736)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !1313, file: !1314, line: 111, baseType: !43, size: 8, offset: 744)
!1340 = !DILocalVariable(name: "pointlen", scope: !1287, file: !141, line: 178, type: !45)
!1341 = !DILocalVariable(name: "multiplier", scope: !1342, file: !141, line: 199, type: !878)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !141, line: 198, column: 9)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !141, line: 197, column: 11)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !141, line: 196, column: 5)
!1345 = distinct !DILexicalBlock(scope: !1287, file: !141, line: 195, column: 7)
!1346 = !DILocalVariable(name: "divisor", scope: !1347, file: !141, line: 211, type: !878)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !141, line: 210, column: 5)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !141, line: 209, column: 12)
!1349 = !DILocalVariable(name: "r10", scope: !1347, file: !141, line: 212, type: !878)
!1350 = !DILocalVariable(name: "r2", scope: !1347, file: !141, line: 213, type: !878)
!1351 = !DILocalVariable(name: "dto_block_size", scope: !1352, file: !141, line: 225, type: !1353)
!1352 = distinct !DILexicalBlock(scope: !1287, file: !141, line: 220, column: 3)
!1353 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1354 = !DILocalVariable(name: "damt", scope: !1352, file: !141, line: 226, type: !1353)
!1355 = !DILocalVariable(name: "buflen", scope: !1352, file: !141, line: 227, type: !45)
!1356 = !DILocalVariable(name: "nonintegerlen", scope: !1352, file: !141, line: 228, type: !45)
!1357 = !DILocalVariable(name: "e", scope: !1358, file: !141, line: 238, type: !1353)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !141, line: 237, column: 7)
!1359 = distinct !DILexicalBlock(scope: !1352, file: !141, line: 230, column: 9)
!1360 = !DILocalVariable(name: "r10", scope: !1361, file: !141, line: 286, type: !205)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !141, line: 285, column: 15)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !141, line: 283, column: 11)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !141, line: 282, column: 13)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !141, line: 279, column: 7)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !141, line: 278, column: 9)
!1366 = distinct !DILexicalBlock(scope: !1287, file: !141, line: 272, column: 3)
!1367 = !DILocalVariable(name: "r2", scope: !1361, file: !141, line: 287, type: !205)
!1368 = !DILocalVariable(name: "digit", scope: !1369, file: !141, line: 349, type: !87)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !141, line: 348, column: 7)
!1370 = !DILocalVariable(name: "power", scope: !1371, file: !141, line: 363, type: !878)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !141, line: 362, column: 9)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !141, line: 361, column: 11)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !141, line: 360, column: 5)
!1374 = distinct !DILexicalBlock(scope: !1287, file: !141, line: 359, column: 7)
!1375 = !DILocalVariable(name: "buf", scope: !1376, file: !141, line: 89, type: !1392)
!1376 = distinct !DISubprogram(name: "group_number", scope: !141, file: !141, line: 79, type: !1377, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!42, !42, !45, !53, !53}
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1375, !1388}
!1380 = !DILocalVariable(name: "number", arg: 1, scope: !1376, file: !141, line: 79, type: !42)
!1381 = !DILocalVariable(name: "numberlen", arg: 2, scope: !1376, file: !141, line: 79, type: !45)
!1382 = !DILocalVariable(name: "grouping", arg: 3, scope: !1376, file: !141, line: 80, type: !53)
!1383 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !1376, file: !141, line: 80, type: !53)
!1384 = !DILocalVariable(name: "d", scope: !1376, file: !141, line: 82, type: !42)
!1385 = !DILocalVariable(name: "grouplen", scope: !1376, file: !141, line: 83, type: !45)
!1386 = !DILocalVariable(name: "thousands_seplen", scope: !1376, file: !141, line: 84, type: !45)
!1387 = !DILocalVariable(name: "i", scope: !1376, file: !141, line: 85, type: !45)
!1388 = !DILocalVariable(name: "g", scope: !1389, file: !141, line: 96, type: !52)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !141, line: 95, column: 5)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !141, line: 94, column: 3)
!1391 = distinct !DILexicalBlock(scope: !1376, file: !141, line: 94, column: 3)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 328, elements: !1393)
!1393 = !{!1394}
!1394 = !DISubrange(count: 41)
!1395 = !DILocation(line: 89, column: 8, scope: !1376, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 357, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1287, file: !141, line: 356, column: 7)
!1398 = !DILocation(line: 153, column: 27, scope: !1287)
!1399 = !DILocation(line: 153, column: 36, scope: !1287)
!1400 = !DILocation(line: 153, column: 45, scope: !1287)
!1401 = !DILocation(line: 154, column: 27, scope: !1287)
!1402 = !DILocation(line: 154, column: 54, scope: !1287)
!1403 = !DILocation(line: 157, column: 10, scope: !1287)
!1404 = !DILocation(line: 156, column: 7, scope: !1287)
!1405 = !DILocation(line: 158, column: 28, scope: !1287)
!1406 = !DILocation(line: 158, column: 23, scope: !1287)
!1407 = !DILocation(line: 158, column: 16, scope: !1287)
!1408 = !DILocation(line: 161, column: 7, scope: !1287)
!1409 = !DILocation(line: 162, column: 7, scope: !1287)
!1410 = !DILocation(line: 174, column: 10, scope: !1287)
!1411 = !DILocation(line: 177, column: 27, scope: !1287)
!1412 = !DILocation(line: 177, column: 23, scope: !1287)
!1413 = !DILocation(line: 178, column: 32, scope: !1287)
!1414 = !{!1415, !692, i64 0}
!1415 = !{!"lconv", !692, i64 0, !692, i64 8, !692, i64 16, !692, i64 24, !692, i64 32, !692, i64 40, !692, i64 48, !692, i64 56, !692, i64 64, !692, i64 72, !693, i64 80, !693, i64 81, !693, i64 82, !693, i64 83, !693, i64 84, !693, i64 85, !693, i64 86, !693, i64 87, !693, i64 88, !693, i64 89, !693, i64 90, !693, i64 91, !693, i64 92, !693, i64 93}
!1416 = !DILocation(line: 178, column: 21, scope: !1287)
!1417 = !DILocation(line: 178, column: 10, scope: !1287)
!1418 = !DILocation(line: 179, column: 20, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1287, file: !141, line: 179, column: 7)
!1420 = !DILocation(line: 173, column: 15, scope: !1287)
!1421 = !DILocation(line: 184, column: 17, scope: !1287)
!1422 = !{!1415, !692, i64 16}
!1423 = !DILocation(line: 175, column: 15, scope: !1287)
!1424 = !DILocation(line: 185, column: 18, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1287, file: !141, line: 185, column: 7)
!1426 = !{!1415, !692, i64 8}
!1427 = !DILocation(line: 185, column: 7, scope: !1425)
!1428 = !DILocation(line: 185, column: 33, scope: !1425)
!1429 = !DILocation(line: 176, column: 15, scope: !1287)
!1430 = !DILocation(line: 185, column: 7, scope: !1287)
!1431 = !DILocation(line: 189, column: 46, scope: !1287)
!1432 = !DILocation(line: 164, column: 9, scope: !1287)
!1433 = !DILocation(line: 163, column: 9, scope: !1287)
!1434 = !DILocation(line: 195, column: 21, scope: !1345)
!1435 = !DILocation(line: 195, column: 7, scope: !1287)
!1436 = !DILocation(line: 197, column: 27, scope: !1343)
!1437 = !DILocation(line: 197, column: 43, scope: !1343)
!1438 = !DILocation(line: 197, column: 11, scope: !1344)
!1439 = !DILocation(line: 199, column: 50, scope: !1342)
!1440 = !DILocation(line: 199, column: 21, scope: !1342)
!1441 = !DILocation(line: 200, column: 19, scope: !1342)
!1442 = !DILocation(line: 159, column: 13, scope: !1287)
!1443 = !DILocation(line: 201, column: 19, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1342, file: !141, line: 201, column: 15)
!1445 = !DILocation(line: 201, column: 32, scope: !1444)
!1446 = !DILocation(line: 160, column: 7, scope: !1287)
!1447 = !DILocation(line: 171, column: 7, scope: !1287)
!1448 = !DILocation(line: 209, column: 28, scope: !1348)
!1449 = !DILocation(line: 209, column: 33, scope: !1348)
!1450 = !DILocation(line: 209, column: 50, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1348, file: !141, discriminator: 1)
!1452 = !DILocation(line: 209, column: 68, scope: !1451)
!1453 = !DILocation(line: 209, column: 12, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1345, file: !141, discriminator: 1)
!1455 = !DILocation(line: 211, column: 41, scope: !1347)
!1456 = !DILocation(line: 211, column: 17, scope: !1347)
!1457 = !DILocation(line: 212, column: 26, scope: !1347)
!1458 = !DILocation(line: 212, column: 37, scope: !1347)
!1459 = !DILocation(line: 212, column: 17, scope: !1347)
!1460 = !DILocation(line: 213, column: 27, scope: !1347)
!1461 = !DILocation(line: 213, column: 38, scope: !1347)
!1462 = !DILocation(line: 213, column: 17, scope: !1347)
!1463 = !DILocation(line: 214, column: 15, scope: !1347)
!1464 = !DILocation(line: 215, column: 20, scope: !1347)
!1465 = !DILocation(line: 215, column: 16, scope: !1347)
!1466 = !DILocation(line: 216, column: 21, scope: !1347)
!1467 = !DILocation(line: 216, column: 35, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1347, file: !141, discriminator: 1)
!1469 = !DILocation(line: 216, column: 55, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1347, file: !141, discriminator: 2)
!1471 = !DILocation(line: 216, column: 44, scope: !1470)
!1472 = !DILocation(line: 216, column: 18, scope: !1347)
!1473 = !DILocation(line: 225, column: 34, scope: !1352)
!1474 = !DILocation(line: 225, column: 17, scope: !1352)
!1475 = !DILocation(line: 226, column: 24, scope: !1352)
!1476 = !DILocation(line: 226, column: 29, scope: !1352)
!1477 = !DILocation(line: 226, column: 45, scope: !1352)
!1478 = !DILocation(line: 226, column: 26, scope: !1352)
!1479 = !DILocation(line: 226, column: 17, scope: !1352)
!1480 = !DILocation(line: 230, column: 17, scope: !1359)
!1481 = !DILocation(line: 230, column: 9, scope: !1352)
!1482 = distinct !{!1482, !1483, !1484}
!1483 = !DILocation(line: 241, column: 9, scope: !1358)
!1484 = !DILocation(line: 246, column: 59, scope: !1358)
!1485 = !DILocation(line: 238, column: 21, scope: !1358)
!1486 = !DILocation(line: 232, column: 9, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1359, file: !141, line: 231, column: 7)
!1488 = !DILocalVariable(name: "inexact_style", arg: 1, scope: !1489, file: !141, line: 54, type: !87)
!1489 = distinct !DISubprogram(name: "adjust_value", scope: !141, file: !141, line: 54, type: !1490, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!1353, !87, !1353}
!1492 = !{!1488, !1493, !1494}
!1493 = !DILocalVariable(name: "value", arg: 2, scope: !1489, file: !141, line: 54, type: !1353)
!1494 = !DILocalVariable(name: "u", scope: !1495, file: !141, line: 62, type: !878)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !141, line: 61, column: 5)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !141, line: 60, column: 7)
!1497 = !DILocation(line: 54, column: 19, scope: !1489, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 232, column: 9, scope: !1487)
!1499 = !DILocation(line: 54, column: 46, scope: !1489, inlinedAt: !1498)
!1500 = !DILocation(line: 60, column: 21, scope: !1496, inlinedAt: !1498)
!1501 = !DILocation(line: 60, column: 56, scope: !1502, inlinedAt: !1498)
!1502 = !DILexicalBlockFile(scope: !1496, file: !141, discriminator: 1)
!1503 = !DILocation(line: 60, column: 47, scope: !1496, inlinedAt: !1498)
!1504 = !DILocation(line: 62, column: 21, scope: !1495, inlinedAt: !1498)
!1505 = !DILocation(line: 62, column: 17, scope: !1495, inlinedAt: !1498)
!1506 = !DILocation(line: 63, column: 34, scope: !1495, inlinedAt: !1498)
!1507 = !DILocation(line: 63, column: 54, scope: !1508, inlinedAt: !1498)
!1508 = !DILexicalBlockFile(scope: !1495, file: !141, discriminator: 1)
!1509 = !DILocation(line: 63, column: 56, scope: !1508, inlinedAt: !1498)
!1510 = !DILocation(line: 63, column: 51, scope: !1495, inlinedAt: !1498)
!1511 = !DILocation(line: 63, column: 19, scope: !1512, inlinedAt: !1498)
!1512 = !DILexicalBlockFile(scope: !1495, file: !141, discriminator: 2)
!1513 = !DILocation(line: 63, column: 17, scope: !1512, inlinedAt: !1498)
!1514 = !DILocation(line: 63, column: 15, scope: !1512, inlinedAt: !1498)
!1515 = !DILocation(line: 64, column: 5, scope: !1495, inlinedAt: !1498)
!1516 = !DILocation(line: 232, column: 9, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1487, file: !141, discriminator: 1)
!1518 = !DILocation(line: 233, column: 18, scope: !1487)
!1519 = !DILocation(line: 227, column: 12, scope: !1352)
!1520 = !DILocation(line: 228, column: 12, scope: !1352)
!1521 = !DILocation(line: 235, column: 7, scope: !1487)
!1522 = !DILocation(line: 246, column: 18, scope: !1358)
!1523 = !DILocation(line: 246, column: 25, scope: !1358)
!1524 = !DILocation(line: 246, column: 33, scope: !1358)
!1525 = !DILocation(line: 248, column: 14, scope: !1358)
!1526 = !DILocation(line: 250, column: 9, scope: !1358)
!1527 = !DILocation(line: 54, column: 19, scope: !1489, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 250, column: 9, scope: !1358)
!1529 = !DILocation(line: 54, column: 46, scope: !1489, inlinedAt: !1528)
!1530 = !DILocation(line: 60, column: 21, scope: !1496, inlinedAt: !1528)
!1531 = !DILocation(line: 60, column: 56, scope: !1502, inlinedAt: !1528)
!1532 = !DILocation(line: 60, column: 47, scope: !1496, inlinedAt: !1528)
!1533 = !DILocation(line: 62, column: 21, scope: !1495, inlinedAt: !1528)
!1534 = !DILocation(line: 62, column: 17, scope: !1495, inlinedAt: !1528)
!1535 = !DILocation(line: 63, column: 34, scope: !1495, inlinedAt: !1528)
!1536 = !DILocation(line: 63, column: 54, scope: !1508, inlinedAt: !1528)
!1537 = !DILocation(line: 63, column: 56, scope: !1508, inlinedAt: !1528)
!1538 = !DILocation(line: 63, column: 51, scope: !1495, inlinedAt: !1528)
!1539 = !DILocation(line: 63, column: 19, scope: !1512, inlinedAt: !1528)
!1540 = !DILocation(line: 63, column: 17, scope: !1512, inlinedAt: !1528)
!1541 = !DILocation(line: 63, column: 15, scope: !1512, inlinedAt: !1528)
!1542 = !DILocation(line: 64, column: 5, scope: !1495, inlinedAt: !1528)
!1543 = !DILocation(line: 250, column: 9, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1358, file: !141, discriminator: 1)
!1545 = !DILocation(line: 251, column: 18, scope: !1358)
!1546 = !DILocation(line: 252, column: 42, scope: !1358)
!1547 = !DILocation(line: 254, column: 15, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1358, file: !141, line: 254, column: 13)
!1549 = !DILocation(line: 254, column: 31, scope: !1548)
!1550 = !DILocation(line: 254, column: 60, scope: !1548)
!1551 = !DILocation(line: 255, column: 13, scope: !1548)
!1552 = !DILocation(line: 255, column: 23, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1548, file: !141, discriminator: 1)
!1554 = !DILocation(line: 256, column: 17, scope: !1548)
!1555 = !DILocation(line: 256, column: 31, scope: !1553)
!1556 = !DILocation(line: 256, column: 20, scope: !1553)
!1557 = !DILocation(line: 256, column: 36, scope: !1553)
!1558 = !DILocation(line: 254, column: 13, scope: !1544)
!1559 = !DILocation(line: 258, column: 13, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1548, file: !141, line: 257, column: 11)
!1561 = !DILocation(line: 54, column: 19, scope: !1489, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 258, column: 13, scope: !1560)
!1563 = !DILocation(line: 54, column: 46, scope: !1489, inlinedAt: !1562)
!1564 = !DILocation(line: 60, column: 56, scope: !1502, inlinedAt: !1562)
!1565 = !DILocation(line: 60, column: 47, scope: !1496, inlinedAt: !1562)
!1566 = !DILocation(line: 62, column: 21, scope: !1495, inlinedAt: !1562)
!1567 = !DILocation(line: 62, column: 17, scope: !1495, inlinedAt: !1562)
!1568 = !DILocation(line: 63, column: 34, scope: !1495, inlinedAt: !1562)
!1569 = !DILocation(line: 63, column: 54, scope: !1508, inlinedAt: !1562)
!1570 = !DILocation(line: 63, column: 56, scope: !1508, inlinedAt: !1562)
!1571 = !DILocation(line: 63, column: 51, scope: !1495, inlinedAt: !1562)
!1572 = !DILocation(line: 63, column: 19, scope: !1512, inlinedAt: !1562)
!1573 = !DILocation(line: 63, column: 17, scope: !1512, inlinedAt: !1562)
!1574 = !DILocation(line: 63, column: 15, scope: !1512, inlinedAt: !1562)
!1575 = !DILocation(line: 64, column: 5, scope: !1495, inlinedAt: !1562)
!1576 = !DILocation(line: 258, column: 13, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1560, file: !141, discriminator: 1)
!1578 = !DILocation(line: 260, column: 22, scope: !1560)
!1579 = !DILocation(line: 262, column: 11, scope: !1560)
!1580 = !DILocation(line: 265, column: 17, scope: !1352)
!1581 = !DILocation(line: 266, column: 5, scope: !1352)
!1582 = !DILocation(line: 267, column: 20, scope: !1352)
!1583 = !DILocation(line: 267, column: 29, scope: !1352)
!1584 = !DILocation(line: 165, column: 15, scope: !1287)
!1585 = !DILocation(line: 269, column: 3, scope: !1287)
!1586 = !DILocation(line: 278, column: 14, scope: !1365)
!1587 = !DILocation(line: 278, column: 9, scope: !1366)
!1588 = !DILocation(line: 282, column: 13, scope: !1363)
!1589 = !DILocation(line: 282, column: 18, scope: !1363)
!1590 = !DILocation(line: 282, column: 13, scope: !1364)
!1591 = distinct !{!1591, !1592, !1593}
!1592 = !DILocation(line: 284, column: 13, scope: !1362)
!1593 = !DILocation(line: 295, column: 58, scope: !1362)
!1594 = !DILocation(line: 286, column: 41, scope: !1361)
!1595 = !DILocation(line: 286, column: 49, scope: !1361)
!1596 = !DILocation(line: 286, column: 56, scope: !1361)
!1597 = !DILocation(line: 286, column: 54, scope: !1361)
!1598 = !DILocation(line: 286, column: 36, scope: !1361)
!1599 = !DILocation(line: 286, column: 30, scope: !1361)
!1600 = !DILocation(line: 287, column: 40, scope: !1361)
!1601 = !DILocation(line: 287, column: 48, scope: !1361)
!1602 = !DILocation(line: 287, column: 64, scope: !1361)
!1603 = !DILocation(line: 287, column: 52, scope: !1361)
!1604 = !DILocation(line: 287, column: 30, scope: !1361)
!1605 = !DILocation(line: 288, column: 21, scope: !1361)
!1606 = !DILocation(line: 289, column: 30, scope: !1361)
!1607 = !DILocation(line: 290, column: 32, scope: !1361)
!1608 = !DILocation(line: 290, column: 29, scope: !1361)
!1609 = !DILocation(line: 291, column: 47, scope: !1361)
!1610 = !DILocation(line: 290, column: 29, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1361, file: !141, discriminator: 1)
!1612 = !DILocation(line: 292, column: 46, scope: !1361)
!1613 = !DILocation(line: 292, column: 41, scope: !1361)
!1614 = !DILocation(line: 292, column: 33, scope: !1361)
!1615 = !DILocation(line: 290, column: 29, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1361, file: !141, discriminator: 2)
!1617 = !DILocation(line: 290, column: 29, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1361, file: !141, discriminator: 3)
!1619 = !DILocation(line: 293, column: 25, scope: !1361)
!1620 = !DILocation(line: 295, column: 25, scope: !1362)
!1621 = !DILocation(line: 295, column: 44, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1362, file: !141, discriminator: 1)
!1623 = !DILocation(line: 295, column: 32, scope: !1362)
!1624 = !DILocation(line: 297, column: 21, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1362, file: !141, line: 297, column: 17)
!1626 = !DILocation(line: 297, column: 17, scope: !1362)
!1627 = !DILocation(line: 299, column: 35, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !141, line: 299, column: 21)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !141, line: 298, column: 15)
!1630 = !DILocation(line: 299, column: 21, scope: !1629)
!1631 = !DILocation(line: 300, column: 46, scope: !1628)
!1632 = !DILocation(line: 300, column: 36, scope: !1628)
!1633 = !DILocation(line: 300, column: 25, scope: !1628)
!1634 = !DILocation(line: 299, column: 21, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1628, file: !141, discriminator: 1)
!1636 = !DILocation(line: 301, column: 37, scope: !1628)
!1637 = !DILocation(line: 301, column: 59, scope: !1635)
!1638 = !DILocation(line: 301, column: 54, scope: !1628)
!1639 = !DILocation(line: 303, column: 27, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1628, file: !141, line: 302, column: 19)
!1641 = !DILocation(line: 306, column: 32, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1640, file: !141, line: 306, column: 25)
!1643 = !DILocation(line: 308, column: 28, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1642, file: !141, line: 307, column: 23)
!1645 = !DILocation(line: 313, column: 25, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1629, file: !141, line: 313, column: 21)
!1647 = !DILocation(line: 314, column: 21, scope: !1646)
!1648 = !DILocation(line: 314, column: 25, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1646, file: !141, discriminator: 1)
!1650 = !DILocation(line: 314, column: 43, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1646, file: !141, discriminator: 2)
!1652 = !DILocation(line: 314, column: 32, scope: !1649)
!1653 = !DILocation(line: 316, column: 32, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1646, file: !141, line: 315, column: 19)
!1655 = !DILocation(line: 316, column: 28, scope: !1654)
!1656 = !DILocation(line: 316, column: 22, scope: !1654)
!1657 = !DILocation(line: 316, column: 26, scope: !1654)
!1658 = !DILocation(line: 317, column: 23, scope: !1654)
!1659 = !DILocation(line: 318, column: 21, scope: !1654)
!1660 = !DILocation(line: 320, column: 19, scope: !1654)
!1661 = !DILocation(line: 325, column: 9, scope: !1366)
!1662 = !DILocation(line: 326, column: 29, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1366, file: !141, line: 325, column: 9)
!1664 = !DILocation(line: 326, column: 45, scope: !1663)
!1665 = !DILocation(line: 326, column: 27, scope: !1663)
!1666 = !DILocation(line: 326, column: 22, scope: !1663)
!1667 = !DILocation(line: 326, column: 13, scope: !1663)
!1668 = !DILocation(line: 325, column: 9, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1663, file: !141, discriminator: 1)
!1670 = !DILocation(line: 327, column: 56, scope: !1669)
!1671 = !DILocation(line: 327, column: 47, scope: !1669)
!1672 = !DILocation(line: 325, column: 9, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1366, file: !141, discriminator: 2)
!1674 = !DILocation(line: 329, column: 12, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1663, file: !141, line: 328, column: 7)
!1676 = !DILocation(line: 332, column: 23, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1678, file: !141, discriminator: 1)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !141, line: 331, column: 13)
!1679 = !DILocation(line: 332, column: 20, scope: !1677)
!1680 = !DILocation(line: 332, column: 13, scope: !1678)
!1681 = !DILocation(line: 332, column: 40, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1678, file: !141, discriminator: 2)
!1683 = !DILocation(line: 334, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1678, file: !141, line: 333, column: 11)
!1685 = !DILocation(line: 335, column: 25, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1684, file: !141, line: 335, column: 17)
!1687 = !DILocation(line: 335, column: 17, scope: !1684)
!1688 = !DILocation(line: 337, column: 18, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !141, line: 336, column: 15)
!1690 = !DILocation(line: 337, column: 22, scope: !1689)
!1691 = !DILocation(line: 338, column: 19, scope: !1689)
!1692 = !DILocation(line: 339, column: 17, scope: !1689)
!1693 = !DILocation(line: 340, column: 15, scope: !1689)
!1694 = !DILocation(line: 347, column: 5, scope: !1366)
!1695 = distinct !{!1695, !1694, !1696}
!1696 = !DILocation(line: 352, column: 28, scope: !1366)
!1697 = !DILocation(line: 349, column: 25, scope: !1369)
!1698 = !DILocation(line: 349, column: 21, scope: !1369)
!1699 = !DILocation(line: 350, column: 22, scope: !1369)
!1700 = !DILocation(line: 350, column: 10, scope: !1369)
!1701 = !DILocation(line: 350, column: 14, scope: !1369)
!1702 = !DILocation(line: 352, column: 17, scope: !1366)
!1703 = !DILocation(line: 352, column: 24, scope: !1366)
!1704 = !DILocation(line: 351, column: 7, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1369, file: !141, discriminator: 1)
!1706 = !DILocation(line: 356, column: 12, scope: !1397)
!1707 = !DILocation(line: 356, column: 7, scope: !1287)
!1708 = !DILocation(line: 357, column: 37, scope: !1397)
!1709 = !DILocation(line: 79, column: 21, scope: !1376, inlinedAt: !1396)
!1710 = !DILocation(line: 79, column: 36, scope: !1376, inlinedAt: !1396)
!1711 = !DILocation(line: 80, column: 27, scope: !1376, inlinedAt: !1396)
!1712 = !DILocation(line: 80, column: 49, scope: !1376, inlinedAt: !1396)
!1713 = !DILocation(line: 83, column: 10, scope: !1376, inlinedAt: !1396)
!1714 = !DILocation(line: 84, column: 29, scope: !1376, inlinedAt: !1396)
!1715 = !DILocation(line: 84, column: 10, scope: !1376, inlinedAt: !1396)
!1716 = !DILocation(line: 85, column: 10, scope: !1376, inlinedAt: !1396)
!1717 = !DILocation(line: 89, column: 3, scope: !1376, inlinedAt: !1396)
!1718 = !DILocation(line: 91, column: 3, scope: !1376, inlinedAt: !1396)
!1719 = !DILocation(line: 82, column: 18, scope: !1376, inlinedAt: !1396)
!1720 = !DILocation(line: 94, column: 3, scope: !1376, inlinedAt: !1396)
!1721 = !DILocation(line: 96, column: 25, scope: !1389, inlinedAt: !1396)
!1722 = !DILocation(line: 96, column: 21, scope: !1389, inlinedAt: !1396)
!1723 = !DILocation(line: 98, column: 11, scope: !1724, inlinedAt: !1396)
!1724 = distinct !DILexicalBlock(scope: !1389, file: !141, line: 98, column: 11)
!1725 = !DILocation(line: 98, column: 11, scope: !1389, inlinedAt: !1396)
!1726 = !DILocation(line: 100, column: 24, scope: !1727, inlinedAt: !1396)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !141, line: 99, column: 9)
!1728 = !DILocation(line: 100, column: 37, scope: !1729, inlinedAt: !1396)
!1729 = !DILexicalBlockFile(scope: !1727, file: !141, discriminator: 1)
!1730 = !DILocation(line: 100, column: 22, scope: !1727, inlinedAt: !1396)
!1731 = !DILocation(line: 101, column: 19, scope: !1727, inlinedAt: !1396)
!1732 = !DILocation(line: 102, column: 9, scope: !1727, inlinedAt: !1396)
!1733 = !DILocation(line: 104, column: 13, scope: !1734, inlinedAt: !1396)
!1734 = distinct !DILexicalBlock(scope: !1389, file: !141, line: 104, column: 11)
!1735 = !DILocation(line: 104, column: 11, scope: !1389, inlinedAt: !1396)
!1736 = !DILocation(line: 107, column: 9, scope: !1389, inlinedAt: !1396)
!1737 = !DILocation(line: 108, column: 9, scope: !1389, inlinedAt: !1396)
!1738 = !DILocation(line: 109, column: 22, scope: !1389, inlinedAt: !1396)
!1739 = !DILocation(line: 109, column: 7, scope: !1389, inlinedAt: !1396)
!1740 = !DILocation(line: 110, column: 13, scope: !1741, inlinedAt: !1396)
!1741 = distinct !DILexicalBlock(scope: !1389, file: !141, line: 110, column: 11)
!1742 = !DILocation(line: 110, column: 11, scope: !1389, inlinedAt: !1396)
!1743 = !DILocation(line: 113, column: 9, scope: !1389, inlinedAt: !1396)
!1744 = !DILocation(line: 114, column: 7, scope: !1389, inlinedAt: !1396)
!1745 = !DILocation(line: 116, column: 1, scope: !1376, inlinedAt: !1396)
!1746 = !DILocation(line: 357, column: 5, scope: !1397)
!1747 = !DILocation(line: 359, column: 12, scope: !1374)
!1748 = !DILocation(line: 359, column: 7, scope: !1287)
!1749 = !DILocation(line: 361, column: 20, scope: !1372)
!1750 = !DILocation(line: 361, column: 11, scope: !1373)
!1751 = !DILocation(line: 363, column: 21, scope: !1371)
!1752 = !DILocation(line: 365, column: 33, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1754, file: !141, discriminator: 1)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !141, line: 365, column: 11)
!1755 = distinct !DILexicalBlock(scope: !1371, file: !141, line: 365, column: 11)
!1756 = !DILocation(line: 365, column: 11, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1755, file: !141, discriminator: 1)
!1758 = !DILocation(line: 366, column: 17, scope: !1754)
!1759 = distinct !{!1759, !1760, !1761}
!1760 = !DILocation(line: 365, column: 11, scope: !1755)
!1761 = !DILocation(line: 367, column: 15, scope: !1755)
!1762 = !DILocation(line: 370, column: 29, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1373, file: !141, line: 370, column: 11)
!1764 = !DILocation(line: 370, column: 21, scope: !1763)
!1765 = !DILocation(line: 370, column: 50, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1763, file: !141, discriminator: 1)
!1767 = !DILocation(line: 370, column: 41, scope: !1763)
!1768 = !DILocation(line: 371, column: 17, scope: !1763)
!1769 = !DILocation(line: 371, column: 20, scope: !1763)
!1770 = !DILocation(line: 371, column: 9, scope: !1763)
!1771 = !DILocation(line: 373, column: 11, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1373, file: !141, line: 373, column: 11)
!1773 = !DILocation(line: 373, column: 11, scope: !1373)
!1774 = !DILocation(line: 374, column: 31, scope: !1772)
!1775 = !DILocation(line: 374, column: 62, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1772, file: !141, discriminator: 1)
!1777 = !DILocation(line: 374, column: 50, scope: !1772)
!1778 = !DILocation(line: 376, column: 25, scope: !1772)
!1779 = !DILocation(line: 374, column: 23, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1772, file: !141, discriminator: 3)
!1781 = !DILocation(line: 374, column: 17, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1772, file: !141, discriminator: 4)
!1783 = !DILocation(line: 374, column: 20, scope: !1782)
!1784 = !DILocation(line: 374, column: 9, scope: !1782)
!1785 = !DILocation(line: 378, column: 16, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1373, file: !141, line: 378, column: 11)
!1787 = !DILocation(line: 378, column: 11, scope: !1373)
!1788 = !DILocation(line: 380, column: 40, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !141, line: 380, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !141, line: 379, column: 9)
!1791 = !DILocation(line: 381, column: 21, scope: !1789)
!1792 = !DILocation(line: 381, column: 24, scope: !1789)
!1793 = !DILocation(line: 381, column: 13, scope: !1789)
!1794 = !DILocation(line: 382, column: 19, scope: !1790)
!1795 = !DILocation(line: 382, column: 22, scope: !1790)
!1796 = !DILocation(line: 383, column: 9, scope: !1790)
!1797 = !DILocation(line: 386, column: 12, scope: !1287)
!1798 = !DILocation(line: 389, column: 1, scope: !1287)
!1799 = !DILocation(line: 365, column: 56, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1754, file: !141, discriminator: 2)
!1801 = !DILocation(line: 243, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1358, file: !141, line: 242, column: 11)
!1803 = distinct !DISubprogram(name: "human_options", scope: !141, file: !141, line: 462, type: !1804, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1807)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!129, !53, !99, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!1807 = !{!1808, !1809, !1810, !1811}
!1808 = !DILocalVariable(name: "spec", arg: 1, scope: !1803, file: !141, line: 462, type: !53)
!1809 = !DILocalVariable(name: "opts", arg: 2, scope: !1803, file: !141, line: 462, type: !99)
!1810 = !DILocalVariable(name: "block_size", arg: 3, scope: !1803, file: !141, line: 462, type: !1806)
!1811 = !DILocalVariable(name: "e", scope: !1803, file: !141, line: 464, type: !1812)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !130, line: 39, baseType: !129)
!1813 = !DILocation(line: 462, column: 28, scope: !1803)
!1814 = !DILocation(line: 462, column: 39, scope: !1803)
!1815 = !DILocation(line: 462, column: 56, scope: !1803)
!1816 = !DILocalVariable(name: "spec", arg: 1, scope: !1817, file: !141, line: 412, type: !53)
!1817 = distinct !DISubprogram(name: "humblock", scope: !141, file: !141, line: 412, type: !1818, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!1812, !53, !1806, !99}
!1820 = !{!1816, !1821, !1822, !1823, !1824, !1825, !1830}
!1821 = !DILocalVariable(name: "block_size", arg: 2, scope: !1817, file: !141, line: 412, type: !1806)
!1822 = !DILocalVariable(name: "options", arg: 3, scope: !1817, file: !141, line: 412, type: !99)
!1823 = !DILocalVariable(name: "i", scope: !1817, file: !141, line: 414, type: !87)
!1824 = !DILocalVariable(name: "opts", scope: !1817, file: !141, line: 415, type: !87)
!1825 = !DILocalVariable(name: "ptr", scope: !1826, file: !141, line: 436, type: !42)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !141, line: 435, column: 9)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !141, line: 429, column: 11)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !141, line: 422, column: 5)
!1829 = distinct !DILexicalBlock(scope: !1817, file: !141, line: 417, column: 7)
!1830 = !DILocalVariable(name: "e", scope: !1826, file: !141, line: 437, type: !1812)
!1831 = !DILocation(line: 412, column: 23, scope: !1817, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 464, column: 20, scope: !1803)
!1833 = !DILocation(line: 412, column: 40, scope: !1817, inlinedAt: !1832)
!1834 = !DILocation(line: 412, column: 57, scope: !1817, inlinedAt: !1832)
!1835 = !DILocation(line: 415, column: 7, scope: !1817, inlinedAt: !1832)
!1836 = !DILocation(line: 417, column: 9, scope: !1829, inlinedAt: !1832)
!1837 = !DILocation(line: 418, column: 7, scope: !1829, inlinedAt: !1832)
!1838 = !DILocation(line: 418, column: 20, scope: !1839, inlinedAt: !1832)
!1839 = !DILexicalBlockFile(scope: !1829, file: !141, discriminator: 1)
!1840 = !DILocation(line: 418, column: 18, scope: !1839, inlinedAt: !1832)
!1841 = !DILocation(line: 419, column: 7, scope: !1829, inlinedAt: !1832)
!1842 = !DILocation(line: 419, column: 20, scope: !1839, inlinedAt: !1832)
!1843 = !DILocation(line: 419, column: 18, scope: !1839, inlinedAt: !1832)
!1844 = !DILocation(line: 417, column: 7, scope: !1845, inlinedAt: !1832)
!1845 = !DILexicalBlockFile(scope: !1817, file: !141, discriminator: 1)
!1846 = !DILocation(line: 408, column: 10, scope: !1847, inlinedAt: !1850)
!1847 = distinct !DISubprogram(name: "default_block_size", scope: !141, file: !141, line: 406, type: !1848, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !107)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!878}
!1850 = distinct !DILocation(line: 420, column: 19, scope: !1829, inlinedAt: !1832)
!1851 = !DILocation(line: 420, column: 5, scope: !1829, inlinedAt: !1832)
!1852 = !DILocation(line: 423, column: 11, scope: !1853, inlinedAt: !1832)
!1853 = distinct !DILexicalBlock(scope: !1828, file: !141, line: 423, column: 11)
!1854 = !DILocation(line: 423, column: 17, scope: !1853, inlinedAt: !1832)
!1855 = !DILocation(line: 426, column: 15, scope: !1856, inlinedAt: !1832)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !141, line: 424, column: 9)
!1857 = !DILocation(line: 423, column: 11, scope: !1828, inlinedAt: !1832)
!1858 = !DILocation(line: 429, column: 21, scope: !1827, inlinedAt: !1832)
!1859 = !DILocation(line: 414, column: 7, scope: !1817, inlinedAt: !1832)
!1860 = !DILocation(line: 429, column: 13, scope: !1827, inlinedAt: !1832)
!1861 = !DILocation(line: 429, column: 11, scope: !1828, inlinedAt: !1832)
!1862 = !DILocation(line: 431, column: 19, scope: !1863, inlinedAt: !1832)
!1863 = distinct !DILexicalBlock(scope: !1827, file: !141, line: 430, column: 9)
!1864 = !DILocation(line: 431, column: 16, scope: !1863, inlinedAt: !1832)
!1865 = !DILocation(line: 433, column: 9, scope: !1863, inlinedAt: !1832)
!1866 = !DILocation(line: 436, column: 11, scope: !1826, inlinedAt: !1832)
!1867 = !DIExpression(DW_OP_deref)
!1868 = !DILocation(line: 436, column: 17, scope: !1826, inlinedAt: !1832)
!1869 = !DILocation(line: 437, column: 28, scope: !1826, inlinedAt: !1832)
!1870 = !DILocation(line: 437, column: 24, scope: !1826, inlinedAt: !1832)
!1871 = !DILocation(line: 439, column: 17, scope: !1872, inlinedAt: !1832)
!1872 = distinct !DILexicalBlock(scope: !1826, file: !141, line: 439, column: 15)
!1873 = !DILocation(line: 439, column: 15, scope: !1826, inlinedAt: !1832)
!1874 = !DILocation(line: 444, column: 28, scope: !1875, inlinedAt: !1832)
!1875 = !DILexicalBlockFile(scope: !1876, file: !141, discriminator: 1)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !141, line: 444, column: 11)
!1877 = distinct !DILexicalBlock(scope: !1826, file: !141, line: 444, column: 11)
!1878 = !DILocation(line: 444, column: 34, scope: !1875, inlinedAt: !1832)
!1879 = !DILocation(line: 444, column: 11, scope: !1880, inlinedAt: !1832)
!1880 = !DILexicalBlockFile(scope: !1877, file: !141, discriminator: 3)
!1881 = distinct !{!1881, !1882, !1883}
!1882 = !DILocation(line: 444, column: 11, scope: !1877)
!1883 = !DILocation(line: 453, column: 15, scope: !1877)
!1884 = !DILocation(line: 445, column: 22, scope: !1885, inlinedAt: !1832)
!1885 = distinct !DILexicalBlock(scope: !1876, file: !141, line: 445, column: 17)
!1886 = !DILocation(line: 444, column: 56, scope: !1887, inlinedAt: !1832)
!1887 = !DILexicalBlockFile(scope: !1876, file: !141, discriminator: 4)
!1888 = !DILocation(line: 445, column: 17, scope: !1876, inlinedAt: !1832)
!1889 = !DILocation(line: 447, column: 22, scope: !1890, inlinedAt: !1832)
!1890 = distinct !DILexicalBlock(scope: !1885, file: !141, line: 446, column: 15)
!1891 = !DILocation(line: 448, column: 21, scope: !1892, inlinedAt: !1832)
!1892 = distinct !DILexicalBlock(scope: !1890, file: !141, line: 448, column: 21)
!1893 = !DILocation(line: 448, column: 29, scope: !1892, inlinedAt: !1832)
!1894 = !DILocation(line: 449, column: 24, scope: !1892, inlinedAt: !1832)
!1895 = !DILocation(line: 448, column: 21, scope: !1890, inlinedAt: !1832)
!1896 = !DILocation(line: 450, column: 36, scope: !1897, inlinedAt: !1832)
!1897 = distinct !DILexicalBlock(scope: !1890, file: !141, line: 450, column: 21)
!1898 = !DILocation(line: 450, column: 39, scope: !1899, inlinedAt: !1832)
!1899 = !DILexicalBlockFile(scope: !1897, file: !141, discriminator: 1)
!1900 = !DILocation(line: 450, column: 47, scope: !1899, inlinedAt: !1832)
!1901 = !DILocation(line: 450, column: 21, scope: !1902, inlinedAt: !1832)
!1902 = !DILexicalBlockFile(scope: !1890, file: !141, discriminator: 1)
!1903 = !DILocation(line: 451, column: 24, scope: !1897, inlinedAt: !1832)
!1904 = !DILocation(line: 451, column: 19, scope: !1897, inlinedAt: !1832)
!1905 = !DILocation(line: 454, column: 9, scope: !1827, inlinedAt: !1832)
!1906 = !DILocation(line: 441, column: 24, scope: !1907, inlinedAt: !1832)
!1907 = distinct !DILexicalBlock(scope: !1872, file: !141, line: 440, column: 13)
!1908 = !{!946, !946, i64 0}
!1909 = !DILocation(line: 457, column: 12, scope: !1817, inlinedAt: !1832)
!1910 = !DILocation(line: 458, column: 3, scope: !1817, inlinedAt: !1832)
!1911 = !DILocation(line: 464, column: 16, scope: !1803)
!1912 = !DILocation(line: 465, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1803, file: !141, line: 465, column: 7)
!1914 = !DILocation(line: 465, column: 19, scope: !1913)
!1915 = !DILocation(line: 465, column: 7, scope: !1803)
!1916 = !DILocation(line: 408, column: 10, scope: !1847, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 467, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1913, file: !141, line: 466, column: 5)
!1919 = !DILocation(line: 467, column: 19, scope: !1918)
!1920 = !DILocation(line: 469, column: 5, scope: !1918)
!1921 = !DILocation(line: 470, column: 3, scope: !1803)
!1922 = distinct !DISubprogram(name: "set_program_name", scope: !161, file: !161, line: 39, type: !64, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !157, variables: !1923)
!1923 = !{!1924, !1925, !1926}
!1924 = !DILocalVariable(name: "argv0", arg: 1, scope: !1922, file: !161, line: 39, type: !53)
!1925 = !DILocalVariable(name: "slash", scope: !1922, file: !161, line: 46, type: !53)
!1926 = !DILocalVariable(name: "base", scope: !1922, file: !161, line: 47, type: !53)
!1927 = !DILocation(line: 39, column: 31, scope: !1922)
!1928 = !DILocation(line: 51, column: 13, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1922, file: !161, line: 51, column: 7)
!1930 = !DILocation(line: 51, column: 7, scope: !1922)
!1931 = !DILocation(line: 55, column: 14, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !161, line: 52, column: 5)
!1933 = !DILocation(line: 54, column: 7, scope: !1932)
!1934 = !DILocation(line: 56, column: 7, scope: !1932)
!1935 = !DILocation(line: 59, column: 11, scope: !1922)
!1936 = !DILocation(line: 46, column: 15, scope: !1922)
!1937 = !DILocation(line: 60, column: 17, scope: !1922)
!1938 = !DILocation(line: 60, column: 33, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1922, file: !161, discriminator: 1)
!1940 = !DILocation(line: 60, column: 11, scope: !1922)
!1941 = !DILocation(line: 47, column: 15, scope: !1922)
!1942 = !DILocation(line: 61, column: 12, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1922, file: !161, line: 61, column: 7)
!1944 = !DILocation(line: 61, column: 20, scope: !1943)
!1945 = !DILocation(line: 61, column: 25, scope: !1943)
!1946 = !DILocation(line: 61, column: 28, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1943, file: !161, discriminator: 1)
!1948 = !DILocation(line: 61, column: 61, scope: !1947)
!1949 = !DILocation(line: 61, column: 7, scope: !1939)
!1950 = !DILocation(line: 64, column: 11, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !161, line: 64, column: 11)
!1952 = distinct !DILexicalBlock(scope: !1943, file: !161, line: 62, column: 5)
!1953 = !DILocation(line: 64, column: 36, scope: !1951)
!1954 = !DILocation(line: 64, column: 11, scope: !1952)
!1955 = !DILocation(line: 66, column: 24, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !161, line: 65, column: 9)
!1957 = !DILocation(line: 70, column: 41, scope: !1956)
!1958 = !DILocation(line: 72, column: 9, scope: !1956)
!1959 = !DILocation(line: 84, column: 16, scope: !1922)
!1960 = !DILocation(line: 90, column: 27, scope: !1922)
!1961 = !DILocation(line: 92, column: 1, scope: !1922)
!1962 = distinct !DISubprogram(name: "clone_quoting_options", scope: !192, file: !192, line: 114, type: !1963, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !1966)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1965, !1965}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1966 = !{!1967, !1968, !1969}
!1967 = !DILocalVariable(name: "o", arg: 1, scope: !1962, file: !192, line: 114, type: !1965)
!1968 = !DILocalVariable(name: "e", scope: !1962, file: !192, line: 116, type: !87)
!1969 = !DILocalVariable(name: "p", scope: !1962, file: !192, line: 117, type: !1965)
!1970 = !DILocation(line: 114, column: 48, scope: !1962)
!1971 = !DILocation(line: 116, column: 11, scope: !1962)
!1972 = !DILocation(line: 116, column: 7, scope: !1962)
!1973 = !DILocation(line: 117, column: 40, scope: !1962)
!1974 = !DILocation(line: 117, column: 40, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1962, file: !192, discriminator: 3)
!1976 = !DILocation(line: 117, column: 31, scope: !1975)
!1977 = !DILocation(line: 117, column: 27, scope: !1962)
!1978 = !DILocation(line: 119, column: 9, scope: !1962)
!1979 = !DILocation(line: 120, column: 3, scope: !1962)
!1980 = distinct !DISubprogram(name: "get_quoting_style", scope: !192, file: !192, line: 125, type: !1981, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !1985)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!5, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1985 = !{!1986}
!1986 = !DILocalVariable(name: "o", arg: 1, scope: !1980, file: !192, line: 125, type: !1983)
!1987 = !DILocation(line: 125, column: 50, scope: !1980)
!1988 = !DILocation(line: 127, column: 11, scope: !1980)
!1989 = !DILocation(line: 127, column: 46, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1980, file: !192, discriminator: 3)
!1991 = !{!1992, !693, i64 0}
!1992 = !{!"quoting_options", !693, i64 0, !781, i64 4, !693, i64 8, !692, i64 40, !692, i64 48}
!1993 = !DILocation(line: 127, column: 3, scope: !1990)
!1994 = distinct !DISubprogram(name: "set_quoting_style", scope: !192, file: !192, line: 133, type: !1995, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1965, !5}
!1997 = !{!1998, !1999}
!1998 = !DILocalVariable(name: "o", arg: 1, scope: !1994, file: !192, line: 133, type: !1965)
!1999 = !DILocalVariable(name: "s", arg: 2, scope: !1994, file: !192, line: 133, type: !5)
!2000 = !DILocation(line: 133, column: 44, scope: !1994)
!2001 = !DILocation(line: 133, column: 66, scope: !1994)
!2002 = !DILocation(line: 135, column: 4, scope: !1994)
!2003 = !DILocation(line: 135, column: 39, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1994, file: !192, discriminator: 3)
!2005 = !DILocation(line: 135, column: 45, scope: !2004)
!2006 = !DILocation(line: 136, column: 1, scope: !1994)
!2007 = distinct !DISubprogram(name: "set_char_quoting", scope: !192, file: !192, line: 144, type: !2008, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!87, !1965, !43, !87}
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2017, !2018}
!2011 = !DILocalVariable(name: "o", arg: 1, scope: !2007, file: !192, line: 144, type: !1965)
!2012 = !DILocalVariable(name: "c", arg: 2, scope: !2007, file: !192, line: 144, type: !43)
!2013 = !DILocalVariable(name: "i", arg: 3, scope: !2007, file: !192, line: 144, type: !87)
!2014 = !DILocalVariable(name: "uc", scope: !2007, file: !192, line: 146, type: !52)
!2015 = !DILocalVariable(name: "p", scope: !2007, file: !192, line: 147, type: !2016)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!2017 = !DILocalVariable(name: "shift", scope: !2007, file: !192, line: 149, type: !87)
!2018 = !DILocalVariable(name: "r", scope: !2007, file: !192, line: 150, type: !87)
!2019 = !DILocation(line: 144, column: 43, scope: !2007)
!2020 = !DILocation(line: 144, column: 51, scope: !2007)
!2021 = !DILocation(line: 144, column: 58, scope: !2007)
!2022 = !DILocation(line: 146, column: 17, scope: !2007)
!2023 = !DILocation(line: 148, column: 6, scope: !2007)
!2024 = !DILocation(line: 148, column: 62, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2007, file: !192, discriminator: 3)
!2026 = !DILocation(line: 148, column: 57, scope: !2025)
!2027 = !DILocation(line: 147, column: 17, scope: !2007)
!2028 = !DILocation(line: 149, column: 18, scope: !2007)
!2029 = !DILocation(line: 149, column: 15, scope: !2007)
!2030 = !DILocation(line: 149, column: 7, scope: !2007)
!2031 = !DILocation(line: 150, column: 12, scope: !2007)
!2032 = !DILocation(line: 150, column: 15, scope: !2007)
!2033 = !DILocation(line: 150, column: 25, scope: !2007)
!2034 = !DILocation(line: 150, column: 7, scope: !2007)
!2035 = !DILocation(line: 151, column: 13, scope: !2007)
!2036 = !DILocation(line: 151, column: 18, scope: !2007)
!2037 = !DILocation(line: 151, column: 23, scope: !2007)
!2038 = !DILocation(line: 151, column: 6, scope: !2007)
!2039 = !DILocation(line: 152, column: 3, scope: !2007)
!2040 = distinct !DISubprogram(name: "set_quoting_flags", scope: !192, file: !192, line: 160, type: !2041, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!87, !1965, !87}
!2043 = !{!2044, !2045, !2046}
!2044 = !DILocalVariable(name: "o", arg: 1, scope: !2040, file: !192, line: 160, type: !1965)
!2045 = !DILocalVariable(name: "i", arg: 2, scope: !2040, file: !192, line: 160, type: !87)
!2046 = !DILocalVariable(name: "r", scope: !2040, file: !192, line: 162, type: !87)
!2047 = !DILocation(line: 160, column: 44, scope: !2040)
!2048 = !DILocation(line: 160, column: 51, scope: !2040)
!2049 = !DILocation(line: 163, column: 8, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2040, file: !192, line: 163, column: 7)
!2051 = !DILocation(line: 163, column: 7, scope: !2040)
!2052 = !DILocation(line: 165, column: 10, scope: !2040)
!2053 = !{!1992, !781, i64 4}
!2054 = !DILocation(line: 162, column: 7, scope: !2040)
!2055 = !DILocation(line: 166, column: 12, scope: !2040)
!2056 = !DILocation(line: 167, column: 3, scope: !2040)
!2057 = distinct !DISubprogram(name: "set_custom_quoting", scope: !192, file: !192, line: 171, type: !2058, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1965, !53, !53}
!2060 = !{!2061, !2062, !2063}
!2061 = !DILocalVariable(name: "o", arg: 1, scope: !2057, file: !192, line: 171, type: !1965)
!2062 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2057, file: !192, line: 172, type: !53)
!2063 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2057, file: !192, line: 172, type: !53)
!2064 = !DILocation(line: 171, column: 45, scope: !2057)
!2065 = !DILocation(line: 172, column: 33, scope: !2057)
!2066 = !DILocation(line: 172, column: 57, scope: !2057)
!2067 = !DILocation(line: 174, column: 8, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2057, file: !192, line: 174, column: 7)
!2069 = !DILocation(line: 174, column: 7, scope: !2057)
!2070 = !DILocation(line: 176, column: 6, scope: !2057)
!2071 = !DILocation(line: 176, column: 12, scope: !2057)
!2072 = !DILocation(line: 177, column: 8, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2057, file: !192, line: 177, column: 7)
!2074 = !DILocation(line: 177, column: 23, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2073, file: !192, discriminator: 1)
!2076 = !DILocation(line: 177, column: 19, scope: !2073)
!2077 = !DILocation(line: 178, column: 5, scope: !2073)
!2078 = !DILocation(line: 179, column: 6, scope: !2057)
!2079 = !DILocation(line: 179, column: 17, scope: !2057)
!2080 = !{!1992, !692, i64 40}
!2081 = !DILocation(line: 180, column: 6, scope: !2057)
!2082 = !DILocation(line: 180, column: 18, scope: !2057)
!2083 = !{!1992, !692, i64 48}
!2084 = !DILocation(line: 181, column: 1, scope: !2057)
!2085 = distinct !DISubprogram(name: "quotearg_buffer", scope: !192, file: !192, line: 776, type: !2086, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!45, !42, !45, !53, !45, !1983}
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!2089 = !DILocalVariable(name: "buffer", arg: 1, scope: !2085, file: !192, line: 776, type: !42)
!2090 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2085, file: !192, line: 776, type: !45)
!2091 = !DILocalVariable(name: "arg", arg: 3, scope: !2085, file: !192, line: 777, type: !53)
!2092 = !DILocalVariable(name: "argsize", arg: 4, scope: !2085, file: !192, line: 777, type: !45)
!2093 = !DILocalVariable(name: "o", arg: 5, scope: !2085, file: !192, line: 778, type: !1983)
!2094 = !DILocalVariable(name: "p", scope: !2085, file: !192, line: 780, type: !1983)
!2095 = !DILocalVariable(name: "e", scope: !2085, file: !192, line: 781, type: !87)
!2096 = !DILocalVariable(name: "r", scope: !2085, file: !192, line: 782, type: !45)
!2097 = !DILocation(line: 776, column: 24, scope: !2085)
!2098 = !DILocation(line: 776, column: 39, scope: !2085)
!2099 = !DILocation(line: 777, column: 30, scope: !2085)
!2100 = !DILocation(line: 777, column: 42, scope: !2085)
!2101 = !DILocation(line: 778, column: 48, scope: !2085)
!2102 = !DILocation(line: 780, column: 37, scope: !2085)
!2103 = !DILocation(line: 780, column: 33, scope: !2085)
!2104 = !DILocation(line: 781, column: 11, scope: !2085)
!2105 = !DILocation(line: 781, column: 7, scope: !2085)
!2106 = !DILocation(line: 783, column: 43, scope: !2085)
!2107 = !DILocation(line: 783, column: 53, scope: !2085)
!2108 = !DILocation(line: 783, column: 60, scope: !2085)
!2109 = !DILocation(line: 784, column: 43, scope: !2085)
!2110 = !DILocation(line: 784, column: 58, scope: !2085)
!2111 = !DILocation(line: 782, column: 14, scope: !2085)
!2112 = !DILocation(line: 782, column: 10, scope: !2085)
!2113 = !DILocation(line: 785, column: 9, scope: !2085)
!2114 = !DILocation(line: 786, column: 3, scope: !2085)
!2115 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !192, file: !192, line: 248, type: !2116, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2120)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!45, !42, !45, !53, !45, !5, !87, !2118, !53, !53}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2145, !2146, !2147, !2148, !2149, !2152, !2153, !2168, !2171, !2172, !2179}
!2121 = !DILocalVariable(name: "buffer", arg: 1, scope: !2115, file: !192, line: 248, type: !42)
!2122 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2115, file: !192, line: 248, type: !45)
!2123 = !DILocalVariable(name: "arg", arg: 3, scope: !2115, file: !192, line: 249, type: !53)
!2124 = !DILocalVariable(name: "argsize", arg: 4, scope: !2115, file: !192, line: 249, type: !45)
!2125 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2115, file: !192, line: 250, type: !5)
!2126 = !DILocalVariable(name: "flags", arg: 6, scope: !2115, file: !192, line: 250, type: !87)
!2127 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2115, file: !192, line: 251, type: !2118)
!2128 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2115, file: !192, line: 252, type: !53)
!2129 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2115, file: !192, line: 253, type: !53)
!2130 = !DILocalVariable(name: "i", scope: !2115, file: !192, line: 255, type: !45)
!2131 = !DILocalVariable(name: "len", scope: !2115, file: !192, line: 256, type: !45)
!2132 = !DILocalVariable(name: "orig_buffersize", scope: !2115, file: !192, line: 257, type: !45)
!2133 = !DILocalVariable(name: "quote_string", scope: !2115, file: !192, line: 258, type: !53)
!2134 = !DILocalVariable(name: "quote_string_len", scope: !2115, file: !192, line: 259, type: !45)
!2135 = !DILocalVariable(name: "backslash_escapes", scope: !2115, file: !192, line: 260, type: !59)
!2136 = !DILocalVariable(name: "unibyte_locale", scope: !2115, file: !192, line: 261, type: !59)
!2137 = !DILocalVariable(name: "elide_outer_quotes", scope: !2115, file: !192, line: 262, type: !59)
!2138 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2115, file: !192, line: 263, type: !59)
!2139 = !DILocalVariable(name: "encountered_single_quote", scope: !2115, file: !192, line: 264, type: !59)
!2140 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2115, file: !192, line: 265, type: !59)
!2141 = !DILocalVariable(name: "c", scope: !2142, file: !192, line: 394, type: !52)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !192, line: 393, column: 5)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !192, line: 392, column: 3)
!2144 = distinct !DILexicalBlock(scope: !2115, file: !192, line: 392, column: 3)
!2145 = !DILocalVariable(name: "esc", scope: !2142, file: !192, line: 395, type: !52)
!2146 = !DILocalVariable(name: "is_right_quote", scope: !2142, file: !192, line: 396, type: !59)
!2147 = !DILocalVariable(name: "escaping", scope: !2142, file: !192, line: 397, type: !59)
!2148 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2142, file: !192, line: 398, type: !59)
!2149 = !DILocalVariable(name: "m", scope: !2150, file: !192, line: 602, type: !45)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 600, column: 11)
!2151 = distinct !DILexicalBlock(scope: !2142, file: !192, line: 418, column: 9)
!2152 = !DILocalVariable(name: "printable", scope: !2150, file: !192, line: 604, type: !59)
!2153 = !DILocalVariable(name: "mbstate", scope: !2154, file: !192, line: 613, type: !2156)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !192, line: 612, column: 15)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !192, line: 606, column: 17)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2157, line: 107, baseType: !2158)
!2157 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2157, line: 95, baseType: !2159)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2157, line: 83, size: 64, elements: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2159, file: !2157, line: 85, baseType: !87, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2159, file: !2157, line: 94, baseType: !2163, size: 32, offset: 32)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !2157, line: 86, size: 32, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2163, file: !2157, line: 89, baseType: !205, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2163, file: !2157, line: 93, baseType: !2167, size: 32)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !101)
!2168 = !DILocalVariable(name: "w", scope: !2169, file: !192, line: 623, type: !2170)
!2169 = distinct !DILexicalBlock(scope: !2154, file: !192, line: 622, column: 19)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !46, line: 90, baseType: !87)
!2171 = !DILocalVariable(name: "bytes", scope: !2169, file: !192, line: 624, type: !45)
!2172 = !DILocalVariable(name: "j", scope: !2173, file: !192, line: 649, type: !45)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !192, line: 648, column: 27)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !192, line: 646, column: 29)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !192, line: 641, column: 23)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !192, line: 633, column: 30)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !192, line: 628, column: 30)
!2178 = distinct !DILexicalBlock(scope: !2169, file: !192, line: 626, column: 25)
!2179 = !DILocalVariable(name: "ilim", scope: !2180, file: !192, line: 676, type: !45)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !192, line: 673, column: 15)
!2181 = distinct !DILexicalBlock(scope: !2150, file: !192, line: 672, column: 17)
!2182 = !DILocation(line: 248, column: 33, scope: !2115)
!2183 = !DILocation(line: 248, column: 48, scope: !2115)
!2184 = !DILocation(line: 249, column: 39, scope: !2115)
!2185 = !DILocation(line: 249, column: 51, scope: !2115)
!2186 = !DILocation(line: 250, column: 46, scope: !2115)
!2187 = !DILocation(line: 250, column: 65, scope: !2115)
!2188 = !DILocation(line: 251, column: 47, scope: !2115)
!2189 = !DILocation(line: 252, column: 39, scope: !2115)
!2190 = !DILocation(line: 253, column: 39, scope: !2115)
!2191 = !DILocation(line: 256, column: 10, scope: !2115)
!2192 = !DILocation(line: 257, column: 10, scope: !2115)
!2193 = !DILocation(line: 258, column: 15, scope: !2115)
!2194 = !DILocation(line: 259, column: 10, scope: !2115)
!2195 = !DILocation(line: 260, column: 8, scope: !2115)
!2196 = !DILocation(line: 261, column: 25, scope: !2115)
!2197 = !DILocation(line: 261, column: 36, scope: !2115)
!2198 = !DILocation(line: 262, column: 8, scope: !2115)
!2199 = !DILocation(line: 263, column: 8, scope: !2115)
!2200 = !DILocation(line: 264, column: 8, scope: !2115)
!2201 = !DILocation(line: 265, column: 8, scope: !2115)
!2202 = !DILocation(line: 265, column: 3, scope: !2115)
!2203 = !DILocation(line: 308, column: 3, scope: !2115)
!2204 = !DILocation(line: 315, column: 11, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2115, file: !192, line: 309, column: 5)
!2206 = !DILocation(line: 315, column: 12, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2205, file: !192, line: 315, column: 11)
!2208 = !DILocation(line: 316, column: 9, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2210, file: !192, discriminator: 1)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !192, line: 316, column: 9)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !192, line: 316, column: 9)
!2212 = !DILocation(line: 316, column: 9, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2211, file: !192, discriminator: 1)
!2214 = !DILocation(line: 316, column: 9, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2210, file: !192, discriminator: 2)
!2216 = !DILocation(line: 354, column: 26, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !192, line: 332, column: 11)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !192, line: 331, column: 13)
!2219 = distinct !DILexicalBlock(scope: !2205, file: !192, line: 330, column: 7)
!2220 = !DILocation(line: 355, column: 27, scope: !2217)
!2221 = !DILocation(line: 356, column: 11, scope: !2217)
!2222 = !DILocation(line: 357, column: 14, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !192, line: 357, column: 13)
!2224 = !DILocation(line: 357, column: 13, scope: !2219)
!2225 = !DILocation(line: 358, column: 43, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2227, file: !192, discriminator: 1)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !192, line: 358, column: 11)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !192, line: 358, column: 11)
!2229 = !DILocation(line: 358, column: 11, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2228, file: !192, discriminator: 1)
!2231 = !DILocation(line: 359, column: 13, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2233, file: !192, discriminator: 1)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !192, line: 359, column: 13)
!2234 = distinct !DILexicalBlock(scope: !2227, file: !192, line: 359, column: 13)
!2235 = !DILocation(line: 359, column: 13, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2234, file: !192, discriminator: 1)
!2237 = !DILocation(line: 359, column: 13, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2233, file: !192, discriminator: 2)
!2239 = !DILocation(line: 359, column: 13, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2234, file: !192, discriminator: 3)
!2241 = !DILocation(line: 358, column: 70, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2227, file: !192, discriminator: 2)
!2243 = distinct !{!2243, !2244, !2245}
!2244 = !DILocation(line: 358, column: 11, scope: !2228)
!2245 = !DILocation(line: 359, column: 13, scope: !2228)
!2246 = !DILocation(line: 362, column: 28, scope: !2219)
!2247 = !DILocation(line: 364, column: 7, scope: !2205)
!2248 = !DILocation(line: 367, column: 7, scope: !2205)
!2249 = !DILocation(line: 370, column: 7, scope: !2205)
!2250 = !DILocation(line: 373, column: 12, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2205, file: !192, line: 373, column: 11)
!2252 = !DILocation(line: 373, column: 11, scope: !2205)
!2253 = !DILocation(line: 378, column: 12, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2205, file: !192, line: 378, column: 11)
!2255 = !DILocation(line: 378, column: 11, scope: !2205)
!2256 = !DILocation(line: 379, column: 9, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2258, file: !192, discriminator: 1)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !192, line: 379, column: 9)
!2259 = distinct !DILexicalBlock(scope: !2254, file: !192, line: 379, column: 9)
!2260 = !DILocation(line: 379, column: 9, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2259, file: !192, discriminator: 1)
!2262 = !DILocation(line: 379, column: 9, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2258, file: !192, discriminator: 2)
!2264 = !DILocation(line: 386, column: 7, scope: !2205)
!2265 = !DILocation(line: 389, column: 7, scope: !2205)
!2266 = !DILocation(line: 255, column: 10, scope: !2115)
!2267 = !DILocation(line: 392, column: 8, scope: !2144)
!2268 = !DILocation(line: 392, column: 27, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2143, file: !192, discriminator: 1)
!2270 = !DILocation(line: 392, column: 19, scope: !2269)
!2271 = !DILocation(line: 392, column: 60, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2143, file: !192, discriminator: 3)
!2273 = !DILocation(line: 392, column: 3, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2144, file: !192, discriminator: 4)
!2275 = !DILocation(line: 392, column: 41, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2143, file: !192, discriminator: 2)
!2277 = !DILocation(line: 392, column: 48, scope: !2276)
!2278 = !DILocation(line: 396, column: 12, scope: !2142)
!2279 = !DILocation(line: 397, column: 12, scope: !2142)
!2280 = !DILocation(line: 398, column: 12, scope: !2142)
!2281 = !DILocation(line: 401, column: 11, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2142, file: !192, line: 400, column: 11)
!2283 = !DILocation(line: 403, column: 17, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2282, file: !192, discriminator: 1)
!2285 = !DILocation(line: 404, column: 39, scope: !2282)
!2286 = !DILocation(line: 408, column: 32, scope: !2282)
!2287 = !DILocation(line: 404, column: 19, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2282, file: !192, discriminator: 2)
!2289 = !DILocation(line: 404, column: 15, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2282, file: !192, discriminator: 4)
!2291 = !DILocation(line: 409, column: 11, scope: !2282)
!2292 = !DILocation(line: 409, column: 26, scope: !2284)
!2293 = !DILocation(line: 409, column: 14, scope: !2284)
!2294 = !DILocation(line: 400, column: 11, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2142, file: !192, discriminator: 1)
!2296 = !DILocation(line: 416, column: 11, scope: !2142)
!2297 = !DILocation(line: 394, column: 21, scope: !2142)
!2298 = !DILocation(line: 417, column: 7, scope: !2142)
!2299 = !DILocation(line: 420, column: 15, scope: !2151)
!2300 = !DILocation(line: 422, column: 15, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2302, file: !192, discriminator: 1)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !192, line: 422, column: 15)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !192, line: 421, column: 13)
!2304 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 420, column: 15)
!2305 = !DILocation(line: 422, column: 15, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2307, file: !192, discriminator: 4)
!2307 = distinct !DILexicalBlock(scope: !2302, file: !192, line: 422, column: 15)
!2308 = !DILocation(line: 422, column: 15, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2307, file: !192, discriminator: 3)
!2310 = !DILocation(line: 422, column: 15, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2312, file: !192, discriminator: 6)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !192, line: 422, column: 15)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !192, line: 422, column: 15)
!2314 = distinct !DILexicalBlock(scope: !2307, file: !192, line: 422, column: 15)
!2315 = !DILocation(line: 422, column: 15, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2313, file: !192, discriminator: 6)
!2317 = !DILocation(line: 422, column: 15, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2312, file: !192, discriminator: 7)
!2319 = !DILocation(line: 422, column: 15, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2313, file: !192, discriminator: 8)
!2321 = !DILocation(line: 422, column: 15, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2323, file: !192, discriminator: 11)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !192, line: 422, column: 15)
!2324 = distinct !DILexicalBlock(scope: !2314, file: !192, line: 422, column: 15)
!2325 = !DILocation(line: 422, column: 15, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2324, file: !192, discriminator: 11)
!2327 = !DILocation(line: 422, column: 15, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2323, file: !192, discriminator: 12)
!2329 = !DILocation(line: 422, column: 15, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2324, file: !192, discriminator: 13)
!2331 = !DILocation(line: 422, column: 15, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2333, file: !192, discriminator: 16)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !192, line: 422, column: 15)
!2334 = distinct !DILexicalBlock(scope: !2314, file: !192, line: 422, column: 15)
!2335 = !DILocation(line: 422, column: 15, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2334, file: !192, discriminator: 16)
!2337 = !DILocation(line: 422, column: 15, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2333, file: !192, discriminator: 17)
!2339 = !DILocation(line: 422, column: 15, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2334, file: !192, discriminator: 18)
!2341 = !DILocation(line: 422, column: 15, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2314, file: !192, discriminator: 20)
!2343 = !DILocation(line: 422, column: 15, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2345, file: !192, discriminator: 22)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !192, line: 422, column: 15)
!2346 = distinct !DILexicalBlock(scope: !2302, file: !192, line: 422, column: 15)
!2347 = !DILocation(line: 422, column: 15, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2346, file: !192, discriminator: 22)
!2349 = !DILocation(line: 422, column: 15, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2345, file: !192, discriminator: 23)
!2351 = !DILocation(line: 422, column: 15, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2346, file: !192, discriminator: 24)
!2353 = !DILocation(line: 430, column: 19, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2303, file: !192, line: 429, column: 19)
!2355 = !DILocation(line: 430, column: 24, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !2354, file: !192, discriminator: 1)
!2357 = !DILocation(line: 430, column: 28, scope: !2356)
!2358 = !DILocation(line: 430, column: 38, scope: !2356)
!2359 = !DILocation(line: 430, column: 48, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2354, file: !192, discriminator: 2)
!2361 = !DILocation(line: 430, column: 59, scope: !2360)
!2362 = !DILocation(line: 432, column: 19, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2364, file: !192, discriminator: 1)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !192, line: 432, column: 19)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !192, line: 432, column: 19)
!2366 = distinct !DILexicalBlock(scope: !2354, file: !192, line: 431, column: 17)
!2367 = !DILocation(line: 432, column: 19, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2365, file: !192, discriminator: 1)
!2369 = !DILocation(line: 432, column: 19, scope: !2370)
!2370 = !DILexicalBlockFile(scope: !2364, file: !192, discriminator: 2)
!2371 = !DILocation(line: 432, column: 19, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2365, file: !192, discriminator: 3)
!2373 = !DILocation(line: 433, column: 19, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !2375, file: !192, discriminator: 1)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !192, line: 433, column: 19)
!2376 = distinct !DILexicalBlock(scope: !2366, file: !192, line: 433, column: 19)
!2377 = !DILocation(line: 433, column: 19, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2376, file: !192, discriminator: 1)
!2379 = !DILocation(line: 433, column: 19, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2375, file: !192, discriminator: 2)
!2381 = !DILocation(line: 433, column: 19, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2376, file: !192, discriminator: 3)
!2383 = !DILocation(line: 434, column: 17, scope: !2366)
!2384 = !DILocation(line: 441, column: 20, scope: !2304)
!2385 = !DILocation(line: 446, column: 11, scope: !2151)
!2386 = !DILocation(line: 449, column: 19, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 447, column: 13)
!2388 = !DILocation(line: 455, column: 19, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2387, file: !192, line: 454, column: 19)
!2390 = !DILocation(line: 455, column: 24, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2389, file: !192, discriminator: 1)
!2392 = !DILocation(line: 455, column: 28, scope: !2391)
!2393 = !DILocation(line: 455, column: 38, scope: !2391)
!2394 = !DILocation(line: 455, column: 47, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2389, file: !192, discriminator: 2)
!2396 = !DILocation(line: 455, column: 41, scope: !2395)
!2397 = !DILocation(line: 455, column: 52, scope: !2395)
!2398 = !DILocation(line: 454, column: 19, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2387, file: !192, discriminator: 1)
!2400 = !DILocation(line: 456, column: 25, scope: !2389)
!2401 = !DILocation(line: 456, column: 17, scope: !2389)
!2402 = !DILocation(line: 463, column: 25, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2389, file: !192, line: 457, column: 19)
!2404 = !DILocation(line: 467, column: 21, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2406, file: !192, discriminator: 1)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !192, line: 467, column: 21)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !192, line: 467, column: 21)
!2408 = !DILocation(line: 467, column: 21, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2407, file: !192, discriminator: 1)
!2410 = !DILocation(line: 467, column: 21, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2406, file: !192, discriminator: 2)
!2412 = !DILocation(line: 467, column: 21, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2407, file: !192, discriminator: 3)
!2414 = !DILocation(line: 468, column: 21, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2416, file: !192, discriminator: 1)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !192, line: 468, column: 21)
!2417 = distinct !DILexicalBlock(scope: !2403, file: !192, line: 468, column: 21)
!2418 = !DILocation(line: 468, column: 21, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2417, file: !192, discriminator: 1)
!2420 = !DILocation(line: 468, column: 21, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2416, file: !192, discriminator: 2)
!2422 = !DILocation(line: 468, column: 21, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2417, file: !192, discriminator: 3)
!2424 = !DILocation(line: 469, column: 21, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2426, file: !192, discriminator: 1)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !192, line: 469, column: 21)
!2427 = distinct !DILexicalBlock(scope: !2403, file: !192, line: 469, column: 21)
!2428 = !DILocation(line: 469, column: 21, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2427, file: !192, discriminator: 1)
!2430 = !DILocation(line: 469, column: 21, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2426, file: !192, discriminator: 2)
!2432 = !DILocation(line: 469, column: 21, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2427, file: !192, discriminator: 3)
!2434 = !DILocation(line: 470, column: 21, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2436, file: !192, discriminator: 1)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !192, line: 470, column: 21)
!2437 = distinct !DILexicalBlock(scope: !2403, file: !192, line: 470, column: 21)
!2438 = !DILocation(line: 470, column: 21, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2437, file: !192, discriminator: 1)
!2440 = !DILocation(line: 470, column: 21, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2436, file: !192, discriminator: 2)
!2442 = !DILocation(line: 470, column: 21, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2437, file: !192, discriminator: 3)
!2444 = !DILocation(line: 471, column: 21, scope: !2403)
!2445 = !DILocation(line: 395, column: 21, scope: !2142)
!2446 = !DILocation(line: 484, column: 31, scope: !2151)
!2447 = !DILocation(line: 485, column: 31, scope: !2151)
!2448 = !DILocation(line: 487, column: 31, scope: !2151)
!2449 = !DILocation(line: 488, column: 31, scope: !2151)
!2450 = !DILocation(line: 489, column: 31, scope: !2151)
!2451 = !DILocation(line: 492, column: 15, scope: !2151)
!2452 = !DILocation(line: 494, column: 19, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !192, line: 493, column: 13)
!2454 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 492, column: 15)
!2455 = !DILocation(line: 501, column: 33, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 501, column: 15)
!2457 = !DILocation(line: 506, column: 15, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 505, column: 15)
!2459 = !DILocation(line: 510, column: 15, scope: !2151)
!2460 = !DILocation(line: 518, column: 26, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 518, column: 15)
!2462 = !DILocation(line: 518, column: 15, scope: !2151)
!2463 = !DILocation(line: 518, column: 40, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2461, file: !192, discriminator: 1)
!2465 = !DILocation(line: 518, column: 47, scope: !2464)
!2466 = !DILocation(line: 522, column: 17, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 522, column: 15)
!2468 = !DILocation(line: 518, column: 18, scope: !2464)
!2469 = !DILocation(line: 518, column: 65, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2461, file: !192, discriminator: 2)
!2471 = !DILocation(line: 518, column: 15, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2151, file: !192, discriminator: 2)
!2473 = !DILocation(line: 522, column: 15, scope: !2151)
!2474 = !DILocation(line: 526, column: 11, scope: !2151)
!2475 = !DILocation(line: 541, column: 15, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 540, column: 15)
!2477 = !DILocation(line: 548, column: 15, scope: !2151)
!2478 = !DILocation(line: 550, column: 19, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !192, line: 549, column: 13)
!2480 = distinct !DILexicalBlock(scope: !2151, file: !192, line: 548, column: 15)
!2481 = !DILocation(line: 553, column: 19, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2479, file: !192, line: 553, column: 19)
!2483 = !DILocation(line: 553, column: 35, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2482, file: !192, discriminator: 1)
!2485 = !DILocation(line: 553, column: 30, scope: !2482)
!2486 = !DILocation(line: 562, column: 15, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2488, file: !192, discriminator: 1)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !192, line: 562, column: 15)
!2489 = distinct !DILexicalBlock(scope: !2479, file: !192, line: 562, column: 15)
!2490 = !DILocation(line: 562, column: 15, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2489, file: !192, discriminator: 1)
!2492 = !DILocation(line: 562, column: 15, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2488, file: !192, discriminator: 2)
!2494 = !DILocation(line: 562, column: 15, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2489, file: !192, discriminator: 3)
!2496 = !DILocation(line: 563, column: 15, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !2498, file: !192, discriminator: 1)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !192, line: 563, column: 15)
!2499 = distinct !DILexicalBlock(scope: !2479, file: !192, line: 563, column: 15)
!2500 = !DILocation(line: 563, column: 15, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2499, file: !192, discriminator: 1)
!2502 = !DILocation(line: 563, column: 15, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2498, file: !192, discriminator: 2)
!2504 = !DILocation(line: 563, column: 15, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2499, file: !192, discriminator: 3)
!2506 = !DILocation(line: 564, column: 15, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2508, file: !192, discriminator: 1)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !192, line: 564, column: 15)
!2509 = distinct !DILexicalBlock(scope: !2479, file: !192, line: 564, column: 15)
!2510 = !DILocation(line: 564, column: 15, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !2509, file: !192, discriminator: 1)
!2512 = !DILocation(line: 564, column: 15, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2508, file: !192, discriminator: 2)
!2514 = !DILocation(line: 564, column: 15, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2509, file: !192, discriminator: 3)
!2516 = !DILocation(line: 566, column: 13, scope: !2479)
!2517 = !DILocation(line: 606, column: 17, scope: !2150)
!2518 = !DILocation(line: 602, column: 20, scope: !2150)
!2519 = !DILocation(line: 609, column: 29, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2155, file: !192, line: 607, column: 15)
!2521 = !{!947, !947, i64 0}
!2522 = !DILocation(line: 609, column: 27, scope: !2520)
!2523 = !DILocation(line: 604, column: 18, scope: !2150)
!2524 = !DILocation(line: 610, column: 15, scope: !2520)
!2525 = !DILocation(line: 613, column: 17, scope: !2154)
!2526 = !DILocation(line: 614, column: 17, scope: !2154)
!2527 = !DILocation(line: 618, column: 29, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2154, file: !192, line: 618, column: 21)
!2529 = !DILocation(line: 618, column: 21, scope: !2154)
!2530 = distinct !{!2530, !2531, !2532}
!2531 = !DILocation(line: 621, column: 17, scope: !2154)
!2532 = !DILocation(line: 667, column: 44, scope: !2154)
!2533 = !DILocation(line: 619, column: 29, scope: !2528)
!2534 = !DILocation(line: 619, column: 19, scope: !2528)
!2535 = !DILocation(line: 623, column: 21, scope: !2169)
!2536 = !DILocation(line: 624, column: 56, scope: !2169)
!2537 = !DILocation(line: 624, column: 50, scope: !2169)
!2538 = !DILocation(line: 625, column: 53, scope: !2169)
!2539 = !DILocation(line: 613, column: 27, scope: !2154)
!2540 = !DILocation(line: 623, column: 29, scope: !2169)
!2541 = !DILocation(line: 624, column: 36, scope: !2169)
!2542 = !DILocation(line: 624, column: 28, scope: !2169)
!2543 = !DILocation(line: 626, column: 25, scope: !2169)
!2544 = !DILocation(line: 636, column: 38, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2546, file: !192, discriminator: 1)
!2546 = distinct !DILexicalBlock(scope: !2176, file: !192, line: 634, column: 23)
!2547 = !DILocation(line: 636, column: 48, scope: !2545)
!2548 = !DILocation(line: 636, column: 51, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2546, file: !192, discriminator: 2)
!2550 = !DILocation(line: 636, column: 48, scope: !2549)
!2551 = !DILocation(line: 636, column: 25, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2546, file: !192, discriminator: 3)
!2553 = !DILocation(line: 637, column: 28, scope: !2546)
!2554 = !DILocation(line: 636, column: 34, scope: !2545)
!2555 = distinct !{!2555, !2556, !2553}
!2556 = !DILocation(line: 636, column: 25, scope: !2546)
!2557 = !DILocation(line: 650, column: 43, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2559, file: !192, discriminator: 1)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !192, line: 650, column: 29)
!2560 = distinct !DILexicalBlock(scope: !2173, file: !192, line: 650, column: 29)
!2561 = !DILocation(line: 647, column: 29, scope: !2174)
!2562 = !DILocation(line: 649, column: 36, scope: !2173)
!2563 = !DILocation(line: 651, column: 49, scope: !2559)
!2564 = !DILocation(line: 651, column: 39, scope: !2559)
!2565 = !DILocation(line: 651, column: 31, scope: !2559)
!2566 = !DILocation(line: 650, column: 53, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2559, file: !192, discriminator: 2)
!2568 = !DILocation(line: 650, column: 29, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2560, file: !192, discriminator: 1)
!2570 = distinct !{!2570, !2571, !2572}
!2571 = !DILocation(line: 650, column: 29, scope: !2560)
!2572 = !DILocation(line: 659, column: 33, scope: !2560)
!2573 = !DILocation(line: 666, column: 19, scope: !2154)
!2574 = !DILocation(line: 662, column: 41, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2175, file: !192, line: 662, column: 29)
!2576 = !DILocation(line: 662, column: 31, scope: !2575)
!2577 = !DILocation(line: 662, column: 29, scope: !2175)
!2578 = !DILocation(line: 664, column: 27, scope: !2175)
!2579 = !DILocation(line: 667, column: 26, scope: !2154)
!2580 = !DILocation(line: 667, column: 24, scope: !2154)
!2581 = !DILocation(line: 666, column: 19, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2169, file: !192, discriminator: 3)
!2583 = !DILocation(line: 668, column: 15, scope: !2155)
!2584 = !DILocation(line: 670, column: 40, scope: !2150)
!2585 = !DILocation(line: 672, column: 19, scope: !2181)
!2586 = !DILocation(line: 672, column: 45, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2181, file: !192, discriminator: 1)
!2588 = !DILocation(line: 672, column: 23, scope: !2181)
!2589 = !DILocation(line: 676, column: 33, scope: !2180)
!2590 = !DILocation(line: 676, column: 24, scope: !2180)
!2591 = !DILocation(line: 678, column: 17, scope: !2180)
!2592 = !DILocation(line: 680, column: 43, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !192, line: 680, column: 25)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !192, line: 679, column: 19)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !192, line: 678, column: 17)
!2596 = distinct !DILexicalBlock(scope: !2180, file: !192, line: 678, column: 17)
!2597 = !DILocation(line: 682, column: 25, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2599, file: !192, discriminator: 1)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !192, line: 682, column: 25)
!2600 = distinct !DILexicalBlock(scope: !2593, file: !192, line: 681, column: 23)
!2601 = !DILocation(line: 682, column: 25, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2603, file: !192, discriminator: 4)
!2603 = distinct !DILexicalBlock(scope: !2599, file: !192, line: 682, column: 25)
!2604 = !DILocation(line: 682, column: 25, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !2603, file: !192, discriminator: 3)
!2606 = !DILocation(line: 682, column: 25, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2608, file: !192, discriminator: 6)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !192, line: 682, column: 25)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !192, line: 682, column: 25)
!2610 = distinct !DILexicalBlock(scope: !2603, file: !192, line: 682, column: 25)
!2611 = !DILocation(line: 682, column: 25, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !2609, file: !192, discriminator: 6)
!2613 = !DILocation(line: 682, column: 25, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2608, file: !192, discriminator: 7)
!2615 = !DILocation(line: 682, column: 25, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2609, file: !192, discriminator: 8)
!2617 = !DILocation(line: 682, column: 25, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2619, file: !192, discriminator: 11)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !192, line: 682, column: 25)
!2620 = distinct !DILexicalBlock(scope: !2610, file: !192, line: 682, column: 25)
!2621 = !DILocation(line: 682, column: 25, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !2620, file: !192, discriminator: 11)
!2623 = !DILocation(line: 682, column: 25, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2619, file: !192, discriminator: 12)
!2625 = !DILocation(line: 682, column: 25, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2620, file: !192, discriminator: 13)
!2627 = !DILocation(line: 682, column: 25, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2629, file: !192, discriminator: 16)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !192, line: 682, column: 25)
!2630 = distinct !DILexicalBlock(scope: !2610, file: !192, line: 682, column: 25)
!2631 = !DILocation(line: 682, column: 25, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2630, file: !192, discriminator: 16)
!2633 = !DILocation(line: 682, column: 25, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2629, file: !192, discriminator: 17)
!2635 = !DILocation(line: 682, column: 25, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2630, file: !192, discriminator: 18)
!2637 = !DILocation(line: 682, column: 25, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2610, file: !192, discriminator: 20)
!2639 = !DILocation(line: 682, column: 25, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2641, file: !192, discriminator: 22)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !192, line: 682, column: 25)
!2642 = distinct !DILexicalBlock(scope: !2599, file: !192, line: 682, column: 25)
!2643 = !DILocation(line: 682, column: 25, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2642, file: !192, discriminator: 22)
!2645 = !DILocation(line: 682, column: 25, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !2641, file: !192, discriminator: 23)
!2647 = !DILocation(line: 682, column: 25, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2642, file: !192, discriminator: 24)
!2649 = !DILocation(line: 683, column: 25, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2651, file: !192, discriminator: 1)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !192, line: 683, column: 25)
!2652 = distinct !DILexicalBlock(scope: !2600, file: !192, line: 683, column: 25)
!2653 = !DILocation(line: 683, column: 25, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2652, file: !192, discriminator: 1)
!2655 = !DILocation(line: 683, column: 25, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2651, file: !192, discriminator: 2)
!2657 = !DILocation(line: 683, column: 25, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2652, file: !192, discriminator: 3)
!2659 = !DILocation(line: 684, column: 25, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2661, file: !192, discriminator: 1)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !192, line: 684, column: 25)
!2662 = distinct !DILexicalBlock(scope: !2600, file: !192, line: 684, column: 25)
!2663 = !DILocation(line: 684, column: 25, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2662, file: !192, discriminator: 1)
!2665 = !DILocation(line: 684, column: 25, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2661, file: !192, discriminator: 2)
!2667 = !DILocation(line: 684, column: 25, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2662, file: !192, discriminator: 3)
!2669 = !DILocation(line: 685, column: 38, scope: !2600)
!2670 = !DILocation(line: 685, column: 33, scope: !2600)
!2671 = !DILocation(line: 686, column: 23, scope: !2600)
!2672 = !DILocation(line: 687, column: 30, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2593, file: !192, line: 687, column: 30)
!2674 = !DILocation(line: 687, column: 30, scope: !2593)
!2675 = !DILocation(line: 689, column: 25, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2677, file: !192, discriminator: 1)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !192, line: 689, column: 25)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !192, line: 689, column: 25)
!2679 = distinct !DILexicalBlock(scope: !2673, file: !192, line: 688, column: 23)
!2680 = !DILocation(line: 689, column: 25, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2678, file: !192, discriminator: 1)
!2682 = !DILocation(line: 689, column: 25, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2677, file: !192, discriminator: 2)
!2684 = !DILocation(line: 689, column: 25, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2678, file: !192, discriminator: 3)
!2686 = !DILocation(line: 691, column: 23, scope: !2679)
!2687 = !DILocation(line: 692, column: 35, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2594, file: !192, line: 692, column: 25)
!2689 = !DILocation(line: 692, column: 30, scope: !2688)
!2690 = !DILocation(line: 692, column: 25, scope: !2594)
!2691 = !DILocation(line: 694, column: 21, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2693, file: !192, discriminator: 1)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !192, line: 694, column: 21)
!2694 = distinct !DILexicalBlock(scope: !2594, file: !192, line: 694, column: 21)
!2695 = !DILocation(line: 694, column: 21, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !2693, file: !192, discriminator: 2)
!2697 = !DILocation(line: 694, column: 21, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2699, file: !192, discriminator: 4)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !192, line: 694, column: 21)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !192, line: 694, column: 21)
!2701 = distinct !DILexicalBlock(scope: !2693, file: !192, line: 694, column: 21)
!2702 = !DILocation(line: 694, column: 21, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2700, file: !192, discriminator: 4)
!2704 = !DILocation(line: 694, column: 21, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2699, file: !192, discriminator: 5)
!2706 = !DILocation(line: 694, column: 21, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2700, file: !192, discriminator: 6)
!2708 = !DILocation(line: 694, column: 21, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2710, file: !192, discriminator: 9)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !192, line: 694, column: 21)
!2711 = distinct !DILexicalBlock(scope: !2701, file: !192, line: 694, column: 21)
!2712 = !DILocation(line: 694, column: 21, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2711, file: !192, discriminator: 9)
!2714 = !DILocation(line: 694, column: 21, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2710, file: !192, discriminator: 10)
!2716 = !DILocation(line: 694, column: 21, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2711, file: !192, discriminator: 11)
!2718 = !DILocation(line: 694, column: 21, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2701, file: !192, discriminator: 13)
!2720 = !DILocation(line: 695, column: 21, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2722, file: !192, discriminator: 1)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !192, line: 695, column: 21)
!2723 = distinct !DILexicalBlock(scope: !2594, file: !192, line: 695, column: 21)
!2724 = !DILocation(line: 695, column: 21, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !2723, file: !192, discriminator: 1)
!2726 = !DILocation(line: 695, column: 21, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2722, file: !192, discriminator: 2)
!2728 = !DILocation(line: 695, column: 21, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2723, file: !192, discriminator: 3)
!2730 = !DILocation(line: 696, column: 25, scope: !2594)
!2731 = !DILocation(line: 678, column: 17, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !2595, file: !192, discriminator: 1)
!2733 = distinct !{!2733, !2734, !2735}
!2734 = !DILocation(line: 678, column: 17, scope: !2596)
!2735 = !DILocation(line: 697, column: 19, scope: !2596)
!2736 = !DILocation(line: 704, column: 34, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2142, file: !192, line: 704, column: 11)
!2738 = !DILocation(line: 706, column: 14, scope: !2737)
!2739 = !DILocation(line: 707, column: 14, scope: !2737)
!2740 = !DILocation(line: 707, column: 35, scope: !2741)
!2741 = !DILexicalBlockFile(scope: !2737, file: !192, discriminator: 1)
!2742 = !DILocation(line: 707, column: 17, scope: !2741)
!2743 = !DILocation(line: 707, column: 53, scope: !2741)
!2744 = !DILocation(line: 707, column: 47, scope: !2741)
!2745 = !DILocation(line: 707, column: 65, scope: !2741)
!2746 = !DILocation(line: 708, column: 15, scope: !2741)
!2747 = !DILocation(line: 708, column: 11, scope: !2737)
!2748 = !DILocation(line: 704, column: 11, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2142, file: !192, discriminator: 2)
!2750 = !DILocation(line: 712, column: 7, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2752, file: !192, discriminator: 1)
!2752 = distinct !DILexicalBlock(scope: !2142, file: !192, line: 712, column: 7)
!2753 = !DILocation(line: 712, column: 7, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2755, file: !192, discriminator: 4)
!2755 = distinct !DILexicalBlock(scope: !2752, file: !192, line: 712, column: 7)
!2756 = !DILocation(line: 712, column: 7, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !2755, file: !192, discriminator: 3)
!2758 = !DILocation(line: 712, column: 7, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2760, file: !192, discriminator: 6)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !192, line: 712, column: 7)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !192, line: 712, column: 7)
!2762 = distinct !DILexicalBlock(scope: !2755, file: !192, line: 712, column: 7)
!2763 = !DILocation(line: 712, column: 7, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2761, file: !192, discriminator: 6)
!2765 = !DILocation(line: 712, column: 7, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !2760, file: !192, discriminator: 7)
!2767 = !DILocation(line: 712, column: 7, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2761, file: !192, discriminator: 8)
!2769 = !DILocation(line: 712, column: 7, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2771, file: !192, discriminator: 11)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !192, line: 712, column: 7)
!2772 = distinct !DILexicalBlock(scope: !2762, file: !192, line: 712, column: 7)
!2773 = !DILocation(line: 712, column: 7, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2772, file: !192, discriminator: 11)
!2775 = !DILocation(line: 712, column: 7, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2771, file: !192, discriminator: 12)
!2777 = !DILocation(line: 712, column: 7, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2772, file: !192, discriminator: 13)
!2779 = !DILocation(line: 712, column: 7, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !2781, file: !192, discriminator: 16)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !192, line: 712, column: 7)
!2782 = distinct !DILexicalBlock(scope: !2762, file: !192, line: 712, column: 7)
!2783 = !DILocation(line: 712, column: 7, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !2782, file: !192, discriminator: 16)
!2785 = !DILocation(line: 712, column: 7, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2781, file: !192, discriminator: 17)
!2787 = !DILocation(line: 712, column: 7, scope: !2788)
!2788 = !DILexicalBlockFile(scope: !2782, file: !192, discriminator: 18)
!2789 = !DILocation(line: 712, column: 7, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !2762, file: !192, discriminator: 20)
!2791 = !DILocation(line: 712, column: 7, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !2793, file: !192, discriminator: 22)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !192, line: 712, column: 7)
!2794 = distinct !DILexicalBlock(scope: !2752, file: !192, line: 712, column: 7)
!2795 = !DILocation(line: 712, column: 7, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2794, file: !192, discriminator: 22)
!2797 = !DILocation(line: 712, column: 7, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2793, file: !192, discriminator: 23)
!2799 = !DILocation(line: 712, column: 7, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2794, file: !192, discriminator: 24)
!2801 = !DILocation(line: 715, column: 7, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2803, file: !192, discriminator: 1)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !192, line: 715, column: 7)
!2804 = distinct !DILexicalBlock(scope: !2142, file: !192, line: 715, column: 7)
!2805 = !DILocation(line: 715, column: 7, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2803, file: !192, discriminator: 2)
!2807 = !DILocation(line: 715, column: 7, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2809, file: !192, discriminator: 4)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !192, line: 715, column: 7)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !192, line: 715, column: 7)
!2811 = distinct !DILexicalBlock(scope: !2803, file: !192, line: 715, column: 7)
!2812 = !DILocation(line: 715, column: 7, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !2810, file: !192, discriminator: 4)
!2814 = !DILocation(line: 715, column: 7, scope: !2815)
!2815 = !DILexicalBlockFile(scope: !2809, file: !192, discriminator: 5)
!2816 = !DILocation(line: 715, column: 7, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2810, file: !192, discriminator: 6)
!2818 = !DILocation(line: 715, column: 7, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !2820, file: !192, discriminator: 9)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !192, line: 715, column: 7)
!2821 = distinct !DILexicalBlock(scope: !2811, file: !192, line: 715, column: 7)
!2822 = !DILocation(line: 715, column: 7, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2821, file: !192, discriminator: 9)
!2824 = !DILocation(line: 715, column: 7, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2820, file: !192, discriminator: 10)
!2826 = !DILocation(line: 715, column: 7, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2821, file: !192, discriminator: 11)
!2828 = !DILocation(line: 715, column: 7, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2811, file: !192, discriminator: 13)
!2830 = !DILocation(line: 716, column: 7, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !2832, file: !192, discriminator: 1)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !192, line: 716, column: 7)
!2833 = distinct !DILexicalBlock(scope: !2142, file: !192, line: 716, column: 7)
!2834 = !DILocation(line: 716, column: 7, scope: !2835)
!2835 = !DILexicalBlockFile(scope: !2833, file: !192, discriminator: 1)
!2836 = !DILocation(line: 716, column: 7, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2832, file: !192, discriminator: 2)
!2838 = !DILocation(line: 716, column: 7, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2833, file: !192, discriminator: 3)
!2840 = !DILocation(line: 718, column: 13, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2142, file: !192, line: 718, column: 11)
!2842 = !DILocation(line: 718, column: 11, scope: !2142)
!2843 = !DILocation(line: 720, column: 5, scope: !2143)
!2844 = !DILocation(line: 392, column: 75, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2143, file: !192, discriminator: 5)
!2846 = !DILocation(line: 392, column: 3, scope: !2845)
!2847 = distinct !{!2847, !2848, !2849}
!2848 = !DILocation(line: 392, column: 3, scope: !2144)
!2849 = !DILocation(line: 720, column: 5, scope: !2144)
!2850 = !DILocation(line: 722, column: 11, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2115, file: !192, line: 722, column: 7)
!2852 = !DILocation(line: 722, column: 16, scope: !2851)
!2853 = !DILocation(line: 730, column: 51, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2115, file: !192, line: 730, column: 7)
!2855 = !DILocation(line: 731, column: 10, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !2854, file: !192, discriminator: 1)
!2857 = !DILocation(line: 733, column: 11, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !192, line: 733, column: 11)
!2859 = distinct !DILexicalBlock(scope: !2854, file: !192, line: 732, column: 5)
!2860 = !DILocation(line: 733, column: 11, scope: !2859)
!2861 = !DILocation(line: 734, column: 16, scope: !2858)
!2862 = !DILocation(line: 734, column: 9, scope: !2858)
!2863 = !DILocation(line: 738, column: 18, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2858, file: !192, line: 738, column: 16)
!2865 = !DILocation(line: 738, column: 32, scope: !2866)
!2866 = !DILexicalBlockFile(scope: !2864, file: !192, discriminator: 1)
!2867 = !DILocation(line: 738, column: 29, scope: !2864)
!2868 = !DILocation(line: 747, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2115, file: !192, line: 747, column: 7)
!2870 = !DILocation(line: 747, column: 20, scope: !2869)
!2871 = !DILocation(line: 748, column: 12, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !2873, file: !192, discriminator: 1)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !192, line: 748, column: 5)
!2874 = distinct !DILexicalBlock(scope: !2869, file: !192, line: 748, column: 5)
!2875 = !DILocation(line: 748, column: 5, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2874, file: !192, discriminator: 1)
!2877 = !DILocation(line: 749, column: 7, scope: !2878)
!2878 = !DILexicalBlockFile(scope: !2879, file: !192, discriminator: 1)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !192, line: 749, column: 7)
!2880 = distinct !DILexicalBlock(scope: !2873, file: !192, line: 749, column: 7)
!2881 = !DILocation(line: 749, column: 7, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !2880, file: !192, discriminator: 1)
!2883 = !DILocation(line: 749, column: 7, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !2879, file: !192, discriminator: 2)
!2885 = !DILocation(line: 749, column: 7, scope: !2886)
!2886 = !DILexicalBlockFile(scope: !2880, file: !192, discriminator: 3)
!2887 = !DILocation(line: 748, column: 39, scope: !2888)
!2888 = !DILexicalBlockFile(scope: !2873, file: !192, discriminator: 2)
!2889 = distinct !{!2889, !2890, !2891}
!2890 = !DILocation(line: 748, column: 5, scope: !2874)
!2891 = !DILocation(line: 749, column: 7, scope: !2874)
!2892 = !DILocation(line: 751, column: 11, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2115, file: !192, line: 751, column: 7)
!2894 = !DILocation(line: 751, column: 7, scope: !2115)
!2895 = !DILocation(line: 752, column: 5, scope: !2893)
!2896 = !DILocation(line: 752, column: 17, scope: !2893)
!2897 = !DILocation(line: 758, column: 21, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2115, file: !192, line: 758, column: 7)
!2899 = !DILocation(line: 758, column: 54, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2898, file: !192, discriminator: 1)
!2901 = !DILocation(line: 758, column: 51, scope: !2898)
!2902 = !DILocation(line: 762, column: 42, scope: !2115)
!2903 = !DILocation(line: 760, column: 10, scope: !2115)
!2904 = !DILocation(line: 760, column: 3, scope: !2115)
!2905 = !DILocation(line: 764, column: 1, scope: !2115)
!2906 = distinct !DISubprogram(name: "gettext_quote", scope: !192, file: !192, line: 199, type: !2907, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!53, !53, !5}
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = !DILocalVariable(name: "msgid", arg: 1, scope: !2906, file: !192, line: 199, type: !53)
!2911 = !DILocalVariable(name: "s", arg: 2, scope: !2906, file: !192, line: 199, type: !5)
!2912 = !DILocalVariable(name: "translation", scope: !2906, file: !192, line: 201, type: !53)
!2913 = !DILocalVariable(name: "locale_code", scope: !2906, file: !192, line: 202, type: !53)
!2914 = !DILocation(line: 199, column: 28, scope: !2906)
!2915 = !DILocation(line: 199, column: 54, scope: !2906)
!2916 = !DILocation(line: 201, column: 29, scope: !2906)
!2917 = !DILocation(line: 201, column: 15, scope: !2906)
!2918 = !DILocation(line: 204, column: 19, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2906, file: !192, line: 204, column: 7)
!2920 = !DILocation(line: 204, column: 7, scope: !2906)
!2921 = !DILocation(line: 225, column: 17, scope: !2906)
!2922 = !DILocation(line: 202, column: 15, scope: !2906)
!2923 = !DILocalVariable(name: "s2", arg: 2, scope: !2924, file: !2925, line: 160, type: !53)
!2924 = distinct !DISubprogram(name: "strcaseeq0", scope: !2925, file: !2925, line: 160, type: !2926, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2928)
!2925 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!87, !53, !53, !43, !43, !43, !43, !43, !43, !43, !43, !43}
!2928 = !{!2929, !2923, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2929 = !DILocalVariable(name: "s1", arg: 1, scope: !2924, file: !2925, line: 160, type: !53)
!2930 = !DILocalVariable(name: "s20", arg: 3, scope: !2924, file: !2925, line: 160, type: !43)
!2931 = !DILocalVariable(name: "s21", arg: 4, scope: !2924, file: !2925, line: 160, type: !43)
!2932 = !DILocalVariable(name: "s22", arg: 5, scope: !2924, file: !2925, line: 160, type: !43)
!2933 = !DILocalVariable(name: "s23", arg: 6, scope: !2924, file: !2925, line: 160, type: !43)
!2934 = !DILocalVariable(name: "s24", arg: 7, scope: !2924, file: !2925, line: 160, type: !43)
!2935 = !DILocalVariable(name: "s25", arg: 8, scope: !2924, file: !2925, line: 160, type: !43)
!2936 = !DILocalVariable(name: "s26", arg: 9, scope: !2924, file: !2925, line: 160, type: !43)
!2937 = !DILocalVariable(name: "s27", arg: 10, scope: !2924, file: !2925, line: 160, type: !43)
!2938 = !DILocalVariable(name: "s28", arg: 11, scope: !2924, file: !2925, line: 160, type: !43)
!2939 = !DILocation(line: 160, column: 41, scope: !2924, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 226, column: 7, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2906, file: !192, line: 226, column: 7)
!2942 = !DILocation(line: 160, column: 120, scope: !2924, inlinedAt: !2940)
!2943 = !DILocation(line: 160, column: 130, scope: !2924, inlinedAt: !2940)
!2944 = !DILocation(line: 162, column: 7, scope: !2945, inlinedAt: !2940)
!2945 = !DILexicalBlockFile(scope: !2946, file: !2925, discriminator: 1)
!2946 = distinct !DILexicalBlock(scope: !2924, file: !2925, line: 162, column: 7)
!2947 = !DILocalVariable(name: "s2", arg: 2, scope: !2948, file: !2925, line: 146, type: !53)
!2948 = distinct !DISubprogram(name: "strcaseeq1", scope: !2925, file: !2925, line: 146, type: !2949, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!87, !53, !53, !43, !43, !43, !43, !43, !43, !43, !43}
!2951 = !{!2952, !2947, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960}
!2952 = !DILocalVariable(name: "s1", arg: 1, scope: !2948, file: !2925, line: 146, type: !53)
!2953 = !DILocalVariable(name: "s21", arg: 3, scope: !2948, file: !2925, line: 146, type: !43)
!2954 = !DILocalVariable(name: "s22", arg: 4, scope: !2948, file: !2925, line: 146, type: !43)
!2955 = !DILocalVariable(name: "s23", arg: 5, scope: !2948, file: !2925, line: 146, type: !43)
!2956 = !DILocalVariable(name: "s24", arg: 6, scope: !2948, file: !2925, line: 146, type: !43)
!2957 = !DILocalVariable(name: "s25", arg: 7, scope: !2948, file: !2925, line: 146, type: !43)
!2958 = !DILocalVariable(name: "s26", arg: 8, scope: !2948, file: !2925, line: 146, type: !43)
!2959 = !DILocalVariable(name: "s27", arg: 9, scope: !2948, file: !2925, line: 146, type: !43)
!2960 = !DILocalVariable(name: "s28", arg: 10, scope: !2948, file: !2925, line: 146, type: !43)
!2961 = !DILocation(line: 146, column: 41, scope: !2948, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 167, column: 16, scope: !2963, inlinedAt: !2940)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !2925, line: 164, column: 11)
!2964 = distinct !DILexicalBlock(scope: !2946, file: !2925, line: 163, column: 5)
!2965 = !DILocation(line: 146, column: 110, scope: !2948, inlinedAt: !2962)
!2966 = !DILocation(line: 146, column: 120, scope: !2948, inlinedAt: !2962)
!2967 = !DILocation(line: 148, column: 7, scope: !2968, inlinedAt: !2962)
!2968 = !DILexicalBlockFile(scope: !2969, file: !2925, discriminator: 1)
!2969 = distinct !DILexicalBlock(scope: !2948, file: !2925, line: 148, column: 7)
!2970 = !DILocalVariable(name: "s2", arg: 2, scope: !2971, file: !2925, line: 132, type: !53)
!2971 = distinct !DISubprogram(name: "strcaseeq2", scope: !2925, file: !2925, line: 132, type: !2972, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!87, !53, !53, !43, !43, !43, !43, !43, !43, !43}
!2974 = !{!2975, !2970, !2976, !2977, !2978, !2979, !2980, !2981, !2982}
!2975 = !DILocalVariable(name: "s1", arg: 1, scope: !2971, file: !2925, line: 132, type: !53)
!2976 = !DILocalVariable(name: "s22", arg: 3, scope: !2971, file: !2925, line: 132, type: !43)
!2977 = !DILocalVariable(name: "s23", arg: 4, scope: !2971, file: !2925, line: 132, type: !43)
!2978 = !DILocalVariable(name: "s24", arg: 5, scope: !2971, file: !2925, line: 132, type: !43)
!2979 = !DILocalVariable(name: "s25", arg: 6, scope: !2971, file: !2925, line: 132, type: !43)
!2980 = !DILocalVariable(name: "s26", arg: 7, scope: !2971, file: !2925, line: 132, type: !43)
!2981 = !DILocalVariable(name: "s27", arg: 8, scope: !2971, file: !2925, line: 132, type: !43)
!2982 = !DILocalVariable(name: "s28", arg: 9, scope: !2971, file: !2925, line: 132, type: !43)
!2983 = !DILocation(line: 132, column: 41, scope: !2971, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 153, column: 16, scope: !2985, inlinedAt: !2962)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !2925, line: 150, column: 11)
!2986 = distinct !DILexicalBlock(scope: !2969, file: !2925, line: 149, column: 5)
!2987 = !DILocation(line: 132, column: 100, scope: !2971, inlinedAt: !2984)
!2988 = !DILocation(line: 132, column: 110, scope: !2971, inlinedAt: !2984)
!2989 = !DILocation(line: 134, column: 7, scope: !2990, inlinedAt: !2984)
!2990 = !DILexicalBlockFile(scope: !2991, file: !2925, discriminator: 1)
!2991 = distinct !DILexicalBlock(scope: !2971, file: !2925, line: 134, column: 7)
!2992 = !DILocalVariable(name: "s2", arg: 2, scope: !2993, file: !2925, line: 118, type: !53)
!2993 = distinct !DISubprogram(name: "strcaseeq3", scope: !2925, file: !2925, line: 118, type: !2994, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!87, !53, !53, !43, !43, !43, !43, !43, !43}
!2996 = !{!2997, !2992, !2998, !2999, !3000, !3001, !3002, !3003}
!2997 = !DILocalVariable(name: "s1", arg: 1, scope: !2993, file: !2925, line: 118, type: !53)
!2998 = !DILocalVariable(name: "s23", arg: 3, scope: !2993, file: !2925, line: 118, type: !43)
!2999 = !DILocalVariable(name: "s24", arg: 4, scope: !2993, file: !2925, line: 118, type: !43)
!3000 = !DILocalVariable(name: "s25", arg: 5, scope: !2993, file: !2925, line: 118, type: !43)
!3001 = !DILocalVariable(name: "s26", arg: 6, scope: !2993, file: !2925, line: 118, type: !43)
!3002 = !DILocalVariable(name: "s27", arg: 7, scope: !2993, file: !2925, line: 118, type: !43)
!3003 = !DILocalVariable(name: "s28", arg: 8, scope: !2993, file: !2925, line: 118, type: !43)
!3004 = !DILocation(line: 118, column: 41, scope: !2993, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 139, column: 16, scope: !3006, inlinedAt: !2984)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !2925, line: 136, column: 11)
!3007 = distinct !DILexicalBlock(scope: !2991, file: !2925, line: 135, column: 5)
!3008 = !DILocation(line: 118, column: 90, scope: !2993, inlinedAt: !3005)
!3009 = !DILocation(line: 118, column: 100, scope: !2993, inlinedAt: !3005)
!3010 = !DILocation(line: 120, column: 7, scope: !3011, inlinedAt: !3005)
!3011 = !DILexicalBlockFile(scope: !3012, file: !2925, discriminator: 2)
!3012 = distinct !DILexicalBlock(scope: !2993, file: !2925, line: 120, column: 7)
!3013 = !DILocation(line: 120, column: 7, scope: !3014, inlinedAt: !3005)
!3014 = !DILexicalBlockFile(scope: !2993, file: !2925, discriminator: 2)
!3015 = !DILocalVariable(name: "s2", arg: 2, scope: !3016, file: !2925, line: 104, type: !53)
!3016 = distinct !DISubprogram(name: "strcaseeq4", scope: !2925, file: !2925, line: 104, type: !3017, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!87, !53, !53, !43, !43, !43, !43, !43}
!3019 = !{!3020, !3015, !3021, !3022, !3023, !3024, !3025}
!3020 = !DILocalVariable(name: "s1", arg: 1, scope: !3016, file: !2925, line: 104, type: !53)
!3021 = !DILocalVariable(name: "s24", arg: 3, scope: !3016, file: !2925, line: 104, type: !43)
!3022 = !DILocalVariable(name: "s25", arg: 4, scope: !3016, file: !2925, line: 104, type: !43)
!3023 = !DILocalVariable(name: "s26", arg: 5, scope: !3016, file: !2925, line: 104, type: !43)
!3024 = !DILocalVariable(name: "s27", arg: 6, scope: !3016, file: !2925, line: 104, type: !43)
!3025 = !DILocalVariable(name: "s28", arg: 7, scope: !3016, file: !2925, line: 104, type: !43)
!3026 = !DILocation(line: 104, column: 41, scope: !3016, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 125, column: 16, scope: !3028, inlinedAt: !3005)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !2925, line: 122, column: 11)
!3029 = distinct !DILexicalBlock(scope: !3012, file: !2925, line: 121, column: 5)
!3030 = !DILocation(line: 104, column: 80, scope: !3016, inlinedAt: !3027)
!3031 = !DILocation(line: 104, column: 90, scope: !3016, inlinedAt: !3027)
!3032 = !DILocation(line: 106, column: 7, scope: !3033, inlinedAt: !3027)
!3033 = !DILexicalBlockFile(scope: !3034, file: !2925, discriminator: 2)
!3034 = distinct !DILexicalBlock(scope: !3016, file: !2925, line: 106, column: 7)
!3035 = !DILocation(line: 106, column: 7, scope: !3036, inlinedAt: !3027)
!3036 = !DILexicalBlockFile(scope: !3016, file: !2925, discriminator: 2)
!3037 = !DILocalVariable(name: "s2", arg: 2, scope: !3038, file: !2925, line: 90, type: !53)
!3038 = distinct !DISubprogram(name: "strcaseeq5", scope: !2925, file: !2925, line: 90, type: !3039, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!87, !53, !53, !43, !43, !43, !43}
!3041 = !{!3042, !3037, !3043, !3044, !3045, !3046}
!3042 = !DILocalVariable(name: "s1", arg: 1, scope: !3038, file: !2925, line: 90, type: !53)
!3043 = !DILocalVariable(name: "s25", arg: 3, scope: !3038, file: !2925, line: 90, type: !43)
!3044 = !DILocalVariable(name: "s26", arg: 4, scope: !3038, file: !2925, line: 90, type: !43)
!3045 = !DILocalVariable(name: "s27", arg: 5, scope: !3038, file: !2925, line: 90, type: !43)
!3046 = !DILocalVariable(name: "s28", arg: 6, scope: !3038, file: !2925, line: 90, type: !43)
!3047 = !DILocation(line: 90, column: 41, scope: !3038, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 111, column: 16, scope: !3049, inlinedAt: !3027)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !2925, line: 108, column: 11)
!3050 = distinct !DILexicalBlock(scope: !3034, file: !2925, line: 107, column: 5)
!3051 = !DILocation(line: 90, column: 70, scope: !3038, inlinedAt: !3048)
!3052 = !DILocation(line: 90, column: 80, scope: !3038, inlinedAt: !3048)
!3053 = !DILocation(line: 92, column: 7, scope: !3054, inlinedAt: !3048)
!3054 = !DILexicalBlockFile(scope: !3055, file: !2925, discriminator: 2)
!3055 = distinct !DILexicalBlock(scope: !3038, file: !2925, line: 92, column: 7)
!3056 = !DILocation(line: 92, column: 7, scope: !3057, inlinedAt: !3048)
!3057 = !DILexicalBlockFile(scope: !3038, file: !2925, discriminator: 2)
!3058 = !DILocation(line: 227, column: 12, scope: !2941)
!3059 = !DILocation(line: 227, column: 21, scope: !2941)
!3060 = !DILocation(line: 227, column: 5, scope: !2941)
!3061 = !DILocation(line: 146, column: 41, scope: !2948, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 167, column: 16, scope: !2963, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 228, column: 7, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2906, file: !192, line: 228, column: 7)
!3065 = !DILocation(line: 146, column: 110, scope: !2948, inlinedAt: !3062)
!3066 = !DILocation(line: 146, column: 120, scope: !2948, inlinedAt: !3062)
!3067 = !DILocation(line: 148, column: 7, scope: !2968, inlinedAt: !3062)
!3068 = !DILocation(line: 132, column: 41, scope: !2971, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 153, column: 16, scope: !2985, inlinedAt: !3062)
!3070 = !DILocation(line: 132, column: 100, scope: !2971, inlinedAt: !3069)
!3071 = !DILocation(line: 132, column: 110, scope: !2971, inlinedAt: !3069)
!3072 = !DILocation(line: 134, column: 7, scope: !3073, inlinedAt: !3069)
!3073 = !DILexicalBlockFile(scope: !2991, file: !2925, discriminator: 2)
!3074 = !DILocation(line: 134, column: 7, scope: !3075, inlinedAt: !3069)
!3075 = !DILexicalBlockFile(scope: !2971, file: !2925, discriminator: 2)
!3076 = !DILocation(line: 118, column: 41, scope: !2993, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 139, column: 16, scope: !3006, inlinedAt: !3069)
!3078 = !DILocation(line: 118, column: 90, scope: !2993, inlinedAt: !3077)
!3079 = !DILocation(line: 118, column: 100, scope: !2993, inlinedAt: !3077)
!3080 = !DILocation(line: 120, column: 7, scope: !3011, inlinedAt: !3077)
!3081 = !DILocation(line: 120, column: 7, scope: !3014, inlinedAt: !3077)
!3082 = !DILocation(line: 104, column: 41, scope: !3016, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 125, column: 16, scope: !3028, inlinedAt: !3077)
!3084 = !DILocation(line: 104, column: 80, scope: !3016, inlinedAt: !3083)
!3085 = !DILocation(line: 104, column: 90, scope: !3016, inlinedAt: !3083)
!3086 = !DILocation(line: 106, column: 7, scope: !3033, inlinedAt: !3083)
!3087 = !DILocation(line: 106, column: 7, scope: !3036, inlinedAt: !3083)
!3088 = !DILocation(line: 90, column: 41, scope: !3038, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 111, column: 16, scope: !3049, inlinedAt: !3083)
!3090 = !DILocation(line: 90, column: 70, scope: !3038, inlinedAt: !3089)
!3091 = !DILocation(line: 90, column: 80, scope: !3038, inlinedAt: !3089)
!3092 = !DILocation(line: 92, column: 7, scope: !3054, inlinedAt: !3089)
!3093 = !DILocation(line: 92, column: 7, scope: !3057, inlinedAt: !3089)
!3094 = !DILocalVariable(name: "s2", arg: 2, scope: !3095, file: !2925, line: 76, type: !53)
!3095 = distinct !DISubprogram(name: "strcaseeq6", scope: !2925, file: !2925, line: 76, type: !3096, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!87, !53, !53, !43, !43, !43}
!3098 = !{!3099, !3094, !3100, !3101, !3102}
!3099 = !DILocalVariable(name: "s1", arg: 1, scope: !3095, file: !2925, line: 76, type: !53)
!3100 = !DILocalVariable(name: "s26", arg: 3, scope: !3095, file: !2925, line: 76, type: !43)
!3101 = !DILocalVariable(name: "s27", arg: 4, scope: !3095, file: !2925, line: 76, type: !43)
!3102 = !DILocalVariable(name: "s28", arg: 5, scope: !3095, file: !2925, line: 76, type: !43)
!3103 = !DILocation(line: 76, column: 41, scope: !3095, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 97, column: 16, scope: !3105, inlinedAt: !3089)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !2925, line: 94, column: 11)
!3106 = distinct !DILexicalBlock(scope: !3055, file: !2925, line: 93, column: 5)
!3107 = !DILocation(line: 76, column: 60, scope: !3095, inlinedAt: !3104)
!3108 = !DILocation(line: 76, column: 70, scope: !3095, inlinedAt: !3104)
!3109 = !DILocation(line: 78, column: 7, scope: !3110, inlinedAt: !3104)
!3110 = !DILexicalBlockFile(scope: !3111, file: !2925, discriminator: 2)
!3111 = distinct !DILexicalBlock(scope: !3095, file: !2925, line: 78, column: 7)
!3112 = !DILocation(line: 78, column: 7, scope: !3113, inlinedAt: !3104)
!3113 = !DILexicalBlockFile(scope: !3095, file: !2925, discriminator: 2)
!3114 = !DILocalVariable(name: "s2", arg: 2, scope: !3115, file: !2925, line: 62, type: !53)
!3115 = distinct !DISubprogram(name: "strcaseeq7", scope: !2925, file: !2925, line: 62, type: !3116, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!87, !53, !53, !43, !43}
!3118 = !{!3119, !3114, !3120, !3121}
!3119 = !DILocalVariable(name: "s1", arg: 1, scope: !3115, file: !2925, line: 62, type: !53)
!3120 = !DILocalVariable(name: "s27", arg: 3, scope: !3115, file: !2925, line: 62, type: !43)
!3121 = !DILocalVariable(name: "s28", arg: 4, scope: !3115, file: !2925, line: 62, type: !43)
!3122 = !DILocation(line: 62, column: 41, scope: !3115, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 83, column: 16, scope: !3124, inlinedAt: !3104)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !2925, line: 80, column: 11)
!3125 = distinct !DILexicalBlock(scope: !3111, file: !2925, line: 79, column: 5)
!3126 = !DILocation(line: 62, column: 50, scope: !3115, inlinedAt: !3123)
!3127 = !DILocation(line: 62, column: 60, scope: !3115, inlinedAt: !3123)
!3128 = !DILocation(line: 64, column: 7, scope: !3129, inlinedAt: !3123)
!3129 = !DILexicalBlockFile(scope: !3130, file: !2925, discriminator: 2)
!3130 = distinct !DILexicalBlock(scope: !3115, file: !2925, line: 64, column: 7)
!3131 = !DILocation(line: 228, column: 7, scope: !2906)
!3132 = !DILocation(line: 229, column: 12, scope: !3064)
!3133 = !DILocation(line: 229, column: 21, scope: !3064)
!3134 = !DILocation(line: 229, column: 5, scope: !3064)
!3135 = !DILocation(line: 231, column: 13, scope: !2906)
!3136 = !DILocation(line: 231, column: 11, scope: !2906)
!3137 = !DILocation(line: 231, column: 3, scope: !2906)
!3138 = !DILocation(line: 232, column: 1, scope: !2906)
!3139 = distinct !DISubprogram(name: "quotearg_alloc", scope: !192, file: !192, line: 791, type: !3140, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!42, !53, !45, !1983}
!3142 = !{!3143, !3144, !3145}
!3143 = !DILocalVariable(name: "arg", arg: 1, scope: !3139, file: !192, line: 791, type: !53)
!3144 = !DILocalVariable(name: "argsize", arg: 2, scope: !3139, file: !192, line: 791, type: !45)
!3145 = !DILocalVariable(name: "o", arg: 3, scope: !3139, file: !192, line: 792, type: !1983)
!3146 = !DILocation(line: 791, column: 29, scope: !3139)
!3147 = !DILocation(line: 791, column: 41, scope: !3139)
!3148 = !DILocation(line: 792, column: 47, scope: !3139)
!3149 = !DILocalVariable(name: "arg", arg: 1, scope: !3150, file: !192, line: 804, type: !53)
!3150 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !192, file: !192, line: 804, type: !3151, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!42, !53, !45, !642, !1983}
!3153 = !{!3149, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161}
!3154 = !DILocalVariable(name: "argsize", arg: 2, scope: !3150, file: !192, line: 804, type: !45)
!3155 = !DILocalVariable(name: "size", arg: 3, scope: !3150, file: !192, line: 804, type: !642)
!3156 = !DILocalVariable(name: "o", arg: 4, scope: !3150, file: !192, line: 805, type: !1983)
!3157 = !DILocalVariable(name: "p", scope: !3150, file: !192, line: 807, type: !1983)
!3158 = !DILocalVariable(name: "e", scope: !3150, file: !192, line: 808, type: !87)
!3159 = !DILocalVariable(name: "flags", scope: !3150, file: !192, line: 810, type: !87)
!3160 = !DILocalVariable(name: "bufsize", scope: !3150, file: !192, line: 811, type: !45)
!3161 = !DILocalVariable(name: "buf", scope: !3150, file: !192, line: 815, type: !42)
!3162 = !DILocation(line: 804, column: 33, scope: !3150, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 794, column: 10, scope: !3139)
!3164 = !DILocation(line: 804, column: 45, scope: !3150, inlinedAt: !3163)
!3165 = !DILocation(line: 804, column: 62, scope: !3150, inlinedAt: !3163)
!3166 = !DILocation(line: 805, column: 51, scope: !3150, inlinedAt: !3163)
!3167 = !DILocation(line: 807, column: 37, scope: !3150, inlinedAt: !3163)
!3168 = !DILocation(line: 807, column: 33, scope: !3150, inlinedAt: !3163)
!3169 = !DILocation(line: 808, column: 11, scope: !3150, inlinedAt: !3163)
!3170 = !DILocation(line: 808, column: 7, scope: !3150, inlinedAt: !3163)
!3171 = !DILocation(line: 810, column: 18, scope: !3150, inlinedAt: !3163)
!3172 = !DILocation(line: 810, column: 24, scope: !3150, inlinedAt: !3163)
!3173 = !DILocation(line: 810, column: 7, scope: !3150, inlinedAt: !3163)
!3174 = !DILocation(line: 811, column: 69, scope: !3150, inlinedAt: !3163)
!3175 = !DILocation(line: 812, column: 53, scope: !3150, inlinedAt: !3163)
!3176 = !DILocation(line: 813, column: 49, scope: !3150, inlinedAt: !3163)
!3177 = !DILocation(line: 814, column: 49, scope: !3150, inlinedAt: !3163)
!3178 = !DILocation(line: 811, column: 20, scope: !3150, inlinedAt: !3163)
!3179 = !DILocation(line: 814, column: 62, scope: !3150, inlinedAt: !3163)
!3180 = !DILocation(line: 811, column: 10, scope: !3150, inlinedAt: !3163)
!3181 = !DILocalVariable(name: "n", arg: 1, scope: !3182, file: !638, line: 220, type: !45)
!3182 = distinct !DISubprogram(name: "xcharalloc", scope: !638, file: !638, line: 220, type: !3183, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!42, !45}
!3185 = !{!3181}
!3186 = !DILocation(line: 220, column: 20, scope: !3182, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 815, column: 15, scope: !3150, inlinedAt: !3163)
!3188 = !DILocation(line: 222, column: 10, scope: !3182, inlinedAt: !3187)
!3189 = !DILocation(line: 815, column: 9, scope: !3150, inlinedAt: !3163)
!3190 = !DILocation(line: 816, column: 60, scope: !3150, inlinedAt: !3163)
!3191 = !DILocation(line: 818, column: 32, scope: !3150, inlinedAt: !3163)
!3192 = !DILocation(line: 818, column: 47, scope: !3150, inlinedAt: !3163)
!3193 = !DILocation(line: 816, column: 3, scope: !3150, inlinedAt: !3163)
!3194 = !DILocation(line: 819, column: 9, scope: !3150, inlinedAt: !3163)
!3195 = !DILocation(line: 794, column: 3, scope: !3139)
!3196 = !DILocation(line: 804, column: 33, scope: !3150)
!3197 = !DILocation(line: 804, column: 45, scope: !3150)
!3198 = !DILocation(line: 804, column: 62, scope: !3150)
!3199 = !DILocation(line: 805, column: 51, scope: !3150)
!3200 = !DILocation(line: 807, column: 37, scope: !3150)
!3201 = !DILocation(line: 807, column: 33, scope: !3150)
!3202 = !DILocation(line: 808, column: 11, scope: !3150)
!3203 = !DILocation(line: 808, column: 7, scope: !3150)
!3204 = !DILocation(line: 810, column: 18, scope: !3150)
!3205 = !DILocation(line: 810, column: 27, scope: !3150)
!3206 = !DILocation(line: 810, column: 24, scope: !3150)
!3207 = !DILocation(line: 810, column: 7, scope: !3150)
!3208 = !DILocation(line: 811, column: 69, scope: !3150)
!3209 = !DILocation(line: 812, column: 53, scope: !3150)
!3210 = !DILocation(line: 813, column: 49, scope: !3150)
!3211 = !DILocation(line: 814, column: 49, scope: !3150)
!3212 = !DILocation(line: 811, column: 20, scope: !3150)
!3213 = !DILocation(line: 814, column: 62, scope: !3150)
!3214 = !DILocation(line: 811, column: 10, scope: !3150)
!3215 = !DILocation(line: 220, column: 20, scope: !3182, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 815, column: 15, scope: !3150)
!3217 = !DILocation(line: 222, column: 10, scope: !3182, inlinedAt: !3216)
!3218 = !DILocation(line: 815, column: 9, scope: !3150)
!3219 = !DILocation(line: 816, column: 60, scope: !3150)
!3220 = !DILocation(line: 818, column: 32, scope: !3150)
!3221 = !DILocation(line: 818, column: 47, scope: !3150)
!3222 = !DILocation(line: 816, column: 3, scope: !3150)
!3223 = !DILocation(line: 819, column: 9, scope: !3150)
!3224 = !DILocation(line: 820, column: 7, scope: !3150)
!3225 = !DILocation(line: 821, column: 11, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3150, file: !192, line: 820, column: 7)
!3227 = !DILocation(line: 821, column: 5, scope: !3226)
!3228 = !DILocation(line: 822, column: 3, scope: !3150)
!3229 = distinct !DISubprogram(name: "quotearg_free", scope: !192, file: !192, line: 840, type: !251, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3230)
!3230 = !{!3231, !3232}
!3231 = !DILocalVariable(name: "sv", scope: !3229, file: !192, line: 842, type: !219)
!3232 = !DILocalVariable(name: "i", scope: !3229, file: !192, line: 843, type: !87)
!3233 = !DILocation(line: 842, column: 24, scope: !3229)
!3234 = !DILocation(line: 842, column: 19, scope: !3229)
!3235 = !DILocation(line: 843, column: 7, scope: !3229)
!3236 = !DILocation(line: 844, column: 19, scope: !3237)
!3237 = !DILexicalBlockFile(scope: !3238, file: !192, discriminator: 1)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !192, line: 844, column: 3)
!3239 = distinct !DILexicalBlock(scope: !3229, file: !192, line: 844, column: 3)
!3240 = !DILocation(line: 844, column: 17, scope: !3237)
!3241 = !DILocation(line: 844, column: 3, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3239, file: !192, discriminator: 1)
!3243 = !DILocation(line: 845, column: 17, scope: !3238)
!3244 = !{!3245, !692, i64 8}
!3245 = !{!"slotvec", !946, i64 0, !692, i64 8}
!3246 = !DILocation(line: 845, column: 5, scope: !3238)
!3247 = !DILocation(line: 844, column: 28, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !3238, file: !192, discriminator: 2)
!3249 = distinct !{!3249, !3250, !3251}
!3250 = !DILocation(line: 844, column: 3, scope: !3239)
!3251 = !DILocation(line: 845, column: 20, scope: !3239)
!3252 = !DILocation(line: 846, column: 13, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3229, file: !192, line: 846, column: 7)
!3254 = !DILocation(line: 846, column: 17, scope: !3253)
!3255 = !DILocation(line: 846, column: 7, scope: !3229)
!3256 = !DILocation(line: 848, column: 7, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !192, line: 847, column: 5)
!3258 = !DILocation(line: 849, column: 21, scope: !3257)
!3259 = !{!3245, !946, i64 0}
!3260 = !DILocation(line: 850, column: 20, scope: !3257)
!3261 = !DILocation(line: 851, column: 5, scope: !3257)
!3262 = !DILocation(line: 852, column: 10, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3229, file: !192, line: 852, column: 7)
!3264 = !DILocation(line: 852, column: 7, scope: !3229)
!3265 = !DILocation(line: 854, column: 13, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !192, line: 853, column: 5)
!3267 = !DILocation(line: 854, column: 7, scope: !3266)
!3268 = !DILocation(line: 855, column: 15, scope: !3266)
!3269 = !DILocation(line: 856, column: 5, scope: !3266)
!3270 = !DILocation(line: 857, column: 10, scope: !3229)
!3271 = !DILocation(line: 858, column: 1, scope: !3229)
!3272 = distinct !DISubprogram(name: "quotearg_n", scope: !192, file: !192, line: 922, type: !3273, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!42, !87, !53}
!3275 = !{!3276, !3277}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !192, line: 922, type: !87)
!3277 = !DILocalVariable(name: "arg", arg: 2, scope: !3272, file: !192, line: 922, type: !53)
!3278 = !DILocation(line: 922, column: 17, scope: !3272)
!3279 = !DILocation(line: 922, column: 32, scope: !3272)
!3280 = !DILocation(line: 924, column: 10, scope: !3272)
!3281 = !DILocation(line: 924, column: 3, scope: !3272)
!3282 = distinct !DISubprogram(name: "quotearg_n_options", scope: !192, file: !192, line: 869, type: !3283, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!42, !87, !53, !45, !1983}
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3295, !3297, !3298, !3299}
!3286 = !DILocalVariable(name: "n", arg: 1, scope: !3282, file: !192, line: 869, type: !87)
!3287 = !DILocalVariable(name: "arg", arg: 2, scope: !3282, file: !192, line: 869, type: !53)
!3288 = !DILocalVariable(name: "argsize", arg: 3, scope: !3282, file: !192, line: 869, type: !45)
!3289 = !DILocalVariable(name: "options", arg: 4, scope: !3282, file: !192, line: 870, type: !1983)
!3290 = !DILocalVariable(name: "e", scope: !3282, file: !192, line: 872, type: !87)
!3291 = !DILocalVariable(name: "sv", scope: !3282, file: !192, line: 874, type: !219)
!3292 = !DILocalVariable(name: "preallocated", scope: !3293, file: !192, line: 881, type: !59)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !192, line: 880, column: 5)
!3294 = distinct !DILexicalBlock(scope: !3282, file: !192, line: 879, column: 7)
!3295 = !DILocalVariable(name: "size", scope: !3296, file: !192, line: 894, type: !45)
!3296 = distinct !DILexicalBlock(scope: !3282, file: !192, line: 893, column: 3)
!3297 = !DILocalVariable(name: "val", scope: !3296, file: !192, line: 895, type: !42)
!3298 = !DILocalVariable(name: "flags", scope: !3296, file: !192, line: 897, type: !87)
!3299 = !DILocalVariable(name: "qsize", scope: !3296, file: !192, line: 898, type: !45)
!3300 = !DILocation(line: 869, column: 25, scope: !3282)
!3301 = !DILocation(line: 869, column: 40, scope: !3282)
!3302 = !DILocation(line: 869, column: 52, scope: !3282)
!3303 = !DILocation(line: 870, column: 51, scope: !3282)
!3304 = !DILocation(line: 872, column: 11, scope: !3282)
!3305 = !DILocation(line: 872, column: 7, scope: !3282)
!3306 = !DILocation(line: 874, column: 24, scope: !3282)
!3307 = !DILocation(line: 874, column: 19, scope: !3282)
!3308 = !DILocation(line: 876, column: 9, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3282, file: !192, line: 876, column: 7)
!3310 = !DILocation(line: 876, column: 7, scope: !3282)
!3311 = !DILocation(line: 877, column: 5, scope: !3309)
!3312 = !DILocation(line: 879, column: 7, scope: !3294)
!3313 = !DILocation(line: 879, column: 14, scope: !3294)
!3314 = !DILocation(line: 879, column: 7, scope: !3282)
!3315 = !DILocation(line: 881, column: 31, scope: !3293)
!3316 = !DILocation(line: 883, column: 67, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3293, file: !192, line: 883, column: 11)
!3318 = !DILocation(line: 883, column: 11, scope: !3293)
!3319 = !DILocation(line: 884, column: 9, scope: !3317)
!3320 = !DILocation(line: 886, column: 32, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3293, file: !192, discriminator: 3)
!3322 = !DILocation(line: 886, column: 61, scope: !3321)
!3323 = !DILocation(line: 886, column: 58, scope: !3321)
!3324 = !DILocation(line: 886, column: 66, scope: !3321)
!3325 = !DILocation(line: 886, column: 22, scope: !3321)
!3326 = !DILocation(line: 886, column: 15, scope: !3321)
!3327 = !DILocation(line: 887, column: 11, scope: !3293)
!3328 = !DILocation(line: 888, column: 15, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3293, file: !192, line: 887, column: 11)
!3330 = !{i64 0, i64 8, !1908, i64 8, i64 8, !691}
!3331 = !DILocation(line: 888, column: 9, scope: !3329)
!3332 = !DILocation(line: 889, column: 20, scope: !3293)
!3333 = !DILocation(line: 889, column: 18, scope: !3293)
!3334 = !DILocation(line: 889, column: 7, scope: !3293)
!3335 = !DILocation(line: 889, column: 38, scope: !3293)
!3336 = !DILocation(line: 889, column: 31, scope: !3293)
!3337 = !DILocation(line: 889, column: 48, scope: !3293)
!3338 = !DILocation(line: 890, column: 14, scope: !3293)
!3339 = !DILocation(line: 891, column: 5, scope: !3293)
!3340 = !DILocation(line: 894, column: 19, scope: !3296)
!3341 = !DILocation(line: 894, column: 25, scope: !3296)
!3342 = !DILocation(line: 894, column: 12, scope: !3296)
!3343 = !DILocation(line: 895, column: 23, scope: !3296)
!3344 = !DILocation(line: 895, column: 11, scope: !3296)
!3345 = !DILocation(line: 897, column: 26, scope: !3296)
!3346 = !DILocation(line: 897, column: 32, scope: !3296)
!3347 = !DILocation(line: 897, column: 9, scope: !3296)
!3348 = !DILocation(line: 899, column: 55, scope: !3296)
!3349 = !DILocation(line: 900, column: 46, scope: !3296)
!3350 = !DILocation(line: 901, column: 55, scope: !3296)
!3351 = !DILocation(line: 902, column: 55, scope: !3296)
!3352 = !DILocation(line: 898, column: 20, scope: !3296)
!3353 = !DILocation(line: 898, column: 12, scope: !3296)
!3354 = !DILocation(line: 904, column: 14, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3296, file: !192, line: 904, column: 9)
!3356 = !DILocation(line: 904, column: 9, scope: !3296)
!3357 = !DILocation(line: 906, column: 35, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3355, file: !192, line: 905, column: 7)
!3359 = !DILocation(line: 906, column: 20, scope: !3358)
!3360 = !DILocation(line: 907, column: 17, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3358, file: !192, line: 907, column: 13)
!3362 = !DILocation(line: 907, column: 13, scope: !3358)
!3363 = !DILocation(line: 908, column: 11, scope: !3361)
!3364 = !DILocation(line: 220, column: 20, scope: !3182, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 909, column: 27, scope: !3358)
!3366 = !DILocation(line: 222, column: 10, scope: !3182, inlinedAt: !3365)
!3367 = !DILocation(line: 909, column: 19, scope: !3358)
!3368 = !DILocation(line: 910, column: 69, scope: !3358)
!3369 = !DILocation(line: 912, column: 44, scope: !3358)
!3370 = !DILocation(line: 913, column: 44, scope: !3358)
!3371 = !DILocation(line: 910, column: 9, scope: !3358)
!3372 = !DILocation(line: 914, column: 7, scope: !3358)
!3373 = !DILocation(line: 916, column: 11, scope: !3296)
!3374 = !DILocation(line: 917, column: 5, scope: !3296)
!3375 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !192, file: !192, line: 928, type: !3376, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!42, !87, !53, !45}
!3378 = !{!3379, !3380, !3381}
!3379 = !DILocalVariable(name: "n", arg: 1, scope: !3375, file: !192, line: 928, type: !87)
!3380 = !DILocalVariable(name: "arg", arg: 2, scope: !3375, file: !192, line: 928, type: !53)
!3381 = !DILocalVariable(name: "argsize", arg: 3, scope: !3375, file: !192, line: 928, type: !45)
!3382 = !DILocation(line: 928, column: 21, scope: !3375)
!3383 = !DILocation(line: 928, column: 36, scope: !3375)
!3384 = !DILocation(line: 928, column: 48, scope: !3375)
!3385 = !DILocation(line: 930, column: 10, scope: !3375)
!3386 = !DILocation(line: 930, column: 3, scope: !3375)
!3387 = distinct !DISubprogram(name: "quotearg", scope: !192, file: !192, line: 934, type: !3388, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!42, !53}
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "arg", arg: 1, scope: !3387, file: !192, line: 934, type: !53)
!3392 = !DILocation(line: 934, column: 23, scope: !3387)
!3393 = !DILocation(line: 922, column: 17, scope: !3272, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 936, column: 10, scope: !3387)
!3395 = !DILocation(line: 922, column: 32, scope: !3272, inlinedAt: !3394)
!3396 = !DILocation(line: 924, column: 10, scope: !3272, inlinedAt: !3394)
!3397 = !DILocation(line: 936, column: 3, scope: !3387)
!3398 = distinct !DISubprogram(name: "quotearg_mem", scope: !192, file: !192, line: 940, type: !3399, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!42, !53, !45}
!3401 = !{!3402, !3403}
!3402 = !DILocalVariable(name: "arg", arg: 1, scope: !3398, file: !192, line: 940, type: !53)
!3403 = !DILocalVariable(name: "argsize", arg: 2, scope: !3398, file: !192, line: 940, type: !45)
!3404 = !DILocation(line: 940, column: 27, scope: !3398)
!3405 = !DILocation(line: 940, column: 39, scope: !3398)
!3406 = !DILocation(line: 928, column: 21, scope: !3375, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 942, column: 10, scope: !3398)
!3408 = !DILocation(line: 928, column: 36, scope: !3375, inlinedAt: !3407)
!3409 = !DILocation(line: 928, column: 48, scope: !3375, inlinedAt: !3407)
!3410 = !DILocation(line: 930, column: 10, scope: !3375, inlinedAt: !3407)
!3411 = !DILocation(line: 942, column: 3, scope: !3398)
!3412 = distinct !DISubprogram(name: "quotearg_n_style", scope: !192, file: !192, line: 946, type: !3413, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3415)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!42, !87, !5, !53}
!3415 = !{!3416, !3417, !3418, !3419}
!3416 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !192, line: 946, type: !87)
!3417 = !DILocalVariable(name: "s", arg: 2, scope: !3412, file: !192, line: 946, type: !5)
!3418 = !DILocalVariable(name: "arg", arg: 3, scope: !3412, file: !192, line: 946, type: !53)
!3419 = !DILocalVariable(name: "o", scope: !3412, file: !192, line: 948, type: !1984)
!3420 = !DILocalVariable(name: "o", scope: !3421, file: !192, line: 187, type: !199)
!3421 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !192, file: !192, line: 185, type: !3422, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!199, !5}
!3424 = !{!3425, !3420}
!3425 = !DILocalVariable(name: "style", arg: 1, scope: !3421, file: !192, line: 185, type: !5)
!3426 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3427 = !DILocation(line: 187, column: 26, scope: !3421, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 948, column: 36, scope: !3412)
!3429 = !DILocation(line: 946, column: 23, scope: !3412)
!3430 = !DILocation(line: 946, column: 45, scope: !3412)
!3431 = !DILocation(line: 946, column: 60, scope: !3412)
!3432 = !DILocation(line: 948, column: 3, scope: !3412)
!3433 = !DILocation(line: 948, column: 32, scope: !3412)
!3434 = !DILocation(line: 185, column: 48, scope: !3421, inlinedAt: !3428)
!3435 = !DILocation(line: 187, column: 3, scope: !3421, inlinedAt: !3428)
!3436 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3437 = !DILocation(line: 188, column: 13, scope: !3438, inlinedAt: !3428)
!3438 = distinct !DILexicalBlock(scope: !3421, file: !192, line: 188, column: 7)
!3439 = !DILocation(line: 188, column: 7, scope: !3421, inlinedAt: !3428)
!3440 = !DILocation(line: 189, column: 5, scope: !3438, inlinedAt: !3428)
!3441 = !{!3442}
!3442 = distinct !{!3442, !3443, !"quoting_options_from_style: argument 0"}
!3443 = distinct !{!3443, !"quoting_options_from_style"}
!3444 = !DILocation(line: 191, column: 10, scope: !3421, inlinedAt: !3428)
!3445 = !DILocation(line: 192, column: 1, scope: !3421, inlinedAt: !3428)
!3446 = !DILocation(line: 949, column: 10, scope: !3412)
!3447 = !DILocation(line: 950, column: 1, scope: !3412)
!3448 = !DILocation(line: 949, column: 3, scope: !3412)
!3449 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !192, file: !192, line: 953, type: !3450, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!42, !87, !5, !53, !45}
!3452 = !{!3453, !3454, !3455, !3456, !3457}
!3453 = !DILocalVariable(name: "n", arg: 1, scope: !3449, file: !192, line: 953, type: !87)
!3454 = !DILocalVariable(name: "s", arg: 2, scope: !3449, file: !192, line: 953, type: !5)
!3455 = !DILocalVariable(name: "arg", arg: 3, scope: !3449, file: !192, line: 954, type: !53)
!3456 = !DILocalVariable(name: "argsize", arg: 4, scope: !3449, file: !192, line: 954, type: !45)
!3457 = !DILocalVariable(name: "o", scope: !3449, file: !192, line: 956, type: !1984)
!3458 = !DILocation(line: 187, column: 26, scope: !3421, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 956, column: 36, scope: !3449)
!3460 = !DILocation(line: 953, column: 27, scope: !3449)
!3461 = !DILocation(line: 953, column: 49, scope: !3449)
!3462 = !DILocation(line: 954, column: 35, scope: !3449)
!3463 = !DILocation(line: 954, column: 47, scope: !3449)
!3464 = !DILocation(line: 956, column: 3, scope: !3449)
!3465 = !DILocation(line: 956, column: 32, scope: !3449)
!3466 = !DILocation(line: 185, column: 48, scope: !3421, inlinedAt: !3459)
!3467 = !DILocation(line: 187, column: 3, scope: !3421, inlinedAt: !3459)
!3468 = !DILocation(line: 188, column: 13, scope: !3438, inlinedAt: !3459)
!3469 = !DILocation(line: 188, column: 7, scope: !3421, inlinedAt: !3459)
!3470 = !DILocation(line: 189, column: 5, scope: !3438, inlinedAt: !3459)
!3471 = !{!3472}
!3472 = distinct !{!3472, !3473, !"quoting_options_from_style: argument 0"}
!3473 = distinct !{!3473, !"quoting_options_from_style"}
!3474 = !DILocation(line: 191, column: 10, scope: !3421, inlinedAt: !3459)
!3475 = !DILocation(line: 192, column: 1, scope: !3421, inlinedAt: !3459)
!3476 = !DILocation(line: 957, column: 10, scope: !3449)
!3477 = !DILocation(line: 958, column: 1, scope: !3449)
!3478 = !DILocation(line: 957, column: 3, scope: !3449)
!3479 = distinct !DISubprogram(name: "quotearg_style", scope: !192, file: !192, line: 961, type: !3480, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!42, !5, !53}
!3482 = !{!3483, !3484}
!3483 = !DILocalVariable(name: "s", arg: 1, scope: !3479, file: !192, line: 961, type: !5)
!3484 = !DILocalVariable(name: "arg", arg: 2, scope: !3479, file: !192, line: 961, type: !53)
!3485 = !DILocation(line: 187, column: 26, scope: !3421, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 948, column: 36, scope: !3412, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 963, column: 10, scope: !3479)
!3488 = !DILocation(line: 961, column: 36, scope: !3479)
!3489 = !DILocation(line: 961, column: 51, scope: !3479)
!3490 = !DILocation(line: 946, column: 23, scope: !3412, inlinedAt: !3487)
!3491 = !DILocation(line: 946, column: 45, scope: !3412, inlinedAt: !3487)
!3492 = !DILocation(line: 946, column: 60, scope: !3412, inlinedAt: !3487)
!3493 = !DILocation(line: 948, column: 3, scope: !3412, inlinedAt: !3487)
!3494 = !DILocation(line: 948, column: 32, scope: !3412, inlinedAt: !3487)
!3495 = !DILocation(line: 185, column: 48, scope: !3421, inlinedAt: !3486)
!3496 = !DILocation(line: 187, column: 3, scope: !3421, inlinedAt: !3486)
!3497 = !DILocation(line: 188, column: 13, scope: !3438, inlinedAt: !3486)
!3498 = !DILocation(line: 188, column: 7, scope: !3421, inlinedAt: !3486)
!3499 = !DILocation(line: 189, column: 5, scope: !3438, inlinedAt: !3486)
!3500 = !{!3501}
!3501 = distinct !{!3501, !3502, !"quoting_options_from_style: argument 0"}
!3502 = distinct !{!3502, !"quoting_options_from_style"}
!3503 = !DILocation(line: 191, column: 10, scope: !3421, inlinedAt: !3486)
!3504 = !DILocation(line: 192, column: 1, scope: !3421, inlinedAt: !3486)
!3505 = !DILocation(line: 949, column: 10, scope: !3412, inlinedAt: !3487)
!3506 = !DILocation(line: 950, column: 1, scope: !3412, inlinedAt: !3487)
!3507 = !DILocation(line: 963, column: 3, scope: !3479)
!3508 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !192, file: !192, line: 967, type: !3509, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!42, !5, !53, !45}
!3511 = !{!3512, !3513, !3514}
!3512 = !DILocalVariable(name: "s", arg: 1, scope: !3508, file: !192, line: 967, type: !5)
!3513 = !DILocalVariable(name: "arg", arg: 2, scope: !3508, file: !192, line: 967, type: !53)
!3514 = !DILocalVariable(name: "argsize", arg: 3, scope: !3508, file: !192, line: 967, type: !45)
!3515 = !DILocation(line: 187, column: 26, scope: !3421, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 956, column: 36, scope: !3449, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 969, column: 10, scope: !3508)
!3518 = !DILocation(line: 967, column: 40, scope: !3508)
!3519 = !DILocation(line: 967, column: 55, scope: !3508)
!3520 = !DILocation(line: 967, column: 67, scope: !3508)
!3521 = !DILocation(line: 953, column: 27, scope: !3449, inlinedAt: !3517)
!3522 = !DILocation(line: 953, column: 49, scope: !3449, inlinedAt: !3517)
!3523 = !DILocation(line: 954, column: 35, scope: !3449, inlinedAt: !3517)
!3524 = !DILocation(line: 954, column: 47, scope: !3449, inlinedAt: !3517)
!3525 = !DILocation(line: 956, column: 3, scope: !3449, inlinedAt: !3517)
!3526 = !DILocation(line: 956, column: 32, scope: !3449, inlinedAt: !3517)
!3527 = !DILocation(line: 185, column: 48, scope: !3421, inlinedAt: !3516)
!3528 = !DILocation(line: 187, column: 3, scope: !3421, inlinedAt: !3516)
!3529 = !DILocation(line: 188, column: 13, scope: !3438, inlinedAt: !3516)
!3530 = !DILocation(line: 188, column: 7, scope: !3421, inlinedAt: !3516)
!3531 = !DILocation(line: 189, column: 5, scope: !3438, inlinedAt: !3516)
!3532 = !{!3533}
!3533 = distinct !{!3533, !3534, !"quoting_options_from_style: argument 0"}
!3534 = distinct !{!3534, !"quoting_options_from_style"}
!3535 = !DILocation(line: 191, column: 10, scope: !3421, inlinedAt: !3516)
!3536 = !DILocation(line: 192, column: 1, scope: !3421, inlinedAt: !3516)
!3537 = !DILocation(line: 957, column: 10, scope: !3449, inlinedAt: !3517)
!3538 = !DILocation(line: 958, column: 1, scope: !3449, inlinedAt: !3517)
!3539 = !DILocation(line: 969, column: 3, scope: !3508)
!3540 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !192, file: !192, line: 973, type: !3541, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!42, !53, !45, !43}
!3543 = !{!3544, !3545, !3546, !3547}
!3544 = !DILocalVariable(name: "arg", arg: 1, scope: !3540, file: !192, line: 973, type: !53)
!3545 = !DILocalVariable(name: "argsize", arg: 2, scope: !3540, file: !192, line: 973, type: !45)
!3546 = !DILocalVariable(name: "ch", arg: 3, scope: !3540, file: !192, line: 973, type: !43)
!3547 = !DILocalVariable(name: "options", scope: !3540, file: !192, line: 975, type: !199)
!3548 = !DILocation(line: 973, column: 32, scope: !3540)
!3549 = !DILocation(line: 973, column: 44, scope: !3540)
!3550 = !DILocation(line: 973, column: 58, scope: !3540)
!3551 = !DILocation(line: 975, column: 3, scope: !3540)
!3552 = !DILocation(line: 976, column: 13, scope: !3540)
!3553 = !{i64 0, i64 4, !903, i64 4, i64 4, !780, i64 8, i64 32, !903, i64 40, i64 8, !691, i64 48, i64 8, !691}
!3554 = !DILocation(line: 975, column: 26, scope: !3540)
!3555 = !DILocation(line: 144, column: 43, scope: !2007, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 977, column: 3, scope: !3540)
!3557 = !DILocation(line: 144, column: 51, scope: !2007, inlinedAt: !3556)
!3558 = !DILocation(line: 144, column: 58, scope: !2007, inlinedAt: !3556)
!3559 = !DILocation(line: 146, column: 17, scope: !2007, inlinedAt: !3556)
!3560 = !DILocation(line: 148, column: 62, scope: !2025, inlinedAt: !3556)
!3561 = !DILocation(line: 148, column: 57, scope: !2025, inlinedAt: !3556)
!3562 = !DILocation(line: 147, column: 17, scope: !2007, inlinedAt: !3556)
!3563 = !DILocation(line: 149, column: 18, scope: !2007, inlinedAt: !3556)
!3564 = !DILocation(line: 149, column: 15, scope: !2007, inlinedAt: !3556)
!3565 = !DILocation(line: 149, column: 7, scope: !2007, inlinedAt: !3556)
!3566 = !DILocation(line: 150, column: 12, scope: !2007, inlinedAt: !3556)
!3567 = !DILocation(line: 150, column: 15, scope: !2007, inlinedAt: !3556)
!3568 = !DILocation(line: 150, column: 25, scope: !2007, inlinedAt: !3556)
!3569 = !DILocation(line: 150, column: 7, scope: !2007, inlinedAt: !3556)
!3570 = !DILocation(line: 151, column: 18, scope: !2007, inlinedAt: !3556)
!3571 = !DILocation(line: 151, column: 23, scope: !2007, inlinedAt: !3556)
!3572 = !DILocation(line: 151, column: 6, scope: !2007, inlinedAt: !3556)
!3573 = !DILocation(line: 978, column: 10, scope: !3540)
!3574 = !DILocation(line: 979, column: 1, scope: !3540)
!3575 = !DILocation(line: 978, column: 3, scope: !3540)
!3576 = distinct !DISubprogram(name: "quotearg_char", scope: !192, file: !192, line: 982, type: !3577, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!42, !53, !43}
!3579 = !{!3580, !3581}
!3580 = !DILocalVariable(name: "arg", arg: 1, scope: !3576, file: !192, line: 982, type: !53)
!3581 = !DILocalVariable(name: "ch", arg: 2, scope: !3576, file: !192, line: 982, type: !43)
!3582 = !DILocation(line: 982, column: 28, scope: !3576)
!3583 = !DILocation(line: 982, column: 38, scope: !3576)
!3584 = !DILocation(line: 973, column: 32, scope: !3540, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 984, column: 10, scope: !3576)
!3586 = !DILocation(line: 973, column: 44, scope: !3540, inlinedAt: !3585)
!3587 = !DILocation(line: 973, column: 58, scope: !3540, inlinedAt: !3585)
!3588 = !DILocation(line: 975, column: 3, scope: !3540, inlinedAt: !3585)
!3589 = !DILocation(line: 976, column: 13, scope: !3540, inlinedAt: !3585)
!3590 = !DILocation(line: 975, column: 26, scope: !3540, inlinedAt: !3585)
!3591 = !DILocation(line: 144, column: 43, scope: !2007, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 977, column: 3, scope: !3540, inlinedAt: !3585)
!3593 = !DILocation(line: 144, column: 51, scope: !2007, inlinedAt: !3592)
!3594 = !DILocation(line: 144, column: 58, scope: !2007, inlinedAt: !3592)
!3595 = !DILocation(line: 146, column: 17, scope: !2007, inlinedAt: !3592)
!3596 = !DILocation(line: 148, column: 62, scope: !2025, inlinedAt: !3592)
!3597 = !DILocation(line: 148, column: 57, scope: !2025, inlinedAt: !3592)
!3598 = !DILocation(line: 147, column: 17, scope: !2007, inlinedAt: !3592)
!3599 = !DILocation(line: 149, column: 18, scope: !2007, inlinedAt: !3592)
!3600 = !DILocation(line: 149, column: 15, scope: !2007, inlinedAt: !3592)
!3601 = !DILocation(line: 149, column: 7, scope: !2007, inlinedAt: !3592)
!3602 = !DILocation(line: 150, column: 12, scope: !2007, inlinedAt: !3592)
!3603 = !DILocation(line: 150, column: 15, scope: !2007, inlinedAt: !3592)
!3604 = !DILocation(line: 150, column: 25, scope: !2007, inlinedAt: !3592)
!3605 = !DILocation(line: 150, column: 7, scope: !2007, inlinedAt: !3592)
!3606 = !DILocation(line: 151, column: 18, scope: !2007, inlinedAt: !3592)
!3607 = !DILocation(line: 151, column: 23, scope: !2007, inlinedAt: !3592)
!3608 = !DILocation(line: 151, column: 6, scope: !2007, inlinedAt: !3592)
!3609 = !DILocation(line: 978, column: 10, scope: !3540, inlinedAt: !3585)
!3610 = !DILocation(line: 979, column: 1, scope: !3540, inlinedAt: !3585)
!3611 = !DILocation(line: 984, column: 3, scope: !3576)
!3612 = distinct !DISubprogram(name: "quotearg_colon", scope: !192, file: !192, line: 988, type: !3388, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3613)
!3613 = !{!3614}
!3614 = !DILocalVariable(name: "arg", arg: 1, scope: !3612, file: !192, line: 988, type: !53)
!3615 = !DILocation(line: 988, column: 29, scope: !3612)
!3616 = !DILocation(line: 982, column: 28, scope: !3576, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 990, column: 10, scope: !3612)
!3618 = !DILocation(line: 982, column: 38, scope: !3576, inlinedAt: !3617)
!3619 = !DILocation(line: 973, column: 32, scope: !3540, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 984, column: 10, scope: !3576, inlinedAt: !3617)
!3621 = !DILocation(line: 973, column: 44, scope: !3540, inlinedAt: !3620)
!3622 = !DILocation(line: 973, column: 58, scope: !3540, inlinedAt: !3620)
!3623 = !DILocation(line: 975, column: 3, scope: !3540, inlinedAt: !3620)
!3624 = !DILocation(line: 976, column: 13, scope: !3540, inlinedAt: !3620)
!3625 = !DILocation(line: 975, column: 26, scope: !3540, inlinedAt: !3620)
!3626 = !DILocation(line: 144, column: 43, scope: !2007, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 977, column: 3, scope: !3540, inlinedAt: !3620)
!3628 = !DILocation(line: 144, column: 51, scope: !2007, inlinedAt: !3627)
!3629 = !DILocation(line: 144, column: 58, scope: !2007, inlinedAt: !3627)
!3630 = !DILocation(line: 146, column: 17, scope: !2007, inlinedAt: !3627)
!3631 = !DILocation(line: 148, column: 57, scope: !2025, inlinedAt: !3627)
!3632 = !DILocation(line: 147, column: 17, scope: !2007, inlinedAt: !3627)
!3633 = !DILocation(line: 149, column: 7, scope: !2007, inlinedAt: !3627)
!3634 = !DILocation(line: 150, column: 12, scope: !2007, inlinedAt: !3627)
!3635 = !DILocation(line: 151, column: 6, scope: !2007, inlinedAt: !3627)
!3636 = !DILocation(line: 978, column: 10, scope: !3540, inlinedAt: !3620)
!3637 = !DILocation(line: 979, column: 1, scope: !3540, inlinedAt: !3620)
!3638 = !DILocation(line: 990, column: 3, scope: !3612)
!3639 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !192, file: !192, line: 994, type: !3399, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3640)
!3640 = !{!3641, !3642}
!3641 = !DILocalVariable(name: "arg", arg: 1, scope: !3639, file: !192, line: 994, type: !53)
!3642 = !DILocalVariable(name: "argsize", arg: 2, scope: !3639, file: !192, line: 994, type: !45)
!3643 = !DILocation(line: 994, column: 33, scope: !3639)
!3644 = !DILocation(line: 994, column: 45, scope: !3639)
!3645 = !DILocation(line: 973, column: 32, scope: !3540, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 996, column: 10, scope: !3639)
!3647 = !DILocation(line: 973, column: 44, scope: !3540, inlinedAt: !3646)
!3648 = !DILocation(line: 973, column: 58, scope: !3540, inlinedAt: !3646)
!3649 = !DILocation(line: 975, column: 3, scope: !3540, inlinedAt: !3646)
!3650 = !DILocation(line: 976, column: 13, scope: !3540, inlinedAt: !3646)
!3651 = !DILocation(line: 975, column: 26, scope: !3540, inlinedAt: !3646)
!3652 = !DILocation(line: 144, column: 43, scope: !2007, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 977, column: 3, scope: !3540, inlinedAt: !3646)
!3654 = !DILocation(line: 144, column: 51, scope: !2007, inlinedAt: !3653)
!3655 = !DILocation(line: 144, column: 58, scope: !2007, inlinedAt: !3653)
!3656 = !DILocation(line: 146, column: 17, scope: !2007, inlinedAt: !3653)
!3657 = !DILocation(line: 148, column: 57, scope: !2025, inlinedAt: !3653)
!3658 = !DILocation(line: 147, column: 17, scope: !2007, inlinedAt: !3653)
!3659 = !DILocation(line: 149, column: 7, scope: !2007, inlinedAt: !3653)
!3660 = !DILocation(line: 150, column: 12, scope: !2007, inlinedAt: !3653)
!3661 = !DILocation(line: 151, column: 6, scope: !2007, inlinedAt: !3653)
!3662 = !DILocation(line: 978, column: 10, scope: !3540, inlinedAt: !3646)
!3663 = !DILocation(line: 979, column: 1, scope: !3540, inlinedAt: !3646)
!3664 = !DILocation(line: 996, column: 3, scope: !3639)
!3665 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !192, file: !192, line: 1000, type: !3413, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3666)
!3666 = !{!3667, !3668, !3669, !3670}
!3667 = !DILocalVariable(name: "n", arg: 1, scope: !3665, file: !192, line: 1000, type: !87)
!3668 = !DILocalVariable(name: "s", arg: 2, scope: !3665, file: !192, line: 1000, type: !5)
!3669 = !DILocalVariable(name: "arg", arg: 3, scope: !3665, file: !192, line: 1000, type: !53)
!3670 = !DILocalVariable(name: "options", scope: !3665, file: !192, line: 1002, type: !199)
!3671 = !DILocation(line: 187, column: 26, scope: !3421, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 1003, column: 13, scope: !3665)
!3673 = !DILocation(line: 1000, column: 29, scope: !3665)
!3674 = !DILocation(line: 1000, column: 51, scope: !3665)
!3675 = !DILocation(line: 1000, column: 66, scope: !3665)
!3676 = !DILocation(line: 1002, column: 3, scope: !3665)
!3677 = !DILocation(line: 185, column: 48, scope: !3421, inlinedAt: !3672)
!3678 = !DILocation(line: 187, column: 3, scope: !3421, inlinedAt: !3672)
!3679 = !DILocation(line: 188, column: 13, scope: !3438, inlinedAt: !3672)
!3680 = !DILocation(line: 188, column: 7, scope: !3421, inlinedAt: !3672)
!3681 = !DILocation(line: 189, column: 5, scope: !3438, inlinedAt: !3672)
!3682 = !{!3683}
!3683 = distinct !{!3683, !3684, !"quoting_options_from_style: argument 0"}
!3684 = distinct !{!3684, !"quoting_options_from_style"}
!3685 = !DILocation(line: 191, column: 10, scope: !3421, inlinedAt: !3672)
!3686 = !DILocation(line: 192, column: 1, scope: !3421, inlinedAt: !3672)
!3687 = !DILocation(line: 1003, column: 13, scope: !3665)
!3688 = !DILocation(line: 1002, column: 26, scope: !3665)
!3689 = !DILocation(line: 144, column: 43, scope: !2007, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 1004, column: 3, scope: !3665)
!3691 = !DILocation(line: 144, column: 51, scope: !2007, inlinedAt: !3690)
!3692 = !DILocation(line: 144, column: 58, scope: !2007, inlinedAt: !3690)
!3693 = !DILocation(line: 146, column: 17, scope: !2007, inlinedAt: !3690)
!3694 = !DILocation(line: 148, column: 57, scope: !2025, inlinedAt: !3690)
!3695 = !DILocation(line: 147, column: 17, scope: !2007, inlinedAt: !3690)
!3696 = !DILocation(line: 149, column: 7, scope: !2007, inlinedAt: !3690)
!3697 = !DILocation(line: 150, column: 12, scope: !2007, inlinedAt: !3690)
!3698 = !DILocation(line: 151, column: 6, scope: !2007, inlinedAt: !3690)
!3699 = !DILocation(line: 1005, column: 10, scope: !3665)
!3700 = !DILocation(line: 1006, column: 1, scope: !3665)
!3701 = !DILocation(line: 1005, column: 3, scope: !3665)
!3702 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !192, file: !192, line: 1009, type: !3703, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!42, !87, !53, !53, !53}
!3705 = !{!3706, !3707, !3708, !3709}
!3706 = !DILocalVariable(name: "n", arg: 1, scope: !3702, file: !192, line: 1009, type: !87)
!3707 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3702, file: !192, line: 1009, type: !53)
!3708 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3702, file: !192, line: 1010, type: !53)
!3709 = !DILocalVariable(name: "arg", arg: 4, scope: !3702, file: !192, line: 1010, type: !53)
!3710 = !DILocation(line: 1009, column: 24, scope: !3702)
!3711 = !DILocation(line: 1009, column: 39, scope: !3702)
!3712 = !DILocation(line: 1010, column: 32, scope: !3702)
!3713 = !DILocation(line: 1010, column: 57, scope: !3702)
!3714 = !DILocalVariable(name: "n", arg: 1, scope: !3715, file: !192, line: 1017, type: !87)
!3715 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !192, file: !192, line: 1017, type: !3716, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!42, !87, !53, !53, !53, !45}
!3718 = !{!3714, !3719, !3720, !3721, !3722, !3723}
!3719 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3715, file: !192, line: 1017, type: !53)
!3720 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3715, file: !192, line: 1018, type: !53)
!3721 = !DILocalVariable(name: "arg", arg: 4, scope: !3715, file: !192, line: 1019, type: !53)
!3722 = !DILocalVariable(name: "argsize", arg: 5, scope: !3715, file: !192, line: 1019, type: !45)
!3723 = !DILocalVariable(name: "o", scope: !3715, file: !192, line: 1021, type: !199)
!3724 = !DILocation(line: 1017, column: 28, scope: !3715, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 1012, column: 10, scope: !3702)
!3726 = !DILocation(line: 1017, column: 43, scope: !3715, inlinedAt: !3725)
!3727 = !DILocation(line: 1018, column: 36, scope: !3715, inlinedAt: !3725)
!3728 = !DILocation(line: 1019, column: 36, scope: !3715, inlinedAt: !3725)
!3729 = !DILocation(line: 1019, column: 48, scope: !3715, inlinedAt: !3725)
!3730 = !DILocation(line: 1021, column: 3, scope: !3715, inlinedAt: !3725)
!3731 = !DILocation(line: 1021, column: 30, scope: !3715, inlinedAt: !3725)
!3732 = !DILocation(line: 1021, column: 26, scope: !3715, inlinedAt: !3725)
!3733 = !DILocation(line: 171, column: 45, scope: !2057, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 1022, column: 3, scope: !3715, inlinedAt: !3725)
!3735 = !DILocation(line: 172, column: 33, scope: !2057, inlinedAt: !3734)
!3736 = !DILocation(line: 172, column: 57, scope: !2057, inlinedAt: !3734)
!3737 = !DILocation(line: 176, column: 6, scope: !2057, inlinedAt: !3734)
!3738 = !DILocation(line: 176, column: 12, scope: !2057, inlinedAt: !3734)
!3739 = !DILocation(line: 177, column: 8, scope: !2073, inlinedAt: !3734)
!3740 = !DILocation(line: 177, column: 23, scope: !2075, inlinedAt: !3734)
!3741 = !DILocation(line: 177, column: 19, scope: !2073, inlinedAt: !3734)
!3742 = !DILocation(line: 178, column: 5, scope: !2073, inlinedAt: !3734)
!3743 = !DILocation(line: 179, column: 6, scope: !2057, inlinedAt: !3734)
!3744 = !DILocation(line: 179, column: 17, scope: !2057, inlinedAt: !3734)
!3745 = !DILocation(line: 180, column: 6, scope: !2057, inlinedAt: !3734)
!3746 = !DILocation(line: 180, column: 18, scope: !2057, inlinedAt: !3734)
!3747 = !DILocation(line: 1023, column: 10, scope: !3715, inlinedAt: !3725)
!3748 = !DILocation(line: 1024, column: 1, scope: !3715, inlinedAt: !3725)
!3749 = !DILocation(line: 1012, column: 3, scope: !3702)
!3750 = !DILocation(line: 1017, column: 28, scope: !3715)
!3751 = !DILocation(line: 1017, column: 43, scope: !3715)
!3752 = !DILocation(line: 1018, column: 36, scope: !3715)
!3753 = !DILocation(line: 1019, column: 36, scope: !3715)
!3754 = !DILocation(line: 1019, column: 48, scope: !3715)
!3755 = !DILocation(line: 1021, column: 3, scope: !3715)
!3756 = !DILocation(line: 1021, column: 30, scope: !3715)
!3757 = !DILocation(line: 1021, column: 26, scope: !3715)
!3758 = !DILocation(line: 171, column: 45, scope: !2057, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 1022, column: 3, scope: !3715)
!3760 = !DILocation(line: 172, column: 33, scope: !2057, inlinedAt: !3759)
!3761 = !DILocation(line: 172, column: 57, scope: !2057, inlinedAt: !3759)
!3762 = !DILocation(line: 176, column: 6, scope: !2057, inlinedAt: !3759)
!3763 = !DILocation(line: 176, column: 12, scope: !2057, inlinedAt: !3759)
!3764 = !DILocation(line: 177, column: 8, scope: !2073, inlinedAt: !3759)
!3765 = !DILocation(line: 177, column: 23, scope: !2075, inlinedAt: !3759)
!3766 = !DILocation(line: 177, column: 19, scope: !2073, inlinedAt: !3759)
!3767 = !DILocation(line: 178, column: 5, scope: !2073, inlinedAt: !3759)
!3768 = !DILocation(line: 179, column: 6, scope: !2057, inlinedAt: !3759)
!3769 = !DILocation(line: 179, column: 17, scope: !2057, inlinedAt: !3759)
!3770 = !DILocation(line: 180, column: 6, scope: !2057, inlinedAt: !3759)
!3771 = !DILocation(line: 180, column: 18, scope: !2057, inlinedAt: !3759)
!3772 = !DILocation(line: 1023, column: 10, scope: !3715)
!3773 = !DILocation(line: 1024, column: 1, scope: !3715)
!3774 = !DILocation(line: 1023, column: 3, scope: !3715)
!3775 = distinct !DISubprogram(name: "quotearg_custom", scope: !192, file: !192, line: 1027, type: !3776, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3778)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!42, !53, !53, !53}
!3778 = !{!3779, !3780, !3781}
!3779 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3775, file: !192, line: 1027, type: !53)
!3780 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3775, file: !192, line: 1027, type: !53)
!3781 = !DILocalVariable(name: "arg", arg: 3, scope: !3775, file: !192, line: 1028, type: !53)
!3782 = !DILocation(line: 1027, column: 30, scope: !3775)
!3783 = !DILocation(line: 1027, column: 54, scope: !3775)
!3784 = !DILocation(line: 1028, column: 30, scope: !3775)
!3785 = !DILocation(line: 1009, column: 24, scope: !3702, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 1030, column: 10, scope: !3775)
!3787 = !DILocation(line: 1009, column: 39, scope: !3702, inlinedAt: !3786)
!3788 = !DILocation(line: 1010, column: 32, scope: !3702, inlinedAt: !3786)
!3789 = !DILocation(line: 1010, column: 57, scope: !3702, inlinedAt: !3786)
!3790 = !DILocation(line: 1017, column: 28, scope: !3715, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 1012, column: 10, scope: !3702, inlinedAt: !3786)
!3792 = !DILocation(line: 1017, column: 43, scope: !3715, inlinedAt: !3791)
!3793 = !DILocation(line: 1018, column: 36, scope: !3715, inlinedAt: !3791)
!3794 = !DILocation(line: 1019, column: 36, scope: !3715, inlinedAt: !3791)
!3795 = !DILocation(line: 1019, column: 48, scope: !3715, inlinedAt: !3791)
!3796 = !DILocation(line: 1021, column: 3, scope: !3715, inlinedAt: !3791)
!3797 = !DILocation(line: 1021, column: 30, scope: !3715, inlinedAt: !3791)
!3798 = !DILocation(line: 1021, column: 26, scope: !3715, inlinedAt: !3791)
!3799 = !DILocation(line: 171, column: 45, scope: !2057, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 1022, column: 3, scope: !3715, inlinedAt: !3791)
!3801 = !DILocation(line: 172, column: 33, scope: !2057, inlinedAt: !3800)
!3802 = !DILocation(line: 172, column: 57, scope: !2057, inlinedAt: !3800)
!3803 = !DILocation(line: 176, column: 6, scope: !2057, inlinedAt: !3800)
!3804 = !DILocation(line: 176, column: 12, scope: !2057, inlinedAt: !3800)
!3805 = !DILocation(line: 177, column: 8, scope: !2073, inlinedAt: !3800)
!3806 = !DILocation(line: 177, column: 23, scope: !2075, inlinedAt: !3800)
!3807 = !DILocation(line: 177, column: 19, scope: !2073, inlinedAt: !3800)
!3808 = !DILocation(line: 178, column: 5, scope: !2073, inlinedAt: !3800)
!3809 = !DILocation(line: 179, column: 6, scope: !2057, inlinedAt: !3800)
!3810 = !DILocation(line: 179, column: 17, scope: !2057, inlinedAt: !3800)
!3811 = !DILocation(line: 180, column: 6, scope: !2057, inlinedAt: !3800)
!3812 = !DILocation(line: 180, column: 18, scope: !2057, inlinedAt: !3800)
!3813 = !DILocation(line: 1023, column: 10, scope: !3715, inlinedAt: !3791)
!3814 = !DILocation(line: 1024, column: 1, scope: !3715, inlinedAt: !3791)
!3815 = !DILocation(line: 1030, column: 3, scope: !3775)
!3816 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !192, file: !192, line: 1034, type: !3817, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!42, !53, !53, !53, !45}
!3819 = !{!3820, !3821, !3822, !3823}
!3820 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3816, file: !192, line: 1034, type: !53)
!3821 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3816, file: !192, line: 1034, type: !53)
!3822 = !DILocalVariable(name: "arg", arg: 3, scope: !3816, file: !192, line: 1035, type: !53)
!3823 = !DILocalVariable(name: "argsize", arg: 4, scope: !3816, file: !192, line: 1035, type: !45)
!3824 = !DILocation(line: 1034, column: 34, scope: !3816)
!3825 = !DILocation(line: 1034, column: 58, scope: !3816)
!3826 = !DILocation(line: 1035, column: 34, scope: !3816)
!3827 = !DILocation(line: 1035, column: 46, scope: !3816)
!3828 = !DILocation(line: 1017, column: 28, scope: !3715, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 1037, column: 10, scope: !3816)
!3830 = !DILocation(line: 1017, column: 43, scope: !3715, inlinedAt: !3829)
!3831 = !DILocation(line: 1018, column: 36, scope: !3715, inlinedAt: !3829)
!3832 = !DILocation(line: 1019, column: 36, scope: !3715, inlinedAt: !3829)
!3833 = !DILocation(line: 1019, column: 48, scope: !3715, inlinedAt: !3829)
!3834 = !DILocation(line: 1021, column: 3, scope: !3715, inlinedAt: !3829)
!3835 = !DILocation(line: 1021, column: 30, scope: !3715, inlinedAt: !3829)
!3836 = !DILocation(line: 1021, column: 26, scope: !3715, inlinedAt: !3829)
!3837 = !DILocation(line: 171, column: 45, scope: !2057, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 1022, column: 3, scope: !3715, inlinedAt: !3829)
!3839 = !DILocation(line: 172, column: 33, scope: !2057, inlinedAt: !3838)
!3840 = !DILocation(line: 172, column: 57, scope: !2057, inlinedAt: !3838)
!3841 = !DILocation(line: 176, column: 6, scope: !2057, inlinedAt: !3838)
!3842 = !DILocation(line: 176, column: 12, scope: !2057, inlinedAt: !3838)
!3843 = !DILocation(line: 177, column: 8, scope: !2073, inlinedAt: !3838)
!3844 = !DILocation(line: 177, column: 23, scope: !2075, inlinedAt: !3838)
!3845 = !DILocation(line: 177, column: 19, scope: !2073, inlinedAt: !3838)
!3846 = !DILocation(line: 178, column: 5, scope: !2073, inlinedAt: !3838)
!3847 = !DILocation(line: 179, column: 6, scope: !2057, inlinedAt: !3838)
!3848 = !DILocation(line: 179, column: 17, scope: !2057, inlinedAt: !3838)
!3849 = !DILocation(line: 180, column: 6, scope: !2057, inlinedAt: !3838)
!3850 = !DILocation(line: 180, column: 18, scope: !2057, inlinedAt: !3838)
!3851 = !DILocation(line: 1023, column: 10, scope: !3715, inlinedAt: !3829)
!3852 = !DILocation(line: 1024, column: 1, scope: !3715, inlinedAt: !3829)
!3853 = !DILocation(line: 1037, column: 3, scope: !3816)
!3854 = distinct !DISubprogram(name: "quote_n_mem", scope: !192, file: !192, line: 1052, type: !3855, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!53, !87, !53, !45}
!3857 = !{!3858, !3859, !3860}
!3858 = !DILocalVariable(name: "n", arg: 1, scope: !3854, file: !192, line: 1052, type: !87)
!3859 = !DILocalVariable(name: "arg", arg: 2, scope: !3854, file: !192, line: 1052, type: !53)
!3860 = !DILocalVariable(name: "argsize", arg: 3, scope: !3854, file: !192, line: 1052, type: !45)
!3861 = !DILocation(line: 1052, column: 18, scope: !3854)
!3862 = !DILocation(line: 1052, column: 33, scope: !3854)
!3863 = !DILocation(line: 1052, column: 45, scope: !3854)
!3864 = !DILocation(line: 1054, column: 10, scope: !3854)
!3865 = !DILocation(line: 1054, column: 3, scope: !3854)
!3866 = distinct !DISubprogram(name: "quote_mem", scope: !192, file: !192, line: 1058, type: !3867, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!53, !53, !45}
!3869 = !{!3870, !3871}
!3870 = !DILocalVariable(name: "arg", arg: 1, scope: !3866, file: !192, line: 1058, type: !53)
!3871 = !DILocalVariable(name: "argsize", arg: 2, scope: !3866, file: !192, line: 1058, type: !45)
!3872 = !DILocation(line: 1058, column: 24, scope: !3866)
!3873 = !DILocation(line: 1058, column: 36, scope: !3866)
!3874 = !DILocation(line: 1052, column: 18, scope: !3854, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 1060, column: 10, scope: !3866)
!3876 = !DILocation(line: 1052, column: 33, scope: !3854, inlinedAt: !3875)
!3877 = !DILocation(line: 1052, column: 45, scope: !3854, inlinedAt: !3875)
!3878 = !DILocation(line: 1054, column: 10, scope: !3854, inlinedAt: !3875)
!3879 = !DILocation(line: 1060, column: 3, scope: !3866)
!3880 = distinct !DISubprogram(name: "quote_n", scope: !192, file: !192, line: 1064, type: !3881, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!53, !87, !53}
!3883 = !{!3884, !3885}
!3884 = !DILocalVariable(name: "n", arg: 1, scope: !3880, file: !192, line: 1064, type: !87)
!3885 = !DILocalVariable(name: "arg", arg: 2, scope: !3880, file: !192, line: 1064, type: !53)
!3886 = !DILocation(line: 1064, column: 14, scope: !3880)
!3887 = !DILocation(line: 1064, column: 29, scope: !3880)
!3888 = !DILocation(line: 1052, column: 18, scope: !3854, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 1066, column: 10, scope: !3880)
!3890 = !DILocation(line: 1052, column: 33, scope: !3854, inlinedAt: !3889)
!3891 = !DILocation(line: 1052, column: 45, scope: !3854, inlinedAt: !3889)
!3892 = !DILocation(line: 1054, column: 10, scope: !3854, inlinedAt: !3889)
!3893 = !DILocation(line: 1066, column: 3, scope: !3880)
!3894 = distinct !DISubprogram(name: "quote", scope: !192, file: !192, line: 1070, type: !3895, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!53, !53}
!3897 = !{!3898}
!3898 = !DILocalVariable(name: "arg", arg: 1, scope: !3894, file: !192, line: 1070, type: !53)
!3899 = !DILocation(line: 1070, column: 20, scope: !3894)
!3900 = !DILocation(line: 1064, column: 14, scope: !3880, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 1072, column: 10, scope: !3894)
!3902 = !DILocation(line: 1064, column: 29, scope: !3880, inlinedAt: !3901)
!3903 = !DILocation(line: 1052, column: 18, scope: !3854, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 1066, column: 10, scope: !3880, inlinedAt: !3901)
!3905 = !DILocation(line: 1052, column: 33, scope: !3854, inlinedAt: !3904)
!3906 = !DILocation(line: 1052, column: 45, scope: !3854, inlinedAt: !3904)
!3907 = !DILocation(line: 1054, column: 10, scope: !3854, inlinedAt: !3904)
!3908 = !DILocation(line: 1072, column: 3, scope: !3894)
!3909 = !DILocation(line: 56, column: 14, scope: !608)
!3910 = !DILocation(line: 56, column: 30, scope: !608)
!3911 = !DILocation(line: 56, column: 42, scope: !608)
!3912 = !DILocation(line: 64, column: 3, scope: !608)
!3913 = !DILocation(line: 66, column: 24, scope: !616)
!3914 = !DILocation(line: 66, column: 15, scope: !616)
!3915 = !DILocation(line: 68, column: 13, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !616, file: !607, line: 68, column: 11)
!3917 = !DILocation(line: 68, column: 11, scope: !616)
!3918 = !DILocation(line: 70, column: 16, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3916, file: !607, line: 70, column: 16)
!3920 = !DILocation(line: 70, column: 16, scope: !3916)
!3921 = distinct !{!3921, !3922, !3923}
!3922 = !DILocation(line: 64, column: 3, scope: !618)
!3923 = !DILocation(line: 76, column: 5, scope: !618)
!3924 = !DILocation(line: 72, column: 22, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3919, file: !607, line: 72, column: 16)
!3926 = !DILocation(line: 72, column: 54, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !3925, file: !607, discriminator: 1)
!3928 = !DILocation(line: 72, column: 32, scope: !3925)
!3929 = !DILocation(line: 77, column: 1, scope: !608)
!3930 = distinct !DISubprogram(name: "version_etc_arn", scope: !630, file: !630, line: 62, type: !3931, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !3974)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{null, !3933, !53, !53, !53, !3973, !45}
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !825, line: 49, baseType: !3935)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !827, line: 241, size: 1728, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3935, file: !827, line: 242, baseType: !87, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3935, file: !827, line: 247, baseType: !42, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3935, file: !827, line: 248, baseType: !42, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3935, file: !827, line: 249, baseType: !42, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3935, file: !827, line: 250, baseType: !42, size: 64, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3935, file: !827, line: 251, baseType: !42, size: 64, offset: 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3935, file: !827, line: 252, baseType: !42, size: 64, offset: 384)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3935, file: !827, line: 253, baseType: !42, size: 64, offset: 448)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3935, file: !827, line: 254, baseType: !42, size: 64, offset: 512)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3935, file: !827, line: 256, baseType: !42, size: 64, offset: 576)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3935, file: !827, line: 257, baseType: !42, size: 64, offset: 640)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3935, file: !827, line: 258, baseType: !42, size: 64, offset: 704)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3935, file: !827, line: 260, baseType: !3950, size: 64, offset: 768)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !827, line: 156, size: 192, elements: !3952)
!3952 = !{!3953, !3954, !3956}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3951, file: !827, line: 157, baseType: !3950, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3951, file: !827, line: 158, baseType: !3955, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3951, file: !827, line: 162, baseType: !87, size: 32, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3935, file: !827, line: 262, baseType: !3955, size: 64, offset: 832)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3935, file: !827, line: 264, baseType: !87, size: 32, offset: 896)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3935, file: !827, line: 268, baseType: !87, size: 32, offset: 928)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3935, file: !827, line: 270, baseType: !853, size: 64, offset: 960)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3935, file: !827, line: 274, baseType: !188, size: 16, offset: 1024)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3935, file: !827, line: 275, baseType: !856, size: 8, offset: 1040)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3935, file: !827, line: 276, baseType: !858, size: 8, offset: 1048)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3935, file: !827, line: 280, baseType: !862, size: 64, offset: 1088)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3935, file: !827, line: 289, baseType: !865, size: 64, offset: 1152)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3935, file: !827, line: 297, baseType: !44, size: 64, offset: 1216)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3935, file: !827, line: 298, baseType: !44, size: 64, offset: 1280)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3935, file: !827, line: 299, baseType: !44, size: 64, offset: 1344)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3935, file: !827, line: 300, baseType: !44, size: 64, offset: 1408)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3935, file: !827, line: 302, baseType: !45, size: 64, offset: 1472)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3935, file: !827, line: 303, baseType: !87, size: 32, offset: 1536)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3935, file: !827, line: 305, baseType: !873, size: 160, offset: 1568)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!3974 = !{!3975, !3976, !3977, !3978, !3979, !3980}
!3975 = !DILocalVariable(name: "stream", arg: 1, scope: !3930, file: !630, line: 62, type: !3933)
!3976 = !DILocalVariable(name: "command_name", arg: 2, scope: !3930, file: !630, line: 63, type: !53)
!3977 = !DILocalVariable(name: "package", arg: 3, scope: !3930, file: !630, line: 63, type: !53)
!3978 = !DILocalVariable(name: "version", arg: 4, scope: !3930, file: !630, line: 64, type: !53)
!3979 = !DILocalVariable(name: "authors", arg: 5, scope: !3930, file: !630, line: 65, type: !3973)
!3980 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3930, file: !630, line: 65, type: !45)
!3981 = !DILocation(line: 62, column: 24, scope: !3930)
!3982 = !DILocation(line: 63, column: 30, scope: !3930)
!3983 = !DILocation(line: 63, column: 56, scope: !3930)
!3984 = !DILocation(line: 64, column: 30, scope: !3930)
!3985 = !DILocation(line: 65, column: 39, scope: !3930)
!3986 = !DILocation(line: 65, column: 55, scope: !3930)
!3987 = !DILocation(line: 67, column: 7, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3930, file: !630, line: 67, column: 7)
!3989 = !DILocation(line: 67, column: 7, scope: !3930)
!3990 = !DILocation(line: 68, column: 5, scope: !3988)
!3991 = !DILocation(line: 70, column: 5, scope: !3988)
!3992 = !DILocation(line: 84, column: 3, scope: !3930)
!3993 = !DILocation(line: 84, column: 3, scope: !3994)
!3994 = !DILexicalBlockFile(scope: !3930, file: !630, discriminator: 1)
!3995 = !DILocation(line: 86, column: 3, scope: !3930)
!3996 = !DILocation(line: 86, column: 3, scope: !3994)
!3997 = !DILocation(line: 95, column: 3, scope: !3930)
!3998 = !DILocation(line: 99, column: 7, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3930, file: !630, line: 96, column: 5)
!4000 = !DILocation(line: 102, column: 7, scope: !3999)
!4001 = !DILocation(line: 102, column: 7, scope: !4002)
!4002 = !DILexicalBlockFile(scope: !3999, file: !630, discriminator: 1)
!4003 = !DILocation(line: 103, column: 7, scope: !3999)
!4004 = !DILocation(line: 106, column: 7, scope: !3999)
!4005 = !DILocation(line: 106, column: 7, scope: !4002)
!4006 = !DILocation(line: 107, column: 7, scope: !3999)
!4007 = !DILocation(line: 110, column: 7, scope: !3999)
!4008 = !DILocation(line: 110, column: 7, scope: !4002)
!4009 = !DILocation(line: 112, column: 7, scope: !3999)
!4010 = !DILocation(line: 117, column: 7, scope: !3999)
!4011 = !DILocation(line: 117, column: 7, scope: !4002)
!4012 = !DILocation(line: 119, column: 7, scope: !3999)
!4013 = !DILocation(line: 124, column: 7, scope: !3999)
!4014 = !DILocation(line: 124, column: 7, scope: !4002)
!4015 = !DILocation(line: 126, column: 7, scope: !3999)
!4016 = !DILocation(line: 131, column: 7, scope: !3999)
!4017 = !DILocation(line: 131, column: 7, scope: !4002)
!4018 = !DILocation(line: 134, column: 7, scope: !3999)
!4019 = !DILocation(line: 139, column: 7, scope: !3999)
!4020 = !DILocation(line: 139, column: 7, scope: !4002)
!4021 = !DILocation(line: 142, column: 7, scope: !3999)
!4022 = !DILocation(line: 147, column: 7, scope: !3999)
!4023 = !DILocation(line: 147, column: 7, scope: !4002)
!4024 = !DILocation(line: 151, column: 7, scope: !3999)
!4025 = !DILocation(line: 156, column: 7, scope: !3999)
!4026 = !DILocation(line: 156, column: 7, scope: !4002)
!4027 = !DILocation(line: 160, column: 7, scope: !3999)
!4028 = !DILocation(line: 167, column: 7, scope: !3999)
!4029 = !DILocation(line: 167, column: 7, scope: !4002)
!4030 = !DILocation(line: 171, column: 7, scope: !3999)
!4031 = !DILocation(line: 173, column: 1, scope: !3930)
!4032 = distinct !DISubprogram(name: "version_etc_ar", scope: !630, file: !630, line: 180, type: !4033, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !3933, !53, !53, !53, !3973}
!4035 = !{!4036, !4037, !4038, !4039, !4040, !4041}
!4036 = !DILocalVariable(name: "stream", arg: 1, scope: !4032, file: !630, line: 180, type: !3933)
!4037 = !DILocalVariable(name: "command_name", arg: 2, scope: !4032, file: !630, line: 181, type: !53)
!4038 = !DILocalVariable(name: "package", arg: 3, scope: !4032, file: !630, line: 181, type: !53)
!4039 = !DILocalVariable(name: "version", arg: 4, scope: !4032, file: !630, line: 182, type: !53)
!4040 = !DILocalVariable(name: "authors", arg: 5, scope: !4032, file: !630, line: 182, type: !3973)
!4041 = !DILocalVariable(name: "n_authors", scope: !4032, file: !630, line: 184, type: !45)
!4042 = !DILocation(line: 180, column: 23, scope: !4032)
!4043 = !DILocation(line: 181, column: 29, scope: !4032)
!4044 = !DILocation(line: 181, column: 55, scope: !4032)
!4045 = !DILocation(line: 182, column: 29, scope: !4032)
!4046 = !DILocation(line: 182, column: 59, scope: !4032)
!4047 = !DILocation(line: 184, column: 10, scope: !4032)
!4048 = !DILocation(line: 186, column: 8, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4032, file: !630, line: 186, column: 3)
!4050 = !DILocation(line: 186, column: 23, scope: !4051)
!4051 = !DILexicalBlockFile(scope: !4052, file: !630, discriminator: 1)
!4052 = distinct !DILexicalBlock(scope: !4049, file: !630, line: 186, column: 3)
!4053 = !DILocation(line: 186, column: 3, scope: !4054)
!4054 = !DILexicalBlockFile(scope: !4049, file: !630, discriminator: 1)
!4055 = !DILocation(line: 186, column: 52, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !4052, file: !630, discriminator: 3)
!4057 = distinct !{!4057, !4058, !4059}
!4058 = !DILocation(line: 186, column: 3, scope: !4049)
!4059 = !DILocation(line: 187, column: 5, scope: !4049)
!4060 = !DILocation(line: 188, column: 3, scope: !4032)
!4061 = !DILocation(line: 189, column: 1, scope: !4032)
!4062 = distinct !DISubprogram(name: "version_etc_va", scope: !630, file: !630, line: 196, type: !4063, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4072)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{null, !3933, !53, !53, !53, !4065}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !627, line: 189, size: 192, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4071}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4066, file: !627, line: 189, baseType: !205, size: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4066, file: !627, line: 189, baseType: !205, size: 32, offset: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4066, file: !627, line: 189, baseType: !44, size: 64, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4066, file: !627, line: 189, baseType: !44, size: 64, offset: 128)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078, !4079}
!4073 = !DILocalVariable(name: "stream", arg: 1, scope: !4062, file: !630, line: 196, type: !3933)
!4074 = !DILocalVariable(name: "command_name", arg: 2, scope: !4062, file: !630, line: 197, type: !53)
!4075 = !DILocalVariable(name: "package", arg: 3, scope: !4062, file: !630, line: 197, type: !53)
!4076 = !DILocalVariable(name: "version", arg: 4, scope: !4062, file: !630, line: 198, type: !53)
!4077 = !DILocalVariable(name: "authors", arg: 5, scope: !4062, file: !630, line: 198, type: !4065)
!4078 = !DILocalVariable(name: "n_authors", scope: !4062, file: !630, line: 200, type: !45)
!4079 = !DILocalVariable(name: "authtab", scope: !4062, file: !630, line: 201, type: !4080)
!4080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 640, elements: !195)
!4081 = !DILocation(line: 196, column: 23, scope: !4062)
!4082 = !DILocation(line: 197, column: 29, scope: !4062)
!4083 = !DILocation(line: 197, column: 55, scope: !4062)
!4084 = !DILocation(line: 198, column: 29, scope: !4062)
!4085 = !DILocation(line: 198, column: 46, scope: !4062)
!4086 = !DILocation(line: 201, column: 3, scope: !4062)
!4087 = !DILocation(line: 201, column: 15, scope: !4062)
!4088 = !DILocation(line: 200, column: 10, scope: !4062)
!4089 = !DILocation(line: 205, column: 35, scope: !4090)
!4090 = !DILexicalBlockFile(scope: !4091, file: !630, discriminator: 1)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !630, line: 203, column: 3)
!4092 = distinct !DILexicalBlock(scope: !4062, file: !630, line: 203, column: 3)
!4093 = !DILocation(line: 205, column: 35, scope: !4094)
!4094 = !DILexicalBlockFile(scope: !4091, file: !630, discriminator: 2)
!4095 = !DILocation(line: 205, column: 35, scope: !4096)
!4096 = !DILexicalBlockFile(scope: !4091, file: !630, discriminator: 3)
!4097 = !DILocation(line: 205, column: 35, scope: !4098)
!4098 = !DILexicalBlockFile(scope: !4091, file: !630, discriminator: 4)
!4099 = !DILocation(line: 205, column: 14, scope: !4098)
!4100 = !DILocation(line: 205, column: 33, scope: !4098)
!4101 = !DILocation(line: 205, column: 67, scope: !4098)
!4102 = !DILocation(line: 203, column: 3, scope: !4103)
!4103 = !DILexicalBlockFile(scope: !4092, file: !630, discriminator: 1)
!4104 = !DILocation(line: 208, column: 3, scope: !4062)
!4105 = !DILocation(line: 210, column: 1, scope: !4062)
!4106 = distinct !DISubprogram(name: "version_etc", scope: !630, file: !630, line: 227, type: !4107, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4109)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{null, !3933, !53, !53, !53, null}
!4109 = !{!4110, !4111, !4112, !4113, !4114}
!4110 = !DILocalVariable(name: "stream", arg: 1, scope: !4106, file: !630, line: 227, type: !3933)
!4111 = !DILocalVariable(name: "command_name", arg: 2, scope: !4106, file: !630, line: 228, type: !53)
!4112 = !DILocalVariable(name: "package", arg: 3, scope: !4106, file: !630, line: 228, type: !53)
!4113 = !DILocalVariable(name: "version", arg: 4, scope: !4106, file: !630, line: 229, type: !53)
!4114 = !DILocalVariable(name: "authors", scope: !4106, file: !630, line: 231, type: !4115)
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !825, line: 80, baseType: !4116)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4117, line: 50, baseType: !4118)
!4117 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !627, line: 231, baseType: !4119)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4066, size: 192, elements: !859)
!4120 = !DILocation(line: 227, column: 20, scope: !4106)
!4121 = !DILocation(line: 228, column: 26, scope: !4106)
!4122 = !DILocation(line: 228, column: 52, scope: !4106)
!4123 = !DILocation(line: 229, column: 26, scope: !4106)
!4124 = !DILocation(line: 231, column: 3, scope: !4106)
!4125 = !DILocation(line: 231, column: 11, scope: !4106)
!4126 = !DILocation(line: 233, column: 3, scope: !4106)
!4127 = !DILocation(line: 234, column: 3, scope: !4106)
!4128 = !DILocation(line: 235, column: 3, scope: !4106)
!4129 = !DILocation(line: 236, column: 1, scope: !4106)
!4130 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !630, file: !630, line: 239, type: !251, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !107)
!4131 = !DILocation(line: 245, column: 3, scope: !4130)
!4132 = !DILocation(line: 245, column: 3, scope: !4133)
!4133 = !DILexicalBlockFile(scope: !4130, file: !630, discriminator: 1)
!4134 = !DILocation(line: 251, column: 3, scope: !4130)
!4135 = !DILocation(line: 251, column: 3, scope: !4133)
!4136 = !DILocation(line: 256, column: 3, scope: !4130)
!4137 = !DILocation(line: 256, column: 3, scope: !4133)
!4138 = !DILocation(line: 258, column: 1, scope: !4130)
!4139 = distinct !DISubprogram(name: "xnmalloc", scope: !638, file: !638, line: 105, type: !4140, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4142)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!44, !45, !45}
!4142 = !{!4143, !4144}
!4143 = !DILocalVariable(name: "n", arg: 1, scope: !4139, file: !638, line: 105, type: !45)
!4144 = !DILocalVariable(name: "s", arg: 2, scope: !4139, file: !638, line: 105, type: !45)
!4145 = !DILocation(line: 105, column: 18, scope: !4139)
!4146 = !DILocation(line: 105, column: 28, scope: !4139)
!4147 = !DILocation(line: 107, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4139, file: !638, line: 107, column: 7)
!4149 = !DILocation(line: 107, column: 7, scope: !4139)
!4150 = !DILocation(line: 108, column: 5, scope: !4148)
!4151 = !DILocation(line: 109, column: 21, scope: !4139)
!4152 = !DILocalVariable(name: "n", arg: 1, scope: !4153, file: !4154, line: 39, type: !45)
!4153 = distinct !DISubprogram(name: "xmalloc", scope: !4154, file: !4154, line: 39, type: !4155, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4157)
!4154 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!44, !45}
!4157 = !{!4152, !4158}
!4158 = !DILocalVariable(name: "p", scope: !4153, file: !4154, line: 41, type: !44)
!4159 = !DILocation(line: 39, column: 17, scope: !4153, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 109, column: 10, scope: !4139)
!4161 = !DILocation(line: 41, column: 13, scope: !4153, inlinedAt: !4160)
!4162 = !DILocation(line: 41, column: 9, scope: !4153, inlinedAt: !4160)
!4163 = !DILocation(line: 42, column: 8, scope: !4164, inlinedAt: !4160)
!4164 = distinct !DILexicalBlock(scope: !4153, file: !4154, line: 42, column: 7)
!4165 = !DILocation(line: 42, column: 15, scope: !4166, inlinedAt: !4160)
!4166 = !DILexicalBlockFile(scope: !4164, file: !4154, discriminator: 1)
!4167 = !DILocation(line: 42, column: 10, scope: !4164, inlinedAt: !4160)
!4168 = !DILocation(line: 43, column: 5, scope: !4164, inlinedAt: !4160)
!4169 = !DILocation(line: 109, column: 3, scope: !4139)
!4170 = !DILocation(line: 39, column: 17, scope: !4153)
!4171 = !DILocation(line: 41, column: 13, scope: !4153)
!4172 = !DILocation(line: 41, column: 9, scope: !4153)
!4173 = !DILocation(line: 42, column: 8, scope: !4164)
!4174 = !DILocation(line: 42, column: 15, scope: !4166)
!4175 = !DILocation(line: 42, column: 10, scope: !4164)
!4176 = !DILocation(line: 43, column: 5, scope: !4164)
!4177 = !DILocation(line: 44, column: 3, scope: !4153)
!4178 = distinct !DISubprogram(name: "xnrealloc", scope: !638, file: !638, line: 118, type: !4179, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!44, !44, !45, !45}
!4181 = !{!4182, !4183, !4184}
!4182 = !DILocalVariable(name: "p", arg: 1, scope: !4178, file: !638, line: 118, type: !44)
!4183 = !DILocalVariable(name: "n", arg: 2, scope: !4178, file: !638, line: 118, type: !45)
!4184 = !DILocalVariable(name: "s", arg: 3, scope: !4178, file: !638, line: 118, type: !45)
!4185 = !DILocation(line: 118, column: 18, scope: !4178)
!4186 = !DILocation(line: 118, column: 28, scope: !4178)
!4187 = !DILocation(line: 118, column: 38, scope: !4178)
!4188 = !DILocation(line: 120, column: 7, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4178, file: !638, line: 120, column: 7)
!4190 = !DILocation(line: 120, column: 7, scope: !4178)
!4191 = !DILocation(line: 121, column: 5, scope: !4189)
!4192 = !DILocation(line: 122, column: 25, scope: !4178)
!4193 = !DILocalVariable(name: "p", arg: 1, scope: !4194, file: !4154, line: 51, type: !44)
!4194 = distinct !DISubprogram(name: "xrealloc", scope: !4154, file: !4154, line: 51, type: !4195, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4197)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!44, !44, !45}
!4197 = !{!4193, !4198}
!4198 = !DILocalVariable(name: "n", arg: 2, scope: !4194, file: !4154, line: 51, type: !45)
!4199 = !DILocation(line: 51, column: 17, scope: !4194, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 122, column: 10, scope: !4178)
!4201 = !DILocation(line: 51, column: 27, scope: !4194, inlinedAt: !4200)
!4202 = !DILocation(line: 53, column: 8, scope: !4203, inlinedAt: !4200)
!4203 = distinct !DILexicalBlock(scope: !4194, file: !4154, line: 53, column: 7)
!4204 = !DILocation(line: 53, column: 13, scope: !4205, inlinedAt: !4200)
!4205 = !DILexicalBlockFile(scope: !4203, file: !4154, discriminator: 1)
!4206 = !DILocation(line: 53, column: 10, scope: !4203, inlinedAt: !4200)
!4207 = !DILocation(line: 57, column: 7, scope: !4208, inlinedAt: !4200)
!4208 = distinct !DILexicalBlock(scope: !4203, file: !4154, line: 54, column: 5)
!4209 = !DILocation(line: 58, column: 7, scope: !4208, inlinedAt: !4200)
!4210 = !DILocation(line: 61, column: 7, scope: !4194, inlinedAt: !4200)
!4211 = !DILocation(line: 62, column: 8, scope: !4212, inlinedAt: !4200)
!4212 = distinct !DILexicalBlock(scope: !4194, file: !4154, line: 62, column: 7)
!4213 = !DILocation(line: 62, column: 13, scope: !4214, inlinedAt: !4200)
!4214 = !DILexicalBlockFile(scope: !4212, file: !4154, discriminator: 1)
!4215 = !DILocation(line: 62, column: 10, scope: !4212, inlinedAt: !4200)
!4216 = !DILocation(line: 63, column: 5, scope: !4212, inlinedAt: !4200)
!4217 = !DILocation(line: 122, column: 3, scope: !4178)
!4218 = !DILocation(line: 51, column: 17, scope: !4194)
!4219 = !DILocation(line: 51, column: 27, scope: !4194)
!4220 = !DILocation(line: 53, column: 8, scope: !4203)
!4221 = !DILocation(line: 53, column: 13, scope: !4205)
!4222 = !DILocation(line: 53, column: 10, scope: !4203)
!4223 = !DILocation(line: 57, column: 7, scope: !4208)
!4224 = !DILocation(line: 58, column: 7, scope: !4208)
!4225 = !DILocation(line: 61, column: 7, scope: !4194)
!4226 = !DILocation(line: 62, column: 8, scope: !4212)
!4227 = !DILocation(line: 62, column: 13, scope: !4214)
!4228 = !DILocation(line: 62, column: 10, scope: !4212)
!4229 = !DILocation(line: 63, column: 5, scope: !4212)
!4230 = !DILocation(line: 65, column: 1, scope: !4194)
!4231 = !DILocation(line: 180, column: 19, scope: !639)
!4232 = !DILocation(line: 180, column: 30, scope: !639)
!4233 = !DILocation(line: 180, column: 41, scope: !639)
!4234 = !DILocation(line: 182, column: 14, scope: !639)
!4235 = !DILocation(line: 182, column: 10, scope: !639)
!4236 = !DILocation(line: 184, column: 9, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !639, file: !638, line: 184, column: 7)
!4238 = !DILocation(line: 184, column: 7, scope: !639)
!4239 = !DILocation(line: 186, column: 13, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !638, line: 186, column: 11)
!4241 = distinct !DILexicalBlock(scope: !4237, file: !638, line: 185, column: 5)
!4242 = !DILocation(line: 186, column: 11, scope: !4241)
!4243 = !DILocation(line: 194, column: 30, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4240, file: !638, line: 187, column: 9)
!4245 = !DILocation(line: 195, column: 16, scope: !4244)
!4246 = !DILocation(line: 195, column: 13, scope: !4244)
!4247 = !DILocation(line: 196, column: 9, scope: !4244)
!4248 = !DILocation(line: 204, column: 69, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !638, line: 204, column: 11)
!4250 = distinct !DILexicalBlock(scope: !4237, file: !638, line: 199, column: 5)
!4251 = !DILocation(line: 205, column: 11, scope: !4249)
!4252 = !DILocation(line: 204, column: 11, scope: !4250)
!4253 = !DILocation(line: 206, column: 9, scope: !4249)
!4254 = !DILocation(line: 210, column: 7, scope: !639)
!4255 = !DILocation(line: 211, column: 25, scope: !639)
!4256 = !DILocation(line: 51, column: 17, scope: !4194, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 211, column: 10, scope: !639)
!4258 = !DILocation(line: 51, column: 27, scope: !4194, inlinedAt: !4257)
!4259 = !DILocation(line: 53, column: 10, scope: !4203, inlinedAt: !4257)
!4260 = !DILocation(line: 207, column: 14, scope: !4250)
!4261 = !DILocation(line: 207, column: 18, scope: !4250)
!4262 = !DILocation(line: 207, column: 9, scope: !4250)
!4263 = !DILocation(line: 53, column: 8, scope: !4203, inlinedAt: !4257)
!4264 = !DILocation(line: 57, column: 7, scope: !4208, inlinedAt: !4257)
!4265 = !DILocation(line: 58, column: 7, scope: !4208, inlinedAt: !4257)
!4266 = !DILocation(line: 61, column: 7, scope: !4194, inlinedAt: !4257)
!4267 = !DILocation(line: 62, column: 8, scope: !4212, inlinedAt: !4257)
!4268 = !DILocation(line: 62, column: 13, scope: !4214, inlinedAt: !4257)
!4269 = !DILocation(line: 62, column: 10, scope: !4212, inlinedAt: !4257)
!4270 = !DILocation(line: 63, column: 5, scope: !4212, inlinedAt: !4257)
!4271 = !DILocation(line: 211, column: 3, scope: !639)
!4272 = distinct !DISubprogram(name: "xcharalloc", scope: !638, file: !638, line: 220, type: !3183, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4273)
!4273 = !{!4274}
!4274 = !DILocalVariable(name: "n", arg: 1, scope: !4272, file: !638, line: 220, type: !45)
!4275 = !DILocation(line: 220, column: 20, scope: !4272)
!4276 = !DILocation(line: 39, column: 17, scope: !4153, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 222, column: 10, scope: !4272)
!4278 = !DILocation(line: 41, column: 13, scope: !4153, inlinedAt: !4277)
!4279 = !DILocation(line: 41, column: 9, scope: !4153, inlinedAt: !4277)
!4280 = !DILocation(line: 42, column: 8, scope: !4164, inlinedAt: !4277)
!4281 = !DILocation(line: 42, column: 15, scope: !4166, inlinedAt: !4277)
!4282 = !DILocation(line: 42, column: 10, scope: !4164, inlinedAt: !4277)
!4283 = !DILocation(line: 43, column: 5, scope: !4164, inlinedAt: !4277)
!4284 = !DILocation(line: 222, column: 3, scope: !4272)
!4285 = distinct !DISubprogram(name: "x2realloc", scope: !4154, file: !4154, line: 74, type: !4286, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!44, !44, !642}
!4288 = !{!4289, !4290}
!4289 = !DILocalVariable(name: "p", arg: 1, scope: !4285, file: !4154, line: 74, type: !44)
!4290 = !DILocalVariable(name: "pn", arg: 2, scope: !4285, file: !4154, line: 74, type: !642)
!4291 = !DILocation(line: 74, column: 18, scope: !4285)
!4292 = !DILocation(line: 74, column: 29, scope: !4285)
!4293 = !DILocation(line: 180, column: 19, scope: !639, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 76, column: 10, scope: !4285)
!4295 = !DILocation(line: 180, column: 30, scope: !639, inlinedAt: !4294)
!4296 = !DILocation(line: 180, column: 41, scope: !639, inlinedAt: !4294)
!4297 = !DILocation(line: 182, column: 14, scope: !639, inlinedAt: !4294)
!4298 = !DILocation(line: 182, column: 10, scope: !639, inlinedAt: !4294)
!4299 = !DILocation(line: 184, column: 9, scope: !4237, inlinedAt: !4294)
!4300 = !DILocation(line: 184, column: 7, scope: !639, inlinedAt: !4294)
!4301 = !DILocation(line: 186, column: 13, scope: !4240, inlinedAt: !4294)
!4302 = !DILocation(line: 186, column: 11, scope: !4241, inlinedAt: !4294)
!4303 = !DILocation(line: 210, column: 7, scope: !639, inlinedAt: !4294)
!4304 = !DILocation(line: 51, column: 17, scope: !4194, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 211, column: 10, scope: !639, inlinedAt: !4294)
!4306 = !DILocation(line: 51, column: 27, scope: !4194, inlinedAt: !4305)
!4307 = !DILocation(line: 53, column: 10, scope: !4203, inlinedAt: !4305)
!4308 = !DILocation(line: 205, column: 11, scope: !4249, inlinedAt: !4294)
!4309 = !DILocation(line: 204, column: 11, scope: !4250, inlinedAt: !4294)
!4310 = !DILocation(line: 206, column: 9, scope: !4249, inlinedAt: !4294)
!4311 = !DILocation(line: 207, column: 14, scope: !4250, inlinedAt: !4294)
!4312 = !DILocation(line: 207, column: 18, scope: !4250, inlinedAt: !4294)
!4313 = !DILocation(line: 207, column: 9, scope: !4250, inlinedAt: !4294)
!4314 = !DILocation(line: 53, column: 8, scope: !4203, inlinedAt: !4305)
!4315 = !DILocation(line: 57, column: 7, scope: !4208, inlinedAt: !4305)
!4316 = !DILocation(line: 58, column: 7, scope: !4208, inlinedAt: !4305)
!4317 = !DILocation(line: 61, column: 7, scope: !4194, inlinedAt: !4305)
!4318 = !DILocation(line: 62, column: 8, scope: !4212, inlinedAt: !4305)
!4319 = !DILocation(line: 62, column: 13, scope: !4214, inlinedAt: !4305)
!4320 = !DILocation(line: 62, column: 10, scope: !4212, inlinedAt: !4305)
!4321 = !DILocation(line: 63, column: 5, scope: !4212, inlinedAt: !4305)
!4322 = !DILocation(line: 76, column: 3, scope: !4285)
!4323 = distinct !DISubprogram(name: "xzalloc", scope: !4154, file: !4154, line: 84, type: !4155, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4324)
!4324 = !{!4325}
!4325 = !DILocalVariable(name: "s", arg: 1, scope: !4323, file: !4154, line: 84, type: !45)
!4326 = !DILocation(line: 84, column: 17, scope: !4323)
!4327 = !DILocation(line: 39, column: 17, scope: !4153, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 86, column: 18, scope: !4323)
!4329 = !DILocation(line: 41, column: 13, scope: !4153, inlinedAt: !4328)
!4330 = !DILocation(line: 41, column: 9, scope: !4153, inlinedAt: !4328)
!4331 = !DILocation(line: 42, column: 8, scope: !4164, inlinedAt: !4328)
!4332 = !DILocation(line: 42, column: 15, scope: !4166, inlinedAt: !4328)
!4333 = !DILocation(line: 42, column: 10, scope: !4164, inlinedAt: !4328)
!4334 = !DILocation(line: 43, column: 5, scope: !4164, inlinedAt: !4328)
!4335 = !DILocation(line: 86, column: 10, scope: !4323)
!4336 = !DILocation(line: 86, column: 3, scope: !4323)
!4337 = distinct !DISubprogram(name: "xcalloc", scope: !4154, file: !4154, line: 93, type: !4140, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4338)
!4338 = !{!4339, !4340, !4341}
!4339 = !DILocalVariable(name: "n", arg: 1, scope: !4337, file: !4154, line: 93, type: !45)
!4340 = !DILocalVariable(name: "s", arg: 2, scope: !4337, file: !4154, line: 93, type: !45)
!4341 = !DILocalVariable(name: "p", scope: !4337, file: !4154, line: 95, type: !44)
!4342 = !DILocation(line: 93, column: 17, scope: !4337)
!4343 = !DILocation(line: 93, column: 27, scope: !4337)
!4344 = !DILocation(line: 100, column: 7, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4337, file: !4154, line: 100, column: 7)
!4346 = !DILocation(line: 101, column: 7, scope: !4345)
!4347 = !DILocation(line: 101, column: 18, scope: !4348)
!4348 = !DILexicalBlockFile(scope: !4345, file: !4154, discriminator: 1)
!4349 = !DILocation(line: 95, column: 9, scope: !4337)
!4350 = !DILocation(line: 101, column: 16, scope: !4348)
!4351 = !DILocation(line: 100, column: 7, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4337, file: !4154, discriminator: 1)
!4353 = !DILocation(line: 102, column: 5, scope: !4345)
!4354 = !DILocation(line: 103, column: 3, scope: !4337)
!4355 = distinct !DISubprogram(name: "xmemdup", scope: !4154, file: !4154, line: 111, type: !4356, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!44, !48, !45}
!4358 = !{!4359, !4360}
!4359 = !DILocalVariable(name: "p", arg: 1, scope: !4355, file: !4154, line: 111, type: !48)
!4360 = !DILocalVariable(name: "s", arg: 2, scope: !4355, file: !4154, line: 111, type: !45)
!4361 = !DILocation(line: 111, column: 22, scope: !4355)
!4362 = !DILocation(line: 111, column: 32, scope: !4355)
!4363 = !DILocation(line: 39, column: 17, scope: !4153, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 113, column: 18, scope: !4355)
!4365 = !DILocation(line: 41, column: 13, scope: !4153, inlinedAt: !4364)
!4366 = !DILocation(line: 41, column: 9, scope: !4153, inlinedAt: !4364)
!4367 = !DILocation(line: 42, column: 8, scope: !4164, inlinedAt: !4364)
!4368 = !DILocation(line: 42, column: 15, scope: !4166, inlinedAt: !4364)
!4369 = !DILocation(line: 42, column: 10, scope: !4164, inlinedAt: !4364)
!4370 = !DILocation(line: 43, column: 5, scope: !4164, inlinedAt: !4364)
!4371 = !DILocation(line: 113, column: 10, scope: !4355)
!4372 = !DILocation(line: 113, column: 3, scope: !4355)
!4373 = distinct !DISubprogram(name: "xstrdup", scope: !4154, file: !4154, line: 119, type: !3388, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4374)
!4374 = !{!4375}
!4375 = !DILocalVariable(name: "string", arg: 1, scope: !4373, file: !4154, line: 119, type: !53)
!4376 = !DILocation(line: 119, column: 22, scope: !4373)
!4377 = !DILocation(line: 121, column: 27, scope: !4373)
!4378 = !DILocation(line: 121, column: 43, scope: !4373)
!4379 = !DILocation(line: 111, column: 22, scope: !4355, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 121, column: 10, scope: !4381)
!4381 = !DILexicalBlockFile(scope: !4373, file: !4154, discriminator: 1)
!4382 = !DILocation(line: 111, column: 32, scope: !4355, inlinedAt: !4380)
!4383 = !DILocation(line: 39, column: 17, scope: !4153, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 113, column: 18, scope: !4355, inlinedAt: !4380)
!4385 = !DILocation(line: 41, column: 13, scope: !4153, inlinedAt: !4384)
!4386 = !DILocation(line: 41, column: 9, scope: !4153, inlinedAt: !4384)
!4387 = !DILocation(line: 42, column: 8, scope: !4164, inlinedAt: !4384)
!4388 = !DILocation(line: 42, column: 15, scope: !4166, inlinedAt: !4384)
!4389 = !DILocation(line: 42, column: 10, scope: !4164, inlinedAt: !4384)
!4390 = !DILocation(line: 43, column: 5, scope: !4164, inlinedAt: !4384)
!4391 = !DILocation(line: 113, column: 10, scope: !4355, inlinedAt: !4380)
!4392 = !DILocation(line: 121, column: 3, scope: !4373)
!4393 = distinct !DISubprogram(name: "xalloc_die", scope: !4394, file: !4394, line: 32, type: !251, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !651, variables: !107)
!4394 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4395 = !DILocation(line: 34, column: 10, scope: !4393)
!4396 = !DILocation(line: 34, column: 33, scope: !4393)
!4397 = !DILocation(line: 34, column: 3, scope: !4398)
!4398 = !DILexicalBlockFile(scope: !4393, file: !4394, discriminator: 1)
!4399 = !DILocation(line: 40, column: 3, scope: !4393)
!4400 = distinct !DISubprogram(name: "xstrtoumax", scope: !4401, file: !4401, line: 88, type: !4402, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !4404)
!4401 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!1812, !53, !742, !87, !1806, !53}
!4404 = !{!4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4417, !4418, !4421, !4422}
!4405 = !DILocalVariable(name: "s", arg: 1, scope: !4400, file: !4401, line: 88, type: !53)
!4406 = !DILocalVariable(name: "ptr", arg: 2, scope: !4400, file: !4401, line: 88, type: !742)
!4407 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4400, file: !4401, line: 88, type: !87)
!4408 = !DILocalVariable(name: "val", arg: 4, scope: !4400, file: !4401, line: 89, type: !1806)
!4409 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4400, file: !4401, line: 89, type: !53)
!4410 = !DILocalVariable(name: "t_ptr", scope: !4400, file: !4401, line: 91, type: !42)
!4411 = !DILocalVariable(name: "p", scope: !4400, file: !4401, line: 92, type: !742)
!4412 = !DILocalVariable(name: "tmp", scope: !4400, file: !4401, line: 93, type: !878)
!4413 = !DILocalVariable(name: "err", scope: !4400, file: !4401, line: 94, type: !1812)
!4414 = !DILocalVariable(name: "q", scope: !4415, file: !4401, line: 104, type: !53)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !4401, line: 103, column: 5)
!4416 = distinct !DILexicalBlock(scope: !4400, file: !4401, line: 102, column: 7)
!4417 = !DILocalVariable(name: "ch", scope: !4415, file: !4401, line: 105, type: !52)
!4418 = !DILocalVariable(name: "base", scope: !4419, file: !4401, line: 141, type: !87)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !4401, line: 140, column: 5)
!4420 = distinct !DILexicalBlock(scope: !4400, file: !4401, line: 139, column: 7)
!4421 = !DILocalVariable(name: "suffixes", scope: !4419, file: !4401, line: 142, type: !87)
!4422 = !DILocalVariable(name: "overflow", scope: !4419, file: !4401, line: 143, type: !1812)
!4423 = !DILocation(line: 88, column: 24, scope: !4400)
!4424 = !DILocation(line: 88, column: 34, scope: !4400)
!4425 = !DILocation(line: 88, column: 43, scope: !4400)
!4426 = !DILocation(line: 89, column: 24, scope: !4400)
!4427 = !DILocation(line: 89, column: 41, scope: !4400)
!4428 = !DILocation(line: 91, column: 3, scope: !4400)
!4429 = !DILocation(line: 94, column: 16, scope: !4400)
!4430 = !DILocation(line: 96, column: 3, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !4401, line: 96, column: 3)
!4432 = distinct !DILexicalBlock(scope: !4400, file: !4401, line: 96, column: 3)
!4433 = !DILocation(line: 96, column: 3, scope: !4434)
!4434 = !DILexicalBlockFile(scope: !4431, file: !4401, discriminator: 3)
!4435 = !DILocation(line: 98, column: 8, scope: !4400)
!4436 = !DILocation(line: 92, column: 10, scope: !4400)
!4437 = !DILocation(line: 100, column: 3, scope: !4400)
!4438 = !DILocation(line: 100, column: 9, scope: !4400)
!4439 = !DILocation(line: 104, column: 19, scope: !4415)
!4440 = !DILocation(line: 106, column: 14, scope: !4441)
!4441 = !DILexicalBlockFile(scope: !4415, file: !4401, discriminator: 1)
!4442 = !DILocation(line: 106, column: 7, scope: !4415)
!4443 = !DILocation(line: 105, column: 21, scope: !4415)
!4444 = !DILocation(line: 106, column: 7, scope: !4441)
!4445 = !DILocation(line: 107, column: 15, scope: !4415)
!4446 = distinct !{!4446, !4442, !4447}
!4447 = !DILocation(line: 107, column: 17, scope: !4415)
!4448 = !DILocation(line: 109, column: 9, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4415, file: !4401, line: 108, column: 11)
!4450 = !DILocalVariable(name: "nptr", arg: 1, scope: !4451, file: !4452, line: 336, type: !4455)
!4451 = distinct !DISubprogram(name: "strtoumax", scope: !4452, file: !4452, line: 336, type: !4453, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !4457)
!4452 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!878, !4455, !4456, !87}
!4455 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!4456 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !742)
!4457 = !{!4450, !4458, !4459}
!4458 = !DILocalVariable(name: "endptr", arg: 2, scope: !4451, file: !4452, line: 336, type: !4456)
!4459 = !DILocalVariable(name: "base", arg: 3, scope: !4451, file: !4452, line: 336, type: !87)
!4460 = !DILocation(line: 336, column: 1, scope: !4451, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 112, column: 9, scope: !4400)
!4462 = !DILocation(line: 339, column: 10, scope: !4451, inlinedAt: !4461)
!4463 = !DILocation(line: 93, column: 14, scope: !4400)
!4464 = !DILocation(line: 114, column: 7, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4400, file: !4401, line: 114, column: 7)
!4466 = !DILocation(line: 114, column: 10, scope: !4465)
!4467 = !DILocation(line: 114, column: 7, scope: !4400)
!4468 = !DILocation(line: 118, column: 11, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !4401, line: 118, column: 11)
!4470 = distinct !DILexicalBlock(scope: !4465, file: !4401, line: 115, column: 5)
!4471 = !DILocation(line: 118, column: 26, scope: !4469)
!4472 = !DILocation(line: 118, column: 29, scope: !4473)
!4473 = !DILexicalBlockFile(scope: !4469, file: !4401, discriminator: 1)
!4474 = !DILocation(line: 118, column: 33, scope: !4473)
!4475 = !DILocation(line: 118, column: 36, scope: !4476)
!4476 = !DILexicalBlockFile(scope: !4469, file: !4401, discriminator: 5)
!4477 = !DILocation(line: 118, column: 11, scope: !4478)
!4478 = !DILexicalBlockFile(scope: !4470, file: !4401, discriminator: 5)
!4479 = !DILocation(line: 123, column: 12, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4465, file: !4401, line: 123, column: 12)
!4481 = !DILocation(line: 123, column: 12, scope: !4465)
!4482 = !DILocation(line: 128, column: 5, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4480, file: !4401, line: 124, column: 5)
!4484 = !DILocation(line: 133, column: 8, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4400, file: !4401, line: 133, column: 7)
!4486 = !DILocation(line: 133, column: 7, scope: !4400)
!4487 = !DILocation(line: 135, column: 12, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4485, file: !4401, line: 134, column: 5)
!4489 = !DILocation(line: 136, column: 7, scope: !4488)
!4490 = !DILocation(line: 139, column: 7, scope: !4420)
!4491 = !DILocation(line: 139, column: 11, scope: !4420)
!4492 = !DILocation(line: 139, column: 7, scope: !4400)
!4493 = !DILocation(line: 141, column: 11, scope: !4419)
!4494 = !DILocation(line: 142, column: 11, scope: !4419)
!4495 = !DILocation(line: 145, column: 12, scope: !4496)
!4496 = !DILexicalBlockFile(scope: !4497, file: !4401, discriminator: 3)
!4497 = distinct !DILexicalBlock(scope: !4419, file: !4401, line: 145, column: 11)
!4498 = !DILocation(line: 145, column: 11, scope: !4499)
!4499 = !DILexicalBlockFile(scope: !4419, file: !4401, discriminator: 3)
!4500 = !DILocation(line: 147, column: 16, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4497, file: !4401, line: 146, column: 9)
!4502 = !DILocation(line: 148, column: 22, scope: !4501)
!4503 = !DILocation(line: 148, column: 11, scope: !4501)
!4504 = !DILocation(line: 151, column: 7, scope: !4419)
!4505 = !DILocation(line: 163, column: 15, scope: !4506)
!4506 = !DILexicalBlockFile(scope: !4507, file: !4401, discriminator: 2)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !4401, line: 163, column: 15)
!4508 = distinct !DILexicalBlock(scope: !4419, file: !4401, line: 152, column: 9)
!4509 = !DILocation(line: 163, column: 15, scope: !4510)
!4510 = !DILexicalBlockFile(scope: !4508, file: !4401, discriminator: 2)
!4511 = !DILocation(line: 164, column: 21, scope: !4507)
!4512 = !DILocation(line: 164, column: 13, scope: !4507)
!4513 = !DILocation(line: 167, column: 21, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !4401, line: 167, column: 21)
!4515 = distinct !DILexicalBlock(scope: !4507, file: !4401, line: 165, column: 15)
!4516 = !DILocation(line: 167, column: 29, scope: !4514)
!4517 = !DILocation(line: 167, column: 21, scope: !4515)
!4518 = !DILocation(line: 175, column: 17, scope: !4515)
!4519 = !DILocation(line: 179, column: 7, scope: !4419)
!4520 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4521, file: !4401, line: 60, type: !87)
!4521 = distinct !DISubprogram(name: "bkm_scale", scope: !4401, file: !4401, line: 60, type: !4522, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !4524)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!1812, !1806, !87}
!4524 = !{!4525, !4520}
!4525 = !DILocalVariable(name: "x", arg: 1, scope: !4521, file: !4401, line: 60, type: !1806)
!4526 = !DILocation(line: 60, column: 31, scope: !4521, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 182, column: 22, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4419, file: !4401, line: 180, column: 9)
!4529 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4527)
!4530 = distinct !DILexicalBlock(scope: !4521, file: !4401, line: 67, column: 7)
!4531 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4527)
!4532 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4527)
!4533 = !DILocation(line: 143, column: 20, scope: !4419)
!4534 = !DILocation(line: 183, column: 11, scope: !4528)
!4535 = !DILocation(line: 60, column: 31, scope: !4521, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 189, column: 22, scope: !4528)
!4537 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4536)
!4538 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4536)
!4539 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4536)
!4540 = !DILocation(line: 190, column: 11, scope: !4528)
!4541 = !DILocalVariable(name: "power", arg: 3, scope: !4542, file: !4401, line: 77, type: !87)
!4542 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4401, file: !4401, line: 77, type: !4543, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!1812, !1806, !87, !87}
!4545 = !{!4546, !4547, !4541, !4548}
!4546 = !DILocalVariable(name: "x", arg: 1, scope: !4542, file: !4401, line: 77, type: !1806)
!4547 = !DILocalVariable(name: "base", arg: 2, scope: !4542, file: !4401, line: 77, type: !87)
!4548 = !DILocalVariable(name: "err", scope: !4542, file: !4401, line: 79, type: !1812)
!4549 = !DILocation(line: 77, column: 50, scope: !4542, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 197, column: 22, scope: !4528)
!4551 = !DILocation(line: 79, column: 16, scope: !4542, inlinedAt: !4550)
!4552 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 81, column: 12, scope: !4542, inlinedAt: !4550)
!4554 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4553)
!4555 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4553)
!4556 = !DILocation(line: 81, column: 9, scope: !4542, inlinedAt: !4550)
!4557 = !DILocation(line: 77, column: 50, scope: !4542, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 202, column: 22, scope: !4528)
!4559 = !DILocation(line: 79, column: 16, scope: !4542, inlinedAt: !4558)
!4560 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 81, column: 12, scope: !4542, inlinedAt: !4558)
!4562 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4561)
!4563 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4561)
!4564 = !DILocation(line: 81, column: 9, scope: !4542, inlinedAt: !4558)
!4565 = !DILocation(line: 77, column: 50, scope: !4542, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 207, column: 22, scope: !4528)
!4567 = !DILocation(line: 79, column: 16, scope: !4542, inlinedAt: !4566)
!4568 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 81, column: 12, scope: !4542, inlinedAt: !4566)
!4570 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4569)
!4571 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4569)
!4572 = !DILocation(line: 77, column: 50, scope: !4542, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 212, column: 22, scope: !4528)
!4574 = !DILocation(line: 79, column: 16, scope: !4542, inlinedAt: !4573)
!4575 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 81, column: 12, scope: !4542, inlinedAt: !4573)
!4577 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4576)
!4578 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4576)
!4579 = !DILocation(line: 81, column: 9, scope: !4542, inlinedAt: !4573)
!4580 = !DILocation(line: 77, column: 50, scope: !4542, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 216, column: 22, scope: !4528)
!4582 = !DILocation(line: 79, column: 16, scope: !4542, inlinedAt: !4581)
!4583 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 81, column: 12, scope: !4542, inlinedAt: !4581)
!4585 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4584)
!4586 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4584)
!4587 = !DILocation(line: 81, column: 9, scope: !4542, inlinedAt: !4581)
!4588 = !DILocation(line: 77, column: 50, scope: !4542, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 221, column: 22, scope: !4528)
!4590 = !DILocation(line: 79, column: 16, scope: !4542, inlinedAt: !4589)
!4591 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 81, column: 12, scope: !4542, inlinedAt: !4589)
!4593 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4592)
!4594 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4592)
!4595 = !DILocation(line: 81, column: 9, scope: !4542, inlinedAt: !4589)
!4596 = !DILocation(line: 60, column: 31, scope: !4521, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 225, column: 22, scope: !4528)
!4598 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4597)
!4599 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4597)
!4600 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4597)
!4601 = !DILocation(line: 226, column: 11, scope: !4528)
!4602 = !DILocation(line: 77, column: 50, scope: !4542, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 229, column: 22, scope: !4528)
!4604 = !DILocation(line: 79, column: 16, scope: !4542, inlinedAt: !4603)
!4605 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 81, column: 12, scope: !4542, inlinedAt: !4603)
!4607 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4606)
!4608 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4606)
!4609 = !DILocation(line: 81, column: 9, scope: !4542, inlinedAt: !4603)
!4610 = !DILocation(line: 77, column: 50, scope: !4542, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 233, column: 22, scope: !4528)
!4612 = !DILocation(line: 79, column: 16, scope: !4542, inlinedAt: !4611)
!4613 = !DILocation(line: 67, column: 39, scope: !4530, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 81, column: 12, scope: !4542, inlinedAt: !4611)
!4615 = !DILocation(line: 72, column: 6, scope: !4521, inlinedAt: !4614)
!4616 = !DILocation(line: 67, column: 7, scope: !4521, inlinedAt: !4614)
!4617 = !DILocation(line: 81, column: 9, scope: !4542, inlinedAt: !4611)
!4618 = !DILocation(line: 237, column: 16, scope: !4528)
!4619 = !DILocation(line: 238, column: 22, scope: !4528)
!4620 = !DILocation(line: 238, column: 11, scope: !4528)
!4621 = !DILocation(line: 241, column: 11, scope: !4419)
!4622 = !DILocation(line: 242, column: 10, scope: !4419)
!4623 = !DILocation(line: 243, column: 11, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4419, file: !4401, line: 243, column: 11)
!4625 = !DILocation(line: 244, column: 13, scope: !4624)
!4626 = !DILocation(line: 243, column: 11, scope: !4419)
!4627 = !DILocation(line: 247, column: 8, scope: !4400)
!4628 = !DILocation(line: 248, column: 3, scope: !4400)
!4629 = !DILocation(line: 249, column: 1, scope: !4400)
!4630 = distinct !DISubprogram(name: "rpl_calloc", scope: !4631, file: !4631, line: 42, type: !4140, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !4632)
!4631 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4632 = !{!4633, !4634, !4635, !4636}
!4633 = !DILocalVariable(name: "n", arg: 1, scope: !4630, file: !4631, line: 42, type: !45)
!4634 = !DILocalVariable(name: "s", arg: 2, scope: !4630, file: !4631, line: 42, type: !45)
!4635 = !DILocalVariable(name: "result", scope: !4630, file: !4631, line: 44, type: !44)
!4636 = !DILocalVariable(name: "bytes", scope: !4637, file: !4631, line: 56, type: !45)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !4631, line: 53, column: 5)
!4638 = distinct !DILexicalBlock(scope: !4630, file: !4631, line: 47, column: 7)
!4639 = !DILocation(line: 42, column: 20, scope: !4630)
!4640 = !DILocation(line: 42, column: 30, scope: !4630)
!4641 = !DILocation(line: 47, column: 9, scope: !4638)
!4642 = !DILocation(line: 47, column: 19, scope: !4643)
!4643 = !DILexicalBlockFile(scope: !4638, file: !4631, discriminator: 1)
!4644 = !DILocation(line: 47, column: 14, scope: !4638)
!4645 = !DILocation(line: 56, column: 24, scope: !4637)
!4646 = !DILocation(line: 56, column: 14, scope: !4637)
!4647 = !DILocation(line: 57, column: 17, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4637, file: !4631, line: 57, column: 11)
!4649 = !DILocation(line: 57, column: 21, scope: !4648)
!4650 = !DILocation(line: 57, column: 11, scope: !4637)
!4651 = !DILocation(line: 59, column: 11, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4648, file: !4631, line: 58, column: 9)
!4653 = !DILocation(line: 59, column: 17, scope: !4652)
!4654 = !DILocation(line: 65, column: 12, scope: !4630)
!4655 = !DILocation(line: 44, column: 9, scope: !4630)
!4656 = !DILocation(line: 72, column: 3, scope: !4630)
!4657 = !DILocation(line: 73, column: 1, scope: !4630)
!4658 = distinct !DISubprogram(name: "rpl_fclose", scope: !4659, file: !4659, line: 56, type: !4660, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !659, variables: !4702)
!4659 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!87, !4662}
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !825, line: 49, baseType: !4664)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !827, line: 241, size: 1728, elements: !4665)
!4665 = !{!4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4664, file: !827, line: 242, baseType: !87, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4664, file: !827, line: 247, baseType: !42, size: 64, offset: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4664, file: !827, line: 248, baseType: !42, size: 64, offset: 128)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4664, file: !827, line: 249, baseType: !42, size: 64, offset: 192)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4664, file: !827, line: 250, baseType: !42, size: 64, offset: 256)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4664, file: !827, line: 251, baseType: !42, size: 64, offset: 320)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4664, file: !827, line: 252, baseType: !42, size: 64, offset: 384)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4664, file: !827, line: 253, baseType: !42, size: 64, offset: 448)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4664, file: !827, line: 254, baseType: !42, size: 64, offset: 512)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4664, file: !827, line: 256, baseType: !42, size: 64, offset: 576)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4664, file: !827, line: 257, baseType: !42, size: 64, offset: 640)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4664, file: !827, line: 258, baseType: !42, size: 64, offset: 704)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4664, file: !827, line: 260, baseType: !4679, size: 64, offset: 768)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !827, line: 156, size: 192, elements: !4681)
!4681 = !{!4682, !4683, !4685}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4680, file: !827, line: 157, baseType: !4679, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4680, file: !827, line: 158, baseType: !4684, size: 64, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4680, file: !827, line: 162, baseType: !87, size: 32, offset: 128)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4664, file: !827, line: 262, baseType: !4684, size: 64, offset: 832)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4664, file: !827, line: 264, baseType: !87, size: 32, offset: 896)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4664, file: !827, line: 268, baseType: !87, size: 32, offset: 928)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4664, file: !827, line: 270, baseType: !853, size: 64, offset: 960)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4664, file: !827, line: 274, baseType: !188, size: 16, offset: 1024)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4664, file: !827, line: 275, baseType: !856, size: 8, offset: 1040)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4664, file: !827, line: 276, baseType: !858, size: 8, offset: 1048)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4664, file: !827, line: 280, baseType: !862, size: 64, offset: 1088)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4664, file: !827, line: 289, baseType: !865, size: 64, offset: 1152)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4664, file: !827, line: 297, baseType: !44, size: 64, offset: 1216)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4664, file: !827, line: 298, baseType: !44, size: 64, offset: 1280)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4664, file: !827, line: 299, baseType: !44, size: 64, offset: 1344)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4664, file: !827, line: 300, baseType: !44, size: 64, offset: 1408)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4664, file: !827, line: 302, baseType: !45, size: 64, offset: 1472)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4664, file: !827, line: 303, baseType: !87, size: 32, offset: 1536)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4664, file: !827, line: 305, baseType: !873, size: 160, offset: 1568)
!4702 = !{!4703, !4704, !4705, !4706}
!4703 = !DILocalVariable(name: "fp", arg: 1, scope: !4658, file: !4659, line: 56, type: !4662)
!4704 = !DILocalVariable(name: "saved_errno", scope: !4658, file: !4659, line: 58, type: !87)
!4705 = !DILocalVariable(name: "fd", scope: !4658, file: !4659, line: 59, type: !87)
!4706 = !DILocalVariable(name: "result", scope: !4658, file: !4659, line: 60, type: !87)
!4707 = !DILocation(line: 56, column: 19, scope: !4658)
!4708 = !DILocation(line: 58, column: 7, scope: !4658)
!4709 = !DILocation(line: 60, column: 7, scope: !4658)
!4710 = !DILocation(line: 63, column: 8, scope: !4658)
!4711 = !DILocation(line: 59, column: 7, scope: !4658)
!4712 = !DILocation(line: 64, column: 10, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4658, file: !4659, line: 64, column: 7)
!4714 = !DILocation(line: 64, column: 7, scope: !4658)
!4715 = !DILocation(line: 65, column: 12, scope: !4713)
!4716 = !DILocation(line: 65, column: 5, scope: !4713)
!4717 = !DILocation(line: 70, column: 9, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4658, file: !4659, line: 70, column: 7)
!4719 = !DILocation(line: 70, column: 23, scope: !4718)
!4720 = !DILocation(line: 70, column: 33, scope: !4721)
!4721 = !DILexicalBlockFile(scope: !4718, file: !4659, discriminator: 1)
!4722 = !DILocation(line: 70, column: 26, scope: !4723)
!4723 = !DILexicalBlockFile(scope: !4718, file: !4659, discriminator: 3)
!4724 = !DILocation(line: 70, column: 59, scope: !4721)
!4725 = !DILocation(line: 71, column: 7, scope: !4718)
!4726 = !DILocation(line: 71, column: 10, scope: !4721)
!4727 = !DILocation(line: 70, column: 7, scope: !4728)
!4728 = !DILexicalBlockFile(scope: !4658, file: !4659, discriminator: 2)
!4729 = !DILocation(line: 98, column: 12, scope: !4658)
!4730 = !DILocation(line: 103, column: 7, scope: !4658)
!4731 = !DILocation(line: 72, column: 19, scope: !4718)
!4732 = !DILocation(line: 103, column: 19, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4658, file: !4659, line: 103, column: 7)
!4734 = !DILocation(line: 105, column: 13, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4733, file: !4659, line: 104, column: 5)
!4736 = !DILocation(line: 107, column: 5, scope: !4735)
!4737 = !DILocation(line: 110, column: 1, scope: !4658)
!4738 = distinct !DISubprogram(name: "rpl_fflush", scope: !4739, file: !4739, line: 127, type: !4740, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !661, variables: !4782)
!4739 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!87, !4742}
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !825, line: 49, baseType: !4744)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !827, line: 241, size: 1728, elements: !4745)
!4745 = !{!4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4744, file: !827, line: 242, baseType: !87, size: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4744, file: !827, line: 247, baseType: !42, size: 64, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4744, file: !827, line: 248, baseType: !42, size: 64, offset: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4744, file: !827, line: 249, baseType: !42, size: 64, offset: 192)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4744, file: !827, line: 250, baseType: !42, size: 64, offset: 256)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4744, file: !827, line: 251, baseType: !42, size: 64, offset: 320)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4744, file: !827, line: 252, baseType: !42, size: 64, offset: 384)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4744, file: !827, line: 253, baseType: !42, size: 64, offset: 448)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4744, file: !827, line: 254, baseType: !42, size: 64, offset: 512)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4744, file: !827, line: 256, baseType: !42, size: 64, offset: 576)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4744, file: !827, line: 257, baseType: !42, size: 64, offset: 640)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4744, file: !827, line: 258, baseType: !42, size: 64, offset: 704)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4744, file: !827, line: 260, baseType: !4759, size: 64, offset: 768)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !827, line: 156, size: 192, elements: !4761)
!4761 = !{!4762, !4763, !4765}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4760, file: !827, line: 157, baseType: !4759, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4760, file: !827, line: 158, baseType: !4764, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4760, file: !827, line: 162, baseType: !87, size: 32, offset: 128)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4744, file: !827, line: 262, baseType: !4764, size: 64, offset: 832)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4744, file: !827, line: 264, baseType: !87, size: 32, offset: 896)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4744, file: !827, line: 268, baseType: !87, size: 32, offset: 928)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4744, file: !827, line: 270, baseType: !853, size: 64, offset: 960)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4744, file: !827, line: 274, baseType: !188, size: 16, offset: 1024)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4744, file: !827, line: 275, baseType: !856, size: 8, offset: 1040)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4744, file: !827, line: 276, baseType: !858, size: 8, offset: 1048)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4744, file: !827, line: 280, baseType: !862, size: 64, offset: 1088)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4744, file: !827, line: 289, baseType: !865, size: 64, offset: 1152)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4744, file: !827, line: 297, baseType: !44, size: 64, offset: 1216)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4744, file: !827, line: 298, baseType: !44, size: 64, offset: 1280)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4744, file: !827, line: 299, baseType: !44, size: 64, offset: 1344)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4744, file: !827, line: 300, baseType: !44, size: 64, offset: 1408)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4744, file: !827, line: 302, baseType: !45, size: 64, offset: 1472)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4744, file: !827, line: 303, baseType: !87, size: 32, offset: 1536)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4744, file: !827, line: 305, baseType: !873, size: 160, offset: 1568)
!4782 = !{!4783}
!4783 = !DILocalVariable(name: "stream", arg: 1, scope: !4738, file: !4739, line: 127, type: !4742)
!4784 = !DILocation(line: 127, column: 19, scope: !4738)
!4785 = !DILocation(line: 148, column: 14, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4738, file: !4739, line: 148, column: 7)
!4787 = !DILocation(line: 148, column: 22, scope: !4786)
!4788 = !DILocation(line: 148, column: 27, scope: !4789)
!4789 = !DILexicalBlockFile(scope: !4786, file: !4739, discriminator: 1)
!4790 = !DILocation(line: 148, column: 7, scope: !4791)
!4791 = !DILexicalBlockFile(scope: !4738, file: !4739, discriminator: 1)
!4792 = !DILocation(line: 149, column: 12, scope: !4786)
!4793 = !DILocation(line: 149, column: 5, scope: !4786)
!4794 = !DILocalVariable(name: "fp", arg: 1, scope: !4795, file: !4739, line: 40, type: !4742)
!4795 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4739, file: !4739, line: 40, type: !4796, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !661, variables: !4798)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{null, !4742}
!4798 = !{!4794}
!4799 = !DILocation(line: 40, column: 48, scope: !4795, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 153, column: 3, scope: !4738)
!4801 = !DILocation(line: 42, column: 11, scope: !4802, inlinedAt: !4800)
!4802 = distinct !DILexicalBlock(scope: !4795, file: !4739, line: 42, column: 7)
!4803 = !DILocation(line: 42, column: 18, scope: !4802, inlinedAt: !4800)
!4804 = !DILocation(line: 42, column: 7, scope: !4795, inlinedAt: !4800)
!4805 = !DILocation(line: 44, column: 5, scope: !4802, inlinedAt: !4800)
!4806 = !DILocation(line: 155, column: 10, scope: !4738)
!4807 = !DILocation(line: 155, column: 3, scope: !4738)
!4808 = !DILocation(line: 229, column: 1, scope: !4738)
!4809 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4810, file: !4810, line: 28, type: !4811, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4853)
!4810 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!87, !4813, !1211, !87}
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !825, line: 49, baseType: !4815)
!4815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !827, line: 241, size: 1728, elements: !4816)
!4816 = !{!4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4815, file: !827, line: 242, baseType: !87, size: 32)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4815, file: !827, line: 247, baseType: !42, size: 64, offset: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4815, file: !827, line: 248, baseType: !42, size: 64, offset: 128)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4815, file: !827, line: 249, baseType: !42, size: 64, offset: 192)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4815, file: !827, line: 250, baseType: !42, size: 64, offset: 256)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4815, file: !827, line: 251, baseType: !42, size: 64, offset: 320)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4815, file: !827, line: 252, baseType: !42, size: 64, offset: 384)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4815, file: !827, line: 253, baseType: !42, size: 64, offset: 448)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4815, file: !827, line: 254, baseType: !42, size: 64, offset: 512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4815, file: !827, line: 256, baseType: !42, size: 64, offset: 576)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4815, file: !827, line: 257, baseType: !42, size: 64, offset: 640)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4815, file: !827, line: 258, baseType: !42, size: 64, offset: 704)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4815, file: !827, line: 260, baseType: !4830, size: 64, offset: 768)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !827, line: 156, size: 192, elements: !4832)
!4832 = !{!4833, !4834, !4836}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4831, file: !827, line: 157, baseType: !4830, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4831, file: !827, line: 158, baseType: !4835, size: 64, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4831, file: !827, line: 162, baseType: !87, size: 32, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4815, file: !827, line: 262, baseType: !4835, size: 64, offset: 832)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4815, file: !827, line: 264, baseType: !87, size: 32, offset: 896)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4815, file: !827, line: 268, baseType: !87, size: 32, offset: 928)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4815, file: !827, line: 270, baseType: !853, size: 64, offset: 960)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4815, file: !827, line: 274, baseType: !188, size: 16, offset: 1024)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4815, file: !827, line: 275, baseType: !856, size: 8, offset: 1040)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4815, file: !827, line: 276, baseType: !858, size: 8, offset: 1048)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4815, file: !827, line: 280, baseType: !862, size: 64, offset: 1088)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4815, file: !827, line: 289, baseType: !865, size: 64, offset: 1152)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4815, file: !827, line: 297, baseType: !44, size: 64, offset: 1216)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4815, file: !827, line: 298, baseType: !44, size: 64, offset: 1280)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4815, file: !827, line: 299, baseType: !44, size: 64, offset: 1344)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4815, file: !827, line: 300, baseType: !44, size: 64, offset: 1408)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4815, file: !827, line: 302, baseType: !45, size: 64, offset: 1472)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4815, file: !827, line: 303, baseType: !87, size: 32, offset: 1536)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4815, file: !827, line: 305, baseType: !873, size: 160, offset: 1568)
!4853 = !{!4854, !4855, !4856, !4857}
!4854 = !DILocalVariable(name: "fp", arg: 1, scope: !4809, file: !4810, line: 28, type: !4813)
!4855 = !DILocalVariable(name: "offset", arg: 2, scope: !4809, file: !4810, line: 28, type: !1211)
!4856 = !DILocalVariable(name: "whence", arg: 3, scope: !4809, file: !4810, line: 28, type: !87)
!4857 = !DILocalVariable(name: "pos", scope: !4858, file: !4810, line: 116, type: !1211)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !4810, line: 112, column: 5)
!4859 = distinct !DILexicalBlock(scope: !4809, file: !4810, line: 51, column: 7)
!4860 = !DILocation(line: 28, column: 15, scope: !4809)
!4861 = !DILocation(line: 28, column: 25, scope: !4809)
!4862 = !DILocation(line: 28, column: 37, scope: !4809)
!4863 = !DILocation(line: 51, column: 11, scope: !4859)
!4864 = !DILocation(line: 51, column: 31, scope: !4859)
!4865 = !DILocation(line: 51, column: 24, scope: !4859)
!4866 = !DILocation(line: 52, column: 7, scope: !4859)
!4867 = !DILocation(line: 52, column: 14, scope: !4868)
!4868 = !DILexicalBlockFile(scope: !4859, file: !4810, discriminator: 1)
!4869 = !DILocation(line: 52, column: 35, scope: !4868)
!4870 = !{!945, !692, i64 32}
!4871 = !DILocation(line: 52, column: 28, scope: !4868)
!4872 = !DILocation(line: 53, column: 7, scope: !4859)
!4873 = !DILocation(line: 53, column: 14, scope: !4868)
!4874 = !{!945, !692, i64 72}
!4875 = !DILocation(line: 53, column: 28, scope: !4868)
!4876 = !DILocation(line: 51, column: 7, scope: !4877)
!4877 = !DILexicalBlockFile(scope: !4809, file: !4810, discriminator: 1)
!4878 = !DILocation(line: 116, column: 26, scope: !4858)
!4879 = !DILocation(line: 116, column: 19, scope: !4880)
!4880 = !DILexicalBlockFile(scope: !4858, file: !4810, discriminator: 1)
!4881 = !DILocation(line: 116, column: 13, scope: !4858)
!4882 = !DILocation(line: 117, column: 15, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4858, file: !4810, line: 117, column: 11)
!4884 = !DILocation(line: 117, column: 11, scope: !4858)
!4885 = !DILocation(line: 127, column: 11, scope: !4858)
!4886 = !DILocation(line: 127, column: 18, scope: !4858)
!4887 = !DILocation(line: 128, column: 11, scope: !4858)
!4888 = !DILocation(line: 128, column: 19, scope: !4858)
!4889 = !{!945, !946, i64 144}
!4890 = !DILocation(line: 159, column: 7, scope: !4858)
!4891 = !DILocation(line: 161, column: 10, scope: !4809)
!4892 = !DILocation(line: 161, column: 3, scope: !4809)
!4893 = !DILocation(line: 162, column: 1, scope: !4809)
!4894 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4895, file: !4895, line: 334, type: !4896, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !665, variables: !4910)
!4895 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!45, !4898, !53, !45, !4899}
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2157, line: 107, baseType: !4901)
!4901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2157, line: 95, baseType: !4902)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2157, line: 83, size: 64, elements: !4903)
!4903 = !{!4904, !4905}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4902, file: !2157, line: 85, baseType: !87, size: 32)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4902, file: !2157, line: 94, baseType: !4906, size: 32, offset: 32)
!4906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4902, file: !2157, line: 86, size: 32, elements: !4907)
!4907 = !{!4908, !4909}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4906, file: !2157, line: 89, baseType: !205, size: 32)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4906, file: !2157, line: 93, baseType: !2167, size: 32)
!4910 = !{!4911, !4912, !4913, !4914, !4915, !4916, !4917}
!4911 = !DILocalVariable(name: "pwc", arg: 1, scope: !4894, file: !4895, line: 334, type: !4898)
!4912 = !DILocalVariable(name: "s", arg: 2, scope: !4894, file: !4895, line: 334, type: !53)
!4913 = !DILocalVariable(name: "n", arg: 3, scope: !4894, file: !4895, line: 334, type: !45)
!4914 = !DILocalVariable(name: "ps", arg: 4, scope: !4894, file: !4895, line: 334, type: !4899)
!4915 = !DILocalVariable(name: "ret", scope: !4894, file: !4895, line: 336, type: !45)
!4916 = !DILocalVariable(name: "wc", scope: !4894, file: !4895, line: 337, type: !2170)
!4917 = !DILocalVariable(name: "uc", scope: !4918, file: !4895, line: 398, type: !52)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !4895, line: 397, column: 5)
!4919 = distinct !DILexicalBlock(scope: !4894, file: !4895, line: 396, column: 7)
!4920 = !DILocation(line: 334, column: 23, scope: !4894)
!4921 = !DILocation(line: 334, column: 40, scope: !4894)
!4922 = !DILocation(line: 334, column: 50, scope: !4894)
!4923 = !DILocation(line: 334, column: 64, scope: !4894)
!4924 = !DILocation(line: 337, column: 3, scope: !4894)
!4925 = !DILocation(line: 353, column: 9, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4894, file: !4895, line: 353, column: 7)
!4927 = !DILocation(line: 353, column: 7, scope: !4894)
!4928 = !DILocation(line: 388, column: 9, scope: !4894)
!4929 = !DILocation(line: 336, column: 10, scope: !4894)
!4930 = !DILocation(line: 396, column: 19, scope: !4919)
!4931 = !DILocation(line: 396, column: 31, scope: !4932)
!4932 = !DILexicalBlockFile(scope: !4919, file: !4895, discriminator: 1)
!4933 = !DILocation(line: 396, column: 26, scope: !4919)
!4934 = !DILocation(line: 396, column: 41, scope: !4935)
!4935 = !DILexicalBlockFile(scope: !4919, file: !4895, discriminator: 2)
!4936 = !DILocation(line: 396, column: 7, scope: !4937)
!4937 = !DILexicalBlockFile(scope: !4894, file: !4895, discriminator: 2)
!4938 = !DILocation(line: 398, column: 26, scope: !4918)
!4939 = !DILocation(line: 398, column: 21, scope: !4918)
!4940 = !DILocation(line: 399, column: 14, scope: !4918)
!4941 = !DILocation(line: 399, column: 12, scope: !4918)
!4942 = !DILocation(line: 405, column: 1, scope: !4894)
!4943 = distinct !DISubprogram(name: "__argmatch_die", scope: !247, file: !247, line: 62, type: !251, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !107)
!4944 = !DILocation(line: 64, column: 3, scope: !4943)
!4945 = !DILocation(line: 65, column: 1, scope: !4943)
!4946 = distinct !DISubprogram(name: "argmatch", scope: !247, file: !247, line: 84, type: !4947, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !4950)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!4949, !53, !3973, !53, !45}
!4949 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !46, line: 51, baseType: !623)
!4950 = !{!4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4965}
!4951 = !DILocalVariable(name: "arg", arg: 1, scope: !4946, file: !247, line: 84, type: !53)
!4952 = !DILocalVariable(name: "arglist", arg: 2, scope: !4946, file: !247, line: 84, type: !3973)
!4953 = !DILocalVariable(name: "vallist", arg: 3, scope: !4946, file: !247, line: 85, type: !53)
!4954 = !DILocalVariable(name: "valsize", arg: 4, scope: !4946, file: !247, line: 85, type: !45)
!4955 = !DILocalVariable(name: "i", scope: !4946, file: !247, line: 87, type: !45)
!4956 = !DILocalVariable(name: "arglen", scope: !4946, file: !247, line: 88, type: !45)
!4957 = !DILocalVariable(name: "matchind", scope: !4946, file: !247, line: 89, type: !4949)
!4958 = !DILocalVariable(name: "ambiguous", scope: !4946, file: !247, line: 90, type: !59)
!4959 = !DILocalVariable(name: "__s1_len", scope: !4960, file: !247, line: 97, type: !45)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !247, line: 97, column: 12)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !247, line: 97, column: 11)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !247, line: 96, column: 5)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !247, line: 95, column: 3)
!4964 = distinct !DILexicalBlock(scope: !4946, file: !247, line: 95, column: 3)
!4965 = !DILocalVariable(name: "__s2_len", scope: !4960, file: !247, line: 97, type: !45)
!4966 = !DILocation(line: 84, column: 23, scope: !4946)
!4967 = !DILocation(line: 84, column: 47, scope: !4946)
!4968 = !DILocation(line: 85, column: 23, scope: !4946)
!4969 = !DILocation(line: 85, column: 39, scope: !4946)
!4970 = !DILocation(line: 89, column: 13, scope: !4946)
!4971 = !DILocation(line: 90, column: 8, scope: !4946)
!4972 = !DILocation(line: 92, column: 12, scope: !4946)
!4973 = !DILocation(line: 88, column: 10, scope: !4946)
!4974 = !DILocation(line: 87, column: 10, scope: !4946)
!4975 = !DILocation(line: 95, column: 15, scope: !4976)
!4976 = !DILexicalBlockFile(scope: !4963, file: !247, discriminator: 1)
!4977 = !DILocation(line: 95, column: 3, scope: !4978)
!4978 = !DILexicalBlockFile(scope: !4964, file: !247, discriminator: 1)
!4979 = !DILocation(line: 97, column: 12, scope: !4980)
!4980 = !DILexicalBlockFile(scope: !4961, file: !247, discriminator: 4)
!4981 = !DILocation(line: 97, column: 11, scope: !4982)
!4982 = !DILexicalBlockFile(scope: !4962, file: !247, discriminator: 4)
!4983 = !DILocation(line: 99, column: 15, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4985, file: !247, line: 99, column: 15)
!4985 = distinct !DILexicalBlock(scope: !4961, file: !247, line: 98, column: 9)
!4986 = !DILocation(line: 99, column: 35, scope: !4984)
!4987 = !DILocation(line: 99, column: 15, scope: !4985)
!4988 = !DILocation(line: 102, column: 29, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4984, file: !247, line: 102, column: 20)
!4990 = !DILocation(line: 102, column: 20, scope: !4984)
!4991 = !DILocation(line: 109, column: 19, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !247, line: 108, column: 19)
!4993 = distinct !DILexicalBlock(scope: !4989, file: !247, line: 106, column: 13)
!4994 = !DILocation(line: 109, column: 48, scope: !4995)
!4995 = !DILexicalBlockFile(scope: !4992, file: !247, discriminator: 1)
!4996 = !DILocation(line: 109, column: 38, scope: !4995)
!4997 = !DILocation(line: 110, column: 48, scope: !4992)
!4998 = !DILocation(line: 110, column: 38, scope: !4992)
!4999 = !DILocation(line: 109, column: 22, scope: !4995)
!5000 = !DILocation(line: 108, column: 19, scope: !5001)
!5001 = !DILexicalBlockFile(scope: !4993, file: !247, discriminator: 1)
!5002 = !DILocation(line: 115, column: 17, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4992, file: !247, line: 111, column: 17)
!5004 = !DILocation(line: 95, column: 28, scope: !5005)
!5005 = !DILexicalBlockFile(scope: !4963, file: !247, discriminator: 2)
!5006 = distinct !{!5006, !5007, !5008}
!5007 = !DILocation(line: 95, column: 3, scope: !4964)
!5008 = !DILocation(line: 118, column: 5, scope: !4964)
!5009 = !DILocation(line: 119, column: 7, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4946, file: !247, line: 119, column: 7)
!5011 = !DILocation(line: 122, column: 5, scope: !5010)
!5012 = !DILocation(line: 123, column: 1, scope: !4946)
!5013 = distinct !DISubprogram(name: "argmatch_invalid", scope: !247, file: !247, line: 131, type: !5014, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !5016)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{null, !53, !53, !4949}
!5016 = !{!5017, !5018, !5019, !5020}
!5017 = !DILocalVariable(name: "context", arg: 1, scope: !5013, file: !247, line: 131, type: !53)
!5018 = !DILocalVariable(name: "value", arg: 2, scope: !5013, file: !247, line: 131, type: !53)
!5019 = !DILocalVariable(name: "problem", arg: 3, scope: !5013, file: !247, line: 131, type: !4949)
!5020 = !DILocalVariable(name: "format", scope: !5013, file: !247, line: 133, type: !53)
!5021 = !DILocation(line: 131, column: 31, scope: !5013)
!5022 = !DILocation(line: 131, column: 52, scope: !5013)
!5023 = !DILocation(line: 131, column: 69, scope: !5013)
!5024 = !DILocation(line: 133, column: 33, scope: !5013)
!5025 = !DILocation(line: 133, column: 25, scope: !5013)
!5026 = !DILocation(line: 135, column: 27, scope: !5013)
!5027 = !DILocation(line: 133, column: 15, scope: !5013)
!5028 = !DILocation(line: 137, column: 24, scope: !5013)
!5029 = !DILocation(line: 138, column: 10, scope: !5013)
!5030 = !DILocation(line: 137, column: 3, scope: !5031)
!5031 = !DILexicalBlockFile(scope: !5013, file: !247, discriminator: 1)
!5032 = !DILocation(line: 139, column: 1, scope: !5013)
!5033 = distinct !DISubprogram(name: "argmatch_valid", scope: !247, file: !247, line: 146, type: !5034, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !5036)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{null, !3973, !53, !45}
!5036 = !{!5037, !5038, !5039, !5040, !5041}
!5037 = !DILocalVariable(name: "arglist", arg: 1, scope: !5033, file: !247, line: 146, type: !3973)
!5038 = !DILocalVariable(name: "vallist", arg: 2, scope: !5033, file: !247, line: 147, type: !53)
!5039 = !DILocalVariable(name: "valsize", arg: 3, scope: !5033, file: !247, line: 147, type: !45)
!5040 = !DILocalVariable(name: "i", scope: !5033, file: !247, line: 149, type: !45)
!5041 = !DILocalVariable(name: "last_val", scope: !5033, file: !247, line: 150, type: !53)
!5042 = !DILocation(line: 146, column: 36, scope: !5033)
!5043 = !DILocation(line: 147, column: 29, scope: !5033)
!5044 = !DILocation(line: 147, column: 45, scope: !5033)
!5045 = !DILocation(line: 150, column: 15, scope: !5033)
!5046 = !DILocation(line: 154, column: 3, scope: !5033)
!5047 = !DILocation(line: 154, column: 3, scope: !5048)
!5048 = !DILexicalBlockFile(scope: !5033, file: !247, discriminator: 1)
!5049 = !DILocation(line: 149, column: 10, scope: !5033)
!5050 = !DILocation(line: 155, column: 15, scope: !5051)
!5051 = !DILexicalBlockFile(scope: !5052, file: !247, discriminator: 1)
!5052 = distinct !DILexicalBlock(scope: !5053, file: !247, line: 155, column: 3)
!5053 = distinct !DILexicalBlock(scope: !5033, file: !247, line: 155, column: 3)
!5054 = !DILocation(line: 155, column: 3, scope: !5055)
!5055 = !DILexicalBlockFile(scope: !5053, file: !247, discriminator: 1)
!5056 = !DILocation(line: 156, column: 12, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5052, file: !247, line: 156, column: 9)
!5058 = !DILocation(line: 159, column: 9, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5057, file: !247, line: 158, column: 7)
!5060 = !DILocation(line: 157, column: 9, scope: !5057)
!5061 = !DILocation(line: 157, column: 12, scope: !5062)
!5062 = !DILexicalBlockFile(scope: !5057, file: !247, discriminator: 1)
!5063 = !DILocation(line: 156, column: 9, scope: !5051)
!5064 = !DILocation(line: 159, column: 9, scope: !5065)
!5065 = !DILexicalBlockFile(scope: !5059, file: !247, discriminator: 1)
!5066 = !DILocation(line: 161, column: 7, scope: !5059)
!5067 = !DILocation(line: 164, column: 9, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5057, file: !247, line: 163, column: 7)
!5069 = !DILocation(line: 164, column: 9, scope: !5070)
!5070 = !DILexicalBlockFile(scope: !5068, file: !247, discriminator: 1)
!5071 = !DILocation(line: 155, column: 28, scope: !5072)
!5072 = !DILexicalBlockFile(scope: !5052, file: !247, discriminator: 2)
!5073 = distinct !{!5073, !5074, !5075}
!5074 = !DILocation(line: 155, column: 3, scope: !5053)
!5075 = !DILocation(line: 165, column: 7, scope: !5053)
!5076 = !DILocation(line: 166, column: 3, scope: !5033)
!5077 = !DILocalVariable(name: "__c", arg: 1, scope: !5078, file: !936, line: 98, type: !87)
!5078 = distinct !DISubprogram(name: "putc_unlocked", scope: !936, file: !936, line: 98, type: !5079, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !5121)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!87, !87, !5081}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !825, line: 49, baseType: !5083)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !827, line: 241, size: 1728, elements: !5084)
!5084 = !{!5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5083, file: !827, line: 242, baseType: !87, size: 32)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5083, file: !827, line: 247, baseType: !42, size: 64, offset: 64)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5083, file: !827, line: 248, baseType: !42, size: 64, offset: 128)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5083, file: !827, line: 249, baseType: !42, size: 64, offset: 192)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5083, file: !827, line: 250, baseType: !42, size: 64, offset: 256)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5083, file: !827, line: 251, baseType: !42, size: 64, offset: 320)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5083, file: !827, line: 252, baseType: !42, size: 64, offset: 384)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5083, file: !827, line: 253, baseType: !42, size: 64, offset: 448)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5083, file: !827, line: 254, baseType: !42, size: 64, offset: 512)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5083, file: !827, line: 256, baseType: !42, size: 64, offset: 576)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5083, file: !827, line: 257, baseType: !42, size: 64, offset: 640)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5083, file: !827, line: 258, baseType: !42, size: 64, offset: 704)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5083, file: !827, line: 260, baseType: !5098, size: 64, offset: 768)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !827, line: 156, size: 192, elements: !5100)
!5100 = !{!5101, !5102, !5104}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5099, file: !827, line: 157, baseType: !5098, size: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5099, file: !827, line: 158, baseType: !5103, size: 64, offset: 64)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5099, file: !827, line: 162, baseType: !87, size: 32, offset: 128)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5083, file: !827, line: 262, baseType: !5103, size: 64, offset: 832)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5083, file: !827, line: 264, baseType: !87, size: 32, offset: 896)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5083, file: !827, line: 268, baseType: !87, size: 32, offset: 928)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5083, file: !827, line: 270, baseType: !853, size: 64, offset: 960)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5083, file: !827, line: 274, baseType: !188, size: 16, offset: 1024)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5083, file: !827, line: 275, baseType: !856, size: 8, offset: 1040)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5083, file: !827, line: 276, baseType: !858, size: 8, offset: 1048)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5083, file: !827, line: 280, baseType: !862, size: 64, offset: 1088)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5083, file: !827, line: 289, baseType: !865, size: 64, offset: 1152)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5083, file: !827, line: 297, baseType: !44, size: 64, offset: 1216)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5083, file: !827, line: 298, baseType: !44, size: 64, offset: 1280)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5083, file: !827, line: 299, baseType: !44, size: 64, offset: 1344)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5083, file: !827, line: 300, baseType: !44, size: 64, offset: 1408)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5083, file: !827, line: 302, baseType: !45, size: 64, offset: 1472)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5083, file: !827, line: 303, baseType: !87, size: 32, offset: 1536)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5083, file: !827, line: 305, baseType: !873, size: 160, offset: 1568)
!5121 = !{!5077, !5122}
!5122 = !DILocalVariable(name: "__stream", arg: 2, scope: !5078, file: !936, line: 98, type: !5081)
!5123 = !DILocation(line: 98, column: 20, scope: !5078, inlinedAt: !5124)
!5124 = distinct !DILocation(line: 166, column: 3, scope: !5033)
!5125 = !DILocation(line: 98, column: 31, scope: !5078, inlinedAt: !5124)
!5126 = !DILocation(line: 100, column: 10, scope: !5078, inlinedAt: !5124)
!5127 = !DILocation(line: 100, column: 10, scope: !5128, inlinedAt: !5124)
!5128 = !DILexicalBlockFile(scope: !5078, file: !936, discriminator: 1)
!5129 = !DILocation(line: 100, column: 10, scope: !5130, inlinedAt: !5124)
!5130 = !DILexicalBlockFile(scope: !5078, file: !936, discriminator: 2)
!5131 = !DILocation(line: 167, column: 1, scope: !5033)
!5132 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !247, file: !247, line: 176, type: !5133, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !5135)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!4949, !53, !53, !3973, !53, !45, !248}
!5135 = !{!5136, !5137, !5138, !5139, !5140, !5141, !5142}
!5136 = !DILocalVariable(name: "context", arg: 1, scope: !5132, file: !247, line: 176, type: !53)
!5137 = !DILocalVariable(name: "arg", arg: 2, scope: !5132, file: !247, line: 177, type: !53)
!5138 = !DILocalVariable(name: "arglist", arg: 3, scope: !5132, file: !247, line: 177, type: !3973)
!5139 = !DILocalVariable(name: "vallist", arg: 4, scope: !5132, file: !247, line: 178, type: !53)
!5140 = !DILocalVariable(name: "valsize", arg: 5, scope: !5132, file: !247, line: 178, type: !45)
!5141 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !5132, file: !247, line: 179, type: !248)
!5142 = !DILocalVariable(name: "res", scope: !5132, file: !247, line: 181, type: !4949)
!5143 = !DILocation(line: 176, column: 35, scope: !5132)
!5144 = !DILocation(line: 177, column: 35, scope: !5132)
!5145 = !DILocation(line: 177, column: 59, scope: !5132)
!5146 = !DILocation(line: 178, column: 35, scope: !5132)
!5147 = !DILocation(line: 178, column: 51, scope: !5132)
!5148 = !DILocation(line: 179, column: 40, scope: !5132)
!5149 = !DILocation(line: 181, column: 19, scope: !5132)
!5150 = !DILocation(line: 181, column: 13, scope: !5132)
!5151 = !DILocation(line: 182, column: 11, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5132, file: !247, line: 182, column: 7)
!5153 = !DILocation(line: 182, column: 7, scope: !5132)
!5154 = !DILocation(line: 131, column: 31, scope: !5013, inlinedAt: !5155)
!5155 = distinct !DILocation(line: 187, column: 3, scope: !5132)
!5156 = !DILocation(line: 131, column: 52, scope: !5013, inlinedAt: !5155)
!5157 = !DILocation(line: 131, column: 69, scope: !5013, inlinedAt: !5155)
!5158 = !DILocation(line: 133, column: 33, scope: !5013, inlinedAt: !5155)
!5159 = !DILocation(line: 133, column: 25, scope: !5013, inlinedAt: !5155)
!5160 = !DILocation(line: 135, column: 27, scope: !5013, inlinedAt: !5155)
!5161 = !DILocation(line: 133, column: 15, scope: !5013, inlinedAt: !5155)
!5162 = !DILocation(line: 137, column: 24, scope: !5013, inlinedAt: !5155)
!5163 = !DILocation(line: 138, column: 10, scope: !5013, inlinedAt: !5155)
!5164 = !DILocation(line: 137, column: 3, scope: !5031, inlinedAt: !5155)
!5165 = !DILocation(line: 188, column: 3, scope: !5132)
!5166 = !DILocation(line: 189, column: 3, scope: !5132)
!5167 = !DILocation(line: 191, column: 3, scope: !5132)
!5168 = !DILocation(line: 192, column: 1, scope: !5132)
!5169 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !247, file: !247, line: 197, type: !5170, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !242, variables: !5172)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!53, !53, !3973, !53, !45}
!5172 = !{!5173, !5174, !5175, !5176, !5177}
!5173 = !DILocalVariable(name: "value", arg: 1, scope: !5169, file: !247, line: 197, type: !53)
!5174 = !DILocalVariable(name: "arglist", arg: 2, scope: !5169, file: !247, line: 198, type: !3973)
!5175 = !DILocalVariable(name: "vallist", arg: 3, scope: !5169, file: !247, line: 199, type: !53)
!5176 = !DILocalVariable(name: "valsize", arg: 4, scope: !5169, file: !247, line: 199, type: !45)
!5177 = !DILocalVariable(name: "i", scope: !5169, file: !247, line: 201, type: !45)
!5178 = !DILocation(line: 197, column: 35, scope: !5169)
!5179 = !DILocation(line: 198, column: 42, scope: !5169)
!5180 = !DILocation(line: 199, column: 35, scope: !5169)
!5181 = !DILocation(line: 199, column: 51, scope: !5169)
!5182 = !DILocation(line: 201, column: 10, scope: !5169)
!5183 = !DILocation(line: 203, column: 15, scope: !5184)
!5184 = !DILexicalBlockFile(scope: !5185, file: !247, discriminator: 1)
!5185 = distinct !DILexicalBlock(scope: !5186, file: !247, line: 203, column: 3)
!5186 = distinct !DILexicalBlock(scope: !5169, file: !247, line: 203, column: 3)
!5187 = !DILocation(line: 203, column: 3, scope: !5188)
!5188 = !DILexicalBlockFile(scope: !5186, file: !247, discriminator: 1)
!5189 = !DILocation(line: 204, column: 43, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5185, file: !247, line: 204, column: 9)
!5191 = distinct !{!5191, !5192, !5193}
!5192 = !DILocation(line: 203, column: 3, scope: !5186)
!5193 = !DILocation(line: 205, column: 23, scope: !5186)
!5194 = !DILocation(line: 204, column: 33, scope: !5190)
!5195 = !DILocation(line: 204, column: 10, scope: !5190)
!5196 = !DILocation(line: 203, column: 28, scope: !5197)
!5197 = !DILexicalBlockFile(scope: !5185, file: !247, discriminator: 2)
!5198 = !DILocation(line: 204, column: 9, scope: !5185)
!5199 = !DILocation(line: 207, column: 1, scope: !5169)
!5200 = distinct !DISubprogram(name: "close_stream", scope: !5201, file: !5201, line: 56, type: !5202, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !5244)
!5201 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!87, !5204}
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !825, line: 49, baseType: !5206)
!5206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !827, line: 241, size: 1728, elements: !5207)
!5207 = !{!5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5206, file: !827, line: 242, baseType: !87, size: 32)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5206, file: !827, line: 247, baseType: !42, size: 64, offset: 64)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5206, file: !827, line: 248, baseType: !42, size: 64, offset: 128)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5206, file: !827, line: 249, baseType: !42, size: 64, offset: 192)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5206, file: !827, line: 250, baseType: !42, size: 64, offset: 256)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5206, file: !827, line: 251, baseType: !42, size: 64, offset: 320)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5206, file: !827, line: 252, baseType: !42, size: 64, offset: 384)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5206, file: !827, line: 253, baseType: !42, size: 64, offset: 448)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5206, file: !827, line: 254, baseType: !42, size: 64, offset: 512)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5206, file: !827, line: 256, baseType: !42, size: 64, offset: 576)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5206, file: !827, line: 257, baseType: !42, size: 64, offset: 640)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5206, file: !827, line: 258, baseType: !42, size: 64, offset: 704)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5206, file: !827, line: 260, baseType: !5221, size: 64, offset: 768)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !827, line: 156, size: 192, elements: !5223)
!5223 = !{!5224, !5225, !5227}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5222, file: !827, line: 157, baseType: !5221, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5222, file: !827, line: 158, baseType: !5226, size: 64, offset: 64)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5222, file: !827, line: 162, baseType: !87, size: 32, offset: 128)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5206, file: !827, line: 262, baseType: !5226, size: 64, offset: 832)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5206, file: !827, line: 264, baseType: !87, size: 32, offset: 896)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5206, file: !827, line: 268, baseType: !87, size: 32, offset: 928)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5206, file: !827, line: 270, baseType: !853, size: 64, offset: 960)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5206, file: !827, line: 274, baseType: !188, size: 16, offset: 1024)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5206, file: !827, line: 275, baseType: !856, size: 8, offset: 1040)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5206, file: !827, line: 276, baseType: !858, size: 8, offset: 1048)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5206, file: !827, line: 280, baseType: !862, size: 64, offset: 1088)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5206, file: !827, line: 289, baseType: !865, size: 64, offset: 1152)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5206, file: !827, line: 297, baseType: !44, size: 64, offset: 1216)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5206, file: !827, line: 298, baseType: !44, size: 64, offset: 1280)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5206, file: !827, line: 299, baseType: !44, size: 64, offset: 1344)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5206, file: !827, line: 300, baseType: !44, size: 64, offset: 1408)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5206, file: !827, line: 302, baseType: !45, size: 64, offset: 1472)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5206, file: !827, line: 303, baseType: !87, size: 32, offset: 1536)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5206, file: !827, line: 305, baseType: !873, size: 160, offset: 1568)
!5244 = !{!5245, !5246, !5248, !5249}
!5245 = !DILocalVariable(name: "stream", arg: 1, scope: !5200, file: !5201, line: 56, type: !5204)
!5246 = !DILocalVariable(name: "some_pending", scope: !5200, file: !5201, line: 58, type: !5247)
!5247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!5248 = !DILocalVariable(name: "prev_fail", scope: !5200, file: !5201, line: 59, type: !5247)
!5249 = !DILocalVariable(name: "fclose_fail", scope: !5200, file: !5201, line: 60, type: !5247)
!5250 = !DILocation(line: 56, column: 21, scope: !5200)
!5251 = !DILocation(line: 58, column: 30, scope: !5200)
!5252 = !DILocalVariable(name: "__stream", arg: 1, scope: !5253, file: !936, line: 132, type: !5204)
!5253 = distinct !DISubprogram(name: "ferror_unlocked", scope: !936, file: !936, line: 132, type: !5202, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !5254)
!5254 = !{!5252}
!5255 = !DILocation(line: 132, column: 1, scope: !5253, inlinedAt: !5256)
!5256 = distinct !DILocation(line: 59, column: 27, scope: !5200)
!5257 = !DILocation(line: 134, column: 10, scope: !5253, inlinedAt: !5256)
!5258 = !DILocation(line: 59, column: 43, scope: !5200)
!5259 = !DILocation(line: 60, column: 29, scope: !5200)
!5260 = !DILocation(line: 60, column: 45, scope: !5200)
!5261 = !DILocation(line: 70, column: 17, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5200, file: !5201, line: 70, column: 7)
!5263 = !DILocation(line: 70, column: 33, scope: !5264)
!5264 = !DILexicalBlockFile(scope: !5262, file: !5201, discriminator: 1)
!5265 = !DILocation(line: 70, column: 53, scope: !5266)
!5266 = !DILexicalBlockFile(scope: !5262, file: !5201, discriminator: 3)
!5267 = !DILocation(line: 70, column: 7, scope: !5268)
!5268 = !DILexicalBlockFile(scope: !5200, file: !5201, discriminator: 3)
!5269 = !DILocation(line: 72, column: 11, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5262, file: !5201, line: 71, column: 5)
!5271 = !DILocation(line: 73, column: 9, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5270, file: !5201, line: 72, column: 11)
!5273 = !DILocation(line: 73, column: 15, scope: !5272)
!5274 = !DILocation(line: 78, column: 1, scope: !5200)
!5275 = distinct !DISubprogram(name: "hard_locale", scope: !5276, file: !5276, line: 38, type: !5277, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !5279)
!5276 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!59, !87}
!5279 = !{!5280, !5281, !5282, !5283, !5290, !5291, !5293, !5294, !5296, !5297, !5299}
!5280 = !DILocalVariable(name: "category", arg: 1, scope: !5275, file: !5276, line: 38, type: !87)
!5281 = !DILocalVariable(name: "hard", scope: !5275, file: !5276, line: 40, type: !59)
!5282 = !DILocalVariable(name: "p", scope: !5275, file: !5276, line: 41, type: !53)
!5283 = !DILocalVariable(name: "__s1_len", scope: !5284, file: !5276, line: 47, type: !45)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !5276, line: 47, column: 15)
!5285 = distinct !DILexicalBlock(scope: !5286, file: !5276, line: 47, column: 15)
!5286 = distinct !DILexicalBlock(scope: !5287, file: !5276, line: 46, column: 9)
!5287 = distinct !DILexicalBlock(scope: !5288, file: !5276, line: 45, column: 11)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !5276, line: 44, column: 5)
!5289 = distinct !DILexicalBlock(scope: !5275, file: !5276, line: 43, column: 7)
!5290 = !DILocalVariable(name: "__s2_len", scope: !5284, file: !5276, line: 47, type: !45)
!5291 = !DILocalVariable(name: "__s2", scope: !5292, file: !5276, line: 47, type: !50)
!5292 = distinct !DILexicalBlock(scope: !5284, file: !5276, line: 47, column: 15)
!5293 = !DILocalVariable(name: "__result", scope: !5292, file: !5276, line: 47, type: !87)
!5294 = !DILocalVariable(name: "__s1_len", scope: !5295, file: !5276, line: 47, type: !45)
!5295 = distinct !DILexicalBlock(scope: !5285, file: !5276, line: 47, column: 39)
!5296 = !DILocalVariable(name: "__s2_len", scope: !5295, file: !5276, line: 47, type: !45)
!5297 = !DILocalVariable(name: "__s2", scope: !5298, file: !5276, line: 47, type: !50)
!5298 = distinct !DILexicalBlock(scope: !5295, file: !5276, line: 47, column: 39)
!5299 = !DILocalVariable(name: "__result", scope: !5298, file: !5276, line: 47, type: !87)
!5300 = !DILocation(line: 38, column: 18, scope: !5275)
!5301 = !DILocation(line: 40, column: 8, scope: !5275)
!5302 = !DILocation(line: 41, column: 19, scope: !5275)
!5303 = !DILocation(line: 41, column: 15, scope: !5275)
!5304 = !DILocation(line: 43, column: 7, scope: !5289)
!5305 = !DILocation(line: 43, column: 7, scope: !5275)
!5306 = !DILocation(line: 47, column: 15, scope: !5284)
!5307 = !DILocation(line: 47, column: 15, scope: !5292)
!5308 = !DILocation(line: 47, column: 15, scope: !5309)
!5309 = !DILexicalBlockFile(scope: !5292, file: !5276, discriminator: 2)
!5310 = !DILocation(line: 47, column: 15, scope: !5311)
!5311 = !DILexicalBlockFile(scope: !5312, file: !5276, discriminator: 3)
!5312 = distinct !DILexicalBlock(scope: !5292, file: !5276, line: 47, column: 15)
!5313 = !DILocation(line: 47, column: 15, scope: !5314)
!5314 = !DILexicalBlockFile(scope: !5312, file: !5276, discriminator: 2)
!5315 = !DILocation(line: 47, column: 15, scope: !5316)
!5316 = !DILexicalBlockFile(scope: !5317, file: !5276, discriminator: 4)
!5317 = distinct !DILexicalBlock(scope: !5312, file: !5276, line: 47, column: 15)
!5318 = !DILocation(line: 47, column: 15, scope: !5319)
!5319 = !DILexicalBlockFile(scope: !5284, file: !5276, discriminator: 11)
!5320 = !DILocation(line: 47, column: 36, scope: !5321)
!5321 = !DILexicalBlockFile(scope: !5285, file: !5276, discriminator: 13)
!5322 = !DILocation(line: 47, column: 39, scope: !5295)
!5323 = !DILocation(line: 47, column: 39, scope: !5324)
!5324 = !DILexicalBlockFile(scope: !5295, file: !5276, discriminator: 26)
!5325 = !DILocation(line: 47, column: 59, scope: !5326)
!5326 = !DILexicalBlockFile(scope: !5285, file: !5276, discriminator: 27)
!5327 = !DILocation(line: 47, column: 15, scope: !5328)
!5328 = !DILexicalBlockFile(scope: !5286, file: !5276, discriminator: 27)
!5329 = !DILocation(line: 48, column: 13, scope: !5285)
!5330 = !DILocation(line: 71, column: 3, scope: !5275)
!5331 = distinct !DISubprogram(name: "locale_charset", scope: !598, file: !598, line: 393, type: !5332, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !255, variables: !5333)
!5332 = !DISubroutineType(types: !137)
!5333 = !{!5334, !5335, !5336, !5341}
!5334 = !DILocalVariable(name: "codeset", scope: !5331, file: !598, line: 395, type: !53)
!5335 = !DILocalVariable(name: "aliases", scope: !5331, file: !598, line: 396, type: !53)
!5336 = !DILocalVariable(name: "__s1_len", scope: !5337, file: !598, line: 592, type: !45)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !598, line: 592, column: 9)
!5338 = distinct !DILexicalBlock(scope: !5339, file: !598, line: 592, column: 9)
!5339 = distinct !DILexicalBlock(scope: !5340, file: !598, line: 589, column: 3)
!5340 = distinct !DILexicalBlock(scope: !5331, file: !598, line: 589, column: 3)
!5341 = !DILocalVariable(name: "__s2_len", scope: !5337, file: !598, line: 592, type: !45)
!5342 = !DILocalVariable(name: "buf1", scope: !5343, file: !598, line: 196, type: !5410)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !598, line: 194, column: 21)
!5344 = distinct !DILexicalBlock(scope: !5345, file: !598, line: 193, column: 19)
!5345 = distinct !DILexicalBlock(scope: !5346, file: !598, line: 193, column: 19)
!5346 = distinct !DILexicalBlock(scope: !5347, file: !598, line: 188, column: 17)
!5347 = distinct !DILexicalBlock(scope: !5348, file: !598, line: 181, column: 19)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !598, line: 177, column: 13)
!5349 = distinct !DILexicalBlock(scope: !5350, file: !598, line: 173, column: 15)
!5350 = distinct !DILexicalBlock(scope: !5351, file: !598, line: 161, column: 9)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !598, line: 157, column: 11)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !598, line: 130, column: 5)
!5353 = distinct !DILexicalBlock(scope: !5354, file: !598, line: 129, column: 7)
!5354 = distinct !DISubprogram(name: "get_charset_aliases", scope: !598, file: !598, line: 124, type: !5332, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !255, variables: !5355)
!5355 = !{!5356, !5357, !5358, !5359, !5360, !5362, !5363, !5364, !5365, !5406, !5407, !5408, !5342, !5409, !5413, !5414, !5415}
!5356 = !DILocalVariable(name: "cp", scope: !5354, file: !598, line: 126, type: !53)
!5357 = !DILocalVariable(name: "dir", scope: !5352, file: !598, line: 132, type: !53)
!5358 = !DILocalVariable(name: "base", scope: !5352, file: !598, line: 133, type: !53)
!5359 = !DILocalVariable(name: "file_name", scope: !5352, file: !598, line: 134, type: !42)
!5360 = !DILocalVariable(name: "dir_len", scope: !5361, file: !598, line: 144, type: !45)
!5361 = distinct !DILexicalBlock(scope: !5352, file: !598, line: 143, column: 7)
!5362 = !DILocalVariable(name: "base_len", scope: !5361, file: !598, line: 145, type: !45)
!5363 = !DILocalVariable(name: "add_slash", scope: !5361, file: !598, line: 146, type: !87)
!5364 = !DILocalVariable(name: "fd", scope: !5350, file: !598, line: 162, type: !87)
!5365 = !DILocalVariable(name: "fp", scope: !5348, file: !598, line: 178, type: !5366)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !825, line: 49, baseType: !5368)
!5368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !827, line: 241, size: 1728, elements: !5369)
!5369 = !{!5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405}
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5368, file: !827, line: 242, baseType: !87, size: 32)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5368, file: !827, line: 247, baseType: !42, size: 64, offset: 64)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5368, file: !827, line: 248, baseType: !42, size: 64, offset: 128)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5368, file: !827, line: 249, baseType: !42, size: 64, offset: 192)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5368, file: !827, line: 250, baseType: !42, size: 64, offset: 256)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5368, file: !827, line: 251, baseType: !42, size: 64, offset: 320)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5368, file: !827, line: 252, baseType: !42, size: 64, offset: 384)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5368, file: !827, line: 253, baseType: !42, size: 64, offset: 448)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5368, file: !827, line: 254, baseType: !42, size: 64, offset: 512)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5368, file: !827, line: 256, baseType: !42, size: 64, offset: 576)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5368, file: !827, line: 257, baseType: !42, size: 64, offset: 640)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5368, file: !827, line: 258, baseType: !42, size: 64, offset: 704)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5368, file: !827, line: 260, baseType: !5383, size: 64, offset: 768)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !827, line: 156, size: 192, elements: !5385)
!5385 = !{!5386, !5387, !5389}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5384, file: !827, line: 157, baseType: !5383, size: 64)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5384, file: !827, line: 158, baseType: !5388, size: 64, offset: 64)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5384, file: !827, line: 162, baseType: !87, size: 32, offset: 128)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5368, file: !827, line: 262, baseType: !5388, size: 64, offset: 832)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5368, file: !827, line: 264, baseType: !87, size: 32, offset: 896)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5368, file: !827, line: 268, baseType: !87, size: 32, offset: 928)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5368, file: !827, line: 270, baseType: !853, size: 64, offset: 960)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5368, file: !827, line: 274, baseType: !188, size: 16, offset: 1024)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5368, file: !827, line: 275, baseType: !856, size: 8, offset: 1040)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5368, file: !827, line: 276, baseType: !858, size: 8, offset: 1048)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5368, file: !827, line: 280, baseType: !862, size: 64, offset: 1088)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5368, file: !827, line: 289, baseType: !865, size: 64, offset: 1152)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5368, file: !827, line: 297, baseType: !44, size: 64, offset: 1216)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5368, file: !827, line: 298, baseType: !44, size: 64, offset: 1280)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5368, file: !827, line: 299, baseType: !44, size: 64, offset: 1344)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5368, file: !827, line: 300, baseType: !44, size: 64, offset: 1408)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5368, file: !827, line: 302, baseType: !45, size: 64, offset: 1472)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5368, file: !827, line: 303, baseType: !87, size: 32, offset: 1536)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5368, file: !827, line: 305, baseType: !873, size: 160, offset: 1568)
!5406 = !DILocalVariable(name: "res_ptr", scope: !5346, file: !598, line: 190, type: !42)
!5407 = !DILocalVariable(name: "res_size", scope: !5346, file: !598, line: 191, type: !45)
!5408 = !DILocalVariable(name: "c", scope: !5343, file: !598, line: 195, type: !87)
!5409 = !DILocalVariable(name: "buf2", scope: !5343, file: !598, line: 197, type: !5410)
!5410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 408, elements: !5411)
!5411 = !{!5412}
!5412 = !DISubrange(count: 51)
!5413 = !DILocalVariable(name: "l1", scope: !5343, file: !598, line: 198, type: !45)
!5414 = !DILocalVariable(name: "l2", scope: !5343, file: !598, line: 198, type: !45)
!5415 = !DILocalVariable(name: "old_res_ptr", scope: !5343, file: !598, line: 199, type: !42)
!5416 = !DILocation(line: 196, column: 28, scope: !5343, inlinedAt: !5417)
!5417 = distinct !DILocation(line: 589, column: 18, scope: !5340)
!5418 = !DILocation(line: 197, column: 28, scope: !5343, inlinedAt: !5417)
!5419 = !DILocation(line: 403, column: 13, scope: !5331)
!5420 = !DILocation(line: 395, column: 15, scope: !5331)
!5421 = !DILocation(line: 584, column: 15, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5331, file: !598, line: 584, column: 7)
!5423 = !DILocation(line: 584, column: 7, scope: !5331)
!5424 = !DILocation(line: 128, column: 8, scope: !5354, inlinedAt: !5417)
!5425 = !DILocation(line: 126, column: 15, scope: !5354, inlinedAt: !5417)
!5426 = !DILocation(line: 129, column: 10, scope: !5353, inlinedAt: !5417)
!5427 = !DILocation(line: 129, column: 7, scope: !5354, inlinedAt: !5417)
!5428 = !DILocation(line: 138, column: 13, scope: !5352, inlinedAt: !5417)
!5429 = !DILocation(line: 132, column: 19, scope: !5352, inlinedAt: !5417)
!5430 = !DILocation(line: 139, column: 15, scope: !5431, inlinedAt: !5417)
!5431 = distinct !DILexicalBlock(scope: !5352, file: !598, line: 139, column: 11)
!5432 = !DILocation(line: 139, column: 23, scope: !5431, inlinedAt: !5417)
!5433 = !DILocation(line: 139, column: 26, scope: !5434, inlinedAt: !5417)
!5434 = !DILexicalBlockFile(scope: !5431, file: !598, discriminator: 1)
!5435 = !DILocation(line: 139, column: 33, scope: !5434, inlinedAt: !5417)
!5436 = !DILocation(line: 139, column: 11, scope: !5437, inlinedAt: !5417)
!5437 = !DILexicalBlockFile(scope: !5352, file: !598, discriminator: 1)
!5438 = !DILocation(line: 140, column: 9, scope: !5431, inlinedAt: !5417)
!5439 = !DILocation(line: 144, column: 26, scope: !5361, inlinedAt: !5417)
!5440 = !DILocation(line: 144, column: 16, scope: !5361, inlinedAt: !5417)
!5441 = !DILocation(line: 145, column: 16, scope: !5361, inlinedAt: !5417)
!5442 = !DILocation(line: 146, column: 34, scope: !5361, inlinedAt: !5417)
!5443 = !DILocation(line: 146, column: 38, scope: !5361, inlinedAt: !5417)
!5444 = !DILocation(line: 146, column: 42, scope: !5445, inlinedAt: !5417)
!5445 = !DILexicalBlockFile(scope: !5361, file: !598, discriminator: 1)
!5446 = !DILocation(line: 146, column: 41, scope: !5445, inlinedAt: !5417)
!5447 = !DILocation(line: 147, column: 48, scope: !5361, inlinedAt: !5417)
!5448 = !DILocation(line: 147, column: 46, scope: !5361, inlinedAt: !5417)
!5449 = !DILocation(line: 147, column: 69, scope: !5361, inlinedAt: !5417)
!5450 = !DILocation(line: 147, column: 30, scope: !5361, inlinedAt: !5417)
!5451 = !DILocation(line: 134, column: 13, scope: !5352, inlinedAt: !5417)
!5452 = !DILocation(line: 148, column: 13, scope: !5361, inlinedAt: !5417)
!5453 = !DILocation(line: 150, column: 13, scope: !5454, inlinedAt: !5417)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !598, line: 149, column: 11)
!5455 = distinct !DILexicalBlock(scope: !5361, file: !598, line: 148, column: 13)
!5456 = !DILocation(line: 151, column: 17, scope: !5454, inlinedAt: !5417)
!5457 = !DILocation(line: 152, column: 34, scope: !5458, inlinedAt: !5417)
!5458 = distinct !DILexicalBlock(scope: !5454, file: !598, line: 151, column: 17)
!5459 = !DILocation(line: 153, column: 41, scope: !5454, inlinedAt: !5417)
!5460 = !DILocation(line: 153, column: 13, scope: !5454, inlinedAt: !5417)
!5461 = !DILocation(line: 157, column: 11, scope: !5352, inlinedAt: !5417)
!5462 = !DILocation(line: 171, column: 16, scope: !5350, inlinedAt: !5417)
!5463 = !DILocation(line: 162, column: 15, scope: !5350, inlinedAt: !5417)
!5464 = !DILocation(line: 173, column: 18, scope: !5349, inlinedAt: !5417)
!5465 = !DILocation(line: 173, column: 15, scope: !5350, inlinedAt: !5417)
!5466 = !DILocation(line: 180, column: 20, scope: !5348, inlinedAt: !5417)
!5467 = !DILocation(line: 178, column: 21, scope: !5348, inlinedAt: !5417)
!5468 = !DILocation(line: 181, column: 22, scope: !5347, inlinedAt: !5417)
!5469 = !DILocation(line: 181, column: 19, scope: !5348, inlinedAt: !5417)
!5470 = !DILocation(line: 190, column: 25, scope: !5346, inlinedAt: !5417)
!5471 = !DILocation(line: 184, column: 19, scope: !5472, inlinedAt: !5417)
!5472 = distinct !DILexicalBlock(scope: !5347, file: !598, line: 182, column: 17)
!5473 = !DILocation(line: 186, column: 17, scope: !5472, inlinedAt: !5417)
!5474 = !DILocation(line: 191, column: 26, scope: !5346, inlinedAt: !5417)
!5475 = !DILocation(line: 196, column: 23, scope: !5343, inlinedAt: !5417)
!5476 = !DILocation(line: 197, column: 23, scope: !5343, inlinedAt: !5417)
!5477 = !DILocalVariable(name: "__fp", arg: 1, scope: !5478, file: !936, line: 63, type: !5366)
!5478 = distinct !DISubprogram(name: "getc_unlocked", scope: !936, file: !936, line: 63, type: !5479, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !255, variables: !5481)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!87, !5366}
!5481 = !{!5477}
!5482 = !DILocation(line: 63, column: 22, scope: !5478, inlinedAt: !5483)
!5483 = distinct !DILocation(line: 201, column: 27, scope: !5343, inlinedAt: !5417)
!5484 = !DILocation(line: 65, column: 10, scope: !5478, inlinedAt: !5483)
!5485 = !DILocation(line: 65, column: 10, scope: !5486, inlinedAt: !5483)
!5486 = !DILexicalBlockFile(scope: !5478, file: !936, discriminator: 1)
!5487 = !DILocation(line: 65, column: 10, scope: !5488, inlinedAt: !5483)
!5488 = !DILexicalBlockFile(scope: !5478, file: !936, discriminator: 2)
!5489 = !DILocation(line: 65, column: 10, scope: !5490, inlinedAt: !5483)
!5490 = !DILexicalBlockFile(scope: !5478, file: !936, discriminator: 3)
!5491 = !DILocation(line: 195, column: 27, scope: !5343, inlinedAt: !5417)
!5492 = !DILocation(line: 202, column: 27, scope: !5343, inlinedAt: !5417)
!5493 = !DILocation(line: 63, column: 22, scope: !5478, inlinedAt: !5494)
!5494 = distinct !DILocation(line: 210, column: 33, scope: !5495, inlinedAt: !5417)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !598, line: 207, column: 25)
!5496 = distinct !DILexicalBlock(scope: !5343, file: !598, line: 206, column: 27)
!5497 = !DILocation(line: 65, column: 10, scope: !5478, inlinedAt: !5494)
!5498 = !DILocation(line: 65, column: 10, scope: !5486, inlinedAt: !5494)
!5499 = !DILocation(line: 65, column: 10, scope: !5488, inlinedAt: !5494)
!5500 = !DILocation(line: 65, column: 10, scope: !5490, inlinedAt: !5494)
!5501 = !DILocation(line: 210, column: 29, scope: !5502, inlinedAt: !5417)
!5502 = !DILexicalBlockFile(scope: !5495, file: !598, discriminator: 1)
!5503 = distinct !{!5503, !5504, !5505}
!5504 = !DILocation(line: 193, column: 19, scope: !5345)
!5505 = !DILocation(line: 241, column: 21, scope: !5345)
!5506 = !DILocation(line: 216, column: 23, scope: !5343, inlinedAt: !5417)
!5507 = !DILocation(line: 217, column: 27, scope: !5508, inlinedAt: !5417)
!5508 = distinct !DILexicalBlock(scope: !5343, file: !598, line: 217, column: 27)
!5509 = !DILocation(line: 217, column: 64, scope: !5508, inlinedAt: !5417)
!5510 = !DILocation(line: 217, column: 27, scope: !5343, inlinedAt: !5417)
!5511 = !DILocation(line: 219, column: 28, scope: !5343, inlinedAt: !5417)
!5512 = !DILocation(line: 198, column: 30, scope: !5343, inlinedAt: !5417)
!5513 = !DILocation(line: 220, column: 28, scope: !5343, inlinedAt: !5417)
!5514 = !DILocation(line: 198, column: 34, scope: !5343, inlinedAt: !5417)
!5515 = !DILocation(line: 199, column: 29, scope: !5343, inlinedAt: !5417)
!5516 = !DILocation(line: 222, column: 36, scope: !5517, inlinedAt: !5417)
!5517 = distinct !DILexicalBlock(scope: !5343, file: !598, line: 222, column: 27)
!5518 = !DILocation(line: 222, column: 27, scope: !5343, inlinedAt: !5417)
!5519 = !DILocation(line: 225, column: 63, scope: !5520, inlinedAt: !5417)
!5520 = distinct !DILexicalBlock(scope: !5517, file: !598, line: 223, column: 25)
!5521 = !DILocation(line: 225, column: 46, scope: !5520, inlinedAt: !5417)
!5522 = !DILocation(line: 226, column: 25, scope: !5520, inlinedAt: !5417)
!5523 = !DILocation(line: 229, column: 36, scope: !5524, inlinedAt: !5417)
!5524 = distinct !DILexicalBlock(scope: !5517, file: !598, line: 228, column: 25)
!5525 = !DILocation(line: 230, column: 73, scope: !5524, inlinedAt: !5417)
!5526 = !DILocation(line: 230, column: 46, scope: !5524, inlinedAt: !5417)
!5527 = !DILocation(line: 232, column: 35, scope: !5528, inlinedAt: !5417)
!5528 = distinct !DILexicalBlock(scope: !5343, file: !598, line: 232, column: 27)
!5529 = !DILocation(line: 232, column: 27, scope: !5343, inlinedAt: !5417)
!5530 = !DILocation(line: 236, column: 27, scope: !5531, inlinedAt: !5417)
!5531 = distinct !DILexicalBlock(scope: !5528, file: !598, line: 233, column: 25)
!5532 = !DILocation(line: 237, column: 27, scope: !5531, inlinedAt: !5417)
!5533 = !DILocation(line: 239, column: 39, scope: !5343, inlinedAt: !5417)
!5534 = !DILocation(line: 239, column: 50, scope: !5343, inlinedAt: !5417)
!5535 = !DILocation(line: 239, column: 61, scope: !5343, inlinedAt: !5417)
!5536 = !DILocalVariable(name: "__dest", arg: 1, scope: !5537, file: !5538, line: 107, type: !5541)
!5537 = distinct !DISubprogram(name: "strcpy", scope: !5538, file: !5538, line: 107, type: !5539, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !255, variables: !5542)
!5538 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!42, !5541, !4455}
!5541 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!5542 = !{!5536, !5543}
!5543 = !DILocalVariable(name: "__src", arg: 2, scope: !5537, file: !5538, line: 107, type: !4455)
!5544 = !DILocation(line: 107, column: 1, scope: !5537, inlinedAt: !5545)
!5545 = distinct !DILocation(line: 239, column: 23, scope: !5343, inlinedAt: !5417)
!5546 = !DILocation(line: 109, column: 49, scope: !5537, inlinedAt: !5545)
!5547 = !DILocation(line: 109, column: 10, scope: !5537, inlinedAt: !5545)
!5548 = !DILocation(line: 107, column: 1, scope: !5537, inlinedAt: !5549)
!5549 = distinct !DILocation(line: 240, column: 23, scope: !5343, inlinedAt: !5417)
!5550 = !DILocation(line: 109, column: 49, scope: !5537, inlinedAt: !5549)
!5551 = !DILocation(line: 109, column: 10, scope: !5537, inlinedAt: !5549)
!5552 = !DILocation(line: 241, column: 21, scope: !5344, inlinedAt: !5417)
!5553 = !DILocation(line: 242, column: 19, scope: !5346, inlinedAt: !5417)
!5554 = !DILocation(line: 243, column: 32, scope: !5555, inlinedAt: !5417)
!5555 = distinct !DILexicalBlock(scope: !5346, file: !598, line: 243, column: 23)
!5556 = !DILocation(line: 243, column: 23, scope: !5346, inlinedAt: !5417)
!5557 = !DILocation(line: 247, column: 33, scope: !5558, inlinedAt: !5417)
!5558 = distinct !DILexicalBlock(scope: !5555, file: !598, line: 246, column: 21)
!5559 = !DILocation(line: 247, column: 45, scope: !5558, inlinedAt: !5417)
!5560 = !DILocation(line: 253, column: 11, scope: !5350, inlinedAt: !5417)
!5561 = !DILocation(line: 377, column: 23, scope: !5352, inlinedAt: !5417)
!5562 = !DILocation(line: 378, column: 5, scope: !5352, inlinedAt: !5417)
!5563 = !DILocation(line: 396, column: 15, scope: !5331)
!5564 = !DILocation(line: 590, column: 8, scope: !5339)
!5565 = !DILocation(line: 590, column: 17, scope: !5339)
!5566 = !DILocation(line: 589, column: 3, scope: !5567)
!5567 = !DILexicalBlockFile(scope: !5340, file: !598, discriminator: 1)
!5568 = !DILocation(line: 592, column: 9, scope: !5337)
!5569 = !DILocation(line: 592, column: 35, scope: !5338)
!5570 = !DILocation(line: 593, column: 9, scope: !5338)
!5571 = !DILocation(line: 593, column: 24, scope: !5572)
!5572 = !DILexicalBlockFile(scope: !5338, file: !598, discriminator: 1)
!5573 = !DILocation(line: 593, column: 31, scope: !5572)
!5574 = !DILocation(line: 593, column: 34, scope: !5575)
!5575 = !DILexicalBlockFile(scope: !5338, file: !598, discriminator: 2)
!5576 = !DILocation(line: 593, column: 45, scope: !5575)
!5577 = !DILocation(line: 592, column: 9, scope: !5578)
!5578 = !DILexicalBlockFile(scope: !5339, file: !598, discriminator: 1)
!5579 = !DILocation(line: 595, column: 29, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5338, file: !598, line: 594, column: 7)
!5581 = !DILocation(line: 595, column: 27, scope: !5580)
!5582 = !DILocation(line: 595, column: 46, scope: !5580)
!5583 = !DILocation(line: 596, column: 9, scope: !5580)
!5584 = !DILocation(line: 591, column: 19, scope: !5339)
!5585 = !DILocation(line: 591, column: 36, scope: !5339)
!5586 = !DILocation(line: 591, column: 16, scope: !5339)
!5587 = !DILocation(line: 591, column: 52, scope: !5578)
!5588 = !DILocation(line: 591, column: 69, scope: !5339)
!5589 = !DILocation(line: 591, column: 49, scope: !5339)
!5590 = distinct !{!5590, !5591, !5592}
!5591 = !DILocation(line: 589, column: 3, scope: !5340)
!5592 = !DILocation(line: 597, column: 7, scope: !5340)
!5593 = !DILocation(line: 602, column: 7, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5331, file: !598, line: 602, column: 7)
!5595 = !DILocation(line: 602, column: 18, scope: !5594)
!5596 = !DILocation(line: 602, column: 7, scope: !5331)
!5597 = !DILocation(line: 612, column: 3, scope: !5331)
